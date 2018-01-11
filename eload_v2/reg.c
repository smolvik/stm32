/**********************************************************************
 * 
 * Regulator module
 * 
 *********************************************************************/
 
#include "stm32f4xx.h"
#include "modbus_rtu.h"

#define NCAB 128

extern uint32_t fAlarm;
extern uint32_t fDerating;
extern uint32_t Imax;

//volatile uint16_t Voffset = 50;
volatile uint16_t Voffset = 0;   // 
volatile uint16_t Vsignal = 850;

uint32_t temperature[2] = {0,0};

int32_t  Ki = 200;
int32_t  Kp = 100;

int32_t  Ir = 1550; //2.5A
int32_t  Ir1 = 0; 
int32_t  Ir2 = 0;

int32_t  Ic1;
int32_t  Ic2;

uint32_t Rp = 100;

uint32_t Vd = 0;
int32_t  Error = 0;
int32_t Katt = 0;

// pi regulator for channel1
int32_t update_reg_ch1(int32_t e)
{
	int32_t acur = 0;
	static int32_t apre = 0;
	int32_t u = 0;
		
	acur = apre + e*Ki;
	
	(acur > 1000000000) && (acur = 1000000000);
	(acur < -1000000000) && (acur = -1000000000);
	
	u = acur + Kp*e;
	apre = acur;
	
	return u;
}

// pi regulator for channel2
int32_t update_reg_ch2(int32_t e)
{
	int32_t acur = 0;
	static int32_t apre = 0;
	int32_t u = 0;
		
	acur = apre + e*Ki;
	
	(acur > 1000000000) && (acur = 1000000000);
	(acur < -1000000000) && (acur = -1000000000);
	
	u = acur + Kp*e;
	apre = acur;
	
	return u;
}

void fet_down()
{
	DAC->DHR12R2 = 4000;
	DAC->DHR12R1 = 0;
}

void reg_out_ch1(int32_t u)
{
	// set offset
	dac_offset_set(Voffset);
	// set signal
	DAC->DHR12R1 = u;
}

int32_t get_current_ch1()
{
	return (4095 - (uint32_t)ADC1->DR);
}

int32_t get_current_ch2()
{
	return (4095 - (uint32_t)ADC2->DR);
}

uint32_t get_voltage()
{
	uint32_t v = (uint32_t)ADC3->DR;
	uint32_t vcode = v << Katt;
	static uint32_t catt = 0;
	
	if(((catt++) & 0xff) == 0)
	{
		(v < 1500) && (Katt--);
		(v > 4000) && (Katt++);
		(Katt > 8) && (Katt = 8);
		(Katt < 0) && (Katt = 0);
		
		uint32_t b = GPIOD->ODR & 0xff00;
		b |= 0xff & (0xff << Katt);
		GPIOD->ODR = b;		
	}
	
	//register_tab[2] = (uint16_t)Katt;
	//register_tab[2] = (uint16_t)v;
					
	return vcode;			
}

void update_vmeter(int32_t v)
{
	static int32_t vab[NCAB];
	static uint32_t vabi = 0;	
	
	Vd = Vd + v - vab[vabi];
	vab[vabi] = v;
	vabi = (vabi+1)&(NCAB-1);
	
	if(fAlarm){
		GPIOE->ODR |= GPIO_ODR_ODR_7;
		GPIOE->ODR |= GPIO_ODR_ODR_8;
		Ir1 = 0;
		Ir2 = 0;
	}else{
		// check voltage	
		if(Vd < 65000 ){
			GPIOE->ODR |= GPIO_ODR_ODR_7;
			GPIOE->ODR |= GPIO_ODR_ODR_8;
			Ir1 = 0;
			Ir2 = 0;
		}
		else if(Vd > 80000 ){
			GPIOE->ODR &= ~GPIO_ODR_ODR_7;
			GPIOE->ODR &= ~GPIO_ODR_ODR_8;
			
			if(register_tab[2] == 0){				
				// currrent mode
				Ir1 = register_tab[0]*135 + (register_tab[0] >> 1) + (register_tab[0] >> 2);
			}
			else{				
				// resistanse mode
				Ir1 = (v/register_tab[2]/10);
			}
			
			if(register_tab[3] == 0){
				// currrent mode
				Ir2 = register_tab[1]*137 + (register_tab[1] >> 1) + (register_tab[1] >> 2);
			}
			else{				
				// resistanse mode
				Ir2 = (v/register_tab[3]/10);
			}			
			
			
			if(fDerating) {
				Ir1 = Imax*135 + (Imax >> 1) + (Imax >> 2);
				Ir2 = Imax*137 + (Imax >> 1) + (Imax >> 2);
			}			
		}
	}							
}

void update_imeter_ch1(int32_t c)
{
	static int32_t cab[NCAB];
	static uint32_t cabi = 0;	
	
	Ic1 = Ic1 + c - cab[cabi];
	cab[cabi] = c;
	cabi = (cabi+1)&(NCAB-1);			
}

void update_imeter_ch2(int32_t c)
{
	static int32_t cab[NCAB];
	static uint32_t cabi = 0;	
	
	Ic2 = Ic2 + c - cab[cabi];
	cab[cabi] = c;
	cabi = (cabi+1)&(NCAB-1);			
}

void ADC_IRQHandler(void)
{
		int32_t e;
		int32_t u;
		
		int32_t c;		
		int32_t v;
		
		//GPIOA->ODR |= GPIO_ODR_ODR_7;
						
		v = get_voltage();
		update_vmeter(v);		
		
		// channel 1
		c = get_current_ch1();		
		update_imeter_ch1(c);
		e = Ir1 - c;
		u = update_reg_ch1(e);
						
		(u<0) && (u = 0);				
		TIM4->CCR1 = Voffset;
		DAC->DHR12R1 = u >> 10;

		// channel 2
		c = get_current_ch2();
		update_imeter_ch2(c);		
		e = Ir2 - c;
		u = update_reg_ch2(e);
				
		(u<0) && (u = 0);		
		TIM4->CCR2 = Voffset;
		DAC->DHR12R2 = u >> 10;


	
/*
		TIM4->CCR2 = Voffset;
		DAC->DHR12R2 = 0;

		TIM4->CCR1 = Voffset;
		DAC->DHR12R1 = 0;
*/
		
		//GPIOA->ODR &= ~GPIO_ODR_ODR_7;		

}
