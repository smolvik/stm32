#include "system.h"
#include "uart.h"
#include "led.h"
#include "sim900.h"
#include "xprintf.h"

void sleep(uint32_t tms)
{ 
	uint32_t t = system_time;
	while(t+tms > system_time);
}

int main()
{
	char buf[128];
	uint32_t t;
	
	system_init();
	uart_init();
	led_init();		
	dbg_init();
			
	// sim900 on	
	system_PB5_on();
	sleep(1000);
	system_PB5_off();	
	led_off();		

	sim900_init();
	
	while(1)
	{
		if(sim900_please_die) {
			//break;
			sim900_please_die = 0;
			
			if(sim_reg) led_on();
			else led_off();
			
			sleep(1000);
		}
		if(sim900_ready) sim900_http_get();
		sim900_update();
	}

	sim900_command("AT+SAPBR=0,1\r");
	
	// sim900 off
	system_PB5_on();
	sleep(1000);
	system_PB5_off();		
	
	while(1)
	{
		sim900_please_die = 1;
	}
}		
