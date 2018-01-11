
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 a9 04 00 08 09 05 00 08 09 05 00 08     . . ............
 8000010:	09 05 00 08 09 05 00 08 09 05 00 08 00 00 00 00     ................
	...
 800002c:	09 05 00 08 09 05 00 08 00 00 00 00 09 05 00 08     ................
 800003c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 800004c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 800005c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 800006c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 800007c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 800008c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 800009c:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 80000ac:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 80000bc:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................
 80000cc:	09 05 00 08 09 05 00 08 09 05 00 08 f5 03 00 08     ................
 80000dc:	09 05 00 08 09 05 00 08 09 05 00 08 09 05 00 08     ................

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

0800011c <system_init>:
 800011c:	b580      	push	{r7, lr}
 800011e:	af00      	add	r7, sp, #0
 8000120:	4a33      	ldr	r2, [pc, #204]	; (80001f0 <system_init+0xd4>)
 8000122:	4b33      	ldr	r3, [pc, #204]	; (80001f0 <system_init+0xd4>)
 8000124:	681b      	ldr	r3, [r3, #0]
 8000126:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	bf00      	nop
 800012e:	4b30      	ldr	r3, [pc, #192]	; (80001f0 <system_init+0xd4>)
 8000130:	681b      	ldr	r3, [r3, #0]
 8000132:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000136:	2b00      	cmp	r3, #0
 8000138:	d0f9      	beq.n	800012e <system_init+0x12>
 800013a:	4a2d      	ldr	r2, [pc, #180]	; (80001f0 <system_init+0xd4>)
 800013c:	4b2c      	ldr	r3, [pc, #176]	; (80001f0 <system_init+0xd4>)
 800013e:	685b      	ldr	r3, [r3, #4]
 8000140:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000144:	6053      	str	r3, [r2, #4]
 8000146:	4a2a      	ldr	r2, [pc, #168]	; (80001f0 <system_init+0xd4>)
 8000148:	4b29      	ldr	r3, [pc, #164]	; (80001f0 <system_init+0xd4>)
 800014a:	685b      	ldr	r3, [r3, #4]
 800014c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000150:	6053      	str	r3, [r2, #4]
 8000152:	4a27      	ldr	r2, [pc, #156]	; (80001f0 <system_init+0xd4>)
 8000154:	4b26      	ldr	r3, [pc, #152]	; (80001f0 <system_init+0xd4>)
 8000156:	685b      	ldr	r3, [r3, #4]
 8000158:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800015c:	6053      	str	r3, [r2, #4]
 800015e:	4a24      	ldr	r2, [pc, #144]	; (80001f0 <system_init+0xd4>)
 8000160:	4b23      	ldr	r3, [pc, #140]	; (80001f0 <system_init+0xd4>)
 8000162:	681b      	ldr	r3, [r3, #0]
 8000164:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000168:	6013      	str	r3, [r2, #0]
 800016a:	bf00      	nop
 800016c:	4b20      	ldr	r3, [pc, #128]	; (80001f0 <system_init+0xd4>)
 800016e:	681b      	ldr	r3, [r3, #0]
 8000170:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000174:	2b00      	cmp	r3, #0
 8000176:	d0f9      	beq.n	800016c <system_init+0x50>
 8000178:	4a1e      	ldr	r2, [pc, #120]	; (80001f4 <system_init+0xd8>)
 800017a:	4b1e      	ldr	r3, [pc, #120]	; (80001f4 <system_init+0xd8>)
 800017c:	681b      	ldr	r3, [r3, #0]
 800017e:	f043 0310 	orr.w	r3, r3, #16
 8000182:	6013      	str	r3, [r2, #0]
 8000184:	4a1b      	ldr	r2, [pc, #108]	; (80001f4 <system_init+0xd8>)
 8000186:	4b1b      	ldr	r3, [pc, #108]	; (80001f4 <system_init+0xd8>)
 8000188:	681b      	ldr	r3, [r3, #0]
 800018a:	f023 0303 	bic.w	r3, r3, #3
 800018e:	6013      	str	r3, [r2, #0]
 8000190:	4a18      	ldr	r2, [pc, #96]	; (80001f4 <system_init+0xd8>)
 8000192:	4b18      	ldr	r3, [pc, #96]	; (80001f4 <system_init+0xd8>)
 8000194:	681b      	ldr	r3, [r3, #0]
 8000196:	f043 0302 	orr.w	r3, r3, #2
 800019a:	6013      	str	r3, [r2, #0]
 800019c:	4a14      	ldr	r2, [pc, #80]	; (80001f0 <system_init+0xd4>)
 800019e:	4b14      	ldr	r3, [pc, #80]	; (80001f0 <system_init+0xd4>)
 80001a0:	685b      	ldr	r3, [r3, #4]
 80001a2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80001a6:	6053      	str	r3, [r2, #4]
 80001a8:	4a11      	ldr	r2, [pc, #68]	; (80001f0 <system_init+0xd4>)
 80001aa:	4b11      	ldr	r3, [pc, #68]	; (80001f0 <system_init+0xd4>)
 80001ac:	685b      	ldr	r3, [r3, #4]
 80001ae:	f023 0303 	bic.w	r3, r3, #3
 80001b2:	6053      	str	r3, [r2, #4]
 80001b4:	4a0e      	ldr	r2, [pc, #56]	; (80001f0 <system_init+0xd4>)
 80001b6:	4b0e      	ldr	r3, [pc, #56]	; (80001f0 <system_init+0xd4>)
 80001b8:	685b      	ldr	r3, [r3, #4]
 80001ba:	f043 0302 	orr.w	r3, r3, #2
 80001be:	6053      	str	r3, [r2, #4]
 80001c0:	bf00      	nop
 80001c2:	4b0b      	ldr	r3, [pc, #44]	; (80001f0 <system_init+0xd4>)
 80001c4:	685b      	ldr	r3, [r3, #4]
 80001c6:	f003 030c 	and.w	r3, r3, #12
 80001ca:	2b08      	cmp	r3, #8
 80001cc:	d1f9      	bne.n	80001c2 <system_init+0xa6>
 80001ce:	4a08      	ldr	r2, [pc, #32]	; (80001f0 <system_init+0xd4>)
 80001d0:	4b07      	ldr	r3, [pc, #28]	; (80001f0 <system_init+0xd4>)
 80001d2:	699b      	ldr	r3, [r3, #24]
 80001d4:	f043 0305 	orr.w	r3, r3, #5
 80001d8:	6193      	str	r3, [r2, #24]
 80001da:	4a05      	ldr	r2, [pc, #20]	; (80001f0 <system_init+0xd4>)
 80001dc:	4b04      	ldr	r3, [pc, #16]	; (80001f0 <system_init+0xd4>)
 80001de:	69db      	ldr	r3, [r3, #28]
 80001e0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80001e4:	61d3      	str	r3, [r2, #28]
 80001e6:	f000 f807 	bl	80001f8 <gpio_init>
 80001ea:	f000 f819 	bl	8000220 <uart_init>
 80001ee:	bd80      	pop	{r7, pc}
 80001f0:	40021000 	.word	0x40021000
 80001f4:	40022000 	.word	0x40022000

080001f8 <gpio_init>:
 80001f8:	b480      	push	{r7}
 80001fa:	af00      	add	r7, sp, #0
 80001fc:	4a07      	ldr	r2, [pc, #28]	; (800021c <gpio_init+0x24>)
 80001fe:	4b07      	ldr	r3, [pc, #28]	; (800021c <gpio_init+0x24>)
 8000200:	681b      	ldr	r3, [r3, #0]
 8000202:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000206:	6013      	str	r3, [r2, #0]
 8000208:	4a04      	ldr	r2, [pc, #16]	; (800021c <gpio_init+0x24>)
 800020a:	4b04      	ldr	r3, [pc, #16]	; (800021c <gpio_init+0x24>)
 800020c:	681b      	ldr	r3, [r3, #0]
 800020e:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 8000212:	6013      	str	r3, [r2, #0]
 8000214:	46bd      	mov	sp, r7
 8000216:	f85d 7b04 	ldr.w	r7, [sp], #4
 800021a:	4770      	bx	lr
 800021c:	40010800 	.word	0x40010800

08000220 <uart_init>:
 8000220:	b580      	push	{r7, lr}
 8000222:	af00      	add	r7, sp, #0
 8000224:	4a13      	ldr	r2, [pc, #76]	; (8000274 <uart_init+0x54>)
 8000226:	4b13      	ldr	r3, [pc, #76]	; (8000274 <uart_init+0x54>)
 8000228:	899b      	ldrh	r3, [r3, #12]
 800022a:	b29b      	uxth	r3, r3
 800022c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000230:	b29b      	uxth	r3, r3
 8000232:	8193      	strh	r3, [r2, #12]
 8000234:	4a0f      	ldr	r2, [pc, #60]	; (8000274 <uart_init+0x54>)
 8000236:	4b0f      	ldr	r3, [pc, #60]	; (8000274 <uart_init+0x54>)
 8000238:	899b      	ldrh	r3, [r3, #12]
 800023a:	b29b      	uxth	r3, r3
 800023c:	f043 0304 	orr.w	r3, r3, #4
 8000240:	b29b      	uxth	r3, r3
 8000242:	8193      	strh	r3, [r2, #12]
 8000244:	4a0b      	ldr	r2, [pc, #44]	; (8000274 <uart_init+0x54>)
 8000246:	4b0b      	ldr	r3, [pc, #44]	; (8000274 <uart_init+0x54>)
 8000248:	899b      	ldrh	r3, [r3, #12]
 800024a:	b29b      	uxth	r3, r3
 800024c:	f043 0320 	orr.w	r3, r3, #32
 8000250:	b29b      	uxth	r3, r3
 8000252:	8193      	strh	r3, [r2, #12]
 8000254:	4a07      	ldr	r2, [pc, #28]	; (8000274 <uart_init+0x54>)
 8000256:	4b07      	ldr	r3, [pc, #28]	; (8000274 <uart_init+0x54>)
 8000258:	899b      	ldrh	r3, [r3, #12]
 800025a:	b29b      	uxth	r3, r3
 800025c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000260:	b29b      	uxth	r3, r3
 8000262:	8193      	strh	r3, [r2, #12]
 8000264:	2026      	movs	r0, #38	; 0x26
 8000266:	f7ff ff41 	bl	80000ec <NVIC_EnableIRQ>
 800026a:	4b02      	ldr	r3, [pc, #8]	; (8000274 <uart_init+0x54>)
 800026c:	f640 62a6 	movw	r2, #3750	; 0xea6
 8000270:	811a      	strh	r2, [r3, #8]
 8000272:	bd80      	pop	{r7, pc}
 8000274:	40004400 	.word	0x40004400

08000278 <uart_send>:
 8000278:	b480      	push	{r7}
 800027a:	b085      	sub	sp, #20
 800027c:	af00      	add	r7, sp, #0
 800027e:	6078      	str	r0, [r7, #4]
 8000280:	6039      	str	r1, [r7, #0]
 8000282:	4b20      	ldr	r3, [pc, #128]	; (8000304 <uart_send+0x8c>)
 8000284:	681a      	ldr	r2, [r3, #0]
 8000286:	4b20      	ldr	r3, [pc, #128]	; (8000308 <uart_send+0x90>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	429a      	cmp	r2, r3
 800028c:	d107      	bne.n	800029e <uart_send+0x26>
 800028e:	4a1f      	ldr	r2, [pc, #124]	; (800030c <uart_send+0x94>)
 8000290:	4b1e      	ldr	r3, [pc, #120]	; (800030c <uart_send+0x94>)
 8000292:	899b      	ldrh	r3, [r3, #12]
 8000294:	b29b      	uxth	r3, r3
 8000296:	f043 0308 	orr.w	r3, r3, #8
 800029a:	b29b      	uxth	r3, r3
 800029c:	8193      	strh	r3, [r2, #12]
 800029e:	2300      	movs	r3, #0
 80002a0:	60fb      	str	r3, [r7, #12]
 80002a2:	e01b      	b.n	80002dc <uart_send+0x64>
 80002a4:	4b17      	ldr	r3, [pc, #92]	; (8000304 <uart_send+0x8c>)
 80002a6:	681b      	ldr	r3, [r3, #0]
 80002a8:	68fa      	ldr	r2, [r7, #12]
 80002aa:	6879      	ldr	r1, [r7, #4]
 80002ac:	440a      	add	r2, r1
 80002ae:	7811      	ldrb	r1, [r2, #0]
 80002b0:	4a17      	ldr	r2, [pc, #92]	; (8000310 <uart_send+0x98>)
 80002b2:	54d1      	strb	r1, [r2, r3]
 80002b4:	4b13      	ldr	r3, [pc, #76]	; (8000304 <uart_send+0x8c>)
 80002b6:	681b      	ldr	r3, [r3, #0]
 80002b8:	3301      	adds	r3, #1
 80002ba:	f003 030f 	and.w	r3, r3, #15
 80002be:	4a11      	ldr	r2, [pc, #68]	; (8000304 <uart_send+0x8c>)
 80002c0:	6013      	str	r3, [r2, #0]
 80002c2:	4b10      	ldr	r3, [pc, #64]	; (8000304 <uart_send+0x8c>)
 80002c4:	681a      	ldr	r2, [r3, #0]
 80002c6:	4b10      	ldr	r3, [pc, #64]	; (8000308 <uart_send+0x90>)
 80002c8:	681b      	ldr	r3, [r3, #0]
 80002ca:	429a      	cmp	r2, r3
 80002cc:	d103      	bne.n	80002d6 <uart_send+0x5e>
 80002ce:	68fb      	ldr	r3, [r7, #12]
 80002d0:	3301      	adds	r3, #1
 80002d2:	60fb      	str	r3, [r7, #12]
 80002d4:	e006      	b.n	80002e4 <uart_send+0x6c>
 80002d6:	68fb      	ldr	r3, [r7, #12]
 80002d8:	3301      	adds	r3, #1
 80002da:	60fb      	str	r3, [r7, #12]
 80002dc:	68fa      	ldr	r2, [r7, #12]
 80002de:	683b      	ldr	r3, [r7, #0]
 80002e0:	429a      	cmp	r2, r3
 80002e2:	dbdf      	blt.n	80002a4 <uart_send+0x2c>
 80002e4:	4a09      	ldr	r2, [pc, #36]	; (800030c <uart_send+0x94>)
 80002e6:	4b09      	ldr	r3, [pc, #36]	; (800030c <uart_send+0x94>)
 80002e8:	899b      	ldrh	r3, [r3, #12]
 80002ea:	b29b      	uxth	r3, r3
 80002ec:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80002f0:	b29b      	uxth	r3, r3
 80002f2:	8193      	strh	r3, [r2, #12]
 80002f4:	68fb      	ldr	r3, [r7, #12]
 80002f6:	4618      	mov	r0, r3
 80002f8:	3714      	adds	r7, #20
 80002fa:	46bd      	mov	sp, r7
 80002fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000300:	4770      	bx	lr
 8000302:	bf00      	nop
 8000304:	20000030 	.word	0x20000030
 8000308:	2000002c 	.word	0x2000002c
 800030c:	40004400 	.word	0x40004400
 8000310:	2000001c 	.word	0x2000001c

08000314 <main>:
 8000314:	b580      	push	{r7, lr}
 8000316:	b086      	sub	sp, #24
 8000318:	af00      	add	r7, sp, #0
 800031a:	2300      	movs	r3, #0
 800031c:	617b      	str	r3, [r7, #20]
 800031e:	f7ff fefd 	bl	800011c <system_init>
 8000322:	4a12      	ldr	r2, [pc, #72]	; (800036c <main+0x58>)
 8000324:	4b11      	ldr	r3, [pc, #68]	; (800036c <main+0x58>)
 8000326:	68db      	ldr	r3, [r3, #12]
 8000328:	f043 0310 	orr.w	r3, r3, #16
 800032c:	60d3      	str	r3, [r2, #12]
 800032e:	4a0f      	ldr	r2, [pc, #60]	; (800036c <main+0x58>)
 8000330:	4b0e      	ldr	r3, [pc, #56]	; (800036c <main+0x58>)
 8000332:	68db      	ldr	r3, [r3, #12]
 8000334:	f023 0310 	bic.w	r3, r3, #16
 8000338:	60d3      	str	r3, [r2, #12]
 800033a:	480d      	ldr	r0, [pc, #52]	; (8000370 <main+0x5c>)
 800033c:	2107      	movs	r1, #7
 800033e:	f7ff ff9b 	bl	8000278 <uart_send>
 8000342:	4b0c      	ldr	r3, [pc, #48]	; (8000374 <main+0x60>)
 8000344:	681b      	ldr	r3, [r3, #0]
 8000346:	2b00      	cmp	r3, #0
 8000348:	d00f      	beq.n	800036a <main+0x56>
 800034a:	4b0a      	ldr	r3, [pc, #40]	; (8000374 <main+0x60>)
 800034c:	681b      	ldr	r3, [r3, #0]
 800034e:	463a      	mov	r2, r7
 8000350:	4610      	mov	r0, r2
 8000352:	4619      	mov	r1, r3
 8000354:	f000 f810 	bl	8000378 <uart_read>
 8000358:	6138      	str	r0, [r7, #16]
 800035a:	463b      	mov	r3, r7
 800035c:	4618      	mov	r0, r3
 800035e:	6939      	ldr	r1, [r7, #16]
 8000360:	f7ff ff8a 	bl	8000278 <uart_send>
 8000364:	4b03      	ldr	r3, [pc, #12]	; (8000374 <main+0x60>)
 8000366:	2200      	movs	r2, #0
 8000368:	601a      	str	r2, [r3, #0]
 800036a:	e7ea      	b.n	8000342 <main+0x2e>
 800036c:	40010800 	.word	0x40010800
 8000370:	08000510 	.word	0x08000510
 8000374:	20000018 	.word	0x20000018

08000378 <uart_read>:
 8000378:	b480      	push	{r7}
 800037a:	b085      	sub	sp, #20
 800037c:	af00      	add	r7, sp, #0
 800037e:	6078      	str	r0, [r7, #4]
 8000380:	6039      	str	r1, [r7, #0]
 8000382:	4b19      	ldr	r3, [pc, #100]	; (80003e8 <uart_read+0x70>)
 8000384:	681a      	ldr	r2, [r3, #0]
 8000386:	4b19      	ldr	r3, [pc, #100]	; (80003ec <uart_read+0x74>)
 8000388:	681b      	ldr	r3, [r3, #0]
 800038a:	429a      	cmp	r2, r3
 800038c:	d101      	bne.n	8000392 <uart_read+0x1a>
 800038e:	2300      	movs	r3, #0
 8000390:	e024      	b.n	80003dc <uart_read+0x64>
 8000392:	2300      	movs	r3, #0
 8000394:	60fb      	str	r3, [r7, #12]
 8000396:	e01c      	b.n	80003d2 <uart_read+0x5a>
 8000398:	68fb      	ldr	r3, [r7, #12]
 800039a:	687a      	ldr	r2, [r7, #4]
 800039c:	4413      	add	r3, r2
 800039e:	4a12      	ldr	r2, [pc, #72]	; (80003e8 <uart_read+0x70>)
 80003a0:	6812      	ldr	r2, [r2, #0]
 80003a2:	4913      	ldr	r1, [pc, #76]	; (80003f0 <uart_read+0x78>)
 80003a4:	5c8a      	ldrb	r2, [r1, r2]
 80003a6:	b2d2      	uxtb	r2, r2
 80003a8:	701a      	strb	r2, [r3, #0]
 80003aa:	4b0f      	ldr	r3, [pc, #60]	; (80003e8 <uart_read+0x70>)
 80003ac:	681b      	ldr	r3, [r3, #0]
 80003ae:	3301      	adds	r3, #1
 80003b0:	f003 030f 	and.w	r3, r3, #15
 80003b4:	4a0c      	ldr	r2, [pc, #48]	; (80003e8 <uart_read+0x70>)
 80003b6:	6013      	str	r3, [r2, #0]
 80003b8:	4b0b      	ldr	r3, [pc, #44]	; (80003e8 <uart_read+0x70>)
 80003ba:	681a      	ldr	r2, [r3, #0]
 80003bc:	4b0b      	ldr	r3, [pc, #44]	; (80003ec <uart_read+0x74>)
 80003be:	681b      	ldr	r3, [r3, #0]
 80003c0:	429a      	cmp	r2, r3
 80003c2:	d103      	bne.n	80003cc <uart_read+0x54>
 80003c4:	68fb      	ldr	r3, [r7, #12]
 80003c6:	3301      	adds	r3, #1
 80003c8:	60fb      	str	r3, [r7, #12]
 80003ca:	e006      	b.n	80003da <uart_read+0x62>
 80003cc:	68fb      	ldr	r3, [r7, #12]
 80003ce:	3301      	adds	r3, #1
 80003d0:	60fb      	str	r3, [r7, #12]
 80003d2:	68fa      	ldr	r2, [r7, #12]
 80003d4:	683b      	ldr	r3, [r7, #0]
 80003d6:	429a      	cmp	r2, r3
 80003d8:	dbde      	blt.n	8000398 <uart_read+0x20>
 80003da:	68fb      	ldr	r3, [r7, #12]
 80003dc:	4618      	mov	r0, r3
 80003de:	3714      	adds	r7, #20
 80003e0:	46bd      	mov	sp, r7
 80003e2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003e6:	4770      	bx	lr
 80003e8:	20000014 	.word	0x20000014
 80003ec:	20000010 	.word	0x20000010
 80003f0:	20000000 	.word	0x20000000

080003f4 <USART2_IRQHandler>:
 80003f4:	b480      	push	{r7}
 80003f6:	af00      	add	r7, sp, #0
 80003f8:	4b23      	ldr	r3, [pc, #140]	; (8000488 <USART2_IRQHandler+0x94>)
 80003fa:	881b      	ldrh	r3, [r3, #0]
 80003fc:	b29b      	uxth	r3, r3
 80003fe:	f003 0320 	and.w	r3, r3, #32
 8000402:	2b00      	cmp	r3, #0
 8000404:	d017      	beq.n	8000436 <USART2_IRQHandler+0x42>
 8000406:	4b21      	ldr	r3, [pc, #132]	; (800048c <USART2_IRQHandler+0x98>)
 8000408:	681b      	ldr	r3, [r3, #0]
 800040a:	4a1f      	ldr	r2, [pc, #124]	; (8000488 <USART2_IRQHandler+0x94>)
 800040c:	8892      	ldrh	r2, [r2, #4]
 800040e:	b292      	uxth	r2, r2
 8000410:	b2d1      	uxtb	r1, r2
 8000412:	4a1f      	ldr	r2, [pc, #124]	; (8000490 <USART2_IRQHandler+0x9c>)
 8000414:	54d1      	strb	r1, [r2, r3]
 8000416:	4b1d      	ldr	r3, [pc, #116]	; (800048c <USART2_IRQHandler+0x98>)
 8000418:	681b      	ldr	r3, [r3, #0]
 800041a:	3301      	adds	r3, #1
 800041c:	f003 030f 	and.w	r3, r3, #15
 8000420:	4a1a      	ldr	r2, [pc, #104]	; (800048c <USART2_IRQHandler+0x98>)
 8000422:	6013      	str	r3, [r2, #0]
 8000424:	4b19      	ldr	r3, [pc, #100]	; (800048c <USART2_IRQHandler+0x98>)
 8000426:	681a      	ldr	r2, [r3, #0]
 8000428:	4b1a      	ldr	r3, [pc, #104]	; (8000494 <USART2_IRQHandler+0xa0>)
 800042a:	681b      	ldr	r3, [r3, #0]
 800042c:	1ad3      	subs	r3, r2, r3
 800042e:	f003 030f 	and.w	r3, r3, #15
 8000432:	4a19      	ldr	r2, [pc, #100]	; (8000498 <USART2_IRQHandler+0xa4>)
 8000434:	6013      	str	r3, [r2, #0]
 8000436:	4b14      	ldr	r3, [pc, #80]	; (8000488 <USART2_IRQHandler+0x94>)
 8000438:	881b      	ldrh	r3, [r3, #0]
 800043a:	b29b      	uxth	r3, r3
 800043c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000440:	2b00      	cmp	r3, #0
 8000442:	d01d      	beq.n	8000480 <USART2_IRQHandler+0x8c>
 8000444:	4b15      	ldr	r3, [pc, #84]	; (800049c <USART2_IRQHandler+0xa8>)
 8000446:	681a      	ldr	r2, [r3, #0]
 8000448:	4b15      	ldr	r3, [pc, #84]	; (80004a0 <USART2_IRQHandler+0xac>)
 800044a:	681b      	ldr	r3, [r3, #0]
 800044c:	429a      	cmp	r2, r3
 800044e:	d108      	bne.n	8000462 <USART2_IRQHandler+0x6e>
 8000450:	4a0d      	ldr	r2, [pc, #52]	; (8000488 <USART2_IRQHandler+0x94>)
 8000452:	4b0d      	ldr	r3, [pc, #52]	; (8000488 <USART2_IRQHandler+0x94>)
 8000454:	899b      	ldrh	r3, [r3, #12]
 8000456:	b29b      	uxth	r3, r3
 8000458:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800045c:	b29b      	uxth	r3, r3
 800045e:	8193      	strh	r3, [r2, #12]
 8000460:	e00e      	b.n	8000480 <USART2_IRQHandler+0x8c>
 8000462:	4a09      	ldr	r2, [pc, #36]	; (8000488 <USART2_IRQHandler+0x94>)
 8000464:	4b0d      	ldr	r3, [pc, #52]	; (800049c <USART2_IRQHandler+0xa8>)
 8000466:	681b      	ldr	r3, [r3, #0]
 8000468:	490e      	ldr	r1, [pc, #56]	; (80004a4 <USART2_IRQHandler+0xb0>)
 800046a:	5ccb      	ldrb	r3, [r1, r3]
 800046c:	b2db      	uxtb	r3, r3
 800046e:	b29b      	uxth	r3, r3
 8000470:	8093      	strh	r3, [r2, #4]
 8000472:	4b0a      	ldr	r3, [pc, #40]	; (800049c <USART2_IRQHandler+0xa8>)
 8000474:	681b      	ldr	r3, [r3, #0]
 8000476:	3301      	adds	r3, #1
 8000478:	f003 030f 	and.w	r3, r3, #15
 800047c:	4a07      	ldr	r2, [pc, #28]	; (800049c <USART2_IRQHandler+0xa8>)
 800047e:	6013      	str	r3, [r2, #0]
 8000480:	46bd      	mov	sp, r7
 8000482:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000486:	4770      	bx	lr
 8000488:	40004400 	.word	0x40004400
 800048c:	20000010 	.word	0x20000010
 8000490:	20000000 	.word	0x20000000
 8000494:	20000014 	.word	0x20000014
 8000498:	20000018 	.word	0x20000018
 800049c:	2000002c 	.word	0x2000002c
 80004a0:	20000030 	.word	0x20000030
 80004a4:	2000001c 	.word	0x2000001c

080004a8 <handler_reset>:
 80004a8:	b580      	push	{r7, lr}
 80004aa:	b082      	sub	sp, #8
 80004ac:	af00      	add	r7, sp, #0
 80004ae:	4b11      	ldr	r3, [pc, #68]	; (80004f4 <handler_reset+0x4c>)
 80004b0:	607b      	str	r3, [r7, #4]
 80004b2:	4b11      	ldr	r3, [pc, #68]	; (80004f8 <handler_reset+0x50>)
 80004b4:	603b      	str	r3, [r7, #0]
 80004b6:	e007      	b.n	80004c8 <handler_reset+0x20>
 80004b8:	683b      	ldr	r3, [r7, #0]
 80004ba:	1d1a      	adds	r2, r3, #4
 80004bc:	603a      	str	r2, [r7, #0]
 80004be:	687a      	ldr	r2, [r7, #4]
 80004c0:	1d11      	adds	r1, r2, #4
 80004c2:	6079      	str	r1, [r7, #4]
 80004c4:	6812      	ldr	r2, [r2, #0]
 80004c6:	601a      	str	r2, [r3, #0]
 80004c8:	683b      	ldr	r3, [r7, #0]
 80004ca:	4a0c      	ldr	r2, [pc, #48]	; (80004fc <handler_reset+0x54>)
 80004cc:	4293      	cmp	r3, r2
 80004ce:	d3f3      	bcc.n	80004b8 <handler_reset+0x10>
 80004d0:	4b0b      	ldr	r3, [pc, #44]	; (8000500 <handler_reset+0x58>)
 80004d2:	603b      	str	r3, [r7, #0]
 80004d4:	e004      	b.n	80004e0 <handler_reset+0x38>
 80004d6:	683b      	ldr	r3, [r7, #0]
 80004d8:	1d1a      	adds	r2, r3, #4
 80004da:	603a      	str	r2, [r7, #0]
 80004dc:	2200      	movs	r2, #0
 80004de:	601a      	str	r2, [r3, #0]
 80004e0:	683b      	ldr	r3, [r7, #0]
 80004e2:	4a08      	ldr	r2, [pc, #32]	; (8000504 <handler_reset+0x5c>)
 80004e4:	4293      	cmp	r3, r2
 80004e6:	d3f6      	bcc.n	80004d6 <handler_reset+0x2e>
 80004e8:	f7ff ff14 	bl	8000314 <main>
 80004ec:	3708      	adds	r7, #8
 80004ee:	46bd      	mov	sp, r7
 80004f0:	bd80      	pop	{r7, pc}
 80004f2:	bf00      	nop
 80004f4:	08000518 	.word	0x08000518
 80004f8:	20000000 	.word	0x20000000
 80004fc:	20000000 	.word	0x20000000
 8000500:	20000000 	.word	0x20000000
 8000504:	20000038 	.word	0x20000038

08000508 <default_handler>:
 8000508:	b480      	push	{r7}
 800050a:	af00      	add	r7, sp, #0
 800050c:	e7fe      	b.n	800050c <default_handler+0x4>
 800050e:	bf00      	nop
 8000510:	6c6c6568 	.word	0x6c6c6568
 8000514:	000a0d6f 	.word	0x000a0d6f
