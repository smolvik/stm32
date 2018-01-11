#include "system.h"
#include "led.h"

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
	led_init();		
			
	
	while(1)
	{
		//sleep(1000);
		//led_off();
	}

}		
