
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 00 02 20 71 08 00 08 d1 08 00 08 d1 08 00 08     ... q...........
 8000010:	d1 08 00 08 d1 08 00 08 d1 08 00 08 00 00 00 00     ................
	...
 800002c:	d1 08 00 08 d1 08 00 08 00 00 00 00 d1 08 00 08     ................
 800003c:	55 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     U...............
 800004c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800005c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800006c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800007c:	29 31 00 08 d1 08 00 08 d1 08 00 08 69 31 00 08     )1..........i1..
 800008c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800009c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 80000ac:	d1 08 00 08 2d 17 00 08 8d 30 00 08 d1 08 00 08     ....-....0......
 80000bc:	0d 35 00 08 21 35 00 08 d1 08 00 08 d1 08 00 08     .5..!5..........
 80000cc:	41 2d 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     A-..............
 80000dc:	a9 1a 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 80000ec:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 80000fc:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800010c:	d1 08 00 08 15 0c 00 08 d1 08 00 08 d1 08 00 08     ................
 800011c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800012c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800013c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800014c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800015c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800016c:	d1 08 00 08 d1 08 00 08 d1 08 00 08 d1 08 00 08     ................
 800017c:	d1 08 00 08 d1 08 00 08 d1 08 00 08                 ............

08000188 <display_out>:
 8000188:	b480      	push	{r7}
 800018a:	b087      	sub	sp, #28
 800018c:	af00      	add	r7, sp, #0
 800018e:	60f8      	str	r0, [r7, #12]
 8000190:	60b9      	str	r1, [r7, #8]
 8000192:	607a      	str	r2, [r7, #4]
 8000194:	2300      	movs	r3, #0
 8000196:	617b      	str	r3, [r7, #20]
 8000198:	687b      	ldr	r3, [r7, #4]
 800019a:	009b      	lsls	r3, r3, #2
 800019c:	607b      	str	r3, [r7, #4]
 800019e:	2300      	movs	r3, #0
 80001a0:	617b      	str	r3, [r7, #20]
 80001a2:	e036      	b.n	8000212 <display_out+0x8a>
 80001a4:	697a      	ldr	r2, [r7, #20]
 80001a6:	68bb      	ldr	r3, [r7, #8]
 80001a8:	429a      	cmp	r2, r3
 80001aa:	d116      	bne.n	80001da <display_out+0x52>
 80001ac:	6879      	ldr	r1, [r7, #4]
 80001ae:	1c4b      	adds	r3, r1, #1
 80001b0:	607b      	str	r3, [r7, #4]
 80001b2:	68f8      	ldr	r0, [r7, #12]
 80001b4:	4b1b      	ldr	r3, [pc, #108]	; (8000224 <display_out+0x9c>)
 80001b6:	fba3 2300 	umull	r2, r3, r3, r0
 80001ba:	08da      	lsrs	r2, r3, #3
 80001bc:	4613      	mov	r3, r2
 80001be:	009b      	lsls	r3, r3, #2
 80001c0:	4413      	add	r3, r2
 80001c2:	005b      	lsls	r3, r3, #1
 80001c4:	1ac2      	subs	r2, r0, r3
 80001c6:	f002 030f 	and.w	r3, r2, #15
 80001ca:	4a17      	ldr	r2, [pc, #92]	; (8000228 <display_out+0xa0>)
 80001cc:	5cd3      	ldrb	r3, [r2, r3]
 80001ce:	f043 0308 	orr.w	r3, r3, #8
 80001d2:	b2da      	uxtb	r2, r3
 80001d4:	4b15      	ldr	r3, [pc, #84]	; (800022c <display_out+0xa4>)
 80001d6:	545a      	strb	r2, [r3, r1]
 80001d8:	e012      	b.n	8000200 <display_out+0x78>
 80001da:	6879      	ldr	r1, [r7, #4]
 80001dc:	1c4b      	adds	r3, r1, #1
 80001de:	607b      	str	r3, [r7, #4]
 80001e0:	68f8      	ldr	r0, [r7, #12]
 80001e2:	4b10      	ldr	r3, [pc, #64]	; (8000224 <display_out+0x9c>)
 80001e4:	fba3 2300 	umull	r2, r3, r3, r0
 80001e8:	08da      	lsrs	r2, r3, #3
 80001ea:	4613      	mov	r3, r2
 80001ec:	009b      	lsls	r3, r3, #2
 80001ee:	4413      	add	r3, r2
 80001f0:	005b      	lsls	r3, r3, #1
 80001f2:	1ac2      	subs	r2, r0, r3
 80001f4:	f002 030f 	and.w	r3, r2, #15
 80001f8:	4a0b      	ldr	r2, [pc, #44]	; (8000228 <display_out+0xa0>)
 80001fa:	5cd2      	ldrb	r2, [r2, r3]
 80001fc:	4b0b      	ldr	r3, [pc, #44]	; (800022c <display_out+0xa4>)
 80001fe:	545a      	strb	r2, [r3, r1]
 8000200:	68fb      	ldr	r3, [r7, #12]
 8000202:	4a08      	ldr	r2, [pc, #32]	; (8000224 <display_out+0x9c>)
 8000204:	fba2 2303 	umull	r2, r3, r2, r3
 8000208:	08db      	lsrs	r3, r3, #3
 800020a:	60fb      	str	r3, [r7, #12]
 800020c:	697b      	ldr	r3, [r7, #20]
 800020e:	3301      	adds	r3, #1
 8000210:	617b      	str	r3, [r7, #20]
 8000212:	697b      	ldr	r3, [r7, #20]
 8000214:	2b03      	cmp	r3, #3
 8000216:	ddc5      	ble.n	80001a4 <display_out+0x1c>
 8000218:	bf00      	nop
 800021a:	371c      	adds	r7, #28
 800021c:	46bd      	mov	sp, r7
 800021e:	bc80      	pop	{r7}
 8000220:	4770      	bx	lr
 8000222:	bf00      	nop
 8000224:	cccccccd 	.word	0xcccccccd
 8000228:	08003808 	.word	0x08003808
 800022c:	20000c84 	.word	0x20000c84

08000230 <log_channel>:
 8000230:	b580      	push	{r7, lr}
 8000232:	b082      	sub	sp, #8
 8000234:	af00      	add	r7, sp, #0
 8000236:	4b33      	ldr	r3, [pc, #204]	; (8000304 <log_channel+0xd4>)
 8000238:	681b      	ldr	r3, [r3, #0]
 800023a:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 800023e:	0c9b      	lsrs	r3, r3, #18
 8000240:	607b      	str	r3, [r7, #4]
 8000242:	4b31      	ldr	r3, [pc, #196]	; (8000308 <log_channel+0xd8>)
 8000244:	681b      	ldr	r3, [r3, #0]
 8000246:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800024a:	129b      	asrs	r3, r3, #10
 800024c:	4619      	mov	r1, r3
 800024e:	482f      	ldr	r0, [pc, #188]	; (800030c <log_channel+0xdc>)
 8000250:	f000 ff04 	bl	800105c <xprintf>
 8000254:	4b2e      	ldr	r3, [pc, #184]	; (8000310 <log_channel+0xe0>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	4619      	mov	r1, r3
 800025a:	482e      	ldr	r0, [pc, #184]	; (8000314 <log_channel+0xe4>)
 800025c:	f000 fefe 	bl	800105c <xprintf>
 8000260:	4b2d      	ldr	r3, [pc, #180]	; (8000318 <log_channel+0xe8>)
 8000262:	681b      	ldr	r3, [r3, #0]
 8000264:	4619      	mov	r1, r3
 8000266:	482d      	ldr	r0, [pc, #180]	; (800031c <log_channel+0xec>)
 8000268:	f000 fef8 	bl	800105c <xprintf>
 800026c:	4b2c      	ldr	r3, [pc, #176]	; (8000320 <log_channel+0xf0>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	0a9b      	lsrs	r3, r3, #10
 8000272:	4619      	mov	r1, r3
 8000274:	482b      	ldr	r0, [pc, #172]	; (8000324 <log_channel+0xf4>)
 8000276:	f000 fef1 	bl	800105c <xprintf>
 800027a:	4b2b      	ldr	r3, [pc, #172]	; (8000328 <log_channel+0xf8>)
 800027c:	681b      	ldr	r3, [r3, #0]
 800027e:	4619      	mov	r1, r3
 8000280:	482a      	ldr	r0, [pc, #168]	; (800032c <log_channel+0xfc>)
 8000282:	f000 feeb 	bl	800105c <xprintf>
 8000286:	4b2a      	ldr	r3, [pc, #168]	; (8000330 <log_channel+0x100>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	4619      	mov	r1, r3
 800028c:	4829      	ldr	r0, [pc, #164]	; (8000334 <log_channel+0x104>)
 800028e:	f000 fee5 	bl	800105c <xprintf>
 8000292:	687b      	ldr	r3, [r7, #4]
 8000294:	4a28      	ldr	r2, [pc, #160]	; (8000338 <log_channel+0x108>)
 8000296:	fba2 2303 	umull	r2, r3, r2, r3
 800029a:	08d8      	lsrs	r0, r3, #3
 800029c:	6879      	ldr	r1, [r7, #4]
 800029e:	4b26      	ldr	r3, [pc, #152]	; (8000338 <log_channel+0x108>)
 80002a0:	fba3 2301 	umull	r2, r3, r3, r1
 80002a4:	08da      	lsrs	r2, r3, #3
 80002a6:	4613      	mov	r3, r2
 80002a8:	009b      	lsls	r3, r3, #2
 80002aa:	4413      	add	r3, r2
 80002ac:	005b      	lsls	r3, r3, #1
 80002ae:	1aca      	subs	r2, r1, r3
 80002b0:	4601      	mov	r1, r0
 80002b2:	4822      	ldr	r0, [pc, #136]	; (800033c <log_channel+0x10c>)
 80002b4:	f000 fed2 	bl	800105c <xprintf>
 80002b8:	4b21      	ldr	r3, [pc, #132]	; (8000340 <log_channel+0x110>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
 80002c0:	4a20      	ldr	r2, [pc, #128]	; (8000344 <log_channel+0x114>)
 80002c2:	fba2 2303 	umull	r2, r3, r2, r3
 80002c6:	099b      	lsrs	r3, r3, #6
 80002c8:	4619      	mov	r1, r3
 80002ca:	481f      	ldr	r0, [pc, #124]	; (8000348 <log_channel+0x118>)
 80002cc:	f000 fec6 	bl	800105c <xprintf>
 80002d0:	4b1e      	ldr	r3, [pc, #120]	; (800034c <log_channel+0x11c>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	4619      	mov	r1, r3
 80002d6:	481e      	ldr	r0, [pc, #120]	; (8000350 <log_channel+0x120>)
 80002d8:	f000 fec0 	bl	800105c <xprintf>
 80002dc:	4b1d      	ldr	r3, [pc, #116]	; (8000354 <log_channel+0x124>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	4619      	mov	r1, r3
 80002e2:	481d      	ldr	r0, [pc, #116]	; (8000358 <log_channel+0x128>)
 80002e4:	f000 feba 	bl	800105c <xprintf>
 80002e8:	4b1c      	ldr	r3, [pc, #112]	; (800035c <log_channel+0x12c>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	4619      	mov	r1, r3
 80002ee:	481c      	ldr	r0, [pc, #112]	; (8000360 <log_channel+0x130>)
 80002f0:	f000 feb4 	bl	800105c <xprintf>
 80002f4:	481b      	ldr	r0, [pc, #108]	; (8000364 <log_channel+0x134>)
 80002f6:	f000 feb1 	bl	800105c <xprintf>
 80002fa:	bf00      	nop
 80002fc:	3708      	adds	r7, #8
 80002fe:	46bd      	mov	sp, r7
 8000300:	bd80      	pop	{r7, pc}
 8000302:	bf00      	nop
 8000304:	20000230 	.word	0x20000230
 8000308:	20001ca0 	.word	0x20001ca0
 800030c:	08003818 	.word	0x08003818
 8000310:	20002ca8 	.word	0x20002ca8
 8000314:	08003820 	.word	0x08003820
 8000318:	20002cb8 	.word	0x20002cb8
 800031c:	08003828 	.word	0x08003828
 8000320:	20000c98 	.word	0x20000c98
 8000324:	08003834 	.word	0x08003834
 8000328:	20002cd0 	.word	0x20002cd0
 800032c:	0800383c 	.word	0x0800383c
 8000330:	20000234 	.word	0x20000234
 8000334:	08003848 	.word	0x08003848
 8000338:	cccccccd 	.word	0xcccccccd
 800033c:	08003854 	.word	0x08003854
 8000340:	20000238 	.word	0x20000238
 8000344:	10624dd3 	.word	0x10624dd3
 8000348:	08003860 	.word	0x08003860
 800034c:	2000022c 	.word	0x2000022c
 8000350:	08003868 	.word	0x08003868
 8000354:	20002cbc 	.word	0x20002cbc
 8000358:	08003874 	.word	0x08003874
 800035c:	2000023c 	.word	0x2000023c
 8000360:	0800387c 	.word	0x0800387c
 8000364:	08003884 	.word	0x08003884

08000368 <main>:
 8000368:	b580      	push	{r7, lr}
 800036a:	b0c8      	sub	sp, #288	; 0x120
 800036c:	af00      	add	r7, sp, #0
 800036e:	2300      	movs	r3, #0
 8000370:	f887 311f 	strb.w	r3, [r7, #287]	; 0x11f
 8000374:	2300      	movs	r3, #0
 8000376:	f8c7 3118 	str.w	r3, [r7, #280]	; 0x118
 800037a:	2300      	movs	r3, #0
 800037c:	f8c7 3114 	str.w	r3, [r7, #276]	; 0x114
 8000380:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000384:	f8a7 3112 	strh.w	r3, [r7, #274]	; 0x112
 8000388:	2300      	movs	r3, #0
 800038a:	f8a7 3110 	strh.w	r3, [r7, #272]	; 0x110
 800038e:	2364      	movs	r3, #100	; 0x64
 8000390:	f8a7 310e 	strh.w	r3, [r7, #270]	; 0x10e
 8000394:	2300      	movs	r3, #0
 8000396:	f8c7 3108 	str.w	r3, [r7, #264]	; 0x108
 800039a:	f000 f9c7 	bl	800072c <system_init>
 800039e:	f000 fab3 	bl	8000908 <uart_init>
 80003a2:	4b19      	ldr	r3, [pc, #100]	; (8000408 <main+0xa0>)
 80003a4:	4a19      	ldr	r2, [pc, #100]	; (800040c <main+0xa4>)
 80003a6:	601a      	str	r2, [r3, #0]
 80003a8:	f001 f9a0 	bl	80016ec <adc_init>
 80003ac:	f001 fa54 	bl	8001858 <dac_init>
 80003b0:	f001 faf2 	bl	8001998 <modbus_init>
 80003b4:	f002 fb5e 	bl	8002a74 <spi_master_init>
 80003b8:	f002 ff58 	bl	800326c <i2c_init>
 80003bc:	f002 feca 	bl	8003154 <reg_init>
 80003c0:	4813      	ldr	r0, [pc, #76]	; (8000410 <main+0xa8>)
 80003c2:	f000 fe4b 	bl	800105c <xprintf>
 80003c6:	4b13      	ldr	r3, [pc, #76]	; (8000414 <main+0xac>)
 80003c8:	881b      	ldrh	r3, [r3, #0]
 80003ca:	4618      	mov	r0, r3
 80003cc:	f002 faa6 	bl	800291c <coll_pwm_set>
 80003d0:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80003d4:	f000 fa28 	bl	8000828 <sleep>
 80003d8:	4b0f      	ldr	r3, [pc, #60]	; (8000418 <main+0xb0>)
 80003da:	681b      	ldr	r3, [r3, #0]
 80003dc:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 80003e0:	0c9b      	lsrs	r3, r3, #18
 80003e2:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
 80003e6:	f7ff ff23 	bl	8000230 <log_channel>
 80003ea:	4b0c      	ldr	r3, [pc, #48]	; (800041c <main+0xb4>)
 80003ec:	881b      	ldrh	r3, [r3, #0]
 80003ee:	2200      	movs	r2, #0
 80003f0:	2100      	movs	r1, #0
 80003f2:	4618      	mov	r0, r3
 80003f4:	f7ff fec8 	bl	8000188 <display_out>
 80003f8:	4b08      	ldr	r3, [pc, #32]	; (800041c <main+0xb4>)
 80003fa:	885b      	ldrh	r3, [r3, #2]
 80003fc:	2201      	movs	r2, #1
 80003fe:	2100      	movs	r1, #0
 8000400:	4618      	mov	r0, r3
 8000402:	f7ff fec1 	bl	8000188 <display_out>
 8000406:	e7e3      	b.n	80003d0 <main+0x68>
 8000408:	20000a54 	.word	0x20000a54
 800040c:	080009ed 	.word	0x080009ed
 8000410:	08003888 	.word	0x08003888
 8000414:	20000000 	.word	0x20000000
 8000418:	20000230 	.word	0x20000230
 800041c:	20000a60 	.word	0x20000a60

08000420 <NVIC_SetPriorityGrouping>:
 8000420:	b480      	push	{r7}
 8000422:	b085      	sub	sp, #20
 8000424:	af00      	add	r7, sp, #0
 8000426:	6078      	str	r0, [r7, #4]
 8000428:	687b      	ldr	r3, [r7, #4]
 800042a:	f003 0307 	and.w	r3, r3, #7
 800042e:	60fb      	str	r3, [r7, #12]
 8000430:	4b0c      	ldr	r3, [pc, #48]	; (8000464 <NVIC_SetPriorityGrouping+0x44>)
 8000432:	68db      	ldr	r3, [r3, #12]
 8000434:	60bb      	str	r3, [r7, #8]
 8000436:	68ba      	ldr	r2, [r7, #8]
 8000438:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800043c:	4013      	ands	r3, r2
 800043e:	60bb      	str	r3, [r7, #8]
 8000440:	68fb      	ldr	r3, [r7, #12]
 8000442:	021a      	lsls	r2, r3, #8
 8000444:	68bb      	ldr	r3, [r7, #8]
 8000446:	4313      	orrs	r3, r2
 8000448:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 800044c:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000450:	60bb      	str	r3, [r7, #8]
 8000452:	4a04      	ldr	r2, [pc, #16]	; (8000464 <NVIC_SetPriorityGrouping+0x44>)
 8000454:	68bb      	ldr	r3, [r7, #8]
 8000456:	60d3      	str	r3, [r2, #12]
 8000458:	bf00      	nop
 800045a:	3714      	adds	r7, #20
 800045c:	46bd      	mov	sp, r7
 800045e:	bc80      	pop	{r7}
 8000460:	4770      	bx	lr
 8000462:	bf00      	nop
 8000464:	e000ed00 	.word	0xe000ed00

08000468 <NVIC_SetPriority>:
 8000468:	b480      	push	{r7}
 800046a:	b083      	sub	sp, #12
 800046c:	af00      	add	r7, sp, #0
 800046e:	4603      	mov	r3, r0
 8000470:	6039      	str	r1, [r7, #0]
 8000472:	71fb      	strb	r3, [r7, #7]
 8000474:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000478:	2b00      	cmp	r3, #0
 800047a:	da0b      	bge.n	8000494 <NVIC_SetPriority+0x2c>
 800047c:	490d      	ldr	r1, [pc, #52]	; (80004b4 <NVIC_SetPriority+0x4c>)
 800047e:	79fb      	ldrb	r3, [r7, #7]
 8000480:	f003 030f 	and.w	r3, r3, #15
 8000484:	3b04      	subs	r3, #4
 8000486:	683a      	ldr	r2, [r7, #0]
 8000488:	b2d2      	uxtb	r2, r2
 800048a:	0112      	lsls	r2, r2, #4
 800048c:	b2d2      	uxtb	r2, r2
 800048e:	440b      	add	r3, r1
 8000490:	761a      	strb	r2, [r3, #24]
 8000492:	e009      	b.n	80004a8 <NVIC_SetPriority+0x40>
 8000494:	4908      	ldr	r1, [pc, #32]	; (80004b8 <NVIC_SetPriority+0x50>)
 8000496:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800049a:	683a      	ldr	r2, [r7, #0]
 800049c:	b2d2      	uxtb	r2, r2
 800049e:	0112      	lsls	r2, r2, #4
 80004a0:	b2d2      	uxtb	r2, r2
 80004a2:	440b      	add	r3, r1
 80004a4:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80004a8:	bf00      	nop
 80004aa:	370c      	adds	r7, #12
 80004ac:	46bd      	mov	sp, r7
 80004ae:	bc80      	pop	{r7}
 80004b0:	4770      	bx	lr
 80004b2:	bf00      	nop
 80004b4:	e000ed00 	.word	0xe000ed00
 80004b8:	e000e100 	.word	0xe000e100

080004bc <clock_PLL>:
 80004bc:	b480      	push	{r7}
 80004be:	af00      	add	r7, sp, #0
 80004c0:	4a5b      	ldr	r2, [pc, #364]	; (8000630 <clock_PLL+0x174>)
 80004c2:	4b5b      	ldr	r3, [pc, #364]	; (8000630 <clock_PLL+0x174>)
 80004c4:	681b      	ldr	r3, [r3, #0]
 80004c6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80004ca:	6013      	str	r3, [r2, #0]
 80004cc:	bf00      	nop
 80004ce:	4b58      	ldr	r3, [pc, #352]	; (8000630 <clock_PLL+0x174>)
 80004d0:	681b      	ldr	r3, [r3, #0]
 80004d2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80004d6:	2b00      	cmp	r3, #0
 80004d8:	d0f9      	beq.n	80004ce <clock_PLL+0x12>
 80004da:	4a55      	ldr	r2, [pc, #340]	; (8000630 <clock_PLL+0x174>)
 80004dc:	4b54      	ldr	r3, [pc, #336]	; (8000630 <clock_PLL+0x174>)
 80004de:	681b      	ldr	r3, [r3, #0]
 80004e0:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 80004e4:	6013      	str	r3, [r2, #0]
 80004e6:	4952      	ldr	r1, [pc, #328]	; (8000630 <clock_PLL+0x174>)
 80004e8:	4b51      	ldr	r3, [pc, #324]	; (8000630 <clock_PLL+0x174>)
 80004ea:	685a      	ldr	r2, [r3, #4]
 80004ec:	4b51      	ldr	r3, [pc, #324]	; (8000634 <clock_PLL+0x178>)
 80004ee:	4013      	ands	r3, r2
 80004f0:	604b      	str	r3, [r1, #4]
 80004f2:	4a4f      	ldr	r2, [pc, #316]	; (8000630 <clock_PLL+0x174>)
 80004f4:	4b4e      	ldr	r3, [pc, #312]	; (8000630 <clock_PLL+0x174>)
 80004f6:	685b      	ldr	r3, [r3, #4]
 80004f8:	f443 43a8 	orr.w	r3, r3, #21504	; 0x5400
 80004fc:	6053      	str	r3, [r2, #4]
 80004fe:	4a4c      	ldr	r2, [pc, #304]	; (8000630 <clock_PLL+0x174>)
 8000500:	4b4b      	ldr	r3, [pc, #300]	; (8000630 <clock_PLL+0x174>)
 8000502:	685b      	ldr	r3, [r3, #4]
 8000504:	f043 0308 	orr.w	r3, r3, #8
 8000508:	6053      	str	r3, [r2, #4]
 800050a:	4a49      	ldr	r2, [pc, #292]	; (8000630 <clock_PLL+0x174>)
 800050c:	4b48      	ldr	r3, [pc, #288]	; (8000630 <clock_PLL+0x174>)
 800050e:	685b      	ldr	r3, [r3, #4]
 8000510:	6053      	str	r3, [r2, #4]
 8000512:	4a47      	ldr	r2, [pc, #284]	; (8000630 <clock_PLL+0x174>)
 8000514:	4b46      	ldr	r3, [pc, #280]	; (8000630 <clock_PLL+0x174>)
 8000516:	685b      	ldr	r3, [r3, #4]
 8000518:	f043 63e0 	orr.w	r3, r3, #117440512	; 0x7000000
 800051c:	6053      	str	r3, [r2, #4]
 800051e:	4a44      	ldr	r2, [pc, #272]	; (8000630 <clock_PLL+0x174>)
 8000520:	4b43      	ldr	r3, [pc, #268]	; (8000630 <clock_PLL+0x174>)
 8000522:	685b      	ldr	r3, [r3, #4]
 8000524:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8000528:	6053      	str	r3, [r2, #4]
 800052a:	4a41      	ldr	r2, [pc, #260]	; (8000630 <clock_PLL+0x174>)
 800052c:	4b40      	ldr	r3, [pc, #256]	; (8000630 <clock_PLL+0x174>)
 800052e:	681b      	ldr	r3, [r3, #0]
 8000530:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000534:	6013      	str	r3, [r2, #0]
 8000536:	bf00      	nop
 8000538:	4b3d      	ldr	r3, [pc, #244]	; (8000630 <clock_PLL+0x174>)
 800053a:	681b      	ldr	r3, [r3, #0]
 800053c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000540:	2b00      	cmp	r3, #0
 8000542:	d0f9      	beq.n	8000538 <clock_PLL+0x7c>
 8000544:	4a3c      	ldr	r2, [pc, #240]	; (8000638 <clock_PLL+0x17c>)
 8000546:	4b3c      	ldr	r3, [pc, #240]	; (8000638 <clock_PLL+0x17c>)
 8000548:	681b      	ldr	r3, [r3, #0]
 800054a:	f023 030f 	bic.w	r3, r3, #15
 800054e:	6013      	str	r3, [r2, #0]
 8000550:	4a39      	ldr	r2, [pc, #228]	; (8000638 <clock_PLL+0x17c>)
 8000552:	4b39      	ldr	r3, [pc, #228]	; (8000638 <clock_PLL+0x17c>)
 8000554:	681b      	ldr	r3, [r3, #0]
 8000556:	f443 7382 	orr.w	r3, r3, #260	; 0x104
 800055a:	f043 0301 	orr.w	r3, r3, #1
 800055e:	6013      	str	r3, [r2, #0]
 8000560:	4a33      	ldr	r2, [pc, #204]	; (8000630 <clock_PLL+0x174>)
 8000562:	4b33      	ldr	r3, [pc, #204]	; (8000630 <clock_PLL+0x174>)
 8000564:	689b      	ldr	r3, [r3, #8]
 8000566:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 800056a:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 800056e:	6093      	str	r3, [r2, #8]
 8000570:	4a2f      	ldr	r2, [pc, #188]	; (8000630 <clock_PLL+0x174>)
 8000572:	4b2f      	ldr	r3, [pc, #188]	; (8000630 <clock_PLL+0x174>)
 8000574:	689b      	ldr	r3, [r3, #8]
 8000576:	f443 4314 	orr.w	r3, r3, #37888	; 0x9400
 800057a:	6093      	str	r3, [r2, #8]
 800057c:	4a2c      	ldr	r2, [pc, #176]	; (8000630 <clock_PLL+0x174>)
 800057e:	4b2c      	ldr	r3, [pc, #176]	; (8000630 <clock_PLL+0x174>)
 8000580:	689b      	ldr	r3, [r3, #8]
 8000582:	f023 0303 	bic.w	r3, r3, #3
 8000586:	6093      	str	r3, [r2, #8]
 8000588:	4a29      	ldr	r2, [pc, #164]	; (8000630 <clock_PLL+0x174>)
 800058a:	4b29      	ldr	r3, [pc, #164]	; (8000630 <clock_PLL+0x174>)
 800058c:	689b      	ldr	r3, [r3, #8]
 800058e:	f043 0302 	orr.w	r3, r3, #2
 8000592:	6093      	str	r3, [r2, #8]
 8000594:	bf00      	nop
 8000596:	4b26      	ldr	r3, [pc, #152]	; (8000630 <clock_PLL+0x174>)
 8000598:	689b      	ldr	r3, [r3, #8]
 800059a:	f003 0308 	and.w	r3, r3, #8
 800059e:	2b00      	cmp	r3, #0
 80005a0:	d0f9      	beq.n	8000596 <clock_PLL+0xda>
 80005a2:	4a23      	ldr	r2, [pc, #140]	; (8000630 <clock_PLL+0x174>)
 80005a4:	4b22      	ldr	r3, [pc, #136]	; (8000630 <clock_PLL+0x174>)
 80005a6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80005a8:	f043 0305 	orr.w	r3, r3, #5
 80005ac:	6313      	str	r3, [r2, #48]	; 0x30
 80005ae:	4a23      	ldr	r2, [pc, #140]	; (800063c <clock_PLL+0x180>)
 80005b0:	4b22      	ldr	r3, [pc, #136]	; (800063c <clock_PLL+0x180>)
 80005b2:	681b      	ldr	r3, [r3, #0]
 80005b4:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 80005b8:	6013      	str	r3, [r2, #0]
 80005ba:	4a20      	ldr	r2, [pc, #128]	; (800063c <clock_PLL+0x180>)
 80005bc:	4b1f      	ldr	r3, [pc, #124]	; (800063c <clock_PLL+0x180>)
 80005be:	681b      	ldr	r3, [r3, #0]
 80005c0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80005c4:	6013      	str	r3, [r2, #0]
 80005c6:	4a1e      	ldr	r2, [pc, #120]	; (8000640 <clock_PLL+0x184>)
 80005c8:	4b1d      	ldr	r3, [pc, #116]	; (8000640 <clock_PLL+0x184>)
 80005ca:	681b      	ldr	r3, [r3, #0]
 80005cc:	f423 2340 	bic.w	r3, r3, #786432	; 0xc0000
 80005d0:	6013      	str	r3, [r2, #0]
 80005d2:	4a1b      	ldr	r2, [pc, #108]	; (8000640 <clock_PLL+0x184>)
 80005d4:	4b1a      	ldr	r3, [pc, #104]	; (8000640 <clock_PLL+0x184>)
 80005d6:	681b      	ldr	r3, [r3, #0]
 80005d8:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 80005dc:	6013      	str	r3, [r2, #0]
 80005de:	4a17      	ldr	r2, [pc, #92]	; (800063c <clock_PLL+0x180>)
 80005e0:	4b16      	ldr	r3, [pc, #88]	; (800063c <clock_PLL+0x180>)
 80005e2:	689b      	ldr	r3, [r3, #8]
 80005e4:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 80005e8:	6093      	str	r3, [r2, #8]
 80005ea:	4a15      	ldr	r2, [pc, #84]	; (8000640 <clock_PLL+0x184>)
 80005ec:	4b14      	ldr	r3, [pc, #80]	; (8000640 <clock_PLL+0x184>)
 80005ee:	689b      	ldr	r3, [r3, #8]
 80005f0:	f443 2340 	orr.w	r3, r3, #786432	; 0xc0000
 80005f4:	6093      	str	r3, [r2, #8]
 80005f6:	4a0e      	ldr	r2, [pc, #56]	; (8000630 <clock_PLL+0x174>)
 80005f8:	4b0d      	ldr	r3, [pc, #52]	; (8000630 <clock_PLL+0x174>)
 80005fa:	689b      	ldr	r3, [r3, #8]
 80005fc:	f423 03c0 	bic.w	r3, r3, #6291456	; 0x600000
 8000600:	6093      	str	r3, [r2, #8]
 8000602:	4a0b      	ldr	r2, [pc, #44]	; (8000630 <clock_PLL+0x174>)
 8000604:	4b0a      	ldr	r3, [pc, #40]	; (8000630 <clock_PLL+0x174>)
 8000606:	689b      	ldr	r3, [r3, #8]
 8000608:	f443 03c0 	orr.w	r3, r3, #6291456	; 0x600000
 800060c:	6093      	str	r3, [r2, #8]
 800060e:	4a08      	ldr	r2, [pc, #32]	; (8000630 <clock_PLL+0x174>)
 8000610:	4b07      	ldr	r3, [pc, #28]	; (8000630 <clock_PLL+0x174>)
 8000612:	689b      	ldr	r3, [r3, #8]
 8000614:	f023 537c 	bic.w	r3, r3, #1056964608	; 0x3f000000
 8000618:	6093      	str	r3, [r2, #8]
 800061a:	4a05      	ldr	r2, [pc, #20]	; (8000630 <clock_PLL+0x174>)
 800061c:	4b04      	ldr	r3, [pc, #16]	; (8000630 <clock_PLL+0x174>)
 800061e:	689b      	ldr	r3, [r3, #8]
 8000620:	f043 5358 	orr.w	r3, r3, #905969664	; 0x36000000
 8000624:	6093      	str	r3, [r2, #8]
 8000626:	bf00      	nop
 8000628:	46bd      	mov	sp, r7
 800062a:	bc80      	pop	{r7}
 800062c:	4770      	bx	lr
 800062e:	bf00      	nop
 8000630:	40023800 	.word	0x40023800
 8000634:	f0fc8000 	.word	0xf0fc8000
 8000638:	40023c00 	.word	0x40023c00
 800063c:	40020000 	.word	0x40020000
 8000640:	40020800 	.word	0x40020800

08000644 <clock_HSE>:
 8000644:	b480      	push	{r7}
 8000646:	af00      	add	r7, sp, #0
 8000648:	4a2c      	ldr	r2, [pc, #176]	; (80006fc <clock_HSE+0xb8>)
 800064a:	4b2c      	ldr	r3, [pc, #176]	; (80006fc <clock_HSE+0xb8>)
 800064c:	681b      	ldr	r3, [r3, #0]
 800064e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000652:	6013      	str	r3, [r2, #0]
 8000654:	bf00      	nop
 8000656:	4b29      	ldr	r3, [pc, #164]	; (80006fc <clock_HSE+0xb8>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800065e:	2b00      	cmp	r3, #0
 8000660:	d0f9      	beq.n	8000656 <clock_HSE+0x12>
 8000662:	4a26      	ldr	r2, [pc, #152]	; (80006fc <clock_HSE+0xb8>)
 8000664:	4b25      	ldr	r3, [pc, #148]	; (80006fc <clock_HSE+0xb8>)
 8000666:	689b      	ldr	r3, [r3, #8]
 8000668:	f023 0303 	bic.w	r3, r3, #3
 800066c:	6093      	str	r3, [r2, #8]
 800066e:	4a23      	ldr	r2, [pc, #140]	; (80006fc <clock_HSE+0xb8>)
 8000670:	4b22      	ldr	r3, [pc, #136]	; (80006fc <clock_HSE+0xb8>)
 8000672:	689b      	ldr	r3, [r3, #8]
 8000674:	f043 0301 	orr.w	r3, r3, #1
 8000678:	6093      	str	r3, [r2, #8]
 800067a:	bf00      	nop
 800067c:	4b1f      	ldr	r3, [pc, #124]	; (80006fc <clock_HSE+0xb8>)
 800067e:	689b      	ldr	r3, [r3, #8]
 8000680:	f003 0304 	and.w	r3, r3, #4
 8000684:	2b00      	cmp	r3, #0
 8000686:	d0f9      	beq.n	800067c <clock_HSE+0x38>
 8000688:	4a1c      	ldr	r2, [pc, #112]	; (80006fc <clock_HSE+0xb8>)
 800068a:	4b1c      	ldr	r3, [pc, #112]	; (80006fc <clock_HSE+0xb8>)
 800068c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800068e:	f043 0305 	orr.w	r3, r3, #5
 8000692:	6313      	str	r3, [r2, #48]	; 0x30
 8000694:	4a1a      	ldr	r2, [pc, #104]	; (8000700 <clock_HSE+0xbc>)
 8000696:	4b1a      	ldr	r3, [pc, #104]	; (8000700 <clock_HSE+0xbc>)
 8000698:	681b      	ldr	r3, [r3, #0]
 800069a:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 800069e:	6013      	str	r3, [r2, #0]
 80006a0:	4a17      	ldr	r2, [pc, #92]	; (8000700 <clock_HSE+0xbc>)
 80006a2:	4b17      	ldr	r3, [pc, #92]	; (8000700 <clock_HSE+0xbc>)
 80006a4:	681b      	ldr	r3, [r3, #0]
 80006a6:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80006aa:	6013      	str	r3, [r2, #0]
 80006ac:	4a15      	ldr	r2, [pc, #84]	; (8000704 <clock_HSE+0xc0>)
 80006ae:	4b15      	ldr	r3, [pc, #84]	; (8000704 <clock_HSE+0xc0>)
 80006b0:	681b      	ldr	r3, [r3, #0]
 80006b2:	f423 2340 	bic.w	r3, r3, #786432	; 0xc0000
 80006b6:	6013      	str	r3, [r2, #0]
 80006b8:	4a12      	ldr	r2, [pc, #72]	; (8000704 <clock_HSE+0xc0>)
 80006ba:	4b12      	ldr	r3, [pc, #72]	; (8000704 <clock_HSE+0xc0>)
 80006bc:	681b      	ldr	r3, [r3, #0]
 80006be:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 80006c2:	6013      	str	r3, [r2, #0]
 80006c4:	4a0e      	ldr	r2, [pc, #56]	; (8000700 <clock_HSE+0xbc>)
 80006c6:	4b0e      	ldr	r3, [pc, #56]	; (8000700 <clock_HSE+0xbc>)
 80006c8:	689b      	ldr	r3, [r3, #8]
 80006ca:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 80006ce:	6093      	str	r3, [r2, #8]
 80006d0:	4a0c      	ldr	r2, [pc, #48]	; (8000704 <clock_HSE+0xc0>)
 80006d2:	4b0c      	ldr	r3, [pc, #48]	; (8000704 <clock_HSE+0xc0>)
 80006d4:	689b      	ldr	r3, [r3, #8]
 80006d6:	f443 2340 	orr.w	r3, r3, #786432	; 0xc0000
 80006da:	6093      	str	r3, [r2, #8]
 80006dc:	4a07      	ldr	r2, [pc, #28]	; (80006fc <clock_HSE+0xb8>)
 80006de:	4b07      	ldr	r3, [pc, #28]	; (80006fc <clock_HSE+0xb8>)
 80006e0:	689b      	ldr	r3, [r3, #8]
 80006e2:	f423 03c0 	bic.w	r3, r3, #6291456	; 0x600000
 80006e6:	6093      	str	r3, [r2, #8]
 80006e8:	4a04      	ldr	r2, [pc, #16]	; (80006fc <clock_HSE+0xb8>)
 80006ea:	4b04      	ldr	r3, [pc, #16]	; (80006fc <clock_HSE+0xb8>)
 80006ec:	689b      	ldr	r3, [r3, #8]
 80006ee:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 80006f2:	6093      	str	r3, [r2, #8]
 80006f4:	bf00      	nop
 80006f6:	46bd      	mov	sp, r7
 80006f8:	bc80      	pop	{r7}
 80006fa:	4770      	bx	lr
 80006fc:	40023800 	.word	0x40023800
 8000700:	40020000 	.word	0x40020000
 8000704:	40020800 	.word	0x40020800

08000708 <systimer_init>:
 8000708:	b480      	push	{r7}
 800070a:	af00      	add	r7, sp, #0
 800070c:	4b06      	ldr	r3, [pc, #24]	; (8000728 <systimer_init+0x20>)
 800070e:	f245 2207 	movw	r2, #20999	; 0x5207
 8000712:	605a      	str	r2, [r3, #4]
 8000714:	4b04      	ldr	r3, [pc, #16]	; (8000728 <systimer_init+0x20>)
 8000716:	2200      	movs	r2, #0
 8000718:	609a      	str	r2, [r3, #8]
 800071a:	4b03      	ldr	r3, [pc, #12]	; (8000728 <systimer_init+0x20>)
 800071c:	2203      	movs	r2, #3
 800071e:	601a      	str	r2, [r3, #0]
 8000720:	bf00      	nop
 8000722:	46bd      	mov	sp, r7
 8000724:	bc80      	pop	{r7}
 8000726:	4770      	bx	lr
 8000728:	e000e010 	.word	0xe000e010

0800072c <system_init>:
 800072c:	b580      	push	{r7, lr}
 800072e:	af00      	add	r7, sp, #0
 8000730:	f7ff fec4 	bl	80004bc <clock_PLL>
 8000734:	f7ff ffe8 	bl	8000708 <systimer_init>
 8000738:	4a36      	ldr	r2, [pc, #216]	; (8000814 <system_init+0xe8>)
 800073a:	4b36      	ldr	r3, [pc, #216]	; (8000814 <system_init+0xe8>)
 800073c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800073e:	f043 0301 	orr.w	r3, r3, #1
 8000742:	6313      	str	r3, [r2, #48]	; 0x30
 8000744:	4a34      	ldr	r2, [pc, #208]	; (8000818 <system_init+0xec>)
 8000746:	4b34      	ldr	r3, [pc, #208]	; (8000818 <system_init+0xec>)
 8000748:	681b      	ldr	r3, [r3, #0]
 800074a:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 800074e:	6013      	str	r3, [r2, #0]
 8000750:	4a31      	ldr	r2, [pc, #196]	; (8000818 <system_init+0xec>)
 8000752:	4b31      	ldr	r3, [pc, #196]	; (8000818 <system_init+0xec>)
 8000754:	681b      	ldr	r3, [r3, #0]
 8000756:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 800075a:	6013      	str	r3, [r2, #0]
 800075c:	4a2d      	ldr	r2, [pc, #180]	; (8000814 <system_init+0xe8>)
 800075e:	4b2d      	ldr	r3, [pc, #180]	; (8000814 <system_init+0xe8>)
 8000760:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000762:	f043 0310 	orr.w	r3, r3, #16
 8000766:	6313      	str	r3, [r2, #48]	; 0x30
 8000768:	4a2c      	ldr	r2, [pc, #176]	; (800081c <system_init+0xf0>)
 800076a:	4b2c      	ldr	r3, [pc, #176]	; (800081c <system_init+0xf0>)
 800076c:	681b      	ldr	r3, [r3, #0]
 800076e:	f423 237c 	bic.w	r3, r3, #1032192	; 0xfc000
 8000772:	6013      	str	r3, [r2, #0]
 8000774:	4a29      	ldr	r2, [pc, #164]	; (800081c <system_init+0xf0>)
 8000776:	4b29      	ldr	r3, [pc, #164]	; (800081c <system_init+0xf0>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	f443 23a8 	orr.w	r3, r3, #344064	; 0x54000
 800077e:	6013      	str	r3, [r2, #0]
 8000780:	4a24      	ldr	r2, [pc, #144]	; (8000814 <system_init+0xe8>)
 8000782:	4b24      	ldr	r3, [pc, #144]	; (8000814 <system_init+0xe8>)
 8000784:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000786:	f043 0308 	orr.w	r3, r3, #8
 800078a:	6313      	str	r3, [r2, #48]	; 0x30
 800078c:	4a24      	ldr	r2, [pc, #144]	; (8000820 <system_init+0xf4>)
 800078e:	4b24      	ldr	r3, [pc, #144]	; (8000820 <system_init+0xf4>)
 8000790:	681b      	ldr	r3, [r3, #0]
 8000792:	0c1b      	lsrs	r3, r3, #16
 8000794:	041b      	lsls	r3, r3, #16
 8000796:	6013      	str	r3, [r2, #0]
 8000798:	4a21      	ldr	r2, [pc, #132]	; (8000820 <system_init+0xf4>)
 800079a:	4b21      	ldr	r3, [pc, #132]	; (8000820 <system_init+0xf4>)
 800079c:	681b      	ldr	r3, [r3, #0]
 800079e:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 80007a2:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 80007a6:	6013      	str	r3, [r2, #0]
 80007a8:	2000      	movs	r0, #0
 80007aa:	f7ff fe39 	bl	8000420 <NVIC_SetPriorityGrouping>
 80007ae:	2106      	movs	r1, #6
 80007b0:	2034      	movs	r0, #52	; 0x34
 80007b2:	f7ff fe59 	bl	8000468 <NVIC_SetPriority>
 80007b6:	2105      	movs	r1, #5
 80007b8:	2027      	movs	r0, #39	; 0x27
 80007ba:	f7ff fe55 	bl	8000468 <NVIC_SetPriority>
 80007be:	2104      	movs	r1, #4
 80007c0:	201f      	movs	r0, #31
 80007c2:	f7ff fe51 	bl	8000468 <NVIC_SetPriority>
 80007c6:	2104      	movs	r1, #4
 80007c8:	2020      	movs	r0, #32
 80007ca:	f7ff fe4d 	bl	8000468 <NVIC_SetPriority>
 80007ce:	2103      	movs	r1, #3
 80007d0:	200f      	movs	r0, #15
 80007d2:	f7ff fe49 	bl	8000468 <NVIC_SetPriority>
 80007d6:	2103      	movs	r1, #3
 80007d8:	2023      	movs	r0, #35	; 0x23
 80007da:	f7ff fe45 	bl	8000468 <NVIC_SetPriority>
 80007de:	2102      	movs	r1, #2
 80007e0:	201d      	movs	r0, #29
 80007e2:	f7ff fe41 	bl	8000468 <NVIC_SetPriority>
 80007e6:	2101      	movs	r1, #1
 80007e8:	f04f 30ff 	mov.w	r0, #4294967295
 80007ec:	f7ff fe3c 	bl	8000468 <NVIC_SetPriority>
 80007f0:	2100      	movs	r1, #0
 80007f2:	2012      	movs	r0, #18
 80007f4:	f7ff fe38 	bl	8000468 <NVIC_SetPriority>
 80007f8:	4b0a      	ldr	r3, [pc, #40]	; (8000824 <system_init+0xf8>)
 80007fa:	f245 5255 	movw	r2, #21845	; 0x5555
 80007fe:	601a      	str	r2, [r3, #0]
 8000800:	4b08      	ldr	r3, [pc, #32]	; (8000824 <system_init+0xf8>)
 8000802:	220a      	movs	r2, #10
 8000804:	609a      	str	r2, [r3, #8]
 8000806:	4b07      	ldr	r3, [pc, #28]	; (8000824 <system_init+0xf8>)
 8000808:	f64c 42cc 	movw	r2, #52428	; 0xcccc
 800080c:	601a      	str	r2, [r3, #0]
 800080e:	bf00      	nop
 8000810:	bd80      	pop	{r7, pc}
 8000812:	bf00      	nop
 8000814:	40023800 	.word	0x40023800
 8000818:	40020000 	.word	0x40020000
 800081c:	40021000 	.word	0x40021000
 8000820:	40020c00 	.word	0x40020c00
 8000824:	40003000 	.word	0x40003000

08000828 <sleep>:
 8000828:	b480      	push	{r7}
 800082a:	b085      	sub	sp, #20
 800082c:	af00      	add	r7, sp, #0
 800082e:	6078      	str	r0, [r7, #4]
 8000830:	4b07      	ldr	r3, [pc, #28]	; (8000850 <sleep+0x28>)
 8000832:	681a      	ldr	r2, [r3, #0]
 8000834:	687b      	ldr	r3, [r7, #4]
 8000836:	4413      	add	r3, r2
 8000838:	60fb      	str	r3, [r7, #12]
 800083a:	bf00      	nop
 800083c:	4b04      	ldr	r3, [pc, #16]	; (8000850 <sleep+0x28>)
 800083e:	681a      	ldr	r2, [r3, #0]
 8000840:	68fb      	ldr	r3, [r7, #12]
 8000842:	429a      	cmp	r2, r3
 8000844:	d3fa      	bcc.n	800083c <sleep+0x14>
 8000846:	bf00      	nop
 8000848:	3714      	adds	r7, #20
 800084a:	46bd      	mov	sp, r7
 800084c:	bc80      	pop	{r7}
 800084e:	4770      	bx	lr
 8000850:	20000240 	.word	0x20000240

08000854 <SysTick_Handler>:
 8000854:	b480      	push	{r7}
 8000856:	af00      	add	r7, sp, #0
 8000858:	4b04      	ldr	r3, [pc, #16]	; (800086c <SysTick_Handler+0x18>)
 800085a:	681b      	ldr	r3, [r3, #0]
 800085c:	3301      	adds	r3, #1
 800085e:	4a03      	ldr	r2, [pc, #12]	; (800086c <SysTick_Handler+0x18>)
 8000860:	6013      	str	r3, [r2, #0]
 8000862:	bf00      	nop
 8000864:	46bd      	mov	sp, r7
 8000866:	bc80      	pop	{r7}
 8000868:	4770      	bx	lr
 800086a:	bf00      	nop
 800086c:	20000240 	.word	0x20000240

08000870 <handler_reset>:
 8000870:	b580      	push	{r7, lr}
 8000872:	b082      	sub	sp, #8
 8000874:	af00      	add	r7, sp, #0
 8000876:	4b11      	ldr	r3, [pc, #68]	; (80008bc <handler_reset+0x4c>)
 8000878:	607b      	str	r3, [r7, #4]
 800087a:	4b11      	ldr	r3, [pc, #68]	; (80008c0 <handler_reset+0x50>)
 800087c:	603b      	str	r3, [r7, #0]
 800087e:	e007      	b.n	8000890 <handler_reset+0x20>
 8000880:	683b      	ldr	r3, [r7, #0]
 8000882:	1d1a      	adds	r2, r3, #4
 8000884:	603a      	str	r2, [r7, #0]
 8000886:	687a      	ldr	r2, [r7, #4]
 8000888:	1d11      	adds	r1, r2, #4
 800088a:	6079      	str	r1, [r7, #4]
 800088c:	6812      	ldr	r2, [r2, #0]
 800088e:	601a      	str	r2, [r3, #0]
 8000890:	683b      	ldr	r3, [r7, #0]
 8000892:	4a0c      	ldr	r2, [pc, #48]	; (80008c4 <handler_reset+0x54>)
 8000894:	4293      	cmp	r3, r2
 8000896:	d3f3      	bcc.n	8000880 <handler_reset+0x10>
 8000898:	4b0b      	ldr	r3, [pc, #44]	; (80008c8 <handler_reset+0x58>)
 800089a:	603b      	str	r3, [r7, #0]
 800089c:	e004      	b.n	80008a8 <handler_reset+0x38>
 800089e:	683b      	ldr	r3, [r7, #0]
 80008a0:	1d1a      	adds	r2, r3, #4
 80008a2:	603a      	str	r2, [r7, #0]
 80008a4:	2200      	movs	r2, #0
 80008a6:	601a      	str	r2, [r3, #0]
 80008a8:	683b      	ldr	r3, [r7, #0]
 80008aa:	4a08      	ldr	r2, [pc, #32]	; (80008cc <handler_reset+0x5c>)
 80008ac:	4293      	cmp	r3, r2
 80008ae:	d3f6      	bcc.n	800089e <handler_reset+0x2e>
 80008b0:	f7ff fd5a 	bl	8000368 <main>
 80008b4:	bf00      	nop
 80008b6:	3708      	adds	r7, #8
 80008b8:	46bd      	mov	sp, r7
 80008ba:	bd80      	pop	{r7, pc}
 80008bc:	08004750 	.word	0x08004750
 80008c0:	20000000 	.word	0x20000000
 80008c4:	20000220 	.word	0x20000220
 80008c8:	20000220 	.word	0x20000220
 80008cc:	20002cd4 	.word	0x20002cd4

080008d0 <default_handler>:
 80008d0:	b480      	push	{r7}
 80008d2:	af00      	add	r7, sp, #0
 80008d4:	e7fe      	b.n	80008d4 <default_handler+0x4>
 80008d6:	bf00      	nop

080008d8 <NVIC_EnableIRQ>:
 80008d8:	b480      	push	{r7}
 80008da:	b083      	sub	sp, #12
 80008dc:	af00      	add	r7, sp, #0
 80008de:	4603      	mov	r3, r0
 80008e0:	71fb      	strb	r3, [r7, #7]
 80008e2:	4908      	ldr	r1, [pc, #32]	; (8000904 <NVIC_EnableIRQ+0x2c>)
 80008e4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80008e8:	095b      	lsrs	r3, r3, #5
 80008ea:	79fa      	ldrb	r2, [r7, #7]
 80008ec:	f002 021f 	and.w	r2, r2, #31
 80008f0:	2001      	movs	r0, #1
 80008f2:	fa00 f202 	lsl.w	r2, r0, r2
 80008f6:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80008fa:	bf00      	nop
 80008fc:	370c      	adds	r7, #12
 80008fe:	46bd      	mov	sp, r7
 8000900:	bc80      	pop	{r7}
 8000902:	4770      	bx	lr
 8000904:	e000e100 	.word	0xe000e100

08000908 <uart_init>:
 8000908:	b580      	push	{r7, lr}
 800090a:	af00      	add	r7, sp, #0
 800090c:	4a34      	ldr	r2, [pc, #208]	; (80009e0 <uart_init+0xd8>)
 800090e:	4b34      	ldr	r3, [pc, #208]	; (80009e0 <uart_init+0xd8>)
 8000910:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000912:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 8000916:	6413      	str	r3, [r2, #64]	; 0x40
 8000918:	4a32      	ldr	r2, [pc, #200]	; (80009e4 <uart_init+0xdc>)
 800091a:	4b32      	ldr	r3, [pc, #200]	; (80009e4 <uart_init+0xdc>)
 800091c:	899b      	ldrh	r3, [r3, #12]
 800091e:	b29b      	uxth	r3, r3
 8000920:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000924:	b29b      	uxth	r3, r3
 8000926:	8193      	strh	r3, [r2, #12]
 8000928:	4a2e      	ldr	r2, [pc, #184]	; (80009e4 <uart_init+0xdc>)
 800092a:	4b2e      	ldr	r3, [pc, #184]	; (80009e4 <uart_init+0xdc>)
 800092c:	899b      	ldrh	r3, [r3, #12]
 800092e:	b29b      	uxth	r3, r3
 8000930:	f043 0304 	orr.w	r3, r3, #4
 8000934:	b29b      	uxth	r3, r3
 8000936:	8193      	strh	r3, [r2, #12]
 8000938:	4a2a      	ldr	r2, [pc, #168]	; (80009e4 <uart_init+0xdc>)
 800093a:	4b2a      	ldr	r3, [pc, #168]	; (80009e4 <uart_init+0xdc>)
 800093c:	899b      	ldrh	r3, [r3, #12]
 800093e:	b29b      	uxth	r3, r3
 8000940:	f043 0320 	orr.w	r3, r3, #32
 8000944:	b29b      	uxth	r3, r3
 8000946:	8193      	strh	r3, [r2, #12]
 8000948:	4a26      	ldr	r2, [pc, #152]	; (80009e4 <uart_init+0xdc>)
 800094a:	4b26      	ldr	r3, [pc, #152]	; (80009e4 <uart_init+0xdc>)
 800094c:	899b      	ldrh	r3, [r3, #12]
 800094e:	b29b      	uxth	r3, r3
 8000950:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000954:	b29b      	uxth	r3, r3
 8000956:	8193      	strh	r3, [r2, #12]
 8000958:	2034      	movs	r0, #52	; 0x34
 800095a:	f7ff ffbd 	bl	80008d8 <NVIC_EnableIRQ>
 800095e:	4b21      	ldr	r3, [pc, #132]	; (80009e4 <uart_init+0xdc>)
 8000960:	891b      	ldrh	r3, [r3, #8]
 8000962:	4b20      	ldr	r3, [pc, #128]	; (80009e4 <uart_init+0xdc>)
 8000964:	2200      	movs	r2, #0
 8000966:	811a      	strh	r2, [r3, #8]
 8000968:	4a1e      	ldr	r2, [pc, #120]	; (80009e4 <uart_init+0xdc>)
 800096a:	4b1e      	ldr	r3, [pc, #120]	; (80009e4 <uart_init+0xdc>)
 800096c:	891b      	ldrh	r3, [r3, #8]
 800096e:	b29b      	uxth	r3, r3
 8000970:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8000974:	f043 0301 	orr.w	r3, r3, #1
 8000978:	b29b      	uxth	r3, r3
 800097a:	8113      	strh	r3, [r2, #8]
 800097c:	4a18      	ldr	r2, [pc, #96]	; (80009e0 <uart_init+0xd8>)
 800097e:	4b18      	ldr	r3, [pc, #96]	; (80009e0 <uart_init+0xd8>)
 8000980:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000982:	f043 0304 	orr.w	r3, r3, #4
 8000986:	6313      	str	r3, [r2, #48]	; 0x30
 8000988:	4a17      	ldr	r2, [pc, #92]	; (80009e8 <uart_init+0xe0>)
 800098a:	4b17      	ldr	r3, [pc, #92]	; (80009e8 <uart_init+0xe0>)
 800098c:	681b      	ldr	r3, [r3, #0]
 800098e:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8000992:	6013      	str	r3, [r2, #0]
 8000994:	4a14      	ldr	r2, [pc, #80]	; (80009e8 <uart_init+0xe0>)
 8000996:	4b14      	ldr	r3, [pc, #80]	; (80009e8 <uart_init+0xe0>)
 8000998:	681b      	ldr	r3, [r3, #0]
 800099a:	f443 0320 	orr.w	r3, r3, #10485760	; 0xa00000
 800099e:	6013      	str	r3, [r2, #0]
 80009a0:	4a11      	ldr	r2, [pc, #68]	; (80009e8 <uart_init+0xe0>)
 80009a2:	4b11      	ldr	r3, [pc, #68]	; (80009e8 <uart_init+0xe0>)
 80009a4:	689b      	ldr	r3, [r3, #8]
 80009a6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80009aa:	6093      	str	r3, [r2, #8]
 80009ac:	4a0e      	ldr	r2, [pc, #56]	; (80009e8 <uart_init+0xe0>)
 80009ae:	4b0e      	ldr	r3, [pc, #56]	; (80009e8 <uart_init+0xe0>)
 80009b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009b2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80009b6:	6253      	str	r3, [r2, #36]	; 0x24
 80009b8:	4a0b      	ldr	r2, [pc, #44]	; (80009e8 <uart_init+0xe0>)
 80009ba:	4b0b      	ldr	r3, [pc, #44]	; (80009e8 <uart_init+0xe0>)
 80009bc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009be:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80009c2:	6253      	str	r3, [r2, #36]	; 0x24
 80009c4:	4a08      	ldr	r2, [pc, #32]	; (80009e8 <uart_init+0xe0>)
 80009c6:	4b08      	ldr	r3, [pc, #32]	; (80009e8 <uart_init+0xe0>)
 80009c8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009ca:	f423 4370 	bic.w	r3, r3, #61440	; 0xf000
 80009ce:	6253      	str	r3, [r2, #36]	; 0x24
 80009d0:	4a05      	ldr	r2, [pc, #20]	; (80009e8 <uart_init+0xe0>)
 80009d2:	4b05      	ldr	r3, [pc, #20]	; (80009e8 <uart_init+0xe0>)
 80009d4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009d6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80009da:	6253      	str	r3, [r2, #36]	; 0x24
 80009dc:	bf00      	nop
 80009de:	bd80      	pop	{r7, pc}
 80009e0:	40023800 	.word	0x40023800
 80009e4:	40004c00 	.word	0x40004c00
 80009e8:	40020800 	.word	0x40020800

080009ec <uart_putch>:
 80009ec:	b480      	push	{r7}
 80009ee:	b083      	sub	sp, #12
 80009f0:	af00      	add	r7, sp, #0
 80009f2:	4603      	mov	r3, r0
 80009f4:	71fb      	strb	r3, [r7, #7]
 80009f6:	4b13      	ldr	r3, [pc, #76]	; (8000a44 <uart_putch+0x58>)
 80009f8:	681a      	ldr	r2, [r3, #0]
 80009fa:	4b13      	ldr	r3, [pc, #76]	; (8000a48 <uart_putch+0x5c>)
 80009fc:	681b      	ldr	r3, [r3, #0]
 80009fe:	429a      	cmp	r2, r3
 8000a00:	d107      	bne.n	8000a12 <uart_putch+0x26>
 8000a02:	4a12      	ldr	r2, [pc, #72]	; (8000a4c <uart_putch+0x60>)
 8000a04:	4b11      	ldr	r3, [pc, #68]	; (8000a4c <uart_putch+0x60>)
 8000a06:	899b      	ldrh	r3, [r3, #12]
 8000a08:	b29b      	uxth	r3, r3
 8000a0a:	f043 0308 	orr.w	r3, r3, #8
 8000a0e:	b29b      	uxth	r3, r3
 8000a10:	8193      	strh	r3, [r2, #12]
 8000a12:	4b0c      	ldr	r3, [pc, #48]	; (8000a44 <uart_putch+0x58>)
 8000a14:	681b      	ldr	r3, [r3, #0]
 8000a16:	490e      	ldr	r1, [pc, #56]	; (8000a50 <uart_putch+0x64>)
 8000a18:	79fa      	ldrb	r2, [r7, #7]
 8000a1a:	54ca      	strb	r2, [r1, r3]
 8000a1c:	4b09      	ldr	r3, [pc, #36]	; (8000a44 <uart_putch+0x58>)
 8000a1e:	681b      	ldr	r3, [r3, #0]
 8000a20:	3301      	adds	r3, #1
 8000a22:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000a26:	4a07      	ldr	r2, [pc, #28]	; (8000a44 <uart_putch+0x58>)
 8000a28:	6013      	str	r3, [r2, #0]
 8000a2a:	4a08      	ldr	r2, [pc, #32]	; (8000a4c <uart_putch+0x60>)
 8000a2c:	4b07      	ldr	r3, [pc, #28]	; (8000a4c <uart_putch+0x60>)
 8000a2e:	899b      	ldrh	r3, [r3, #12]
 8000a30:	b29b      	uxth	r3, r3
 8000a32:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000a36:	b29b      	uxth	r3, r3
 8000a38:	8193      	strh	r3, [r2, #12]
 8000a3a:	bf00      	nop
 8000a3c:	370c      	adds	r7, #12
 8000a3e:	46bd      	mov	sp, r7
 8000a40:	bc80      	pop	{r7}
 8000a42:	4770      	bx	lr
 8000a44:	20000648 	.word	0x20000648
 8000a48:	20000644 	.word	0x20000644
 8000a4c:	40004c00 	.word	0x40004c00
 8000a50:	20000244 	.word	0x20000244

08000a54 <uart_send>:
 8000a54:	b480      	push	{r7}
 8000a56:	b085      	sub	sp, #20
 8000a58:	af00      	add	r7, sp, #0
 8000a5a:	6078      	str	r0, [r7, #4]
 8000a5c:	6039      	str	r1, [r7, #0]
 8000a5e:	4b1f      	ldr	r3, [pc, #124]	; (8000adc <uart_send+0x88>)
 8000a60:	681a      	ldr	r2, [r3, #0]
 8000a62:	4b1f      	ldr	r3, [pc, #124]	; (8000ae0 <uart_send+0x8c>)
 8000a64:	681b      	ldr	r3, [r3, #0]
 8000a66:	429a      	cmp	r2, r3
 8000a68:	d107      	bne.n	8000a7a <uart_send+0x26>
 8000a6a:	4a1e      	ldr	r2, [pc, #120]	; (8000ae4 <uart_send+0x90>)
 8000a6c:	4b1d      	ldr	r3, [pc, #116]	; (8000ae4 <uart_send+0x90>)
 8000a6e:	899b      	ldrh	r3, [r3, #12]
 8000a70:	b29b      	uxth	r3, r3
 8000a72:	f043 0308 	orr.w	r3, r3, #8
 8000a76:	b29b      	uxth	r3, r3
 8000a78:	8193      	strh	r3, [r2, #12]
 8000a7a:	2300      	movs	r3, #0
 8000a7c:	60fb      	str	r3, [r7, #12]
 8000a7e:	e01b      	b.n	8000ab8 <uart_send+0x64>
 8000a80:	4b16      	ldr	r3, [pc, #88]	; (8000adc <uart_send+0x88>)
 8000a82:	681b      	ldr	r3, [r3, #0]
 8000a84:	68fa      	ldr	r2, [r7, #12]
 8000a86:	6879      	ldr	r1, [r7, #4]
 8000a88:	440a      	add	r2, r1
 8000a8a:	7811      	ldrb	r1, [r2, #0]
 8000a8c:	4a16      	ldr	r2, [pc, #88]	; (8000ae8 <uart_send+0x94>)
 8000a8e:	54d1      	strb	r1, [r2, r3]
 8000a90:	4b12      	ldr	r3, [pc, #72]	; (8000adc <uart_send+0x88>)
 8000a92:	681b      	ldr	r3, [r3, #0]
 8000a94:	3301      	adds	r3, #1
 8000a96:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000a9a:	4a10      	ldr	r2, [pc, #64]	; (8000adc <uart_send+0x88>)
 8000a9c:	6013      	str	r3, [r2, #0]
 8000a9e:	4b0f      	ldr	r3, [pc, #60]	; (8000adc <uart_send+0x88>)
 8000aa0:	681a      	ldr	r2, [r3, #0]
 8000aa2:	4b0f      	ldr	r3, [pc, #60]	; (8000ae0 <uart_send+0x8c>)
 8000aa4:	681b      	ldr	r3, [r3, #0]
 8000aa6:	429a      	cmp	r2, r3
 8000aa8:	d103      	bne.n	8000ab2 <uart_send+0x5e>
 8000aaa:	68fb      	ldr	r3, [r7, #12]
 8000aac:	3301      	adds	r3, #1
 8000aae:	60fb      	str	r3, [r7, #12]
 8000ab0:	e006      	b.n	8000ac0 <uart_send+0x6c>
 8000ab2:	68fb      	ldr	r3, [r7, #12]
 8000ab4:	3301      	adds	r3, #1
 8000ab6:	60fb      	str	r3, [r7, #12]
 8000ab8:	68fa      	ldr	r2, [r7, #12]
 8000aba:	683b      	ldr	r3, [r7, #0]
 8000abc:	429a      	cmp	r2, r3
 8000abe:	dbdf      	blt.n	8000a80 <uart_send+0x2c>
 8000ac0:	4a08      	ldr	r2, [pc, #32]	; (8000ae4 <uart_send+0x90>)
 8000ac2:	4b08      	ldr	r3, [pc, #32]	; (8000ae4 <uart_send+0x90>)
 8000ac4:	899b      	ldrh	r3, [r3, #12]
 8000ac6:	b29b      	uxth	r3, r3
 8000ac8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000acc:	b29b      	uxth	r3, r3
 8000ace:	8193      	strh	r3, [r2, #12]
 8000ad0:	68fb      	ldr	r3, [r7, #12]
 8000ad2:	4618      	mov	r0, r3
 8000ad4:	3714      	adds	r7, #20
 8000ad6:	46bd      	mov	sp, r7
 8000ad8:	bc80      	pop	{r7}
 8000ada:	4770      	bx	lr
 8000adc:	20000648 	.word	0x20000648
 8000ae0:	20000644 	.word	0x20000644
 8000ae4:	40004c00 	.word	0x40004c00
 8000ae8:	20000244 	.word	0x20000244

08000aec <uart_send_str>:
 8000aec:	b480      	push	{r7}
 8000aee:	b085      	sub	sp, #20
 8000af0:	af00      	add	r7, sp, #0
 8000af2:	6078      	str	r0, [r7, #4]
 8000af4:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000af8:	60bb      	str	r3, [r7, #8]
 8000afa:	4b24      	ldr	r3, [pc, #144]	; (8000b8c <uart_send_str+0xa0>)
 8000afc:	681a      	ldr	r2, [r3, #0]
 8000afe:	4b24      	ldr	r3, [pc, #144]	; (8000b90 <uart_send_str+0xa4>)
 8000b00:	681b      	ldr	r3, [r3, #0]
 8000b02:	1ad3      	subs	r3, r2, r3
 8000b04:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000b08:	68ba      	ldr	r2, [r7, #8]
 8000b0a:	1ad3      	subs	r3, r2, r3
 8000b0c:	60bb      	str	r3, [r7, #8]
 8000b0e:	4b1f      	ldr	r3, [pc, #124]	; (8000b8c <uart_send_str+0xa0>)
 8000b10:	681a      	ldr	r2, [r3, #0]
 8000b12:	4b1f      	ldr	r3, [pc, #124]	; (8000b90 <uart_send_str+0xa4>)
 8000b14:	681b      	ldr	r3, [r3, #0]
 8000b16:	429a      	cmp	r2, r3
 8000b18:	d107      	bne.n	8000b2a <uart_send_str+0x3e>
 8000b1a:	4a1e      	ldr	r2, [pc, #120]	; (8000b94 <uart_send_str+0xa8>)
 8000b1c:	4b1d      	ldr	r3, [pc, #116]	; (8000b94 <uart_send_str+0xa8>)
 8000b1e:	899b      	ldrh	r3, [r3, #12]
 8000b20:	b29b      	uxth	r3, r3
 8000b22:	f043 0308 	orr.w	r3, r3, #8
 8000b26:	b29b      	uxth	r3, r3
 8000b28:	8193      	strh	r3, [r2, #12]
 8000b2a:	2300      	movs	r3, #0
 8000b2c:	60fb      	str	r3, [r7, #12]
 8000b2e:	e01b      	b.n	8000b68 <uart_send_str+0x7c>
 8000b30:	68fb      	ldr	r3, [r7, #12]
 8000b32:	687a      	ldr	r2, [r7, #4]
 8000b34:	4413      	add	r3, r2
 8000b36:	781b      	ldrb	r3, [r3, #0]
 8000b38:	2b00      	cmp	r3, #0
 8000b3a:	d103      	bne.n	8000b44 <uart_send_str+0x58>
 8000b3c:	68fb      	ldr	r3, [r7, #12]
 8000b3e:	3301      	adds	r3, #1
 8000b40:	60fb      	str	r3, [r7, #12]
 8000b42:	e015      	b.n	8000b70 <uart_send_str+0x84>
 8000b44:	4b11      	ldr	r3, [pc, #68]	; (8000b8c <uart_send_str+0xa0>)
 8000b46:	681b      	ldr	r3, [r3, #0]
 8000b48:	68fa      	ldr	r2, [r7, #12]
 8000b4a:	6879      	ldr	r1, [r7, #4]
 8000b4c:	440a      	add	r2, r1
 8000b4e:	7811      	ldrb	r1, [r2, #0]
 8000b50:	4a11      	ldr	r2, [pc, #68]	; (8000b98 <uart_send_str+0xac>)
 8000b52:	54d1      	strb	r1, [r2, r3]
 8000b54:	4b0d      	ldr	r3, [pc, #52]	; (8000b8c <uart_send_str+0xa0>)
 8000b56:	681b      	ldr	r3, [r3, #0]
 8000b58:	3301      	adds	r3, #1
 8000b5a:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000b5e:	4a0b      	ldr	r2, [pc, #44]	; (8000b8c <uart_send_str+0xa0>)
 8000b60:	6013      	str	r3, [r2, #0]
 8000b62:	68fb      	ldr	r3, [r7, #12]
 8000b64:	3301      	adds	r3, #1
 8000b66:	60fb      	str	r3, [r7, #12]
 8000b68:	68fa      	ldr	r2, [r7, #12]
 8000b6a:	68bb      	ldr	r3, [r7, #8]
 8000b6c:	429a      	cmp	r2, r3
 8000b6e:	dbdf      	blt.n	8000b30 <uart_send_str+0x44>
 8000b70:	4a08      	ldr	r2, [pc, #32]	; (8000b94 <uart_send_str+0xa8>)
 8000b72:	4b08      	ldr	r3, [pc, #32]	; (8000b94 <uart_send_str+0xa8>)
 8000b74:	899b      	ldrh	r3, [r3, #12]
 8000b76:	b29b      	uxth	r3, r3
 8000b78:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000b7c:	b29b      	uxth	r3, r3
 8000b7e:	8193      	strh	r3, [r2, #12]
 8000b80:	68fb      	ldr	r3, [r7, #12]
 8000b82:	4618      	mov	r0, r3
 8000b84:	3714      	adds	r7, #20
 8000b86:	46bd      	mov	sp, r7
 8000b88:	bc80      	pop	{r7}
 8000b8a:	4770      	bx	lr
 8000b8c:	20000648 	.word	0x20000648
 8000b90:	20000644 	.word	0x20000644
 8000b94:	40004c00 	.word	0x40004c00
 8000b98:	20000244 	.word	0x20000244

08000b9c <uart_read>:
 8000b9c:	b480      	push	{r7}
 8000b9e:	b085      	sub	sp, #20
 8000ba0:	af00      	add	r7, sp, #0
 8000ba2:	6078      	str	r0, [r7, #4]
 8000ba4:	6039      	str	r1, [r7, #0]
 8000ba6:	4b18      	ldr	r3, [pc, #96]	; (8000c08 <uart_read+0x6c>)
 8000ba8:	681a      	ldr	r2, [r3, #0]
 8000baa:	4b18      	ldr	r3, [pc, #96]	; (8000c0c <uart_read+0x70>)
 8000bac:	681b      	ldr	r3, [r3, #0]
 8000bae:	429a      	cmp	r2, r3
 8000bb0:	d101      	bne.n	8000bb6 <uart_read+0x1a>
 8000bb2:	2300      	movs	r3, #0
 8000bb4:	e023      	b.n	8000bfe <uart_read+0x62>
 8000bb6:	2300      	movs	r3, #0
 8000bb8:	60fb      	str	r3, [r7, #12]
 8000bba:	e01b      	b.n	8000bf4 <uart_read+0x58>
 8000bbc:	68fb      	ldr	r3, [r7, #12]
 8000bbe:	687a      	ldr	r2, [r7, #4]
 8000bc0:	4413      	add	r3, r2
 8000bc2:	4a11      	ldr	r2, [pc, #68]	; (8000c08 <uart_read+0x6c>)
 8000bc4:	6812      	ldr	r2, [r2, #0]
 8000bc6:	4912      	ldr	r1, [pc, #72]	; (8000c10 <uart_read+0x74>)
 8000bc8:	5c8a      	ldrb	r2, [r1, r2]
 8000bca:	701a      	strb	r2, [r3, #0]
 8000bcc:	4b0e      	ldr	r3, [pc, #56]	; (8000c08 <uart_read+0x6c>)
 8000bce:	681b      	ldr	r3, [r3, #0]
 8000bd0:	3301      	adds	r3, #1
 8000bd2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000bd6:	4a0c      	ldr	r2, [pc, #48]	; (8000c08 <uart_read+0x6c>)
 8000bd8:	6013      	str	r3, [r2, #0]
 8000bda:	4b0b      	ldr	r3, [pc, #44]	; (8000c08 <uart_read+0x6c>)
 8000bdc:	681a      	ldr	r2, [r3, #0]
 8000bde:	4b0b      	ldr	r3, [pc, #44]	; (8000c0c <uart_read+0x70>)
 8000be0:	681b      	ldr	r3, [r3, #0]
 8000be2:	429a      	cmp	r2, r3
 8000be4:	d103      	bne.n	8000bee <uart_read+0x52>
 8000be6:	68fb      	ldr	r3, [r7, #12]
 8000be8:	3301      	adds	r3, #1
 8000bea:	60fb      	str	r3, [r7, #12]
 8000bec:	e006      	b.n	8000bfc <uart_read+0x60>
 8000bee:	68fb      	ldr	r3, [r7, #12]
 8000bf0:	3301      	adds	r3, #1
 8000bf2:	60fb      	str	r3, [r7, #12]
 8000bf4:	68fa      	ldr	r2, [r7, #12]
 8000bf6:	683b      	ldr	r3, [r7, #0]
 8000bf8:	429a      	cmp	r2, r3
 8000bfa:	dbdf      	blt.n	8000bbc <uart_read+0x20>
 8000bfc:	68fb      	ldr	r3, [r7, #12]
 8000bfe:	4618      	mov	r0, r3
 8000c00:	3714      	adds	r7, #20
 8000c02:	46bd      	mov	sp, r7
 8000c04:	bc80      	pop	{r7}
 8000c06:	4770      	bx	lr
 8000c08:	20000a50 	.word	0x20000a50
 8000c0c:	20000a4c 	.word	0x20000a4c
 8000c10:	2000064c 	.word	0x2000064c

08000c14 <UART4_IRQHandler>:
 8000c14:	b480      	push	{r7}
 8000c16:	af00      	add	r7, sp, #0
 8000c18:	4b1e      	ldr	r3, [pc, #120]	; (8000c94 <UART4_IRQHandler+0x80>)
 8000c1a:	881b      	ldrh	r3, [r3, #0]
 8000c1c:	b29b      	uxth	r3, r3
 8000c1e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000c22:	2b00      	cmp	r3, #0
 8000c24:	d01c      	beq.n	8000c60 <UART4_IRQHandler+0x4c>
 8000c26:	4b1c      	ldr	r3, [pc, #112]	; (8000c98 <UART4_IRQHandler+0x84>)
 8000c28:	681a      	ldr	r2, [r3, #0]
 8000c2a:	4b1c      	ldr	r3, [pc, #112]	; (8000c9c <UART4_IRQHandler+0x88>)
 8000c2c:	681b      	ldr	r3, [r3, #0]
 8000c2e:	429a      	cmp	r2, r3
 8000c30:	d108      	bne.n	8000c44 <UART4_IRQHandler+0x30>
 8000c32:	4a18      	ldr	r2, [pc, #96]	; (8000c94 <UART4_IRQHandler+0x80>)
 8000c34:	4b17      	ldr	r3, [pc, #92]	; (8000c94 <UART4_IRQHandler+0x80>)
 8000c36:	899b      	ldrh	r3, [r3, #12]
 8000c38:	b29b      	uxth	r3, r3
 8000c3a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000c3e:	b29b      	uxth	r3, r3
 8000c40:	8193      	strh	r3, [r2, #12]
 8000c42:	e00d      	b.n	8000c60 <UART4_IRQHandler+0x4c>
 8000c44:	4a13      	ldr	r2, [pc, #76]	; (8000c94 <UART4_IRQHandler+0x80>)
 8000c46:	4b14      	ldr	r3, [pc, #80]	; (8000c98 <UART4_IRQHandler+0x84>)
 8000c48:	681b      	ldr	r3, [r3, #0]
 8000c4a:	4915      	ldr	r1, [pc, #84]	; (8000ca0 <UART4_IRQHandler+0x8c>)
 8000c4c:	5ccb      	ldrb	r3, [r1, r3]
 8000c4e:	b29b      	uxth	r3, r3
 8000c50:	8093      	strh	r3, [r2, #4]
 8000c52:	4b11      	ldr	r3, [pc, #68]	; (8000c98 <UART4_IRQHandler+0x84>)
 8000c54:	681b      	ldr	r3, [r3, #0]
 8000c56:	3301      	adds	r3, #1
 8000c58:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c5c:	4a0e      	ldr	r2, [pc, #56]	; (8000c98 <UART4_IRQHandler+0x84>)
 8000c5e:	6013      	str	r3, [r2, #0]
 8000c60:	4b0c      	ldr	r3, [pc, #48]	; (8000c94 <UART4_IRQHandler+0x80>)
 8000c62:	881b      	ldrh	r3, [r3, #0]
 8000c64:	b29b      	uxth	r3, r3
 8000c66:	f003 0320 	and.w	r3, r3, #32
 8000c6a:	2b00      	cmp	r3, #0
 8000c6c:	d00e      	beq.n	8000c8c <UART4_IRQHandler+0x78>
 8000c6e:	4b0d      	ldr	r3, [pc, #52]	; (8000ca4 <UART4_IRQHandler+0x90>)
 8000c70:	681b      	ldr	r3, [r3, #0]
 8000c72:	4a08      	ldr	r2, [pc, #32]	; (8000c94 <UART4_IRQHandler+0x80>)
 8000c74:	8892      	ldrh	r2, [r2, #4]
 8000c76:	b292      	uxth	r2, r2
 8000c78:	b2d1      	uxtb	r1, r2
 8000c7a:	4a0b      	ldr	r2, [pc, #44]	; (8000ca8 <UART4_IRQHandler+0x94>)
 8000c7c:	54d1      	strb	r1, [r2, r3]
 8000c7e:	4b09      	ldr	r3, [pc, #36]	; (8000ca4 <UART4_IRQHandler+0x90>)
 8000c80:	681b      	ldr	r3, [r3, #0]
 8000c82:	3301      	adds	r3, #1
 8000c84:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c88:	4a06      	ldr	r2, [pc, #24]	; (8000ca4 <UART4_IRQHandler+0x90>)
 8000c8a:	6013      	str	r3, [r2, #0]
 8000c8c:	bf00      	nop
 8000c8e:	46bd      	mov	sp, r7
 8000c90:	bc80      	pop	{r7}
 8000c92:	4770      	bx	lr
 8000c94:	40004c00 	.word	0x40004c00
 8000c98:	20000644 	.word	0x20000644
 8000c9c:	20000648 	.word	0x20000648
 8000ca0:	20000244 	.word	0x20000244
 8000ca4:	20000a4c 	.word	0x20000a4c
 8000ca8:	2000064c 	.word	0x2000064c

08000cac <xputc>:
 8000cac:	b580      	push	{r7, lr}
 8000cae:	b082      	sub	sp, #8
 8000cb0:	af00      	add	r7, sp, #0
 8000cb2:	4603      	mov	r3, r0
 8000cb4:	71fb      	strb	r3, [r7, #7]
 8000cb6:	79fb      	ldrb	r3, [r7, #7]
 8000cb8:	2b0a      	cmp	r3, #10
 8000cba:	d102      	bne.n	8000cc2 <xputc+0x16>
 8000cbc:	200d      	movs	r0, #13
 8000cbe:	f7ff fff5 	bl	8000cac <xputc>
 8000cc2:	4b0c      	ldr	r3, [pc, #48]	; (8000cf4 <xputc+0x48>)
 8000cc4:	681b      	ldr	r3, [r3, #0]
 8000cc6:	2b00      	cmp	r3, #0
 8000cc8:	d007      	beq.n	8000cda <xputc+0x2e>
 8000cca:	4b0a      	ldr	r3, [pc, #40]	; (8000cf4 <xputc+0x48>)
 8000ccc:	681b      	ldr	r3, [r3, #0]
 8000cce:	1c5a      	adds	r2, r3, #1
 8000cd0:	4908      	ldr	r1, [pc, #32]	; (8000cf4 <xputc+0x48>)
 8000cd2:	600a      	str	r2, [r1, #0]
 8000cd4:	79fa      	ldrb	r2, [r7, #7]
 8000cd6:	701a      	strb	r2, [r3, #0]
 8000cd8:	e008      	b.n	8000cec <xputc+0x40>
 8000cda:	4b07      	ldr	r3, [pc, #28]	; (8000cf8 <xputc+0x4c>)
 8000cdc:	681b      	ldr	r3, [r3, #0]
 8000cde:	2b00      	cmp	r3, #0
 8000ce0:	d004      	beq.n	8000cec <xputc+0x40>
 8000ce2:	4b05      	ldr	r3, [pc, #20]	; (8000cf8 <xputc+0x4c>)
 8000ce4:	681b      	ldr	r3, [r3, #0]
 8000ce6:	79fa      	ldrb	r2, [r7, #7]
 8000ce8:	4610      	mov	r0, r2
 8000cea:	4798      	blx	r3
 8000cec:	3708      	adds	r7, #8
 8000cee:	46bd      	mov	sp, r7
 8000cf0:	bd80      	pop	{r7, pc}
 8000cf2:	bf00      	nop
 8000cf4:	20000a58 	.word	0x20000a58
 8000cf8:	20000a54 	.word	0x20000a54

08000cfc <xputs>:
 8000cfc:	b580      	push	{r7, lr}
 8000cfe:	b082      	sub	sp, #8
 8000d00:	af00      	add	r7, sp, #0
 8000d02:	6078      	str	r0, [r7, #4]
 8000d04:	e006      	b.n	8000d14 <xputs+0x18>
 8000d06:	687b      	ldr	r3, [r7, #4]
 8000d08:	1c5a      	adds	r2, r3, #1
 8000d0a:	607a      	str	r2, [r7, #4]
 8000d0c:	781b      	ldrb	r3, [r3, #0]
 8000d0e:	4618      	mov	r0, r3
 8000d10:	f7ff ffcc 	bl	8000cac <xputc>
 8000d14:	687b      	ldr	r3, [r7, #4]
 8000d16:	781b      	ldrb	r3, [r3, #0]
 8000d18:	2b00      	cmp	r3, #0
 8000d1a:	d1f4      	bne.n	8000d06 <xputs+0xa>
 8000d1c:	bf00      	nop
 8000d1e:	3708      	adds	r7, #8
 8000d20:	46bd      	mov	sp, r7
 8000d22:	bd80      	pop	{r7, pc}

08000d24 <xfputs>:
 8000d24:	b580      	push	{r7, lr}
 8000d26:	b084      	sub	sp, #16
 8000d28:	af00      	add	r7, sp, #0
 8000d2a:	6078      	str	r0, [r7, #4]
 8000d2c:	6039      	str	r1, [r7, #0]
 8000d2e:	4b0c      	ldr	r3, [pc, #48]	; (8000d60 <xfputs+0x3c>)
 8000d30:	681b      	ldr	r3, [r3, #0]
 8000d32:	60fb      	str	r3, [r7, #12]
 8000d34:	4a0a      	ldr	r2, [pc, #40]	; (8000d60 <xfputs+0x3c>)
 8000d36:	687b      	ldr	r3, [r7, #4]
 8000d38:	6013      	str	r3, [r2, #0]
 8000d3a:	e006      	b.n	8000d4a <xfputs+0x26>
 8000d3c:	683b      	ldr	r3, [r7, #0]
 8000d3e:	1c5a      	adds	r2, r3, #1
 8000d40:	603a      	str	r2, [r7, #0]
 8000d42:	781b      	ldrb	r3, [r3, #0]
 8000d44:	4618      	mov	r0, r3
 8000d46:	f7ff ffb1 	bl	8000cac <xputc>
 8000d4a:	683b      	ldr	r3, [r7, #0]
 8000d4c:	781b      	ldrb	r3, [r3, #0]
 8000d4e:	2b00      	cmp	r3, #0
 8000d50:	d1f4      	bne.n	8000d3c <xfputs+0x18>
 8000d52:	4a03      	ldr	r2, [pc, #12]	; (8000d60 <xfputs+0x3c>)
 8000d54:	68fb      	ldr	r3, [r7, #12]
 8000d56:	6013      	str	r3, [r2, #0]
 8000d58:	bf00      	nop
 8000d5a:	3710      	adds	r7, #16
 8000d5c:	46bd      	mov	sp, r7
 8000d5e:	bd80      	pop	{r7, pc}
 8000d60:	20000a54 	.word	0x20000a54

08000d64 <xvprintf>:
 8000d64:	b580      	push	{r7, lr}
 8000d66:	b08e      	sub	sp, #56	; 0x38
 8000d68:	af00      	add	r7, sp, #0
 8000d6a:	6078      	str	r0, [r7, #4]
 8000d6c:	6039      	str	r1, [r7, #0]
 8000d6e:	687b      	ldr	r3, [r7, #4]
 8000d70:	1c5a      	adds	r2, r3, #1
 8000d72:	607a      	str	r2, [r7, #4]
 8000d74:	781b      	ldrb	r3, [r3, #0]
 8000d76:	77fb      	strb	r3, [r7, #31]
 8000d78:	7ffb      	ldrb	r3, [r7, #31]
 8000d7a:	2b00      	cmp	r3, #0
 8000d7c:	f000 8167 	beq.w	800104e <xvprintf+0x2ea>
 8000d80:	7ffb      	ldrb	r3, [r7, #31]
 8000d82:	2b25      	cmp	r3, #37	; 0x25
 8000d84:	d004      	beq.n	8000d90 <xvprintf+0x2c>
 8000d86:	7ffb      	ldrb	r3, [r7, #31]
 8000d88:	4618      	mov	r0, r3
 8000d8a:	f7ff ff8f 	bl	8000cac <xputc>
 8000d8e:	e15d      	b.n	800104c <xvprintf+0x2e8>
 8000d90:	2300      	movs	r3, #0
 8000d92:	627b      	str	r3, [r7, #36]	; 0x24
 8000d94:	687b      	ldr	r3, [r7, #4]
 8000d96:	1c5a      	adds	r2, r3, #1
 8000d98:	607a      	str	r2, [r7, #4]
 8000d9a:	781b      	ldrb	r3, [r3, #0]
 8000d9c:	77fb      	strb	r3, [r7, #31]
 8000d9e:	7ffb      	ldrb	r3, [r7, #31]
 8000da0:	2b30      	cmp	r3, #48	; 0x30
 8000da2:	d107      	bne.n	8000db4 <xvprintf+0x50>
 8000da4:	2301      	movs	r3, #1
 8000da6:	627b      	str	r3, [r7, #36]	; 0x24
 8000da8:	687b      	ldr	r3, [r7, #4]
 8000daa:	1c5a      	adds	r2, r3, #1
 8000dac:	607a      	str	r2, [r7, #4]
 8000dae:	781b      	ldrb	r3, [r3, #0]
 8000db0:	77fb      	strb	r3, [r7, #31]
 8000db2:	e009      	b.n	8000dc8 <xvprintf+0x64>
 8000db4:	7ffb      	ldrb	r3, [r7, #31]
 8000db6:	2b2d      	cmp	r3, #45	; 0x2d
 8000db8:	d106      	bne.n	8000dc8 <xvprintf+0x64>
 8000dba:	2302      	movs	r3, #2
 8000dbc:	627b      	str	r3, [r7, #36]	; 0x24
 8000dbe:	687b      	ldr	r3, [r7, #4]
 8000dc0:	1c5a      	adds	r2, r3, #1
 8000dc2:	607a      	str	r2, [r7, #4]
 8000dc4:	781b      	ldrb	r3, [r3, #0]
 8000dc6:	77fb      	strb	r3, [r7, #31]
 8000dc8:	2300      	movs	r3, #0
 8000dca:	62bb      	str	r3, [r7, #40]	; 0x28
 8000dcc:	e00e      	b.n	8000dec <xvprintf+0x88>
 8000dce:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000dd0:	4613      	mov	r3, r2
 8000dd2:	009b      	lsls	r3, r3, #2
 8000dd4:	4413      	add	r3, r2
 8000dd6:	005b      	lsls	r3, r3, #1
 8000dd8:	461a      	mov	r2, r3
 8000dda:	7ffb      	ldrb	r3, [r7, #31]
 8000ddc:	4413      	add	r3, r2
 8000dde:	3b30      	subs	r3, #48	; 0x30
 8000de0:	62bb      	str	r3, [r7, #40]	; 0x28
 8000de2:	687b      	ldr	r3, [r7, #4]
 8000de4:	1c5a      	adds	r2, r3, #1
 8000de6:	607a      	str	r2, [r7, #4]
 8000de8:	781b      	ldrb	r3, [r3, #0]
 8000dea:	77fb      	strb	r3, [r7, #31]
 8000dec:	7ffb      	ldrb	r3, [r7, #31]
 8000dee:	2b2f      	cmp	r3, #47	; 0x2f
 8000df0:	d902      	bls.n	8000df8 <xvprintf+0x94>
 8000df2:	7ffb      	ldrb	r3, [r7, #31]
 8000df4:	2b39      	cmp	r3, #57	; 0x39
 8000df6:	d9ea      	bls.n	8000dce <xvprintf+0x6a>
 8000df8:	7ffb      	ldrb	r3, [r7, #31]
 8000dfa:	2b6c      	cmp	r3, #108	; 0x6c
 8000dfc:	d002      	beq.n	8000e04 <xvprintf+0xa0>
 8000dfe:	7ffb      	ldrb	r3, [r7, #31]
 8000e00:	2b4c      	cmp	r3, #76	; 0x4c
 8000e02:	d108      	bne.n	8000e16 <xvprintf+0xb2>
 8000e04:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000e06:	f043 0304 	orr.w	r3, r3, #4
 8000e0a:	627b      	str	r3, [r7, #36]	; 0x24
 8000e0c:	687b      	ldr	r3, [r7, #4]
 8000e0e:	1c5a      	adds	r2, r3, #1
 8000e10:	607a      	str	r2, [r7, #4]
 8000e12:	781b      	ldrb	r3, [r3, #0]
 8000e14:	77fb      	strb	r3, [r7, #31]
 8000e16:	7ffb      	ldrb	r3, [r7, #31]
 8000e18:	2b00      	cmp	r3, #0
 8000e1a:	f000 811a 	beq.w	8001052 <xvprintf+0x2ee>
 8000e1e:	7ffb      	ldrb	r3, [r7, #31]
 8000e20:	77bb      	strb	r3, [r7, #30]
 8000e22:	7fbb      	ldrb	r3, [r7, #30]
 8000e24:	2b60      	cmp	r3, #96	; 0x60
 8000e26:	d902      	bls.n	8000e2e <xvprintf+0xca>
 8000e28:	7fbb      	ldrb	r3, [r7, #30]
 8000e2a:	3b20      	subs	r3, #32
 8000e2c:	77bb      	strb	r3, [r7, #30]
 8000e2e:	7fbb      	ldrb	r3, [r7, #30]
 8000e30:	3b42      	subs	r3, #66	; 0x42
 8000e32:	2b16      	cmp	r3, #22
 8000e34:	d873      	bhi.n	8000f1e <xvprintf+0x1ba>
 8000e36:	a201      	add	r2, pc, #4	; (adr r2, 8000e3c <xvprintf+0xd8>)
 8000e38:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000e3c:	08000f07 	.word	0x08000f07
 8000e40:	08000ef5 	.word	0x08000ef5
 8000e44:	08000f13 	.word	0x08000f13
 8000e48:	08000f1f 	.word	0x08000f1f
 8000e4c:	08000f1f 	.word	0x08000f1f
 8000e50:	08000f1f 	.word	0x08000f1f
 8000e54:	08000f1f 	.word	0x08000f1f
 8000e58:	08000f1f 	.word	0x08000f1f
 8000e5c:	08000f1f 	.word	0x08000f1f
 8000e60:	08000f1f 	.word	0x08000f1f
 8000e64:	08000f1f 	.word	0x08000f1f
 8000e68:	08000f1f 	.word	0x08000f1f
 8000e6c:	08000f1f 	.word	0x08000f1f
 8000e70:	08000f0d 	.word	0x08000f0d
 8000e74:	08000f1f 	.word	0x08000f1f
 8000e78:	08000f1f 	.word	0x08000f1f
 8000e7c:	08000f1f 	.word	0x08000f1f
 8000e80:	08000e99 	.word	0x08000e99
 8000e84:	08000f1f 	.word	0x08000f1f
 8000e88:	08000f13 	.word	0x08000f13
 8000e8c:	08000f1f 	.word	0x08000f1f
 8000e90:	08000f1f 	.word	0x08000f1f
 8000e94:	08000f19 	.word	0x08000f19
 8000e98:	683b      	ldr	r3, [r7, #0]
 8000e9a:	1d1a      	adds	r2, r3, #4
 8000e9c:	603a      	str	r2, [r7, #0]
 8000e9e:	681b      	ldr	r3, [r3, #0]
 8000ea0:	61bb      	str	r3, [r7, #24]
 8000ea2:	2300      	movs	r3, #0
 8000ea4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000ea6:	e002      	b.n	8000eae <xvprintf+0x14a>
 8000ea8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000eaa:	3301      	adds	r3, #1
 8000eac:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000eae:	69ba      	ldr	r2, [r7, #24]
 8000eb0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000eb2:	4413      	add	r3, r2
 8000eb4:	781b      	ldrb	r3, [r3, #0]
 8000eb6:	2b00      	cmp	r3, #0
 8000eb8:	d1f6      	bne.n	8000ea8 <xvprintf+0x144>
 8000eba:	e002      	b.n	8000ec2 <xvprintf+0x15e>
 8000ebc:	2020      	movs	r0, #32
 8000ebe:	f7ff fef5 	bl	8000cac <xputc>
 8000ec2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000ec4:	f003 0302 	and.w	r3, r3, #2
 8000ec8:	2b00      	cmp	r3, #0
 8000eca:	d105      	bne.n	8000ed8 <xvprintf+0x174>
 8000ecc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ece:	1c5a      	adds	r2, r3, #1
 8000ed0:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ed2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ed4:	4293      	cmp	r3, r2
 8000ed6:	d3f1      	bcc.n	8000ebc <xvprintf+0x158>
 8000ed8:	69b8      	ldr	r0, [r7, #24]
 8000eda:	f7ff ff0f 	bl	8000cfc <xputs>
 8000ede:	e002      	b.n	8000ee6 <xvprintf+0x182>
 8000ee0:	2020      	movs	r0, #32
 8000ee2:	f7ff fee3 	bl	8000cac <xputc>
 8000ee6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ee8:	1c5a      	adds	r2, r3, #1
 8000eea:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000eec:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000eee:	4293      	cmp	r3, r2
 8000ef0:	d3f6      	bcc.n	8000ee0 <xvprintf+0x17c>
 8000ef2:	e0ab      	b.n	800104c <xvprintf+0x2e8>
 8000ef4:	683b      	ldr	r3, [r7, #0]
 8000ef6:	1d1a      	adds	r2, r3, #4
 8000ef8:	603a      	str	r2, [r7, #0]
 8000efa:	681b      	ldr	r3, [r3, #0]
 8000efc:	b2db      	uxtb	r3, r3
 8000efe:	4618      	mov	r0, r3
 8000f00:	f7ff fed4 	bl	8000cac <xputc>
 8000f04:	e0a2      	b.n	800104c <xvprintf+0x2e8>
 8000f06:	2302      	movs	r3, #2
 8000f08:	637b      	str	r3, [r7, #52]	; 0x34
 8000f0a:	e00d      	b.n	8000f28 <xvprintf+0x1c4>
 8000f0c:	2308      	movs	r3, #8
 8000f0e:	637b      	str	r3, [r7, #52]	; 0x34
 8000f10:	e00a      	b.n	8000f28 <xvprintf+0x1c4>
 8000f12:	230a      	movs	r3, #10
 8000f14:	637b      	str	r3, [r7, #52]	; 0x34
 8000f16:	e007      	b.n	8000f28 <xvprintf+0x1c4>
 8000f18:	2310      	movs	r3, #16
 8000f1a:	637b      	str	r3, [r7, #52]	; 0x34
 8000f1c:	e004      	b.n	8000f28 <xvprintf+0x1c4>
 8000f1e:	7ffb      	ldrb	r3, [r7, #31]
 8000f20:	4618      	mov	r0, r3
 8000f22:	f7ff fec3 	bl	8000cac <xputc>
 8000f26:	e091      	b.n	800104c <xvprintf+0x2e8>
 8000f28:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f2a:	f003 0304 	and.w	r3, r3, #4
 8000f2e:	2b00      	cmp	r3, #0
 8000f30:	d004      	beq.n	8000f3c <xvprintf+0x1d8>
 8000f32:	683b      	ldr	r3, [r7, #0]
 8000f34:	1d1a      	adds	r2, r3, #4
 8000f36:	603a      	str	r2, [r7, #0]
 8000f38:	681b      	ldr	r3, [r3, #0]
 8000f3a:	e00b      	b.n	8000f54 <xvprintf+0x1f0>
 8000f3c:	7fbb      	ldrb	r3, [r7, #30]
 8000f3e:	2b44      	cmp	r3, #68	; 0x44
 8000f40:	d104      	bne.n	8000f4c <xvprintf+0x1e8>
 8000f42:	683b      	ldr	r3, [r7, #0]
 8000f44:	1d1a      	adds	r2, r3, #4
 8000f46:	603a      	str	r2, [r7, #0]
 8000f48:	681b      	ldr	r3, [r3, #0]
 8000f4a:	e003      	b.n	8000f54 <xvprintf+0x1f0>
 8000f4c:	683b      	ldr	r3, [r7, #0]
 8000f4e:	1d1a      	adds	r2, r3, #4
 8000f50:	603a      	str	r2, [r7, #0]
 8000f52:	681b      	ldr	r3, [r3, #0]
 8000f54:	623b      	str	r3, [r7, #32]
 8000f56:	7fbb      	ldrb	r3, [r7, #30]
 8000f58:	2b44      	cmp	r3, #68	; 0x44
 8000f5a:	d109      	bne.n	8000f70 <xvprintf+0x20c>
 8000f5c:	6a3b      	ldr	r3, [r7, #32]
 8000f5e:	2b00      	cmp	r3, #0
 8000f60:	da06      	bge.n	8000f70 <xvprintf+0x20c>
 8000f62:	6a3b      	ldr	r3, [r7, #32]
 8000f64:	425b      	negs	r3, r3
 8000f66:	623b      	str	r3, [r7, #32]
 8000f68:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f6a:	f043 0308 	orr.w	r3, r3, #8
 8000f6e:	627b      	str	r3, [r7, #36]	; 0x24
 8000f70:	2300      	movs	r3, #0
 8000f72:	633b      	str	r3, [r7, #48]	; 0x30
 8000f74:	6a3b      	ldr	r3, [r7, #32]
 8000f76:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8000f78:	fbb3 f2f2 	udiv	r2, r3, r2
 8000f7c:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8000f7e:	fb01 f202 	mul.w	r2, r1, r2
 8000f82:	1a9b      	subs	r3, r3, r2
 8000f84:	77bb      	strb	r3, [r7, #30]
 8000f86:	6a3a      	ldr	r2, [r7, #32]
 8000f88:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f8a:	fbb2 f3f3 	udiv	r3, r2, r3
 8000f8e:	623b      	str	r3, [r7, #32]
 8000f90:	7fbb      	ldrb	r3, [r7, #30]
 8000f92:	2b09      	cmp	r3, #9
 8000f94:	d908      	bls.n	8000fa8 <xvprintf+0x244>
 8000f96:	7ffb      	ldrb	r3, [r7, #31]
 8000f98:	2b78      	cmp	r3, #120	; 0x78
 8000f9a:	d101      	bne.n	8000fa0 <xvprintf+0x23c>
 8000f9c:	2227      	movs	r2, #39	; 0x27
 8000f9e:	e000      	b.n	8000fa2 <xvprintf+0x23e>
 8000fa0:	2207      	movs	r2, #7
 8000fa2:	7fbb      	ldrb	r3, [r7, #30]
 8000fa4:	4413      	add	r3, r2
 8000fa6:	77bb      	strb	r3, [r7, #30]
 8000fa8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000faa:	1c5a      	adds	r2, r3, #1
 8000fac:	633a      	str	r2, [r7, #48]	; 0x30
 8000fae:	7fba      	ldrb	r2, [r7, #30]
 8000fb0:	3230      	adds	r2, #48	; 0x30
 8000fb2:	b2d2      	uxtb	r2, r2
 8000fb4:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8000fb8:	440b      	add	r3, r1
 8000fba:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fbe:	6a3b      	ldr	r3, [r7, #32]
 8000fc0:	2b00      	cmp	r3, #0
 8000fc2:	d002      	beq.n	8000fca <xvprintf+0x266>
 8000fc4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fc6:	2b0f      	cmp	r3, #15
 8000fc8:	d9d4      	bls.n	8000f74 <xvprintf+0x210>
 8000fca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fcc:	f003 0308 	and.w	r3, r3, #8
 8000fd0:	2b00      	cmp	r3, #0
 8000fd2:	d008      	beq.n	8000fe6 <xvprintf+0x282>
 8000fd4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fd6:	1c5a      	adds	r2, r3, #1
 8000fd8:	633a      	str	r2, [r7, #48]	; 0x30
 8000fda:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000fde:	4413      	add	r3, r2
 8000fe0:	222d      	movs	r2, #45	; 0x2d
 8000fe2:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fe6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fe8:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000fea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fec:	f003 0301 	and.w	r3, r3, #1
 8000ff0:	2b00      	cmp	r3, #0
 8000ff2:	d001      	beq.n	8000ff8 <xvprintf+0x294>
 8000ff4:	2330      	movs	r3, #48	; 0x30
 8000ff6:	e000      	b.n	8000ffa <xvprintf+0x296>
 8000ff8:	2320      	movs	r3, #32
 8000ffa:	77bb      	strb	r3, [r7, #30]
 8000ffc:	e003      	b.n	8001006 <xvprintf+0x2a2>
 8000ffe:	7fbb      	ldrb	r3, [r7, #30]
 8001000:	4618      	mov	r0, r3
 8001002:	f7ff fe53 	bl	8000cac <xputc>
 8001006:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001008:	f003 0302 	and.w	r3, r3, #2
 800100c:	2b00      	cmp	r3, #0
 800100e:	d105      	bne.n	800101c <xvprintf+0x2b8>
 8001010:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001012:	1c5a      	adds	r2, r3, #1
 8001014:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001016:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001018:	4293      	cmp	r3, r2
 800101a:	d3f0      	bcc.n	8000ffe <xvprintf+0x29a>
 800101c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800101e:	3b01      	subs	r3, #1
 8001020:	633b      	str	r3, [r7, #48]	; 0x30
 8001022:	f107 0208 	add.w	r2, r7, #8
 8001026:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001028:	4413      	add	r3, r2
 800102a:	781b      	ldrb	r3, [r3, #0]
 800102c:	4618      	mov	r0, r3
 800102e:	f7ff fe3d 	bl	8000cac <xputc>
 8001032:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001034:	2b00      	cmp	r3, #0
 8001036:	d1f1      	bne.n	800101c <xvprintf+0x2b8>
 8001038:	e002      	b.n	8001040 <xvprintf+0x2dc>
 800103a:	2020      	movs	r0, #32
 800103c:	f7ff fe36 	bl	8000cac <xputc>
 8001040:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001042:	1c5a      	adds	r2, r3, #1
 8001044:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001046:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001048:	4293      	cmp	r3, r2
 800104a:	d3f6      	bcc.n	800103a <xvprintf+0x2d6>
 800104c:	e68f      	b.n	8000d6e <xvprintf+0xa>
 800104e:	bf00      	nop
 8001050:	e000      	b.n	8001054 <xvprintf+0x2f0>
 8001052:	bf00      	nop
 8001054:	bf00      	nop
 8001056:	3738      	adds	r7, #56	; 0x38
 8001058:	46bd      	mov	sp, r7
 800105a:	bd80      	pop	{r7, pc}

0800105c <xprintf>:
 800105c:	b40f      	push	{r0, r1, r2, r3}
 800105e:	b580      	push	{r7, lr}
 8001060:	b082      	sub	sp, #8
 8001062:	af00      	add	r7, sp, #0
 8001064:	f107 0314 	add.w	r3, r7, #20
 8001068:	607b      	str	r3, [r7, #4]
 800106a:	6879      	ldr	r1, [r7, #4]
 800106c:	6938      	ldr	r0, [r7, #16]
 800106e:	f7ff fe79 	bl	8000d64 <xvprintf>
 8001072:	bf00      	nop
 8001074:	3708      	adds	r7, #8
 8001076:	46bd      	mov	sp, r7
 8001078:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800107c:	b004      	add	sp, #16
 800107e:	4770      	bx	lr

08001080 <xsprintf>:
 8001080:	b40e      	push	{r1, r2, r3}
 8001082:	b580      	push	{r7, lr}
 8001084:	b085      	sub	sp, #20
 8001086:	af00      	add	r7, sp, #0
 8001088:	6078      	str	r0, [r7, #4]
 800108a:	4a0c      	ldr	r2, [pc, #48]	; (80010bc <xsprintf+0x3c>)
 800108c:	687b      	ldr	r3, [r7, #4]
 800108e:	6013      	str	r3, [r2, #0]
 8001090:	f107 0320 	add.w	r3, r7, #32
 8001094:	60fb      	str	r3, [r7, #12]
 8001096:	68f9      	ldr	r1, [r7, #12]
 8001098:	69f8      	ldr	r0, [r7, #28]
 800109a:	f7ff fe63 	bl	8000d64 <xvprintf>
 800109e:	4b07      	ldr	r3, [pc, #28]	; (80010bc <xsprintf+0x3c>)
 80010a0:	681b      	ldr	r3, [r3, #0]
 80010a2:	2200      	movs	r2, #0
 80010a4:	701a      	strb	r2, [r3, #0]
 80010a6:	4b05      	ldr	r3, [pc, #20]	; (80010bc <xsprintf+0x3c>)
 80010a8:	2200      	movs	r2, #0
 80010aa:	601a      	str	r2, [r3, #0]
 80010ac:	bf00      	nop
 80010ae:	3714      	adds	r7, #20
 80010b0:	46bd      	mov	sp, r7
 80010b2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010b6:	b003      	add	sp, #12
 80010b8:	4770      	bx	lr
 80010ba:	bf00      	nop
 80010bc:	20000a58 	.word	0x20000a58

080010c0 <xfprintf>:
 80010c0:	b40e      	push	{r1, r2, r3}
 80010c2:	b580      	push	{r7, lr}
 80010c4:	b085      	sub	sp, #20
 80010c6:	af00      	add	r7, sp, #0
 80010c8:	6078      	str	r0, [r7, #4]
 80010ca:	4b0b      	ldr	r3, [pc, #44]	; (80010f8 <xfprintf+0x38>)
 80010cc:	681b      	ldr	r3, [r3, #0]
 80010ce:	60fb      	str	r3, [r7, #12]
 80010d0:	4a09      	ldr	r2, [pc, #36]	; (80010f8 <xfprintf+0x38>)
 80010d2:	687b      	ldr	r3, [r7, #4]
 80010d4:	6013      	str	r3, [r2, #0]
 80010d6:	f107 0320 	add.w	r3, r7, #32
 80010da:	60bb      	str	r3, [r7, #8]
 80010dc:	68b9      	ldr	r1, [r7, #8]
 80010de:	69f8      	ldr	r0, [r7, #28]
 80010e0:	f7ff fe40 	bl	8000d64 <xvprintf>
 80010e4:	4a04      	ldr	r2, [pc, #16]	; (80010f8 <xfprintf+0x38>)
 80010e6:	68fb      	ldr	r3, [r7, #12]
 80010e8:	6013      	str	r3, [r2, #0]
 80010ea:	bf00      	nop
 80010ec:	3714      	adds	r7, #20
 80010ee:	46bd      	mov	sp, r7
 80010f0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010f4:	b003      	add	sp, #12
 80010f6:	4770      	bx	lr
 80010f8:	20000a54 	.word	0x20000a54

080010fc <put_dump>:
 80010fc:	b580      	push	{r7, lr}
 80010fe:	b088      	sub	sp, #32
 8001100:	af00      	add	r7, sp, #0
 8001102:	60f8      	str	r0, [r7, #12]
 8001104:	60b9      	str	r1, [r7, #8]
 8001106:	607a      	str	r2, [r7, #4]
 8001108:	603b      	str	r3, [r7, #0]
 800110a:	68b9      	ldr	r1, [r7, #8]
 800110c:	4834      	ldr	r0, [pc, #208]	; (80011e0 <put_dump+0xe4>)
 800110e:	f7ff ffa5 	bl	800105c <xprintf>
 8001112:	683b      	ldr	r3, [r7, #0]
 8001114:	2b02      	cmp	r3, #2
 8001116:	d03a      	beq.n	800118e <put_dump+0x92>
 8001118:	2b04      	cmp	r3, #4
 800111a:	d049      	beq.n	80011b0 <put_dump+0xb4>
 800111c:	2b01      	cmp	r3, #1
 800111e:	d158      	bne.n	80011d2 <put_dump+0xd6>
 8001120:	68fb      	ldr	r3, [r7, #12]
 8001122:	613b      	str	r3, [r7, #16]
 8001124:	2300      	movs	r3, #0
 8001126:	61fb      	str	r3, [r7, #28]
 8001128:	e00a      	b.n	8001140 <put_dump+0x44>
 800112a:	69fb      	ldr	r3, [r7, #28]
 800112c:	693a      	ldr	r2, [r7, #16]
 800112e:	4413      	add	r3, r2
 8001130:	781b      	ldrb	r3, [r3, #0]
 8001132:	4619      	mov	r1, r3
 8001134:	482b      	ldr	r0, [pc, #172]	; (80011e4 <put_dump+0xe8>)
 8001136:	f7ff ff91 	bl	800105c <xprintf>
 800113a:	69fb      	ldr	r3, [r7, #28]
 800113c:	3301      	adds	r3, #1
 800113e:	61fb      	str	r3, [r7, #28]
 8001140:	69fa      	ldr	r2, [r7, #28]
 8001142:	687b      	ldr	r3, [r7, #4]
 8001144:	429a      	cmp	r2, r3
 8001146:	dbf0      	blt.n	800112a <put_dump+0x2e>
 8001148:	2020      	movs	r0, #32
 800114a:	f7ff fdaf 	bl	8000cac <xputc>
 800114e:	2300      	movs	r3, #0
 8001150:	61fb      	str	r3, [r7, #28]
 8001152:	e017      	b.n	8001184 <put_dump+0x88>
 8001154:	69fb      	ldr	r3, [r7, #28]
 8001156:	693a      	ldr	r2, [r7, #16]
 8001158:	4413      	add	r3, r2
 800115a:	781b      	ldrb	r3, [r3, #0]
 800115c:	2b1f      	cmp	r3, #31
 800115e:	d90a      	bls.n	8001176 <put_dump+0x7a>
 8001160:	69fb      	ldr	r3, [r7, #28]
 8001162:	693a      	ldr	r2, [r7, #16]
 8001164:	4413      	add	r3, r2
 8001166:	781b      	ldrb	r3, [r3, #0]
 8001168:	2b7e      	cmp	r3, #126	; 0x7e
 800116a:	d804      	bhi.n	8001176 <put_dump+0x7a>
 800116c:	69fb      	ldr	r3, [r7, #28]
 800116e:	693a      	ldr	r2, [r7, #16]
 8001170:	4413      	add	r3, r2
 8001172:	781b      	ldrb	r3, [r3, #0]
 8001174:	e000      	b.n	8001178 <put_dump+0x7c>
 8001176:	232e      	movs	r3, #46	; 0x2e
 8001178:	4618      	mov	r0, r3
 800117a:	f7ff fd97 	bl	8000cac <xputc>
 800117e:	69fb      	ldr	r3, [r7, #28]
 8001180:	3301      	adds	r3, #1
 8001182:	61fb      	str	r3, [r7, #28]
 8001184:	69fa      	ldr	r2, [r7, #28]
 8001186:	687b      	ldr	r3, [r7, #4]
 8001188:	429a      	cmp	r2, r3
 800118a:	dbe3      	blt.n	8001154 <put_dump+0x58>
 800118c:	e021      	b.n	80011d2 <put_dump+0xd6>
 800118e:	68fb      	ldr	r3, [r7, #12]
 8001190:	61bb      	str	r3, [r7, #24]
 8001192:	69bb      	ldr	r3, [r7, #24]
 8001194:	1c9a      	adds	r2, r3, #2
 8001196:	61ba      	str	r2, [r7, #24]
 8001198:	881b      	ldrh	r3, [r3, #0]
 800119a:	4619      	mov	r1, r3
 800119c:	4812      	ldr	r0, [pc, #72]	; (80011e8 <put_dump+0xec>)
 800119e:	f7ff ff5d 	bl	800105c <xprintf>
 80011a2:	687b      	ldr	r3, [r7, #4]
 80011a4:	3b01      	subs	r3, #1
 80011a6:	607b      	str	r3, [r7, #4]
 80011a8:	687b      	ldr	r3, [r7, #4]
 80011aa:	2b00      	cmp	r3, #0
 80011ac:	d1f1      	bne.n	8001192 <put_dump+0x96>
 80011ae:	e010      	b.n	80011d2 <put_dump+0xd6>
 80011b0:	68fb      	ldr	r3, [r7, #12]
 80011b2:	617b      	str	r3, [r7, #20]
 80011b4:	697b      	ldr	r3, [r7, #20]
 80011b6:	1d1a      	adds	r2, r3, #4
 80011b8:	617a      	str	r2, [r7, #20]
 80011ba:	681b      	ldr	r3, [r3, #0]
 80011bc:	4619      	mov	r1, r3
 80011be:	480b      	ldr	r0, [pc, #44]	; (80011ec <put_dump+0xf0>)
 80011c0:	f7ff ff4c 	bl	800105c <xprintf>
 80011c4:	687b      	ldr	r3, [r7, #4]
 80011c6:	3b01      	subs	r3, #1
 80011c8:	607b      	str	r3, [r7, #4]
 80011ca:	687b      	ldr	r3, [r7, #4]
 80011cc:	2b00      	cmp	r3, #0
 80011ce:	d1f1      	bne.n	80011b4 <put_dump+0xb8>
 80011d0:	bf00      	nop
 80011d2:	200a      	movs	r0, #10
 80011d4:	f7ff fd6a 	bl	8000cac <xputc>
 80011d8:	bf00      	nop
 80011da:	3720      	adds	r7, #32
 80011dc:	46bd      	mov	sp, r7
 80011de:	bd80      	pop	{r7, pc}
 80011e0:	08003890 	.word	0x08003890
 80011e4:	08003898 	.word	0x08003898
 80011e8:	080038a0 	.word	0x080038a0
 80011ec:	080038a8 	.word	0x080038a8

080011f0 <xgets>:
 80011f0:	b580      	push	{r7, lr}
 80011f2:	b084      	sub	sp, #16
 80011f4:	af00      	add	r7, sp, #0
 80011f6:	6078      	str	r0, [r7, #4]
 80011f8:	6039      	str	r1, [r7, #0]
 80011fa:	4b24      	ldr	r3, [pc, #144]	; (800128c <xgets+0x9c>)
 80011fc:	681b      	ldr	r3, [r3, #0]
 80011fe:	2b00      	cmp	r3, #0
 8001200:	d101      	bne.n	8001206 <xgets+0x16>
 8001202:	2300      	movs	r3, #0
 8001204:	e03e      	b.n	8001284 <xgets+0x94>
 8001206:	2300      	movs	r3, #0
 8001208:	60fb      	str	r3, [r7, #12]
 800120a:	4b20      	ldr	r3, [pc, #128]	; (800128c <xgets+0x9c>)
 800120c:	681b      	ldr	r3, [r3, #0]
 800120e:	4798      	blx	r3
 8001210:	4603      	mov	r3, r0
 8001212:	60bb      	str	r3, [r7, #8]
 8001214:	68bb      	ldr	r3, [r7, #8]
 8001216:	2b00      	cmp	r3, #0
 8001218:	d101      	bne.n	800121e <xgets+0x2e>
 800121a:	2300      	movs	r3, #0
 800121c:	e032      	b.n	8001284 <xgets+0x94>
 800121e:	68bb      	ldr	r3, [r7, #8]
 8001220:	2b0d      	cmp	r3, #13
 8001222:	d025      	beq.n	8001270 <xgets+0x80>
 8001224:	68bb      	ldr	r3, [r7, #8]
 8001226:	2b08      	cmp	r3, #8
 8001228:	d10b      	bne.n	8001242 <xgets+0x52>
 800122a:	68fb      	ldr	r3, [r7, #12]
 800122c:	2b00      	cmp	r3, #0
 800122e:	d008      	beq.n	8001242 <xgets+0x52>
 8001230:	68fb      	ldr	r3, [r7, #12]
 8001232:	3b01      	subs	r3, #1
 8001234:	60fb      	str	r3, [r7, #12]
 8001236:	68bb      	ldr	r3, [r7, #8]
 8001238:	b2db      	uxtb	r3, r3
 800123a:	4618      	mov	r0, r3
 800123c:	f7ff fd36 	bl	8000cac <xputc>
 8001240:	e015      	b.n	800126e <xgets+0x7e>
 8001242:	68bb      	ldr	r3, [r7, #8]
 8001244:	2b1f      	cmp	r3, #31
 8001246:	dde0      	ble.n	800120a <xgets+0x1a>
 8001248:	683b      	ldr	r3, [r7, #0]
 800124a:	1e5a      	subs	r2, r3, #1
 800124c:	68fb      	ldr	r3, [r7, #12]
 800124e:	429a      	cmp	r2, r3
 8001250:	dddb      	ble.n	800120a <xgets+0x1a>
 8001252:	68fb      	ldr	r3, [r7, #12]
 8001254:	1c5a      	adds	r2, r3, #1
 8001256:	60fa      	str	r2, [r7, #12]
 8001258:	461a      	mov	r2, r3
 800125a:	687b      	ldr	r3, [r7, #4]
 800125c:	4413      	add	r3, r2
 800125e:	68ba      	ldr	r2, [r7, #8]
 8001260:	b2d2      	uxtb	r2, r2
 8001262:	701a      	strb	r2, [r3, #0]
 8001264:	68bb      	ldr	r3, [r7, #8]
 8001266:	b2db      	uxtb	r3, r3
 8001268:	4618      	mov	r0, r3
 800126a:	f7ff fd1f 	bl	8000cac <xputc>
 800126e:	e7cc      	b.n	800120a <xgets+0x1a>
 8001270:	bf00      	nop
 8001272:	68fb      	ldr	r3, [r7, #12]
 8001274:	687a      	ldr	r2, [r7, #4]
 8001276:	4413      	add	r3, r2
 8001278:	2200      	movs	r2, #0
 800127a:	701a      	strb	r2, [r3, #0]
 800127c:	200a      	movs	r0, #10
 800127e:	f7ff fd15 	bl	8000cac <xputc>
 8001282:	2301      	movs	r3, #1
 8001284:	4618      	mov	r0, r3
 8001286:	3710      	adds	r7, #16
 8001288:	46bd      	mov	sp, r7
 800128a:	bd80      	pop	{r7, pc}
 800128c:	20000a5c 	.word	0x20000a5c

08001290 <xfgets>:
 8001290:	b580      	push	{r7, lr}
 8001292:	b086      	sub	sp, #24
 8001294:	af00      	add	r7, sp, #0
 8001296:	60f8      	str	r0, [r7, #12]
 8001298:	60b9      	str	r1, [r7, #8]
 800129a:	607a      	str	r2, [r7, #4]
 800129c:	4b09      	ldr	r3, [pc, #36]	; (80012c4 <xfgets+0x34>)
 800129e:	681b      	ldr	r3, [r3, #0]
 80012a0:	617b      	str	r3, [r7, #20]
 80012a2:	4a08      	ldr	r2, [pc, #32]	; (80012c4 <xfgets+0x34>)
 80012a4:	68fb      	ldr	r3, [r7, #12]
 80012a6:	6013      	str	r3, [r2, #0]
 80012a8:	6879      	ldr	r1, [r7, #4]
 80012aa:	68b8      	ldr	r0, [r7, #8]
 80012ac:	f7ff ffa0 	bl	80011f0 <xgets>
 80012b0:	6138      	str	r0, [r7, #16]
 80012b2:	4a04      	ldr	r2, [pc, #16]	; (80012c4 <xfgets+0x34>)
 80012b4:	697b      	ldr	r3, [r7, #20]
 80012b6:	6013      	str	r3, [r2, #0]
 80012b8:	693b      	ldr	r3, [r7, #16]
 80012ba:	4618      	mov	r0, r3
 80012bc:	3718      	adds	r7, #24
 80012be:	46bd      	mov	sp, r7
 80012c0:	bd80      	pop	{r7, pc}
 80012c2:	bf00      	nop
 80012c4:	20000a5c 	.word	0x20000a5c

080012c8 <xatoi>:
 80012c8:	b480      	push	{r7}
 80012ca:	b085      	sub	sp, #20
 80012cc:	af00      	add	r7, sp, #0
 80012ce:	6078      	str	r0, [r7, #4]
 80012d0:	6039      	str	r1, [r7, #0]
 80012d2:	2300      	movs	r3, #0
 80012d4:	727b      	strb	r3, [r7, #9]
 80012d6:	683b      	ldr	r3, [r7, #0]
 80012d8:	2200      	movs	r2, #0
 80012da:	601a      	str	r2, [r3, #0]
 80012dc:	e004      	b.n	80012e8 <xatoi+0x20>
 80012de:	687b      	ldr	r3, [r7, #4]
 80012e0:	681b      	ldr	r3, [r3, #0]
 80012e2:	1c5a      	adds	r2, r3, #1
 80012e4:	687b      	ldr	r3, [r7, #4]
 80012e6:	601a      	str	r2, [r3, #0]
 80012e8:	687b      	ldr	r3, [r7, #4]
 80012ea:	681b      	ldr	r3, [r3, #0]
 80012ec:	781b      	ldrb	r3, [r3, #0]
 80012ee:	72fb      	strb	r3, [r7, #11]
 80012f0:	7afb      	ldrb	r3, [r7, #11]
 80012f2:	2b20      	cmp	r3, #32
 80012f4:	d0f3      	beq.n	80012de <xatoi+0x16>
 80012f6:	7afb      	ldrb	r3, [r7, #11]
 80012f8:	2b2d      	cmp	r3, #45	; 0x2d
 80012fa:	d10a      	bne.n	8001312 <xatoi+0x4a>
 80012fc:	2301      	movs	r3, #1
 80012fe:	727b      	strb	r3, [r7, #9]
 8001300:	687b      	ldr	r3, [r7, #4]
 8001302:	681b      	ldr	r3, [r3, #0]
 8001304:	1c5a      	adds	r2, r3, #1
 8001306:	687b      	ldr	r3, [r7, #4]
 8001308:	601a      	str	r2, [r3, #0]
 800130a:	687b      	ldr	r3, [r7, #4]
 800130c:	681b      	ldr	r3, [r3, #0]
 800130e:	781b      	ldrb	r3, [r3, #0]
 8001310:	72fb      	strb	r3, [r7, #11]
 8001312:	7afb      	ldrb	r3, [r7, #11]
 8001314:	2b30      	cmp	r3, #48	; 0x30
 8001316:	d135      	bne.n	8001384 <xatoi+0xbc>
 8001318:	687b      	ldr	r3, [r7, #4]
 800131a:	681b      	ldr	r3, [r3, #0]
 800131c:	1c5a      	adds	r2, r3, #1
 800131e:	687b      	ldr	r3, [r7, #4]
 8001320:	601a      	str	r2, [r3, #0]
 8001322:	687b      	ldr	r3, [r7, #4]
 8001324:	681b      	ldr	r3, [r3, #0]
 8001326:	781b      	ldrb	r3, [r3, #0]
 8001328:	72fb      	strb	r3, [r7, #11]
 800132a:	7afb      	ldrb	r3, [r7, #11]
 800132c:	2b62      	cmp	r3, #98	; 0x62
 800132e:	d00d      	beq.n	800134c <xatoi+0x84>
 8001330:	2b78      	cmp	r3, #120	; 0x78
 8001332:	d117      	bne.n	8001364 <xatoi+0x9c>
 8001334:	2310      	movs	r3, #16
 8001336:	72bb      	strb	r3, [r7, #10]
 8001338:	687b      	ldr	r3, [r7, #4]
 800133a:	681b      	ldr	r3, [r3, #0]
 800133c:	1c5a      	adds	r2, r3, #1
 800133e:	687b      	ldr	r3, [r7, #4]
 8001340:	601a      	str	r2, [r3, #0]
 8001342:	687b      	ldr	r3, [r7, #4]
 8001344:	681b      	ldr	r3, [r3, #0]
 8001346:	781b      	ldrb	r3, [r3, #0]
 8001348:	72fb      	strb	r3, [r7, #11]
 800134a:	e025      	b.n	8001398 <xatoi+0xd0>
 800134c:	2302      	movs	r3, #2
 800134e:	72bb      	strb	r3, [r7, #10]
 8001350:	687b      	ldr	r3, [r7, #4]
 8001352:	681b      	ldr	r3, [r3, #0]
 8001354:	1c5a      	adds	r2, r3, #1
 8001356:	687b      	ldr	r3, [r7, #4]
 8001358:	601a      	str	r2, [r3, #0]
 800135a:	687b      	ldr	r3, [r7, #4]
 800135c:	681b      	ldr	r3, [r3, #0]
 800135e:	781b      	ldrb	r3, [r3, #0]
 8001360:	72fb      	strb	r3, [r7, #11]
 8001362:	e019      	b.n	8001398 <xatoi+0xd0>
 8001364:	7afb      	ldrb	r3, [r7, #11]
 8001366:	2b20      	cmp	r3, #32
 8001368:	d801      	bhi.n	800136e <xatoi+0xa6>
 800136a:	2301      	movs	r3, #1
 800136c:	e04e      	b.n	800140c <xatoi+0x144>
 800136e:	7afb      	ldrb	r3, [r7, #11]
 8001370:	2b2f      	cmp	r3, #47	; 0x2f
 8001372:	d902      	bls.n	800137a <xatoi+0xb2>
 8001374:	7afb      	ldrb	r3, [r7, #11]
 8001376:	2b39      	cmp	r3, #57	; 0x39
 8001378:	d901      	bls.n	800137e <xatoi+0xb6>
 800137a:	2300      	movs	r3, #0
 800137c:	e046      	b.n	800140c <xatoi+0x144>
 800137e:	2308      	movs	r3, #8
 8001380:	72bb      	strb	r3, [r7, #10]
 8001382:	e009      	b.n	8001398 <xatoi+0xd0>
 8001384:	7afb      	ldrb	r3, [r7, #11]
 8001386:	2b2f      	cmp	r3, #47	; 0x2f
 8001388:	d902      	bls.n	8001390 <xatoi+0xc8>
 800138a:	7afb      	ldrb	r3, [r7, #11]
 800138c:	2b39      	cmp	r3, #57	; 0x39
 800138e:	d901      	bls.n	8001394 <xatoi+0xcc>
 8001390:	2300      	movs	r3, #0
 8001392:	e03b      	b.n	800140c <xatoi+0x144>
 8001394:	230a      	movs	r3, #10
 8001396:	72bb      	strb	r3, [r7, #10]
 8001398:	2300      	movs	r3, #0
 800139a:	60fb      	str	r3, [r7, #12]
 800139c:	e029      	b.n	80013f2 <xatoi+0x12a>
 800139e:	7afb      	ldrb	r3, [r7, #11]
 80013a0:	2b60      	cmp	r3, #96	; 0x60
 80013a2:	d902      	bls.n	80013aa <xatoi+0xe2>
 80013a4:	7afb      	ldrb	r3, [r7, #11]
 80013a6:	3b20      	subs	r3, #32
 80013a8:	72fb      	strb	r3, [r7, #11]
 80013aa:	7afb      	ldrb	r3, [r7, #11]
 80013ac:	3b30      	subs	r3, #48	; 0x30
 80013ae:	72fb      	strb	r3, [r7, #11]
 80013b0:	7afb      	ldrb	r3, [r7, #11]
 80013b2:	2b10      	cmp	r3, #16
 80013b4:	d907      	bls.n	80013c6 <xatoi+0xfe>
 80013b6:	7afb      	ldrb	r3, [r7, #11]
 80013b8:	3b07      	subs	r3, #7
 80013ba:	72fb      	strb	r3, [r7, #11]
 80013bc:	7afb      	ldrb	r3, [r7, #11]
 80013be:	2b09      	cmp	r3, #9
 80013c0:	d801      	bhi.n	80013c6 <xatoi+0xfe>
 80013c2:	2300      	movs	r3, #0
 80013c4:	e022      	b.n	800140c <xatoi+0x144>
 80013c6:	7afa      	ldrb	r2, [r7, #11]
 80013c8:	7abb      	ldrb	r3, [r7, #10]
 80013ca:	429a      	cmp	r2, r3
 80013cc:	d301      	bcc.n	80013d2 <xatoi+0x10a>
 80013ce:	2300      	movs	r3, #0
 80013d0:	e01c      	b.n	800140c <xatoi+0x144>
 80013d2:	7abb      	ldrb	r3, [r7, #10]
 80013d4:	68fa      	ldr	r2, [r7, #12]
 80013d6:	fb02 f203 	mul.w	r2, r2, r3
 80013da:	7afb      	ldrb	r3, [r7, #11]
 80013dc:	4413      	add	r3, r2
 80013de:	60fb      	str	r3, [r7, #12]
 80013e0:	687b      	ldr	r3, [r7, #4]
 80013e2:	681b      	ldr	r3, [r3, #0]
 80013e4:	1c5a      	adds	r2, r3, #1
 80013e6:	687b      	ldr	r3, [r7, #4]
 80013e8:	601a      	str	r2, [r3, #0]
 80013ea:	687b      	ldr	r3, [r7, #4]
 80013ec:	681b      	ldr	r3, [r3, #0]
 80013ee:	781b      	ldrb	r3, [r3, #0]
 80013f0:	72fb      	strb	r3, [r7, #11]
 80013f2:	7afb      	ldrb	r3, [r7, #11]
 80013f4:	2b20      	cmp	r3, #32
 80013f6:	d8d2      	bhi.n	800139e <xatoi+0xd6>
 80013f8:	7a7b      	ldrb	r3, [r7, #9]
 80013fa:	2b00      	cmp	r3, #0
 80013fc:	d002      	beq.n	8001404 <xatoi+0x13c>
 80013fe:	68fb      	ldr	r3, [r7, #12]
 8001400:	425b      	negs	r3, r3
 8001402:	60fb      	str	r3, [r7, #12]
 8001404:	68fa      	ldr	r2, [r7, #12]
 8001406:	683b      	ldr	r3, [r7, #0]
 8001408:	601a      	str	r2, [r3, #0]
 800140a:	2301      	movs	r3, #1
 800140c:	4618      	mov	r0, r3
 800140e:	3714      	adds	r7, #20
 8001410:	46bd      	mov	sp, r7
 8001412:	bc80      	pop	{r7}
 8001414:	4770      	bx	lr
 8001416:	bf00      	nop

08001418 <NVIC_EnableIRQ>:
 8001418:	b480      	push	{r7}
 800141a:	b083      	sub	sp, #12
 800141c:	af00      	add	r7, sp, #0
 800141e:	4603      	mov	r3, r0
 8001420:	71fb      	strb	r3, [r7, #7]
 8001422:	4908      	ldr	r1, [pc, #32]	; (8001444 <NVIC_EnableIRQ+0x2c>)
 8001424:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001428:	095b      	lsrs	r3, r3, #5
 800142a:	79fa      	ldrb	r2, [r7, #7]
 800142c:	f002 021f 	and.w	r2, r2, #31
 8001430:	2001      	movs	r0, #1
 8001432:	fa00 f202 	lsl.w	r2, r0, r2
 8001436:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800143a:	bf00      	nop
 800143c:	370c      	adds	r7, #12
 800143e:	46bd      	mov	sp, r7
 8001440:	bc80      	pop	{r7}
 8001442:	4770      	bx	lr
 8001444:	e000e100 	.word	0xe000e100

08001448 <adc_common_init>:
 8001448:	b480      	push	{r7}
 800144a:	af00      	add	r7, sp, #0
 800144c:	4a07      	ldr	r2, [pc, #28]	; (800146c <adc_common_init+0x24>)
 800144e:	4b07      	ldr	r3, [pc, #28]	; (800146c <adc_common_init+0x24>)
 8001450:	685b      	ldr	r3, [r3, #4]
 8001452:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 8001456:	6053      	str	r3, [r2, #4]
 8001458:	4a04      	ldr	r2, [pc, #16]	; (800146c <adc_common_init+0x24>)
 800145a:	4b04      	ldr	r3, [pc, #16]	; (800146c <adc_common_init+0x24>)
 800145c:	685b      	ldr	r3, [r3, #4]
 800145e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001462:	6053      	str	r3, [r2, #4]
 8001464:	bf00      	nop
 8001466:	46bd      	mov	sp, r7
 8001468:	bc80      	pop	{r7}
 800146a:	4770      	bx	lr
 800146c:	40012300 	.word	0x40012300

08001470 <adc1_init>:
 8001470:	b480      	push	{r7}
 8001472:	af00      	add	r7, sp, #0
 8001474:	4a29      	ldr	r2, [pc, #164]	; (800151c <adc1_init+0xac>)
 8001476:	4b29      	ldr	r3, [pc, #164]	; (800151c <adc1_init+0xac>)
 8001478:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800147a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800147e:	6453      	str	r3, [r2, #68]	; 0x44
 8001480:	4a26      	ldr	r2, [pc, #152]	; (800151c <adc1_init+0xac>)
 8001482:	4b26      	ldr	r3, [pc, #152]	; (800151c <adc1_init+0xac>)
 8001484:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001486:	f043 0301 	orr.w	r3, r3, #1
 800148a:	6313      	str	r3, [r2, #48]	; 0x30
 800148c:	4a24      	ldr	r2, [pc, #144]	; (8001520 <adc1_init+0xb0>)
 800148e:	4b24      	ldr	r3, [pc, #144]	; (8001520 <adc1_init+0xb0>)
 8001490:	681b      	ldr	r3, [r3, #0]
 8001492:	f023 0303 	bic.w	r3, r3, #3
 8001496:	6013      	str	r3, [r2, #0]
 8001498:	4a21      	ldr	r2, [pc, #132]	; (8001520 <adc1_init+0xb0>)
 800149a:	4b21      	ldr	r3, [pc, #132]	; (8001520 <adc1_init+0xb0>)
 800149c:	681b      	ldr	r3, [r3, #0]
 800149e:	f043 0303 	orr.w	r3, r3, #3
 80014a2:	6013      	str	r3, [r2, #0]
 80014a4:	4a1f      	ldr	r2, [pc, #124]	; (8001524 <adc1_init+0xb4>)
 80014a6:	4b1f      	ldr	r3, [pc, #124]	; (8001524 <adc1_init+0xb4>)
 80014a8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014aa:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 80014ae:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014b0:	4a1c      	ldr	r2, [pc, #112]	; (8001524 <adc1_init+0xb4>)
 80014b2:	4b1c      	ldr	r3, [pc, #112]	; (8001524 <adc1_init+0xb4>)
 80014b4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014b6:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014b8:	4a1a      	ldr	r2, [pc, #104]	; (8001524 <adc1_init+0xb4>)
 80014ba:	4b1a      	ldr	r3, [pc, #104]	; (8001524 <adc1_init+0xb4>)
 80014bc:	685b      	ldr	r3, [r3, #4]
 80014be:	f043 0320 	orr.w	r3, r3, #32
 80014c2:	6053      	str	r3, [r2, #4]
 80014c4:	4a17      	ldr	r2, [pc, #92]	; (8001524 <adc1_init+0xb4>)
 80014c6:	4b17      	ldr	r3, [pc, #92]	; (8001524 <adc1_init+0xb4>)
 80014c8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80014ca:	f023 031f 	bic.w	r3, r3, #31
 80014ce:	6353      	str	r3, [r2, #52]	; 0x34
 80014d0:	4a14      	ldr	r2, [pc, #80]	; (8001524 <adc1_init+0xb4>)
 80014d2:	4b14      	ldr	r3, [pc, #80]	; (8001524 <adc1_init+0xb4>)
 80014d4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80014d6:	6353      	str	r3, [r2, #52]	; 0x34
 80014d8:	4a12      	ldr	r2, [pc, #72]	; (8001524 <adc1_init+0xb4>)
 80014da:	4b12      	ldr	r3, [pc, #72]	; (8001524 <adc1_init+0xb4>)
 80014dc:	689b      	ldr	r3, [r3, #8]
 80014de:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 80014e2:	6093      	str	r3, [r2, #8]
 80014e4:	4a0f      	ldr	r2, [pc, #60]	; (8001524 <adc1_init+0xb4>)
 80014e6:	4b0f      	ldr	r3, [pc, #60]	; (8001524 <adc1_init+0xb4>)
 80014e8:	689b      	ldr	r3, [r3, #8]
 80014ea:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80014ee:	6093      	str	r3, [r2, #8]
 80014f0:	4a0c      	ldr	r2, [pc, #48]	; (8001524 <adc1_init+0xb4>)
 80014f2:	4b0c      	ldr	r3, [pc, #48]	; (8001524 <adc1_init+0xb4>)
 80014f4:	689b      	ldr	r3, [r3, #8]
 80014f6:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 80014fa:	6093      	str	r3, [r2, #8]
 80014fc:	4a09      	ldr	r2, [pc, #36]	; (8001524 <adc1_init+0xb4>)
 80014fe:	4b09      	ldr	r3, [pc, #36]	; (8001524 <adc1_init+0xb4>)
 8001500:	689b      	ldr	r3, [r3, #8]
 8001502:	f043 63a0 	orr.w	r3, r3, #83886080	; 0x5000000
 8001506:	6093      	str	r3, [r2, #8]
 8001508:	4a06      	ldr	r2, [pc, #24]	; (8001524 <adc1_init+0xb4>)
 800150a:	4b06      	ldr	r3, [pc, #24]	; (8001524 <adc1_init+0xb4>)
 800150c:	689b      	ldr	r3, [r3, #8]
 800150e:	f043 0301 	orr.w	r3, r3, #1
 8001512:	6093      	str	r3, [r2, #8]
 8001514:	bf00      	nop
 8001516:	46bd      	mov	sp, r7
 8001518:	bc80      	pop	{r7}
 800151a:	4770      	bx	lr
 800151c:	40023800 	.word	0x40023800
 8001520:	40020000 	.word	0x40020000
 8001524:	40012000 	.word	0x40012000

08001528 <adc2_init>:
 8001528:	b480      	push	{r7}
 800152a:	af00      	add	r7, sp, #0
 800152c:	4a1b      	ldr	r2, [pc, #108]	; (800159c <adc2_init+0x74>)
 800152e:	4b1b      	ldr	r3, [pc, #108]	; (800159c <adc2_init+0x74>)
 8001530:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001532:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8001536:	6453      	str	r3, [r2, #68]	; 0x44
 8001538:	4a18      	ldr	r2, [pc, #96]	; (800159c <adc2_init+0x74>)
 800153a:	4b18      	ldr	r3, [pc, #96]	; (800159c <adc2_init+0x74>)
 800153c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800153e:	f043 0301 	orr.w	r3, r3, #1
 8001542:	6313      	str	r3, [r2, #48]	; 0x30
 8001544:	4a16      	ldr	r2, [pc, #88]	; (80015a0 <adc2_init+0x78>)
 8001546:	4b16      	ldr	r3, [pc, #88]	; (80015a0 <adc2_init+0x78>)
 8001548:	681b      	ldr	r3, [r3, #0]
 800154a:	f023 030c 	bic.w	r3, r3, #12
 800154e:	6013      	str	r3, [r2, #0]
 8001550:	4a13      	ldr	r2, [pc, #76]	; (80015a0 <adc2_init+0x78>)
 8001552:	4b13      	ldr	r3, [pc, #76]	; (80015a0 <adc2_init+0x78>)
 8001554:	681b      	ldr	r3, [r3, #0]
 8001556:	f043 030c 	orr.w	r3, r3, #12
 800155a:	6013      	str	r3, [r2, #0]
 800155c:	4a11      	ldr	r2, [pc, #68]	; (80015a4 <adc2_init+0x7c>)
 800155e:	4b11      	ldr	r3, [pc, #68]	; (80015a4 <adc2_init+0x7c>)
 8001560:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001562:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8001566:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001568:	4a0e      	ldr	r2, [pc, #56]	; (80015a4 <adc2_init+0x7c>)
 800156a:	4b0e      	ldr	r3, [pc, #56]	; (80015a4 <adc2_init+0x7c>)
 800156c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800156e:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001570:	4a0c      	ldr	r2, [pc, #48]	; (80015a4 <adc2_init+0x7c>)
 8001572:	4b0c      	ldr	r3, [pc, #48]	; (80015a4 <adc2_init+0x7c>)
 8001574:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001576:	f023 031f 	bic.w	r3, r3, #31
 800157a:	6353      	str	r3, [r2, #52]	; 0x34
 800157c:	4a09      	ldr	r2, [pc, #36]	; (80015a4 <adc2_init+0x7c>)
 800157e:	4b09      	ldr	r3, [pc, #36]	; (80015a4 <adc2_init+0x7c>)
 8001580:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001582:	f043 0301 	orr.w	r3, r3, #1
 8001586:	6353      	str	r3, [r2, #52]	; 0x34
 8001588:	4a06      	ldr	r2, [pc, #24]	; (80015a4 <adc2_init+0x7c>)
 800158a:	4b06      	ldr	r3, [pc, #24]	; (80015a4 <adc2_init+0x7c>)
 800158c:	689b      	ldr	r3, [r3, #8]
 800158e:	f043 0301 	orr.w	r3, r3, #1
 8001592:	6093      	str	r3, [r2, #8]
 8001594:	bf00      	nop
 8001596:	46bd      	mov	sp, r7
 8001598:	bc80      	pop	{r7}
 800159a:	4770      	bx	lr
 800159c:	40023800 	.word	0x40023800
 80015a0:	40020000 	.word	0x40020000
 80015a4:	40012100 	.word	0x40012100

080015a8 <adc3_init>:
 80015a8:	b480      	push	{r7}
 80015aa:	af00      	add	r7, sp, #0
 80015ac:	4a1b      	ldr	r2, [pc, #108]	; (800161c <adc3_init+0x74>)
 80015ae:	4b1b      	ldr	r3, [pc, #108]	; (800161c <adc3_init+0x74>)
 80015b0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80015b2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80015b6:	6453      	str	r3, [r2, #68]	; 0x44
 80015b8:	4a18      	ldr	r2, [pc, #96]	; (800161c <adc3_init+0x74>)
 80015ba:	4b18      	ldr	r3, [pc, #96]	; (800161c <adc3_init+0x74>)
 80015bc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80015be:	f043 0301 	orr.w	r3, r3, #1
 80015c2:	6313      	str	r3, [r2, #48]	; 0x30
 80015c4:	4a16      	ldr	r2, [pc, #88]	; (8001620 <adc3_init+0x78>)
 80015c6:	4b16      	ldr	r3, [pc, #88]	; (8001620 <adc3_init+0x78>)
 80015c8:	681b      	ldr	r3, [r3, #0]
 80015ca:	f023 03c0 	bic.w	r3, r3, #192	; 0xc0
 80015ce:	6013      	str	r3, [r2, #0]
 80015d0:	4a13      	ldr	r2, [pc, #76]	; (8001620 <adc3_init+0x78>)
 80015d2:	4b13      	ldr	r3, [pc, #76]	; (8001620 <adc3_init+0x78>)
 80015d4:	681b      	ldr	r3, [r3, #0]
 80015d6:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 80015da:	6013      	str	r3, [r2, #0]
 80015dc:	4a11      	ldr	r2, [pc, #68]	; (8001624 <adc3_init+0x7c>)
 80015de:	4b11      	ldr	r3, [pc, #68]	; (8001624 <adc3_init+0x7c>)
 80015e0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015e2:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 80015e6:	62d3      	str	r3, [r2, #44]	; 0x2c
 80015e8:	4a0e      	ldr	r2, [pc, #56]	; (8001624 <adc3_init+0x7c>)
 80015ea:	4b0e      	ldr	r3, [pc, #56]	; (8001624 <adc3_init+0x7c>)
 80015ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015ee:	62d3      	str	r3, [r2, #44]	; 0x2c
 80015f0:	4a0c      	ldr	r2, [pc, #48]	; (8001624 <adc3_init+0x7c>)
 80015f2:	4b0c      	ldr	r3, [pc, #48]	; (8001624 <adc3_init+0x7c>)
 80015f4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80015f6:	f023 031f 	bic.w	r3, r3, #31
 80015fa:	6353      	str	r3, [r2, #52]	; 0x34
 80015fc:	4a09      	ldr	r2, [pc, #36]	; (8001624 <adc3_init+0x7c>)
 80015fe:	4b09      	ldr	r3, [pc, #36]	; (8001624 <adc3_init+0x7c>)
 8001600:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001602:	f043 0303 	orr.w	r3, r3, #3
 8001606:	6353      	str	r3, [r2, #52]	; 0x34
 8001608:	4a06      	ldr	r2, [pc, #24]	; (8001624 <adc3_init+0x7c>)
 800160a:	4b06      	ldr	r3, [pc, #24]	; (8001624 <adc3_init+0x7c>)
 800160c:	689b      	ldr	r3, [r3, #8]
 800160e:	f043 0301 	orr.w	r3, r3, #1
 8001612:	6093      	str	r3, [r2, #8]
 8001614:	bf00      	nop
 8001616:	46bd      	mov	sp, r7
 8001618:	bc80      	pop	{r7}
 800161a:	4770      	bx	lr
 800161c:	40023800 	.word	0x40023800
 8001620:	40020000 	.word	0x40020000
 8001624:	40012200 	.word	0x40012200

08001628 <adc_set_trigger>:
 8001628:	b480      	push	{r7}
 800162a:	af00      	add	r7, sp, #0
 800162c:	4a2d      	ldr	r2, [pc, #180]	; (80016e4 <adc_set_trigger+0xbc>)
 800162e:	4b2d      	ldr	r3, [pc, #180]	; (80016e4 <adc_set_trigger+0xbc>)
 8001630:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001632:	f043 0301 	orr.w	r3, r3, #1
 8001636:	6413      	str	r3, [r2, #64]	; 0x40
 8001638:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800163c:	2229      	movs	r2, #41	; 0x29
 800163e:	851a      	strh	r2, [r3, #40]	; 0x28
 8001640:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001644:	2203      	movs	r2, #3
 8001646:	62da      	str	r2, [r3, #44]	; 0x2c
 8001648:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800164c:	2202      	movs	r2, #2
 800164e:	641a      	str	r2, [r3, #64]	; 0x40
 8001650:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001654:	2200      	movs	r2, #0
 8001656:	839a      	strh	r2, [r3, #28]
 8001658:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800165c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001660:	8b9b      	ldrh	r3, [r3, #28]
 8001662:	b29b      	uxth	r3, r3
 8001664:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 8001668:	b29b      	uxth	r3, r3
 800166a:	8393      	strh	r3, [r2, #28]
 800166c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001670:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001674:	8c1b      	ldrh	r3, [r3, #32]
 8001676:	b29b      	uxth	r3, r3
 8001678:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 800167c:	b29b      	uxth	r3, r3
 800167e:	8413      	strh	r3, [r2, #32]
 8001680:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001684:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001688:	881b      	ldrh	r3, [r3, #0]
 800168a:	b29b      	uxth	r3, r3
 800168c:	f043 0301 	orr.w	r3, r3, #1
 8001690:	b29b      	uxth	r3, r3
 8001692:	8013      	strh	r3, [r2, #0]
 8001694:	4a13      	ldr	r2, [pc, #76]	; (80016e4 <adc_set_trigger+0xbc>)
 8001696:	4b13      	ldr	r3, [pc, #76]	; (80016e4 <adc_set_trigger+0xbc>)
 8001698:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800169a:	f043 0302 	orr.w	r3, r3, #2
 800169e:	6313      	str	r3, [r2, #48]	; 0x30
 80016a0:	4a11      	ldr	r2, [pc, #68]	; (80016e8 <adc_set_trigger+0xc0>)
 80016a2:	4b11      	ldr	r3, [pc, #68]	; (80016e8 <adc_set_trigger+0xc0>)
 80016a4:	681b      	ldr	r3, [r3, #0]
 80016a6:	f423 0340 	bic.w	r3, r3, #12582912	; 0xc00000
 80016aa:	6013      	str	r3, [r2, #0]
 80016ac:	4a0e      	ldr	r2, [pc, #56]	; (80016e8 <adc_set_trigger+0xc0>)
 80016ae:	4b0e      	ldr	r3, [pc, #56]	; (80016e8 <adc_set_trigger+0xc0>)
 80016b0:	681b      	ldr	r3, [r3, #0]
 80016b2:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80016b6:	6013      	str	r3, [r2, #0]
 80016b8:	4a0b      	ldr	r2, [pc, #44]	; (80016e8 <adc_set_trigger+0xc0>)
 80016ba:	4b0b      	ldr	r3, [pc, #44]	; (80016e8 <adc_set_trigger+0xc0>)
 80016bc:	689b      	ldr	r3, [r3, #8]
 80016be:	f443 0340 	orr.w	r3, r3, #12582912	; 0xc00000
 80016c2:	6093      	str	r3, [r2, #8]
 80016c4:	4a08      	ldr	r2, [pc, #32]	; (80016e8 <adc_set_trigger+0xc0>)
 80016c6:	4b08      	ldr	r3, [pc, #32]	; (80016e8 <adc_set_trigger+0xc0>)
 80016c8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80016ca:	f423 4370 	bic.w	r3, r3, #61440	; 0xf000
 80016ce:	6253      	str	r3, [r2, #36]	; 0x24
 80016d0:	4a05      	ldr	r2, [pc, #20]	; (80016e8 <adc_set_trigger+0xc0>)
 80016d2:	4b05      	ldr	r3, [pc, #20]	; (80016e8 <adc_set_trigger+0xc0>)
 80016d4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80016d6:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 80016da:	6253      	str	r3, [r2, #36]	; 0x24
 80016dc:	bf00      	nop
 80016de:	46bd      	mov	sp, r7
 80016e0:	bc80      	pop	{r7}
 80016e2:	4770      	bx	lr
 80016e4:	40023800 	.word	0x40023800
 80016e8:	40020400 	.word	0x40020400

080016ec <adc_init>:
 80016ec:	b580      	push	{r7, lr}
 80016ee:	af00      	add	r7, sp, #0
 80016f0:	f7ff feaa 	bl	8001448 <adc_common_init>
 80016f4:	f7ff febc 	bl	8001470 <adc1_init>
 80016f8:	f7ff ff16 	bl	8001528 <adc2_init>
 80016fc:	f7ff ff54 	bl	80015a8 <adc3_init>
 8001700:	f7ff ff92 	bl	8001628 <adc_set_trigger>
 8001704:	4a08      	ldr	r2, [pc, #32]	; (8001728 <adc_init+0x3c>)
 8001706:	4b08      	ldr	r3, [pc, #32]	; (8001728 <adc_init+0x3c>)
 8001708:	685b      	ldr	r3, [r3, #4]
 800170a:	f023 031f 	bic.w	r3, r3, #31
 800170e:	6053      	str	r3, [r2, #4]
 8001710:	4a05      	ldr	r2, [pc, #20]	; (8001728 <adc_init+0x3c>)
 8001712:	4b05      	ldr	r3, [pc, #20]	; (8001728 <adc_init+0x3c>)
 8001714:	685b      	ldr	r3, [r3, #4]
 8001716:	f043 0316 	orr.w	r3, r3, #22
 800171a:	6053      	str	r3, [r2, #4]
 800171c:	2012      	movs	r0, #18
 800171e:	f7ff fe7b 	bl	8001418 <NVIC_EnableIRQ>
 8001722:	bf00      	nop
 8001724:	bd80      	pop	{r7, pc}
 8001726:	bf00      	nop
 8001728:	40012300 	.word	0x40012300

0800172c <TIM2_IRQHandler>:
 800172c:	b480      	push	{r7}
 800172e:	af00      	add	r7, sp, #0
 8001730:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001734:	8a1b      	ldrh	r3, [r3, #16]
 8001736:	b29b      	uxth	r3, r3
 8001738:	f003 0301 	and.w	r3, r3, #1
 800173c:	2b00      	cmp	r3, #0
 800173e:	d009      	beq.n	8001754 <TIM2_IRQHandler+0x28>
 8001740:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001744:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001748:	8a1b      	ldrh	r3, [r3, #16]
 800174a:	b29b      	uxth	r3, r3
 800174c:	f023 0301 	bic.w	r3, r3, #1
 8001750:	b29b      	uxth	r3, r3
 8001752:	8213      	strh	r3, [r2, #16]
 8001754:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001758:	8a1b      	ldrh	r3, [r3, #16]
 800175a:	b29b      	uxth	r3, r3
 800175c:	f003 0302 	and.w	r3, r3, #2
 8001760:	2b00      	cmp	r3, #0
 8001762:	d009      	beq.n	8001778 <TIM2_IRQHandler+0x4c>
 8001764:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001768:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800176c:	8a1b      	ldrh	r3, [r3, #16]
 800176e:	b29b      	uxth	r3, r3
 8001770:	f023 0302 	bic.w	r3, r3, #2
 8001774:	b29b      	uxth	r3, r3
 8001776:	8213      	strh	r3, [r2, #16]
 8001778:	bf00      	nop
 800177a:	46bd      	mov	sp, r7
 800177c:	bc80      	pop	{r7}
 800177e:	4770      	bx	lr

08001780 <offset_pwm_init>:
 8001780:	b480      	push	{r7}
 8001782:	af00      	add	r7, sp, #0
 8001784:	4a31      	ldr	r2, [pc, #196]	; (800184c <offset_pwm_init+0xcc>)
 8001786:	4b31      	ldr	r3, [pc, #196]	; (800184c <offset_pwm_init+0xcc>)
 8001788:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800178a:	f043 0304 	orr.w	r3, r3, #4
 800178e:	6413      	str	r3, [r2, #64]	; 0x40
 8001790:	4b2f      	ldr	r3, [pc, #188]	; (8001850 <offset_pwm_init+0xd0>)
 8001792:	2203      	movs	r2, #3
 8001794:	851a      	strh	r2, [r3, #40]	; 0x28
 8001796:	4b2e      	ldr	r3, [pc, #184]	; (8001850 <offset_pwm_init+0xd0>)
 8001798:	2263      	movs	r2, #99	; 0x63
 800179a:	62da      	str	r2, [r3, #44]	; 0x2c
 800179c:	4b2c      	ldr	r3, [pc, #176]	; (8001850 <offset_pwm_init+0xd0>)
 800179e:	2232      	movs	r2, #50	; 0x32
 80017a0:	635a      	str	r2, [r3, #52]	; 0x34
 80017a2:	4b2b      	ldr	r3, [pc, #172]	; (8001850 <offset_pwm_init+0xd0>)
 80017a4:	2232      	movs	r2, #50	; 0x32
 80017a6:	639a      	str	r2, [r3, #56]	; 0x38
 80017a8:	4b29      	ldr	r3, [pc, #164]	; (8001850 <offset_pwm_init+0xd0>)
 80017aa:	2200      	movs	r2, #0
 80017ac:	831a      	strh	r2, [r3, #24]
 80017ae:	4a28      	ldr	r2, [pc, #160]	; (8001850 <offset_pwm_init+0xd0>)
 80017b0:	4b27      	ldr	r3, [pc, #156]	; (8001850 <offset_pwm_init+0xd0>)
 80017b2:	8b1b      	ldrh	r3, [r3, #24]
 80017b4:	b29b      	uxth	r3, r3
 80017b6:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 80017ba:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 80017be:	b29b      	uxth	r3, r3
 80017c0:	8313      	strh	r3, [r2, #24]
 80017c2:	4a23      	ldr	r2, [pc, #140]	; (8001850 <offset_pwm_init+0xd0>)
 80017c4:	4b22      	ldr	r3, [pc, #136]	; (8001850 <offset_pwm_init+0xd0>)
 80017c6:	8c1b      	ldrh	r3, [r3, #32]
 80017c8:	b29b      	uxth	r3, r3
 80017ca:	f043 0311 	orr.w	r3, r3, #17
 80017ce:	b29b      	uxth	r3, r3
 80017d0:	8413      	strh	r3, [r2, #32]
 80017d2:	4a1f      	ldr	r2, [pc, #124]	; (8001850 <offset_pwm_init+0xd0>)
 80017d4:	4b1e      	ldr	r3, [pc, #120]	; (8001850 <offset_pwm_init+0xd0>)
 80017d6:	881b      	ldrh	r3, [r3, #0]
 80017d8:	b29b      	uxth	r3, r3
 80017da:	f043 0301 	orr.w	r3, r3, #1
 80017de:	b29b      	uxth	r3, r3
 80017e0:	8013      	strh	r3, [r2, #0]
 80017e2:	4a1a      	ldr	r2, [pc, #104]	; (800184c <offset_pwm_init+0xcc>)
 80017e4:	4b19      	ldr	r3, [pc, #100]	; (800184c <offset_pwm_init+0xcc>)
 80017e6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80017e8:	f043 0308 	orr.w	r3, r3, #8
 80017ec:	6313      	str	r3, [r2, #48]	; 0x30
 80017ee:	4a19      	ldr	r2, [pc, #100]	; (8001854 <offset_pwm_init+0xd4>)
 80017f0:	4b18      	ldr	r3, [pc, #96]	; (8001854 <offset_pwm_init+0xd4>)
 80017f2:	681b      	ldr	r3, [r3, #0]
 80017f4:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 80017f8:	6013      	str	r3, [r2, #0]
 80017fa:	4a16      	ldr	r2, [pc, #88]	; (8001854 <offset_pwm_init+0xd4>)
 80017fc:	4b15      	ldr	r3, [pc, #84]	; (8001854 <offset_pwm_init+0xd4>)
 80017fe:	681b      	ldr	r3, [r3, #0]
 8001800:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
 8001804:	6013      	str	r3, [r2, #0]
 8001806:	4a13      	ldr	r2, [pc, #76]	; (8001854 <offset_pwm_init+0xd4>)
 8001808:	4b12      	ldr	r3, [pc, #72]	; (8001854 <offset_pwm_init+0xd4>)
 800180a:	689b      	ldr	r3, [r3, #8]
 800180c:	f043 6370 	orr.w	r3, r3, #251658240	; 0xf000000
 8001810:	6093      	str	r3, [r2, #8]
 8001812:	4a10      	ldr	r2, [pc, #64]	; (8001854 <offset_pwm_init+0xd4>)
 8001814:	4b0f      	ldr	r3, [pc, #60]	; (8001854 <offset_pwm_init+0xd4>)
 8001816:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001818:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 800181c:	6253      	str	r3, [r2, #36]	; 0x24
 800181e:	4a0d      	ldr	r2, [pc, #52]	; (8001854 <offset_pwm_init+0xd4>)
 8001820:	4b0c      	ldr	r3, [pc, #48]	; (8001854 <offset_pwm_init+0xd4>)
 8001822:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001824:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8001828:	6253      	str	r3, [r2, #36]	; 0x24
 800182a:	4a0a      	ldr	r2, [pc, #40]	; (8001854 <offset_pwm_init+0xd4>)
 800182c:	4b09      	ldr	r3, [pc, #36]	; (8001854 <offset_pwm_init+0xd4>)
 800182e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001830:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8001834:	6253      	str	r3, [r2, #36]	; 0x24
 8001836:	4a07      	ldr	r2, [pc, #28]	; (8001854 <offset_pwm_init+0xd4>)
 8001838:	4b06      	ldr	r3, [pc, #24]	; (8001854 <offset_pwm_init+0xd4>)
 800183a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800183c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8001840:	6253      	str	r3, [r2, #36]	; 0x24
 8001842:	bf00      	nop
 8001844:	46bd      	mov	sp, r7
 8001846:	bc80      	pop	{r7}
 8001848:	4770      	bx	lr
 800184a:	bf00      	nop
 800184c:	40023800 	.word	0x40023800
 8001850:	40000800 	.word	0x40000800
 8001854:	40020c00 	.word	0x40020c00

08001858 <dac_init>:
 8001858:	b580      	push	{r7, lr}
 800185a:	af00      	add	r7, sp, #0
 800185c:	4a16      	ldr	r2, [pc, #88]	; (80018b8 <dac_init+0x60>)
 800185e:	4b16      	ldr	r3, [pc, #88]	; (80018b8 <dac_init+0x60>)
 8001860:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001862:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 8001866:	6413      	str	r3, [r2, #64]	; 0x40
 8001868:	4a14      	ldr	r2, [pc, #80]	; (80018bc <dac_init+0x64>)
 800186a:	4b14      	ldr	r3, [pc, #80]	; (80018bc <dac_init+0x64>)
 800186c:	681b      	ldr	r3, [r3, #0]
 800186e:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8001872:	6013      	str	r3, [r2, #0]
 8001874:	4a11      	ldr	r2, [pc, #68]	; (80018bc <dac_init+0x64>)
 8001876:	4b11      	ldr	r3, [pc, #68]	; (80018bc <dac_init+0x64>)
 8001878:	681b      	ldr	r3, [r3, #0]
 800187a:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 800187e:	6013      	str	r3, [r2, #0]
 8001880:	4a0e      	ldr	r2, [pc, #56]	; (80018bc <dac_init+0x64>)
 8001882:	4b0e      	ldr	r3, [pc, #56]	; (80018bc <dac_init+0x64>)
 8001884:	681b      	ldr	r3, [r3, #0]
 8001886:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
 800188a:	6013      	str	r3, [r2, #0]
 800188c:	4a0b      	ldr	r2, [pc, #44]	; (80018bc <dac_init+0x64>)
 800188e:	4b0b      	ldr	r3, [pc, #44]	; (80018bc <dac_init+0x64>)
 8001890:	681b      	ldr	r3, [r3, #0]
 8001892:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 8001896:	6013      	str	r3, [r2, #0]
 8001898:	4a09      	ldr	r2, [pc, #36]	; (80018c0 <dac_init+0x68>)
 800189a:	4b09      	ldr	r3, [pc, #36]	; (80018c0 <dac_init+0x68>)
 800189c:	681b      	ldr	r3, [r3, #0]
 800189e:	f043 0301 	orr.w	r3, r3, #1
 80018a2:	6013      	str	r3, [r2, #0]
 80018a4:	4a06      	ldr	r2, [pc, #24]	; (80018c0 <dac_init+0x68>)
 80018a6:	4b06      	ldr	r3, [pc, #24]	; (80018c0 <dac_init+0x68>)
 80018a8:	681b      	ldr	r3, [r3, #0]
 80018aa:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80018ae:	6013      	str	r3, [r2, #0]
 80018b0:	f7ff ff66 	bl	8001780 <offset_pwm_init>
 80018b4:	bf00      	nop
 80018b6:	bd80      	pop	{r7, pc}
 80018b8:	40023800 	.word	0x40023800
 80018bc:	40020000 	.word	0x40020000
 80018c0:	40007400 	.word	0x40007400

080018c4 <dac_offset_set>:
 80018c4:	b480      	push	{r7}
 80018c6:	b083      	sub	sp, #12
 80018c8:	af00      	add	r7, sp, #0
 80018ca:	4603      	mov	r3, r0
 80018cc:	80fb      	strh	r3, [r7, #6]
 80018ce:	4a04      	ldr	r2, [pc, #16]	; (80018e0 <dac_offset_set+0x1c>)
 80018d0:	88fb      	ldrh	r3, [r7, #6]
 80018d2:	6353      	str	r3, [r2, #52]	; 0x34
 80018d4:	bf00      	nop
 80018d6:	370c      	adds	r7, #12
 80018d8:	46bd      	mov	sp, r7
 80018da:	bc80      	pop	{r7}
 80018dc:	4770      	bx	lr
 80018de:	bf00      	nop
 80018e0:	40000800 	.word	0x40000800

080018e4 <NVIC_EnableIRQ>:
 80018e4:	b480      	push	{r7}
 80018e6:	b083      	sub	sp, #12
 80018e8:	af00      	add	r7, sp, #0
 80018ea:	4603      	mov	r3, r0
 80018ec:	71fb      	strb	r3, [r7, #7]
 80018ee:	4908      	ldr	r1, [pc, #32]	; (8001910 <NVIC_EnableIRQ+0x2c>)
 80018f0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80018f4:	095b      	lsrs	r3, r3, #5
 80018f6:	79fa      	ldrb	r2, [r7, #7]
 80018f8:	f002 021f 	and.w	r2, r2, #31
 80018fc:	2001      	movs	r0, #1
 80018fe:	fa00 f202 	lsl.w	r2, r0, r2
 8001902:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001906:	bf00      	nop
 8001908:	370c      	adds	r7, #12
 800190a:	46bd      	mov	sp, r7
 800190c:	bc80      	pop	{r7}
 800190e:	4770      	bx	lr
 8001910:	e000e100 	.word	0xe000e100

08001914 <start_trans>:
 8001914:	b480      	push	{r7}
 8001916:	b083      	sub	sp, #12
 8001918:	af00      	add	r7, sp, #0
 800191a:	6078      	str	r0, [r7, #4]
 800191c:	687b      	ldr	r3, [r7, #4]
 800191e:	4a19      	ldr	r2, [pc, #100]	; (8001984 <start_trans+0x70>)
 8001920:	6013      	str	r3, [r2, #0]
 8001922:	4b19      	ldr	r3, [pc, #100]	; (8001988 <start_trans+0x74>)
 8001924:	2200      	movs	r2, #0
 8001926:	601a      	str	r2, [r3, #0]
 8001928:	4a18      	ldr	r2, [pc, #96]	; (800198c <start_trans+0x78>)
 800192a:	4b18      	ldr	r3, [pc, #96]	; (800198c <start_trans+0x78>)
 800192c:	695b      	ldr	r3, [r3, #20]
 800192e:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8001932:	6153      	str	r3, [r2, #20]
 8001934:	4a16      	ldr	r2, [pc, #88]	; (8001990 <start_trans+0x7c>)
 8001936:	4b16      	ldr	r3, [pc, #88]	; (8001990 <start_trans+0x7c>)
 8001938:	899b      	ldrh	r3, [r3, #12]
 800193a:	b29b      	uxth	r3, r3
 800193c:	f043 0308 	orr.w	r3, r3, #8
 8001940:	b29b      	uxth	r3, r3
 8001942:	8193      	strh	r3, [r2, #12]
 8001944:	4a12      	ldr	r2, [pc, #72]	; (8001990 <start_trans+0x7c>)
 8001946:	4b12      	ldr	r3, [pc, #72]	; (8001990 <start_trans+0x7c>)
 8001948:	899b      	ldrh	r3, [r3, #12]
 800194a:	b29b      	uxth	r3, r3
 800194c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8001950:	b29b      	uxth	r3, r3
 8001952:	8193      	strh	r3, [r2, #12]
 8001954:	4a0e      	ldr	r2, [pc, #56]	; (8001990 <start_trans+0x7c>)
 8001956:	4b0c      	ldr	r3, [pc, #48]	; (8001988 <start_trans+0x74>)
 8001958:	681b      	ldr	r3, [r3, #0]
 800195a:	490e      	ldr	r1, [pc, #56]	; (8001994 <start_trans+0x80>)
 800195c:	5ccb      	ldrb	r3, [r1, r3]
 800195e:	b29b      	uxth	r3, r3
 8001960:	8093      	strh	r3, [r2, #4]
 8001962:	4b09      	ldr	r3, [pc, #36]	; (8001988 <start_trans+0x74>)
 8001964:	681b      	ldr	r3, [r3, #0]
 8001966:	3301      	adds	r3, #1
 8001968:	b2db      	uxtb	r3, r3
 800196a:	4a07      	ldr	r2, [pc, #28]	; (8001988 <start_trans+0x74>)
 800196c:	6013      	str	r3, [r2, #0]
 800196e:	4b05      	ldr	r3, [pc, #20]	; (8001984 <start_trans+0x70>)
 8001970:	681b      	ldr	r3, [r3, #0]
 8001972:	3b01      	subs	r3, #1
 8001974:	4a03      	ldr	r2, [pc, #12]	; (8001984 <start_trans+0x70>)
 8001976:	6013      	str	r3, [r2, #0]
 8001978:	bf00      	nop
 800197a:	370c      	adds	r7, #12
 800197c:	46bd      	mov	sp, r7
 800197e:	bc80      	pop	{r7}
 8001980:	4770      	bx	lr
 8001982:	bf00      	nop
 8001984:	20000c80 	.word	0x20000c80
 8001988:	20000c7c 	.word	0x20000c7c
 800198c:	40020c00 	.word	0x40020c00
 8001990:	40004800 	.word	0x40004800
 8001994:	20000b7c 	.word	0x20000b7c

08001998 <modbus_init>:
 8001998:	b580      	push	{r7, lr}
 800199a:	af00      	add	r7, sp, #0
 800199c:	4a3f      	ldr	r2, [pc, #252]	; (8001a9c <modbus_init+0x104>)
 800199e:	4b3f      	ldr	r3, [pc, #252]	; (8001a9c <modbus_init+0x104>)
 80019a0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80019a2:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 80019a6:	6413      	str	r3, [r2, #64]	; 0x40
 80019a8:	4b3d      	ldr	r3, [pc, #244]	; (8001aa0 <modbus_init+0x108>)
 80019aa:	2200      	movs	r2, #0
 80019ac:	819a      	strh	r2, [r3, #12]
 80019ae:	4a3c      	ldr	r2, [pc, #240]	; (8001aa0 <modbus_init+0x108>)
 80019b0:	4b3b      	ldr	r3, [pc, #236]	; (8001aa0 <modbus_init+0x108>)
 80019b2:	899b      	ldrh	r3, [r3, #12]
 80019b4:	b29b      	uxth	r3, r3
 80019b6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80019ba:	b29b      	uxth	r3, r3
 80019bc:	8193      	strh	r3, [r2, #12]
 80019be:	4a38      	ldr	r2, [pc, #224]	; (8001aa0 <modbus_init+0x108>)
 80019c0:	4b37      	ldr	r3, [pc, #220]	; (8001aa0 <modbus_init+0x108>)
 80019c2:	899b      	ldrh	r3, [r3, #12]
 80019c4:	b29b      	uxth	r3, r3
 80019c6:	f043 0304 	orr.w	r3, r3, #4
 80019ca:	b29b      	uxth	r3, r3
 80019cc:	8193      	strh	r3, [r2, #12]
 80019ce:	4a34      	ldr	r2, [pc, #208]	; (8001aa0 <modbus_init+0x108>)
 80019d0:	4b33      	ldr	r3, [pc, #204]	; (8001aa0 <modbus_init+0x108>)
 80019d2:	899b      	ldrh	r3, [r3, #12]
 80019d4:	b29b      	uxth	r3, r3
 80019d6:	f043 0320 	orr.w	r3, r3, #32
 80019da:	b29b      	uxth	r3, r3
 80019dc:	8193      	strh	r3, [r2, #12]
 80019de:	4a30      	ldr	r2, [pc, #192]	; (8001aa0 <modbus_init+0x108>)
 80019e0:	4b2f      	ldr	r3, [pc, #188]	; (8001aa0 <modbus_init+0x108>)
 80019e2:	899b      	ldrh	r3, [r3, #12]
 80019e4:	b29b      	uxth	r3, r3
 80019e6:	f043 0310 	orr.w	r3, r3, #16
 80019ea:	b29b      	uxth	r3, r3
 80019ec:	8193      	strh	r3, [r2, #12]
 80019ee:	2027      	movs	r0, #39	; 0x27
 80019f0:	f7ff ff78 	bl	80018e4 <NVIC_EnableIRQ>
 80019f4:	4b2a      	ldr	r3, [pc, #168]	; (8001aa0 <modbus_init+0x108>)
 80019f6:	891b      	ldrh	r3, [r3, #8]
 80019f8:	4b29      	ldr	r3, [pc, #164]	; (8001aa0 <modbus_init+0x108>)
 80019fa:	2200      	movs	r2, #0
 80019fc:	811a      	strh	r2, [r3, #8]
 80019fe:	4a28      	ldr	r2, [pc, #160]	; (8001aa0 <modbus_init+0x108>)
 8001a00:	4b27      	ldr	r3, [pc, #156]	; (8001aa0 <modbus_init+0x108>)
 8001a02:	891b      	ldrh	r3, [r3, #8]
 8001a04:	b29b      	uxth	r3, r3
 8001a06:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8001a0a:	f043 0301 	orr.w	r3, r3, #1
 8001a0e:	b29b      	uxth	r3, r3
 8001a10:	8113      	strh	r3, [r2, #8]
 8001a12:	4a22      	ldr	r2, [pc, #136]	; (8001a9c <modbus_init+0x104>)
 8001a14:	4b21      	ldr	r3, [pc, #132]	; (8001a9c <modbus_init+0x104>)
 8001a16:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001a18:	f043 0308 	orr.w	r3, r3, #8
 8001a1c:	6313      	str	r3, [r2, #48]	; 0x30
 8001a1e:	4a21      	ldr	r2, [pc, #132]	; (8001aa4 <modbus_init+0x10c>)
 8001a20:	4b20      	ldr	r3, [pc, #128]	; (8001aa4 <modbus_init+0x10c>)
 8001a22:	681b      	ldr	r3, [r3, #0]
 8001a24:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8001a28:	6013      	str	r3, [r2, #0]
 8001a2a:	4a1e      	ldr	r2, [pc, #120]	; (8001aa4 <modbus_init+0x10c>)
 8001a2c:	4b1d      	ldr	r3, [pc, #116]	; (8001aa4 <modbus_init+0x10c>)
 8001a2e:	681b      	ldr	r3, [r3, #0]
 8001a30:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8001a34:	6013      	str	r3, [r2, #0]
 8001a36:	4a1b      	ldr	r2, [pc, #108]	; (8001aa4 <modbus_init+0x10c>)
 8001a38:	4b1a      	ldr	r3, [pc, #104]	; (8001aa4 <modbus_init+0x10c>)
 8001a3a:	681b      	ldr	r3, [r3, #0]
 8001a3c:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 8001a40:	6013      	str	r3, [r2, #0]
 8001a42:	4a18      	ldr	r2, [pc, #96]	; (8001aa4 <modbus_init+0x10c>)
 8001a44:	4b17      	ldr	r3, [pc, #92]	; (8001aa4 <modbus_init+0x10c>)
 8001a46:	681b      	ldr	r3, [r3, #0]
 8001a48:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
 8001a4c:	6013      	str	r3, [r2, #0]
 8001a4e:	4a15      	ldr	r2, [pc, #84]	; (8001aa4 <modbus_init+0x10c>)
 8001a50:	4b14      	ldr	r3, [pc, #80]	; (8001aa4 <modbus_init+0x10c>)
 8001a52:	689b      	ldr	r3, [r3, #8]
 8001a54:	f443 2370 	orr.w	r3, r3, #983040	; 0xf0000
 8001a58:	6093      	str	r3, [r2, #8]
 8001a5a:	4a12      	ldr	r2, [pc, #72]	; (8001aa4 <modbus_init+0x10c>)
 8001a5c:	4b11      	ldr	r3, [pc, #68]	; (8001aa4 <modbus_init+0x10c>)
 8001a5e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a60:	f023 030f 	bic.w	r3, r3, #15
 8001a64:	6253      	str	r3, [r2, #36]	; 0x24
 8001a66:	4a0f      	ldr	r2, [pc, #60]	; (8001aa4 <modbus_init+0x10c>)
 8001a68:	4b0e      	ldr	r3, [pc, #56]	; (8001aa4 <modbus_init+0x10c>)
 8001a6a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a6c:	f043 0307 	orr.w	r3, r3, #7
 8001a70:	6253      	str	r3, [r2, #36]	; 0x24
 8001a72:	4a0c      	ldr	r2, [pc, #48]	; (8001aa4 <modbus_init+0x10c>)
 8001a74:	4b0b      	ldr	r3, [pc, #44]	; (8001aa4 <modbus_init+0x10c>)
 8001a76:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a78:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8001a7c:	6253      	str	r3, [r2, #36]	; 0x24
 8001a7e:	4a09      	ldr	r2, [pc, #36]	; (8001aa4 <modbus_init+0x10c>)
 8001a80:	4b08      	ldr	r3, [pc, #32]	; (8001aa4 <modbus_init+0x10c>)
 8001a82:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a84:	f043 0370 	orr.w	r3, r3, #112	; 0x70
 8001a88:	6253      	str	r3, [r2, #36]	; 0x24
 8001a8a:	4a06      	ldr	r2, [pc, #24]	; (8001aa4 <modbus_init+0x10c>)
 8001a8c:	4b05      	ldr	r3, [pc, #20]	; (8001aa4 <modbus_init+0x10c>)
 8001a8e:	695b      	ldr	r3, [r3, #20]
 8001a90:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8001a94:	6153      	str	r3, [r2, #20]
 8001a96:	bf00      	nop
 8001a98:	bd80      	pop	{r7, pc}
 8001a9a:	bf00      	nop
 8001a9c:	40023800 	.word	0x40023800
 8001aa0:	40004800 	.word	0x40004800
 8001aa4:	40020c00 	.word	0x40020c00

08001aa8 <USART3_IRQHandler>:
 8001aa8:	b580      	push	{r7, lr}
 8001aaa:	b082      	sub	sp, #8
 8001aac:	af00      	add	r7, sp, #0
 8001aae:	4b38      	ldr	r3, [pc, #224]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001ab0:	881b      	ldrh	r3, [r3, #0]
 8001ab2:	b29b      	uxth	r3, r3
 8001ab4:	f003 0310 	and.w	r3, r3, #16
 8001ab8:	2b00      	cmp	r3, #0
 8001aba:	d00c      	beq.n	8001ad6 <USART3_IRQHandler+0x2e>
 8001abc:	4b34      	ldr	r3, [pc, #208]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001abe:	889b      	ldrh	r3, [r3, #4]
 8001ac0:	b29b      	uxth	r3, r3
 8001ac2:	71fb      	strb	r3, [r7, #7]
 8001ac4:	f000 fe12 	bl	80026ec <proc_ADU>
 8001ac8:	4b32      	ldr	r3, [pc, #200]	; (8001b94 <USART3_IRQHandler+0xec>)
 8001aca:	681b      	ldr	r3, [r3, #0]
 8001acc:	4a32      	ldr	r2, [pc, #200]	; (8001b98 <USART3_IRQHandler+0xf0>)
 8001ace:	6013      	str	r3, [r2, #0]
 8001ad0:	4b30      	ldr	r3, [pc, #192]	; (8001b94 <USART3_IRQHandler+0xec>)
 8001ad2:	2200      	movs	r2, #0
 8001ad4:	601a      	str	r2, [r3, #0]
 8001ad6:	4b2e      	ldr	r3, [pc, #184]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001ad8:	881b      	ldrh	r3, [r3, #0]
 8001ada:	b29b      	uxth	r3, r3
 8001adc:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001ae0:	2b00      	cmp	r3, #0
 8001ae2:	d01e      	beq.n	8001b22 <USART3_IRQHandler+0x7a>
 8001ae4:	4b2d      	ldr	r3, [pc, #180]	; (8001b9c <USART3_IRQHandler+0xf4>)
 8001ae6:	681b      	ldr	r3, [r3, #0]
 8001ae8:	2b00      	cmp	r3, #0
 8001aea:	d108      	bne.n	8001afe <USART3_IRQHandler+0x56>
 8001aec:	4a28      	ldr	r2, [pc, #160]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001aee:	4b28      	ldr	r3, [pc, #160]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001af0:	899b      	ldrh	r3, [r3, #12]
 8001af2:	b29b      	uxth	r3, r3
 8001af4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001af8:	b29b      	uxth	r3, r3
 8001afa:	8193      	strh	r3, [r2, #12]
 8001afc:	e011      	b.n	8001b22 <USART3_IRQHandler+0x7a>
 8001afe:	4a24      	ldr	r2, [pc, #144]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b00:	4b27      	ldr	r3, [pc, #156]	; (8001ba0 <USART3_IRQHandler+0xf8>)
 8001b02:	681b      	ldr	r3, [r3, #0]
 8001b04:	4927      	ldr	r1, [pc, #156]	; (8001ba4 <USART3_IRQHandler+0xfc>)
 8001b06:	5ccb      	ldrb	r3, [r1, r3]
 8001b08:	b29b      	uxth	r3, r3
 8001b0a:	8093      	strh	r3, [r2, #4]
 8001b0c:	4b24      	ldr	r3, [pc, #144]	; (8001ba0 <USART3_IRQHandler+0xf8>)
 8001b0e:	681b      	ldr	r3, [r3, #0]
 8001b10:	3301      	adds	r3, #1
 8001b12:	b2db      	uxtb	r3, r3
 8001b14:	4a22      	ldr	r2, [pc, #136]	; (8001ba0 <USART3_IRQHandler+0xf8>)
 8001b16:	6013      	str	r3, [r2, #0]
 8001b18:	4b20      	ldr	r3, [pc, #128]	; (8001b9c <USART3_IRQHandler+0xf4>)
 8001b1a:	681b      	ldr	r3, [r3, #0]
 8001b1c:	3b01      	subs	r3, #1
 8001b1e:	4a1f      	ldr	r2, [pc, #124]	; (8001b9c <USART3_IRQHandler+0xf4>)
 8001b20:	6013      	str	r3, [r2, #0]
 8001b22:	4b1b      	ldr	r3, [pc, #108]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b24:	881b      	ldrh	r3, [r3, #0]
 8001b26:	b29b      	uxth	r3, r3
 8001b28:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001b2c:	2b00      	cmp	r3, #0
 8001b2e:	d015      	beq.n	8001b5c <USART3_IRQHandler+0xb4>
 8001b30:	4a17      	ldr	r2, [pc, #92]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b32:	4b17      	ldr	r3, [pc, #92]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b34:	881b      	ldrh	r3, [r3, #0]
 8001b36:	b29b      	uxth	r3, r3
 8001b38:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001b3c:	b29b      	uxth	r3, r3
 8001b3e:	8013      	strh	r3, [r2, #0]
 8001b40:	4a13      	ldr	r2, [pc, #76]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b42:	4b13      	ldr	r3, [pc, #76]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b44:	899b      	ldrh	r3, [r3, #12]
 8001b46:	b29b      	uxth	r3, r3
 8001b48:	f023 03c0 	bic.w	r3, r3, #192	; 0xc0
 8001b4c:	b29b      	uxth	r3, r3
 8001b4e:	8193      	strh	r3, [r2, #12]
 8001b50:	4a15      	ldr	r2, [pc, #84]	; (8001ba8 <USART3_IRQHandler+0x100>)
 8001b52:	4b15      	ldr	r3, [pc, #84]	; (8001ba8 <USART3_IRQHandler+0x100>)
 8001b54:	695b      	ldr	r3, [r3, #20]
 8001b56:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8001b5a:	6153      	str	r3, [r2, #20]
 8001b5c:	4b0c      	ldr	r3, [pc, #48]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b5e:	881b      	ldrh	r3, [r3, #0]
 8001b60:	b29b      	uxth	r3, r3
 8001b62:	f003 0320 	and.w	r3, r3, #32
 8001b66:	2b00      	cmp	r3, #0
 8001b68:	d00d      	beq.n	8001b86 <USART3_IRQHandler+0xde>
 8001b6a:	4b0a      	ldr	r3, [pc, #40]	; (8001b94 <USART3_IRQHandler+0xec>)
 8001b6c:	681b      	ldr	r3, [r3, #0]
 8001b6e:	4a08      	ldr	r2, [pc, #32]	; (8001b90 <USART3_IRQHandler+0xe8>)
 8001b70:	8892      	ldrh	r2, [r2, #4]
 8001b72:	b292      	uxth	r2, r2
 8001b74:	b2d1      	uxtb	r1, r2
 8001b76:	4a0d      	ldr	r2, [pc, #52]	; (8001bac <USART3_IRQHandler+0x104>)
 8001b78:	54d1      	strb	r1, [r2, r3]
 8001b7a:	4b06      	ldr	r3, [pc, #24]	; (8001b94 <USART3_IRQHandler+0xec>)
 8001b7c:	681b      	ldr	r3, [r3, #0]
 8001b7e:	3301      	adds	r3, #1
 8001b80:	b2db      	uxtb	r3, r3
 8001b82:	4a04      	ldr	r2, [pc, #16]	; (8001b94 <USART3_IRQHandler+0xec>)
 8001b84:	6013      	str	r3, [r2, #0]
 8001b86:	bf00      	nop
 8001b88:	3708      	adds	r7, #8
 8001b8a:	46bd      	mov	sp, r7
 8001b8c:	bd80      	pop	{r7, pc}
 8001b8e:	bf00      	nop
 8001b90:	40004800 	.word	0x40004800
 8001b94:	20000b74 	.word	0x20000b74
 8001b98:	20000b78 	.word	0x20000b78
 8001b9c:	20000c80 	.word	0x20000c80
 8001ba0:	20000c7c 	.word	0x20000c7c
 8001ba4:	20000b7c 	.word	0x20000b7c
 8001ba8:	40020c00 	.word	0x40020c00
 8001bac:	20000a74 	.word	0x20000a74

08001bb0 <pack_bits_to_bytes>:
 8001bb0:	b480      	push	{r7}
 8001bb2:	b089      	sub	sp, #36	; 0x24
 8001bb4:	af00      	add	r7, sp, #0
 8001bb6:	60f8      	str	r0, [r7, #12]
 8001bb8:	60b9      	str	r1, [r7, #8]
 8001bba:	607a      	str	r2, [r7, #4]
 8001bbc:	603b      	str	r3, [r7, #0]
 8001bbe:	687b      	ldr	r3, [r7, #4]
 8001bc0:	10db      	asrs	r3, r3, #3
 8001bc2:	61fb      	str	r3, [r7, #28]
 8001bc4:	687b      	ldr	r3, [r7, #4]
 8001bc6:	f003 0307 	and.w	r3, r3, #7
 8001bca:	617b      	str	r3, [r7, #20]
 8001bcc:	2300      	movs	r3, #0
 8001bce:	61bb      	str	r3, [r7, #24]
 8001bd0:	69fb      	ldr	r3, [r7, #28]
 8001bd2:	1c5a      	adds	r2, r3, #1
 8001bd4:	61fa      	str	r2, [r7, #28]
 8001bd6:	461a      	mov	r2, r3
 8001bd8:	68bb      	ldr	r3, [r7, #8]
 8001bda:	4413      	add	r3, r2
 8001bdc:	781b      	ldrb	r3, [r3, #0]
 8001bde:	461a      	mov	r2, r3
 8001be0:	697b      	ldr	r3, [r7, #20]
 8001be2:	fa42 f303 	asr.w	r3, r2, r3
 8001be6:	74fb      	strb	r3, [r7, #19]
 8001be8:	69fb      	ldr	r3, [r7, #28]
 8001bea:	68ba      	ldr	r2, [r7, #8]
 8001bec:	4413      	add	r3, r2
 8001bee:	781b      	ldrb	r3, [r3, #0]
 8001bf0:	461a      	mov	r2, r3
 8001bf2:	697b      	ldr	r3, [r7, #20]
 8001bf4:	f1c3 0308 	rsb	r3, r3, #8
 8001bf8:	fa02 f303 	lsl.w	r3, r2, r3
 8001bfc:	b25a      	sxtb	r2, r3
 8001bfe:	f997 3013 	ldrsb.w	r3, [r7, #19]
 8001c02:	4313      	orrs	r3, r2
 8001c04:	b25b      	sxtb	r3, r3
 8001c06:	74fb      	strb	r3, [r7, #19]
 8001c08:	69bb      	ldr	r3, [r7, #24]
 8001c0a:	68fa      	ldr	r2, [r7, #12]
 8001c0c:	4413      	add	r3, r2
 8001c0e:	7cfa      	ldrb	r2, [r7, #19]
 8001c10:	701a      	strb	r2, [r3, #0]
 8001c12:	683b      	ldr	r3, [r7, #0]
 8001c14:	2b08      	cmp	r3, #8
 8001c16:	dd06      	ble.n	8001c26 <pack_bits_to_bytes+0x76>
 8001c18:	683b      	ldr	r3, [r7, #0]
 8001c1a:	3b08      	subs	r3, #8
 8001c1c:	603b      	str	r3, [r7, #0]
 8001c1e:	69bb      	ldr	r3, [r7, #24]
 8001c20:	3301      	adds	r3, #1
 8001c22:	61bb      	str	r3, [r7, #24]
 8001c24:	e7d4      	b.n	8001bd0 <pack_bits_to_bytes+0x20>
 8001c26:	69bb      	ldr	r3, [r7, #24]
 8001c28:	68fa      	ldr	r2, [r7, #12]
 8001c2a:	4413      	add	r3, r2
 8001c2c:	69ba      	ldr	r2, [r7, #24]
 8001c2e:	68f9      	ldr	r1, [r7, #12]
 8001c30:	440a      	add	r2, r1
 8001c32:	7812      	ldrb	r2, [r2, #0]
 8001c34:	b251      	sxtb	r1, r2
 8001c36:	683a      	ldr	r2, [r7, #0]
 8001c38:	f1c2 0208 	rsb	r2, r2, #8
 8001c3c:	20ff      	movs	r0, #255	; 0xff
 8001c3e:	fa40 f202 	asr.w	r2, r0, r2
 8001c42:	b252      	sxtb	r2, r2
 8001c44:	400a      	ands	r2, r1
 8001c46:	b252      	sxtb	r2, r2
 8001c48:	b2d2      	uxtb	r2, r2
 8001c4a:	701a      	strb	r2, [r3, #0]
 8001c4c:	bf00      	nop
 8001c4e:	69bb      	ldr	r3, [r7, #24]
 8001c50:	3301      	adds	r3, #1
 8001c52:	4618      	mov	r0, r3
 8001c54:	3724      	adds	r7, #36	; 0x24
 8001c56:	46bd      	mov	sp, r7
 8001c58:	bc80      	pop	{r7}
 8001c5a:	4770      	bx	lr

08001c5c <set_coil>:
 8001c5c:	b480      	push	{r7}
 8001c5e:	b085      	sub	sp, #20
 8001c60:	af00      	add	r7, sp, #0
 8001c62:	6078      	str	r0, [r7, #4]
 8001c64:	460b      	mov	r3, r1
 8001c66:	70fb      	strb	r3, [r7, #3]
 8001c68:	687b      	ldr	r3, [r7, #4]
 8001c6a:	3b13      	subs	r3, #19
 8001c6c:	607b      	str	r3, [r7, #4]
 8001c6e:	687b      	ldr	r3, [r7, #4]
 8001c70:	10db      	asrs	r3, r3, #3
 8001c72:	60fb      	str	r3, [r7, #12]
 8001c74:	687b      	ldr	r3, [r7, #4]
 8001c76:	f003 0307 	and.w	r3, r3, #7
 8001c7a:	60bb      	str	r3, [r7, #8]
 8001c7c:	4a15      	ldr	r2, [pc, #84]	; (8001cd4 <set_coil+0x78>)
 8001c7e:	68fb      	ldr	r3, [r7, #12]
 8001c80:	4413      	add	r3, r2
 8001c82:	781b      	ldrb	r3, [r3, #0]
 8001c84:	b25a      	sxtb	r2, r3
 8001c86:	2101      	movs	r1, #1
 8001c88:	68bb      	ldr	r3, [r7, #8]
 8001c8a:	fa01 f303 	lsl.w	r3, r1, r3
 8001c8e:	b25b      	sxtb	r3, r3
 8001c90:	43db      	mvns	r3, r3
 8001c92:	b25b      	sxtb	r3, r3
 8001c94:	4013      	ands	r3, r2
 8001c96:	b25b      	sxtb	r3, r3
 8001c98:	b2d9      	uxtb	r1, r3
 8001c9a:	4a0e      	ldr	r2, [pc, #56]	; (8001cd4 <set_coil+0x78>)
 8001c9c:	68fb      	ldr	r3, [r7, #12]
 8001c9e:	4413      	add	r3, r2
 8001ca0:	460a      	mov	r2, r1
 8001ca2:	701a      	strb	r2, [r3, #0]
 8001ca4:	4a0b      	ldr	r2, [pc, #44]	; (8001cd4 <set_coil+0x78>)
 8001ca6:	68fb      	ldr	r3, [r7, #12]
 8001ca8:	4413      	add	r3, r2
 8001caa:	781b      	ldrb	r3, [r3, #0]
 8001cac:	b25a      	sxtb	r2, r3
 8001cae:	78f9      	ldrb	r1, [r7, #3]
 8001cb0:	68bb      	ldr	r3, [r7, #8]
 8001cb2:	fa01 f303 	lsl.w	r3, r1, r3
 8001cb6:	b25b      	sxtb	r3, r3
 8001cb8:	4313      	orrs	r3, r2
 8001cba:	b25b      	sxtb	r3, r3
 8001cbc:	b2d9      	uxtb	r1, r3
 8001cbe:	4a05      	ldr	r2, [pc, #20]	; (8001cd4 <set_coil+0x78>)
 8001cc0:	68fb      	ldr	r3, [r7, #12]
 8001cc2:	4413      	add	r3, r2
 8001cc4:	460a      	mov	r2, r1
 8001cc6:	701a      	strb	r2, [r3, #0]
 8001cc8:	bf00      	nop
 8001cca:	3714      	adds	r7, #20
 8001ccc:	46bd      	mov	sp, r7
 8001cce:	bc80      	pop	{r7}
 8001cd0:	4770      	bx	lr
 8001cd2:	bf00      	nop
 8001cd4:	20000008 	.word	0x20000008

08001cd8 <pdu_write_single_coil>:
 8001cd8:	b580      	push	{r7, lr}
 8001cda:	b084      	sub	sp, #16
 8001cdc:	af00      	add	r7, sp, #0
 8001cde:	4b3d      	ldr	r3, [pc, #244]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001ce0:	785b      	ldrb	r3, [r3, #1]
 8001ce2:	73fb      	strb	r3, [r7, #15]
 8001ce4:	4b3b      	ldr	r3, [pc, #236]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001ce6:	789b      	ldrb	r3, [r3, #2]
 8001ce8:	021b      	lsls	r3, r3, #8
 8001cea:	b21a      	sxth	r2, r3
 8001cec:	4b39      	ldr	r3, [pc, #228]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001cee:	78db      	ldrb	r3, [r3, #3]
 8001cf0:	b21b      	sxth	r3, r3
 8001cf2:	4313      	orrs	r3, r2
 8001cf4:	b21b      	sxth	r3, r3
 8001cf6:	81bb      	strh	r3, [r7, #12]
 8001cf8:	4b36      	ldr	r3, [pc, #216]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001cfa:	791b      	ldrb	r3, [r3, #4]
 8001cfc:	021b      	lsls	r3, r3, #8
 8001cfe:	b21a      	sxth	r2, r3
 8001d00:	4b34      	ldr	r3, [pc, #208]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001d02:	795b      	ldrb	r3, [r3, #5]
 8001d04:	b21b      	sxth	r3, r3
 8001d06:	4313      	orrs	r3, r2
 8001d08:	b21b      	sxth	r3, r3
 8001d0a:	817b      	strh	r3, [r7, #10]
 8001d0c:	2301      	movs	r3, #1
 8001d0e:	607b      	str	r3, [r7, #4]
 8001d10:	89bb      	ldrh	r3, [r7, #12]
 8001d12:	2b12      	cmp	r3, #18
 8001d14:	d902      	bls.n	8001d1c <pdu_write_single_coil+0x44>
 8001d16:	89bb      	ldrh	r3, [r7, #12]
 8001d18:	2b37      	cmp	r3, #55	; 0x37
 8001d1a:	d910      	bls.n	8001d3e <pdu_write_single_coil+0x66>
 8001d1c:	687b      	ldr	r3, [r7, #4]
 8001d1e:	1c5a      	adds	r2, r3, #1
 8001d20:	607a      	str	r2, [r7, #4]
 8001d22:	7bfa      	ldrb	r2, [r7, #15]
 8001d24:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d28:	b2d1      	uxtb	r1, r2
 8001d2a:	4a2b      	ldr	r2, [pc, #172]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001d2c:	54d1      	strb	r1, [r2, r3]
 8001d2e:	687b      	ldr	r3, [r7, #4]
 8001d30:	1c5a      	adds	r2, r3, #1
 8001d32:	607a      	str	r2, [r7, #4]
 8001d34:	4a28      	ldr	r2, [pc, #160]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001d36:	2102      	movs	r1, #2
 8001d38:	54d1      	strb	r1, [r2, r3]
 8001d3a:	687b      	ldr	r3, [r7, #4]
 8001d3c:	e046      	b.n	8001dcc <pdu_write_single_coil+0xf4>
 8001d3e:	897b      	ldrh	r3, [r7, #10]
 8001d40:	2b00      	cmp	r3, #0
 8001d42:	d105      	bne.n	8001d50 <pdu_write_single_coil+0x78>
 8001d44:	89bb      	ldrh	r3, [r7, #12]
 8001d46:	2100      	movs	r1, #0
 8001d48:	4618      	mov	r0, r3
 8001d4a:	f7ff ff87 	bl	8001c5c <set_coil>
 8001d4e:	e01a      	b.n	8001d86 <pdu_write_single_coil+0xae>
 8001d50:	897b      	ldrh	r3, [r7, #10]
 8001d52:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
 8001d56:	d105      	bne.n	8001d64 <pdu_write_single_coil+0x8c>
 8001d58:	89bb      	ldrh	r3, [r7, #12]
 8001d5a:	2101      	movs	r1, #1
 8001d5c:	4618      	mov	r0, r3
 8001d5e:	f7ff ff7d 	bl	8001c5c <set_coil>
 8001d62:	e010      	b.n	8001d86 <pdu_write_single_coil+0xae>
 8001d64:	687b      	ldr	r3, [r7, #4]
 8001d66:	1c5a      	adds	r2, r3, #1
 8001d68:	607a      	str	r2, [r7, #4]
 8001d6a:	7bfa      	ldrb	r2, [r7, #15]
 8001d6c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d70:	b2d1      	uxtb	r1, r2
 8001d72:	4a19      	ldr	r2, [pc, #100]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001d74:	54d1      	strb	r1, [r2, r3]
 8001d76:	687b      	ldr	r3, [r7, #4]
 8001d78:	1c5a      	adds	r2, r3, #1
 8001d7a:	607a      	str	r2, [r7, #4]
 8001d7c:	4a16      	ldr	r2, [pc, #88]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001d7e:	2103      	movs	r1, #3
 8001d80:	54d1      	strb	r1, [r2, r3]
 8001d82:	687b      	ldr	r3, [r7, #4]
 8001d84:	e022      	b.n	8001dcc <pdu_write_single_coil+0xf4>
 8001d86:	687b      	ldr	r3, [r7, #4]
 8001d88:	1c5a      	adds	r2, r3, #1
 8001d8a:	607a      	str	r2, [r7, #4]
 8001d8c:	4912      	ldr	r1, [pc, #72]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001d8e:	7bfa      	ldrb	r2, [r7, #15]
 8001d90:	54ca      	strb	r2, [r1, r3]
 8001d92:	687b      	ldr	r3, [r7, #4]
 8001d94:	1c5a      	adds	r2, r3, #1
 8001d96:	607a      	str	r2, [r7, #4]
 8001d98:	4a0e      	ldr	r2, [pc, #56]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001d9a:	7891      	ldrb	r1, [r2, #2]
 8001d9c:	4a0e      	ldr	r2, [pc, #56]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001d9e:	54d1      	strb	r1, [r2, r3]
 8001da0:	687b      	ldr	r3, [r7, #4]
 8001da2:	1c5a      	adds	r2, r3, #1
 8001da4:	607a      	str	r2, [r7, #4]
 8001da6:	4a0b      	ldr	r2, [pc, #44]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001da8:	78d1      	ldrb	r1, [r2, #3]
 8001daa:	4a0b      	ldr	r2, [pc, #44]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001dac:	54d1      	strb	r1, [r2, r3]
 8001dae:	687b      	ldr	r3, [r7, #4]
 8001db0:	1c5a      	adds	r2, r3, #1
 8001db2:	607a      	str	r2, [r7, #4]
 8001db4:	4a07      	ldr	r2, [pc, #28]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001db6:	7911      	ldrb	r1, [r2, #4]
 8001db8:	4a07      	ldr	r2, [pc, #28]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001dba:	54d1      	strb	r1, [r2, r3]
 8001dbc:	687b      	ldr	r3, [r7, #4]
 8001dbe:	1c5a      	adds	r2, r3, #1
 8001dc0:	607a      	str	r2, [r7, #4]
 8001dc2:	4a04      	ldr	r2, [pc, #16]	; (8001dd4 <pdu_write_single_coil+0xfc>)
 8001dc4:	7951      	ldrb	r1, [r2, #5]
 8001dc6:	4a04      	ldr	r2, [pc, #16]	; (8001dd8 <pdu_write_single_coil+0x100>)
 8001dc8:	54d1      	strb	r1, [r2, r3]
 8001dca:	687b      	ldr	r3, [r7, #4]
 8001dcc:	4618      	mov	r0, r3
 8001dce:	3710      	adds	r7, #16
 8001dd0:	46bd      	mov	sp, r7
 8001dd2:	bd80      	pop	{r7, pc}
 8001dd4:	20000a74 	.word	0x20000a74
 8001dd8:	20000b7c 	.word	0x20000b7c

08001ddc <pdu_write_multiply_coils>:
 8001ddc:	b580      	push	{r7, lr}
 8001dde:	b086      	sub	sp, #24
 8001de0:	af00      	add	r7, sp, #0
 8001de2:	4b45      	ldr	r3, [pc, #276]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001de4:	785b      	ldrb	r3, [r3, #1]
 8001de6:	72bb      	strb	r3, [r7, #10]
 8001de8:	4b43      	ldr	r3, [pc, #268]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001dea:	789b      	ldrb	r3, [r3, #2]
 8001dec:	021b      	lsls	r3, r3, #8
 8001dee:	b21a      	sxth	r2, r3
 8001df0:	4b41      	ldr	r3, [pc, #260]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001df2:	78db      	ldrb	r3, [r3, #3]
 8001df4:	b21b      	sxth	r3, r3
 8001df6:	4313      	orrs	r3, r2
 8001df8:	b21b      	sxth	r3, r3
 8001dfa:	82fb      	strh	r3, [r7, #22]
 8001dfc:	4b3e      	ldr	r3, [pc, #248]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001dfe:	791b      	ldrb	r3, [r3, #4]
 8001e00:	021b      	lsls	r3, r3, #8
 8001e02:	b21a      	sxth	r2, r3
 8001e04:	4b3c      	ldr	r3, [pc, #240]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001e06:	795b      	ldrb	r3, [r3, #5]
 8001e08:	b21b      	sxth	r3, r3
 8001e0a:	4313      	orrs	r3, r2
 8001e0c:	b21b      	sxth	r3, r3
 8001e0e:	813b      	strh	r3, [r7, #8]
 8001e10:	4b39      	ldr	r3, [pc, #228]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001e12:	799b      	ldrb	r3, [r3, #6]
 8001e14:	71fb      	strb	r3, [r7, #7]
 8001e16:	2301      	movs	r3, #1
 8001e18:	603b      	str	r3, [r7, #0]
 8001e1a:	8afb      	ldrh	r3, [r7, #22]
 8001e1c:	2b12      	cmp	r3, #18
 8001e1e:	d904      	bls.n	8001e2a <pdu_write_multiply_coils+0x4e>
 8001e20:	8afa      	ldrh	r2, [r7, #22]
 8001e22:	893b      	ldrh	r3, [r7, #8]
 8001e24:	4413      	add	r3, r2
 8001e26:	2b38      	cmp	r3, #56	; 0x38
 8001e28:	dd10      	ble.n	8001e4c <pdu_write_multiply_coils+0x70>
 8001e2a:	683b      	ldr	r3, [r7, #0]
 8001e2c:	1c5a      	adds	r2, r3, #1
 8001e2e:	603a      	str	r2, [r7, #0]
 8001e30:	7aba      	ldrb	r2, [r7, #10]
 8001e32:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001e36:	b2d1      	uxtb	r1, r2
 8001e38:	4a30      	ldr	r2, [pc, #192]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001e3a:	54d1      	strb	r1, [r2, r3]
 8001e3c:	683b      	ldr	r3, [r7, #0]
 8001e3e:	1c5a      	adds	r2, r3, #1
 8001e40:	603a      	str	r2, [r7, #0]
 8001e42:	4a2e      	ldr	r2, [pc, #184]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001e44:	2102      	movs	r1, #2
 8001e46:	54d1      	strb	r1, [r2, r3]
 8001e48:	683b      	ldr	r3, [r7, #0]
 8001e4a:	e050      	b.n	8001eee <pdu_write_multiply_coils+0x112>
 8001e4c:	2300      	movs	r3, #0
 8001e4e:	613b      	str	r3, [r7, #16]
 8001e50:	e026      	b.n	8001ea0 <pdu_write_multiply_coils+0xc4>
 8001e52:	693b      	ldr	r3, [r7, #16]
 8001e54:	3307      	adds	r3, #7
 8001e56:	4a28      	ldr	r2, [pc, #160]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001e58:	5cd3      	ldrb	r3, [r2, r3]
 8001e5a:	72fb      	strb	r3, [r7, #11]
 8001e5c:	2300      	movs	r3, #0
 8001e5e:	60fb      	str	r3, [r7, #12]
 8001e60:	e016      	b.n	8001e90 <pdu_write_multiply_coils+0xb4>
 8001e62:	8afb      	ldrh	r3, [r7, #22]
 8001e64:	1c5a      	adds	r2, r3, #1
 8001e66:	82fa      	strh	r2, [r7, #22]
 8001e68:	461a      	mov	r2, r3
 8001e6a:	7afb      	ldrb	r3, [r7, #11]
 8001e6c:	f003 0301 	and.w	r3, r3, #1
 8001e70:	b2db      	uxtb	r3, r3
 8001e72:	4619      	mov	r1, r3
 8001e74:	4610      	mov	r0, r2
 8001e76:	f7ff fef1 	bl	8001c5c <set_coil>
 8001e7a:	8afa      	ldrh	r2, [r7, #22]
 8001e7c:	893b      	ldrh	r3, [r7, #8]
 8001e7e:	3313      	adds	r3, #19
 8001e80:	429a      	cmp	r2, r3
 8001e82:	d009      	beq.n	8001e98 <pdu_write_multiply_coils+0xbc>
 8001e84:	7afb      	ldrb	r3, [r7, #11]
 8001e86:	085b      	lsrs	r3, r3, #1
 8001e88:	72fb      	strb	r3, [r7, #11]
 8001e8a:	68fb      	ldr	r3, [r7, #12]
 8001e8c:	3301      	adds	r3, #1
 8001e8e:	60fb      	str	r3, [r7, #12]
 8001e90:	68fb      	ldr	r3, [r7, #12]
 8001e92:	2b07      	cmp	r3, #7
 8001e94:	dde5      	ble.n	8001e62 <pdu_write_multiply_coils+0x86>
 8001e96:	e000      	b.n	8001e9a <pdu_write_multiply_coils+0xbe>
 8001e98:	bf00      	nop
 8001e9a:	693b      	ldr	r3, [r7, #16]
 8001e9c:	3301      	adds	r3, #1
 8001e9e:	613b      	str	r3, [r7, #16]
 8001ea0:	79fa      	ldrb	r2, [r7, #7]
 8001ea2:	693b      	ldr	r3, [r7, #16]
 8001ea4:	429a      	cmp	r2, r3
 8001ea6:	dcd4      	bgt.n	8001e52 <pdu_write_multiply_coils+0x76>
 8001ea8:	683b      	ldr	r3, [r7, #0]
 8001eaa:	1c5a      	adds	r2, r3, #1
 8001eac:	603a      	str	r2, [r7, #0]
 8001eae:	4913      	ldr	r1, [pc, #76]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001eb0:	7aba      	ldrb	r2, [r7, #10]
 8001eb2:	54ca      	strb	r2, [r1, r3]
 8001eb4:	683b      	ldr	r3, [r7, #0]
 8001eb6:	1c5a      	adds	r2, r3, #1
 8001eb8:	603a      	str	r2, [r7, #0]
 8001eba:	4a0f      	ldr	r2, [pc, #60]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001ebc:	7891      	ldrb	r1, [r2, #2]
 8001ebe:	4a0f      	ldr	r2, [pc, #60]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001ec0:	54d1      	strb	r1, [r2, r3]
 8001ec2:	683b      	ldr	r3, [r7, #0]
 8001ec4:	1c5a      	adds	r2, r3, #1
 8001ec6:	603a      	str	r2, [r7, #0]
 8001ec8:	4a0b      	ldr	r2, [pc, #44]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001eca:	78d1      	ldrb	r1, [r2, #3]
 8001ecc:	4a0b      	ldr	r2, [pc, #44]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001ece:	54d1      	strb	r1, [r2, r3]
 8001ed0:	683b      	ldr	r3, [r7, #0]
 8001ed2:	1c5a      	adds	r2, r3, #1
 8001ed4:	603a      	str	r2, [r7, #0]
 8001ed6:	4a08      	ldr	r2, [pc, #32]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001ed8:	7911      	ldrb	r1, [r2, #4]
 8001eda:	4a08      	ldr	r2, [pc, #32]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001edc:	54d1      	strb	r1, [r2, r3]
 8001ede:	683b      	ldr	r3, [r7, #0]
 8001ee0:	1c5a      	adds	r2, r3, #1
 8001ee2:	603a      	str	r2, [r7, #0]
 8001ee4:	4a04      	ldr	r2, [pc, #16]	; (8001ef8 <pdu_write_multiply_coils+0x11c>)
 8001ee6:	7951      	ldrb	r1, [r2, #5]
 8001ee8:	4a04      	ldr	r2, [pc, #16]	; (8001efc <pdu_write_multiply_coils+0x120>)
 8001eea:	54d1      	strb	r1, [r2, r3]
 8001eec:	683b      	ldr	r3, [r7, #0]
 8001eee:	4618      	mov	r0, r3
 8001ef0:	3718      	adds	r7, #24
 8001ef2:	46bd      	mov	sp, r7
 8001ef4:	bd80      	pop	{r7, pc}
 8001ef6:	bf00      	nop
 8001ef8:	20000a74 	.word	0x20000a74
 8001efc:	20000b7c 	.word	0x20000b7c

08001f00 <pdu_read_coils>:
 8001f00:	b580      	push	{r7, lr}
 8001f02:	b084      	sub	sp, #16
 8001f04:	af00      	add	r7, sp, #0
 8001f06:	4b28      	ldr	r3, [pc, #160]	; (8001fa8 <pdu_read_coils+0xa8>)
 8001f08:	785b      	ldrb	r3, [r3, #1]
 8001f0a:	73fb      	strb	r3, [r7, #15]
 8001f0c:	4b26      	ldr	r3, [pc, #152]	; (8001fa8 <pdu_read_coils+0xa8>)
 8001f0e:	789b      	ldrb	r3, [r3, #2]
 8001f10:	021b      	lsls	r3, r3, #8
 8001f12:	b21a      	sxth	r2, r3
 8001f14:	4b24      	ldr	r3, [pc, #144]	; (8001fa8 <pdu_read_coils+0xa8>)
 8001f16:	78db      	ldrb	r3, [r3, #3]
 8001f18:	b21b      	sxth	r3, r3
 8001f1a:	4313      	orrs	r3, r2
 8001f1c:	b21b      	sxth	r3, r3
 8001f1e:	81bb      	strh	r3, [r7, #12]
 8001f20:	4b21      	ldr	r3, [pc, #132]	; (8001fa8 <pdu_read_coils+0xa8>)
 8001f22:	791b      	ldrb	r3, [r3, #4]
 8001f24:	021b      	lsls	r3, r3, #8
 8001f26:	b21a      	sxth	r2, r3
 8001f28:	4b1f      	ldr	r3, [pc, #124]	; (8001fa8 <pdu_read_coils+0xa8>)
 8001f2a:	795b      	ldrb	r3, [r3, #5]
 8001f2c:	b21b      	sxth	r3, r3
 8001f2e:	4313      	orrs	r3, r2
 8001f30:	b21b      	sxth	r3, r3
 8001f32:	817b      	strh	r3, [r7, #10]
 8001f34:	2301      	movs	r3, #1
 8001f36:	607b      	str	r3, [r7, #4]
 8001f38:	89bb      	ldrh	r3, [r7, #12]
 8001f3a:	2b12      	cmp	r3, #18
 8001f3c:	d904      	bls.n	8001f48 <pdu_read_coils+0x48>
 8001f3e:	89ba      	ldrh	r2, [r7, #12]
 8001f40:	897b      	ldrh	r3, [r7, #10]
 8001f42:	4413      	add	r3, r2
 8001f44:	2b38      	cmp	r3, #56	; 0x38
 8001f46:	dd10      	ble.n	8001f6a <pdu_read_coils+0x6a>
 8001f48:	687b      	ldr	r3, [r7, #4]
 8001f4a:	1c5a      	adds	r2, r3, #1
 8001f4c:	607a      	str	r2, [r7, #4]
 8001f4e:	7bfa      	ldrb	r2, [r7, #15]
 8001f50:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001f54:	b2d1      	uxtb	r1, r2
 8001f56:	4a15      	ldr	r2, [pc, #84]	; (8001fac <pdu_read_coils+0xac>)
 8001f58:	54d1      	strb	r1, [r2, r3]
 8001f5a:	687b      	ldr	r3, [r7, #4]
 8001f5c:	1c5a      	adds	r2, r3, #1
 8001f5e:	607a      	str	r2, [r7, #4]
 8001f60:	4a12      	ldr	r2, [pc, #72]	; (8001fac <pdu_read_coils+0xac>)
 8001f62:	2102      	movs	r1, #2
 8001f64:	54d1      	strb	r1, [r2, r3]
 8001f66:	687b      	ldr	r3, [r7, #4]
 8001f68:	e01a      	b.n	8001fa0 <pdu_read_coils+0xa0>
 8001f6a:	687b      	ldr	r3, [r7, #4]
 8001f6c:	1c5a      	adds	r2, r3, #1
 8001f6e:	607a      	str	r2, [r7, #4]
 8001f70:	490e      	ldr	r1, [pc, #56]	; (8001fac <pdu_read_coils+0xac>)
 8001f72:	7bfa      	ldrb	r2, [r7, #15]
 8001f74:	54ca      	strb	r2, [r1, r3]
 8001f76:	687b      	ldr	r3, [r7, #4]
 8001f78:	3301      	adds	r3, #1
 8001f7a:	607b      	str	r3, [r7, #4]
 8001f7c:	687b      	ldr	r3, [r7, #4]
 8001f7e:	4a0b      	ldr	r2, [pc, #44]	; (8001fac <pdu_read_coils+0xac>)
 8001f80:	1898      	adds	r0, r3, r2
 8001f82:	89bb      	ldrh	r3, [r7, #12]
 8001f84:	f1a3 0213 	sub.w	r2, r3, #19
 8001f88:	897b      	ldrh	r3, [r7, #10]
 8001f8a:	4909      	ldr	r1, [pc, #36]	; (8001fb0 <pdu_read_coils+0xb0>)
 8001f8c:	f7ff fe10 	bl	8001bb0 <pack_bits_to_bytes>
 8001f90:	6038      	str	r0, [r7, #0]
 8001f92:	683b      	ldr	r3, [r7, #0]
 8001f94:	b2da      	uxtb	r2, r3
 8001f96:	4b05      	ldr	r3, [pc, #20]	; (8001fac <pdu_read_coils+0xac>)
 8001f98:	709a      	strb	r2, [r3, #2]
 8001f9a:	683a      	ldr	r2, [r7, #0]
 8001f9c:	687b      	ldr	r3, [r7, #4]
 8001f9e:	4413      	add	r3, r2
 8001fa0:	4618      	mov	r0, r3
 8001fa2:	3710      	adds	r7, #16
 8001fa4:	46bd      	mov	sp, r7
 8001fa6:	bd80      	pop	{r7, pc}
 8001fa8:	20000a74 	.word	0x20000a74
 8001fac:	20000b7c 	.word	0x20000b7c
 8001fb0:	20000008 	.word	0x20000008

08001fb4 <pdu_read_discrete_inputs>:
 8001fb4:	b580      	push	{r7, lr}
 8001fb6:	b084      	sub	sp, #16
 8001fb8:	af00      	add	r7, sp, #0
 8001fba:	4b28      	ldr	r3, [pc, #160]	; (800205c <pdu_read_discrete_inputs+0xa8>)
 8001fbc:	785b      	ldrb	r3, [r3, #1]
 8001fbe:	73fb      	strb	r3, [r7, #15]
 8001fc0:	4b26      	ldr	r3, [pc, #152]	; (800205c <pdu_read_discrete_inputs+0xa8>)
 8001fc2:	789b      	ldrb	r3, [r3, #2]
 8001fc4:	021b      	lsls	r3, r3, #8
 8001fc6:	b21a      	sxth	r2, r3
 8001fc8:	4b24      	ldr	r3, [pc, #144]	; (800205c <pdu_read_discrete_inputs+0xa8>)
 8001fca:	78db      	ldrb	r3, [r3, #3]
 8001fcc:	b21b      	sxth	r3, r3
 8001fce:	4313      	orrs	r3, r2
 8001fd0:	b21b      	sxth	r3, r3
 8001fd2:	81bb      	strh	r3, [r7, #12]
 8001fd4:	4b21      	ldr	r3, [pc, #132]	; (800205c <pdu_read_discrete_inputs+0xa8>)
 8001fd6:	791b      	ldrb	r3, [r3, #4]
 8001fd8:	021b      	lsls	r3, r3, #8
 8001fda:	b21a      	sxth	r2, r3
 8001fdc:	4b1f      	ldr	r3, [pc, #124]	; (800205c <pdu_read_discrete_inputs+0xa8>)
 8001fde:	795b      	ldrb	r3, [r3, #5]
 8001fe0:	b21b      	sxth	r3, r3
 8001fe2:	4313      	orrs	r3, r2
 8001fe4:	b21b      	sxth	r3, r3
 8001fe6:	817b      	strh	r3, [r7, #10]
 8001fe8:	2301      	movs	r3, #1
 8001fea:	607b      	str	r3, [r7, #4]
 8001fec:	89bb      	ldrh	r3, [r7, #12]
 8001fee:	2bc3      	cmp	r3, #195	; 0xc3
 8001ff0:	d904      	bls.n	8001ffc <pdu_read_discrete_inputs+0x48>
 8001ff2:	89ba      	ldrh	r2, [r7, #12]
 8001ff4:	897b      	ldrh	r3, [r7, #10]
 8001ff6:	4413      	add	r3, r2
 8001ff8:	2bda      	cmp	r3, #218	; 0xda
 8001ffa:	dd10      	ble.n	800201e <pdu_read_discrete_inputs+0x6a>
 8001ffc:	687b      	ldr	r3, [r7, #4]
 8001ffe:	1c5a      	adds	r2, r3, #1
 8002000:	607a      	str	r2, [r7, #4]
 8002002:	7bfa      	ldrb	r2, [r7, #15]
 8002004:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002008:	b2d1      	uxtb	r1, r2
 800200a:	4a15      	ldr	r2, [pc, #84]	; (8002060 <pdu_read_discrete_inputs+0xac>)
 800200c:	54d1      	strb	r1, [r2, r3]
 800200e:	687b      	ldr	r3, [r7, #4]
 8002010:	1c5a      	adds	r2, r3, #1
 8002012:	607a      	str	r2, [r7, #4]
 8002014:	4a12      	ldr	r2, [pc, #72]	; (8002060 <pdu_read_discrete_inputs+0xac>)
 8002016:	2102      	movs	r1, #2
 8002018:	54d1      	strb	r1, [r2, r3]
 800201a:	687b      	ldr	r3, [r7, #4]
 800201c:	e01a      	b.n	8002054 <pdu_read_discrete_inputs+0xa0>
 800201e:	687b      	ldr	r3, [r7, #4]
 8002020:	1c5a      	adds	r2, r3, #1
 8002022:	607a      	str	r2, [r7, #4]
 8002024:	490e      	ldr	r1, [pc, #56]	; (8002060 <pdu_read_discrete_inputs+0xac>)
 8002026:	7bfa      	ldrb	r2, [r7, #15]
 8002028:	54ca      	strb	r2, [r1, r3]
 800202a:	687b      	ldr	r3, [r7, #4]
 800202c:	3301      	adds	r3, #1
 800202e:	607b      	str	r3, [r7, #4]
 8002030:	687b      	ldr	r3, [r7, #4]
 8002032:	4a0b      	ldr	r2, [pc, #44]	; (8002060 <pdu_read_discrete_inputs+0xac>)
 8002034:	1898      	adds	r0, r3, r2
 8002036:	89bb      	ldrh	r3, [r7, #12]
 8002038:	f1a3 02c4 	sub.w	r2, r3, #196	; 0xc4
 800203c:	897b      	ldrh	r3, [r7, #10]
 800203e:	4909      	ldr	r1, [pc, #36]	; (8002064 <pdu_read_discrete_inputs+0xb0>)
 8002040:	f7ff fdb6 	bl	8001bb0 <pack_bits_to_bytes>
 8002044:	6038      	str	r0, [r7, #0]
 8002046:	683b      	ldr	r3, [r7, #0]
 8002048:	b2da      	uxtb	r2, r3
 800204a:	4b05      	ldr	r3, [pc, #20]	; (8002060 <pdu_read_discrete_inputs+0xac>)
 800204c:	709a      	strb	r2, [r3, #2]
 800204e:	683a      	ldr	r2, [r7, #0]
 8002050:	687b      	ldr	r3, [r7, #4]
 8002052:	4413      	add	r3, r2
 8002054:	4618      	mov	r0, r3
 8002056:	3710      	adds	r7, #16
 8002058:	46bd      	mov	sp, r7
 800205a:	bd80      	pop	{r7, pc}
 800205c:	20000a74 	.word	0x20000a74
 8002060:	20000b7c 	.word	0x20000b7c
 8002064:	20000010 	.word	0x20000010

08002068 <pdu_report_server_id>:
 8002068:	b480      	push	{r7}
 800206a:	b085      	sub	sp, #20
 800206c:	af00      	add	r7, sp, #0
 800206e:	2316      	movs	r3, #22
 8002070:	607b      	str	r3, [r7, #4]
 8002072:	4b1c      	ldr	r3, [pc, #112]	; (80020e4 <pdu_report_server_id+0x7c>)
 8002074:	785b      	ldrb	r3, [r3, #1]
 8002076:	70fb      	strb	r3, [r7, #3]
 8002078:	2301      	movs	r3, #1
 800207a:	60fb      	str	r3, [r7, #12]
 800207c:	68fb      	ldr	r3, [r7, #12]
 800207e:	1c5a      	adds	r2, r3, #1
 8002080:	60fa      	str	r2, [r7, #12]
 8002082:	4919      	ldr	r1, [pc, #100]	; (80020e8 <pdu_report_server_id+0x80>)
 8002084:	78fa      	ldrb	r2, [r7, #3]
 8002086:	54ca      	strb	r2, [r1, r3]
 8002088:	68fb      	ldr	r3, [r7, #12]
 800208a:	1c5a      	adds	r2, r3, #1
 800208c:	60fa      	str	r2, [r7, #12]
 800208e:	687a      	ldr	r2, [r7, #4]
 8002090:	b2d2      	uxtb	r2, r2
 8002092:	3202      	adds	r2, #2
 8002094:	b2d1      	uxtb	r1, r2
 8002096:	4a14      	ldr	r2, [pc, #80]	; (80020e8 <pdu_report_server_id+0x80>)
 8002098:	54d1      	strb	r1, [r2, r3]
 800209a:	68fb      	ldr	r3, [r7, #12]
 800209c:	1c5a      	adds	r2, r3, #1
 800209e:	60fa      	str	r2, [r7, #12]
 80020a0:	4a11      	ldr	r2, [pc, #68]	; (80020e8 <pdu_report_server_id+0x80>)
 80020a2:	2111      	movs	r1, #17
 80020a4:	54d1      	strb	r1, [r2, r3]
 80020a6:	68fb      	ldr	r3, [r7, #12]
 80020a8:	1c5a      	adds	r2, r3, #1
 80020aa:	60fa      	str	r2, [r7, #12]
 80020ac:	4a0e      	ldr	r2, [pc, #56]	; (80020e8 <pdu_report_server_id+0x80>)
 80020ae:	21ff      	movs	r1, #255	; 0xff
 80020b0:	54d1      	strb	r1, [r2, r3]
 80020b2:	2300      	movs	r3, #0
 80020b4:	60bb      	str	r3, [r7, #8]
 80020b6:	e00b      	b.n	80020d0 <pdu_report_server_id+0x68>
 80020b8:	68fb      	ldr	r3, [r7, #12]
 80020ba:	1c5a      	adds	r2, r3, #1
 80020bc:	60fa      	str	r2, [r7, #12]
 80020be:	490b      	ldr	r1, [pc, #44]	; (80020ec <pdu_report_server_id+0x84>)
 80020c0:	68ba      	ldr	r2, [r7, #8]
 80020c2:	440a      	add	r2, r1
 80020c4:	7811      	ldrb	r1, [r2, #0]
 80020c6:	4a08      	ldr	r2, [pc, #32]	; (80020e8 <pdu_report_server_id+0x80>)
 80020c8:	54d1      	strb	r1, [r2, r3]
 80020ca:	68bb      	ldr	r3, [r7, #8]
 80020cc:	3301      	adds	r3, #1
 80020ce:	60bb      	str	r3, [r7, #8]
 80020d0:	68ba      	ldr	r2, [r7, #8]
 80020d2:	687b      	ldr	r3, [r7, #4]
 80020d4:	429a      	cmp	r2, r3
 80020d6:	dbef      	blt.n	80020b8 <pdu_report_server_id+0x50>
 80020d8:	68fb      	ldr	r3, [r7, #12]
 80020da:	4618      	mov	r0, r3
 80020dc:	3714      	adds	r7, #20
 80020de:	46bd      	mov	sp, r7
 80020e0:	bc80      	pop	{r7}
 80020e2:	4770      	bx	lr
 80020e4:	20000a74 	.word	0x20000a74
 80020e8:	20000b7c 	.word	0x20000b7c
 80020ec:	08003930 	.word	0x08003930

080020f0 <pdu_diagnostics>:
 80020f0:	b480      	push	{r7}
 80020f2:	b085      	sub	sp, #20
 80020f4:	af00      	add	r7, sp, #0
 80020f6:	4b1e      	ldr	r3, [pc, #120]	; (8002170 <pdu_diagnostics+0x80>)
 80020f8:	785b      	ldrb	r3, [r3, #1]
 80020fa:	71fb      	strb	r3, [r7, #7]
 80020fc:	4b1c      	ldr	r3, [pc, #112]	; (8002170 <pdu_diagnostics+0x80>)
 80020fe:	789b      	ldrb	r3, [r3, #2]
 8002100:	021b      	lsls	r3, r3, #8
 8002102:	b21a      	sxth	r2, r3
 8002104:	4b1a      	ldr	r3, [pc, #104]	; (8002170 <pdu_diagnostics+0x80>)
 8002106:	78db      	ldrb	r3, [r3, #3]
 8002108:	b21b      	sxth	r3, r3
 800210a:	4313      	orrs	r3, r2
 800210c:	b21b      	sxth	r3, r3
 800210e:	80bb      	strh	r3, [r7, #4]
 8002110:	2301      	movs	r3, #1
 8002112:	60bb      	str	r3, [r7, #8]
 8002114:	88bb      	ldrh	r3, [r7, #4]
 8002116:	2b00      	cmp	r3, #0
 8002118:	d114      	bne.n	8002144 <pdu_diagnostics+0x54>
 800211a:	2301      	movs	r3, #1
 800211c:	60fb      	str	r3, [r7, #12]
 800211e:	e00b      	b.n	8002138 <pdu_diagnostics+0x48>
 8002120:	68bb      	ldr	r3, [r7, #8]
 8002122:	1c5a      	adds	r2, r3, #1
 8002124:	60ba      	str	r2, [r7, #8]
 8002126:	4912      	ldr	r1, [pc, #72]	; (8002170 <pdu_diagnostics+0x80>)
 8002128:	68fa      	ldr	r2, [r7, #12]
 800212a:	440a      	add	r2, r1
 800212c:	7811      	ldrb	r1, [r2, #0]
 800212e:	4a11      	ldr	r2, [pc, #68]	; (8002174 <pdu_diagnostics+0x84>)
 8002130:	54d1      	strb	r1, [r2, r3]
 8002132:	68fb      	ldr	r3, [r7, #12]
 8002134:	3301      	adds	r3, #1
 8002136:	60fb      	str	r3, [r7, #12]
 8002138:	68fa      	ldr	r2, [r7, #12]
 800213a:	4b0f      	ldr	r3, [pc, #60]	; (8002178 <pdu_diagnostics+0x88>)
 800213c:	681b      	ldr	r3, [r3, #0]
 800213e:	429a      	cmp	r2, r3
 8002140:	d3ee      	bcc.n	8002120 <pdu_diagnostics+0x30>
 8002142:	e00e      	b.n	8002162 <pdu_diagnostics+0x72>
 8002144:	68bb      	ldr	r3, [r7, #8]
 8002146:	1c5a      	adds	r2, r3, #1
 8002148:	60ba      	str	r2, [r7, #8]
 800214a:	79fa      	ldrb	r2, [r7, #7]
 800214c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002150:	b2d1      	uxtb	r1, r2
 8002152:	4a08      	ldr	r2, [pc, #32]	; (8002174 <pdu_diagnostics+0x84>)
 8002154:	54d1      	strb	r1, [r2, r3]
 8002156:	68bb      	ldr	r3, [r7, #8]
 8002158:	1c5a      	adds	r2, r3, #1
 800215a:	60ba      	str	r2, [r7, #8]
 800215c:	4a05      	ldr	r2, [pc, #20]	; (8002174 <pdu_diagnostics+0x84>)
 800215e:	2101      	movs	r1, #1
 8002160:	54d1      	strb	r1, [r2, r3]
 8002162:	68bb      	ldr	r3, [r7, #8]
 8002164:	4618      	mov	r0, r3
 8002166:	3714      	adds	r7, #20
 8002168:	46bd      	mov	sp, r7
 800216a:	bc80      	pop	{r7}
 800216c:	4770      	bx	lr
 800216e:	bf00      	nop
 8002170:	20000a74 	.word	0x20000a74
 8002174:	20000b7c 	.word	0x20000b7c
 8002178:	20000b78 	.word	0x20000b78

0800217c <pdu_read_input_registers>:
 800217c:	b480      	push	{r7}
 800217e:	b085      	sub	sp, #20
 8002180:	af00      	add	r7, sp, #0
 8002182:	4b36      	ldr	r3, [pc, #216]	; (800225c <pdu_read_input_registers+0xe0>)
 8002184:	785b      	ldrb	r3, [r3, #1]
 8002186:	71fb      	strb	r3, [r7, #7]
 8002188:	4b34      	ldr	r3, [pc, #208]	; (800225c <pdu_read_input_registers+0xe0>)
 800218a:	789b      	ldrb	r3, [r3, #2]
 800218c:	021b      	lsls	r3, r3, #8
 800218e:	b21a      	sxth	r2, r3
 8002190:	4b32      	ldr	r3, [pc, #200]	; (800225c <pdu_read_input_registers+0xe0>)
 8002192:	78db      	ldrb	r3, [r3, #3]
 8002194:	b21b      	sxth	r3, r3
 8002196:	4313      	orrs	r3, r2
 8002198:	b21b      	sxth	r3, r3
 800219a:	80bb      	strh	r3, [r7, #4]
 800219c:	4b2f      	ldr	r3, [pc, #188]	; (800225c <pdu_read_input_registers+0xe0>)
 800219e:	791b      	ldrb	r3, [r3, #4]
 80021a0:	021b      	lsls	r3, r3, #8
 80021a2:	b21a      	sxth	r2, r3
 80021a4:	4b2d      	ldr	r3, [pc, #180]	; (800225c <pdu_read_input_registers+0xe0>)
 80021a6:	795b      	ldrb	r3, [r3, #5]
 80021a8:	b21b      	sxth	r3, r3
 80021aa:	4313      	orrs	r3, r2
 80021ac:	b21b      	sxth	r3, r3
 80021ae:	807b      	strh	r3, [r7, #2]
 80021b0:	88bb      	ldrh	r3, [r7, #4]
 80021b2:	2b07      	cmp	r3, #7
 80021b4:	d904      	bls.n	80021c0 <pdu_read_input_registers+0x44>
 80021b6:	88ba      	ldrh	r2, [r7, #4]
 80021b8:	887b      	ldrh	r3, [r7, #2]
 80021ba:	4413      	add	r3, r2
 80021bc:	2b09      	cmp	r3, #9
 80021be:	dd12      	ble.n	80021e6 <pdu_read_input_registers+0x6a>
 80021c0:	2301      	movs	r3, #1
 80021c2:	60bb      	str	r3, [r7, #8]
 80021c4:	68bb      	ldr	r3, [r7, #8]
 80021c6:	1c5a      	adds	r2, r3, #1
 80021c8:	60ba      	str	r2, [r7, #8]
 80021ca:	79fa      	ldrb	r2, [r7, #7]
 80021cc:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80021d0:	b2d1      	uxtb	r1, r2
 80021d2:	4a23      	ldr	r2, [pc, #140]	; (8002260 <pdu_read_input_registers+0xe4>)
 80021d4:	54d1      	strb	r1, [r2, r3]
 80021d6:	68bb      	ldr	r3, [r7, #8]
 80021d8:	1c5a      	adds	r2, r3, #1
 80021da:	60ba      	str	r2, [r7, #8]
 80021dc:	4a20      	ldr	r2, [pc, #128]	; (8002260 <pdu_read_input_registers+0xe4>)
 80021de:	2102      	movs	r1, #2
 80021e0:	54d1      	strb	r1, [r2, r3]
 80021e2:	68bb      	ldr	r3, [r7, #8]
 80021e4:	e034      	b.n	8002250 <pdu_read_input_registers+0xd4>
 80021e6:	2301      	movs	r3, #1
 80021e8:	60bb      	str	r3, [r7, #8]
 80021ea:	68bb      	ldr	r3, [r7, #8]
 80021ec:	1c5a      	adds	r2, r3, #1
 80021ee:	60ba      	str	r2, [r7, #8]
 80021f0:	491b      	ldr	r1, [pc, #108]	; (8002260 <pdu_read_input_registers+0xe4>)
 80021f2:	79fa      	ldrb	r2, [r7, #7]
 80021f4:	54ca      	strb	r2, [r1, r3]
 80021f6:	68bb      	ldr	r3, [r7, #8]
 80021f8:	1c5a      	adds	r2, r3, #1
 80021fa:	60ba      	str	r2, [r7, #8]
 80021fc:	887a      	ldrh	r2, [r7, #2]
 80021fe:	b2d2      	uxtb	r2, r2
 8002200:	0052      	lsls	r2, r2, #1
 8002202:	b2d1      	uxtb	r1, r2
 8002204:	4a16      	ldr	r2, [pc, #88]	; (8002260 <pdu_read_input_registers+0xe4>)
 8002206:	54d1      	strb	r1, [r2, r3]
 8002208:	2300      	movs	r3, #0
 800220a:	60fb      	str	r3, [r7, #12]
 800220c:	e01b      	b.n	8002246 <pdu_read_input_registers+0xca>
 800220e:	88bb      	ldrh	r3, [r7, #4]
 8002210:	f1a3 0208 	sub.w	r2, r3, #8
 8002214:	68fb      	ldr	r3, [r7, #12]
 8002216:	4413      	add	r3, r2
 8002218:	4a12      	ldr	r2, [pc, #72]	; (8002264 <pdu_read_input_registers+0xe8>)
 800221a:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800221e:	803b      	strh	r3, [r7, #0]
 8002220:	68bb      	ldr	r3, [r7, #8]
 8002222:	1c5a      	adds	r2, r3, #1
 8002224:	60ba      	str	r2, [r7, #8]
 8002226:	883a      	ldrh	r2, [r7, #0]
 8002228:	0a12      	lsrs	r2, r2, #8
 800222a:	b292      	uxth	r2, r2
 800222c:	b2d1      	uxtb	r1, r2
 800222e:	4a0c      	ldr	r2, [pc, #48]	; (8002260 <pdu_read_input_registers+0xe4>)
 8002230:	54d1      	strb	r1, [r2, r3]
 8002232:	68bb      	ldr	r3, [r7, #8]
 8002234:	1c5a      	adds	r2, r3, #1
 8002236:	60ba      	str	r2, [r7, #8]
 8002238:	883a      	ldrh	r2, [r7, #0]
 800223a:	b2d1      	uxtb	r1, r2
 800223c:	4a08      	ldr	r2, [pc, #32]	; (8002260 <pdu_read_input_registers+0xe4>)
 800223e:	54d1      	strb	r1, [r2, r3]
 8002240:	68fb      	ldr	r3, [r7, #12]
 8002242:	3301      	adds	r3, #1
 8002244:	60fb      	str	r3, [r7, #12]
 8002246:	887a      	ldrh	r2, [r7, #2]
 8002248:	68fb      	ldr	r3, [r7, #12]
 800224a:	429a      	cmp	r2, r3
 800224c:	dcdf      	bgt.n	800220e <pdu_read_input_registers+0x92>
 800224e:	68bb      	ldr	r3, [r7, #8]
 8002250:	4618      	mov	r0, r3
 8002252:	3714      	adds	r7, #20
 8002254:	46bd      	mov	sp, r7
 8002256:	bc80      	pop	{r7}
 8002258:	4770      	bx	lr
 800225a:	bf00      	nop
 800225c:	20000a74 	.word	0x20000a74
 8002260:	20000b7c 	.word	0x20000b7c
 8002264:	20000014 	.word	0x20000014

08002268 <pdu_write_single_register>:
 8002268:	b480      	push	{r7}
 800226a:	b085      	sub	sp, #20
 800226c:	af00      	add	r7, sp, #0
 800226e:	4b2d      	ldr	r3, [pc, #180]	; (8002324 <pdu_write_single_register+0xbc>)
 8002270:	785b      	ldrb	r3, [r3, #1]
 8002272:	72fb      	strb	r3, [r7, #11]
 8002274:	4b2b      	ldr	r3, [pc, #172]	; (8002324 <pdu_write_single_register+0xbc>)
 8002276:	789b      	ldrb	r3, [r3, #2]
 8002278:	021b      	lsls	r3, r3, #8
 800227a:	b21a      	sxth	r2, r3
 800227c:	4b29      	ldr	r3, [pc, #164]	; (8002324 <pdu_write_single_register+0xbc>)
 800227e:	78db      	ldrb	r3, [r3, #3]
 8002280:	b21b      	sxth	r3, r3
 8002282:	4313      	orrs	r3, r2
 8002284:	b21b      	sxth	r3, r3
 8002286:	813b      	strh	r3, [r7, #8]
 8002288:	4b26      	ldr	r3, [pc, #152]	; (8002324 <pdu_write_single_register+0xbc>)
 800228a:	791b      	ldrb	r3, [r3, #4]
 800228c:	021b      	lsls	r3, r3, #8
 800228e:	b21a      	sxth	r2, r3
 8002290:	4b24      	ldr	r3, [pc, #144]	; (8002324 <pdu_write_single_register+0xbc>)
 8002292:	795b      	ldrb	r3, [r3, #5]
 8002294:	b21b      	sxth	r3, r3
 8002296:	4313      	orrs	r3, r2
 8002298:	b21b      	sxth	r3, r3
 800229a:	80fb      	strh	r3, [r7, #6]
 800229c:	893b      	ldrh	r3, [r7, #8]
 800229e:	2b07      	cmp	r3, #7
 80022a0:	d911      	bls.n	80022c6 <pdu_write_single_register+0x5e>
 80022a2:	2301      	movs	r3, #1
 80022a4:	60fb      	str	r3, [r7, #12]
 80022a6:	68fb      	ldr	r3, [r7, #12]
 80022a8:	1c5a      	adds	r2, r3, #1
 80022aa:	60fa      	str	r2, [r7, #12]
 80022ac:	7afa      	ldrb	r2, [r7, #11]
 80022ae:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80022b2:	b2d1      	uxtb	r1, r2
 80022b4:	4a1c      	ldr	r2, [pc, #112]	; (8002328 <pdu_write_single_register+0xc0>)
 80022b6:	54d1      	strb	r1, [r2, r3]
 80022b8:	68fb      	ldr	r3, [r7, #12]
 80022ba:	1c5a      	adds	r2, r3, #1
 80022bc:	60fa      	str	r2, [r7, #12]
 80022be:	4a1a      	ldr	r2, [pc, #104]	; (8002328 <pdu_write_single_register+0xc0>)
 80022c0:	2102      	movs	r1, #2
 80022c2:	54d1      	strb	r1, [r2, r3]
 80022c4:	e028      	b.n	8002318 <pdu_write_single_register+0xb0>
 80022c6:	893b      	ldrh	r3, [r7, #8]
 80022c8:	4918      	ldr	r1, [pc, #96]	; (800232c <pdu_write_single_register+0xc4>)
 80022ca:	88fa      	ldrh	r2, [r7, #6]
 80022cc:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022d0:	2301      	movs	r3, #1
 80022d2:	60fb      	str	r3, [r7, #12]
 80022d4:	68fb      	ldr	r3, [r7, #12]
 80022d6:	1c5a      	adds	r2, r3, #1
 80022d8:	60fa      	str	r2, [r7, #12]
 80022da:	4913      	ldr	r1, [pc, #76]	; (8002328 <pdu_write_single_register+0xc0>)
 80022dc:	7afa      	ldrb	r2, [r7, #11]
 80022de:	54ca      	strb	r2, [r1, r3]
 80022e0:	68fb      	ldr	r3, [r7, #12]
 80022e2:	1c5a      	adds	r2, r3, #1
 80022e4:	60fa      	str	r2, [r7, #12]
 80022e6:	4a0f      	ldr	r2, [pc, #60]	; (8002324 <pdu_write_single_register+0xbc>)
 80022e8:	7891      	ldrb	r1, [r2, #2]
 80022ea:	4a0f      	ldr	r2, [pc, #60]	; (8002328 <pdu_write_single_register+0xc0>)
 80022ec:	54d1      	strb	r1, [r2, r3]
 80022ee:	68fb      	ldr	r3, [r7, #12]
 80022f0:	1c5a      	adds	r2, r3, #1
 80022f2:	60fa      	str	r2, [r7, #12]
 80022f4:	4a0b      	ldr	r2, [pc, #44]	; (8002324 <pdu_write_single_register+0xbc>)
 80022f6:	78d1      	ldrb	r1, [r2, #3]
 80022f8:	4a0b      	ldr	r2, [pc, #44]	; (8002328 <pdu_write_single_register+0xc0>)
 80022fa:	54d1      	strb	r1, [r2, r3]
 80022fc:	68fb      	ldr	r3, [r7, #12]
 80022fe:	1c5a      	adds	r2, r3, #1
 8002300:	60fa      	str	r2, [r7, #12]
 8002302:	4a08      	ldr	r2, [pc, #32]	; (8002324 <pdu_write_single_register+0xbc>)
 8002304:	7911      	ldrb	r1, [r2, #4]
 8002306:	4a08      	ldr	r2, [pc, #32]	; (8002328 <pdu_write_single_register+0xc0>)
 8002308:	54d1      	strb	r1, [r2, r3]
 800230a:	68fb      	ldr	r3, [r7, #12]
 800230c:	1c5a      	adds	r2, r3, #1
 800230e:	60fa      	str	r2, [r7, #12]
 8002310:	4a04      	ldr	r2, [pc, #16]	; (8002324 <pdu_write_single_register+0xbc>)
 8002312:	7951      	ldrb	r1, [r2, #5]
 8002314:	4a04      	ldr	r2, [pc, #16]	; (8002328 <pdu_write_single_register+0xc0>)
 8002316:	54d1      	strb	r1, [r2, r3]
 8002318:	68fb      	ldr	r3, [r7, #12]
 800231a:	4618      	mov	r0, r3
 800231c:	3714      	adds	r7, #20
 800231e:	46bd      	mov	sp, r7
 8002320:	bc80      	pop	{r7}
 8002322:	4770      	bx	lr
 8002324:	20000a74 	.word	0x20000a74
 8002328:	20000b7c 	.word	0x20000b7c
 800232c:	20000a60 	.word	0x20000a60

08002330 <pdu_write_multiply_registers>:
 8002330:	b480      	push	{r7}
 8002332:	b087      	sub	sp, #28
 8002334:	af00      	add	r7, sp, #0
 8002336:	4b3f      	ldr	r3, [pc, #252]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002338:	785b      	ldrb	r3, [r3, #1]
 800233a:	73fb      	strb	r3, [r7, #15]
 800233c:	4b3d      	ldr	r3, [pc, #244]	; (8002434 <pdu_write_multiply_registers+0x104>)
 800233e:	789b      	ldrb	r3, [r3, #2]
 8002340:	021b      	lsls	r3, r3, #8
 8002342:	b21a      	sxth	r2, r3
 8002344:	4b3b      	ldr	r3, [pc, #236]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002346:	78db      	ldrb	r3, [r3, #3]
 8002348:	b21b      	sxth	r3, r3
 800234a:	4313      	orrs	r3, r2
 800234c:	b21b      	sxth	r3, r3
 800234e:	81bb      	strh	r3, [r7, #12]
 8002350:	4b38      	ldr	r3, [pc, #224]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002352:	791b      	ldrb	r3, [r3, #4]
 8002354:	021b      	lsls	r3, r3, #8
 8002356:	b21a      	sxth	r2, r3
 8002358:	4b36      	ldr	r3, [pc, #216]	; (8002434 <pdu_write_multiply_registers+0x104>)
 800235a:	795b      	ldrb	r3, [r3, #5]
 800235c:	b21b      	sxth	r3, r3
 800235e:	4313      	orrs	r3, r2
 8002360:	b21b      	sxth	r3, r3
 8002362:	817b      	strh	r3, [r7, #10]
 8002364:	4b33      	ldr	r3, [pc, #204]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002366:	799b      	ldrb	r3, [r3, #6]
 8002368:	727b      	strb	r3, [r7, #9]
 800236a:	89ba      	ldrh	r2, [r7, #12]
 800236c:	897b      	ldrh	r3, [r7, #10]
 800236e:	4413      	add	r3, r2
 8002370:	2b08      	cmp	r3, #8
 8002372:	dd11      	ble.n	8002398 <pdu_write_multiply_registers+0x68>
 8002374:	2301      	movs	r3, #1
 8002376:	613b      	str	r3, [r7, #16]
 8002378:	693b      	ldr	r3, [r7, #16]
 800237a:	1c5a      	adds	r2, r3, #1
 800237c:	613a      	str	r2, [r7, #16]
 800237e:	7bfa      	ldrb	r2, [r7, #15]
 8002380:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002384:	b2d1      	uxtb	r1, r2
 8002386:	4a2c      	ldr	r2, [pc, #176]	; (8002438 <pdu_write_multiply_registers+0x108>)
 8002388:	54d1      	strb	r1, [r2, r3]
 800238a:	693b      	ldr	r3, [r7, #16]
 800238c:	1c5a      	adds	r2, r3, #1
 800238e:	613a      	str	r2, [r7, #16]
 8002390:	4a29      	ldr	r2, [pc, #164]	; (8002438 <pdu_write_multiply_registers+0x108>)
 8002392:	2102      	movs	r1, #2
 8002394:	54d1      	strb	r1, [r2, r3]
 8002396:	e047      	b.n	8002428 <pdu_write_multiply_registers+0xf8>
 8002398:	2307      	movs	r3, #7
 800239a:	613b      	str	r3, [r7, #16]
 800239c:	2300      	movs	r3, #0
 800239e:	617b      	str	r3, [r7, #20]
 80023a0:	e01a      	b.n	80023d8 <pdu_write_multiply_registers+0xa8>
 80023a2:	693b      	ldr	r3, [r7, #16]
 80023a4:	1c5a      	adds	r2, r3, #1
 80023a6:	613a      	str	r2, [r7, #16]
 80023a8:	4a22      	ldr	r2, [pc, #136]	; (8002434 <pdu_write_multiply_registers+0x104>)
 80023aa:	5cd3      	ldrb	r3, [r2, r3]
 80023ac:	b29b      	uxth	r3, r3
 80023ae:	021b      	lsls	r3, r3, #8
 80023b0:	80fb      	strh	r3, [r7, #6]
 80023b2:	693b      	ldr	r3, [r7, #16]
 80023b4:	1c5a      	adds	r2, r3, #1
 80023b6:	613a      	str	r2, [r7, #16]
 80023b8:	4a1e      	ldr	r2, [pc, #120]	; (8002434 <pdu_write_multiply_registers+0x104>)
 80023ba:	5cd3      	ldrb	r3, [r2, r3]
 80023bc:	b29a      	uxth	r2, r3
 80023be:	88fb      	ldrh	r3, [r7, #6]
 80023c0:	4313      	orrs	r3, r2
 80023c2:	80fb      	strh	r3, [r7, #6]
 80023c4:	89ba      	ldrh	r2, [r7, #12]
 80023c6:	697b      	ldr	r3, [r7, #20]
 80023c8:	4413      	add	r3, r2
 80023ca:	491c      	ldr	r1, [pc, #112]	; (800243c <pdu_write_multiply_registers+0x10c>)
 80023cc:	88fa      	ldrh	r2, [r7, #6]
 80023ce:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80023d2:	697b      	ldr	r3, [r7, #20]
 80023d4:	3301      	adds	r3, #1
 80023d6:	617b      	str	r3, [r7, #20]
 80023d8:	897a      	ldrh	r2, [r7, #10]
 80023da:	697b      	ldr	r3, [r7, #20]
 80023dc:	429a      	cmp	r2, r3
 80023de:	dce0      	bgt.n	80023a2 <pdu_write_multiply_registers+0x72>
 80023e0:	2301      	movs	r3, #1
 80023e2:	613b      	str	r3, [r7, #16]
 80023e4:	693b      	ldr	r3, [r7, #16]
 80023e6:	1c5a      	adds	r2, r3, #1
 80023e8:	613a      	str	r2, [r7, #16]
 80023ea:	4913      	ldr	r1, [pc, #76]	; (8002438 <pdu_write_multiply_registers+0x108>)
 80023ec:	7bfa      	ldrb	r2, [r7, #15]
 80023ee:	54ca      	strb	r2, [r1, r3]
 80023f0:	693b      	ldr	r3, [r7, #16]
 80023f2:	1c5a      	adds	r2, r3, #1
 80023f4:	613a      	str	r2, [r7, #16]
 80023f6:	4a0f      	ldr	r2, [pc, #60]	; (8002434 <pdu_write_multiply_registers+0x104>)
 80023f8:	7891      	ldrb	r1, [r2, #2]
 80023fa:	4a0f      	ldr	r2, [pc, #60]	; (8002438 <pdu_write_multiply_registers+0x108>)
 80023fc:	54d1      	strb	r1, [r2, r3]
 80023fe:	693b      	ldr	r3, [r7, #16]
 8002400:	1c5a      	adds	r2, r3, #1
 8002402:	613a      	str	r2, [r7, #16]
 8002404:	4a0b      	ldr	r2, [pc, #44]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002406:	78d1      	ldrb	r1, [r2, #3]
 8002408:	4a0b      	ldr	r2, [pc, #44]	; (8002438 <pdu_write_multiply_registers+0x108>)
 800240a:	54d1      	strb	r1, [r2, r3]
 800240c:	693b      	ldr	r3, [r7, #16]
 800240e:	1c5a      	adds	r2, r3, #1
 8002410:	613a      	str	r2, [r7, #16]
 8002412:	4a08      	ldr	r2, [pc, #32]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002414:	7911      	ldrb	r1, [r2, #4]
 8002416:	4a08      	ldr	r2, [pc, #32]	; (8002438 <pdu_write_multiply_registers+0x108>)
 8002418:	54d1      	strb	r1, [r2, r3]
 800241a:	693b      	ldr	r3, [r7, #16]
 800241c:	1c5a      	adds	r2, r3, #1
 800241e:	613a      	str	r2, [r7, #16]
 8002420:	4a04      	ldr	r2, [pc, #16]	; (8002434 <pdu_write_multiply_registers+0x104>)
 8002422:	7951      	ldrb	r1, [r2, #5]
 8002424:	4a04      	ldr	r2, [pc, #16]	; (8002438 <pdu_write_multiply_registers+0x108>)
 8002426:	54d1      	strb	r1, [r2, r3]
 8002428:	693b      	ldr	r3, [r7, #16]
 800242a:	4618      	mov	r0, r3
 800242c:	371c      	adds	r7, #28
 800242e:	46bd      	mov	sp, r7
 8002430:	bc80      	pop	{r7}
 8002432:	4770      	bx	lr
 8002434:	20000a74 	.word	0x20000a74
 8002438:	20000b7c 	.word	0x20000b7c
 800243c:	20000a60 	.word	0x20000a60

08002440 <pdu_read_holding_registers>:
 8002440:	b480      	push	{r7}
 8002442:	b085      	sub	sp, #20
 8002444:	af00      	add	r7, sp, #0
 8002446:	4b33      	ldr	r3, [pc, #204]	; (8002514 <pdu_read_holding_registers+0xd4>)
 8002448:	785b      	ldrb	r3, [r3, #1]
 800244a:	71fb      	strb	r3, [r7, #7]
 800244c:	4b31      	ldr	r3, [pc, #196]	; (8002514 <pdu_read_holding_registers+0xd4>)
 800244e:	789b      	ldrb	r3, [r3, #2]
 8002450:	021b      	lsls	r3, r3, #8
 8002452:	b21a      	sxth	r2, r3
 8002454:	4b2f      	ldr	r3, [pc, #188]	; (8002514 <pdu_read_holding_registers+0xd4>)
 8002456:	78db      	ldrb	r3, [r3, #3]
 8002458:	b21b      	sxth	r3, r3
 800245a:	4313      	orrs	r3, r2
 800245c:	b21b      	sxth	r3, r3
 800245e:	80bb      	strh	r3, [r7, #4]
 8002460:	4b2c      	ldr	r3, [pc, #176]	; (8002514 <pdu_read_holding_registers+0xd4>)
 8002462:	791b      	ldrb	r3, [r3, #4]
 8002464:	021b      	lsls	r3, r3, #8
 8002466:	b21a      	sxth	r2, r3
 8002468:	4b2a      	ldr	r3, [pc, #168]	; (8002514 <pdu_read_holding_registers+0xd4>)
 800246a:	795b      	ldrb	r3, [r3, #5]
 800246c:	b21b      	sxth	r3, r3
 800246e:	4313      	orrs	r3, r2
 8002470:	b21b      	sxth	r3, r3
 8002472:	807b      	strh	r3, [r7, #2]
 8002474:	88ba      	ldrh	r2, [r7, #4]
 8002476:	887b      	ldrh	r3, [r7, #2]
 8002478:	4413      	add	r3, r2
 800247a:	2b08      	cmp	r3, #8
 800247c:	dd11      	ble.n	80024a2 <pdu_read_holding_registers+0x62>
 800247e:	2301      	movs	r3, #1
 8002480:	60bb      	str	r3, [r7, #8]
 8002482:	68bb      	ldr	r3, [r7, #8]
 8002484:	1c5a      	adds	r2, r3, #1
 8002486:	60ba      	str	r2, [r7, #8]
 8002488:	79fa      	ldrb	r2, [r7, #7]
 800248a:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800248e:	b2d1      	uxtb	r1, r2
 8002490:	4a21      	ldr	r2, [pc, #132]	; (8002518 <pdu_read_holding_registers+0xd8>)
 8002492:	54d1      	strb	r1, [r2, r3]
 8002494:	68bb      	ldr	r3, [r7, #8]
 8002496:	1c5a      	adds	r2, r3, #1
 8002498:	60ba      	str	r2, [r7, #8]
 800249a:	4a1f      	ldr	r2, [pc, #124]	; (8002518 <pdu_read_holding_registers+0xd8>)
 800249c:	2102      	movs	r1, #2
 800249e:	54d1      	strb	r1, [r2, r3]
 80024a0:	e031      	b.n	8002506 <pdu_read_holding_registers+0xc6>
 80024a2:	2301      	movs	r3, #1
 80024a4:	60bb      	str	r3, [r7, #8]
 80024a6:	68bb      	ldr	r3, [r7, #8]
 80024a8:	1c5a      	adds	r2, r3, #1
 80024aa:	60ba      	str	r2, [r7, #8]
 80024ac:	491a      	ldr	r1, [pc, #104]	; (8002518 <pdu_read_holding_registers+0xd8>)
 80024ae:	79fa      	ldrb	r2, [r7, #7]
 80024b0:	54ca      	strb	r2, [r1, r3]
 80024b2:	68bb      	ldr	r3, [r7, #8]
 80024b4:	1c5a      	adds	r2, r3, #1
 80024b6:	60ba      	str	r2, [r7, #8]
 80024b8:	887a      	ldrh	r2, [r7, #2]
 80024ba:	b2d2      	uxtb	r2, r2
 80024bc:	0052      	lsls	r2, r2, #1
 80024be:	b2d1      	uxtb	r1, r2
 80024c0:	4a15      	ldr	r2, [pc, #84]	; (8002518 <pdu_read_holding_registers+0xd8>)
 80024c2:	54d1      	strb	r1, [r2, r3]
 80024c4:	2300      	movs	r3, #0
 80024c6:	60fb      	str	r3, [r7, #12]
 80024c8:	e019      	b.n	80024fe <pdu_read_holding_registers+0xbe>
 80024ca:	88ba      	ldrh	r2, [r7, #4]
 80024cc:	68fb      	ldr	r3, [r7, #12]
 80024ce:	4413      	add	r3, r2
 80024d0:	4a12      	ldr	r2, [pc, #72]	; (800251c <pdu_read_holding_registers+0xdc>)
 80024d2:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 80024d6:	803b      	strh	r3, [r7, #0]
 80024d8:	68bb      	ldr	r3, [r7, #8]
 80024da:	1c5a      	adds	r2, r3, #1
 80024dc:	60ba      	str	r2, [r7, #8]
 80024de:	883a      	ldrh	r2, [r7, #0]
 80024e0:	0a12      	lsrs	r2, r2, #8
 80024e2:	b292      	uxth	r2, r2
 80024e4:	b2d1      	uxtb	r1, r2
 80024e6:	4a0c      	ldr	r2, [pc, #48]	; (8002518 <pdu_read_holding_registers+0xd8>)
 80024e8:	54d1      	strb	r1, [r2, r3]
 80024ea:	68bb      	ldr	r3, [r7, #8]
 80024ec:	1c5a      	adds	r2, r3, #1
 80024ee:	60ba      	str	r2, [r7, #8]
 80024f0:	883a      	ldrh	r2, [r7, #0]
 80024f2:	b2d1      	uxtb	r1, r2
 80024f4:	4a08      	ldr	r2, [pc, #32]	; (8002518 <pdu_read_holding_registers+0xd8>)
 80024f6:	54d1      	strb	r1, [r2, r3]
 80024f8:	68fb      	ldr	r3, [r7, #12]
 80024fa:	3301      	adds	r3, #1
 80024fc:	60fb      	str	r3, [r7, #12]
 80024fe:	887a      	ldrh	r2, [r7, #2]
 8002500:	68fb      	ldr	r3, [r7, #12]
 8002502:	429a      	cmp	r2, r3
 8002504:	dce1      	bgt.n	80024ca <pdu_read_holding_registers+0x8a>
 8002506:	68bb      	ldr	r3, [r7, #8]
 8002508:	4618      	mov	r0, r3
 800250a:	3714      	adds	r7, #20
 800250c:	46bd      	mov	sp, r7
 800250e:	bc80      	pop	{r7}
 8002510:	4770      	bx	lr
 8002512:	bf00      	nop
 8002514:	20000a74 	.word	0x20000a74
 8002518:	20000b7c 	.word	0x20000b7c
 800251c:	20000a60 	.word	0x20000a60

08002520 <pdu_read_write_multiply_registers>:
 8002520:	b480      	push	{r7}
 8002522:	b087      	sub	sp, #28
 8002524:	af00      	add	r7, sp, #0
 8002526:	4b5d      	ldr	r3, [pc, #372]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 8002528:	785b      	ldrb	r3, [r3, #1]
 800252a:	73fb      	strb	r3, [r7, #15]
 800252c:	4b5b      	ldr	r3, [pc, #364]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 800252e:	789b      	ldrb	r3, [r3, #2]
 8002530:	021b      	lsls	r3, r3, #8
 8002532:	b21a      	sxth	r2, r3
 8002534:	4b59      	ldr	r3, [pc, #356]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 8002536:	78db      	ldrb	r3, [r3, #3]
 8002538:	b21b      	sxth	r3, r3
 800253a:	4313      	orrs	r3, r2
 800253c:	b21b      	sxth	r3, r3
 800253e:	81bb      	strh	r3, [r7, #12]
 8002540:	4b56      	ldr	r3, [pc, #344]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 8002542:	791b      	ldrb	r3, [r3, #4]
 8002544:	021b      	lsls	r3, r3, #8
 8002546:	b21a      	sxth	r2, r3
 8002548:	4b54      	ldr	r3, [pc, #336]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 800254a:	795b      	ldrb	r3, [r3, #5]
 800254c:	b21b      	sxth	r3, r3
 800254e:	4313      	orrs	r3, r2
 8002550:	b21b      	sxth	r3, r3
 8002552:	817b      	strh	r3, [r7, #10]
 8002554:	4b51      	ldr	r3, [pc, #324]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 8002556:	799b      	ldrb	r3, [r3, #6]
 8002558:	021b      	lsls	r3, r3, #8
 800255a:	b21a      	sxth	r2, r3
 800255c:	4b4f      	ldr	r3, [pc, #316]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 800255e:	79db      	ldrb	r3, [r3, #7]
 8002560:	b21b      	sxth	r3, r3
 8002562:	4313      	orrs	r3, r2
 8002564:	b21b      	sxth	r3, r3
 8002566:	813b      	strh	r3, [r7, #8]
 8002568:	4b4c      	ldr	r3, [pc, #304]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 800256a:	7a1b      	ldrb	r3, [r3, #8]
 800256c:	021b      	lsls	r3, r3, #8
 800256e:	b21a      	sxth	r2, r3
 8002570:	4b4a      	ldr	r3, [pc, #296]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 8002572:	7a5b      	ldrb	r3, [r3, #9]
 8002574:	b21b      	sxth	r3, r3
 8002576:	4313      	orrs	r3, r2
 8002578:	b21b      	sxth	r3, r3
 800257a:	80fb      	strh	r3, [r7, #6]
 800257c:	4b47      	ldr	r3, [pc, #284]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 800257e:	7a9b      	ldrb	r3, [r3, #10]
 8002580:	717b      	strb	r3, [r7, #5]
 8002582:	89ba      	ldrh	r2, [r7, #12]
 8002584:	897b      	ldrh	r3, [r7, #10]
 8002586:	4413      	add	r3, r2
 8002588:	2b08      	cmp	r3, #8
 800258a:	dd12      	ble.n	80025b2 <pdu_read_write_multiply_registers+0x92>
 800258c:	2301      	movs	r3, #1
 800258e:	613b      	str	r3, [r7, #16]
 8002590:	693b      	ldr	r3, [r7, #16]
 8002592:	1c5a      	adds	r2, r3, #1
 8002594:	613a      	str	r2, [r7, #16]
 8002596:	7bfa      	ldrb	r2, [r7, #15]
 8002598:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800259c:	b2d1      	uxtb	r1, r2
 800259e:	4a40      	ldr	r2, [pc, #256]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 80025a0:	54d1      	strb	r1, [r2, r3]
 80025a2:	693b      	ldr	r3, [r7, #16]
 80025a4:	1c5a      	adds	r2, r3, #1
 80025a6:	613a      	str	r2, [r7, #16]
 80025a8:	4a3d      	ldr	r2, [pc, #244]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 80025aa:	2102      	movs	r1, #2
 80025ac:	54d1      	strb	r1, [r2, r3]
 80025ae:	693b      	ldr	r3, [r7, #16]
 80025b0:	e06e      	b.n	8002690 <pdu_read_write_multiply_registers+0x170>
 80025b2:	893a      	ldrh	r2, [r7, #8]
 80025b4:	88fb      	ldrh	r3, [r7, #6]
 80025b6:	4413      	add	r3, r2
 80025b8:	2b08      	cmp	r3, #8
 80025ba:	dd12      	ble.n	80025e2 <pdu_read_write_multiply_registers+0xc2>
 80025bc:	2301      	movs	r3, #1
 80025be:	613b      	str	r3, [r7, #16]
 80025c0:	693b      	ldr	r3, [r7, #16]
 80025c2:	1c5a      	adds	r2, r3, #1
 80025c4:	613a      	str	r2, [r7, #16]
 80025c6:	7bfa      	ldrb	r2, [r7, #15]
 80025c8:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80025cc:	b2d1      	uxtb	r1, r2
 80025ce:	4a34      	ldr	r2, [pc, #208]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 80025d0:	54d1      	strb	r1, [r2, r3]
 80025d2:	693b      	ldr	r3, [r7, #16]
 80025d4:	1c5a      	adds	r2, r3, #1
 80025d6:	613a      	str	r2, [r7, #16]
 80025d8:	4a31      	ldr	r2, [pc, #196]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 80025da:	2102      	movs	r1, #2
 80025dc:	54d1      	strb	r1, [r2, r3]
 80025de:	693b      	ldr	r3, [r7, #16]
 80025e0:	e056      	b.n	8002690 <pdu_read_write_multiply_registers+0x170>
 80025e2:	230b      	movs	r3, #11
 80025e4:	613b      	str	r3, [r7, #16]
 80025e6:	2300      	movs	r3, #0
 80025e8:	617b      	str	r3, [r7, #20]
 80025ea:	e01a      	b.n	8002622 <pdu_read_write_multiply_registers+0x102>
 80025ec:	693b      	ldr	r3, [r7, #16]
 80025ee:	1c5a      	adds	r2, r3, #1
 80025f0:	613a      	str	r2, [r7, #16]
 80025f2:	4a2a      	ldr	r2, [pc, #168]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 80025f4:	5cd3      	ldrb	r3, [r2, r3]
 80025f6:	b29b      	uxth	r3, r3
 80025f8:	021b      	lsls	r3, r3, #8
 80025fa:	807b      	strh	r3, [r7, #2]
 80025fc:	693b      	ldr	r3, [r7, #16]
 80025fe:	1c5a      	adds	r2, r3, #1
 8002600:	613a      	str	r2, [r7, #16]
 8002602:	4a26      	ldr	r2, [pc, #152]	; (800269c <pdu_read_write_multiply_registers+0x17c>)
 8002604:	5cd3      	ldrb	r3, [r2, r3]
 8002606:	b29a      	uxth	r2, r3
 8002608:	887b      	ldrh	r3, [r7, #2]
 800260a:	4313      	orrs	r3, r2
 800260c:	807b      	strh	r3, [r7, #2]
 800260e:	893a      	ldrh	r2, [r7, #8]
 8002610:	697b      	ldr	r3, [r7, #20]
 8002612:	4413      	add	r3, r2
 8002614:	4923      	ldr	r1, [pc, #140]	; (80026a4 <pdu_read_write_multiply_registers+0x184>)
 8002616:	887a      	ldrh	r2, [r7, #2]
 8002618:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 800261c:	697b      	ldr	r3, [r7, #20]
 800261e:	3301      	adds	r3, #1
 8002620:	617b      	str	r3, [r7, #20]
 8002622:	88fa      	ldrh	r2, [r7, #6]
 8002624:	697b      	ldr	r3, [r7, #20]
 8002626:	429a      	cmp	r2, r3
 8002628:	dce0      	bgt.n	80025ec <pdu_read_write_multiply_registers+0xcc>
 800262a:	2301      	movs	r3, #1
 800262c:	613b      	str	r3, [r7, #16]
 800262e:	693b      	ldr	r3, [r7, #16]
 8002630:	1c5a      	adds	r2, r3, #1
 8002632:	613a      	str	r2, [r7, #16]
 8002634:	491a      	ldr	r1, [pc, #104]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 8002636:	7bfa      	ldrb	r2, [r7, #15]
 8002638:	54ca      	strb	r2, [r1, r3]
 800263a:	693b      	ldr	r3, [r7, #16]
 800263c:	1c5a      	adds	r2, r3, #1
 800263e:	613a      	str	r2, [r7, #16]
 8002640:	897a      	ldrh	r2, [r7, #10]
 8002642:	b2d2      	uxtb	r2, r2
 8002644:	0052      	lsls	r2, r2, #1
 8002646:	b2d1      	uxtb	r1, r2
 8002648:	4a15      	ldr	r2, [pc, #84]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 800264a:	54d1      	strb	r1, [r2, r3]
 800264c:	2300      	movs	r3, #0
 800264e:	617b      	str	r3, [r7, #20]
 8002650:	e019      	b.n	8002686 <pdu_read_write_multiply_registers+0x166>
 8002652:	89ba      	ldrh	r2, [r7, #12]
 8002654:	697b      	ldr	r3, [r7, #20]
 8002656:	4413      	add	r3, r2
 8002658:	4a12      	ldr	r2, [pc, #72]	; (80026a4 <pdu_read_write_multiply_registers+0x184>)
 800265a:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800265e:	803b      	strh	r3, [r7, #0]
 8002660:	693b      	ldr	r3, [r7, #16]
 8002662:	1c5a      	adds	r2, r3, #1
 8002664:	613a      	str	r2, [r7, #16]
 8002666:	883a      	ldrh	r2, [r7, #0]
 8002668:	0a12      	lsrs	r2, r2, #8
 800266a:	b292      	uxth	r2, r2
 800266c:	b2d1      	uxtb	r1, r2
 800266e:	4a0c      	ldr	r2, [pc, #48]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 8002670:	54d1      	strb	r1, [r2, r3]
 8002672:	693b      	ldr	r3, [r7, #16]
 8002674:	1c5a      	adds	r2, r3, #1
 8002676:	613a      	str	r2, [r7, #16]
 8002678:	883a      	ldrh	r2, [r7, #0]
 800267a:	b2d1      	uxtb	r1, r2
 800267c:	4a08      	ldr	r2, [pc, #32]	; (80026a0 <pdu_read_write_multiply_registers+0x180>)
 800267e:	54d1      	strb	r1, [r2, r3]
 8002680:	697b      	ldr	r3, [r7, #20]
 8002682:	3301      	adds	r3, #1
 8002684:	617b      	str	r3, [r7, #20]
 8002686:	897a      	ldrh	r2, [r7, #10]
 8002688:	697b      	ldr	r3, [r7, #20]
 800268a:	429a      	cmp	r2, r3
 800268c:	dce1      	bgt.n	8002652 <pdu_read_write_multiply_registers+0x132>
 800268e:	693b      	ldr	r3, [r7, #16]
 8002690:	4618      	mov	r0, r3
 8002692:	371c      	adds	r7, #28
 8002694:	46bd      	mov	sp, r7
 8002696:	bc80      	pop	{r7}
 8002698:	4770      	bx	lr
 800269a:	bf00      	nop
 800269c:	20000a74 	.word	0x20000a74
 80026a0:	20000b7c 	.word	0x20000b7c
 80026a4:	20000a60 	.word	0x20000a60

080026a8 <pdu_illegal_function_error>:
 80026a8:	b480      	push	{r7}
 80026aa:	b083      	sub	sp, #12
 80026ac:	af00      	add	r7, sp, #0
 80026ae:	4b0d      	ldr	r3, [pc, #52]	; (80026e4 <pdu_illegal_function_error+0x3c>)
 80026b0:	785b      	ldrb	r3, [r3, #1]
 80026b2:	71fb      	strb	r3, [r7, #7]
 80026b4:	2301      	movs	r3, #1
 80026b6:	603b      	str	r3, [r7, #0]
 80026b8:	683b      	ldr	r3, [r7, #0]
 80026ba:	1c5a      	adds	r2, r3, #1
 80026bc:	603a      	str	r2, [r7, #0]
 80026be:	79fa      	ldrb	r2, [r7, #7]
 80026c0:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80026c4:	b2d1      	uxtb	r1, r2
 80026c6:	4a08      	ldr	r2, [pc, #32]	; (80026e8 <pdu_illegal_function_error+0x40>)
 80026c8:	54d1      	strb	r1, [r2, r3]
 80026ca:	683b      	ldr	r3, [r7, #0]
 80026cc:	1c5a      	adds	r2, r3, #1
 80026ce:	603a      	str	r2, [r7, #0]
 80026d0:	4a05      	ldr	r2, [pc, #20]	; (80026e8 <pdu_illegal_function_error+0x40>)
 80026d2:	2101      	movs	r1, #1
 80026d4:	54d1      	strb	r1, [r2, r3]
 80026d6:	683b      	ldr	r3, [r7, #0]
 80026d8:	4618      	mov	r0, r3
 80026da:	370c      	adds	r7, #12
 80026dc:	46bd      	mov	sp, r7
 80026de:	bc80      	pop	{r7}
 80026e0:	4770      	bx	lr
 80026e2:	bf00      	nop
 80026e4:	20000a74 	.word	0x20000a74
 80026e8:	20000b7c 	.word	0x20000b7c

080026ec <proc_ADU>:
 80026ec:	b580      	push	{r7, lr}
 80026ee:	b082      	sub	sp, #8
 80026f0:	af00      	add	r7, sp, #0
 80026f2:	4b23      	ldr	r3, [pc, #140]	; (8002780 <proc_ADU+0x94>)
 80026f4:	681b      	ldr	r3, [r3, #0]
 80026f6:	4619      	mov	r1, r3
 80026f8:	4822      	ldr	r0, [pc, #136]	; (8002784 <proc_ADU+0x98>)
 80026fa:	f000 f84b 	bl	8002794 <crc16>
 80026fe:	4603      	mov	r3, r0
 8002700:	80fb      	strh	r3, [r7, #6]
 8002702:	88fb      	ldrh	r3, [r7, #6]
 8002704:	2b00      	cmp	r3, #0
 8002706:	d003      	beq.n	8002710 <proc_ADU+0x24>
 8002708:	4b1f      	ldr	r3, [pc, #124]	; (8002788 <proc_ADU+0x9c>)
 800270a:	2201      	movs	r2, #1
 800270c:	601a      	str	r2, [r3, #0]
 800270e:	e033      	b.n	8002778 <proc_ADU+0x8c>
 8002710:	4b1c      	ldr	r3, [pc, #112]	; (8002784 <proc_ADU+0x98>)
 8002712:	781b      	ldrb	r3, [r3, #0]
 8002714:	717b      	strb	r3, [r7, #5]
 8002716:	4b1b      	ldr	r3, [pc, #108]	; (8002784 <proc_ADU+0x98>)
 8002718:	785b      	ldrb	r3, [r3, #1]
 800271a:	713b      	strb	r3, [r7, #4]
 800271c:	797b      	ldrb	r3, [r7, #5]
 800271e:	2b00      	cmp	r3, #0
 8002720:	d105      	bne.n	800272e <proc_ADU+0x42>
 8002722:	793b      	ldrb	r3, [r7, #4]
 8002724:	4a19      	ldr	r2, [pc, #100]	; (800278c <proc_ADU+0xa0>)
 8002726:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800272a:	4798      	blx	r3
 800272c:	e024      	b.n	8002778 <proc_ADU+0x8c>
 800272e:	797b      	ldrb	r3, [r7, #5]
 8002730:	2b11      	cmp	r3, #17
 8002732:	d121      	bne.n	8002778 <proc_ADU+0x8c>
 8002734:	4b16      	ldr	r3, [pc, #88]	; (8002790 <proc_ADU+0xa4>)
 8002736:	2211      	movs	r2, #17
 8002738:	701a      	strb	r2, [r3, #0]
 800273a:	793b      	ldrb	r3, [r7, #4]
 800273c:	4a13      	ldr	r2, [pc, #76]	; (800278c <proc_ADU+0xa0>)
 800273e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002742:	4798      	blx	r3
 8002744:	6038      	str	r0, [r7, #0]
 8002746:	6839      	ldr	r1, [r7, #0]
 8002748:	4811      	ldr	r0, [pc, #68]	; (8002790 <proc_ADU+0xa4>)
 800274a:	f000 f823 	bl	8002794 <crc16>
 800274e:	4603      	mov	r3, r0
 8002750:	80fb      	strh	r3, [r7, #6]
 8002752:	683b      	ldr	r3, [r7, #0]
 8002754:	1c5a      	adds	r2, r3, #1
 8002756:	603a      	str	r2, [r7, #0]
 8002758:	88fa      	ldrh	r2, [r7, #6]
 800275a:	b2d1      	uxtb	r1, r2
 800275c:	4a0c      	ldr	r2, [pc, #48]	; (8002790 <proc_ADU+0xa4>)
 800275e:	54d1      	strb	r1, [r2, r3]
 8002760:	683b      	ldr	r3, [r7, #0]
 8002762:	1c5a      	adds	r2, r3, #1
 8002764:	603a      	str	r2, [r7, #0]
 8002766:	88fa      	ldrh	r2, [r7, #6]
 8002768:	0a12      	lsrs	r2, r2, #8
 800276a:	b292      	uxth	r2, r2
 800276c:	b2d1      	uxtb	r1, r2
 800276e:	4a08      	ldr	r2, [pc, #32]	; (8002790 <proc_ADU+0xa4>)
 8002770:	54d1      	strb	r1, [r2, r3]
 8002772:	6838      	ldr	r0, [r7, #0]
 8002774:	f7ff f8ce 	bl	8001914 <start_trans>
 8002778:	3708      	adds	r7, #8
 800277a:	46bd      	mov	sp, r7
 800277c:	bd80      	pop	{r7, pc}
 800277e:	bf00      	nop
 8002780:	20000b74 	.word	0x20000b74
 8002784:	20000a74 	.word	0x20000a74
 8002788:	20000a70 	.word	0x20000a70
 800278c:	08003948 	.word	0x08003948
 8002790:	20000b7c 	.word	0x20000b7c

08002794 <crc16>:
 8002794:	b480      	push	{r7}
 8002796:	b087      	sub	sp, #28
 8002798:	af00      	add	r7, sp, #0
 800279a:	6078      	str	r0, [r7, #4]
 800279c:	6039      	str	r1, [r7, #0]
 800279e:	23ff      	movs	r3, #255	; 0xff
 80027a0:	75fb      	strb	r3, [r7, #23]
 80027a2:	23ff      	movs	r3, #255	; 0xff
 80027a4:	75bb      	strb	r3, [r7, #22]
 80027a6:	2300      	movs	r3, #0
 80027a8:	613b      	str	r3, [r7, #16]
 80027aa:	e016      	b.n	80027da <crc16+0x46>
 80027ac:	693b      	ldr	r3, [r7, #16]
 80027ae:	687a      	ldr	r2, [r7, #4]
 80027b0:	4413      	add	r3, r2
 80027b2:	781a      	ldrb	r2, [r3, #0]
 80027b4:	7dfb      	ldrb	r3, [r7, #23]
 80027b6:	4053      	eors	r3, r2
 80027b8:	b2db      	uxtb	r3, r3
 80027ba:	60fb      	str	r3, [r7, #12]
 80027bc:	4a0f      	ldr	r2, [pc, #60]	; (80027fc <crc16+0x68>)
 80027be:	68fb      	ldr	r3, [r7, #12]
 80027c0:	4413      	add	r3, r2
 80027c2:	781a      	ldrb	r2, [r3, #0]
 80027c4:	7dbb      	ldrb	r3, [r7, #22]
 80027c6:	4053      	eors	r3, r2
 80027c8:	75fb      	strb	r3, [r7, #23]
 80027ca:	4a0d      	ldr	r2, [pc, #52]	; (8002800 <crc16+0x6c>)
 80027cc:	68fb      	ldr	r3, [r7, #12]
 80027ce:	4413      	add	r3, r2
 80027d0:	781b      	ldrb	r3, [r3, #0]
 80027d2:	75bb      	strb	r3, [r7, #22]
 80027d4:	693b      	ldr	r3, [r7, #16]
 80027d6:	3301      	adds	r3, #1
 80027d8:	613b      	str	r3, [r7, #16]
 80027da:	693a      	ldr	r2, [r7, #16]
 80027dc:	683b      	ldr	r3, [r7, #0]
 80027de:	429a      	cmp	r2, r3
 80027e0:	dbe4      	blt.n	80027ac <crc16+0x18>
 80027e2:	7dbb      	ldrb	r3, [r7, #22]
 80027e4:	021b      	lsls	r3, r3, #8
 80027e6:	b21a      	sxth	r2, r3
 80027e8:	7dfb      	ldrb	r3, [r7, #23]
 80027ea:	b21b      	sxth	r3, r3
 80027ec:	4313      	orrs	r3, r2
 80027ee:	b21b      	sxth	r3, r3
 80027f0:	b29b      	uxth	r3, r3
 80027f2:	4618      	mov	r0, r3
 80027f4:	371c      	adds	r7, #28
 80027f6:	46bd      	mov	sp, r7
 80027f8:	bc80      	pop	{r7}
 80027fa:	4770      	bx	lr
 80027fc:	20000018 	.word	0x20000018
 8002800:	20000118 	.word	0x20000118

08002804 <NVIC_EnableIRQ>:
 8002804:	b480      	push	{r7}
 8002806:	b083      	sub	sp, #12
 8002808:	af00      	add	r7, sp, #0
 800280a:	4603      	mov	r3, r0
 800280c:	71fb      	strb	r3, [r7, #7]
 800280e:	4908      	ldr	r1, [pc, #32]	; (8002830 <NVIC_EnableIRQ+0x2c>)
 8002810:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8002814:	095b      	lsrs	r3, r3, #5
 8002816:	79fa      	ldrb	r2, [r7, #7]
 8002818:	f002 021f 	and.w	r2, r2, #31
 800281c:	2001      	movs	r0, #1
 800281e:	fa00 f202 	lsl.w	r2, r0, r2
 8002822:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8002826:	bf00      	nop
 8002828:	370c      	adds	r7, #12
 800282a:	46bd      	mov	sp, r7
 800282c:	bc80      	pop	{r7}
 800282e:	4770      	bx	lr
 8002830:	e000e100 	.word	0xe000e100

08002834 <init_spi_dma>:
 8002834:	b580      	push	{r7, lr}
 8002836:	af00      	add	r7, sp, #0
 8002838:	4a33      	ldr	r2, [pc, #204]	; (8002908 <init_spi_dma+0xd4>)
 800283a:	4b33      	ldr	r3, [pc, #204]	; (8002908 <init_spi_dma+0xd4>)
 800283c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800283e:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8002842:	6313      	str	r3, [r2, #48]	; 0x30
 8002844:	4b31      	ldr	r3, [pc, #196]	; (800290c <init_spi_dma+0xd8>)
 8002846:	4a32      	ldr	r2, [pc, #200]	; (8002910 <init_spi_dma+0xdc>)
 8002848:	609a      	str	r2, [r3, #8]
 800284a:	4b30      	ldr	r3, [pc, #192]	; (800290c <init_spi_dma+0xd8>)
 800284c:	4a31      	ldr	r2, [pc, #196]	; (8002914 <init_spi_dma+0xe0>)
 800284e:	60da      	str	r2, [r3, #12]
 8002850:	4b2e      	ldr	r3, [pc, #184]	; (800290c <init_spi_dma+0xd8>)
 8002852:	2208      	movs	r2, #8
 8002854:	605a      	str	r2, [r3, #4]
 8002856:	4a2d      	ldr	r2, [pc, #180]	; (800290c <init_spi_dma+0xd8>)
 8002858:	4b2c      	ldr	r3, [pc, #176]	; (800290c <init_spi_dma+0xd8>)
 800285a:	681b      	ldr	r3, [r3, #0]
 800285c:	f023 6360 	bic.w	r3, r3, #234881024	; 0xe000000
 8002860:	6013      	str	r3, [r2, #0]
 8002862:	4a2a      	ldr	r2, [pc, #168]	; (800290c <init_spi_dma+0xd8>)
 8002864:	4b29      	ldr	r3, [pc, #164]	; (800290c <init_spi_dma+0xd8>)
 8002866:	681b      	ldr	r3, [r3, #0]
 8002868:	f023 0320 	bic.w	r3, r3, #32
 800286c:	6013      	str	r3, [r2, #0]
 800286e:	4a27      	ldr	r2, [pc, #156]	; (800290c <init_spi_dma+0xd8>)
 8002870:	4b26      	ldr	r3, [pc, #152]	; (800290c <init_spi_dma+0xd8>)
 8002872:	681b      	ldr	r3, [r3, #0]
 8002874:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 8002878:	6013      	str	r3, [r2, #0]
 800287a:	4a24      	ldr	r2, [pc, #144]	; (800290c <init_spi_dma+0xd8>)
 800287c:	4b23      	ldr	r3, [pc, #140]	; (800290c <init_spi_dma+0xd8>)
 800287e:	681b      	ldr	r3, [r3, #0]
 8002880:	f023 03c0 	bic.w	r3, r3, #192	; 0xc0
 8002884:	6013      	str	r3, [r2, #0]
 8002886:	4a21      	ldr	r2, [pc, #132]	; (800290c <init_spi_dma+0xd8>)
 8002888:	4b20      	ldr	r3, [pc, #128]	; (800290c <init_spi_dma+0xd8>)
 800288a:	681b      	ldr	r3, [r3, #0]
 800288c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002890:	6013      	str	r3, [r2, #0]
 8002892:	4a1e      	ldr	r2, [pc, #120]	; (800290c <init_spi_dma+0xd8>)
 8002894:	4b1d      	ldr	r3, [pc, #116]	; (800290c <init_spi_dma+0xd8>)
 8002896:	681b      	ldr	r3, [r3, #0]
 8002898:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800289c:	6013      	str	r3, [r2, #0]
 800289e:	4a1b      	ldr	r2, [pc, #108]	; (800290c <init_spi_dma+0xd8>)
 80028a0:	4b1a      	ldr	r3, [pc, #104]	; (800290c <init_spi_dma+0xd8>)
 80028a2:	681b      	ldr	r3, [r3, #0]
 80028a4:	f023 73c0 	bic.w	r3, r3, #25165824	; 0x1800000
 80028a8:	6013      	str	r3, [r2, #0]
 80028aa:	4a18      	ldr	r2, [pc, #96]	; (800290c <init_spi_dma+0xd8>)
 80028ac:	4b17      	ldr	r3, [pc, #92]	; (800290c <init_spi_dma+0xd8>)
 80028ae:	681b      	ldr	r3, [r3, #0]
 80028b0:	f423 03c0 	bic.w	r3, r3, #6291456	; 0x600000
 80028b4:	6013      	str	r3, [r2, #0]
 80028b6:	4a15      	ldr	r2, [pc, #84]	; (800290c <init_spi_dma+0xd8>)
 80028b8:	4b14      	ldr	r3, [pc, #80]	; (800290c <init_spi_dma+0xd8>)
 80028ba:	681b      	ldr	r3, [r3, #0]
 80028bc:	f423 43c0 	bic.w	r3, r3, #24576	; 0x6000
 80028c0:	6013      	str	r3, [r2, #0]
 80028c2:	4a12      	ldr	r2, [pc, #72]	; (800290c <init_spi_dma+0xd8>)
 80028c4:	4b11      	ldr	r3, [pc, #68]	; (800290c <init_spi_dma+0xd8>)
 80028c6:	681b      	ldr	r3, [r3, #0]
 80028c8:	f423 53c0 	bic.w	r3, r3, #6144	; 0x1800
 80028cc:	6013      	str	r3, [r2, #0]
 80028ce:	4a0f      	ldr	r2, [pc, #60]	; (800290c <init_spi_dma+0xd8>)
 80028d0:	4b0e      	ldr	r3, [pc, #56]	; (800290c <init_spi_dma+0xd8>)
 80028d2:	681b      	ldr	r3, [r3, #0]
 80028d4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80028d8:	6013      	str	r3, [r2, #0]
 80028da:	4a0c      	ldr	r2, [pc, #48]	; (800290c <init_spi_dma+0xd8>)
 80028dc:	4b0b      	ldr	r3, [pc, #44]	; (800290c <init_spi_dma+0xd8>)
 80028de:	681b      	ldr	r3, [r3, #0]
 80028e0:	f043 0310 	orr.w	r3, r3, #16
 80028e4:	6013      	str	r3, [r2, #0]
 80028e6:	200f      	movs	r0, #15
 80028e8:	f7ff ff8c 	bl	8002804 <NVIC_EnableIRQ>
 80028ec:	4a0a      	ldr	r2, [pc, #40]	; (8002918 <init_spi_dma+0xe4>)
 80028ee:	4b0a      	ldr	r3, [pc, #40]	; (8002918 <init_spi_dma+0xe4>)
 80028f0:	68db      	ldr	r3, [r3, #12]
 80028f2:	f043 0320 	orr.w	r3, r3, #32
 80028f6:	60d3      	str	r3, [r2, #12]
 80028f8:	4a04      	ldr	r2, [pc, #16]	; (800290c <init_spi_dma+0xd8>)
 80028fa:	4b04      	ldr	r3, [pc, #16]	; (800290c <init_spi_dma+0xd8>)
 80028fc:	681b      	ldr	r3, [r3, #0]
 80028fe:	f043 0301 	orr.w	r3, r3, #1
 8002902:	6013      	str	r3, [r2, #0]
 8002904:	bf00      	nop
 8002906:	bd80      	pop	{r7, pc}
 8002908:	40023800 	.word	0x40023800
 800290c:	40026070 	.word	0x40026070
 8002910:	4000380c 	.word	0x4000380c
 8002914:	20000c84 	.word	0x20000c84
 8002918:	40026000 	.word	0x40026000

0800291c <coll_pwm_set>:
 800291c:	b480      	push	{r7}
 800291e:	b083      	sub	sp, #12
 8002920:	af00      	add	r7, sp, #0
 8002922:	4603      	mov	r3, r0
 8002924:	80fb      	strh	r3, [r7, #6]
 8002926:	88fb      	ldrh	r3, [r7, #6]
 8002928:	2bc8      	cmp	r3, #200	; 0xc8
 800292a:	d902      	bls.n	8002932 <coll_pwm_set+0x16>
 800292c:	23c8      	movs	r3, #200	; 0xc8
 800292e:	80fb      	strh	r3, [r7, #6]
 8002930:	bf00      	nop
 8002932:	4a04      	ldr	r2, [pc, #16]	; (8002944 <coll_pwm_set+0x28>)
 8002934:	88fb      	ldrh	r3, [r7, #6]
 8002936:	6413      	str	r3, [r2, #64]	; 0x40
 8002938:	bf00      	nop
 800293a:	370c      	adds	r7, #12
 800293c:	46bd      	mov	sp, r7
 800293e:	bc80      	pop	{r7}
 8002940:	4770      	bx	lr
 8002942:	bf00      	nop
 8002944:	40000400 	.word	0x40000400

08002948 <ind_pwm_init>:
 8002948:	b580      	push	{r7, lr}
 800294a:	af00      	add	r7, sp, #0
 800294c:	4a46      	ldr	r2, [pc, #280]	; (8002a68 <ind_pwm_init+0x120>)
 800294e:	4b46      	ldr	r3, [pc, #280]	; (8002a68 <ind_pwm_init+0x120>)
 8002950:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8002952:	f043 0302 	orr.w	r3, r3, #2
 8002956:	6413      	str	r3, [r2, #64]	; 0x40
 8002958:	4b44      	ldr	r3, [pc, #272]	; (8002a6c <ind_pwm_init+0x124>)
 800295a:	f240 12a3 	movw	r2, #419	; 0x1a3
 800295e:	851a      	strh	r2, [r3, #40]	; 0x28
 8002960:	4b42      	ldr	r3, [pc, #264]	; (8002a6c <ind_pwm_init+0x124>)
 8002962:	22c7      	movs	r2, #199	; 0xc7
 8002964:	62da      	str	r2, [r3, #44]	; 0x2c
 8002966:	4b41      	ldr	r3, [pc, #260]	; (8002a6c <ind_pwm_init+0x124>)
 8002968:	22b4      	movs	r2, #180	; 0xb4
 800296a:	63da      	str	r2, [r3, #60]	; 0x3c
 800296c:	4b3f      	ldr	r3, [pc, #252]	; (8002a6c <ind_pwm_init+0x124>)
 800296e:	22c8      	movs	r2, #200	; 0xc8
 8002970:	641a      	str	r2, [r3, #64]	; 0x40
 8002972:	4a3e      	ldr	r2, [pc, #248]	; (8002a6c <ind_pwm_init+0x124>)
 8002974:	4b3d      	ldr	r3, [pc, #244]	; (8002a6c <ind_pwm_init+0x124>)
 8002976:	899b      	ldrh	r3, [r3, #12]
 8002978:	b29b      	uxth	r3, r3
 800297a:	f043 0301 	orr.w	r3, r3, #1
 800297e:	b29b      	uxth	r3, r3
 8002980:	8193      	strh	r3, [r2, #12]
 8002982:	201d      	movs	r0, #29
 8002984:	f7ff ff3e 	bl	8002804 <NVIC_EnableIRQ>
 8002988:	4b38      	ldr	r3, [pc, #224]	; (8002a6c <ind_pwm_init+0x124>)
 800298a:	2200      	movs	r2, #0
 800298c:	839a      	strh	r2, [r3, #28]
 800298e:	4a37      	ldr	r2, [pc, #220]	; (8002a6c <ind_pwm_init+0x124>)
 8002990:	4b36      	ldr	r3, [pc, #216]	; (8002a6c <ind_pwm_init+0x124>)
 8002992:	8b9b      	ldrh	r3, [r3, #28]
 8002994:	b29b      	uxth	r3, r3
 8002996:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 800299a:	b29b      	uxth	r3, r3
 800299c:	8393      	strh	r3, [r2, #28]
 800299e:	4a33      	ldr	r2, [pc, #204]	; (8002a6c <ind_pwm_init+0x124>)
 80029a0:	4b32      	ldr	r3, [pc, #200]	; (8002a6c <ind_pwm_init+0x124>)
 80029a2:	8c1b      	ldrh	r3, [r3, #32]
 80029a4:	b29b      	uxth	r3, r3
 80029a6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80029aa:	b29b      	uxth	r3, r3
 80029ac:	8413      	strh	r3, [r2, #32]
 80029ae:	4a2f      	ldr	r2, [pc, #188]	; (8002a6c <ind_pwm_init+0x124>)
 80029b0:	4b2e      	ldr	r3, [pc, #184]	; (8002a6c <ind_pwm_init+0x124>)
 80029b2:	8b9b      	ldrh	r3, [r3, #28]
 80029b4:	b29b      	uxth	r3, r3
 80029b6:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 80029ba:	b29b      	uxth	r3, r3
 80029bc:	8393      	strh	r3, [r2, #28]
 80029be:	4a2b      	ldr	r2, [pc, #172]	; (8002a6c <ind_pwm_init+0x124>)
 80029c0:	4b2a      	ldr	r3, [pc, #168]	; (8002a6c <ind_pwm_init+0x124>)
 80029c2:	8c1b      	ldrh	r3, [r3, #32]
 80029c4:	b29b      	uxth	r3, r3
 80029c6:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 80029ca:	b29b      	uxth	r3, r3
 80029cc:	8413      	strh	r3, [r2, #32]
 80029ce:	4a27      	ldr	r2, [pc, #156]	; (8002a6c <ind_pwm_init+0x124>)
 80029d0:	4b26      	ldr	r3, [pc, #152]	; (8002a6c <ind_pwm_init+0x124>)
 80029d2:	881b      	ldrh	r3, [r3, #0]
 80029d4:	b29b      	uxth	r3, r3
 80029d6:	f043 0301 	orr.w	r3, r3, #1
 80029da:	b29b      	uxth	r3, r3
 80029dc:	8013      	strh	r3, [r2, #0]
 80029de:	4a22      	ldr	r2, [pc, #136]	; (8002a68 <ind_pwm_init+0x120>)
 80029e0:	4b21      	ldr	r3, [pc, #132]	; (8002a68 <ind_pwm_init+0x120>)
 80029e2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80029e4:	f043 0302 	orr.w	r3, r3, #2
 80029e8:	6313      	str	r3, [r2, #48]	; 0x30
 80029ea:	4a21      	ldr	r2, [pc, #132]	; (8002a70 <ind_pwm_init+0x128>)
 80029ec:	4b20      	ldr	r3, [pc, #128]	; (8002a70 <ind_pwm_init+0x128>)
 80029ee:	681b      	ldr	r3, [r3, #0]
 80029f0:	f023 0303 	bic.w	r3, r3, #3
 80029f4:	6013      	str	r3, [r2, #0]
 80029f6:	4a1e      	ldr	r2, [pc, #120]	; (8002a70 <ind_pwm_init+0x128>)
 80029f8:	4b1d      	ldr	r3, [pc, #116]	; (8002a70 <ind_pwm_init+0x128>)
 80029fa:	681b      	ldr	r3, [r3, #0]
 80029fc:	f043 0302 	orr.w	r3, r3, #2
 8002a00:	6013      	str	r3, [r2, #0]
 8002a02:	4a1b      	ldr	r2, [pc, #108]	; (8002a70 <ind_pwm_init+0x128>)
 8002a04:	4b1a      	ldr	r3, [pc, #104]	; (8002a70 <ind_pwm_init+0x128>)
 8002a06:	689b      	ldr	r3, [r3, #8]
 8002a08:	f043 0303 	orr.w	r3, r3, #3
 8002a0c:	6093      	str	r3, [r2, #8]
 8002a0e:	4a18      	ldr	r2, [pc, #96]	; (8002a70 <ind_pwm_init+0x128>)
 8002a10:	4b17      	ldr	r3, [pc, #92]	; (8002a70 <ind_pwm_init+0x128>)
 8002a12:	6a1b      	ldr	r3, [r3, #32]
 8002a14:	f023 030f 	bic.w	r3, r3, #15
 8002a18:	6213      	str	r3, [r2, #32]
 8002a1a:	4a15      	ldr	r2, [pc, #84]	; (8002a70 <ind_pwm_init+0x128>)
 8002a1c:	4b14      	ldr	r3, [pc, #80]	; (8002a70 <ind_pwm_init+0x128>)
 8002a1e:	6a1b      	ldr	r3, [r3, #32]
 8002a20:	f043 0302 	orr.w	r3, r3, #2
 8002a24:	6213      	str	r3, [r2, #32]
 8002a26:	4a12      	ldr	r2, [pc, #72]	; (8002a70 <ind_pwm_init+0x128>)
 8002a28:	4b11      	ldr	r3, [pc, #68]	; (8002a70 <ind_pwm_init+0x128>)
 8002a2a:	681b      	ldr	r3, [r3, #0]
 8002a2c:	f023 030c 	bic.w	r3, r3, #12
 8002a30:	6013      	str	r3, [r2, #0]
 8002a32:	4a0f      	ldr	r2, [pc, #60]	; (8002a70 <ind_pwm_init+0x128>)
 8002a34:	4b0e      	ldr	r3, [pc, #56]	; (8002a70 <ind_pwm_init+0x128>)
 8002a36:	681b      	ldr	r3, [r3, #0]
 8002a38:	f043 0308 	orr.w	r3, r3, #8
 8002a3c:	6013      	str	r3, [r2, #0]
 8002a3e:	4a0c      	ldr	r2, [pc, #48]	; (8002a70 <ind_pwm_init+0x128>)
 8002a40:	4b0b      	ldr	r3, [pc, #44]	; (8002a70 <ind_pwm_init+0x128>)
 8002a42:	689b      	ldr	r3, [r3, #8]
 8002a44:	f043 030c 	orr.w	r3, r3, #12
 8002a48:	6093      	str	r3, [r2, #8]
 8002a4a:	4a09      	ldr	r2, [pc, #36]	; (8002a70 <ind_pwm_init+0x128>)
 8002a4c:	4b08      	ldr	r3, [pc, #32]	; (8002a70 <ind_pwm_init+0x128>)
 8002a4e:	6a1b      	ldr	r3, [r3, #32]
 8002a50:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002a54:	6213      	str	r3, [r2, #32]
 8002a56:	4a06      	ldr	r2, [pc, #24]	; (8002a70 <ind_pwm_init+0x128>)
 8002a58:	4b05      	ldr	r3, [pc, #20]	; (8002a70 <ind_pwm_init+0x128>)
 8002a5a:	6a1b      	ldr	r3, [r3, #32]
 8002a5c:	f043 0320 	orr.w	r3, r3, #32
 8002a60:	6213      	str	r3, [r2, #32]
 8002a62:	bf00      	nop
 8002a64:	bd80      	pop	{r7, pc}
 8002a66:	bf00      	nop
 8002a68:	40023800 	.word	0x40023800
 8002a6c:	40000400 	.word	0x40000400
 8002a70:	40020400 	.word	0x40020400

08002a74 <spi_master_init>:
 8002a74:	b580      	push	{r7, lr}
 8002a76:	af00      	add	r7, sp, #0
 8002a78:	4a57      	ldr	r2, [pc, #348]	; (8002bd8 <spi_master_init+0x164>)
 8002a7a:	4b57      	ldr	r3, [pc, #348]	; (8002bd8 <spi_master_init+0x164>)
 8002a7c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8002a7e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8002a82:	6413      	str	r3, [r2, #64]	; 0x40
 8002a84:	4a54      	ldr	r2, [pc, #336]	; (8002bd8 <spi_master_init+0x164>)
 8002a86:	4b54      	ldr	r3, [pc, #336]	; (8002bd8 <spi_master_init+0x164>)
 8002a88:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002a8a:	f043 0302 	orr.w	r3, r3, #2
 8002a8e:	6313      	str	r3, [r2, #48]	; 0x30
 8002a90:	4a52      	ldr	r2, [pc, #328]	; (8002bdc <spi_master_init+0x168>)
 8002a92:	4b52      	ldr	r3, [pc, #328]	; (8002bdc <spi_master_init+0x168>)
 8002a94:	681b      	ldr	r3, [r3, #0]
 8002a96:	f023 4343 	bic.w	r3, r3, #3271557120	; 0xc3000000
 8002a9a:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8002a9e:	6013      	str	r3, [r2, #0]
 8002aa0:	4a4e      	ldr	r2, [pc, #312]	; (8002bdc <spi_master_init+0x168>)
 8002aa2:	4b4e      	ldr	r3, [pc, #312]	; (8002bdc <spi_master_init+0x168>)
 8002aa4:	681b      	ldr	r3, [r3, #0]
 8002aa6:	f043 4302 	orr.w	r3, r3, #2181038080	; 0x82000000
 8002aaa:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8002aae:	6013      	str	r3, [r2, #0]
 8002ab0:	4a4a      	ldr	r2, [pc, #296]	; (8002bdc <spi_master_init+0x168>)
 8002ab2:	4b4a      	ldr	r3, [pc, #296]	; (8002bdc <spi_master_init+0x168>)
 8002ab4:	689b      	ldr	r3, [r3, #8]
 8002ab6:	f043 4343 	orr.w	r3, r3, #3271557120	; 0xc3000000
 8002aba:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8002abe:	6093      	str	r3, [r2, #8]
 8002ac0:	4a46      	ldr	r2, [pc, #280]	; (8002bdc <spi_master_init+0x168>)
 8002ac2:	4b46      	ldr	r3, [pc, #280]	; (8002bdc <spi_master_init+0x168>)
 8002ac4:	681b      	ldr	r3, [r3, #0]
 8002ac6:	f023 7340 	bic.w	r3, r3, #50331648	; 0x3000000
 8002aca:	6013      	str	r3, [r2, #0]
 8002acc:	4a43      	ldr	r2, [pc, #268]	; (8002bdc <spi_master_init+0x168>)
 8002ace:	4b43      	ldr	r3, [pc, #268]	; (8002bdc <spi_master_init+0x168>)
 8002ad0:	681b      	ldr	r3, [r3, #0]
 8002ad2:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8002ad6:	6013      	str	r3, [r2, #0]
 8002ad8:	4a40      	ldr	r2, [pc, #256]	; (8002bdc <spi_master_init+0x168>)
 8002ada:	4b40      	ldr	r3, [pc, #256]	; (8002bdc <spi_master_init+0x168>)
 8002adc:	695b      	ldr	r3, [r3, #20]
 8002ade:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8002ae2:	6153      	str	r3, [r2, #20]
 8002ae4:	4a3d      	ldr	r2, [pc, #244]	; (8002bdc <spi_master_init+0x168>)
 8002ae6:	4b3d      	ldr	r3, [pc, #244]	; (8002bdc <spi_master_init+0x168>)
 8002ae8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002aea:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8002aee:	6253      	str	r3, [r2, #36]	; 0x24
 8002af0:	4a3a      	ldr	r2, [pc, #232]	; (8002bdc <spi_master_init+0x168>)
 8002af2:	4b3a      	ldr	r3, [pc, #232]	; (8002bdc <spi_master_init+0x168>)
 8002af4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002af6:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 8002afa:	6253      	str	r3, [r2, #36]	; 0x24
 8002afc:	4a37      	ldr	r2, [pc, #220]	; (8002bdc <spi_master_init+0x168>)
 8002afe:	4b37      	ldr	r3, [pc, #220]	; (8002bdc <spi_master_init+0x168>)
 8002b00:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b02:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
 8002b06:	6253      	str	r3, [r2, #36]	; 0x24
 8002b08:	4a34      	ldr	r2, [pc, #208]	; (8002bdc <spi_master_init+0x168>)
 8002b0a:	4b34      	ldr	r3, [pc, #208]	; (8002bdc <spi_master_init+0x168>)
 8002b0c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b0e:	f043 43a0 	orr.w	r3, r3, #1342177280	; 0x50000000
 8002b12:	6253      	str	r3, [r2, #36]	; 0x24
 8002b14:	4a31      	ldr	r2, [pc, #196]	; (8002bdc <spi_master_init+0x168>)
 8002b16:	4b31      	ldr	r3, [pc, #196]	; (8002bdc <spi_master_init+0x168>)
 8002b18:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b1a:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 8002b1e:	6253      	str	r3, [r2, #36]	; 0x24
 8002b20:	4a2e      	ldr	r2, [pc, #184]	; (8002bdc <spi_master_init+0x168>)
 8002b22:	4b2e      	ldr	r3, [pc, #184]	; (8002bdc <spi_master_init+0x168>)
 8002b24:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b26:	f443 23a0 	orr.w	r3, r3, #327680	; 0x50000
 8002b2a:	6253      	str	r3, [r2, #36]	; 0x24
 8002b2c:	4a2c      	ldr	r2, [pc, #176]	; (8002be0 <spi_master_init+0x16c>)
 8002b2e:	4b2c      	ldr	r3, [pc, #176]	; (8002be0 <spi_master_init+0x16c>)
 8002b30:	881b      	ldrh	r3, [r3, #0]
 8002b32:	b29b      	uxth	r3, r3
 8002b34:	f023 0338 	bic.w	r3, r3, #56	; 0x38
 8002b38:	b29b      	uxth	r3, r3
 8002b3a:	8013      	strh	r3, [r2, #0]
 8002b3c:	4a28      	ldr	r2, [pc, #160]	; (8002be0 <spi_master_init+0x16c>)
 8002b3e:	4b28      	ldr	r3, [pc, #160]	; (8002be0 <spi_master_init+0x16c>)
 8002b40:	881b      	ldrh	r3, [r3, #0]
 8002b42:	b29b      	uxth	r3, r3
 8002b44:	f043 0320 	orr.w	r3, r3, #32
 8002b48:	b29b      	uxth	r3, r3
 8002b4a:	8013      	strh	r3, [r2, #0]
 8002b4c:	4a24      	ldr	r2, [pc, #144]	; (8002be0 <spi_master_init+0x16c>)
 8002b4e:	4b24      	ldr	r3, [pc, #144]	; (8002be0 <spi_master_init+0x16c>)
 8002b50:	881b      	ldrh	r3, [r3, #0]
 8002b52:	b29b      	uxth	r3, r3
 8002b54:	f023 0303 	bic.w	r3, r3, #3
 8002b58:	b29b      	uxth	r3, r3
 8002b5a:	8013      	strh	r3, [r2, #0]
 8002b5c:	4a20      	ldr	r2, [pc, #128]	; (8002be0 <spi_master_init+0x16c>)
 8002b5e:	4b20      	ldr	r3, [pc, #128]	; (8002be0 <spi_master_init+0x16c>)
 8002b60:	881b      	ldrh	r3, [r3, #0]
 8002b62:	b29b      	uxth	r3, r3
 8002b64:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8002b68:	b29b      	uxth	r3, r3
 8002b6a:	8013      	strh	r3, [r2, #0]
 8002b6c:	4a1c      	ldr	r2, [pc, #112]	; (8002be0 <spi_master_init+0x16c>)
 8002b6e:	4b1c      	ldr	r3, [pc, #112]	; (8002be0 <spi_master_init+0x16c>)
 8002b70:	881b      	ldrh	r3, [r3, #0]
 8002b72:	b29b      	uxth	r3, r3
 8002b74:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002b78:	b29b      	uxth	r3, r3
 8002b7a:	8013      	strh	r3, [r2, #0]
 8002b7c:	4a18      	ldr	r2, [pc, #96]	; (8002be0 <spi_master_init+0x16c>)
 8002b7e:	4b18      	ldr	r3, [pc, #96]	; (8002be0 <spi_master_init+0x16c>)
 8002b80:	881b      	ldrh	r3, [r3, #0]
 8002b82:	b29b      	uxth	r3, r3
 8002b84:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8002b88:	b29b      	uxth	r3, r3
 8002b8a:	8013      	strh	r3, [r2, #0]
 8002b8c:	4a14      	ldr	r2, [pc, #80]	; (8002be0 <spi_master_init+0x16c>)
 8002b8e:	4b14      	ldr	r3, [pc, #80]	; (8002be0 <spi_master_init+0x16c>)
 8002b90:	889b      	ldrh	r3, [r3, #4]
 8002b92:	b29b      	uxth	r3, r3
 8002b94:	f043 0304 	orr.w	r3, r3, #4
 8002b98:	b29b      	uxth	r3, r3
 8002b9a:	8093      	strh	r3, [r2, #4]
 8002b9c:	4a10      	ldr	r2, [pc, #64]	; (8002be0 <spi_master_init+0x16c>)
 8002b9e:	4b10      	ldr	r3, [pc, #64]	; (8002be0 <spi_master_init+0x16c>)
 8002ba0:	881b      	ldrh	r3, [r3, #0]
 8002ba2:	b29b      	uxth	r3, r3
 8002ba4:	f043 0304 	orr.w	r3, r3, #4
 8002ba8:	b29b      	uxth	r3, r3
 8002baa:	8013      	strh	r3, [r2, #0]
 8002bac:	f7ff fe42 	bl	8002834 <init_spi_dma>
 8002bb0:	4a0b      	ldr	r2, [pc, #44]	; (8002be0 <spi_master_init+0x16c>)
 8002bb2:	4b0b      	ldr	r3, [pc, #44]	; (8002be0 <spi_master_init+0x16c>)
 8002bb4:	889b      	ldrh	r3, [r3, #4]
 8002bb6:	b29b      	uxth	r3, r3
 8002bb8:	f043 0302 	orr.w	r3, r3, #2
 8002bbc:	b29b      	uxth	r3, r3
 8002bbe:	8093      	strh	r3, [r2, #4]
 8002bc0:	4a07      	ldr	r2, [pc, #28]	; (8002be0 <spi_master_init+0x16c>)
 8002bc2:	4b07      	ldr	r3, [pc, #28]	; (8002be0 <spi_master_init+0x16c>)
 8002bc4:	881b      	ldrh	r3, [r3, #0]
 8002bc6:	b29b      	uxth	r3, r3
 8002bc8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002bcc:	b29b      	uxth	r3, r3
 8002bce:	8013      	strh	r3, [r2, #0]
 8002bd0:	f7ff feba 	bl	8002948 <ind_pwm_init>
 8002bd4:	bf00      	nop
 8002bd6:	bd80      	pop	{r7, pc}
 8002bd8:	40023800 	.word	0x40023800
 8002bdc:	40020400 	.word	0x40020400
 8002be0:	40003800 	.word	0x40003800

08002be4 <spi_slave_init>:
 8002be4:	b580      	push	{r7, lr}
 8002be6:	af00      	add	r7, sp, #0
 8002be8:	4a22      	ldr	r2, [pc, #136]	; (8002c74 <spi_slave_init+0x90>)
 8002bea:	4b22      	ldr	r3, [pc, #136]	; (8002c74 <spi_slave_init+0x90>)
 8002bec:	881b      	ldrh	r3, [r3, #0]
 8002bee:	b29b      	uxth	r3, r3
 8002bf0:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8002bf4:	b29b      	uxth	r3, r3
 8002bf6:	8013      	strh	r3, [r2, #0]
 8002bf8:	4a1e      	ldr	r2, [pc, #120]	; (8002c74 <spi_slave_init+0x90>)
 8002bfa:	4b1e      	ldr	r3, [pc, #120]	; (8002c74 <spi_slave_init+0x90>)
 8002bfc:	881b      	ldrh	r3, [r3, #0]
 8002bfe:	b29b      	uxth	r3, r3
 8002c00:	f023 0303 	bic.w	r3, r3, #3
 8002c04:	b29b      	uxth	r3, r3
 8002c06:	8013      	strh	r3, [r2, #0]
 8002c08:	4a1a      	ldr	r2, [pc, #104]	; (8002c74 <spi_slave_init+0x90>)
 8002c0a:	4b1a      	ldr	r3, [pc, #104]	; (8002c74 <spi_slave_init+0x90>)
 8002c0c:	881b      	ldrh	r3, [r3, #0]
 8002c0e:	b29b      	uxth	r3, r3
 8002c10:	f043 0301 	orr.w	r3, r3, #1
 8002c14:	b29b      	uxth	r3, r3
 8002c16:	8013      	strh	r3, [r2, #0]
 8002c18:	4a16      	ldr	r2, [pc, #88]	; (8002c74 <spi_slave_init+0x90>)
 8002c1a:	4b16      	ldr	r3, [pc, #88]	; (8002c74 <spi_slave_init+0x90>)
 8002c1c:	881b      	ldrh	r3, [r3, #0]
 8002c1e:	b29b      	uxth	r3, r3
 8002c20:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002c24:	b29b      	uxth	r3, r3
 8002c26:	8013      	strh	r3, [r2, #0]
 8002c28:	4a12      	ldr	r2, [pc, #72]	; (8002c74 <spi_slave_init+0x90>)
 8002c2a:	4b12      	ldr	r3, [pc, #72]	; (8002c74 <spi_slave_init+0x90>)
 8002c2c:	881b      	ldrh	r3, [r3, #0]
 8002c2e:	b29b      	uxth	r3, r3
 8002c30:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8002c34:	b29b      	uxth	r3, r3
 8002c36:	8013      	strh	r3, [r2, #0]
 8002c38:	4a0e      	ldr	r2, [pc, #56]	; (8002c74 <spi_slave_init+0x90>)
 8002c3a:	4b0e      	ldr	r3, [pc, #56]	; (8002c74 <spi_slave_init+0x90>)
 8002c3c:	889b      	ldrh	r3, [r3, #4]
 8002c3e:	b29b      	uxth	r3, r3
 8002c40:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002c44:	b29b      	uxth	r3, r3
 8002c46:	8093      	strh	r3, [r2, #4]
 8002c48:	4a0a      	ldr	r2, [pc, #40]	; (8002c74 <spi_slave_init+0x90>)
 8002c4a:	4b0a      	ldr	r3, [pc, #40]	; (8002c74 <spi_slave_init+0x90>)
 8002c4c:	881b      	ldrh	r3, [r3, #0]
 8002c4e:	b29b      	uxth	r3, r3
 8002c50:	f023 0304 	bic.w	r3, r3, #4
 8002c54:	b29b      	uxth	r3, r3
 8002c56:	8013      	strh	r3, [r2, #0]
 8002c58:	2023      	movs	r0, #35	; 0x23
 8002c5a:	f7ff fdd3 	bl	8002804 <NVIC_EnableIRQ>
 8002c5e:	4a05      	ldr	r2, [pc, #20]	; (8002c74 <spi_slave_init+0x90>)
 8002c60:	4b04      	ldr	r3, [pc, #16]	; (8002c74 <spi_slave_init+0x90>)
 8002c62:	881b      	ldrh	r3, [r3, #0]
 8002c64:	b29b      	uxth	r3, r3
 8002c66:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002c6a:	b29b      	uxth	r3, r3
 8002c6c:	8013      	strh	r3, [r2, #0]
 8002c6e:	bf00      	nop
 8002c70:	bd80      	pop	{r7, pc}
 8002c72:	bf00      	nop
 8002c74:	40013000 	.word	0x40013000

08002c78 <spi_write_read>:
 8002c78:	b480      	push	{r7}
 8002c7a:	b087      	sub	sp, #28
 8002c7c:	af00      	add	r7, sp, #0
 8002c7e:	60f8      	str	r0, [r7, #12]
 8002c80:	60b9      	str	r1, [r7, #8]
 8002c82:	4613      	mov	r3, r2
 8002c84:	80fb      	strh	r3, [r7, #6]
 8002c86:	2300      	movs	r3, #0
 8002c88:	617b      	str	r3, [r7, #20]
 8002c8a:	492c      	ldr	r1, [pc, #176]	; (8002d3c <spi_write_read+0xc4>)
 8002c8c:	697b      	ldr	r3, [r7, #20]
 8002c8e:	1c5a      	adds	r2, r3, #1
 8002c90:	617a      	str	r2, [r7, #20]
 8002c92:	461a      	mov	r2, r3
 8002c94:	68fb      	ldr	r3, [r7, #12]
 8002c96:	4413      	add	r3, r2
 8002c98:	781b      	ldrb	r3, [r3, #0]
 8002c9a:	b29b      	uxth	r3, r3
 8002c9c:	818b      	strh	r3, [r1, #12]
 8002c9e:	e022      	b.n	8002ce6 <spi_write_read+0x6e>
 8002ca0:	bf00      	nop
 8002ca2:	4b26      	ldr	r3, [pc, #152]	; (8002d3c <spi_write_read+0xc4>)
 8002ca4:	891b      	ldrh	r3, [r3, #8]
 8002ca6:	b29b      	uxth	r3, r3
 8002ca8:	f003 0302 	and.w	r3, r3, #2
 8002cac:	2b00      	cmp	r3, #0
 8002cae:	d0f8      	beq.n	8002ca2 <spi_write_read+0x2a>
 8002cb0:	4922      	ldr	r1, [pc, #136]	; (8002d3c <spi_write_read+0xc4>)
 8002cb2:	697b      	ldr	r3, [r7, #20]
 8002cb4:	68fa      	ldr	r2, [r7, #12]
 8002cb6:	4413      	add	r3, r2
 8002cb8:	781b      	ldrb	r3, [r3, #0]
 8002cba:	b29b      	uxth	r3, r3
 8002cbc:	818b      	strh	r3, [r1, #12]
 8002cbe:	bf00      	nop
 8002cc0:	4b1e      	ldr	r3, [pc, #120]	; (8002d3c <spi_write_read+0xc4>)
 8002cc2:	891b      	ldrh	r3, [r3, #8]
 8002cc4:	b29b      	uxth	r3, r3
 8002cc6:	f003 0301 	and.w	r3, r3, #1
 8002cca:	2b00      	cmp	r3, #0
 8002ccc:	d0f8      	beq.n	8002cc0 <spi_write_read+0x48>
 8002cce:	697b      	ldr	r3, [r7, #20]
 8002cd0:	3b01      	subs	r3, #1
 8002cd2:	68ba      	ldr	r2, [r7, #8]
 8002cd4:	4413      	add	r3, r2
 8002cd6:	4a19      	ldr	r2, [pc, #100]	; (8002d3c <spi_write_read+0xc4>)
 8002cd8:	8992      	ldrh	r2, [r2, #12]
 8002cda:	b292      	uxth	r2, r2
 8002cdc:	b2d2      	uxtb	r2, r2
 8002cde:	701a      	strb	r2, [r3, #0]
 8002ce0:	697b      	ldr	r3, [r7, #20]
 8002ce2:	3301      	adds	r3, #1
 8002ce4:	617b      	str	r3, [r7, #20]
 8002ce6:	88fa      	ldrh	r2, [r7, #6]
 8002ce8:	697b      	ldr	r3, [r7, #20]
 8002cea:	429a      	cmp	r2, r3
 8002cec:	dcd8      	bgt.n	8002ca0 <spi_write_read+0x28>
 8002cee:	bf00      	nop
 8002cf0:	4b12      	ldr	r3, [pc, #72]	; (8002d3c <spi_write_read+0xc4>)
 8002cf2:	891b      	ldrh	r3, [r3, #8]
 8002cf4:	b29b      	uxth	r3, r3
 8002cf6:	f003 0301 	and.w	r3, r3, #1
 8002cfa:	2b00      	cmp	r3, #0
 8002cfc:	d0f8      	beq.n	8002cf0 <spi_write_read+0x78>
 8002cfe:	88fb      	ldrh	r3, [r7, #6]
 8002d00:	3b01      	subs	r3, #1
 8002d02:	68ba      	ldr	r2, [r7, #8]
 8002d04:	4413      	add	r3, r2
 8002d06:	4a0d      	ldr	r2, [pc, #52]	; (8002d3c <spi_write_read+0xc4>)
 8002d08:	8992      	ldrh	r2, [r2, #12]
 8002d0a:	b292      	uxth	r2, r2
 8002d0c:	b2d2      	uxtb	r2, r2
 8002d0e:	701a      	strb	r2, [r3, #0]
 8002d10:	bf00      	nop
 8002d12:	4b0a      	ldr	r3, [pc, #40]	; (8002d3c <spi_write_read+0xc4>)
 8002d14:	891b      	ldrh	r3, [r3, #8]
 8002d16:	b29b      	uxth	r3, r3
 8002d18:	f003 0302 	and.w	r3, r3, #2
 8002d1c:	2b00      	cmp	r3, #0
 8002d1e:	d0f8      	beq.n	8002d12 <spi_write_read+0x9a>
 8002d20:	bf00      	nop
 8002d22:	4b06      	ldr	r3, [pc, #24]	; (8002d3c <spi_write_read+0xc4>)
 8002d24:	891b      	ldrh	r3, [r3, #8]
 8002d26:	b29b      	uxth	r3, r3
 8002d28:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002d2c:	2b00      	cmp	r3, #0
 8002d2e:	d1f8      	bne.n	8002d22 <spi_write_read+0xaa>
 8002d30:	bf00      	nop
 8002d32:	371c      	adds	r7, #28
 8002d34:	46bd      	mov	sp, r7
 8002d36:	bc80      	pop	{r7}
 8002d38:	4770      	bx	lr
 8002d3a:	bf00      	nop
 8002d3c:	40003800 	.word	0x40003800

08002d40 <SPI1_IRQHandler>:
 8002d40:	b480      	push	{r7}
 8002d42:	af00      	add	r7, sp, #0
 8002d44:	4b0a      	ldr	r3, [pc, #40]	; (8002d70 <SPI1_IRQHandler+0x30>)
 8002d46:	891b      	ldrh	r3, [r3, #8]
 8002d48:	b29b      	uxth	r3, r3
 8002d4a:	f003 0301 	and.w	r3, r3, #1
 8002d4e:	2b00      	cmp	r3, #0
 8002d50:	d008      	beq.n	8002d64 <SPI1_IRQHandler+0x24>
 8002d52:	4b08      	ldr	r3, [pc, #32]	; (8002d74 <SPI1_IRQHandler+0x34>)
 8002d54:	2201      	movs	r2, #1
 8002d56:	601a      	str	r2, [r3, #0]
 8002d58:	4b05      	ldr	r3, [pc, #20]	; (8002d70 <SPI1_IRQHandler+0x30>)
 8002d5a:	899b      	ldrh	r3, [r3, #12]
 8002d5c:	b29b      	uxth	r3, r3
 8002d5e:	b2da      	uxtb	r2, r3
 8002d60:	4b05      	ldr	r3, [pc, #20]	; (8002d78 <SPI1_IRQHandler+0x38>)
 8002d62:	701a      	strb	r2, [r3, #0]
 8002d64:	4b02      	ldr	r3, [pc, #8]	; (8002d70 <SPI1_IRQHandler+0x30>)
 8002d66:	891b      	ldrh	r3, [r3, #8]
 8002d68:	bf00      	nop
 8002d6a:	46bd      	mov	sp, r7
 8002d6c:	bc80      	pop	{r7}
 8002d6e:	4770      	bx	lr
 8002d70:	40013000 	.word	0x40013000
 8002d74:	20000c8c 	.word	0x20000c8c
 8002d78:	20000c90 	.word	0x20000c90

08002d7c <check_current>:
 8002d7c:	b480      	push	{r7}
 8002d7e:	af00      	add	r7, sp, #0
 8002d80:	4b0e      	ldr	r3, [pc, #56]	; (8002dbc <check_current+0x40>)
 8002d82:	681b      	ldr	r3, [r3, #0]
 8002d84:	129b      	asrs	r3, r3, #10
 8002d86:	4a0e      	ldr	r2, [pc, #56]	; (8002dc0 <check_current+0x44>)
 8002d88:	fb02 f303 	mul.w	r3, r2, r3
 8002d8c:	4a0d      	ldr	r2, [pc, #52]	; (8002dc4 <check_current+0x48>)
 8002d8e:	4413      	add	r3, r2
 8002d90:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
 8002d94:	139b      	asrs	r3, r3, #14
 8002d96:	4a0c      	ldr	r2, [pc, #48]	; (8002dc8 <check_current+0x4c>)
 8002d98:	6013      	str	r3, [r2, #0]
 8002d9a:	4b0b      	ldr	r3, [pc, #44]	; (8002dc8 <check_current+0x4c>)
 8002d9c:	681b      	ldr	r3, [r3, #0]
 8002d9e:	2b00      	cmp	r3, #0
 8002da0:	da02      	bge.n	8002da8 <check_current+0x2c>
 8002da2:	4b09      	ldr	r3, [pc, #36]	; (8002dc8 <check_current+0x4c>)
 8002da4:	2200      	movs	r2, #0
 8002da6:	601a      	str	r2, [r3, #0]
 8002da8:	4b07      	ldr	r3, [pc, #28]	; (8002dc8 <check_current+0x4c>)
 8002daa:	681b      	ldr	r3, [r3, #0]
 8002dac:	b29a      	uxth	r2, r3
 8002dae:	4b07      	ldr	r3, [pc, #28]	; (8002dcc <check_current+0x50>)
 8002db0:	819a      	strh	r2, [r3, #12]
 8002db2:	bf00      	nop
 8002db4:	46bd      	mov	sp, r7
 8002db6:	bc80      	pop	{r7}
 8002db8:	4770      	bx	lr
 8002dba:	bf00      	nop
 8002dbc:	20001ca0 	.word	0x20001ca0
 8002dc0:	0001d7c4 	.word	0x0001d7c4
 8002dc4:	0003f74d 	.word	0x0003f74d
 8002dc8:	20000234 	.word	0x20000234
 8002dcc:	20000a60 	.word	0x20000a60

08002dd0 <set_refcurrent>:
 8002dd0:	b490      	push	{r4, r7}
 8002dd2:	b084      	sub	sp, #16
 8002dd4:	af00      	add	r7, sp, #0
 8002dd6:	6078      	str	r0, [r7, #4]
 8002dd8:	4b1e      	ldr	r3, [pc, #120]	; (8002e54 <set_refcurrent+0x84>)
 8002dda:	681b      	ldr	r3, [r3, #0]
 8002ddc:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002de0:	0c9b      	lsrs	r3, r3, #18
 8002de2:	3305      	adds	r3, #5
 8002de4:	4a1c      	ldr	r2, [pc, #112]	; (8002e58 <set_refcurrent+0x88>)
 8002de6:	fba2 2303 	umull	r2, r3, r2, r3
 8002dea:	08dc      	lsrs	r4, r3, #3
 8002dec:	f240 2356 	movw	r3, #598	; 0x256
 8002df0:	429c      	cmp	r4, r3
 8002df2:	d902      	bls.n	8002dfa <set_refcurrent+0x2a>
 8002df4:	f240 2457 	movw	r4, #599	; 0x257
 8002df8:	bf00      	nop
 8002dfa:	4b18      	ldr	r3, [pc, #96]	; (8002e5c <set_refcurrent+0x8c>)
 8002dfc:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002e00:	4b17      	ldr	r3, [pc, #92]	; (8002e60 <set_refcurrent+0x90>)
 8002e02:	681b      	ldr	r3, [r3, #0]
 8002e04:	f1c3 0396 	rsb	r3, r3, #150	; 0x96
 8002e08:	fb04 f303 	mul.w	r3, r4, r3
 8002e0c:	4a15      	ldr	r2, [pc, #84]	; (8002e64 <set_refcurrent+0x94>)
 8002e0e:	fba2 2303 	umull	r2, r3, r2, r3
 8002e12:	08dc      	lsrs	r4, r3, #3
 8002e14:	687b      	ldr	r3, [r7, #4]
 8002e16:	42a3      	cmp	r3, r4
 8002e18:	d902      	bls.n	8002e20 <set_refcurrent+0x50>
 8002e1a:	607c      	str	r4, [r7, #4]
 8002e1c:	687b      	ldr	r3, [r7, #4]
 8002e1e:	2b00      	cmp	r3, #0
 8002e20:	4b11      	ldr	r3, [pc, #68]	; (8002e68 <set_refcurrent+0x98>)
 8002e22:	601c      	str	r4, [r3, #0]
 8002e24:	4b11      	ldr	r3, [pc, #68]	; (8002e6c <set_refcurrent+0x9c>)
 8002e26:	461a      	mov	r2, r3
 8002e28:	687b      	ldr	r3, [r7, #4]
 8002e2a:	fb03 f302 	mul.w	r3, r3, r2
 8002e2e:	4a10      	ldr	r2, [pc, #64]	; (8002e70 <set_refcurrent+0xa0>)
 8002e30:	4413      	add	r3, r2
 8002e32:	60fb      	str	r3, [r7, #12]
 8002e34:	68fb      	ldr	r3, [r7, #12]
 8002e36:	2b00      	cmp	r3, #0
 8002e38:	dd04      	ble.n	8002e44 <set_refcurrent+0x74>
 8002e3a:	68fb      	ldr	r3, [r7, #12]
 8002e3c:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 8002e40:	151b      	asrs	r3, r3, #20
 8002e42:	e000      	b.n	8002e46 <set_refcurrent+0x76>
 8002e44:	2300      	movs	r3, #0
 8002e46:	4a0b      	ldr	r2, [pc, #44]	; (8002e74 <set_refcurrent+0xa4>)
 8002e48:	6013      	str	r3, [r2, #0]
 8002e4a:	bf00      	nop
 8002e4c:	3710      	adds	r7, #16
 8002e4e:	46bd      	mov	sp, r7
 8002e50:	bc90      	pop	{r4, r7}
 8002e52:	4770      	bx	lr
 8002e54:	20000230 	.word	0x20000230
 8002e58:	cccccccd 	.word	0xcccccccd
 8002e5c:	08003df0 	.word	0x08003df0
 8002e60:	20002cbc 	.word	0x20002cbc
 8002e64:	10624dd3 	.word	0x10624dd3
 8002e68:	2000022c 	.word	0x2000022c
 8002e6c:	00022baa 	.word	0x00022baa
 8002e70:	ffdd90e7 	.word	0xffdd90e7
 8002e74:	20002ca8 	.word	0x20002ca8

08002e78 <check_voltage>:
 8002e78:	b480      	push	{r7}
 8002e7a:	af00      	add	r7, sp, #0
 8002e7c:	4b0d      	ldr	r3, [pc, #52]	; (8002eb4 <check_voltage+0x3c>)
 8002e7e:	681b      	ldr	r3, [r3, #0]
 8002e80:	0a9b      	lsrs	r3, r3, #10
 8002e82:	4a0d      	ldr	r2, [pc, #52]	; (8002eb8 <check_voltage+0x40>)
 8002e84:	fb02 f303 	mul.w	r3, r2, r3
 8002e88:	4a0c      	ldr	r2, [pc, #48]	; (8002ebc <check_voltage+0x44>)
 8002e8a:	441a      	add	r2, r3
 8002e8c:	4b0c      	ldr	r3, [pc, #48]	; (8002ec0 <check_voltage+0x48>)
 8002e8e:	681b      	ldr	r3, [r3, #0]
 8002e90:	3b02      	subs	r3, #2
 8002e92:	fa22 f303 	lsr.w	r3, r2, r3
 8002e96:	4a0b      	ldr	r2, [pc, #44]	; (8002ec4 <check_voltage+0x4c>)
 8002e98:	6013      	str	r3, [r2, #0]
 8002e9a:	4b0a      	ldr	r3, [pc, #40]	; (8002ec4 <check_voltage+0x4c>)
 8002e9c:	681b      	ldr	r3, [r3, #0]
 8002e9e:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002ea2:	0c9b      	lsrs	r3, r3, #18
 8002ea4:	b29a      	uxth	r2, r3
 8002ea6:	4b08      	ldr	r3, [pc, #32]	; (8002ec8 <check_voltage+0x50>)
 8002ea8:	815a      	strh	r2, [r3, #10]
 8002eaa:	bf00      	nop
 8002eac:	46bd      	mov	sp, r7
 8002eae:	bc80      	pop	{r7}
 8002eb0:	4770      	bx	lr
 8002eb2:	bf00      	nop
 8002eb4:	20000c98 	.word	0x20000c98
 8002eb8:	000537f0 	.word	0x000537f0
 8002ebc:	0007d396 	.word	0x0007d396
 8002ec0:	20002cd0 	.word	0x20002cd0
 8002ec4:	20000230 	.word	0x20000230
 8002ec8:	20000a60 	.word	0x20000a60

08002ecc <update_mode>:
 8002ecc:	b580      	push	{r7, lr}
 8002ece:	b082      	sub	sp, #8
 8002ed0:	af00      	add	r7, sp, #0
 8002ed2:	f44f 03f0 	mov.w	r3, #7864320	; 0x780000
 8002ed6:	607b      	str	r3, [r7, #4]
 8002ed8:	f44f 03a0 	mov.w	r3, #5242880	; 0x500000
 8002edc:	603b      	str	r3, [r7, #0]
 8002ede:	4b35      	ldr	r3, [pc, #212]	; (8002fb4 <update_mode+0xe8>)
 8002ee0:	681b      	ldr	r3, [r3, #0]
 8002ee2:	2b00      	cmp	r3, #0
 8002ee4:	d009      	beq.n	8002efa <update_mode+0x2e>
 8002ee6:	4a34      	ldr	r2, [pc, #208]	; (8002fb8 <update_mode+0xec>)
 8002ee8:	4b33      	ldr	r3, [pc, #204]	; (8002fb8 <update_mode+0xec>)
 8002eea:	695b      	ldr	r3, [r3, #20]
 8002eec:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002ef0:	6153      	str	r3, [r2, #20]
 8002ef2:	4b32      	ldr	r3, [pc, #200]	; (8002fbc <update_mode+0xf0>)
 8002ef4:	2200      	movs	r2, #0
 8002ef6:	601a      	str	r2, [r3, #0]
 8002ef8:	e057      	b.n	8002faa <update_mode+0xde>
 8002efa:	4b31      	ldr	r3, [pc, #196]	; (8002fc0 <update_mode+0xf4>)
 8002efc:	681a      	ldr	r2, [r3, #0]
 8002efe:	683b      	ldr	r3, [r7, #0]
 8002f00:	429a      	cmp	r2, r3
 8002f02:	d209      	bcs.n	8002f18 <update_mode+0x4c>
 8002f04:	4a2c      	ldr	r2, [pc, #176]	; (8002fb8 <update_mode+0xec>)
 8002f06:	4b2c      	ldr	r3, [pc, #176]	; (8002fb8 <update_mode+0xec>)
 8002f08:	695b      	ldr	r3, [r3, #20]
 8002f0a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002f0e:	6153      	str	r3, [r2, #20]
 8002f10:	4b2a      	ldr	r3, [pc, #168]	; (8002fbc <update_mode+0xf0>)
 8002f12:	2200      	movs	r2, #0
 8002f14:	601a      	str	r2, [r3, #0]
 8002f16:	e03e      	b.n	8002f96 <update_mode+0xca>
 8002f18:	4b29      	ldr	r3, [pc, #164]	; (8002fc0 <update_mode+0xf4>)
 8002f1a:	681a      	ldr	r2, [r3, #0]
 8002f1c:	687b      	ldr	r3, [r7, #4]
 8002f1e:	429a      	cmp	r2, r3
 8002f20:	d939      	bls.n	8002f96 <update_mode+0xca>
 8002f22:	4a25      	ldr	r2, [pc, #148]	; (8002fb8 <update_mode+0xec>)
 8002f24:	4b24      	ldr	r3, [pc, #144]	; (8002fb8 <update_mode+0xec>)
 8002f26:	695b      	ldr	r3, [r3, #20]
 8002f28:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002f2c:	6153      	str	r3, [r2, #20]
 8002f2e:	4b25      	ldr	r3, [pc, #148]	; (8002fc4 <update_mode+0xf8>)
 8002f30:	889b      	ldrh	r3, [r3, #4]
 8002f32:	2b01      	cmp	r3, #1
 8002f34:	d013      	beq.n	8002f5e <update_mode+0x92>
 8002f36:	2b01      	cmp	r3, #1
 8002f38:	dc02      	bgt.n	8002f40 <update_mode+0x74>
 8002f3a:	2b00      	cmp	r3, #0
 8002f3c:	d005      	beq.n	8002f4a <update_mode+0x7e>
 8002f3e:	e02a      	b.n	8002f96 <update_mode+0xca>
 8002f40:	2b02      	cmp	r3, #2
 8002f42:	d012      	beq.n	8002f6a <update_mode+0x9e>
 8002f44:	2b64      	cmp	r3, #100	; 0x64
 8002f46:	d020      	beq.n	8002f8a <update_mode+0xbe>
 8002f48:	e025      	b.n	8002f96 <update_mode+0xca>
 8002f4a:	4b1c      	ldr	r3, [pc, #112]	; (8002fbc <update_mode+0xf0>)
 8002f4c:	2200      	movs	r2, #0
 8002f4e:	601a      	str	r2, [r3, #0]
 8002f50:	4a19      	ldr	r2, [pc, #100]	; (8002fb8 <update_mode+0xec>)
 8002f52:	4b19      	ldr	r3, [pc, #100]	; (8002fb8 <update_mode+0xec>)
 8002f54:	695b      	ldr	r3, [r3, #20]
 8002f56:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002f5a:	6153      	str	r3, [r2, #20]
 8002f5c:	e01b      	b.n	8002f96 <update_mode+0xca>
 8002f5e:	4b19      	ldr	r3, [pc, #100]	; (8002fc4 <update_mode+0xf8>)
 8002f60:	881b      	ldrh	r3, [r3, #0]
 8002f62:	4618      	mov	r0, r3
 8002f64:	f7ff ff34 	bl	8002dd0 <set_refcurrent>
 8002f68:	e015      	b.n	8002f96 <update_mode+0xca>
 8002f6a:	4b15      	ldr	r3, [pc, #84]	; (8002fc0 <update_mode+0xf4>)
 8002f6c:	681b      	ldr	r3, [r3, #0]
 8002f6e:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002f72:	0c9b      	lsrs	r3, r3, #18
 8002f74:	2264      	movs	r2, #100	; 0x64
 8002f76:	fb02 f303 	mul.w	r3, r2, r3
 8002f7a:	4a12      	ldr	r2, [pc, #72]	; (8002fc4 <update_mode+0xf8>)
 8002f7c:	8852      	ldrh	r2, [r2, #2]
 8002f7e:	fbb3 f3f2 	udiv	r3, r3, r2
 8002f82:	4618      	mov	r0, r3
 8002f84:	f7ff ff24 	bl	8002dd0 <set_refcurrent>
 8002f88:	e005      	b.n	8002f96 <update_mode+0xca>
 8002f8a:	4b0e      	ldr	r3, [pc, #56]	; (8002fc4 <update_mode+0xf8>)
 8002f8c:	881b      	ldrh	r3, [r3, #0]
 8002f8e:	461a      	mov	r2, r3
 8002f90:	4b0a      	ldr	r3, [pc, #40]	; (8002fbc <update_mode+0xf0>)
 8002f92:	601a      	str	r2, [r3, #0]
 8002f94:	bf00      	nop
 8002f96:	4b0b      	ldr	r3, [pc, #44]	; (8002fc4 <update_mode+0xf8>)
 8002f98:	88db      	ldrh	r3, [r3, #6]
 8002f9a:	461a      	mov	r2, r3
 8002f9c:	4b0a      	ldr	r3, [pc, #40]	; (8002fc8 <update_mode+0xfc>)
 8002f9e:	601a      	str	r2, [r3, #0]
 8002fa0:	4b08      	ldr	r3, [pc, #32]	; (8002fc4 <update_mode+0xf8>)
 8002fa2:	891b      	ldrh	r3, [r3, #8]
 8002fa4:	461a      	mov	r2, r3
 8002fa6:	4b09      	ldr	r3, [pc, #36]	; (8002fcc <update_mode+0x100>)
 8002fa8:	601a      	str	r2, [r3, #0]
 8002faa:	bf00      	nop
 8002fac:	3708      	adds	r7, #8
 8002fae:	46bd      	mov	sp, r7
 8002fb0:	bd80      	pop	{r7, pc}
 8002fb2:	bf00      	nop
 8002fb4:	20000228 	.word	0x20000228
 8002fb8:	40021000 	.word	0x40021000
 8002fbc:	20002ca8 	.word	0x20002ca8
 8002fc0:	20000230 	.word	0x20000230
 8002fc4:	20000a60 	.word	0x20000a60
 8002fc8:	20000218 	.word	0x20000218
 8002fcc:	20002cb0 	.word	0x20002cb0

08002fd0 <check_temp>:
 8002fd0:	b580      	push	{r7, lr}
 8002fd2:	b082      	sub	sp, #8
 8002fd4:	af00      	add	r7, sp, #0
 8002fd6:	4b24      	ldr	r3, [pc, #144]	; (8003068 <check_temp+0x98>)
 8002fd8:	681b      	ldr	r3, [r3, #0]
 8002fda:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002fde:	0c9b      	lsrs	r3, r3, #18
 8002fe0:	3305      	adds	r3, #5
 8002fe2:	4a22      	ldr	r2, [pc, #136]	; (800306c <check_temp+0x9c>)
 8002fe4:	fba2 2303 	umull	r2, r3, r2, r3
 8002fe8:	08db      	lsrs	r3, r3, #3
 8002fea:	607b      	str	r3, [r7, #4]
 8002fec:	2300      	movs	r3, #0
 8002fee:	603b      	str	r3, [r7, #0]
 8002ff0:	4b1f      	ldr	r3, [pc, #124]	; (8003070 <check_temp+0xa0>)
 8002ff2:	681b      	ldr	r3, [r3, #0]
 8002ff4:	461a      	mov	r2, r3
 8002ff6:	687b      	ldr	r3, [r7, #4]
 8002ff8:	fb03 f302 	mul.w	r3, r3, r2
 8002ffc:	4a1d      	ldr	r2, [pc, #116]	; (8003074 <check_temp+0xa4>)
 8002ffe:	6013      	str	r3, [r2, #0]
 8003000:	2211      	movs	r2, #17
 8003002:	4b1c      	ldr	r3, [pc, #112]	; (8003074 <check_temp+0xa4>)
 8003004:	681b      	ldr	r3, [r3, #0]
 8003006:	fb03 f302 	mul.w	r3, r3, r2
 800300a:	f503 4343 	add.w	r3, r3, #49920	; 0xc300
 800300e:	3350      	adds	r3, #80	; 0x50
 8003010:	095b      	lsrs	r3, r3, #5
 8003012:	4a19      	ldr	r2, [pc, #100]	; (8003078 <check_temp+0xa8>)
 8003014:	fba2 2303 	umull	r2, r3, r2, r3
 8003018:	09da      	lsrs	r2, r3, #7
 800301a:	4b18      	ldr	r3, [pc, #96]	; (800307c <check_temp+0xac>)
 800301c:	681b      	ldr	r3, [r3, #0]
 800301e:	4413      	add	r3, r2
 8003020:	4a17      	ldr	r2, [pc, #92]	; (8003080 <check_temp+0xb0>)
 8003022:	6013      	str	r3, [r2, #0]
 8003024:	4b16      	ldr	r3, [pc, #88]	; (8003080 <check_temp+0xb0>)
 8003026:	681b      	ldr	r3, [r3, #0]
 8003028:	2b27      	cmp	r3, #39	; 0x27
 800302a:	d806      	bhi.n	800303a <check_temp+0x6a>
 800302c:	2050      	movs	r0, #80	; 0x50
 800302e:	f7ff fc75 	bl	800291c <coll_pwm_set>
 8003032:	4b14      	ldr	r3, [pc, #80]	; (8003084 <check_temp+0xb4>)
 8003034:	2200      	movs	r2, #0
 8003036:	601a      	str	r2, [r3, #0]
 8003038:	e00d      	b.n	8003056 <check_temp+0x86>
 800303a:	4b11      	ldr	r3, [pc, #68]	; (8003080 <check_temp+0xb0>)
 800303c:	681b      	ldr	r3, [r3, #0]
 800303e:	2b32      	cmp	r3, #50	; 0x32
 8003040:	d909      	bls.n	8003056 <check_temp+0x86>
 8003042:	2001      	movs	r0, #1
 8003044:	f7ff fc6a 	bl	800291c <coll_pwm_set>
 8003048:	4b0d      	ldr	r3, [pc, #52]	; (8003080 <check_temp+0xb0>)
 800304a:	681b      	ldr	r3, [r3, #0]
 800304c:	2b96      	cmp	r3, #150	; 0x96
 800304e:	d902      	bls.n	8003056 <check_temp+0x86>
 8003050:	4b0c      	ldr	r3, [pc, #48]	; (8003084 <check_temp+0xb4>)
 8003052:	2201      	movs	r2, #1
 8003054:	601a      	str	r2, [r3, #0]
 8003056:	4b09      	ldr	r3, [pc, #36]	; (800307c <check_temp+0xac>)
 8003058:	681b      	ldr	r3, [r3, #0]
 800305a:	b29a      	uxth	r2, r3
 800305c:	4b0a      	ldr	r3, [pc, #40]	; (8003088 <check_temp+0xb8>)
 800305e:	81da      	strh	r2, [r3, #14]
 8003060:	bf00      	nop
 8003062:	3708      	adds	r7, #8
 8003064:	46bd      	mov	sp, r7
 8003066:	bd80      	pop	{r7, pc}
 8003068:	20000230 	.word	0x20000230
 800306c:	cccccccd 	.word	0xcccccccd
 8003070:	20000234 	.word	0x20000234
 8003074:	20000238 	.word	0x20000238
 8003078:	0a7c5ac5 	.word	0x0a7c5ac5
 800307c:	20002cbc 	.word	0x20002cbc
 8003080:	2000023c 	.word	0x2000023c
 8003084:	20000228 	.word	0x20000228
 8003088:	20000a60 	.word	0x20000a60

0800308c <TIM3_IRQHandler>:
 800308c:	b580      	push	{r7, lr}
 800308e:	af00      	add	r7, sp, #0
 8003090:	4a1e      	ldr	r2, [pc, #120]	; (800310c <TIM3_IRQHandler+0x80>)
 8003092:	4b1e      	ldr	r3, [pc, #120]	; (800310c <TIM3_IRQHandler+0x80>)
 8003094:	695b      	ldr	r3, [r3, #20]
 8003096:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800309a:	6153      	str	r3, [r2, #20]
 800309c:	4a1c      	ldr	r2, [pc, #112]	; (8003110 <TIM3_IRQHandler+0x84>)
 800309e:	4b1c      	ldr	r3, [pc, #112]	; (8003110 <TIM3_IRQHandler+0x84>)
 80030a0:	8a1b      	ldrh	r3, [r3, #16]
 80030a2:	b29b      	uxth	r3, r3
 80030a4:	f023 0301 	bic.w	r3, r3, #1
 80030a8:	b29b      	uxth	r3, r3
 80030aa:	8213      	strh	r3, [r2, #16]
 80030ac:	4a19      	ldr	r2, [pc, #100]	; (8003114 <TIM3_IRQHandler+0x88>)
 80030ae:	4b19      	ldr	r3, [pc, #100]	; (8003114 <TIM3_IRQHandler+0x88>)
 80030b0:	681b      	ldr	r3, [r3, #0]
 80030b2:	f043 0301 	orr.w	r3, r3, #1
 80030b6:	6013      	str	r3, [r2, #0]
 80030b8:	4b17      	ldr	r3, [pc, #92]	; (8003118 <TIM3_IRQHandler+0x8c>)
 80030ba:	681b      	ldr	r3, [r3, #0]
 80030bc:	2b00      	cmp	r3, #0
 80030be:	d005      	beq.n	80030cc <TIM3_IRQHandler+0x40>
 80030c0:	4b16      	ldr	r3, [pc, #88]	; (800311c <TIM3_IRQHandler+0x90>)
 80030c2:	2296      	movs	r2, #150	; 0x96
 80030c4:	601a      	str	r2, [r3, #0]
 80030c6:	f000 f8d1 	bl	800326c <i2c_init>
 80030ca:	e004      	b.n	80030d6 <TIM3_IRQHandler+0x4a>
 80030cc:	4b14      	ldr	r3, [pc, #80]	; (8003120 <TIM3_IRQHandler+0x94>)
 80030ce:	781b      	ldrb	r3, [r3, #0]
 80030d0:	461a      	mov	r2, r3
 80030d2:	4b12      	ldr	r3, [pc, #72]	; (800311c <TIM3_IRQHandler+0x90>)
 80030d4:	601a      	str	r2, [r3, #0]
 80030d6:	2386      	movs	r3, #134	; 0x86
 80030d8:	b2db      	uxtb	r3, r3
 80030da:	4618      	mov	r0, r3
 80030dc:	f000 fb00 	bl	80036e0 <i2c_start>
 80030e0:	f000 fb26 	bl	8003730 <update_attenuator>
 80030e4:	f7ff fec8 	bl	8002e78 <check_voltage>
 80030e8:	f7ff fe48 	bl	8002d7c <check_current>
 80030ec:	f7ff ff70 	bl	8002fd0 <check_temp>
 80030f0:	f7ff feec 	bl	8002ecc <update_mode>
 80030f4:	4b0b      	ldr	r3, [pc, #44]	; (8003124 <TIM3_IRQHandler+0x98>)
 80030f6:	f64a 22aa 	movw	r2, #43690	; 0xaaaa
 80030fa:	601a      	str	r2, [r3, #0]
 80030fc:	4a03      	ldr	r2, [pc, #12]	; (800310c <TIM3_IRQHandler+0x80>)
 80030fe:	4b03      	ldr	r3, [pc, #12]	; (800310c <TIM3_IRQHandler+0x80>)
 8003100:	695b      	ldr	r3, [r3, #20]
 8003102:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8003106:	6153      	str	r3, [r2, #20]
 8003108:	bf00      	nop
 800310a:	bd80      	pop	{r7, pc}
 800310c:	40020000 	.word	0x40020000
 8003110:	40000400 	.word	0x40000400
 8003114:	40026070 	.word	0x40026070
 8003118:	20002ccc 	.word	0x20002ccc
 800311c:	20002cbc 	.word	0x20002cbc
 8003120:	20002cc0 	.word	0x20002cc0
 8003124:	40003000 	.word	0x40003000

08003128 <DMA1_Stream4_IRQHandler>:
 8003128:	b480      	push	{r7}
 800312a:	af00      	add	r7, sp, #0
 800312c:	4a07      	ldr	r2, [pc, #28]	; (800314c <DMA1_Stream4_IRQHandler+0x24>)
 800312e:	4b07      	ldr	r3, [pc, #28]	; (800314c <DMA1_Stream4_IRQHandler+0x24>)
 8003130:	68db      	ldr	r3, [r3, #12]
 8003132:	f043 0320 	orr.w	r3, r3, #32
 8003136:	60d3      	str	r3, [r2, #12]
 8003138:	4a05      	ldr	r2, [pc, #20]	; (8003150 <DMA1_Stream4_IRQHandler+0x28>)
 800313a:	4b05      	ldr	r3, [pc, #20]	; (8003150 <DMA1_Stream4_IRQHandler+0x28>)
 800313c:	681b      	ldr	r3, [r3, #0]
 800313e:	f023 0301 	bic.w	r3, r3, #1
 8003142:	6013      	str	r3, [r2, #0]
 8003144:	bf00      	nop
 8003146:	46bd      	mov	sp, r7
 8003148:	bc80      	pop	{r7}
 800314a:	4770      	bx	lr
 800314c:	40026000 	.word	0x40026000
 8003150:	40026070 	.word	0x40026070

08003154 <reg_init>:
 8003154:	4b03      	ldr	r3, [pc, #12]	; (8003164 <reg_init+0x10>)
 8003156:	2200      	movs	r2, #0
 8003158:	21c8      	movs	r1, #200	; 0xc8
 800315a:	80d9      	strh	r1, [r3, #6]
 800315c:	811a      	strh	r2, [r3, #8]
 800315e:	801a      	strh	r2, [r3, #0]
 8003160:	809a      	strh	r2, [r3, #4]
 8003162:	4770      	bx	lr
 8003164:	20000a60 	.word	0x20000a60

08003168 <ADC_IRQHandler>:
 8003168:	b5f0      	push	{r4, r5, r6, r7, lr}
 800316a:	4c2b      	ldr	r4, [pc, #172]	; (8003218 <ADC_IRQHandler+0xb0>)
 800316c:	4b2b      	ldr	r3, [pc, #172]	; (800321c <ADC_IRQHandler+0xb4>)
 800316e:	6860      	ldr	r0, [r4, #4]
 8003170:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 8003172:	6825      	ldr	r5, [r4, #0]
 8003174:	4b2a      	ldr	r3, [pc, #168]	; (8003220 <ADC_IRQHandler+0xb8>)
 8003176:	4f2b      	ldr	r7, [pc, #172]	; (8003224 <ADC_IRQHandler+0xbc>)
 8003178:	f853 1cec 	ldr.w	r1, [r3, #-236]
 800317c:	f8df c0b4 	ldr.w	ip, [pc, #180]	; 8003234 <ADC_IRQHandler+0xcc>
 8003180:	eb04 0680 	add.w	r6, r4, r0, lsl #2
 8003184:	f5c2 627f 	rsb	r2, r2, #4080	; 0xff0
 8003188:	f8d6 e008 	ldr.w	lr, [r6, #8]
 800318c:	320f      	adds	r2, #15
 800318e:	4415      	add	r5, r2
 8003190:	60b2      	str	r2, [r6, #8]
 8003192:	ebce 0205 	rsb	r2, lr, r5
 8003196:	6022      	str	r2, [r4, #0]
 8003198:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 800319a:	f853 5cf0 	ldr.w	r5, [r3, #-240]
 800319e:	4f22      	ldr	r7, [pc, #136]	; (8003228 <ADC_IRQHandler+0xc0>)
 80031a0:	eb03 0e81 	add.w	lr, r3, r1, lsl #2
 80031a4:	f5c2 6255 	rsb	r2, r2, #3408	; 0xd50
 80031a8:	f85e 6ce8 	ldr.w	r6, [lr, #-232]
 80031ac:	683f      	ldr	r7, [r7, #0]
 80031ae:	3203      	adds	r2, #3
 80031b0:	4415      	add	r5, r2
 80031b2:	1bad      	subs	r5, r5, r6
 80031b4:	f843 5cf0 	str.w	r5, [r3, #-240]
 80031b8:	f8d3 5f18 	ldr.w	r5, [r3, #3864]	; 0xf18
 80031bc:	f8d3 6f1c 	ldr.w	r6, [r3, #3868]	; 0xf1c
 80031c0:	f84e 2ce8 	str.w	r2, [lr, #-232]
 80031c4:	1aad      	subs	r5, r5, r2
 80031c6:	4a19      	ldr	r2, [pc, #100]	; (800322c <ADC_IRQHandler+0xc4>)
 80031c8:	f8df e06c 	ldr.w	lr, [pc, #108]	; 8003238 <ADC_IRQHandler+0xd0>
 80031cc:	fb07 6605 	mla	r6, r7, r5, r6
 80031d0:	4296      	cmp	r6, r2
 80031d2:	4f17      	ldr	r7, [pc, #92]	; (8003230 <ADC_IRQHandler+0xc8>)
 80031d4:	bfb8      	it	lt
 80031d6:	4616      	movlt	r6, r2
 80031d8:	42be      	cmp	r6, r7
 80031da:	f8d3 2f20 	ldr.w	r2, [r3, #3872]	; 0xf20
 80031de:	bfa8      	it	ge
 80031e0:	463e      	movge	r6, r7
 80031e2:	fb02 6205 	mla	r2, r2, r5, r6
 80031e6:	f8b3 7f24 	ldrh.w	r7, [r3, #3876]	; 0xf24
 80031ea:	f8c3 6f1c 	str.w	r6, [r3, #3868]	; 0xf1c
 80031ee:	3001      	adds	r0, #1
 80031f0:	3101      	adds	r1, #1
 80031f2:	1352      	asrs	r2, r2, #13
 80031f4:	f3c0 0009 	ubfx	r0, r0, #0, #10
 80031f8:	f3c1 0109 	ubfx	r1, r1, #0, #10
 80031fc:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 8003200:	b2be      	uxth	r6, r7
 8003202:	6060      	str	r0, [r4, #4]
 8003204:	f843 1cec 	str.w	r1, [r3, #-236]
 8003208:	f8cc 6034 	str.w	r6, [ip, #52]	; 0x34
 800320c:	f8ce 2008 	str.w	r2, [lr, #8]
 8003210:	f8c3 5f28 	str.w	r5, [r3, #3880]	; 0xf28
 8003214:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003216:	bf00      	nop
 8003218:	20000c98 	.word	0x20000c98
 800321c:	40012200 	.word	0x40012200
 8003220:	20001d90 	.word	0x20001d90
 8003224:	40012000 	.word	0x40012000
 8003228:	20000218 	.word	0x20000218
 800322c:	c4653600 	.word	0xc4653600
 8003230:	3b9aca00 	.word	0x3b9aca00
 8003234:	40000800 	.word	0x40000800
 8003238:	40007400 	.word	0x40007400

0800323c <NVIC_EnableIRQ>:
 800323c:	b480      	push	{r7}
 800323e:	b083      	sub	sp, #12
 8003240:	af00      	add	r7, sp, #0
 8003242:	4603      	mov	r3, r0
 8003244:	71fb      	strb	r3, [r7, #7]
 8003246:	4908      	ldr	r1, [pc, #32]	; (8003268 <NVIC_EnableIRQ+0x2c>)
 8003248:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800324c:	095b      	lsrs	r3, r3, #5
 800324e:	79fa      	ldrb	r2, [r7, #7]
 8003250:	f002 021f 	and.w	r2, r2, #31
 8003254:	2001      	movs	r0, #1
 8003256:	fa00 f202 	lsl.w	r2, r0, r2
 800325a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800325e:	bf00      	nop
 8003260:	370c      	adds	r7, #12
 8003262:	46bd      	mov	sp, r7
 8003264:	bc80      	pop	{r7}
 8003266:	4770      	bx	lr
 8003268:	e000e100 	.word	0xe000e100

0800326c <i2c_init>:
 800326c:	b580      	push	{r7, lr}
 800326e:	af00      	add	r7, sp, #0
 8003270:	4a3a      	ldr	r2, [pc, #232]	; (800335c <i2c_init+0xf0>)
 8003272:	4b3a      	ldr	r3, [pc, #232]	; (800335c <i2c_init+0xf0>)
 8003274:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003276:	f043 0302 	orr.w	r3, r3, #2
 800327a:	6313      	str	r3, [r2, #48]	; 0x30
 800327c:	4a38      	ldr	r2, [pc, #224]	; (8003360 <i2c_init+0xf4>)
 800327e:	4b38      	ldr	r3, [pc, #224]	; (8003360 <i2c_init+0xf4>)
 8003280:	685b      	ldr	r3, [r3, #4]
 8003282:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 8003286:	6053      	str	r3, [r2, #4]
 8003288:	4a35      	ldr	r2, [pc, #212]	; (8003360 <i2c_init+0xf4>)
 800328a:	4b35      	ldr	r3, [pc, #212]	; (8003360 <i2c_init+0xf4>)
 800328c:	681b      	ldr	r3, [r3, #0]
 800328e:	f423 4370 	bic.w	r3, r3, #61440	; 0xf000
 8003292:	6013      	str	r3, [r2, #0]
 8003294:	4a32      	ldr	r2, [pc, #200]	; (8003360 <i2c_init+0xf4>)
 8003296:	4b32      	ldr	r3, [pc, #200]	; (8003360 <i2c_init+0xf4>)
 8003298:	681b      	ldr	r3, [r3, #0]
 800329a:	f443 4320 	orr.w	r3, r3, #40960	; 0xa000
 800329e:	6013      	str	r3, [r2, #0]
 80032a0:	4a2f      	ldr	r2, [pc, #188]	; (8003360 <i2c_init+0xf4>)
 80032a2:	4b2f      	ldr	r3, [pc, #188]	; (8003360 <i2c_init+0xf4>)
 80032a4:	6a1b      	ldr	r3, [r3, #32]
 80032a6:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 80032aa:	6213      	str	r3, [r2, #32]
 80032ac:	4a2c      	ldr	r2, [pc, #176]	; (8003360 <i2c_init+0xf4>)
 80032ae:	4b2c      	ldr	r3, [pc, #176]	; (8003360 <i2c_init+0xf4>)
 80032b0:	6a1b      	ldr	r3, [r3, #32]
 80032b2:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 80032b6:	6213      	str	r3, [r2, #32]
 80032b8:	4a29      	ldr	r2, [pc, #164]	; (8003360 <i2c_init+0xf4>)
 80032ba:	4b29      	ldr	r3, [pc, #164]	; (8003360 <i2c_init+0xf4>)
 80032bc:	6a1b      	ldr	r3, [r3, #32]
 80032be:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
 80032c2:	6213      	str	r3, [r2, #32]
 80032c4:	4a26      	ldr	r2, [pc, #152]	; (8003360 <i2c_init+0xf4>)
 80032c6:	4b26      	ldr	r3, [pc, #152]	; (8003360 <i2c_init+0xf4>)
 80032c8:	6a1b      	ldr	r3, [r3, #32]
 80032ca:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 80032ce:	6213      	str	r3, [r2, #32]
 80032d0:	4a22      	ldr	r2, [pc, #136]	; (800335c <i2c_init+0xf0>)
 80032d2:	4b22      	ldr	r3, [pc, #136]	; (800335c <i2c_init+0xf0>)
 80032d4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80032d6:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80032da:	6413      	str	r3, [r2, #64]	; 0x40
 80032dc:	4b21      	ldr	r3, [pc, #132]	; (8003364 <i2c_init+0xf8>)
 80032de:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80032e2:	801a      	strh	r2, [r3, #0]
 80032e4:	4b1f      	ldr	r3, [pc, #124]	; (8003364 <i2c_init+0xf8>)
 80032e6:	2200      	movs	r2, #0
 80032e8:	801a      	strh	r2, [r3, #0]
 80032ea:	4a1e      	ldr	r2, [pc, #120]	; (8003364 <i2c_init+0xf8>)
 80032ec:	4b1d      	ldr	r3, [pc, #116]	; (8003364 <i2c_init+0xf8>)
 80032ee:	889b      	ldrh	r3, [r3, #4]
 80032f0:	b29b      	uxth	r3, r3
 80032f2:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 80032f6:	b29b      	uxth	r3, r3
 80032f8:	8093      	strh	r3, [r2, #4]
 80032fa:	4a1a      	ldr	r2, [pc, #104]	; (8003364 <i2c_init+0xf8>)
 80032fc:	4b19      	ldr	r3, [pc, #100]	; (8003364 <i2c_init+0xf8>)
 80032fe:	889b      	ldrh	r3, [r3, #4]
 8003300:	b29b      	uxth	r3, r3
 8003302:	f043 032a 	orr.w	r3, r3, #42	; 0x2a
 8003306:	b29b      	uxth	r3, r3
 8003308:	8093      	strh	r3, [r2, #4]
 800330a:	4b16      	ldr	r3, [pc, #88]	; (8003364 <i2c_init+0xf8>)
 800330c:	22b4      	movs	r2, #180	; 0xb4
 800330e:	839a      	strh	r2, [r3, #28]
 8003310:	4a14      	ldr	r2, [pc, #80]	; (8003364 <i2c_init+0xf8>)
 8003312:	4b14      	ldr	r3, [pc, #80]	; (8003364 <i2c_init+0xf8>)
 8003314:	8c1b      	ldrh	r3, [r3, #32]
 8003316:	b29b      	uxth	r3, r3
 8003318:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 800331c:	b29b      	uxth	r3, r3
 800331e:	8413      	strh	r3, [r2, #32]
 8003320:	4a10      	ldr	r2, [pc, #64]	; (8003364 <i2c_init+0xf8>)
 8003322:	4b10      	ldr	r3, [pc, #64]	; (8003364 <i2c_init+0xf8>)
 8003324:	8c1b      	ldrh	r3, [r3, #32]
 8003326:	b29b      	uxth	r3, r3
 8003328:	f043 032a 	orr.w	r3, r3, #42	; 0x2a
 800332c:	b29b      	uxth	r3, r3
 800332e:	8413      	strh	r3, [r2, #32]
 8003330:	4a0c      	ldr	r2, [pc, #48]	; (8003364 <i2c_init+0xf8>)
 8003332:	4b0c      	ldr	r3, [pc, #48]	; (8003364 <i2c_init+0xf8>)
 8003334:	889b      	ldrh	r3, [r3, #4]
 8003336:	b29b      	uxth	r3, r3
 8003338:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800333c:	b29b      	uxth	r3, r3
 800333e:	8093      	strh	r3, [r2, #4]
 8003340:	4a08      	ldr	r2, [pc, #32]	; (8003364 <i2c_init+0xf8>)
 8003342:	4b08      	ldr	r3, [pc, #32]	; (8003364 <i2c_init+0xf8>)
 8003344:	881b      	ldrh	r3, [r3, #0]
 8003346:	b29b      	uxth	r3, r3
 8003348:	f043 0301 	orr.w	r3, r3, #1
 800334c:	b29b      	uxth	r3, r3
 800334e:	8013      	strh	r3, [r2, #0]
 8003350:	201f      	movs	r0, #31
 8003352:	f7ff ff73 	bl	800323c <NVIC_EnableIRQ>
 8003356:	bf00      	nop
 8003358:	bd80      	pop	{r7, pc}
 800335a:	bf00      	nop
 800335c:	40023800 	.word	0x40023800
 8003360:	40020400 	.word	0x40020400
 8003364:	40005400 	.word	0x40005400

08003368 <i2c_test>:
 8003368:	b580      	push	{r7, lr}
 800336a:	b082      	sub	sp, #8
 800336c:	af00      	add	r7, sp, #0
 800336e:	4a60      	ldr	r2, [pc, #384]	; (80034f0 <i2c_test+0x188>)
 8003370:	4b5f      	ldr	r3, [pc, #380]	; (80034f0 <i2c_test+0x188>)
 8003372:	881b      	ldrh	r3, [r3, #0]
 8003374:	b29b      	uxth	r3, r3
 8003376:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800337a:	b29b      	uxth	r3, r3
 800337c:	8013      	strh	r3, [r2, #0]
 800337e:	bf00      	nop
 8003380:	4b5b      	ldr	r3, [pc, #364]	; (80034f0 <i2c_test+0x188>)
 8003382:	8a9b      	ldrh	r3, [r3, #20]
 8003384:	b29b      	uxth	r3, r3
 8003386:	f003 0301 	and.w	r3, r3, #1
 800338a:	2b00      	cmp	r3, #0
 800338c:	d0f8      	beq.n	8003380 <i2c_test+0x18>
 800338e:	4b58      	ldr	r3, [pc, #352]	; (80034f0 <i2c_test+0x188>)
 8003390:	8a9b      	ldrh	r3, [r3, #20]
 8003392:	b29b      	uxth	r3, r3
 8003394:	4619      	mov	r1, r3
 8003396:	4857      	ldr	r0, [pc, #348]	; (80034f4 <i2c_test+0x18c>)
 8003398:	f7fd fe60 	bl	800105c <xprintf>
 800339c:	4b54      	ldr	r3, [pc, #336]	; (80034f0 <i2c_test+0x188>)
 800339e:	2294      	movs	r2, #148	; 0x94
 80033a0:	821a      	strh	r2, [r3, #16]
 80033a2:	bf00      	nop
 80033a4:	4b52      	ldr	r3, [pc, #328]	; (80034f0 <i2c_test+0x188>)
 80033a6:	8a9b      	ldrh	r3, [r3, #20]
 80033a8:	b29b      	uxth	r3, r3
 80033aa:	f003 0302 	and.w	r3, r3, #2
 80033ae:	2b00      	cmp	r3, #0
 80033b0:	d0f8      	beq.n	80033a4 <i2c_test+0x3c>
 80033b2:	4b4f      	ldr	r3, [pc, #316]	; (80034f0 <i2c_test+0x188>)
 80033b4:	8b1b      	ldrh	r3, [r3, #24]
 80033b6:	80fb      	strh	r3, [r7, #6]
 80033b8:	4b4d      	ldr	r3, [pc, #308]	; (80034f0 <i2c_test+0x188>)
 80033ba:	8a9b      	ldrh	r3, [r3, #20]
 80033bc:	b29b      	uxth	r3, r3
 80033be:	4619      	mov	r1, r3
 80033c0:	484d      	ldr	r0, [pc, #308]	; (80034f8 <i2c_test+0x190>)
 80033c2:	f7fd fe4b 	bl	800105c <xprintf>
 80033c6:	4b4a      	ldr	r3, [pc, #296]	; (80034f0 <i2c_test+0x188>)
 80033c8:	2200      	movs	r2, #0
 80033ca:	821a      	strh	r2, [r3, #16]
 80033cc:	bf00      	nop
 80033ce:	4b48      	ldr	r3, [pc, #288]	; (80034f0 <i2c_test+0x188>)
 80033d0:	8a9b      	ldrh	r3, [r3, #20]
 80033d2:	b29b      	uxth	r3, r3
 80033d4:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80033d8:	2b00      	cmp	r3, #0
 80033da:	d0f8      	beq.n	80033ce <i2c_test+0x66>
 80033dc:	4b44      	ldr	r3, [pc, #272]	; (80034f0 <i2c_test+0x188>)
 80033de:	8a9b      	ldrh	r3, [r3, #20]
 80033e0:	b29b      	uxth	r3, r3
 80033e2:	4619      	mov	r1, r3
 80033e4:	4845      	ldr	r0, [pc, #276]	; (80034fc <i2c_test+0x194>)
 80033e6:	f7fd fe39 	bl	800105c <xprintf>
 80033ea:	4a41      	ldr	r2, [pc, #260]	; (80034f0 <i2c_test+0x188>)
 80033ec:	4b40      	ldr	r3, [pc, #256]	; (80034f0 <i2c_test+0x188>)
 80033ee:	881b      	ldrh	r3, [r3, #0]
 80033f0:	b29b      	uxth	r3, r3
 80033f2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80033f6:	b29b      	uxth	r3, r3
 80033f8:	8013      	strh	r3, [r2, #0]
 80033fa:	bf00      	nop
 80033fc:	4b3c      	ldr	r3, [pc, #240]	; (80034f0 <i2c_test+0x188>)
 80033fe:	8a9b      	ldrh	r3, [r3, #20]
 8003400:	b29b      	uxth	r3, r3
 8003402:	f003 0301 	and.w	r3, r3, #1
 8003406:	2b00      	cmp	r3, #0
 8003408:	d0f8      	beq.n	80033fc <i2c_test+0x94>
 800340a:	4b39      	ldr	r3, [pc, #228]	; (80034f0 <i2c_test+0x188>)
 800340c:	8a9b      	ldrh	r3, [r3, #20]
 800340e:	b29b      	uxth	r3, r3
 8003410:	4619      	mov	r1, r3
 8003412:	4838      	ldr	r0, [pc, #224]	; (80034f4 <i2c_test+0x18c>)
 8003414:	f7fd fe22 	bl	800105c <xprintf>
 8003418:	4b35      	ldr	r3, [pc, #212]	; (80034f0 <i2c_test+0x188>)
 800341a:	2295      	movs	r2, #149	; 0x95
 800341c:	821a      	strh	r2, [r3, #16]
 800341e:	bf00      	nop
 8003420:	4b33      	ldr	r3, [pc, #204]	; (80034f0 <i2c_test+0x188>)
 8003422:	8a9b      	ldrh	r3, [r3, #20]
 8003424:	b29b      	uxth	r3, r3
 8003426:	f003 0302 	and.w	r3, r3, #2
 800342a:	2b00      	cmp	r3, #0
 800342c:	d0f8      	beq.n	8003420 <i2c_test+0xb8>
 800342e:	4b30      	ldr	r3, [pc, #192]	; (80034f0 <i2c_test+0x188>)
 8003430:	8a9b      	ldrh	r3, [r3, #20]
 8003432:	b29b      	uxth	r3, r3
 8003434:	4619      	mov	r1, r3
 8003436:	4830      	ldr	r0, [pc, #192]	; (80034f8 <i2c_test+0x190>)
 8003438:	f7fd fe10 	bl	800105c <xprintf>
 800343c:	4a2c      	ldr	r2, [pc, #176]	; (80034f0 <i2c_test+0x188>)
 800343e:	4b2c      	ldr	r3, [pc, #176]	; (80034f0 <i2c_test+0x188>)
 8003440:	881b      	ldrh	r3, [r3, #0]
 8003442:	b29b      	uxth	r3, r3
 8003444:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8003448:	b29b      	uxth	r3, r3
 800344a:	8013      	strh	r3, [r2, #0]
 800344c:	4a28      	ldr	r2, [pc, #160]	; (80034f0 <i2c_test+0x188>)
 800344e:	4b28      	ldr	r3, [pc, #160]	; (80034f0 <i2c_test+0x188>)
 8003450:	881b      	ldrh	r3, [r3, #0]
 8003452:	b29b      	uxth	r3, r3
 8003454:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8003458:	b29b      	uxth	r3, r3
 800345a:	8013      	strh	r3, [r2, #0]
 800345c:	4b24      	ldr	r3, [pc, #144]	; (80034f0 <i2c_test+0x188>)
 800345e:	8b1b      	ldrh	r3, [r3, #24]
 8003460:	80fb      	strh	r3, [r7, #6]
 8003462:	bf00      	nop
 8003464:	4b22      	ldr	r3, [pc, #136]	; (80034f0 <i2c_test+0x188>)
 8003466:	8a9b      	ldrh	r3, [r3, #20]
 8003468:	b29b      	uxth	r3, r3
 800346a:	f003 0304 	and.w	r3, r3, #4
 800346e:	2b00      	cmp	r3, #0
 8003470:	d0f8      	beq.n	8003464 <i2c_test+0xfc>
 8003472:	4b1f      	ldr	r3, [pc, #124]	; (80034f0 <i2c_test+0x188>)
 8003474:	8a9b      	ldrh	r3, [r3, #20]
 8003476:	b29b      	uxth	r3, r3
 8003478:	4619      	mov	r1, r3
 800347a:	4821      	ldr	r0, [pc, #132]	; (8003500 <i2c_test+0x198>)
 800347c:	f7fd fdee 	bl	800105c <xprintf>
 8003480:	4a1b      	ldr	r2, [pc, #108]	; (80034f0 <i2c_test+0x188>)
 8003482:	4b1b      	ldr	r3, [pc, #108]	; (80034f0 <i2c_test+0x188>)
 8003484:	881b      	ldrh	r3, [r3, #0]
 8003486:	b29b      	uxth	r3, r3
 8003488:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800348c:	b29b      	uxth	r3, r3
 800348e:	8013      	strh	r3, [r2, #0]
 8003490:	bf00      	nop
 8003492:	4b17      	ldr	r3, [pc, #92]	; (80034f0 <i2c_test+0x188>)
 8003494:	8a9b      	ldrh	r3, [r3, #20]
 8003496:	b29b      	uxth	r3, r3
 8003498:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800349c:	2b00      	cmp	r3, #0
 800349e:	d0f8      	beq.n	8003492 <i2c_test+0x12a>
 80034a0:	4b13      	ldr	r3, [pc, #76]	; (80034f0 <i2c_test+0x188>)
 80034a2:	8a1b      	ldrh	r3, [r3, #16]
 80034a4:	b29b      	uxth	r3, r3
 80034a6:	b2da      	uxtb	r2, r3
 80034a8:	4b16      	ldr	r3, [pc, #88]	; (8003504 <i2c_test+0x19c>)
 80034aa:	701a      	strb	r2, [r3, #0]
 80034ac:	bf00      	nop
 80034ae:	4b10      	ldr	r3, [pc, #64]	; (80034f0 <i2c_test+0x188>)
 80034b0:	8a9b      	ldrh	r3, [r3, #20]
 80034b2:	b29b      	uxth	r3, r3
 80034b4:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80034b8:	2b00      	cmp	r3, #0
 80034ba:	d0f8      	beq.n	80034ae <i2c_test+0x146>
 80034bc:	4b0c      	ldr	r3, [pc, #48]	; (80034f0 <i2c_test+0x188>)
 80034be:	8a1b      	ldrh	r3, [r3, #16]
 80034c0:	b29b      	uxth	r3, r3
 80034c2:	b2da      	uxtb	r2, r3
 80034c4:	4b0f      	ldr	r3, [pc, #60]	; (8003504 <i2c_test+0x19c>)
 80034c6:	705a      	strb	r2, [r3, #1]
 80034c8:	bf00      	nop
 80034ca:	4b09      	ldr	r3, [pc, #36]	; (80034f0 <i2c_test+0x188>)
 80034cc:	8b1b      	ldrh	r3, [r3, #24]
 80034ce:	b29b      	uxth	r3, r3
 80034d0:	f003 0302 	and.w	r3, r3, #2
 80034d4:	2b00      	cmp	r3, #0
 80034d6:	d1f8      	bne.n	80034ca <i2c_test+0x162>
 80034d8:	4b05      	ldr	r3, [pc, #20]	; (80034f0 <i2c_test+0x188>)
 80034da:	8a9b      	ldrh	r3, [r3, #20]
 80034dc:	b29b      	uxth	r3, r3
 80034de:	4619      	mov	r1, r3
 80034e0:	4809      	ldr	r0, [pc, #36]	; (8003508 <i2c_test+0x1a0>)
 80034e2:	f7fd fdbb 	bl	800105c <xprintf>
 80034e6:	bf00      	nop
 80034e8:	3708      	adds	r7, #8
 80034ea:	46bd      	mov	sp, r7
 80034ec:	bd80      	pop	{r7, pc}
 80034ee:	bf00      	nop
 80034f0:	40005400 	.word	0x40005400
 80034f4:	08003d68 	.word	0x08003d68
 80034f8:	08003d88 	.word	0x08003d88
 80034fc:	08003da8 	.word	0x08003da8
 8003500:	08003dcc 	.word	0x08003dcc
 8003504:	20002cc0 	.word	0x20002cc0
 8003508:	08003de0 	.word	0x08003de0

0800350c <I2C1_EV_IRQHandler>:
 800350c:	b580      	push	{r7, lr}
 800350e:	af00      	add	r7, sp, #0
 8003510:	4b02      	ldr	r3, [pc, #8]	; (800351c <I2C1_EV_IRQHandler+0x10>)
 8003512:	681b      	ldr	r3, [r3, #0]
 8003514:	4798      	blx	r3
 8003516:	bf00      	nop
 8003518:	bd80      	pop	{r7, pc}
 800351a:	bf00      	nop
 800351c:	20002cc8 	.word	0x20002cc8

08003520 <I2C1_ER_IRQHandler>:
 8003520:	b480      	push	{r7}
 8003522:	b083      	sub	sp, #12
 8003524:	af00      	add	r7, sp, #0
 8003526:	4b08      	ldr	r3, [pc, #32]	; (8003548 <I2C1_ER_IRQHandler+0x28>)
 8003528:	8a9b      	ldrh	r3, [r3, #20]
 800352a:	80fb      	strh	r3, [r7, #6]
 800352c:	4906      	ldr	r1, [pc, #24]	; (8003548 <I2C1_ER_IRQHandler+0x28>)
 800352e:	4b06      	ldr	r3, [pc, #24]	; (8003548 <I2C1_ER_IRQHandler+0x28>)
 8003530:	8a9b      	ldrh	r3, [r3, #20]
 8003532:	b29a      	uxth	r2, r3
 8003534:	f242 03ff 	movw	r3, #8447	; 0x20ff
 8003538:	4013      	ands	r3, r2
 800353a:	b29b      	uxth	r3, r3
 800353c:	828b      	strh	r3, [r1, #20]
 800353e:	bf00      	nop
 8003540:	370c      	adds	r7, #12
 8003542:	46bd      	mov	sp, r7
 8003544:	bc80      	pop	{r7}
 8003546:	4770      	bx	lr
 8003548:	40005400 	.word	0x40005400

0800354c <btf_conf>:
 800354c:	b480      	push	{r7}
 800354e:	af00      	add	r7, sp, #0
 8003550:	4b10      	ldr	r3, [pc, #64]	; (8003594 <btf_conf+0x48>)
 8003552:	8a9b      	ldrh	r3, [r3, #20]
 8003554:	b29b      	uxth	r3, r3
 8003556:	f003 0304 	and.w	r3, r3, #4
 800355a:	2b00      	cmp	r3, #0
 800355c:	d016      	beq.n	800358c <btf_conf+0x40>
 800355e:	4a0d      	ldr	r2, [pc, #52]	; (8003594 <btf_conf+0x48>)
 8003560:	4b0c      	ldr	r3, [pc, #48]	; (8003594 <btf_conf+0x48>)
 8003562:	881b      	ldrh	r3, [r3, #0]
 8003564:	b29b      	uxth	r3, r3
 8003566:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800356a:	b29b      	uxth	r3, r3
 800356c:	8013      	strh	r3, [r2, #0]
 800356e:	4b09      	ldr	r3, [pc, #36]	; (8003594 <btf_conf+0x48>)
 8003570:	8a1b      	ldrh	r3, [r3, #16]
 8003572:	b29b      	uxth	r3, r3
 8003574:	b2da      	uxtb	r2, r3
 8003576:	4b08      	ldr	r3, [pc, #32]	; (8003598 <btf_conf+0x4c>)
 8003578:	701a      	strb	r2, [r3, #0]
 800357a:	4b06      	ldr	r3, [pc, #24]	; (8003594 <btf_conf+0x48>)
 800357c:	8a1b      	ldrh	r3, [r3, #16]
 800357e:	b29b      	uxth	r3, r3
 8003580:	b2da      	uxtb	r2, r3
 8003582:	4b05      	ldr	r3, [pc, #20]	; (8003598 <btf_conf+0x4c>)
 8003584:	705a      	strb	r2, [r3, #1]
 8003586:	4b05      	ldr	r3, [pc, #20]	; (800359c <btf_conf+0x50>)
 8003588:	2200      	movs	r2, #0
 800358a:	601a      	str	r2, [r3, #0]
 800358c:	bf00      	nop
 800358e:	46bd      	mov	sp, r7
 8003590:	bc80      	pop	{r7}
 8003592:	4770      	bx	lr
 8003594:	40005400 	.word	0x40005400
 8003598:	20002cc0 	.word	0x20002cc0
 800359c:	20002ccc 	.word	0x20002ccc

080035a0 <raddr_conf>:
 80035a0:	b480      	push	{r7}
 80035a2:	af00      	add	r7, sp, #0
 80035a4:	4b0f      	ldr	r3, [pc, #60]	; (80035e4 <raddr_conf+0x44>)
 80035a6:	8a9b      	ldrh	r3, [r3, #20]
 80035a8:	b29b      	uxth	r3, r3
 80035aa:	f003 0302 	and.w	r3, r3, #2
 80035ae:	2b00      	cmp	r3, #0
 80035b0:	d014      	beq.n	80035dc <raddr_conf+0x3c>
 80035b2:	4a0c      	ldr	r2, [pc, #48]	; (80035e4 <raddr_conf+0x44>)
 80035b4:	4b0b      	ldr	r3, [pc, #44]	; (80035e4 <raddr_conf+0x44>)
 80035b6:	881b      	ldrh	r3, [r3, #0]
 80035b8:	b29b      	uxth	r3, r3
 80035ba:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 80035be:	b29b      	uxth	r3, r3
 80035c0:	8013      	strh	r3, [r2, #0]
 80035c2:	4a08      	ldr	r2, [pc, #32]	; (80035e4 <raddr_conf+0x44>)
 80035c4:	4b07      	ldr	r3, [pc, #28]	; (80035e4 <raddr_conf+0x44>)
 80035c6:	881b      	ldrh	r3, [r3, #0]
 80035c8:	b29b      	uxth	r3, r3
 80035ca:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80035ce:	b29b      	uxth	r3, r3
 80035d0:	8013      	strh	r3, [r2, #0]
 80035d2:	4b04      	ldr	r3, [pc, #16]	; (80035e4 <raddr_conf+0x44>)
 80035d4:	8b1b      	ldrh	r3, [r3, #24]
 80035d6:	4b04      	ldr	r3, [pc, #16]	; (80035e8 <raddr_conf+0x48>)
 80035d8:	4a04      	ldr	r2, [pc, #16]	; (80035ec <raddr_conf+0x4c>)
 80035da:	601a      	str	r2, [r3, #0]
 80035dc:	bf00      	nop
 80035de:	46bd      	mov	sp, r7
 80035e0:	bc80      	pop	{r7}
 80035e2:	4770      	bx	lr
 80035e4:	40005400 	.word	0x40005400
 80035e8:	20002cc8 	.word	0x20002cc8
 80035ec:	0800354d 	.word	0x0800354d

080035f0 <rsb_conf>:
 80035f0:	b480      	push	{r7}
 80035f2:	af00      	add	r7, sp, #0
 80035f4:	4b0a      	ldr	r3, [pc, #40]	; (8003620 <rsb_conf+0x30>)
 80035f6:	8a9b      	ldrh	r3, [r3, #20]
 80035f8:	b29b      	uxth	r3, r3
 80035fa:	f003 0301 	and.w	r3, r3, #1
 80035fe:	2b00      	cmp	r3, #0
 8003600:	d00a      	beq.n	8003618 <rsb_conf+0x28>
 8003602:	4a07      	ldr	r2, [pc, #28]	; (8003620 <rsb_conf+0x30>)
 8003604:	4b07      	ldr	r3, [pc, #28]	; (8003624 <rsb_conf+0x34>)
 8003606:	781b      	ldrb	r3, [r3, #0]
 8003608:	f043 0301 	orr.w	r3, r3, #1
 800360c:	b2db      	uxtb	r3, r3
 800360e:	b29b      	uxth	r3, r3
 8003610:	8213      	strh	r3, [r2, #16]
 8003612:	4b05      	ldr	r3, [pc, #20]	; (8003628 <rsb_conf+0x38>)
 8003614:	4a05      	ldr	r2, [pc, #20]	; (800362c <rsb_conf+0x3c>)
 8003616:	601a      	str	r2, [r3, #0]
 8003618:	bf00      	nop
 800361a:	46bd      	mov	sp, r7
 800361c:	bc80      	pop	{r7}
 800361e:	4770      	bx	lr
 8003620:	40005400 	.word	0x40005400
 8003624:	2000021e 	.word	0x2000021e
 8003628:	20002cc8 	.word	0x20002cc8
 800362c:	080035a1 	.word	0x080035a1

08003630 <pntr_tx_end>:
 8003630:	b480      	push	{r7}
 8003632:	af00      	add	r7, sp, #0
 8003634:	4b0a      	ldr	r3, [pc, #40]	; (8003660 <pntr_tx_end+0x30>)
 8003636:	8a9b      	ldrh	r3, [r3, #20]
 8003638:	b29b      	uxth	r3, r3
 800363a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800363e:	2b00      	cmp	r3, #0
 8003640:	d00a      	beq.n	8003658 <pntr_tx_end+0x28>
 8003642:	4a07      	ldr	r2, [pc, #28]	; (8003660 <pntr_tx_end+0x30>)
 8003644:	4b06      	ldr	r3, [pc, #24]	; (8003660 <pntr_tx_end+0x30>)
 8003646:	881b      	ldrh	r3, [r3, #0]
 8003648:	b29b      	uxth	r3, r3
 800364a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800364e:	b29b      	uxth	r3, r3
 8003650:	8013      	strh	r3, [r2, #0]
 8003652:	4b04      	ldr	r3, [pc, #16]	; (8003664 <pntr_tx_end+0x34>)
 8003654:	4a04      	ldr	r2, [pc, #16]	; (8003668 <pntr_tx_end+0x38>)
 8003656:	601a      	str	r2, [r3, #0]
 8003658:	bf00      	nop
 800365a:	46bd      	mov	sp, r7
 800365c:	bc80      	pop	{r7}
 800365e:	4770      	bx	lr
 8003660:	40005400 	.word	0x40005400
 8003664:	20002cc8 	.word	0x20002cc8
 8003668:	080035f1 	.word	0x080035f1

0800366c <wadr_conf>:
 800366c:	b480      	push	{r7}
 800366e:	af00      	add	r7, sp, #0
 8003670:	4b09      	ldr	r3, [pc, #36]	; (8003698 <wadr_conf+0x2c>)
 8003672:	8a9b      	ldrh	r3, [r3, #20]
 8003674:	b29b      	uxth	r3, r3
 8003676:	f003 0302 	and.w	r3, r3, #2
 800367a:	2b00      	cmp	r3, #0
 800367c:	d007      	beq.n	800368e <wadr_conf+0x22>
 800367e:	4b06      	ldr	r3, [pc, #24]	; (8003698 <wadr_conf+0x2c>)
 8003680:	8b1b      	ldrh	r3, [r3, #24]
 8003682:	4b05      	ldr	r3, [pc, #20]	; (8003698 <wadr_conf+0x2c>)
 8003684:	2200      	movs	r2, #0
 8003686:	821a      	strh	r2, [r3, #16]
 8003688:	4b04      	ldr	r3, [pc, #16]	; (800369c <wadr_conf+0x30>)
 800368a:	4a05      	ldr	r2, [pc, #20]	; (80036a0 <wadr_conf+0x34>)
 800368c:	601a      	str	r2, [r3, #0]
 800368e:	bf00      	nop
 8003690:	46bd      	mov	sp, r7
 8003692:	bc80      	pop	{r7}
 8003694:	4770      	bx	lr
 8003696:	bf00      	nop
 8003698:	40005400 	.word	0x40005400
 800369c:	20002cc8 	.word	0x20002cc8
 80036a0:	08003631 	.word	0x08003631

080036a4 <sb_conf>:
 80036a4:	b480      	push	{r7}
 80036a6:	af00      	add	r7, sp, #0
 80036a8:	4b09      	ldr	r3, [pc, #36]	; (80036d0 <sb_conf+0x2c>)
 80036aa:	8a9b      	ldrh	r3, [r3, #20]
 80036ac:	b29b      	uxth	r3, r3
 80036ae:	f003 0301 	and.w	r3, r3, #1
 80036b2:	2b00      	cmp	r3, #0
 80036b4:	d007      	beq.n	80036c6 <sb_conf+0x22>
 80036b6:	4b06      	ldr	r3, [pc, #24]	; (80036d0 <sb_conf+0x2c>)
 80036b8:	4a06      	ldr	r2, [pc, #24]	; (80036d4 <sb_conf+0x30>)
 80036ba:	7812      	ldrb	r2, [r2, #0]
 80036bc:	b292      	uxth	r2, r2
 80036be:	821a      	strh	r2, [r3, #16]
 80036c0:	4b05      	ldr	r3, [pc, #20]	; (80036d8 <sb_conf+0x34>)
 80036c2:	4a06      	ldr	r2, [pc, #24]	; (80036dc <sb_conf+0x38>)
 80036c4:	601a      	str	r2, [r3, #0]
 80036c6:	bf00      	nop
 80036c8:	46bd      	mov	sp, r7
 80036ca:	bc80      	pop	{r7}
 80036cc:	4770      	bx	lr
 80036ce:	bf00      	nop
 80036d0:	40005400 	.word	0x40005400
 80036d4:	2000021e 	.word	0x2000021e
 80036d8:	20002cc8 	.word	0x20002cc8
 80036dc:	0800366d 	.word	0x0800366d

080036e0 <i2c_start>:
 80036e0:	b480      	push	{r7}
 80036e2:	b083      	sub	sp, #12
 80036e4:	af00      	add	r7, sp, #0
 80036e6:	4603      	mov	r3, r0
 80036e8:	71fb      	strb	r3, [r7, #7]
 80036ea:	4a0c      	ldr	r2, [pc, #48]	; (800371c <i2c_start+0x3c>)
 80036ec:	79fb      	ldrb	r3, [r7, #7]
 80036ee:	7013      	strb	r3, [r2, #0]
 80036f0:	4b0b      	ldr	r3, [pc, #44]	; (8003720 <i2c_start+0x40>)
 80036f2:	4a0c      	ldr	r2, [pc, #48]	; (8003724 <i2c_start+0x44>)
 80036f4:	601a      	str	r2, [r3, #0]
 80036f6:	4a0c      	ldr	r2, [pc, #48]	; (8003728 <i2c_start+0x48>)
 80036f8:	4b0b      	ldr	r3, [pc, #44]	; (8003728 <i2c_start+0x48>)
 80036fa:	881b      	ldrh	r3, [r3, #0]
 80036fc:	b29b      	uxth	r3, r3
 80036fe:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8003702:	b29b      	uxth	r3, r3
 8003704:	8013      	strh	r3, [r2, #0]
 8003706:	4b09      	ldr	r3, [pc, #36]	; (800372c <i2c_start+0x4c>)
 8003708:	681b      	ldr	r3, [r3, #0]
 800370a:	3301      	adds	r3, #1
 800370c:	4a07      	ldr	r2, [pc, #28]	; (800372c <i2c_start+0x4c>)
 800370e:	6013      	str	r3, [r2, #0]
 8003710:	bf00      	nop
 8003712:	370c      	adds	r7, #12
 8003714:	46bd      	mov	sp, r7
 8003716:	bc80      	pop	{r7}
 8003718:	4770      	bx	lr
 800371a:	bf00      	nop
 800371c:	2000021e 	.word	0x2000021e
 8003720:	20002cc8 	.word	0x20002cc8
 8003724:	080036a5 	.word	0x080036a5
 8003728:	40005400 	.word	0x40005400
 800372c:	20002ccc 	.word	0x20002ccc

08003730 <update_attenuator>:
 8003730:	b480      	push	{r7}
 8003732:	b083      	sub	sp, #12
 8003734:	af00      	add	r7, sp, #0
 8003736:	4b21      	ldr	r3, [pc, #132]	; (80037bc <update_attenuator+0x8c>)
 8003738:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800373a:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 800373e:	330f      	adds	r3, #15
 8003740:	607b      	str	r3, [r7, #4]
 8003742:	687b      	ldr	r3, [r7, #4]
 8003744:	f240 52db 	movw	r2, #1499	; 0x5db
 8003748:	4293      	cmp	r3, r2
 800374a:	d805      	bhi.n	8003758 <update_attenuator+0x28>
 800374c:	4b1c      	ldr	r3, [pc, #112]	; (80037c0 <update_attenuator+0x90>)
 800374e:	681b      	ldr	r3, [r3, #0]
 8003750:	1c5a      	adds	r2, r3, #1
 8003752:	491b      	ldr	r1, [pc, #108]	; (80037c0 <update_attenuator+0x90>)
 8003754:	600a      	str	r2, [r1, #0]
 8003756:	2b00      	cmp	r3, #0
 8003758:	687b      	ldr	r3, [r7, #4]
 800375a:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 800375e:	d905      	bls.n	800376c <update_attenuator+0x3c>
 8003760:	4b17      	ldr	r3, [pc, #92]	; (80037c0 <update_attenuator+0x90>)
 8003762:	681b      	ldr	r3, [r3, #0]
 8003764:	1e5a      	subs	r2, r3, #1
 8003766:	4916      	ldr	r1, [pc, #88]	; (80037c0 <update_attenuator+0x90>)
 8003768:	600a      	str	r2, [r1, #0]
 800376a:	2b00      	cmp	r3, #0
 800376c:	4b14      	ldr	r3, [pc, #80]	; (80037c0 <update_attenuator+0x90>)
 800376e:	681b      	ldr	r3, [r3, #0]
 8003770:	2b0a      	cmp	r3, #10
 8003772:	dd03      	ble.n	800377c <update_attenuator+0x4c>
 8003774:	4b12      	ldr	r3, [pc, #72]	; (80037c0 <update_attenuator+0x90>)
 8003776:	220a      	movs	r2, #10
 8003778:	601a      	str	r2, [r3, #0]
 800377a:	bf00      	nop
 800377c:	4b10      	ldr	r3, [pc, #64]	; (80037c0 <update_attenuator+0x90>)
 800377e:	681b      	ldr	r3, [r3, #0]
 8003780:	2b00      	cmp	r3, #0
 8003782:	da02      	bge.n	800378a <update_attenuator+0x5a>
 8003784:	4b0e      	ldr	r3, [pc, #56]	; (80037c0 <update_attenuator+0x90>)
 8003786:	2200      	movs	r2, #0
 8003788:	601a      	str	r2, [r3, #0]
 800378a:	4b0e      	ldr	r3, [pc, #56]	; (80037c4 <update_attenuator+0x94>)
 800378c:	695b      	ldr	r3, [r3, #20]
 800378e:	b29b      	uxth	r3, r3
 8003790:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8003794:	807b      	strh	r3, [r7, #2]
 8003796:	4b0a      	ldr	r3, [pc, #40]	; (80037c0 <update_attenuator+0x90>)
 8003798:	681b      	ldr	r3, [r3, #0]
 800379a:	b21b      	sxth	r3, r3
 800379c:	b2db      	uxtb	r3, r3
 800379e:	b21a      	sxth	r2, r3
 80037a0:	f9b7 3002 	ldrsh.w	r3, [r7, #2]
 80037a4:	4313      	orrs	r3, r2
 80037a6:	b21b      	sxth	r3, r3
 80037a8:	807b      	strh	r3, [r7, #2]
 80037aa:	4a06      	ldr	r2, [pc, #24]	; (80037c4 <update_attenuator+0x94>)
 80037ac:	887b      	ldrh	r3, [r7, #2]
 80037ae:	6153      	str	r3, [r2, #20]
 80037b0:	bf00      	nop
 80037b2:	370c      	adds	r7, #12
 80037b4:	46bd      	mov	sp, r7
 80037b6:	bc80      	pop	{r7}
 80037b8:	4770      	bx	lr
 80037ba:	bf00      	nop
 80037bc:	40012200 	.word	0x40012200
 80037c0:	20002cd0 	.word	0x20002cd0
 80037c4:	40020c00 	.word	0x40020c00

080037c8 <set_attenuator>:
 80037c8:	b480      	push	{r7}
 80037ca:	b085      	sub	sp, #20
 80037cc:	af00      	add	r7, sp, #0
 80037ce:	4603      	mov	r3, r0
 80037d0:	80fb      	strh	r3, [r7, #6]
 80037d2:	4b0b      	ldr	r3, [pc, #44]	; (8003800 <set_attenuator+0x38>)
 80037d4:	695b      	ldr	r3, [r3, #20]
 80037d6:	b29b      	uxth	r3, r3
 80037d8:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80037dc:	81fb      	strh	r3, [r7, #14]
 80037de:	88fb      	ldrh	r3, [r7, #6]
 80037e0:	b2db      	uxtb	r3, r3
 80037e2:	b29a      	uxth	r2, r3
 80037e4:	89fb      	ldrh	r3, [r7, #14]
 80037e6:	4313      	orrs	r3, r2
 80037e8:	81fb      	strh	r3, [r7, #14]
 80037ea:	4a05      	ldr	r2, [pc, #20]	; (8003800 <set_attenuator+0x38>)
 80037ec:	89fb      	ldrh	r3, [r7, #14]
 80037ee:	6153      	str	r3, [r2, #20]
 80037f0:	88fb      	ldrh	r3, [r7, #6]
 80037f2:	4a04      	ldr	r2, [pc, #16]	; (8003804 <set_attenuator+0x3c>)
 80037f4:	6013      	str	r3, [r2, #0]
 80037f6:	bf00      	nop
 80037f8:	3714      	adds	r7, #20
 80037fa:	46bd      	mov	sp, r7
 80037fc:	bc80      	pop	{r7}
 80037fe:	4770      	bx	lr
 8003800:	40020c00 	.word	0x40020c00
 8003804:	20002cd0 	.word	0x20002cd0

08003808 <seg7_tbl>:
 8003808:	b6b31477 34e7e6d4 c7f5f6f7 e1e39763     w......4....c...
 8003818:	253d6349 000a0d64 253d7249 000a0d64     Ic=%d...Ir=%d...
 8003828:	6f727265 64253d72 00000a0d 253d6456     error=%d....Vd=%
 8003838:	000a0d64 7474614b 0d64253d 0000000a     d...Katt=%d.....
 8003848:	253d6449 0d416d64 0000000a 253d6456     Id=%dmA.....Vd=%
 8003858:	64252e64 000a0d56 64253d50 000a0d57     d.%dV...P=%dW...
 8003868:	78616d49 6d64253d 000a0d41 253d6354     Imax=%dmA...Tc=%
 8003878:	000a0d64 253d6a54 000a0d64 00000a0a     d...Tj=%d.......
 8003888:	6c6c6568 000a0d6f 6c383025 00002058     hello...%08lX ..
 8003898:	32302520 00000058 34302520 00000058      %02X... %04X...
 80038a8:	38302520 0000584c                        %08LX..

080038b0 <cos_table>:
 80038b0:	000007d0 000007bd 00000784 00000727     ............'...
 80038c0:	000006ab 00000614 00000567 000004ab     ........g.......
 80038d0:	000003e8 00000325 00000269 000001bc     ....%...i.......
 80038e0:	00000125 000000a9 0000004c 00000013     %.......L.......
 80038f0:	00000000 00000013 0000004c 000000a9     ........L.......
 8003900:	00000125 000001bc 00000269 00000325     %.......i...%...
 8003910:	000003e8 000004ab 00000567 00000614     ........g.......
 8003920:	000006ab 00000727 00000784 000007bd     ....'...........

08003930 <device_additional_info>:
 8003930:	7420794d 20747365 62646f6d 64207375     My test modbus d
 8003940:	63697665 00000065                       evice...

08003948 <proc_PDU_table>:
 8003948:	080026a9 08001f01 08001fb5 08002441     .&..........A$..
 8003958:	0800217d 08001cd9 08002269 080026a9     }!......i"...&..
 8003968:	080020f1 080026a9 080026a9 080026a9     . ...&...&...&..
 8003978:	080026a9 080026a9 080026a9 08001ddd     .&...&...&......
 8003988:	08002331 08002069 080026a9 080026a9     1#..i ...&...&..
 8003998:	080026a9 080026a9 080026a9 08002521     .&...&...&..!%..
 80039a8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039b8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039c8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039d8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039e8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 80039f8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a08:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a18:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a28:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a38:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a48:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a58:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a68:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a78:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a88:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003a98:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003aa8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ab8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ac8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ad8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ae8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003af8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b08:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b18:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b28:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b38:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b48:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b58:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b68:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b78:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b88:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003b98:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ba8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bb8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bc8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bd8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003be8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003bf8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c08:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c18:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c28:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c38:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c48:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c58:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c68:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c78:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c88:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003c98:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ca8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003cb8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003cc8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003cd8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003ce8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003cf8:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003d08:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003d18:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003d28:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..
 8003d38:	080026a9 080026a9 080026a9 080026a9     .&...&...&...&..

08003d48 <kc>:
 8003d48:	0001d7c4                                ....

08003d4c <kr>:
 8003d4c:	00022baa                                .+..

08003d50 <kv>:
 8003d50:	000537f0                                .7..

08003d54 <ac>:
 8003d54:	0003f74d                                M...

08003d58 <ar>:
 8003d58:	ffdd90e7                                ....

08003d5c <av>:
 8003d5c:	0007d396                                ....

08003d60 <temp_sens_addr>:
 8003d60:	00000086                                ....

08003d64 <Rt>:
 8003d64:	00000011 76276577 65732065 5320646e     ....we've send S
 8003d74:	54524154 206f7420 76616c73 75253a65     TART to slave:%u
 8003d84:	0000000a 76276577 65732065 6120646e     ....we've send a
 8003d94:	65726464 6f742073 616c7320 253a6576     ddres to slave:%
 8003da4:	00000a75 76276577 72772065 20657469     u...we've write 
 8003db4:	6e696f70 20726574 73206f74 6576616c     pointer to slave
 8003dc4:	0a75253a 00000000 76276577 61682065     :%u.....we've ha
 8003dd4:	42206576 253a4654 00000a75 20737562     ve BTF:%u...bus 
 8003de4:	66207369 3a656572 000a7525              is free:%u..

08003df0 <apl602_imax>:
 8003df0:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003e00:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003e10:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003e20:	0000c350 0000c350 0000c350 0000af3e     P...P...P...>...
 8003e30:	0000a33e 000098af 00008f53 000086fa     >.......S.......
 8003e40:	00007f7c 000078bb 0000729d 00006d0c     |....x...r...m..
 8003e50:	000067f6 0000634c 00005f02 00005b0d     .g..Lc..._...[..
 8003e60:	00005763 000053fd 000050d4 00004de2     cW...S...P...M..
 8003e70:	00004b21 0000488c 00004621 000043db     !K...H..!F...C..
 8003e80:	000041b7 00003fb2 00003dca 00003bfc     .A...?...=...;..
 8003e90:	00003a47 000038a8 0000371e 000035a8     G:...8...7...5..
 8003ea0:	00003443 000032f0 000031ac 00003076     C4...2...1..v0..
 8003eb0:	00002f4f 00002e34 00002d25 00002c21     O/..4...%-..!,..
 8003ec0:	00002b28 00002a39 00002954 00002877     (+..9*..T)..w(..
 8003ed0:	000027a3 000026d6 00002611 00002554     .'...&...&..T%..
 8003ee0:	0000249d 000023ec 00002341 0000229d     .$...#..A#..."..
 8003ef0:	000021fd 00002163 000020ce 0000203e     .!..c!... ..> ..
 8003f00:	00001fb2 00001f2b 00001ea7 00001e28     ....+.......(...
 8003f10:	00001dac 00001d34 00001cc0 00001c4f     ....4.......O...
 8003f20:	00001be1 00001b76 00001b0e 00001aa9     ....v...........
 8003f30:	00001a46 000019e6 00001989 0000192e     F...............
 8003f40:	000018d5 0000187f 0000182b 000017d9     ........+.......
 8003f50:	00001788 0000173a 000016ee 000016a3     ....:...........
 8003f60:	0000165a 00001613 000015ce 0000158a     Z...............
 8003f70:	00001547 00001506 000014c7 00001489     G...............
 8003f80:	0000144c 00001410 000013d6 0000139d     L...............
 8003f90:	00001365 0000132e 000012f8 000012c4     e...............
 8003fa0:	00001290 0000125e 0000122c 000011fc     ....^...,.......
 8003fb0:	000011cc 0000119d 00001170 00001143     ........p...C...
 8003fc0:	00001116 000010eb 000010c1 00001097     ................
 8003fd0:	0000106e 00001045 0000101e 00000ff7     n...E...........
 8003fe0:	00000fd1 00000fab 00000f86 00000f62     ............b...
 8003ff0:	00000f3e 00000f1b 00000ef9 00000ed7     >...............
 8004000:	00000eb5 00000e94 00000e74 00000e54     ........t...T...
 8004010:	00000e35 00000e16 00000df8 00000dda     5...............
 8004020:	00000dbd 00000da0 00000d83 00000d67     ............g...
 8004030:	00000d4b 00000d30 00000d15 00000cfb     K...0...........
 8004040:	00000ce1 00000cc7 00000cbb 00000c96     ................
 8004050:	00000c71 00000c4d 00000c2a 00000c07     q...M...*.......
 8004060:	00000be4 00000bc3 00000ba2 00000b81     ................
 8004070:	00000b61 00000b42 00000b23 00000b05     a...B...#.......
 8004080:	00000ae7 00000aca 00000aad 00000a90     ................
 8004090:	00000a74 00000a59 00000a3e 00000a23     t...Y...>...#...
 80040a0:	00000a09 000009ef 000009d6 000009bd     ................
 80040b0:	000009a4 0000098c 00000974 0000095d     ........t...]...
 80040c0:	00000946 0000092f 00000918 00000902     F.../...........
 80040d0:	000008ec 000008d7 000008c2 000008ad     ................
 80040e0:	00000899 00000884 00000870 0000085d     ........p...]...
 80040f0:	00000849 00000836 00000823 00000811     I...6...#.......
 8004100:	000007ff 000007ec 000007db 000007c9     ................
 8004110:	000007b8 000007a7 00000796 00000785     ................
 8004120:	00000775 00000765 00000755 00000745     u...e...U...E...
 8004130:	00000735 00000726 00000717 00000708     5...&...........
 8004140:	000006f9 000006eb 000006dc 000006ce     ................
 8004150:	000006c0 000006b2 000006a4 00000697     ................
 8004160:	0000068a 0000067c 0000066f 00000663     ....|...o...c...
 8004170:	00000656 00000649 0000063d 00000631     V...I...=...1...
 8004180:	00000625 00000619 0000060d 00000601     %...............
 8004190:	000005f6 000005ea 000005df 000005d4     ................
 80041a0:	000005c9 000005be 000005b3 000005a9     ................
 80041b0:	0000059e 00000594 0000058a 0000057f     ................
 80041c0:	00000575 0000056b 00000562 00000558     u...k...b...X...
 80041d0:	0000054e 00000545 0000053b 00000532     N...E...;...2...
 80041e0:	00000529 00000520 00000517 0000050e     )... ...........
 80041f0:	00000505 000004fc 000004f4 000004eb     ................
 8004200:	000004e3 000004db 000004d2 000004ca     ................
 8004210:	000004c2 000004ba 000004b2 000004aa     ................
 8004220:	000004a3 0000049b 00000493 0000048c     ................
 8004230:	00000484 0000047d 00000476 0000046e     ....}...v...n...
 8004240:	00000467 00000460 00000459 00000452     g...`...Y...R...
 8004250:	0000044b 00000444 0000043e 00000437     K...D...>...7...
 8004260:	00000430 0000042a 00000423 0000041d     0...*...#.......
 8004270:	00000417 00000410 0000040a 00000404     ................
 8004280:	000003fe 000003f8 000003f2 000003ec     ................
 8004290:	000003e6 000003e0 000003da 000003cb     ................
 80042a0:	000003c0 000003b6 000003ac 000003a2     ................
 80042b0:	00000399 0000038f 00000386 0000037c     ............|...
 80042c0:	00000373 0000036a 00000361 00000358     s...j...a...X...
 80042d0:	0000034f 00000347 0000033e 00000336     O...G...>...6...
 80042e0:	0000032e 00000325 0000031d 00000315     ....%...........
 80042f0:	0000030e 00000306 000002fe 000002f7     ................
 8004300:	000002ef 000002e8 000002e1 000002d9     ................
 8004310:	000002d2 000002cb 000002c5 000002be     ................
 8004320:	000002b7 000002b0 000002aa 000002a3     ................
 8004330:	0000029d 00000297 00000290 0000028a     ................
 8004340:	00000284 0000027e 00000278 00000272     ....~...x...r...
 8004350:	0000026d 00000267 00000261 0000025c     m...g...a...\...
 8004360:	00000256 00000251 0000024b 00000246     V...Q...K...F...
 8004370:	00000241 0000023b 00000236 00000231     A...;...6...1...
 8004380:	0000022c 00000227 00000222 0000021e     ,...'...".......
 8004390:	00000219 00000214 0000020f 0000020b     ................
 80043a0:	00000206 00000202 000001fd 000001f9     ................
 80043b0:	000001f4 000001f0 000001ec 000001e8     ................
 80043c0:	000001e3 000001df 000001db 000001d7     ................
 80043d0:	000001d3 000001cf 000001cb 000001c8     ................
 80043e0:	000001c4 000001c0 000001bc 000001b9     ................
 80043f0:	000001b5 000001b1 000001ae 000001aa     ................
 8004400:	000001a7 000001a3 000001a0 0000019c     ................
 8004410:	00000199 00000196 00000192 0000018f     ................
 8004420:	0000018c 00000189 00000186 00000183     ................
 8004430:	0000017f 0000017c 00000179 00000176     ....|...y...v...
 8004440:	00000173 00000171 0000016e 0000016b     s...q...n...k...
 8004450:	00000168 00000165 00000162 00000160     h...e...b...`...
 8004460:	0000015d 0000015a 00000158 00000155     ]...Z...X...U...
 8004470:	00000152 00000150 0000014d 0000014b     R...P...M...K...
 8004480:	00000148 00000146 00000143 00000141     H...F...C...A...
 8004490:	0000013e 0000013c 0000013a 00000137     >...<...:...7...
 80044a0:	00000135 00000133 00000130 0000012e     5...3...0.......
 80044b0:	0000012c 0000012a 00000128 00000125     ,...*...(...%...
 80044c0:	00000123 00000121 0000011f 0000011d     #...!...........
 80044d0:	0000011b 00000119 00000117 00000115     ................
 80044e0:	00000113 00000111 0000010f 0000010d     ................
 80044f0:	0000010b 00000109 00000107 00000105     ................
 8004500:	00000104 00000102 00000100 000000fe     ................
 8004510:	000000fc 000000fb 000000f9 000000f7     ................
 8004520:	000000f5 000000f4 000000f2 000000f0     ................
 8004530:	000000ef 000000ed 000000ec 000000ea     ................
 8004540:	000000e8 000000e7 000000e5 000000e4     ................
 8004550:	000000e2 000000e1 000000df 000000de     ................
 8004560:	000000dc 000000db 000000d9 000000d8     ................
 8004570:	000000d6 000000d5 000000d3 000000d2     ................
 8004580:	000000d1 000000cf 000000ce 000000cd     ................
 8004590:	000000cb 000000ca 000000c9 000000c7     ................
 80045a0:	000000c6 000000c5 000000c3 000000c2     ................
 80045b0:	000000c1 000000c0 000000be 000000bd     ................
 80045c0:	000000bc 000000bb 000000ba 000000b9     ................
 80045d0:	000000b7 000000b6 000000b5 000000b4     ................
 80045e0:	000000b3 000000b2 000000b1 000000af     ................
 80045f0:	000000ae 000000ad 000000ac 000000ab     ................
 8004600:	000000aa 000000a9 000000a8 000000a7     ................
 8004610:	000000a6 000000a5 000000a4 000000a3     ................
 8004620:	000000a2 000000a1 000000a0 0000009f     ................
 8004630:	0000009e 0000009d 0000009c 0000009b     ................
 8004640:	0000009a 00000099 00000098 00000098     ................
 8004650:	00000097 00000096 00000095 00000094     ................
 8004660:	00000093 00000092 00000091 00000091     ................
 8004670:	00000090 0000008f 0000008e 0000008d     ................
 8004680:	0000008c 0000008c 0000008b 0000008a     ................
 8004690:	00000089 00000088 00000088 00000087     ................
 80046a0:	00000086 00000085 00000084 00000084     ................
 80046b0:	00000083 00000082 00000081 00000081     ................
 80046c0:	00000080 0000007f 0000007f 0000007e     ............~...
 80046d0:	0000007d 0000007c 0000007c 0000007b     }...|...|...{...
 80046e0:	0000007a 0000007a 00000079 00000078     z...z...y...x...
 80046f0:	00000078 00000077 00000076 00000076     x...w...v...v...
 8004700:	00000075 00000074 00000074 00000073     u...t...t...s...
 8004710:	00000073 00000072 00000071 00000071     s...r...q...q...
 8004720:	00000070 0000006f 0000006f 0000006e     p...o...o...n...
 8004730:	0000006e 0000006d 0000006c 0000006c     n...m...l...l...
 8004740:	0000006b 0000006b 0000006a 00000000     k...k...j.......
