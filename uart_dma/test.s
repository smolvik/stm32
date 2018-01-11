
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 95 03 00 08 f5 03 00 08 f5 03 00 08     . . ............
 8000010:	f5 03 00 08 f5 03 00 08 f5 03 00 08 00 00 00 00     ................
	...
 800002c:	f5 03 00 08 f5 03 00 08 00 00 00 00 f5 03 00 08     ................
 800003c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 800004c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 800005c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 800006c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 800007c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 800008c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 800009c:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 80000ac:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 80000bc:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 80000cc:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................
 80000dc:	f5 03 00 08 f5 03 00 08 f5 03 00 08 f5 03 00 08     ................

080000ec <system_init>:
 80000ec:	b580      	push	{r7, lr}
 80000ee:	af00      	add	r7, sp, #0
 80000f0:	4a36      	ldr	r2, [pc, #216]	; (80001cc <system_init+0xe0>)
 80000f2:	4b36      	ldr	r3, [pc, #216]	; (80001cc <system_init+0xe0>)
 80000f4:	681b      	ldr	r3, [r3, #0]
 80000f6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80000fa:	6013      	str	r3, [r2, #0]
 80000fc:	bf00      	nop
 80000fe:	4b33      	ldr	r3, [pc, #204]	; (80001cc <system_init+0xe0>)
 8000100:	681b      	ldr	r3, [r3, #0]
 8000102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000106:	2b00      	cmp	r3, #0
 8000108:	d0f9      	beq.n	80000fe <system_init+0x12>
 800010a:	4a30      	ldr	r2, [pc, #192]	; (80001cc <system_init+0xe0>)
 800010c:	4b2f      	ldr	r3, [pc, #188]	; (80001cc <system_init+0xe0>)
 800010e:	685b      	ldr	r3, [r3, #4]
 8000110:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000114:	6053      	str	r3, [r2, #4]
 8000116:	4a2d      	ldr	r2, [pc, #180]	; (80001cc <system_init+0xe0>)
 8000118:	4b2c      	ldr	r3, [pc, #176]	; (80001cc <system_init+0xe0>)
 800011a:	685b      	ldr	r3, [r3, #4]
 800011c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000120:	6053      	str	r3, [r2, #4]
 8000122:	4a2a      	ldr	r2, [pc, #168]	; (80001cc <system_init+0xe0>)
 8000124:	4b29      	ldr	r3, [pc, #164]	; (80001cc <system_init+0xe0>)
 8000126:	685b      	ldr	r3, [r3, #4]
 8000128:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800012c:	6053      	str	r3, [r2, #4]
 800012e:	4a27      	ldr	r2, [pc, #156]	; (80001cc <system_init+0xe0>)
 8000130:	4b26      	ldr	r3, [pc, #152]	; (80001cc <system_init+0xe0>)
 8000132:	681b      	ldr	r3, [r3, #0]
 8000134:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000138:	6013      	str	r3, [r2, #0]
 800013a:	bf00      	nop
 800013c:	4b23      	ldr	r3, [pc, #140]	; (80001cc <system_init+0xe0>)
 800013e:	681b      	ldr	r3, [r3, #0]
 8000140:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000144:	2b00      	cmp	r3, #0
 8000146:	d0f9      	beq.n	800013c <system_init+0x50>
 8000148:	4a21      	ldr	r2, [pc, #132]	; (80001d0 <system_init+0xe4>)
 800014a:	4b21      	ldr	r3, [pc, #132]	; (80001d0 <system_init+0xe4>)
 800014c:	681b      	ldr	r3, [r3, #0]
 800014e:	f043 0310 	orr.w	r3, r3, #16
 8000152:	6013      	str	r3, [r2, #0]
 8000154:	4a1e      	ldr	r2, [pc, #120]	; (80001d0 <system_init+0xe4>)
 8000156:	4b1e      	ldr	r3, [pc, #120]	; (80001d0 <system_init+0xe4>)
 8000158:	681b      	ldr	r3, [r3, #0]
 800015a:	f023 0303 	bic.w	r3, r3, #3
 800015e:	6013      	str	r3, [r2, #0]
 8000160:	4a1b      	ldr	r2, [pc, #108]	; (80001d0 <system_init+0xe4>)
 8000162:	4b1b      	ldr	r3, [pc, #108]	; (80001d0 <system_init+0xe4>)
 8000164:	681b      	ldr	r3, [r3, #0]
 8000166:	f043 0302 	orr.w	r3, r3, #2
 800016a:	6013      	str	r3, [r2, #0]
 800016c:	4a17      	ldr	r2, [pc, #92]	; (80001cc <system_init+0xe0>)
 800016e:	4b17      	ldr	r3, [pc, #92]	; (80001cc <system_init+0xe0>)
 8000170:	685b      	ldr	r3, [r3, #4]
 8000172:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000176:	6053      	str	r3, [r2, #4]
 8000178:	4a14      	ldr	r2, [pc, #80]	; (80001cc <system_init+0xe0>)
 800017a:	4b14      	ldr	r3, [pc, #80]	; (80001cc <system_init+0xe0>)
 800017c:	685b      	ldr	r3, [r3, #4]
 800017e:	f023 0303 	bic.w	r3, r3, #3
 8000182:	6053      	str	r3, [r2, #4]
 8000184:	4a11      	ldr	r2, [pc, #68]	; (80001cc <system_init+0xe0>)
 8000186:	4b11      	ldr	r3, [pc, #68]	; (80001cc <system_init+0xe0>)
 8000188:	685b      	ldr	r3, [r3, #4]
 800018a:	f043 0302 	orr.w	r3, r3, #2
 800018e:	6053      	str	r3, [r2, #4]
 8000190:	bf00      	nop
 8000192:	4b0e      	ldr	r3, [pc, #56]	; (80001cc <system_init+0xe0>)
 8000194:	685b      	ldr	r3, [r3, #4]
 8000196:	f003 030c 	and.w	r3, r3, #12
 800019a:	2b08      	cmp	r3, #8
 800019c:	d1f9      	bne.n	8000192 <system_init+0xa6>
 800019e:	4a0b      	ldr	r2, [pc, #44]	; (80001cc <system_init+0xe0>)
 80001a0:	4b0a      	ldr	r3, [pc, #40]	; (80001cc <system_init+0xe0>)
 80001a2:	699b      	ldr	r3, [r3, #24]
 80001a4:	f043 0305 	orr.w	r3, r3, #5
 80001a8:	6193      	str	r3, [r2, #24]
 80001aa:	4a08      	ldr	r2, [pc, #32]	; (80001cc <system_init+0xe0>)
 80001ac:	4b07      	ldr	r3, [pc, #28]	; (80001cc <system_init+0xe0>)
 80001ae:	69db      	ldr	r3, [r3, #28]
 80001b0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80001b4:	61d3      	str	r3, [r2, #28]
 80001b6:	4a05      	ldr	r2, [pc, #20]	; (80001cc <system_init+0xe0>)
 80001b8:	4b04      	ldr	r3, [pc, #16]	; (80001cc <system_init+0xe0>)
 80001ba:	695b      	ldr	r3, [r3, #20]
 80001bc:	f043 0301 	orr.w	r3, r3, #1
 80001c0:	6153      	str	r3, [r2, #20]
 80001c2:	f000 f807 	bl	80001d4 <gpio_init>
 80001c6:	f000 f819 	bl	80001fc <uart_init>
 80001ca:	bd80      	pop	{r7, pc}
 80001cc:	40021000 	.word	0x40021000
 80001d0:	40022000 	.word	0x40022000

080001d4 <gpio_init>:
 80001d4:	b480      	push	{r7}
 80001d6:	af00      	add	r7, sp, #0
 80001d8:	4a07      	ldr	r2, [pc, #28]	; (80001f8 <gpio_init+0x24>)
 80001da:	4b07      	ldr	r3, [pc, #28]	; (80001f8 <gpio_init+0x24>)
 80001dc:	681b      	ldr	r3, [r3, #0]
 80001de:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80001e2:	6013      	str	r3, [r2, #0]
 80001e4:	4a04      	ldr	r2, [pc, #16]	; (80001f8 <gpio_init+0x24>)
 80001e6:	4b04      	ldr	r3, [pc, #16]	; (80001f8 <gpio_init+0x24>)
 80001e8:	681b      	ldr	r3, [r3, #0]
 80001ea:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 80001ee:	6013      	str	r3, [r2, #0]
 80001f0:	46bd      	mov	sp, r7
 80001f2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80001f6:	4770      	bx	lr
 80001f8:	40010800 	.word	0x40010800

080001fc <uart_init>:
 80001fc:	b480      	push	{r7}
 80001fe:	af00      	add	r7, sp, #0
 8000200:	4a24      	ldr	r2, [pc, #144]	; (8000294 <uart_init+0x98>)
 8000202:	4b24      	ldr	r3, [pc, #144]	; (8000294 <uart_init+0x98>)
 8000204:	899b      	ldrh	r3, [r3, #12]
 8000206:	b29b      	uxth	r3, r3
 8000208:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800020c:	b29b      	uxth	r3, r3
 800020e:	8193      	strh	r3, [r2, #12]
 8000210:	4a20      	ldr	r2, [pc, #128]	; (8000294 <uart_init+0x98>)
 8000212:	4b20      	ldr	r3, [pc, #128]	; (8000294 <uart_init+0x98>)
 8000214:	899b      	ldrh	r3, [r3, #12]
 8000216:	b29b      	uxth	r3, r3
 8000218:	f043 0304 	orr.w	r3, r3, #4
 800021c:	b29b      	uxth	r3, r3
 800021e:	8193      	strh	r3, [r2, #12]
 8000220:	4b1c      	ldr	r3, [pc, #112]	; (8000294 <uart_init+0x98>)
 8000222:	f640 62a6 	movw	r2, #3750	; 0xea6
 8000226:	811a      	strh	r2, [r3, #8]
 8000228:	4a1a      	ldr	r2, [pc, #104]	; (8000294 <uart_init+0x98>)
 800022a:	4b1a      	ldr	r3, [pc, #104]	; (8000294 <uart_init+0x98>)
 800022c:	8a9b      	ldrh	r3, [r3, #20]
 800022e:	b29b      	uxth	r3, r3
 8000230:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8000234:	b29b      	uxth	r3, r3
 8000236:	8293      	strh	r3, [r2, #20]
 8000238:	4b17      	ldr	r3, [pc, #92]	; (8000298 <uart_init+0x9c>)
 800023a:	4a18      	ldr	r2, [pc, #96]	; (800029c <uart_init+0xa0>)
 800023c:	609a      	str	r2, [r3, #8]
 800023e:	4b16      	ldr	r3, [pc, #88]	; (8000298 <uart_init+0x9c>)
 8000240:	4a17      	ldr	r2, [pc, #92]	; (80002a0 <uart_init+0xa4>)
 8000242:	60da      	str	r2, [r3, #12]
 8000244:	4b14      	ldr	r3, [pc, #80]	; (8000298 <uart_init+0x9c>)
 8000246:	2210      	movs	r2, #16
 8000248:	605a      	str	r2, [r3, #4]
 800024a:	4a13      	ldr	r2, [pc, #76]	; (8000298 <uart_init+0x9c>)
 800024c:	4b12      	ldr	r3, [pc, #72]	; (8000298 <uart_init+0x9c>)
 800024e:	681b      	ldr	r3, [r3, #0]
 8000250:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000254:	6013      	str	r3, [r2, #0]
 8000256:	4a10      	ldr	r2, [pc, #64]	; (8000298 <uart_init+0x9c>)
 8000258:	4b0f      	ldr	r3, [pc, #60]	; (8000298 <uart_init+0x9c>)
 800025a:	681b      	ldr	r3, [r3, #0]
 800025c:	f043 0301 	orr.w	r3, r3, #1
 8000260:	6013      	str	r3, [r2, #0]
 8000262:	4a0c      	ldr	r2, [pc, #48]	; (8000294 <uart_init+0x98>)
 8000264:	4b0b      	ldr	r3, [pc, #44]	; (8000294 <uart_init+0x98>)
 8000266:	8a9b      	ldrh	r3, [r3, #20]
 8000268:	b29b      	uxth	r3, r3
 800026a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800026e:	b29b      	uxth	r3, r3
 8000270:	8293      	strh	r3, [r2, #20]
 8000272:	4a0c      	ldr	r2, [pc, #48]	; (80002a4 <uart_init+0xa8>)
 8000274:	4b0b      	ldr	r3, [pc, #44]	; (80002a4 <uart_init+0xa8>)
 8000276:	681b      	ldr	r3, [r3, #0]
 8000278:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800027c:	6013      	str	r3, [r2, #0]
 800027e:	4a09      	ldr	r2, [pc, #36]	; (80002a4 <uart_init+0xa8>)
 8000280:	4b08      	ldr	r3, [pc, #32]	; (80002a4 <uart_init+0xa8>)
 8000282:	681b      	ldr	r3, [r3, #0]
 8000284:	f043 0310 	orr.w	r3, r3, #16
 8000288:	6013      	str	r3, [r2, #0]
 800028a:	46bd      	mov	sp, r7
 800028c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000290:	4770      	bx	lr
 8000292:	bf00      	nop
 8000294:	40004400 	.word	0x40004400
 8000298:	4002006c 	.word	0x4002006c
 800029c:	40004404 	.word	0x40004404
 80002a0:	20000000 	.word	0x20000000
 80002a4:	40020080 	.word	0x40020080

080002a8 <uart_dma_send>:
 80002a8:	b480      	push	{r7}
 80002aa:	b083      	sub	sp, #12
 80002ac:	af00      	add	r7, sp, #0
 80002ae:	6078      	str	r0, [r7, #4]
 80002b0:	6039      	str	r1, [r7, #0]
 80002b2:	4b1c      	ldr	r3, [pc, #112]	; (8000324 <uart_dma_send+0x7c>)
 80002b4:	4a1c      	ldr	r2, [pc, #112]	; (8000328 <uart_dma_send+0x80>)
 80002b6:	609a      	str	r2, [r3, #8]
 80002b8:	4a1a      	ldr	r2, [pc, #104]	; (8000324 <uart_dma_send+0x7c>)
 80002ba:	687b      	ldr	r3, [r7, #4]
 80002bc:	60d3      	str	r3, [r2, #12]
 80002be:	4a19      	ldr	r2, [pc, #100]	; (8000324 <uart_dma_send+0x7c>)
 80002c0:	683b      	ldr	r3, [r7, #0]
 80002c2:	6053      	str	r3, [r2, #4]
 80002c4:	4a17      	ldr	r2, [pc, #92]	; (8000324 <uart_dma_send+0x7c>)
 80002c6:	4b17      	ldr	r3, [pc, #92]	; (8000324 <uart_dma_send+0x7c>)
 80002c8:	681b      	ldr	r3, [r3, #0]
 80002ca:	f043 0301 	orr.w	r3, r3, #1
 80002ce:	6013      	str	r3, [r2, #0]
 80002d0:	4a16      	ldr	r2, [pc, #88]	; (800032c <uart_dma_send+0x84>)
 80002d2:	4b16      	ldr	r3, [pc, #88]	; (800032c <uart_dma_send+0x84>)
 80002d4:	899b      	ldrh	r3, [r3, #12]
 80002d6:	b29b      	uxth	r3, r3
 80002d8:	f043 0308 	orr.w	r3, r3, #8
 80002dc:	b29b      	uxth	r3, r3
 80002de:	8193      	strh	r3, [r2, #12]
 80002e0:	bf00      	nop
 80002e2:	4b13      	ldr	r3, [pc, #76]	; (8000330 <uart_dma_send+0x88>)
 80002e4:	681b      	ldr	r3, [r3, #0]
 80002e6:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80002ea:	2b00      	cmp	r3, #0
 80002ec:	d0f9      	beq.n	80002e2 <uart_dma_send+0x3a>
 80002ee:	4a10      	ldr	r2, [pc, #64]	; (8000330 <uart_dma_send+0x88>)
 80002f0:	4b0f      	ldr	r3, [pc, #60]	; (8000330 <uart_dma_send+0x88>)
 80002f2:	685b      	ldr	r3, [r3, #4]
 80002f4:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 80002f8:	6053      	str	r3, [r2, #4]
 80002fa:	4a0a      	ldr	r2, [pc, #40]	; (8000324 <uart_dma_send+0x7c>)
 80002fc:	4b09      	ldr	r3, [pc, #36]	; (8000324 <uart_dma_send+0x7c>)
 80002fe:	681b      	ldr	r3, [r3, #0]
 8000300:	f023 0301 	bic.w	r3, r3, #1
 8000304:	6013      	str	r3, [r2, #0]
 8000306:	bf00      	nop
 8000308:	4b08      	ldr	r3, [pc, #32]	; (800032c <uart_dma_send+0x84>)
 800030a:	881b      	ldrh	r3, [r3, #0]
 800030c:	b29b      	uxth	r3, r3
 800030e:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000312:	2b00      	cmp	r3, #0
 8000314:	d0f8      	beq.n	8000308 <uart_dma_send+0x60>
 8000316:	4618      	mov	r0, r3
 8000318:	370c      	adds	r7, #12
 800031a:	46bd      	mov	sp, r7
 800031c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000320:	4770      	bx	lr
 8000322:	bf00      	nop
 8000324:	40020080 	.word	0x40020080
 8000328:	40004404 	.word	0x40004404
 800032c:	40004400 	.word	0x40004400
 8000330:	40020000 	.word	0x40020000

08000334 <main>:
 8000334:	b580      	push	{r7, lr}
 8000336:	af00      	add	r7, sp, #0
 8000338:	f7ff fed8 	bl	80000ec <system_init>
 800033c:	4811      	ldr	r0, [pc, #68]	; (8000384 <main+0x50>)
 800033e:	2107      	movs	r1, #7
 8000340:	f7ff ffb2 	bl	80002a8 <uart_dma_send>
 8000344:	4b10      	ldr	r3, [pc, #64]	; (8000388 <main+0x54>)
 8000346:	681b      	ldr	r3, [r3, #0]
 8000348:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 800034c:	2b00      	cmp	r3, #0
 800034e:	d018      	beq.n	8000382 <main+0x4e>
 8000350:	4a0d      	ldr	r2, [pc, #52]	; (8000388 <main+0x54>)
 8000352:	4b0d      	ldr	r3, [pc, #52]	; (8000388 <main+0x54>)
 8000354:	685b      	ldr	r3, [r3, #4]
 8000356:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800035a:	6053      	str	r3, [r2, #4]
 800035c:	4a0b      	ldr	r2, [pc, #44]	; (800038c <main+0x58>)
 800035e:	4b0b      	ldr	r3, [pc, #44]	; (800038c <main+0x58>)
 8000360:	681b      	ldr	r3, [r3, #0]
 8000362:	f023 0301 	bic.w	r3, r3, #1
 8000366:	6013      	str	r3, [r2, #0]
 8000368:	4b08      	ldr	r3, [pc, #32]	; (800038c <main+0x58>)
 800036a:	2210      	movs	r2, #16
 800036c:	605a      	str	r2, [r3, #4]
 800036e:	4a07      	ldr	r2, [pc, #28]	; (800038c <main+0x58>)
 8000370:	4b06      	ldr	r3, [pc, #24]	; (800038c <main+0x58>)
 8000372:	681b      	ldr	r3, [r3, #0]
 8000374:	f043 0301 	orr.w	r3, r3, #1
 8000378:	6013      	str	r3, [r2, #0]
 800037a:	4805      	ldr	r0, [pc, #20]	; (8000390 <main+0x5c>)
 800037c:	2110      	movs	r1, #16
 800037e:	f7ff ff93 	bl	80002a8 <uart_dma_send>
 8000382:	e7df      	b.n	8000344 <main+0x10>
 8000384:	080003fc 	.word	0x080003fc
 8000388:	40020000 	.word	0x40020000
 800038c:	4002006c 	.word	0x4002006c
 8000390:	20000000 	.word	0x20000000

08000394 <handler_reset>:
 8000394:	b580      	push	{r7, lr}
 8000396:	b082      	sub	sp, #8
 8000398:	af00      	add	r7, sp, #0
 800039a:	4b11      	ldr	r3, [pc, #68]	; (80003e0 <handler_reset+0x4c>)
 800039c:	607b      	str	r3, [r7, #4]
 800039e:	4b11      	ldr	r3, [pc, #68]	; (80003e4 <handler_reset+0x50>)
 80003a0:	603b      	str	r3, [r7, #0]
 80003a2:	e007      	b.n	80003b4 <handler_reset+0x20>
 80003a4:	683b      	ldr	r3, [r7, #0]
 80003a6:	1d1a      	adds	r2, r3, #4
 80003a8:	603a      	str	r2, [r7, #0]
 80003aa:	687a      	ldr	r2, [r7, #4]
 80003ac:	1d11      	adds	r1, r2, #4
 80003ae:	6079      	str	r1, [r7, #4]
 80003b0:	6812      	ldr	r2, [r2, #0]
 80003b2:	601a      	str	r2, [r3, #0]
 80003b4:	683b      	ldr	r3, [r7, #0]
 80003b6:	4a0c      	ldr	r2, [pc, #48]	; (80003e8 <handler_reset+0x54>)
 80003b8:	4293      	cmp	r3, r2
 80003ba:	d3f3      	bcc.n	80003a4 <handler_reset+0x10>
 80003bc:	4b0b      	ldr	r3, [pc, #44]	; (80003ec <handler_reset+0x58>)
 80003be:	603b      	str	r3, [r7, #0]
 80003c0:	e004      	b.n	80003cc <handler_reset+0x38>
 80003c2:	683b      	ldr	r3, [r7, #0]
 80003c4:	1d1a      	adds	r2, r3, #4
 80003c6:	603a      	str	r2, [r7, #0]
 80003c8:	2200      	movs	r2, #0
 80003ca:	601a      	str	r2, [r3, #0]
 80003cc:	683b      	ldr	r3, [r7, #0]
 80003ce:	4a08      	ldr	r2, [pc, #32]	; (80003f0 <handler_reset+0x5c>)
 80003d0:	4293      	cmp	r3, r2
 80003d2:	d3f6      	bcc.n	80003c2 <handler_reset+0x2e>
 80003d4:	f7ff ffae 	bl	8000334 <main>
 80003d8:	3708      	adds	r7, #8
 80003da:	46bd      	mov	sp, r7
 80003dc:	bd80      	pop	{r7, pc}
 80003de:	bf00      	nop
 80003e0:	08000404 	.word	0x08000404
 80003e4:	20000000 	.word	0x20000000
 80003e8:	20000000 	.word	0x20000000
 80003ec:	20000000 	.word	0x20000000
 80003f0:	20000010 	.word	0x20000010

080003f4 <default_handler>:
 80003f4:	b480      	push	{r7}
 80003f6:	af00      	add	r7, sp, #0
 80003f8:	e7fe      	b.n	80003f8 <default_handler+0x4>
 80003fa:	bf00      	nop
 80003fc:	6c6c6568 	.word	0x6c6c6568
 8000400:	000a0d6f 	.word	0x000a0d6f
