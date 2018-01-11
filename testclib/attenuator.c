#include "stm32f4xx.h"
#include "reg.h"

int32_t Katt = 0;

void update_attenuator()
{
	uint32_t v = 4095 - (uint32_t)ADC3->DR;
	(v < 1500) && (Katt++);
	(v > 4000) && (Katt--);
	(Katt > 10) && (Katt = 10);
	(Katt < 0) && (Katt = 0);
	
	uint16_t b = GPIOD->ODR & 0xff00;
	b |= 0xff & Katt;
	GPIOD->ODR = b;			
}

void set_attenuator(uint16_t k)
{
	uint16_t b = GPIOD->ODR & 0xff00;
	b |= 0xff & k;
	GPIOD->ODR = b;			
	Katt = k;	
}
