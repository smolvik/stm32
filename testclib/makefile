##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LIBPATH = ../STM32F4xx_DSP_StdPeriph_Lib_V1.7.0/Libraries/

LKR_SCRIPT = stm32f407vg.ld
FAMILY = STM32F40_41xxx
INCLUDES =  -I$(LIBPATH)CMSIS/Device/ST/STM32F4xx/Include/
INCLUDES +=	-I$(LIBPATH)CMSIS/Include/

CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -g -fno-exceptions 
CFLAGS  += -mcpu=cortex-m4 -mthumb -D$(FAMILY) $(INCLUDES) -DARM_MATH_CM4
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
LFLAGS += -Map=test.map
LFLAGS += -L$(LIBPATH)CMSIS/Lib/GCC/
LFLAGS += -L/usr/lib/arm-none-eabi/lib/armv7e-m/ -L/usr/lib/gcc/arm-none-eabi/4.8/armv7e-m/
LIBS = --start-group -lgcc -lm -larm_cortexM4l_math -lc --end-group
CPFLAGS = -Obinary
 
all: test.bin

crc.o: crc.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

modbus_rtu.o: modbus_rtu.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

cos_sin_tbl.o: cos_sin_tbl.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

dac.o: dac.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

adc.o: adc.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

xprintf.o: xprintf.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

startup.o: startup.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

system.o: system.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

uart.o: uart.c
	$(CC) $(CFLAGS) -O0 -o $@ $<
	
spi.o: spi.c
	$(CC) $(CFLAGS) -O0 -o $@ $<	

reg.o: reg.c
	$(CC) $(CFLAGS) -Ofast -o $@ $<	

i2c.o: i2c.c
	$(CC) $(CFLAGS) -O0 -o $@ $<	

attenuator.o: attenuator.c
	$(CC) $(CFLAGS) -O0 -o $@ $<	

apl602.o: apl602.c
	$(CC) $(CFLAGS) -O0 -o $@ $<	

stubs.o: stubs.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

main.o: main.c
	$(CC) $(CFLAGS) -O0 -o $@ $<

test.elf: main.o system.o startup.o uart.o xprintf.o adc.o dac.o cos_sin_tbl.o modbus_rtu.o crc.o spi.o reg.o i2c.o attenuator.o apl602.o stubs.o
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
