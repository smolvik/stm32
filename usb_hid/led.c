#include "stm32f10x.h"

// LED connected to PIN 13 of GPIOC
#define LED_PIN         13
// output mode: push-pull + 50MHz
#define OUTPUT_MODE     (0x03) 

void led_init()
{
	// set LED pin output mode
    GPIOC->CRH |= OUTPUT_MODE << ((LED_PIN-8) << 2); // if pins 8 to 15 	    
    GPIOB->CRL &= ~0xfff00000;
    GPIOB->CRL |= (OUTPUT_MODE << (5 << 2)) | (OUTPUT_MODE << (6 << 2)) | (OUTPUT_MODE << (7 << 2));
}

void led_set(uint16_t s)
{
	s &= 0x00e0;
	GPIOB->ODR &= ~0x00e0; 
	GPIOB->ODR |= s; 	
}

void led_on()
{
	GPIOC->ODR &= ~(1<<LED_PIN); // set LED on
}

void led_off()
{
	GPIOC->ODR |= (1<<LED_PIN);  // set LED off
}

