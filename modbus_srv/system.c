#include "stm32f4xx.h"

#define PLL_N 336
#define PLL_M 8
#define PLL_P 2
#define PLL_Q 7

#define SYS_TICKS	21000

volatile unsigned long system_time = 0;

void clock_PLL()
{
  RCC->CR |= RCC_CR_HSEON; // HSE on
  while(!(RCC->CR & RCC_CR_HSERDY)); // wait for HSE ready    
  
  RCC->CR &= ~RCC_CR_PLLON; // PLL off
  // reset all
  RCC->PLLCFGR &= ~(RCC_PLLCFGR_PLLN | RCC_PLLCFGR_PLLM |
                    RCC_PLLCFGR_PLLP | RCC_PLLCFGR_PLLQ );
  RCC->PLLCFGR |= (PLL_N << 6);                 // N 
  RCC->PLLCFGR |= PLL_M;                        // M 
  RCC->PLLCFGR |= ( ((PLL_P>>1)-1) << 16 );     // P 
  RCC->PLLCFGR |= (PLL_Q << 24);                // Q
  
  RCC->PLLCFGR |= RCC_PLLCFGR_PLLSRC; // PLL source is HSE
     
  RCC->CR |= RCC_CR_PLLON; // PLL on
  while(!(RCC->CR & RCC_CR_PLLRDY)); // wait for PLL ready
  
  // flash latency
  FLASH->ACR &= ~FLASH_ACR_LATENCY;
  FLASH->ACR |= (FLASH_ACR_LATENCY_5WS | FLASH_ACR_PRFTEN);
  //FLASH->ACR |= (FLASH_ACR_LATENCY_5WS);
  
  // dividers for AHB and APBx
  RCC->CFGR &= ~(RCC_CFGR_HPRE | RCC_CFGR_PPRE1 | RCC_CFGR_PPRE2); // reset fields
  RCC->CFGR |= (RCC_CFGR_HPRE_DIV1 | RCC_CFGR_PPRE1_DIV4 | RCC_CFGR_PPRE2_DIV2);
  
  // switch SYSCLK to PLL
  RCC->CFGR &= ~RCC_CFGR_SW;
  RCC->CFGR |= RCC_CFGR_SW_PLL;
  while(!(RCC->CFGR & RCC_CFGR_SWS_PLL));
  
  // Setting for pins
  
  // setting test pins for clock signals MCO1 and MCO2
  // enable clock at the port A and the port C
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOCEN; 
  // MCO1 PA8 alternate mode
  GPIOA->MODER &= ~(GPIO_MODER_MODER8);
  GPIOA->MODER |= GPIO_MODER_MODER8_1;  
  // MCO2 PC9 alternate mode
  GPIOC->MODER &= ~(GPIO_MODER_MODER9);
  GPIOC->MODER |= GPIO_MODER_MODER9_1;
  // set high speed for A C
  GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR8_0 | GPIO_OSPEEDER_OSPEEDR8_1);
  GPIOC->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR9_0 | GPIO_OSPEEDER_OSPEEDR9_1);  
  RCC->CFGR &= ~RCC_CFGR_MCO1;
  RCC->CFGR |= (RCC_CFGR_MCO1_0 | RCC_CFGR_MCO1_1); // MCO1 - PLL out  
  // MCO prescalers
  RCC->CFGR &= ~(RCC_CFGR_MCO2PRE | RCC_CFGR_MCO1PRE);
  RCC->CFGR |=  (RCC_CFGR_MCO2PRE_1 | RCC_CFGR_MCO2PRE_2 | RCC_CFGR_MCO1PRE_1 | RCC_CFGR_MCO1PRE_2);             	
    
}

