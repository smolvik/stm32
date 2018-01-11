/**********************************************************************
 * 
 * stm32 usb realeses
 * the USB communications device class (CDC) 
 * and the Abstract Control Model subclass of CDC
 * supporting ACM subclass requests:
 * 
 * SET_LINE_CODING 		  0x20 	configures baud rate, stop-bits, parity,
 * 								and number-of-character bits
 * GET_LINE_CODING 		  0x21 	requests current DTE rate, stop-bits, 
 * 								parity, and	number-of-character bits
 * SET_CONTROL_LINE_STATE 0x22  RS232 signal used to tell the DCE device 
 * 							    the DTE device is now present
 * 
 * EP0 - IN/OUT standard requests, class requests 
 * EP1 - bulk IN used to send the data received from the UART to the PC through the USB
 * EP2 - Interrupt IN used to send state notification from device to host
 * EP3 - bulk OUT used to receive the data from the PC and send it through the UART
 * 
 *********************************************************************/
#include "stm32f10x.h"
#include "usb.h"
#include "uart.h"
#include "led.h"

void system_init (void)
{
	// enable HSE high speed external oscillator
	RCC->CR |= RCC_CR_HSEON;
	while (!(RCC->CR & RCC_CR_HSERDY)) {};
		
	// setting PLL
	RCC->CFGR &= ~((RCC_CFGR_PLLSRC|RCC_CFGR_PLLXTPRE|RCC_CFGR_PLLMULL));
	RCC->CFGR |= RCC_CFGR_PLLSRC_HSE;       // Тактировать PLL от HSE (8 MHz).
	RCC->CFGR |= RCC_CFGR_PLLMULL9;         // Умножать частоту на 9 (8*9=72 MHz).
	RCC->CFGR &= ~RCC_CFGR_USBPRE;			// USB Device prescaler 1.5 72*1.5 = 48 MHz
	
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
    RCC->APB1ENR |= RCC_APB1ENR_USBEN; 							// usb enable
    RCC->APB1ENR |= RCC_APB1ENR_USART2EN; 						// uart enable
    
	//enable clock on GPIOC peripheral
    RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;		

}

int main()
{
	char buf[128];
	
	system_init();
	uart_init();
	usb_init();
	usb_reset();
	led_init();
	
	uart_send_str("hello\r\n");
	uart_send_str("hello ");
	uart_send_str("from smolvik\r\n");	
	
	while(1)
	{
		usb_update();	
		
		if(USBDeviceState == CONFIGURED)
		{
			int nb;
			
			nb = usb_read(buf, 128);
			
/*			if(nb > 0){
				uart_send(buf, nb);
			}
			
			nb = uart_read(buf, 128);
*/
			if(nb > 0){
				usb_write(buf, nb);
			}			
		}
		else{

		}
	}
}		
