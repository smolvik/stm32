#include "stm32f4xx.h"
#include "reg.h"
#include "modbus_rtu.h"
#include "attenuator.h"
#include "gdef.h"
#include "i2c.h"

#if MY_ADDRESS == 16
	// 16
	const int32_t kc = 120733;
	const int32_t kr = 142297;
	const int32_t kv = 304500;
	const int32_t ac = 198358;
	const int32_t ar = -1722759;
	//const int32_t av = 412918;
	const int32_t av =   0;
	const uint32_t temp_sens_addr = 0x96;
#endif
#if MY_ADDRESS == 17
	// 17
	const int32_t kc = 120772; //120381;
	const int32_t kr = 142250; //142712;
	const int32_t kv = 342000; //341384;
	const int32_t ac = 259917; //0;
	const int32_t ar = -2256665; //0;
	const int32_t av = 512918;
	const uint32_t temp_sens_addr = 0x94;
#endif
#if MY_ADDRESS == 18
	// 18
	const int32_t kc = 120057; //119497;
	const int32_t kr = 143098; //143769;
	const int32_t kv = 305500; //305228;
	const int32_t ac = 85738; //0;
	const int32_t ar = -748834; //0;
	const int32_t av = -69380;
	const uint32_t temp_sens_addr = 0xa2; 	
#endif

extern const uint32_t apl602_imax [600];

extern uint32_t fOverheat;
extern uint32_t fDerating;
extern uint32_t Imax;

extern uint32_t Vdav;
extern int32_t Idav;
extern uint32_t Pdav;
extern uint32_t Tj;


uint8_t sbuf[8];
uint32_t spi_rx_ready = 0;
uint8_t spi_rx_byte;

void init_spi_dma()
{
	// enable clock for  dma at AHB1
	RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;
	
	// Set the peripheral port register address in the DMA_SxPAR register. The data will be
	// moved from/ to this address to/ from the peripheral port after the peripheral event.
	DMA1_Stream4->PAR = (uint32_t)&(SPI2->DR);
	
	// Set the memory address in the DMA_SxMA0R register (and in the DMA_SxMA1R
	// register in the case of a double buffer mode). The data will be written to or read from
	// this memory after the peripheral event.	
	DMA1_Stream4->M0AR = (uint32_t)sbuf;

	// Configure the total number of data items to be transferred in the DMA_SxNDTR
	// register. After each peripheral event or each beat of the burst, this value is
	// decremented.	
	DMA1_Stream4->NDTR = sizeof(sbuf);
	
	// Select the DMA channel (request) using CHSEL[2:0] in the DMA_SxCR register.
	DMA1_Stream4->CR &= ~DMA_SxCR_CHSEL; // channel 0
	
	// If the peripheral is intended to be the flow controller and if it supports this feature, set
	// the PFCTRL bit in the DMA_SxCR register.	
	DMA1_Stream4->CR &= ~DMA_SxCR_PFCTRL;
	
	// Configure the stream priority using the PL[1:0] bits in the DMA_SxCR register.	
	DMA1_Stream4->CR &= ~DMA_SxCR_PL;

	// Configure the FIFO usage (enable or disable, threshold in transmission and reception)		
	
	// Configure the data transfer direction, peripheral and memory incremented/fixed mode,
	// single or burst transactions, peripheral and memory data widths, 
	// Circular mode,Double buffer mode and interrupts after half and/or full transfer, and/or errors 
	// in the DMA_SxCR register.
	// data transfer direction
	DMA1_Stream4->CR &= ~DMA_SxCR_DIR;
	DMA1_Stream4->CR |= DMA_SxCR_DIR_0;
	// memory incremented
	DMA1_Stream4->CR |= DMA_SxCR_MINC;
	// single transactions
	DMA1_Stream4->CR &= ~DMA_SxCR_MBURST;
	DMA1_Stream4->CR &= ~DMA_SxCR_PBURST;
	// peripheral and memory data widths
	DMA1_Stream4->CR &= ~DMA_SxCR_MSIZE; // 8 bit
	DMA1_Stream4->CR &= ~DMA_SxCR_PSIZE; // 8 bit
	// circular buffer
	DMA1_Stream4->CR |= DMA_SxCR_CIRC;
	
	// enable int 
	DMA1_Stream4->CR |= DMA_SxCR_TCIE; 
	NVIC_EnableIRQ(DMA1_Stream4_IRQn);
	// clear int flag
	DMA1->HIFCR |= DMA_HIFCR_CTCIF4;
	
	// Activate the stream by setting the EN bit in the DMA_SxCR register.
	DMA1_Stream4->CR |= DMA_SxCR_EN;
	
}

