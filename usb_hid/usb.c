#include "stm32f10x.h"
#include "usb_regs.h"
#include "usb_def.h"
#include "uart.h"
#include "led.h"
#include "xprintf.h"

uint16_t devAddr = 0;
uint16_t devConfig = 0;

uint8_t  setup_data[8];
uint8_t  hid_device_buttons;
uint8_t  hid_device_leds;

uint32_t tx_length = 0;
uint8_t  *tx_pbUser = 0;

uint32_t USBDeviceState = UNCONNECTED; // USB device status
uint8_t USBCurrentIntCode = 0x00;

static void null_proc();
static void enable_TX_proc();
static void enable_RX_proc();

static void (*input0_proc)(void) = &null_proc;
static void (*output0_proc)(void) = &null_proc;

// Descriptors

// HID Report Descriptor 
const uint8_t HID_ReportDescriptor[] = {
  HID_UsagePageVendor(0x00),
  HID_Usage(0x01),
  HID_Collection(HID_Application),
    HID_UsagePage(HID_USAGE_PAGE_BUTTON),
    HID_UsageMin(1),
    HID_UsageMax(3),
    HID_LogicalMin(0),
    HID_LogicalMax(1),
    HID_ReportCount(3),
    HID_ReportSize(1),
    HID_Input(HID_Data | HID_Variable | HID_Absolute),
    HID_ReportCount(1),
    HID_ReportSize(5),
    HID_Input(HID_Constant),
    HID_UsagePage(HID_USAGE_PAGE_LED),
    HID_Usage(HID_USAGE_LED_GENERIC_INDICATOR),
    HID_LogicalMin(0),
    HID_LogicalMax(1),
    HID_ReportCount(8),
    HID_ReportSize(1),
    HID_Output(HID_Data | HID_Variable | HID_Absolute),
  HID_EndCollection,
};

#define HID_REPORT_DESC_SIZE        (sizeof(HID_ReportDescriptor))

// USB Standard Device Descriptor
const uint8_t USB_DeviceDescriptor[] = {
  USB_DEVICE_DESC_SIZE,              /* bLength */
  USB_DEVICE_DESCRIPTOR_TYPE,        /* bDescriptorType */
  WBVAL(0x0110), /* 1.10 */          /* bcdUSB */
  0x00,                              /* bDeviceClass */
  0x00,                              /* bDeviceSubClass */
  0x00,                              /* bDeviceProtocol */
  USB_MAX_PACKET0,                   /* bMaxPacketSize0 */
  WBVAL(0xC251),                     /* idVendor */
  WBVAL(0x1301),                     /* idProduct */
  WBVAL(0x0100), /* 1.00 */          /* bcdDevice */
  0x04,                              /* iManufacturer */
  0x20,                              /* iProduct */
  0x42,                              /* iSerialNumber */
  0x01                               /* bNumConfigurations */
};

