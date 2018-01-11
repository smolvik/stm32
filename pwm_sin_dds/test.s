
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 31 03 00 08 91 03 00 08 91 03 00 08     . . 1...........
 8000010:	91 03 00 08 91 03 00 08 91 03 00 08 00 00 00 00     ................
	...
 800002c:	91 03 00 08 91 03 00 08 00 00 00 00 91 03 00 08     ................
 800003c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 800004c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 800005c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 800006c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 800007c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 800008c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 800009c:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 80000ac:	91 03 00 08 c1 02 00 08 91 03 00 08 91 03 00 08     ................
 80000bc:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 80000cc:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................
 80000dc:	91 03 00 08 91 03 00 08 91 03 00 08 91 03 00 08     ................

080000ec <NVIC_EnableIRQ>:
 80000ec:	b480      	push	{r7}
 80000ee:	b083      	sub	sp, #12
 80000f0:	af00      	add	r7, sp, #0
 80000f2:	4603      	mov	r3, r0
 80000f4:	71fb      	strb	r3, [r7, #7]
 80000f6:	4908      	ldr	r1, [pc, #32]	; (8000118 <NVIC_EnableIRQ+0x2c>)
 80000f8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80000fc:	095b      	lsrs	r3, r3, #5
 80000fe:	79fa      	ldrb	r2, [r7, #7]
 8000100:	f002 021f 	and.w	r2, r2, #31
 8000104:	2001      	movs	r0, #1
 8000106:	fa00 f202 	lsl.w	r2, r0, r2
 800010a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800010e:	370c      	adds	r7, #12
 8000110:	46bd      	mov	sp, r7
 8000112:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000116:	4770      	bx	lr
 8000118:	e000e100 	.word	0xe000e100

0800011c <SystemInit>:
 800011c:	b580      	push	{r7, lr}
 800011e:	af00      	add	r7, sp, #0
 8000120:	4a5a      	ldr	r2, [pc, #360]	; (800028c <SystemInit+0x170>)
 8000122:	4b5a      	ldr	r3, [pc, #360]	; (800028c <SystemInit+0x170>)
 8000124:	681b      	ldr	r3, [r3, #0]
 8000126:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	bf00      	nop
 800012e:	4b57      	ldr	r3, [pc, #348]	; (800028c <SystemInit+0x170>)
 8000130:	681b      	ldr	r3, [r3, #0]
 8000132:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000136:	2b00      	cmp	r3, #0
 8000138:	d0f9      	beq.n	800012e <SystemInit+0x12>
 800013a:	4a54      	ldr	r2, [pc, #336]	; (800028c <SystemInit+0x170>)
 800013c:	4b53      	ldr	r3, [pc, #332]	; (800028c <SystemInit+0x170>)
 800013e:	685b      	ldr	r3, [r3, #4]
 8000140:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000144:	6053      	str	r3, [r2, #4]
 8000146:	4a51      	ldr	r2, [pc, #324]	; (800028c <SystemInit+0x170>)
 8000148:	4b50      	ldr	r3, [pc, #320]	; (800028c <SystemInit+0x170>)
 800014a:	685b      	ldr	r3, [r3, #4]
 800014c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000150:	6053      	str	r3, [r2, #4]
 8000152:	4a4e      	ldr	r2, [pc, #312]	; (800028c <SystemInit+0x170>)
 8000154:	4b4d      	ldr	r3, [pc, #308]	; (800028c <SystemInit+0x170>)
 8000156:	685b      	ldr	r3, [r3, #4]
 8000158:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800015c:	6053      	str	r3, [r2, #4]
 800015e:	4a4b      	ldr	r2, [pc, #300]	; (800028c <SystemInit+0x170>)
 8000160:	4b4a      	ldr	r3, [pc, #296]	; (800028c <SystemInit+0x170>)
 8000162:	681b      	ldr	r3, [r3, #0]
 8000164:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000168:	6013      	str	r3, [r2, #0]
 800016a:	bf00      	nop
 800016c:	4b47      	ldr	r3, [pc, #284]	; (800028c <SystemInit+0x170>)
 800016e:	681b      	ldr	r3, [r3, #0]
 8000170:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000174:	2b00      	cmp	r3, #0
 8000176:	d0f9      	beq.n	800016c <SystemInit+0x50>
 8000178:	4a45      	ldr	r2, [pc, #276]	; (8000290 <SystemInit+0x174>)
 800017a:	4b45      	ldr	r3, [pc, #276]	; (8000290 <SystemInit+0x174>)
 800017c:	681b      	ldr	r3, [r3, #0]
 800017e:	f043 0310 	orr.w	r3, r3, #16
 8000182:	6013      	str	r3, [r2, #0]
 8000184:	4a42      	ldr	r2, [pc, #264]	; (8000290 <SystemInit+0x174>)
 8000186:	4b42      	ldr	r3, [pc, #264]	; (8000290 <SystemInit+0x174>)
 8000188:	681b      	ldr	r3, [r3, #0]
 800018a:	f023 0303 	bic.w	r3, r3, #3
 800018e:	6013      	str	r3, [r2, #0]
 8000190:	4a3f      	ldr	r2, [pc, #252]	; (8000290 <SystemInit+0x174>)
 8000192:	4b3f      	ldr	r3, [pc, #252]	; (8000290 <SystemInit+0x174>)
 8000194:	681b      	ldr	r3, [r3, #0]
 8000196:	f043 0302 	orr.w	r3, r3, #2
 800019a:	6013      	str	r3, [r2, #0]
 800019c:	4a3b      	ldr	r2, [pc, #236]	; (800028c <SystemInit+0x170>)
 800019e:	4b3b      	ldr	r3, [pc, #236]	; (800028c <SystemInit+0x170>)
 80001a0:	685b      	ldr	r3, [r3, #4]
 80001a2:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 80001a6:	6053      	str	r3, [r2, #4]
 80001a8:	4a38      	ldr	r2, [pc, #224]	; (800028c <SystemInit+0x170>)
 80001aa:	4b38      	ldr	r3, [pc, #224]	; (800028c <SystemInit+0x170>)
 80001ac:	685b      	ldr	r3, [r3, #4]
 80001ae:	f023 0303 	bic.w	r3, r3, #3
 80001b2:	6053      	str	r3, [r2, #4]
 80001b4:	4a35      	ldr	r2, [pc, #212]	; (800028c <SystemInit+0x170>)
 80001b6:	4b35      	ldr	r3, [pc, #212]	; (800028c <SystemInit+0x170>)
 80001b8:	685b      	ldr	r3, [r3, #4]
 80001ba:	f043 0302 	orr.w	r3, r3, #2
 80001be:	6053      	str	r3, [r2, #4]
 80001c0:	bf00      	nop
 80001c2:	4b32      	ldr	r3, [pc, #200]	; (800028c <SystemInit+0x170>)
 80001c4:	685b      	ldr	r3, [r3, #4]
 80001c6:	f003 030c 	and.w	r3, r3, #12
 80001ca:	2b08      	cmp	r3, #8
 80001cc:	d1f9      	bne.n	80001c2 <SystemInit+0xa6>
 80001ce:	4a2f      	ldr	r2, [pc, #188]	; (800028c <SystemInit+0x170>)
 80001d0:	4b2e      	ldr	r3, [pc, #184]	; (800028c <SystemInit+0x170>)
 80001d2:	69db      	ldr	r3, [r3, #28]
 80001d4:	f043 0301 	orr.w	r3, r3, #1
 80001d8:	61d3      	str	r3, [r2, #28]
 80001da:	4a2c      	ldr	r2, [pc, #176]	; (800028c <SystemInit+0x170>)
 80001dc:	4b2b      	ldr	r3, [pc, #172]	; (800028c <SystemInit+0x170>)
 80001de:	699b      	ldr	r3, [r3, #24]
 80001e0:	f043 0305 	orr.w	r3, r3, #5
 80001e4:	6193      	str	r3, [r2, #24]
 80001e6:	4a29      	ldr	r2, [pc, #164]	; (800028c <SystemInit+0x170>)
 80001e8:	4b28      	ldr	r3, [pc, #160]	; (800028c <SystemInit+0x170>)
 80001ea:	699b      	ldr	r3, [r3, #24]
 80001ec:	f043 0310 	orr.w	r3, r3, #16
 80001f0:	6193      	str	r3, [r2, #24]
 80001f2:	4b28      	ldr	r3, [pc, #160]	; (8000294 <SystemInit+0x178>)
 80001f4:	2200      	movs	r2, #0
 80001f6:	601a      	str	r2, [r3, #0]
 80001f8:	4a26      	ldr	r2, [pc, #152]	; (8000294 <SystemInit+0x178>)
 80001fa:	4b26      	ldr	r3, [pc, #152]	; (8000294 <SystemInit+0x178>)
 80001fc:	681b      	ldr	r3, [r3, #0]
 80001fe:	f043 030b 	orr.w	r3, r3, #11
 8000202:	6013      	str	r3, [r2, #0]
 8000204:	4a23      	ldr	r2, [pc, #140]	; (8000294 <SystemInit+0x178>)
 8000206:	4b23      	ldr	r3, [pc, #140]	; (8000294 <SystemInit+0x178>)
 8000208:	681b      	ldr	r3, [r3, #0]
 800020a:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 800020e:	6013      	str	r3, [r2, #0]
 8000210:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000214:	2208      	movs	r2, #8
 8000216:	851a      	strh	r2, [r3, #40]	; 0x28
 8000218:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800021c:	f44f 627a 	mov.w	r2, #4000	; 0xfa0
 8000220:	859a      	strh	r2, [r3, #44]	; 0x2c
 8000222:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000226:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 800022a:	869a      	strh	r2, [r3, #52]	; 0x34
 800022c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000230:	2200      	movs	r2, #0
 8000232:	831a      	strh	r2, [r3, #24]
 8000234:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000238:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800023c:	8b1b      	ldrh	r3, [r3, #24]
 800023e:	b29b      	uxth	r3, r3
 8000240:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 8000244:	b29b      	uxth	r3, r3
 8000246:	8313      	strh	r3, [r2, #24]
 8000248:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800024c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000250:	8c1b      	ldrh	r3, [r3, #32]
 8000252:	b29b      	uxth	r3, r3
 8000254:	f043 0301 	orr.w	r3, r3, #1
 8000258:	b29b      	uxth	r3, r3
 800025a:	8413      	strh	r3, [r2, #32]
 800025c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000260:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000264:	899b      	ldrh	r3, [r3, #12]
 8000266:	b29b      	uxth	r3, r3
 8000268:	f043 0301 	orr.w	r3, r3, #1
 800026c:	b29b      	uxth	r3, r3
 800026e:	8193      	strh	r3, [r2, #12]
 8000270:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000274:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000278:	881b      	ldrh	r3, [r3, #0]
 800027a:	b29b      	uxth	r3, r3
 800027c:	f043 0301 	orr.w	r3, r3, #1
 8000280:	b29b      	uxth	r3, r3
 8000282:	8013      	strh	r3, [r2, #0]
 8000284:	201c      	movs	r0, #28
 8000286:	f7ff ff31 	bl	80000ec <NVIC_EnableIRQ>
 800028a:	bd80      	pop	{r7, pc}
 800028c:	40021000 	.word	0x40021000
 8000290:	40022000 	.word	0x40022000
 8000294:	40010800 	.word	0x40010800

08000298 <main>:
 8000298:	b580      	push	{r7, lr}
 800029a:	af00      	add	r7, sp, #0
 800029c:	f7ff ff3e 	bl	800011c <SystemInit>
 80002a0:	4a06      	ldr	r2, [pc, #24]	; (80002bc <main+0x24>)
 80002a2:	4b06      	ldr	r3, [pc, #24]	; (80002bc <main+0x24>)
 80002a4:	68db      	ldr	r3, [r3, #12]
 80002a6:	f043 0310 	orr.w	r3, r3, #16
 80002aa:	60d3      	str	r3, [r2, #12]
 80002ac:	4a03      	ldr	r2, [pc, #12]	; (80002bc <main+0x24>)
 80002ae:	4b03      	ldr	r3, [pc, #12]	; (80002bc <main+0x24>)
 80002b0:	68db      	ldr	r3, [r3, #12]
 80002b2:	f023 0310 	bic.w	r3, r3, #16
 80002b6:	60d3      	str	r3, [r2, #12]
 80002b8:	e7fe      	b.n	80002b8 <main+0x20>
 80002ba:	bf00      	nop
 80002bc:	40010800 	.word	0x40010800

080002c0 <TIM2_IRQHandler>:
 80002c0:	b480      	push	{r7}
 80002c2:	b083      	sub	sp, #12
 80002c4:	af00      	add	r7, sp, #0
 80002c6:	4b16      	ldr	r3, [pc, #88]	; (8000320 <TIM2_IRQHandler+0x60>)
 80002c8:	681b      	ldr	r3, [r3, #0]
 80002ca:	115b      	asrs	r3, r3, #5
 80002cc:	607b      	str	r3, [r7, #4]
 80002ce:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002d2:	4914      	ldr	r1, [pc, #80]	; (8000324 <TIM2_IRQHandler+0x64>)
 80002d4:	687b      	ldr	r3, [r7, #4]
 80002d6:	f851 3023 	ldr.w	r3, [r1, r3, lsl #2]
 80002da:	b29b      	uxth	r3, r3
 80002dc:	f503 63fa 	add.w	r3, r3, #2000	; 0x7d0
 80002e0:	b29b      	uxth	r3, r3
 80002e2:	8693      	strh	r3, [r2, #52]	; 0x34
 80002e4:	4b0e      	ldr	r3, [pc, #56]	; (8000320 <TIM2_IRQHandler+0x60>)
 80002e6:	681a      	ldr	r2, [r3, #0]
 80002e8:	4b0f      	ldr	r3, [pc, #60]	; (8000328 <TIM2_IRQHandler+0x68>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	4413      	add	r3, r2
 80002ee:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80002f2:	4a0b      	ldr	r2, [pc, #44]	; (8000320 <TIM2_IRQHandler+0x60>)
 80002f4:	6013      	str	r3, [r2, #0]
 80002f6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002fa:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002fe:	8a1b      	ldrh	r3, [r3, #16]
 8000300:	b29b      	uxth	r3, r3
 8000302:	f023 0303 	bic.w	r3, r3, #3
 8000306:	b29b      	uxth	r3, r3
 8000308:	8213      	strh	r3, [r2, #16]
 800030a:	4a08      	ldr	r2, [pc, #32]	; (800032c <TIM2_IRQHandler+0x6c>)
 800030c:	4b07      	ldr	r3, [pc, #28]	; (800032c <TIM2_IRQHandler+0x6c>)
 800030e:	68db      	ldr	r3, [r3, #12]
 8000310:	f083 0310 	eor.w	r3, r3, #16
 8000314:	60d3      	str	r3, [r2, #12]
 8000316:	370c      	adds	r7, #12
 8000318:	46bd      	mov	sp, r7
 800031a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800031e:	4770      	bx	lr
 8000320:	20000004 	.word	0x20000004
 8000324:	08000398 	.word	0x08000398
 8000328:	20000000 	.word	0x20000000
 800032c:	40010800 	.word	0x40010800

08000330 <handler_reset>:
 8000330:	b580      	push	{r7, lr}
 8000332:	b082      	sub	sp, #8
 8000334:	af00      	add	r7, sp, #0
 8000336:	4b11      	ldr	r3, [pc, #68]	; (800037c <handler_reset+0x4c>)
 8000338:	607b      	str	r3, [r7, #4]
 800033a:	4b11      	ldr	r3, [pc, #68]	; (8000380 <handler_reset+0x50>)
 800033c:	603b      	str	r3, [r7, #0]
 800033e:	e007      	b.n	8000350 <handler_reset+0x20>
 8000340:	683b      	ldr	r3, [r7, #0]
 8000342:	1d1a      	adds	r2, r3, #4
 8000344:	603a      	str	r2, [r7, #0]
 8000346:	687a      	ldr	r2, [r7, #4]
 8000348:	1d11      	adds	r1, r2, #4
 800034a:	6079      	str	r1, [r7, #4]
 800034c:	6812      	ldr	r2, [r2, #0]
 800034e:	601a      	str	r2, [r3, #0]
 8000350:	683b      	ldr	r3, [r7, #0]
 8000352:	4a0c      	ldr	r2, [pc, #48]	; (8000384 <handler_reset+0x54>)
 8000354:	4293      	cmp	r3, r2
 8000356:	d3f3      	bcc.n	8000340 <handler_reset+0x10>
 8000358:	4b0b      	ldr	r3, [pc, #44]	; (8000388 <handler_reset+0x58>)
 800035a:	603b      	str	r3, [r7, #0]
 800035c:	e004      	b.n	8000368 <handler_reset+0x38>
 800035e:	683b      	ldr	r3, [r7, #0]
 8000360:	1d1a      	adds	r2, r3, #4
 8000362:	603a      	str	r2, [r7, #0]
 8000364:	2200      	movs	r2, #0
 8000366:	601a      	str	r2, [r3, #0]
 8000368:	683b      	ldr	r3, [r7, #0]
 800036a:	4a08      	ldr	r2, [pc, #32]	; (800038c <handler_reset+0x5c>)
 800036c:	4293      	cmp	r3, r2
 800036e:	d3f6      	bcc.n	800035e <handler_reset+0x2e>
 8000370:	f7ff ff92 	bl	8000298 <main>
 8000374:	3708      	adds	r7, #8
 8000376:	46bd      	mov	sp, r7
 8000378:	bd80      	pop	{r7, pc}
 800037a:	bf00      	nop
 800037c:	08000418 	.word	0x08000418
 8000380:	20000000 	.word	0x20000000
 8000384:	20000004 	.word	0x20000004
 8000388:	20000004 	.word	0x20000004
 800038c:	20000008 	.word	0x20000008

08000390 <default_handler>:
 8000390:	b480      	push	{r7}
 8000392:	af00      	add	r7, sp, #0
 8000394:	e7fe      	b.n	8000394 <default_handler+0x4>
 8000396:	bf00      	nop

08000398 <cos_table>:
 8000398:	07d0 0000 07aa 0000 0738 0000 067f 0000     ........8.......
 80003a8:	0586 0000 0457 0000 02fd 0000 0186 0000     ....W...........
 80003b8:	0000 0000 fe7a ffff fd03 ffff fba9 ffff     ....z...........
 80003c8:	fa7a ffff f981 ffff f8c8 ffff f856 ffff     z...........V...
 80003d8:	f830 ffff f856 ffff f8c8 ffff f981 ffff     0...V...........
 80003e8:	fa7a ffff fba9 ffff fd03 ffff fe7a ffff     z...........z...
 80003f8:	0000 0000 0186 0000 02fd 0000 0457 0000     ............W...
 8000408:	0586 0000 067f 0000 0738 0000 07aa 0000     ........8.......
