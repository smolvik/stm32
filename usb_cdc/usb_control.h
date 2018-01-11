#ifndef __USB_CONTROL_H
#define __USB_CONTROL_H

extern void (*input0_proc)(void);
extern void (*output0_proc)(void);
extern void setup0_proc();
extern void usb_reset();

extern __IO uint32_t USBDeviceState;

#endif
