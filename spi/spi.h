#ifndef __SPI_H
#define __SPI_H

#include "stm32f10x.h"

extern void spi_master_init(void);
extern void spi_slave_init(void);
extern void spi_write_read(uint8_t *pw, uint8_t *pr, uint16_t n);

#endif