// USB Configuration Descriptor
//   All Descriptors (Configuration, Interface, Endpoint, Class, Vendor
const uint8_t USB_ConfigDescriptor[] = {
/* Configuration 1 */
  USB_CONFIGUARTION_DESC_SIZE,       /* bLength */
  USB_CONFIGURATION_DESCRIPTOR_TYPE, /* bDescriptorType */
  WBVAL(                             /* wTotalLength */
    USB_CONFIGUARTION_DESC_SIZE +
    USB_INTERFACE_DESC_SIZE     +
    HID_DESC_SIZE               +
    USB_ENDPOINT_DESC_SIZE		
  ),
  0x01,                              /* bNumInterfaces */
  0x01,                              /* bConfigurationValue */
  0x00,                              /* iConfiguration */
  USB_CONFIG_BUS_POWERED /*|*/       /* bmAttributes */
/*USB_CONFIG_REMOTE_WAKEUP*/,
  USB_CONFIG_POWER_MA(100),          /* bMaxPower */
/* Interface 0, Alternate Setting 0, HID Class */
  USB_INTERFACE_DESC_SIZE,           /* bLength */
  USB_INTERFACE_DESCRIPTOR_TYPE,     /* bDescriptorType */
  0x00,                              /* bInterfaceNumber */
  0x00,                              /* bAlternateSetting */
  0x01,                              /* bNumEndpoints */
  USB_DEVICE_CLASS_HUMAN_INTERFACE,  /* bInterfaceClass */
  HID_SUBCLASS_NONE,                 /* bInterfaceSubClass */
  HID_PROTOCOL_NONE,                 /* bInterfaceProtocol */
  0x5C,                              /* iInterface */
/* HID Class Descriptor */
/* HID_DESC_OFFSET = 0x0012 */
  HID_DESC_SIZE,                     /* bLength */
  HID_HID_DESCRIPTOR_TYPE,           /* bDescriptorType */
  WBVAL(0x0100), /* 1.00 */          /* bcdHID */
  0x00,                              /* bCountryCode */
  0x01,                              /* bNumDescriptors */
  HID_REPORT_DESCRIPTOR_TYPE,        /* bDescriptorType */
  WBVAL(HID_REPORT_DESC_SIZE),       /* wDescriptorLength */
/* Endpoint, HID Interrupt In */
  USB_ENDPOINT_DESC_SIZE,            /* bLength */
  USB_ENDPOINT_DESCRIPTOR_TYPE,      /* bDescriptorType */
  USB_ENDPOINT_IN(1),                /* bEndpointAddress */
  USB_ENDPOINT_TYPE_INTERRUPT,       /* bmAttributes */
  WBVAL(0x0004),                     /* wMaxPacketSize */
  0x20,          /* 32ms */          /* bInterval */
/* Terminator */
  0                                  /* bLength */
};

/* USB String Descriptor (optional) */
const uint8_t USB_StringDescriptor[] = {
/* Index 0x00: LANGID Codes */
  0x04,                              /* bLength */
  USB_STRING_DESCRIPTOR_TYPE,        /* bDescriptorType */
  WBVAL(0x0409), /* US English */    /* wLANGID */
/* Index 0x04: Manufacturer */
  0x1C,                              /* bLength */
  USB_STRING_DESCRIPTOR_TYPE,        /* bDescriptorType */
  'K',0,
  'e',0,
  'i',0,
  'l',0,
  ' ',0,
  'S',0,
  'o',0,
  'f',0,
  't',0,
  'w',0,
  'a',0,
  'r',0,
  'e',0,
/* Index 0x20: Product */
  0x22,                              /* bLength */
  USB_STRING_DESCRIPTOR_TYPE,        /* bDescriptorType */
  'K',0,
  'e',0,
  'i',0,
  'l',0,
  ' ',0,
  'M',0,
  'C',0,
  'B',0,
  '2',0,
  '1',0,
  '4',0,
  '0',0,
  ' ',0,
  'H',0,
  'I',0,
  'D',0,
/* Index 0x42: Serial Number */
  0x1A,                              /* bLength */
  USB_STRING_DESCRIPTOR_TYPE,        /* bDescriptorType */
  'D',0,
  'E',0,
  'M',0,
  'O',0,
  '0',0,
  '0',0,
  '0',0,
  '0',0,
  '0',0,
  '0',0,
  '0',0,
  '0',0,
/* Index 0x5C: Interface 0, Alternate Setting 0 */
  0x08,                              /* bLength */
  USB_STRING_DESCRIPTOR_TYPE,        /* bDescriptorType */
  'H',0,
  'I',0,
  'D',0,
};


void user_to_pma_copy(const uint8_t *pbUser, uint32_t usb_addr, uint32_t nb)
{
	uint32_t res, div, i, j;
	uint32_t *pEP_buff = (uint32_t*)(PMAAddr+2*usb_addr);
				
	res = nb & 0x00000001;
	div = nb >> 1;		
	
	j = 0;
	for(i = 0; i < div; i++)
	{
		pEP_buff[i] = pbUser[j++];
		pEP_buff[i] |= (pbUser[j++] << 8);
	}		
	if(res)
	{
		// if odd
		pEP_buff[div] = pbUser[j];
	}			
}

