##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LIBPATH = ../STM32F4xx_DSP_StdPeriph_Lib_V1.7.1/Libraries/

LKR_SCRIPT = stm32f407vg.ld
FAMILY = STM32F40_41xxx
INCLUDES =  -I$(LIBPATH)CMSIS/Device/ST/STM32F4xx/Include/
INCLUDES +=	-I$(LIBPATH)CMSIS/Include/

CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g 
CFLAGS  += -mcpu=cortex-m4 -mthumb -D$(FAMILY) $(INCLUDES) -DARM_MATH_CM4
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
LFLAGS += -Map=test.map
LFLAGS += -L$(LIBPATH)CMSIS/Lib/GCC/ 
LFLAGS += -L/usr/lib/arm-none-eabi/lib/armv7e-m/ -L/usr/lib/gcc/arm-none-eabi/4.8/armv7e-m/
LIBS = --start-group -lgcc -lm -larm_cortexM4l_math --end-group
CPFLAGS = -Obinary

#CFLAGS  = -c -fno-common -fno-builtin -ffreestanding -O0 -g
#CFLAGS  += -mcpu=cortex-m3 -mthumb -D$(FAMILY) $(INCLUDES) -mfloat-abi=soft
#LFLAGS  = -nostartfiles -nodefaultlibs -nostdlib -T$(LKR_SCRIPT)
#LFLAGS  += -L/usr/lib/arm-none-eabi/lib/armv7e-m/ -L/usr/lib/gcc/arm-none-eabi/4.8/armv7e-m/
#LIBS = --start-group -lgcc -lm --end-group
#CPFLAGS = -Obinary

all: test.bin

crc.o: crc.c
	$(CC) $(CFLAGS) -o $@ $<

modbus_rtu.o: modbus_rtu.c
	$(CC) $(CFLAGS) -o $@ $<

cos_sin_tbl.o: cos_sin_tbl.c
	$(CC) $(CFLAGS) -o $@ $<

dac.o: dac.c
	$(CC) $(CFLAGS) -o $@ $<

adc.o: adc.c
	$(CC) $(CFLAGS) -o $@ $<

xprintf.o: xprintf.c
	$(CC) $(CFLAGS) -o $@ $<

startup.o: startup.c
	$(CC) $(CFLAGS) -o $@ $<

system.o: system.c
	$(CC) $(CFLAGS) -o $@ $<

uart.o: uart.c
	$(CC) $(CFLAGS) -o $@ $<
	
spi.o: spi.c
	$(CC) $(CFLAGS) -o $@ $<	

reg.o: reg.c
	$(CC) $(CFLAGS) -o $@ $<	

i2c.o: i2c.c
	$(CC) $(CFLAGS) -o $@ $<	

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $<

test.elf: main.o system.o startup.o uart.o xprintf.o adc.o dac.o cos_sin_tbl.o modbus_rtu.o crc.o spi.o reg.o i2c.o
	$(LD) $(LFLAGS) -o $@ $^ $(LIBS)

test.bin: test.elf
	$(CP) $(CPFLAGS) $< $@
	arm-none-eabi-objdump -d test.elf > test.s
clean:
	rm -rf *.o *.elf *.bin

write:
	../stlink/st-flash write test.bin 0x08000000
debug:
	arm-none-eabi-gdb -ex "target remote localhost:4242" test.elf

