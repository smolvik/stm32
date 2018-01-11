
main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vector_table>:
 8000000:	00 50 00 20 25 01 00 08                             .P. %...

08000008 <SystemInit>:
 8000008:	b480      	push	{r7}
 800000a:	af00      	add	r7, sp, #0
 800000c:	4a3f      	ldr	r2, [pc, #252]	; (800010c <SystemInit+0x104>)
 800000e:	4b3f      	ldr	r3, [pc, #252]	; (800010c <SystemInit+0x104>)
 8000010:	681b      	ldr	r3, [r3, #0]
 8000012:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000016:	6013      	str	r3, [r2, #0]
 8000018:	bf00      	nop
 800001a:	4b3c      	ldr	r3, [pc, #240]	; (800010c <SystemInit+0x104>)
 800001c:	681b      	ldr	r3, [r3, #0]
 800001e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000022:	2b00      	cmp	r3, #0
 8000024:	d0f9      	beq.n	800001a <SystemInit+0x12>
 8000026:	4a3a      	ldr	r2, [pc, #232]	; (8000110 <SystemInit+0x108>)
 8000028:	4b39      	ldr	r3, [pc, #228]	; (8000110 <SystemInit+0x108>)
 800002a:	681b      	ldr	r3, [r3, #0]
 800002c:	f043 0305 	orr.w	r3, r3, #5
 8000030:	6013      	str	r3, [r2, #0]
 8000032:	4a38      	ldr	r2, [pc, #224]	; (8000114 <SystemInit+0x10c>)
 8000034:	4b37      	ldr	r3, [pc, #220]	; (8000114 <SystemInit+0x10c>)
 8000036:	681b      	ldr	r3, [r3, #0]
 8000038:	f023 030f 	bic.w	r3, r3, #15
 800003c:	6013      	str	r3, [r2, #0]
 800003e:	4a35      	ldr	r2, [pc, #212]	; (8000114 <SystemInit+0x10c>)
 8000040:	4b34      	ldr	r3, [pc, #208]	; (8000114 <SystemInit+0x10c>)
 8000042:	681b      	ldr	r3, [r3, #0]
 8000044:	f043 030b 	orr.w	r3, r3, #11
 8000048:	6013      	str	r3, [r2, #0]
 800004a:	4a33      	ldr	r2, [pc, #204]	; (8000118 <SystemInit+0x110>)
 800004c:	4b32      	ldr	r3, [pc, #200]	; (8000118 <SystemInit+0x110>)
 800004e:	681b      	ldr	r3, [r3, #0]
 8000050:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 8000054:	6013      	str	r3, [r2, #0]
 8000056:	4a30      	ldr	r2, [pc, #192]	; (8000118 <SystemInit+0x110>)
 8000058:	4b2f      	ldr	r3, [pc, #188]	; (8000118 <SystemInit+0x110>)
 800005a:	681b      	ldr	r3, [r3, #0]
 800005c:	f043 63e0 	orr.w	r3, r3, #117440512	; 0x7000000
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4a2d      	ldr	r2, [pc, #180]	; (8000118 <SystemInit+0x110>)
 8000064:	4b2c      	ldr	r3, [pc, #176]	; (8000118 <SystemInit+0x110>)
 8000066:	681b      	ldr	r3, [r3, #0]
 8000068:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 800006c:	6013      	str	r3, [r2, #0]
 800006e:	4a2a      	ldr	r2, [pc, #168]	; (8000118 <SystemInit+0x110>)
 8000070:	4b29      	ldr	r3, [pc, #164]	; (8000118 <SystemInit+0x110>)
 8000072:	681b      	ldr	r3, [r3, #0]
 8000074:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000078:	6013      	str	r3, [r2, #0]
 800007a:	4a27      	ldr	r2, [pc, #156]	; (8000118 <SystemInit+0x110>)
 800007c:	4b26      	ldr	r3, [pc, #152]	; (8000118 <SystemInit+0x110>)
 800007e:	681b      	ldr	r3, [r3, #0]
 8000080:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 8000084:	6013      	str	r3, [r2, #0]
 8000086:	4a21      	ldr	r2, [pc, #132]	; (800010c <SystemInit+0x104>)
 8000088:	4b20      	ldr	r3, [pc, #128]	; (800010c <SystemInit+0x104>)
 800008a:	681b      	ldr	r3, [r3, #0]
 800008c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000090:	6013      	str	r3, [r2, #0]
 8000092:	bf00      	nop
 8000094:	4b1d      	ldr	r3, [pc, #116]	; (800010c <SystemInit+0x104>)
 8000096:	681b      	ldr	r3, [r3, #0]
 8000098:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800009c:	2b00      	cmp	r3, #0
 800009e:	d0f9      	beq.n	8000094 <SystemInit+0x8c>
 80000a0:	4a1e      	ldr	r2, [pc, #120]	; (800011c <SystemInit+0x114>)
 80000a2:	4b1e      	ldr	r3, [pc, #120]	; (800011c <SystemInit+0x114>)
 80000a4:	681b      	ldr	r3, [r3, #0]
 80000a6:	f043 0310 	orr.w	r3, r3, #16
 80000aa:	6013      	str	r3, [r2, #0]
 80000ac:	4a1b      	ldr	r2, [pc, #108]	; (800011c <SystemInit+0x114>)
 80000ae:	4b1b      	ldr	r3, [pc, #108]	; (800011c <SystemInit+0x114>)
 80000b0:	681b      	ldr	r3, [r3, #0]
 80000b2:	f023 0303 	bic.w	r3, r3, #3
 80000b6:	6013      	str	r3, [r2, #0]
 80000b8:	4a18      	ldr	r2, [pc, #96]	; (800011c <SystemInit+0x114>)
 80000ba:	4b18      	ldr	r3, [pc, #96]	; (800011c <SystemInit+0x114>)
 80000bc:	681b      	ldr	r3, [r3, #0]
 80000be:	f043 0302 	orr.w	r3, r3, #2
 80000c2:	6013      	str	r3, [r2, #0]
 80000c4:	4a14      	ldr	r2, [pc, #80]	; (8000118 <SystemInit+0x110>)
 80000c6:	4b14      	ldr	r3, [pc, #80]	; (8000118 <SystemInit+0x110>)
 80000c8:	681b      	ldr	r3, [r3, #0]
 80000ca:	f023 0303 	bic.w	r3, r3, #3
 80000ce:	6013      	str	r3, [r2, #0]
 80000d0:	4a11      	ldr	r2, [pc, #68]	; (8000118 <SystemInit+0x110>)
 80000d2:	4b11      	ldr	r3, [pc, #68]	; (8000118 <SystemInit+0x110>)
 80000d4:	681b      	ldr	r3, [r3, #0]
 80000d6:	f043 0302 	orr.w	r3, r3, #2
 80000da:	6013      	str	r3, [r2, #0]
 80000dc:	bf00      	nop
 80000de:	4b0e      	ldr	r3, [pc, #56]	; (8000118 <SystemInit+0x110>)
 80000e0:	681b      	ldr	r3, [r3, #0]
 80000e2:	f003 030c 	and.w	r3, r3, #12
 80000e6:	2b08      	cmp	r3, #8
 80000e8:	d1f9      	bne.n	80000de <SystemInit+0xd6>
 80000ea:	4a09      	ldr	r2, [pc, #36]	; (8000110 <SystemInit+0x108>)
 80000ec:	4b08      	ldr	r3, [pc, #32]	; (8000110 <SystemInit+0x108>)
 80000ee:	681b      	ldr	r3, [r3, #0]
 80000f0:	f043 0310 	orr.w	r3, r3, #16
 80000f4:	6013      	str	r3, [r2, #0]
 80000f6:	4a0a      	ldr	r2, [pc, #40]	; (8000120 <SystemInit+0x118>)
 80000f8:	4b09      	ldr	r3, [pc, #36]	; (8000120 <SystemInit+0x118>)
 80000fa:	681b      	ldr	r3, [r3, #0]
 80000fc:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8000100:	6013      	str	r3, [r2, #0]
 8000102:	bf00      	nop
 8000104:	46bd      	mov	sp, r7
 8000106:	bc80      	pop	{r7}
 8000108:	4770      	bx	lr
 800010a:	bf00      	nop
 800010c:	40021000 	.word	0x40021000
 8000110:	40021018 	.word	0x40021018
 8000114:	40010804 	.word	0x40010804
 8000118:	40021004 	.word	0x40021004
 800011c:	40022000 	.word	0x40022000
 8000120:	40011004 	.word	0x40011004

08000124 <main>:
 8000124:	b580      	push	{r7, lr}
 8000126:	af00      	add	r7, sp, #0
 8000128:	f7ff ff6e 	bl	8000008 <SystemInit>
 800012c:	4b07      	ldr	r3, [pc, #28]	; (800014c <main+0x28>)
 800012e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000132:	601a      	str	r2, [r3, #0]
 8000134:	4806      	ldr	r0, [pc, #24]	; (8000150 <main+0x2c>)
 8000136:	f000 f80f 	bl	8000158 <delay>
 800013a:	4b06      	ldr	r3, [pc, #24]	; (8000154 <main+0x30>)
 800013c:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000140:	601a      	str	r2, [r3, #0]
 8000142:	4803      	ldr	r0, [pc, #12]	; (8000150 <main+0x2c>)
 8000144:	f000 f808 	bl	8000158 <delay>
 8000148:	e7f0      	b.n	800012c <main+0x8>
 800014a:	bf00      	nop
 800014c:	40011010 	.word	0x40011010
 8000150:	000f4240 	.word	0x000f4240
 8000154:	40011014 	.word	0x40011014

08000158 <delay>:
 8000158:	b480      	push	{r7}
 800015a:	b083      	sub	sp, #12
 800015c:	af00      	add	r7, sp, #0
 800015e:	6078      	str	r0, [r7, #4]
 8000160:	bf00      	nop
 8000162:	687b      	ldr	r3, [r7, #4]
 8000164:	1e5a      	subs	r2, r3, #1
 8000166:	607a      	str	r2, [r7, #4]
 8000168:	2b00      	cmp	r3, #0
 800016a:	d1fa      	bne.n	8000162 <delay+0xa>
 800016c:	bf00      	nop
 800016e:	370c      	adds	r7, #12
 8000170:	46bd      	mov	sp, r7
 8000172:	bc80      	pop	{r7}
 8000174:	4770      	bx	lr
 8000176:	bf00      	nop
