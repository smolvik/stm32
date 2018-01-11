#include "stm32f10x.h"
#include "usb_regs.h"
#include "usb_desc.h"
#include "usb_def.h"
#include "usb_mem.h"
#include "uart.h"
#include "led.h"

#define SET_LINE_CODING 		0x20
#define GET_LINE_CODING 		0x21
#define SET_CONTROL_LINE_STATE	0x22

void null_proc();
void enable_TX_proc();
void enable_RX_proc();

void (*input0_proc)(void) = &null_proc;
void (*output0_proc)(void) = &null_proc;

uint16_t devAddr = 0;
uint16_t devConfig = 0;
uint16_t devControlLineState = 0;

uint8_t  setup_data[8];
uint8_t  uart_linecoding_data[7];

uint32_t tx_length = 0;
uint8_t  *tx_pbUser = 0;

__IO uint32_t USBDeviceState = UNCONNECTED; // USB device status 

void usb_reset()
{
	*DADDR = 0x0000; 				// usb dev addr = 0;
	*DADDR |= DADDR_EF;				// enable the USB device

	/*GPIOA->CRH &= ~(GPIO_CRH_CNF10|GPIO_CRH_MODE10);
	GPIOA->CRH |= (GPIO_CRH_MODE10_1); 		// PA10 - push-pull 2 MHz out
	GPIOA->ODR |= GPIO_ODR_ODR10;			// pullup D+
	*/ 

	_SetBTABLE(0);

	// Initialize endpoint 0
	_SetEPType(ENDP0, EP_CONTROL);
	_ClearEP_KIND(ENDP0);
	_SetEPTxStatus(ENDP0, EP_TX_STALL);	
	_SetEPRxStatus(ENDP0, EP_RX_VALID);
	
	_SetEPTxAddr(ENDP0, EP0_TX_ADDRESS);
	_SetEPTxCount(ENDP0, EP0_TXBUFF_LENGTH_BYTES);
	_SetEPRxAddr(ENDP0, EP0_RX_ADDRESS);	
	_SetEPRxCount(ENDP0, EP0_RXBUFF_LENGTH_BYTES);
	
	// Initialize endpoint 1
	_SetEPType(ENDP1, EP_BULK);
	_SetEPTxStatus(ENDP1, EP_TX_NAK);
	_SetEPRxStatus(ENDP1, EP_RX_DIS);

	_SetEPTxAddr(ENDP1, EP1_TX_ADDRESS);
	_SetEPTxCount(ENDP1, EP1_TXBUFF_LENGTH_BYTES);	
	
	_ClearDTOG_TX(ENDP1);
	_ClearDTOG_RX(ENDP1);	
	
	// Initialize Endpoint 2 
	_SetEPType(ENDP2, EP_INTERRUPT);
	_SetEPRxStatus(ENDP2, EP_RX_DIS);
	_SetEPTxStatus(ENDP2, EP_TX_NAK);
	
	_SetEPTxAddr(ENDP2, EP2_TX_ADDRESS);
	_SetEPTxCount(ENDP2, EP2_TXBUFF_LENGTH_BYTES);		
	
	_ClearDTOG_TX(ENDP2);
	_ClearDTOG_RX(ENDP2);	
	
	// Initialize Endpoint 3
	_SetEPType(ENDP3, EP_BULK);
	_SetEPRxStatus(ENDP3, EP_RX_VALID);
	_SetEPTxStatus(ENDP3, EP_TX_DIS);
	
	_SetEPRxAddr(ENDP3, EP3_RX_ADDRESS);
	_SetEPRxCount(ENDP3, EP3_RXBUFF_LENGTH_BYTES);			
	// clear rx counter
	(*_pEPRxCount(ENDP3)) &=  ~0x3ff;	
	
	_ClearDTOG_TX(ENDP3);
	_ClearDTOG_RX(ENDP3);
		
	input0_proc = &null_proc;
	output0_proc = &enable_RX_proc;
	
	led_off();	
	
	USBDeviceState = ATTACHED;
}

void null_proc()
{
	return;
}

void enable_TX_proc()
{
	// enable the next  IN transaction
	_SetEPTxStatus(ENDP0,EP_TX_VALID);
}

void enable_RX_proc()
{
	// enable next OUT or SETUP transaction
	_SetEPRxStatus(ENDP0, EP_RX_VALID);	
}

void plan_ZeroLength_IN_proc()
{
	// plan zero length IN
	_SetEPTxCount(ENDP0, 0);
	_SetEPTxStatus(ENDP0,EP_TX_VALID);	
}

void plan_ZeroLength_OUT_proc()
{
	// plan the status stage - zero length host OUT transaction
	_SetEPRxStatus(ENDP0, EP_RX_VALID);	
	input0_proc = &null_proc; 
	output0_proc = &enable_RX_proc;
}

void input0_for_setaddr_proc()
{	
	// set early saving address
	*DADDR |= devAddr;	
	USBDeviceState = ADDRESSED;
	
    // set address in every used endpoint 
	_SetEPAddress(ENDP1, ENDP1);
	_SetEPAddress(ENDP2, ENDP2);
	_SetEPAddress(ENDP3, ENDP3);	
		
	// enable getting the next request from host
	_SetEPRxStatus(ENDP0, EP_RX_VALID);	
	
	input0_proc = &null_proc;
}

void input0_for_setconfig_proc()
{
	// here we're setting new configuration
	// using early saving devConfig
	USBDeviceState = CONFIGURED;
	led_on();
	
	// enable getting the next request from the host
	_SetEPRxStatus(ENDP0, EP_RX_VALID);		
	input0_proc = &null_proc;	
}