void coll_pwm_set(uint16_t s)
{
	(s > 200) && (s = 200); 
	TIM3->CCR4 = s;
}

void ind_pwm_init()
{
	// setting TIM3 for adc triggering
	RCC->APB1ENR |= RCC_APB1ENR_TIM3EN; 	
	
	// time base
	TIM3->PSC = 420 - 1; // prescaller gets 0.2MHz
	TIM3->ARR = 100-1 ;    // TIM3 period 2000 Hz
	TIM3->CCR3 = 90;
	TIM3->CCR4 = 100;
	
	// interrupt	
	//TIM3->DIER |= TIM_DIER_CC3IE;       // compare chan 3 interrupt enable
	TIM3->DIER |= TIM_DIER_UIE;           // update interrupt enable
	NVIC_EnableIRQ(TIM3_IRQn);
	
	// pwm outputs		
	TIM3->CCMR2 = 0x00000000;
	
	TIM3->CCMR2 |= TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3PE; //PWM mode 1 channel 3 preload enabled
	TIM3->CCER |= TIM_CCER_CC3E; 						// output TIM3_ch3 enable	
	
	TIM3->CCMR2 |= TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4PE; //PWM mode 1 channel 4 preload enabled
	TIM3->CCER |= TIM_CCER_CC4E; 						// output TIM3_ch4 enable		
	
	TIM3->CR1 |= TIM_CR1_CEN; 							// start TIM3
		
	// enable clock at the port B
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
	
	// PB0 alternate mode
	GPIOB->MODER &= ~(GPIO_MODER_MODER0);
	GPIOB->MODER |= (GPIO_MODER_MODER0_1);
	// set high speed for PB0
	GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR0_0 | GPIO_OSPEEDER_OSPEEDR0_1);							
	// select alternate function for PB0 - TIM3_CH3 AF2
	GPIOB->AFR[0] &= ~(0xf << (0)*4); // reset field
	GPIOB->AFR[0] |= (0x2 << (0)*4);
	
	// PB1 alternate mode
	GPIOB->MODER &= ~(GPIO_MODER_MODER1);
	GPIOB->MODER |= (GPIO_MODER_MODER1_1);
	// set high speed for PB1
	GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR1_0 | GPIO_OSPEEDER_OSPEEDR1_1);
	// select alternate function for PB1 - TIM3_CH4 AF2
	GPIOB->AFR[0] &= ~(0xf << (1)*4); // reset field
	GPIOB->AFR[0] |= (0x2 << (1)*4);
}

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
	// enable clock for SPI2
	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN;
	
	// configure SCK output - PB10	 MOSI output - PB15
	// enable clock at the port B
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
	// PB10 PB15 alternate mode
	GPIOB->MODER &= ~(GPIO_MODER_MODER10 | GPIO_MODER_MODER15 | GPIO_MODER_MODER12);
	GPIOB->MODER |= (GPIO_MODER_MODER10_1 | GPIO_MODER_MODER15_1 | GPIO_MODER_MODER12_1);
	// set high speed for PB10 PB15
	GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR10_0 | GPIO_OSPEEDER_OSPEEDR10_1 |
					   GPIO_OSPEEDER_OSPEEDR15_0 | GPIO_OSPEEDER_OSPEEDR15_1 |
					   GPIO_OSPEEDER_OSPEEDR12_0 | GPIO_OSPEEDER_OSPEEDR12_1);
	
	// configure NSS output - PB12					   
	GPIOB->MODER &= ~(GPIO_MODER_MODER12);
	GPIOB->MODER |= GPIO_MODER_MODER12_0;
	GPIOB->ODR |= GPIO_ODR_ODR_12;
						
	// select properly alternate function for PB10-SPI2_SCK PB15-SPI2_MOSI AF5
	GPIOB->AFR[1] &= ~(0xf << (10-8)*4);
	GPIOB->AFR[1] |= (5 << (10-8)*4);
	
	GPIOB->AFR[1] &= ~(0xf << (15-8)*4);
	GPIOB->AFR[1] |= (5 << (15-8)*4);
	
	GPIOB->AFR[1] &= ~(0xf << (12-8)*4);
	GPIOB->AFR[1] |= (5 << (12-8)*4);
		
	// Select the BR[2:0] bits to define the serial clock baud rate
	SPI2->CR1 &= ~SPI_CR1_BR;
	//SPI2->CR1 |= (SPI_CR1_BR_0 | SPI_CR1_BR_1 | SPI_CR1_BR_2);
	SPI2->CR1 |= (SPI_CR1_BR_2);
	
	// Select the CPOL and CPHA bits to define one of the four relationships between the
    // data transfer and the serial clock
    SPI2->CR1 &= ~(SPI_CR1_CPHA | SPI_CR1_CPOL);
    //SPI2->CR1 |= SPI_CR1_CPOL;
    //SPI2->CR1 |= SPI_CR1_CPHA;
    
    // Set the DFF bit to define 8- or 16-bit data frame format
    SPI2->CR1 &= ~SPI_CR1_DFF; // 8 bit format
    // SPI2-CR1 |= SPI_CR1_DFF; // 16 bit format
    
    // Configure the LSBFIRST bit in the SPI_CR1 register to define the frame format
    SPI2->CR1 |= SPI_CR1_LSBFIRST; // LSB is transmitted first
    
    // NSS configuration
   //  SPI2->CR1 |= SPI_CR1_SSM | SPI_CR1_SSI; // software nss management
    SPI2->CR1 &= ~SPI_CR1_SSM; // disable software nss management
    SPI2->CR2 |= SPI_CR2_SSOE; // The NSS signal is driven low when the master starts 
							   // the communication and is kept	low until the SPI is disabled.
	
	SPI2->CR1 |= SPI_CR1_MSTR; // set up master mode
	
	init_spi_dma();	
	
	SPI2->CR2 |= SPI_CR2_TXDMAEN;	
	SPI2->CR1 |= SPI_CR1_SPE; 
	
	ind_pwm_init();
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
	// configure MISO output - PB14
	// configure SCK output - PB10 
		
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
	 //SPI2->CR1 |= SPI_CR1_SPE; 
	// Write the first data item to be transmitted into the SPI_DR register
	// this clears the TXE flag
	SPI2->DR = pw[i++];
	
	for(;i < n; i++){
		// Wait until TXE=1 and write the second data item to be transmitted
		while(0 == (SPI2->SR & SPI_SR_TXE));
		SPI2->DR = pw[i];
	    // Then wait until RXNE=1 and read the SPI_DR to get the received data item 
	    // this clears the RXNE bit
		while(0 == (SPI2->SR & SPI_SR_RXNE));
		pr[i-1] = SPI2->DR;
		
		// Repeat this operation for each data item to be transmitted/received 
		// until the n–1 received data
	}
	
	// Wait until RXNE=1 and read the last received data	
	while(0 == (SPI2->SR & SPI_SR_RXNE));
	pr[n-1] = SPI2->DR;
	
	// Wait until TXE=1 and then wait until BSY=0 before disabling the SPI
	while(0 == (SPI2->SR & SPI_SR_TXE));
	while(SPI2->SR & SPI_SR_BSY);

	// disable the SPI
	//SPI2->CR1 &= ~SPI_CR1_SPE;
		
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

