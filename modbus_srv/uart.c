#include "stm32f4xx.h"

#define BUF_SIZE 1024
#define DIV_MANT 22
#define DIV_FRACT 13

char tx_buf[BUF_SIZE];
int  tx_idx = 0;
int  tx_wr_idx = 0;

char rx_buf[BUF_SIZE];
int  rx_idx = 0;
int  rx_rd_idx = 0;

void uart_init()
{
	RCC->APB1ENR |= RCC_APB1ENR_UART4EN;
	
	// uart setup
	UART4->CR1 |= USART_CR1_UE;	 // uart is on
	UART4->CR1 |= USART_CR1_RE;	 // uart rx is on	

	UART4->CR1 |= USART_CR1_RXNEIE; // Received data ready to be read interrupt enable
	UART4->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable
	NVIC_EnableIRQ(UART4_IRQn);
	
	UART4->BRR &= ~0xffff;
	UART4->BRR |= (DIV_FRACT | (DIV_MANT << 4));	

  // enable clock at the port C
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
  // PC10 PC11 alternate mode
  GPIOC->MODER &= ~(GPIO_MODER_MODER10 | GPIO_MODER_MODER11);
  GPIOC->MODER |= (GPIO_MODER_MODER10_1 | GPIO_MODER_MODER11_1);
  // set high speed for PC10 PC11
  GPIOC->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR10_0 | GPIO_OSPEEDER_OSPEEDR10_1 |
						GPIO_OSPEEDER_OSPEEDR11_0 | GPIO_OSPEEDER_OSPEEDR11_1);
  // select properly alternate function for PC10-UART4_TX PC11-UART4_RX AF8
  GPIOC->AFR[1] &= ~(0xf << (10-8)*4);
  GPIOC->AFR[1] |= (0x8 << (10-8)*4);
  GPIOC->AFR[1] &= ~(0xf << (11-8)*4);
  GPIOC->AFR[1] |= (0x8 << (11-8)*4);
}

void uart_putch(unsigned char b)
{
	if(tx_wr_idx == tx_idx) {
		UART4->CR1 |= USART_CR1_TE;	// send idle frame
	}
	
	tx_buf[tx_wr_idx] = b;
	tx_wr_idx = (tx_wr_idx+1)&(BUF_SIZE-1);
	
	UART4->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable	
}

int uart_send(char *pb, int nb)
{
	int i;
	
	if(tx_wr_idx == tx_idx) {
		UART4->CR1 |= USART_CR1_TE;	// send idle frame
	}
	
	for( i = 0; i < nb; i++ ){
		tx_buf[tx_wr_idx] = pb[i];
		tx_wr_idx = (tx_wr_idx+1)&(BUF_SIZE-1);
		if(tx_wr_idx == tx_idx) {
			i++;
			break;
		}
	}	
	
	UART4->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable
	return i;	
}

int uart_send_str(char *pb)
{
	int i;
	int sz = BUF_SIZE;
	
	sz -= (tx_wr_idx - tx_idx)&(BUF_SIZE-1);
	
	if(tx_wr_idx == tx_idx) {
		UART4->CR1 |= USART_CR1_TE;	// send idle frame
	}
	
	for( i = 0; i < sz; i++ ){
		if(pb[i] == 0){
			i++;
			break;
		}
		tx_buf[tx_wr_idx] = pb[i];
		tx_wr_idx = (tx_wr_idx+1)&(BUF_SIZE-1);
	}	
	
	UART4->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable
	return i;	
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

void UART4_IRQHandler()
{
	if(UART4->SR & USART_SR_TXE)
	{
		if(tx_idx == tx_wr_idx)
		{
			// no data for transfer - interrupt disable
			UART4->CR1 &= ~USART_CR1_TXEIE; 
		}
		else
		{
			// transfer next byte from the buffer
			UART4->DR = tx_buf[tx_idx];
			tx_idx = (tx_idx+1)&(BUF_SIZE-1);	
		}
	}
	
	if(UART4->SR & USART_SR_RXNE)
	{
		rx_buf[rx_idx] = UART4->DR;
		rx_idx = (rx_idx+1)&(BUF_SIZE-1);	
	}
	
}