void input0_for_setcontrolline_proc()
{
	// here we're setting new control line state
	// using early saving devControlLineState
	
	// enable getting the next request from the host
	_SetEPRxStatus(ENDP0, EP_RX_VALID);	
	input0_proc = &null_proc;	
}

void output0_for_setlinecoding_proc()
{
	int bc;
	uint32_t dwDTERate;
	uint8_t bCharFormat;
	uint8_t bParityType;
	uint8_t bDataBits;
	
	bc = _GetEPRxCount(ENDP0); // num rx bytes
	
	// read 7 bytes from usb rx buffer to user rx bufer
	pma_to_user_copy(uart_linecoding_data, EP0_RX_ADDRESS, 7);
		
	// plan status stage zero length IN
	plan_ZeroLength_IN_proc();
	input0_proc = &null_proc;

	// enable next OUT or SETUP transaction
	_SetEPRxStatus(ENDP0, EP_RX_VALID);		
	output0_proc = &enable_RX_proc;
}

void plan_Data_IN_proc()
{
	uint32_t len;	
	uint32_t last;		
						
	len = (tx_length > 64) ? 64 : tx_length;
	last = tx_length - len;
						
	if(len > 0)
	{
		// if there is the data for tx
		// plan IN data stage transaction:
		// copy len bytes of config descriptor to usb tx buffer
		user_to_pma_copy(tx_pbUser, EP0_TX_ADDRESS, len);
			
		// and set tx counter equal len
		_SetEPTxCount(ENDP0, len);
		// make tx valid for next IN request from host
		_SetEPTxStatus(ENDP0,EP_TX_VALID);
	}
	
	if(last > 0 )
	{
		// we have one more data
		// save position for next trasfer
		tx_length = last;	
		tx_pbUser = &tx_pbUser[len];
		input0_proc = &plan_Data_IN_proc;
	}
	else
	{
		// nothig to transfer 
		// It will plan the status stage next
		input0_proc = &plan_ZeroLength_OUT_proc;
	}				
}

void string_descriptor_proc()
{
	uint32_t descr_index = (uint32_t)setup_data[2];
	
	switch(descr_index)
	{				
		case 0x00:
			// Index of string descriptor describing languige id
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_LANGID;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringLangID[0];
			plan_Data_IN_proc();
			break;

		case 0x01:
			// Index of string descriptor describing manufacturer
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_VENDOR;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringVendor[0];
			plan_Data_IN_proc();				
			break;
		
		case 0x02:
			// Index of string descriptor describing product
			// plan  data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_PRODUCT;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringProduct[0];
			plan_Data_IN_proc();								
			break;
		
		case 0x03:
			// Index of string descriptor describing serial
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_SERIAL;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringSerial[0];
			plan_Data_IN_proc();												
			break;
	}					
}

void get_descriptor_proc()
{
	uint32_t descr_type = (uint32_t)setup_data[3];
	uint32_t wLength = (uint32_t)(setup_data[6] | (setup_data[7] << 8));	
	
	// detect the type of the request
	switch(descr_type)
	{
		case DEVICE_DESCRIPTOR:
			// It's USB_DEVICE_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_DeviceDescriptor[0];
			plan_Data_IN_proc();			
			dbg_msg("DEVICE\r\n");
			break;
		
		case DEVICE_QUALIFIER:
			// plan zero length IN
			plan_ZeroLength_IN_proc();			
			input0_proc = &plan_ZeroLength_OUT_proc;			
			
			dbg_msg("QUALIFIER\r\n");	
			break;

		case CONFIG_DESCRIPTOR:
			// It's USB_CONFIGURATION_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_ConfigDescriptor[0];
			plan_Data_IN_proc();	
			dbg_msg("CONFIGURATION\r\n");
			break;
		
		case STRING_DESCRIPTOR:
			// It's USB_STRING_DESCRIPTOR_TYPE request
			string_descriptor_proc();
			dbg_msg("STRING\r\n");
			break;
	}	
}

void setup0_proc()
{
	int bc;	
	uint32_t req_type;

	bc = _GetEPRxCount(ENDP0); // num rx bytes

	// read 8 control bytes from usb rx buffer to user rx bufer
	pma_to_user_copy(setup_data, EP0_RX_ADDRESS, 8);

	req_type = setup_data[1];
	switch(req_type)
	{
		case SET_CONTROL_LINE_STATE:
			// set control line request
			// plan status stage IN transaction
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setcontrolline_proc;		
			// save line state code
			devControlLineState = setup_data[2];	
			dbg_msg("SET_CONTROL_LINE_STATE\r\n");	
			break;

		case SET_LINE_CODING:
			// set line coding request
			// plan data stage OUT transaction:
			output0_proc = &output0_for_setlinecoding_proc;	
			_SetEPRxStatus(ENDP0, EP_RX_VALID);
			dbg_msg("SET_LINE_CODING\r\n");	
			break;

		case GET_LINE_CODING:
			// It's GET_LINE_CODING request
			// plan data stage transaction:
			tx_length = 7;	
			tx_pbUser = (uint8_t*) &uart_linecoding_data[0];
			plan_Data_IN_proc();	
			dbg_msg("GET_LINE_CODING\r\n");	
			break;

		case SET_CONFIGURATION:
			// set config request
			devConfig = setup_data[2]; // save config code from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setconfig_proc;	
			dbg_msg("SET_CONFIGURATION\r\n");		
			break;

		case SET_ADDRESS:
			// set address request		
			devAddr = setup_data[2]; // save address from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setaddr_proc;	
			dbg_msg("SET_ADDRESS\r\n");			
			break;

		case GET_DESCRIPTOR:
			dbg_msg("GET_DESCRIPTOR:");
			get_descriptor_proc();
			break;
	}
}
