#include "stm32f4xx.h"
#include "gdef.h"

// 115200
#define DIV_MANT 22
#define DIV_FRACT 13

// 76800
//#define DIV_MANT 34
//#define DIV_FRACT 3

// 38400
//#define DIV_MANT 68
//#define DIV_FRACT 6

#define BUF_SIZE 				256
#define REGISTERS_NB  				0x8

#define rs485_rx_mode() GPIOD->ODR &= ~GPIO_ODR_ODR_10
#define rs485_tx_mode() GPIOD->ODR |= GPIO_ODR_ODR_10

uint16_t 	register_tab[REGISTERS_NB] = { 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 };

extern unsigned short crc16(unsigned char *buf, int len);

static void proc_ADU();

uint32_t modbus_error = 0;
uint32_t modbus_ready = 1;

uint8_t rx_buffer[BUF_SIZE];
uint32_t rx_index = 0;
uint32_t rx_size = 0;

uint8_t tx_buffer[BUF_SIZE];
uint32_t tx_index = 0;
uint32_t tx_numbytes = 0;

void start_trans(int n)
{
	tx_numbytes = n;
	tx_index = 0;	
	int i, j = 0;

	USART3->CR1 |= USART_CR1_TE;    // send idle frame	
	USART3->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable	
	
	modbus_ready = 0;
}

void modbus_init()
{
	RCC->APB1ENR |= RCC_APB1ENR_USART3EN;
	
	// uart setup
	USART3->CR1 = 0;
	
	USART3->CR1 |= USART_CR1_UE;	 	// uart is on
	USART3->CR1 |= USART_CR1_RE;	 	// uart rx is on	
	USART3->CR1 |= USART_CR1_RXNEIE; 	// Received data ready to be read interrupt enable
	//USART3->CR1 |= USART_CR1_TXEIE;  	// Transmit data register empty interrupt enable
	//USART3->CR1 |= USART_CR1_TCIE;  	// Transmit complete interrupt enable
	USART3->CR1 |= USART_CR1_IDLEIE; 	// IDLE interrupt enable
	
	NVIC_EnableIRQ(USART3_IRQn);
	
	USART3->BRR &= ~0xffff;
	USART3->BRR |= (DIV_FRACT | (DIV_MANT << 4));

	// enable clock at the port D
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	// PD10 GP out - EXT_RE_DE
	GPIOD->MODER &= ~(GPIO_MODER_MODER10);
	GPIOD->MODER |= (GPIO_MODER_MODER10_0);	
	// PD8 PD9 alternate mode
	GPIOD->MODER &= ~(GPIO_MODER_MODER8 | GPIO_MODER_MODER9);
	GPIOD->MODER |= (GPIO_MODER_MODER8_1 | GPIO_MODER_MODER9_1);
	// set high speed for PD8 PD9
	GPIOD->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR8_0 | GPIO_OSPEEDER_OSPEEDR8_1 |
						GPIO_OSPEEDER_OSPEEDR9_0 | GPIO_OSPEEDER_OSPEEDR9_1);
	// select properly alternate function for PD8-USART3_TX PD9-USART3_RX AF7
	GPIOD->AFR[1] &= ~(0xf << (8-8)*4);
	GPIOD->AFR[1] |= (0x7 << (8-8)*4);
	GPIOD->AFR[1] &= ~(0xf << (9-8)*4);
	GPIOD->AFR[1] |= (0x7 << (9-8)*4);
	
	//start_trans(0);					// flush tx buffer
	
	GPIOD->ODR &= ~GPIO_ODR_ODR_10; // rs485 rx mode
}

