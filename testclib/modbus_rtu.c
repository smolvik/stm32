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

#define BITS_REF_ADDRESS  			0x13
#define BITS_NB 					0x25
#define INPUT_BITS_REF_ADDRESS 		0xC4
#define INPUT_BITS_NB  				0x16
//#define REGISTERS_REF_ADDRESS		0x6B
#define REGISTERS_REF_ADDRESS		0x00
#define REGISTERS_NB  				0x8
#define INPUT_REGISTERS_REF_ADDRESS 0x08
#define INPUT_REGISTERS_NB 			0x1

#define COIL_ON 				0x01
#define COIL_OFF 				0x00

#define rs485_rx_mode() GPIOD->ODR &= ~GPIO_ODR_ODR_10
#define rs485_tx_mode() GPIOD->ODR |= GPIO_ODR_ODR_10

uint8_t 	bits_tab[] = 				{ 0xCD, 0x6B, 0xB2, 0x0E, 0x1B };
uint8_t 	input_bits_tab[] = 			{ 0xAC, 0xDB, 0x35 };
uint16_t 	register_tab[REGISTERS_NB] = { 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000 };
uint16_t    input_registers_tab[INPUT_REGISTERS_NB] = { 0x000A };

const uint8_t device_additional_info[] = "My test modbus device";

extern unsigned short crc16(unsigned char *buf, int len);

static int 	pdu_report_server_id();
static int 	pdu_read_input_registers();
static int 	pdu_read_write_multiply_registers();
static int 	pdu_read_discrete_inputs();
static int 	pdu_write_multiply_coils();
static int 	pdu_read_coils();
static int 	pdu_write_single_coil();
static int 	pdu_diagnostics();
static int 	pdu_write_single_register();
static int 	pdu_read_holding_registers();
static int 	pdu_write_multiply_registers();
static int 	pdu_illegal_function_error();
static void proc_ADU();

uint32_t modbus_error = 0;

uint8_t rx_buffer[BUF_SIZE];
uint32_t rx_index = 0;
uint32_t rx_size = 0;

uint8_t tx_buffer[BUF_SIZE];
uint32_t tx_index = 0;
uint32_t tx_numbytes = 0;

int (* const proc_PDU_table[256])(void) = {
	pdu_illegal_function_error,
	pdu_read_coils,						// 0x01
	pdu_read_discrete_inputs,			// 0x02
	pdu_read_holding_registers,			// 0x03
	pdu_read_input_registers, 			// 0x04
	pdu_write_single_coil,				// 0x05
	pdu_write_single_register,  		// 0x06
	pdu_illegal_function_error,
	pdu_diagnostics, 					// 0x08
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_write_multiply_coils,	   		// 0x0f
	pdu_write_multiply_registers,  		// 0x10
	pdu_report_server_id,				// 0x11
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_read_write_multiply_registers, 	// 0x17
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,	
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error,
	pdu_illegal_function_error
};

void start_trans(int n)
{
	tx_numbytes = n;
	tx_index = 0;	
	
	rs485_tx_mode();
	
	USART3->CR1 |= USART_CR1_TE;    // send idle frame
	USART3->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable

	// write to buffer first byte	
	USART3->DR = tx_buffer[tx_index];
	tx_index = (tx_index+1) & (BUF_SIZE-1);
	tx_numbytes --;	
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
				//USART3->CR1 &= ~USART_CR1_TXEIE;				
				USART3->CR1 |= USART_CR1_TCIE;  	// Transmit complete interrupt enable
		}
		else
		{
				// transfer next byte from the buffer
				USART3->DR = tx_buffer[tx_index];
				tx_index = (tx_index+1) & (BUF_SIZE-1);
				tx_numbytes --;
		}
	}
	
	if(USART3->SR & USART_SR_TC)
	{						
		USART3->SR &= ~USART_SR_TC;
		USART3->CR1 &= ~(USART_CR1_TXEIE | USART_CR1_TCIE);
		rs485_rx_mode();
	}	

	if(USART3->SR & USART_SR_RXNE)
	{	
		rx_buffer[rx_index] = USART3->DR;
		rx_index = (rx_index+1) & (BUF_SIZE-1);
	}	
	
}

int pack_bits_to_bytes(uint8_t *pbytes, uint8_t *pbits, int sbit, int nbits)
{
    int ibyte, ibite, i, nb;

    ibyte = sbit >> 3;
    ibite = 0x07 & sbit;

    i = 0;
    while(1)
    {
		uint8_t reg;
		reg = pbits[ibyte++] >> ibite;
		reg |= pbits[ibyte] << (8-ibite);
		pbytes[i] = reg;
		if(nbits > 8)
		{
			nbits -= 8;
			i ++;
		}
		else
		{
			pbytes[i] &= (0xff >> (8-nbits));
			break;
		}
    }
    
    return i+1;
}

