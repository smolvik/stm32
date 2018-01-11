
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 f1 10 00 08 51 11 00 08 51 11 00 08     . . ....Q...Q...
 8000010:	51 11 00 08 51 11 00 08 51 11 00 08 00 00 00 00     Q...Q...Q.......
	...
 800002c:	51 11 00 08 51 11 00 08 00 00 00 00 51 11 00 08     Q...Q.......Q...
 800003c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 800004c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 800005c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 800006c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 800007c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 800008c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 800009c:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 80000ac:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 80000bc:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...
 80000cc:	51 11 00 08 51 11 00 08 51 11 00 08 55 02 00 08     Q...Q...Q...U...
 80000dc:	51 11 00 08 51 11 00 08 51 11 00 08 51 11 00 08     Q...Q...Q...Q...

080000ec <crc16>:
 80000ec:	b480      	push	{r7}
 80000ee:	b087      	sub	sp, #28
 80000f0:	af00      	add	r7, sp, #0
 80000f2:	6078      	str	r0, [r7, #4]
 80000f4:	6039      	str	r1, [r7, #0]
 80000f6:	23ff      	movs	r3, #255	; 0xff
 80000f8:	75fb      	strb	r3, [r7, #23]
 80000fa:	23ff      	movs	r3, #255	; 0xff
 80000fc:	75bb      	strb	r3, [r7, #22]
 80000fe:	2300      	movs	r3, #0
 8000100:	613b      	str	r3, [r7, #16]
 8000102:	e016      	b.n	8000132 <crc16+0x46>
 8000104:	693b      	ldr	r3, [r7, #16]
 8000106:	687a      	ldr	r2, [r7, #4]
 8000108:	4413      	add	r3, r2
 800010a:	781a      	ldrb	r2, [r3, #0]
 800010c:	7dfb      	ldrb	r3, [r7, #23]
 800010e:	4053      	eors	r3, r2
 8000110:	b2db      	uxtb	r3, r3
 8000112:	60fb      	str	r3, [r7, #12]
 8000114:	4a0f      	ldr	r2, [pc, #60]	; (8000154 <crc16+0x68>)
 8000116:	68fb      	ldr	r3, [r7, #12]
 8000118:	4413      	add	r3, r2
 800011a:	781a      	ldrb	r2, [r3, #0]
 800011c:	7dbb      	ldrb	r3, [r7, #22]
 800011e:	4053      	eors	r3, r2
 8000120:	75fb      	strb	r3, [r7, #23]
 8000122:	4a0d      	ldr	r2, [pc, #52]	; (8000158 <crc16+0x6c>)
 8000124:	68fb      	ldr	r3, [r7, #12]
 8000126:	4413      	add	r3, r2
 8000128:	781b      	ldrb	r3, [r3, #0]
 800012a:	75bb      	strb	r3, [r7, #22]
 800012c:	693b      	ldr	r3, [r7, #16]
 800012e:	3301      	adds	r3, #1
 8000130:	613b      	str	r3, [r7, #16]
 8000132:	693a      	ldr	r2, [r7, #16]
 8000134:	683b      	ldr	r3, [r7, #0]
 8000136:	429a      	cmp	r2, r3
 8000138:	dbe4      	blt.n	8000104 <crc16+0x18>
 800013a:	7dbb      	ldrb	r3, [r7, #22]
 800013c:	021b      	lsls	r3, r3, #8
 800013e:	b21a      	sxth	r2, r3
 8000140:	7dfb      	ldrb	r3, [r7, #23]
 8000142:	b21b      	sxth	r3, r3
 8000144:	4313      	orrs	r3, r2
 8000146:	b21b      	sxth	r3, r3
 8000148:	b29b      	uxth	r3, r3
 800014a:	4618      	mov	r0, r3
 800014c:	371c      	adds	r7, #28
 800014e:	46bd      	mov	sp, r7
 8000150:	bc80      	pop	{r7}
 8000152:	4770      	bx	lr
 8000154:	20000000 	.word	0x20000000
 8000158:	20000100 	.word	0x20000100

0800015c <NVIC_EnableIRQ>:
 800015c:	b480      	push	{r7}
 800015e:	b083      	sub	sp, #12
 8000160:	af00      	add	r7, sp, #0
 8000162:	4603      	mov	r3, r0
 8000164:	71fb      	strb	r3, [r7, #7]
 8000166:	4908      	ldr	r1, [pc, #32]	; (8000188 <NVIC_EnableIRQ+0x2c>)
 8000168:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800016c:	095b      	lsrs	r3, r3, #5
 800016e:	79fa      	ldrb	r2, [r7, #7]
 8000170:	f002 021f 	and.w	r2, r2, #31
 8000174:	2001      	movs	r0, #1
 8000176:	fa00 f202 	lsl.w	r2, r0, r2
 800017a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800017e:	bf00      	nop
 8000180:	370c      	adds	r7, #12
 8000182:	46bd      	mov	sp, r7
 8000184:	bc80      	pop	{r7}
 8000186:	4770      	bx	lr
 8000188:	e000e100 	.word	0xe000e100

0800018c <start_trans>:
 800018c:	b480      	push	{r7}
 800018e:	b083      	sub	sp, #12
 8000190:	af00      	add	r7, sp, #0
 8000192:	6078      	str	r0, [r7, #4]
 8000194:	687b      	ldr	r3, [r7, #4]
 8000196:	4a0d      	ldr	r2, [pc, #52]	; (80001cc <start_trans+0x40>)
 8000198:	6013      	str	r3, [r2, #0]
 800019a:	4b0d      	ldr	r3, [pc, #52]	; (80001d0 <start_trans+0x44>)
 800019c:	2200      	movs	r2, #0
 800019e:	601a      	str	r2, [r3, #0]
 80001a0:	4a0c      	ldr	r2, [pc, #48]	; (80001d4 <start_trans+0x48>)
 80001a2:	4b0c      	ldr	r3, [pc, #48]	; (80001d4 <start_trans+0x48>)
 80001a4:	899b      	ldrh	r3, [r3, #12]
 80001a6:	b29b      	uxth	r3, r3
 80001a8:	f043 0308 	orr.w	r3, r3, #8
 80001ac:	b29b      	uxth	r3, r3
 80001ae:	8193      	strh	r3, [r2, #12]
 80001b0:	4a08      	ldr	r2, [pc, #32]	; (80001d4 <start_trans+0x48>)
 80001b2:	4b08      	ldr	r3, [pc, #32]	; (80001d4 <start_trans+0x48>)
 80001b4:	899b      	ldrh	r3, [r3, #12]
 80001b6:	b29b      	uxth	r3, r3
 80001b8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80001bc:	b29b      	uxth	r3, r3
 80001be:	8193      	strh	r3, [r2, #12]
 80001c0:	bf00      	nop
 80001c2:	370c      	adds	r7, #12
 80001c4:	46bd      	mov	sp, r7
 80001c6:	bc80      	pop	{r7}
 80001c8:	4770      	bx	lr
 80001ca:	bf00      	nop
 80001cc:	20000428 	.word	0x20000428
 80001d0:	20000424 	.word	0x20000424
 80001d4:	40004400 	.word	0x40004400

080001d8 <modbus_init>:
 80001d8:	b580      	push	{r7, lr}
 80001da:	af00      	add	r7, sp, #0
 80001dc:	4a1b      	ldr	r2, [pc, #108]	; (800024c <modbus_init+0x74>)
 80001de:	4b1b      	ldr	r3, [pc, #108]	; (800024c <modbus_init+0x74>)
 80001e0:	681b      	ldr	r3, [r3, #0]
 80001e2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80001e6:	6013      	str	r3, [r2, #0]
 80001e8:	4a18      	ldr	r2, [pc, #96]	; (800024c <modbus_init+0x74>)
 80001ea:	4b18      	ldr	r3, [pc, #96]	; (800024c <modbus_init+0x74>)
 80001ec:	681b      	ldr	r3, [r3, #0]
 80001ee:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 80001f2:	6013      	str	r3, [r2, #0]
 80001f4:	4a16      	ldr	r2, [pc, #88]	; (8000250 <modbus_init+0x78>)
 80001f6:	4b16      	ldr	r3, [pc, #88]	; (8000250 <modbus_init+0x78>)
 80001f8:	899b      	ldrh	r3, [r3, #12]
 80001fa:	b29b      	uxth	r3, r3
 80001fc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000200:	b29b      	uxth	r3, r3
 8000202:	8193      	strh	r3, [r2, #12]
 8000204:	4a12      	ldr	r2, [pc, #72]	; (8000250 <modbus_init+0x78>)
 8000206:	4b12      	ldr	r3, [pc, #72]	; (8000250 <modbus_init+0x78>)
 8000208:	899b      	ldrh	r3, [r3, #12]
 800020a:	b29b      	uxth	r3, r3
 800020c:	f043 0304 	orr.w	r3, r3, #4
 8000210:	b29b      	uxth	r3, r3
 8000212:	8193      	strh	r3, [r2, #12]
 8000214:	4a0e      	ldr	r2, [pc, #56]	; (8000250 <modbus_init+0x78>)
 8000216:	4b0e      	ldr	r3, [pc, #56]	; (8000250 <modbus_init+0x78>)
 8000218:	899b      	ldrh	r3, [r3, #12]
 800021a:	b29b      	uxth	r3, r3
 800021c:	f043 0320 	orr.w	r3, r3, #32
 8000220:	b29b      	uxth	r3, r3
 8000222:	8193      	strh	r3, [r2, #12]
 8000224:	4a0a      	ldr	r2, [pc, #40]	; (8000250 <modbus_init+0x78>)
 8000226:	4b0a      	ldr	r3, [pc, #40]	; (8000250 <modbus_init+0x78>)
 8000228:	899b      	ldrh	r3, [r3, #12]
 800022a:	b29b      	uxth	r3, r3
 800022c:	f043 0310 	orr.w	r3, r3, #16
 8000230:	b29b      	uxth	r3, r3
 8000232:	8193      	strh	r3, [r2, #12]
 8000234:	2026      	movs	r0, #38	; 0x26
 8000236:	f7ff ff91 	bl	800015c <NVIC_EnableIRQ>
 800023a:	4b05      	ldr	r3, [pc, #20]	; (8000250 <modbus_init+0x78>)
 800023c:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000240:	811a      	strh	r2, [r3, #8]
 8000242:	2000      	movs	r0, #0
 8000244:	f7ff ffa2 	bl	800018c <start_trans>
 8000248:	bf00      	nop
 800024a:	bd80      	pop	{r7, pc}
 800024c:	40010800 	.word	0x40010800
 8000250:	40004400 	.word	0x40004400

08000254 <USART2_IRQHandler>:
 8000254:	b580      	push	{r7, lr}
 8000256:	b082      	sub	sp, #8
 8000258:	af00      	add	r7, sp, #0
 800025a:	4b29      	ldr	r3, [pc, #164]	; (8000300 <USART2_IRQHandler+0xac>)
 800025c:	881b      	ldrh	r3, [r3, #0]
 800025e:	b29b      	uxth	r3, r3
 8000260:	f003 0310 	and.w	r3, r3, #16
 8000264:	2b00      	cmp	r3, #0
 8000266:	d00c      	beq.n	8000282 <USART2_IRQHandler+0x2e>
 8000268:	4b25      	ldr	r3, [pc, #148]	; (8000300 <USART2_IRQHandler+0xac>)
 800026a:	889b      	ldrh	r3, [r3, #4]
 800026c:	b29b      	uxth	r3, r3
 800026e:	71fb      	strb	r3, [r7, #7]
 8000270:	f000 fe0a 	bl	8000e88 <proc_ADU>
 8000274:	4b23      	ldr	r3, [pc, #140]	; (8000304 <USART2_IRQHandler+0xb0>)
 8000276:	681b      	ldr	r3, [r3, #0]
 8000278:	4a23      	ldr	r2, [pc, #140]	; (8000308 <USART2_IRQHandler+0xb4>)
 800027a:	6013      	str	r3, [r2, #0]
 800027c:	4b21      	ldr	r3, [pc, #132]	; (8000304 <USART2_IRQHandler+0xb0>)
 800027e:	2200      	movs	r2, #0
 8000280:	601a      	str	r2, [r3, #0]
 8000282:	4b1f      	ldr	r3, [pc, #124]	; (8000300 <USART2_IRQHandler+0xac>)
 8000284:	881b      	ldrh	r3, [r3, #0]
 8000286:	b29b      	uxth	r3, r3
 8000288:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800028c:	2b00      	cmp	r3, #0
 800028e:	d01e      	beq.n	80002ce <USART2_IRQHandler+0x7a>
 8000290:	4b1e      	ldr	r3, [pc, #120]	; (800030c <USART2_IRQHandler+0xb8>)
 8000292:	681b      	ldr	r3, [r3, #0]
 8000294:	2b00      	cmp	r3, #0
 8000296:	d108      	bne.n	80002aa <USART2_IRQHandler+0x56>
 8000298:	4a19      	ldr	r2, [pc, #100]	; (8000300 <USART2_IRQHandler+0xac>)
 800029a:	4b19      	ldr	r3, [pc, #100]	; (8000300 <USART2_IRQHandler+0xac>)
 800029c:	899b      	ldrh	r3, [r3, #12]
 800029e:	b29b      	uxth	r3, r3
 80002a0:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80002a4:	b29b      	uxth	r3, r3
 80002a6:	8193      	strh	r3, [r2, #12]
 80002a8:	e011      	b.n	80002ce <USART2_IRQHandler+0x7a>
 80002aa:	4a15      	ldr	r2, [pc, #84]	; (8000300 <USART2_IRQHandler+0xac>)
 80002ac:	4b18      	ldr	r3, [pc, #96]	; (8000310 <USART2_IRQHandler+0xbc>)
 80002ae:	681b      	ldr	r3, [r3, #0]
 80002b0:	4918      	ldr	r1, [pc, #96]	; (8000314 <USART2_IRQHandler+0xc0>)
 80002b2:	5ccb      	ldrb	r3, [r1, r3]
 80002b4:	b29b      	uxth	r3, r3
 80002b6:	8093      	strh	r3, [r2, #4]
 80002b8:	4b15      	ldr	r3, [pc, #84]	; (8000310 <USART2_IRQHandler+0xbc>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	3301      	adds	r3, #1
 80002be:	b2db      	uxtb	r3, r3
 80002c0:	4a13      	ldr	r2, [pc, #76]	; (8000310 <USART2_IRQHandler+0xbc>)
 80002c2:	6013      	str	r3, [r2, #0]
 80002c4:	4b11      	ldr	r3, [pc, #68]	; (800030c <USART2_IRQHandler+0xb8>)
 80002c6:	681b      	ldr	r3, [r3, #0]
 80002c8:	3b01      	subs	r3, #1
 80002ca:	4a10      	ldr	r2, [pc, #64]	; (800030c <USART2_IRQHandler+0xb8>)
 80002cc:	6013      	str	r3, [r2, #0]
 80002ce:	4b0c      	ldr	r3, [pc, #48]	; (8000300 <USART2_IRQHandler+0xac>)
 80002d0:	881b      	ldrh	r3, [r3, #0]
 80002d2:	b29b      	uxth	r3, r3
 80002d4:	f003 0320 	and.w	r3, r3, #32
 80002d8:	2b00      	cmp	r3, #0
 80002da:	d00d      	beq.n	80002f8 <USART2_IRQHandler+0xa4>
 80002dc:	4b09      	ldr	r3, [pc, #36]	; (8000304 <USART2_IRQHandler+0xb0>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	4a07      	ldr	r2, [pc, #28]	; (8000300 <USART2_IRQHandler+0xac>)
 80002e2:	8892      	ldrh	r2, [r2, #4]
 80002e4:	b292      	uxth	r2, r2
 80002e6:	b2d1      	uxtb	r1, r2
 80002e8:	4a0b      	ldr	r2, [pc, #44]	; (8000318 <USART2_IRQHandler+0xc4>)
 80002ea:	54d1      	strb	r1, [r2, r3]
 80002ec:	4b05      	ldr	r3, [pc, #20]	; (8000304 <USART2_IRQHandler+0xb0>)
 80002ee:	681b      	ldr	r3, [r3, #0]
 80002f0:	3301      	adds	r3, #1
 80002f2:	b2db      	uxtb	r3, r3
 80002f4:	4a03      	ldr	r2, [pc, #12]	; (8000304 <USART2_IRQHandler+0xb0>)
 80002f6:	6013      	str	r3, [r2, #0]
 80002f8:	bf00      	nop
 80002fa:	3708      	adds	r7, #8
 80002fc:	46bd      	mov	sp, r7
 80002fe:	bd80      	pop	{r7, pc}
 8000300:	40004400 	.word	0x40004400
 8000304:	2000031c 	.word	0x2000031c
 8000308:	20000320 	.word	0x20000320
 800030c:	20000428 	.word	0x20000428
 8000310:	20000424 	.word	0x20000424
 8000314:	20000324 	.word	0x20000324
 8000318:	2000021c 	.word	0x2000021c

0800031c <pack_bits_to_bytes>:
 800031c:	b480      	push	{r7}
 800031e:	b089      	sub	sp, #36	; 0x24
 8000320:	af00      	add	r7, sp, #0
 8000322:	60f8      	str	r0, [r7, #12]
 8000324:	60b9      	str	r1, [r7, #8]
 8000326:	607a      	str	r2, [r7, #4]
 8000328:	603b      	str	r3, [r7, #0]
 800032a:	687b      	ldr	r3, [r7, #4]
 800032c:	10db      	asrs	r3, r3, #3
 800032e:	61fb      	str	r3, [r7, #28]
 8000330:	687b      	ldr	r3, [r7, #4]
 8000332:	f003 0307 	and.w	r3, r3, #7
 8000336:	617b      	str	r3, [r7, #20]
 8000338:	2300      	movs	r3, #0
 800033a:	61bb      	str	r3, [r7, #24]
 800033c:	69fb      	ldr	r3, [r7, #28]
 800033e:	1c5a      	adds	r2, r3, #1
 8000340:	61fa      	str	r2, [r7, #28]
 8000342:	461a      	mov	r2, r3
 8000344:	68bb      	ldr	r3, [r7, #8]
 8000346:	4413      	add	r3, r2
 8000348:	781b      	ldrb	r3, [r3, #0]
 800034a:	461a      	mov	r2, r3
 800034c:	697b      	ldr	r3, [r7, #20]
 800034e:	fa42 f303 	asr.w	r3, r2, r3
 8000352:	74fb      	strb	r3, [r7, #19]
 8000354:	69fb      	ldr	r3, [r7, #28]
 8000356:	68ba      	ldr	r2, [r7, #8]
 8000358:	4413      	add	r3, r2
 800035a:	781b      	ldrb	r3, [r3, #0]
 800035c:	461a      	mov	r2, r3
 800035e:	697b      	ldr	r3, [r7, #20]
 8000360:	f1c3 0308 	rsb	r3, r3, #8
 8000364:	fa02 f303 	lsl.w	r3, r2, r3
 8000368:	b25a      	sxtb	r2, r3
 800036a:	f997 3013 	ldrsb.w	r3, [r7, #19]
 800036e:	4313      	orrs	r3, r2
 8000370:	b25b      	sxtb	r3, r3
 8000372:	74fb      	strb	r3, [r7, #19]
 8000374:	69bb      	ldr	r3, [r7, #24]
 8000376:	68fa      	ldr	r2, [r7, #12]
 8000378:	4413      	add	r3, r2
 800037a:	7cfa      	ldrb	r2, [r7, #19]
 800037c:	701a      	strb	r2, [r3, #0]
 800037e:	683b      	ldr	r3, [r7, #0]
 8000380:	2b08      	cmp	r3, #8
 8000382:	dd06      	ble.n	8000392 <pack_bits_to_bytes+0x76>
 8000384:	683b      	ldr	r3, [r7, #0]
 8000386:	3b08      	subs	r3, #8
 8000388:	603b      	str	r3, [r7, #0]
 800038a:	69bb      	ldr	r3, [r7, #24]
 800038c:	3301      	adds	r3, #1
 800038e:	61bb      	str	r3, [r7, #24]
 8000390:	e7d4      	b.n	800033c <pack_bits_to_bytes+0x20>
 8000392:	69bb      	ldr	r3, [r7, #24]
 8000394:	68fa      	ldr	r2, [r7, #12]
 8000396:	4413      	add	r3, r2
 8000398:	69ba      	ldr	r2, [r7, #24]
 800039a:	68f9      	ldr	r1, [r7, #12]
 800039c:	440a      	add	r2, r1
 800039e:	7812      	ldrb	r2, [r2, #0]
 80003a0:	b251      	sxtb	r1, r2
 80003a2:	683a      	ldr	r2, [r7, #0]
 80003a4:	f1c2 0208 	rsb	r2, r2, #8
 80003a8:	20ff      	movs	r0, #255	; 0xff
 80003aa:	fa40 f202 	asr.w	r2, r0, r2
 80003ae:	b252      	sxtb	r2, r2
 80003b0:	400a      	ands	r2, r1
 80003b2:	b252      	sxtb	r2, r2
 80003b4:	b2d2      	uxtb	r2, r2
 80003b6:	701a      	strb	r2, [r3, #0]
 80003b8:	bf00      	nop
 80003ba:	69bb      	ldr	r3, [r7, #24]
 80003bc:	3301      	adds	r3, #1
 80003be:	4618      	mov	r0, r3
 80003c0:	3724      	adds	r7, #36	; 0x24
 80003c2:	46bd      	mov	sp, r7
 80003c4:	bc80      	pop	{r7}
 80003c6:	4770      	bx	lr

080003c8 <set_coil>:
 80003c8:	b480      	push	{r7}
 80003ca:	b085      	sub	sp, #20
 80003cc:	af00      	add	r7, sp, #0
 80003ce:	6078      	str	r0, [r7, #4]
 80003d0:	460b      	mov	r3, r1
 80003d2:	70fb      	strb	r3, [r7, #3]
 80003d4:	687b      	ldr	r3, [r7, #4]
 80003d6:	3b13      	subs	r3, #19
 80003d8:	607b      	str	r3, [r7, #4]
 80003da:	687b      	ldr	r3, [r7, #4]
 80003dc:	10db      	asrs	r3, r3, #3
 80003de:	60fb      	str	r3, [r7, #12]
 80003e0:	687b      	ldr	r3, [r7, #4]
 80003e2:	f003 0307 	and.w	r3, r3, #7
 80003e6:	60bb      	str	r3, [r7, #8]
 80003e8:	4a15      	ldr	r2, [pc, #84]	; (8000440 <set_coil+0x78>)
 80003ea:	68fb      	ldr	r3, [r7, #12]
 80003ec:	4413      	add	r3, r2
 80003ee:	781b      	ldrb	r3, [r3, #0]
 80003f0:	b25a      	sxtb	r2, r3
 80003f2:	2101      	movs	r1, #1
 80003f4:	68bb      	ldr	r3, [r7, #8]
 80003f6:	fa01 f303 	lsl.w	r3, r1, r3
 80003fa:	b25b      	sxtb	r3, r3
 80003fc:	43db      	mvns	r3, r3
 80003fe:	b25b      	sxtb	r3, r3
 8000400:	4013      	ands	r3, r2
 8000402:	b25b      	sxtb	r3, r3
 8000404:	b2d9      	uxtb	r1, r3
 8000406:	4a0e      	ldr	r2, [pc, #56]	; (8000440 <set_coil+0x78>)
 8000408:	68fb      	ldr	r3, [r7, #12]
 800040a:	4413      	add	r3, r2
 800040c:	460a      	mov	r2, r1
 800040e:	701a      	strb	r2, [r3, #0]
 8000410:	4a0b      	ldr	r2, [pc, #44]	; (8000440 <set_coil+0x78>)
 8000412:	68fb      	ldr	r3, [r7, #12]
 8000414:	4413      	add	r3, r2
 8000416:	781b      	ldrb	r3, [r3, #0]
 8000418:	b25a      	sxtb	r2, r3
 800041a:	78f9      	ldrb	r1, [r7, #3]
 800041c:	68bb      	ldr	r3, [r7, #8]
 800041e:	fa01 f303 	lsl.w	r3, r1, r3
 8000422:	b25b      	sxtb	r3, r3
 8000424:	4313      	orrs	r3, r2
 8000426:	b25b      	sxtb	r3, r3
 8000428:	b2d9      	uxtb	r1, r3
 800042a:	4a05      	ldr	r2, [pc, #20]	; (8000440 <set_coil+0x78>)
 800042c:	68fb      	ldr	r3, [r7, #12]
 800042e:	4413      	add	r3, r2
 8000430:	460a      	mov	r2, r1
 8000432:	701a      	strb	r2, [r3, #0]
 8000434:	bf00      	nop
 8000436:	3714      	adds	r7, #20
 8000438:	46bd      	mov	sp, r7
 800043a:	bc80      	pop	{r7}
 800043c:	4770      	bx	lr
 800043e:	bf00      	nop
 8000440:	20000200 	.word	0x20000200

08000444 <pdu_write_single_coil>:
 8000444:	b580      	push	{r7, lr}
 8000446:	b084      	sub	sp, #16
 8000448:	af00      	add	r7, sp, #0
 800044a:	4b3d      	ldr	r3, [pc, #244]	; (8000540 <pdu_write_single_coil+0xfc>)
 800044c:	785b      	ldrb	r3, [r3, #1]
 800044e:	73fb      	strb	r3, [r7, #15]
 8000450:	4b3b      	ldr	r3, [pc, #236]	; (8000540 <pdu_write_single_coil+0xfc>)
 8000452:	789b      	ldrb	r3, [r3, #2]
 8000454:	021b      	lsls	r3, r3, #8
 8000456:	b21a      	sxth	r2, r3
 8000458:	4b39      	ldr	r3, [pc, #228]	; (8000540 <pdu_write_single_coil+0xfc>)
 800045a:	78db      	ldrb	r3, [r3, #3]
 800045c:	b21b      	sxth	r3, r3
 800045e:	4313      	orrs	r3, r2
 8000460:	b21b      	sxth	r3, r3
 8000462:	81bb      	strh	r3, [r7, #12]
 8000464:	4b36      	ldr	r3, [pc, #216]	; (8000540 <pdu_write_single_coil+0xfc>)
 8000466:	791b      	ldrb	r3, [r3, #4]
 8000468:	021b      	lsls	r3, r3, #8
 800046a:	b21a      	sxth	r2, r3
 800046c:	4b34      	ldr	r3, [pc, #208]	; (8000540 <pdu_write_single_coil+0xfc>)
 800046e:	795b      	ldrb	r3, [r3, #5]
 8000470:	b21b      	sxth	r3, r3
 8000472:	4313      	orrs	r3, r2
 8000474:	b21b      	sxth	r3, r3
 8000476:	817b      	strh	r3, [r7, #10]
 8000478:	2301      	movs	r3, #1
 800047a:	607b      	str	r3, [r7, #4]
 800047c:	89bb      	ldrh	r3, [r7, #12]
 800047e:	2b12      	cmp	r3, #18
 8000480:	d902      	bls.n	8000488 <pdu_write_single_coil+0x44>
 8000482:	89bb      	ldrh	r3, [r7, #12]
 8000484:	2b37      	cmp	r3, #55	; 0x37
 8000486:	d910      	bls.n	80004aa <pdu_write_single_coil+0x66>
 8000488:	687b      	ldr	r3, [r7, #4]
 800048a:	1c5a      	adds	r2, r3, #1
 800048c:	607a      	str	r2, [r7, #4]
 800048e:	7bfa      	ldrb	r2, [r7, #15]
 8000490:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000494:	b2d1      	uxtb	r1, r2
 8000496:	4a2b      	ldr	r2, [pc, #172]	; (8000544 <pdu_write_single_coil+0x100>)
 8000498:	54d1      	strb	r1, [r2, r3]
 800049a:	687b      	ldr	r3, [r7, #4]
 800049c:	1c5a      	adds	r2, r3, #1
 800049e:	607a      	str	r2, [r7, #4]
 80004a0:	4a28      	ldr	r2, [pc, #160]	; (8000544 <pdu_write_single_coil+0x100>)
 80004a2:	2102      	movs	r1, #2
 80004a4:	54d1      	strb	r1, [r2, r3]
 80004a6:	687b      	ldr	r3, [r7, #4]
 80004a8:	e046      	b.n	8000538 <pdu_write_single_coil+0xf4>
 80004aa:	897b      	ldrh	r3, [r7, #10]
 80004ac:	2b00      	cmp	r3, #0
 80004ae:	d105      	bne.n	80004bc <pdu_write_single_coil+0x78>
 80004b0:	89bb      	ldrh	r3, [r7, #12]
 80004b2:	2100      	movs	r1, #0
 80004b4:	4618      	mov	r0, r3
 80004b6:	f7ff ff87 	bl	80003c8 <set_coil>
 80004ba:	e01a      	b.n	80004f2 <pdu_write_single_coil+0xae>
 80004bc:	897b      	ldrh	r3, [r7, #10]
 80004be:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
 80004c2:	d105      	bne.n	80004d0 <pdu_write_single_coil+0x8c>
 80004c4:	89bb      	ldrh	r3, [r7, #12]
 80004c6:	2101      	movs	r1, #1
 80004c8:	4618      	mov	r0, r3
 80004ca:	f7ff ff7d 	bl	80003c8 <set_coil>
 80004ce:	e010      	b.n	80004f2 <pdu_write_single_coil+0xae>
 80004d0:	687b      	ldr	r3, [r7, #4]
 80004d2:	1c5a      	adds	r2, r3, #1
 80004d4:	607a      	str	r2, [r7, #4]
 80004d6:	7bfa      	ldrb	r2, [r7, #15]
 80004d8:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80004dc:	b2d1      	uxtb	r1, r2
 80004de:	4a19      	ldr	r2, [pc, #100]	; (8000544 <pdu_write_single_coil+0x100>)
 80004e0:	54d1      	strb	r1, [r2, r3]
 80004e2:	687b      	ldr	r3, [r7, #4]
 80004e4:	1c5a      	adds	r2, r3, #1
 80004e6:	607a      	str	r2, [r7, #4]
 80004e8:	4a16      	ldr	r2, [pc, #88]	; (8000544 <pdu_write_single_coil+0x100>)
 80004ea:	2103      	movs	r1, #3
 80004ec:	54d1      	strb	r1, [r2, r3]
 80004ee:	687b      	ldr	r3, [r7, #4]
 80004f0:	e022      	b.n	8000538 <pdu_write_single_coil+0xf4>
 80004f2:	687b      	ldr	r3, [r7, #4]
 80004f4:	1c5a      	adds	r2, r3, #1
 80004f6:	607a      	str	r2, [r7, #4]
 80004f8:	4912      	ldr	r1, [pc, #72]	; (8000544 <pdu_write_single_coil+0x100>)
 80004fa:	7bfa      	ldrb	r2, [r7, #15]
 80004fc:	54ca      	strb	r2, [r1, r3]
 80004fe:	687b      	ldr	r3, [r7, #4]
 8000500:	1c5a      	adds	r2, r3, #1
 8000502:	607a      	str	r2, [r7, #4]
 8000504:	4a0e      	ldr	r2, [pc, #56]	; (8000540 <pdu_write_single_coil+0xfc>)
 8000506:	7891      	ldrb	r1, [r2, #2]
 8000508:	4a0e      	ldr	r2, [pc, #56]	; (8000544 <pdu_write_single_coil+0x100>)
 800050a:	54d1      	strb	r1, [r2, r3]
 800050c:	687b      	ldr	r3, [r7, #4]
 800050e:	1c5a      	adds	r2, r3, #1
 8000510:	607a      	str	r2, [r7, #4]
 8000512:	4a0b      	ldr	r2, [pc, #44]	; (8000540 <pdu_write_single_coil+0xfc>)
 8000514:	78d1      	ldrb	r1, [r2, #3]
 8000516:	4a0b      	ldr	r2, [pc, #44]	; (8000544 <pdu_write_single_coil+0x100>)
 8000518:	54d1      	strb	r1, [r2, r3]
 800051a:	687b      	ldr	r3, [r7, #4]
 800051c:	1c5a      	adds	r2, r3, #1
 800051e:	607a      	str	r2, [r7, #4]
 8000520:	4a07      	ldr	r2, [pc, #28]	; (8000540 <pdu_write_single_coil+0xfc>)
 8000522:	7911      	ldrb	r1, [r2, #4]
 8000524:	4a07      	ldr	r2, [pc, #28]	; (8000544 <pdu_write_single_coil+0x100>)
 8000526:	54d1      	strb	r1, [r2, r3]
 8000528:	687b      	ldr	r3, [r7, #4]
 800052a:	1c5a      	adds	r2, r3, #1
 800052c:	607a      	str	r2, [r7, #4]
 800052e:	4a04      	ldr	r2, [pc, #16]	; (8000540 <pdu_write_single_coil+0xfc>)
 8000530:	7951      	ldrb	r1, [r2, #5]
 8000532:	4a04      	ldr	r2, [pc, #16]	; (8000544 <pdu_write_single_coil+0x100>)
 8000534:	54d1      	strb	r1, [r2, r3]
 8000536:	687b      	ldr	r3, [r7, #4]
 8000538:	4618      	mov	r0, r3
 800053a:	3710      	adds	r7, #16
 800053c:	46bd      	mov	sp, r7
 800053e:	bd80      	pop	{r7, pc}
 8000540:	2000021c 	.word	0x2000021c
 8000544:	20000324 	.word	0x20000324

08000548 <pdu_write_multiply_coils>:
 8000548:	b580      	push	{r7, lr}
 800054a:	b086      	sub	sp, #24
 800054c:	af00      	add	r7, sp, #0
 800054e:	4b45      	ldr	r3, [pc, #276]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000550:	785b      	ldrb	r3, [r3, #1]
 8000552:	72bb      	strb	r3, [r7, #10]
 8000554:	4b43      	ldr	r3, [pc, #268]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000556:	789b      	ldrb	r3, [r3, #2]
 8000558:	021b      	lsls	r3, r3, #8
 800055a:	b21a      	sxth	r2, r3
 800055c:	4b41      	ldr	r3, [pc, #260]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 800055e:	78db      	ldrb	r3, [r3, #3]
 8000560:	b21b      	sxth	r3, r3
 8000562:	4313      	orrs	r3, r2
 8000564:	b21b      	sxth	r3, r3
 8000566:	82fb      	strh	r3, [r7, #22]
 8000568:	4b3e      	ldr	r3, [pc, #248]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 800056a:	791b      	ldrb	r3, [r3, #4]
 800056c:	021b      	lsls	r3, r3, #8
 800056e:	b21a      	sxth	r2, r3
 8000570:	4b3c      	ldr	r3, [pc, #240]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000572:	795b      	ldrb	r3, [r3, #5]
 8000574:	b21b      	sxth	r3, r3
 8000576:	4313      	orrs	r3, r2
 8000578:	b21b      	sxth	r3, r3
 800057a:	813b      	strh	r3, [r7, #8]
 800057c:	4b39      	ldr	r3, [pc, #228]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 800057e:	799b      	ldrb	r3, [r3, #6]
 8000580:	71fb      	strb	r3, [r7, #7]
 8000582:	2301      	movs	r3, #1
 8000584:	603b      	str	r3, [r7, #0]
 8000586:	8afb      	ldrh	r3, [r7, #22]
 8000588:	2b12      	cmp	r3, #18
 800058a:	d904      	bls.n	8000596 <pdu_write_multiply_coils+0x4e>
 800058c:	8afa      	ldrh	r2, [r7, #22]
 800058e:	893b      	ldrh	r3, [r7, #8]
 8000590:	4413      	add	r3, r2
 8000592:	2b38      	cmp	r3, #56	; 0x38
 8000594:	dd10      	ble.n	80005b8 <pdu_write_multiply_coils+0x70>
 8000596:	683b      	ldr	r3, [r7, #0]
 8000598:	1c5a      	adds	r2, r3, #1
 800059a:	603a      	str	r2, [r7, #0]
 800059c:	7aba      	ldrb	r2, [r7, #10]
 800059e:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80005a2:	b2d1      	uxtb	r1, r2
 80005a4:	4a30      	ldr	r2, [pc, #192]	; (8000668 <pdu_write_multiply_coils+0x120>)
 80005a6:	54d1      	strb	r1, [r2, r3]
 80005a8:	683b      	ldr	r3, [r7, #0]
 80005aa:	1c5a      	adds	r2, r3, #1
 80005ac:	603a      	str	r2, [r7, #0]
 80005ae:	4a2e      	ldr	r2, [pc, #184]	; (8000668 <pdu_write_multiply_coils+0x120>)
 80005b0:	2102      	movs	r1, #2
 80005b2:	54d1      	strb	r1, [r2, r3]
 80005b4:	683b      	ldr	r3, [r7, #0]
 80005b6:	e050      	b.n	800065a <pdu_write_multiply_coils+0x112>
 80005b8:	2300      	movs	r3, #0
 80005ba:	613b      	str	r3, [r7, #16]
 80005bc:	e026      	b.n	800060c <pdu_write_multiply_coils+0xc4>
 80005be:	693b      	ldr	r3, [r7, #16]
 80005c0:	3307      	adds	r3, #7
 80005c2:	4a28      	ldr	r2, [pc, #160]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 80005c4:	5cd3      	ldrb	r3, [r2, r3]
 80005c6:	72fb      	strb	r3, [r7, #11]
 80005c8:	2300      	movs	r3, #0
 80005ca:	60fb      	str	r3, [r7, #12]
 80005cc:	e016      	b.n	80005fc <pdu_write_multiply_coils+0xb4>
 80005ce:	8afb      	ldrh	r3, [r7, #22]
 80005d0:	1c5a      	adds	r2, r3, #1
 80005d2:	82fa      	strh	r2, [r7, #22]
 80005d4:	461a      	mov	r2, r3
 80005d6:	7afb      	ldrb	r3, [r7, #11]
 80005d8:	f003 0301 	and.w	r3, r3, #1
 80005dc:	b2db      	uxtb	r3, r3
 80005de:	4619      	mov	r1, r3
 80005e0:	4610      	mov	r0, r2
 80005e2:	f7ff fef1 	bl	80003c8 <set_coil>
 80005e6:	8afa      	ldrh	r2, [r7, #22]
 80005e8:	893b      	ldrh	r3, [r7, #8]
 80005ea:	3313      	adds	r3, #19
 80005ec:	429a      	cmp	r2, r3
 80005ee:	d009      	beq.n	8000604 <pdu_write_multiply_coils+0xbc>
 80005f0:	7afb      	ldrb	r3, [r7, #11]
 80005f2:	085b      	lsrs	r3, r3, #1
 80005f4:	72fb      	strb	r3, [r7, #11]
 80005f6:	68fb      	ldr	r3, [r7, #12]
 80005f8:	3301      	adds	r3, #1
 80005fa:	60fb      	str	r3, [r7, #12]
 80005fc:	68fb      	ldr	r3, [r7, #12]
 80005fe:	2b07      	cmp	r3, #7
 8000600:	dde5      	ble.n	80005ce <pdu_write_multiply_coils+0x86>
 8000602:	e000      	b.n	8000606 <pdu_write_multiply_coils+0xbe>
 8000604:	bf00      	nop
 8000606:	693b      	ldr	r3, [r7, #16]
 8000608:	3301      	adds	r3, #1
 800060a:	613b      	str	r3, [r7, #16]
 800060c:	79fa      	ldrb	r2, [r7, #7]
 800060e:	693b      	ldr	r3, [r7, #16]
 8000610:	429a      	cmp	r2, r3
 8000612:	dcd4      	bgt.n	80005be <pdu_write_multiply_coils+0x76>
 8000614:	683b      	ldr	r3, [r7, #0]
 8000616:	1c5a      	adds	r2, r3, #1
 8000618:	603a      	str	r2, [r7, #0]
 800061a:	4913      	ldr	r1, [pc, #76]	; (8000668 <pdu_write_multiply_coils+0x120>)
 800061c:	7aba      	ldrb	r2, [r7, #10]
 800061e:	54ca      	strb	r2, [r1, r3]
 8000620:	683b      	ldr	r3, [r7, #0]
 8000622:	1c5a      	adds	r2, r3, #1
 8000624:	603a      	str	r2, [r7, #0]
 8000626:	4a0f      	ldr	r2, [pc, #60]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000628:	7891      	ldrb	r1, [r2, #2]
 800062a:	4a0f      	ldr	r2, [pc, #60]	; (8000668 <pdu_write_multiply_coils+0x120>)
 800062c:	54d1      	strb	r1, [r2, r3]
 800062e:	683b      	ldr	r3, [r7, #0]
 8000630:	1c5a      	adds	r2, r3, #1
 8000632:	603a      	str	r2, [r7, #0]
 8000634:	4a0b      	ldr	r2, [pc, #44]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000636:	78d1      	ldrb	r1, [r2, #3]
 8000638:	4a0b      	ldr	r2, [pc, #44]	; (8000668 <pdu_write_multiply_coils+0x120>)
 800063a:	54d1      	strb	r1, [r2, r3]
 800063c:	683b      	ldr	r3, [r7, #0]
 800063e:	1c5a      	adds	r2, r3, #1
 8000640:	603a      	str	r2, [r7, #0]
 8000642:	4a08      	ldr	r2, [pc, #32]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000644:	7911      	ldrb	r1, [r2, #4]
 8000646:	4a08      	ldr	r2, [pc, #32]	; (8000668 <pdu_write_multiply_coils+0x120>)
 8000648:	54d1      	strb	r1, [r2, r3]
 800064a:	683b      	ldr	r3, [r7, #0]
 800064c:	1c5a      	adds	r2, r3, #1
 800064e:	603a      	str	r2, [r7, #0]
 8000650:	4a04      	ldr	r2, [pc, #16]	; (8000664 <pdu_write_multiply_coils+0x11c>)
 8000652:	7951      	ldrb	r1, [r2, #5]
 8000654:	4a04      	ldr	r2, [pc, #16]	; (8000668 <pdu_write_multiply_coils+0x120>)
 8000656:	54d1      	strb	r1, [r2, r3]
 8000658:	683b      	ldr	r3, [r7, #0]
 800065a:	4618      	mov	r0, r3
 800065c:	3718      	adds	r7, #24
 800065e:	46bd      	mov	sp, r7
 8000660:	bd80      	pop	{r7, pc}
 8000662:	bf00      	nop
 8000664:	2000021c 	.word	0x2000021c
 8000668:	20000324 	.word	0x20000324

0800066c <pdu_read_coils>:
 800066c:	b580      	push	{r7, lr}
 800066e:	b084      	sub	sp, #16
 8000670:	af00      	add	r7, sp, #0
 8000672:	4b28      	ldr	r3, [pc, #160]	; (8000714 <pdu_read_coils+0xa8>)
 8000674:	785b      	ldrb	r3, [r3, #1]
 8000676:	73fb      	strb	r3, [r7, #15]
 8000678:	4b26      	ldr	r3, [pc, #152]	; (8000714 <pdu_read_coils+0xa8>)
 800067a:	789b      	ldrb	r3, [r3, #2]
 800067c:	021b      	lsls	r3, r3, #8
 800067e:	b21a      	sxth	r2, r3
 8000680:	4b24      	ldr	r3, [pc, #144]	; (8000714 <pdu_read_coils+0xa8>)
 8000682:	78db      	ldrb	r3, [r3, #3]
 8000684:	b21b      	sxth	r3, r3
 8000686:	4313      	orrs	r3, r2
 8000688:	b21b      	sxth	r3, r3
 800068a:	81bb      	strh	r3, [r7, #12]
 800068c:	4b21      	ldr	r3, [pc, #132]	; (8000714 <pdu_read_coils+0xa8>)
 800068e:	791b      	ldrb	r3, [r3, #4]
 8000690:	021b      	lsls	r3, r3, #8
 8000692:	b21a      	sxth	r2, r3
 8000694:	4b1f      	ldr	r3, [pc, #124]	; (8000714 <pdu_read_coils+0xa8>)
 8000696:	795b      	ldrb	r3, [r3, #5]
 8000698:	b21b      	sxth	r3, r3
 800069a:	4313      	orrs	r3, r2
 800069c:	b21b      	sxth	r3, r3
 800069e:	817b      	strh	r3, [r7, #10]
 80006a0:	2301      	movs	r3, #1
 80006a2:	607b      	str	r3, [r7, #4]
 80006a4:	89bb      	ldrh	r3, [r7, #12]
 80006a6:	2b12      	cmp	r3, #18
 80006a8:	d904      	bls.n	80006b4 <pdu_read_coils+0x48>
 80006aa:	89ba      	ldrh	r2, [r7, #12]
 80006ac:	897b      	ldrh	r3, [r7, #10]
 80006ae:	4413      	add	r3, r2
 80006b0:	2b38      	cmp	r3, #56	; 0x38
 80006b2:	dd10      	ble.n	80006d6 <pdu_read_coils+0x6a>
 80006b4:	687b      	ldr	r3, [r7, #4]
 80006b6:	1c5a      	adds	r2, r3, #1
 80006b8:	607a      	str	r2, [r7, #4]
 80006ba:	7bfa      	ldrb	r2, [r7, #15]
 80006bc:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80006c0:	b2d1      	uxtb	r1, r2
 80006c2:	4a15      	ldr	r2, [pc, #84]	; (8000718 <pdu_read_coils+0xac>)
 80006c4:	54d1      	strb	r1, [r2, r3]
 80006c6:	687b      	ldr	r3, [r7, #4]
 80006c8:	1c5a      	adds	r2, r3, #1
 80006ca:	607a      	str	r2, [r7, #4]
 80006cc:	4a12      	ldr	r2, [pc, #72]	; (8000718 <pdu_read_coils+0xac>)
 80006ce:	2102      	movs	r1, #2
 80006d0:	54d1      	strb	r1, [r2, r3]
 80006d2:	687b      	ldr	r3, [r7, #4]
 80006d4:	e01a      	b.n	800070c <pdu_read_coils+0xa0>
 80006d6:	687b      	ldr	r3, [r7, #4]
 80006d8:	1c5a      	adds	r2, r3, #1
 80006da:	607a      	str	r2, [r7, #4]
 80006dc:	490e      	ldr	r1, [pc, #56]	; (8000718 <pdu_read_coils+0xac>)
 80006de:	7bfa      	ldrb	r2, [r7, #15]
 80006e0:	54ca      	strb	r2, [r1, r3]
 80006e2:	687b      	ldr	r3, [r7, #4]
 80006e4:	3301      	adds	r3, #1
 80006e6:	607b      	str	r3, [r7, #4]
 80006e8:	687b      	ldr	r3, [r7, #4]
 80006ea:	4a0b      	ldr	r2, [pc, #44]	; (8000718 <pdu_read_coils+0xac>)
 80006ec:	1898      	adds	r0, r3, r2
 80006ee:	89bb      	ldrh	r3, [r7, #12]
 80006f0:	f1a3 0213 	sub.w	r2, r3, #19
 80006f4:	897b      	ldrh	r3, [r7, #10]
 80006f6:	4909      	ldr	r1, [pc, #36]	; (800071c <pdu_read_coils+0xb0>)
 80006f8:	f7ff fe10 	bl	800031c <pack_bits_to_bytes>
 80006fc:	6038      	str	r0, [r7, #0]
 80006fe:	683b      	ldr	r3, [r7, #0]
 8000700:	b2da      	uxtb	r2, r3
 8000702:	4b05      	ldr	r3, [pc, #20]	; (8000718 <pdu_read_coils+0xac>)
 8000704:	709a      	strb	r2, [r3, #2]
 8000706:	683a      	ldr	r2, [r7, #0]
 8000708:	687b      	ldr	r3, [r7, #4]
 800070a:	4413      	add	r3, r2
 800070c:	4618      	mov	r0, r3
 800070e:	3710      	adds	r7, #16
 8000710:	46bd      	mov	sp, r7
 8000712:	bd80      	pop	{r7, pc}
 8000714:	2000021c 	.word	0x2000021c
 8000718:	20000324 	.word	0x20000324
 800071c:	20000200 	.word	0x20000200

08000720 <pdu_read_discrete_inputs>:
 8000720:	b580      	push	{r7, lr}
 8000722:	b084      	sub	sp, #16
 8000724:	af00      	add	r7, sp, #0
 8000726:	4b28      	ldr	r3, [pc, #160]	; (80007c8 <pdu_read_discrete_inputs+0xa8>)
 8000728:	785b      	ldrb	r3, [r3, #1]
 800072a:	73fb      	strb	r3, [r7, #15]
 800072c:	4b26      	ldr	r3, [pc, #152]	; (80007c8 <pdu_read_discrete_inputs+0xa8>)
 800072e:	789b      	ldrb	r3, [r3, #2]
 8000730:	021b      	lsls	r3, r3, #8
 8000732:	b21a      	sxth	r2, r3
 8000734:	4b24      	ldr	r3, [pc, #144]	; (80007c8 <pdu_read_discrete_inputs+0xa8>)
 8000736:	78db      	ldrb	r3, [r3, #3]
 8000738:	b21b      	sxth	r3, r3
 800073a:	4313      	orrs	r3, r2
 800073c:	b21b      	sxth	r3, r3
 800073e:	81bb      	strh	r3, [r7, #12]
 8000740:	4b21      	ldr	r3, [pc, #132]	; (80007c8 <pdu_read_discrete_inputs+0xa8>)
 8000742:	791b      	ldrb	r3, [r3, #4]
 8000744:	021b      	lsls	r3, r3, #8
 8000746:	b21a      	sxth	r2, r3
 8000748:	4b1f      	ldr	r3, [pc, #124]	; (80007c8 <pdu_read_discrete_inputs+0xa8>)
 800074a:	795b      	ldrb	r3, [r3, #5]
 800074c:	b21b      	sxth	r3, r3
 800074e:	4313      	orrs	r3, r2
 8000750:	b21b      	sxth	r3, r3
 8000752:	817b      	strh	r3, [r7, #10]
 8000754:	2301      	movs	r3, #1
 8000756:	607b      	str	r3, [r7, #4]
 8000758:	89bb      	ldrh	r3, [r7, #12]
 800075a:	2bc3      	cmp	r3, #195	; 0xc3
 800075c:	d904      	bls.n	8000768 <pdu_read_discrete_inputs+0x48>
 800075e:	89ba      	ldrh	r2, [r7, #12]
 8000760:	897b      	ldrh	r3, [r7, #10]
 8000762:	4413      	add	r3, r2
 8000764:	2bda      	cmp	r3, #218	; 0xda
 8000766:	dd10      	ble.n	800078a <pdu_read_discrete_inputs+0x6a>
 8000768:	687b      	ldr	r3, [r7, #4]
 800076a:	1c5a      	adds	r2, r3, #1
 800076c:	607a      	str	r2, [r7, #4]
 800076e:	7bfa      	ldrb	r2, [r7, #15]
 8000770:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000774:	b2d1      	uxtb	r1, r2
 8000776:	4a15      	ldr	r2, [pc, #84]	; (80007cc <pdu_read_discrete_inputs+0xac>)
 8000778:	54d1      	strb	r1, [r2, r3]
 800077a:	687b      	ldr	r3, [r7, #4]
 800077c:	1c5a      	adds	r2, r3, #1
 800077e:	607a      	str	r2, [r7, #4]
 8000780:	4a12      	ldr	r2, [pc, #72]	; (80007cc <pdu_read_discrete_inputs+0xac>)
 8000782:	2102      	movs	r1, #2
 8000784:	54d1      	strb	r1, [r2, r3]
 8000786:	687b      	ldr	r3, [r7, #4]
 8000788:	e01a      	b.n	80007c0 <pdu_read_discrete_inputs+0xa0>
 800078a:	687b      	ldr	r3, [r7, #4]
 800078c:	1c5a      	adds	r2, r3, #1
 800078e:	607a      	str	r2, [r7, #4]
 8000790:	490e      	ldr	r1, [pc, #56]	; (80007cc <pdu_read_discrete_inputs+0xac>)
 8000792:	7bfa      	ldrb	r2, [r7, #15]
 8000794:	54ca      	strb	r2, [r1, r3]
 8000796:	687b      	ldr	r3, [r7, #4]
 8000798:	3301      	adds	r3, #1
 800079a:	607b      	str	r3, [r7, #4]
 800079c:	687b      	ldr	r3, [r7, #4]
 800079e:	4a0b      	ldr	r2, [pc, #44]	; (80007cc <pdu_read_discrete_inputs+0xac>)
 80007a0:	1898      	adds	r0, r3, r2
 80007a2:	89bb      	ldrh	r3, [r7, #12]
 80007a4:	f1a3 02c4 	sub.w	r2, r3, #196	; 0xc4
 80007a8:	897b      	ldrh	r3, [r7, #10]
 80007aa:	4909      	ldr	r1, [pc, #36]	; (80007d0 <pdu_read_discrete_inputs+0xb0>)
 80007ac:	f7ff fdb6 	bl	800031c <pack_bits_to_bytes>
 80007b0:	6038      	str	r0, [r7, #0]
 80007b2:	683b      	ldr	r3, [r7, #0]
 80007b4:	b2da      	uxtb	r2, r3
 80007b6:	4b05      	ldr	r3, [pc, #20]	; (80007cc <pdu_read_discrete_inputs+0xac>)
 80007b8:	709a      	strb	r2, [r3, #2]
 80007ba:	683a      	ldr	r2, [r7, #0]
 80007bc:	687b      	ldr	r3, [r7, #4]
 80007be:	4413      	add	r3, r2
 80007c0:	4618      	mov	r0, r3
 80007c2:	3710      	adds	r7, #16
 80007c4:	46bd      	mov	sp, r7
 80007c6:	bd80      	pop	{r7, pc}
 80007c8:	2000021c 	.word	0x2000021c
 80007cc:	20000324 	.word	0x20000324
 80007d0:	20000208 	.word	0x20000208

080007d4 <pdu_report_server_id>:
 80007d4:	b480      	push	{r7}
 80007d6:	b085      	sub	sp, #20
 80007d8:	af00      	add	r7, sp, #0
 80007da:	2316      	movs	r3, #22
 80007dc:	607b      	str	r3, [r7, #4]
 80007de:	4b1c      	ldr	r3, [pc, #112]	; (8000850 <pdu_report_server_id+0x7c>)
 80007e0:	785b      	ldrb	r3, [r3, #1]
 80007e2:	70fb      	strb	r3, [r7, #3]
 80007e4:	2301      	movs	r3, #1
 80007e6:	60fb      	str	r3, [r7, #12]
 80007e8:	68fb      	ldr	r3, [r7, #12]
 80007ea:	1c5a      	adds	r2, r3, #1
 80007ec:	60fa      	str	r2, [r7, #12]
 80007ee:	4919      	ldr	r1, [pc, #100]	; (8000854 <pdu_report_server_id+0x80>)
 80007f0:	78fa      	ldrb	r2, [r7, #3]
 80007f2:	54ca      	strb	r2, [r1, r3]
 80007f4:	68fb      	ldr	r3, [r7, #12]
 80007f6:	1c5a      	adds	r2, r3, #1
 80007f8:	60fa      	str	r2, [r7, #12]
 80007fa:	687a      	ldr	r2, [r7, #4]
 80007fc:	b2d2      	uxtb	r2, r2
 80007fe:	3202      	adds	r2, #2
 8000800:	b2d1      	uxtb	r1, r2
 8000802:	4a14      	ldr	r2, [pc, #80]	; (8000854 <pdu_report_server_id+0x80>)
 8000804:	54d1      	strb	r1, [r2, r3]
 8000806:	68fb      	ldr	r3, [r7, #12]
 8000808:	1c5a      	adds	r2, r3, #1
 800080a:	60fa      	str	r2, [r7, #12]
 800080c:	4a11      	ldr	r2, [pc, #68]	; (8000854 <pdu_report_server_id+0x80>)
 800080e:	2111      	movs	r1, #17
 8000810:	54d1      	strb	r1, [r2, r3]
 8000812:	68fb      	ldr	r3, [r7, #12]
 8000814:	1c5a      	adds	r2, r3, #1
 8000816:	60fa      	str	r2, [r7, #12]
 8000818:	4a0e      	ldr	r2, [pc, #56]	; (8000854 <pdu_report_server_id+0x80>)
 800081a:	21ff      	movs	r1, #255	; 0xff
 800081c:	54d1      	strb	r1, [r2, r3]
 800081e:	2300      	movs	r3, #0
 8000820:	60bb      	str	r3, [r7, #8]
 8000822:	e00b      	b.n	800083c <pdu_report_server_id+0x68>
 8000824:	68fb      	ldr	r3, [r7, #12]
 8000826:	1c5a      	adds	r2, r3, #1
 8000828:	60fa      	str	r2, [r7, #12]
 800082a:	490b      	ldr	r1, [pc, #44]	; (8000858 <pdu_report_server_id+0x84>)
 800082c:	68ba      	ldr	r2, [r7, #8]
 800082e:	440a      	add	r2, r1
 8000830:	7811      	ldrb	r1, [r2, #0]
 8000832:	4a08      	ldr	r2, [pc, #32]	; (8000854 <pdu_report_server_id+0x80>)
 8000834:	54d1      	strb	r1, [r2, r3]
 8000836:	68bb      	ldr	r3, [r7, #8]
 8000838:	3301      	adds	r3, #1
 800083a:	60bb      	str	r3, [r7, #8]
 800083c:	68ba      	ldr	r2, [r7, #8]
 800083e:	687b      	ldr	r3, [r7, #4]
 8000840:	429a      	cmp	r2, r3
 8000842:	dbef      	blt.n	8000824 <pdu_report_server_id+0x50>
 8000844:	68fb      	ldr	r3, [r7, #12]
 8000846:	4618      	mov	r0, r3
 8000848:	3714      	adds	r7, #20
 800084a:	46bd      	mov	sp, r7
 800084c:	bc80      	pop	{r7}
 800084e:	4770      	bx	lr
 8000850:	2000021c 	.word	0x2000021c
 8000854:	20000324 	.word	0x20000324
 8000858:	08001158 	.word	0x08001158

0800085c <pdu_diagnostics>:
 800085c:	b480      	push	{r7}
 800085e:	b085      	sub	sp, #20
 8000860:	af00      	add	r7, sp, #0
 8000862:	4b1e      	ldr	r3, [pc, #120]	; (80008dc <pdu_diagnostics+0x80>)
 8000864:	785b      	ldrb	r3, [r3, #1]
 8000866:	71fb      	strb	r3, [r7, #7]
 8000868:	4b1c      	ldr	r3, [pc, #112]	; (80008dc <pdu_diagnostics+0x80>)
 800086a:	789b      	ldrb	r3, [r3, #2]
 800086c:	021b      	lsls	r3, r3, #8
 800086e:	b21a      	sxth	r2, r3
 8000870:	4b1a      	ldr	r3, [pc, #104]	; (80008dc <pdu_diagnostics+0x80>)
 8000872:	78db      	ldrb	r3, [r3, #3]
 8000874:	b21b      	sxth	r3, r3
 8000876:	4313      	orrs	r3, r2
 8000878:	b21b      	sxth	r3, r3
 800087a:	80bb      	strh	r3, [r7, #4]
 800087c:	2301      	movs	r3, #1
 800087e:	60bb      	str	r3, [r7, #8]
 8000880:	88bb      	ldrh	r3, [r7, #4]
 8000882:	2b00      	cmp	r3, #0
 8000884:	d114      	bne.n	80008b0 <pdu_diagnostics+0x54>
 8000886:	2301      	movs	r3, #1
 8000888:	60fb      	str	r3, [r7, #12]
 800088a:	e00b      	b.n	80008a4 <pdu_diagnostics+0x48>
 800088c:	68bb      	ldr	r3, [r7, #8]
 800088e:	1c5a      	adds	r2, r3, #1
 8000890:	60ba      	str	r2, [r7, #8]
 8000892:	4912      	ldr	r1, [pc, #72]	; (80008dc <pdu_diagnostics+0x80>)
 8000894:	68fa      	ldr	r2, [r7, #12]
 8000896:	440a      	add	r2, r1
 8000898:	7811      	ldrb	r1, [r2, #0]
 800089a:	4a11      	ldr	r2, [pc, #68]	; (80008e0 <pdu_diagnostics+0x84>)
 800089c:	54d1      	strb	r1, [r2, r3]
 800089e:	68fb      	ldr	r3, [r7, #12]
 80008a0:	3301      	adds	r3, #1
 80008a2:	60fb      	str	r3, [r7, #12]
 80008a4:	68fa      	ldr	r2, [r7, #12]
 80008a6:	4b0f      	ldr	r3, [pc, #60]	; (80008e4 <pdu_diagnostics+0x88>)
 80008a8:	681b      	ldr	r3, [r3, #0]
 80008aa:	429a      	cmp	r2, r3
 80008ac:	d3ee      	bcc.n	800088c <pdu_diagnostics+0x30>
 80008ae:	e00e      	b.n	80008ce <pdu_diagnostics+0x72>
 80008b0:	68bb      	ldr	r3, [r7, #8]
 80008b2:	1c5a      	adds	r2, r3, #1
 80008b4:	60ba      	str	r2, [r7, #8]
 80008b6:	79fa      	ldrb	r2, [r7, #7]
 80008b8:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80008bc:	b2d1      	uxtb	r1, r2
 80008be:	4a08      	ldr	r2, [pc, #32]	; (80008e0 <pdu_diagnostics+0x84>)
 80008c0:	54d1      	strb	r1, [r2, r3]
 80008c2:	68bb      	ldr	r3, [r7, #8]
 80008c4:	1c5a      	adds	r2, r3, #1
 80008c6:	60ba      	str	r2, [r7, #8]
 80008c8:	4a05      	ldr	r2, [pc, #20]	; (80008e0 <pdu_diagnostics+0x84>)
 80008ca:	2101      	movs	r1, #1
 80008cc:	54d1      	strb	r1, [r2, r3]
 80008ce:	68bb      	ldr	r3, [r7, #8]
 80008d0:	4618      	mov	r0, r3
 80008d2:	3714      	adds	r7, #20
 80008d4:	46bd      	mov	sp, r7
 80008d6:	bc80      	pop	{r7}
 80008d8:	4770      	bx	lr
 80008da:	bf00      	nop
 80008dc:	2000021c 	.word	0x2000021c
 80008e0:	20000324 	.word	0x20000324
 80008e4:	20000320 	.word	0x20000320

080008e8 <pdu_read_input_registers>:
 80008e8:	b480      	push	{r7}
 80008ea:	b085      	sub	sp, #20
 80008ec:	af00      	add	r7, sp, #0
 80008ee:	4b36      	ldr	r3, [pc, #216]	; (80009c8 <pdu_read_input_registers+0xe0>)
 80008f0:	785b      	ldrb	r3, [r3, #1]
 80008f2:	71fb      	strb	r3, [r7, #7]
 80008f4:	4b34      	ldr	r3, [pc, #208]	; (80009c8 <pdu_read_input_registers+0xe0>)
 80008f6:	789b      	ldrb	r3, [r3, #2]
 80008f8:	021b      	lsls	r3, r3, #8
 80008fa:	b21a      	sxth	r2, r3
 80008fc:	4b32      	ldr	r3, [pc, #200]	; (80009c8 <pdu_read_input_registers+0xe0>)
 80008fe:	78db      	ldrb	r3, [r3, #3]
 8000900:	b21b      	sxth	r3, r3
 8000902:	4313      	orrs	r3, r2
 8000904:	b21b      	sxth	r3, r3
 8000906:	80bb      	strh	r3, [r7, #4]
 8000908:	4b2f      	ldr	r3, [pc, #188]	; (80009c8 <pdu_read_input_registers+0xe0>)
 800090a:	791b      	ldrb	r3, [r3, #4]
 800090c:	021b      	lsls	r3, r3, #8
 800090e:	b21a      	sxth	r2, r3
 8000910:	4b2d      	ldr	r3, [pc, #180]	; (80009c8 <pdu_read_input_registers+0xe0>)
 8000912:	795b      	ldrb	r3, [r3, #5]
 8000914:	b21b      	sxth	r3, r3
 8000916:	4313      	orrs	r3, r2
 8000918:	b21b      	sxth	r3, r3
 800091a:	807b      	strh	r3, [r7, #2]
 800091c:	88bb      	ldrh	r3, [r7, #4]
 800091e:	2b07      	cmp	r3, #7
 8000920:	d904      	bls.n	800092c <pdu_read_input_registers+0x44>
 8000922:	88ba      	ldrh	r2, [r7, #4]
 8000924:	887b      	ldrh	r3, [r7, #2]
 8000926:	4413      	add	r3, r2
 8000928:	2b09      	cmp	r3, #9
 800092a:	dd12      	ble.n	8000952 <pdu_read_input_registers+0x6a>
 800092c:	2301      	movs	r3, #1
 800092e:	60bb      	str	r3, [r7, #8]
 8000930:	68bb      	ldr	r3, [r7, #8]
 8000932:	1c5a      	adds	r2, r3, #1
 8000934:	60ba      	str	r2, [r7, #8]
 8000936:	79fa      	ldrb	r2, [r7, #7]
 8000938:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800093c:	b2d1      	uxtb	r1, r2
 800093e:	4a23      	ldr	r2, [pc, #140]	; (80009cc <pdu_read_input_registers+0xe4>)
 8000940:	54d1      	strb	r1, [r2, r3]
 8000942:	68bb      	ldr	r3, [r7, #8]
 8000944:	1c5a      	adds	r2, r3, #1
 8000946:	60ba      	str	r2, [r7, #8]
 8000948:	4a20      	ldr	r2, [pc, #128]	; (80009cc <pdu_read_input_registers+0xe4>)
 800094a:	2102      	movs	r1, #2
 800094c:	54d1      	strb	r1, [r2, r3]
 800094e:	68bb      	ldr	r3, [r7, #8]
 8000950:	e034      	b.n	80009bc <pdu_read_input_registers+0xd4>
 8000952:	2301      	movs	r3, #1
 8000954:	60bb      	str	r3, [r7, #8]
 8000956:	68bb      	ldr	r3, [r7, #8]
 8000958:	1c5a      	adds	r2, r3, #1
 800095a:	60ba      	str	r2, [r7, #8]
 800095c:	491b      	ldr	r1, [pc, #108]	; (80009cc <pdu_read_input_registers+0xe4>)
 800095e:	79fa      	ldrb	r2, [r7, #7]
 8000960:	54ca      	strb	r2, [r1, r3]
 8000962:	68bb      	ldr	r3, [r7, #8]
 8000964:	1c5a      	adds	r2, r3, #1
 8000966:	60ba      	str	r2, [r7, #8]
 8000968:	887a      	ldrh	r2, [r7, #2]
 800096a:	b2d2      	uxtb	r2, r2
 800096c:	0052      	lsls	r2, r2, #1
 800096e:	b2d1      	uxtb	r1, r2
 8000970:	4a16      	ldr	r2, [pc, #88]	; (80009cc <pdu_read_input_registers+0xe4>)
 8000972:	54d1      	strb	r1, [r2, r3]
 8000974:	2300      	movs	r3, #0
 8000976:	60fb      	str	r3, [r7, #12]
 8000978:	e01b      	b.n	80009b2 <pdu_read_input_registers+0xca>
 800097a:	88bb      	ldrh	r3, [r7, #4]
 800097c:	f1a3 0208 	sub.w	r2, r3, #8
 8000980:	68fb      	ldr	r3, [r7, #12]
 8000982:	4413      	add	r3, r2
 8000984:	4a12      	ldr	r2, [pc, #72]	; (80009d0 <pdu_read_input_registers+0xe8>)
 8000986:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800098a:	803b      	strh	r3, [r7, #0]
 800098c:	68bb      	ldr	r3, [r7, #8]
 800098e:	1c5a      	adds	r2, r3, #1
 8000990:	60ba      	str	r2, [r7, #8]
 8000992:	883a      	ldrh	r2, [r7, #0]
 8000994:	0a12      	lsrs	r2, r2, #8
 8000996:	b292      	uxth	r2, r2
 8000998:	b2d1      	uxtb	r1, r2
 800099a:	4a0c      	ldr	r2, [pc, #48]	; (80009cc <pdu_read_input_registers+0xe4>)
 800099c:	54d1      	strb	r1, [r2, r3]
 800099e:	68bb      	ldr	r3, [r7, #8]
 80009a0:	1c5a      	adds	r2, r3, #1
 80009a2:	60ba      	str	r2, [r7, #8]
 80009a4:	883a      	ldrh	r2, [r7, #0]
 80009a6:	b2d1      	uxtb	r1, r2
 80009a8:	4a08      	ldr	r2, [pc, #32]	; (80009cc <pdu_read_input_registers+0xe4>)
 80009aa:	54d1      	strb	r1, [r2, r3]
 80009ac:	68fb      	ldr	r3, [r7, #12]
 80009ae:	3301      	adds	r3, #1
 80009b0:	60fb      	str	r3, [r7, #12]
 80009b2:	887a      	ldrh	r2, [r7, #2]
 80009b4:	68fb      	ldr	r3, [r7, #12]
 80009b6:	429a      	cmp	r2, r3
 80009b8:	dcdf      	bgt.n	800097a <pdu_read_input_registers+0x92>
 80009ba:	68bb      	ldr	r3, [r7, #8]
 80009bc:	4618      	mov	r0, r3
 80009be:	3714      	adds	r7, #20
 80009c0:	46bd      	mov	sp, r7
 80009c2:	bc80      	pop	{r7}
 80009c4:	4770      	bx	lr
 80009c6:	bf00      	nop
 80009c8:	2000021c 	.word	0x2000021c
 80009cc:	20000324 	.word	0x20000324
 80009d0:	20000214 	.word	0x20000214

080009d4 <pdu_write_single_register>:
 80009d4:	b480      	push	{r7}
 80009d6:	b085      	sub	sp, #20
 80009d8:	af00      	add	r7, sp, #0
 80009da:	4b2f      	ldr	r3, [pc, #188]	; (8000a98 <pdu_write_single_register+0xc4>)
 80009dc:	785b      	ldrb	r3, [r3, #1]
 80009de:	72fb      	strb	r3, [r7, #11]
 80009e0:	4b2d      	ldr	r3, [pc, #180]	; (8000a98 <pdu_write_single_register+0xc4>)
 80009e2:	789b      	ldrb	r3, [r3, #2]
 80009e4:	021b      	lsls	r3, r3, #8
 80009e6:	b21a      	sxth	r2, r3
 80009e8:	4b2b      	ldr	r3, [pc, #172]	; (8000a98 <pdu_write_single_register+0xc4>)
 80009ea:	78db      	ldrb	r3, [r3, #3]
 80009ec:	b21b      	sxth	r3, r3
 80009ee:	4313      	orrs	r3, r2
 80009f0:	b21b      	sxth	r3, r3
 80009f2:	813b      	strh	r3, [r7, #8]
 80009f4:	4b28      	ldr	r3, [pc, #160]	; (8000a98 <pdu_write_single_register+0xc4>)
 80009f6:	791b      	ldrb	r3, [r3, #4]
 80009f8:	021b      	lsls	r3, r3, #8
 80009fa:	b21a      	sxth	r2, r3
 80009fc:	4b26      	ldr	r3, [pc, #152]	; (8000a98 <pdu_write_single_register+0xc4>)
 80009fe:	795b      	ldrb	r3, [r3, #5]
 8000a00:	b21b      	sxth	r3, r3
 8000a02:	4313      	orrs	r3, r2
 8000a04:	b21b      	sxth	r3, r3
 8000a06:	80fb      	strh	r3, [r7, #6]
 8000a08:	893b      	ldrh	r3, [r7, #8]
 8000a0a:	2b6a      	cmp	r3, #106	; 0x6a
 8000a0c:	d902      	bls.n	8000a14 <pdu_write_single_register+0x40>
 8000a0e:	893b      	ldrh	r3, [r7, #8]
 8000a10:	2b6d      	cmp	r3, #109	; 0x6d
 8000a12:	d911      	bls.n	8000a38 <pdu_write_single_register+0x64>
 8000a14:	2301      	movs	r3, #1
 8000a16:	60fb      	str	r3, [r7, #12]
 8000a18:	68fb      	ldr	r3, [r7, #12]
 8000a1a:	1c5a      	adds	r2, r3, #1
 8000a1c:	60fa      	str	r2, [r7, #12]
 8000a1e:	7afa      	ldrb	r2, [r7, #11]
 8000a20:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000a24:	b2d1      	uxtb	r1, r2
 8000a26:	4a1d      	ldr	r2, [pc, #116]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a28:	54d1      	strb	r1, [r2, r3]
 8000a2a:	68fb      	ldr	r3, [r7, #12]
 8000a2c:	1c5a      	adds	r2, r3, #1
 8000a2e:	60fa      	str	r2, [r7, #12]
 8000a30:	4a1a      	ldr	r2, [pc, #104]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a32:	2102      	movs	r1, #2
 8000a34:	54d1      	strb	r1, [r2, r3]
 8000a36:	e029      	b.n	8000a8c <pdu_write_single_register+0xb8>
 8000a38:	893b      	ldrh	r3, [r7, #8]
 8000a3a:	3b6b      	subs	r3, #107	; 0x6b
 8000a3c:	4918      	ldr	r1, [pc, #96]	; (8000aa0 <pdu_write_single_register+0xcc>)
 8000a3e:	88fa      	ldrh	r2, [r7, #6]
 8000a40:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8000a44:	2301      	movs	r3, #1
 8000a46:	60fb      	str	r3, [r7, #12]
 8000a48:	68fb      	ldr	r3, [r7, #12]
 8000a4a:	1c5a      	adds	r2, r3, #1
 8000a4c:	60fa      	str	r2, [r7, #12]
 8000a4e:	4913      	ldr	r1, [pc, #76]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a50:	7afa      	ldrb	r2, [r7, #11]
 8000a52:	54ca      	strb	r2, [r1, r3]
 8000a54:	68fb      	ldr	r3, [r7, #12]
 8000a56:	1c5a      	adds	r2, r3, #1
 8000a58:	60fa      	str	r2, [r7, #12]
 8000a5a:	4a0f      	ldr	r2, [pc, #60]	; (8000a98 <pdu_write_single_register+0xc4>)
 8000a5c:	7891      	ldrb	r1, [r2, #2]
 8000a5e:	4a0f      	ldr	r2, [pc, #60]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a60:	54d1      	strb	r1, [r2, r3]
 8000a62:	68fb      	ldr	r3, [r7, #12]
 8000a64:	1c5a      	adds	r2, r3, #1
 8000a66:	60fa      	str	r2, [r7, #12]
 8000a68:	4a0b      	ldr	r2, [pc, #44]	; (8000a98 <pdu_write_single_register+0xc4>)
 8000a6a:	78d1      	ldrb	r1, [r2, #3]
 8000a6c:	4a0b      	ldr	r2, [pc, #44]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a6e:	54d1      	strb	r1, [r2, r3]
 8000a70:	68fb      	ldr	r3, [r7, #12]
 8000a72:	1c5a      	adds	r2, r3, #1
 8000a74:	60fa      	str	r2, [r7, #12]
 8000a76:	4a08      	ldr	r2, [pc, #32]	; (8000a98 <pdu_write_single_register+0xc4>)
 8000a78:	7911      	ldrb	r1, [r2, #4]
 8000a7a:	4a08      	ldr	r2, [pc, #32]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a7c:	54d1      	strb	r1, [r2, r3]
 8000a7e:	68fb      	ldr	r3, [r7, #12]
 8000a80:	1c5a      	adds	r2, r3, #1
 8000a82:	60fa      	str	r2, [r7, #12]
 8000a84:	4a04      	ldr	r2, [pc, #16]	; (8000a98 <pdu_write_single_register+0xc4>)
 8000a86:	7951      	ldrb	r1, [r2, #5]
 8000a88:	4a04      	ldr	r2, [pc, #16]	; (8000a9c <pdu_write_single_register+0xc8>)
 8000a8a:	54d1      	strb	r1, [r2, r3]
 8000a8c:	68fb      	ldr	r3, [r7, #12]
 8000a8e:	4618      	mov	r0, r3
 8000a90:	3714      	adds	r7, #20
 8000a92:	46bd      	mov	sp, r7
 8000a94:	bc80      	pop	{r7}
 8000a96:	4770      	bx	lr
 8000a98:	2000021c 	.word	0x2000021c
 8000a9c:	20000324 	.word	0x20000324
 8000aa0:	2000020c 	.word	0x2000020c

08000aa4 <pdu_write_multiply_registers>:
 8000aa4:	b480      	push	{r7}
 8000aa6:	b087      	sub	sp, #28
 8000aa8:	af00      	add	r7, sp, #0
 8000aaa:	4b42      	ldr	r3, [pc, #264]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000aac:	785b      	ldrb	r3, [r3, #1]
 8000aae:	73fb      	strb	r3, [r7, #15]
 8000ab0:	4b40      	ldr	r3, [pc, #256]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000ab2:	789b      	ldrb	r3, [r3, #2]
 8000ab4:	021b      	lsls	r3, r3, #8
 8000ab6:	b21a      	sxth	r2, r3
 8000ab8:	4b3e      	ldr	r3, [pc, #248]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000aba:	78db      	ldrb	r3, [r3, #3]
 8000abc:	b21b      	sxth	r3, r3
 8000abe:	4313      	orrs	r3, r2
 8000ac0:	b21b      	sxth	r3, r3
 8000ac2:	81bb      	strh	r3, [r7, #12]
 8000ac4:	4b3b      	ldr	r3, [pc, #236]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000ac6:	791b      	ldrb	r3, [r3, #4]
 8000ac8:	021b      	lsls	r3, r3, #8
 8000aca:	b21a      	sxth	r2, r3
 8000acc:	4b39      	ldr	r3, [pc, #228]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000ace:	795b      	ldrb	r3, [r3, #5]
 8000ad0:	b21b      	sxth	r3, r3
 8000ad2:	4313      	orrs	r3, r2
 8000ad4:	b21b      	sxth	r3, r3
 8000ad6:	817b      	strh	r3, [r7, #10]
 8000ad8:	4b36      	ldr	r3, [pc, #216]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000ada:	799b      	ldrb	r3, [r3, #6]
 8000adc:	727b      	strb	r3, [r7, #9]
 8000ade:	89bb      	ldrh	r3, [r7, #12]
 8000ae0:	2b6a      	cmp	r3, #106	; 0x6a
 8000ae2:	d904      	bls.n	8000aee <pdu_write_multiply_registers+0x4a>
 8000ae4:	89ba      	ldrh	r2, [r7, #12]
 8000ae6:	897b      	ldrh	r3, [r7, #10]
 8000ae8:	4413      	add	r3, r2
 8000aea:	2b6e      	cmp	r3, #110	; 0x6e
 8000aec:	dd11      	ble.n	8000b12 <pdu_write_multiply_registers+0x6e>
 8000aee:	2301      	movs	r3, #1
 8000af0:	613b      	str	r3, [r7, #16]
 8000af2:	693b      	ldr	r3, [r7, #16]
 8000af4:	1c5a      	adds	r2, r3, #1
 8000af6:	613a      	str	r2, [r7, #16]
 8000af8:	7bfa      	ldrb	r2, [r7, #15]
 8000afa:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000afe:	b2d1      	uxtb	r1, r2
 8000b00:	4a2d      	ldr	r2, [pc, #180]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000b02:	54d1      	strb	r1, [r2, r3]
 8000b04:	693b      	ldr	r3, [r7, #16]
 8000b06:	1c5a      	adds	r2, r3, #1
 8000b08:	613a      	str	r2, [r7, #16]
 8000b0a:	4a2b      	ldr	r2, [pc, #172]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000b0c:	2102      	movs	r1, #2
 8000b0e:	54d1      	strb	r1, [r2, r3]
 8000b10:	e049      	b.n	8000ba6 <pdu_write_multiply_registers+0x102>
 8000b12:	2307      	movs	r3, #7
 8000b14:	613b      	str	r3, [r7, #16]
 8000b16:	2300      	movs	r3, #0
 8000b18:	617b      	str	r3, [r7, #20]
 8000b1a:	e01c      	b.n	8000b56 <pdu_write_multiply_registers+0xb2>
 8000b1c:	693b      	ldr	r3, [r7, #16]
 8000b1e:	1c5a      	adds	r2, r3, #1
 8000b20:	613a      	str	r2, [r7, #16]
 8000b22:	4a24      	ldr	r2, [pc, #144]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000b24:	5cd3      	ldrb	r3, [r2, r3]
 8000b26:	b29b      	uxth	r3, r3
 8000b28:	021b      	lsls	r3, r3, #8
 8000b2a:	80fb      	strh	r3, [r7, #6]
 8000b2c:	693b      	ldr	r3, [r7, #16]
 8000b2e:	1c5a      	adds	r2, r3, #1
 8000b30:	613a      	str	r2, [r7, #16]
 8000b32:	4a20      	ldr	r2, [pc, #128]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000b34:	5cd3      	ldrb	r3, [r2, r3]
 8000b36:	b29a      	uxth	r2, r3
 8000b38:	88fb      	ldrh	r3, [r7, #6]
 8000b3a:	4313      	orrs	r3, r2
 8000b3c:	80fb      	strh	r3, [r7, #6]
 8000b3e:	89bb      	ldrh	r3, [r7, #12]
 8000b40:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 8000b44:	697b      	ldr	r3, [r7, #20]
 8000b46:	4413      	add	r3, r2
 8000b48:	491c      	ldr	r1, [pc, #112]	; (8000bbc <pdu_write_multiply_registers+0x118>)
 8000b4a:	88fa      	ldrh	r2, [r7, #6]
 8000b4c:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8000b50:	697b      	ldr	r3, [r7, #20]
 8000b52:	3301      	adds	r3, #1
 8000b54:	617b      	str	r3, [r7, #20]
 8000b56:	897a      	ldrh	r2, [r7, #10]
 8000b58:	697b      	ldr	r3, [r7, #20]
 8000b5a:	429a      	cmp	r2, r3
 8000b5c:	dcde      	bgt.n	8000b1c <pdu_write_multiply_registers+0x78>
 8000b5e:	2301      	movs	r3, #1
 8000b60:	613b      	str	r3, [r7, #16]
 8000b62:	693b      	ldr	r3, [r7, #16]
 8000b64:	1c5a      	adds	r2, r3, #1
 8000b66:	613a      	str	r2, [r7, #16]
 8000b68:	4913      	ldr	r1, [pc, #76]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000b6a:	7bfa      	ldrb	r2, [r7, #15]
 8000b6c:	54ca      	strb	r2, [r1, r3]
 8000b6e:	693b      	ldr	r3, [r7, #16]
 8000b70:	1c5a      	adds	r2, r3, #1
 8000b72:	613a      	str	r2, [r7, #16]
 8000b74:	4a0f      	ldr	r2, [pc, #60]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000b76:	7891      	ldrb	r1, [r2, #2]
 8000b78:	4a0f      	ldr	r2, [pc, #60]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000b7a:	54d1      	strb	r1, [r2, r3]
 8000b7c:	693b      	ldr	r3, [r7, #16]
 8000b7e:	1c5a      	adds	r2, r3, #1
 8000b80:	613a      	str	r2, [r7, #16]
 8000b82:	4a0c      	ldr	r2, [pc, #48]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000b84:	78d1      	ldrb	r1, [r2, #3]
 8000b86:	4a0c      	ldr	r2, [pc, #48]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000b88:	54d1      	strb	r1, [r2, r3]
 8000b8a:	693b      	ldr	r3, [r7, #16]
 8000b8c:	1c5a      	adds	r2, r3, #1
 8000b8e:	613a      	str	r2, [r7, #16]
 8000b90:	4a08      	ldr	r2, [pc, #32]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000b92:	7911      	ldrb	r1, [r2, #4]
 8000b94:	4a08      	ldr	r2, [pc, #32]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000b96:	54d1      	strb	r1, [r2, r3]
 8000b98:	693b      	ldr	r3, [r7, #16]
 8000b9a:	1c5a      	adds	r2, r3, #1
 8000b9c:	613a      	str	r2, [r7, #16]
 8000b9e:	4a05      	ldr	r2, [pc, #20]	; (8000bb4 <pdu_write_multiply_registers+0x110>)
 8000ba0:	7951      	ldrb	r1, [r2, #5]
 8000ba2:	4a05      	ldr	r2, [pc, #20]	; (8000bb8 <pdu_write_multiply_registers+0x114>)
 8000ba4:	54d1      	strb	r1, [r2, r3]
 8000ba6:	693b      	ldr	r3, [r7, #16]
 8000ba8:	4618      	mov	r0, r3
 8000baa:	371c      	adds	r7, #28
 8000bac:	46bd      	mov	sp, r7
 8000bae:	bc80      	pop	{r7}
 8000bb0:	4770      	bx	lr
 8000bb2:	bf00      	nop
 8000bb4:	2000021c 	.word	0x2000021c
 8000bb8:	20000324 	.word	0x20000324
 8000bbc:	2000020c 	.word	0x2000020c

08000bc0 <pdu_read_holding_registers>:
 8000bc0:	b480      	push	{r7}
 8000bc2:	b085      	sub	sp, #20
 8000bc4:	af00      	add	r7, sp, #0
 8000bc6:	4b35      	ldr	r3, [pc, #212]	; (8000c9c <pdu_read_holding_registers+0xdc>)
 8000bc8:	785b      	ldrb	r3, [r3, #1]
 8000bca:	71fb      	strb	r3, [r7, #7]
 8000bcc:	4b33      	ldr	r3, [pc, #204]	; (8000c9c <pdu_read_holding_registers+0xdc>)
 8000bce:	789b      	ldrb	r3, [r3, #2]
 8000bd0:	021b      	lsls	r3, r3, #8
 8000bd2:	b21a      	sxth	r2, r3
 8000bd4:	4b31      	ldr	r3, [pc, #196]	; (8000c9c <pdu_read_holding_registers+0xdc>)
 8000bd6:	78db      	ldrb	r3, [r3, #3]
 8000bd8:	b21b      	sxth	r3, r3
 8000bda:	4313      	orrs	r3, r2
 8000bdc:	b21b      	sxth	r3, r3
 8000bde:	80bb      	strh	r3, [r7, #4]
 8000be0:	4b2e      	ldr	r3, [pc, #184]	; (8000c9c <pdu_read_holding_registers+0xdc>)
 8000be2:	791b      	ldrb	r3, [r3, #4]
 8000be4:	021b      	lsls	r3, r3, #8
 8000be6:	b21a      	sxth	r2, r3
 8000be8:	4b2c      	ldr	r3, [pc, #176]	; (8000c9c <pdu_read_holding_registers+0xdc>)
 8000bea:	795b      	ldrb	r3, [r3, #5]
 8000bec:	b21b      	sxth	r3, r3
 8000bee:	4313      	orrs	r3, r2
 8000bf0:	b21b      	sxth	r3, r3
 8000bf2:	807b      	strh	r3, [r7, #2]
 8000bf4:	88bb      	ldrh	r3, [r7, #4]
 8000bf6:	2b6a      	cmp	r3, #106	; 0x6a
 8000bf8:	d904      	bls.n	8000c04 <pdu_read_holding_registers+0x44>
 8000bfa:	88ba      	ldrh	r2, [r7, #4]
 8000bfc:	887b      	ldrh	r3, [r7, #2]
 8000bfe:	4413      	add	r3, r2
 8000c00:	2b6e      	cmp	r3, #110	; 0x6e
 8000c02:	dd11      	ble.n	8000c28 <pdu_read_holding_registers+0x68>
 8000c04:	2301      	movs	r3, #1
 8000c06:	60bb      	str	r3, [r7, #8]
 8000c08:	68bb      	ldr	r3, [r7, #8]
 8000c0a:	1c5a      	adds	r2, r3, #1
 8000c0c:	60ba      	str	r2, [r7, #8]
 8000c0e:	79fa      	ldrb	r2, [r7, #7]
 8000c10:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000c14:	b2d1      	uxtb	r1, r2
 8000c16:	4a22      	ldr	r2, [pc, #136]	; (8000ca0 <pdu_read_holding_registers+0xe0>)
 8000c18:	54d1      	strb	r1, [r2, r3]
 8000c1a:	68bb      	ldr	r3, [r7, #8]
 8000c1c:	1c5a      	adds	r2, r3, #1
 8000c1e:	60ba      	str	r2, [r7, #8]
 8000c20:	4a1f      	ldr	r2, [pc, #124]	; (8000ca0 <pdu_read_holding_registers+0xe0>)
 8000c22:	2102      	movs	r1, #2
 8000c24:	54d1      	strb	r1, [r2, r3]
 8000c26:	e033      	b.n	8000c90 <pdu_read_holding_registers+0xd0>
 8000c28:	2301      	movs	r3, #1
 8000c2a:	60bb      	str	r3, [r7, #8]
 8000c2c:	68bb      	ldr	r3, [r7, #8]
 8000c2e:	1c5a      	adds	r2, r3, #1
 8000c30:	60ba      	str	r2, [r7, #8]
 8000c32:	491b      	ldr	r1, [pc, #108]	; (8000ca0 <pdu_read_holding_registers+0xe0>)
 8000c34:	79fa      	ldrb	r2, [r7, #7]
 8000c36:	54ca      	strb	r2, [r1, r3]
 8000c38:	68bb      	ldr	r3, [r7, #8]
 8000c3a:	1c5a      	adds	r2, r3, #1
 8000c3c:	60ba      	str	r2, [r7, #8]
 8000c3e:	887a      	ldrh	r2, [r7, #2]
 8000c40:	b2d2      	uxtb	r2, r2
 8000c42:	0052      	lsls	r2, r2, #1
 8000c44:	b2d1      	uxtb	r1, r2
 8000c46:	4a16      	ldr	r2, [pc, #88]	; (8000ca0 <pdu_read_holding_registers+0xe0>)
 8000c48:	54d1      	strb	r1, [r2, r3]
 8000c4a:	2300      	movs	r3, #0
 8000c4c:	60fb      	str	r3, [r7, #12]
 8000c4e:	e01b      	b.n	8000c88 <pdu_read_holding_registers+0xc8>
 8000c50:	88bb      	ldrh	r3, [r7, #4]
 8000c52:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 8000c56:	68fb      	ldr	r3, [r7, #12]
 8000c58:	4413      	add	r3, r2
 8000c5a:	4a12      	ldr	r2, [pc, #72]	; (8000ca4 <pdu_read_holding_registers+0xe4>)
 8000c5c:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8000c60:	803b      	strh	r3, [r7, #0]
 8000c62:	68bb      	ldr	r3, [r7, #8]
 8000c64:	1c5a      	adds	r2, r3, #1
 8000c66:	60ba      	str	r2, [r7, #8]
 8000c68:	883a      	ldrh	r2, [r7, #0]
 8000c6a:	0a12      	lsrs	r2, r2, #8
 8000c6c:	b292      	uxth	r2, r2
 8000c6e:	b2d1      	uxtb	r1, r2
 8000c70:	4a0b      	ldr	r2, [pc, #44]	; (8000ca0 <pdu_read_holding_registers+0xe0>)
 8000c72:	54d1      	strb	r1, [r2, r3]
 8000c74:	68bb      	ldr	r3, [r7, #8]
 8000c76:	1c5a      	adds	r2, r3, #1
 8000c78:	60ba      	str	r2, [r7, #8]
 8000c7a:	883a      	ldrh	r2, [r7, #0]
 8000c7c:	b2d1      	uxtb	r1, r2
 8000c7e:	4a08      	ldr	r2, [pc, #32]	; (8000ca0 <pdu_read_holding_registers+0xe0>)
 8000c80:	54d1      	strb	r1, [r2, r3]
 8000c82:	68fb      	ldr	r3, [r7, #12]
 8000c84:	3301      	adds	r3, #1
 8000c86:	60fb      	str	r3, [r7, #12]
 8000c88:	887a      	ldrh	r2, [r7, #2]
 8000c8a:	68fb      	ldr	r3, [r7, #12]
 8000c8c:	429a      	cmp	r2, r3
 8000c8e:	dcdf      	bgt.n	8000c50 <pdu_read_holding_registers+0x90>
 8000c90:	68bb      	ldr	r3, [r7, #8]
 8000c92:	4618      	mov	r0, r3
 8000c94:	3714      	adds	r7, #20
 8000c96:	46bd      	mov	sp, r7
 8000c98:	bc80      	pop	{r7}
 8000c9a:	4770      	bx	lr
 8000c9c:	2000021c 	.word	0x2000021c
 8000ca0:	20000324 	.word	0x20000324
 8000ca4:	2000020c 	.word	0x2000020c

08000ca8 <pdu_read_write_multiply_registers>:
 8000ca8:	b480      	push	{r7}
 8000caa:	b087      	sub	sp, #28
 8000cac:	af00      	add	r7, sp, #0
 8000cae:	4b62      	ldr	r3, [pc, #392]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cb0:	785b      	ldrb	r3, [r3, #1]
 8000cb2:	73fb      	strb	r3, [r7, #15]
 8000cb4:	4b60      	ldr	r3, [pc, #384]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cb6:	789b      	ldrb	r3, [r3, #2]
 8000cb8:	021b      	lsls	r3, r3, #8
 8000cba:	b21a      	sxth	r2, r3
 8000cbc:	4b5e      	ldr	r3, [pc, #376]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cbe:	78db      	ldrb	r3, [r3, #3]
 8000cc0:	b21b      	sxth	r3, r3
 8000cc2:	4313      	orrs	r3, r2
 8000cc4:	b21b      	sxth	r3, r3
 8000cc6:	81bb      	strh	r3, [r7, #12]
 8000cc8:	4b5b      	ldr	r3, [pc, #364]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cca:	791b      	ldrb	r3, [r3, #4]
 8000ccc:	021b      	lsls	r3, r3, #8
 8000cce:	b21a      	sxth	r2, r3
 8000cd0:	4b59      	ldr	r3, [pc, #356]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cd2:	795b      	ldrb	r3, [r3, #5]
 8000cd4:	b21b      	sxth	r3, r3
 8000cd6:	4313      	orrs	r3, r2
 8000cd8:	b21b      	sxth	r3, r3
 8000cda:	817b      	strh	r3, [r7, #10]
 8000cdc:	4b56      	ldr	r3, [pc, #344]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cde:	799b      	ldrb	r3, [r3, #6]
 8000ce0:	021b      	lsls	r3, r3, #8
 8000ce2:	b21a      	sxth	r2, r3
 8000ce4:	4b54      	ldr	r3, [pc, #336]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000ce6:	79db      	ldrb	r3, [r3, #7]
 8000ce8:	b21b      	sxth	r3, r3
 8000cea:	4313      	orrs	r3, r2
 8000cec:	b21b      	sxth	r3, r3
 8000cee:	813b      	strh	r3, [r7, #8]
 8000cf0:	4b51      	ldr	r3, [pc, #324]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cf2:	7a1b      	ldrb	r3, [r3, #8]
 8000cf4:	021b      	lsls	r3, r3, #8
 8000cf6:	b21a      	sxth	r2, r3
 8000cf8:	4b4f      	ldr	r3, [pc, #316]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000cfa:	7a5b      	ldrb	r3, [r3, #9]
 8000cfc:	b21b      	sxth	r3, r3
 8000cfe:	4313      	orrs	r3, r2
 8000d00:	b21b      	sxth	r3, r3
 8000d02:	80fb      	strh	r3, [r7, #6]
 8000d04:	4b4c      	ldr	r3, [pc, #304]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000d06:	7a9b      	ldrb	r3, [r3, #10]
 8000d08:	717b      	strb	r3, [r7, #5]
 8000d0a:	89bb      	ldrh	r3, [r7, #12]
 8000d0c:	2b6a      	cmp	r3, #106	; 0x6a
 8000d0e:	d904      	bls.n	8000d1a <pdu_read_write_multiply_registers+0x72>
 8000d10:	89ba      	ldrh	r2, [r7, #12]
 8000d12:	897b      	ldrh	r3, [r7, #10]
 8000d14:	4413      	add	r3, r2
 8000d16:	2b6e      	cmp	r3, #110	; 0x6e
 8000d18:	dd12      	ble.n	8000d40 <pdu_read_write_multiply_registers+0x98>
 8000d1a:	2301      	movs	r3, #1
 8000d1c:	613b      	str	r3, [r7, #16]
 8000d1e:	693b      	ldr	r3, [r7, #16]
 8000d20:	1c5a      	adds	r2, r3, #1
 8000d22:	613a      	str	r2, [r7, #16]
 8000d24:	7bfa      	ldrb	r2, [r7, #15]
 8000d26:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000d2a:	b2d1      	uxtb	r1, r2
 8000d2c:	4a43      	ldr	r2, [pc, #268]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000d2e:	54d1      	strb	r1, [r2, r3]
 8000d30:	693b      	ldr	r3, [r7, #16]
 8000d32:	1c5a      	adds	r2, r3, #1
 8000d34:	613a      	str	r2, [r7, #16]
 8000d36:	4a41      	ldr	r2, [pc, #260]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000d38:	2102      	movs	r1, #2
 8000d3a:	54d1      	strb	r1, [r2, r3]
 8000d3c:	693b      	ldr	r3, [r7, #16]
 8000d3e:	e075      	b.n	8000e2c <pdu_read_write_multiply_registers+0x184>
 8000d40:	893b      	ldrh	r3, [r7, #8]
 8000d42:	2b6a      	cmp	r3, #106	; 0x6a
 8000d44:	d904      	bls.n	8000d50 <pdu_read_write_multiply_registers+0xa8>
 8000d46:	893a      	ldrh	r2, [r7, #8]
 8000d48:	88fb      	ldrh	r3, [r7, #6]
 8000d4a:	4413      	add	r3, r2
 8000d4c:	2b6e      	cmp	r3, #110	; 0x6e
 8000d4e:	dd12      	ble.n	8000d76 <pdu_read_write_multiply_registers+0xce>
 8000d50:	2301      	movs	r3, #1
 8000d52:	613b      	str	r3, [r7, #16]
 8000d54:	693b      	ldr	r3, [r7, #16]
 8000d56:	1c5a      	adds	r2, r3, #1
 8000d58:	613a      	str	r2, [r7, #16]
 8000d5a:	7bfa      	ldrb	r2, [r7, #15]
 8000d5c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000d60:	b2d1      	uxtb	r1, r2
 8000d62:	4a36      	ldr	r2, [pc, #216]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000d64:	54d1      	strb	r1, [r2, r3]
 8000d66:	693b      	ldr	r3, [r7, #16]
 8000d68:	1c5a      	adds	r2, r3, #1
 8000d6a:	613a      	str	r2, [r7, #16]
 8000d6c:	4a33      	ldr	r2, [pc, #204]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000d6e:	2102      	movs	r1, #2
 8000d70:	54d1      	strb	r1, [r2, r3]
 8000d72:	693b      	ldr	r3, [r7, #16]
 8000d74:	e05a      	b.n	8000e2c <pdu_read_write_multiply_registers+0x184>
 8000d76:	230b      	movs	r3, #11
 8000d78:	613b      	str	r3, [r7, #16]
 8000d7a:	2300      	movs	r3, #0
 8000d7c:	617b      	str	r3, [r7, #20]
 8000d7e:	e01c      	b.n	8000dba <pdu_read_write_multiply_registers+0x112>
 8000d80:	693b      	ldr	r3, [r7, #16]
 8000d82:	1c5a      	adds	r2, r3, #1
 8000d84:	613a      	str	r2, [r7, #16]
 8000d86:	4a2c      	ldr	r2, [pc, #176]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000d88:	5cd3      	ldrb	r3, [r2, r3]
 8000d8a:	b29b      	uxth	r3, r3
 8000d8c:	021b      	lsls	r3, r3, #8
 8000d8e:	807b      	strh	r3, [r7, #2]
 8000d90:	693b      	ldr	r3, [r7, #16]
 8000d92:	1c5a      	adds	r2, r3, #1
 8000d94:	613a      	str	r2, [r7, #16]
 8000d96:	4a28      	ldr	r2, [pc, #160]	; (8000e38 <pdu_read_write_multiply_registers+0x190>)
 8000d98:	5cd3      	ldrb	r3, [r2, r3]
 8000d9a:	b29a      	uxth	r2, r3
 8000d9c:	887b      	ldrh	r3, [r7, #2]
 8000d9e:	4313      	orrs	r3, r2
 8000da0:	807b      	strh	r3, [r7, #2]
 8000da2:	893b      	ldrh	r3, [r7, #8]
 8000da4:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 8000da8:	697b      	ldr	r3, [r7, #20]
 8000daa:	4413      	add	r3, r2
 8000dac:	4924      	ldr	r1, [pc, #144]	; (8000e40 <pdu_read_write_multiply_registers+0x198>)
 8000dae:	887a      	ldrh	r2, [r7, #2]
 8000db0:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8000db4:	697b      	ldr	r3, [r7, #20]
 8000db6:	3301      	adds	r3, #1
 8000db8:	617b      	str	r3, [r7, #20]
 8000dba:	88fa      	ldrh	r2, [r7, #6]
 8000dbc:	697b      	ldr	r3, [r7, #20]
 8000dbe:	429a      	cmp	r2, r3
 8000dc0:	dcde      	bgt.n	8000d80 <pdu_read_write_multiply_registers+0xd8>
 8000dc2:	2301      	movs	r3, #1
 8000dc4:	613b      	str	r3, [r7, #16]
 8000dc6:	693b      	ldr	r3, [r7, #16]
 8000dc8:	1c5a      	adds	r2, r3, #1
 8000dca:	613a      	str	r2, [r7, #16]
 8000dcc:	491b      	ldr	r1, [pc, #108]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000dce:	7bfa      	ldrb	r2, [r7, #15]
 8000dd0:	54ca      	strb	r2, [r1, r3]
 8000dd2:	693b      	ldr	r3, [r7, #16]
 8000dd4:	1c5a      	adds	r2, r3, #1
 8000dd6:	613a      	str	r2, [r7, #16]
 8000dd8:	897a      	ldrh	r2, [r7, #10]
 8000dda:	b2d2      	uxtb	r2, r2
 8000ddc:	0052      	lsls	r2, r2, #1
 8000dde:	b2d1      	uxtb	r1, r2
 8000de0:	4a16      	ldr	r2, [pc, #88]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000de2:	54d1      	strb	r1, [r2, r3]
 8000de4:	2300      	movs	r3, #0
 8000de6:	617b      	str	r3, [r7, #20]
 8000de8:	e01b      	b.n	8000e22 <pdu_read_write_multiply_registers+0x17a>
 8000dea:	89bb      	ldrh	r3, [r7, #12]
 8000dec:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 8000df0:	697b      	ldr	r3, [r7, #20]
 8000df2:	4413      	add	r3, r2
 8000df4:	4a12      	ldr	r2, [pc, #72]	; (8000e40 <pdu_read_write_multiply_registers+0x198>)
 8000df6:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8000dfa:	803b      	strh	r3, [r7, #0]
 8000dfc:	693b      	ldr	r3, [r7, #16]
 8000dfe:	1c5a      	adds	r2, r3, #1
 8000e00:	613a      	str	r2, [r7, #16]
 8000e02:	883a      	ldrh	r2, [r7, #0]
 8000e04:	0a12      	lsrs	r2, r2, #8
 8000e06:	b292      	uxth	r2, r2
 8000e08:	b2d1      	uxtb	r1, r2
 8000e0a:	4a0c      	ldr	r2, [pc, #48]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000e0c:	54d1      	strb	r1, [r2, r3]
 8000e0e:	693b      	ldr	r3, [r7, #16]
 8000e10:	1c5a      	adds	r2, r3, #1
 8000e12:	613a      	str	r2, [r7, #16]
 8000e14:	883a      	ldrh	r2, [r7, #0]
 8000e16:	b2d1      	uxtb	r1, r2
 8000e18:	4a08      	ldr	r2, [pc, #32]	; (8000e3c <pdu_read_write_multiply_registers+0x194>)
 8000e1a:	54d1      	strb	r1, [r2, r3]
 8000e1c:	697b      	ldr	r3, [r7, #20]
 8000e1e:	3301      	adds	r3, #1
 8000e20:	617b      	str	r3, [r7, #20]
 8000e22:	897a      	ldrh	r2, [r7, #10]
 8000e24:	697b      	ldr	r3, [r7, #20]
 8000e26:	429a      	cmp	r2, r3
 8000e28:	dcdf      	bgt.n	8000dea <pdu_read_write_multiply_registers+0x142>
 8000e2a:	693b      	ldr	r3, [r7, #16]
 8000e2c:	4618      	mov	r0, r3
 8000e2e:	371c      	adds	r7, #28
 8000e30:	46bd      	mov	sp, r7
 8000e32:	bc80      	pop	{r7}
 8000e34:	4770      	bx	lr
 8000e36:	bf00      	nop
 8000e38:	2000021c 	.word	0x2000021c
 8000e3c:	20000324 	.word	0x20000324
 8000e40:	2000020c 	.word	0x2000020c

08000e44 <pdu_illegal_function_error>:
 8000e44:	b480      	push	{r7}
 8000e46:	b083      	sub	sp, #12
 8000e48:	af00      	add	r7, sp, #0
 8000e4a:	4b0d      	ldr	r3, [pc, #52]	; (8000e80 <pdu_illegal_function_error+0x3c>)
 8000e4c:	785b      	ldrb	r3, [r3, #1]
 8000e4e:	71fb      	strb	r3, [r7, #7]
 8000e50:	2301      	movs	r3, #1
 8000e52:	603b      	str	r3, [r7, #0]
 8000e54:	683b      	ldr	r3, [r7, #0]
 8000e56:	1c5a      	adds	r2, r3, #1
 8000e58:	603a      	str	r2, [r7, #0]
 8000e5a:	79fa      	ldrb	r2, [r7, #7]
 8000e5c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8000e60:	b2d1      	uxtb	r1, r2
 8000e62:	4a08      	ldr	r2, [pc, #32]	; (8000e84 <pdu_illegal_function_error+0x40>)
 8000e64:	54d1      	strb	r1, [r2, r3]
 8000e66:	683b      	ldr	r3, [r7, #0]
 8000e68:	1c5a      	adds	r2, r3, #1
 8000e6a:	603a      	str	r2, [r7, #0]
 8000e6c:	4a05      	ldr	r2, [pc, #20]	; (8000e84 <pdu_illegal_function_error+0x40>)
 8000e6e:	2101      	movs	r1, #1
 8000e70:	54d1      	strb	r1, [r2, r3]
 8000e72:	683b      	ldr	r3, [r7, #0]
 8000e74:	4618      	mov	r0, r3
 8000e76:	370c      	adds	r7, #12
 8000e78:	46bd      	mov	sp, r7
 8000e7a:	bc80      	pop	{r7}
 8000e7c:	4770      	bx	lr
 8000e7e:	bf00      	nop
 8000e80:	2000021c 	.word	0x2000021c
 8000e84:	20000324 	.word	0x20000324

08000e88 <proc_ADU>:
 8000e88:	b580      	push	{r7, lr}
 8000e8a:	b082      	sub	sp, #8
 8000e8c:	af00      	add	r7, sp, #0
 8000e8e:	4b1e      	ldr	r3, [pc, #120]	; (8000f08 <proc_ADU+0x80>)
 8000e90:	681b      	ldr	r3, [r3, #0]
 8000e92:	4619      	mov	r1, r3
 8000e94:	481d      	ldr	r0, [pc, #116]	; (8000f0c <proc_ADU+0x84>)
 8000e96:	f7ff f929 	bl	80000ec <crc16>
 8000e9a:	4603      	mov	r3, r0
 8000e9c:	80fb      	strh	r3, [r7, #6]
 8000e9e:	88fb      	ldrh	r3, [r7, #6]
 8000ea0:	2b00      	cmp	r3, #0
 8000ea2:	d003      	beq.n	8000eac <proc_ADU+0x24>
 8000ea4:	4b1a      	ldr	r3, [pc, #104]	; (8000f10 <proc_ADU+0x88>)
 8000ea6:	2201      	movs	r2, #1
 8000ea8:	601a      	str	r2, [r3, #0]
 8000eaa:	e02a      	b.n	8000f02 <proc_ADU+0x7a>
 8000eac:	4b17      	ldr	r3, [pc, #92]	; (8000f0c <proc_ADU+0x84>)
 8000eae:	781b      	ldrb	r3, [r3, #0]
 8000eb0:	717b      	strb	r3, [r7, #5]
 8000eb2:	4b16      	ldr	r3, [pc, #88]	; (8000f0c <proc_ADU+0x84>)
 8000eb4:	785b      	ldrb	r3, [r3, #1]
 8000eb6:	713b      	strb	r3, [r7, #4]
 8000eb8:	797b      	ldrb	r3, [r7, #5]
 8000eba:	2b11      	cmp	r3, #17
 8000ebc:	d121      	bne.n	8000f02 <proc_ADU+0x7a>
 8000ebe:	4b15      	ldr	r3, [pc, #84]	; (8000f14 <proc_ADU+0x8c>)
 8000ec0:	2211      	movs	r2, #17
 8000ec2:	701a      	strb	r2, [r3, #0]
 8000ec4:	793b      	ldrb	r3, [r7, #4]
 8000ec6:	4a14      	ldr	r2, [pc, #80]	; (8000f18 <proc_ADU+0x90>)
 8000ec8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8000ecc:	4798      	blx	r3
 8000ece:	6038      	str	r0, [r7, #0]
 8000ed0:	6839      	ldr	r1, [r7, #0]
 8000ed2:	4810      	ldr	r0, [pc, #64]	; (8000f14 <proc_ADU+0x8c>)
 8000ed4:	f7ff f90a 	bl	80000ec <crc16>
 8000ed8:	4603      	mov	r3, r0
 8000eda:	80fb      	strh	r3, [r7, #6]
 8000edc:	683b      	ldr	r3, [r7, #0]
 8000ede:	1c5a      	adds	r2, r3, #1
 8000ee0:	603a      	str	r2, [r7, #0]
 8000ee2:	88fa      	ldrh	r2, [r7, #6]
 8000ee4:	b2d1      	uxtb	r1, r2
 8000ee6:	4a0b      	ldr	r2, [pc, #44]	; (8000f14 <proc_ADU+0x8c>)
 8000ee8:	54d1      	strb	r1, [r2, r3]
 8000eea:	683b      	ldr	r3, [r7, #0]
 8000eec:	1c5a      	adds	r2, r3, #1
 8000eee:	603a      	str	r2, [r7, #0]
 8000ef0:	88fa      	ldrh	r2, [r7, #6]
 8000ef2:	0a12      	lsrs	r2, r2, #8
 8000ef4:	b292      	uxth	r2, r2
 8000ef6:	b2d1      	uxtb	r1, r2
 8000ef8:	4a06      	ldr	r2, [pc, #24]	; (8000f14 <proc_ADU+0x8c>)
 8000efa:	54d1      	strb	r1, [r2, r3]
 8000efc:	6838      	ldr	r0, [r7, #0]
 8000efe:	f7ff f945 	bl	800018c <start_trans>
 8000f02:	3708      	adds	r7, #8
 8000f04:	46bd      	mov	sp, r7
 8000f06:	bd80      	pop	{r7, pc}
 8000f08:	2000031c 	.word	0x2000031c
 8000f0c:	2000021c 	.word	0x2000021c
 8000f10:	20000218 	.word	0x20000218
 8000f14:	20000324 	.word	0x20000324
 8000f18:	08001170 	.word	0x08001170

08000f1c <system_init>:
 8000f1c:	b480      	push	{r7}
 8000f1e:	af00      	add	r7, sp, #0
 8000f20:	4a39      	ldr	r2, [pc, #228]	; (8001008 <system_init+0xec>)
 8000f22:	4b39      	ldr	r3, [pc, #228]	; (8001008 <system_init+0xec>)
 8000f24:	681b      	ldr	r3, [r3, #0]
 8000f26:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000f2a:	6013      	str	r3, [r2, #0]
 8000f2c:	bf00      	nop
 8000f2e:	4b36      	ldr	r3, [pc, #216]	; (8001008 <system_init+0xec>)
 8000f30:	681b      	ldr	r3, [r3, #0]
 8000f32:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000f36:	2b00      	cmp	r3, #0
 8000f38:	d0f9      	beq.n	8000f2e <system_init+0x12>
 8000f3a:	4a33      	ldr	r2, [pc, #204]	; (8001008 <system_init+0xec>)
 8000f3c:	4b32      	ldr	r3, [pc, #200]	; (8001008 <system_init+0xec>)
 8000f3e:	685b      	ldr	r3, [r3, #4]
 8000f40:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000f44:	6053      	str	r3, [r2, #4]
 8000f46:	4a30      	ldr	r2, [pc, #192]	; (8001008 <system_init+0xec>)
 8000f48:	4b2f      	ldr	r3, [pc, #188]	; (8001008 <system_init+0xec>)
 8000f4a:	685b      	ldr	r3, [r3, #4]
 8000f4c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000f50:	6053      	str	r3, [r2, #4]
 8000f52:	4a2d      	ldr	r2, [pc, #180]	; (8001008 <system_init+0xec>)
 8000f54:	4b2c      	ldr	r3, [pc, #176]	; (8001008 <system_init+0xec>)
 8000f56:	685b      	ldr	r3, [r3, #4]
 8000f58:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 8000f5c:	6053      	str	r3, [r2, #4]
 8000f5e:	4a2a      	ldr	r2, [pc, #168]	; (8001008 <system_init+0xec>)
 8000f60:	4b29      	ldr	r3, [pc, #164]	; (8001008 <system_init+0xec>)
 8000f62:	685b      	ldr	r3, [r3, #4]
 8000f64:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 8000f68:	6053      	str	r3, [r2, #4]
 8000f6a:	4a27      	ldr	r2, [pc, #156]	; (8001008 <system_init+0xec>)
 8000f6c:	4b26      	ldr	r3, [pc, #152]	; (8001008 <system_init+0xec>)
 8000f6e:	681b      	ldr	r3, [r3, #0]
 8000f70:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000f74:	6013      	str	r3, [r2, #0]
 8000f76:	bf00      	nop
 8000f78:	4b23      	ldr	r3, [pc, #140]	; (8001008 <system_init+0xec>)
 8000f7a:	681b      	ldr	r3, [r3, #0]
 8000f7c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000f80:	2b00      	cmp	r3, #0
 8000f82:	d0f9      	beq.n	8000f78 <system_init+0x5c>
 8000f84:	4a21      	ldr	r2, [pc, #132]	; (800100c <system_init+0xf0>)
 8000f86:	4b21      	ldr	r3, [pc, #132]	; (800100c <system_init+0xf0>)
 8000f88:	681b      	ldr	r3, [r3, #0]
 8000f8a:	f043 0310 	orr.w	r3, r3, #16
 8000f8e:	6013      	str	r3, [r2, #0]
 8000f90:	4a1e      	ldr	r2, [pc, #120]	; (800100c <system_init+0xf0>)
 8000f92:	4b1e      	ldr	r3, [pc, #120]	; (800100c <system_init+0xf0>)
 8000f94:	681b      	ldr	r3, [r3, #0]
 8000f96:	f023 0303 	bic.w	r3, r3, #3
 8000f9a:	6013      	str	r3, [r2, #0]
 8000f9c:	4a1b      	ldr	r2, [pc, #108]	; (800100c <system_init+0xf0>)
 8000f9e:	4b1b      	ldr	r3, [pc, #108]	; (800100c <system_init+0xf0>)
 8000fa0:	681b      	ldr	r3, [r3, #0]
 8000fa2:	f043 0302 	orr.w	r3, r3, #2
 8000fa6:	6013      	str	r3, [r2, #0]
 8000fa8:	4a17      	ldr	r2, [pc, #92]	; (8001008 <system_init+0xec>)
 8000faa:	4b17      	ldr	r3, [pc, #92]	; (8001008 <system_init+0xec>)
 8000fac:	685b      	ldr	r3, [r3, #4]
 8000fae:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000fb2:	6053      	str	r3, [r2, #4]
 8000fb4:	4a14      	ldr	r2, [pc, #80]	; (8001008 <system_init+0xec>)
 8000fb6:	4b14      	ldr	r3, [pc, #80]	; (8001008 <system_init+0xec>)
 8000fb8:	685b      	ldr	r3, [r3, #4]
 8000fba:	f023 0303 	bic.w	r3, r3, #3
 8000fbe:	6053      	str	r3, [r2, #4]
 8000fc0:	4a11      	ldr	r2, [pc, #68]	; (8001008 <system_init+0xec>)
 8000fc2:	4b11      	ldr	r3, [pc, #68]	; (8001008 <system_init+0xec>)
 8000fc4:	685b      	ldr	r3, [r3, #4]
 8000fc6:	f043 0302 	orr.w	r3, r3, #2
 8000fca:	6053      	str	r3, [r2, #4]
 8000fcc:	bf00      	nop
 8000fce:	4b0e      	ldr	r3, [pc, #56]	; (8001008 <system_init+0xec>)
 8000fd0:	685b      	ldr	r3, [r3, #4]
 8000fd2:	f003 030c 	and.w	r3, r3, #12
 8000fd6:	2b08      	cmp	r3, #8
 8000fd8:	d1f9      	bne.n	8000fce <system_init+0xb2>
 8000fda:	4a0b      	ldr	r2, [pc, #44]	; (8001008 <system_init+0xec>)
 8000fdc:	4b0a      	ldr	r3, [pc, #40]	; (8001008 <system_init+0xec>)
 8000fde:	699b      	ldr	r3, [r3, #24]
 8000fe0:	f043 0305 	orr.w	r3, r3, #5
 8000fe4:	6193      	str	r3, [r2, #24]
 8000fe6:	4a08      	ldr	r2, [pc, #32]	; (8001008 <system_init+0xec>)
 8000fe8:	4b07      	ldr	r3, [pc, #28]	; (8001008 <system_init+0xec>)
 8000fea:	69db      	ldr	r3, [r3, #28]
 8000fec:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000ff0:	61d3      	str	r3, [r2, #28]
 8000ff2:	4a05      	ldr	r2, [pc, #20]	; (8001008 <system_init+0xec>)
 8000ff4:	4b04      	ldr	r3, [pc, #16]	; (8001008 <system_init+0xec>)
 8000ff6:	699b      	ldr	r3, [r3, #24]
 8000ff8:	f043 0318 	orr.w	r3, r3, #24
 8000ffc:	6193      	str	r3, [r2, #24]
 8000ffe:	bf00      	nop
 8001000:	46bd      	mov	sp, r7
 8001002:	bc80      	pop	{r7}
 8001004:	4770      	bx	lr
 8001006:	bf00      	nop
 8001008:	40021000 	.word	0x40021000
 800100c:	40022000 	.word	0x40022000

08001010 <main>:
 8001010:	b580      	push	{r7, lr}
 8001012:	af00      	add	r7, sp, #0
 8001014:	f7ff ff82 	bl	8000f1c <system_init>
 8001018:	f7ff f8de 	bl	80001d8 <modbus_init>
 800101c:	f000 f804 	bl	8001028 <led_init>
 8001020:	20e0      	movs	r0, #224	; 0xe0
 8001022:	f000 f81f 	bl	8001064 <led_set>
 8001026:	e7fe      	b.n	8001026 <main+0x16>

08001028 <led_init>:
 8001028:	b480      	push	{r7}
 800102a:	af00      	add	r7, sp, #0
 800102c:	4a0b      	ldr	r2, [pc, #44]	; (800105c <led_init+0x34>)
 800102e:	4b0b      	ldr	r3, [pc, #44]	; (800105c <led_init+0x34>)
 8001030:	685b      	ldr	r3, [r3, #4]
 8001032:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8001036:	6053      	str	r3, [r2, #4]
 8001038:	4a09      	ldr	r2, [pc, #36]	; (8001060 <led_init+0x38>)
 800103a:	4b09      	ldr	r3, [pc, #36]	; (8001060 <led_init+0x38>)
 800103c:	681b      	ldr	r3, [r3, #0]
 800103e:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8001042:	6013      	str	r3, [r2, #0]
 8001044:	4a06      	ldr	r2, [pc, #24]	; (8001060 <led_init+0x38>)
 8001046:	4b06      	ldr	r3, [pc, #24]	; (8001060 <led_init+0x38>)
 8001048:	681b      	ldr	r3, [r3, #0]
 800104a:	f043 534c 	orr.w	r3, r3, #855638016	; 0x33000000
 800104e:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8001052:	6013      	str	r3, [r2, #0]
 8001054:	bf00      	nop
 8001056:	46bd      	mov	sp, r7
 8001058:	bc80      	pop	{r7}
 800105a:	4770      	bx	lr
 800105c:	40011000 	.word	0x40011000
 8001060:	40010c00 	.word	0x40010c00

08001064 <led_set>:
 8001064:	b480      	push	{r7}
 8001066:	b083      	sub	sp, #12
 8001068:	af00      	add	r7, sp, #0
 800106a:	4603      	mov	r3, r0
 800106c:	80fb      	strh	r3, [r7, #6]
 800106e:	88fb      	ldrh	r3, [r7, #6]
 8001070:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
 8001074:	80fb      	strh	r3, [r7, #6]
 8001076:	4a08      	ldr	r2, [pc, #32]	; (8001098 <led_set+0x34>)
 8001078:	4b07      	ldr	r3, [pc, #28]	; (8001098 <led_set+0x34>)
 800107a:	68db      	ldr	r3, [r3, #12]
 800107c:	f023 03e0 	bic.w	r3, r3, #224	; 0xe0
 8001080:	60d3      	str	r3, [r2, #12]
 8001082:	4905      	ldr	r1, [pc, #20]	; (8001098 <led_set+0x34>)
 8001084:	4b04      	ldr	r3, [pc, #16]	; (8001098 <led_set+0x34>)
 8001086:	68da      	ldr	r2, [r3, #12]
 8001088:	88fb      	ldrh	r3, [r7, #6]
 800108a:	4313      	orrs	r3, r2
 800108c:	60cb      	str	r3, [r1, #12]
 800108e:	bf00      	nop
 8001090:	370c      	adds	r7, #12
 8001092:	46bd      	mov	sp, r7
 8001094:	bc80      	pop	{r7}
 8001096:	4770      	bx	lr
 8001098:	40010c00 	.word	0x40010c00

0800109c <led_toggle>:
 800109c:	b480      	push	{r7}
 800109e:	af00      	add	r7, sp, #0
 80010a0:	4a04      	ldr	r2, [pc, #16]	; (80010b4 <led_toggle+0x18>)
 80010a2:	4b04      	ldr	r3, [pc, #16]	; (80010b4 <led_toggle+0x18>)
 80010a4:	68db      	ldr	r3, [r3, #12]
 80010a6:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 80010aa:	60d3      	str	r3, [r2, #12]
 80010ac:	bf00      	nop
 80010ae:	46bd      	mov	sp, r7
 80010b0:	bc80      	pop	{r7}
 80010b2:	4770      	bx	lr
 80010b4:	40011000 	.word	0x40011000

080010b8 <led_on>:
 80010b8:	b480      	push	{r7}
 80010ba:	af00      	add	r7, sp, #0
 80010bc:	4a04      	ldr	r2, [pc, #16]	; (80010d0 <led_on+0x18>)
 80010be:	4b04      	ldr	r3, [pc, #16]	; (80010d0 <led_on+0x18>)
 80010c0:	68db      	ldr	r3, [r3, #12]
 80010c2:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 80010c6:	60d3      	str	r3, [r2, #12]
 80010c8:	bf00      	nop
 80010ca:	46bd      	mov	sp, r7
 80010cc:	bc80      	pop	{r7}
 80010ce:	4770      	bx	lr
 80010d0:	40011000 	.word	0x40011000

080010d4 <led_off>:
 80010d4:	b480      	push	{r7}
 80010d6:	af00      	add	r7, sp, #0
 80010d8:	4a04      	ldr	r2, [pc, #16]	; (80010ec <led_off+0x18>)
 80010da:	4b04      	ldr	r3, [pc, #16]	; (80010ec <led_off+0x18>)
 80010dc:	68db      	ldr	r3, [r3, #12]
 80010de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80010e2:	60d3      	str	r3, [r2, #12]
 80010e4:	bf00      	nop
 80010e6:	46bd      	mov	sp, r7
 80010e8:	bc80      	pop	{r7}
 80010ea:	4770      	bx	lr
 80010ec:	40011000 	.word	0x40011000

080010f0 <handler_reset>:
 80010f0:	b580      	push	{r7, lr}
 80010f2:	b082      	sub	sp, #8
 80010f4:	af00      	add	r7, sp, #0
 80010f6:	4b11      	ldr	r3, [pc, #68]	; (800113c <handler_reset+0x4c>)
 80010f8:	607b      	str	r3, [r7, #4]
 80010fa:	4b11      	ldr	r3, [pc, #68]	; (8001140 <handler_reset+0x50>)
 80010fc:	603b      	str	r3, [r7, #0]
 80010fe:	e007      	b.n	8001110 <handler_reset+0x20>
 8001100:	683b      	ldr	r3, [r7, #0]
 8001102:	1d1a      	adds	r2, r3, #4
 8001104:	603a      	str	r2, [r7, #0]
 8001106:	687a      	ldr	r2, [r7, #4]
 8001108:	1d11      	adds	r1, r2, #4
 800110a:	6079      	str	r1, [r7, #4]
 800110c:	6812      	ldr	r2, [r2, #0]
 800110e:	601a      	str	r2, [r3, #0]
 8001110:	683b      	ldr	r3, [r7, #0]
 8001112:	4a0c      	ldr	r2, [pc, #48]	; (8001144 <handler_reset+0x54>)
 8001114:	4293      	cmp	r3, r2
 8001116:	d3f3      	bcc.n	8001100 <handler_reset+0x10>
 8001118:	4b0b      	ldr	r3, [pc, #44]	; (8001148 <handler_reset+0x58>)
 800111a:	603b      	str	r3, [r7, #0]
 800111c:	e004      	b.n	8001128 <handler_reset+0x38>
 800111e:	683b      	ldr	r3, [r7, #0]
 8001120:	1d1a      	adds	r2, r3, #4
 8001122:	603a      	str	r2, [r7, #0]
 8001124:	2200      	movs	r2, #0
 8001126:	601a      	str	r2, [r3, #0]
 8001128:	683b      	ldr	r3, [r7, #0]
 800112a:	4a08      	ldr	r2, [pc, #32]	; (800114c <handler_reset+0x5c>)
 800112c:	4293      	cmp	r3, r2
 800112e:	d3f6      	bcc.n	800111e <handler_reset+0x2e>
 8001130:	f7ff ff6e 	bl	8001010 <main>
 8001134:	bf00      	nop
 8001136:	3708      	adds	r7, #8
 8001138:	46bd      	mov	sp, r7
 800113a:	bd80      	pop	{r7, pc}
 800113c:	08001570 	.word	0x08001570
 8001140:	20000000 	.word	0x20000000
 8001144:	20000218 	.word	0x20000218
 8001148:	20000218 	.word	0x20000218
 800114c:	2000042c 	.word	0x2000042c

08001150 <default_handler>:
 8001150:	b480      	push	{r7}
 8001152:	af00      	add	r7, sp, #0
 8001154:	e7fe      	b.n	8001154 <default_handler+0x4>
 8001156:	bf00      	nop

08001158 <device_additional_info>:
 8001158:	794d 7420 7365 2074 6f6d 6264 7375 6420     My test modbus d
 8001168:	7665 6369 0065 0000                         evice...

08001170 <proc_PDU_table>:
 8001170:	0e45 0800 066d 0800 0721 0800 0bc1 0800     E...m...!.......
 8001180:	08e9 0800 0445 0800 09d5 0800 0e45 0800     ....E.......E...
 8001190:	085d 0800 0e45 0800 0e45 0800 0e45 0800     ]...E...E...E...
 80011a0:	0e45 0800 0e45 0800 0e45 0800 0549 0800     E...E...E...I...
 80011b0:	0aa5 0800 07d5 0800 0e45 0800 0e45 0800     ........E...E...
 80011c0:	0e45 0800 0e45 0800 0e45 0800 0ca9 0800     E...E...E.......
 80011d0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80011e0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80011f0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001200:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001210:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001220:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001230:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001240:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001250:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001260:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001270:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001280:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001290:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80012a0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80012b0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80012c0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80012d0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80012e0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80012f0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001300:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001310:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001320:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001330:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001340:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001350:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001360:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001370:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001380:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001390:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80013a0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80013b0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80013c0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80013d0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80013e0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80013f0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001400:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001410:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001420:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001430:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001440:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001450:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001460:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001470:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001480:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001490:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80014a0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80014b0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80014c0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80014d0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80014e0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 80014f0:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001500:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001510:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001520:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001530:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001540:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001550:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
 8001560:	0e45 0800 0e45 0800 0e45 0800 0e45 0800     E...E...E...E...
