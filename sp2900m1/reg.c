/**********************************************************************
 * 
 * Regulator module
 * 
 *********************************************************************/
 
#include "stm32f4xx.h"
#include "modbus_rtu.h"
#include "arm_math.h"
#include "attenuator.h"
#include "gdef.h"

#define NCAB 1024

extern uint32_t fAlarm;
extern uint32_t fDerating;
extern uint32_t Imax;

//volatile uint16_t Voffset = 50;
volatile uint16_t Voffset = 0;   // 
volatile uint16_t Vsignal = 850;

volatile uint32_t temperature = 0;

uint32_t Ki = 50;
uint32_t Kp = 0;

volatile int32_t  Ir1 = 0; 
volatile int32_t  Ic1 = 0;

volatile uint32_t Vd = 0;
volatile int32_t  Error = 0;

void reg_init()
{
	req_ki = 50;  	// Ki
	req_kp = 0; 	// Kp
	
	req_curr = 1000;
	req_mode = 1;
}

// pi regulator for channel1
static __INLINE int32_t update_reg_ch1(int32_t e)
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

static __INLINE void reg_out_ch1(int32_t u)
{
	(u<0) && (u = 0);				
	TIM4->CCR1 = Voffset;
	DAC->DHR12R1 = u;
}

static __INLINE int32_t get_current_ch1()
{
#if MY_ADDRESS == 16
	return (4095 - (uint32_t)ADC1->DR)-683; // 16
#endif	
	
#if MY_ADDRESS == 17
	return (4095 - (uint32_t)ADC1->DR) - 684; // 17
#endif

#if MY_ADDRESS == 18
	return (4095 - (uint32_t)ADC1->DR) - 684; // 18
#endif	
}

static __INLINE  uint32_t get_voltage()
{

	uint32_t v = 4095 - (uint32_t)ADC3->DR;
	uint32_t vcode = v; 
					
	return vcode;
}

static __INLINE void update_vmeter(int32_t v)
{
	static int32_t vab[NCAB];
	static uint32_t vabi = 0;	
	
	Vd = Vd + v - vab[vabi];
	vab[vabi] = v;
	vabi = (vabi+1)&(NCAB-1);

}

static __INLINE void update_imeter_ch1(int32_t c)
{
	static int32_t cab[NCAB];
	static uint32_t cabi = 0;	
	
	Ic1 = Ic1 + c - cab[cabi];
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
		reg_out_ch1(u >> 13);
		Error = e;
		
		//GPIOA->ODR &= ~GPIO_ODR_ODR_7;		
}