void clock_HSE()
{
  // set clock from HSE
  RCC->CR |= RCC_CR_HSEON; // HSE on
  while(!(RCC->CR & RCC_CR_HSERDY)); // wait for HSE ready
  
  // HSE ready - switch SCLK to HSE
  RCC->CFGR &= ~RCC_CFGR_SW;
  RCC->CFGR |= RCC_CFGR_SW_0;
  while(!(RCC->CFGR & RCC_CFGR_SWS_0));
  
  // setting test pins for clock signals MCO1 and MCO2
  // enable clock at the port A and the port C
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOCEN;
  
  // MCO1 PA8 alternate mode
  GPIOA->MODER &= ~(GPIO_MODER_MODER8);
  GPIOA->MODER |= GPIO_MODER_MODER8_1;  
  // MCO2 PC9 alternate mode
  GPIOC->MODER &= ~(GPIO_MODER_MODER9);
  GPIOC->MODER |= GPIO_MODER_MODER9_1;
  // set high speed for A C
  GPIOA->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR8_0 | GPIO_OSPEEDER_OSPEEDR8_1);
  GPIOC->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR9_0 | GPIO_OSPEEDER_OSPEEDR9_1);
  
  RCC->CFGR &= ~RCC_CFGR_MCO1;
  RCC->CFGR |= RCC_CFGR_MCO1_1; // MCO1 - HSE out
  
  // MCO prescalers
  //RCC->CFGR &= ~(RCC_CFGR_MCO2PRE | RCC_CFGR_MCO1PRE);
  //RCC->CFGR |=  (RCC_CFGR_MCO2PRE_1 | RCC_CFGR_MCO2PRE_2 | RCC_CFGR_MCO1PRE_1 | RCC_CFGR_MCO1PRE_2);
}

void systimer_init()
{
  SysTick->LOAD  = (SYS_TICKS-1);      		   // set reload register 
  SysTick->VAL   = 0;                              // Load the SysTick Counter Value 
  SysTick->CTRL  = SysTick_CTRL_TICKINT_Msk |      // Enable SysTick IRQ and SysTick Timer 
                    SysTick_CTRL_ENABLE_Msk;       // freq for sync = freq cpu/8   
}

void system_init()
{
  clock_PLL();
  systimer_init();
  
  // sel test pin PA7
  // enable clock at the port A
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
  GPIOA->MODER &= ~(GPIO_MODER_MODER7);
  GPIOA->MODER |= GPIO_MODER_MODER7_0;

  // channels off control PE7-PE9
  // enable clock at the port E
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOEEN;
  // general purpose output mode
  GPIOE->MODER &= ~(GPIO_MODER_MODER7 | GPIO_MODER_MODER8 | GPIO_MODER_MODER9);
  GPIOE->MODER |= (GPIO_MODER_MODER7_0 | GPIO_MODER_MODER8_0 | GPIO_MODER_MODER9_0);
  
  // attenuator control PD0-PD7
  // enable clock at the port D
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
  // general purpose output mode
  GPIOD->MODER &= ~(GPIO_MODER_MODER0 | GPIO_MODER_MODER1 | GPIO_MODER_MODER2 | GPIO_MODER_MODER3 |
					GPIO_MODER_MODER4 | GPIO_MODER_MODER5 | GPIO_MODER_MODER6 | GPIO_MODER_MODER7);
  GPIOD->MODER |= (GPIO_MODER_MODER0_0 | GPIO_MODER_MODER1_0 | GPIO_MODER_MODER2_0 | GPIO_MODER_MODER3_0 |
				   GPIO_MODER_MODER4_0 | GPIO_MODER_MODER5_0 | GPIO_MODER_MODER6_0 | GPIO_MODER_MODER7_0);

	// NVIC priorities	
/*
	Only the group priority determines preemption of interrupt exceptions. When the processor
	is executing an interrupt exception handler, another interrupt with the same group priority as
	the interrupt being handled does not preempt the handler,
	If multiple pending interrupts have the same group priority, the subpriority field determines
	the order in which they are processed. If multiple pending interrupts have the same group
	priority and subpriority, the interrupt with the lowest IRQ number is processed first.	
*/
	
	NVIC_SetPriorityGrouping(0); 	// default value - 16 groups of 
									// priorities and 0 subpriorities
	
	NVIC_SetPriority(UART4_IRQn, 6);	// debug terminal
	NVIC_SetPriority(USART3_IRQn, 5);	// modbus
	
	NVIC_SetPriority(I2C1_EV_IRQn, 4);	// temp sensor
	NVIC_SetPriority(I2C1_ER_IRQn, 4);	
	
	NVIC_SetPriority(DMA1_Stream4_IRQn, 3);	// led indicator
	NVIC_SetPriority(SPI1_IRQn, 3);
	
	NVIC_SetPriority(TIM3_IRQn, 2);			// events monitor
	NVIC_SetPriority(SysTick_IRQn, 1);	
	NVIC_SetPriority(ADC_IRQn, 0);		// highest priority
	
	// watchdog timer
	IWDG->KR = 0x5555;
	IWDG->RLR = 10;		// reload value
	IWDG->KR = 0xcccc;  // start watchdog
}

void sleep(unsigned long ms)
{
  unsigned long t = system_time+ms;
  while(system_time < t);
}
  

void SysTick_Handler(void)
{
  system_time ++;
}
