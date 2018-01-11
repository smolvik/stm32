/*******************************
 * stm32 minimal example main.c
 *******************************/
#include "stm32f10x.h"

/* LED connected to PIN 13 of GPIOC */
#define LED_PIN         13
// output mode: push-pull + 50MHz
#define OUTPUT_MODE     (0x03) 
#define SYS_TICKS	9000000

void SystemInit (void)
{
	/* Enable HSE */
	RCC->CR |= RCC_CR_HSEON;
	while (!(RCC->CR & RCC_CR_HSERDY)) {};
		
	// setting PA8 for MCO	
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN);
	GPIOA->CRH &= ~0x0f;
	GPIOA->CRH |= (0x08|0x03);
	RCC->CFGR &= ~RCC_CFGR_MCO; 
	//RCC_CFGR |= RCC_CFGR_MCO_SYSCLK;
	//RCC->CFGR |= RCC_CFGR_MCO_PLLCLK_Div2; 
	
	// setting PLL
	RCC->CFGR &= ~((RCC_CFGR_PLLSRC|RCC_CFGR_PLLXTPRE|RCC_CFGR_PLLMULL));
	RCC->CFGR |= RCC_CFGR_PLLSRC_HSE; // Тактировать PLL от HSE (8 MHz).
	RCC->CFGR |= RCC_CFGR_PLLMULL9; // Умножать частоту на 9 (8*9=72 MHz).
	RCC->CR |= RCC_CR_PLLON; // Запустить PLL.
	while ((RCC->CR & RCC_CR_PLLRDY)==0) {} // Ожидание готовности PLL.

	FLASH->ACR |= FLASH_ACR_PRFTBE; // Enable Prefetch Buffer.
	FLASH->ACR &= ~FLASH_ACR_LATENCY; // Предочистка.
    FLASH->ACR |= FLASH_ACR_LATENCY_2; // Если 48< SystemCoreClock <= 72, пропускать 2 такта.	
    
    // switch system clocking 
    RCC->CFGR &=~RCC_CFGR_SW; // Очистить биты SW0, SW1.
	RCC->CFGR |= RCC_CFGR_SW_PLL; // Тактирование с выхода PLL.
	while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL) {} // Ожидание переключения на PLL 
	
	 /* enable clock on GPIOC peripheral */
    RCC->APB2ENR |= 0x10;

	// set sys tick timer 
	// using macros ...
	//SysTick_Config(SYS_TICKS);	
	
	// or manually ...
	SysTick->LOAD  = (SYS_TICKS-1);      		   // set reload register 
	SysTick->VAL   = 0;                            // Load the SysTick Counter Value 
	SysTick->CTRL  = SysTick_CTRL_TICKINT_Msk |    // Enable SysTick IRQ and SysTick Timer 
                     SysTick_CTRL_ENABLE_Msk;      // freq for sync = freq cpu/8 

	
	/* set LED pin output mode */
    //GPIOC->CRL |= OUTPUT_MODE << ((LED_PIN) << 2); // if pins 0 to 7
    GPIOC->CRH |= OUTPUT_MODE << ((LED_PIN-8) << 2); // if pins 8 to 15 	
}

int main()
{
	volatile uint32_t x = NonMaskableInt_IRQn;
	SystemInit();
	    
    while(1)
    {
    }
}

void SysTick_Handler(void)
{
	GPIOC->ODR ^= (1<<LED_PIN);  // toggle LED pin 
}
