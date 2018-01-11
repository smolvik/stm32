##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = stm32f103c8.ld

CFLAGS  = -c -fno-common -O0 -g -mcpu=cortex-m3 -mthumb
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
CPFLAGS = -Obinary

all: main.bin

main.o: main.c
	$(CC) $(CFLAGS) -o main.o main.c

main.elf: main.o
	$(LD) $(LFLAGS) -o main.elf main.o

main.bin: main.elf
	$(CP) $(CPFLAGS) main.elf main.bin
	arm-none-eabi-objdump -d main.elf > main.s
clean:
	rm -rf *.o *.elf *.bin

write:
	../stlink/st-flash write main.bin 0x08000000
