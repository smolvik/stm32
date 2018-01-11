#include "stm32f4xx.h"
#include "xprintf.h"


uint8_t i2c_address = 0x92;
uint8_t temp_buf[8];
void (*i2c_fsm_prc)(void);
uint32_t i2c_errcnt = 0;


/*
	In Master mode, the I2C interface initiates a data transfer and generates the clock signal. A
	serial data transfer always begins with a Start condition and ends with a Stop condition.
	Master mode is selected as soon as the Start condition is generated on the bus with a
	START bit.
	The following is the required sequence in master mode.
	• Program the peripheral input clock in I2C_CR2 Register in order to generate correct
	timings
	• Configure the clock control registers
	• Configure the rise time register
	• Program the I2C_CR1 register to enable the peripheral
	• Set the START bit in the I2C_CR1 register to generate a Start condition
*/

void i2c_init()
{
	// configure pins PB6 - SCL PB7 -SDA
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
	
	// open drain 
	GPIOB->OTYPER |= (GPIO_OTYPER_OT_6 | GPIO_OTYPER_OT_7);
	
	// PB6 PB7 alternate mode
	GPIOB->MODER &= ~(GPIO_MODER_MODER6 | GPIO_MODER_MODER7);
	GPIOB->MODER |= (GPIO_MODER_MODER6_1 | GPIO_MODER_MODER7_1);
	
	// select properly alternate function for PB6 PB7 AF4
	GPIOB->AFR[0] &= ~(0xf << (6*4));
	GPIOB->AFR[0] |= (4 << (6*4));
	GPIOB->AFR[0] &= ~(0xf << (7*4));
	GPIOB->AFR[0] |= (4 << (7*4));
					   	
	// Enable i2c clock at bus
	RCC->APB1ENR |= RCC_APB1ENR_I2C1EN;
	
	I2C1->CR1 = I2C_CR1_SWRST;
    I2C1->CR1 = 0;	
	
	// The FREQ bits must be configured with the APB clock frequency value (I2C peripheral
	// connected to APB). The FREQ field is used by the peripheral to generate data setup and
	// hold times compliant with the I2C specifications
	I2C1->CR2 &= ~I2C_CR2_FREQ;
	I2C1->CR2 |= 42; // FPCLK1 = 42MHz TPCLK1 = 23.81 ns
		
	// Configure the clock control registers
	//I2C1->CCR = 60; // TSCL = 2*CCR*TPCLK1 CCR = TSCL/(2*TPCLK1) = FPCLK1/(2*FSCL) = 210 (100khz)
	I2C1->CCR = 180; // TSCL = 2*CCR*TPCLK1 CCR = TSCL/(2*TPCLK1) = FPCLK1/(2*FSCL) = 210 (100khz)
	
	// Настраивается максимальное время нарастания фронта в регистре TRISE. 
	// Для стандартного режима это время 1 мкс. В регистр надо записать 
	// количество тактов шины, укладывающихся в это время, плюс один:
	I2C1->TRISE &= ~I2C_TRISE_TRISE;
	I2C1->TRISE |= 42; // TRISE/TPCLK1 = 1000 ns/23.81 ns = 41
	
	I2C1->CR2 |= I2C_CR2_ITEVTEN;
	
	// Enable module
	I2C1->CR1 |= I2C_CR1_PE;
	
	//NVIC_EnableIRQ(I2C1_ER_IRQn);
	NVIC_EnableIRQ(I2C1_EV_IRQn);
	
	
}

/*
// Read 8 bytes from max 31725 
void i2c_test()
{
	uint16_t status;
	int i;
	
	// send START
	I2C1->CR1 |= I2C_CR1_START;
	
	// wait for START sending 
	while(0 == (I2C1->SR1 & I2C_SR1_SB));
	
	// send address
	I2C1->DR = 0x94;
	// wait for end address transmitting
	while (0 == (I2C1->SR1 & I2C_SR1_ADDR));
	// OK  we've got ACK from slave
	status = I2C1->SR2;	
	
	// send reg pointer	= 0x00
	I2C1->DR = 0x00;
	// When the acknowledge pulse is received, the TxE bit is set by hardware
	while(0 == (I2C1->SR1 & I2C_SR1_TXE));
	
	// send rep START
	I2C1->CR1 |= I2C_CR1_START;
	// wait for rep START sending 
	while(0 == (I2C1->SR1 & I2C_SR1_SB));	
	 
	// send address for read 
	I2C1->DR = 0x94 | 0x01;
	// wait for end address transmitting
	while (0 == (I2C1->SR1 & I2C_SR1_ADDR));
	// OK  we've got ACK from slave
	status = I2C1->SR2;   // clear ADDR flag
	
	// read 8 bytes from slave now		
	// read the first 7 bytes with ACK
	I2C1->CR1 |= I2C_CR1_ACK; 	
	for(i = 0; i < 7; i++){
		while(0 == (I2C1->SR1 & I2C_SR1_RXNE));
		temp_buf[i] = I2C1->DR;	
	}
				
	// read the last byte with NACK
	I2C1->CR1 &= ~I2C_CR1_ACK; 
	while(0 == (I2C1->SR1 & I2C_SR1_RXNE));
	temp_buf[i] = I2C1->DR;

	// send STOP
	I2C1->CR1 |= I2C_CR1_STOP;		
	
	// wait for free bus
	while(I2C1->SR2 & I2C_SR2_BUSY);
	
}
*/ 