void pma_to_user_copy(uint8_t *pbUser, uint32_t usb_addr, uint32_t nb)
{
	uint32_t res, div, i, j;
	uint32_t *pEP_buff = (uint32_t*)(PMAAddr+2*usb_addr);

	res = nb & 0x00000001;
	div = nb >> 1;		
	
	j = 0;
	for(i = 0; i < div; i++)
	{
		pbUser[j++] = pEP_buff[i] & 0xff;
		pbUser[j++] = (pEP_buff[i] & 0xff00) >> 8;
	}		
	if(res)
	{
		// if odd
		pbUser[j] = pEP_buff[div] & 0xff;
	}			

}

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
	// Enable interrupts: correct transfer, buffer error, any error, bus reset, interrupt on expected SOF
	*CNTR |= CNTR_CTRM | CNTR_RESETM | CNTR_ESOFM | CNTR_DOVRM | CNTR_ERRM;
	// Clear possible spurious interrupts
	*ISTR = 0;
	
	USBDeviceState = UNCONNECTED;
	
	NVIC_EnableIRQ(USB_LP_CAN1_RX0_IRQn); // enable interrupt for usb events
}

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
	
	// Initialize Endpoint 1 
	_SetEPType(ENDP1, EP_INTERRUPT);
	_SetEPRxStatus(ENDP1, EP_RX_DIS);
	_SetEPTxStatus(ENDP1, EP_TX_NAK);
	
	_SetEPTxAddr(ENDP1, EP1_TX_ADDRESS);
	_SetEPTxCount(ENDP1, EP1_TXBUFF_LENGTH_BYTES);		
	
	_ClearDTOG_TX(ENDP1);
	_ClearDTOG_RX(ENDP1);		
	
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

	// plan data stage transaction:
	tx_length = USB_StringDescriptor[descr_index];
	tx_pbUser = (uint8_t*) &USB_StringDescriptor[descr_index];
	plan_Data_IN_proc();
}

void get_descriptor_proc()
{
	uint32_t descr_type = (uint32_t)setup_data[3];
	uint32_t wLength = (uint32_t)(setup_data[6] | (setup_data[7] << 8));	

	// detect the type of the request
	switch(descr_type)
	{
		case USB_DEVICE_DESCRIPTOR_TYPE:
			// It's USB_DEVICE_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &USB_DeviceDescriptor[0];
			plan_Data_IN_proc();			
			dbg_msg("DEVICE\r\n");
			break;

		case USB_DEVICE_QUALIFIER_DESCRIPTOR_TYPE:
			plan_ZeroLength_IN_proc();			
			input0_proc = &plan_ZeroLength_OUT_proc;			
			dbg_msg("QUALIFIER\r\n");	
			break;

		case USB_CONFIGURATION_DESCRIPTOR_TYPE:
			// It's USB_CONFIGURATION_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &USB_ConfigDescriptor[0];
			plan_Data_IN_proc();	
			dbg_msg("CONFIGURATION\r\n");
			break;

		case HID_REPORT_DESCRIPTOR_TYPE:
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &HID_ReportDescriptor[0];
			plan_Data_IN_proc();	
			dbg_msg("REPORT\r\n");
			break;			

		case USB_STRING_DESCRIPTOR_TYPE:
			// It's USB_STRING_DESCRIPTOR_TYPE request
			string_descriptor_proc();
			dbg_msg("STRING\r\n");
			break;

		default:
			xprintf("%02x\r\n", descr_type);
	}	
}

void get_interface_proc()
{
	tx_length = 1;	
	tx_pbUser = &USBCurrentIntCode;
	plan_Data_IN_proc();				
}

void standart_request_proc()
{
	uint8_t bRequest;
	
	bRequest = setup_data[1];
	switch(bRequest)
	{
		case USB_REQUEST_SET_CONFIGURATION:
			// set config request
			devConfig = setup_data[2]; // save config code from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setconfig_proc;	
			dbg_msg("SET_CONFIGURATION\r\n");		
			break;

		case USB_REQUEST_SET_ADDRESS:
			// set address request		
			devAddr = setup_data[2]; // save address from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setaddr_proc;	
			dbg_msg("SET_ADDRESS\r\n");			
			break;

		case USB_REQUEST_GET_DESCRIPTOR:
			dbg_msg("GET_DESCRIPTOR:");
			get_descriptor_proc();
			break;
			
		case USB_REQUEST_GET_INTERFACE:
			dbg_msg("GET_INTERFACE\r\n");
			get_interface_proc();
			break;			
			
		case USB_REQUEST_CLEAR_FEATURE:
			dbg_msg("CLEAR_FEATURE\r\n");
			plan_ZeroLength_IN_proc();
			break;						
			
		case USB_REQUEST_SET_FEATURE:
			dbg_msg("CLEAR_FEATURE\r\n");
			plan_ZeroLength_IN_proc();
			break;									
						
		default:
			_SetEPRxStatus(ENDP0, EP_RX_VALID);		
			xprintf("%02x\r\n", bRequest);
	
	}	
}

