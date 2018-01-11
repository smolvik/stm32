#ifndef __MODBUS_RTU_H
#define __MODBUS_RTU_H

#define req_curr 	register_tab[0]
#define req_res  	register_tab[1]
#define req_mode	register_tab[2]
#define req_ki 		register_tab[3]
#define req_kp 		register_tab[4]
#define req_vd 		register_tab[5]
#define req_id 		register_tab[6]
#define req_tc 		register_tab[7]

extern void modbus_init();
extern uint16_t register_tab[3];

#endif
