/***********************************************************************
 stm32f103c8 minimal example linker script
***********************************************************************/

/* memory layout for an STM32F103c8 */
MEMORY
{
    FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 64K
    SRAM (xrw)  : ORIGIN = 0x20000000, LENGTH = 20K
}

/* output sections */
SECTIONS
{
    /* program code into FLASH */
    .text :
    {
        *(.vector_table)    /* Vector table */
        *(.text)            /* Program code */
    } >FLASH
 
    /* uninitialized global and static variables (which
       we don't have any in this example) into SRAM */
    .data :
    {
        *(.data)           
    } >SRAM
} 