// Read first two bytes from max31725: it's temperature register
void i2c_test()
{
	uint16_t status;
	
	//I2C1->CR1 |= I2C_CR1_SWRST;
	//I2C1->CR1 &= ~I2C_CR1_SWRST;
	
	// send START
	I2C1->CR1 |= I2C_CR1_START;
	
	// wait for START sending 
	while(0 == (I2C1->SR1 & I2C_SR1_SB));
	xprintf("we've send START to slave:%u\n", (uint16_t)I2C1->SR1);
	
	// send address
	I2C1->DR = 0x94;
	// wait for end address transmitting
	while (0 == (I2C1->SR1 & I2C_SR1_ADDR));
	// OK  we've got ACK from slave
	status = I2C1->SR2;	
	xprintf("we've send addres to slave:%u\n", (uint16_t)I2C1->SR1);
	
	// send reg pointer	= 0x00
	I2C1->DR = 0x00;
	// When the acknowledge pulse is received, the TxE bit is set by hardware
	while(0 == (I2C1->SR1 & I2C_SR1_TXE));
	xprintf("we've write pointer to slave:%u\n", (uint16_t)I2C1->SR1);
	
	// send rep START
	I2C1->CR1 |= I2C_CR1_START;
	// wait for rep START sending 
	while(0 == (I2C1->SR1 & I2C_SR1_SB));	
	xprintf("we've send START to slave:%u\n", (uint16_t)I2C1->SR1);
	 
	// send address for read 
	I2C1->DR = 0x94 | 0x01;
	// wait for end address transmitting
	while (0 == (I2C1->SR1 & I2C_SR1_ADDR));
	// OK  we've got ACK from slave
	xprintf("we've send addres to slave:%u\n", (uint16_t)I2C1->SR1);
		
	I2C1->CR1 &= ~I2C_CR1_ACK; 
	I2C1->CR1 |= I2C_CR1_POS;  
	status = I2C1->SR2;   // clear ADDR flag
	
	// wait for btf
	while(0 == (I2C1->SR1 & I2C_SR1_BTF));
	xprintf("we've have BTF:%u\n", (uint16_t)I2C1->SR1);

	// send STOP
	I2C1->CR1 |= I2C_CR1_STOP;		

	// read the first byte
	while(0 == (I2C1->SR1 & I2C_SR1_RXNE));
	temp_buf[0] = I2C1->DR;
	
	// read the second byte
	while(0 == (I2C1->SR1 & I2C_SR1_RXNE));
	temp_buf[1] = I2C1->DR;	
	
	// wait for free bus
	while(I2C1->SR2 & I2C_SR2_BUSY);	
	xprintf("bus is free:%u\n", (uint16_t)I2C1->SR1);
}

void I2C1_EV_IRQHandler(void)
{
	
	i2c_fsm_prc();
	
}

void I2C1_ER_IRQHandler(void)
{
	uint16_t status = I2C1->SR1;
	I2C1->SR1 &= ~(I2C_SR1_BERR | I2C_SR1_ARLO | I2C_SR1_AF | I2C_SR1_OVR | 
					I2C_SR1_PECERR | I2C_SR1_TIMEOUT | I2C_SR1_SMBALERT);	
}

//*************
void btf_conf()
{
	if (I2C1->SR1 & I2C_SR1_BTF){	
		 // OK BTF has been confirmed - read two bytes from buffer and send 
		 // STOP for the slave
		 I2C1->CR1 |= I2C_CR1_STOP;
		 temp_buf[0] = I2C1->DR;
		 temp_buf[1] = I2C1->DR;
		 
		 i2c_errcnt = 0;
		 
		 //GPIOD->ODR &= ~GPIO_ODR_ODR_12;	
		 
	}
}

void raddr_conf()
{
	if (I2C1->SR1 & I2C_SR1_ADDR){
		// read addr has been transmitted - prepare for rx two bytes
		I2C1->CR1 &= ~I2C_CR1_ACK; 
		I2C1->CR1 |= I2C_CR1_POS;  
		register uint16_t s2 = I2C1->SR2;				
		i2c_fsm_prc = btf_conf;
	}
	
}

void rsb_conf()
{
	if (I2C1->SR1 & I2C_SR1_SB){	
		// rep SB has been cofirmed - send address for read 
		I2C1->DR = i2c_address | 0x01;
		i2c_fsm_prc = raddr_conf;
	}

}

void pntr_tx_end()
{
	if (I2C1->SR1 & I2C_SR1_TXE){
		// pointer has been ACKed - send rep START
		I2C1->CR1 |= I2C_CR1_START;
		i2c_fsm_prc = rsb_conf;
	}
}

void wadr_conf()
{
	if (I2C1->SR1 & I2C_SR1_ADDR){
		// waddr has been transmitted - send reg pointer	= 0x00
		register uint16_t s2 = I2C1->SR2;	// clear ADDR flag by reading SR2
		I2C1->DR = 0x00;
		i2c_fsm_prc = pntr_tx_end;
	}
}

void sb_conf()
{
	if (I2C1->SR1 & I2C_SR1_SB){
		// START has been transmitted - send waddr
		I2C1->DR = i2c_address;
		i2c_fsm_prc = wadr_conf;
	}
}

void i2c_start(uint8_t adr)
{

	i2c_address = adr;
	i2c_fsm_prc = sb_conf;
	I2C1->CR1 |= I2C_CR1_START;		
	
	i2c_errcnt++;
	
	//GPIOD->ODR |= GPIO_ODR_ODR_12;
}
