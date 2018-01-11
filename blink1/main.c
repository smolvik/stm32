/*******************************
 * stm32 minimal example main.c
 *******************************/
 
/* memory and peripheral start addresses */
#define FLASH_BASE      0x08000000
#define SRAM_BASE       0x20000000
#define PERIPH_BASE     0x40000000

/* work out end of RAM address as initial stack pointer */
// STM32F103c8 has 20 Kbye of RAM
#define SRAM_SIZE       20*1024     
#define SRAM_END        (SRAM_BASE + SRAM_SIZE)

/* RCC peripheral addresses applicable to GPIOC */
#define RCC_BASE        (PERIPH_BASE + 0x21000)
#define RCC_CR   		(*(volatile unsigned long*)(RCC_BASE + 0x00))
#define RCC_CFGR   		(*(volatile unsigned long*)(RCC_BASE + 0x04))
#define RCC_APB2ENR     (*(volatile unsigned long*)(RCC_BASE + 0x18))

#define  RCC_CR_HSEON			(0x00010000)        /*!< External High Speed clock enable */
#define  RCC_CR_HSERDY			(0x00020000)        /*!< External High Speed clock ready flag */
#define  RCC_APB2ENR_IOPAEN		(0x00000004)         /*!< I/O port A clock enable */
#define  RCC_APB2ENR_AFIOEN		(0x00000001)         /*!< Alternate Function I/O clock enable */

/* GPIOA peripheral addresses */
#define GPIOA_BASE      (PERIPH_BASE + 0x10800)
#define GPIOA_CRL       (*(volatile unsigned long*)(GPIOA_BASE + 0x00))
#define GPIOA_CRH       (*(volatile unsigned long*)(GPIOA_BASE + 0x04))
#define GPIOA_BSRR      (*(volatile unsigned long*)(GPIOA_BASE + 0x10))
#define GPIOA_BRR       (*(volatile unsigned long*)(GPIOA_BASE + 0x14))

/* GPIOC peripheral addresses */
#define GPIOC_BASE      (PERIPH_BASE + 0x11000)
#define GPIOC_CRL       (*(volatile unsigned long*)(GPIOC_BASE + 0x00))
#define GPIOC_CRH       (*(volatile unsigned long*)(GPIOC_BASE + 0x04))
#define GPIOC_BSRR      (*(volatile unsigned long*)(GPIOC_BASE + 0x10))
#define GPIOC_BRR       (*(volatile unsigned long*)(GPIOC_BASE + 0x14))

#define  RCC_CFGR_MCO               (0x0F000000) 
#define  RCC_CFGR_MCO_NOCLOCK		(0x00000000)        /*!< No clock */
#define  RCC_CFGR_MCO_SYSCLK		(0x04000000)        /*!< System clock selected as MCO source */
#define  RCC_CFGR_MCO_HSI			(0x05000000)        /*!< HSI clock selected as MCO source */
#define  RCC_CFGR_MCO_HSE			(0x06000000)        /*!< HSE clock selected as MCO source */
#define  RCC_CFGR_MCO_PLLCLK_Div2	(0x07000000)        /*!< PLL clock divided by 2 selected as MCO source */
#define  RCC_CFGR_MCO_PLL2CLK		(0x08000000)        /*!< PLL2 clock selected as MCO source*/
#define  RCC_CFGR_MCO_PLL3CLK_Div2	(0x09000000)        /*!< PLL3 clock divided by 2 selected as MCO source*/
#define  RCC_CFGR_MCO_Ext_HSE		(0x0A000000)        /*!< XT1 external 3-25 MHz oscillator clock selected as MCO source */
#define  RCC_CFGR_MCO_PLL3CLK		(0x0B000000)        /*!< PLL3 clock */

#define  RCC_CFGR_PLLSRC            (0x00010000)        /*!< PLL entry clock source */
#define  RCC_CFGR_PLLMULL           (0x003C0000)        /*!< PLLMUL[3:0] bits (PLL multiplication factor) */
#define  RCC_CFGR_PLLMULL9          (0x001C0000)        /*!< PLL input clock * 9 */
#define  RCC_CFGR_PLLXTPRE          (0x00020000)        /*!< HSE divider for PLL entry */
#define  RCC_CFGR_PLLSRC_HSE        (0x00010000)        /*!< HSE clock selected as PLL entry clock source */

#define  RCC_CR_PLLON               (0x01000000)        /*!< PLL enable */
#define  RCC_CR_PLLRDY              (0x02000000)        /*!< PLL clock ready flag */

