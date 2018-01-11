#ifndef __USB_H
#define __USB_H

#include "usb_control.h"
#include "usb_def.h"

extern void usb_init();
extern void usb_update();
extern int  usb_read(uint8_t *pb, uint32_t nb);
extern int  usb_write(uint8_t *pb, uint32_t nb);
//extern void plan_message_to_host(void);

/*
extern uint8_t  *test_message;
extern uint32_t test_message_len;
extern uint32_t test_message_fsent;
*/

#endif
