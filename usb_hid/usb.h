#ifndef __USB_H
#define __USB_H

#include "usb_def.h"

extern __IO uint32_t USBDeviceState;

extern void usb_init();
extern void usb_reset();
extern void write_buttons_state_to_host(void);

extern uint8_t  hid_device_buttons;
extern uint8_t  hid_device_leds;

#endif
