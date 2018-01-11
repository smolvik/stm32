#include "stm32f4xx.h"

void offset_pwm_init()
{
	// enable TIM4
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN;
	
	// time base
	TIM4->PSC = 4 - 1;   // prescaller gets 21MHz
	TIM4->ARR = 100-1 ;  // TIM3 period 210kHz
	TIM4->CCR1 = 50;
	TIM4->CCR2 = 50;
	
	// pwm outputs		
	TIM4->CCMR1 = 0x00000000;
	
	TIM4->CCMR1 |= TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1PE |   
				   TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2PE;   //PWM mode 1 preload enabled
	TIM4->CCER |= TIM_CCER_CC1E | TIM_CCER_CC2E;							// output TIM4_CH1 TIM4_CH2 enable
	
	TIM4->CR1 |= TIM_CR1_CEN; 							// start TIM4
		
	// enable clock at the port D
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
	
	// PD12 PD13 alternate mode
	GPIOD->MODER &= ~(GPIO_MODER_MODER12 | GPIO_MODER_MODER13);
	GPIOD->MODER |= (GPIO_MODER_MODER12_1 | GPIO_MODER_MODER13_1);
	// set high speed for PD12 PD13
	GPIOD->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR12_0 | GPIO_OSPEEDER_OSPEEDR12_1 |
						GPIO_OSPEEDER_OSPEEDR13_0 | GPIO_OSPEEDER_OSPEEDR13_1);
	// select alternate function for PD12 - TIM4_CH1 AF2
	GPIOD->AFR[1] &= ~(0xf << (12-8)*4); // reset field
	GPIOD->AFR[1] |= (0x2 << (12-8)*4);
	
	// select alternate function for PD13 - TIM4_CH2 AF2
	GPIOD->AFR[1] &= ~(0xf << (13-8)*4); // reset field
	GPIOD->AFR[1] |= (0x2 << (13-8)*4);
}


void dac_init()
{
	// enable dac clock
	RCC->APB1ENR |= RCC_APB1ENR_DACEN;
	
    // Configure dac1 pins in analog mode PA4
	GPIOA->MODER &= ~(GPIO_MODER_MODER4);
	GPIOA->MODER |= (GPIO_MODER_MODER4_0 | GPIO_MODER_MODER4_1);
	
    // Configure dac2 pins in analog mode PA5
	GPIOA->MODER &= ~(GPIO_MODER_MODER5);
	GPIOA->MODER |= (GPIO_MODER_MODER5_0 | GPIO_MODER_MODER5_1);
	
	DAC->CR |= DAC_CR_EN1; // dac1 on
	DAC->CR |= DAC_CR_EN2; // dac2 on
	
	offset_pwm_init();
}

void dac_offset_set(uint16_t s)
{	
	TIM4->CCR1 = s;
}
