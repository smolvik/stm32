
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 3d 02 00 08 9d 02 00 08 9d 02 00 08     . . =...........
 8000010:	9d 02 00 08 9d 02 00 08 9d 02 00 08 00 00 00 00     ................
	...
 800002c:	9d 02 00 08 9d 02 00 08 00 00 00 00 9d 02 00 08     ................
 800003c:	21 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     !...............
 800004c:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 800005c:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 800006c:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 800007c:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 800008c:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 800009c:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 80000ac:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 80000bc:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 80000cc:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................
 80000dc:	9d 02 00 08 9d 02 00 08 9d 02 00 08 9d 02 00 08     ................

080000ec <SystemInit>:
 80000ec:	b480      	push	{r7}
 80000ee:	af00      	add	r7, sp, #0
 80000f0:	4b40      	ldr	r3, [pc, #256]	; (80001f4 <SystemInit+0x108>)
 80000f2:	4a40      	ldr	r2, [pc, #256]	; (80001f4 <SystemInit+0x108>)
 80000f4:	6812      	ldr	r2, [r2, #0]
 80000f6:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80000fa:	601a      	str	r2, [r3, #0]
 80000fc:	bf00      	nop
 80000fe:	4b3d      	ldr	r3, [pc, #244]	; (80001f4 <SystemInit+0x108>)
 8000100:	681b      	ldr	r3, [r3, #0]
 8000102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000106:	2b00      	cmp	r3, #0
 8000108:	d0f9      	beq.n	80000fe <SystemInit+0x12>
 800010a:	4b3a      	ldr	r3, [pc, #232]	; (80001f4 <SystemInit+0x108>)
 800010c:	4a39      	ldr	r2, [pc, #228]	; (80001f4 <SystemInit+0x108>)
 800010e:	6992      	ldr	r2, [r2, #24]
 8000110:	f042 0205 	orr.w	r2, r2, #5
 8000114:	619a      	str	r2, [r3, #24]
 8000116:	4b38      	ldr	r3, [pc, #224]	; (80001f8 <SystemInit+0x10c>)
 8000118:	4a37      	ldr	r2, [pc, #220]	; (80001f8 <SystemInit+0x10c>)
 800011a:	6852      	ldr	r2, [r2, #4]
 800011c:	f022 020f 	bic.w	r2, r2, #15
 8000120:	605a      	str	r2, [r3, #4]
 8000122:	4b35      	ldr	r3, [pc, #212]	; (80001f8 <SystemInit+0x10c>)
 8000124:	4a34      	ldr	r2, [pc, #208]	; (80001f8 <SystemInit+0x10c>)
 8000126:	6852      	ldr	r2, [r2, #4]
 8000128:	f042 020b 	orr.w	r2, r2, #11
 800012c:	605a      	str	r2, [r3, #4]
 800012e:	4b31      	ldr	r3, [pc, #196]	; (80001f4 <SystemInit+0x108>)
 8000130:	4a30      	ldr	r2, [pc, #192]	; (80001f4 <SystemInit+0x108>)
 8000132:	6852      	ldr	r2, [r2, #4]
 8000134:	f022 62e0 	bic.w	r2, r2, #117440512	; 0x7000000
 8000138:	605a      	str	r2, [r3, #4]
 800013a:	4b2e      	ldr	r3, [pc, #184]	; (80001f4 <SystemInit+0x108>)
 800013c:	4a2d      	ldr	r2, [pc, #180]	; (80001f4 <SystemInit+0x108>)
 800013e:	6852      	ldr	r2, [r2, #4]
 8000140:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8000144:	605a      	str	r2, [r3, #4]
 8000146:	4b2b      	ldr	r3, [pc, #172]	; (80001f4 <SystemInit+0x108>)
 8000148:	4a2a      	ldr	r2, [pc, #168]	; (80001f4 <SystemInit+0x108>)
 800014a:	6852      	ldr	r2, [r2, #4]
 800014c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000150:	605a      	str	r2, [r3, #4]
 8000152:	4b28      	ldr	r3, [pc, #160]	; (80001f4 <SystemInit+0x108>)
 8000154:	4a27      	ldr	r2, [pc, #156]	; (80001f4 <SystemInit+0x108>)
 8000156:	6852      	ldr	r2, [r2, #4]
 8000158:	f442 12e0 	orr.w	r2, r2, #1835008	; 0x1c0000
 800015c:	605a      	str	r2, [r3, #4]
 800015e:	4b25      	ldr	r3, [pc, #148]	; (80001f4 <SystemInit+0x108>)
 8000160:	4a24      	ldr	r2, [pc, #144]	; (80001f4 <SystemInit+0x108>)
 8000162:	6812      	ldr	r2, [r2, #0]
 8000164:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000168:	601a      	str	r2, [r3, #0]
 800016a:	bf00      	nop
 800016c:	4b21      	ldr	r3, [pc, #132]	; (80001f4 <SystemInit+0x108>)
 800016e:	681b      	ldr	r3, [r3, #0]
 8000170:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000174:	2b00      	cmp	r3, #0
 8000176:	d0f9      	beq.n	800016c <SystemInit+0x80>
 8000178:	4b20      	ldr	r3, [pc, #128]	; (80001fc <SystemInit+0x110>)
 800017a:	4a20      	ldr	r2, [pc, #128]	; (80001fc <SystemInit+0x110>)
 800017c:	6812      	ldr	r2, [r2, #0]
 800017e:	f042 0210 	orr.w	r2, r2, #16
 8000182:	601a      	str	r2, [r3, #0]
 8000184:	4b1d      	ldr	r3, [pc, #116]	; (80001fc <SystemInit+0x110>)
 8000186:	4a1d      	ldr	r2, [pc, #116]	; (80001fc <SystemInit+0x110>)
 8000188:	6812      	ldr	r2, [r2, #0]
 800018a:	f022 0203 	bic.w	r2, r2, #3
 800018e:	601a      	str	r2, [r3, #0]
 8000190:	4b1a      	ldr	r3, [pc, #104]	; (80001fc <SystemInit+0x110>)
 8000192:	4a1a      	ldr	r2, [pc, #104]	; (80001fc <SystemInit+0x110>)
 8000194:	6812      	ldr	r2, [r2, #0]
 8000196:	f042 0202 	orr.w	r2, r2, #2
 800019a:	601a      	str	r2, [r3, #0]
 800019c:	4b15      	ldr	r3, [pc, #84]	; (80001f4 <SystemInit+0x108>)
 800019e:	4a15      	ldr	r2, [pc, #84]	; (80001f4 <SystemInit+0x108>)
 80001a0:	6852      	ldr	r2, [r2, #4]
 80001a2:	f022 0203 	bic.w	r2, r2, #3
 80001a6:	605a      	str	r2, [r3, #4]
 80001a8:	4b12      	ldr	r3, [pc, #72]	; (80001f4 <SystemInit+0x108>)
 80001aa:	4a12      	ldr	r2, [pc, #72]	; (80001f4 <SystemInit+0x108>)
 80001ac:	6852      	ldr	r2, [r2, #4]
 80001ae:	f042 0202 	orr.w	r2, r2, #2
 80001b2:	605a      	str	r2, [r3, #4]
 80001b4:	bf00      	nop
 80001b6:	4b0f      	ldr	r3, [pc, #60]	; (80001f4 <SystemInit+0x108>)
 80001b8:	685b      	ldr	r3, [r3, #4]
 80001ba:	f003 030c 	and.w	r3, r3, #12
 80001be:	2b08      	cmp	r3, #8
 80001c0:	d1f9      	bne.n	80001b6 <SystemInit+0xca>
 80001c2:	4b0c      	ldr	r3, [pc, #48]	; (80001f4 <SystemInit+0x108>)
 80001c4:	4a0b      	ldr	r2, [pc, #44]	; (80001f4 <SystemInit+0x108>)
 80001c6:	6992      	ldr	r2, [r2, #24]
 80001c8:	f042 0210 	orr.w	r2, r2, #16
 80001cc:	619a      	str	r2, [r3, #24]
 80001ce:	4b0c      	ldr	r3, [pc, #48]	; (8000200 <SystemInit+0x114>)
 80001d0:	4a0c      	ldr	r2, [pc, #48]	; (8000204 <SystemInit+0x118>)
 80001d2:	605a      	str	r2, [r3, #4]
 80001d4:	4b0a      	ldr	r3, [pc, #40]	; (8000200 <SystemInit+0x114>)
 80001d6:	2200      	movs	r2, #0
 80001d8:	609a      	str	r2, [r3, #8]
 80001da:	4b09      	ldr	r3, [pc, #36]	; (8000200 <SystemInit+0x114>)
 80001dc:	2203      	movs	r2, #3
 80001de:	601a      	str	r2, [r3, #0]
 80001e0:	4b09      	ldr	r3, [pc, #36]	; (8000208 <SystemInit+0x11c>)
 80001e2:	4a09      	ldr	r2, [pc, #36]	; (8000208 <SystemInit+0x11c>)
 80001e4:	6852      	ldr	r2, [r2, #4]
 80001e6:	f442 1240 	orr.w	r2, r2, #3145728	; 0x300000
 80001ea:	605a      	str	r2, [r3, #4]
 80001ec:	46bd      	mov	sp, r7
 80001ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80001f2:	4770      	bx	lr
 80001f4:	40021000 	.word	0x40021000
 80001f8:	40010800 	.word	0x40010800
 80001fc:	40022000 	.word	0x40022000
 8000200:	e000e010 	.word	0xe000e010
 8000204:	0089543f 	.word	0x0089543f
 8000208:	40011000 	.word	0x40011000

0800020c <main>:
 800020c:	b580      	push	{r7, lr}
 800020e:	b082      	sub	sp, #8
 8000210:	af00      	add	r7, sp, #0
 8000212:	f06f 030d 	mvn.w	r3, #13
 8000216:	607b      	str	r3, [r7, #4]
 8000218:	f7ff ff68 	bl	80000ec <SystemInit>
 800021c:	e7fe      	b.n	800021c <main+0x10>
 800021e:	bf00      	nop

08000220 <SysTick_Handler>:
 8000220:	b480      	push	{r7}
 8000222:	af00      	add	r7, sp, #0
 8000224:	4b04      	ldr	r3, [pc, #16]	; (8000238 <SysTick_Handler+0x18>)
 8000226:	4a04      	ldr	r2, [pc, #16]	; (8000238 <SysTick_Handler+0x18>)
 8000228:	68d2      	ldr	r2, [r2, #12]
 800022a:	f482 5200 	eor.w	r2, r2, #8192	; 0x2000
 800022e:	60da      	str	r2, [r3, #12]
 8000230:	46bd      	mov	sp, r7
 8000232:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000236:	4770      	bx	lr
 8000238:	40011000 	.word	0x40011000

0800023c <handler_reset>:
 800023c:	b580      	push	{r7, lr}
 800023e:	b082      	sub	sp, #8
 8000240:	af00      	add	r7, sp, #0
 8000242:	4b11      	ldr	r3, [pc, #68]	; (8000288 <handler_reset+0x4c>)
 8000244:	607b      	str	r3, [r7, #4]
 8000246:	4b11      	ldr	r3, [pc, #68]	; (800028c <handler_reset+0x50>)
 8000248:	603b      	str	r3, [r7, #0]
 800024a:	e007      	b.n	800025c <handler_reset+0x20>
 800024c:	683b      	ldr	r3, [r7, #0]
 800024e:	1d1a      	adds	r2, r3, #4
 8000250:	603a      	str	r2, [r7, #0]
 8000252:	687a      	ldr	r2, [r7, #4]
 8000254:	1d11      	adds	r1, r2, #4
 8000256:	6079      	str	r1, [r7, #4]
 8000258:	6812      	ldr	r2, [r2, #0]
 800025a:	601a      	str	r2, [r3, #0]
 800025c:	683a      	ldr	r2, [r7, #0]
 800025e:	4b0c      	ldr	r3, [pc, #48]	; (8000290 <handler_reset+0x54>)
 8000260:	429a      	cmp	r2, r3
 8000262:	d3f3      	bcc.n	800024c <handler_reset+0x10>
 8000264:	4b0b      	ldr	r3, [pc, #44]	; (8000294 <handler_reset+0x58>)
 8000266:	603b      	str	r3, [r7, #0]
 8000268:	e004      	b.n	8000274 <handler_reset+0x38>
 800026a:	683b      	ldr	r3, [r7, #0]
 800026c:	1d1a      	adds	r2, r3, #4
 800026e:	603a      	str	r2, [r7, #0]
 8000270:	2200      	movs	r2, #0
 8000272:	601a      	str	r2, [r3, #0]
 8000274:	683a      	ldr	r2, [r7, #0]
 8000276:	4b08      	ldr	r3, [pc, #32]	; (8000298 <handler_reset+0x5c>)
 8000278:	429a      	cmp	r2, r3
 800027a:	d3f6      	bcc.n	800026a <handler_reset+0x2e>
 800027c:	f7ff ffc6 	bl	800020c <main>
 8000280:	3708      	adds	r7, #8
 8000282:	46bd      	mov	sp, r7
 8000284:	bd80      	pop	{r7, pc}
 8000286:	bf00      	nop
 8000288:	080002a4 	.word	0x080002a4
 800028c:	20000000 	.word	0x20000000
 8000290:	20000000 	.word	0x20000000
 8000294:	20000000 	.word	0x20000000
 8000298:	20000000 	.word	0x20000000

0800029c <default_handler>:
 800029c:	b480      	push	{r7}
 800029e:	af00      	add	r7, sp, #0
 80002a0:	e7fe      	b.n	80002a0 <default_handler+0x4>
 80002a2:	bf00      	nop