void check_current()
{
	Idav = ((Ic1>>10)*kc + ac + 8192)>>14;	
	(Idav < 0) && (Idav = 0);
	req_id = (uint16_t)Idav;
}

void set_refcurrent(uint32_t i)
{
	register uint32_t v = ( ((Vdav+0x20000) >> 18)+5 )/10;

	(v >= 599) && (v = 599);
	register uint32_t imax = apl602_imax[v];
	
	imax = (imax*(150-temperature))/125;
	(i > imax) && (i = imax);

	
	Imax = imax;
	//int32_t t = (( i*kr + ar + 0x80000)>>20);
	int32_t t =  i*kr + ar;
	Ir1 = (t>0)?((t + 0x80000)>>20):0;
}				

void check_voltage()
{			
	Vdav = ((Vd>>10)*kv + av) >> (Katt-2);
	req_vd = (uint16_t)((Vdav+0x20000) >> 18);
}

extern uint32_t Ki;
extern uint32_t Kp;

void update_mode()
{
		const uint32_t von = (3*10) << 18;
		const uint32_t voff = (2*10) << 18;	
		
		if(fOverheat){
			GPIOE->ODR |= GPIO_ODR_ODR_7;
			Ir1 = 0;
		}else{
			// check voltage	
			if(Vdav < voff ){
				GPIOE->ODR |= GPIO_ODR_ODR_7;				
				Ir1 = 0;
			}
			else if(Vdav > von){

				GPIOE->ODR &= ~GPIO_ODR_ODR_7;

				switch(req_mode)
				{
					case 0:
						// shutdown
						Ir1 = 0;
						GPIOE->ODR |= GPIO_ODR_ODR_7;
					break;
					
					case 1:
						// current mode	
						set_refcurrent(req_curr);
					break;
					
					case 2:
						// resistanse mode
						set_refcurrent(100*((Vdav+0x20000) >> 18)/req_res);
					break;
					
					case 100:
						// calibration mode
						Ir1 = req_curr;
					break;					
				}

			}
			
			Ki = req_ki;
			Kp = req_kp;
		}
}