#define  RCC_CFGR_SW                (0x00000003)        /*!< SW[1:0] bits (System clock Switch) */
#define  RCC_CFGR_SW_HSI            (0x00000000)        /*!< HSI selected as system clock */
#define  RCC_CFGR_SW_HSE            (0x00000001)        /*!< HSE selected as system clock */
#define  RCC_CFGR_SW_PLL            (0x00000002)        /*!< PLL selected as system clock */

#define  RCC_CFGR_SWS               (0x0000000C)        /*!< SWS[1:0] bits (System Clock Switch Status) */
#define  RCC_CFGR_SWS_HSI           (0x00000000)        /*!< HSI oscillator used as system clock */
#define  RCC_CFGR_SWS_HSE           (0x00000004)        /*!< HSE oscillator used as system clock */
#define  RCC_CFGR_SWS_PLL           (0x00000008)        /*!< PLL used as system clock */

#define FLASH_ACR       (*(volatile unsigned long*)(0x40022000))

#define  FLASH_ACR_LATENCY                   (0x03)               /*!< LATENCY[2:0] bits (Latency) */
#define  FLASH_ACR_LATENCY_0                 (0x00)               /*!< Bit 0 */
#define  FLASH_ACR_LATENCY_1                 (0x01)               /*!< Bit 0 */
#define  FLASH_ACR_LATENCY_2                 (0x02)               /*!< Bit 1 */

#define  FLASH_ACR_HLFCYA                    (0x08)               /*!< Flash Half Cycle Access Enable */
#define  FLASH_ACR_PRFTBE                    (0x10)               /*!< Prefetch Buffer Enable */
#define  FLASH_ACR_PRFTBS                    (0x20)               /*!< Prefetch Buffer Status */
 
 
/* LED connected to PIN 13 of GPIOC */
#define LED_PIN         13
// output mode: push-pull + 50MHz
#define OUTPUT_MODE     (0x03) 

void SystemInit (void)
{
	/* Enable HSE */
	RCC_CR |= RCC_CR_HSEON;	
	while (!(RCC_CR & RCC_CR_HSERDY)) {};
		
	// setting PA8 for MCO	
	RCC_APB2ENR |= (RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN);
	GPIOA_CRH &= ~0x0f;
	GPIOA_CRH |= (0x08|0x03);
	RCC_CFGR &= ~RCC_CFGR_MCO; 
	//RCC_CFGR |= RCC_CFGR_MCO_SYSCLK;
	RCC_CFGR |= RCC_CFGR_MCO_PLLCLK_Div2; 
	
	// setting PLL
	RCC_CFGR &= ~((RCC_CFGR_PLLSRC|RCC_CFGR_PLLXTPRE|RCC_CFGR_PLLMULL));
	RCC_CFGR |= RCC_CFGR_PLLSRC_HSE; // Тактировать PLL от HSE (8 MHz).
	RCC_CFGR |= RCC_CFGR_PLLMULL9; // Умножать частоту на 9 (8*9=72 MHz).
	RCC_CR |= RCC_CR_PLLON; // Запустить PLL.
	while ((RCC_CR & RCC_CR_PLLRDY)==0) {} // Ожидание готовности PLL.

	FLASH_ACR |= FLASH_ACR_PRFTBE; // Enable Prefetch Buffer.
	FLASH_ACR &= ~FLASH_ACR_LATENCY; // Предочистка.
    FLASH_ACR |= FLASH_ACR_LATENCY_2; // Если 48< SystemCoreClock <= 72, пропускать 2 такта.	
    
    // switch system clocking 
    RCC_CFGR &=~RCC_CFGR_SW; // Очистить биты SW0, SW1.
	RCC_CFGR |= RCC_CFGR_SW_PLL; // Тактирование с выхода PLL.
	while ((RCC_CFGR&RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL) {} // Ожидание переключения на PLL     	
	
	 /* enable clock on GPIOC peripheral */
    RCC_APB2ENR |= 0x10;
    
	/* set LED pin output mode */
    //GPIOC_CRL |= OUTPUT_MODE << ((LED_PIN) << 2); // if pins 0 to 7
    GPIOC_CRH |= OUTPUT_MODE << ((LED_PIN-8) << 2); // if pins 8 to 15 	
}

/* user functions */
int main(void);
void delay(unsigned long count);

/* vector table */
unsigned long *vector_table[] __attribute__((section(".vector_table"))) =
{
    (unsigned long *)SRAM_END,   // initial stack pointer
    (unsigned long *)main        // main as Reset_Handler
};

int main()
{
	SystemInit();
	    
    while(1)
    {
        GPIOC_BSRR = 1<<LED_PIN;  // set LED pin high
        delay(1000000);
        GPIOC_BRR  = 1<<LED_PIN;  // set LED pin low
        delay(1000000);
    }
}

void delay(unsigned long count)
{
    while(count--);
}
