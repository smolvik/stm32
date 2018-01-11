/*******************************
 * stm32 uart dma example
 *******************************/
#include "stm32f10x.h"

#define BUF_SIZE 16

volatile char rx_buf[BUF_SIZE];

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
    RCC->AHBENR |= RCC_AHBENR_DMA1EN;							// DMA1 enable
    
	gpio_init();
	uart_init();
}

void gpio_init()
{
	// setting outputs for uart
	GPIOA->CRL &= ~(GPIO_CRL_CNF2|GPIO_CRL_MODE2);
	GPIOA->CRL |= (GPIO_CRL_CNF2_1|GPIO_CRL_MODE2_0|GPIO_CRL_MODE2_1); // PA2 - push-pull 50MHz alter out
}

void uart_init()
{
	// uart setup
	USART2->CR1 |= USART_CR1_UE;	 // uart is on
	USART2->CR1 |= USART_CR1_RE;	 // uart rx is on	
	USART2->BRR = 0xea6; 			 // setup boderate 9600 bode for 36MHz mantissa=234 fract=6	
			
	// dma for uart RX
	USART2->CR3 |= USART_CR3_DMAR;
	// Set the peripheral register address in the DMA_CPARx register. The data will be
	// moved from/ to this address to/ from the memory after the peripheral event.
	DMA1_Channel6->CPAR = (uint32_t)&(USART2->DR);
	// Set the memory address in the DMA_CMARx register. The data will be written to or
	// read from this memory after the peripheral event.
	DMA1_Channel6->CMAR = (uint32_t)rx_buf;
	// Configure the total number of data to be transferred in the DMA_CNDTRx register.
	// After each peripheral event, this value will be decremented.
	DMA1_Channel6->CNDTR = BUF_SIZE;	
	
	DMA1_Channel6->CCR |= DMA_CCR6_MINC;	// memory increment enable
	DMA1_Channel6->CCR |= DMA_CCR6_EN;		// dma enable
	
	// DMA for TX
	USART2->CR3 |= USART_CR3_DMAT;
	
	DMA1_Channel7->CCR |= DMA_CCR7_MINC;	// memory increment enable
	DMA1_Channel7->CCR |= DMA_CCR7_DIR;		// read from memory
}

int uart_dma_send(char *pb, int n)
{
	DMA1_Channel7->CPAR = (uint32_t)&(USART2->DR);
	DMA1_Channel7->CMAR = (uint32_t)pb;
	DMA1_Channel7->CNDTR = n;
	
	DMA1_Channel7->CCR |= DMA_CCR7_EN;		 // enable DMA
	
	USART2->CR1 |= USART_CR1_TE;			 // send idle frame
	
	while(!(DMA1->ISR & DMA_ISR_TCIF7)); 	 // wait for dma complete
	DMA1->IFCR |= DMA_IFCR_CTCIF7;		
	DMA1_Channel7->CCR &= ~DMA_CCR7_EN;		 // disable DMA
	
	while(!(USART2->SR & USART_SR_TC));		 // wait for complete last frame trans			
}

int main()
{
	system_init();
	    	
	uart_dma_send("hello\r\n", 7);

    while(1)
    {
		if(DMA1->ISR & DMA_ISR_TCIF6){
			// DMA transfer has completed
			DMA1->IFCR |= DMA_IFCR_CTCIF6;
			
			// In order to reload a new number of data items to be 
			// transferred into the DMA_CNDTRx register, the
			// DMA channel must be disabled.	
			DMA1_Channel6->CCR &= ~DMA_CCR6_EN;		// disable DMA
			DMA1_Channel6->CNDTR = BUF_SIZE;		// set new size
			DMA1_Channel6->CCR |= DMA_CCR6_EN;		// enable DMA again
			
			uart_dma_send((char*)rx_buf, BUF_SIZE);
		}
		
    }
}
