#include "stm32f10x.h"
#include "usb_regs.h"
#include "usb_control.h"
#include "usb_mem.h"
#include "usb_def.h"
#include "usb_conf.h"
#include "uart.h"
#include "led.h"

/*
uint8_t  test_message[VIRTUAL_COM_PORT_DATA_SIZE];	
uint32_t test_message_len = 0;
uint32_t test_message_fsent = 0;
*/

void usb_init()
{
	int i;
	
	/*
	setting for and PA12 - D+ and PA11 - D- respectevly
    As soon as the USB is enabled, these pins are connected to the USB
	internal transceiver automatically.
	*/
		
	// setting outputs for usb D+ pullup - PA10
/*	
	GPIOA->CRH &= ~(GPIO_CRH_CNF10|GPIO_CRH_MODE10);
	GPIOA->CRH |= GPIO_CRH_CNF10_0;			// PA10 - floating input
*/	
	
	GPIOA->CRH &= ~(GPIO_CRH_CNF10|GPIO_CRH_MODE10);
	GPIOA->CRH |= (GPIO_CRH_MODE10_1); 		// PA10 - push-pull 2 MHz out
	GPIOA->ODR &= ~GPIO_ODR_ODR10;			// pullup D+
	
	// upon start bits pdwn and fres is set
	// first clear pdwn - for power on usb macrocell
	// wait for the settle then clear fres - it removes reset condition
	*CNTR &= ~CNTR_PDWN; 					// USB transceiver is switched on
	for(i = 0; i < 500; i++){} 				// wait > 1us for settle USB
	
	*CNTR &= ~CNTR_FRES;			 		// removing the reset condition
	// Enable interrupts: correct transfer, buffer error, any error, bus reset, interrupt on SOF
	*CNTR |= CNTR_CTRM | CNTR_RESETM | CNTR_ESOFM | CNTR_DOVRM | CNTR_ERRM;
	// Clear possible spurious interrupts
	*ISTR = 0;
	
	USBDeviceState = UNCONNECTED;
	
	//NVIC_EnableIRQ(USB_LP_CAN1_RX0_IRQn); // enable interrupt for usb events			
}

/*
void ep3_out_proc()
{
	int bc;
	test_message_len = 0;
		
	bc = _GetEPRxCount(ENDP3); // num rx bytes
	
	if(bc <= VIRTUAL_COM_PORT_DATA_SIZE)
	{
		pma_to_user_copy(test_message, EP3_RX_ADDRESS, bc);
		test_message_len = bc;		
		test_message_fsent = 1;	
	}

	// enable next out transaction
	_SetEPRxStatus(ENDP3, EP_RX_VALID);					
}
*/

int usb_read(uint8_t *pb, uint32_t nb)
{
	int i, nr, bc;
	
	bc = _GetEPRxCount(ENDP3); // num rx bytes
	
	if(bc == 0) return 0;
	
	nr = (nb < bc) ? nb : bc;
	pma_to_user_copy(pb, EP3_RX_ADDRESS, nr);
	
	// clear rx counter
	(*_pEPRxCount(ENDP3)) &=  ~0x3ff;
	// enable next out transaction
	_SetEPRxStatus(ENDP3, EP_RX_VALID);						
	
	return nr;		
}

int usb_write(uint8_t *pb, uint32_t nb)
{
	int nr;
	
	if(_GetEPTxStatus(ENDP1) == EP_TX_VALID){
		// usb tx is busie
		return 0;
	}
	
	nr = (nb < VIRTUAL_COM_PORT_DATA_SIZE) ? nb : VIRTUAL_COM_PORT_DATA_SIZE;
	user_to_pma_copy(pb, EP1_TX_ADDRESS, nr);
	_SetEPTxCount(ENDP1, nr);
	_SetEPTxStatus(ENDP1, EP_TX_VALID);		

	return nr;
}

/*
void plan_message_to_host(void)
{
	user_to_pma_copy(test_message, EP1_TX_ADDRESS, test_message_len);
	_SetEPTxCount(ENDP1, test_message_len);
	_SetEPTxStatus(ENDP1, EP_TX_VALID);	
}
*/

void plan_notification_to_host(void)
{
	uint8_t serial_state[10] = {0xa1, 0x20, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00};
	
	// copy notification message
	_SetEPTxCount(ENDP2, 10);
	user_to_pma_copy(serial_state, EP2_TX_ADDRESS, 10);
	_SetEPTxStatus(ENDP2, EP_TX_VALID);			
}

void usb_update()
{
	__IO uint16_t wEPVal = 0;	
	__IO uint16_t wIstr = 0;
	__IO uint8_t EPindex = 0;

	wIstr = _GetISTR();	
	
	if (wIstr & ISTR_RESET)
	{
		_SetISTR((uint16_t)CLR_RESET);
		usb_reset();
		dbg_msg("RESET\r\n");
	}		
	
	if (wIstr & ISTR_SUSP)
	{
		_SetISTR((uint16_t)CLR_SUSP);
		led_off();
	}	
	
	if (wIstr & ISTR_DOVR)
	{
		_SetISTR((uint16_t)CLR_DOVR);
	}
		
	if (wIstr & ISTR_ERR)
	{
		_SetISTR((uint16_t)CLR_ERR);
	}	

	if (wIstr & ISTR_CTR)
	{
		//  extract endpoint number
		EPindex = (uint8_t)(wIstr & ISTR_EP_ID);			
		if (EPindex == 0)
		{
			uint16_t wEPVal = _GetENDPOINT(ENDP0);		
						
			// DIR bit = origin of the interrupt

			if ((wIstr & ISTR_DIR) == 0)
			{
				// DIR = 0 
				// DIR = 0      => IN  int 
				// DIR = 0 implies that (EP_CTR_TX = 1) always  
				_ClearEP_CTR_TX(ENDP0);			
				dbg_msg("ep0:in\r\n");
				(*input0_proc)();				
			}
			else
			{
				// DIR = 1 
				// DIR = 1 & CTR_RX       => SETUP or OUT int
				// DIR = 1 & (CTR_TX | CTR_RX) => 2 int pending
									
				if(wEPVal & EP_SETUP)
				{   
					// SETUP bit kept frozen while CTR_RX = 1
					_ClearEP_CTR_RX(ENDP0);			
					dbg_msg("ep0:setup:");
					setup0_proc();							
				}
				else if(wEPVal & EP_CTR_RX)
				{
					_ClearEP_CTR_RX(ENDP0);
					dbg_msg("ep0:out\r\n");
					(*output0_proc)();					
				}									
			}				
		}   
		else
		{
			// Decode and service non control endpoints interrupt
			// process related endpoint register
			wEPVal = _GetENDPOINT(EPindex);
			if ((wEPVal & EP_CTR_RX) != 0)
			{
				// clear int flag
				_ClearEP_CTR_RX(EPindex);
				
				// call OUT service function
				if (EPindex == 3)
				{
					//ep3_out_proc();
					dbg_msg("ep3:out\r\n");
				}				
	
			} 

			if ((wEPVal & EP_CTR_TX) != 0)
			{
				// clear int flag 
				_ClearEP_CTR_TX(EPindex);
				
				// call IN service function
				if (EPindex == 1)
				{					
					// send one more data to host
					//plan_message_to_host();							
					dbg_msg("ep1:in\r\n");
				}								
				if (EPindex == 2)
				{
					//plan_notification_to_host();	
					dbg_msg("ep2:in\r\n");
				}
			}
		}
	}
}