const uint32_t Rt = 17;

void check_temp()
{
	int i;
	uint32_t v = ( ((Vdav+0x20000) >> 18)+5 )/10;
	uint32_t tjm = 0;
	
	Pdav = Idav*v;
	Tj = temperature + (Rt*Pdav+50000)/100000;
	
	if (Tj < 40) {
		coll_pwm_set(80);
		fOverheat = 0;
	}
	else if (Tj > 50) {
		coll_pwm_set(1);
		if(Tj > 150){
			fOverheat = 1;
		}
	}
	
	req_tc = (uint16_t)temperature;
	
}

int16_t encoderA = 0;
int16_t encoderB = 0;
int16_t encoderB_prev = 0;

int16_t enc_cnt = 0;
uint16_t enc_dir_p = 0;
uint16_t enc_dir_m = 0;

void TIM3_IRQHandler(void)
{
	static uint32_t ti = 0;
	
	//GPIOA->ODR &= ~GPIO_ODR_ODR_7;
	//GPIOA->ODR |= GPIO_ODR_ODR_7;
	
	TIM3->SR &= ~TIM_SR_UIF;	
	DMA1_Stream4->CR |= DMA_SxCR_EN;
		
	if(GPIOB->IDR & GPIO_IDR_IDR_6) {
		encoderA+=40;
		(encoderA > 200) && (encoderA = 200);
	}
	else {
		encoderA-=40;
		(encoderA < -200) && (encoderA = -200);
	}
	
	if(GPIOB->IDR & GPIO_IDR_IDR_7) {
		encoderB+=40;
		(encoderB > 200) && (encoderB = 200);
	}
	else {
		encoderB-=40;
		(encoderB < -200) && (encoderB = -200);
	}
	
	enc_dir_m = ((~encoderB_prev) & encoderB & encoderA & 0x8000)>>15;
	enc_dir_p = ((~encoderB_prev) & encoderB & (~encoderA) & 0x8000)>>15;
	enc_cnt += enc_dir_p - enc_dir_m;
		
	encoderB_prev = encoderB;
			
	DAC->DHR12R1 = (encoderA + 200) << 2;
	DAC->DHR12R2 = (encoderB + 200) << 2;
	
	//GPIOA->ODR &= ~GPIO_ODR_ODR_7;
}

void DMA1_Stream4_IRQHandler(void)
{
	//GPIOB->ODR ^= GPIO_ODR_ODR_12;
	DMA1->HIFCR |= DMA_HIFCR_CTCIF4;
	DMA1_Stream4->CR &= ~DMA_SxCR_EN;
	
}
