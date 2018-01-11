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
extern uint32_t modbus_error;
extern uint32_t modbus_ready;
extern void modbus_read_holding_registers(uint8_t id, uint16_t start_addr, uint16_t quant_reg);
extern void modbus_write_single_register(uint8_t id, uint16_t reg_addr, uint16_t reg_val);

#endif