void set_coil(int addr, uint8_t val)
{
	int ibyte, ibit, i;
	
	addr -= BITS_REF_ADDRESS;
	
    ibyte = addr >> 3;
    ibit = addr & 0x07;
        
    bits_tab[ibyte] &= ~(0x01 << ibit);    
	bits_tab[ibyte] |=  (val << ibit);
}

int pdu_write_single_coil()
{
	uint8_t code;
	uint16_t address;
	uint16_t value;
	int i,idx;
	
	code = rx_buffer[1];
	address = (rx_buffer[2]<<8) | rx_buffer[3];
	value = (rx_buffer[4]<<8) | rx_buffer[5];
	
	idx = 1;	
	// check address
	if( (address < BITS_REF_ADDRESS) || ( address >=  BITS_REF_ADDRESS+BITS_NB) )
	{
		// error - illegal data address
		tx_buffer[idx++] = 0x80 | code;
		tx_buffer[idx++] = 0x02;
		return idx;
	}	
	
	// check data 
	if( value == 0x0000)
	{
		// set coil off
		set_coil(address, COIL_OFF);
	}
	else if( value == 0xff00)
	{
		// set coil on
		set_coil(address, COIL_ON);
	}
	else
	{
		// error - illegal data value
		tx_buffer[idx++] = 0x80 | code;
		tx_buffer[idx++] = 0x03;
		return idx;		
	}
	
	// data is OK
	tx_buffer[idx++] = code;
	tx_buffer[idx++] = rx_buffer[2];
	tx_buffer[idx++] = rx_buffer[3];
	tx_buffer[idx++] = rx_buffer[4];
	tx_buffer[idx++] = rx_buffer[5];
	
	return idx;
}

int pdu_write_multiply_coils()
{
	uint8_t code;
	uint16_t address;
	uint16_t quantity_of_coils;
	uint8_t byte_count;
	int i,j,idx;
	
	code = rx_buffer[1];
	address = (rx_buffer[2]<<8) | rx_buffer[3];
	quantity_of_coils = (rx_buffer[4]<<8) | rx_buffer[5];
	byte_count = rx_buffer[6];
	
	idx = 1;	
	if( (address < BITS_REF_ADDRESS) || 
			( (address+quantity_of_coils) >  BITS_REF_ADDRESS+BITS_NB) )
	{
		// error - illegal data address
		tx_buffer[idx++] = 0x80 | code;
		tx_buffer[idx++] = 0x02;
		return idx;
	}

	// data is OK
	// update coils
	for(i = 0; i < byte_count; i++)
	{
		uint8_t reg;
		
		reg = rx_buffer[7+i];
		for(j = 0; j < 8; j++)
		{
			set_coil(address++, 0x01&reg);
			if( address == (BITS_REF_ADDRESS+quantity_of_coils) ) break;
			reg = reg >> 1;
		}				
	}

	// make response
	tx_buffer[idx++] = code;
	tx_buffer[idx++] = rx_buffer[2];
	tx_buffer[idx++] = rx_buffer[3];
	tx_buffer[idx++] = rx_buffer[4];
	tx_buffer[idx++] = rx_buffer[5];	
	
	return idx;
}

int pdu_read_coils()
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_coils;
	int i,idx;
	
	code = rx_buffer[1];
	start_address = (rx_buffer[2]<<8) | rx_buffer[3];
	quantity_of_coils = (rx_buffer[4]<<8) | rx_buffer[5];
	
	idx = 1;
	

	if( (start_address < BITS_REF_ADDRESS) || 
			( (start_address+quantity_of_coils) >  BITS_REF_ADDRESS+BITS_NB) )
	{
		// error - illegal data address
		tx_buffer[idx++] = 0x80 | code;
		tx_buffer[idx++] = 0x02;
		return idx;
	}

	// data is OK
	tx_buffer[idx++] = code;
	i = pack_bits_to_bytes(&tx_buffer[++idx], bits_tab, 
						start_address-BITS_REF_ADDRESS, quantity_of_coils);	
	tx_buffer[2] = i;
		
	return i+idx;
}

