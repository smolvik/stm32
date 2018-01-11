#ifndef __USB_MEM_H
#define __USB_MEM_H

extern void user_to_pma_copy(const uint8_t *pbUser, uint32_t usb_addr, uint32_t nb);
extern void pma_to_user_copy(uint8_t *pbUser, uint32_t usb_addr, uint32_t nb);

#endif /* __USB_MEM_H */
