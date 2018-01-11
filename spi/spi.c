#include "stm32f10x.h"

uint32_t spi_rx_ready = 0;
uint8_t spi_rx_byte;
/*
* Configuring the SPI in master mode
* In the master configuration, the serial clock is generated on the SCK pin.
* Procedure
* 1.    Select the BR[2:0] bits to define the serial clock baud rate (see SPI_CR1 register).
* 2.    Select the CPOL and CPHA bits to define one of the four relationships between the
*       data transfer and the serial clock (see Figure 239).
* 3.    Set the DFF bit to define 8- or 16-bit data frame format
* 4.    Configure the LSBFIRST bit in the SPI_CR1 register to define the frame format.
* 5.    If the NSS pin is required in input mode, in hardware mode, connect the NSS pin to a
*       high-level signal during the complete byte transmit sequence. In NSS software mode,
*       set the SSM and SSI bits in the SPI_CR1 register. If the NSS pin is required in output
*       mode, the SSOE bit only should be set.
* 6.    The MSTR and SPE bits must be set (they remain set only if the NSS pin is connected
*       to a high-level signal).
* In this configuration the MOSI pin is a data output and the MISO pin is a data input.
*/

void spi_master_init(void)
{
	// configure NSS output - PA4
	GPIOA->CRL &= ~(GPIO_CRL_CNF4|GPIO_CRL_MODE4);
	GPIOA->CRL |= (GPIO_CRL_MODE4_0|GPIO_CRL_MODE4_1); // PA4 - push-pull 50MHz gen out
	
	// configure SCK output - PA 5
	GPIOA->CRL &= ~(GPIO_CRL_CNF5|GPIO_CRL_MODE5);
	GPIOA->CRL |= (GPIO_CRL_CNF5_1|GPIO_CRL_MODE5_0|GPIO_CRL_MODE5_1); // PA5 - push-pull 50MHz alter out

	// configure MOSI output - PA7
	GPIOA->CRL &= ~(GPIO_CRL_CNF7|GPIO_CRL_MODE7);
	GPIOA->CRL |= (GPIO_CRL_CNF7_1|GPIO_CRL_MODE7_0|GPIO_CRL_MODE7_1); // PA7 - push-pull 50MHz alter out
		
	// Select the BR[2:0] bits to define the serial clock baud rate
	SPI1->CR1 &= ~SPI_CR1_BR;
	SPI1->CR1 |= (SPI_CR1_BR_0 | SPI_CR1_BR_1 | SPI_CR1_BR_2);
	
	// Select the CPOL and CPHA bits to define one of the four relationships between the
    // data transfer and the serial clock
    SPI1->CR1 &= ~(SPI_CR1_CPHA | SPI_CR1_CPOL);
    //SPI1->CR1 |= SPI_CR1_CPOL;
    SPI1->CR1 |= SPI_CR1_CPHA;
    
    // Set the DFF bit to define 8- or 16-bit data frame format
    SPI1->CR1 &= ~SPI_CR1_DFF; // 8 bit format
    // SPI1-CR1 |= SPI_CR1_DFF; // 16 bit format
    
    // Configure the LSBFIRST bit in the SPI_CR1 register to define the frame format
    SPI1->CR1 |= SPI_CR1_LSBFIRST; // LSB is transmitted first
    
    // NSS configuration
     SPI1->CR1 |= SPI_CR1_SSM | SPI_CR1_SSI; // software nss management
   // SPI1->CR1 &= ~SPI_CR1_SSM; // disable software nss management
   // SPI1->CR2 |= SPI_CR2_SSOE; // The NSS signal is driven low when the master starts 
							   // the communication and is kept	low until the SPI is disabled.
	
	SPI1->CR1 |= SPI_CR1_MSTR; // set up master mode
	SPI1->CR1 |= SPI_CR1_SPE; 
}

