#ifndef __SPI_H
#define __SPI_H

extern uint8_t sbuf[4];

extern void spi_master_init(void);
extern void spi_slave_init(void);
extern void spi_write_read(uint8_t *pw, uint8_t *pr, uint16_t n);
extern void coll_pwm_set(uint16_t s);

#endif