int pdu_read_discrete_inputs()
{
	uint8_t code;
	uint16_t address;
	uint16_t quantity;
	int i,idx;
	
	code = rx_buffer[1];
	address = (rx_buffer[2]<<8) | rx_buffer[3];
	quantity = (rx_buffer[4]<<8) | rx_buffer[5];
	
	idx = 1;
		
	if( (address < INPUT_BITS_REF_ADDRESS) || 
			( (address+quantity) >  INPUT_BITS_REF_ADDRESS+INPUT_BITS_NB) )
	{
		// error - illegal data address
		tx_buffer[idx++] = 0x80 | code;
		tx_buffer[idx++] = 0x02;
		return idx;
	}

	// data is OK
	tx_buffer[idx++] = code;
	i = pack_bits_to_bytes(&tx_buffer[++idx], input_bits_tab,
						address-INPUT_BITS_REF_ADDRESS, quantity);
	tx_buffer[2] = i;
		
	return i+idx;
}

int pdu_report_server_id()
{
	uint8_t code;
	int idx, i;
	int n = sizeof(device_additional_info);
	
	code = rx_buffer[1];
	
	idx = 1;
	tx_buffer[idx++] = code;
	tx_buffer[idx++] = 2 + n;	
	tx_buffer[idx++] = MY_ADDRESS;	
	tx_buffer[idx++] = 0xff;
	
	for(i = 0; i < n; i++)
	{
		tx_buffer[idx++] = device_additional_info[i];
	}
	
	return idx;	
}

int pdu_diagnostics()
{
	uint8_t code;
	uint16_t sub_function;
	int i, j;
	//rx_size
	
	code = rx_buffer[1];
	sub_function = (rx_buffer[2]<<8) | rx_buffer[3];

	j = 1;	
	switch(sub_function)
	{
		case 0:
			// return query data
			for(i = 1; i < rx_size; i++){
				tx_buffer[j++] = rx_buffer[i];
			}
			break;
		
		default:
			// error illegal function
			tx_buffer[j++] = 0x80 | code;
			tx_buffer[j++] = 0x01;
	}

	return j;
}

int pdu_read_input_registers()
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_registers;
	int i,j;
	
	code = rx_buffer[1];
	start_address = (rx_buffer[2]<<8) | rx_buffer[3];
	quantity_of_registers = (rx_buffer[4]<<8) | rx_buffer[5];	
	
	// check address
	if( (start_address < INPUT_REGISTERS_REF_ADDRESS) || 
	( (start_address+quantity_of_registers) >  INPUT_REGISTERS_REF_ADDRESS+INPUT_REGISTERS_NB) )
	{
		// error - illegal data address
		j = 1;		
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;		
		return j;
	}	

	// address is OK
	j = 1;			
	tx_buffer[j++] = code;
	tx_buffer[j++] = quantity_of_registers << 1; // num bytes is Nx2
	// copy registers to tx buffer
	for(i = 0; i < quantity_of_registers; i++)
	{
		uint16_t reg = 
			input_registers_tab[i+(start_address-INPUT_REGISTERS_REF_ADDRESS)];
		tx_buffer[j++] = (reg >> 8)&0xff;
		tx_buffer[j++] = reg&0xff;		
	}		

	return j;
}

