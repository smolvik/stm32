#include "stm32f10x.h"
#include "usb_regs.h"

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
