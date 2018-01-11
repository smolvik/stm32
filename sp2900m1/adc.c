#include "stm32f4xx.h"

void adc_common_init()
{
	// common setting
	// Configure the ADC Prescaler 84/4 = 21MHz
	ADC->CCR &= ~ADC_CCR_ADCPRE;
	ADC->CCR |= ADC_CCR_ADCPRE_0;

}

void adc1_init()
{
	// setting for ADC1
	// Enable the ADC1 interface clock
	RCC->APB2ENR |= RCC_APB2ENR_ADC1EN;
	
	// ADC pins configuration
    // Enable the clock for the ADC1 GPIO
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 
    // Configure ADC1 pins in analog mode PA0
	GPIOA->MODER &= ~(GPIO_MODER_MODER0);
	GPIOA->MODER |= (GPIO_MODER_MODER0_0 | GPIO_MODER_MODER0_1);
	
	// The number of ADC conversions that will be done using the
	// sequencer for regular channel group
	ADC1->SQR1 &= ~ADC_SQR1_L;
	ADC1->SQR1 |= ( 0 << 20);
	
	// setting sampling time for channel 0
	//ADC1->SMPR2 &= ~ADC_SMPR2_SMP0;
	//ADC1->SMPR2 |= ADC_SMPR2_SMP0_2;
	
	// select resolution 10 bit for adc1
	//ADC1->CR1 &= ~ADC_CR1_RES;
	//ADC1->CR1 |= ADC_CR1_RES_0;
	
	ADC1->CR1 |= ADC_CR1_EOCIE; // enable interrupt of adc1
	
	// convert ADC_IN0 as 1 channel
	ADC1->SQR3 &= ~ADC_SQR3_SQ1;
	ADC1->SQR3 |= 0;

	// select trigger TIM2_CH2
	ADC1->CR2 &= ~ADC_CR2_EXTEN;  // enable external triggering
	ADC1->CR2 |= ADC_CR2_EXTEN_0; // trigger by rising edge
	
	ADC1->CR2 &= ~ADC_CR2_EXTSEL;
	ADC1->CR2 |= ADC_CR2_EXTSEL_0 | ADC_CR2_EXTSEL_2; // tim2_ch4
	
	ADC1->CR2 |= (uint32_t)ADC_CR2_ADON;
}	

void adc2_init()
{
	// setting for ADC2
	// Enable the ADC2 interface clock
	RCC->APB2ENR |= RCC_APB2ENR_ADC2EN;
	
	// ADC pins configuration
    // Enable the clock for the ADC2 GPI1
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 
    // Configure ADC2 pins in analog mode PA1
	GPIOA->MODER &= ~(GPIO_MODER_MODER1);
	GPIOA->MODER |= (GPIO_MODER_MODER1_0 | GPIO_MODER_MODER1_1);
	
	// The number of ADC2 conversions that will be done using the
	// sequencer for regular channel group
	ADC2->SQR1 &= ~ADC_SQR1_L;
	ADC2->SQR1 |= ( 0 << 20);
	
	// setting sampling time for channel 0
	//ADC2->SMPR2 &= ~ADC_SMPR2_SMP0;
	//ADC2->SMPR2 |= ADC_SMPR2_SMP0_2;
	
	// select resolution 10 bit for adc1
	//ADC2->CR1 &= ~ADC_CR1_RES;
	//ADC2->CR1 |= ADC_CR1_RES_0;
	
	// convert ADC_IN1 as 1 conversion
	ADC2->SQR3 &= ~ADC_SQR3_SQ1;   // 1 st conversion
	ADC2->SQR3 |= 1;               // ADC_IN1

	ADC2->CR2 |= (uint32_t)ADC_CR2_ADON;
}

void adc3_init()
{
	// setting for ADC3
	// Enable the ADC3 interface clock
	RCC->APB2ENR |= RCC_APB2ENR_ADC3EN;
	
	// ADC pins configuration
    // Enable the clock for the ADC3 GPI1
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 
    // Configure ADC3 pins in analog mode PA3
	GPIOA->MODER &= ~(GPIO_MODER_MODER3);
	GPIOA->MODER |= (GPIO_MODER_MODER3_0 | GPIO_MODER_MODER3_1);
	
	// The number of ADC3 conversions that will be done using the
	// sequencer for regular channel group
	ADC3->SQR1 &= ~ADC_SQR1_L;
	ADC3->SQR1 |= ( 0 << 20);
	
	// setting sampling time
	//ADC3->SMPR2 &= ~ADC_SMPR2_SMP0;
	//ADC3->SMPR2 |= ADC_SMPR2_SMP0_2;
	
	// select resolution 10 bit for adc1
	//ADC3->CR1 &= ~ADC_CR1_RES;
	//ADC3->CR1 |= ADC_CR1_RES_0;
	
	// convert ADC_IN1 as 1 conversion
	ADC3->SQR3 &= ~ADC_SQR3_SQ1;   // 1 st conversion
	ADC3->SQR3 |= 3;               // ADC_IN3
	
	ADC3->CR2 |= (uint32_t)ADC_CR2_ADON;
}	

void adc_set_trigger()
{
	// setting TIM2 for adc triggering
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; 	
	
	// time base
	TIM2->PSC = 42 - 1; // prescaller gets 2MHz
	
	//TIM2->ARR = 20-1 ;    // TIM2 period 100kHz
	//TIM2->ARR = 10-1 ;    // TIM2 period 200kHz
	//TIM2->ARR = 5-1 ;    // TIM2 period 400kHz
	TIM2->ARR = 4-1 ;    // TIM2 period 500kHz
	TIM2->CCR4 = 2;
	
	// pwm outputs		
	TIM2->CCMR2 = 0x00000000;
	TIM2->CCMR2 |= TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4PE; //PWM mode 1 channel 4 preload enabled
	TIM2->CCER |= TIM_CCER_CC4E; 						// output tim2_ch4 enable	
	TIM2->CR1 |= TIM_CR1_CEN; 							// start TIM2		
		
	// enable clock at the port B
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
	// PB11 alternate mode
	GPIOB->MODER &= ~(GPIO_MODER_MODER11);
	GPIOB->MODER |= (GPIO_MODER_MODER11_1);
	// set high speed for PB11
	GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR11_0 | GPIO_OSPEEDER_OSPEEDR11_1);
						
	// select alternate function for PB11 - TIM2_CH4
	GPIOB->AFR[1] &= ~(0xf << (11-8)*4); // reset field
	GPIOB->AFR[1] |= (0x1 << (11-8)*4);		
}

void adc_init()
{
	adc_common_init();
	
	adc1_init();
	adc2_init();
	adc3_init();
	
	adc_set_trigger();
	
	// 10110: Regular simultaneous mode only
	ADC->CCR &= ~ADC_CCR_MULTI;
	ADC->CCR |= (ADC_CCR_MULTI_1 | ADC_CCR_MULTI_2 | ADC_CCR_MULTI_4);	
		
	NVIC_EnableIRQ(ADC_IRQn);
}

void TIM2_IRQHandler(void)
{

}

