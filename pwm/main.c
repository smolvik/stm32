/*******************************
 * stm32 pwm example main.c
 *******************************/
#include "stm32f10x.h"
 
/* LED connected to PIN 13 of GPIOC */
#define LED_PIN         13
// output mode: push-pull + 50MHz
#define OUTPUT_MODE     (0x03) 
#define SYS_TICKS	9000000

volatile int  test_data_x = 1023;
volatile int  test_data_y = 1024;
volatile int  test_data_z = 1025;
volatile int  test_bss;

void SystemInit (void)
{
	/* Enable HSE */
	RCC->CR |= RCC_CR_HSEON;
	while (!(RCC->CR & RCC_CR_HSERDY)) {};
		
	// setting PLL
	RCC->CFGR &= ~((RCC_CFGR_PLLSRC|RCC_CFGR_PLLXTPRE|RCC_CFGR_PLLMULL));
	RCC->CFGR |= RCC_CFGR_PLLSRC_HSE;       // Тактировать PLL от HSE (8 MHz).
	RCC->CFGR |= RCC_CFGR_PLLMULL9;         // Умножать частоту на 9 (8*9=72 MHz).
	RCC->CR |= RCC_CR_PLLON;                // Запустить PLL.
	while ((RCC->CR & RCC_CR_PLLRDY)==0) {} // Ожидание готовности PLL.

	FLASH->ACR |= FLASH_ACR_PRFTBE;         // Enable Prefetch Buffer.
	FLASH->ACR &= ~FLASH_ACR_LATENCY;       // Предочистка.
    FLASH->ACR |= FLASH_ACR_LATENCY_2;      // Если 48< SystemCoreClock <= 72, пропускать 2 такта.	
    
	RCC->CFGR |= RCC_CFGR_PPRE1_DIV4;		// APB1 clock = 72/2 = 36 MHz   
	    
    // system clocking       
    RCC->CFGR &=~RCC_CFGR_SW;               // Очистить биты SW0, SW1.
	RCC->CFGR |= RCC_CFGR_SW_PLL;           // Тактирование с выхода PLL.
	while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL) {} // Ожидание переключения на PLL 
	
    RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;	    // TIM2 enable
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN); // PA enable	

	// setting outputs for PWM out
	GPIOA->CRL = 0x00000000;
	GPIOA->CRL |= (GPIO_CRL_CNF0_1|GPIO_CRL_MODE0_0|GPIO_CRL_MODE0_1); // PA0 - push-pull 50MHz alter out
	GPIOA->CRL |= (GPIO_CRL_CNF1_1|GPIO_CRL_MODE1_0|GPIO_CRL_MODE1_1); // PA1 - push-pull 50MHz alter out
	GPIOA->CRL |= (GPIO_CRL_CNF2_1|GPIO_CRL_MODE2_0|GPIO_CRL_MODE2_1); // PA2 - push-pull 50MHz alter out
	GPIOA->CRL |= (GPIO_CRL_CNF3_1|GPIO_CRL_MODE3_0|GPIO_CRL_MODE3_1); // PA3 - push-pull 50MHz alter out

	// TIM2
    // time base
	TIM2->PSC = 36 - 1; // prescaller gets 1MHz
	TIM2->ARR = 1000 ;  // TIM2 period 1KHz
	TIM2->CCR1 = 500;   // duty cicle on channel 1 50%
	TIM2->CCR2 = 300;   // duty cicle on channel 2 30%
	TIM2->CCR3 = 100;   // duty cicle on channel 3 10%
	TIM2->CCR4 = 50;    // duty cicle on channel 4 5%
	
	// pwm outputs
	TIM2->CCMR1 = 0x00000000;
	TIM2->CCMR1 |= TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1PE; //PWM mode 1 channel 1 preload enabled
	TIM2->CCMR1 |= TIM_CCMR1_OC2M_1 | TIM_CCMR1_OC2M_2 | TIM_CCMR1_OC2PE; //PWM mode 1 channel 2 preload enabled
	TIM2->CCMR2 |= TIM_CCMR2_OC3M_1 | TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3PE; //PWM mode 1 channel 3 preload enabled
	TIM2->CCMR2 |= TIM_CCMR2_OC4M_1 | TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4PE; //PWM mode 1 channel 4 preload enabled	
		
	TIM2->CCER |= TIM_CCER_CC1E; 						// output enable
	TIM2->CCER |= TIM_CCER_CC2E; 						// output enable
	TIM2->CCER |= TIM_CCER_CC3E; 						// output enable
	TIM2->CCER |= TIM_CCER_CC4E; 						// output enable
	
	//TIM2->CCER |= TIM_CCER_CC4P; 						// output polarity
	
	TIM2->CR1 |= TIM_CR1_CEN; 							// start TIM2
	
	/*
	TIM2->DIER |= TIM_DIER_UIE; //разрешаем прерывание от таймера 
	TIM2->DIER |= TIM_DIER_CC1IE;       // CC1 interrupt enable
	TIM2->CR1 |= TIM_CR1_CEN; // Начать отсчёт!
	NVIC_EnableIRQ(TIM2_IRQn); //Разрешение TIM2_IRQn прерывания 
	*/
	
	
}

int main()
{
	SystemInit();
	    
    while(1)
    {
    }
}

void TIM2_IRQHandler(void)
{
	if(TIM2->SR & TIM_SR_UIF){
		TIM2->SR &= ~TIM_SR_UIF; //Сбрасываем флаг UIF
		GPIOC->ODR &= ~(1<<LED_PIN);  // clear LED pin		
	}
	
	if(TIM2->SR & TIM_SR_CC1IF){
		TIM2->SR &= ~TIM_SR_CC1IF; //Сбрасываем флаг UIF
		GPIOC->ODR |= (1<<LED_PIN);  // set LED pin
	}	
}
