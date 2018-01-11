#ifndef __I2C_H
#define __I2C_H

extern void i2c_init();
extern void i2c_test();
extern uint8_t temp_buf[2];
extern uint32_t i2c_errcnt;
extern void i2c_start(uint8_t adr);

#endif
