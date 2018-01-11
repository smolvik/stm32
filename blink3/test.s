
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 dd 02 00 08 3d 03 00 08 3d 03 00 08     . . ....=...=...
 8000010:	3d 03 00 08 3d 03 00 08 3d 03 00 08 00 00 00 00     =...=...=.......
	...
 800002c:	3d 03 00 08 3d 03 00 08 00 00 00 00 3d 03 00 08     =...=.......=...
 800003c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 800004c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 800005c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 800006c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 800007c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 800008c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 800009c:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 80000ac:	3d 03 00 08 6d 02 00 08 3d 03 00 08 3d 03 00 08     =...m...=...=...
 80000bc:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 80000cc:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...
 80000dc:	3d 03 00 08 3d 03 00 08 3d 03 00 08 3d 03 00 08     =...=...=...=...

080000ec <NVIC_EnableIRQ>:
 80000ec:	b480      	push	{r7}
 80000ee:	b083      	sub	sp, #12
 80000f0:	af00      	add	r7, sp, #0
 80000f2:	4603      	mov	r3, r0
 80000f4:	71fb      	strb	r3, [r7, #7]
 80000f6:	4b08      	ldr	r3, [pc, #32]	; (8000118 <NVIC_EnableIRQ+0x2c>)
 80000f8:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80000fc:	0952      	lsrs	r2, r2, #5
 80000fe:	79f9      	ldrb	r1, [r7, #7]
 8000100:	f001 011f 	and.w	r1, r1, #31
 8000104:	2001      	movs	r0, #1
 8000106:	fa00 f101 	lsl.w	r1, r0, r1
 800010a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800010e:	370c      	adds	r7, #12
 8000110:	46bd      	mov	sp, r7
 8000112:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000116:	4770      	bx	lr
 8000118:	e000e100 	.word	0xe000e100

0800011c <SystemInit>:
 800011c:	b580      	push	{r7, lr}
 800011e:	af00      	add	r7, sp, #0
 8000120:	4b4c      	ldr	r3, [pc, #304]	; (8000254 <SystemInit+0x138>)
 8000122:	4a4c      	ldr	r2, [pc, #304]	; (8000254 <SystemInit+0x138>)
 8000124:	6812      	ldr	r2, [r2, #0]
 8000126:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800012a:	601a      	str	r2, [r3, #0]
 800012c:	bf00      	nop
 800012e:	4b49      	ldr	r3, [pc, #292]	; (8000254 <SystemInit+0x138>)
 8000130:	681b      	ldr	r3, [r3, #0]
 8000132:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000136:	2b00      	cmp	r3, #0
 8000138:	d0f9      	beq.n	800012e <SystemInit+0x12>
 800013a:	4b46      	ldr	r3, [pc, #280]	; (8000254 <SystemInit+0x138>)
 800013c:	4a45      	ldr	r2, [pc, #276]	; (8000254 <SystemInit+0x138>)
 800013e:	6852      	ldr	r2, [r2, #4]
 8000140:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8000144:	605a      	str	r2, [r3, #4]
 8000146:	4b43      	ldr	r3, [pc, #268]	; (8000254 <SystemInit+0x138>)
 8000148:	4a42      	ldr	r2, [pc, #264]	; (8000254 <SystemInit+0x138>)
 800014a:	6852      	ldr	r2, [r2, #4]
 800014c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000150:	605a      	str	r2, [r3, #4]
 8000152:	4b40      	ldr	r3, [pc, #256]	; (8000254 <SystemInit+0x138>)
 8000154:	4a3f      	ldr	r2, [pc, #252]	; (8000254 <SystemInit+0x138>)
 8000156:	6852      	ldr	r2, [r2, #4]
 8000158:	f442 12e0 	orr.w	r2, r2, #1835008	; 0x1c0000
 800015c:	605a      	str	r2, [r3, #4]
 800015e:	4b3d      	ldr	r3, [pc, #244]	; (8000254 <SystemInit+0x138>)
 8000160:	4a3c      	ldr	r2, [pc, #240]	; (8000254 <SystemInit+0x138>)
 8000162:	6812      	ldr	r2, [r2, #0]
 8000164:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000168:	601a      	str	r2, [r3, #0]
 800016a:	bf00      	nop
 800016c:	4b39      	ldr	r3, [pc, #228]	; (8000254 <SystemInit+0x138>)
 800016e:	681b      	ldr	r3, [r3, #0]
 8000170:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000174:	2b00      	cmp	r3, #0
 8000176:	d0f9      	beq.n	800016c <SystemInit+0x50>
 8000178:	4b37      	ldr	r3, [pc, #220]	; (8000258 <SystemInit+0x13c>)
 800017a:	4a37      	ldr	r2, [pc, #220]	; (8000258 <SystemInit+0x13c>)
 800017c:	6812      	ldr	r2, [r2, #0]
 800017e:	f042 0210 	orr.w	r2, r2, #16
 8000182:	601a      	str	r2, [r3, #0]
 8000184:	4b34      	ldr	r3, [pc, #208]	; (8000258 <SystemInit+0x13c>)
 8000186:	4a34      	ldr	r2, [pc, #208]	; (8000258 <SystemInit+0x13c>)
 8000188:	6812      	ldr	r2, [r2, #0]
 800018a:	f022 0203 	bic.w	r2, r2, #3
 800018e:	601a      	str	r2, [r3, #0]
 8000190:	4b31      	ldr	r3, [pc, #196]	; (8000258 <SystemInit+0x13c>)
 8000192:	4a31      	ldr	r2, [pc, #196]	; (8000258 <SystemInit+0x13c>)
 8000194:	6812      	ldr	r2, [r2, #0]
 8000196:	f042 0202 	orr.w	r2, r2, #2
 800019a:	601a      	str	r2, [r3, #0]
 800019c:	4b2d      	ldr	r3, [pc, #180]	; (8000254 <SystemInit+0x138>)
 800019e:	4a2d      	ldr	r2, [pc, #180]	; (8000254 <SystemInit+0x138>)
 80001a0:	6852      	ldr	r2, [r2, #4]
 80001a2:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80001a6:	605a      	str	r2, [r3, #4]
 80001a8:	4b2a      	ldr	r3, [pc, #168]	; (8000254 <SystemInit+0x138>)
 80001aa:	4a2a      	ldr	r2, [pc, #168]	; (8000254 <SystemInit+0x138>)
 80001ac:	6852      	ldr	r2, [r2, #4]
 80001ae:	f022 0203 	bic.w	r2, r2, #3
 80001b2:	605a      	str	r2, [r3, #4]
 80001b4:	4b27      	ldr	r3, [pc, #156]	; (8000254 <SystemInit+0x138>)
 80001b6:	4a27      	ldr	r2, [pc, #156]	; (8000254 <SystemInit+0x138>)
 80001b8:	6852      	ldr	r2, [r2, #4]
 80001ba:	f042 0202 	orr.w	r2, r2, #2
 80001be:	605a      	str	r2, [r3, #4]
 80001c0:	bf00      	nop
 80001c2:	4b24      	ldr	r3, [pc, #144]	; (8000254 <SystemInit+0x138>)
 80001c4:	685b      	ldr	r3, [r3, #4]
 80001c6:	f003 030c 	and.w	r3, r3, #12
 80001ca:	2b08      	cmp	r3, #8
 80001cc:	d1f9      	bne.n	80001c2 <SystemInit+0xa6>
 80001ce:	4b21      	ldr	r3, [pc, #132]	; (8000254 <SystemInit+0x138>)
 80001d0:	4a20      	ldr	r2, [pc, #128]	; (8000254 <SystemInit+0x138>)
 80001d2:	6992      	ldr	r2, [r2, #24]
 80001d4:	f042 0210 	orr.w	r2, r2, #16
 80001d8:	619a      	str	r2, [r3, #24]
 80001da:	4b20      	ldr	r3, [pc, #128]	; (800025c <SystemInit+0x140>)
 80001dc:	4a1f      	ldr	r2, [pc, #124]	; (800025c <SystemInit+0x140>)
 80001de:	6852      	ldr	r2, [r2, #4]
 80001e0:	f442 1240 	orr.w	r2, r2, #3145728	; 0x300000
 80001e4:	605a      	str	r2, [r3, #4]
 80001e6:	4b1b      	ldr	r3, [pc, #108]	; (8000254 <SystemInit+0x138>)
 80001e8:	4a1a      	ldr	r2, [pc, #104]	; (8000254 <SystemInit+0x138>)
 80001ea:	69d2      	ldr	r2, [r2, #28]
 80001ec:	f042 0201 	orr.w	r2, r2, #1
 80001f0:	61da      	str	r2, [r3, #28]
 80001f2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80001f6:	f648 429f 	movw	r2, #35999	; 0x8c9f
 80001fa:	851a      	strh	r2, [r3, #40]	; 0x28
 80001fc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000200:	f640 32b8 	movw	r2, #3000	; 0xbb8
 8000204:	859a      	strh	r2, [r3, #44]	; 0x2c
 8000206:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800020a:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 800020e:	869a      	strh	r2, [r3, #52]	; 0x34
 8000210:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000214:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000218:	8992      	ldrh	r2, [r2, #12]
 800021a:	b292      	uxth	r2, r2
 800021c:	f042 0201 	orr.w	r2, r2, #1
 8000220:	b292      	uxth	r2, r2
 8000222:	819a      	strh	r2, [r3, #12]
 8000224:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000228:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800022c:	8992      	ldrh	r2, [r2, #12]
 800022e:	b292      	uxth	r2, r2
 8000230:	f042 0202 	orr.w	r2, r2, #2
 8000234:	b292      	uxth	r2, r2
 8000236:	819a      	strh	r2, [r3, #12]
 8000238:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800023c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000240:	8812      	ldrh	r2, [r2, #0]
 8000242:	b292      	uxth	r2, r2
 8000244:	f042 0201 	orr.w	r2, r2, #1
 8000248:	b292      	uxth	r2, r2
 800024a:	801a      	strh	r2, [r3, #0]
 800024c:	201c      	movs	r0, #28
 800024e:	f7ff ff4d 	bl	80000ec <NVIC_EnableIRQ>
 8000252:	bd80      	pop	{r7, pc}
 8000254:	40021000 	.word	0x40021000
 8000258:	40022000 	.word	0x40022000
 800025c:	40011000 	.word	0x40011000

08000260 <main>:
 8000260:	b580      	push	{r7, lr}
 8000262:	af00      	add	r7, sp, #0
 8000264:	f7ff ff5a 	bl	800011c <SystemInit>
 8000268:	e7fe      	b.n	8000268 <main+0x8>
 800026a:	bf00      	nop

0800026c <TIM2_IRQHandler>:
 800026c:	b480      	push	{r7}
 800026e:	af00      	add	r7, sp, #0
 8000270:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000274:	8a1b      	ldrh	r3, [r3, #16]
 8000276:	b29b      	uxth	r3, r3
 8000278:	f003 0301 	and.w	r3, r3, #1
 800027c:	2b00      	cmp	r3, #0
 800027e:	d00f      	beq.n	80002a0 <TIM2_IRQHandler+0x34>
 8000280:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000284:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000288:	8a12      	ldrh	r2, [r2, #16]
 800028a:	b292      	uxth	r2, r2
 800028c:	f022 0201 	bic.w	r2, r2, #1
 8000290:	b292      	uxth	r2, r2
 8000292:	821a      	strh	r2, [r3, #16]
 8000294:	4b10      	ldr	r3, [pc, #64]	; (80002d8 <TIM2_IRQHandler+0x6c>)
 8000296:	4a10      	ldr	r2, [pc, #64]	; (80002d8 <TIM2_IRQHandler+0x6c>)
 8000298:	68d2      	ldr	r2, [r2, #12]
 800029a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800029e:	60da      	str	r2, [r3, #12]
 80002a0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002a4:	8a1b      	ldrh	r3, [r3, #16]
 80002a6:	b29b      	uxth	r3, r3
 80002a8:	f003 0302 	and.w	r3, r3, #2
 80002ac:	2b00      	cmp	r3, #0
 80002ae:	d00f      	beq.n	80002d0 <TIM2_IRQHandler+0x64>
 80002b0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002b4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002b8:	8a12      	ldrh	r2, [r2, #16]
 80002ba:	b292      	uxth	r2, r2
 80002bc:	f022 0202 	bic.w	r2, r2, #2
 80002c0:	b292      	uxth	r2, r2
 80002c2:	821a      	strh	r2, [r3, #16]
 80002c4:	4b04      	ldr	r3, [pc, #16]	; (80002d8 <TIM2_IRQHandler+0x6c>)
 80002c6:	4a04      	ldr	r2, [pc, #16]	; (80002d8 <TIM2_IRQHandler+0x6c>)
 80002c8:	68d2      	ldr	r2, [r2, #12]
 80002ca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80002ce:	60da      	str	r2, [r3, #12]
 80002d0:	46bd      	mov	sp, r7
 80002d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002d6:	4770      	bx	lr
 80002d8:	40011000 	.word	0x40011000

080002dc <handler_reset>:
 80002dc:	b580      	push	{r7, lr}
 80002de:	b082      	sub	sp, #8
 80002e0:	af00      	add	r7, sp, #0
 80002e2:	4b11      	ldr	r3, [pc, #68]	; (8000328 <handler_reset+0x4c>)
 80002e4:	607b      	str	r3, [r7, #4]
 80002e6:	4b11      	ldr	r3, [pc, #68]	; (800032c <handler_reset+0x50>)
 80002e8:	603b      	str	r3, [r7, #0]
 80002ea:	e007      	b.n	80002fc <handler_reset+0x20>
 80002ec:	683b      	ldr	r3, [r7, #0]
 80002ee:	1d1a      	adds	r2, r3, #4
 80002f0:	603a      	str	r2, [r7, #0]
 80002f2:	687a      	ldr	r2, [r7, #4]
 80002f4:	1d11      	adds	r1, r2, #4
 80002f6:	6079      	str	r1, [r7, #4]
 80002f8:	6812      	ldr	r2, [r2, #0]
 80002fa:	601a      	str	r2, [r3, #0]
 80002fc:	683a      	ldr	r2, [r7, #0]
 80002fe:	4b0c      	ldr	r3, [pc, #48]	; (8000330 <handler_reset+0x54>)
 8000300:	429a      	cmp	r2, r3
 8000302:	d3f3      	bcc.n	80002ec <handler_reset+0x10>
 8000304:	4b0b      	ldr	r3, [pc, #44]	; (8000334 <handler_reset+0x58>)
 8000306:	603b      	str	r3, [r7, #0]
 8000308:	e004      	b.n	8000314 <handler_reset+0x38>
 800030a:	683b      	ldr	r3, [r7, #0]
 800030c:	1d1a      	adds	r2, r3, #4
 800030e:	603a      	str	r2, [r7, #0]
 8000310:	2200      	movs	r2, #0
 8000312:	601a      	str	r2, [r3, #0]
 8000314:	683a      	ldr	r2, [r7, #0]
 8000316:	4b08      	ldr	r3, [pc, #32]	; (8000338 <handler_reset+0x5c>)
 8000318:	429a      	cmp	r2, r3
 800031a:	d3f6      	bcc.n	800030a <handler_reset+0x2e>
 800031c:	f7ff ffa0 	bl	8000260 <main>
 8000320:	3708      	adds	r7, #8
 8000322:	46bd      	mov	sp, r7
 8000324:	bd80      	pop	{r7, pc}
 8000326:	bf00      	nop
 8000328:	08000344 	.word	0x08000344
 800032c:	20000000 	.word	0x20000000
 8000330:	2000000c 	.word	0x2000000c
 8000334:	2000000c 	.word	0x2000000c
 8000338:	20000010 	.word	0x20000010

0800033c <default_handler>:
 800033c:	b480      	push	{r7}
 800033e:	af00      	add	r7, sp, #0
 8000340:	e7fe      	b.n	8000340 <default_handler+0x4>
 8000342:	bf00      	nop
