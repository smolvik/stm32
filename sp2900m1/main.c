/**********************************************************************
 * 
 * stm32 debuging
 * 
 * 
 *********************************************************************/
#include "stm32f4xx.h"
#include "uart.h"
#include "xprintf.h"
#include "system.h"
#include "adc.h"
#include "dac.h"
#include "cos_sin_tbl.h"
#include "modbus_rtu.h"
#include "spi.h"
#include "reg.h"
#include "i2c.h"
#include "math.h"
#include "arm_math.h"

uint16_t test_pwm = 80;
uint16_t test_dac = 1800;
uint8_t atten = 0;
int32_t vdiv = 42000;

uint32_t fDerating = 0;
uint32_t fOverheat = 0;
uint32_t Imax = 0;

uint32_t Vdav = 0;
uint32_t Idav = 0;
uint32_t Pdav = 0;
uint32_t Tj = 0;


const uint8_t seg7_tbl[16] = {0x77, 0x14, 0xb3, 0xb6, 0xd4, 0xe6, 0xe7, 0x34,  
							  0xf7, 0xf6, 0xf5, 0xc7, 0x63, 0x97, 0xe3, 0xe1};
							  
void display_out(uint32_t m, uint32_t f, uint32_t n)
{
	int i = 0;	
	n = n << 2;
	
	for(i = 0; i < 4; i++){
		if(i == f){
			sbuf[n++] = seg7_tbl[(m%10)&0x0f] | 0x08;
		}
		else{
			sbuf[n++] = seg7_tbl[(m%10)&0x0f];		
		}
		m = m/10;
	}					
}							  

/*
// iav - mA
// vav - V
uint32_t check_channel(uint32_t iav, uint32_t vav)
{
		uint32_t pav = vav*iav; //mW
		uint32_t rt = 22;
		
		uint32_t tc = temperature[0];
		uint32_t tj = tc + (rt*pav+50000)/100000;

		Imax = (((150-tc)*1000)/22/vav + 5)/10;						
		
		xprintf("****CHANNEL 1***********\n");
		xprintf("Id=%dmA\r\n", iav);
		xprintf("Vd=%dV\r\n", vav);
		xprintf("P=%dW\r\n", (pav+500)/1000);

		xprintf("Tc=%d\r\n", tc );
		xprintf("Tj=%d\r\n", tj );		
		
		xprintf("Imax=%dA\r\n", Imax );
		xprintf("\n\n");
		
		return tj;
}
*/	

void log_channel()
{
		uint32_t v = (Vdav+0x20000) >> 18;
			
		xprintf("Ic=%d\r\n", (Ic1+0x200)>>10);			
		xprintf("Ir=%d\r\n", Ir1);		
		xprintf("error=%d\r\n", Error);
						
		xprintf("Vd=%d\r\n", (Vd>>10));
		xprintf("Katt=%d\r\n", Katt);
		
		xprintf("Id=%dmA\r\n", Idav);
		xprintf("Vd=%d.%dV\r\n", v/10, v%10);
		xprintf("P=%dW\r\n", (Pdav+500)/1000);
		xprintf("Imax=%dmA\r\n", Imax);

		xprintf("Tc=%d\r\n", temperature);
		xprintf("Tj=%d\r\n", Tj);
		
		xprintf("\n\n");
		
}

void load_set_INT(uint16_t in)
{
	if(modbus_ready){
		modbus_write_single_register(17, 3, in);
	}
}	

void load_set_PROP(uint16_t pr)
{
	if(modbus_ready){
		modbus_write_single_register(17, 4, pr);
	}
}	

void load_set_mode(uint16_t m)
{
	if(modbus_ready){
		modbus_write_single_register(17, 2, m);
	}
}	

void load_set_curr(uint16_t c)
{
	if(modbus_ready){
		modbus_write_single_register(17, 0, c);
	}
}	

extern int16_t enc_cnt;


uint8_t rev_bit(uint8_t b)
{
	uint8_t t = ((b&0x0f) << 4) | ((b&0xf0) >> 4);
	t = ((t&0x33) << 2) | ((t&0xcc) >> 2);
	t = ((t&0x55) << 1) | ((t&0xaa) >> 1);
	return t;
}

int main()
{
	char buf[128];
	char buf2[128];
	uint8_t s = 0;
	int i = 0;
	int n = 0;
	uint16_t dac = 1000;
	uint16_t phase = 0;
	uint16_t freq = 100;
	
	unsigned long tc = 0;
	
	system_init();
	uart_init();
	xdev_out(uart_putch);			

	//adc_init();	
	dac_init();
	
	modbus_init();
	spi_master_init();
	//i2c_init();
	
	//reg_init();
	
	xprintf("hello\r\n");

	// configure pins PB6 PB7
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

	int16_t enc_cnt_pre = enc_cnt;
	

	while(1){
			
		(enc_cnt > 1500) && (enc_cnt = 1500);
		(enc_cnt < 0) && (enc_cnt = 0);
		int c = enc_cnt*10;		
					
		sleep(100);
		xprintf("I=%d mA\n", c);
		
		display_out(c, 4, 0);
		display_out(0, 4, 1);
		
		//load_set_INT(500);
		//sleep(10);
		//load_set_PROP(100);
		//sleep(10);
		load_set_mode(1);
		sleep(10);		
		load_set_curr(c);
	}

/*
	while(1){
			
		(enc_cnt > 15) && (enc_cnt = 15);
		(enc_cnt < 0) && (enc_cnt = 0);
		int c = enc_cnt;
					
		sleep(100);
		xprintf("I=%d kOhm\n", c*10);
		//xprintf("I=%d mA\n", rev_bit((uint8_t)c));
		
		//GPIOD->ODR = rev_bit(c);
		GPIOD->ODR = 0xf0 | (~c);
		
		display_out(c*10, 4, 0);
		display_out(0, 4, 1);
		
	}
*/
}
