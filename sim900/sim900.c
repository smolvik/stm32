#include "uart.h"
#include "str_utils.h"
#include "led.h"
#include "system.h"
#include "xprintf.h"

#define PIN_STR "AT+CPIN=0796\r"
#define BUFSIZE 2*1024

void null_resp(int len);
void null_ok();
void null_error();
void cpinok();

int comfd;

char *comname;
int devmode = 0;
int devtype = 0;
char *devdata;

int sim_reg = 0;

uint32_t timeout_dt = 0;
uint32_t timeout_te = 0;

int sim900_ready = 0;
int sim900_please_die = 0;

char inbuf[BUFSIZE];

void (*proc_resp)(int len) = null_resp;
void (*proc_ok)() = null_ok;
void (*proc_error)() = null_error;

void null_resp(int len)
{
}
void null_ok()
{
}
void null_error()
{
}

//----------------------------------------------------------------------
int sim900_update(void)
{
	char cur;
	int len;	
	static unsigned char pre = 0;
	static int i = 0;

	len = 0;
	
	if((timeout_dt == 0) && (uart_read(&cur, 1) == 1))
	{	
		if((pre == 0x0d) && (cur == 0x0a)) 
		{			
			inbuf[i] = 0;		
			len = i-1;		
			i = 0;

			if(len > 0) 
			{				
				if(0 == strncmp(inbuf, "OK", 2)){
					// status OK
					proc_ok();
				}
				else if(0 == strncmp(inbuf, "ERROR", 5)){
					// status error
					proc_error();
				}
				else {
					proc_resp(len);
				}
			}
		}
		else
		{
			inbuf[i++] = cur;
		}
	
		pre = cur;				
	}
	else (((system_time+timeout_dt)-timeout_te)>=timeout_dt) && (timeout_dt = 0);
	
	return len;
}
//----------------------------------------------------------------------
void print_response(int len)
{
	int i;
	for(i = 0; i < len; i++) 
	{
		xprintf("%c", inbuf[i]);
	}										
	xprintf("\n");	
}

void print_response_hex(int len)
{
	int i;
	for(i = 0; i < len; i++) 
	{
		xprintf("[%x]", inbuf[i]);
	}										
	xprintf("\n");	
}

void itsok()
{
	xprintf("OK\n");
}

void itserror()
{
	xprintf("ERROR\n");
	sim900_please_die = 1;
}

void sim900_command(char *cmd)
{
	uart_send(cmd, strlen(cmd));
}

void theend()
{
	xprintf("OK. It's all folks\n");	
	sim900_ready = 1;
	proc_ok = &itserror;
	proc_error = &itserror;			
	
	sim900_please_die = 1;	
}

/*
 Couple of the functions for http get request
 
AT+HTTPINIT
AT+HTTPPARA="CID",1
AT+HTTPPARA="URL","http://trajectory.aiq.ru" 
AT+HTTPACTION=0
AT+HTTPREAD
AT+HTTPTERM
 */				

void httpread_ok()
{
	xprintf("OK\n");	
	sim900_command("AT+HTTPTERM\r");	
	
	proc_resp = &print_response;
	proc_ok = &theend;
	proc_error = &itserror;			
}

void httpread_response(int len)
{
	int i = 0, j = 0;
	char *ps = inbuf;
	
	print_response(len);
	
	if(0 == strncmp(ps, "true",4)) {
		sim_reg = 1;
	}
	else if(0 == strncmp(ps, "false",5)) {
		sim_reg = 0;
	}
	
	xprintf("reg = %u\n", sim_reg);
}

void httpaction_response(int len)
{
	char *ps = &inbuf[12];
	int method = atoi(ps);
	int code = atoi(ps+2);
	int size = atoi(ps+6);

	print_response(len);
	xprintf("%u,%u,%u\n", method, code, size);
	sim900_command("AT+HTTPREAD\r");

	//proc_resp = &print_response;
	proc_resp = &httpread_response;
	proc_ok = &httpread_ok;
	proc_error = &itserror;		
}

void httpactionok()
{
	xprintf("OK\n");		
	proc_resp = &httpaction_response;
	proc_ok = &itserror;
	proc_error = &itserror;	
}

void httpparaurlok()
{
	xprintf("OK\n");	
	sim900_command("AT+HTTPACTION=0\r");
	
	proc_resp = &print_response;
	proc_ok = &httpactionok;
	proc_error = &itserror;		
}

void httpparacidok()
{
	xprintf("OK\n");
	
	if(system_but){
		sim900_command("AT+HTTPPARA=\"URL\",\"http://trajectory.aiq.ru/cgi-bin/updreg?bit1=true\"\r");
	}
	else{
		sim900_command("AT+HTTPPARA=\"URL\",\"http://trajectory.aiq.ru/cgi-bin/updreg?bit1=false\"\r");
	}
	
	proc_resp = &print_response;
	proc_ok = &httpparaurlok;
	proc_error = &itserror;		
}

void httpinitok()
{
	xprintf("OK\n");
	sim900_command("AT+HTTPPARA=\"CID\",1\r");
	
	proc_resp = &print_response;
	proc_ok = &httpparacidok;
	proc_error = &itserror;	
}

void sim900_http_get()
{
	sim900_command("AT+HTTPINIT\r");
	
	proc_resp = &print_response;
	proc_ok = &httpinitok;
	proc_error = &itserror;	
	
	sim900_ready = 0;
}

/* 
 * Couple of the functions for initialisation modem
*/
void sapbrok()
{
	sim900_ready = 1;
	xprintf("OK:modem is ready for data transmitting\n");
	
	proc_resp = &print_response;	
	proc_ok = &itsok;
	proc_error = &itserror;			
}

void cgattok()
{
	xprintf("OK\n");
	sim900_command("AT+SAPBR=1,1\r");	
	
	proc_resp = &print_response;
	proc_ok = &sapbrok;
	proc_error = &itserror;			
}

void cgattresp(int len)
{
	int r = atoi(&inbuf[7]);
	print_response(len);
	//led_off();
	
	/*uint32_t t = system_time;
	while(t+500 > system_time);	*/
	
	if(r == 1) proc_ok = &cgattok;
	else {
		proc_ok = &cpinok;
		timeout_dt = 500;
		timeout_te = system_time+500;
	}
}

void cpinok()
{
	xprintf("OK\n");	
	sim900_command("AT+CGATT?\r");
	//led_on();
	
	proc_resp = &cgattresp;
	proc_ok = &itsok;
	proc_error = &itserror;			
}

void check_cpin(int len)
{
	print_response(len);
	
	if(strstr(inbuf, "+CPIN:"))
	{
		if(strstr(&inbuf[6], "READY"))
		{
			sim900_command("AT+CGATT?\r");
			
			proc_resp = &cgattresp;
			proc_ok = &itsok;
			proc_error = &itserror;					
		}		
		else if(strstr(&inbuf[6], "SIM PIN"))
		{			
			sim900_command(PIN_STR);
			
			proc_resp = &print_response;
			proc_ok = &cpinok;
			proc_error = &itserror;						
		}
		else{
			xprintf("ERROR:sim card is'nt inserted\n");
			sim900_please_die = 1;
		}
	}
}

void sim900_init()
{
	sim900_ready = 0;
	
	proc_resp = &check_cpin;
	proc_ok = &itsok;
	proc_error = &itserror;			
	
}
