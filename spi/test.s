
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 fd 04 00 08 5d 05 00 08 5d 05 00 08     . . ....]...]...
 8000010:	5d 05 00 08 5d 05 00 08 5d 05 00 08 00 00 00 00     ]...]...].......
	...
 800002c:	5d 05 00 08 5d 05 00 08 00 00 00 00 5d 05 00 08     ]...].......]...
 800003c:	7d 06 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     }...]...]...]...
 800004c:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 800005c:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 800006c:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 800007c:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 800008c:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 800009c:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 80000ac:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 80000bc:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...
 80000cc:	c1 04 00 08 5d 05 00 08 5d 05 00 08 71 09 00 08     ....]...]...q...
 80000dc:	5d 05 00 08 5d 05 00 08 5d 05 00 08 5d 05 00 08     ]...]...]...]...

080000ec <led_init>:
 80000ec:	b480      	push	{r7}
 80000ee:	af00      	add	r7, sp, #0
 80000f0:	4a0b      	ldr	r2, [pc, #44]	; (8000120 <led_init+0x34>)
 80000f2:	4b0b      	ldr	r3, [pc, #44]	; (8000120 <led_init+0x34>)
 80000f4:	685b      	ldr	r3, [r3, #4]
 80000f6:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 80000fa:	6053      	str	r3, [r2, #4]
 80000fc:	4a09      	ldr	r2, [pc, #36]	; (8000124 <led_init+0x38>)
 80000fe:	4b09      	ldr	r3, [pc, #36]	; (8000124 <led_init+0x38>)
 8000100:	681b      	ldr	r3, [r3, #0]
 8000102:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8000106:	6013      	str	r3, [r2, #0]
 8000108:	4a06      	ldr	r2, [pc, #24]	; (8000124 <led_init+0x38>)
 800010a:	4b06      	ldr	r3, [pc, #24]	; (8000124 <led_init+0x38>)
 800010c:	681b      	ldr	r3, [r3, #0]
 800010e:	f043 534c 	orr.w	r3, r3, #855638016	; 0x33000000
 8000112:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8000116:	6013      	str	r3, [r2, #0]
 8000118:	46bd      	mov	sp, r7
 800011a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800011e:	4770      	bx	lr
 8000120:	40011000 	.word	0x40011000
 8000124:	40010c00 	.word	0x40010c00

08000128 <led_set>:
 8000128:	b480      	push	{r7}
 800012a:	b083      	sub	sp, #12
 800012c:	af00      	add	r7, sp, #0
 800012e:	4603      	mov	r3, r0
 8000130:	80fb      	strh	r3, [r7, #6]
 8000132:	88fb      	ldrh	r3, [r7, #6]
 8000134:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
 8000138:	80fb      	strh	r3, [r7, #6]
 800013a:	4a08      	ldr	r2, [pc, #32]	; (800015c <led_set+0x34>)
 800013c:	4b07      	ldr	r3, [pc, #28]	; (800015c <led_set+0x34>)
 800013e:	68db      	ldr	r3, [r3, #12]
 8000140:	f023 03e0 	bic.w	r3, r3, #224	; 0xe0
 8000144:	60d3      	str	r3, [r2, #12]
 8000146:	4905      	ldr	r1, [pc, #20]	; (800015c <led_set+0x34>)
 8000148:	4b04      	ldr	r3, [pc, #16]	; (800015c <led_set+0x34>)
 800014a:	68da      	ldr	r2, [r3, #12]
 800014c:	88fb      	ldrh	r3, [r7, #6]
 800014e:	4313      	orrs	r3, r2
 8000150:	60cb      	str	r3, [r1, #12]
 8000152:	370c      	adds	r7, #12
 8000154:	46bd      	mov	sp, r7
 8000156:	f85d 7b04 	ldr.w	r7, [sp], #4
 800015a:	4770      	bx	lr
 800015c:	40010c00 	.word	0x40010c00

08000160 <led_on>:
 8000160:	b480      	push	{r7}
 8000162:	af00      	add	r7, sp, #0
 8000164:	4a04      	ldr	r2, [pc, #16]	; (8000178 <led_on+0x18>)
 8000166:	4b04      	ldr	r3, [pc, #16]	; (8000178 <led_on+0x18>)
 8000168:	68db      	ldr	r3, [r3, #12]
 800016a:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 800016e:	60d3      	str	r3, [r2, #12]
 8000170:	46bd      	mov	sp, r7
 8000172:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000176:	4770      	bx	lr
 8000178:	40011000 	.word	0x40011000

0800017c <led_off>:
 800017c:	b480      	push	{r7}
 800017e:	af00      	add	r7, sp, #0
 8000180:	4a04      	ldr	r2, [pc, #16]	; (8000194 <led_off+0x18>)
 8000182:	4b04      	ldr	r3, [pc, #16]	; (8000194 <led_off+0x18>)
 8000184:	68db      	ldr	r3, [r3, #12]
 8000186:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800018a:	60d3      	str	r3, [r2, #12]
 800018c:	46bd      	mov	sp, r7
 800018e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000192:	4770      	bx	lr
 8000194:	40011000 	.word	0x40011000

08000198 <sleep>:
 8000198:	b480      	push	{r7}
 800019a:	b085      	sub	sp, #20
 800019c:	af00      	add	r7, sp, #0
 800019e:	6078      	str	r0, [r7, #4]
 80001a0:	4b07      	ldr	r3, [pc, #28]	; (80001c0 <sleep+0x28>)
 80001a2:	681b      	ldr	r3, [r3, #0]
 80001a4:	60fb      	str	r3, [r7, #12]
 80001a6:	bf00      	nop
 80001a8:	68fa      	ldr	r2, [r7, #12]
 80001aa:	687b      	ldr	r3, [r7, #4]
 80001ac:	441a      	add	r2, r3
 80001ae:	4b04      	ldr	r3, [pc, #16]	; (80001c0 <sleep+0x28>)
 80001b0:	681b      	ldr	r3, [r3, #0]
 80001b2:	429a      	cmp	r2, r3
 80001b4:	d8f8      	bhi.n	80001a8 <sleep+0x10>
 80001b6:	3714      	adds	r7, #20
 80001b8:	46bd      	mov	sp, r7
 80001ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80001be:	4770      	bx	lr
 80001c0:	20000008 	.word	0x20000008

080001c4 <main>:
 80001c4:	b580      	push	{r7, lr}
 80001c6:	b086      	sub	sp, #24
 80001c8:	af00      	add	r7, sp, #0
 80001ca:	4a12      	ldr	r2, [pc, #72]	; (8000214 <main+0x50>)
 80001cc:	463b      	mov	r3, r7
 80001ce:	6810      	ldr	r0, [r2, #0]
 80001d0:	6851      	ldr	r1, [r2, #4]
 80001d2:	c303      	stmia	r3!, {r0, r1}
 80001d4:	2300      	movs	r3, #0
 80001d6:	75fb      	strb	r3, [r7, #23]
 80001d8:	2300      	movs	r3, #0
 80001da:	613b      	str	r3, [r7, #16]
 80001dc:	f000 f9c2 	bl	8000564 <system_init>
 80001e0:	f000 fa72 	bl	80006c8 <uart_init>
 80001e4:	f7ff ff82 	bl	80000ec <led_init>
 80001e8:	4b0b      	ldr	r3, [pc, #44]	; (8000218 <main+0x54>)
 80001ea:	4a0c      	ldr	r2, [pc, #48]	; (800021c <main+0x58>)
 80001ec:	601a      	str	r2, [r3, #0]
 80001ee:	480c      	ldr	r0, [pc, #48]	; (8000220 <main+0x5c>)
 80001f0:	f000 fdde 	bl	8000db0 <xprintf>
 80001f4:	f000 f8aa 	bl	800034c <spi_slave_init>
 80001f8:	4b0a      	ldr	r3, [pc, #40]	; (8000224 <main+0x60>)
 80001fa:	681b      	ldr	r3, [r3, #0]
 80001fc:	2b00      	cmp	r3, #0
 80001fe:	d008      	beq.n	8000212 <main+0x4e>
 8000200:	4b08      	ldr	r3, [pc, #32]	; (8000224 <main+0x60>)
 8000202:	2200      	movs	r2, #0
 8000204:	601a      	str	r2, [r3, #0]
 8000206:	4b08      	ldr	r3, [pc, #32]	; (8000228 <main+0x64>)
 8000208:	781b      	ldrb	r3, [r3, #0]
 800020a:	4808      	ldr	r0, [pc, #32]	; (800022c <main+0x68>)
 800020c:	4619      	mov	r1, r3
 800020e:	f000 fdcf 	bl	8000db0 <xprintf>
 8000212:	e7f1      	b.n	80001f8 <main+0x34>
 8000214:	08001188 	.word	0x08001188
 8000218:	2000081c 	.word	0x2000081c
 800021c:	0800073d 	.word	0x0800073d
 8000220:	08001170 	.word	0x08001170
 8000224:	20000000 	.word	0x20000000
 8000228:	20000004 	.word	0x20000004
 800022c:	08001184 	.word	0x08001184

08000230 <NVIC_EnableIRQ>:
 8000230:	b480      	push	{r7}
 8000232:	b083      	sub	sp, #12
 8000234:	af00      	add	r7, sp, #0
 8000236:	4603      	mov	r3, r0
 8000238:	71fb      	strb	r3, [r7, #7]
 800023a:	4908      	ldr	r1, [pc, #32]	; (800025c <NVIC_EnableIRQ+0x2c>)
 800023c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000240:	095b      	lsrs	r3, r3, #5
 8000242:	79fa      	ldrb	r2, [r7, #7]
 8000244:	f002 021f 	and.w	r2, r2, #31
 8000248:	2001      	movs	r0, #1
 800024a:	fa00 f202 	lsl.w	r2, r0, r2
 800024e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000252:	370c      	adds	r7, #12
 8000254:	46bd      	mov	sp, r7
 8000256:	f85d 7b04 	ldr.w	r7, [sp], #4
 800025a:	4770      	bx	lr
 800025c:	e000e100 	.word	0xe000e100

08000260 <spi_master_init>:
 8000260:	b480      	push	{r7}
 8000262:	af00      	add	r7, sp, #0
 8000264:	4a37      	ldr	r2, [pc, #220]	; (8000344 <spi_master_init+0xe4>)
 8000266:	4b37      	ldr	r3, [pc, #220]	; (8000344 <spi_master_init+0xe4>)
 8000268:	681b      	ldr	r3, [r3, #0]
 800026a:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 800026e:	6013      	str	r3, [r2, #0]
 8000270:	4a34      	ldr	r2, [pc, #208]	; (8000344 <spi_master_init+0xe4>)
 8000272:	4b34      	ldr	r3, [pc, #208]	; (8000344 <spi_master_init+0xe4>)
 8000274:	681b      	ldr	r3, [r3, #0]
 8000276:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 800027a:	6013      	str	r3, [r2, #0]
 800027c:	4a31      	ldr	r2, [pc, #196]	; (8000344 <spi_master_init+0xe4>)
 800027e:	4b31      	ldr	r3, [pc, #196]	; (8000344 <spi_master_init+0xe4>)
 8000280:	681b      	ldr	r3, [r3, #0]
 8000282:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8000286:	6013      	str	r3, [r2, #0]
 8000288:	4a2e      	ldr	r2, [pc, #184]	; (8000344 <spi_master_init+0xe4>)
 800028a:	4b2e      	ldr	r3, [pc, #184]	; (8000344 <spi_master_init+0xe4>)
 800028c:	681b      	ldr	r3, [r3, #0]
 800028e:	f443 0330 	orr.w	r3, r3, #11534336	; 0xb00000
 8000292:	6013      	str	r3, [r2, #0]
 8000294:	4a2b      	ldr	r2, [pc, #172]	; (8000344 <spi_master_init+0xe4>)
 8000296:	4b2b      	ldr	r3, [pc, #172]	; (8000344 <spi_master_init+0xe4>)
 8000298:	681b      	ldr	r3, [r3, #0]
 800029a:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
 800029e:	6013      	str	r3, [r2, #0]
 80002a0:	4a28      	ldr	r2, [pc, #160]	; (8000344 <spi_master_init+0xe4>)
 80002a2:	4b28      	ldr	r3, [pc, #160]	; (8000344 <spi_master_init+0xe4>)
 80002a4:	681b      	ldr	r3, [r3, #0]
 80002a6:	f043 4330 	orr.w	r3, r3, #2952790016	; 0xb0000000
 80002aa:	6013      	str	r3, [r2, #0]
 80002ac:	4a26      	ldr	r2, [pc, #152]	; (8000348 <spi_master_init+0xe8>)
 80002ae:	4b26      	ldr	r3, [pc, #152]	; (8000348 <spi_master_init+0xe8>)
 80002b0:	881b      	ldrh	r3, [r3, #0]
 80002b2:	b29b      	uxth	r3, r3
 80002b4:	f023 0338 	bic.w	r3, r3, #56	; 0x38
 80002b8:	b29b      	uxth	r3, r3
 80002ba:	8013      	strh	r3, [r2, #0]
 80002bc:	4a22      	ldr	r2, [pc, #136]	; (8000348 <spi_master_init+0xe8>)
 80002be:	4b22      	ldr	r3, [pc, #136]	; (8000348 <spi_master_init+0xe8>)
 80002c0:	881b      	ldrh	r3, [r3, #0]
 80002c2:	b29b      	uxth	r3, r3
 80002c4:	f043 0338 	orr.w	r3, r3, #56	; 0x38
 80002c8:	b29b      	uxth	r3, r3
 80002ca:	8013      	strh	r3, [r2, #0]
 80002cc:	4a1e      	ldr	r2, [pc, #120]	; (8000348 <spi_master_init+0xe8>)
 80002ce:	4b1e      	ldr	r3, [pc, #120]	; (8000348 <spi_master_init+0xe8>)
 80002d0:	881b      	ldrh	r3, [r3, #0]
 80002d2:	b29b      	uxth	r3, r3
 80002d4:	f023 0303 	bic.w	r3, r3, #3
 80002d8:	b29b      	uxth	r3, r3
 80002da:	8013      	strh	r3, [r2, #0]
 80002dc:	4a1a      	ldr	r2, [pc, #104]	; (8000348 <spi_master_init+0xe8>)
 80002de:	4b1a      	ldr	r3, [pc, #104]	; (8000348 <spi_master_init+0xe8>)
 80002e0:	881b      	ldrh	r3, [r3, #0]
 80002e2:	b29b      	uxth	r3, r3
 80002e4:	f043 0301 	orr.w	r3, r3, #1
 80002e8:	b29b      	uxth	r3, r3
 80002ea:	8013      	strh	r3, [r2, #0]
 80002ec:	4a16      	ldr	r2, [pc, #88]	; (8000348 <spi_master_init+0xe8>)
 80002ee:	4b16      	ldr	r3, [pc, #88]	; (8000348 <spi_master_init+0xe8>)
 80002f0:	881b      	ldrh	r3, [r3, #0]
 80002f2:	b29b      	uxth	r3, r3
 80002f4:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80002f8:	b29b      	uxth	r3, r3
 80002fa:	8013      	strh	r3, [r2, #0]
 80002fc:	4a12      	ldr	r2, [pc, #72]	; (8000348 <spi_master_init+0xe8>)
 80002fe:	4b12      	ldr	r3, [pc, #72]	; (8000348 <spi_master_init+0xe8>)
 8000300:	881b      	ldrh	r3, [r3, #0]
 8000302:	b29b      	uxth	r3, r3
 8000304:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000308:	b29b      	uxth	r3, r3
 800030a:	8013      	strh	r3, [r2, #0]
 800030c:	4a0e      	ldr	r2, [pc, #56]	; (8000348 <spi_master_init+0xe8>)
 800030e:	4b0e      	ldr	r3, [pc, #56]	; (8000348 <spi_master_init+0xe8>)
 8000310:	881b      	ldrh	r3, [r3, #0]
 8000312:	b29b      	uxth	r3, r3
 8000314:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 8000318:	b29b      	uxth	r3, r3
 800031a:	8013      	strh	r3, [r2, #0]
 800031c:	4a0a      	ldr	r2, [pc, #40]	; (8000348 <spi_master_init+0xe8>)
 800031e:	4b0a      	ldr	r3, [pc, #40]	; (8000348 <spi_master_init+0xe8>)
 8000320:	881b      	ldrh	r3, [r3, #0]
 8000322:	b29b      	uxth	r3, r3
 8000324:	f043 0304 	orr.w	r3, r3, #4
 8000328:	b29b      	uxth	r3, r3
 800032a:	8013      	strh	r3, [r2, #0]
 800032c:	4a06      	ldr	r2, [pc, #24]	; (8000348 <spi_master_init+0xe8>)
 800032e:	4b06      	ldr	r3, [pc, #24]	; (8000348 <spi_master_init+0xe8>)
 8000330:	881b      	ldrh	r3, [r3, #0]
 8000332:	b29b      	uxth	r3, r3
 8000334:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8000338:	b29b      	uxth	r3, r3
 800033a:	8013      	strh	r3, [r2, #0]
 800033c:	46bd      	mov	sp, r7
 800033e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000342:	4770      	bx	lr
 8000344:	40010800 	.word	0x40010800
 8000348:	40013000 	.word	0x40013000

0800034c <spi_slave_init>:
 800034c:	b580      	push	{r7, lr}
 800034e:	af00      	add	r7, sp, #0
 8000350:	4a27      	ldr	r2, [pc, #156]	; (80003f0 <spi_slave_init+0xa4>)
 8000352:	4b27      	ldr	r3, [pc, #156]	; (80003f0 <spi_slave_init+0xa4>)
 8000354:	681b      	ldr	r3, [r3, #0]
 8000356:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 800035a:	6013      	str	r3, [r2, #0]
 800035c:	4a24      	ldr	r2, [pc, #144]	; (80003f0 <spi_slave_init+0xa4>)
 800035e:	4b24      	ldr	r3, [pc, #144]	; (80003f0 <spi_slave_init+0xa4>)
 8000360:	681b      	ldr	r3, [r3, #0]
 8000362:	f043 6330 	orr.w	r3, r3, #184549376	; 0xb000000
 8000366:	6013      	str	r3, [r2, #0]
 8000368:	4a22      	ldr	r2, [pc, #136]	; (80003f4 <spi_slave_init+0xa8>)
 800036a:	4b22      	ldr	r3, [pc, #136]	; (80003f4 <spi_slave_init+0xa8>)
 800036c:	881b      	ldrh	r3, [r3, #0]
 800036e:	b29b      	uxth	r3, r3
 8000370:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8000374:	b29b      	uxth	r3, r3
 8000376:	8013      	strh	r3, [r2, #0]
 8000378:	4a1e      	ldr	r2, [pc, #120]	; (80003f4 <spi_slave_init+0xa8>)
 800037a:	4b1e      	ldr	r3, [pc, #120]	; (80003f4 <spi_slave_init+0xa8>)
 800037c:	881b      	ldrh	r3, [r3, #0]
 800037e:	b29b      	uxth	r3, r3
 8000380:	f023 0303 	bic.w	r3, r3, #3
 8000384:	b29b      	uxth	r3, r3
 8000386:	8013      	strh	r3, [r2, #0]
 8000388:	4a1a      	ldr	r2, [pc, #104]	; (80003f4 <spi_slave_init+0xa8>)
 800038a:	4b1a      	ldr	r3, [pc, #104]	; (80003f4 <spi_slave_init+0xa8>)
 800038c:	881b      	ldrh	r3, [r3, #0]
 800038e:	b29b      	uxth	r3, r3
 8000390:	f043 0301 	orr.w	r3, r3, #1
 8000394:	b29b      	uxth	r3, r3
 8000396:	8013      	strh	r3, [r2, #0]
 8000398:	4a16      	ldr	r2, [pc, #88]	; (80003f4 <spi_slave_init+0xa8>)
 800039a:	4b16      	ldr	r3, [pc, #88]	; (80003f4 <spi_slave_init+0xa8>)
 800039c:	881b      	ldrh	r3, [r3, #0]
 800039e:	b29b      	uxth	r3, r3
 80003a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80003a4:	b29b      	uxth	r3, r3
 80003a6:	8013      	strh	r3, [r2, #0]
 80003a8:	4a12      	ldr	r2, [pc, #72]	; (80003f4 <spi_slave_init+0xa8>)
 80003aa:	4b12      	ldr	r3, [pc, #72]	; (80003f4 <spi_slave_init+0xa8>)
 80003ac:	881b      	ldrh	r3, [r3, #0]
 80003ae:	b29b      	uxth	r3, r3
 80003b0:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 80003b4:	b29b      	uxth	r3, r3
 80003b6:	8013      	strh	r3, [r2, #0]
 80003b8:	4a0e      	ldr	r2, [pc, #56]	; (80003f4 <spi_slave_init+0xa8>)
 80003ba:	4b0e      	ldr	r3, [pc, #56]	; (80003f4 <spi_slave_init+0xa8>)
 80003bc:	889b      	ldrh	r3, [r3, #4]
 80003be:	b29b      	uxth	r3, r3
 80003c0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80003c4:	b29b      	uxth	r3, r3
 80003c6:	8093      	strh	r3, [r2, #4]
 80003c8:	4a0a      	ldr	r2, [pc, #40]	; (80003f4 <spi_slave_init+0xa8>)
 80003ca:	4b0a      	ldr	r3, [pc, #40]	; (80003f4 <spi_slave_init+0xa8>)
 80003cc:	881b      	ldrh	r3, [r3, #0]
 80003ce:	b29b      	uxth	r3, r3
 80003d0:	f023 0304 	bic.w	r3, r3, #4
 80003d4:	b29b      	uxth	r3, r3
 80003d6:	8013      	strh	r3, [r2, #0]
 80003d8:	2023      	movs	r0, #35	; 0x23
 80003da:	f7ff ff29 	bl	8000230 <NVIC_EnableIRQ>
 80003de:	4a05      	ldr	r2, [pc, #20]	; (80003f4 <spi_slave_init+0xa8>)
 80003e0:	4b04      	ldr	r3, [pc, #16]	; (80003f4 <spi_slave_init+0xa8>)
 80003e2:	881b      	ldrh	r3, [r3, #0]
 80003e4:	b29b      	uxth	r3, r3
 80003e6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80003ea:	b29b      	uxth	r3, r3
 80003ec:	8013      	strh	r3, [r2, #0]
 80003ee:	bd80      	pop	{r7, pc}
 80003f0:	40010800 	.word	0x40010800
 80003f4:	40013000 	.word	0x40013000

080003f8 <spi_write_read>:
 80003f8:	b480      	push	{r7}
 80003fa:	b087      	sub	sp, #28
 80003fc:	af00      	add	r7, sp, #0
 80003fe:	60f8      	str	r0, [r7, #12]
 8000400:	60b9      	str	r1, [r7, #8]
 8000402:	4613      	mov	r3, r2
 8000404:	80fb      	strh	r3, [r7, #6]
 8000406:	2300      	movs	r3, #0
 8000408:	617b      	str	r3, [r7, #20]
 800040a:	492c      	ldr	r1, [pc, #176]	; (80004bc <spi_write_read+0xc4>)
 800040c:	697b      	ldr	r3, [r7, #20]
 800040e:	1c5a      	adds	r2, r3, #1
 8000410:	617a      	str	r2, [r7, #20]
 8000412:	461a      	mov	r2, r3
 8000414:	68fb      	ldr	r3, [r7, #12]
 8000416:	4413      	add	r3, r2
 8000418:	781b      	ldrb	r3, [r3, #0]
 800041a:	b29b      	uxth	r3, r3
 800041c:	818b      	strh	r3, [r1, #12]
 800041e:	e022      	b.n	8000466 <spi_write_read+0x6e>
 8000420:	bf00      	nop
 8000422:	4b26      	ldr	r3, [pc, #152]	; (80004bc <spi_write_read+0xc4>)
 8000424:	891b      	ldrh	r3, [r3, #8]
 8000426:	b29b      	uxth	r3, r3
 8000428:	f003 0302 	and.w	r3, r3, #2
 800042c:	2b00      	cmp	r3, #0
 800042e:	d0f8      	beq.n	8000422 <spi_write_read+0x2a>
 8000430:	4922      	ldr	r1, [pc, #136]	; (80004bc <spi_write_read+0xc4>)
 8000432:	697b      	ldr	r3, [r7, #20]
 8000434:	68fa      	ldr	r2, [r7, #12]
 8000436:	4413      	add	r3, r2
 8000438:	781b      	ldrb	r3, [r3, #0]
 800043a:	b29b      	uxth	r3, r3
 800043c:	818b      	strh	r3, [r1, #12]
 800043e:	bf00      	nop
 8000440:	4b1e      	ldr	r3, [pc, #120]	; (80004bc <spi_write_read+0xc4>)
 8000442:	891b      	ldrh	r3, [r3, #8]
 8000444:	b29b      	uxth	r3, r3
 8000446:	f003 0301 	and.w	r3, r3, #1
 800044a:	2b00      	cmp	r3, #0
 800044c:	d0f8      	beq.n	8000440 <spi_write_read+0x48>
 800044e:	697b      	ldr	r3, [r7, #20]
 8000450:	3b01      	subs	r3, #1
 8000452:	68ba      	ldr	r2, [r7, #8]
 8000454:	4413      	add	r3, r2
 8000456:	4a19      	ldr	r2, [pc, #100]	; (80004bc <spi_write_read+0xc4>)
 8000458:	8992      	ldrh	r2, [r2, #12]
 800045a:	b292      	uxth	r2, r2
 800045c:	b2d2      	uxtb	r2, r2
 800045e:	701a      	strb	r2, [r3, #0]
 8000460:	697b      	ldr	r3, [r7, #20]
 8000462:	3301      	adds	r3, #1
 8000464:	617b      	str	r3, [r7, #20]
 8000466:	88fa      	ldrh	r2, [r7, #6]
 8000468:	697b      	ldr	r3, [r7, #20]
 800046a:	429a      	cmp	r2, r3
 800046c:	dcd8      	bgt.n	8000420 <spi_write_read+0x28>
 800046e:	bf00      	nop
 8000470:	4b12      	ldr	r3, [pc, #72]	; (80004bc <spi_write_read+0xc4>)
 8000472:	891b      	ldrh	r3, [r3, #8]
 8000474:	b29b      	uxth	r3, r3
 8000476:	f003 0301 	and.w	r3, r3, #1
 800047a:	2b00      	cmp	r3, #0
 800047c:	d0f8      	beq.n	8000470 <spi_write_read+0x78>
 800047e:	88fb      	ldrh	r3, [r7, #6]
 8000480:	3b01      	subs	r3, #1
 8000482:	68ba      	ldr	r2, [r7, #8]
 8000484:	4413      	add	r3, r2
 8000486:	4a0d      	ldr	r2, [pc, #52]	; (80004bc <spi_write_read+0xc4>)
 8000488:	8992      	ldrh	r2, [r2, #12]
 800048a:	b292      	uxth	r2, r2
 800048c:	b2d2      	uxtb	r2, r2
 800048e:	701a      	strb	r2, [r3, #0]
 8000490:	bf00      	nop
 8000492:	4b0a      	ldr	r3, [pc, #40]	; (80004bc <spi_write_read+0xc4>)
 8000494:	891b      	ldrh	r3, [r3, #8]
 8000496:	b29b      	uxth	r3, r3
 8000498:	f003 0302 	and.w	r3, r3, #2
 800049c:	2b00      	cmp	r3, #0
 800049e:	d0f8      	beq.n	8000492 <spi_write_read+0x9a>
 80004a0:	bf00      	nop
 80004a2:	4b06      	ldr	r3, [pc, #24]	; (80004bc <spi_write_read+0xc4>)
 80004a4:	891b      	ldrh	r3, [r3, #8]
 80004a6:	b29b      	uxth	r3, r3
 80004a8:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80004ac:	2b00      	cmp	r3, #0
 80004ae:	d1f8      	bne.n	80004a2 <spi_write_read+0xaa>
 80004b0:	371c      	adds	r7, #28
 80004b2:	46bd      	mov	sp, r7
 80004b4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004b8:	4770      	bx	lr
 80004ba:	bf00      	nop
 80004bc:	40013000 	.word	0x40013000

080004c0 <SPI1_IRQHandler>:
 80004c0:	b480      	push	{r7}
 80004c2:	af00      	add	r7, sp, #0
 80004c4:	4b0a      	ldr	r3, [pc, #40]	; (80004f0 <SPI1_IRQHandler+0x30>)
 80004c6:	891b      	ldrh	r3, [r3, #8]
 80004c8:	b29b      	uxth	r3, r3
 80004ca:	f003 0301 	and.w	r3, r3, #1
 80004ce:	2b00      	cmp	r3, #0
 80004d0:	d008      	beq.n	80004e4 <SPI1_IRQHandler+0x24>
 80004d2:	4b08      	ldr	r3, [pc, #32]	; (80004f4 <SPI1_IRQHandler+0x34>)
 80004d4:	2201      	movs	r2, #1
 80004d6:	601a      	str	r2, [r3, #0]
 80004d8:	4b05      	ldr	r3, [pc, #20]	; (80004f0 <SPI1_IRQHandler+0x30>)
 80004da:	899b      	ldrh	r3, [r3, #12]
 80004dc:	b29b      	uxth	r3, r3
 80004de:	b2da      	uxtb	r2, r3
 80004e0:	4b05      	ldr	r3, [pc, #20]	; (80004f8 <SPI1_IRQHandler+0x38>)
 80004e2:	701a      	strb	r2, [r3, #0]
 80004e4:	4b02      	ldr	r3, [pc, #8]	; (80004f0 <SPI1_IRQHandler+0x30>)
 80004e6:	891b      	ldrh	r3, [r3, #8]
 80004e8:	46bd      	mov	sp, r7
 80004ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004ee:	4770      	bx	lr
 80004f0:	40013000 	.word	0x40013000
 80004f4:	20000000 	.word	0x20000000
 80004f8:	20000004 	.word	0x20000004

080004fc <handler_reset>:
 80004fc:	b580      	push	{r7, lr}
 80004fe:	b082      	sub	sp, #8
 8000500:	af00      	add	r7, sp, #0
 8000502:	4b11      	ldr	r3, [pc, #68]	; (8000548 <handler_reset+0x4c>)
 8000504:	607b      	str	r3, [r7, #4]
 8000506:	4b11      	ldr	r3, [pc, #68]	; (800054c <handler_reset+0x50>)
 8000508:	603b      	str	r3, [r7, #0]
 800050a:	e007      	b.n	800051c <handler_reset+0x20>
 800050c:	683b      	ldr	r3, [r7, #0]
 800050e:	1d1a      	adds	r2, r3, #4
 8000510:	603a      	str	r2, [r7, #0]
 8000512:	687a      	ldr	r2, [r7, #4]
 8000514:	1d11      	adds	r1, r2, #4
 8000516:	6079      	str	r1, [r7, #4]
 8000518:	6812      	ldr	r2, [r2, #0]
 800051a:	601a      	str	r2, [r3, #0]
 800051c:	683b      	ldr	r3, [r7, #0]
 800051e:	4a0c      	ldr	r2, [pc, #48]	; (8000550 <handler_reset+0x54>)
 8000520:	4293      	cmp	r3, r2
 8000522:	d3f3      	bcc.n	800050c <handler_reset+0x10>
 8000524:	4b0b      	ldr	r3, [pc, #44]	; (8000554 <handler_reset+0x58>)
 8000526:	603b      	str	r3, [r7, #0]
 8000528:	e004      	b.n	8000534 <handler_reset+0x38>
 800052a:	683b      	ldr	r3, [r7, #0]
 800052c:	1d1a      	adds	r2, r3, #4
 800052e:	603a      	str	r2, [r7, #0]
 8000530:	2200      	movs	r2, #0
 8000532:	601a      	str	r2, [r3, #0]
 8000534:	683b      	ldr	r3, [r7, #0]
 8000536:	4a08      	ldr	r2, [pc, #32]	; (8000558 <handler_reset+0x5c>)
 8000538:	4293      	cmp	r3, r2
 800053a:	d3f6      	bcc.n	800052a <handler_reset+0x2e>
 800053c:	f7ff fe42 	bl	80001c4 <main>
 8000540:	3708      	adds	r7, #8
 8000542:	46bd      	mov	sp, r7
 8000544:	bd80      	pop	{r7, pc}
 8000546:	bf00      	nop
 8000548:	080011b0 	.word	0x080011b0
 800054c:	20000000 	.word	0x20000000
 8000550:	20000000 	.word	0x20000000
 8000554:	20000000 	.word	0x20000000
 8000558:	20000828 	.word	0x20000828

0800055c <default_handler>:
 800055c:	b480      	push	{r7}
 800055e:	af00      	add	r7, sp, #0
 8000560:	e7fe      	b.n	8000560 <default_handler+0x4>
 8000562:	bf00      	nop

08000564 <system_init>:
 8000564:	b480      	push	{r7}
 8000566:	af00      	add	r7, sp, #0
 8000568:	4a41      	ldr	r2, [pc, #260]	; (8000670 <system_init+0x10c>)
 800056a:	4b41      	ldr	r3, [pc, #260]	; (8000670 <system_init+0x10c>)
 800056c:	681b      	ldr	r3, [r3, #0]
 800056e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000572:	6013      	str	r3, [r2, #0]
 8000574:	bf00      	nop
 8000576:	4b3e      	ldr	r3, [pc, #248]	; (8000670 <system_init+0x10c>)
 8000578:	681b      	ldr	r3, [r3, #0]
 800057a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800057e:	2b00      	cmp	r3, #0
 8000580:	d0f9      	beq.n	8000576 <system_init+0x12>
 8000582:	4a3b      	ldr	r2, [pc, #236]	; (8000670 <system_init+0x10c>)
 8000584:	4b3a      	ldr	r3, [pc, #232]	; (8000670 <system_init+0x10c>)
 8000586:	685b      	ldr	r3, [r3, #4]
 8000588:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 800058c:	6053      	str	r3, [r2, #4]
 800058e:	4a38      	ldr	r2, [pc, #224]	; (8000670 <system_init+0x10c>)
 8000590:	4b37      	ldr	r3, [pc, #220]	; (8000670 <system_init+0x10c>)
 8000592:	685b      	ldr	r3, [r3, #4]
 8000594:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000598:	6053      	str	r3, [r2, #4]
 800059a:	4a35      	ldr	r2, [pc, #212]	; (8000670 <system_init+0x10c>)
 800059c:	4b34      	ldr	r3, [pc, #208]	; (8000670 <system_init+0x10c>)
 800059e:	685b      	ldr	r3, [r3, #4]
 80005a0:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 80005a4:	6053      	str	r3, [r2, #4]
 80005a6:	4a32      	ldr	r2, [pc, #200]	; (8000670 <system_init+0x10c>)
 80005a8:	4b31      	ldr	r3, [pc, #196]	; (8000670 <system_init+0x10c>)
 80005aa:	685b      	ldr	r3, [r3, #4]
 80005ac:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 80005b0:	6053      	str	r3, [r2, #4]
 80005b2:	4a2f      	ldr	r2, [pc, #188]	; (8000670 <system_init+0x10c>)
 80005b4:	4b2e      	ldr	r3, [pc, #184]	; (8000670 <system_init+0x10c>)
 80005b6:	681b      	ldr	r3, [r3, #0]
 80005b8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80005bc:	6013      	str	r3, [r2, #0]
 80005be:	bf00      	nop
 80005c0:	4b2b      	ldr	r3, [pc, #172]	; (8000670 <system_init+0x10c>)
 80005c2:	681b      	ldr	r3, [r3, #0]
 80005c4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80005c8:	2b00      	cmp	r3, #0
 80005ca:	d0f9      	beq.n	80005c0 <system_init+0x5c>
 80005cc:	4a29      	ldr	r2, [pc, #164]	; (8000674 <system_init+0x110>)
 80005ce:	4b29      	ldr	r3, [pc, #164]	; (8000674 <system_init+0x110>)
 80005d0:	681b      	ldr	r3, [r3, #0]
 80005d2:	f043 0310 	orr.w	r3, r3, #16
 80005d6:	6013      	str	r3, [r2, #0]
 80005d8:	4a26      	ldr	r2, [pc, #152]	; (8000674 <system_init+0x110>)
 80005da:	4b26      	ldr	r3, [pc, #152]	; (8000674 <system_init+0x110>)
 80005dc:	681b      	ldr	r3, [r3, #0]
 80005de:	f023 0303 	bic.w	r3, r3, #3
 80005e2:	6013      	str	r3, [r2, #0]
 80005e4:	4a23      	ldr	r2, [pc, #140]	; (8000674 <system_init+0x110>)
 80005e6:	4b23      	ldr	r3, [pc, #140]	; (8000674 <system_init+0x110>)
 80005e8:	681b      	ldr	r3, [r3, #0]
 80005ea:	f043 0302 	orr.w	r3, r3, #2
 80005ee:	6013      	str	r3, [r2, #0]
 80005f0:	4a1f      	ldr	r2, [pc, #124]	; (8000670 <system_init+0x10c>)
 80005f2:	4b1f      	ldr	r3, [pc, #124]	; (8000670 <system_init+0x10c>)
 80005f4:	685b      	ldr	r3, [r3, #4]
 80005f6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80005fa:	6053      	str	r3, [r2, #4]
 80005fc:	4a1c      	ldr	r2, [pc, #112]	; (8000670 <system_init+0x10c>)
 80005fe:	4b1c      	ldr	r3, [pc, #112]	; (8000670 <system_init+0x10c>)
 8000600:	685b      	ldr	r3, [r3, #4]
 8000602:	f023 0303 	bic.w	r3, r3, #3
 8000606:	6053      	str	r3, [r2, #4]
 8000608:	4a19      	ldr	r2, [pc, #100]	; (8000670 <system_init+0x10c>)
 800060a:	4b19      	ldr	r3, [pc, #100]	; (8000670 <system_init+0x10c>)
 800060c:	685b      	ldr	r3, [r3, #4]
 800060e:	f043 0302 	orr.w	r3, r3, #2
 8000612:	6053      	str	r3, [r2, #4]
 8000614:	bf00      	nop
 8000616:	4b16      	ldr	r3, [pc, #88]	; (8000670 <system_init+0x10c>)
 8000618:	685b      	ldr	r3, [r3, #4]
 800061a:	f003 030c 	and.w	r3, r3, #12
 800061e:	2b08      	cmp	r3, #8
 8000620:	d1f9      	bne.n	8000616 <system_init+0xb2>
 8000622:	4a13      	ldr	r2, [pc, #76]	; (8000670 <system_init+0x10c>)
 8000624:	4b12      	ldr	r3, [pc, #72]	; (8000670 <system_init+0x10c>)
 8000626:	699b      	ldr	r3, [r3, #24]
 8000628:	f043 0305 	orr.w	r3, r3, #5
 800062c:	6193      	str	r3, [r2, #24]
 800062e:	4a10      	ldr	r2, [pc, #64]	; (8000670 <system_init+0x10c>)
 8000630:	4b0f      	ldr	r3, [pc, #60]	; (8000670 <system_init+0x10c>)
 8000632:	699b      	ldr	r3, [r3, #24]
 8000634:	f043 0318 	orr.w	r3, r3, #24
 8000638:	6193      	str	r3, [r2, #24]
 800063a:	4a0d      	ldr	r2, [pc, #52]	; (8000670 <system_init+0x10c>)
 800063c:	4b0c      	ldr	r3, [pc, #48]	; (8000670 <system_init+0x10c>)
 800063e:	699b      	ldr	r3, [r3, #24]
 8000640:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8000644:	6193      	str	r3, [r2, #24]
 8000646:	4a0a      	ldr	r2, [pc, #40]	; (8000670 <system_init+0x10c>)
 8000648:	4b09      	ldr	r3, [pc, #36]	; (8000670 <system_init+0x10c>)
 800064a:	69db      	ldr	r3, [r3, #28]
 800064c:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000650:	61d3      	str	r3, [r2, #28]
 8000652:	4b09      	ldr	r3, [pc, #36]	; (8000678 <system_init+0x114>)
 8000654:	f242 3227 	movw	r2, #8999	; 0x2327
 8000658:	605a      	str	r2, [r3, #4]
 800065a:	4b07      	ldr	r3, [pc, #28]	; (8000678 <system_init+0x114>)
 800065c:	2200      	movs	r2, #0
 800065e:	609a      	str	r2, [r3, #8]
 8000660:	4b05      	ldr	r3, [pc, #20]	; (8000678 <system_init+0x114>)
 8000662:	2203      	movs	r2, #3
 8000664:	601a      	str	r2, [r3, #0]
 8000666:	46bd      	mov	sp, r7
 8000668:	f85d 7b04 	ldr.w	r7, [sp], #4
 800066c:	4770      	bx	lr
 800066e:	bf00      	nop
 8000670:	40021000 	.word	0x40021000
 8000674:	40022000 	.word	0x40022000
 8000678:	e000e010 	.word	0xe000e010

0800067c <SysTick_Handler>:
 800067c:	b480      	push	{r7}
 800067e:	af00      	add	r7, sp, #0
 8000680:	4b04      	ldr	r3, [pc, #16]	; (8000694 <SysTick_Handler+0x18>)
 8000682:	681b      	ldr	r3, [r3, #0]
 8000684:	3301      	adds	r3, #1
 8000686:	4a03      	ldr	r2, [pc, #12]	; (8000694 <SysTick_Handler+0x18>)
 8000688:	6013      	str	r3, [r2, #0]
 800068a:	46bd      	mov	sp, r7
 800068c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000690:	4770      	bx	lr
 8000692:	bf00      	nop
 8000694:	20000008 	.word	0x20000008

08000698 <NVIC_EnableIRQ>:
 8000698:	b480      	push	{r7}
 800069a:	b083      	sub	sp, #12
 800069c:	af00      	add	r7, sp, #0
 800069e:	4603      	mov	r3, r0
 80006a0:	71fb      	strb	r3, [r7, #7]
 80006a2:	4908      	ldr	r1, [pc, #32]	; (80006c4 <NVIC_EnableIRQ+0x2c>)
 80006a4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80006a8:	095b      	lsrs	r3, r3, #5
 80006aa:	79fa      	ldrb	r2, [r7, #7]
 80006ac:	f002 021f 	and.w	r2, r2, #31
 80006b0:	2001      	movs	r0, #1
 80006b2:	fa00 f202 	lsl.w	r2, r0, r2
 80006b6:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80006ba:	370c      	adds	r7, #12
 80006bc:	46bd      	mov	sp, r7
 80006be:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006c2:	4770      	bx	lr
 80006c4:	e000e100 	.word	0xe000e100

080006c8 <uart_init>:
 80006c8:	b580      	push	{r7, lr}
 80006ca:	af00      	add	r7, sp, #0
 80006cc:	4a19      	ldr	r2, [pc, #100]	; (8000734 <uart_init+0x6c>)
 80006ce:	4b19      	ldr	r3, [pc, #100]	; (8000734 <uart_init+0x6c>)
 80006d0:	681b      	ldr	r3, [r3, #0]
 80006d2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80006d6:	6013      	str	r3, [r2, #0]
 80006d8:	4a16      	ldr	r2, [pc, #88]	; (8000734 <uart_init+0x6c>)
 80006da:	4b16      	ldr	r3, [pc, #88]	; (8000734 <uart_init+0x6c>)
 80006dc:	681b      	ldr	r3, [r3, #0]
 80006de:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 80006e2:	6013      	str	r3, [r2, #0]
 80006e4:	4a14      	ldr	r2, [pc, #80]	; (8000738 <uart_init+0x70>)
 80006e6:	4b14      	ldr	r3, [pc, #80]	; (8000738 <uart_init+0x70>)
 80006e8:	899b      	ldrh	r3, [r3, #12]
 80006ea:	b29b      	uxth	r3, r3
 80006ec:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80006f0:	b29b      	uxth	r3, r3
 80006f2:	8193      	strh	r3, [r2, #12]
 80006f4:	4a10      	ldr	r2, [pc, #64]	; (8000738 <uart_init+0x70>)
 80006f6:	4b10      	ldr	r3, [pc, #64]	; (8000738 <uart_init+0x70>)
 80006f8:	899b      	ldrh	r3, [r3, #12]
 80006fa:	b29b      	uxth	r3, r3
 80006fc:	f043 0304 	orr.w	r3, r3, #4
 8000700:	b29b      	uxth	r3, r3
 8000702:	8193      	strh	r3, [r2, #12]
 8000704:	4a0c      	ldr	r2, [pc, #48]	; (8000738 <uart_init+0x70>)
 8000706:	4b0c      	ldr	r3, [pc, #48]	; (8000738 <uart_init+0x70>)
 8000708:	899b      	ldrh	r3, [r3, #12]
 800070a:	b29b      	uxth	r3, r3
 800070c:	f043 0320 	orr.w	r3, r3, #32
 8000710:	b29b      	uxth	r3, r3
 8000712:	8193      	strh	r3, [r2, #12]
 8000714:	4a08      	ldr	r2, [pc, #32]	; (8000738 <uart_init+0x70>)
 8000716:	4b08      	ldr	r3, [pc, #32]	; (8000738 <uart_init+0x70>)
 8000718:	899b      	ldrh	r3, [r3, #12]
 800071a:	b29b      	uxth	r3, r3
 800071c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000720:	b29b      	uxth	r3, r3
 8000722:	8193      	strh	r3, [r2, #12]
 8000724:	2026      	movs	r0, #38	; 0x26
 8000726:	f7ff ffb7 	bl	8000698 <NVIC_EnableIRQ>
 800072a:	4b03      	ldr	r3, [pc, #12]	; (8000738 <uart_init+0x70>)
 800072c:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000730:	811a      	strh	r2, [r3, #8]
 8000732:	bd80      	pop	{r7, pc}
 8000734:	40010800 	.word	0x40010800
 8000738:	40004400 	.word	0x40004400

0800073c <uart_putch>:
 800073c:	b480      	push	{r7}
 800073e:	b083      	sub	sp, #12
 8000740:	af00      	add	r7, sp, #0
 8000742:	4603      	mov	r3, r0
 8000744:	71fb      	strb	r3, [r7, #7]
 8000746:	4b13      	ldr	r3, [pc, #76]	; (8000794 <uart_putch+0x58>)
 8000748:	681a      	ldr	r2, [r3, #0]
 800074a:	4b13      	ldr	r3, [pc, #76]	; (8000798 <uart_putch+0x5c>)
 800074c:	681b      	ldr	r3, [r3, #0]
 800074e:	429a      	cmp	r2, r3
 8000750:	d107      	bne.n	8000762 <uart_putch+0x26>
 8000752:	4a12      	ldr	r2, [pc, #72]	; (800079c <uart_putch+0x60>)
 8000754:	4b11      	ldr	r3, [pc, #68]	; (800079c <uart_putch+0x60>)
 8000756:	899b      	ldrh	r3, [r3, #12]
 8000758:	b29b      	uxth	r3, r3
 800075a:	f043 0308 	orr.w	r3, r3, #8
 800075e:	b29b      	uxth	r3, r3
 8000760:	8193      	strh	r3, [r2, #12]
 8000762:	4b0c      	ldr	r3, [pc, #48]	; (8000794 <uart_putch+0x58>)
 8000764:	681b      	ldr	r3, [r3, #0]
 8000766:	490e      	ldr	r1, [pc, #56]	; (80007a0 <uart_putch+0x64>)
 8000768:	79fa      	ldrb	r2, [r7, #7]
 800076a:	54ca      	strb	r2, [r1, r3]
 800076c:	4b09      	ldr	r3, [pc, #36]	; (8000794 <uart_putch+0x58>)
 800076e:	681b      	ldr	r3, [r3, #0]
 8000770:	3301      	adds	r3, #1
 8000772:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000776:	4a07      	ldr	r2, [pc, #28]	; (8000794 <uart_putch+0x58>)
 8000778:	6013      	str	r3, [r2, #0]
 800077a:	4a08      	ldr	r2, [pc, #32]	; (800079c <uart_putch+0x60>)
 800077c:	4b07      	ldr	r3, [pc, #28]	; (800079c <uart_putch+0x60>)
 800077e:	899b      	ldrh	r3, [r3, #12]
 8000780:	b29b      	uxth	r3, r3
 8000782:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000786:	b29b      	uxth	r3, r3
 8000788:	8193      	strh	r3, [r2, #12]
 800078a:	370c      	adds	r7, #12
 800078c:	46bd      	mov	sp, r7
 800078e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000792:	4770      	bx	lr
 8000794:	20000410 	.word	0x20000410
 8000798:	2000040c 	.word	0x2000040c
 800079c:	40004400 	.word	0x40004400
 80007a0:	2000000c 	.word	0x2000000c

080007a4 <uart_send>:
 80007a4:	b480      	push	{r7}
 80007a6:	b085      	sub	sp, #20
 80007a8:	af00      	add	r7, sp, #0
 80007aa:	6078      	str	r0, [r7, #4]
 80007ac:	6039      	str	r1, [r7, #0]
 80007ae:	4b20      	ldr	r3, [pc, #128]	; (8000830 <uart_send+0x8c>)
 80007b0:	681a      	ldr	r2, [r3, #0]
 80007b2:	4b20      	ldr	r3, [pc, #128]	; (8000834 <uart_send+0x90>)
 80007b4:	681b      	ldr	r3, [r3, #0]
 80007b6:	429a      	cmp	r2, r3
 80007b8:	d107      	bne.n	80007ca <uart_send+0x26>
 80007ba:	4a1f      	ldr	r2, [pc, #124]	; (8000838 <uart_send+0x94>)
 80007bc:	4b1e      	ldr	r3, [pc, #120]	; (8000838 <uart_send+0x94>)
 80007be:	899b      	ldrh	r3, [r3, #12]
 80007c0:	b29b      	uxth	r3, r3
 80007c2:	f043 0308 	orr.w	r3, r3, #8
 80007c6:	b29b      	uxth	r3, r3
 80007c8:	8193      	strh	r3, [r2, #12]
 80007ca:	2300      	movs	r3, #0
 80007cc:	60fb      	str	r3, [r7, #12]
 80007ce:	e01b      	b.n	8000808 <uart_send+0x64>
 80007d0:	4b17      	ldr	r3, [pc, #92]	; (8000830 <uart_send+0x8c>)
 80007d2:	681b      	ldr	r3, [r3, #0]
 80007d4:	68fa      	ldr	r2, [r7, #12]
 80007d6:	6879      	ldr	r1, [r7, #4]
 80007d8:	440a      	add	r2, r1
 80007da:	7811      	ldrb	r1, [r2, #0]
 80007dc:	4a17      	ldr	r2, [pc, #92]	; (800083c <uart_send+0x98>)
 80007de:	54d1      	strb	r1, [r2, r3]
 80007e0:	4b13      	ldr	r3, [pc, #76]	; (8000830 <uart_send+0x8c>)
 80007e2:	681b      	ldr	r3, [r3, #0]
 80007e4:	3301      	adds	r3, #1
 80007e6:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80007ea:	4a11      	ldr	r2, [pc, #68]	; (8000830 <uart_send+0x8c>)
 80007ec:	6013      	str	r3, [r2, #0]
 80007ee:	4b10      	ldr	r3, [pc, #64]	; (8000830 <uart_send+0x8c>)
 80007f0:	681a      	ldr	r2, [r3, #0]
 80007f2:	4b10      	ldr	r3, [pc, #64]	; (8000834 <uart_send+0x90>)
 80007f4:	681b      	ldr	r3, [r3, #0]
 80007f6:	429a      	cmp	r2, r3
 80007f8:	d103      	bne.n	8000802 <uart_send+0x5e>
 80007fa:	68fb      	ldr	r3, [r7, #12]
 80007fc:	3301      	adds	r3, #1
 80007fe:	60fb      	str	r3, [r7, #12]
 8000800:	e006      	b.n	8000810 <uart_send+0x6c>
 8000802:	68fb      	ldr	r3, [r7, #12]
 8000804:	3301      	adds	r3, #1
 8000806:	60fb      	str	r3, [r7, #12]
 8000808:	68fa      	ldr	r2, [r7, #12]
 800080a:	683b      	ldr	r3, [r7, #0]
 800080c:	429a      	cmp	r2, r3
 800080e:	dbdf      	blt.n	80007d0 <uart_send+0x2c>
 8000810:	4a09      	ldr	r2, [pc, #36]	; (8000838 <uart_send+0x94>)
 8000812:	4b09      	ldr	r3, [pc, #36]	; (8000838 <uart_send+0x94>)
 8000814:	899b      	ldrh	r3, [r3, #12]
 8000816:	b29b      	uxth	r3, r3
 8000818:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800081c:	b29b      	uxth	r3, r3
 800081e:	8193      	strh	r3, [r2, #12]
 8000820:	68fb      	ldr	r3, [r7, #12]
 8000822:	4618      	mov	r0, r3
 8000824:	3714      	adds	r7, #20
 8000826:	46bd      	mov	sp, r7
 8000828:	f85d 7b04 	ldr.w	r7, [sp], #4
 800082c:	4770      	bx	lr
 800082e:	bf00      	nop
 8000830:	20000410 	.word	0x20000410
 8000834:	2000040c 	.word	0x2000040c
 8000838:	40004400 	.word	0x40004400
 800083c:	2000000c 	.word	0x2000000c

08000840 <uart_send_str>:
 8000840:	b480      	push	{r7}
 8000842:	b085      	sub	sp, #20
 8000844:	af00      	add	r7, sp, #0
 8000846:	6078      	str	r0, [r7, #4]
 8000848:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800084c:	60bb      	str	r3, [r7, #8]
 800084e:	4b25      	ldr	r3, [pc, #148]	; (80008e4 <uart_send_str+0xa4>)
 8000850:	681a      	ldr	r2, [r3, #0]
 8000852:	4b25      	ldr	r3, [pc, #148]	; (80008e8 <uart_send_str+0xa8>)
 8000854:	681b      	ldr	r3, [r3, #0]
 8000856:	1ad3      	subs	r3, r2, r3
 8000858:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800085c:	68ba      	ldr	r2, [r7, #8]
 800085e:	1ad3      	subs	r3, r2, r3
 8000860:	60bb      	str	r3, [r7, #8]
 8000862:	4b20      	ldr	r3, [pc, #128]	; (80008e4 <uart_send_str+0xa4>)
 8000864:	681a      	ldr	r2, [r3, #0]
 8000866:	4b20      	ldr	r3, [pc, #128]	; (80008e8 <uart_send_str+0xa8>)
 8000868:	681b      	ldr	r3, [r3, #0]
 800086a:	429a      	cmp	r2, r3
 800086c:	d107      	bne.n	800087e <uart_send_str+0x3e>
 800086e:	4a1f      	ldr	r2, [pc, #124]	; (80008ec <uart_send_str+0xac>)
 8000870:	4b1e      	ldr	r3, [pc, #120]	; (80008ec <uart_send_str+0xac>)
 8000872:	899b      	ldrh	r3, [r3, #12]
 8000874:	b29b      	uxth	r3, r3
 8000876:	f043 0308 	orr.w	r3, r3, #8
 800087a:	b29b      	uxth	r3, r3
 800087c:	8193      	strh	r3, [r2, #12]
 800087e:	2300      	movs	r3, #0
 8000880:	60fb      	str	r3, [r7, #12]
 8000882:	e01b      	b.n	80008bc <uart_send_str+0x7c>
 8000884:	68fb      	ldr	r3, [r7, #12]
 8000886:	687a      	ldr	r2, [r7, #4]
 8000888:	4413      	add	r3, r2
 800088a:	781b      	ldrb	r3, [r3, #0]
 800088c:	2b00      	cmp	r3, #0
 800088e:	d103      	bne.n	8000898 <uart_send_str+0x58>
 8000890:	68fb      	ldr	r3, [r7, #12]
 8000892:	3301      	adds	r3, #1
 8000894:	60fb      	str	r3, [r7, #12]
 8000896:	e015      	b.n	80008c4 <uart_send_str+0x84>
 8000898:	4b12      	ldr	r3, [pc, #72]	; (80008e4 <uart_send_str+0xa4>)
 800089a:	681b      	ldr	r3, [r3, #0]
 800089c:	68fa      	ldr	r2, [r7, #12]
 800089e:	6879      	ldr	r1, [r7, #4]
 80008a0:	440a      	add	r2, r1
 80008a2:	7811      	ldrb	r1, [r2, #0]
 80008a4:	4a12      	ldr	r2, [pc, #72]	; (80008f0 <uart_send_str+0xb0>)
 80008a6:	54d1      	strb	r1, [r2, r3]
 80008a8:	4b0e      	ldr	r3, [pc, #56]	; (80008e4 <uart_send_str+0xa4>)
 80008aa:	681b      	ldr	r3, [r3, #0]
 80008ac:	3301      	adds	r3, #1
 80008ae:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80008b2:	4a0c      	ldr	r2, [pc, #48]	; (80008e4 <uart_send_str+0xa4>)
 80008b4:	6013      	str	r3, [r2, #0]
 80008b6:	68fb      	ldr	r3, [r7, #12]
 80008b8:	3301      	adds	r3, #1
 80008ba:	60fb      	str	r3, [r7, #12]
 80008bc:	68fa      	ldr	r2, [r7, #12]
 80008be:	68bb      	ldr	r3, [r7, #8]
 80008c0:	429a      	cmp	r2, r3
 80008c2:	dbdf      	blt.n	8000884 <uart_send_str+0x44>
 80008c4:	4a09      	ldr	r2, [pc, #36]	; (80008ec <uart_send_str+0xac>)
 80008c6:	4b09      	ldr	r3, [pc, #36]	; (80008ec <uart_send_str+0xac>)
 80008c8:	899b      	ldrh	r3, [r3, #12]
 80008ca:	b29b      	uxth	r3, r3
 80008cc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80008d0:	b29b      	uxth	r3, r3
 80008d2:	8193      	strh	r3, [r2, #12]
 80008d4:	68fb      	ldr	r3, [r7, #12]
 80008d6:	4618      	mov	r0, r3
 80008d8:	3714      	adds	r7, #20
 80008da:	46bd      	mov	sp, r7
 80008dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008e0:	4770      	bx	lr
 80008e2:	bf00      	nop
 80008e4:	20000410 	.word	0x20000410
 80008e8:	2000040c 	.word	0x2000040c
 80008ec:	40004400 	.word	0x40004400
 80008f0:	2000000c 	.word	0x2000000c

080008f4 <uart_read>:
 80008f4:	b480      	push	{r7}
 80008f6:	b085      	sub	sp, #20
 80008f8:	af00      	add	r7, sp, #0
 80008fa:	6078      	str	r0, [r7, #4]
 80008fc:	6039      	str	r1, [r7, #0]
 80008fe:	4b19      	ldr	r3, [pc, #100]	; (8000964 <uart_read+0x70>)
 8000900:	681a      	ldr	r2, [r3, #0]
 8000902:	4b19      	ldr	r3, [pc, #100]	; (8000968 <uart_read+0x74>)
 8000904:	681b      	ldr	r3, [r3, #0]
 8000906:	429a      	cmp	r2, r3
 8000908:	d101      	bne.n	800090e <uart_read+0x1a>
 800090a:	2300      	movs	r3, #0
 800090c:	e023      	b.n	8000956 <uart_read+0x62>
 800090e:	2300      	movs	r3, #0
 8000910:	60fb      	str	r3, [r7, #12]
 8000912:	e01b      	b.n	800094c <uart_read+0x58>
 8000914:	68fb      	ldr	r3, [r7, #12]
 8000916:	687a      	ldr	r2, [r7, #4]
 8000918:	4413      	add	r3, r2
 800091a:	4a12      	ldr	r2, [pc, #72]	; (8000964 <uart_read+0x70>)
 800091c:	6812      	ldr	r2, [r2, #0]
 800091e:	4913      	ldr	r1, [pc, #76]	; (800096c <uart_read+0x78>)
 8000920:	5c8a      	ldrb	r2, [r1, r2]
 8000922:	701a      	strb	r2, [r3, #0]
 8000924:	4b0f      	ldr	r3, [pc, #60]	; (8000964 <uart_read+0x70>)
 8000926:	681b      	ldr	r3, [r3, #0]
 8000928:	3301      	adds	r3, #1
 800092a:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800092e:	4a0d      	ldr	r2, [pc, #52]	; (8000964 <uart_read+0x70>)
 8000930:	6013      	str	r3, [r2, #0]
 8000932:	4b0c      	ldr	r3, [pc, #48]	; (8000964 <uart_read+0x70>)
 8000934:	681a      	ldr	r2, [r3, #0]
 8000936:	4b0c      	ldr	r3, [pc, #48]	; (8000968 <uart_read+0x74>)
 8000938:	681b      	ldr	r3, [r3, #0]
 800093a:	429a      	cmp	r2, r3
 800093c:	d103      	bne.n	8000946 <uart_read+0x52>
 800093e:	68fb      	ldr	r3, [r7, #12]
 8000940:	3301      	adds	r3, #1
 8000942:	60fb      	str	r3, [r7, #12]
 8000944:	e006      	b.n	8000954 <uart_read+0x60>
 8000946:	68fb      	ldr	r3, [r7, #12]
 8000948:	3301      	adds	r3, #1
 800094a:	60fb      	str	r3, [r7, #12]
 800094c:	68fa      	ldr	r2, [r7, #12]
 800094e:	683b      	ldr	r3, [r7, #0]
 8000950:	429a      	cmp	r2, r3
 8000952:	dbdf      	blt.n	8000914 <uart_read+0x20>
 8000954:	68fb      	ldr	r3, [r7, #12]
 8000956:	4618      	mov	r0, r3
 8000958:	3714      	adds	r7, #20
 800095a:	46bd      	mov	sp, r7
 800095c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000960:	4770      	bx	lr
 8000962:	bf00      	nop
 8000964:	20000818 	.word	0x20000818
 8000968:	20000814 	.word	0x20000814
 800096c:	20000414 	.word	0x20000414

08000970 <USART2_IRQHandler>:
 8000970:	b480      	push	{r7}
 8000972:	af00      	add	r7, sp, #0
 8000974:	4b1e      	ldr	r3, [pc, #120]	; (80009f0 <USART2_IRQHandler+0x80>)
 8000976:	881b      	ldrh	r3, [r3, #0]
 8000978:	b29b      	uxth	r3, r3
 800097a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800097e:	2b00      	cmp	r3, #0
 8000980:	d01c      	beq.n	80009bc <USART2_IRQHandler+0x4c>
 8000982:	4b1c      	ldr	r3, [pc, #112]	; (80009f4 <USART2_IRQHandler+0x84>)
 8000984:	681a      	ldr	r2, [r3, #0]
 8000986:	4b1c      	ldr	r3, [pc, #112]	; (80009f8 <USART2_IRQHandler+0x88>)
 8000988:	681b      	ldr	r3, [r3, #0]
 800098a:	429a      	cmp	r2, r3
 800098c:	d108      	bne.n	80009a0 <USART2_IRQHandler+0x30>
 800098e:	4a18      	ldr	r2, [pc, #96]	; (80009f0 <USART2_IRQHandler+0x80>)
 8000990:	4b17      	ldr	r3, [pc, #92]	; (80009f0 <USART2_IRQHandler+0x80>)
 8000992:	899b      	ldrh	r3, [r3, #12]
 8000994:	b29b      	uxth	r3, r3
 8000996:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800099a:	b29b      	uxth	r3, r3
 800099c:	8193      	strh	r3, [r2, #12]
 800099e:	e00d      	b.n	80009bc <USART2_IRQHandler+0x4c>
 80009a0:	4a13      	ldr	r2, [pc, #76]	; (80009f0 <USART2_IRQHandler+0x80>)
 80009a2:	4b14      	ldr	r3, [pc, #80]	; (80009f4 <USART2_IRQHandler+0x84>)
 80009a4:	681b      	ldr	r3, [r3, #0]
 80009a6:	4915      	ldr	r1, [pc, #84]	; (80009fc <USART2_IRQHandler+0x8c>)
 80009a8:	5ccb      	ldrb	r3, [r1, r3]
 80009aa:	b29b      	uxth	r3, r3
 80009ac:	8093      	strh	r3, [r2, #4]
 80009ae:	4b11      	ldr	r3, [pc, #68]	; (80009f4 <USART2_IRQHandler+0x84>)
 80009b0:	681b      	ldr	r3, [r3, #0]
 80009b2:	3301      	adds	r3, #1
 80009b4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80009b8:	4a0e      	ldr	r2, [pc, #56]	; (80009f4 <USART2_IRQHandler+0x84>)
 80009ba:	6013      	str	r3, [r2, #0]
 80009bc:	4b0c      	ldr	r3, [pc, #48]	; (80009f0 <USART2_IRQHandler+0x80>)
 80009be:	881b      	ldrh	r3, [r3, #0]
 80009c0:	b29b      	uxth	r3, r3
 80009c2:	f003 0320 	and.w	r3, r3, #32
 80009c6:	2b00      	cmp	r3, #0
 80009c8:	d00e      	beq.n	80009e8 <USART2_IRQHandler+0x78>
 80009ca:	4b0d      	ldr	r3, [pc, #52]	; (8000a00 <USART2_IRQHandler+0x90>)
 80009cc:	681b      	ldr	r3, [r3, #0]
 80009ce:	4a08      	ldr	r2, [pc, #32]	; (80009f0 <USART2_IRQHandler+0x80>)
 80009d0:	8892      	ldrh	r2, [r2, #4]
 80009d2:	b292      	uxth	r2, r2
 80009d4:	b2d1      	uxtb	r1, r2
 80009d6:	4a0b      	ldr	r2, [pc, #44]	; (8000a04 <USART2_IRQHandler+0x94>)
 80009d8:	54d1      	strb	r1, [r2, r3]
 80009da:	4b09      	ldr	r3, [pc, #36]	; (8000a00 <USART2_IRQHandler+0x90>)
 80009dc:	681b      	ldr	r3, [r3, #0]
 80009de:	3301      	adds	r3, #1
 80009e0:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80009e4:	4a06      	ldr	r2, [pc, #24]	; (8000a00 <USART2_IRQHandler+0x90>)
 80009e6:	6013      	str	r3, [r2, #0]
 80009e8:	46bd      	mov	sp, r7
 80009ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80009ee:	4770      	bx	lr
 80009f0:	40004400 	.word	0x40004400
 80009f4:	2000040c 	.word	0x2000040c
 80009f8:	20000410 	.word	0x20000410
 80009fc:	2000000c 	.word	0x2000000c
 8000a00:	20000814 	.word	0x20000814
 8000a04:	20000414 	.word	0x20000414

08000a08 <xputc>:
 8000a08:	b580      	push	{r7, lr}
 8000a0a:	b082      	sub	sp, #8
 8000a0c:	af00      	add	r7, sp, #0
 8000a0e:	4603      	mov	r3, r0
 8000a10:	71fb      	strb	r3, [r7, #7]
 8000a12:	79fb      	ldrb	r3, [r7, #7]
 8000a14:	2b0a      	cmp	r3, #10
 8000a16:	d102      	bne.n	8000a1e <xputc+0x16>
 8000a18:	200d      	movs	r0, #13
 8000a1a:	f7ff fff5 	bl	8000a08 <xputc>
 8000a1e:	4b0c      	ldr	r3, [pc, #48]	; (8000a50 <xputc+0x48>)
 8000a20:	681b      	ldr	r3, [r3, #0]
 8000a22:	2b00      	cmp	r3, #0
 8000a24:	d007      	beq.n	8000a36 <xputc+0x2e>
 8000a26:	4b0a      	ldr	r3, [pc, #40]	; (8000a50 <xputc+0x48>)
 8000a28:	681b      	ldr	r3, [r3, #0]
 8000a2a:	1c5a      	adds	r2, r3, #1
 8000a2c:	4908      	ldr	r1, [pc, #32]	; (8000a50 <xputc+0x48>)
 8000a2e:	600a      	str	r2, [r1, #0]
 8000a30:	79fa      	ldrb	r2, [r7, #7]
 8000a32:	701a      	strb	r2, [r3, #0]
 8000a34:	e008      	b.n	8000a48 <xputc+0x40>
 8000a36:	4b07      	ldr	r3, [pc, #28]	; (8000a54 <xputc+0x4c>)
 8000a38:	681b      	ldr	r3, [r3, #0]
 8000a3a:	2b00      	cmp	r3, #0
 8000a3c:	d004      	beq.n	8000a48 <xputc+0x40>
 8000a3e:	4b05      	ldr	r3, [pc, #20]	; (8000a54 <xputc+0x4c>)
 8000a40:	681b      	ldr	r3, [r3, #0]
 8000a42:	79fa      	ldrb	r2, [r7, #7]
 8000a44:	4610      	mov	r0, r2
 8000a46:	4798      	blx	r3
 8000a48:	3708      	adds	r7, #8
 8000a4a:	46bd      	mov	sp, r7
 8000a4c:	bd80      	pop	{r7, pc}
 8000a4e:	bf00      	nop
 8000a50:	20000820 	.word	0x20000820
 8000a54:	2000081c 	.word	0x2000081c

08000a58 <xputs>:
 8000a58:	b580      	push	{r7, lr}
 8000a5a:	b082      	sub	sp, #8
 8000a5c:	af00      	add	r7, sp, #0
 8000a5e:	6078      	str	r0, [r7, #4]
 8000a60:	e006      	b.n	8000a70 <xputs+0x18>
 8000a62:	687b      	ldr	r3, [r7, #4]
 8000a64:	1c5a      	adds	r2, r3, #1
 8000a66:	607a      	str	r2, [r7, #4]
 8000a68:	781b      	ldrb	r3, [r3, #0]
 8000a6a:	4618      	mov	r0, r3
 8000a6c:	f7ff ffcc 	bl	8000a08 <xputc>
 8000a70:	687b      	ldr	r3, [r7, #4]
 8000a72:	781b      	ldrb	r3, [r3, #0]
 8000a74:	2b00      	cmp	r3, #0
 8000a76:	d1f4      	bne.n	8000a62 <xputs+0xa>
 8000a78:	3708      	adds	r7, #8
 8000a7a:	46bd      	mov	sp, r7
 8000a7c:	bd80      	pop	{r7, pc}
 8000a7e:	bf00      	nop

08000a80 <xfputs>:
 8000a80:	b580      	push	{r7, lr}
 8000a82:	b084      	sub	sp, #16
 8000a84:	af00      	add	r7, sp, #0
 8000a86:	6078      	str	r0, [r7, #4]
 8000a88:	6039      	str	r1, [r7, #0]
 8000a8a:	4b0c      	ldr	r3, [pc, #48]	; (8000abc <xfputs+0x3c>)
 8000a8c:	681b      	ldr	r3, [r3, #0]
 8000a8e:	60fb      	str	r3, [r7, #12]
 8000a90:	4a0a      	ldr	r2, [pc, #40]	; (8000abc <xfputs+0x3c>)
 8000a92:	687b      	ldr	r3, [r7, #4]
 8000a94:	6013      	str	r3, [r2, #0]
 8000a96:	e006      	b.n	8000aa6 <xfputs+0x26>
 8000a98:	683b      	ldr	r3, [r7, #0]
 8000a9a:	1c5a      	adds	r2, r3, #1
 8000a9c:	603a      	str	r2, [r7, #0]
 8000a9e:	781b      	ldrb	r3, [r3, #0]
 8000aa0:	4618      	mov	r0, r3
 8000aa2:	f7ff ffb1 	bl	8000a08 <xputc>
 8000aa6:	683b      	ldr	r3, [r7, #0]
 8000aa8:	781b      	ldrb	r3, [r3, #0]
 8000aaa:	2b00      	cmp	r3, #0
 8000aac:	d1f4      	bne.n	8000a98 <xfputs+0x18>
 8000aae:	4a03      	ldr	r2, [pc, #12]	; (8000abc <xfputs+0x3c>)
 8000ab0:	68fb      	ldr	r3, [r7, #12]
 8000ab2:	6013      	str	r3, [r2, #0]
 8000ab4:	3710      	adds	r7, #16
 8000ab6:	46bd      	mov	sp, r7
 8000ab8:	bd80      	pop	{r7, pc}
 8000aba:	bf00      	nop
 8000abc:	2000081c 	.word	0x2000081c

08000ac0 <xvprintf>:
 8000ac0:	b580      	push	{r7, lr}
 8000ac2:	b08e      	sub	sp, #56	; 0x38
 8000ac4:	af00      	add	r7, sp, #0
 8000ac6:	6078      	str	r0, [r7, #4]
 8000ac8:	6039      	str	r1, [r7, #0]
 8000aca:	687b      	ldr	r3, [r7, #4]
 8000acc:	1c5a      	adds	r2, r3, #1
 8000ace:	607a      	str	r2, [r7, #4]
 8000ad0:	781b      	ldrb	r3, [r3, #0]
 8000ad2:	77fb      	strb	r3, [r7, #31]
 8000ad4:	7ffb      	ldrb	r3, [r7, #31]
 8000ad6:	2b00      	cmp	r3, #0
 8000ad8:	d100      	bne.n	8000adc <xvprintf+0x1c>
 8000ada:	e166      	b.n	8000daa <xvprintf+0x2ea>
 8000adc:	7ffb      	ldrb	r3, [r7, #31]
 8000ade:	2b25      	cmp	r3, #37	; 0x25
 8000ae0:	d004      	beq.n	8000aec <xvprintf+0x2c>
 8000ae2:	7ffb      	ldrb	r3, [r7, #31]
 8000ae4:	4618      	mov	r0, r3
 8000ae6:	f7ff ff8f 	bl	8000a08 <xputc>
 8000aea:	e15d      	b.n	8000da8 <xvprintf+0x2e8>
 8000aec:	2300      	movs	r3, #0
 8000aee:	627b      	str	r3, [r7, #36]	; 0x24
 8000af0:	687b      	ldr	r3, [r7, #4]
 8000af2:	1c5a      	adds	r2, r3, #1
 8000af4:	607a      	str	r2, [r7, #4]
 8000af6:	781b      	ldrb	r3, [r3, #0]
 8000af8:	77fb      	strb	r3, [r7, #31]
 8000afa:	7ffb      	ldrb	r3, [r7, #31]
 8000afc:	2b30      	cmp	r3, #48	; 0x30
 8000afe:	d107      	bne.n	8000b10 <xvprintf+0x50>
 8000b00:	2301      	movs	r3, #1
 8000b02:	627b      	str	r3, [r7, #36]	; 0x24
 8000b04:	687b      	ldr	r3, [r7, #4]
 8000b06:	1c5a      	adds	r2, r3, #1
 8000b08:	607a      	str	r2, [r7, #4]
 8000b0a:	781b      	ldrb	r3, [r3, #0]
 8000b0c:	77fb      	strb	r3, [r7, #31]
 8000b0e:	e009      	b.n	8000b24 <xvprintf+0x64>
 8000b10:	7ffb      	ldrb	r3, [r7, #31]
 8000b12:	2b2d      	cmp	r3, #45	; 0x2d
 8000b14:	d106      	bne.n	8000b24 <xvprintf+0x64>
 8000b16:	2302      	movs	r3, #2
 8000b18:	627b      	str	r3, [r7, #36]	; 0x24
 8000b1a:	687b      	ldr	r3, [r7, #4]
 8000b1c:	1c5a      	adds	r2, r3, #1
 8000b1e:	607a      	str	r2, [r7, #4]
 8000b20:	781b      	ldrb	r3, [r3, #0]
 8000b22:	77fb      	strb	r3, [r7, #31]
 8000b24:	2300      	movs	r3, #0
 8000b26:	62bb      	str	r3, [r7, #40]	; 0x28
 8000b28:	e00e      	b.n	8000b48 <xvprintf+0x88>
 8000b2a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000b2c:	4613      	mov	r3, r2
 8000b2e:	009b      	lsls	r3, r3, #2
 8000b30:	4413      	add	r3, r2
 8000b32:	005b      	lsls	r3, r3, #1
 8000b34:	461a      	mov	r2, r3
 8000b36:	7ffb      	ldrb	r3, [r7, #31]
 8000b38:	4413      	add	r3, r2
 8000b3a:	3b30      	subs	r3, #48	; 0x30
 8000b3c:	62bb      	str	r3, [r7, #40]	; 0x28
 8000b3e:	687b      	ldr	r3, [r7, #4]
 8000b40:	1c5a      	adds	r2, r3, #1
 8000b42:	607a      	str	r2, [r7, #4]
 8000b44:	781b      	ldrb	r3, [r3, #0]
 8000b46:	77fb      	strb	r3, [r7, #31]
 8000b48:	7ffb      	ldrb	r3, [r7, #31]
 8000b4a:	2b2f      	cmp	r3, #47	; 0x2f
 8000b4c:	d902      	bls.n	8000b54 <xvprintf+0x94>
 8000b4e:	7ffb      	ldrb	r3, [r7, #31]
 8000b50:	2b39      	cmp	r3, #57	; 0x39
 8000b52:	d9ea      	bls.n	8000b2a <xvprintf+0x6a>
 8000b54:	7ffb      	ldrb	r3, [r7, #31]
 8000b56:	2b6c      	cmp	r3, #108	; 0x6c
 8000b58:	d002      	beq.n	8000b60 <xvprintf+0xa0>
 8000b5a:	7ffb      	ldrb	r3, [r7, #31]
 8000b5c:	2b4c      	cmp	r3, #76	; 0x4c
 8000b5e:	d108      	bne.n	8000b72 <xvprintf+0xb2>
 8000b60:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000b62:	f043 0304 	orr.w	r3, r3, #4
 8000b66:	627b      	str	r3, [r7, #36]	; 0x24
 8000b68:	687b      	ldr	r3, [r7, #4]
 8000b6a:	1c5a      	adds	r2, r3, #1
 8000b6c:	607a      	str	r2, [r7, #4]
 8000b6e:	781b      	ldrb	r3, [r3, #0]
 8000b70:	77fb      	strb	r3, [r7, #31]
 8000b72:	7ffb      	ldrb	r3, [r7, #31]
 8000b74:	2b00      	cmp	r3, #0
 8000b76:	d100      	bne.n	8000b7a <xvprintf+0xba>
 8000b78:	e117      	b.n	8000daa <xvprintf+0x2ea>
 8000b7a:	7ffb      	ldrb	r3, [r7, #31]
 8000b7c:	77bb      	strb	r3, [r7, #30]
 8000b7e:	7fbb      	ldrb	r3, [r7, #30]
 8000b80:	2b60      	cmp	r3, #96	; 0x60
 8000b82:	d902      	bls.n	8000b8a <xvprintf+0xca>
 8000b84:	7fbb      	ldrb	r3, [r7, #30]
 8000b86:	3b20      	subs	r3, #32
 8000b88:	77bb      	strb	r3, [r7, #30]
 8000b8a:	7fbb      	ldrb	r3, [r7, #30]
 8000b8c:	3b42      	subs	r3, #66	; 0x42
 8000b8e:	2b16      	cmp	r3, #22
 8000b90:	d873      	bhi.n	8000c7a <xvprintf+0x1ba>
 8000b92:	a201      	add	r2, pc, #4	; (adr r2, 8000b98 <xvprintf+0xd8>)
 8000b94:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000b98:	08000c63 	.word	0x08000c63
 8000b9c:	08000c51 	.word	0x08000c51
 8000ba0:	08000c6f 	.word	0x08000c6f
 8000ba4:	08000c7b 	.word	0x08000c7b
 8000ba8:	08000c7b 	.word	0x08000c7b
 8000bac:	08000c7b 	.word	0x08000c7b
 8000bb0:	08000c7b 	.word	0x08000c7b
 8000bb4:	08000c7b 	.word	0x08000c7b
 8000bb8:	08000c7b 	.word	0x08000c7b
 8000bbc:	08000c7b 	.word	0x08000c7b
 8000bc0:	08000c7b 	.word	0x08000c7b
 8000bc4:	08000c7b 	.word	0x08000c7b
 8000bc8:	08000c7b 	.word	0x08000c7b
 8000bcc:	08000c69 	.word	0x08000c69
 8000bd0:	08000c7b 	.word	0x08000c7b
 8000bd4:	08000c7b 	.word	0x08000c7b
 8000bd8:	08000c7b 	.word	0x08000c7b
 8000bdc:	08000bf5 	.word	0x08000bf5
 8000be0:	08000c7b 	.word	0x08000c7b
 8000be4:	08000c6f 	.word	0x08000c6f
 8000be8:	08000c7b 	.word	0x08000c7b
 8000bec:	08000c7b 	.word	0x08000c7b
 8000bf0:	08000c75 	.word	0x08000c75
 8000bf4:	683b      	ldr	r3, [r7, #0]
 8000bf6:	1d1a      	adds	r2, r3, #4
 8000bf8:	603a      	str	r2, [r7, #0]
 8000bfa:	681b      	ldr	r3, [r3, #0]
 8000bfc:	61bb      	str	r3, [r7, #24]
 8000bfe:	2300      	movs	r3, #0
 8000c00:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000c02:	e002      	b.n	8000c0a <xvprintf+0x14a>
 8000c04:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000c06:	3301      	adds	r3, #1
 8000c08:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000c0a:	69ba      	ldr	r2, [r7, #24]
 8000c0c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000c0e:	4413      	add	r3, r2
 8000c10:	781b      	ldrb	r3, [r3, #0]
 8000c12:	2b00      	cmp	r3, #0
 8000c14:	d1f6      	bne.n	8000c04 <xvprintf+0x144>
 8000c16:	e002      	b.n	8000c1e <xvprintf+0x15e>
 8000c18:	2020      	movs	r0, #32
 8000c1a:	f7ff fef5 	bl	8000a08 <xputc>
 8000c1e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000c20:	f003 0302 	and.w	r3, r3, #2
 8000c24:	2b00      	cmp	r3, #0
 8000c26:	d105      	bne.n	8000c34 <xvprintf+0x174>
 8000c28:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000c2a:	1c5a      	adds	r2, r3, #1
 8000c2c:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000c2e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000c30:	4293      	cmp	r3, r2
 8000c32:	d3f1      	bcc.n	8000c18 <xvprintf+0x158>
 8000c34:	69b8      	ldr	r0, [r7, #24]
 8000c36:	f7ff ff0f 	bl	8000a58 <xputs>
 8000c3a:	e002      	b.n	8000c42 <xvprintf+0x182>
 8000c3c:	2020      	movs	r0, #32
 8000c3e:	f7ff fee3 	bl	8000a08 <xputc>
 8000c42:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000c44:	1c5a      	adds	r2, r3, #1
 8000c46:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000c48:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000c4a:	4293      	cmp	r3, r2
 8000c4c:	d3f6      	bcc.n	8000c3c <xvprintf+0x17c>
 8000c4e:	e0ab      	b.n	8000da8 <xvprintf+0x2e8>
 8000c50:	683b      	ldr	r3, [r7, #0]
 8000c52:	1d1a      	adds	r2, r3, #4
 8000c54:	603a      	str	r2, [r7, #0]
 8000c56:	681b      	ldr	r3, [r3, #0]
 8000c58:	b2db      	uxtb	r3, r3
 8000c5a:	4618      	mov	r0, r3
 8000c5c:	f7ff fed4 	bl	8000a08 <xputc>
 8000c60:	e0a2      	b.n	8000da8 <xvprintf+0x2e8>
 8000c62:	2302      	movs	r3, #2
 8000c64:	637b      	str	r3, [r7, #52]	; 0x34
 8000c66:	e00d      	b.n	8000c84 <xvprintf+0x1c4>
 8000c68:	2308      	movs	r3, #8
 8000c6a:	637b      	str	r3, [r7, #52]	; 0x34
 8000c6c:	e00a      	b.n	8000c84 <xvprintf+0x1c4>
 8000c6e:	230a      	movs	r3, #10
 8000c70:	637b      	str	r3, [r7, #52]	; 0x34
 8000c72:	e007      	b.n	8000c84 <xvprintf+0x1c4>
 8000c74:	2310      	movs	r3, #16
 8000c76:	637b      	str	r3, [r7, #52]	; 0x34
 8000c78:	e004      	b.n	8000c84 <xvprintf+0x1c4>
 8000c7a:	7ffb      	ldrb	r3, [r7, #31]
 8000c7c:	4618      	mov	r0, r3
 8000c7e:	f7ff fec3 	bl	8000a08 <xputc>
 8000c82:	e091      	b.n	8000da8 <xvprintf+0x2e8>
 8000c84:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000c86:	f003 0304 	and.w	r3, r3, #4
 8000c8a:	2b00      	cmp	r3, #0
 8000c8c:	d004      	beq.n	8000c98 <xvprintf+0x1d8>
 8000c8e:	683b      	ldr	r3, [r7, #0]
 8000c90:	1d1a      	adds	r2, r3, #4
 8000c92:	603a      	str	r2, [r7, #0]
 8000c94:	681b      	ldr	r3, [r3, #0]
 8000c96:	e00b      	b.n	8000cb0 <xvprintf+0x1f0>
 8000c98:	7fbb      	ldrb	r3, [r7, #30]
 8000c9a:	2b44      	cmp	r3, #68	; 0x44
 8000c9c:	d104      	bne.n	8000ca8 <xvprintf+0x1e8>
 8000c9e:	683b      	ldr	r3, [r7, #0]
 8000ca0:	1d1a      	adds	r2, r3, #4
 8000ca2:	603a      	str	r2, [r7, #0]
 8000ca4:	681b      	ldr	r3, [r3, #0]
 8000ca6:	e003      	b.n	8000cb0 <xvprintf+0x1f0>
 8000ca8:	683b      	ldr	r3, [r7, #0]
 8000caa:	1d1a      	adds	r2, r3, #4
 8000cac:	603a      	str	r2, [r7, #0]
 8000cae:	681b      	ldr	r3, [r3, #0]
 8000cb0:	623b      	str	r3, [r7, #32]
 8000cb2:	7fbb      	ldrb	r3, [r7, #30]
 8000cb4:	2b44      	cmp	r3, #68	; 0x44
 8000cb6:	d109      	bne.n	8000ccc <xvprintf+0x20c>
 8000cb8:	6a3b      	ldr	r3, [r7, #32]
 8000cba:	2b00      	cmp	r3, #0
 8000cbc:	da06      	bge.n	8000ccc <xvprintf+0x20c>
 8000cbe:	6a3b      	ldr	r3, [r7, #32]
 8000cc0:	425b      	negs	r3, r3
 8000cc2:	623b      	str	r3, [r7, #32]
 8000cc4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000cc6:	f043 0308 	orr.w	r3, r3, #8
 8000cca:	627b      	str	r3, [r7, #36]	; 0x24
 8000ccc:	2300      	movs	r3, #0
 8000cce:	633b      	str	r3, [r7, #48]	; 0x30
 8000cd0:	6a3b      	ldr	r3, [r7, #32]
 8000cd2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8000cd4:	fbb3 f2f2 	udiv	r2, r3, r2
 8000cd8:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8000cda:	fb01 f202 	mul.w	r2, r1, r2
 8000cde:	1a9b      	subs	r3, r3, r2
 8000ce0:	77bb      	strb	r3, [r7, #30]
 8000ce2:	6a3a      	ldr	r2, [r7, #32]
 8000ce4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000ce6:	fbb2 f3f3 	udiv	r3, r2, r3
 8000cea:	623b      	str	r3, [r7, #32]
 8000cec:	7fbb      	ldrb	r3, [r7, #30]
 8000cee:	2b09      	cmp	r3, #9
 8000cf0:	d908      	bls.n	8000d04 <xvprintf+0x244>
 8000cf2:	7ffb      	ldrb	r3, [r7, #31]
 8000cf4:	2b78      	cmp	r3, #120	; 0x78
 8000cf6:	d101      	bne.n	8000cfc <xvprintf+0x23c>
 8000cf8:	2227      	movs	r2, #39	; 0x27
 8000cfa:	e000      	b.n	8000cfe <xvprintf+0x23e>
 8000cfc:	2207      	movs	r2, #7
 8000cfe:	7fbb      	ldrb	r3, [r7, #30]
 8000d00:	4413      	add	r3, r2
 8000d02:	77bb      	strb	r3, [r7, #30]
 8000d04:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d06:	1c5a      	adds	r2, r3, #1
 8000d08:	633a      	str	r2, [r7, #48]	; 0x30
 8000d0a:	7fba      	ldrb	r2, [r7, #30]
 8000d0c:	3230      	adds	r2, #48	; 0x30
 8000d0e:	b2d2      	uxtb	r2, r2
 8000d10:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8000d14:	440b      	add	r3, r1
 8000d16:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000d1a:	6a3b      	ldr	r3, [r7, #32]
 8000d1c:	2b00      	cmp	r3, #0
 8000d1e:	d002      	beq.n	8000d26 <xvprintf+0x266>
 8000d20:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d22:	2b0f      	cmp	r3, #15
 8000d24:	d9d4      	bls.n	8000cd0 <xvprintf+0x210>
 8000d26:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000d28:	f003 0308 	and.w	r3, r3, #8
 8000d2c:	2b00      	cmp	r3, #0
 8000d2e:	d008      	beq.n	8000d42 <xvprintf+0x282>
 8000d30:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d32:	1c5a      	adds	r2, r3, #1
 8000d34:	633a      	str	r2, [r7, #48]	; 0x30
 8000d36:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000d3a:	4413      	add	r3, r2
 8000d3c:	222d      	movs	r2, #45	; 0x2d
 8000d3e:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000d42:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d44:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000d46:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000d48:	f003 0301 	and.w	r3, r3, #1
 8000d4c:	2b00      	cmp	r3, #0
 8000d4e:	d001      	beq.n	8000d54 <xvprintf+0x294>
 8000d50:	2330      	movs	r3, #48	; 0x30
 8000d52:	e000      	b.n	8000d56 <xvprintf+0x296>
 8000d54:	2320      	movs	r3, #32
 8000d56:	77bb      	strb	r3, [r7, #30]
 8000d58:	e003      	b.n	8000d62 <xvprintf+0x2a2>
 8000d5a:	7fbb      	ldrb	r3, [r7, #30]
 8000d5c:	4618      	mov	r0, r3
 8000d5e:	f7ff fe53 	bl	8000a08 <xputc>
 8000d62:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000d64:	f003 0302 	and.w	r3, r3, #2
 8000d68:	2b00      	cmp	r3, #0
 8000d6a:	d105      	bne.n	8000d78 <xvprintf+0x2b8>
 8000d6c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000d6e:	1c5a      	adds	r2, r3, #1
 8000d70:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000d72:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000d74:	4293      	cmp	r3, r2
 8000d76:	d3f0      	bcc.n	8000d5a <xvprintf+0x29a>
 8000d78:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d7a:	3b01      	subs	r3, #1
 8000d7c:	633b      	str	r3, [r7, #48]	; 0x30
 8000d7e:	f107 0208 	add.w	r2, r7, #8
 8000d82:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d84:	4413      	add	r3, r2
 8000d86:	781b      	ldrb	r3, [r3, #0]
 8000d88:	4618      	mov	r0, r3
 8000d8a:	f7ff fe3d 	bl	8000a08 <xputc>
 8000d8e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000d90:	2b00      	cmp	r3, #0
 8000d92:	d1f1      	bne.n	8000d78 <xvprintf+0x2b8>
 8000d94:	e002      	b.n	8000d9c <xvprintf+0x2dc>
 8000d96:	2020      	movs	r0, #32
 8000d98:	f7ff fe36 	bl	8000a08 <xputc>
 8000d9c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000d9e:	1c5a      	adds	r2, r3, #1
 8000da0:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000da2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000da4:	4293      	cmp	r3, r2
 8000da6:	d3f6      	bcc.n	8000d96 <xvprintf+0x2d6>
 8000da8:	e68f      	b.n	8000aca <xvprintf+0xa>
 8000daa:	3738      	adds	r7, #56	; 0x38
 8000dac:	46bd      	mov	sp, r7
 8000dae:	bd80      	pop	{r7, pc}

08000db0 <xprintf>:
 8000db0:	b40f      	push	{r0, r1, r2, r3}
 8000db2:	b580      	push	{r7, lr}
 8000db4:	b082      	sub	sp, #8
 8000db6:	af00      	add	r7, sp, #0
 8000db8:	f107 0314 	add.w	r3, r7, #20
 8000dbc:	607b      	str	r3, [r7, #4]
 8000dbe:	6938      	ldr	r0, [r7, #16]
 8000dc0:	6879      	ldr	r1, [r7, #4]
 8000dc2:	f7ff fe7d 	bl	8000ac0 <xvprintf>
 8000dc6:	3708      	adds	r7, #8
 8000dc8:	46bd      	mov	sp, r7
 8000dca:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000dce:	b004      	add	sp, #16
 8000dd0:	4770      	bx	lr
 8000dd2:	bf00      	nop

08000dd4 <xsprintf>:
 8000dd4:	b40e      	push	{r1, r2, r3}
 8000dd6:	b580      	push	{r7, lr}
 8000dd8:	b085      	sub	sp, #20
 8000dda:	af00      	add	r7, sp, #0
 8000ddc:	6078      	str	r0, [r7, #4]
 8000dde:	4a0b      	ldr	r2, [pc, #44]	; (8000e0c <xsprintf+0x38>)
 8000de0:	687b      	ldr	r3, [r7, #4]
 8000de2:	6013      	str	r3, [r2, #0]
 8000de4:	f107 0320 	add.w	r3, r7, #32
 8000de8:	60fb      	str	r3, [r7, #12]
 8000dea:	69f8      	ldr	r0, [r7, #28]
 8000dec:	68f9      	ldr	r1, [r7, #12]
 8000dee:	f7ff fe67 	bl	8000ac0 <xvprintf>
 8000df2:	4b06      	ldr	r3, [pc, #24]	; (8000e0c <xsprintf+0x38>)
 8000df4:	681b      	ldr	r3, [r3, #0]
 8000df6:	2200      	movs	r2, #0
 8000df8:	701a      	strb	r2, [r3, #0]
 8000dfa:	4b04      	ldr	r3, [pc, #16]	; (8000e0c <xsprintf+0x38>)
 8000dfc:	2200      	movs	r2, #0
 8000dfe:	601a      	str	r2, [r3, #0]
 8000e00:	3714      	adds	r7, #20
 8000e02:	46bd      	mov	sp, r7
 8000e04:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000e08:	b003      	add	sp, #12
 8000e0a:	4770      	bx	lr
 8000e0c:	20000820 	.word	0x20000820

08000e10 <xfprintf>:
 8000e10:	b40e      	push	{r1, r2, r3}
 8000e12:	b580      	push	{r7, lr}
 8000e14:	b085      	sub	sp, #20
 8000e16:	af00      	add	r7, sp, #0
 8000e18:	6078      	str	r0, [r7, #4]
 8000e1a:	4b0b      	ldr	r3, [pc, #44]	; (8000e48 <xfprintf+0x38>)
 8000e1c:	681b      	ldr	r3, [r3, #0]
 8000e1e:	60fb      	str	r3, [r7, #12]
 8000e20:	4a09      	ldr	r2, [pc, #36]	; (8000e48 <xfprintf+0x38>)
 8000e22:	687b      	ldr	r3, [r7, #4]
 8000e24:	6013      	str	r3, [r2, #0]
 8000e26:	f107 0320 	add.w	r3, r7, #32
 8000e2a:	60bb      	str	r3, [r7, #8]
 8000e2c:	69f8      	ldr	r0, [r7, #28]
 8000e2e:	68b9      	ldr	r1, [r7, #8]
 8000e30:	f7ff fe46 	bl	8000ac0 <xvprintf>
 8000e34:	4a04      	ldr	r2, [pc, #16]	; (8000e48 <xfprintf+0x38>)
 8000e36:	68fb      	ldr	r3, [r7, #12]
 8000e38:	6013      	str	r3, [r2, #0]
 8000e3a:	3714      	adds	r7, #20
 8000e3c:	46bd      	mov	sp, r7
 8000e3e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000e42:	b003      	add	sp, #12
 8000e44:	4770      	bx	lr
 8000e46:	bf00      	nop
 8000e48:	2000081c 	.word	0x2000081c

08000e4c <put_dump>:
 8000e4c:	b580      	push	{r7, lr}
 8000e4e:	b088      	sub	sp, #32
 8000e50:	af00      	add	r7, sp, #0
 8000e52:	60f8      	str	r0, [r7, #12]
 8000e54:	60b9      	str	r1, [r7, #8]
 8000e56:	607a      	str	r2, [r7, #4]
 8000e58:	603b      	str	r3, [r7, #0]
 8000e5a:	4835      	ldr	r0, [pc, #212]	; (8000f30 <put_dump+0xe4>)
 8000e5c:	68b9      	ldr	r1, [r7, #8]
 8000e5e:	f7ff ffa7 	bl	8000db0 <xprintf>
 8000e62:	683b      	ldr	r3, [r7, #0]
 8000e64:	2b02      	cmp	r3, #2
 8000e66:	d03a      	beq.n	8000ede <put_dump+0x92>
 8000e68:	2b04      	cmp	r3, #4
 8000e6a:	d049      	beq.n	8000f00 <put_dump+0xb4>
 8000e6c:	2b01      	cmp	r3, #1
 8000e6e:	d158      	bne.n	8000f22 <put_dump+0xd6>
 8000e70:	68fb      	ldr	r3, [r7, #12]
 8000e72:	613b      	str	r3, [r7, #16]
 8000e74:	2300      	movs	r3, #0
 8000e76:	61fb      	str	r3, [r7, #28]
 8000e78:	e00a      	b.n	8000e90 <put_dump+0x44>
 8000e7a:	69fb      	ldr	r3, [r7, #28]
 8000e7c:	693a      	ldr	r2, [r7, #16]
 8000e7e:	4413      	add	r3, r2
 8000e80:	781b      	ldrb	r3, [r3, #0]
 8000e82:	482c      	ldr	r0, [pc, #176]	; (8000f34 <put_dump+0xe8>)
 8000e84:	4619      	mov	r1, r3
 8000e86:	f7ff ff93 	bl	8000db0 <xprintf>
 8000e8a:	69fb      	ldr	r3, [r7, #28]
 8000e8c:	3301      	adds	r3, #1
 8000e8e:	61fb      	str	r3, [r7, #28]
 8000e90:	69fa      	ldr	r2, [r7, #28]
 8000e92:	687b      	ldr	r3, [r7, #4]
 8000e94:	429a      	cmp	r2, r3
 8000e96:	dbf0      	blt.n	8000e7a <put_dump+0x2e>
 8000e98:	2020      	movs	r0, #32
 8000e9a:	f7ff fdb5 	bl	8000a08 <xputc>
 8000e9e:	2300      	movs	r3, #0
 8000ea0:	61fb      	str	r3, [r7, #28]
 8000ea2:	e017      	b.n	8000ed4 <put_dump+0x88>
 8000ea4:	69fb      	ldr	r3, [r7, #28]
 8000ea6:	693a      	ldr	r2, [r7, #16]
 8000ea8:	4413      	add	r3, r2
 8000eaa:	781b      	ldrb	r3, [r3, #0]
 8000eac:	2b1f      	cmp	r3, #31
 8000eae:	d90a      	bls.n	8000ec6 <put_dump+0x7a>
 8000eb0:	69fb      	ldr	r3, [r7, #28]
 8000eb2:	693a      	ldr	r2, [r7, #16]
 8000eb4:	4413      	add	r3, r2
 8000eb6:	781b      	ldrb	r3, [r3, #0]
 8000eb8:	2b7e      	cmp	r3, #126	; 0x7e
 8000eba:	d804      	bhi.n	8000ec6 <put_dump+0x7a>
 8000ebc:	69fb      	ldr	r3, [r7, #28]
 8000ebe:	693a      	ldr	r2, [r7, #16]
 8000ec0:	4413      	add	r3, r2
 8000ec2:	781b      	ldrb	r3, [r3, #0]
 8000ec4:	e000      	b.n	8000ec8 <put_dump+0x7c>
 8000ec6:	232e      	movs	r3, #46	; 0x2e
 8000ec8:	4618      	mov	r0, r3
 8000eca:	f7ff fd9d 	bl	8000a08 <xputc>
 8000ece:	69fb      	ldr	r3, [r7, #28]
 8000ed0:	3301      	adds	r3, #1
 8000ed2:	61fb      	str	r3, [r7, #28]
 8000ed4:	69fa      	ldr	r2, [r7, #28]
 8000ed6:	687b      	ldr	r3, [r7, #4]
 8000ed8:	429a      	cmp	r2, r3
 8000eda:	dbe3      	blt.n	8000ea4 <put_dump+0x58>
 8000edc:	e021      	b.n	8000f22 <put_dump+0xd6>
 8000ede:	68fb      	ldr	r3, [r7, #12]
 8000ee0:	61bb      	str	r3, [r7, #24]
 8000ee2:	69bb      	ldr	r3, [r7, #24]
 8000ee4:	1c9a      	adds	r2, r3, #2
 8000ee6:	61ba      	str	r2, [r7, #24]
 8000ee8:	881b      	ldrh	r3, [r3, #0]
 8000eea:	4813      	ldr	r0, [pc, #76]	; (8000f38 <put_dump+0xec>)
 8000eec:	4619      	mov	r1, r3
 8000eee:	f7ff ff5f 	bl	8000db0 <xprintf>
 8000ef2:	687b      	ldr	r3, [r7, #4]
 8000ef4:	3b01      	subs	r3, #1
 8000ef6:	607b      	str	r3, [r7, #4]
 8000ef8:	687b      	ldr	r3, [r7, #4]
 8000efa:	2b00      	cmp	r3, #0
 8000efc:	d1f1      	bne.n	8000ee2 <put_dump+0x96>
 8000efe:	e010      	b.n	8000f22 <put_dump+0xd6>
 8000f00:	68fb      	ldr	r3, [r7, #12]
 8000f02:	617b      	str	r3, [r7, #20]
 8000f04:	697b      	ldr	r3, [r7, #20]
 8000f06:	1d1a      	adds	r2, r3, #4
 8000f08:	617a      	str	r2, [r7, #20]
 8000f0a:	681b      	ldr	r3, [r3, #0]
 8000f0c:	480b      	ldr	r0, [pc, #44]	; (8000f3c <put_dump+0xf0>)
 8000f0e:	4619      	mov	r1, r3
 8000f10:	f7ff ff4e 	bl	8000db0 <xprintf>
 8000f14:	687b      	ldr	r3, [r7, #4]
 8000f16:	3b01      	subs	r3, #1
 8000f18:	607b      	str	r3, [r7, #4]
 8000f1a:	687b      	ldr	r3, [r7, #4]
 8000f1c:	2b00      	cmp	r3, #0
 8000f1e:	d1f1      	bne.n	8000f04 <put_dump+0xb8>
 8000f20:	bf00      	nop
 8000f22:	200a      	movs	r0, #10
 8000f24:	f7ff fd70 	bl	8000a08 <xputc>
 8000f28:	3720      	adds	r7, #32
 8000f2a:	46bd      	mov	sp, r7
 8000f2c:	bd80      	pop	{r7, pc}
 8000f2e:	bf00      	nop
 8000f30:	08001190 	.word	0x08001190
 8000f34:	08001198 	.word	0x08001198
 8000f38:	080011a0 	.word	0x080011a0
 8000f3c:	080011a8 	.word	0x080011a8

08000f40 <xgets>:
 8000f40:	b580      	push	{r7, lr}
 8000f42:	b084      	sub	sp, #16
 8000f44:	af00      	add	r7, sp, #0
 8000f46:	6078      	str	r0, [r7, #4]
 8000f48:	6039      	str	r1, [r7, #0]
 8000f4a:	4b25      	ldr	r3, [pc, #148]	; (8000fe0 <xgets+0xa0>)
 8000f4c:	681b      	ldr	r3, [r3, #0]
 8000f4e:	2b00      	cmp	r3, #0
 8000f50:	d101      	bne.n	8000f56 <xgets+0x16>
 8000f52:	2300      	movs	r3, #0
 8000f54:	e03f      	b.n	8000fd6 <xgets+0x96>
 8000f56:	2300      	movs	r3, #0
 8000f58:	60fb      	str	r3, [r7, #12]
 8000f5a:	4b21      	ldr	r3, [pc, #132]	; (8000fe0 <xgets+0xa0>)
 8000f5c:	681b      	ldr	r3, [r3, #0]
 8000f5e:	4798      	blx	r3
 8000f60:	4603      	mov	r3, r0
 8000f62:	60bb      	str	r3, [r7, #8]
 8000f64:	68bb      	ldr	r3, [r7, #8]
 8000f66:	2b00      	cmp	r3, #0
 8000f68:	d101      	bne.n	8000f6e <xgets+0x2e>
 8000f6a:	2300      	movs	r3, #0
 8000f6c:	e033      	b.n	8000fd6 <xgets+0x96>
 8000f6e:	68bb      	ldr	r3, [r7, #8]
 8000f70:	2b0d      	cmp	r3, #13
 8000f72:	d10a      	bne.n	8000f8a <xgets+0x4a>
 8000f74:	bf00      	nop
 8000f76:	68fb      	ldr	r3, [r7, #12]
 8000f78:	687a      	ldr	r2, [r7, #4]
 8000f7a:	4413      	add	r3, r2
 8000f7c:	2200      	movs	r2, #0
 8000f7e:	701a      	strb	r2, [r3, #0]
 8000f80:	200a      	movs	r0, #10
 8000f82:	f7ff fd41 	bl	8000a08 <xputc>
 8000f86:	2301      	movs	r3, #1
 8000f88:	e025      	b.n	8000fd6 <xgets+0x96>
 8000f8a:	68bb      	ldr	r3, [r7, #8]
 8000f8c:	2b08      	cmp	r3, #8
 8000f8e:	d10b      	bne.n	8000fa8 <xgets+0x68>
 8000f90:	68fb      	ldr	r3, [r7, #12]
 8000f92:	2b00      	cmp	r3, #0
 8000f94:	d008      	beq.n	8000fa8 <xgets+0x68>
 8000f96:	68fb      	ldr	r3, [r7, #12]
 8000f98:	3b01      	subs	r3, #1
 8000f9a:	60fb      	str	r3, [r7, #12]
 8000f9c:	68bb      	ldr	r3, [r7, #8]
 8000f9e:	b2db      	uxtb	r3, r3
 8000fa0:	4618      	mov	r0, r3
 8000fa2:	f7ff fd31 	bl	8000a08 <xputc>
 8000fa6:	e015      	b.n	8000fd4 <xgets+0x94>
 8000fa8:	68bb      	ldr	r3, [r7, #8]
 8000faa:	2b1f      	cmp	r3, #31
 8000fac:	dd12      	ble.n	8000fd4 <xgets+0x94>
 8000fae:	683b      	ldr	r3, [r7, #0]
 8000fb0:	1e5a      	subs	r2, r3, #1
 8000fb2:	68fb      	ldr	r3, [r7, #12]
 8000fb4:	429a      	cmp	r2, r3
 8000fb6:	dd0d      	ble.n	8000fd4 <xgets+0x94>
 8000fb8:	68fb      	ldr	r3, [r7, #12]
 8000fba:	1c5a      	adds	r2, r3, #1
 8000fbc:	60fa      	str	r2, [r7, #12]
 8000fbe:	461a      	mov	r2, r3
 8000fc0:	687b      	ldr	r3, [r7, #4]
 8000fc2:	4413      	add	r3, r2
 8000fc4:	68ba      	ldr	r2, [r7, #8]
 8000fc6:	b2d2      	uxtb	r2, r2
 8000fc8:	701a      	strb	r2, [r3, #0]
 8000fca:	68bb      	ldr	r3, [r7, #8]
 8000fcc:	b2db      	uxtb	r3, r3
 8000fce:	4618      	mov	r0, r3
 8000fd0:	f7ff fd1a 	bl	8000a08 <xputc>
 8000fd4:	e7c1      	b.n	8000f5a <xgets+0x1a>
 8000fd6:	4618      	mov	r0, r3
 8000fd8:	3710      	adds	r7, #16
 8000fda:	46bd      	mov	sp, r7
 8000fdc:	bd80      	pop	{r7, pc}
 8000fde:	bf00      	nop
 8000fe0:	20000824 	.word	0x20000824

08000fe4 <xfgets>:
 8000fe4:	b580      	push	{r7, lr}
 8000fe6:	b086      	sub	sp, #24
 8000fe8:	af00      	add	r7, sp, #0
 8000fea:	60f8      	str	r0, [r7, #12]
 8000fec:	60b9      	str	r1, [r7, #8]
 8000fee:	607a      	str	r2, [r7, #4]
 8000ff0:	4b09      	ldr	r3, [pc, #36]	; (8001018 <xfgets+0x34>)
 8000ff2:	681b      	ldr	r3, [r3, #0]
 8000ff4:	617b      	str	r3, [r7, #20]
 8000ff6:	4a08      	ldr	r2, [pc, #32]	; (8001018 <xfgets+0x34>)
 8000ff8:	68fb      	ldr	r3, [r7, #12]
 8000ffa:	6013      	str	r3, [r2, #0]
 8000ffc:	68b8      	ldr	r0, [r7, #8]
 8000ffe:	6879      	ldr	r1, [r7, #4]
 8001000:	f7ff ff9e 	bl	8000f40 <xgets>
 8001004:	6138      	str	r0, [r7, #16]
 8001006:	4a04      	ldr	r2, [pc, #16]	; (8001018 <xfgets+0x34>)
 8001008:	697b      	ldr	r3, [r7, #20]
 800100a:	6013      	str	r3, [r2, #0]
 800100c:	693b      	ldr	r3, [r7, #16]
 800100e:	4618      	mov	r0, r3
 8001010:	3718      	adds	r7, #24
 8001012:	46bd      	mov	sp, r7
 8001014:	bd80      	pop	{r7, pc}
 8001016:	bf00      	nop
 8001018:	20000824 	.word	0x20000824

0800101c <xatoi>:
 800101c:	b480      	push	{r7}
 800101e:	b085      	sub	sp, #20
 8001020:	af00      	add	r7, sp, #0
 8001022:	6078      	str	r0, [r7, #4]
 8001024:	6039      	str	r1, [r7, #0]
 8001026:	2300      	movs	r3, #0
 8001028:	727b      	strb	r3, [r7, #9]
 800102a:	683b      	ldr	r3, [r7, #0]
 800102c:	2200      	movs	r2, #0
 800102e:	601a      	str	r2, [r3, #0]
 8001030:	e004      	b.n	800103c <xatoi+0x20>
 8001032:	687b      	ldr	r3, [r7, #4]
 8001034:	681b      	ldr	r3, [r3, #0]
 8001036:	1c5a      	adds	r2, r3, #1
 8001038:	687b      	ldr	r3, [r7, #4]
 800103a:	601a      	str	r2, [r3, #0]
 800103c:	687b      	ldr	r3, [r7, #4]
 800103e:	681b      	ldr	r3, [r3, #0]
 8001040:	781b      	ldrb	r3, [r3, #0]
 8001042:	72fb      	strb	r3, [r7, #11]
 8001044:	7afb      	ldrb	r3, [r7, #11]
 8001046:	2b20      	cmp	r3, #32
 8001048:	d0f3      	beq.n	8001032 <xatoi+0x16>
 800104a:	7afb      	ldrb	r3, [r7, #11]
 800104c:	2b2d      	cmp	r3, #45	; 0x2d
 800104e:	d10a      	bne.n	8001066 <xatoi+0x4a>
 8001050:	2301      	movs	r3, #1
 8001052:	727b      	strb	r3, [r7, #9]
 8001054:	687b      	ldr	r3, [r7, #4]
 8001056:	681b      	ldr	r3, [r3, #0]
 8001058:	1c5a      	adds	r2, r3, #1
 800105a:	687b      	ldr	r3, [r7, #4]
 800105c:	601a      	str	r2, [r3, #0]
 800105e:	687b      	ldr	r3, [r7, #4]
 8001060:	681b      	ldr	r3, [r3, #0]
 8001062:	781b      	ldrb	r3, [r3, #0]
 8001064:	72fb      	strb	r3, [r7, #11]
 8001066:	7afb      	ldrb	r3, [r7, #11]
 8001068:	2b30      	cmp	r3, #48	; 0x30
 800106a:	d136      	bne.n	80010da <xatoi+0xbe>
 800106c:	687b      	ldr	r3, [r7, #4]
 800106e:	681b      	ldr	r3, [r3, #0]
 8001070:	1c5a      	adds	r2, r3, #1
 8001072:	687b      	ldr	r3, [r7, #4]
 8001074:	601a      	str	r2, [r3, #0]
 8001076:	687b      	ldr	r3, [r7, #4]
 8001078:	681b      	ldr	r3, [r3, #0]
 800107a:	781b      	ldrb	r3, [r3, #0]
 800107c:	72fb      	strb	r3, [r7, #11]
 800107e:	7afb      	ldrb	r3, [r7, #11]
 8001080:	2b62      	cmp	r3, #98	; 0x62
 8001082:	d00d      	beq.n	80010a0 <xatoi+0x84>
 8001084:	2b78      	cmp	r3, #120	; 0x78
 8001086:	d117      	bne.n	80010b8 <xatoi+0x9c>
 8001088:	2310      	movs	r3, #16
 800108a:	72bb      	strb	r3, [r7, #10]
 800108c:	687b      	ldr	r3, [r7, #4]
 800108e:	681b      	ldr	r3, [r3, #0]
 8001090:	1c5a      	adds	r2, r3, #1
 8001092:	687b      	ldr	r3, [r7, #4]
 8001094:	601a      	str	r2, [r3, #0]
 8001096:	687b      	ldr	r3, [r7, #4]
 8001098:	681b      	ldr	r3, [r3, #0]
 800109a:	781b      	ldrb	r3, [r3, #0]
 800109c:	72fb      	strb	r3, [r7, #11]
 800109e:	e01b      	b.n	80010d8 <xatoi+0xbc>
 80010a0:	2302      	movs	r3, #2
 80010a2:	72bb      	strb	r3, [r7, #10]
 80010a4:	687b      	ldr	r3, [r7, #4]
 80010a6:	681b      	ldr	r3, [r3, #0]
 80010a8:	1c5a      	adds	r2, r3, #1
 80010aa:	687b      	ldr	r3, [r7, #4]
 80010ac:	601a      	str	r2, [r3, #0]
 80010ae:	687b      	ldr	r3, [r7, #4]
 80010b0:	681b      	ldr	r3, [r3, #0]
 80010b2:	781b      	ldrb	r3, [r3, #0]
 80010b4:	72fb      	strb	r3, [r7, #11]
 80010b6:	e00f      	b.n	80010d8 <xatoi+0xbc>
 80010b8:	7afb      	ldrb	r3, [r7, #11]
 80010ba:	2b20      	cmp	r3, #32
 80010bc:	d801      	bhi.n	80010c2 <xatoi+0xa6>
 80010be:	2301      	movs	r3, #1
 80010c0:	e04f      	b.n	8001162 <xatoi+0x146>
 80010c2:	7afb      	ldrb	r3, [r7, #11]
 80010c4:	2b2f      	cmp	r3, #47	; 0x2f
 80010c6:	d902      	bls.n	80010ce <xatoi+0xb2>
 80010c8:	7afb      	ldrb	r3, [r7, #11]
 80010ca:	2b39      	cmp	r3, #57	; 0x39
 80010cc:	d901      	bls.n	80010d2 <xatoi+0xb6>
 80010ce:	2300      	movs	r3, #0
 80010d0:	e047      	b.n	8001162 <xatoi+0x146>
 80010d2:	2308      	movs	r3, #8
 80010d4:	72bb      	strb	r3, [r7, #10]
 80010d6:	e00a      	b.n	80010ee <xatoi+0xd2>
 80010d8:	e009      	b.n	80010ee <xatoi+0xd2>
 80010da:	7afb      	ldrb	r3, [r7, #11]
 80010dc:	2b2f      	cmp	r3, #47	; 0x2f
 80010de:	d902      	bls.n	80010e6 <xatoi+0xca>
 80010e0:	7afb      	ldrb	r3, [r7, #11]
 80010e2:	2b39      	cmp	r3, #57	; 0x39
 80010e4:	d901      	bls.n	80010ea <xatoi+0xce>
 80010e6:	2300      	movs	r3, #0
 80010e8:	e03b      	b.n	8001162 <xatoi+0x146>
 80010ea:	230a      	movs	r3, #10
 80010ec:	72bb      	strb	r3, [r7, #10]
 80010ee:	2300      	movs	r3, #0
 80010f0:	60fb      	str	r3, [r7, #12]
 80010f2:	e029      	b.n	8001148 <xatoi+0x12c>
 80010f4:	7afb      	ldrb	r3, [r7, #11]
 80010f6:	2b60      	cmp	r3, #96	; 0x60
 80010f8:	d902      	bls.n	8001100 <xatoi+0xe4>
 80010fa:	7afb      	ldrb	r3, [r7, #11]
 80010fc:	3b20      	subs	r3, #32
 80010fe:	72fb      	strb	r3, [r7, #11]
 8001100:	7afb      	ldrb	r3, [r7, #11]
 8001102:	3b30      	subs	r3, #48	; 0x30
 8001104:	72fb      	strb	r3, [r7, #11]
 8001106:	7afb      	ldrb	r3, [r7, #11]
 8001108:	2b10      	cmp	r3, #16
 800110a:	d907      	bls.n	800111c <xatoi+0x100>
 800110c:	7afb      	ldrb	r3, [r7, #11]
 800110e:	3b07      	subs	r3, #7
 8001110:	72fb      	strb	r3, [r7, #11]
 8001112:	7afb      	ldrb	r3, [r7, #11]
 8001114:	2b09      	cmp	r3, #9
 8001116:	d801      	bhi.n	800111c <xatoi+0x100>
 8001118:	2300      	movs	r3, #0
 800111a:	e022      	b.n	8001162 <xatoi+0x146>
 800111c:	7afa      	ldrb	r2, [r7, #11]
 800111e:	7abb      	ldrb	r3, [r7, #10]
 8001120:	429a      	cmp	r2, r3
 8001122:	d301      	bcc.n	8001128 <xatoi+0x10c>
 8001124:	2300      	movs	r3, #0
 8001126:	e01c      	b.n	8001162 <xatoi+0x146>
 8001128:	7abb      	ldrb	r3, [r7, #10]
 800112a:	68fa      	ldr	r2, [r7, #12]
 800112c:	fb02 f203 	mul.w	r2, r2, r3
 8001130:	7afb      	ldrb	r3, [r7, #11]
 8001132:	4413      	add	r3, r2
 8001134:	60fb      	str	r3, [r7, #12]
 8001136:	687b      	ldr	r3, [r7, #4]
 8001138:	681b      	ldr	r3, [r3, #0]
 800113a:	1c5a      	adds	r2, r3, #1
 800113c:	687b      	ldr	r3, [r7, #4]
 800113e:	601a      	str	r2, [r3, #0]
 8001140:	687b      	ldr	r3, [r7, #4]
 8001142:	681b      	ldr	r3, [r3, #0]
 8001144:	781b      	ldrb	r3, [r3, #0]
 8001146:	72fb      	strb	r3, [r7, #11]
 8001148:	7afb      	ldrb	r3, [r7, #11]
 800114a:	2b20      	cmp	r3, #32
 800114c:	d8d2      	bhi.n	80010f4 <xatoi+0xd8>
 800114e:	7a7b      	ldrb	r3, [r7, #9]
 8001150:	2b00      	cmp	r3, #0
 8001152:	d002      	beq.n	800115a <xatoi+0x13e>
 8001154:	68fb      	ldr	r3, [r7, #12]
 8001156:	425b      	negs	r3, r3
 8001158:	60fb      	str	r3, [r7, #12]
 800115a:	68fa      	ldr	r2, [r7, #12]
 800115c:	683b      	ldr	r3, [r7, #0]
 800115e:	601a      	str	r2, [r3, #0]
 8001160:	2301      	movs	r3, #1
 8001162:	4618      	mov	r0, r3
 8001164:	3714      	adds	r7, #20
 8001166:	46bd      	mov	sp, r7
 8001168:	f85d 7b04 	ldr.w	r7, [sp], #4
 800116c:	4770      	bx	lr
 800116e:	bf00      	nop
 8001170:	6c6c6568 	.word	0x6c6c6568
 8001174:	7266206f 	.word	0x7266206f
 8001178:	73206d6f 	.word	0x73206d6f
 800117c:	6576616c 	.word	0x6576616c
 8001180:	00000a0d 	.word	0x00000a0d
 8001184:	000a7825 	.word	0x000a7825
 8001188:	aa563412 	.word	0xaa563412
 800118c:	aaaaaaaa 	.word	0xaaaaaaaa
 8001190:	6c383025 	.word	0x6c383025
 8001194:	00002058 	.word	0x00002058
 8001198:	32302520 	.word	0x32302520
 800119c:	00000058 	.word	0x00000058
 80011a0:	34302520 	.word	0x34302520
 80011a4:	00000058 	.word	0x00000058
 80011a8:	38302520 	.word	0x38302520
 80011ac:	0000584c 	.word	0x0000584c
