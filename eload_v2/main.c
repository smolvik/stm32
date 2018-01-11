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

extern void set_attenuator(uint8_t a);

uint16_t test_pwm = 50;
uint16_t test_dac = 1800;
uint8_t atten = 0;
int32_t vdiv = 42000;

uint32_t fDerating = 0;
uint32_t fAlarm = 0;
uint32_t Imax = 0;

//__attribute__( ( section(".data") ) ) void test_del()
//__attribute__( ( long_call, section(".data") ) ) void test_del()
void test_del()
{
	register uint32_t i;
	for(i=0; i < 10000; i++){
	if(0){i = 0;}
	}
}

const uint8_t seg7_tbl[16] = {0x77, 0x14, 0xb3, 0xb6, 0xd4, 0xe6, 0xe7, 0x34,  
							  0xf7, 0xf6, 0xf5, 0xc7, 0x63, 0x97, 0xe3, 0xe1};
// mantissa  -3 digit 
// fract -1 digit
void display_out(uint32_t m, uint32_t f, uint32_t n)
{
		n = n << 2;
		
		//fract
		if(f<10){
			sbuf[n++] = seg7_tbl[f];
		}
		else{			
			sbuf[n++] = seg7_tbl[(f%10)&0x0f];
		}		
		
		// mant
		sbuf[n++] = seg7_tbl[(m%10)&0x0f] | 0x08;
		m = m/10;
		sbuf[n++] = seg7_tbl[(m%10)&0x0f];
		m = m/10;
		sbuf[n++] = seg7_tbl[m&0x0f];						
}								  

uint32_t check_channel_1()
{
		uint32_t iav = (((1000*Ic1/1358))) >> 7; 	// current mA
		uint32_t vav = (((1000*(Vd/1368))+500)/1000) >> 7; 	// voltage V
		uint32_t pav = vav*iav/100;
		
		uint32_t tc = temperature[0];
		uint32_t tj = tc + 22*pav/100;

		Imax = (((150-tc)*1000)/22/vav + 5)/10;					
	
	/*
		if (tj < 45) coll_pwm_set(1500);
		if (tj > 50) coll_pwm_set(20);
		if (tj > 150) {
			fAlarm = 1;
		}
		else if(tj < 40){
			fAlarm = 0;
		}
		*/
		/*
		if(iav > Imax){
			fDerating = 1;
		}else {
			fDerating = 0;
		}*/
		
		xprintf("****CHANNEL 1***********\n");
		xprintf("Id=%dmA\r\n", iav*10);
		xprintf("Vd=%dV\r\n", vav);
		xprintf("P=%dW\r\n", pav);

		xprintf("Tc=%d\r\n", tc );
		xprintf("Tj=%d\r\n", tj );		
		
		xprintf("Imax=%dA\r\n", Imax );
		xprintf("\n\n");
		
		return tj;
}	


uint32_t check_channel_2()
{
		uint32_t iav = (((1000*Ic2/1373))) >> 7; 	// current mA
		uint32_t vav = (((1000*(Vd/1368))+500)/1000) >> 7; 	// voltage V
		uint32_t pav = vav*iav/100;
		
		uint32_t tc = temperature[1];
		uint32_t tj = tc + 22*pav/100;

		Imax = (((150-tc)*1000)/22/vav + 5)/10;					
	/*
		if (tj < 45) coll_pwm_set(1500);
		if (tj > 50) coll_pwm_set(20);
		if (tj > 150) {
			fAlarm = 1;
		}
		else if(tj < 40){
			fAlarm = 0;
		}
		*/
		/*
		if(iav > Imax){
			fDerating = 1;
		}else {
			fDerating = 0;
		}*/
		xprintf("****CHANNEL 2***********\n");
		xprintf("Id=%dmA\r\n", iav*10);
		xprintf("Vd=%dV\r\n", vav);
		xprintf("P=%dW\r\n", pav);

		xprintf("Tc=%d\r\n", tc );
		xprintf("Tj=%d\r\n", tj );		
		
		xprintf("Imax=%dA\r\n", Imax );
		xprintf("\n\n");
		
		return tj;
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
	adc_init();	
	dac_init();
	
	modbus_init();
	spi_master_init();
	i2c_init();
	
		
	xprintf("hello\r\n");
	
	/*// test adc
	while(1)
	{
		xprintf("ref=%d\r\n", 4095 - ADC1->DR);
		sleep(200);
	}
	*/
	
	// test dac 
	/*
		dac_offset_set(test_pwm);
		DAC->DHR12R1 = test_dac;
		sleep(100);
		*/
	
	register_tab[0] = 3;
	register_tab[1] = 3;
	register_tab[2] = 0;
	register_tab[3] = 0;
	coll_pwm_set(500);
	/*
	while(1)
	{
		
		//sleep(100);
		//uint32_t iav = (1000*(Ic+16*5)/155) >> 4; // current
		//display_out( (iav+500)/1000, 0);
		
		
		//coll_pwm_set(test_pwm);
		
		//set_attenuator(atten);
		//xprintf("v=%d\r\nKatt=%d\r\n", Vd/219, Katt);
		//xprintf("v=%d\r\nKatt=%d\r\n", Vd, Katt);
		
		
		//sleep(100);
		
		
		//TIM4->CCR1 = test_pwm;
		//DAC->DHR12R1 = test_dac;
		
		//TIM4->CCR2 = test_pwm;
		//DAC->DHR12R2 = test_dac;
						
		//TIM4->CCR2 = test_pwm;
		//DAC->DHR12R2 = test_dac;
		//sleep(100);
		
		//set_attenuator(0x00);
		//sleep(500);
		//set_attenuator(0xf8);
		//sleep(500);		
		
	}
	*/
	/*
	while(1)		 {
		 register_tab[0] = 0;
		 register_tab[1] = 0;
		 sleep(5);
		 register_tab[0] = 8;
		 register_tab[1] = 8;
		 sleep(5);				
		

	}*/

	//dac = (uint32_t)((0.253f+0.005)*100);
	float x = 0.253f;
	q31_t y;
	arm_float_to_q31(&x, &y, 1);	

	xprintf("test=%d\r\n", dac);
	while(1);


	while(1)
	{
		sleep(300);
		
		uint32_t tj1 = check_channel_1();
		uint32_t tj2 = check_channel_2();		
		uint32_t tj = (tj1>tj2)?tj1:tj2;

		if (tj < 45) coll_pwm_set(1500);
		if (tj > 50) coll_pwm_set(10);
		if (tj > 150) {
			fAlarm = 1;
		}
		else if(tj < 40){
			fAlarm = 0;
		}
		
		uint32_t m = (((1000*(Vd/1368))+50)/100) >> 7;
		uint32_t f = m%10;		
		display_out(m/10, f, 0);
		
		m = ((100*(Ic1)/1358)+(100*(Ic2)/1373)) >> 7;
		f = m%10;				
		display_out(m/10, f, 1);
	}	
}
