#ifndef __SIM900_H
#define __SIM900_H

extern int 	sim900_please_die;
extern int 	sim900_ready;
extern int 	sim_reg;

extern int 	sim900_update();
extern void sim900_init();
extern void sim900_http_get();
extern void sim900_command(char *cmd);

#endif
