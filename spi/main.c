/**********************************************************************
 * 
 * stm32 debuging
 * 
 * 
 *********************************************************************/
#include "stm32f10x.h"
#include "uart.h"
#include "led.h"
#include "xprintf.h"
#include "system.h"
#include "spi.h"

extern uint32_t spi_rx_ready;
extern uint8_t spi_rx_byte;

//#define IAMMASTER

#define SYS_TICKS	9000 // 1ms

void sleep(uint32_t tms)
{ 
	uint32_t t = system_time;
	while(t+tms > system_time);
}

int main()
{
	char rxbuf[8];
	char txbuf[8] = {0x12, 0x34, 0x56, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa};
	uint8_t s = 0;
	int i = 0;
	
	system_init();
	uart_init();
	led_init();		
	xdev_out(uart_putch);
	
#ifdef IAMMASTER		

	xprintf("hello from master\r\n");
	spi_master_init();
	
	GPIOA->ODR &= ~GPIO_ODR_ODR4;	// nss gets low
	spi_write_read(txbuf, rxbuf, 3);
	GPIOA->ODR |= GPIO_ODR_ODR4;	// nss gets high
	for(i = 0; i < 3; i++){
		xprintf("%x\n", rxbuf[i]);
	}

#else

	xprintf("hello from slave\r\n");			
	spi_slave_init(); 	
	/*
	while(1){
		spi_write_read(txbuf, rxbuf, 3);
		for(i = 0; i < 3; i++){
			xprintf("%x\n", rxbuf[i]);
		}	
	}
	*/
	
	while(1)
	{
		if(spi_rx_ready)
		{
			spi_rx_ready = 0;
			xprintf("%x\n", spi_rx_byte);
		}
	}
	
#endif	

	for(;;);
}		
