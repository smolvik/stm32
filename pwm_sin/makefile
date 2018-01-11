##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy
GDB = arm-none-eabi-gdb

LIBPATH = ../STM32F10x_StdPeriph_Lib_V3.5.0/Libraries/

LKR_SCRIPT = stm32f103c8.ld
FAMILY = STM32F10X_MD
INCLUDES =  -I$(LIBPATH)CMSIS/CM3/DeviceSupport/ST/STM32F10x/
INCLUDES +=	-I$(LIBPATH)CMSIS/CM3/CoreSupport/ 
INCLUDES +=	-I$(LIBPATH)STM32F10x_StdPeriph_Driver/inc/

CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g 
CFLAGS  += -mcpu=cortex-m3 -mthumb -D$(FAMILY) $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
CPFLAGS = -Obinary

.PHONY: all clean write debug

all: test.bin

startup.o: startup.c
	$(CC) $(CFLAGS) -o $@ $<

cos_sin_tbl.o: cos_sin_tbl.c
	$(CC) $(CFLAGS) -o $@ $<
	
main.o: main.c
	$(CC) $(CFLAGS) -o $@ $<

test.elf: main.o startup.o cos_sin_tbl.o
	$(LD) $(LFLAGS) -o $@ $^

test.bin: test.elf
	$(CP) $(CPFLAGS) $< $@
	arm-none-eabi-objdump -d test.elf > test.s
clean:
	rm -rf *.o *.elf *.bin

write:
	../stlink/st-flash write test.bin 0x08000000
debug:
	$(GDB) -ex "target remote localhost:4242" test.elf