int pdu_write_single_register()
{
	uint8_t code;
	uint16_t reg_address;
	uint16_t reg_value;
	int i,j;
	
	code = rx_buffer[1];
	reg_address = (rx_buffer[2]<<8) | rx_buffer[3];
	reg_value = (rx_buffer[4]<<8) | rx_buffer[5];
	
	// check address
	if( (reg_address < REGISTERS_REF_ADDRESS) || 
					( reg_address >=  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = 1;		
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;					
	}
	else
	{
		// address is OK
		// make writing register	
		register_tab[reg_address-REGISTERS_REF_ADDRESS] = reg_value;
		
		// make response
		j = 1;
		tx_buffer[j++] = code;
		tx_buffer[j++] = rx_buffer[2];
		tx_buffer[j++] = rx_buffer[3];
		tx_buffer[j++] = rx_buffer[4];
		tx_buffer[j++] = rx_buffer[5];							
	}
	
	return j;				
}

int pdu_write_multiply_registers()
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_registers;
	uint8_t byte_count;
	int i,j;
	
	code = rx_buffer[1];
	start_address = (rx_buffer[2]<<8) | rx_buffer[3];
	quantity_of_registers = (rx_buffer[4]<<8) | rx_buffer[5];	
	byte_count = rx_buffer[6];
	
	// check address
	if( (start_address < REGISTERS_REF_ADDRESS) || 
		( (start_address+quantity_of_registers) >  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = 1;		
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;					
	}
	else
	{
		// address is OK
		// make writing registers	
		j = 7;
		for(i = 0; i < quantity_of_registers; i++)
		{
			uint16_t reg;
			
			reg = (rx_buffer[j++]<<8);
			reg |= (rx_buffer[j++]);
			register_tab[(start_address-REGISTERS_REF_ADDRESS)+i] = reg;
		}
		
		// make responce
		j = 1;
		tx_buffer[j++] = code;
		tx_buffer[j++] = rx_buffer[2];
		tx_buffer[j++] = rx_buffer[3];
		tx_buffer[j++] = rx_buffer[4];
		tx_buffer[j++] = rx_buffer[5];					
	}	
	
	return j;
}

int pdu_read_holding_registers()
{
	uint8_t code;
	uint16_t start_address;
	uint16_t quantity_of_registers;
	int i,j;
	
	code = rx_buffer[1];
	start_address = (rx_buffer[2]<<8) | rx_buffer[3];
	quantity_of_registers = (rx_buffer[4]<<8) | rx_buffer[5];	
	
	// check address
	if( (start_address < REGISTERS_REF_ADDRESS) || 
		( (start_address+quantity_of_registers) >  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = 1;		
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;		
	}	
	else
	{
		// address is OK
		j = 1;			
		tx_buffer[j++] = code;
		tx_buffer[j++] = quantity_of_registers << 1; // num bytes is Nx2
		// copy registers to tx buffer
		for(i = 0; i < quantity_of_registers; i++)
		{
			uint16_t reg = 
				register_tab[i+(start_address-REGISTERS_REF_ADDRESS)];
			tx_buffer[j++] = (reg >> 8)&0xff;
			tx_buffer[j++] = reg&0xff;		
		}		
	}

	return j;
}

int pdu_read_write_multiply_registers()
{
	uint8_t code;
	uint16_t raddr;
	uint16_t nrreg;
	uint16_t waddr;
	uint16_t nwreg;
	uint8_t  nwb;
	int i,j;
	
	code = rx_buffer[1];
	raddr = (rx_buffer[2]<<8) | rx_buffer[3];
	nrreg = (rx_buffer[4]<<8) | rx_buffer[5];	
	waddr = (rx_buffer[6]<<8) | rx_buffer[7];
	nwreg = (rx_buffer[8]<<8) | rx_buffer[9];
	nwb = rx_buffer[10];
	
	// check address
	if( (raddr < REGISTERS_REF_ADDRESS) || 
				( (raddr+nrreg) >  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = 1;		
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;
		return j;
	}
	
	// check address
	if( (waddr < REGISTERS_REF_ADDRESS) || 
				( (waddr+nwreg) >  REGISTERS_REF_ADDRESS+REGISTERS_NB) )
	{
		// error - illegal data address
		j = 1;		
		tx_buffer[j++] = 0x80 | code;
		tx_buffer[j++] = 0x02;
		return j;
	}	
	
	// address is OK
	// make writing registers	
	j = 11;
	for(i = 0; i < nwreg; i++)
	{
		uint16_t reg;
		
		reg = (rx_buffer[j++] << 8);
		reg |= (rx_buffer[j++]);
		register_tab[(waddr-REGISTERS_REF_ADDRESS)+i] = reg;
	}
	// make reading registers
	j = 1;			
	tx_buffer[j++] = code;
	tx_buffer[j++] = nrreg << 1; // num bytes is Nx2
	// copy registers to tx buffer
	for(i = 0; i < nrreg; i++)
	{
		uint16_t reg = register_tab[i+(raddr-REGISTERS_REF_ADDRESS)];
		tx_buffer[j++] = (reg >> 8)&0xff;
		tx_buffer[j++] = reg&0xff;		
	}
			
	return j;		
}

int pdu_illegal_function_error()
{
	uint8_t code;
	int j;
	
	code = rx_buffer[1];
	
	j = 1;

	tx_buffer[j++] = 0x80 | code;
	tx_buffer[j++] = 0x01;
	
	return j;
}

void proc_ADU()
{
	uint16_t crc;
	uint8_t address;
	uint8_t code;
	
	crc = crc16(rx_buffer, rx_index);
	if(crc != 0)
	{
		modbus_error = 1;
		return;
	}
	
	address = rx_buffer[0];
	code = rx_buffer[1];
	
	if(address == 0) // broadcast
	{
		(*proc_PDU_table[code])();
	}
	else if(address == MY_ADDRESS)
	{
		int j;
		// make adu header
		tx_buffer[0] = MY_ADDRESS;
		// make pdu body
		j = (*proc_PDU_table[code])();
		// make adu tail - calculate crc
		crc = crc16(tx_buffer, j);		
		tx_buffer[j++] = crc&0xff;		
		tx_buffer[j++] = (crc >> 8)&0xff;
		// packet is ready - start transmitter
		//sleep(1);
		start_trans(j);
	}
}