void USART3_IRQHandler()
{
	uint8_t buf;

	if(USART3->SR & USART_SR_IDLE)
	{
		// It is cleared by a software sequence (an read to the
		// USART_SR register followed by a read to the USART_DR register).
		buf = USART3->DR;
		proc_ADU();
		rx_size = rx_index;
		rx_index = 0;		
	}	

	if(USART3->SR & USART_SR_TXE)
	{	
		if(tx_numbytes == 0)
		{
				// no data for transfer
				USART3->CR1 &= ~USART_CR1_TXEIE;
				USART3->CR1 |= USART_CR1_TCIE;  	// Transmit complete interrupt enable
		}
		else
		{
				if(tx_index == 1) rs485_tx_mode(); // It is here after idle frame - switch to tx mode
				
				// transfer next byte from the buffer
				USART3->DR = tx_buffer[tx_index];
				tx_index = (tx_index+1) & (BUF_SIZE-1);
				tx_numbytes --;
		}
	}
	
	if(USART3->SR & USART_SR_TC)
	{						
		USART3->SR &= ~USART_SR_TC;
		USART3->CR1 &= ~(USART_CR1_TXEIE | USART_CR1_TCIE | USART_CR1_TE);
		rs485_rx_mode();
	}	

	if(USART3->SR & USART_SR_RXNE)
	{	
		rx_buffer[rx_index] = USART3->DR;
		rx_index = (rx_index+1) & (BUF_SIZE-1);
	}	
	
}


void modbus_read_holding_registers(uint8_t id, uint16_t start_addr, uint16_t quant_reg)
{
	int j = 0;
	uint16_t crc;
	
	// make adu header
	tx_buffer[j++] = id;
	// make pdu body
	tx_buffer[j++] = 0x03; // function
	tx_buffer[j++] = (uint8_t)((start_addr >> 8) & 0xff); // start address
	tx_buffer[j++] = (uint8_t)(start_addr & 0xff);
	tx_buffer[j++] = (uint8_t)((quant_reg >> 8) & 0xff); // quantity of registers
	tx_buffer[j++] = (uint8_t)(quant_reg & 0xff);
	// make adu tail - calculate crc
	crc = crc16(tx_buffer, j);		
	tx_buffer[j++] = crc&0xff;		
	tx_buffer[j++] = (crc >> 8)&0xff;
	// packet is ready - start transmitter
	start_trans(j);
}	


void modbus_write_single_register(uint8_t id, uint16_t reg_addr, uint16_t reg_val)
{
	int j = 0;
	uint16_t crc;
	
	// make adu header
	tx_buffer[j++] = id;
	// make pdu body
	tx_buffer[j++] = 0x06; // function
	tx_buffer[j++] = (uint8_t)((reg_addr >> 8) & 0xff); // register address
	tx_buffer[j++] = (uint8_t)(reg_addr & 0xff);
	tx_buffer[j++] = (uint8_t)((reg_val >> 8) & 0xff);  // register value
	tx_buffer[j++] = (uint8_t)(reg_val & 0xff);
	// make adu tail - calculate crc
	crc = crc16(tx_buffer, j);		
	tx_buffer[j++] = crc&0xff;		
	tx_buffer[j++] = (crc >> 8)&0xff;
	// packet is ready - start transmitter
	//sleep(1);
	start_trans(j);
}	


void proc_ADU()
{
	uint16_t crc;
	uint8_t address;
	uint8_t code;
	uint32_t nb;
	int i, j = 0;
	int nr = 0;
		
	crc = crc16(rx_buffer, rx_index);
	if(crc != 0)
	{
		modbus_ready = 1;
		modbus_error = 1;		
		return;
	}
	
	modbus_error = 0;
				
	address = rx_buffer[j++];
	code = rx_buffer[j++];	
	nb = rx_buffer[j++];
	nr = nb >> 1;
	
	if(code & 0x80) {
		 modbus_ready = 1;		
		 modbus_error = 1;
		 return;
	 }
	
	switch(code){
		case 0x03:
			if(nr >  REGISTERS_NB)
			{
				modbus_ready = 1;
				modbus_error = 1;
				return;
			}
			
			for(i = 0; i < nr; i++)
			{
				register_tab[i] = rx_buffer[j++]<<8;
				register_tab[i] |= rx_buffer[j++];
				modbus_ready = 1;
			}				
		break;
		
		case 0x06:
			modbus_ready = 1;					
		break;	
	}
}
