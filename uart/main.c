/*******************************
 * stm32 uart example
 *******************************/
#include "stm32f10x.h"
#include "cos_sin_tbl.h"

#define BUF_SIZE 128
#define OSC_PERIOD 1024
volatile int freq = 20;

void gpio_init();
void uart_init();

void system_init (void)
{
	// enable HSE high speed external oscillator
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
	
	RCC->APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN);  // PA enable		 
    RCC->APB1ENR |= RCC_APB1ENR_USART2EN; 						// uart enable
    
	gpio_init();
	uart_init();
}

void gpio_init()
{
	// setting outputs for uart
	GPIOA->CRL &= ~(GPIO_CRL_CNF2|GPIO_CRL_MODE2);
	GPIOA->CRL |= (GPIO_CRL_CNF2_1|GPIO_CRL_MODE2_0|GPIO_CRL_MODE2_1); // PA2 - push-pull 50MHz alter out
	//GPIOA->CRL |= (GPIO_CRL_CNF3_1|GPIO_CRL_MODE3_0|GPIO_CRL_MODE3_1); // PA3 - push-pull 50MHz alter out	
}

void uart_init()
{
	// uart setup
	USART2->CR1 |= USART_CR1_UE;	 // uart is on
	USART2->CR1 |= USART_CR1_RE;	 // uart rx is on	
	USART2->BRR = 0xea6; 			 // setup boderate 9600 bode for 36MHz mantissa=234 fract=6	
}

int uart_send(char *pb, int n)
{
	int i;
	
	USART2->CR1 |= USART_CR1_TE;	// send idle frame
	for(i = 0; i < n; i++){
		USART2->DR = pb[i];
		while(!(USART2->SR & USART_SR_TXE)); // wait for empting tx buff
	}
	
	while(!(USART2->SR & USART_SR_TC));		 // wait for complete last frame trans
}

int main()
{
	int i = 0;
	char buf[BUF_SIZE];
	system_init();
	    
	GPIOA->ODR |= GPIO_ODR_ODR4;  
	GPIOA->ODR &= ~GPIO_ODR_ODR4;	
	
	uart_send("hello\r\n", 7);

    while(1)
    {
		if(USART2->SR & USART_SR_RXNE){
			char b = USART2->DR;
			
			while(!(USART2->SR & USART_SR_TXE)); // wait for empting tx buff
			USART2->DR = b;			
		}
    }
}
