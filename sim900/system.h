#ifndef __SYSTEM_H
#define __SYSTEM_H

#include "stm32f10x.h"

extern uint32_t system_time;
extern uint32_t system_but;

extern void system_init (void);
extern void system_PB5_off();
extern void system_PB5_on();

#endif
