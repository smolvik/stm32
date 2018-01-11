/*******************************
 * stm32 uart irq example
 *******************************/
#include "stm32f10x.h"

#define BUF_SIZE 16

volatile char rx_buf[BUF_SIZE];
volatile int rx_idx = 0;
volatile int rx_rd_idx = 0;
volatile int rx_nrb = 0;

volatile char tx_buf[BUF_SIZE];
volatile int tx_idx = 0;
volatile int tx_wr_idx = 0;
volatile int tx_nrb = 0;

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
}

void uart_init()
{
	// uart setup
	USART2->CR1 |= USART_CR1_UE;	 // uart is on
	USART2->CR1 |= USART_CR1_RE;	 // uart rx is on	
	USART2->CR1 |= USART_CR1_RXNEIE; // Received data ready to be read interrupt enable
	USART2->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable
	NVIC_EnableIRQ(USART2_IRQn);     // 
	USART2->BRR = 0xea6; 			 // setup boderate 9600 bode for 36MHz mantissa=234 fract=6	
}

int uart_send(char *pb, int nb)
{
	int i;
	
	if(tx_wr_idx == tx_idx) {
		USART2->CR1 |= USART_CR1_TE;	// send idle frame
	}
	
	for( i = 0; i < nb; i++ ){
		tx_buf[tx_wr_idx] = pb[i];
		tx_wr_idx = (tx_wr_idx+1)&(BUF_SIZE-1);
		if(tx_wr_idx == tx_idx) {
			i++;
			break;
		}
	}	
	
	USART2->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable
	return i;	
}

int main()
{
	int i = 0;
	
	system_init();
	    
	GPIOA->ODR |= GPIO_ODR_ODR4;  
	GPIOA->ODR &= ~GPIO_ODR_ODR4;	
	
	uart_send("hello\r\n", 7);
	
    while(1)
    {
		if(rx_nrb){
			char buf[BUF_SIZE];
			int n;
			
			n = uart_read(buf, rx_nrb);
			uart_send(buf, n);
			rx_nrb = 0;
		}

    }

}

int uart_read(char *pb, int nb)
{
	int i;
	
	if(rx_rd_idx == rx_idx) return 0;
	
	for( i = 0; i < nb; i++ ){
		pb[i] = rx_buf[rx_rd_idx];
		rx_rd_idx = (rx_rd_idx+1)&(BUF_SIZE-1);
		if(rx_rd_idx == rx_idx) {
			i++;
			break;
		}
	}	
	return i;
}

void USART2_IRQHandler()
{
	if(USART2->SR & USART_SR_RXNE)
	{
		rx_buf[rx_idx] = USART2->DR;
		rx_idx = (rx_idx+1)&(BUF_SIZE-1);	
		rx_nrb = (rx_idx - rx_rd_idx) & (BUF_SIZE-1); 
	}
	if(USART2->SR & USART_SR_TXE)
	{
		if(tx_idx == tx_wr_idx)
		{
			// no data for transfer
			USART2->CR1 &= ~USART_CR1_TXEIE; 
		}
		else
		{
			// transfer next byte from the buffer
			USART2->DR = tx_buf[tx_idx];
			tx_idx = (tx_idx+1)&(BUF_SIZE-1);	
		}
	}
}
