
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 41 03 00 08 a1 03 00 08 a1 03 00 08     . . A...........
 8000010:	a1 03 00 08 a1 03 00 08 a1 03 00 08 00 00 00 00     ................
	...
 800002c:	a1 03 00 08 a1 03 00 08 00 00 00 00 a1 03 00 08     ................
 800003c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 800004c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 800005c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 800006c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 800007c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 800008c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 800009c:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 80000ac:	a1 03 00 08 d9 02 00 08 a1 03 00 08 a1 03 00 08     ................
 80000bc:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 80000cc:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................
 80000dc:	a1 03 00 08 a1 03 00 08 a1 03 00 08 a1 03 00 08     ................

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
 8000120:	4a63      	ldr	r2, [pc, #396]	; (80002b0 <SystemInit+0x194>)
 8000122:	4b63      	ldr	r3, [pc, #396]	; (80002b0 <SystemInit+0x194>)
 8000124:	681b      	ldr	r3, [r3, #0]
 8000126:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	bf00      	nop
 800012e:	4b60      	ldr	r3, [pc, #384]	; (80002b0 <SystemInit+0x194>)
 8000130:	681b      	ldr	r3, [r3, #0]
 8000132:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000136:	2b00      	cmp	r3, #0
 8000138:	d0f9      	beq.n	800012e <SystemInit+0x12>
 800013a:	4a5d      	ldr	r2, [pc, #372]	; (80002b0 <SystemInit+0x194>)
 800013c:	4b5c      	ldr	r3, [pc, #368]	; (80002b0 <SystemInit+0x194>)
 800013e:	685b      	ldr	r3, [r3, #4]
 8000140:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000144:	6053      	str	r3, [r2, #4]
 8000146:	4a5a      	ldr	r2, [pc, #360]	; (80002b0 <SystemInit+0x194>)
 8000148:	4b59      	ldr	r3, [pc, #356]	; (80002b0 <SystemInit+0x194>)
 800014a:	685b      	ldr	r3, [r3, #4]
 800014c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000150:	6053      	str	r3, [r2, #4]
 8000152:	4a57      	ldr	r2, [pc, #348]	; (80002b0 <SystemInit+0x194>)
 8000154:	4b56      	ldr	r3, [pc, #344]	; (80002b0 <SystemInit+0x194>)
 8000156:	685b      	ldr	r3, [r3, #4]
 8000158:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800015c:	6053      	str	r3, [r2, #4]
 800015e:	4a54      	ldr	r2, [pc, #336]	; (80002b0 <SystemInit+0x194>)
 8000160:	4b53      	ldr	r3, [pc, #332]	; (80002b0 <SystemInit+0x194>)
 8000162:	681b      	ldr	r3, [r3, #0]
 8000164:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000168:	6013      	str	r3, [r2, #0]
 800016a:	bf00      	nop
 800016c:	4b50      	ldr	r3, [pc, #320]	; (80002b0 <SystemInit+0x194>)
 800016e:	681b      	ldr	r3, [r3, #0]
 8000170:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000174:	2b00      	cmp	r3, #0
 8000176:	d0f9      	beq.n	800016c <SystemInit+0x50>
 8000178:	4a4e      	ldr	r2, [pc, #312]	; (80002b4 <SystemInit+0x198>)
 800017a:	4b4e      	ldr	r3, [pc, #312]	; (80002b4 <SystemInit+0x198>)
 800017c:	681b      	ldr	r3, [r3, #0]
 800017e:	f043 0310 	orr.w	r3, r3, #16
 8000182:	6013      	str	r3, [r2, #0]
 8000184:	4a4b      	ldr	r2, [pc, #300]	; (80002b4 <SystemInit+0x198>)
 8000186:	4b4b      	ldr	r3, [pc, #300]	; (80002b4 <SystemInit+0x198>)
 8000188:	681b      	ldr	r3, [r3, #0]
 800018a:	f023 0303 	bic.w	r3, r3, #3
 800018e:	6013      	str	r3, [r2, #0]
 8000190:	4a48      	ldr	r2, [pc, #288]	; (80002b4 <SystemInit+0x198>)
 8000192:	4b48      	ldr	r3, [pc, #288]	; (80002b4 <SystemInit+0x198>)
 8000194:	681b      	ldr	r3, [r3, #0]
 8000196:	f043 0302 	orr.w	r3, r3, #2
 800019a:	6013      	str	r3, [r2, #0]
 800019c:	4a44      	ldr	r2, [pc, #272]	; (80002b0 <SystemInit+0x194>)
 800019e:	4b44      	ldr	r3, [pc, #272]	; (80002b0 <SystemInit+0x194>)
 80001a0:	685b      	ldr	r3, [r3, #4]
 80001a2:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 80001a6:	6053      	str	r3, [r2, #4]
 80001a8:	4a41      	ldr	r2, [pc, #260]	; (80002b0 <SystemInit+0x194>)
 80001aa:	4b41      	ldr	r3, [pc, #260]	; (80002b0 <SystemInit+0x194>)
 80001ac:	685b      	ldr	r3, [r3, #4]
 80001ae:	f023 0303 	bic.w	r3, r3, #3
 80001b2:	6053      	str	r3, [r2, #4]
 80001b4:	4a3e      	ldr	r2, [pc, #248]	; (80002b0 <SystemInit+0x194>)
 80001b6:	4b3e      	ldr	r3, [pc, #248]	; (80002b0 <SystemInit+0x194>)
 80001b8:	685b      	ldr	r3, [r3, #4]
 80001ba:	f043 0302 	orr.w	r3, r3, #2
 80001be:	6053      	str	r3, [r2, #4]
 80001c0:	bf00      	nop
 80001c2:	4b3b      	ldr	r3, [pc, #236]	; (80002b0 <SystemInit+0x194>)
 80001c4:	685b      	ldr	r3, [r3, #4]
 80001c6:	f003 030c 	and.w	r3, r3, #12
 80001ca:	2b08      	cmp	r3, #8
 80001cc:	d1f9      	bne.n	80001c2 <SystemInit+0xa6>
 80001ce:	4a38      	ldr	r2, [pc, #224]	; (80002b0 <SystemInit+0x194>)
 80001d0:	4b37      	ldr	r3, [pc, #220]	; (80002b0 <SystemInit+0x194>)
 80001d2:	69db      	ldr	r3, [r3, #28]
 80001d4:	f043 0301 	orr.w	r3, r3, #1
 80001d8:	61d3      	str	r3, [r2, #28]
 80001da:	4a35      	ldr	r2, [pc, #212]	; (80002b0 <SystemInit+0x194>)
 80001dc:	4b34      	ldr	r3, [pc, #208]	; (80002b0 <SystemInit+0x194>)
 80001de:	699b      	ldr	r3, [r3, #24]
 80001e0:	f043 0305 	orr.w	r3, r3, #5
 80001e4:	6193      	str	r3, [r2, #24]
 80001e6:	4a32      	ldr	r2, [pc, #200]	; (80002b0 <SystemInit+0x194>)
 80001e8:	4b31      	ldr	r3, [pc, #196]	; (80002b0 <SystemInit+0x194>)
 80001ea:	699b      	ldr	r3, [r3, #24]
 80001ec:	f043 0310 	orr.w	r3, r3, #16
 80001f0:	6193      	str	r3, [r2, #24]
 80001f2:	4b31      	ldr	r3, [pc, #196]	; (80002b8 <SystemInit+0x19c>)
 80001f4:	2200      	movs	r2, #0
 80001f6:	601a      	str	r2, [r3, #0]
 80001f8:	4a2f      	ldr	r2, [pc, #188]	; (80002b8 <SystemInit+0x19c>)
 80001fa:	4b2f      	ldr	r3, [pc, #188]	; (80002b8 <SystemInit+0x19c>)
 80001fc:	681b      	ldr	r3, [r3, #0]
 80001fe:	f043 030b 	orr.w	r3, r3, #11
 8000202:	6013      	str	r3, [r2, #0]
 8000204:	4a2c      	ldr	r2, [pc, #176]	; (80002b8 <SystemInit+0x19c>)
 8000206:	4b2c      	ldr	r3, [pc, #176]	; (80002b8 <SystemInit+0x19c>)
 8000208:	681b      	ldr	r3, [r3, #0]
 800020a:	f043 03b0 	orr.w	r3, r3, #176	; 0xb0
 800020e:	6013      	str	r3, [r2, #0]
 8000210:	4a29      	ldr	r2, [pc, #164]	; (80002b8 <SystemInit+0x19c>)
 8000212:	4b29      	ldr	r3, [pc, #164]	; (80002b8 <SystemInit+0x19c>)
 8000214:	681b      	ldr	r3, [r3, #0]
 8000216:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 800021a:	6013      	str	r3, [r2, #0]
 800021c:	4a26      	ldr	r2, [pc, #152]	; (80002b8 <SystemInit+0x19c>)
 800021e:	4b26      	ldr	r3, [pc, #152]	; (80002b8 <SystemInit+0x19c>)
 8000220:	681b      	ldr	r3, [r3, #0]
 8000222:	f443 4330 	orr.w	r3, r3, #45056	; 0xb000
 8000226:	6013      	str	r3, [r2, #0]
 8000228:	4a23      	ldr	r2, [pc, #140]	; (80002b8 <SystemInit+0x19c>)
 800022a:	4b23      	ldr	r3, [pc, #140]	; (80002b8 <SystemInit+0x19c>)
 800022c:	681b      	ldr	r3, [r3, #0]
 800022e:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 8000232:	6013      	str	r3, [r2, #0]
 8000234:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000238:	2208      	movs	r2, #8
 800023a:	851a      	strh	r2, [r3, #40]	; 0x28
 800023c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000240:	f44f 627a 	mov.w	r2, #4000	; 0xfa0
 8000244:	859a      	strh	r2, [r3, #44]	; 0x2c
 8000246:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800024a:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 800024e:	869a      	strh	r2, [r3, #52]	; 0x34
 8000250:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000254:	2200      	movs	r2, #0
 8000256:	831a      	strh	r2, [r3, #24]
 8000258:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800025c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000260:	8b1b      	ldrh	r3, [r3, #24]
 8000262:	b29b      	uxth	r3, r3
 8000264:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 8000268:	b29b      	uxth	r3, r3
 800026a:	8313      	strh	r3, [r2, #24]
 800026c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000270:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000274:	8c1b      	ldrh	r3, [r3, #32]
 8000276:	b29b      	uxth	r3, r3
 8000278:	f043 0301 	orr.w	r3, r3, #1
 800027c:	b29b      	uxth	r3, r3
 800027e:	8413      	strh	r3, [r2, #32]
 8000280:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000284:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000288:	899b      	ldrh	r3, [r3, #12]
 800028a:	b29b      	uxth	r3, r3
 800028c:	f043 0302 	orr.w	r3, r3, #2
 8000290:	b29b      	uxth	r3, r3
 8000292:	8193      	strh	r3, [r2, #12]
 8000294:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000298:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800029c:	881b      	ldrh	r3, [r3, #0]
 800029e:	b29b      	uxth	r3, r3
 80002a0:	f043 0301 	orr.w	r3, r3, #1
 80002a4:	b29b      	uxth	r3, r3
 80002a6:	8013      	strh	r3, [r2, #0]
 80002a8:	201c      	movs	r0, #28
 80002aa:	f7ff ff1f 	bl	80000ec <NVIC_EnableIRQ>
 80002ae:	bd80      	pop	{r7, pc}
 80002b0:	40021000 	.word	0x40021000
 80002b4:	40022000 	.word	0x40022000
 80002b8:	40010800 	.word	0x40010800

080002bc <main>:
 80002bc:	b580      	push	{r7, lr}
 80002be:	af00      	add	r7, sp, #0
 80002c0:	f7ff ff2c 	bl	800011c <SystemInit>
 80002c4:	4a03      	ldr	r2, [pc, #12]	; (80002d4 <main+0x18>)
 80002c6:	4b03      	ldr	r3, [pc, #12]	; (80002d4 <main+0x18>)
 80002c8:	68db      	ldr	r3, [r3, #12]
 80002ca:	f023 0310 	bic.w	r3, r3, #16
 80002ce:	60d3      	str	r3, [r2, #12]
 80002d0:	e7f8      	b.n	80002c4 <main+0x8>
 80002d2:	bf00      	nop
 80002d4:	40010800 	.word	0x40010800

080002d8 <TIM2_IRQHandler>:
 80002d8:	b480      	push	{r7}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002e0:	4b14      	ldr	r3, [pc, #80]	; (8000334 <TIM2_IRQHandler+0x5c>)
 80002e2:	681b      	ldr	r3, [r3, #0]
 80002e4:	4914      	ldr	r1, [pc, #80]	; (8000338 <TIM2_IRQHandler+0x60>)
 80002e6:	f851 3023 	ldr.w	r3, [r1, r3, lsl #2]
 80002ea:	b29b      	uxth	r3, r3
 80002ec:	f503 63fa 	add.w	r3, r3, #2000	; 0x7d0
 80002f0:	b29b      	uxth	r3, r3
 80002f2:	8693      	strh	r3, [r2, #52]	; 0x34
 80002f4:	4b0f      	ldr	r3, [pc, #60]	; (8000334 <TIM2_IRQHandler+0x5c>)
 80002f6:	681b      	ldr	r3, [r3, #0]
 80002f8:	3301      	adds	r3, #1
 80002fa:	f003 031f 	and.w	r3, r3, #31
 80002fe:	4a0d      	ldr	r2, [pc, #52]	; (8000334 <TIM2_IRQHandler+0x5c>)
 8000300:	6013      	str	r3, [r2, #0]
 8000302:	4b0c      	ldr	r3, [pc, #48]	; (8000334 <TIM2_IRQHandler+0x5c>)
 8000304:	681b      	ldr	r3, [r3, #0]
 8000306:	2b00      	cmp	r3, #0
 8000308:	d105      	bne.n	8000316 <TIM2_IRQHandler+0x3e>
 800030a:	4a0c      	ldr	r2, [pc, #48]	; (800033c <TIM2_IRQHandler+0x64>)
 800030c:	4b0b      	ldr	r3, [pc, #44]	; (800033c <TIM2_IRQHandler+0x64>)
 800030e:	68db      	ldr	r3, [r3, #12]
 8000310:	f043 0310 	orr.w	r3, r3, #16
 8000314:	60d3      	str	r3, [r2, #12]
 8000316:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800031a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800031e:	8a1b      	ldrh	r3, [r3, #16]
 8000320:	b29b      	uxth	r3, r3
 8000322:	f023 0302 	bic.w	r3, r3, #2
 8000326:	b29b      	uxth	r3, r3
 8000328:	8213      	strh	r3, [r2, #16]
 800032a:	46bd      	mov	sp, r7
 800032c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000330:	4770      	bx	lr
 8000332:	bf00      	nop
 8000334:	20000000 	.word	0x20000000
 8000338:	080003a8 	.word	0x080003a8
 800033c:	40010800 	.word	0x40010800

08000340 <handler_reset>:
 8000340:	b580      	push	{r7, lr}
 8000342:	b082      	sub	sp, #8
 8000344:	af00      	add	r7, sp, #0
 8000346:	4b11      	ldr	r3, [pc, #68]	; (800038c <handler_reset+0x4c>)
 8000348:	607b      	str	r3, [r7, #4]
 800034a:	4b11      	ldr	r3, [pc, #68]	; (8000390 <handler_reset+0x50>)
 800034c:	603b      	str	r3, [r7, #0]
 800034e:	e007      	b.n	8000360 <handler_reset+0x20>
 8000350:	683b      	ldr	r3, [r7, #0]
 8000352:	1d1a      	adds	r2, r3, #4
 8000354:	603a      	str	r2, [r7, #0]
 8000356:	687a      	ldr	r2, [r7, #4]
 8000358:	1d11      	adds	r1, r2, #4
 800035a:	6079      	str	r1, [r7, #4]
 800035c:	6812      	ldr	r2, [r2, #0]
 800035e:	601a      	str	r2, [r3, #0]
 8000360:	683b      	ldr	r3, [r7, #0]
 8000362:	4a0c      	ldr	r2, [pc, #48]	; (8000394 <handler_reset+0x54>)
 8000364:	4293      	cmp	r3, r2
 8000366:	d3f3      	bcc.n	8000350 <handler_reset+0x10>
 8000368:	4b0b      	ldr	r3, [pc, #44]	; (8000398 <handler_reset+0x58>)
 800036a:	603b      	str	r3, [r7, #0]
 800036c:	e004      	b.n	8000378 <handler_reset+0x38>
 800036e:	683b      	ldr	r3, [r7, #0]
 8000370:	1d1a      	adds	r2, r3, #4
 8000372:	603a      	str	r2, [r7, #0]
 8000374:	2200      	movs	r2, #0
 8000376:	601a      	str	r2, [r3, #0]
 8000378:	683b      	ldr	r3, [r7, #0]
 800037a:	4a08      	ldr	r2, [pc, #32]	; (800039c <handler_reset+0x5c>)
 800037c:	4293      	cmp	r3, r2
 800037e:	d3f6      	bcc.n	800036e <handler_reset+0x2e>
 8000380:	f7ff ff9c 	bl	80002bc <main>
 8000384:	3708      	adds	r7, #8
 8000386:	46bd      	mov	sp, r7
 8000388:	bd80      	pop	{r7, pc}
 800038a:	bf00      	nop
 800038c:	08000428 	.word	0x08000428
 8000390:	20000000 	.word	0x20000000
 8000394:	20000000 	.word	0x20000000
 8000398:	20000000 	.word	0x20000000
 800039c:	20000004 	.word	0x20000004

080003a0 <default_handler>:
 80003a0:	b480      	push	{r7}
 80003a2:	af00      	add	r7, sp, #0
 80003a4:	e7fe      	b.n	80003a4 <default_handler+0x4>
 80003a6:	bf00      	nop

080003a8 <cos_table>:
 80003a8:	07d0 0000 07aa 0000 0738 0000 067f 0000     ........8.......
 80003b8:	0586 0000 0457 0000 02fd 0000 0186 0000     ....W...........
 80003c8:	0000 0000 fe7a ffff fd03 ffff fba9 ffff     ....z...........
 80003d8:	fa7a ffff f981 ffff f8c8 ffff f856 ffff     z...........V...
 80003e8:	f830 ffff f856 ffff f8c8 ffff f981 ffff     0...V...........
 80003f8:	fa7a ffff fba9 ffff fd03 ffff fe7a ffff     z...........z...
 8000408:	0000 0000 0186 0000 02fd 0000 0457 0000     ............W...
 8000418:	0586 0000 067f 0000 0738 0000 07aa 0000     ........8.......
