/*******************************
 * stm32 minimal example main.c
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
    
	RCC->CFGR |= RCC_CFGR_PPRE1_DIV2;		// APB1 clock = 72/2 = 36 MHz   
    
    // system clocking       
    RCC->CFGR &=~RCC_CFGR_SW;               // Очистить биты SW0, SW1.
	RCC->CFGR |= RCC_CFGR_SW_PLL;           // Тактирование с выхода PLL.
	while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL) {} // Ожидание переключения на PLL 
	
	 /* enable clock on GPIOC peripheral */
    RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;	
	
	/* set LED pin output mode */
    //GPIOC->CRL |= OUTPUT_MODE << ((LED_PIN) << 2); // if pins 0 to 7
    GPIOC->CRH |= OUTPUT_MODE << ((LED_PIN-8) << 2); // if pins 8 to 15 	
    
    // таймер TIM2
    RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;	// включаем тактирование TIM2 на шине
    
	TIM2->PSC = 36000 - 1; // Настраиваем делитель что таймер тикал 1000 раз в секунду
	TIM2->ARR = 3000 ; // Чтоб прерывание случалось раз в секунду 
	TIM2->CCR1 = 500;  // load compare1 
	
	TIM2->DIER |= TIM_DIER_UIE; //разрешаем прерывание от таймера 
	TIM2->DIER |= TIM_DIER_CC1IE;       // CC1 interrupt enable
	TIM2->CR1 |= TIM_CR1_CEN; // Начать отсчёт!
	NVIC_EnableIRQ(TIM2_IRQn); //Разрешение TIM2_IRQn прерывания 
	
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
