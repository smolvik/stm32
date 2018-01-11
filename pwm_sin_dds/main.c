/*******************************
 * stm32 pwm sin dds example
 *******************************/
#include "stm32f10x.h"
#include "cos_sin_tbl.h"

#define OSC_PERIOD 1024
volatile int freq = 20;

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
	
    RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;	    				   // TIM2 enable
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN); // PA enable		 
    RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;						   // PC enable
    
	// setting outputs for PWM out
	GPIOA->CRL = 0x00000000;
	GPIOA->CRL |= (GPIO_CRL_CNF0_1|GPIO_CRL_MODE0_0|GPIO_CRL_MODE0_1); // PA0 - push-pull 50MHz alter out	
	GPIOA->CRL |= (GPIO_CRL_MODE4_0|GPIO_CRL_MODE4_1); 				   // PA4 - push-pull 50MHz gpio out

	// TIM2
    // time base
	TIM2->PSC = 36/4 - 1; // prescaller
	TIM2->ARR = 4000 ;    // TIM2 period 1KHz
	TIM2->CCR1 = 1000;    // duty cicle on channel 1 50%

	// pwm outputs
	TIM2->CCMR1 = 0x00000000;
	TIM2->CCMR1 |= TIM_CCMR1_OC1M_1 | TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1PE; //PWM mode 1 channel 1 preload enabled		
	TIM2->CCER |= TIM_CCER_CC1E; 		// output enable			
	TIM2->DIER |= TIM_DIER_UIE;
	TIM2->CR1 |= TIM_CR1_CEN; 			// start TIM2
	
	NVIC_EnableIRQ(TIM2_IRQn); 			//Разрешение TIM2_IRQn прерывания 
	
}

int main()
{
	SystemInit();
	    
	GPIOA->ODR |= GPIO_ODR_ODR4;  
	GPIOA->ODR &= ~GPIO_ODR_ODR4;	
	
    while(1)
    {
		
    }
}

void TIM2_IRQHandler(void)
{
	static int phase = 0;
	
	TIM2->CCR1 = cos_table[phase >> 5]+2000;
	phase = (phase+freq)&( OSC_PERIOD-1 );
		
	TIM2->SR &= ~TIM_SR_UIF;
	GPIOA->ODR ^= GPIO_ODR_ODR4;  
}
