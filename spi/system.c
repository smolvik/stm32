#include "stm32f10x.h"

#define SYS_TICKS	9000 // 1ms

uint32_t system_time = 0;

void system_init (void)
{
	// enable HSE high speed external oscillator
	RCC->CR |= RCC_CR_HSEON;
	while (!(RCC->CR & RCC_CR_HSERDY)) {};
		
	// setting PLL
	RCC->CFGR &= ~((RCC_CFGR_PLLSRC|RCC_CFGR_PLLXTPRE|RCC_CFGR_PLLMULL));
	RCC->CFGR |= RCC_CFGR_PLLSRC_HSE;       // Тактировать PLL от HSE (8 MHz).
	RCC->CFGR |= RCC_CFGR_PLLMULL9;         // Умножать частоту на 9 (8*9=72 MHz).
	RCC->CFGR &= ~RCC_CFGR_USBPRE;			// USB Device prescaler 1.5 72*1.5 = 48 MHz
	
	RCC->CR |= RCC_CR_PLLON;                // Запустить PLL.
	while ((RCC->CR & RCC_CR_PLLRDY)==0) {} // Ожидание готовности PLL.

	FLASH->ACR |= FLASH_ACR_PRFTBE;         // Enable Prefetch Buffer.
	FLASH->ACR &= ~FLASH_ACR_LATENCY;       // Предочистка.
    FLASH->ACR |= FLASH_ACR_LATENCY_2;      // Если 48< SystemCoreClock <= 72, пропускать 2 такта.	
    
	RCC->CFGR |= RCC_CFGR_PPRE1_DIV2;		// APB1 clock = 72/2 = 36 MHz   
	    
    // system clocking       
    RCC->CFGR &=~RCC_CFGR_SW;               // Очистить биты SW0, SW1.
	RCC->CFGR |= RCC_CFGR_SW_PLL;           // Тактирование с выхода PLL.
	while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL) {} // Ожидание переключения на PLL 
	
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN);  // PA enable and AF enable on APB2		 
    RCC->APB2ENR |= (RCC_APB2ENR_IOPCEN | RCC_APB2ENR_IOPBEN); 	// enable clock on GPIOC and GPIOB peripheral
    RCC->APB2ENR |= RCC_APB2ENR_SPI1EN; 						// spi1 enable
    
    
    RCC->APB1ENR |= RCC_APB1ENR_USART2EN; 						// uart2 enable       

    
	// set sys tick timer
	SysTick->LOAD  = (SYS_TICKS-1);      		   // set reload register 
	SysTick->VAL   = 0;                            // Load the SysTick Counter Value 
	SysTick->CTRL  = SysTick_CTRL_TICKINT_Msk |    // Enable SysTick IRQ and SysTick Timer 
                     SysTick_CTRL_ENABLE_Msk;      // freq for sync = freq cpu/8    

	
}

void SysTick_Handler(void)
{
	// every 1 ms
	system_time ++;
}