void output0_for_setreport_proc()
{
        int bc;
        
        bc = _GetEPRxCount(ENDP0); // num rx bytes
        
        // read from usb rx buffer to user rx bufer
        pma_to_user_copy(&hid_device_leds, EP0_RX_ADDRESS, 1);

        // plan status stage zero length IN
        plan_ZeroLength_IN_proc();
        input0_proc = &null_proc;

        // enable next OUT or SETUP transaction
        _SetEPRxStatus(ENDP0, EP_RX_VALID);
        output0_proc = &enable_RX_proc;
}

void hid_class_request_proc()
{
	uint8_t bRequest;
	uint16_t wLength;
	
	bRequest = setup_data[1];
	wLength = (uint16_t)(setup_data[6] | (setup_data[7] << 8));		
	
	switch(bRequest)
	{
		case HID_REQUEST_SET_IDLE:
			plan_ZeroLength_IN_proc();			
			dbg_msg("SET_IDLE\r\n");			
			break;
			
		case HID_REQUEST_GET_REPORT:
			tx_length = 1; //wLength;
			tx_pbUser = (uint8_t*) &hid_device_buttons;
			plan_Data_IN_proc();			
			dbg_msg("GET_REPORT\r\n");			
			break;
			
		case HID_REQUEST_SET_REPORT:
			output0_proc = &output0_for_setreport_proc;
			_SetEPRxStatus(ENDP0, EP_RX_VALID);
			dbg_msg("SET_REPORT\r\n");			
			break;	
			
		default:
			_SetEPRxStatus(ENDP0, EP_RX_VALID);		
			xprintf("%02x\r\n", bRequest);
			
	}
}

void setup0_proc()
{
	int bc;	
	uint8_t bmRequestType;	

	bc = _GetEPRxCount(ENDP0); // num rx bytes

	// read 8 control bytes from usb rx buffer to user rx bufer
	pma_to_user_copy(setup_data, EP0_RX_ADDRESS, 8);

	bmRequestType = setup_data[0];
	
	switch(bmRequestType & REQUEST_TYPE)
	{
		case STANDARD_REQUEST:
			dbg_msg("STANDARD_REQUEST:");
			standart_request_proc();
			break;
			
		case CLASS_REQUEST:
			dbg_msg("CLASS_REQUEST:");
			hid_class_request_proc();
			break;
	}	
		
}

void write_buttons_state_to_host(void)
{
	// copy buttons state to usb buffer
	user_to_pma_copy(&hid_device_buttons, EP1_TX_ADDRESS, 1);
	// enable transmitter
	_SetEPTxCount(ENDP1, 1);
	_SetEPTxStatus(ENDP1, EP_TX_VALID);			
}

//void usb_update()
void USB_LP_CAN1_RX0_IRQHandler()
{
	// CNTR_CTRM | CNTR_RESETM | CNTR_ESOFM | CNTR_DOVRM | CNTR_ERRM;
	uint16_t wEPVal = 0;	
	uint16_t wIstr = 0;
	uint8_t EPindex = 0;

	wIstr = _GetISTR();	
	
	if (wIstr & ISTR_RESET)
	{
		_SetISTR((uint16_t)CLR_RESET);
		usb_reset();
		dbg_msg("RESET\r\n");
	}		
	
	if (wIstr & ISTR_ESOF)
	{
		_SetISTR((uint16_t)CLR_ESOF);
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

	//if (wIstr & ISTR_CTR)
	while (((wIstr = _GetISTR()) & ISTR_CTR) != 0)
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
				
			} 

			if ((wEPVal & EP_CTR_TX) != 0)
			{
				// clear int flag 
				_ClearEP_CTR_TX(EPindex);
				
				// call IN service function			
				if (EPindex == 1)
				{
					dbg_msg("ep1:in\r\n");
				}				
			}
		}
	}
}