/*
 Configuring the SPI in slave mode
 In the slave configuration, the serial clock is received on the SCK pin from the master
 device.
 1.   Set the DFF bit to define 8- or 16-bit data frame format
 2.   Select the CPOL and CPHA bits to define one of the four relationships between the
      data transfer and the serial clock (see Figure 239). For correct data transfer, the CPOL
      and CPHA bits must be configured in the same way in the slave device and the master
      device.
 3.   The frame format (MSB-first or LSB-first depending on the value of the LSBFIRST bit in
      the SPI_CR1 register) must be the same as the master device.
 4.   In Hardware mode (refer to Slave select (NSS) pin management on page 694), the
      NSS pin must be connected to a low level signal during the complete byte transmit
      sequence. In NSS software mode, set the SSM bit and clear the SSI bit in the SPI_CR1
      register.
 5.   Clear the MSTR bit and set the SPE bit (both in the SPI_CR1 register) to assign the
      pins to alternate functions.
In this configuration the MOSI pin is a data input and the MISO pin is a data output.
*/

void spi_slave_init(void)
{
	// configure MISO output - PA6
	GPIOA->CRL &= ~(GPIO_CRL_CNF6|GPIO_CRL_MODE6);
	GPIOA->CRL |= (GPIO_CRL_CNF6_1|GPIO_CRL_MODE6_0|GPIO_CRL_MODE6_1); // PA6 - push-pull 50MHz alter out
		
    // Set the DFF bit to define 8- or 16-bit data frame format
    SPI1->CR1 &= ~SPI_CR1_DFF; // 8 bit format
    // SPI1-CR1 |= SPI_CR1_DFF; // 16 bit format
	
	// Select the CPOL and CPHA bits to define one of the four relationships between the
    // data transfer and the serial clock
    SPI1->CR1 &= ~(SPI_CR1_CPHA | SPI_CR1_CPOL);
    //SPI1->CR1 |= SPI_CR1_CPOL;
    SPI1->CR1 |= SPI_CR1_CPHA;    
    
    //SPI1->CR1 |= SPI_CR1_RXONLY;
    
    // Configure the LSBFIRST bit in the SPI_CR1 register to define the frame format
    SPI1->CR1 |= SPI_CR1_LSBFIRST; // LSB is transmitted first
    
    // NSS configuration
    // SPI1->CR1 |= SPI_CR1_SSM | SPI_CR1_SSI; // software nss management
    SPI1->CR1 &= ~SPI_CR1_SSM;  // disable software nss management
	SPI1->CR2 |= SPI_CR2_RXNEIE; // enable irq from rxbuf not empty event
	
	SPI1->CR1 &= ~SPI_CR1_MSTR; // set up slave mode
	
	NVIC_EnableIRQ(SPI1_IRQn);
	
	SPI1->CR1 |= SPI_CR1_SPE; 
}

void spi_write_read(uint8_t *pw, uint8_t *pr, uint16_t n)
{
	int i = 0;
	
	// Enable the SPI
	// SPI1->CR1 |= SPI_CR1_SPE; 
	// Write the first data item to be transmitted into the SPI_DR register
	// this clears the TXE flag
	SPI1->DR = pw[i++];
	
	for(;i < n; i++){
		// Wait until TXE=1 and write the second data item to be transmitted
		while(0 == (SPI1->SR & SPI_SR_TXE));
		SPI1->DR = pw[i];
	    // Then wait until RXNE=1 and read the SPI_DR to get the received data item 
	    // this clears the RXNE bit
		while(0 == (SPI1->SR & SPI_SR_RXNE));
		pr[i-1] = SPI1->DR;
		
		// Repeat this operation for each data item to be transmitted/received 
		// until the n–1 received data
	}
	
	// Wait until RXNE=1 and read the last received data	
	while(0 == (SPI1->SR & SPI_SR_RXNE));
	pr[n-1] = SPI1->DR;
	
	// Wait until TXE=1 and then wait until BSY=0 before disabling the SPI
	while(0 == (SPI1->SR & SPI_SR_TXE));
	while(SPI1->SR & SPI_SR_BSY);

	// disable the SPI
	//SPI1->CR1 &= ~SPI_CR1_SPE;
		
}

void SPI1_IRQHandler(void)
{
	if(SPI1->SR & SPI_SR_RXNE)
	{
		// rx buffer is not empty
		spi_rx_ready = 1;
		spi_rx_byte = SPI1->DR;		
	}
	if(SPI1->SR & SPI_SR_TXE)
	{
		// tx buffer is empty
		
	}
}
