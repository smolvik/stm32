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

#define SYS_TICKS	9000 // 1ms

void sleep(uint32_t tms)
{ 
	uint32_t t = system_time;
	while(t+tms > system_time);
}

int main()
{
	char buf[128];
	uint8_t s = 0;
	int i = 0;
	
	system_init();
	uart_init();
	led_init();
	
	xdev_out(uart_putch);
	
	xprintf("hello\r\n");
	
	led_set(0x00e0);
	
	while(1)
	{
		sleep(100);
		xprintf("                 \r");
		xprintf("counter=%u\r", i++);
	}
}		
