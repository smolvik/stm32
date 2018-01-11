
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 00 02 20 7d 08 00 08 dd 08 00 08 dd 08 00 08     ... }...........
 8000010:	dd 08 00 08 dd 08 00 08 dd 08 00 08 00 00 00 00     ................
	...
 800002c:	dd 08 00 08 dd 08 00 08 00 00 00 00 dd 08 00 08     ................
 800003c:	61 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     a...............
 800004c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800005c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800006c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800007c:	35 31 00 08 dd 08 00 08 dd 08 00 08 75 31 00 08     51..........u1..
 800008c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800009c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 80000ac:	dd 08 00 08 39 17 00 08 99 30 00 08 dd 08 00 08     ....9....0......
 80000bc:	19 35 00 08 2d 35 00 08 dd 08 00 08 dd 08 00 08     .5..-5..........
 80000cc:	4d 2d 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     M-..............
 80000dc:	b5 1a 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 80000ec:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 80000fc:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800010c:	dd 08 00 08 21 0c 00 08 dd 08 00 08 dd 08 00 08     ....!...........
 800011c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800012c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800013c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800014c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800015c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800016c:	dd 08 00 08 dd 08 00 08 dd 08 00 08 dd 08 00 08     ................
 800017c:	dd 08 00 08 dd 08 00 08 dd 08 00 08                 ............

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
 8000228:	08003814 	.word	0x08003814
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
 8000250:	f000 ff0a 	bl	8001068 <xprintf>
 8000254:	4b2e      	ldr	r3, [pc, #184]	; (8000310 <log_channel+0xe0>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	4619      	mov	r1, r3
 800025a:	482e      	ldr	r0, [pc, #184]	; (8000314 <log_channel+0xe4>)
 800025c:	f000 ff04 	bl	8001068 <xprintf>
 8000260:	4b2d      	ldr	r3, [pc, #180]	; (8000318 <log_channel+0xe8>)
 8000262:	681b      	ldr	r3, [r3, #0]
 8000264:	4619      	mov	r1, r3
 8000266:	482d      	ldr	r0, [pc, #180]	; (800031c <log_channel+0xec>)
 8000268:	f000 fefe 	bl	8001068 <xprintf>
 800026c:	4b2c      	ldr	r3, [pc, #176]	; (8000320 <log_channel+0xf0>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	0a9b      	lsrs	r3, r3, #10
 8000272:	4619      	mov	r1, r3
 8000274:	482b      	ldr	r0, [pc, #172]	; (8000324 <log_channel+0xf4>)
 8000276:	f000 fef7 	bl	8001068 <xprintf>
 800027a:	4b2b      	ldr	r3, [pc, #172]	; (8000328 <log_channel+0xf8>)
 800027c:	681b      	ldr	r3, [r3, #0]
 800027e:	4619      	mov	r1, r3
 8000280:	482a      	ldr	r0, [pc, #168]	; (800032c <log_channel+0xfc>)
 8000282:	f000 fef1 	bl	8001068 <xprintf>
 8000286:	4b2a      	ldr	r3, [pc, #168]	; (8000330 <log_channel+0x100>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	4619      	mov	r1, r3
 800028c:	4829      	ldr	r0, [pc, #164]	; (8000334 <log_channel+0x104>)
 800028e:	f000 feeb 	bl	8001068 <xprintf>
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
 80002b4:	f000 fed8 	bl	8001068 <xprintf>
 80002b8:	4b21      	ldr	r3, [pc, #132]	; (8000340 <log_channel+0x110>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
 80002c0:	4a20      	ldr	r2, [pc, #128]	; (8000344 <log_channel+0x114>)
 80002c2:	fba2 2303 	umull	r2, r3, r2, r3
 80002c6:	099b      	lsrs	r3, r3, #6
 80002c8:	4619      	mov	r1, r3
 80002ca:	481f      	ldr	r0, [pc, #124]	; (8000348 <log_channel+0x118>)
 80002cc:	f000 fecc 	bl	8001068 <xprintf>
 80002d0:	4b1e      	ldr	r3, [pc, #120]	; (800034c <log_channel+0x11c>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	4619      	mov	r1, r3
 80002d6:	481e      	ldr	r0, [pc, #120]	; (8000350 <log_channel+0x120>)
 80002d8:	f000 fec6 	bl	8001068 <xprintf>
 80002dc:	4b1d      	ldr	r3, [pc, #116]	; (8000354 <log_channel+0x124>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	4619      	mov	r1, r3
 80002e2:	481d      	ldr	r0, [pc, #116]	; (8000358 <log_channel+0x128>)
 80002e4:	f000 fec0 	bl	8001068 <xprintf>
 80002e8:	4b1c      	ldr	r3, [pc, #112]	; (800035c <log_channel+0x12c>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	4619      	mov	r1, r3
 80002ee:	481c      	ldr	r0, [pc, #112]	; (8000360 <log_channel+0x130>)
 80002f0:	f000 feba 	bl	8001068 <xprintf>
 80002f4:	481b      	ldr	r0, [pc, #108]	; (8000364 <log_channel+0x134>)
 80002f6:	f000 feb7 	bl	8001068 <xprintf>
 80002fa:	bf00      	nop
 80002fc:	3708      	adds	r7, #8
 80002fe:	46bd      	mov	sp, r7
 8000300:	bd80      	pop	{r7, pc}
 8000302:	bf00      	nop
 8000304:	20000230 	.word	0x20000230
 8000308:	20001ca0 	.word	0x20001ca0
 800030c:	08003824 	.word	0x08003824
 8000310:	20002ca8 	.word	0x20002ca8
 8000314:	0800382c 	.word	0x0800382c
 8000318:	20002cb8 	.word	0x20002cb8
 800031c:	08003834 	.word	0x08003834
 8000320:	20000c98 	.word	0x20000c98
 8000324:	08003840 	.word	0x08003840
 8000328:	20002cd0 	.word	0x20002cd0
 800032c:	08003848 	.word	0x08003848
 8000330:	20000234 	.word	0x20000234
 8000334:	08003854 	.word	0x08003854
 8000338:	cccccccd 	.word	0xcccccccd
 800033c:	08003860 	.word	0x08003860
 8000340:	20000238 	.word	0x20000238
 8000344:	10624dd3 	.word	0x10624dd3
 8000348:	0800386c 	.word	0x0800386c
 800034c:	2000022c 	.word	0x2000022c
 8000350:	08003874 	.word	0x08003874
 8000354:	20002cbc 	.word	0x20002cbc
 8000358:	08003880 	.word	0x08003880
 800035c:	2000023c 	.word	0x2000023c
 8000360:	08003888 	.word	0x08003888
 8000364:	08003890 	.word	0x08003890

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
 800039a:	f000 f9cd 	bl	8000738 <system_init>
 800039e:	f000 fab9 	bl	8000914 <uart_init>
 80003a2:	4b1b      	ldr	r3, [pc, #108]	; (8000410 <main+0xa8>)
 80003a4:	4a1b      	ldr	r2, [pc, #108]	; (8000414 <main+0xac>)
 80003a6:	601a      	str	r2, [r3, #0]
 80003a8:	f001 f9a6 	bl	80016f8 <adc_init>
 80003ac:	f001 fa5a 	bl	8001864 <dac_init>
 80003b0:	f001 faf8 	bl	80019a4 <modbus_init>
 80003b4:	f002 fb64 	bl	8002a80 <spi_master_init>
 80003b8:	f002 ff5e 	bl	8003278 <i2c_init>
 80003bc:	f002 fed0 	bl	8003160 <reg_init>
 80003c0:	4815      	ldr	r0, [pc, #84]	; (8000418 <main+0xb0>)
 80003c2:	f000 fe51 	bl	8001068 <xprintf>
 80003c6:	4b15      	ldr	r3, [pc, #84]	; (800041c <main+0xb4>)
 80003c8:	881b      	ldrh	r3, [r3, #0]
 80003ca:	4618      	mov	r0, r3
 80003cc:	f002 faac 	bl	8002928 <coll_pwm_set>
 80003d0:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80003d4:	f000 fa2e 	bl	8000834 <sleep>
 80003d8:	4b11      	ldr	r3, [pc, #68]	; (8000420 <main+0xb8>)
 80003da:	681b      	ldr	r3, [r3, #0]
 80003dc:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 80003e0:	0c9b      	lsrs	r3, r3, #18
 80003e2:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
 80003e6:	f7ff ff23 	bl	8000230 <log_channel>
 80003ea:	2200      	movs	r2, #0
 80003ec:	2101      	movs	r1, #1
 80003ee:	f8d7 0104 	ldr.w	r0, [r7, #260]	; 0x104
 80003f2:	f7ff fec9 	bl	8000188 <display_out>
 80003f6:	4b0b      	ldr	r3, [pc, #44]	; (8000424 <main+0xbc>)
 80003f8:	681b      	ldr	r3, [r3, #0]
 80003fa:	3305      	adds	r3, #5
 80003fc:	4a0a      	ldr	r2, [pc, #40]	; (8000428 <main+0xc0>)
 80003fe:	fba2 2303 	umull	r2, r3, r2, r3
 8000402:	08db      	lsrs	r3, r3, #3
 8000404:	2201      	movs	r2, #1
 8000406:	2102      	movs	r1, #2
 8000408:	4618      	mov	r0, r3
 800040a:	f7ff febd 	bl	8000188 <display_out>
 800040e:	e7df      	b.n	80003d0 <main+0x68>
 8000410:	20000a54 	.word	0x20000a54
 8000414:	080009f9 	.word	0x080009f9
 8000418:	08003894 	.word	0x08003894
 800041c:	20000000 	.word	0x20000000
 8000420:	20000230 	.word	0x20000230
 8000424:	20000234 	.word	0x20000234
 8000428:	cccccccd 	.word	0xcccccccd

0800042c <NVIC_SetPriorityGrouping>:
 800042c:	b480      	push	{r7}
 800042e:	b085      	sub	sp, #20
 8000430:	af00      	add	r7, sp, #0
 8000432:	6078      	str	r0, [r7, #4]
 8000434:	687b      	ldr	r3, [r7, #4]
 8000436:	f003 0307 	and.w	r3, r3, #7
 800043a:	60fb      	str	r3, [r7, #12]
 800043c:	4b0c      	ldr	r3, [pc, #48]	; (8000470 <NVIC_SetPriorityGrouping+0x44>)
 800043e:	68db      	ldr	r3, [r3, #12]
 8000440:	60bb      	str	r3, [r7, #8]
 8000442:	68ba      	ldr	r2, [r7, #8]
 8000444:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000448:	4013      	ands	r3, r2
 800044a:	60bb      	str	r3, [r7, #8]
 800044c:	68fb      	ldr	r3, [r7, #12]
 800044e:	021a      	lsls	r2, r3, #8
 8000450:	68bb      	ldr	r3, [r7, #8]
 8000452:	4313      	orrs	r3, r2
 8000454:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000458:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800045c:	60bb      	str	r3, [r7, #8]
 800045e:	4a04      	ldr	r2, [pc, #16]	; (8000470 <NVIC_SetPriorityGrouping+0x44>)
 8000460:	68bb      	ldr	r3, [r7, #8]
 8000462:	60d3      	str	r3, [r2, #12]
 8000464:	bf00      	nop
 8000466:	3714      	adds	r7, #20
 8000468:	46bd      	mov	sp, r7
 800046a:	bc80      	pop	{r7}
 800046c:	4770      	bx	lr
 800046e:	bf00      	nop
 8000470:	e000ed00 	.word	0xe000ed00

08000474 <NVIC_SetPriority>:
 8000474:	b480      	push	{r7}
 8000476:	b083      	sub	sp, #12
 8000478:	af00      	add	r7, sp, #0
 800047a:	4603      	mov	r3, r0
 800047c:	6039      	str	r1, [r7, #0]
 800047e:	71fb      	strb	r3, [r7, #7]
 8000480:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000484:	2b00      	cmp	r3, #0
 8000486:	da0b      	bge.n	80004a0 <NVIC_SetPriority+0x2c>
 8000488:	490d      	ldr	r1, [pc, #52]	; (80004c0 <NVIC_SetPriority+0x4c>)
 800048a:	79fb      	ldrb	r3, [r7, #7]
 800048c:	f003 030f 	and.w	r3, r3, #15
 8000490:	3b04      	subs	r3, #4
 8000492:	683a      	ldr	r2, [r7, #0]
 8000494:	b2d2      	uxtb	r2, r2
 8000496:	0112      	lsls	r2, r2, #4
 8000498:	b2d2      	uxtb	r2, r2
 800049a:	440b      	add	r3, r1
 800049c:	761a      	strb	r2, [r3, #24]
 800049e:	e009      	b.n	80004b4 <NVIC_SetPriority+0x40>
 80004a0:	4908      	ldr	r1, [pc, #32]	; (80004c4 <NVIC_SetPriority+0x50>)
 80004a2:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80004a6:	683a      	ldr	r2, [r7, #0]
 80004a8:	b2d2      	uxtb	r2, r2
 80004aa:	0112      	lsls	r2, r2, #4
 80004ac:	b2d2      	uxtb	r2, r2
 80004ae:	440b      	add	r3, r1
 80004b0:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80004b4:	bf00      	nop
 80004b6:	370c      	adds	r7, #12
 80004b8:	46bd      	mov	sp, r7
 80004ba:	bc80      	pop	{r7}
 80004bc:	4770      	bx	lr
 80004be:	bf00      	nop
 80004c0:	e000ed00 	.word	0xe000ed00
 80004c4:	e000e100 	.word	0xe000e100

080004c8 <clock_PLL>:
 80004c8:	b480      	push	{r7}
 80004ca:	af00      	add	r7, sp, #0
 80004cc:	4a5b      	ldr	r2, [pc, #364]	; (800063c <clock_PLL+0x174>)
 80004ce:	4b5b      	ldr	r3, [pc, #364]	; (800063c <clock_PLL+0x174>)
 80004d0:	681b      	ldr	r3, [r3, #0]
 80004d2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80004d6:	6013      	str	r3, [r2, #0]
 80004d8:	bf00      	nop
 80004da:	4b58      	ldr	r3, [pc, #352]	; (800063c <clock_PLL+0x174>)
 80004dc:	681b      	ldr	r3, [r3, #0]
 80004de:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80004e2:	2b00      	cmp	r3, #0
 80004e4:	d0f9      	beq.n	80004da <clock_PLL+0x12>
 80004e6:	4a55      	ldr	r2, [pc, #340]	; (800063c <clock_PLL+0x174>)
 80004e8:	4b54      	ldr	r3, [pc, #336]	; (800063c <clock_PLL+0x174>)
 80004ea:	681b      	ldr	r3, [r3, #0]
 80004ec:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 80004f0:	6013      	str	r3, [r2, #0]
 80004f2:	4952      	ldr	r1, [pc, #328]	; (800063c <clock_PLL+0x174>)
 80004f4:	4b51      	ldr	r3, [pc, #324]	; (800063c <clock_PLL+0x174>)
 80004f6:	685a      	ldr	r2, [r3, #4]
 80004f8:	4b51      	ldr	r3, [pc, #324]	; (8000640 <clock_PLL+0x178>)
 80004fa:	4013      	ands	r3, r2
 80004fc:	604b      	str	r3, [r1, #4]
 80004fe:	4a4f      	ldr	r2, [pc, #316]	; (800063c <clock_PLL+0x174>)
 8000500:	4b4e      	ldr	r3, [pc, #312]	; (800063c <clock_PLL+0x174>)
 8000502:	685b      	ldr	r3, [r3, #4]
 8000504:	f443 43a8 	orr.w	r3, r3, #21504	; 0x5400
 8000508:	6053      	str	r3, [r2, #4]
 800050a:	4a4c      	ldr	r2, [pc, #304]	; (800063c <clock_PLL+0x174>)
 800050c:	4b4b      	ldr	r3, [pc, #300]	; (800063c <clock_PLL+0x174>)
 800050e:	685b      	ldr	r3, [r3, #4]
 8000510:	f043 0308 	orr.w	r3, r3, #8
 8000514:	6053      	str	r3, [r2, #4]
 8000516:	4a49      	ldr	r2, [pc, #292]	; (800063c <clock_PLL+0x174>)
 8000518:	4b48      	ldr	r3, [pc, #288]	; (800063c <clock_PLL+0x174>)
 800051a:	685b      	ldr	r3, [r3, #4]
 800051c:	6053      	str	r3, [r2, #4]
 800051e:	4a47      	ldr	r2, [pc, #284]	; (800063c <clock_PLL+0x174>)
 8000520:	4b46      	ldr	r3, [pc, #280]	; (800063c <clock_PLL+0x174>)
 8000522:	685b      	ldr	r3, [r3, #4]
 8000524:	f043 63e0 	orr.w	r3, r3, #117440512	; 0x7000000
 8000528:	6053      	str	r3, [r2, #4]
 800052a:	4a44      	ldr	r2, [pc, #272]	; (800063c <clock_PLL+0x174>)
 800052c:	4b43      	ldr	r3, [pc, #268]	; (800063c <clock_PLL+0x174>)
 800052e:	685b      	ldr	r3, [r3, #4]
 8000530:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 8000534:	6053      	str	r3, [r2, #4]
 8000536:	4a41      	ldr	r2, [pc, #260]	; (800063c <clock_PLL+0x174>)
 8000538:	4b40      	ldr	r3, [pc, #256]	; (800063c <clock_PLL+0x174>)
 800053a:	681b      	ldr	r3, [r3, #0]
 800053c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000540:	6013      	str	r3, [r2, #0]
 8000542:	bf00      	nop
 8000544:	4b3d      	ldr	r3, [pc, #244]	; (800063c <clock_PLL+0x174>)
 8000546:	681b      	ldr	r3, [r3, #0]
 8000548:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800054c:	2b00      	cmp	r3, #0
 800054e:	d0f9      	beq.n	8000544 <clock_PLL+0x7c>
 8000550:	4a3c      	ldr	r2, [pc, #240]	; (8000644 <clock_PLL+0x17c>)
 8000552:	4b3c      	ldr	r3, [pc, #240]	; (8000644 <clock_PLL+0x17c>)
 8000554:	681b      	ldr	r3, [r3, #0]
 8000556:	f023 030f 	bic.w	r3, r3, #15
 800055a:	6013      	str	r3, [r2, #0]
 800055c:	4a39      	ldr	r2, [pc, #228]	; (8000644 <clock_PLL+0x17c>)
 800055e:	4b39      	ldr	r3, [pc, #228]	; (8000644 <clock_PLL+0x17c>)
 8000560:	681b      	ldr	r3, [r3, #0]
 8000562:	f443 7382 	orr.w	r3, r3, #260	; 0x104
 8000566:	f043 0301 	orr.w	r3, r3, #1
 800056a:	6013      	str	r3, [r2, #0]
 800056c:	4a33      	ldr	r2, [pc, #204]	; (800063c <clock_PLL+0x174>)
 800056e:	4b33      	ldr	r3, [pc, #204]	; (800063c <clock_PLL+0x174>)
 8000570:	689b      	ldr	r3, [r3, #8]
 8000572:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 8000576:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 800057a:	6093      	str	r3, [r2, #8]
 800057c:	4a2f      	ldr	r2, [pc, #188]	; (800063c <clock_PLL+0x174>)
 800057e:	4b2f      	ldr	r3, [pc, #188]	; (800063c <clock_PLL+0x174>)
 8000580:	689b      	ldr	r3, [r3, #8]
 8000582:	f443 4314 	orr.w	r3, r3, #37888	; 0x9400
 8000586:	6093      	str	r3, [r2, #8]
 8000588:	4a2c      	ldr	r2, [pc, #176]	; (800063c <clock_PLL+0x174>)
 800058a:	4b2c      	ldr	r3, [pc, #176]	; (800063c <clock_PLL+0x174>)
 800058c:	689b      	ldr	r3, [r3, #8]
 800058e:	f023 0303 	bic.w	r3, r3, #3
 8000592:	6093      	str	r3, [r2, #8]
 8000594:	4a29      	ldr	r2, [pc, #164]	; (800063c <clock_PLL+0x174>)
 8000596:	4b29      	ldr	r3, [pc, #164]	; (800063c <clock_PLL+0x174>)
 8000598:	689b      	ldr	r3, [r3, #8]
 800059a:	f043 0302 	orr.w	r3, r3, #2
 800059e:	6093      	str	r3, [r2, #8]
 80005a0:	bf00      	nop
 80005a2:	4b26      	ldr	r3, [pc, #152]	; (800063c <clock_PLL+0x174>)
 80005a4:	689b      	ldr	r3, [r3, #8]
 80005a6:	f003 0308 	and.w	r3, r3, #8
 80005aa:	2b00      	cmp	r3, #0
 80005ac:	d0f9      	beq.n	80005a2 <clock_PLL+0xda>
 80005ae:	4a23      	ldr	r2, [pc, #140]	; (800063c <clock_PLL+0x174>)
 80005b0:	4b22      	ldr	r3, [pc, #136]	; (800063c <clock_PLL+0x174>)
 80005b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80005b4:	f043 0305 	orr.w	r3, r3, #5
 80005b8:	6313      	str	r3, [r2, #48]	; 0x30
 80005ba:	4a23      	ldr	r2, [pc, #140]	; (8000648 <clock_PLL+0x180>)
 80005bc:	4b22      	ldr	r3, [pc, #136]	; (8000648 <clock_PLL+0x180>)
 80005be:	681b      	ldr	r3, [r3, #0]
 80005c0:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 80005c4:	6013      	str	r3, [r2, #0]
 80005c6:	4a20      	ldr	r2, [pc, #128]	; (8000648 <clock_PLL+0x180>)
 80005c8:	4b1f      	ldr	r3, [pc, #124]	; (8000648 <clock_PLL+0x180>)
 80005ca:	681b      	ldr	r3, [r3, #0]
 80005cc:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80005d0:	6013      	str	r3, [r2, #0]
 80005d2:	4a1e      	ldr	r2, [pc, #120]	; (800064c <clock_PLL+0x184>)
 80005d4:	4b1d      	ldr	r3, [pc, #116]	; (800064c <clock_PLL+0x184>)
 80005d6:	681b      	ldr	r3, [r3, #0]
 80005d8:	f423 2340 	bic.w	r3, r3, #786432	; 0xc0000
 80005dc:	6013      	str	r3, [r2, #0]
 80005de:	4a1b      	ldr	r2, [pc, #108]	; (800064c <clock_PLL+0x184>)
 80005e0:	4b1a      	ldr	r3, [pc, #104]	; (800064c <clock_PLL+0x184>)
 80005e2:	681b      	ldr	r3, [r3, #0]
 80005e4:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 80005e8:	6013      	str	r3, [r2, #0]
 80005ea:	4a17      	ldr	r2, [pc, #92]	; (8000648 <clock_PLL+0x180>)
 80005ec:	4b16      	ldr	r3, [pc, #88]	; (8000648 <clock_PLL+0x180>)
 80005ee:	689b      	ldr	r3, [r3, #8]
 80005f0:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 80005f4:	6093      	str	r3, [r2, #8]
 80005f6:	4a15      	ldr	r2, [pc, #84]	; (800064c <clock_PLL+0x184>)
 80005f8:	4b14      	ldr	r3, [pc, #80]	; (800064c <clock_PLL+0x184>)
 80005fa:	689b      	ldr	r3, [r3, #8]
 80005fc:	f443 2340 	orr.w	r3, r3, #786432	; 0xc0000
 8000600:	6093      	str	r3, [r2, #8]
 8000602:	4a0e      	ldr	r2, [pc, #56]	; (800063c <clock_PLL+0x174>)
 8000604:	4b0d      	ldr	r3, [pc, #52]	; (800063c <clock_PLL+0x174>)
 8000606:	689b      	ldr	r3, [r3, #8]
 8000608:	f423 03c0 	bic.w	r3, r3, #6291456	; 0x600000
 800060c:	6093      	str	r3, [r2, #8]
 800060e:	4a0b      	ldr	r2, [pc, #44]	; (800063c <clock_PLL+0x174>)
 8000610:	4b0a      	ldr	r3, [pc, #40]	; (800063c <clock_PLL+0x174>)
 8000612:	689b      	ldr	r3, [r3, #8]
 8000614:	f443 03c0 	orr.w	r3, r3, #6291456	; 0x600000
 8000618:	6093      	str	r3, [r2, #8]
 800061a:	4a08      	ldr	r2, [pc, #32]	; (800063c <clock_PLL+0x174>)
 800061c:	4b07      	ldr	r3, [pc, #28]	; (800063c <clock_PLL+0x174>)
 800061e:	689b      	ldr	r3, [r3, #8]
 8000620:	f023 537c 	bic.w	r3, r3, #1056964608	; 0x3f000000
 8000624:	6093      	str	r3, [r2, #8]
 8000626:	4a05      	ldr	r2, [pc, #20]	; (800063c <clock_PLL+0x174>)
 8000628:	4b04      	ldr	r3, [pc, #16]	; (800063c <clock_PLL+0x174>)
 800062a:	689b      	ldr	r3, [r3, #8]
 800062c:	f043 5358 	orr.w	r3, r3, #905969664	; 0x36000000
 8000630:	6093      	str	r3, [r2, #8]
 8000632:	bf00      	nop
 8000634:	46bd      	mov	sp, r7
 8000636:	bc80      	pop	{r7}
 8000638:	4770      	bx	lr
 800063a:	bf00      	nop
 800063c:	40023800 	.word	0x40023800
 8000640:	f0fc8000 	.word	0xf0fc8000
 8000644:	40023c00 	.word	0x40023c00
 8000648:	40020000 	.word	0x40020000
 800064c:	40020800 	.word	0x40020800

08000650 <clock_HSE>:
 8000650:	b480      	push	{r7}
 8000652:	af00      	add	r7, sp, #0
 8000654:	4a2c      	ldr	r2, [pc, #176]	; (8000708 <clock_HSE+0xb8>)
 8000656:	4b2c      	ldr	r3, [pc, #176]	; (8000708 <clock_HSE+0xb8>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800065e:	6013      	str	r3, [r2, #0]
 8000660:	bf00      	nop
 8000662:	4b29      	ldr	r3, [pc, #164]	; (8000708 <clock_HSE+0xb8>)
 8000664:	681b      	ldr	r3, [r3, #0]
 8000666:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800066a:	2b00      	cmp	r3, #0
 800066c:	d0f9      	beq.n	8000662 <clock_HSE+0x12>
 800066e:	4a26      	ldr	r2, [pc, #152]	; (8000708 <clock_HSE+0xb8>)
 8000670:	4b25      	ldr	r3, [pc, #148]	; (8000708 <clock_HSE+0xb8>)
 8000672:	689b      	ldr	r3, [r3, #8]
 8000674:	f023 0303 	bic.w	r3, r3, #3
 8000678:	6093      	str	r3, [r2, #8]
 800067a:	4a23      	ldr	r2, [pc, #140]	; (8000708 <clock_HSE+0xb8>)
 800067c:	4b22      	ldr	r3, [pc, #136]	; (8000708 <clock_HSE+0xb8>)
 800067e:	689b      	ldr	r3, [r3, #8]
 8000680:	f043 0301 	orr.w	r3, r3, #1
 8000684:	6093      	str	r3, [r2, #8]
 8000686:	bf00      	nop
 8000688:	4b1f      	ldr	r3, [pc, #124]	; (8000708 <clock_HSE+0xb8>)
 800068a:	689b      	ldr	r3, [r3, #8]
 800068c:	f003 0304 	and.w	r3, r3, #4
 8000690:	2b00      	cmp	r3, #0
 8000692:	d0f9      	beq.n	8000688 <clock_HSE+0x38>
 8000694:	4a1c      	ldr	r2, [pc, #112]	; (8000708 <clock_HSE+0xb8>)
 8000696:	4b1c      	ldr	r3, [pc, #112]	; (8000708 <clock_HSE+0xb8>)
 8000698:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800069a:	f043 0305 	orr.w	r3, r3, #5
 800069e:	6313      	str	r3, [r2, #48]	; 0x30
 80006a0:	4a1a      	ldr	r2, [pc, #104]	; (800070c <clock_HSE+0xbc>)
 80006a2:	4b1a      	ldr	r3, [pc, #104]	; (800070c <clock_HSE+0xbc>)
 80006a4:	681b      	ldr	r3, [r3, #0]
 80006a6:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 80006aa:	6013      	str	r3, [r2, #0]
 80006ac:	4a17      	ldr	r2, [pc, #92]	; (800070c <clock_HSE+0xbc>)
 80006ae:	4b17      	ldr	r3, [pc, #92]	; (800070c <clock_HSE+0xbc>)
 80006b0:	681b      	ldr	r3, [r3, #0]
 80006b2:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80006b6:	6013      	str	r3, [r2, #0]
 80006b8:	4a15      	ldr	r2, [pc, #84]	; (8000710 <clock_HSE+0xc0>)
 80006ba:	4b15      	ldr	r3, [pc, #84]	; (8000710 <clock_HSE+0xc0>)
 80006bc:	681b      	ldr	r3, [r3, #0]
 80006be:	f423 2340 	bic.w	r3, r3, #786432	; 0xc0000
 80006c2:	6013      	str	r3, [r2, #0]
 80006c4:	4a12      	ldr	r2, [pc, #72]	; (8000710 <clock_HSE+0xc0>)
 80006c6:	4b12      	ldr	r3, [pc, #72]	; (8000710 <clock_HSE+0xc0>)
 80006c8:	681b      	ldr	r3, [r3, #0]
 80006ca:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 80006ce:	6013      	str	r3, [r2, #0]
 80006d0:	4a0e      	ldr	r2, [pc, #56]	; (800070c <clock_HSE+0xbc>)
 80006d2:	4b0e      	ldr	r3, [pc, #56]	; (800070c <clock_HSE+0xbc>)
 80006d4:	689b      	ldr	r3, [r3, #8]
 80006d6:	f443 3340 	orr.w	r3, r3, #196608	; 0x30000
 80006da:	6093      	str	r3, [r2, #8]
 80006dc:	4a0c      	ldr	r2, [pc, #48]	; (8000710 <clock_HSE+0xc0>)
 80006de:	4b0c      	ldr	r3, [pc, #48]	; (8000710 <clock_HSE+0xc0>)
 80006e0:	689b      	ldr	r3, [r3, #8]
 80006e2:	f443 2340 	orr.w	r3, r3, #786432	; 0xc0000
 80006e6:	6093      	str	r3, [r2, #8]
 80006e8:	4a07      	ldr	r2, [pc, #28]	; (8000708 <clock_HSE+0xb8>)
 80006ea:	4b07      	ldr	r3, [pc, #28]	; (8000708 <clock_HSE+0xb8>)
 80006ec:	689b      	ldr	r3, [r3, #8]
 80006ee:	f423 03c0 	bic.w	r3, r3, #6291456	; 0x600000
 80006f2:	6093      	str	r3, [r2, #8]
 80006f4:	4a04      	ldr	r2, [pc, #16]	; (8000708 <clock_HSE+0xb8>)
 80006f6:	4b04      	ldr	r3, [pc, #16]	; (8000708 <clock_HSE+0xb8>)
 80006f8:	689b      	ldr	r3, [r3, #8]
 80006fa:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 80006fe:	6093      	str	r3, [r2, #8]
 8000700:	bf00      	nop
 8000702:	46bd      	mov	sp, r7
 8000704:	bc80      	pop	{r7}
 8000706:	4770      	bx	lr
 8000708:	40023800 	.word	0x40023800
 800070c:	40020000 	.word	0x40020000
 8000710:	40020800 	.word	0x40020800

08000714 <systimer_init>:
 8000714:	b480      	push	{r7}
 8000716:	af00      	add	r7, sp, #0
 8000718:	4b06      	ldr	r3, [pc, #24]	; (8000734 <systimer_init+0x20>)
 800071a:	f245 2207 	movw	r2, #20999	; 0x5207
 800071e:	605a      	str	r2, [r3, #4]
 8000720:	4b04      	ldr	r3, [pc, #16]	; (8000734 <systimer_init+0x20>)
 8000722:	2200      	movs	r2, #0
 8000724:	609a      	str	r2, [r3, #8]
 8000726:	4b03      	ldr	r3, [pc, #12]	; (8000734 <systimer_init+0x20>)
 8000728:	2203      	movs	r2, #3
 800072a:	601a      	str	r2, [r3, #0]
 800072c:	bf00      	nop
 800072e:	46bd      	mov	sp, r7
 8000730:	bc80      	pop	{r7}
 8000732:	4770      	bx	lr
 8000734:	e000e010 	.word	0xe000e010

08000738 <system_init>:
 8000738:	b580      	push	{r7, lr}
 800073a:	af00      	add	r7, sp, #0
 800073c:	f7ff fec4 	bl	80004c8 <clock_PLL>
 8000740:	f7ff ffe8 	bl	8000714 <systimer_init>
 8000744:	4a36      	ldr	r2, [pc, #216]	; (8000820 <system_init+0xe8>)
 8000746:	4b36      	ldr	r3, [pc, #216]	; (8000820 <system_init+0xe8>)
 8000748:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800074a:	f043 0301 	orr.w	r3, r3, #1
 800074e:	6313      	str	r3, [r2, #48]	; 0x30
 8000750:	4a34      	ldr	r2, [pc, #208]	; (8000824 <system_init+0xec>)
 8000752:	4b34      	ldr	r3, [pc, #208]	; (8000824 <system_init+0xec>)
 8000754:	681b      	ldr	r3, [r3, #0]
 8000756:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 800075a:	6013      	str	r3, [r2, #0]
 800075c:	4a31      	ldr	r2, [pc, #196]	; (8000824 <system_init+0xec>)
 800075e:	4b31      	ldr	r3, [pc, #196]	; (8000824 <system_init+0xec>)
 8000760:	681b      	ldr	r3, [r3, #0]
 8000762:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000766:	6013      	str	r3, [r2, #0]
 8000768:	4a2d      	ldr	r2, [pc, #180]	; (8000820 <system_init+0xe8>)
 800076a:	4b2d      	ldr	r3, [pc, #180]	; (8000820 <system_init+0xe8>)
 800076c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800076e:	f043 0310 	orr.w	r3, r3, #16
 8000772:	6313      	str	r3, [r2, #48]	; 0x30
 8000774:	4a2c      	ldr	r2, [pc, #176]	; (8000828 <system_init+0xf0>)
 8000776:	4b2c      	ldr	r3, [pc, #176]	; (8000828 <system_init+0xf0>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	f423 237c 	bic.w	r3, r3, #1032192	; 0xfc000
 800077e:	6013      	str	r3, [r2, #0]
 8000780:	4a29      	ldr	r2, [pc, #164]	; (8000828 <system_init+0xf0>)
 8000782:	4b29      	ldr	r3, [pc, #164]	; (8000828 <system_init+0xf0>)
 8000784:	681b      	ldr	r3, [r3, #0]
 8000786:	f443 23a8 	orr.w	r3, r3, #344064	; 0x54000
 800078a:	6013      	str	r3, [r2, #0]
 800078c:	4a24      	ldr	r2, [pc, #144]	; (8000820 <system_init+0xe8>)
 800078e:	4b24      	ldr	r3, [pc, #144]	; (8000820 <system_init+0xe8>)
 8000790:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000792:	f043 0308 	orr.w	r3, r3, #8
 8000796:	6313      	str	r3, [r2, #48]	; 0x30
 8000798:	4a24      	ldr	r2, [pc, #144]	; (800082c <system_init+0xf4>)
 800079a:	4b24      	ldr	r3, [pc, #144]	; (800082c <system_init+0xf4>)
 800079c:	681b      	ldr	r3, [r3, #0]
 800079e:	0c1b      	lsrs	r3, r3, #16
 80007a0:	041b      	lsls	r3, r3, #16
 80007a2:	6013      	str	r3, [r2, #0]
 80007a4:	4a21      	ldr	r2, [pc, #132]	; (800082c <system_init+0xf4>)
 80007a6:	4b21      	ldr	r3, [pc, #132]	; (800082c <system_init+0xf4>)
 80007a8:	681b      	ldr	r3, [r3, #0]
 80007aa:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 80007ae:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 80007b2:	6013      	str	r3, [r2, #0]
 80007b4:	2000      	movs	r0, #0
 80007b6:	f7ff fe39 	bl	800042c <NVIC_SetPriorityGrouping>
 80007ba:	2106      	movs	r1, #6
 80007bc:	2034      	movs	r0, #52	; 0x34
 80007be:	f7ff fe59 	bl	8000474 <NVIC_SetPriority>
 80007c2:	2105      	movs	r1, #5
 80007c4:	2027      	movs	r0, #39	; 0x27
 80007c6:	f7ff fe55 	bl	8000474 <NVIC_SetPriority>
 80007ca:	2104      	movs	r1, #4
 80007cc:	201f      	movs	r0, #31
 80007ce:	f7ff fe51 	bl	8000474 <NVIC_SetPriority>
 80007d2:	2104      	movs	r1, #4
 80007d4:	2020      	movs	r0, #32
 80007d6:	f7ff fe4d 	bl	8000474 <NVIC_SetPriority>
 80007da:	2103      	movs	r1, #3
 80007dc:	200f      	movs	r0, #15
 80007de:	f7ff fe49 	bl	8000474 <NVIC_SetPriority>
 80007e2:	2103      	movs	r1, #3
 80007e4:	2023      	movs	r0, #35	; 0x23
 80007e6:	f7ff fe45 	bl	8000474 <NVIC_SetPriority>
 80007ea:	2102      	movs	r1, #2
 80007ec:	201d      	movs	r0, #29
 80007ee:	f7ff fe41 	bl	8000474 <NVIC_SetPriority>
 80007f2:	2101      	movs	r1, #1
 80007f4:	f04f 30ff 	mov.w	r0, #4294967295
 80007f8:	f7ff fe3c 	bl	8000474 <NVIC_SetPriority>
 80007fc:	2100      	movs	r1, #0
 80007fe:	2012      	movs	r0, #18
 8000800:	f7ff fe38 	bl	8000474 <NVIC_SetPriority>
 8000804:	4b0a      	ldr	r3, [pc, #40]	; (8000830 <system_init+0xf8>)
 8000806:	f245 5255 	movw	r2, #21845	; 0x5555
 800080a:	601a      	str	r2, [r3, #0]
 800080c:	4b08      	ldr	r3, [pc, #32]	; (8000830 <system_init+0xf8>)
 800080e:	220a      	movs	r2, #10
 8000810:	609a      	str	r2, [r3, #8]
 8000812:	4b07      	ldr	r3, [pc, #28]	; (8000830 <system_init+0xf8>)
 8000814:	f64c 42cc 	movw	r2, #52428	; 0xcccc
 8000818:	601a      	str	r2, [r3, #0]
 800081a:	bf00      	nop
 800081c:	bd80      	pop	{r7, pc}
 800081e:	bf00      	nop
 8000820:	40023800 	.word	0x40023800
 8000824:	40020000 	.word	0x40020000
 8000828:	40021000 	.word	0x40021000
 800082c:	40020c00 	.word	0x40020c00
 8000830:	40003000 	.word	0x40003000

08000834 <sleep>:
 8000834:	b480      	push	{r7}
 8000836:	b085      	sub	sp, #20
 8000838:	af00      	add	r7, sp, #0
 800083a:	6078      	str	r0, [r7, #4]
 800083c:	4b07      	ldr	r3, [pc, #28]	; (800085c <sleep+0x28>)
 800083e:	681a      	ldr	r2, [r3, #0]
 8000840:	687b      	ldr	r3, [r7, #4]
 8000842:	4413      	add	r3, r2
 8000844:	60fb      	str	r3, [r7, #12]
 8000846:	bf00      	nop
 8000848:	4b04      	ldr	r3, [pc, #16]	; (800085c <sleep+0x28>)
 800084a:	681a      	ldr	r2, [r3, #0]
 800084c:	68fb      	ldr	r3, [r7, #12]
 800084e:	429a      	cmp	r2, r3
 8000850:	d3fa      	bcc.n	8000848 <sleep+0x14>
 8000852:	bf00      	nop
 8000854:	3714      	adds	r7, #20
 8000856:	46bd      	mov	sp, r7
 8000858:	bc80      	pop	{r7}
 800085a:	4770      	bx	lr
 800085c:	20000240 	.word	0x20000240

08000860 <SysTick_Handler>:
 8000860:	b480      	push	{r7}
 8000862:	af00      	add	r7, sp, #0
 8000864:	4b04      	ldr	r3, [pc, #16]	; (8000878 <SysTick_Handler+0x18>)
 8000866:	681b      	ldr	r3, [r3, #0]
 8000868:	3301      	adds	r3, #1
 800086a:	4a03      	ldr	r2, [pc, #12]	; (8000878 <SysTick_Handler+0x18>)
 800086c:	6013      	str	r3, [r2, #0]
 800086e:	bf00      	nop
 8000870:	46bd      	mov	sp, r7
 8000872:	bc80      	pop	{r7}
 8000874:	4770      	bx	lr
 8000876:	bf00      	nop
 8000878:	20000240 	.word	0x20000240

0800087c <handler_reset>:
 800087c:	b580      	push	{r7, lr}
 800087e:	b082      	sub	sp, #8
 8000880:	af00      	add	r7, sp, #0
 8000882:	4b11      	ldr	r3, [pc, #68]	; (80008c8 <handler_reset+0x4c>)
 8000884:	607b      	str	r3, [r7, #4]
 8000886:	4b11      	ldr	r3, [pc, #68]	; (80008cc <handler_reset+0x50>)
 8000888:	603b      	str	r3, [r7, #0]
 800088a:	e007      	b.n	800089c <handler_reset+0x20>
 800088c:	683b      	ldr	r3, [r7, #0]
 800088e:	1d1a      	adds	r2, r3, #4
 8000890:	603a      	str	r2, [r7, #0]
 8000892:	687a      	ldr	r2, [r7, #4]
 8000894:	1d11      	adds	r1, r2, #4
 8000896:	6079      	str	r1, [r7, #4]
 8000898:	6812      	ldr	r2, [r2, #0]
 800089a:	601a      	str	r2, [r3, #0]
 800089c:	683b      	ldr	r3, [r7, #0]
 800089e:	4a0c      	ldr	r2, [pc, #48]	; (80008d0 <handler_reset+0x54>)
 80008a0:	4293      	cmp	r3, r2
 80008a2:	d3f3      	bcc.n	800088c <handler_reset+0x10>
 80008a4:	4b0b      	ldr	r3, [pc, #44]	; (80008d4 <handler_reset+0x58>)
 80008a6:	603b      	str	r3, [r7, #0]
 80008a8:	e004      	b.n	80008b4 <handler_reset+0x38>
 80008aa:	683b      	ldr	r3, [r7, #0]
 80008ac:	1d1a      	adds	r2, r3, #4
 80008ae:	603a      	str	r2, [r7, #0]
 80008b0:	2200      	movs	r2, #0
 80008b2:	601a      	str	r2, [r3, #0]
 80008b4:	683b      	ldr	r3, [r7, #0]
 80008b6:	4a08      	ldr	r2, [pc, #32]	; (80008d8 <handler_reset+0x5c>)
 80008b8:	4293      	cmp	r3, r2
 80008ba:	d3f6      	bcc.n	80008aa <handler_reset+0x2e>
 80008bc:	f7ff fd54 	bl	8000368 <main>
 80008c0:	bf00      	nop
 80008c2:	3708      	adds	r7, #8
 80008c4:	46bd      	mov	sp, r7
 80008c6:	bd80      	pop	{r7, pc}
 80008c8:	0800475c 	.word	0x0800475c
 80008cc:	20000000 	.word	0x20000000
 80008d0:	20000220 	.word	0x20000220
 80008d4:	20000220 	.word	0x20000220
 80008d8:	20002cd4 	.word	0x20002cd4

080008dc <default_handler>:
 80008dc:	b480      	push	{r7}
 80008de:	af00      	add	r7, sp, #0
 80008e0:	e7fe      	b.n	80008e0 <default_handler+0x4>
 80008e2:	bf00      	nop

080008e4 <NVIC_EnableIRQ>:
 80008e4:	b480      	push	{r7}
 80008e6:	b083      	sub	sp, #12
 80008e8:	af00      	add	r7, sp, #0
 80008ea:	4603      	mov	r3, r0
 80008ec:	71fb      	strb	r3, [r7, #7]
 80008ee:	4908      	ldr	r1, [pc, #32]	; (8000910 <NVIC_EnableIRQ+0x2c>)
 80008f0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80008f4:	095b      	lsrs	r3, r3, #5
 80008f6:	79fa      	ldrb	r2, [r7, #7]
 80008f8:	f002 021f 	and.w	r2, r2, #31
 80008fc:	2001      	movs	r0, #1
 80008fe:	fa00 f202 	lsl.w	r2, r0, r2
 8000902:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000906:	bf00      	nop
 8000908:	370c      	adds	r7, #12
 800090a:	46bd      	mov	sp, r7
 800090c:	bc80      	pop	{r7}
 800090e:	4770      	bx	lr
 8000910:	e000e100 	.word	0xe000e100

08000914 <uart_init>:
 8000914:	b580      	push	{r7, lr}
 8000916:	af00      	add	r7, sp, #0
 8000918:	4a34      	ldr	r2, [pc, #208]	; (80009ec <uart_init+0xd8>)
 800091a:	4b34      	ldr	r3, [pc, #208]	; (80009ec <uart_init+0xd8>)
 800091c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800091e:	f443 2300 	orr.w	r3, r3, #524288	; 0x80000
 8000922:	6413      	str	r3, [r2, #64]	; 0x40
 8000924:	4a32      	ldr	r2, [pc, #200]	; (80009f0 <uart_init+0xdc>)
 8000926:	4b32      	ldr	r3, [pc, #200]	; (80009f0 <uart_init+0xdc>)
 8000928:	899b      	ldrh	r3, [r3, #12]
 800092a:	b29b      	uxth	r3, r3
 800092c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000930:	b29b      	uxth	r3, r3
 8000932:	8193      	strh	r3, [r2, #12]
 8000934:	4a2e      	ldr	r2, [pc, #184]	; (80009f0 <uart_init+0xdc>)
 8000936:	4b2e      	ldr	r3, [pc, #184]	; (80009f0 <uart_init+0xdc>)
 8000938:	899b      	ldrh	r3, [r3, #12]
 800093a:	b29b      	uxth	r3, r3
 800093c:	f043 0304 	orr.w	r3, r3, #4
 8000940:	b29b      	uxth	r3, r3
 8000942:	8193      	strh	r3, [r2, #12]
 8000944:	4a2a      	ldr	r2, [pc, #168]	; (80009f0 <uart_init+0xdc>)
 8000946:	4b2a      	ldr	r3, [pc, #168]	; (80009f0 <uart_init+0xdc>)
 8000948:	899b      	ldrh	r3, [r3, #12]
 800094a:	b29b      	uxth	r3, r3
 800094c:	f043 0320 	orr.w	r3, r3, #32
 8000950:	b29b      	uxth	r3, r3
 8000952:	8193      	strh	r3, [r2, #12]
 8000954:	4a26      	ldr	r2, [pc, #152]	; (80009f0 <uart_init+0xdc>)
 8000956:	4b26      	ldr	r3, [pc, #152]	; (80009f0 <uart_init+0xdc>)
 8000958:	899b      	ldrh	r3, [r3, #12]
 800095a:	b29b      	uxth	r3, r3
 800095c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000960:	b29b      	uxth	r3, r3
 8000962:	8193      	strh	r3, [r2, #12]
 8000964:	2034      	movs	r0, #52	; 0x34
 8000966:	f7ff ffbd 	bl	80008e4 <NVIC_EnableIRQ>
 800096a:	4b21      	ldr	r3, [pc, #132]	; (80009f0 <uart_init+0xdc>)
 800096c:	891b      	ldrh	r3, [r3, #8]
 800096e:	4b20      	ldr	r3, [pc, #128]	; (80009f0 <uart_init+0xdc>)
 8000970:	2200      	movs	r2, #0
 8000972:	811a      	strh	r2, [r3, #8]
 8000974:	4a1e      	ldr	r2, [pc, #120]	; (80009f0 <uart_init+0xdc>)
 8000976:	4b1e      	ldr	r3, [pc, #120]	; (80009f0 <uart_init+0xdc>)
 8000978:	891b      	ldrh	r3, [r3, #8]
 800097a:	b29b      	uxth	r3, r3
 800097c:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8000980:	f043 0301 	orr.w	r3, r3, #1
 8000984:	b29b      	uxth	r3, r3
 8000986:	8113      	strh	r3, [r2, #8]
 8000988:	4a18      	ldr	r2, [pc, #96]	; (80009ec <uart_init+0xd8>)
 800098a:	4b18      	ldr	r3, [pc, #96]	; (80009ec <uart_init+0xd8>)
 800098c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800098e:	f043 0304 	orr.w	r3, r3, #4
 8000992:	6313      	str	r3, [r2, #48]	; 0x30
 8000994:	4a17      	ldr	r2, [pc, #92]	; (80009f4 <uart_init+0xe0>)
 8000996:	4b17      	ldr	r3, [pc, #92]	; (80009f4 <uart_init+0xe0>)
 8000998:	681b      	ldr	r3, [r3, #0]
 800099a:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800099e:	6013      	str	r3, [r2, #0]
 80009a0:	4a14      	ldr	r2, [pc, #80]	; (80009f4 <uart_init+0xe0>)
 80009a2:	4b14      	ldr	r3, [pc, #80]	; (80009f4 <uart_init+0xe0>)
 80009a4:	681b      	ldr	r3, [r3, #0]
 80009a6:	f443 0320 	orr.w	r3, r3, #10485760	; 0xa00000
 80009aa:	6013      	str	r3, [r2, #0]
 80009ac:	4a11      	ldr	r2, [pc, #68]	; (80009f4 <uart_init+0xe0>)
 80009ae:	4b11      	ldr	r3, [pc, #68]	; (80009f4 <uart_init+0xe0>)
 80009b0:	689b      	ldr	r3, [r3, #8]
 80009b2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80009b6:	6093      	str	r3, [r2, #8]
 80009b8:	4a0e      	ldr	r2, [pc, #56]	; (80009f4 <uart_init+0xe0>)
 80009ba:	4b0e      	ldr	r3, [pc, #56]	; (80009f4 <uart_init+0xe0>)
 80009bc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009be:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80009c2:	6253      	str	r3, [r2, #36]	; 0x24
 80009c4:	4a0b      	ldr	r2, [pc, #44]	; (80009f4 <uart_init+0xe0>)
 80009c6:	4b0b      	ldr	r3, [pc, #44]	; (80009f4 <uart_init+0xe0>)
 80009c8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009ca:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80009ce:	6253      	str	r3, [r2, #36]	; 0x24
 80009d0:	4a08      	ldr	r2, [pc, #32]	; (80009f4 <uart_init+0xe0>)
 80009d2:	4b08      	ldr	r3, [pc, #32]	; (80009f4 <uart_init+0xe0>)
 80009d4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009d6:	f423 4370 	bic.w	r3, r3, #61440	; 0xf000
 80009da:	6253      	str	r3, [r2, #36]	; 0x24
 80009dc:	4a05      	ldr	r2, [pc, #20]	; (80009f4 <uart_init+0xe0>)
 80009de:	4b05      	ldr	r3, [pc, #20]	; (80009f4 <uart_init+0xe0>)
 80009e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80009e2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80009e6:	6253      	str	r3, [r2, #36]	; 0x24
 80009e8:	bf00      	nop
 80009ea:	bd80      	pop	{r7, pc}
 80009ec:	40023800 	.word	0x40023800
 80009f0:	40004c00 	.word	0x40004c00
 80009f4:	40020800 	.word	0x40020800

080009f8 <uart_putch>:
 80009f8:	b480      	push	{r7}
 80009fa:	b083      	sub	sp, #12
 80009fc:	af00      	add	r7, sp, #0
 80009fe:	4603      	mov	r3, r0
 8000a00:	71fb      	strb	r3, [r7, #7]
 8000a02:	4b13      	ldr	r3, [pc, #76]	; (8000a50 <uart_putch+0x58>)
 8000a04:	681a      	ldr	r2, [r3, #0]
 8000a06:	4b13      	ldr	r3, [pc, #76]	; (8000a54 <uart_putch+0x5c>)
 8000a08:	681b      	ldr	r3, [r3, #0]
 8000a0a:	429a      	cmp	r2, r3
 8000a0c:	d107      	bne.n	8000a1e <uart_putch+0x26>
 8000a0e:	4a12      	ldr	r2, [pc, #72]	; (8000a58 <uart_putch+0x60>)
 8000a10:	4b11      	ldr	r3, [pc, #68]	; (8000a58 <uart_putch+0x60>)
 8000a12:	899b      	ldrh	r3, [r3, #12]
 8000a14:	b29b      	uxth	r3, r3
 8000a16:	f043 0308 	orr.w	r3, r3, #8
 8000a1a:	b29b      	uxth	r3, r3
 8000a1c:	8193      	strh	r3, [r2, #12]
 8000a1e:	4b0c      	ldr	r3, [pc, #48]	; (8000a50 <uart_putch+0x58>)
 8000a20:	681b      	ldr	r3, [r3, #0]
 8000a22:	490e      	ldr	r1, [pc, #56]	; (8000a5c <uart_putch+0x64>)
 8000a24:	79fa      	ldrb	r2, [r7, #7]
 8000a26:	54ca      	strb	r2, [r1, r3]
 8000a28:	4b09      	ldr	r3, [pc, #36]	; (8000a50 <uart_putch+0x58>)
 8000a2a:	681b      	ldr	r3, [r3, #0]
 8000a2c:	3301      	adds	r3, #1
 8000a2e:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000a32:	4a07      	ldr	r2, [pc, #28]	; (8000a50 <uart_putch+0x58>)
 8000a34:	6013      	str	r3, [r2, #0]
 8000a36:	4a08      	ldr	r2, [pc, #32]	; (8000a58 <uart_putch+0x60>)
 8000a38:	4b07      	ldr	r3, [pc, #28]	; (8000a58 <uart_putch+0x60>)
 8000a3a:	899b      	ldrh	r3, [r3, #12]
 8000a3c:	b29b      	uxth	r3, r3
 8000a3e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000a42:	b29b      	uxth	r3, r3
 8000a44:	8193      	strh	r3, [r2, #12]
 8000a46:	bf00      	nop
 8000a48:	370c      	adds	r7, #12
 8000a4a:	46bd      	mov	sp, r7
 8000a4c:	bc80      	pop	{r7}
 8000a4e:	4770      	bx	lr
 8000a50:	20000648 	.word	0x20000648
 8000a54:	20000644 	.word	0x20000644
 8000a58:	40004c00 	.word	0x40004c00
 8000a5c:	20000244 	.word	0x20000244

08000a60 <uart_send>:
 8000a60:	b480      	push	{r7}
 8000a62:	b085      	sub	sp, #20
 8000a64:	af00      	add	r7, sp, #0
 8000a66:	6078      	str	r0, [r7, #4]
 8000a68:	6039      	str	r1, [r7, #0]
 8000a6a:	4b1f      	ldr	r3, [pc, #124]	; (8000ae8 <uart_send+0x88>)
 8000a6c:	681a      	ldr	r2, [r3, #0]
 8000a6e:	4b1f      	ldr	r3, [pc, #124]	; (8000aec <uart_send+0x8c>)
 8000a70:	681b      	ldr	r3, [r3, #0]
 8000a72:	429a      	cmp	r2, r3
 8000a74:	d107      	bne.n	8000a86 <uart_send+0x26>
 8000a76:	4a1e      	ldr	r2, [pc, #120]	; (8000af0 <uart_send+0x90>)
 8000a78:	4b1d      	ldr	r3, [pc, #116]	; (8000af0 <uart_send+0x90>)
 8000a7a:	899b      	ldrh	r3, [r3, #12]
 8000a7c:	b29b      	uxth	r3, r3
 8000a7e:	f043 0308 	orr.w	r3, r3, #8
 8000a82:	b29b      	uxth	r3, r3
 8000a84:	8193      	strh	r3, [r2, #12]
 8000a86:	2300      	movs	r3, #0
 8000a88:	60fb      	str	r3, [r7, #12]
 8000a8a:	e01b      	b.n	8000ac4 <uart_send+0x64>
 8000a8c:	4b16      	ldr	r3, [pc, #88]	; (8000ae8 <uart_send+0x88>)
 8000a8e:	681b      	ldr	r3, [r3, #0]
 8000a90:	68fa      	ldr	r2, [r7, #12]
 8000a92:	6879      	ldr	r1, [r7, #4]
 8000a94:	440a      	add	r2, r1
 8000a96:	7811      	ldrb	r1, [r2, #0]
 8000a98:	4a16      	ldr	r2, [pc, #88]	; (8000af4 <uart_send+0x94>)
 8000a9a:	54d1      	strb	r1, [r2, r3]
 8000a9c:	4b12      	ldr	r3, [pc, #72]	; (8000ae8 <uart_send+0x88>)
 8000a9e:	681b      	ldr	r3, [r3, #0]
 8000aa0:	3301      	adds	r3, #1
 8000aa2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000aa6:	4a10      	ldr	r2, [pc, #64]	; (8000ae8 <uart_send+0x88>)
 8000aa8:	6013      	str	r3, [r2, #0]
 8000aaa:	4b0f      	ldr	r3, [pc, #60]	; (8000ae8 <uart_send+0x88>)
 8000aac:	681a      	ldr	r2, [r3, #0]
 8000aae:	4b0f      	ldr	r3, [pc, #60]	; (8000aec <uart_send+0x8c>)
 8000ab0:	681b      	ldr	r3, [r3, #0]
 8000ab2:	429a      	cmp	r2, r3
 8000ab4:	d103      	bne.n	8000abe <uart_send+0x5e>
 8000ab6:	68fb      	ldr	r3, [r7, #12]
 8000ab8:	3301      	adds	r3, #1
 8000aba:	60fb      	str	r3, [r7, #12]
 8000abc:	e006      	b.n	8000acc <uart_send+0x6c>
 8000abe:	68fb      	ldr	r3, [r7, #12]
 8000ac0:	3301      	adds	r3, #1
 8000ac2:	60fb      	str	r3, [r7, #12]
 8000ac4:	68fa      	ldr	r2, [r7, #12]
 8000ac6:	683b      	ldr	r3, [r7, #0]
 8000ac8:	429a      	cmp	r2, r3
 8000aca:	dbdf      	blt.n	8000a8c <uart_send+0x2c>
 8000acc:	4a08      	ldr	r2, [pc, #32]	; (8000af0 <uart_send+0x90>)
 8000ace:	4b08      	ldr	r3, [pc, #32]	; (8000af0 <uart_send+0x90>)
 8000ad0:	899b      	ldrh	r3, [r3, #12]
 8000ad2:	b29b      	uxth	r3, r3
 8000ad4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000ad8:	b29b      	uxth	r3, r3
 8000ada:	8193      	strh	r3, [r2, #12]
 8000adc:	68fb      	ldr	r3, [r7, #12]
 8000ade:	4618      	mov	r0, r3
 8000ae0:	3714      	adds	r7, #20
 8000ae2:	46bd      	mov	sp, r7
 8000ae4:	bc80      	pop	{r7}
 8000ae6:	4770      	bx	lr
 8000ae8:	20000648 	.word	0x20000648
 8000aec:	20000644 	.word	0x20000644
 8000af0:	40004c00 	.word	0x40004c00
 8000af4:	20000244 	.word	0x20000244

08000af8 <uart_send_str>:
 8000af8:	b480      	push	{r7}
 8000afa:	b085      	sub	sp, #20
 8000afc:	af00      	add	r7, sp, #0
 8000afe:	6078      	str	r0, [r7, #4]
 8000b00:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000b04:	60bb      	str	r3, [r7, #8]
 8000b06:	4b24      	ldr	r3, [pc, #144]	; (8000b98 <uart_send_str+0xa0>)
 8000b08:	681a      	ldr	r2, [r3, #0]
 8000b0a:	4b24      	ldr	r3, [pc, #144]	; (8000b9c <uart_send_str+0xa4>)
 8000b0c:	681b      	ldr	r3, [r3, #0]
 8000b0e:	1ad3      	subs	r3, r2, r3
 8000b10:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000b14:	68ba      	ldr	r2, [r7, #8]
 8000b16:	1ad3      	subs	r3, r2, r3
 8000b18:	60bb      	str	r3, [r7, #8]
 8000b1a:	4b1f      	ldr	r3, [pc, #124]	; (8000b98 <uart_send_str+0xa0>)
 8000b1c:	681a      	ldr	r2, [r3, #0]
 8000b1e:	4b1f      	ldr	r3, [pc, #124]	; (8000b9c <uart_send_str+0xa4>)
 8000b20:	681b      	ldr	r3, [r3, #0]
 8000b22:	429a      	cmp	r2, r3
 8000b24:	d107      	bne.n	8000b36 <uart_send_str+0x3e>
 8000b26:	4a1e      	ldr	r2, [pc, #120]	; (8000ba0 <uart_send_str+0xa8>)
 8000b28:	4b1d      	ldr	r3, [pc, #116]	; (8000ba0 <uart_send_str+0xa8>)
 8000b2a:	899b      	ldrh	r3, [r3, #12]
 8000b2c:	b29b      	uxth	r3, r3
 8000b2e:	f043 0308 	orr.w	r3, r3, #8
 8000b32:	b29b      	uxth	r3, r3
 8000b34:	8193      	strh	r3, [r2, #12]
 8000b36:	2300      	movs	r3, #0
 8000b38:	60fb      	str	r3, [r7, #12]
 8000b3a:	e01b      	b.n	8000b74 <uart_send_str+0x7c>
 8000b3c:	68fb      	ldr	r3, [r7, #12]
 8000b3e:	687a      	ldr	r2, [r7, #4]
 8000b40:	4413      	add	r3, r2
 8000b42:	781b      	ldrb	r3, [r3, #0]
 8000b44:	2b00      	cmp	r3, #0
 8000b46:	d103      	bne.n	8000b50 <uart_send_str+0x58>
 8000b48:	68fb      	ldr	r3, [r7, #12]
 8000b4a:	3301      	adds	r3, #1
 8000b4c:	60fb      	str	r3, [r7, #12]
 8000b4e:	e015      	b.n	8000b7c <uart_send_str+0x84>
 8000b50:	4b11      	ldr	r3, [pc, #68]	; (8000b98 <uart_send_str+0xa0>)
 8000b52:	681b      	ldr	r3, [r3, #0]
 8000b54:	68fa      	ldr	r2, [r7, #12]
 8000b56:	6879      	ldr	r1, [r7, #4]
 8000b58:	440a      	add	r2, r1
 8000b5a:	7811      	ldrb	r1, [r2, #0]
 8000b5c:	4a11      	ldr	r2, [pc, #68]	; (8000ba4 <uart_send_str+0xac>)
 8000b5e:	54d1      	strb	r1, [r2, r3]
 8000b60:	4b0d      	ldr	r3, [pc, #52]	; (8000b98 <uart_send_str+0xa0>)
 8000b62:	681b      	ldr	r3, [r3, #0]
 8000b64:	3301      	adds	r3, #1
 8000b66:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000b6a:	4a0b      	ldr	r2, [pc, #44]	; (8000b98 <uart_send_str+0xa0>)
 8000b6c:	6013      	str	r3, [r2, #0]
 8000b6e:	68fb      	ldr	r3, [r7, #12]
 8000b70:	3301      	adds	r3, #1
 8000b72:	60fb      	str	r3, [r7, #12]
 8000b74:	68fa      	ldr	r2, [r7, #12]
 8000b76:	68bb      	ldr	r3, [r7, #8]
 8000b78:	429a      	cmp	r2, r3
 8000b7a:	dbdf      	blt.n	8000b3c <uart_send_str+0x44>
 8000b7c:	4a08      	ldr	r2, [pc, #32]	; (8000ba0 <uart_send_str+0xa8>)
 8000b7e:	4b08      	ldr	r3, [pc, #32]	; (8000ba0 <uart_send_str+0xa8>)
 8000b80:	899b      	ldrh	r3, [r3, #12]
 8000b82:	b29b      	uxth	r3, r3
 8000b84:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000b88:	b29b      	uxth	r3, r3
 8000b8a:	8193      	strh	r3, [r2, #12]
 8000b8c:	68fb      	ldr	r3, [r7, #12]
 8000b8e:	4618      	mov	r0, r3
 8000b90:	3714      	adds	r7, #20
 8000b92:	46bd      	mov	sp, r7
 8000b94:	bc80      	pop	{r7}
 8000b96:	4770      	bx	lr
 8000b98:	20000648 	.word	0x20000648
 8000b9c:	20000644 	.word	0x20000644
 8000ba0:	40004c00 	.word	0x40004c00
 8000ba4:	20000244 	.word	0x20000244

08000ba8 <uart_read>:
 8000ba8:	b480      	push	{r7}
 8000baa:	b085      	sub	sp, #20
 8000bac:	af00      	add	r7, sp, #0
 8000bae:	6078      	str	r0, [r7, #4]
 8000bb0:	6039      	str	r1, [r7, #0]
 8000bb2:	4b18      	ldr	r3, [pc, #96]	; (8000c14 <uart_read+0x6c>)
 8000bb4:	681a      	ldr	r2, [r3, #0]
 8000bb6:	4b18      	ldr	r3, [pc, #96]	; (8000c18 <uart_read+0x70>)
 8000bb8:	681b      	ldr	r3, [r3, #0]
 8000bba:	429a      	cmp	r2, r3
 8000bbc:	d101      	bne.n	8000bc2 <uart_read+0x1a>
 8000bbe:	2300      	movs	r3, #0
 8000bc0:	e023      	b.n	8000c0a <uart_read+0x62>
 8000bc2:	2300      	movs	r3, #0
 8000bc4:	60fb      	str	r3, [r7, #12]
 8000bc6:	e01b      	b.n	8000c00 <uart_read+0x58>
 8000bc8:	68fb      	ldr	r3, [r7, #12]
 8000bca:	687a      	ldr	r2, [r7, #4]
 8000bcc:	4413      	add	r3, r2
 8000bce:	4a11      	ldr	r2, [pc, #68]	; (8000c14 <uart_read+0x6c>)
 8000bd0:	6812      	ldr	r2, [r2, #0]
 8000bd2:	4912      	ldr	r1, [pc, #72]	; (8000c1c <uart_read+0x74>)
 8000bd4:	5c8a      	ldrb	r2, [r1, r2]
 8000bd6:	701a      	strb	r2, [r3, #0]
 8000bd8:	4b0e      	ldr	r3, [pc, #56]	; (8000c14 <uart_read+0x6c>)
 8000bda:	681b      	ldr	r3, [r3, #0]
 8000bdc:	3301      	adds	r3, #1
 8000bde:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000be2:	4a0c      	ldr	r2, [pc, #48]	; (8000c14 <uart_read+0x6c>)
 8000be4:	6013      	str	r3, [r2, #0]
 8000be6:	4b0b      	ldr	r3, [pc, #44]	; (8000c14 <uart_read+0x6c>)
 8000be8:	681a      	ldr	r2, [r3, #0]
 8000bea:	4b0b      	ldr	r3, [pc, #44]	; (8000c18 <uart_read+0x70>)
 8000bec:	681b      	ldr	r3, [r3, #0]
 8000bee:	429a      	cmp	r2, r3
 8000bf0:	d103      	bne.n	8000bfa <uart_read+0x52>
 8000bf2:	68fb      	ldr	r3, [r7, #12]
 8000bf4:	3301      	adds	r3, #1
 8000bf6:	60fb      	str	r3, [r7, #12]
 8000bf8:	e006      	b.n	8000c08 <uart_read+0x60>
 8000bfa:	68fb      	ldr	r3, [r7, #12]
 8000bfc:	3301      	adds	r3, #1
 8000bfe:	60fb      	str	r3, [r7, #12]
 8000c00:	68fa      	ldr	r2, [r7, #12]
 8000c02:	683b      	ldr	r3, [r7, #0]
 8000c04:	429a      	cmp	r2, r3
 8000c06:	dbdf      	blt.n	8000bc8 <uart_read+0x20>
 8000c08:	68fb      	ldr	r3, [r7, #12]
 8000c0a:	4618      	mov	r0, r3
 8000c0c:	3714      	adds	r7, #20
 8000c0e:	46bd      	mov	sp, r7
 8000c10:	bc80      	pop	{r7}
 8000c12:	4770      	bx	lr
 8000c14:	20000a50 	.word	0x20000a50
 8000c18:	20000a4c 	.word	0x20000a4c
 8000c1c:	2000064c 	.word	0x2000064c

08000c20 <UART4_IRQHandler>:
 8000c20:	b480      	push	{r7}
 8000c22:	af00      	add	r7, sp, #0
 8000c24:	4b1e      	ldr	r3, [pc, #120]	; (8000ca0 <UART4_IRQHandler+0x80>)
 8000c26:	881b      	ldrh	r3, [r3, #0]
 8000c28:	b29b      	uxth	r3, r3
 8000c2a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000c2e:	2b00      	cmp	r3, #0
 8000c30:	d01c      	beq.n	8000c6c <UART4_IRQHandler+0x4c>
 8000c32:	4b1c      	ldr	r3, [pc, #112]	; (8000ca4 <UART4_IRQHandler+0x84>)
 8000c34:	681a      	ldr	r2, [r3, #0]
 8000c36:	4b1c      	ldr	r3, [pc, #112]	; (8000ca8 <UART4_IRQHandler+0x88>)
 8000c38:	681b      	ldr	r3, [r3, #0]
 8000c3a:	429a      	cmp	r2, r3
 8000c3c:	d108      	bne.n	8000c50 <UART4_IRQHandler+0x30>
 8000c3e:	4a18      	ldr	r2, [pc, #96]	; (8000ca0 <UART4_IRQHandler+0x80>)
 8000c40:	4b17      	ldr	r3, [pc, #92]	; (8000ca0 <UART4_IRQHandler+0x80>)
 8000c42:	899b      	ldrh	r3, [r3, #12]
 8000c44:	b29b      	uxth	r3, r3
 8000c46:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000c4a:	b29b      	uxth	r3, r3
 8000c4c:	8193      	strh	r3, [r2, #12]
 8000c4e:	e00d      	b.n	8000c6c <UART4_IRQHandler+0x4c>
 8000c50:	4a13      	ldr	r2, [pc, #76]	; (8000ca0 <UART4_IRQHandler+0x80>)
 8000c52:	4b14      	ldr	r3, [pc, #80]	; (8000ca4 <UART4_IRQHandler+0x84>)
 8000c54:	681b      	ldr	r3, [r3, #0]
 8000c56:	4915      	ldr	r1, [pc, #84]	; (8000cac <UART4_IRQHandler+0x8c>)
 8000c58:	5ccb      	ldrb	r3, [r1, r3]
 8000c5a:	b29b      	uxth	r3, r3
 8000c5c:	8093      	strh	r3, [r2, #4]
 8000c5e:	4b11      	ldr	r3, [pc, #68]	; (8000ca4 <UART4_IRQHandler+0x84>)
 8000c60:	681b      	ldr	r3, [r3, #0]
 8000c62:	3301      	adds	r3, #1
 8000c64:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c68:	4a0e      	ldr	r2, [pc, #56]	; (8000ca4 <UART4_IRQHandler+0x84>)
 8000c6a:	6013      	str	r3, [r2, #0]
 8000c6c:	4b0c      	ldr	r3, [pc, #48]	; (8000ca0 <UART4_IRQHandler+0x80>)
 8000c6e:	881b      	ldrh	r3, [r3, #0]
 8000c70:	b29b      	uxth	r3, r3
 8000c72:	f003 0320 	and.w	r3, r3, #32
 8000c76:	2b00      	cmp	r3, #0
 8000c78:	d00e      	beq.n	8000c98 <UART4_IRQHandler+0x78>
 8000c7a:	4b0d      	ldr	r3, [pc, #52]	; (8000cb0 <UART4_IRQHandler+0x90>)
 8000c7c:	681b      	ldr	r3, [r3, #0]
 8000c7e:	4a08      	ldr	r2, [pc, #32]	; (8000ca0 <UART4_IRQHandler+0x80>)
 8000c80:	8892      	ldrh	r2, [r2, #4]
 8000c82:	b292      	uxth	r2, r2
 8000c84:	b2d1      	uxtb	r1, r2
 8000c86:	4a0b      	ldr	r2, [pc, #44]	; (8000cb4 <UART4_IRQHandler+0x94>)
 8000c88:	54d1      	strb	r1, [r2, r3]
 8000c8a:	4b09      	ldr	r3, [pc, #36]	; (8000cb0 <UART4_IRQHandler+0x90>)
 8000c8c:	681b      	ldr	r3, [r3, #0]
 8000c8e:	3301      	adds	r3, #1
 8000c90:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c94:	4a06      	ldr	r2, [pc, #24]	; (8000cb0 <UART4_IRQHandler+0x90>)
 8000c96:	6013      	str	r3, [r2, #0]
 8000c98:	bf00      	nop
 8000c9a:	46bd      	mov	sp, r7
 8000c9c:	bc80      	pop	{r7}
 8000c9e:	4770      	bx	lr
 8000ca0:	40004c00 	.word	0x40004c00
 8000ca4:	20000644 	.word	0x20000644
 8000ca8:	20000648 	.word	0x20000648
 8000cac:	20000244 	.word	0x20000244
 8000cb0:	20000a4c 	.word	0x20000a4c
 8000cb4:	2000064c 	.word	0x2000064c

08000cb8 <xputc>:
 8000cb8:	b580      	push	{r7, lr}
 8000cba:	b082      	sub	sp, #8
 8000cbc:	af00      	add	r7, sp, #0
 8000cbe:	4603      	mov	r3, r0
 8000cc0:	71fb      	strb	r3, [r7, #7]
 8000cc2:	79fb      	ldrb	r3, [r7, #7]
 8000cc4:	2b0a      	cmp	r3, #10
 8000cc6:	d102      	bne.n	8000cce <xputc+0x16>
 8000cc8:	200d      	movs	r0, #13
 8000cca:	f7ff fff5 	bl	8000cb8 <xputc>
 8000cce:	4b0c      	ldr	r3, [pc, #48]	; (8000d00 <xputc+0x48>)
 8000cd0:	681b      	ldr	r3, [r3, #0]
 8000cd2:	2b00      	cmp	r3, #0
 8000cd4:	d007      	beq.n	8000ce6 <xputc+0x2e>
 8000cd6:	4b0a      	ldr	r3, [pc, #40]	; (8000d00 <xputc+0x48>)
 8000cd8:	681b      	ldr	r3, [r3, #0]
 8000cda:	1c5a      	adds	r2, r3, #1
 8000cdc:	4908      	ldr	r1, [pc, #32]	; (8000d00 <xputc+0x48>)
 8000cde:	600a      	str	r2, [r1, #0]
 8000ce0:	79fa      	ldrb	r2, [r7, #7]
 8000ce2:	701a      	strb	r2, [r3, #0]
 8000ce4:	e008      	b.n	8000cf8 <xputc+0x40>
 8000ce6:	4b07      	ldr	r3, [pc, #28]	; (8000d04 <xputc+0x4c>)
 8000ce8:	681b      	ldr	r3, [r3, #0]
 8000cea:	2b00      	cmp	r3, #0
 8000cec:	d004      	beq.n	8000cf8 <xputc+0x40>
 8000cee:	4b05      	ldr	r3, [pc, #20]	; (8000d04 <xputc+0x4c>)
 8000cf0:	681b      	ldr	r3, [r3, #0]
 8000cf2:	79fa      	ldrb	r2, [r7, #7]
 8000cf4:	4610      	mov	r0, r2
 8000cf6:	4798      	blx	r3
 8000cf8:	3708      	adds	r7, #8
 8000cfa:	46bd      	mov	sp, r7
 8000cfc:	bd80      	pop	{r7, pc}
 8000cfe:	bf00      	nop
 8000d00:	20000a58 	.word	0x20000a58
 8000d04:	20000a54 	.word	0x20000a54

08000d08 <xputs>:
 8000d08:	b580      	push	{r7, lr}
 8000d0a:	b082      	sub	sp, #8
 8000d0c:	af00      	add	r7, sp, #0
 8000d0e:	6078      	str	r0, [r7, #4]
 8000d10:	e006      	b.n	8000d20 <xputs+0x18>
 8000d12:	687b      	ldr	r3, [r7, #4]
 8000d14:	1c5a      	adds	r2, r3, #1
 8000d16:	607a      	str	r2, [r7, #4]
 8000d18:	781b      	ldrb	r3, [r3, #0]
 8000d1a:	4618      	mov	r0, r3
 8000d1c:	f7ff ffcc 	bl	8000cb8 <xputc>
 8000d20:	687b      	ldr	r3, [r7, #4]
 8000d22:	781b      	ldrb	r3, [r3, #0]
 8000d24:	2b00      	cmp	r3, #0
 8000d26:	d1f4      	bne.n	8000d12 <xputs+0xa>
 8000d28:	bf00      	nop
 8000d2a:	3708      	adds	r7, #8
 8000d2c:	46bd      	mov	sp, r7
 8000d2e:	bd80      	pop	{r7, pc}

08000d30 <xfputs>:
 8000d30:	b580      	push	{r7, lr}
 8000d32:	b084      	sub	sp, #16
 8000d34:	af00      	add	r7, sp, #0
 8000d36:	6078      	str	r0, [r7, #4]
 8000d38:	6039      	str	r1, [r7, #0]
 8000d3a:	4b0c      	ldr	r3, [pc, #48]	; (8000d6c <xfputs+0x3c>)
 8000d3c:	681b      	ldr	r3, [r3, #0]
 8000d3e:	60fb      	str	r3, [r7, #12]
 8000d40:	4a0a      	ldr	r2, [pc, #40]	; (8000d6c <xfputs+0x3c>)
 8000d42:	687b      	ldr	r3, [r7, #4]
 8000d44:	6013      	str	r3, [r2, #0]
 8000d46:	e006      	b.n	8000d56 <xfputs+0x26>
 8000d48:	683b      	ldr	r3, [r7, #0]
 8000d4a:	1c5a      	adds	r2, r3, #1
 8000d4c:	603a      	str	r2, [r7, #0]
 8000d4e:	781b      	ldrb	r3, [r3, #0]
 8000d50:	4618      	mov	r0, r3
 8000d52:	f7ff ffb1 	bl	8000cb8 <xputc>
 8000d56:	683b      	ldr	r3, [r7, #0]
 8000d58:	781b      	ldrb	r3, [r3, #0]
 8000d5a:	2b00      	cmp	r3, #0
 8000d5c:	d1f4      	bne.n	8000d48 <xfputs+0x18>
 8000d5e:	4a03      	ldr	r2, [pc, #12]	; (8000d6c <xfputs+0x3c>)
 8000d60:	68fb      	ldr	r3, [r7, #12]
 8000d62:	6013      	str	r3, [r2, #0]
 8000d64:	bf00      	nop
 8000d66:	3710      	adds	r7, #16
 8000d68:	46bd      	mov	sp, r7
 8000d6a:	bd80      	pop	{r7, pc}
 8000d6c:	20000a54 	.word	0x20000a54

08000d70 <xvprintf>:
 8000d70:	b580      	push	{r7, lr}
 8000d72:	b08e      	sub	sp, #56	; 0x38
 8000d74:	af00      	add	r7, sp, #0
 8000d76:	6078      	str	r0, [r7, #4]
 8000d78:	6039      	str	r1, [r7, #0]
 8000d7a:	687b      	ldr	r3, [r7, #4]
 8000d7c:	1c5a      	adds	r2, r3, #1
 8000d7e:	607a      	str	r2, [r7, #4]
 8000d80:	781b      	ldrb	r3, [r3, #0]
 8000d82:	77fb      	strb	r3, [r7, #31]
 8000d84:	7ffb      	ldrb	r3, [r7, #31]
 8000d86:	2b00      	cmp	r3, #0
 8000d88:	f000 8167 	beq.w	800105a <xvprintf+0x2ea>
 8000d8c:	7ffb      	ldrb	r3, [r7, #31]
 8000d8e:	2b25      	cmp	r3, #37	; 0x25
 8000d90:	d004      	beq.n	8000d9c <xvprintf+0x2c>
 8000d92:	7ffb      	ldrb	r3, [r7, #31]
 8000d94:	4618      	mov	r0, r3
 8000d96:	f7ff ff8f 	bl	8000cb8 <xputc>
 8000d9a:	e15d      	b.n	8001058 <xvprintf+0x2e8>
 8000d9c:	2300      	movs	r3, #0
 8000d9e:	627b      	str	r3, [r7, #36]	; 0x24
 8000da0:	687b      	ldr	r3, [r7, #4]
 8000da2:	1c5a      	adds	r2, r3, #1
 8000da4:	607a      	str	r2, [r7, #4]
 8000da6:	781b      	ldrb	r3, [r3, #0]
 8000da8:	77fb      	strb	r3, [r7, #31]
 8000daa:	7ffb      	ldrb	r3, [r7, #31]
 8000dac:	2b30      	cmp	r3, #48	; 0x30
 8000dae:	d107      	bne.n	8000dc0 <xvprintf+0x50>
 8000db0:	2301      	movs	r3, #1
 8000db2:	627b      	str	r3, [r7, #36]	; 0x24
 8000db4:	687b      	ldr	r3, [r7, #4]
 8000db6:	1c5a      	adds	r2, r3, #1
 8000db8:	607a      	str	r2, [r7, #4]
 8000dba:	781b      	ldrb	r3, [r3, #0]
 8000dbc:	77fb      	strb	r3, [r7, #31]
 8000dbe:	e009      	b.n	8000dd4 <xvprintf+0x64>
 8000dc0:	7ffb      	ldrb	r3, [r7, #31]
 8000dc2:	2b2d      	cmp	r3, #45	; 0x2d
 8000dc4:	d106      	bne.n	8000dd4 <xvprintf+0x64>
 8000dc6:	2302      	movs	r3, #2
 8000dc8:	627b      	str	r3, [r7, #36]	; 0x24
 8000dca:	687b      	ldr	r3, [r7, #4]
 8000dcc:	1c5a      	adds	r2, r3, #1
 8000dce:	607a      	str	r2, [r7, #4]
 8000dd0:	781b      	ldrb	r3, [r3, #0]
 8000dd2:	77fb      	strb	r3, [r7, #31]
 8000dd4:	2300      	movs	r3, #0
 8000dd6:	62bb      	str	r3, [r7, #40]	; 0x28
 8000dd8:	e00e      	b.n	8000df8 <xvprintf+0x88>
 8000dda:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ddc:	4613      	mov	r3, r2
 8000dde:	009b      	lsls	r3, r3, #2
 8000de0:	4413      	add	r3, r2
 8000de2:	005b      	lsls	r3, r3, #1
 8000de4:	461a      	mov	r2, r3
 8000de6:	7ffb      	ldrb	r3, [r7, #31]
 8000de8:	4413      	add	r3, r2
 8000dea:	3b30      	subs	r3, #48	; 0x30
 8000dec:	62bb      	str	r3, [r7, #40]	; 0x28
 8000dee:	687b      	ldr	r3, [r7, #4]
 8000df0:	1c5a      	adds	r2, r3, #1
 8000df2:	607a      	str	r2, [r7, #4]
 8000df4:	781b      	ldrb	r3, [r3, #0]
 8000df6:	77fb      	strb	r3, [r7, #31]
 8000df8:	7ffb      	ldrb	r3, [r7, #31]
 8000dfa:	2b2f      	cmp	r3, #47	; 0x2f
 8000dfc:	d902      	bls.n	8000e04 <xvprintf+0x94>
 8000dfe:	7ffb      	ldrb	r3, [r7, #31]
 8000e00:	2b39      	cmp	r3, #57	; 0x39
 8000e02:	d9ea      	bls.n	8000dda <xvprintf+0x6a>
 8000e04:	7ffb      	ldrb	r3, [r7, #31]
 8000e06:	2b6c      	cmp	r3, #108	; 0x6c
 8000e08:	d002      	beq.n	8000e10 <xvprintf+0xa0>
 8000e0a:	7ffb      	ldrb	r3, [r7, #31]
 8000e0c:	2b4c      	cmp	r3, #76	; 0x4c
 8000e0e:	d108      	bne.n	8000e22 <xvprintf+0xb2>
 8000e10:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000e12:	f043 0304 	orr.w	r3, r3, #4
 8000e16:	627b      	str	r3, [r7, #36]	; 0x24
 8000e18:	687b      	ldr	r3, [r7, #4]
 8000e1a:	1c5a      	adds	r2, r3, #1
 8000e1c:	607a      	str	r2, [r7, #4]
 8000e1e:	781b      	ldrb	r3, [r3, #0]
 8000e20:	77fb      	strb	r3, [r7, #31]
 8000e22:	7ffb      	ldrb	r3, [r7, #31]
 8000e24:	2b00      	cmp	r3, #0
 8000e26:	f000 811a 	beq.w	800105e <xvprintf+0x2ee>
 8000e2a:	7ffb      	ldrb	r3, [r7, #31]
 8000e2c:	77bb      	strb	r3, [r7, #30]
 8000e2e:	7fbb      	ldrb	r3, [r7, #30]
 8000e30:	2b60      	cmp	r3, #96	; 0x60
 8000e32:	d902      	bls.n	8000e3a <xvprintf+0xca>
 8000e34:	7fbb      	ldrb	r3, [r7, #30]
 8000e36:	3b20      	subs	r3, #32
 8000e38:	77bb      	strb	r3, [r7, #30]
 8000e3a:	7fbb      	ldrb	r3, [r7, #30]
 8000e3c:	3b42      	subs	r3, #66	; 0x42
 8000e3e:	2b16      	cmp	r3, #22
 8000e40:	d873      	bhi.n	8000f2a <xvprintf+0x1ba>
 8000e42:	a201      	add	r2, pc, #4	; (adr r2, 8000e48 <xvprintf+0xd8>)
 8000e44:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000e48:	08000f13 	.word	0x08000f13
 8000e4c:	08000f01 	.word	0x08000f01
 8000e50:	08000f1f 	.word	0x08000f1f
 8000e54:	08000f2b 	.word	0x08000f2b
 8000e58:	08000f2b 	.word	0x08000f2b
 8000e5c:	08000f2b 	.word	0x08000f2b
 8000e60:	08000f2b 	.word	0x08000f2b
 8000e64:	08000f2b 	.word	0x08000f2b
 8000e68:	08000f2b 	.word	0x08000f2b
 8000e6c:	08000f2b 	.word	0x08000f2b
 8000e70:	08000f2b 	.word	0x08000f2b
 8000e74:	08000f2b 	.word	0x08000f2b
 8000e78:	08000f2b 	.word	0x08000f2b
 8000e7c:	08000f19 	.word	0x08000f19
 8000e80:	08000f2b 	.word	0x08000f2b
 8000e84:	08000f2b 	.word	0x08000f2b
 8000e88:	08000f2b 	.word	0x08000f2b
 8000e8c:	08000ea5 	.word	0x08000ea5
 8000e90:	08000f2b 	.word	0x08000f2b
 8000e94:	08000f1f 	.word	0x08000f1f
 8000e98:	08000f2b 	.word	0x08000f2b
 8000e9c:	08000f2b 	.word	0x08000f2b
 8000ea0:	08000f25 	.word	0x08000f25
 8000ea4:	683b      	ldr	r3, [r7, #0]
 8000ea6:	1d1a      	adds	r2, r3, #4
 8000ea8:	603a      	str	r2, [r7, #0]
 8000eaa:	681b      	ldr	r3, [r3, #0]
 8000eac:	61bb      	str	r3, [r7, #24]
 8000eae:	2300      	movs	r3, #0
 8000eb0:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000eb2:	e002      	b.n	8000eba <xvprintf+0x14a>
 8000eb4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000eb6:	3301      	adds	r3, #1
 8000eb8:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000eba:	69ba      	ldr	r2, [r7, #24]
 8000ebc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ebe:	4413      	add	r3, r2
 8000ec0:	781b      	ldrb	r3, [r3, #0]
 8000ec2:	2b00      	cmp	r3, #0
 8000ec4:	d1f6      	bne.n	8000eb4 <xvprintf+0x144>
 8000ec6:	e002      	b.n	8000ece <xvprintf+0x15e>
 8000ec8:	2020      	movs	r0, #32
 8000eca:	f7ff fef5 	bl	8000cb8 <xputc>
 8000ece:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000ed0:	f003 0302 	and.w	r3, r3, #2
 8000ed4:	2b00      	cmp	r3, #0
 8000ed6:	d105      	bne.n	8000ee4 <xvprintf+0x174>
 8000ed8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000eda:	1c5a      	adds	r2, r3, #1
 8000edc:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ede:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ee0:	4293      	cmp	r3, r2
 8000ee2:	d3f1      	bcc.n	8000ec8 <xvprintf+0x158>
 8000ee4:	69b8      	ldr	r0, [r7, #24]
 8000ee6:	f7ff ff0f 	bl	8000d08 <xputs>
 8000eea:	e002      	b.n	8000ef2 <xvprintf+0x182>
 8000eec:	2020      	movs	r0, #32
 8000eee:	f7ff fee3 	bl	8000cb8 <xputc>
 8000ef2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ef4:	1c5a      	adds	r2, r3, #1
 8000ef6:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ef8:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000efa:	4293      	cmp	r3, r2
 8000efc:	d3f6      	bcc.n	8000eec <xvprintf+0x17c>
 8000efe:	e0ab      	b.n	8001058 <xvprintf+0x2e8>
 8000f00:	683b      	ldr	r3, [r7, #0]
 8000f02:	1d1a      	adds	r2, r3, #4
 8000f04:	603a      	str	r2, [r7, #0]
 8000f06:	681b      	ldr	r3, [r3, #0]
 8000f08:	b2db      	uxtb	r3, r3
 8000f0a:	4618      	mov	r0, r3
 8000f0c:	f7ff fed4 	bl	8000cb8 <xputc>
 8000f10:	e0a2      	b.n	8001058 <xvprintf+0x2e8>
 8000f12:	2302      	movs	r3, #2
 8000f14:	637b      	str	r3, [r7, #52]	; 0x34
 8000f16:	e00d      	b.n	8000f34 <xvprintf+0x1c4>
 8000f18:	2308      	movs	r3, #8
 8000f1a:	637b      	str	r3, [r7, #52]	; 0x34
 8000f1c:	e00a      	b.n	8000f34 <xvprintf+0x1c4>
 8000f1e:	230a      	movs	r3, #10
 8000f20:	637b      	str	r3, [r7, #52]	; 0x34
 8000f22:	e007      	b.n	8000f34 <xvprintf+0x1c4>
 8000f24:	2310      	movs	r3, #16
 8000f26:	637b      	str	r3, [r7, #52]	; 0x34
 8000f28:	e004      	b.n	8000f34 <xvprintf+0x1c4>
 8000f2a:	7ffb      	ldrb	r3, [r7, #31]
 8000f2c:	4618      	mov	r0, r3
 8000f2e:	f7ff fec3 	bl	8000cb8 <xputc>
 8000f32:	e091      	b.n	8001058 <xvprintf+0x2e8>
 8000f34:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f36:	f003 0304 	and.w	r3, r3, #4
 8000f3a:	2b00      	cmp	r3, #0
 8000f3c:	d004      	beq.n	8000f48 <xvprintf+0x1d8>
 8000f3e:	683b      	ldr	r3, [r7, #0]
 8000f40:	1d1a      	adds	r2, r3, #4
 8000f42:	603a      	str	r2, [r7, #0]
 8000f44:	681b      	ldr	r3, [r3, #0]
 8000f46:	e00b      	b.n	8000f60 <xvprintf+0x1f0>
 8000f48:	7fbb      	ldrb	r3, [r7, #30]
 8000f4a:	2b44      	cmp	r3, #68	; 0x44
 8000f4c:	d104      	bne.n	8000f58 <xvprintf+0x1e8>
 8000f4e:	683b      	ldr	r3, [r7, #0]
 8000f50:	1d1a      	adds	r2, r3, #4
 8000f52:	603a      	str	r2, [r7, #0]
 8000f54:	681b      	ldr	r3, [r3, #0]
 8000f56:	e003      	b.n	8000f60 <xvprintf+0x1f0>
 8000f58:	683b      	ldr	r3, [r7, #0]
 8000f5a:	1d1a      	adds	r2, r3, #4
 8000f5c:	603a      	str	r2, [r7, #0]
 8000f5e:	681b      	ldr	r3, [r3, #0]
 8000f60:	623b      	str	r3, [r7, #32]
 8000f62:	7fbb      	ldrb	r3, [r7, #30]
 8000f64:	2b44      	cmp	r3, #68	; 0x44
 8000f66:	d109      	bne.n	8000f7c <xvprintf+0x20c>
 8000f68:	6a3b      	ldr	r3, [r7, #32]
 8000f6a:	2b00      	cmp	r3, #0
 8000f6c:	da06      	bge.n	8000f7c <xvprintf+0x20c>
 8000f6e:	6a3b      	ldr	r3, [r7, #32]
 8000f70:	425b      	negs	r3, r3
 8000f72:	623b      	str	r3, [r7, #32]
 8000f74:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f76:	f043 0308 	orr.w	r3, r3, #8
 8000f7a:	627b      	str	r3, [r7, #36]	; 0x24
 8000f7c:	2300      	movs	r3, #0
 8000f7e:	633b      	str	r3, [r7, #48]	; 0x30
 8000f80:	6a3b      	ldr	r3, [r7, #32]
 8000f82:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8000f84:	fbb3 f2f2 	udiv	r2, r3, r2
 8000f88:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8000f8a:	fb01 f202 	mul.w	r2, r1, r2
 8000f8e:	1a9b      	subs	r3, r3, r2
 8000f90:	77bb      	strb	r3, [r7, #30]
 8000f92:	6a3a      	ldr	r2, [r7, #32]
 8000f94:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f96:	fbb2 f3f3 	udiv	r3, r2, r3
 8000f9a:	623b      	str	r3, [r7, #32]
 8000f9c:	7fbb      	ldrb	r3, [r7, #30]
 8000f9e:	2b09      	cmp	r3, #9
 8000fa0:	d908      	bls.n	8000fb4 <xvprintf+0x244>
 8000fa2:	7ffb      	ldrb	r3, [r7, #31]
 8000fa4:	2b78      	cmp	r3, #120	; 0x78
 8000fa6:	d101      	bne.n	8000fac <xvprintf+0x23c>
 8000fa8:	2227      	movs	r2, #39	; 0x27
 8000faa:	e000      	b.n	8000fae <xvprintf+0x23e>
 8000fac:	2207      	movs	r2, #7
 8000fae:	7fbb      	ldrb	r3, [r7, #30]
 8000fb0:	4413      	add	r3, r2
 8000fb2:	77bb      	strb	r3, [r7, #30]
 8000fb4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fb6:	1c5a      	adds	r2, r3, #1
 8000fb8:	633a      	str	r2, [r7, #48]	; 0x30
 8000fba:	7fba      	ldrb	r2, [r7, #30]
 8000fbc:	3230      	adds	r2, #48	; 0x30
 8000fbe:	b2d2      	uxtb	r2, r2
 8000fc0:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8000fc4:	440b      	add	r3, r1
 8000fc6:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fca:	6a3b      	ldr	r3, [r7, #32]
 8000fcc:	2b00      	cmp	r3, #0
 8000fce:	d002      	beq.n	8000fd6 <xvprintf+0x266>
 8000fd0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fd2:	2b0f      	cmp	r3, #15
 8000fd4:	d9d4      	bls.n	8000f80 <xvprintf+0x210>
 8000fd6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fd8:	f003 0308 	and.w	r3, r3, #8
 8000fdc:	2b00      	cmp	r3, #0
 8000fde:	d008      	beq.n	8000ff2 <xvprintf+0x282>
 8000fe0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fe2:	1c5a      	adds	r2, r3, #1
 8000fe4:	633a      	str	r2, [r7, #48]	; 0x30
 8000fe6:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000fea:	4413      	add	r3, r2
 8000fec:	222d      	movs	r2, #45	; 0x2d
 8000fee:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000ff2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000ff4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000ff6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000ff8:	f003 0301 	and.w	r3, r3, #1
 8000ffc:	2b00      	cmp	r3, #0
 8000ffe:	d001      	beq.n	8001004 <xvprintf+0x294>
 8001000:	2330      	movs	r3, #48	; 0x30
 8001002:	e000      	b.n	8001006 <xvprintf+0x296>
 8001004:	2320      	movs	r3, #32
 8001006:	77bb      	strb	r3, [r7, #30]
 8001008:	e003      	b.n	8001012 <xvprintf+0x2a2>
 800100a:	7fbb      	ldrb	r3, [r7, #30]
 800100c:	4618      	mov	r0, r3
 800100e:	f7ff fe53 	bl	8000cb8 <xputc>
 8001012:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001014:	f003 0302 	and.w	r3, r3, #2
 8001018:	2b00      	cmp	r3, #0
 800101a:	d105      	bne.n	8001028 <xvprintf+0x2b8>
 800101c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800101e:	1c5a      	adds	r2, r3, #1
 8001020:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001022:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001024:	4293      	cmp	r3, r2
 8001026:	d3f0      	bcc.n	800100a <xvprintf+0x29a>
 8001028:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800102a:	3b01      	subs	r3, #1
 800102c:	633b      	str	r3, [r7, #48]	; 0x30
 800102e:	f107 0208 	add.w	r2, r7, #8
 8001032:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001034:	4413      	add	r3, r2
 8001036:	781b      	ldrb	r3, [r3, #0]
 8001038:	4618      	mov	r0, r3
 800103a:	f7ff fe3d 	bl	8000cb8 <xputc>
 800103e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001040:	2b00      	cmp	r3, #0
 8001042:	d1f1      	bne.n	8001028 <xvprintf+0x2b8>
 8001044:	e002      	b.n	800104c <xvprintf+0x2dc>
 8001046:	2020      	movs	r0, #32
 8001048:	f7ff fe36 	bl	8000cb8 <xputc>
 800104c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800104e:	1c5a      	adds	r2, r3, #1
 8001050:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001052:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001054:	4293      	cmp	r3, r2
 8001056:	d3f6      	bcc.n	8001046 <xvprintf+0x2d6>
 8001058:	e68f      	b.n	8000d7a <xvprintf+0xa>
 800105a:	bf00      	nop
 800105c:	e000      	b.n	8001060 <xvprintf+0x2f0>
 800105e:	bf00      	nop
 8001060:	bf00      	nop
 8001062:	3738      	adds	r7, #56	; 0x38
 8001064:	46bd      	mov	sp, r7
 8001066:	bd80      	pop	{r7, pc}

08001068 <xprintf>:
 8001068:	b40f      	push	{r0, r1, r2, r3}
 800106a:	b580      	push	{r7, lr}
 800106c:	b082      	sub	sp, #8
 800106e:	af00      	add	r7, sp, #0
 8001070:	f107 0314 	add.w	r3, r7, #20
 8001074:	607b      	str	r3, [r7, #4]
 8001076:	6879      	ldr	r1, [r7, #4]
 8001078:	6938      	ldr	r0, [r7, #16]
 800107a:	f7ff fe79 	bl	8000d70 <xvprintf>
 800107e:	bf00      	nop
 8001080:	3708      	adds	r7, #8
 8001082:	46bd      	mov	sp, r7
 8001084:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001088:	b004      	add	sp, #16
 800108a:	4770      	bx	lr

0800108c <xsprintf>:
 800108c:	b40e      	push	{r1, r2, r3}
 800108e:	b580      	push	{r7, lr}
 8001090:	b085      	sub	sp, #20
 8001092:	af00      	add	r7, sp, #0
 8001094:	6078      	str	r0, [r7, #4]
 8001096:	4a0c      	ldr	r2, [pc, #48]	; (80010c8 <xsprintf+0x3c>)
 8001098:	687b      	ldr	r3, [r7, #4]
 800109a:	6013      	str	r3, [r2, #0]
 800109c:	f107 0320 	add.w	r3, r7, #32
 80010a0:	60fb      	str	r3, [r7, #12]
 80010a2:	68f9      	ldr	r1, [r7, #12]
 80010a4:	69f8      	ldr	r0, [r7, #28]
 80010a6:	f7ff fe63 	bl	8000d70 <xvprintf>
 80010aa:	4b07      	ldr	r3, [pc, #28]	; (80010c8 <xsprintf+0x3c>)
 80010ac:	681b      	ldr	r3, [r3, #0]
 80010ae:	2200      	movs	r2, #0
 80010b0:	701a      	strb	r2, [r3, #0]
 80010b2:	4b05      	ldr	r3, [pc, #20]	; (80010c8 <xsprintf+0x3c>)
 80010b4:	2200      	movs	r2, #0
 80010b6:	601a      	str	r2, [r3, #0]
 80010b8:	bf00      	nop
 80010ba:	3714      	adds	r7, #20
 80010bc:	46bd      	mov	sp, r7
 80010be:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010c2:	b003      	add	sp, #12
 80010c4:	4770      	bx	lr
 80010c6:	bf00      	nop
 80010c8:	20000a58 	.word	0x20000a58

080010cc <xfprintf>:
 80010cc:	b40e      	push	{r1, r2, r3}
 80010ce:	b580      	push	{r7, lr}
 80010d0:	b085      	sub	sp, #20
 80010d2:	af00      	add	r7, sp, #0
 80010d4:	6078      	str	r0, [r7, #4]
 80010d6:	4b0b      	ldr	r3, [pc, #44]	; (8001104 <xfprintf+0x38>)
 80010d8:	681b      	ldr	r3, [r3, #0]
 80010da:	60fb      	str	r3, [r7, #12]
 80010dc:	4a09      	ldr	r2, [pc, #36]	; (8001104 <xfprintf+0x38>)
 80010de:	687b      	ldr	r3, [r7, #4]
 80010e0:	6013      	str	r3, [r2, #0]
 80010e2:	f107 0320 	add.w	r3, r7, #32
 80010e6:	60bb      	str	r3, [r7, #8]
 80010e8:	68b9      	ldr	r1, [r7, #8]
 80010ea:	69f8      	ldr	r0, [r7, #28]
 80010ec:	f7ff fe40 	bl	8000d70 <xvprintf>
 80010f0:	4a04      	ldr	r2, [pc, #16]	; (8001104 <xfprintf+0x38>)
 80010f2:	68fb      	ldr	r3, [r7, #12]
 80010f4:	6013      	str	r3, [r2, #0]
 80010f6:	bf00      	nop
 80010f8:	3714      	adds	r7, #20
 80010fa:	46bd      	mov	sp, r7
 80010fc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001100:	b003      	add	sp, #12
 8001102:	4770      	bx	lr
 8001104:	20000a54 	.word	0x20000a54

08001108 <put_dump>:
 8001108:	b580      	push	{r7, lr}
 800110a:	b088      	sub	sp, #32
 800110c:	af00      	add	r7, sp, #0
 800110e:	60f8      	str	r0, [r7, #12]
 8001110:	60b9      	str	r1, [r7, #8]
 8001112:	607a      	str	r2, [r7, #4]
 8001114:	603b      	str	r3, [r7, #0]
 8001116:	68b9      	ldr	r1, [r7, #8]
 8001118:	4834      	ldr	r0, [pc, #208]	; (80011ec <put_dump+0xe4>)
 800111a:	f7ff ffa5 	bl	8001068 <xprintf>
 800111e:	683b      	ldr	r3, [r7, #0]
 8001120:	2b02      	cmp	r3, #2
 8001122:	d03a      	beq.n	800119a <put_dump+0x92>
 8001124:	2b04      	cmp	r3, #4
 8001126:	d049      	beq.n	80011bc <put_dump+0xb4>
 8001128:	2b01      	cmp	r3, #1
 800112a:	d158      	bne.n	80011de <put_dump+0xd6>
 800112c:	68fb      	ldr	r3, [r7, #12]
 800112e:	613b      	str	r3, [r7, #16]
 8001130:	2300      	movs	r3, #0
 8001132:	61fb      	str	r3, [r7, #28]
 8001134:	e00a      	b.n	800114c <put_dump+0x44>
 8001136:	69fb      	ldr	r3, [r7, #28]
 8001138:	693a      	ldr	r2, [r7, #16]
 800113a:	4413      	add	r3, r2
 800113c:	781b      	ldrb	r3, [r3, #0]
 800113e:	4619      	mov	r1, r3
 8001140:	482b      	ldr	r0, [pc, #172]	; (80011f0 <put_dump+0xe8>)
 8001142:	f7ff ff91 	bl	8001068 <xprintf>
 8001146:	69fb      	ldr	r3, [r7, #28]
 8001148:	3301      	adds	r3, #1
 800114a:	61fb      	str	r3, [r7, #28]
 800114c:	69fa      	ldr	r2, [r7, #28]
 800114e:	687b      	ldr	r3, [r7, #4]
 8001150:	429a      	cmp	r2, r3
 8001152:	dbf0      	blt.n	8001136 <put_dump+0x2e>
 8001154:	2020      	movs	r0, #32
 8001156:	f7ff fdaf 	bl	8000cb8 <xputc>
 800115a:	2300      	movs	r3, #0
 800115c:	61fb      	str	r3, [r7, #28]
 800115e:	e017      	b.n	8001190 <put_dump+0x88>
 8001160:	69fb      	ldr	r3, [r7, #28]
 8001162:	693a      	ldr	r2, [r7, #16]
 8001164:	4413      	add	r3, r2
 8001166:	781b      	ldrb	r3, [r3, #0]
 8001168:	2b1f      	cmp	r3, #31
 800116a:	d90a      	bls.n	8001182 <put_dump+0x7a>
 800116c:	69fb      	ldr	r3, [r7, #28]
 800116e:	693a      	ldr	r2, [r7, #16]
 8001170:	4413      	add	r3, r2
 8001172:	781b      	ldrb	r3, [r3, #0]
 8001174:	2b7e      	cmp	r3, #126	; 0x7e
 8001176:	d804      	bhi.n	8001182 <put_dump+0x7a>
 8001178:	69fb      	ldr	r3, [r7, #28]
 800117a:	693a      	ldr	r2, [r7, #16]
 800117c:	4413      	add	r3, r2
 800117e:	781b      	ldrb	r3, [r3, #0]
 8001180:	e000      	b.n	8001184 <put_dump+0x7c>
 8001182:	232e      	movs	r3, #46	; 0x2e
 8001184:	4618      	mov	r0, r3
 8001186:	f7ff fd97 	bl	8000cb8 <xputc>
 800118a:	69fb      	ldr	r3, [r7, #28]
 800118c:	3301      	adds	r3, #1
 800118e:	61fb      	str	r3, [r7, #28]
 8001190:	69fa      	ldr	r2, [r7, #28]
 8001192:	687b      	ldr	r3, [r7, #4]
 8001194:	429a      	cmp	r2, r3
 8001196:	dbe3      	blt.n	8001160 <put_dump+0x58>
 8001198:	e021      	b.n	80011de <put_dump+0xd6>
 800119a:	68fb      	ldr	r3, [r7, #12]
 800119c:	61bb      	str	r3, [r7, #24]
 800119e:	69bb      	ldr	r3, [r7, #24]
 80011a0:	1c9a      	adds	r2, r3, #2
 80011a2:	61ba      	str	r2, [r7, #24]
 80011a4:	881b      	ldrh	r3, [r3, #0]
 80011a6:	4619      	mov	r1, r3
 80011a8:	4812      	ldr	r0, [pc, #72]	; (80011f4 <put_dump+0xec>)
 80011aa:	f7ff ff5d 	bl	8001068 <xprintf>
 80011ae:	687b      	ldr	r3, [r7, #4]
 80011b0:	3b01      	subs	r3, #1
 80011b2:	607b      	str	r3, [r7, #4]
 80011b4:	687b      	ldr	r3, [r7, #4]
 80011b6:	2b00      	cmp	r3, #0
 80011b8:	d1f1      	bne.n	800119e <put_dump+0x96>
 80011ba:	e010      	b.n	80011de <put_dump+0xd6>
 80011bc:	68fb      	ldr	r3, [r7, #12]
 80011be:	617b      	str	r3, [r7, #20]
 80011c0:	697b      	ldr	r3, [r7, #20]
 80011c2:	1d1a      	adds	r2, r3, #4
 80011c4:	617a      	str	r2, [r7, #20]
 80011c6:	681b      	ldr	r3, [r3, #0]
 80011c8:	4619      	mov	r1, r3
 80011ca:	480b      	ldr	r0, [pc, #44]	; (80011f8 <put_dump+0xf0>)
 80011cc:	f7ff ff4c 	bl	8001068 <xprintf>
 80011d0:	687b      	ldr	r3, [r7, #4]
 80011d2:	3b01      	subs	r3, #1
 80011d4:	607b      	str	r3, [r7, #4]
 80011d6:	687b      	ldr	r3, [r7, #4]
 80011d8:	2b00      	cmp	r3, #0
 80011da:	d1f1      	bne.n	80011c0 <put_dump+0xb8>
 80011dc:	bf00      	nop
 80011de:	200a      	movs	r0, #10
 80011e0:	f7ff fd6a 	bl	8000cb8 <xputc>
 80011e4:	bf00      	nop
 80011e6:	3720      	adds	r7, #32
 80011e8:	46bd      	mov	sp, r7
 80011ea:	bd80      	pop	{r7, pc}
 80011ec:	0800389c 	.word	0x0800389c
 80011f0:	080038a4 	.word	0x080038a4
 80011f4:	080038ac 	.word	0x080038ac
 80011f8:	080038b4 	.word	0x080038b4

080011fc <xgets>:
 80011fc:	b580      	push	{r7, lr}
 80011fe:	b084      	sub	sp, #16
 8001200:	af00      	add	r7, sp, #0
 8001202:	6078      	str	r0, [r7, #4]
 8001204:	6039      	str	r1, [r7, #0]
 8001206:	4b24      	ldr	r3, [pc, #144]	; (8001298 <xgets+0x9c>)
 8001208:	681b      	ldr	r3, [r3, #0]
 800120a:	2b00      	cmp	r3, #0
 800120c:	d101      	bne.n	8001212 <xgets+0x16>
 800120e:	2300      	movs	r3, #0
 8001210:	e03e      	b.n	8001290 <xgets+0x94>
 8001212:	2300      	movs	r3, #0
 8001214:	60fb      	str	r3, [r7, #12]
 8001216:	4b20      	ldr	r3, [pc, #128]	; (8001298 <xgets+0x9c>)
 8001218:	681b      	ldr	r3, [r3, #0]
 800121a:	4798      	blx	r3
 800121c:	4603      	mov	r3, r0
 800121e:	60bb      	str	r3, [r7, #8]
 8001220:	68bb      	ldr	r3, [r7, #8]
 8001222:	2b00      	cmp	r3, #0
 8001224:	d101      	bne.n	800122a <xgets+0x2e>
 8001226:	2300      	movs	r3, #0
 8001228:	e032      	b.n	8001290 <xgets+0x94>
 800122a:	68bb      	ldr	r3, [r7, #8]
 800122c:	2b0d      	cmp	r3, #13
 800122e:	d025      	beq.n	800127c <xgets+0x80>
 8001230:	68bb      	ldr	r3, [r7, #8]
 8001232:	2b08      	cmp	r3, #8
 8001234:	d10b      	bne.n	800124e <xgets+0x52>
 8001236:	68fb      	ldr	r3, [r7, #12]
 8001238:	2b00      	cmp	r3, #0
 800123a:	d008      	beq.n	800124e <xgets+0x52>
 800123c:	68fb      	ldr	r3, [r7, #12]
 800123e:	3b01      	subs	r3, #1
 8001240:	60fb      	str	r3, [r7, #12]
 8001242:	68bb      	ldr	r3, [r7, #8]
 8001244:	b2db      	uxtb	r3, r3
 8001246:	4618      	mov	r0, r3
 8001248:	f7ff fd36 	bl	8000cb8 <xputc>
 800124c:	e015      	b.n	800127a <xgets+0x7e>
 800124e:	68bb      	ldr	r3, [r7, #8]
 8001250:	2b1f      	cmp	r3, #31
 8001252:	dde0      	ble.n	8001216 <xgets+0x1a>
 8001254:	683b      	ldr	r3, [r7, #0]
 8001256:	1e5a      	subs	r2, r3, #1
 8001258:	68fb      	ldr	r3, [r7, #12]
 800125a:	429a      	cmp	r2, r3
 800125c:	dddb      	ble.n	8001216 <xgets+0x1a>
 800125e:	68fb      	ldr	r3, [r7, #12]
 8001260:	1c5a      	adds	r2, r3, #1
 8001262:	60fa      	str	r2, [r7, #12]
 8001264:	461a      	mov	r2, r3
 8001266:	687b      	ldr	r3, [r7, #4]
 8001268:	4413      	add	r3, r2
 800126a:	68ba      	ldr	r2, [r7, #8]
 800126c:	b2d2      	uxtb	r2, r2
 800126e:	701a      	strb	r2, [r3, #0]
 8001270:	68bb      	ldr	r3, [r7, #8]
 8001272:	b2db      	uxtb	r3, r3
 8001274:	4618      	mov	r0, r3
 8001276:	f7ff fd1f 	bl	8000cb8 <xputc>
 800127a:	e7cc      	b.n	8001216 <xgets+0x1a>
 800127c:	bf00      	nop
 800127e:	68fb      	ldr	r3, [r7, #12]
 8001280:	687a      	ldr	r2, [r7, #4]
 8001282:	4413      	add	r3, r2
 8001284:	2200      	movs	r2, #0
 8001286:	701a      	strb	r2, [r3, #0]
 8001288:	200a      	movs	r0, #10
 800128a:	f7ff fd15 	bl	8000cb8 <xputc>
 800128e:	2301      	movs	r3, #1
 8001290:	4618      	mov	r0, r3
 8001292:	3710      	adds	r7, #16
 8001294:	46bd      	mov	sp, r7
 8001296:	bd80      	pop	{r7, pc}
 8001298:	20000a5c 	.word	0x20000a5c

0800129c <xfgets>:
 800129c:	b580      	push	{r7, lr}
 800129e:	b086      	sub	sp, #24
 80012a0:	af00      	add	r7, sp, #0
 80012a2:	60f8      	str	r0, [r7, #12]
 80012a4:	60b9      	str	r1, [r7, #8]
 80012a6:	607a      	str	r2, [r7, #4]
 80012a8:	4b09      	ldr	r3, [pc, #36]	; (80012d0 <xfgets+0x34>)
 80012aa:	681b      	ldr	r3, [r3, #0]
 80012ac:	617b      	str	r3, [r7, #20]
 80012ae:	4a08      	ldr	r2, [pc, #32]	; (80012d0 <xfgets+0x34>)
 80012b0:	68fb      	ldr	r3, [r7, #12]
 80012b2:	6013      	str	r3, [r2, #0]
 80012b4:	6879      	ldr	r1, [r7, #4]
 80012b6:	68b8      	ldr	r0, [r7, #8]
 80012b8:	f7ff ffa0 	bl	80011fc <xgets>
 80012bc:	6138      	str	r0, [r7, #16]
 80012be:	4a04      	ldr	r2, [pc, #16]	; (80012d0 <xfgets+0x34>)
 80012c0:	697b      	ldr	r3, [r7, #20]
 80012c2:	6013      	str	r3, [r2, #0]
 80012c4:	693b      	ldr	r3, [r7, #16]
 80012c6:	4618      	mov	r0, r3
 80012c8:	3718      	adds	r7, #24
 80012ca:	46bd      	mov	sp, r7
 80012cc:	bd80      	pop	{r7, pc}
 80012ce:	bf00      	nop
 80012d0:	20000a5c 	.word	0x20000a5c

080012d4 <xatoi>:
 80012d4:	b480      	push	{r7}
 80012d6:	b085      	sub	sp, #20
 80012d8:	af00      	add	r7, sp, #0
 80012da:	6078      	str	r0, [r7, #4]
 80012dc:	6039      	str	r1, [r7, #0]
 80012de:	2300      	movs	r3, #0
 80012e0:	727b      	strb	r3, [r7, #9]
 80012e2:	683b      	ldr	r3, [r7, #0]
 80012e4:	2200      	movs	r2, #0
 80012e6:	601a      	str	r2, [r3, #0]
 80012e8:	e004      	b.n	80012f4 <xatoi+0x20>
 80012ea:	687b      	ldr	r3, [r7, #4]
 80012ec:	681b      	ldr	r3, [r3, #0]
 80012ee:	1c5a      	adds	r2, r3, #1
 80012f0:	687b      	ldr	r3, [r7, #4]
 80012f2:	601a      	str	r2, [r3, #0]
 80012f4:	687b      	ldr	r3, [r7, #4]
 80012f6:	681b      	ldr	r3, [r3, #0]
 80012f8:	781b      	ldrb	r3, [r3, #0]
 80012fa:	72fb      	strb	r3, [r7, #11]
 80012fc:	7afb      	ldrb	r3, [r7, #11]
 80012fe:	2b20      	cmp	r3, #32
 8001300:	d0f3      	beq.n	80012ea <xatoi+0x16>
 8001302:	7afb      	ldrb	r3, [r7, #11]
 8001304:	2b2d      	cmp	r3, #45	; 0x2d
 8001306:	d10a      	bne.n	800131e <xatoi+0x4a>
 8001308:	2301      	movs	r3, #1
 800130a:	727b      	strb	r3, [r7, #9]
 800130c:	687b      	ldr	r3, [r7, #4]
 800130e:	681b      	ldr	r3, [r3, #0]
 8001310:	1c5a      	adds	r2, r3, #1
 8001312:	687b      	ldr	r3, [r7, #4]
 8001314:	601a      	str	r2, [r3, #0]
 8001316:	687b      	ldr	r3, [r7, #4]
 8001318:	681b      	ldr	r3, [r3, #0]
 800131a:	781b      	ldrb	r3, [r3, #0]
 800131c:	72fb      	strb	r3, [r7, #11]
 800131e:	7afb      	ldrb	r3, [r7, #11]
 8001320:	2b30      	cmp	r3, #48	; 0x30
 8001322:	d135      	bne.n	8001390 <xatoi+0xbc>
 8001324:	687b      	ldr	r3, [r7, #4]
 8001326:	681b      	ldr	r3, [r3, #0]
 8001328:	1c5a      	adds	r2, r3, #1
 800132a:	687b      	ldr	r3, [r7, #4]
 800132c:	601a      	str	r2, [r3, #0]
 800132e:	687b      	ldr	r3, [r7, #4]
 8001330:	681b      	ldr	r3, [r3, #0]
 8001332:	781b      	ldrb	r3, [r3, #0]
 8001334:	72fb      	strb	r3, [r7, #11]
 8001336:	7afb      	ldrb	r3, [r7, #11]
 8001338:	2b62      	cmp	r3, #98	; 0x62
 800133a:	d00d      	beq.n	8001358 <xatoi+0x84>
 800133c:	2b78      	cmp	r3, #120	; 0x78
 800133e:	d117      	bne.n	8001370 <xatoi+0x9c>
 8001340:	2310      	movs	r3, #16
 8001342:	72bb      	strb	r3, [r7, #10]
 8001344:	687b      	ldr	r3, [r7, #4]
 8001346:	681b      	ldr	r3, [r3, #0]
 8001348:	1c5a      	adds	r2, r3, #1
 800134a:	687b      	ldr	r3, [r7, #4]
 800134c:	601a      	str	r2, [r3, #0]
 800134e:	687b      	ldr	r3, [r7, #4]
 8001350:	681b      	ldr	r3, [r3, #0]
 8001352:	781b      	ldrb	r3, [r3, #0]
 8001354:	72fb      	strb	r3, [r7, #11]
 8001356:	e025      	b.n	80013a4 <xatoi+0xd0>
 8001358:	2302      	movs	r3, #2
 800135a:	72bb      	strb	r3, [r7, #10]
 800135c:	687b      	ldr	r3, [r7, #4]
 800135e:	681b      	ldr	r3, [r3, #0]
 8001360:	1c5a      	adds	r2, r3, #1
 8001362:	687b      	ldr	r3, [r7, #4]
 8001364:	601a      	str	r2, [r3, #0]
 8001366:	687b      	ldr	r3, [r7, #4]
 8001368:	681b      	ldr	r3, [r3, #0]
 800136a:	781b      	ldrb	r3, [r3, #0]
 800136c:	72fb      	strb	r3, [r7, #11]
 800136e:	e019      	b.n	80013a4 <xatoi+0xd0>
 8001370:	7afb      	ldrb	r3, [r7, #11]
 8001372:	2b20      	cmp	r3, #32
 8001374:	d801      	bhi.n	800137a <xatoi+0xa6>
 8001376:	2301      	movs	r3, #1
 8001378:	e04e      	b.n	8001418 <xatoi+0x144>
 800137a:	7afb      	ldrb	r3, [r7, #11]
 800137c:	2b2f      	cmp	r3, #47	; 0x2f
 800137e:	d902      	bls.n	8001386 <xatoi+0xb2>
 8001380:	7afb      	ldrb	r3, [r7, #11]
 8001382:	2b39      	cmp	r3, #57	; 0x39
 8001384:	d901      	bls.n	800138a <xatoi+0xb6>
 8001386:	2300      	movs	r3, #0
 8001388:	e046      	b.n	8001418 <xatoi+0x144>
 800138a:	2308      	movs	r3, #8
 800138c:	72bb      	strb	r3, [r7, #10]
 800138e:	e009      	b.n	80013a4 <xatoi+0xd0>
 8001390:	7afb      	ldrb	r3, [r7, #11]
 8001392:	2b2f      	cmp	r3, #47	; 0x2f
 8001394:	d902      	bls.n	800139c <xatoi+0xc8>
 8001396:	7afb      	ldrb	r3, [r7, #11]
 8001398:	2b39      	cmp	r3, #57	; 0x39
 800139a:	d901      	bls.n	80013a0 <xatoi+0xcc>
 800139c:	2300      	movs	r3, #0
 800139e:	e03b      	b.n	8001418 <xatoi+0x144>
 80013a0:	230a      	movs	r3, #10
 80013a2:	72bb      	strb	r3, [r7, #10]
 80013a4:	2300      	movs	r3, #0
 80013a6:	60fb      	str	r3, [r7, #12]
 80013a8:	e029      	b.n	80013fe <xatoi+0x12a>
 80013aa:	7afb      	ldrb	r3, [r7, #11]
 80013ac:	2b60      	cmp	r3, #96	; 0x60
 80013ae:	d902      	bls.n	80013b6 <xatoi+0xe2>
 80013b0:	7afb      	ldrb	r3, [r7, #11]
 80013b2:	3b20      	subs	r3, #32
 80013b4:	72fb      	strb	r3, [r7, #11]
 80013b6:	7afb      	ldrb	r3, [r7, #11]
 80013b8:	3b30      	subs	r3, #48	; 0x30
 80013ba:	72fb      	strb	r3, [r7, #11]
 80013bc:	7afb      	ldrb	r3, [r7, #11]
 80013be:	2b10      	cmp	r3, #16
 80013c0:	d907      	bls.n	80013d2 <xatoi+0xfe>
 80013c2:	7afb      	ldrb	r3, [r7, #11]
 80013c4:	3b07      	subs	r3, #7
 80013c6:	72fb      	strb	r3, [r7, #11]
 80013c8:	7afb      	ldrb	r3, [r7, #11]
 80013ca:	2b09      	cmp	r3, #9
 80013cc:	d801      	bhi.n	80013d2 <xatoi+0xfe>
 80013ce:	2300      	movs	r3, #0
 80013d0:	e022      	b.n	8001418 <xatoi+0x144>
 80013d2:	7afa      	ldrb	r2, [r7, #11]
 80013d4:	7abb      	ldrb	r3, [r7, #10]
 80013d6:	429a      	cmp	r2, r3
 80013d8:	d301      	bcc.n	80013de <xatoi+0x10a>
 80013da:	2300      	movs	r3, #0
 80013dc:	e01c      	b.n	8001418 <xatoi+0x144>
 80013de:	7abb      	ldrb	r3, [r7, #10]
 80013e0:	68fa      	ldr	r2, [r7, #12]
 80013e2:	fb02 f203 	mul.w	r2, r2, r3
 80013e6:	7afb      	ldrb	r3, [r7, #11]
 80013e8:	4413      	add	r3, r2
 80013ea:	60fb      	str	r3, [r7, #12]
 80013ec:	687b      	ldr	r3, [r7, #4]
 80013ee:	681b      	ldr	r3, [r3, #0]
 80013f0:	1c5a      	adds	r2, r3, #1
 80013f2:	687b      	ldr	r3, [r7, #4]
 80013f4:	601a      	str	r2, [r3, #0]
 80013f6:	687b      	ldr	r3, [r7, #4]
 80013f8:	681b      	ldr	r3, [r3, #0]
 80013fa:	781b      	ldrb	r3, [r3, #0]
 80013fc:	72fb      	strb	r3, [r7, #11]
 80013fe:	7afb      	ldrb	r3, [r7, #11]
 8001400:	2b20      	cmp	r3, #32
 8001402:	d8d2      	bhi.n	80013aa <xatoi+0xd6>
 8001404:	7a7b      	ldrb	r3, [r7, #9]
 8001406:	2b00      	cmp	r3, #0
 8001408:	d002      	beq.n	8001410 <xatoi+0x13c>
 800140a:	68fb      	ldr	r3, [r7, #12]
 800140c:	425b      	negs	r3, r3
 800140e:	60fb      	str	r3, [r7, #12]
 8001410:	68fa      	ldr	r2, [r7, #12]
 8001412:	683b      	ldr	r3, [r7, #0]
 8001414:	601a      	str	r2, [r3, #0]
 8001416:	2301      	movs	r3, #1
 8001418:	4618      	mov	r0, r3
 800141a:	3714      	adds	r7, #20
 800141c:	46bd      	mov	sp, r7
 800141e:	bc80      	pop	{r7}
 8001420:	4770      	bx	lr
 8001422:	bf00      	nop

08001424 <NVIC_EnableIRQ>:
 8001424:	b480      	push	{r7}
 8001426:	b083      	sub	sp, #12
 8001428:	af00      	add	r7, sp, #0
 800142a:	4603      	mov	r3, r0
 800142c:	71fb      	strb	r3, [r7, #7]
 800142e:	4908      	ldr	r1, [pc, #32]	; (8001450 <NVIC_EnableIRQ+0x2c>)
 8001430:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001434:	095b      	lsrs	r3, r3, #5
 8001436:	79fa      	ldrb	r2, [r7, #7]
 8001438:	f002 021f 	and.w	r2, r2, #31
 800143c:	2001      	movs	r0, #1
 800143e:	fa00 f202 	lsl.w	r2, r0, r2
 8001442:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001446:	bf00      	nop
 8001448:	370c      	adds	r7, #12
 800144a:	46bd      	mov	sp, r7
 800144c:	bc80      	pop	{r7}
 800144e:	4770      	bx	lr
 8001450:	e000e100 	.word	0xe000e100

08001454 <adc_common_init>:
 8001454:	b480      	push	{r7}
 8001456:	af00      	add	r7, sp, #0
 8001458:	4a07      	ldr	r2, [pc, #28]	; (8001478 <adc_common_init+0x24>)
 800145a:	4b07      	ldr	r3, [pc, #28]	; (8001478 <adc_common_init+0x24>)
 800145c:	685b      	ldr	r3, [r3, #4]
 800145e:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 8001462:	6053      	str	r3, [r2, #4]
 8001464:	4a04      	ldr	r2, [pc, #16]	; (8001478 <adc_common_init+0x24>)
 8001466:	4b04      	ldr	r3, [pc, #16]	; (8001478 <adc_common_init+0x24>)
 8001468:	685b      	ldr	r3, [r3, #4]
 800146a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800146e:	6053      	str	r3, [r2, #4]
 8001470:	bf00      	nop
 8001472:	46bd      	mov	sp, r7
 8001474:	bc80      	pop	{r7}
 8001476:	4770      	bx	lr
 8001478:	40012300 	.word	0x40012300

0800147c <adc1_init>:
 800147c:	b480      	push	{r7}
 800147e:	af00      	add	r7, sp, #0
 8001480:	4a29      	ldr	r2, [pc, #164]	; (8001528 <adc1_init+0xac>)
 8001482:	4b29      	ldr	r3, [pc, #164]	; (8001528 <adc1_init+0xac>)
 8001484:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001486:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800148a:	6453      	str	r3, [r2, #68]	; 0x44
 800148c:	4a26      	ldr	r2, [pc, #152]	; (8001528 <adc1_init+0xac>)
 800148e:	4b26      	ldr	r3, [pc, #152]	; (8001528 <adc1_init+0xac>)
 8001490:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001492:	f043 0301 	orr.w	r3, r3, #1
 8001496:	6313      	str	r3, [r2, #48]	; 0x30
 8001498:	4a24      	ldr	r2, [pc, #144]	; (800152c <adc1_init+0xb0>)
 800149a:	4b24      	ldr	r3, [pc, #144]	; (800152c <adc1_init+0xb0>)
 800149c:	681b      	ldr	r3, [r3, #0]
 800149e:	f023 0303 	bic.w	r3, r3, #3
 80014a2:	6013      	str	r3, [r2, #0]
 80014a4:	4a21      	ldr	r2, [pc, #132]	; (800152c <adc1_init+0xb0>)
 80014a6:	4b21      	ldr	r3, [pc, #132]	; (800152c <adc1_init+0xb0>)
 80014a8:	681b      	ldr	r3, [r3, #0]
 80014aa:	f043 0303 	orr.w	r3, r3, #3
 80014ae:	6013      	str	r3, [r2, #0]
 80014b0:	4a1f      	ldr	r2, [pc, #124]	; (8001530 <adc1_init+0xb4>)
 80014b2:	4b1f      	ldr	r3, [pc, #124]	; (8001530 <adc1_init+0xb4>)
 80014b4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014b6:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 80014ba:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014bc:	4a1c      	ldr	r2, [pc, #112]	; (8001530 <adc1_init+0xb4>)
 80014be:	4b1c      	ldr	r3, [pc, #112]	; (8001530 <adc1_init+0xb4>)
 80014c0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014c2:	62d3      	str	r3, [r2, #44]	; 0x2c
 80014c4:	4a1a      	ldr	r2, [pc, #104]	; (8001530 <adc1_init+0xb4>)
 80014c6:	4b1a      	ldr	r3, [pc, #104]	; (8001530 <adc1_init+0xb4>)
 80014c8:	685b      	ldr	r3, [r3, #4]
 80014ca:	f043 0320 	orr.w	r3, r3, #32
 80014ce:	6053      	str	r3, [r2, #4]
 80014d0:	4a17      	ldr	r2, [pc, #92]	; (8001530 <adc1_init+0xb4>)
 80014d2:	4b17      	ldr	r3, [pc, #92]	; (8001530 <adc1_init+0xb4>)
 80014d4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80014d6:	f023 031f 	bic.w	r3, r3, #31
 80014da:	6353      	str	r3, [r2, #52]	; 0x34
 80014dc:	4a14      	ldr	r2, [pc, #80]	; (8001530 <adc1_init+0xb4>)
 80014de:	4b14      	ldr	r3, [pc, #80]	; (8001530 <adc1_init+0xb4>)
 80014e0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80014e2:	6353      	str	r3, [r2, #52]	; 0x34
 80014e4:	4a12      	ldr	r2, [pc, #72]	; (8001530 <adc1_init+0xb4>)
 80014e6:	4b12      	ldr	r3, [pc, #72]	; (8001530 <adc1_init+0xb4>)
 80014e8:	689b      	ldr	r3, [r3, #8]
 80014ea:	f023 5340 	bic.w	r3, r3, #805306368	; 0x30000000
 80014ee:	6093      	str	r3, [r2, #8]
 80014f0:	4a0f      	ldr	r2, [pc, #60]	; (8001530 <adc1_init+0xb4>)
 80014f2:	4b0f      	ldr	r3, [pc, #60]	; (8001530 <adc1_init+0xb4>)
 80014f4:	689b      	ldr	r3, [r3, #8]
 80014f6:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80014fa:	6093      	str	r3, [r2, #8]
 80014fc:	4a0c      	ldr	r2, [pc, #48]	; (8001530 <adc1_init+0xb4>)
 80014fe:	4b0c      	ldr	r3, [pc, #48]	; (8001530 <adc1_init+0xb4>)
 8001500:	689b      	ldr	r3, [r3, #8]
 8001502:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 8001506:	6093      	str	r3, [r2, #8]
 8001508:	4a09      	ldr	r2, [pc, #36]	; (8001530 <adc1_init+0xb4>)
 800150a:	4b09      	ldr	r3, [pc, #36]	; (8001530 <adc1_init+0xb4>)
 800150c:	689b      	ldr	r3, [r3, #8]
 800150e:	f043 63a0 	orr.w	r3, r3, #83886080	; 0x5000000
 8001512:	6093      	str	r3, [r2, #8]
 8001514:	4a06      	ldr	r2, [pc, #24]	; (8001530 <adc1_init+0xb4>)
 8001516:	4b06      	ldr	r3, [pc, #24]	; (8001530 <adc1_init+0xb4>)
 8001518:	689b      	ldr	r3, [r3, #8]
 800151a:	f043 0301 	orr.w	r3, r3, #1
 800151e:	6093      	str	r3, [r2, #8]
 8001520:	bf00      	nop
 8001522:	46bd      	mov	sp, r7
 8001524:	bc80      	pop	{r7}
 8001526:	4770      	bx	lr
 8001528:	40023800 	.word	0x40023800
 800152c:	40020000 	.word	0x40020000
 8001530:	40012000 	.word	0x40012000

08001534 <adc2_init>:
 8001534:	b480      	push	{r7}
 8001536:	af00      	add	r7, sp, #0
 8001538:	4a1b      	ldr	r2, [pc, #108]	; (80015a8 <adc2_init+0x74>)
 800153a:	4b1b      	ldr	r3, [pc, #108]	; (80015a8 <adc2_init+0x74>)
 800153c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800153e:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8001542:	6453      	str	r3, [r2, #68]	; 0x44
 8001544:	4a18      	ldr	r2, [pc, #96]	; (80015a8 <adc2_init+0x74>)
 8001546:	4b18      	ldr	r3, [pc, #96]	; (80015a8 <adc2_init+0x74>)
 8001548:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800154a:	f043 0301 	orr.w	r3, r3, #1
 800154e:	6313      	str	r3, [r2, #48]	; 0x30
 8001550:	4a16      	ldr	r2, [pc, #88]	; (80015ac <adc2_init+0x78>)
 8001552:	4b16      	ldr	r3, [pc, #88]	; (80015ac <adc2_init+0x78>)
 8001554:	681b      	ldr	r3, [r3, #0]
 8001556:	f023 030c 	bic.w	r3, r3, #12
 800155a:	6013      	str	r3, [r2, #0]
 800155c:	4a13      	ldr	r2, [pc, #76]	; (80015ac <adc2_init+0x78>)
 800155e:	4b13      	ldr	r3, [pc, #76]	; (80015ac <adc2_init+0x78>)
 8001560:	681b      	ldr	r3, [r3, #0]
 8001562:	f043 030c 	orr.w	r3, r3, #12
 8001566:	6013      	str	r3, [r2, #0]
 8001568:	4a11      	ldr	r2, [pc, #68]	; (80015b0 <adc2_init+0x7c>)
 800156a:	4b11      	ldr	r3, [pc, #68]	; (80015b0 <adc2_init+0x7c>)
 800156c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800156e:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8001572:	62d3      	str	r3, [r2, #44]	; 0x2c
 8001574:	4a0e      	ldr	r2, [pc, #56]	; (80015b0 <adc2_init+0x7c>)
 8001576:	4b0e      	ldr	r3, [pc, #56]	; (80015b0 <adc2_init+0x7c>)
 8001578:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800157a:	62d3      	str	r3, [r2, #44]	; 0x2c
 800157c:	4a0c      	ldr	r2, [pc, #48]	; (80015b0 <adc2_init+0x7c>)
 800157e:	4b0c      	ldr	r3, [pc, #48]	; (80015b0 <adc2_init+0x7c>)
 8001580:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001582:	f023 031f 	bic.w	r3, r3, #31
 8001586:	6353      	str	r3, [r2, #52]	; 0x34
 8001588:	4a09      	ldr	r2, [pc, #36]	; (80015b0 <adc2_init+0x7c>)
 800158a:	4b09      	ldr	r3, [pc, #36]	; (80015b0 <adc2_init+0x7c>)
 800158c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800158e:	f043 0301 	orr.w	r3, r3, #1
 8001592:	6353      	str	r3, [r2, #52]	; 0x34
 8001594:	4a06      	ldr	r2, [pc, #24]	; (80015b0 <adc2_init+0x7c>)
 8001596:	4b06      	ldr	r3, [pc, #24]	; (80015b0 <adc2_init+0x7c>)
 8001598:	689b      	ldr	r3, [r3, #8]
 800159a:	f043 0301 	orr.w	r3, r3, #1
 800159e:	6093      	str	r3, [r2, #8]
 80015a0:	bf00      	nop
 80015a2:	46bd      	mov	sp, r7
 80015a4:	bc80      	pop	{r7}
 80015a6:	4770      	bx	lr
 80015a8:	40023800 	.word	0x40023800
 80015ac:	40020000 	.word	0x40020000
 80015b0:	40012100 	.word	0x40012100

080015b4 <adc3_init>:
 80015b4:	b480      	push	{r7}
 80015b6:	af00      	add	r7, sp, #0
 80015b8:	4a1b      	ldr	r2, [pc, #108]	; (8001628 <adc3_init+0x74>)
 80015ba:	4b1b      	ldr	r3, [pc, #108]	; (8001628 <adc3_init+0x74>)
 80015bc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80015be:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80015c2:	6453      	str	r3, [r2, #68]	; 0x44
 80015c4:	4a18      	ldr	r2, [pc, #96]	; (8001628 <adc3_init+0x74>)
 80015c6:	4b18      	ldr	r3, [pc, #96]	; (8001628 <adc3_init+0x74>)
 80015c8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80015ca:	f043 0301 	orr.w	r3, r3, #1
 80015ce:	6313      	str	r3, [r2, #48]	; 0x30
 80015d0:	4a16      	ldr	r2, [pc, #88]	; (800162c <adc3_init+0x78>)
 80015d2:	4b16      	ldr	r3, [pc, #88]	; (800162c <adc3_init+0x78>)
 80015d4:	681b      	ldr	r3, [r3, #0]
 80015d6:	f023 03c0 	bic.w	r3, r3, #192	; 0xc0
 80015da:	6013      	str	r3, [r2, #0]
 80015dc:	4a13      	ldr	r2, [pc, #76]	; (800162c <adc3_init+0x78>)
 80015de:	4b13      	ldr	r3, [pc, #76]	; (800162c <adc3_init+0x78>)
 80015e0:	681b      	ldr	r3, [r3, #0]
 80015e2:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 80015e6:	6013      	str	r3, [r2, #0]
 80015e8:	4a11      	ldr	r2, [pc, #68]	; (8001630 <adc3_init+0x7c>)
 80015ea:	4b11      	ldr	r3, [pc, #68]	; (8001630 <adc3_init+0x7c>)
 80015ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015ee:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 80015f2:	62d3      	str	r3, [r2, #44]	; 0x2c
 80015f4:	4a0e      	ldr	r2, [pc, #56]	; (8001630 <adc3_init+0x7c>)
 80015f6:	4b0e      	ldr	r3, [pc, #56]	; (8001630 <adc3_init+0x7c>)
 80015f8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015fa:	62d3      	str	r3, [r2, #44]	; 0x2c
 80015fc:	4a0c      	ldr	r2, [pc, #48]	; (8001630 <adc3_init+0x7c>)
 80015fe:	4b0c      	ldr	r3, [pc, #48]	; (8001630 <adc3_init+0x7c>)
 8001600:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8001602:	f023 031f 	bic.w	r3, r3, #31
 8001606:	6353      	str	r3, [r2, #52]	; 0x34
 8001608:	4a09      	ldr	r2, [pc, #36]	; (8001630 <adc3_init+0x7c>)
 800160a:	4b09      	ldr	r3, [pc, #36]	; (8001630 <adc3_init+0x7c>)
 800160c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800160e:	f043 0303 	orr.w	r3, r3, #3
 8001612:	6353      	str	r3, [r2, #52]	; 0x34
 8001614:	4a06      	ldr	r2, [pc, #24]	; (8001630 <adc3_init+0x7c>)
 8001616:	4b06      	ldr	r3, [pc, #24]	; (8001630 <adc3_init+0x7c>)
 8001618:	689b      	ldr	r3, [r3, #8]
 800161a:	f043 0301 	orr.w	r3, r3, #1
 800161e:	6093      	str	r3, [r2, #8]
 8001620:	bf00      	nop
 8001622:	46bd      	mov	sp, r7
 8001624:	bc80      	pop	{r7}
 8001626:	4770      	bx	lr
 8001628:	40023800 	.word	0x40023800
 800162c:	40020000 	.word	0x40020000
 8001630:	40012200 	.word	0x40012200

08001634 <adc_set_trigger>:
 8001634:	b480      	push	{r7}
 8001636:	af00      	add	r7, sp, #0
 8001638:	4a2d      	ldr	r2, [pc, #180]	; (80016f0 <adc_set_trigger+0xbc>)
 800163a:	4b2d      	ldr	r3, [pc, #180]	; (80016f0 <adc_set_trigger+0xbc>)
 800163c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800163e:	f043 0301 	orr.w	r3, r3, #1
 8001642:	6413      	str	r3, [r2, #64]	; 0x40
 8001644:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001648:	2229      	movs	r2, #41	; 0x29
 800164a:	851a      	strh	r2, [r3, #40]	; 0x28
 800164c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001650:	2203      	movs	r2, #3
 8001652:	62da      	str	r2, [r3, #44]	; 0x2c
 8001654:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001658:	2202      	movs	r2, #2
 800165a:	641a      	str	r2, [r3, #64]	; 0x40
 800165c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001660:	2200      	movs	r2, #0
 8001662:	839a      	strh	r2, [r3, #28]
 8001664:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001668:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800166c:	8b9b      	ldrh	r3, [r3, #28]
 800166e:	b29b      	uxth	r3, r3
 8001670:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 8001674:	b29b      	uxth	r3, r3
 8001676:	8393      	strh	r3, [r2, #28]
 8001678:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800167c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001680:	8c1b      	ldrh	r3, [r3, #32]
 8001682:	b29b      	uxth	r3, r3
 8001684:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8001688:	b29b      	uxth	r3, r3
 800168a:	8413      	strh	r3, [r2, #32]
 800168c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001690:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001694:	881b      	ldrh	r3, [r3, #0]
 8001696:	b29b      	uxth	r3, r3
 8001698:	f043 0301 	orr.w	r3, r3, #1
 800169c:	b29b      	uxth	r3, r3
 800169e:	8013      	strh	r3, [r2, #0]
 80016a0:	4a13      	ldr	r2, [pc, #76]	; (80016f0 <adc_set_trigger+0xbc>)
 80016a2:	4b13      	ldr	r3, [pc, #76]	; (80016f0 <adc_set_trigger+0xbc>)
 80016a4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80016a6:	f043 0302 	orr.w	r3, r3, #2
 80016aa:	6313      	str	r3, [r2, #48]	; 0x30
 80016ac:	4a11      	ldr	r2, [pc, #68]	; (80016f4 <adc_set_trigger+0xc0>)
 80016ae:	4b11      	ldr	r3, [pc, #68]	; (80016f4 <adc_set_trigger+0xc0>)
 80016b0:	681b      	ldr	r3, [r3, #0]
 80016b2:	f423 0340 	bic.w	r3, r3, #12582912	; 0xc00000
 80016b6:	6013      	str	r3, [r2, #0]
 80016b8:	4a0e      	ldr	r2, [pc, #56]	; (80016f4 <adc_set_trigger+0xc0>)
 80016ba:	4b0e      	ldr	r3, [pc, #56]	; (80016f4 <adc_set_trigger+0xc0>)
 80016bc:	681b      	ldr	r3, [r3, #0]
 80016be:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80016c2:	6013      	str	r3, [r2, #0]
 80016c4:	4a0b      	ldr	r2, [pc, #44]	; (80016f4 <adc_set_trigger+0xc0>)
 80016c6:	4b0b      	ldr	r3, [pc, #44]	; (80016f4 <adc_set_trigger+0xc0>)
 80016c8:	689b      	ldr	r3, [r3, #8]
 80016ca:	f443 0340 	orr.w	r3, r3, #12582912	; 0xc00000
 80016ce:	6093      	str	r3, [r2, #8]
 80016d0:	4a08      	ldr	r2, [pc, #32]	; (80016f4 <adc_set_trigger+0xc0>)
 80016d2:	4b08      	ldr	r3, [pc, #32]	; (80016f4 <adc_set_trigger+0xc0>)
 80016d4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80016d6:	f423 4370 	bic.w	r3, r3, #61440	; 0xf000
 80016da:	6253      	str	r3, [r2, #36]	; 0x24
 80016dc:	4a05      	ldr	r2, [pc, #20]	; (80016f4 <adc_set_trigger+0xc0>)
 80016de:	4b05      	ldr	r3, [pc, #20]	; (80016f4 <adc_set_trigger+0xc0>)
 80016e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80016e2:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 80016e6:	6253      	str	r3, [r2, #36]	; 0x24
 80016e8:	bf00      	nop
 80016ea:	46bd      	mov	sp, r7
 80016ec:	bc80      	pop	{r7}
 80016ee:	4770      	bx	lr
 80016f0:	40023800 	.word	0x40023800
 80016f4:	40020400 	.word	0x40020400

080016f8 <adc_init>:
 80016f8:	b580      	push	{r7, lr}
 80016fa:	af00      	add	r7, sp, #0
 80016fc:	f7ff feaa 	bl	8001454 <adc_common_init>
 8001700:	f7ff febc 	bl	800147c <adc1_init>
 8001704:	f7ff ff16 	bl	8001534 <adc2_init>
 8001708:	f7ff ff54 	bl	80015b4 <adc3_init>
 800170c:	f7ff ff92 	bl	8001634 <adc_set_trigger>
 8001710:	4a08      	ldr	r2, [pc, #32]	; (8001734 <adc_init+0x3c>)
 8001712:	4b08      	ldr	r3, [pc, #32]	; (8001734 <adc_init+0x3c>)
 8001714:	685b      	ldr	r3, [r3, #4]
 8001716:	f023 031f 	bic.w	r3, r3, #31
 800171a:	6053      	str	r3, [r2, #4]
 800171c:	4a05      	ldr	r2, [pc, #20]	; (8001734 <adc_init+0x3c>)
 800171e:	4b05      	ldr	r3, [pc, #20]	; (8001734 <adc_init+0x3c>)
 8001720:	685b      	ldr	r3, [r3, #4]
 8001722:	f043 0316 	orr.w	r3, r3, #22
 8001726:	6053      	str	r3, [r2, #4]
 8001728:	2012      	movs	r0, #18
 800172a:	f7ff fe7b 	bl	8001424 <NVIC_EnableIRQ>
 800172e:	bf00      	nop
 8001730:	bd80      	pop	{r7, pc}
 8001732:	bf00      	nop
 8001734:	40012300 	.word	0x40012300

08001738 <TIM2_IRQHandler>:
 8001738:	b480      	push	{r7}
 800173a:	af00      	add	r7, sp, #0
 800173c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001740:	8a1b      	ldrh	r3, [r3, #16]
 8001742:	b29b      	uxth	r3, r3
 8001744:	f003 0301 	and.w	r3, r3, #1
 8001748:	2b00      	cmp	r3, #0
 800174a:	d009      	beq.n	8001760 <TIM2_IRQHandler+0x28>
 800174c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001750:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001754:	8a1b      	ldrh	r3, [r3, #16]
 8001756:	b29b      	uxth	r3, r3
 8001758:	f023 0301 	bic.w	r3, r3, #1
 800175c:	b29b      	uxth	r3, r3
 800175e:	8213      	strh	r3, [r2, #16]
 8001760:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001764:	8a1b      	ldrh	r3, [r3, #16]
 8001766:	b29b      	uxth	r3, r3
 8001768:	f003 0302 	and.w	r3, r3, #2
 800176c:	2b00      	cmp	r3, #0
 800176e:	d009      	beq.n	8001784 <TIM2_IRQHandler+0x4c>
 8001770:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001774:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001778:	8a1b      	ldrh	r3, [r3, #16]
 800177a:	b29b      	uxth	r3, r3
 800177c:	f023 0302 	bic.w	r3, r3, #2
 8001780:	b29b      	uxth	r3, r3
 8001782:	8213      	strh	r3, [r2, #16]
 8001784:	bf00      	nop
 8001786:	46bd      	mov	sp, r7
 8001788:	bc80      	pop	{r7}
 800178a:	4770      	bx	lr

0800178c <offset_pwm_init>:
 800178c:	b480      	push	{r7}
 800178e:	af00      	add	r7, sp, #0
 8001790:	4a31      	ldr	r2, [pc, #196]	; (8001858 <offset_pwm_init+0xcc>)
 8001792:	4b31      	ldr	r3, [pc, #196]	; (8001858 <offset_pwm_init+0xcc>)
 8001794:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001796:	f043 0304 	orr.w	r3, r3, #4
 800179a:	6413      	str	r3, [r2, #64]	; 0x40
 800179c:	4b2f      	ldr	r3, [pc, #188]	; (800185c <offset_pwm_init+0xd0>)
 800179e:	2203      	movs	r2, #3
 80017a0:	851a      	strh	r2, [r3, #40]	; 0x28
 80017a2:	4b2e      	ldr	r3, [pc, #184]	; (800185c <offset_pwm_init+0xd0>)
 80017a4:	2263      	movs	r2, #99	; 0x63
 80017a6:	62da      	str	r2, [r3, #44]	; 0x2c
 80017a8:	4b2c      	ldr	r3, [pc, #176]	; (800185c <offset_pwm_init+0xd0>)
 80017aa:	2232      	movs	r2, #50	; 0x32
 80017ac:	635a      	str	r2, [r3, #52]	; 0x34
 80017ae:	4b2b      	ldr	r3, [pc, #172]	; (800185c <offset_pwm_init+0xd0>)
 80017b0:	2232      	movs	r2, #50	; 0x32
 80017b2:	639a      	str	r2, [r3, #56]	; 0x38
 80017b4:	4b29      	ldr	r3, [pc, #164]	; (800185c <offset_pwm_init+0xd0>)
 80017b6:	2200      	movs	r2, #0
 80017b8:	831a      	strh	r2, [r3, #24]
 80017ba:	4a28      	ldr	r2, [pc, #160]	; (800185c <offset_pwm_init+0xd0>)
 80017bc:	4b27      	ldr	r3, [pc, #156]	; (800185c <offset_pwm_init+0xd0>)
 80017be:	8b1b      	ldrh	r3, [r3, #24]
 80017c0:	b29b      	uxth	r3, r3
 80017c2:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 80017c6:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 80017ca:	b29b      	uxth	r3, r3
 80017cc:	8313      	strh	r3, [r2, #24]
 80017ce:	4a23      	ldr	r2, [pc, #140]	; (800185c <offset_pwm_init+0xd0>)
 80017d0:	4b22      	ldr	r3, [pc, #136]	; (800185c <offset_pwm_init+0xd0>)
 80017d2:	8c1b      	ldrh	r3, [r3, #32]
 80017d4:	b29b      	uxth	r3, r3
 80017d6:	f043 0311 	orr.w	r3, r3, #17
 80017da:	b29b      	uxth	r3, r3
 80017dc:	8413      	strh	r3, [r2, #32]
 80017de:	4a1f      	ldr	r2, [pc, #124]	; (800185c <offset_pwm_init+0xd0>)
 80017e0:	4b1e      	ldr	r3, [pc, #120]	; (800185c <offset_pwm_init+0xd0>)
 80017e2:	881b      	ldrh	r3, [r3, #0]
 80017e4:	b29b      	uxth	r3, r3
 80017e6:	f043 0301 	orr.w	r3, r3, #1
 80017ea:	b29b      	uxth	r3, r3
 80017ec:	8013      	strh	r3, [r2, #0]
 80017ee:	4a1a      	ldr	r2, [pc, #104]	; (8001858 <offset_pwm_init+0xcc>)
 80017f0:	4b19      	ldr	r3, [pc, #100]	; (8001858 <offset_pwm_init+0xcc>)
 80017f2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80017f4:	f043 0308 	orr.w	r3, r3, #8
 80017f8:	6313      	str	r3, [r2, #48]	; 0x30
 80017fa:	4a19      	ldr	r2, [pc, #100]	; (8001860 <offset_pwm_init+0xd4>)
 80017fc:	4b18      	ldr	r3, [pc, #96]	; (8001860 <offset_pwm_init+0xd4>)
 80017fe:	681b      	ldr	r3, [r3, #0]
 8001800:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 8001804:	6013      	str	r3, [r2, #0]
 8001806:	4a16      	ldr	r2, [pc, #88]	; (8001860 <offset_pwm_init+0xd4>)
 8001808:	4b15      	ldr	r3, [pc, #84]	; (8001860 <offset_pwm_init+0xd4>)
 800180a:	681b      	ldr	r3, [r3, #0]
 800180c:	f043 6320 	orr.w	r3, r3, #167772160	; 0xa000000
 8001810:	6013      	str	r3, [r2, #0]
 8001812:	4a13      	ldr	r2, [pc, #76]	; (8001860 <offset_pwm_init+0xd4>)
 8001814:	4b12      	ldr	r3, [pc, #72]	; (8001860 <offset_pwm_init+0xd4>)
 8001816:	689b      	ldr	r3, [r3, #8]
 8001818:	f043 6370 	orr.w	r3, r3, #251658240	; 0xf000000
 800181c:	6093      	str	r3, [r2, #8]
 800181e:	4a10      	ldr	r2, [pc, #64]	; (8001860 <offset_pwm_init+0xd4>)
 8001820:	4b0f      	ldr	r3, [pc, #60]	; (8001860 <offset_pwm_init+0xd4>)
 8001822:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001824:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 8001828:	6253      	str	r3, [r2, #36]	; 0x24
 800182a:	4a0d      	ldr	r2, [pc, #52]	; (8001860 <offset_pwm_init+0xd4>)
 800182c:	4b0c      	ldr	r3, [pc, #48]	; (8001860 <offset_pwm_init+0xd4>)
 800182e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001830:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8001834:	6253      	str	r3, [r2, #36]	; 0x24
 8001836:	4a0a      	ldr	r2, [pc, #40]	; (8001860 <offset_pwm_init+0xd4>)
 8001838:	4b09      	ldr	r3, [pc, #36]	; (8001860 <offset_pwm_init+0xd4>)
 800183a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800183c:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8001840:	6253      	str	r3, [r2, #36]	; 0x24
 8001842:	4a07      	ldr	r2, [pc, #28]	; (8001860 <offset_pwm_init+0xd4>)
 8001844:	4b06      	ldr	r3, [pc, #24]	; (8001860 <offset_pwm_init+0xd4>)
 8001846:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001848:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800184c:	6253      	str	r3, [r2, #36]	; 0x24
 800184e:	bf00      	nop
 8001850:	46bd      	mov	sp, r7
 8001852:	bc80      	pop	{r7}
 8001854:	4770      	bx	lr
 8001856:	bf00      	nop
 8001858:	40023800 	.word	0x40023800
 800185c:	40000800 	.word	0x40000800
 8001860:	40020c00 	.word	0x40020c00

08001864 <dac_init>:
 8001864:	b580      	push	{r7, lr}
 8001866:	af00      	add	r7, sp, #0
 8001868:	4a16      	ldr	r2, [pc, #88]	; (80018c4 <dac_init+0x60>)
 800186a:	4b16      	ldr	r3, [pc, #88]	; (80018c4 <dac_init+0x60>)
 800186c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800186e:	f043 5300 	orr.w	r3, r3, #536870912	; 0x20000000
 8001872:	6413      	str	r3, [r2, #64]	; 0x40
 8001874:	4a14      	ldr	r2, [pc, #80]	; (80018c8 <dac_init+0x64>)
 8001876:	4b14      	ldr	r3, [pc, #80]	; (80018c8 <dac_init+0x64>)
 8001878:	681b      	ldr	r3, [r3, #0]
 800187a:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 800187e:	6013      	str	r3, [r2, #0]
 8001880:	4a11      	ldr	r2, [pc, #68]	; (80018c8 <dac_init+0x64>)
 8001882:	4b11      	ldr	r3, [pc, #68]	; (80018c8 <dac_init+0x64>)
 8001884:	681b      	ldr	r3, [r3, #0]
 8001886:	f443 7340 	orr.w	r3, r3, #768	; 0x300
 800188a:	6013      	str	r3, [r2, #0]
 800188c:	4a0e      	ldr	r2, [pc, #56]	; (80018c8 <dac_init+0x64>)
 800188e:	4b0e      	ldr	r3, [pc, #56]	; (80018c8 <dac_init+0x64>)
 8001890:	681b      	ldr	r3, [r3, #0]
 8001892:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
 8001896:	6013      	str	r3, [r2, #0]
 8001898:	4a0b      	ldr	r2, [pc, #44]	; (80018c8 <dac_init+0x64>)
 800189a:	4b0b      	ldr	r3, [pc, #44]	; (80018c8 <dac_init+0x64>)
 800189c:	681b      	ldr	r3, [r3, #0]
 800189e:	f443 6340 	orr.w	r3, r3, #3072	; 0xc00
 80018a2:	6013      	str	r3, [r2, #0]
 80018a4:	4a09      	ldr	r2, [pc, #36]	; (80018cc <dac_init+0x68>)
 80018a6:	4b09      	ldr	r3, [pc, #36]	; (80018cc <dac_init+0x68>)
 80018a8:	681b      	ldr	r3, [r3, #0]
 80018aa:	f043 0301 	orr.w	r3, r3, #1
 80018ae:	6013      	str	r3, [r2, #0]
 80018b0:	4a06      	ldr	r2, [pc, #24]	; (80018cc <dac_init+0x68>)
 80018b2:	4b06      	ldr	r3, [pc, #24]	; (80018cc <dac_init+0x68>)
 80018b4:	681b      	ldr	r3, [r3, #0]
 80018b6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80018ba:	6013      	str	r3, [r2, #0]
 80018bc:	f7ff ff66 	bl	800178c <offset_pwm_init>
 80018c0:	bf00      	nop
 80018c2:	bd80      	pop	{r7, pc}
 80018c4:	40023800 	.word	0x40023800
 80018c8:	40020000 	.word	0x40020000
 80018cc:	40007400 	.word	0x40007400

080018d0 <dac_offset_set>:
 80018d0:	b480      	push	{r7}
 80018d2:	b083      	sub	sp, #12
 80018d4:	af00      	add	r7, sp, #0
 80018d6:	4603      	mov	r3, r0
 80018d8:	80fb      	strh	r3, [r7, #6]
 80018da:	4a04      	ldr	r2, [pc, #16]	; (80018ec <dac_offset_set+0x1c>)
 80018dc:	88fb      	ldrh	r3, [r7, #6]
 80018de:	6353      	str	r3, [r2, #52]	; 0x34
 80018e0:	bf00      	nop
 80018e2:	370c      	adds	r7, #12
 80018e4:	46bd      	mov	sp, r7
 80018e6:	bc80      	pop	{r7}
 80018e8:	4770      	bx	lr
 80018ea:	bf00      	nop
 80018ec:	40000800 	.word	0x40000800

080018f0 <NVIC_EnableIRQ>:
 80018f0:	b480      	push	{r7}
 80018f2:	b083      	sub	sp, #12
 80018f4:	af00      	add	r7, sp, #0
 80018f6:	4603      	mov	r3, r0
 80018f8:	71fb      	strb	r3, [r7, #7]
 80018fa:	4908      	ldr	r1, [pc, #32]	; (800191c <NVIC_EnableIRQ+0x2c>)
 80018fc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001900:	095b      	lsrs	r3, r3, #5
 8001902:	79fa      	ldrb	r2, [r7, #7]
 8001904:	f002 021f 	and.w	r2, r2, #31
 8001908:	2001      	movs	r0, #1
 800190a:	fa00 f202 	lsl.w	r2, r0, r2
 800190e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001912:	bf00      	nop
 8001914:	370c      	adds	r7, #12
 8001916:	46bd      	mov	sp, r7
 8001918:	bc80      	pop	{r7}
 800191a:	4770      	bx	lr
 800191c:	e000e100 	.word	0xe000e100

08001920 <start_trans>:
 8001920:	b480      	push	{r7}
 8001922:	b083      	sub	sp, #12
 8001924:	af00      	add	r7, sp, #0
 8001926:	6078      	str	r0, [r7, #4]
 8001928:	687b      	ldr	r3, [r7, #4]
 800192a:	4a19      	ldr	r2, [pc, #100]	; (8001990 <start_trans+0x70>)
 800192c:	6013      	str	r3, [r2, #0]
 800192e:	4b19      	ldr	r3, [pc, #100]	; (8001994 <start_trans+0x74>)
 8001930:	2200      	movs	r2, #0
 8001932:	601a      	str	r2, [r3, #0]
 8001934:	4a18      	ldr	r2, [pc, #96]	; (8001998 <start_trans+0x78>)
 8001936:	4b18      	ldr	r3, [pc, #96]	; (8001998 <start_trans+0x78>)
 8001938:	695b      	ldr	r3, [r3, #20]
 800193a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800193e:	6153      	str	r3, [r2, #20]
 8001940:	4a16      	ldr	r2, [pc, #88]	; (800199c <start_trans+0x7c>)
 8001942:	4b16      	ldr	r3, [pc, #88]	; (800199c <start_trans+0x7c>)
 8001944:	899b      	ldrh	r3, [r3, #12]
 8001946:	b29b      	uxth	r3, r3
 8001948:	f043 0308 	orr.w	r3, r3, #8
 800194c:	b29b      	uxth	r3, r3
 800194e:	8193      	strh	r3, [r2, #12]
 8001950:	4a12      	ldr	r2, [pc, #72]	; (800199c <start_trans+0x7c>)
 8001952:	4b12      	ldr	r3, [pc, #72]	; (800199c <start_trans+0x7c>)
 8001954:	899b      	ldrh	r3, [r3, #12]
 8001956:	b29b      	uxth	r3, r3
 8001958:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800195c:	b29b      	uxth	r3, r3
 800195e:	8193      	strh	r3, [r2, #12]
 8001960:	4a0e      	ldr	r2, [pc, #56]	; (800199c <start_trans+0x7c>)
 8001962:	4b0c      	ldr	r3, [pc, #48]	; (8001994 <start_trans+0x74>)
 8001964:	681b      	ldr	r3, [r3, #0]
 8001966:	490e      	ldr	r1, [pc, #56]	; (80019a0 <start_trans+0x80>)
 8001968:	5ccb      	ldrb	r3, [r1, r3]
 800196a:	b29b      	uxth	r3, r3
 800196c:	8093      	strh	r3, [r2, #4]
 800196e:	4b09      	ldr	r3, [pc, #36]	; (8001994 <start_trans+0x74>)
 8001970:	681b      	ldr	r3, [r3, #0]
 8001972:	3301      	adds	r3, #1
 8001974:	b2db      	uxtb	r3, r3
 8001976:	4a07      	ldr	r2, [pc, #28]	; (8001994 <start_trans+0x74>)
 8001978:	6013      	str	r3, [r2, #0]
 800197a:	4b05      	ldr	r3, [pc, #20]	; (8001990 <start_trans+0x70>)
 800197c:	681b      	ldr	r3, [r3, #0]
 800197e:	3b01      	subs	r3, #1
 8001980:	4a03      	ldr	r2, [pc, #12]	; (8001990 <start_trans+0x70>)
 8001982:	6013      	str	r3, [r2, #0]
 8001984:	bf00      	nop
 8001986:	370c      	adds	r7, #12
 8001988:	46bd      	mov	sp, r7
 800198a:	bc80      	pop	{r7}
 800198c:	4770      	bx	lr
 800198e:	bf00      	nop
 8001990:	20000c80 	.word	0x20000c80
 8001994:	20000c7c 	.word	0x20000c7c
 8001998:	40020c00 	.word	0x40020c00
 800199c:	40004800 	.word	0x40004800
 80019a0:	20000b7c 	.word	0x20000b7c

080019a4 <modbus_init>:
 80019a4:	b580      	push	{r7, lr}
 80019a6:	af00      	add	r7, sp, #0
 80019a8:	4a3f      	ldr	r2, [pc, #252]	; (8001aa8 <modbus_init+0x104>)
 80019aa:	4b3f      	ldr	r3, [pc, #252]	; (8001aa8 <modbus_init+0x104>)
 80019ac:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80019ae:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 80019b2:	6413      	str	r3, [r2, #64]	; 0x40
 80019b4:	4b3d      	ldr	r3, [pc, #244]	; (8001aac <modbus_init+0x108>)
 80019b6:	2200      	movs	r2, #0
 80019b8:	819a      	strh	r2, [r3, #12]
 80019ba:	4a3c      	ldr	r2, [pc, #240]	; (8001aac <modbus_init+0x108>)
 80019bc:	4b3b      	ldr	r3, [pc, #236]	; (8001aac <modbus_init+0x108>)
 80019be:	899b      	ldrh	r3, [r3, #12]
 80019c0:	b29b      	uxth	r3, r3
 80019c2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80019c6:	b29b      	uxth	r3, r3
 80019c8:	8193      	strh	r3, [r2, #12]
 80019ca:	4a38      	ldr	r2, [pc, #224]	; (8001aac <modbus_init+0x108>)
 80019cc:	4b37      	ldr	r3, [pc, #220]	; (8001aac <modbus_init+0x108>)
 80019ce:	899b      	ldrh	r3, [r3, #12]
 80019d0:	b29b      	uxth	r3, r3
 80019d2:	f043 0304 	orr.w	r3, r3, #4
 80019d6:	b29b      	uxth	r3, r3
 80019d8:	8193      	strh	r3, [r2, #12]
 80019da:	4a34      	ldr	r2, [pc, #208]	; (8001aac <modbus_init+0x108>)
 80019dc:	4b33      	ldr	r3, [pc, #204]	; (8001aac <modbus_init+0x108>)
 80019de:	899b      	ldrh	r3, [r3, #12]
 80019e0:	b29b      	uxth	r3, r3
 80019e2:	f043 0320 	orr.w	r3, r3, #32
 80019e6:	b29b      	uxth	r3, r3
 80019e8:	8193      	strh	r3, [r2, #12]
 80019ea:	4a30      	ldr	r2, [pc, #192]	; (8001aac <modbus_init+0x108>)
 80019ec:	4b2f      	ldr	r3, [pc, #188]	; (8001aac <modbus_init+0x108>)
 80019ee:	899b      	ldrh	r3, [r3, #12]
 80019f0:	b29b      	uxth	r3, r3
 80019f2:	f043 0310 	orr.w	r3, r3, #16
 80019f6:	b29b      	uxth	r3, r3
 80019f8:	8193      	strh	r3, [r2, #12]
 80019fa:	2027      	movs	r0, #39	; 0x27
 80019fc:	f7ff ff78 	bl	80018f0 <NVIC_EnableIRQ>
 8001a00:	4b2a      	ldr	r3, [pc, #168]	; (8001aac <modbus_init+0x108>)
 8001a02:	891b      	ldrh	r3, [r3, #8]
 8001a04:	4b29      	ldr	r3, [pc, #164]	; (8001aac <modbus_init+0x108>)
 8001a06:	2200      	movs	r2, #0
 8001a08:	811a      	strh	r2, [r3, #8]
 8001a0a:	4a28      	ldr	r2, [pc, #160]	; (8001aac <modbus_init+0x108>)
 8001a0c:	4b27      	ldr	r3, [pc, #156]	; (8001aac <modbus_init+0x108>)
 8001a0e:	891b      	ldrh	r3, [r3, #8]
 8001a10:	b29b      	uxth	r3, r3
 8001a12:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8001a16:	f043 0301 	orr.w	r3, r3, #1
 8001a1a:	b29b      	uxth	r3, r3
 8001a1c:	8113      	strh	r3, [r2, #8]
 8001a1e:	4a22      	ldr	r2, [pc, #136]	; (8001aa8 <modbus_init+0x104>)
 8001a20:	4b21      	ldr	r3, [pc, #132]	; (8001aa8 <modbus_init+0x104>)
 8001a22:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001a24:	f043 0308 	orr.w	r3, r3, #8
 8001a28:	6313      	str	r3, [r2, #48]	; 0x30
 8001a2a:	4a21      	ldr	r2, [pc, #132]	; (8001ab0 <modbus_init+0x10c>)
 8001a2c:	4b20      	ldr	r3, [pc, #128]	; (8001ab0 <modbus_init+0x10c>)
 8001a2e:	681b      	ldr	r3, [r3, #0]
 8001a30:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8001a34:	6013      	str	r3, [r2, #0]
 8001a36:	4a1e      	ldr	r2, [pc, #120]	; (8001ab0 <modbus_init+0x10c>)
 8001a38:	4b1d      	ldr	r3, [pc, #116]	; (8001ab0 <modbus_init+0x10c>)
 8001a3a:	681b      	ldr	r3, [r3, #0]
 8001a3c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8001a40:	6013      	str	r3, [r2, #0]
 8001a42:	4a1b      	ldr	r2, [pc, #108]	; (8001ab0 <modbus_init+0x10c>)
 8001a44:	4b1a      	ldr	r3, [pc, #104]	; (8001ab0 <modbus_init+0x10c>)
 8001a46:	681b      	ldr	r3, [r3, #0]
 8001a48:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 8001a4c:	6013      	str	r3, [r2, #0]
 8001a4e:	4a18      	ldr	r2, [pc, #96]	; (8001ab0 <modbus_init+0x10c>)
 8001a50:	4b17      	ldr	r3, [pc, #92]	; (8001ab0 <modbus_init+0x10c>)
 8001a52:	681b      	ldr	r3, [r3, #0]
 8001a54:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
 8001a58:	6013      	str	r3, [r2, #0]
 8001a5a:	4a15      	ldr	r2, [pc, #84]	; (8001ab0 <modbus_init+0x10c>)
 8001a5c:	4b14      	ldr	r3, [pc, #80]	; (8001ab0 <modbus_init+0x10c>)
 8001a5e:	689b      	ldr	r3, [r3, #8]
 8001a60:	f443 2370 	orr.w	r3, r3, #983040	; 0xf0000
 8001a64:	6093      	str	r3, [r2, #8]
 8001a66:	4a12      	ldr	r2, [pc, #72]	; (8001ab0 <modbus_init+0x10c>)
 8001a68:	4b11      	ldr	r3, [pc, #68]	; (8001ab0 <modbus_init+0x10c>)
 8001a6a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a6c:	f023 030f 	bic.w	r3, r3, #15
 8001a70:	6253      	str	r3, [r2, #36]	; 0x24
 8001a72:	4a0f      	ldr	r2, [pc, #60]	; (8001ab0 <modbus_init+0x10c>)
 8001a74:	4b0e      	ldr	r3, [pc, #56]	; (8001ab0 <modbus_init+0x10c>)
 8001a76:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a78:	f043 0307 	orr.w	r3, r3, #7
 8001a7c:	6253      	str	r3, [r2, #36]	; 0x24
 8001a7e:	4a0c      	ldr	r2, [pc, #48]	; (8001ab0 <modbus_init+0x10c>)
 8001a80:	4b0b      	ldr	r3, [pc, #44]	; (8001ab0 <modbus_init+0x10c>)
 8001a82:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a84:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8001a88:	6253      	str	r3, [r2, #36]	; 0x24
 8001a8a:	4a09      	ldr	r2, [pc, #36]	; (8001ab0 <modbus_init+0x10c>)
 8001a8c:	4b08      	ldr	r3, [pc, #32]	; (8001ab0 <modbus_init+0x10c>)
 8001a8e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001a90:	f043 0370 	orr.w	r3, r3, #112	; 0x70
 8001a94:	6253      	str	r3, [r2, #36]	; 0x24
 8001a96:	4a06      	ldr	r2, [pc, #24]	; (8001ab0 <modbus_init+0x10c>)
 8001a98:	4b05      	ldr	r3, [pc, #20]	; (8001ab0 <modbus_init+0x10c>)
 8001a9a:	695b      	ldr	r3, [r3, #20]
 8001a9c:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8001aa0:	6153      	str	r3, [r2, #20]
 8001aa2:	bf00      	nop
 8001aa4:	bd80      	pop	{r7, pc}
 8001aa6:	bf00      	nop
 8001aa8:	40023800 	.word	0x40023800
 8001aac:	40004800 	.word	0x40004800
 8001ab0:	40020c00 	.word	0x40020c00

08001ab4 <USART3_IRQHandler>:
 8001ab4:	b580      	push	{r7, lr}
 8001ab6:	b082      	sub	sp, #8
 8001ab8:	af00      	add	r7, sp, #0
 8001aba:	4b38      	ldr	r3, [pc, #224]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001abc:	881b      	ldrh	r3, [r3, #0]
 8001abe:	b29b      	uxth	r3, r3
 8001ac0:	f003 0310 	and.w	r3, r3, #16
 8001ac4:	2b00      	cmp	r3, #0
 8001ac6:	d00c      	beq.n	8001ae2 <USART3_IRQHandler+0x2e>
 8001ac8:	4b34      	ldr	r3, [pc, #208]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001aca:	889b      	ldrh	r3, [r3, #4]
 8001acc:	b29b      	uxth	r3, r3
 8001ace:	71fb      	strb	r3, [r7, #7]
 8001ad0:	f000 fe12 	bl	80026f8 <proc_ADU>
 8001ad4:	4b32      	ldr	r3, [pc, #200]	; (8001ba0 <USART3_IRQHandler+0xec>)
 8001ad6:	681b      	ldr	r3, [r3, #0]
 8001ad8:	4a32      	ldr	r2, [pc, #200]	; (8001ba4 <USART3_IRQHandler+0xf0>)
 8001ada:	6013      	str	r3, [r2, #0]
 8001adc:	4b30      	ldr	r3, [pc, #192]	; (8001ba0 <USART3_IRQHandler+0xec>)
 8001ade:	2200      	movs	r2, #0
 8001ae0:	601a      	str	r2, [r3, #0]
 8001ae2:	4b2e      	ldr	r3, [pc, #184]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001ae4:	881b      	ldrh	r3, [r3, #0]
 8001ae6:	b29b      	uxth	r3, r3
 8001ae8:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001aec:	2b00      	cmp	r3, #0
 8001aee:	d01e      	beq.n	8001b2e <USART3_IRQHandler+0x7a>
 8001af0:	4b2d      	ldr	r3, [pc, #180]	; (8001ba8 <USART3_IRQHandler+0xf4>)
 8001af2:	681b      	ldr	r3, [r3, #0]
 8001af4:	2b00      	cmp	r3, #0
 8001af6:	d108      	bne.n	8001b0a <USART3_IRQHandler+0x56>
 8001af8:	4a28      	ldr	r2, [pc, #160]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001afa:	4b28      	ldr	r3, [pc, #160]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001afc:	899b      	ldrh	r3, [r3, #12]
 8001afe:	b29b      	uxth	r3, r3
 8001b00:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001b04:	b29b      	uxth	r3, r3
 8001b06:	8193      	strh	r3, [r2, #12]
 8001b08:	e011      	b.n	8001b2e <USART3_IRQHandler+0x7a>
 8001b0a:	4a24      	ldr	r2, [pc, #144]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b0c:	4b27      	ldr	r3, [pc, #156]	; (8001bac <USART3_IRQHandler+0xf8>)
 8001b0e:	681b      	ldr	r3, [r3, #0]
 8001b10:	4927      	ldr	r1, [pc, #156]	; (8001bb0 <USART3_IRQHandler+0xfc>)
 8001b12:	5ccb      	ldrb	r3, [r1, r3]
 8001b14:	b29b      	uxth	r3, r3
 8001b16:	8093      	strh	r3, [r2, #4]
 8001b18:	4b24      	ldr	r3, [pc, #144]	; (8001bac <USART3_IRQHandler+0xf8>)
 8001b1a:	681b      	ldr	r3, [r3, #0]
 8001b1c:	3301      	adds	r3, #1
 8001b1e:	b2db      	uxtb	r3, r3
 8001b20:	4a22      	ldr	r2, [pc, #136]	; (8001bac <USART3_IRQHandler+0xf8>)
 8001b22:	6013      	str	r3, [r2, #0]
 8001b24:	4b20      	ldr	r3, [pc, #128]	; (8001ba8 <USART3_IRQHandler+0xf4>)
 8001b26:	681b      	ldr	r3, [r3, #0]
 8001b28:	3b01      	subs	r3, #1
 8001b2a:	4a1f      	ldr	r2, [pc, #124]	; (8001ba8 <USART3_IRQHandler+0xf4>)
 8001b2c:	6013      	str	r3, [r2, #0]
 8001b2e:	4b1b      	ldr	r3, [pc, #108]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b30:	881b      	ldrh	r3, [r3, #0]
 8001b32:	b29b      	uxth	r3, r3
 8001b34:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001b38:	2b00      	cmp	r3, #0
 8001b3a:	d015      	beq.n	8001b68 <USART3_IRQHandler+0xb4>
 8001b3c:	4a17      	ldr	r2, [pc, #92]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b3e:	4b17      	ldr	r3, [pc, #92]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b40:	881b      	ldrh	r3, [r3, #0]
 8001b42:	b29b      	uxth	r3, r3
 8001b44:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001b48:	b29b      	uxth	r3, r3
 8001b4a:	8013      	strh	r3, [r2, #0]
 8001b4c:	4a13      	ldr	r2, [pc, #76]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b4e:	4b13      	ldr	r3, [pc, #76]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b50:	899b      	ldrh	r3, [r3, #12]
 8001b52:	b29b      	uxth	r3, r3
 8001b54:	f023 03c0 	bic.w	r3, r3, #192	; 0xc0
 8001b58:	b29b      	uxth	r3, r3
 8001b5a:	8193      	strh	r3, [r2, #12]
 8001b5c:	4a15      	ldr	r2, [pc, #84]	; (8001bb4 <USART3_IRQHandler+0x100>)
 8001b5e:	4b15      	ldr	r3, [pc, #84]	; (8001bb4 <USART3_IRQHandler+0x100>)
 8001b60:	695b      	ldr	r3, [r3, #20]
 8001b62:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8001b66:	6153      	str	r3, [r2, #20]
 8001b68:	4b0c      	ldr	r3, [pc, #48]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b6a:	881b      	ldrh	r3, [r3, #0]
 8001b6c:	b29b      	uxth	r3, r3
 8001b6e:	f003 0320 	and.w	r3, r3, #32
 8001b72:	2b00      	cmp	r3, #0
 8001b74:	d00d      	beq.n	8001b92 <USART3_IRQHandler+0xde>
 8001b76:	4b0a      	ldr	r3, [pc, #40]	; (8001ba0 <USART3_IRQHandler+0xec>)
 8001b78:	681b      	ldr	r3, [r3, #0]
 8001b7a:	4a08      	ldr	r2, [pc, #32]	; (8001b9c <USART3_IRQHandler+0xe8>)
 8001b7c:	8892      	ldrh	r2, [r2, #4]
 8001b7e:	b292      	uxth	r2, r2
 8001b80:	b2d1      	uxtb	r1, r2
 8001b82:	4a0d      	ldr	r2, [pc, #52]	; (8001bb8 <USART3_IRQHandler+0x104>)
 8001b84:	54d1      	strb	r1, [r2, r3]
 8001b86:	4b06      	ldr	r3, [pc, #24]	; (8001ba0 <USART3_IRQHandler+0xec>)
 8001b88:	681b      	ldr	r3, [r3, #0]
 8001b8a:	3301      	adds	r3, #1
 8001b8c:	b2db      	uxtb	r3, r3
 8001b8e:	4a04      	ldr	r2, [pc, #16]	; (8001ba0 <USART3_IRQHandler+0xec>)
 8001b90:	6013      	str	r3, [r2, #0]
 8001b92:	bf00      	nop
 8001b94:	3708      	adds	r7, #8
 8001b96:	46bd      	mov	sp, r7
 8001b98:	bd80      	pop	{r7, pc}
 8001b9a:	bf00      	nop
 8001b9c:	40004800 	.word	0x40004800
 8001ba0:	20000b74 	.word	0x20000b74
 8001ba4:	20000b78 	.word	0x20000b78
 8001ba8:	20000c80 	.word	0x20000c80
 8001bac:	20000c7c 	.word	0x20000c7c
 8001bb0:	20000b7c 	.word	0x20000b7c
 8001bb4:	40020c00 	.word	0x40020c00
 8001bb8:	20000a74 	.word	0x20000a74

08001bbc <pack_bits_to_bytes>:
 8001bbc:	b480      	push	{r7}
 8001bbe:	b089      	sub	sp, #36	; 0x24
 8001bc0:	af00      	add	r7, sp, #0
 8001bc2:	60f8      	str	r0, [r7, #12]
 8001bc4:	60b9      	str	r1, [r7, #8]
 8001bc6:	607a      	str	r2, [r7, #4]
 8001bc8:	603b      	str	r3, [r7, #0]
 8001bca:	687b      	ldr	r3, [r7, #4]
 8001bcc:	10db      	asrs	r3, r3, #3
 8001bce:	61fb      	str	r3, [r7, #28]
 8001bd0:	687b      	ldr	r3, [r7, #4]
 8001bd2:	f003 0307 	and.w	r3, r3, #7
 8001bd6:	617b      	str	r3, [r7, #20]
 8001bd8:	2300      	movs	r3, #0
 8001bda:	61bb      	str	r3, [r7, #24]
 8001bdc:	69fb      	ldr	r3, [r7, #28]
 8001bde:	1c5a      	adds	r2, r3, #1
 8001be0:	61fa      	str	r2, [r7, #28]
 8001be2:	461a      	mov	r2, r3
 8001be4:	68bb      	ldr	r3, [r7, #8]
 8001be6:	4413      	add	r3, r2
 8001be8:	781b      	ldrb	r3, [r3, #0]
 8001bea:	461a      	mov	r2, r3
 8001bec:	697b      	ldr	r3, [r7, #20]
 8001bee:	fa42 f303 	asr.w	r3, r2, r3
 8001bf2:	74fb      	strb	r3, [r7, #19]
 8001bf4:	69fb      	ldr	r3, [r7, #28]
 8001bf6:	68ba      	ldr	r2, [r7, #8]
 8001bf8:	4413      	add	r3, r2
 8001bfa:	781b      	ldrb	r3, [r3, #0]
 8001bfc:	461a      	mov	r2, r3
 8001bfe:	697b      	ldr	r3, [r7, #20]
 8001c00:	f1c3 0308 	rsb	r3, r3, #8
 8001c04:	fa02 f303 	lsl.w	r3, r2, r3
 8001c08:	b25a      	sxtb	r2, r3
 8001c0a:	f997 3013 	ldrsb.w	r3, [r7, #19]
 8001c0e:	4313      	orrs	r3, r2
 8001c10:	b25b      	sxtb	r3, r3
 8001c12:	74fb      	strb	r3, [r7, #19]
 8001c14:	69bb      	ldr	r3, [r7, #24]
 8001c16:	68fa      	ldr	r2, [r7, #12]
 8001c18:	4413      	add	r3, r2
 8001c1a:	7cfa      	ldrb	r2, [r7, #19]
 8001c1c:	701a      	strb	r2, [r3, #0]
 8001c1e:	683b      	ldr	r3, [r7, #0]
 8001c20:	2b08      	cmp	r3, #8
 8001c22:	dd06      	ble.n	8001c32 <pack_bits_to_bytes+0x76>
 8001c24:	683b      	ldr	r3, [r7, #0]
 8001c26:	3b08      	subs	r3, #8
 8001c28:	603b      	str	r3, [r7, #0]
 8001c2a:	69bb      	ldr	r3, [r7, #24]
 8001c2c:	3301      	adds	r3, #1
 8001c2e:	61bb      	str	r3, [r7, #24]
 8001c30:	e7d4      	b.n	8001bdc <pack_bits_to_bytes+0x20>
 8001c32:	69bb      	ldr	r3, [r7, #24]
 8001c34:	68fa      	ldr	r2, [r7, #12]
 8001c36:	4413      	add	r3, r2
 8001c38:	69ba      	ldr	r2, [r7, #24]
 8001c3a:	68f9      	ldr	r1, [r7, #12]
 8001c3c:	440a      	add	r2, r1
 8001c3e:	7812      	ldrb	r2, [r2, #0]
 8001c40:	b251      	sxtb	r1, r2
 8001c42:	683a      	ldr	r2, [r7, #0]
 8001c44:	f1c2 0208 	rsb	r2, r2, #8
 8001c48:	20ff      	movs	r0, #255	; 0xff
 8001c4a:	fa40 f202 	asr.w	r2, r0, r2
 8001c4e:	b252      	sxtb	r2, r2
 8001c50:	400a      	ands	r2, r1
 8001c52:	b252      	sxtb	r2, r2
 8001c54:	b2d2      	uxtb	r2, r2
 8001c56:	701a      	strb	r2, [r3, #0]
 8001c58:	bf00      	nop
 8001c5a:	69bb      	ldr	r3, [r7, #24]
 8001c5c:	3301      	adds	r3, #1
 8001c5e:	4618      	mov	r0, r3
 8001c60:	3724      	adds	r7, #36	; 0x24
 8001c62:	46bd      	mov	sp, r7
 8001c64:	bc80      	pop	{r7}
 8001c66:	4770      	bx	lr

08001c68 <set_coil>:
 8001c68:	b480      	push	{r7}
 8001c6a:	b085      	sub	sp, #20
 8001c6c:	af00      	add	r7, sp, #0
 8001c6e:	6078      	str	r0, [r7, #4]
 8001c70:	460b      	mov	r3, r1
 8001c72:	70fb      	strb	r3, [r7, #3]
 8001c74:	687b      	ldr	r3, [r7, #4]
 8001c76:	3b13      	subs	r3, #19
 8001c78:	607b      	str	r3, [r7, #4]
 8001c7a:	687b      	ldr	r3, [r7, #4]
 8001c7c:	10db      	asrs	r3, r3, #3
 8001c7e:	60fb      	str	r3, [r7, #12]
 8001c80:	687b      	ldr	r3, [r7, #4]
 8001c82:	f003 0307 	and.w	r3, r3, #7
 8001c86:	60bb      	str	r3, [r7, #8]
 8001c88:	4a15      	ldr	r2, [pc, #84]	; (8001ce0 <set_coil+0x78>)
 8001c8a:	68fb      	ldr	r3, [r7, #12]
 8001c8c:	4413      	add	r3, r2
 8001c8e:	781b      	ldrb	r3, [r3, #0]
 8001c90:	b25a      	sxtb	r2, r3
 8001c92:	2101      	movs	r1, #1
 8001c94:	68bb      	ldr	r3, [r7, #8]
 8001c96:	fa01 f303 	lsl.w	r3, r1, r3
 8001c9a:	b25b      	sxtb	r3, r3
 8001c9c:	43db      	mvns	r3, r3
 8001c9e:	b25b      	sxtb	r3, r3
 8001ca0:	4013      	ands	r3, r2
 8001ca2:	b25b      	sxtb	r3, r3
 8001ca4:	b2d9      	uxtb	r1, r3
 8001ca6:	4a0e      	ldr	r2, [pc, #56]	; (8001ce0 <set_coil+0x78>)
 8001ca8:	68fb      	ldr	r3, [r7, #12]
 8001caa:	4413      	add	r3, r2
 8001cac:	460a      	mov	r2, r1
 8001cae:	701a      	strb	r2, [r3, #0]
 8001cb0:	4a0b      	ldr	r2, [pc, #44]	; (8001ce0 <set_coil+0x78>)
 8001cb2:	68fb      	ldr	r3, [r7, #12]
 8001cb4:	4413      	add	r3, r2
 8001cb6:	781b      	ldrb	r3, [r3, #0]
 8001cb8:	b25a      	sxtb	r2, r3
 8001cba:	78f9      	ldrb	r1, [r7, #3]
 8001cbc:	68bb      	ldr	r3, [r7, #8]
 8001cbe:	fa01 f303 	lsl.w	r3, r1, r3
 8001cc2:	b25b      	sxtb	r3, r3
 8001cc4:	4313      	orrs	r3, r2
 8001cc6:	b25b      	sxtb	r3, r3
 8001cc8:	b2d9      	uxtb	r1, r3
 8001cca:	4a05      	ldr	r2, [pc, #20]	; (8001ce0 <set_coil+0x78>)
 8001ccc:	68fb      	ldr	r3, [r7, #12]
 8001cce:	4413      	add	r3, r2
 8001cd0:	460a      	mov	r2, r1
 8001cd2:	701a      	strb	r2, [r3, #0]
 8001cd4:	bf00      	nop
 8001cd6:	3714      	adds	r7, #20
 8001cd8:	46bd      	mov	sp, r7
 8001cda:	bc80      	pop	{r7}
 8001cdc:	4770      	bx	lr
 8001cde:	bf00      	nop
 8001ce0:	20000008 	.word	0x20000008

08001ce4 <pdu_write_single_coil>:
 8001ce4:	b580      	push	{r7, lr}
 8001ce6:	b084      	sub	sp, #16
 8001ce8:	af00      	add	r7, sp, #0
 8001cea:	4b3d      	ldr	r3, [pc, #244]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001cec:	785b      	ldrb	r3, [r3, #1]
 8001cee:	73fb      	strb	r3, [r7, #15]
 8001cf0:	4b3b      	ldr	r3, [pc, #236]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001cf2:	789b      	ldrb	r3, [r3, #2]
 8001cf4:	021b      	lsls	r3, r3, #8
 8001cf6:	b21a      	sxth	r2, r3
 8001cf8:	4b39      	ldr	r3, [pc, #228]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001cfa:	78db      	ldrb	r3, [r3, #3]
 8001cfc:	b21b      	sxth	r3, r3
 8001cfe:	4313      	orrs	r3, r2
 8001d00:	b21b      	sxth	r3, r3
 8001d02:	81bb      	strh	r3, [r7, #12]
 8001d04:	4b36      	ldr	r3, [pc, #216]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001d06:	791b      	ldrb	r3, [r3, #4]
 8001d08:	021b      	lsls	r3, r3, #8
 8001d0a:	b21a      	sxth	r2, r3
 8001d0c:	4b34      	ldr	r3, [pc, #208]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001d0e:	795b      	ldrb	r3, [r3, #5]
 8001d10:	b21b      	sxth	r3, r3
 8001d12:	4313      	orrs	r3, r2
 8001d14:	b21b      	sxth	r3, r3
 8001d16:	817b      	strh	r3, [r7, #10]
 8001d18:	2301      	movs	r3, #1
 8001d1a:	607b      	str	r3, [r7, #4]
 8001d1c:	89bb      	ldrh	r3, [r7, #12]
 8001d1e:	2b12      	cmp	r3, #18
 8001d20:	d902      	bls.n	8001d28 <pdu_write_single_coil+0x44>
 8001d22:	89bb      	ldrh	r3, [r7, #12]
 8001d24:	2b37      	cmp	r3, #55	; 0x37
 8001d26:	d910      	bls.n	8001d4a <pdu_write_single_coil+0x66>
 8001d28:	687b      	ldr	r3, [r7, #4]
 8001d2a:	1c5a      	adds	r2, r3, #1
 8001d2c:	607a      	str	r2, [r7, #4]
 8001d2e:	7bfa      	ldrb	r2, [r7, #15]
 8001d30:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d34:	b2d1      	uxtb	r1, r2
 8001d36:	4a2b      	ldr	r2, [pc, #172]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001d38:	54d1      	strb	r1, [r2, r3]
 8001d3a:	687b      	ldr	r3, [r7, #4]
 8001d3c:	1c5a      	adds	r2, r3, #1
 8001d3e:	607a      	str	r2, [r7, #4]
 8001d40:	4a28      	ldr	r2, [pc, #160]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001d42:	2102      	movs	r1, #2
 8001d44:	54d1      	strb	r1, [r2, r3]
 8001d46:	687b      	ldr	r3, [r7, #4]
 8001d48:	e046      	b.n	8001dd8 <pdu_write_single_coil+0xf4>
 8001d4a:	897b      	ldrh	r3, [r7, #10]
 8001d4c:	2b00      	cmp	r3, #0
 8001d4e:	d105      	bne.n	8001d5c <pdu_write_single_coil+0x78>
 8001d50:	89bb      	ldrh	r3, [r7, #12]
 8001d52:	2100      	movs	r1, #0
 8001d54:	4618      	mov	r0, r3
 8001d56:	f7ff ff87 	bl	8001c68 <set_coil>
 8001d5a:	e01a      	b.n	8001d92 <pdu_write_single_coil+0xae>
 8001d5c:	897b      	ldrh	r3, [r7, #10]
 8001d5e:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
 8001d62:	d105      	bne.n	8001d70 <pdu_write_single_coil+0x8c>
 8001d64:	89bb      	ldrh	r3, [r7, #12]
 8001d66:	2101      	movs	r1, #1
 8001d68:	4618      	mov	r0, r3
 8001d6a:	f7ff ff7d 	bl	8001c68 <set_coil>
 8001d6e:	e010      	b.n	8001d92 <pdu_write_single_coil+0xae>
 8001d70:	687b      	ldr	r3, [r7, #4]
 8001d72:	1c5a      	adds	r2, r3, #1
 8001d74:	607a      	str	r2, [r7, #4]
 8001d76:	7bfa      	ldrb	r2, [r7, #15]
 8001d78:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d7c:	b2d1      	uxtb	r1, r2
 8001d7e:	4a19      	ldr	r2, [pc, #100]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001d80:	54d1      	strb	r1, [r2, r3]
 8001d82:	687b      	ldr	r3, [r7, #4]
 8001d84:	1c5a      	adds	r2, r3, #1
 8001d86:	607a      	str	r2, [r7, #4]
 8001d88:	4a16      	ldr	r2, [pc, #88]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001d8a:	2103      	movs	r1, #3
 8001d8c:	54d1      	strb	r1, [r2, r3]
 8001d8e:	687b      	ldr	r3, [r7, #4]
 8001d90:	e022      	b.n	8001dd8 <pdu_write_single_coil+0xf4>
 8001d92:	687b      	ldr	r3, [r7, #4]
 8001d94:	1c5a      	adds	r2, r3, #1
 8001d96:	607a      	str	r2, [r7, #4]
 8001d98:	4912      	ldr	r1, [pc, #72]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001d9a:	7bfa      	ldrb	r2, [r7, #15]
 8001d9c:	54ca      	strb	r2, [r1, r3]
 8001d9e:	687b      	ldr	r3, [r7, #4]
 8001da0:	1c5a      	adds	r2, r3, #1
 8001da2:	607a      	str	r2, [r7, #4]
 8001da4:	4a0e      	ldr	r2, [pc, #56]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001da6:	7891      	ldrb	r1, [r2, #2]
 8001da8:	4a0e      	ldr	r2, [pc, #56]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001daa:	54d1      	strb	r1, [r2, r3]
 8001dac:	687b      	ldr	r3, [r7, #4]
 8001dae:	1c5a      	adds	r2, r3, #1
 8001db0:	607a      	str	r2, [r7, #4]
 8001db2:	4a0b      	ldr	r2, [pc, #44]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001db4:	78d1      	ldrb	r1, [r2, #3]
 8001db6:	4a0b      	ldr	r2, [pc, #44]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001db8:	54d1      	strb	r1, [r2, r3]
 8001dba:	687b      	ldr	r3, [r7, #4]
 8001dbc:	1c5a      	adds	r2, r3, #1
 8001dbe:	607a      	str	r2, [r7, #4]
 8001dc0:	4a07      	ldr	r2, [pc, #28]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001dc2:	7911      	ldrb	r1, [r2, #4]
 8001dc4:	4a07      	ldr	r2, [pc, #28]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001dc6:	54d1      	strb	r1, [r2, r3]
 8001dc8:	687b      	ldr	r3, [r7, #4]
 8001dca:	1c5a      	adds	r2, r3, #1
 8001dcc:	607a      	str	r2, [r7, #4]
 8001dce:	4a04      	ldr	r2, [pc, #16]	; (8001de0 <pdu_write_single_coil+0xfc>)
 8001dd0:	7951      	ldrb	r1, [r2, #5]
 8001dd2:	4a04      	ldr	r2, [pc, #16]	; (8001de4 <pdu_write_single_coil+0x100>)
 8001dd4:	54d1      	strb	r1, [r2, r3]
 8001dd6:	687b      	ldr	r3, [r7, #4]
 8001dd8:	4618      	mov	r0, r3
 8001dda:	3710      	adds	r7, #16
 8001ddc:	46bd      	mov	sp, r7
 8001dde:	bd80      	pop	{r7, pc}
 8001de0:	20000a74 	.word	0x20000a74
 8001de4:	20000b7c 	.word	0x20000b7c

08001de8 <pdu_write_multiply_coils>:
 8001de8:	b580      	push	{r7, lr}
 8001dea:	b086      	sub	sp, #24
 8001dec:	af00      	add	r7, sp, #0
 8001dee:	4b45      	ldr	r3, [pc, #276]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001df0:	785b      	ldrb	r3, [r3, #1]
 8001df2:	72bb      	strb	r3, [r7, #10]
 8001df4:	4b43      	ldr	r3, [pc, #268]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001df6:	789b      	ldrb	r3, [r3, #2]
 8001df8:	021b      	lsls	r3, r3, #8
 8001dfa:	b21a      	sxth	r2, r3
 8001dfc:	4b41      	ldr	r3, [pc, #260]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001dfe:	78db      	ldrb	r3, [r3, #3]
 8001e00:	b21b      	sxth	r3, r3
 8001e02:	4313      	orrs	r3, r2
 8001e04:	b21b      	sxth	r3, r3
 8001e06:	82fb      	strh	r3, [r7, #22]
 8001e08:	4b3e      	ldr	r3, [pc, #248]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001e0a:	791b      	ldrb	r3, [r3, #4]
 8001e0c:	021b      	lsls	r3, r3, #8
 8001e0e:	b21a      	sxth	r2, r3
 8001e10:	4b3c      	ldr	r3, [pc, #240]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001e12:	795b      	ldrb	r3, [r3, #5]
 8001e14:	b21b      	sxth	r3, r3
 8001e16:	4313      	orrs	r3, r2
 8001e18:	b21b      	sxth	r3, r3
 8001e1a:	813b      	strh	r3, [r7, #8]
 8001e1c:	4b39      	ldr	r3, [pc, #228]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001e1e:	799b      	ldrb	r3, [r3, #6]
 8001e20:	71fb      	strb	r3, [r7, #7]
 8001e22:	2301      	movs	r3, #1
 8001e24:	603b      	str	r3, [r7, #0]
 8001e26:	8afb      	ldrh	r3, [r7, #22]
 8001e28:	2b12      	cmp	r3, #18
 8001e2a:	d904      	bls.n	8001e36 <pdu_write_multiply_coils+0x4e>
 8001e2c:	8afa      	ldrh	r2, [r7, #22]
 8001e2e:	893b      	ldrh	r3, [r7, #8]
 8001e30:	4413      	add	r3, r2
 8001e32:	2b38      	cmp	r3, #56	; 0x38
 8001e34:	dd10      	ble.n	8001e58 <pdu_write_multiply_coils+0x70>
 8001e36:	683b      	ldr	r3, [r7, #0]
 8001e38:	1c5a      	adds	r2, r3, #1
 8001e3a:	603a      	str	r2, [r7, #0]
 8001e3c:	7aba      	ldrb	r2, [r7, #10]
 8001e3e:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001e42:	b2d1      	uxtb	r1, r2
 8001e44:	4a30      	ldr	r2, [pc, #192]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001e46:	54d1      	strb	r1, [r2, r3]
 8001e48:	683b      	ldr	r3, [r7, #0]
 8001e4a:	1c5a      	adds	r2, r3, #1
 8001e4c:	603a      	str	r2, [r7, #0]
 8001e4e:	4a2e      	ldr	r2, [pc, #184]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001e50:	2102      	movs	r1, #2
 8001e52:	54d1      	strb	r1, [r2, r3]
 8001e54:	683b      	ldr	r3, [r7, #0]
 8001e56:	e050      	b.n	8001efa <pdu_write_multiply_coils+0x112>
 8001e58:	2300      	movs	r3, #0
 8001e5a:	613b      	str	r3, [r7, #16]
 8001e5c:	e026      	b.n	8001eac <pdu_write_multiply_coils+0xc4>
 8001e5e:	693b      	ldr	r3, [r7, #16]
 8001e60:	3307      	adds	r3, #7
 8001e62:	4a28      	ldr	r2, [pc, #160]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001e64:	5cd3      	ldrb	r3, [r2, r3]
 8001e66:	72fb      	strb	r3, [r7, #11]
 8001e68:	2300      	movs	r3, #0
 8001e6a:	60fb      	str	r3, [r7, #12]
 8001e6c:	e016      	b.n	8001e9c <pdu_write_multiply_coils+0xb4>
 8001e6e:	8afb      	ldrh	r3, [r7, #22]
 8001e70:	1c5a      	adds	r2, r3, #1
 8001e72:	82fa      	strh	r2, [r7, #22]
 8001e74:	461a      	mov	r2, r3
 8001e76:	7afb      	ldrb	r3, [r7, #11]
 8001e78:	f003 0301 	and.w	r3, r3, #1
 8001e7c:	b2db      	uxtb	r3, r3
 8001e7e:	4619      	mov	r1, r3
 8001e80:	4610      	mov	r0, r2
 8001e82:	f7ff fef1 	bl	8001c68 <set_coil>
 8001e86:	8afa      	ldrh	r2, [r7, #22]
 8001e88:	893b      	ldrh	r3, [r7, #8]
 8001e8a:	3313      	adds	r3, #19
 8001e8c:	429a      	cmp	r2, r3
 8001e8e:	d009      	beq.n	8001ea4 <pdu_write_multiply_coils+0xbc>
 8001e90:	7afb      	ldrb	r3, [r7, #11]
 8001e92:	085b      	lsrs	r3, r3, #1
 8001e94:	72fb      	strb	r3, [r7, #11]
 8001e96:	68fb      	ldr	r3, [r7, #12]
 8001e98:	3301      	adds	r3, #1
 8001e9a:	60fb      	str	r3, [r7, #12]
 8001e9c:	68fb      	ldr	r3, [r7, #12]
 8001e9e:	2b07      	cmp	r3, #7
 8001ea0:	dde5      	ble.n	8001e6e <pdu_write_multiply_coils+0x86>
 8001ea2:	e000      	b.n	8001ea6 <pdu_write_multiply_coils+0xbe>
 8001ea4:	bf00      	nop
 8001ea6:	693b      	ldr	r3, [r7, #16]
 8001ea8:	3301      	adds	r3, #1
 8001eaa:	613b      	str	r3, [r7, #16]
 8001eac:	79fa      	ldrb	r2, [r7, #7]
 8001eae:	693b      	ldr	r3, [r7, #16]
 8001eb0:	429a      	cmp	r2, r3
 8001eb2:	dcd4      	bgt.n	8001e5e <pdu_write_multiply_coils+0x76>
 8001eb4:	683b      	ldr	r3, [r7, #0]
 8001eb6:	1c5a      	adds	r2, r3, #1
 8001eb8:	603a      	str	r2, [r7, #0]
 8001eba:	4913      	ldr	r1, [pc, #76]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001ebc:	7aba      	ldrb	r2, [r7, #10]
 8001ebe:	54ca      	strb	r2, [r1, r3]
 8001ec0:	683b      	ldr	r3, [r7, #0]
 8001ec2:	1c5a      	adds	r2, r3, #1
 8001ec4:	603a      	str	r2, [r7, #0]
 8001ec6:	4a0f      	ldr	r2, [pc, #60]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001ec8:	7891      	ldrb	r1, [r2, #2]
 8001eca:	4a0f      	ldr	r2, [pc, #60]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001ecc:	54d1      	strb	r1, [r2, r3]
 8001ece:	683b      	ldr	r3, [r7, #0]
 8001ed0:	1c5a      	adds	r2, r3, #1
 8001ed2:	603a      	str	r2, [r7, #0]
 8001ed4:	4a0b      	ldr	r2, [pc, #44]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001ed6:	78d1      	ldrb	r1, [r2, #3]
 8001ed8:	4a0b      	ldr	r2, [pc, #44]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001eda:	54d1      	strb	r1, [r2, r3]
 8001edc:	683b      	ldr	r3, [r7, #0]
 8001ede:	1c5a      	adds	r2, r3, #1
 8001ee0:	603a      	str	r2, [r7, #0]
 8001ee2:	4a08      	ldr	r2, [pc, #32]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001ee4:	7911      	ldrb	r1, [r2, #4]
 8001ee6:	4a08      	ldr	r2, [pc, #32]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001ee8:	54d1      	strb	r1, [r2, r3]
 8001eea:	683b      	ldr	r3, [r7, #0]
 8001eec:	1c5a      	adds	r2, r3, #1
 8001eee:	603a      	str	r2, [r7, #0]
 8001ef0:	4a04      	ldr	r2, [pc, #16]	; (8001f04 <pdu_write_multiply_coils+0x11c>)
 8001ef2:	7951      	ldrb	r1, [r2, #5]
 8001ef4:	4a04      	ldr	r2, [pc, #16]	; (8001f08 <pdu_write_multiply_coils+0x120>)
 8001ef6:	54d1      	strb	r1, [r2, r3]
 8001ef8:	683b      	ldr	r3, [r7, #0]
 8001efa:	4618      	mov	r0, r3
 8001efc:	3718      	adds	r7, #24
 8001efe:	46bd      	mov	sp, r7
 8001f00:	bd80      	pop	{r7, pc}
 8001f02:	bf00      	nop
 8001f04:	20000a74 	.word	0x20000a74
 8001f08:	20000b7c 	.word	0x20000b7c

08001f0c <pdu_read_coils>:
 8001f0c:	b580      	push	{r7, lr}
 8001f0e:	b084      	sub	sp, #16
 8001f10:	af00      	add	r7, sp, #0
 8001f12:	4b28      	ldr	r3, [pc, #160]	; (8001fb4 <pdu_read_coils+0xa8>)
 8001f14:	785b      	ldrb	r3, [r3, #1]
 8001f16:	73fb      	strb	r3, [r7, #15]
 8001f18:	4b26      	ldr	r3, [pc, #152]	; (8001fb4 <pdu_read_coils+0xa8>)
 8001f1a:	789b      	ldrb	r3, [r3, #2]
 8001f1c:	021b      	lsls	r3, r3, #8
 8001f1e:	b21a      	sxth	r2, r3
 8001f20:	4b24      	ldr	r3, [pc, #144]	; (8001fb4 <pdu_read_coils+0xa8>)
 8001f22:	78db      	ldrb	r3, [r3, #3]
 8001f24:	b21b      	sxth	r3, r3
 8001f26:	4313      	orrs	r3, r2
 8001f28:	b21b      	sxth	r3, r3
 8001f2a:	81bb      	strh	r3, [r7, #12]
 8001f2c:	4b21      	ldr	r3, [pc, #132]	; (8001fb4 <pdu_read_coils+0xa8>)
 8001f2e:	791b      	ldrb	r3, [r3, #4]
 8001f30:	021b      	lsls	r3, r3, #8
 8001f32:	b21a      	sxth	r2, r3
 8001f34:	4b1f      	ldr	r3, [pc, #124]	; (8001fb4 <pdu_read_coils+0xa8>)
 8001f36:	795b      	ldrb	r3, [r3, #5]
 8001f38:	b21b      	sxth	r3, r3
 8001f3a:	4313      	orrs	r3, r2
 8001f3c:	b21b      	sxth	r3, r3
 8001f3e:	817b      	strh	r3, [r7, #10]
 8001f40:	2301      	movs	r3, #1
 8001f42:	607b      	str	r3, [r7, #4]
 8001f44:	89bb      	ldrh	r3, [r7, #12]
 8001f46:	2b12      	cmp	r3, #18
 8001f48:	d904      	bls.n	8001f54 <pdu_read_coils+0x48>
 8001f4a:	89ba      	ldrh	r2, [r7, #12]
 8001f4c:	897b      	ldrh	r3, [r7, #10]
 8001f4e:	4413      	add	r3, r2
 8001f50:	2b38      	cmp	r3, #56	; 0x38
 8001f52:	dd10      	ble.n	8001f76 <pdu_read_coils+0x6a>
 8001f54:	687b      	ldr	r3, [r7, #4]
 8001f56:	1c5a      	adds	r2, r3, #1
 8001f58:	607a      	str	r2, [r7, #4]
 8001f5a:	7bfa      	ldrb	r2, [r7, #15]
 8001f5c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001f60:	b2d1      	uxtb	r1, r2
 8001f62:	4a15      	ldr	r2, [pc, #84]	; (8001fb8 <pdu_read_coils+0xac>)
 8001f64:	54d1      	strb	r1, [r2, r3]
 8001f66:	687b      	ldr	r3, [r7, #4]
 8001f68:	1c5a      	adds	r2, r3, #1
 8001f6a:	607a      	str	r2, [r7, #4]
 8001f6c:	4a12      	ldr	r2, [pc, #72]	; (8001fb8 <pdu_read_coils+0xac>)
 8001f6e:	2102      	movs	r1, #2
 8001f70:	54d1      	strb	r1, [r2, r3]
 8001f72:	687b      	ldr	r3, [r7, #4]
 8001f74:	e01a      	b.n	8001fac <pdu_read_coils+0xa0>
 8001f76:	687b      	ldr	r3, [r7, #4]
 8001f78:	1c5a      	adds	r2, r3, #1
 8001f7a:	607a      	str	r2, [r7, #4]
 8001f7c:	490e      	ldr	r1, [pc, #56]	; (8001fb8 <pdu_read_coils+0xac>)
 8001f7e:	7bfa      	ldrb	r2, [r7, #15]
 8001f80:	54ca      	strb	r2, [r1, r3]
 8001f82:	687b      	ldr	r3, [r7, #4]
 8001f84:	3301      	adds	r3, #1
 8001f86:	607b      	str	r3, [r7, #4]
 8001f88:	687b      	ldr	r3, [r7, #4]
 8001f8a:	4a0b      	ldr	r2, [pc, #44]	; (8001fb8 <pdu_read_coils+0xac>)
 8001f8c:	1898      	adds	r0, r3, r2
 8001f8e:	89bb      	ldrh	r3, [r7, #12]
 8001f90:	f1a3 0213 	sub.w	r2, r3, #19
 8001f94:	897b      	ldrh	r3, [r7, #10]
 8001f96:	4909      	ldr	r1, [pc, #36]	; (8001fbc <pdu_read_coils+0xb0>)
 8001f98:	f7ff fe10 	bl	8001bbc <pack_bits_to_bytes>
 8001f9c:	6038      	str	r0, [r7, #0]
 8001f9e:	683b      	ldr	r3, [r7, #0]
 8001fa0:	b2da      	uxtb	r2, r3
 8001fa2:	4b05      	ldr	r3, [pc, #20]	; (8001fb8 <pdu_read_coils+0xac>)
 8001fa4:	709a      	strb	r2, [r3, #2]
 8001fa6:	683a      	ldr	r2, [r7, #0]
 8001fa8:	687b      	ldr	r3, [r7, #4]
 8001faa:	4413      	add	r3, r2
 8001fac:	4618      	mov	r0, r3
 8001fae:	3710      	adds	r7, #16
 8001fb0:	46bd      	mov	sp, r7
 8001fb2:	bd80      	pop	{r7, pc}
 8001fb4:	20000a74 	.word	0x20000a74
 8001fb8:	20000b7c 	.word	0x20000b7c
 8001fbc:	20000008 	.word	0x20000008

08001fc0 <pdu_read_discrete_inputs>:
 8001fc0:	b580      	push	{r7, lr}
 8001fc2:	b084      	sub	sp, #16
 8001fc4:	af00      	add	r7, sp, #0
 8001fc6:	4b28      	ldr	r3, [pc, #160]	; (8002068 <pdu_read_discrete_inputs+0xa8>)
 8001fc8:	785b      	ldrb	r3, [r3, #1]
 8001fca:	73fb      	strb	r3, [r7, #15]
 8001fcc:	4b26      	ldr	r3, [pc, #152]	; (8002068 <pdu_read_discrete_inputs+0xa8>)
 8001fce:	789b      	ldrb	r3, [r3, #2]
 8001fd0:	021b      	lsls	r3, r3, #8
 8001fd2:	b21a      	sxth	r2, r3
 8001fd4:	4b24      	ldr	r3, [pc, #144]	; (8002068 <pdu_read_discrete_inputs+0xa8>)
 8001fd6:	78db      	ldrb	r3, [r3, #3]
 8001fd8:	b21b      	sxth	r3, r3
 8001fda:	4313      	orrs	r3, r2
 8001fdc:	b21b      	sxth	r3, r3
 8001fde:	81bb      	strh	r3, [r7, #12]
 8001fe0:	4b21      	ldr	r3, [pc, #132]	; (8002068 <pdu_read_discrete_inputs+0xa8>)
 8001fe2:	791b      	ldrb	r3, [r3, #4]
 8001fe4:	021b      	lsls	r3, r3, #8
 8001fe6:	b21a      	sxth	r2, r3
 8001fe8:	4b1f      	ldr	r3, [pc, #124]	; (8002068 <pdu_read_discrete_inputs+0xa8>)
 8001fea:	795b      	ldrb	r3, [r3, #5]
 8001fec:	b21b      	sxth	r3, r3
 8001fee:	4313      	orrs	r3, r2
 8001ff0:	b21b      	sxth	r3, r3
 8001ff2:	817b      	strh	r3, [r7, #10]
 8001ff4:	2301      	movs	r3, #1
 8001ff6:	607b      	str	r3, [r7, #4]
 8001ff8:	89bb      	ldrh	r3, [r7, #12]
 8001ffa:	2bc3      	cmp	r3, #195	; 0xc3
 8001ffc:	d904      	bls.n	8002008 <pdu_read_discrete_inputs+0x48>
 8001ffe:	89ba      	ldrh	r2, [r7, #12]
 8002000:	897b      	ldrh	r3, [r7, #10]
 8002002:	4413      	add	r3, r2
 8002004:	2bda      	cmp	r3, #218	; 0xda
 8002006:	dd10      	ble.n	800202a <pdu_read_discrete_inputs+0x6a>
 8002008:	687b      	ldr	r3, [r7, #4]
 800200a:	1c5a      	adds	r2, r3, #1
 800200c:	607a      	str	r2, [r7, #4]
 800200e:	7bfa      	ldrb	r2, [r7, #15]
 8002010:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002014:	b2d1      	uxtb	r1, r2
 8002016:	4a15      	ldr	r2, [pc, #84]	; (800206c <pdu_read_discrete_inputs+0xac>)
 8002018:	54d1      	strb	r1, [r2, r3]
 800201a:	687b      	ldr	r3, [r7, #4]
 800201c:	1c5a      	adds	r2, r3, #1
 800201e:	607a      	str	r2, [r7, #4]
 8002020:	4a12      	ldr	r2, [pc, #72]	; (800206c <pdu_read_discrete_inputs+0xac>)
 8002022:	2102      	movs	r1, #2
 8002024:	54d1      	strb	r1, [r2, r3]
 8002026:	687b      	ldr	r3, [r7, #4]
 8002028:	e01a      	b.n	8002060 <pdu_read_discrete_inputs+0xa0>
 800202a:	687b      	ldr	r3, [r7, #4]
 800202c:	1c5a      	adds	r2, r3, #1
 800202e:	607a      	str	r2, [r7, #4]
 8002030:	490e      	ldr	r1, [pc, #56]	; (800206c <pdu_read_discrete_inputs+0xac>)
 8002032:	7bfa      	ldrb	r2, [r7, #15]
 8002034:	54ca      	strb	r2, [r1, r3]
 8002036:	687b      	ldr	r3, [r7, #4]
 8002038:	3301      	adds	r3, #1
 800203a:	607b      	str	r3, [r7, #4]
 800203c:	687b      	ldr	r3, [r7, #4]
 800203e:	4a0b      	ldr	r2, [pc, #44]	; (800206c <pdu_read_discrete_inputs+0xac>)
 8002040:	1898      	adds	r0, r3, r2
 8002042:	89bb      	ldrh	r3, [r7, #12]
 8002044:	f1a3 02c4 	sub.w	r2, r3, #196	; 0xc4
 8002048:	897b      	ldrh	r3, [r7, #10]
 800204a:	4909      	ldr	r1, [pc, #36]	; (8002070 <pdu_read_discrete_inputs+0xb0>)
 800204c:	f7ff fdb6 	bl	8001bbc <pack_bits_to_bytes>
 8002050:	6038      	str	r0, [r7, #0]
 8002052:	683b      	ldr	r3, [r7, #0]
 8002054:	b2da      	uxtb	r2, r3
 8002056:	4b05      	ldr	r3, [pc, #20]	; (800206c <pdu_read_discrete_inputs+0xac>)
 8002058:	709a      	strb	r2, [r3, #2]
 800205a:	683a      	ldr	r2, [r7, #0]
 800205c:	687b      	ldr	r3, [r7, #4]
 800205e:	4413      	add	r3, r2
 8002060:	4618      	mov	r0, r3
 8002062:	3710      	adds	r7, #16
 8002064:	46bd      	mov	sp, r7
 8002066:	bd80      	pop	{r7, pc}
 8002068:	20000a74 	.word	0x20000a74
 800206c:	20000b7c 	.word	0x20000b7c
 8002070:	20000010 	.word	0x20000010

08002074 <pdu_report_server_id>:
 8002074:	b480      	push	{r7}
 8002076:	b085      	sub	sp, #20
 8002078:	af00      	add	r7, sp, #0
 800207a:	2316      	movs	r3, #22
 800207c:	607b      	str	r3, [r7, #4]
 800207e:	4b1c      	ldr	r3, [pc, #112]	; (80020f0 <pdu_report_server_id+0x7c>)
 8002080:	785b      	ldrb	r3, [r3, #1]
 8002082:	70fb      	strb	r3, [r7, #3]
 8002084:	2301      	movs	r3, #1
 8002086:	60fb      	str	r3, [r7, #12]
 8002088:	68fb      	ldr	r3, [r7, #12]
 800208a:	1c5a      	adds	r2, r3, #1
 800208c:	60fa      	str	r2, [r7, #12]
 800208e:	4919      	ldr	r1, [pc, #100]	; (80020f4 <pdu_report_server_id+0x80>)
 8002090:	78fa      	ldrb	r2, [r7, #3]
 8002092:	54ca      	strb	r2, [r1, r3]
 8002094:	68fb      	ldr	r3, [r7, #12]
 8002096:	1c5a      	adds	r2, r3, #1
 8002098:	60fa      	str	r2, [r7, #12]
 800209a:	687a      	ldr	r2, [r7, #4]
 800209c:	b2d2      	uxtb	r2, r2
 800209e:	3202      	adds	r2, #2
 80020a0:	b2d1      	uxtb	r1, r2
 80020a2:	4a14      	ldr	r2, [pc, #80]	; (80020f4 <pdu_report_server_id+0x80>)
 80020a4:	54d1      	strb	r1, [r2, r3]
 80020a6:	68fb      	ldr	r3, [r7, #12]
 80020a8:	1c5a      	adds	r2, r3, #1
 80020aa:	60fa      	str	r2, [r7, #12]
 80020ac:	4a11      	ldr	r2, [pc, #68]	; (80020f4 <pdu_report_server_id+0x80>)
 80020ae:	2111      	movs	r1, #17
 80020b0:	54d1      	strb	r1, [r2, r3]
 80020b2:	68fb      	ldr	r3, [r7, #12]
 80020b4:	1c5a      	adds	r2, r3, #1
 80020b6:	60fa      	str	r2, [r7, #12]
 80020b8:	4a0e      	ldr	r2, [pc, #56]	; (80020f4 <pdu_report_server_id+0x80>)
 80020ba:	21ff      	movs	r1, #255	; 0xff
 80020bc:	54d1      	strb	r1, [r2, r3]
 80020be:	2300      	movs	r3, #0
 80020c0:	60bb      	str	r3, [r7, #8]
 80020c2:	e00b      	b.n	80020dc <pdu_report_server_id+0x68>
 80020c4:	68fb      	ldr	r3, [r7, #12]
 80020c6:	1c5a      	adds	r2, r3, #1
 80020c8:	60fa      	str	r2, [r7, #12]
 80020ca:	490b      	ldr	r1, [pc, #44]	; (80020f8 <pdu_report_server_id+0x84>)
 80020cc:	68ba      	ldr	r2, [r7, #8]
 80020ce:	440a      	add	r2, r1
 80020d0:	7811      	ldrb	r1, [r2, #0]
 80020d2:	4a08      	ldr	r2, [pc, #32]	; (80020f4 <pdu_report_server_id+0x80>)
 80020d4:	54d1      	strb	r1, [r2, r3]
 80020d6:	68bb      	ldr	r3, [r7, #8]
 80020d8:	3301      	adds	r3, #1
 80020da:	60bb      	str	r3, [r7, #8]
 80020dc:	68ba      	ldr	r2, [r7, #8]
 80020de:	687b      	ldr	r3, [r7, #4]
 80020e0:	429a      	cmp	r2, r3
 80020e2:	dbef      	blt.n	80020c4 <pdu_report_server_id+0x50>
 80020e4:	68fb      	ldr	r3, [r7, #12]
 80020e6:	4618      	mov	r0, r3
 80020e8:	3714      	adds	r7, #20
 80020ea:	46bd      	mov	sp, r7
 80020ec:	bc80      	pop	{r7}
 80020ee:	4770      	bx	lr
 80020f0:	20000a74 	.word	0x20000a74
 80020f4:	20000b7c 	.word	0x20000b7c
 80020f8:	0800393c 	.word	0x0800393c

080020fc <pdu_diagnostics>:
 80020fc:	b480      	push	{r7}
 80020fe:	b085      	sub	sp, #20
 8002100:	af00      	add	r7, sp, #0
 8002102:	4b1e      	ldr	r3, [pc, #120]	; (800217c <pdu_diagnostics+0x80>)
 8002104:	785b      	ldrb	r3, [r3, #1]
 8002106:	71fb      	strb	r3, [r7, #7]
 8002108:	4b1c      	ldr	r3, [pc, #112]	; (800217c <pdu_diagnostics+0x80>)
 800210a:	789b      	ldrb	r3, [r3, #2]
 800210c:	021b      	lsls	r3, r3, #8
 800210e:	b21a      	sxth	r2, r3
 8002110:	4b1a      	ldr	r3, [pc, #104]	; (800217c <pdu_diagnostics+0x80>)
 8002112:	78db      	ldrb	r3, [r3, #3]
 8002114:	b21b      	sxth	r3, r3
 8002116:	4313      	orrs	r3, r2
 8002118:	b21b      	sxth	r3, r3
 800211a:	80bb      	strh	r3, [r7, #4]
 800211c:	2301      	movs	r3, #1
 800211e:	60bb      	str	r3, [r7, #8]
 8002120:	88bb      	ldrh	r3, [r7, #4]
 8002122:	2b00      	cmp	r3, #0
 8002124:	d114      	bne.n	8002150 <pdu_diagnostics+0x54>
 8002126:	2301      	movs	r3, #1
 8002128:	60fb      	str	r3, [r7, #12]
 800212a:	e00b      	b.n	8002144 <pdu_diagnostics+0x48>
 800212c:	68bb      	ldr	r3, [r7, #8]
 800212e:	1c5a      	adds	r2, r3, #1
 8002130:	60ba      	str	r2, [r7, #8]
 8002132:	4912      	ldr	r1, [pc, #72]	; (800217c <pdu_diagnostics+0x80>)
 8002134:	68fa      	ldr	r2, [r7, #12]
 8002136:	440a      	add	r2, r1
 8002138:	7811      	ldrb	r1, [r2, #0]
 800213a:	4a11      	ldr	r2, [pc, #68]	; (8002180 <pdu_diagnostics+0x84>)
 800213c:	54d1      	strb	r1, [r2, r3]
 800213e:	68fb      	ldr	r3, [r7, #12]
 8002140:	3301      	adds	r3, #1
 8002142:	60fb      	str	r3, [r7, #12]
 8002144:	68fa      	ldr	r2, [r7, #12]
 8002146:	4b0f      	ldr	r3, [pc, #60]	; (8002184 <pdu_diagnostics+0x88>)
 8002148:	681b      	ldr	r3, [r3, #0]
 800214a:	429a      	cmp	r2, r3
 800214c:	d3ee      	bcc.n	800212c <pdu_diagnostics+0x30>
 800214e:	e00e      	b.n	800216e <pdu_diagnostics+0x72>
 8002150:	68bb      	ldr	r3, [r7, #8]
 8002152:	1c5a      	adds	r2, r3, #1
 8002154:	60ba      	str	r2, [r7, #8]
 8002156:	79fa      	ldrb	r2, [r7, #7]
 8002158:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800215c:	b2d1      	uxtb	r1, r2
 800215e:	4a08      	ldr	r2, [pc, #32]	; (8002180 <pdu_diagnostics+0x84>)
 8002160:	54d1      	strb	r1, [r2, r3]
 8002162:	68bb      	ldr	r3, [r7, #8]
 8002164:	1c5a      	adds	r2, r3, #1
 8002166:	60ba      	str	r2, [r7, #8]
 8002168:	4a05      	ldr	r2, [pc, #20]	; (8002180 <pdu_diagnostics+0x84>)
 800216a:	2101      	movs	r1, #1
 800216c:	54d1      	strb	r1, [r2, r3]
 800216e:	68bb      	ldr	r3, [r7, #8]
 8002170:	4618      	mov	r0, r3
 8002172:	3714      	adds	r7, #20
 8002174:	46bd      	mov	sp, r7
 8002176:	bc80      	pop	{r7}
 8002178:	4770      	bx	lr
 800217a:	bf00      	nop
 800217c:	20000a74 	.word	0x20000a74
 8002180:	20000b7c 	.word	0x20000b7c
 8002184:	20000b78 	.word	0x20000b78

08002188 <pdu_read_input_registers>:
 8002188:	b480      	push	{r7}
 800218a:	b085      	sub	sp, #20
 800218c:	af00      	add	r7, sp, #0
 800218e:	4b36      	ldr	r3, [pc, #216]	; (8002268 <pdu_read_input_registers+0xe0>)
 8002190:	785b      	ldrb	r3, [r3, #1]
 8002192:	71fb      	strb	r3, [r7, #7]
 8002194:	4b34      	ldr	r3, [pc, #208]	; (8002268 <pdu_read_input_registers+0xe0>)
 8002196:	789b      	ldrb	r3, [r3, #2]
 8002198:	021b      	lsls	r3, r3, #8
 800219a:	b21a      	sxth	r2, r3
 800219c:	4b32      	ldr	r3, [pc, #200]	; (8002268 <pdu_read_input_registers+0xe0>)
 800219e:	78db      	ldrb	r3, [r3, #3]
 80021a0:	b21b      	sxth	r3, r3
 80021a2:	4313      	orrs	r3, r2
 80021a4:	b21b      	sxth	r3, r3
 80021a6:	80bb      	strh	r3, [r7, #4]
 80021a8:	4b2f      	ldr	r3, [pc, #188]	; (8002268 <pdu_read_input_registers+0xe0>)
 80021aa:	791b      	ldrb	r3, [r3, #4]
 80021ac:	021b      	lsls	r3, r3, #8
 80021ae:	b21a      	sxth	r2, r3
 80021b0:	4b2d      	ldr	r3, [pc, #180]	; (8002268 <pdu_read_input_registers+0xe0>)
 80021b2:	795b      	ldrb	r3, [r3, #5]
 80021b4:	b21b      	sxth	r3, r3
 80021b6:	4313      	orrs	r3, r2
 80021b8:	b21b      	sxth	r3, r3
 80021ba:	807b      	strh	r3, [r7, #2]
 80021bc:	88bb      	ldrh	r3, [r7, #4]
 80021be:	2b07      	cmp	r3, #7
 80021c0:	d904      	bls.n	80021cc <pdu_read_input_registers+0x44>
 80021c2:	88ba      	ldrh	r2, [r7, #4]
 80021c4:	887b      	ldrh	r3, [r7, #2]
 80021c6:	4413      	add	r3, r2
 80021c8:	2b09      	cmp	r3, #9
 80021ca:	dd12      	ble.n	80021f2 <pdu_read_input_registers+0x6a>
 80021cc:	2301      	movs	r3, #1
 80021ce:	60bb      	str	r3, [r7, #8]
 80021d0:	68bb      	ldr	r3, [r7, #8]
 80021d2:	1c5a      	adds	r2, r3, #1
 80021d4:	60ba      	str	r2, [r7, #8]
 80021d6:	79fa      	ldrb	r2, [r7, #7]
 80021d8:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80021dc:	b2d1      	uxtb	r1, r2
 80021de:	4a23      	ldr	r2, [pc, #140]	; (800226c <pdu_read_input_registers+0xe4>)
 80021e0:	54d1      	strb	r1, [r2, r3]
 80021e2:	68bb      	ldr	r3, [r7, #8]
 80021e4:	1c5a      	adds	r2, r3, #1
 80021e6:	60ba      	str	r2, [r7, #8]
 80021e8:	4a20      	ldr	r2, [pc, #128]	; (800226c <pdu_read_input_registers+0xe4>)
 80021ea:	2102      	movs	r1, #2
 80021ec:	54d1      	strb	r1, [r2, r3]
 80021ee:	68bb      	ldr	r3, [r7, #8]
 80021f0:	e034      	b.n	800225c <pdu_read_input_registers+0xd4>
 80021f2:	2301      	movs	r3, #1
 80021f4:	60bb      	str	r3, [r7, #8]
 80021f6:	68bb      	ldr	r3, [r7, #8]
 80021f8:	1c5a      	adds	r2, r3, #1
 80021fa:	60ba      	str	r2, [r7, #8]
 80021fc:	491b      	ldr	r1, [pc, #108]	; (800226c <pdu_read_input_registers+0xe4>)
 80021fe:	79fa      	ldrb	r2, [r7, #7]
 8002200:	54ca      	strb	r2, [r1, r3]
 8002202:	68bb      	ldr	r3, [r7, #8]
 8002204:	1c5a      	adds	r2, r3, #1
 8002206:	60ba      	str	r2, [r7, #8]
 8002208:	887a      	ldrh	r2, [r7, #2]
 800220a:	b2d2      	uxtb	r2, r2
 800220c:	0052      	lsls	r2, r2, #1
 800220e:	b2d1      	uxtb	r1, r2
 8002210:	4a16      	ldr	r2, [pc, #88]	; (800226c <pdu_read_input_registers+0xe4>)
 8002212:	54d1      	strb	r1, [r2, r3]
 8002214:	2300      	movs	r3, #0
 8002216:	60fb      	str	r3, [r7, #12]
 8002218:	e01b      	b.n	8002252 <pdu_read_input_registers+0xca>
 800221a:	88bb      	ldrh	r3, [r7, #4]
 800221c:	f1a3 0208 	sub.w	r2, r3, #8
 8002220:	68fb      	ldr	r3, [r7, #12]
 8002222:	4413      	add	r3, r2
 8002224:	4a12      	ldr	r2, [pc, #72]	; (8002270 <pdu_read_input_registers+0xe8>)
 8002226:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800222a:	803b      	strh	r3, [r7, #0]
 800222c:	68bb      	ldr	r3, [r7, #8]
 800222e:	1c5a      	adds	r2, r3, #1
 8002230:	60ba      	str	r2, [r7, #8]
 8002232:	883a      	ldrh	r2, [r7, #0]
 8002234:	0a12      	lsrs	r2, r2, #8
 8002236:	b292      	uxth	r2, r2
 8002238:	b2d1      	uxtb	r1, r2
 800223a:	4a0c      	ldr	r2, [pc, #48]	; (800226c <pdu_read_input_registers+0xe4>)
 800223c:	54d1      	strb	r1, [r2, r3]
 800223e:	68bb      	ldr	r3, [r7, #8]
 8002240:	1c5a      	adds	r2, r3, #1
 8002242:	60ba      	str	r2, [r7, #8]
 8002244:	883a      	ldrh	r2, [r7, #0]
 8002246:	b2d1      	uxtb	r1, r2
 8002248:	4a08      	ldr	r2, [pc, #32]	; (800226c <pdu_read_input_registers+0xe4>)
 800224a:	54d1      	strb	r1, [r2, r3]
 800224c:	68fb      	ldr	r3, [r7, #12]
 800224e:	3301      	adds	r3, #1
 8002250:	60fb      	str	r3, [r7, #12]
 8002252:	887a      	ldrh	r2, [r7, #2]
 8002254:	68fb      	ldr	r3, [r7, #12]
 8002256:	429a      	cmp	r2, r3
 8002258:	dcdf      	bgt.n	800221a <pdu_read_input_registers+0x92>
 800225a:	68bb      	ldr	r3, [r7, #8]
 800225c:	4618      	mov	r0, r3
 800225e:	3714      	adds	r7, #20
 8002260:	46bd      	mov	sp, r7
 8002262:	bc80      	pop	{r7}
 8002264:	4770      	bx	lr
 8002266:	bf00      	nop
 8002268:	20000a74 	.word	0x20000a74
 800226c:	20000b7c 	.word	0x20000b7c
 8002270:	20000014 	.word	0x20000014

08002274 <pdu_write_single_register>:
 8002274:	b480      	push	{r7}
 8002276:	b085      	sub	sp, #20
 8002278:	af00      	add	r7, sp, #0
 800227a:	4b2d      	ldr	r3, [pc, #180]	; (8002330 <pdu_write_single_register+0xbc>)
 800227c:	785b      	ldrb	r3, [r3, #1]
 800227e:	72fb      	strb	r3, [r7, #11]
 8002280:	4b2b      	ldr	r3, [pc, #172]	; (8002330 <pdu_write_single_register+0xbc>)
 8002282:	789b      	ldrb	r3, [r3, #2]
 8002284:	021b      	lsls	r3, r3, #8
 8002286:	b21a      	sxth	r2, r3
 8002288:	4b29      	ldr	r3, [pc, #164]	; (8002330 <pdu_write_single_register+0xbc>)
 800228a:	78db      	ldrb	r3, [r3, #3]
 800228c:	b21b      	sxth	r3, r3
 800228e:	4313      	orrs	r3, r2
 8002290:	b21b      	sxth	r3, r3
 8002292:	813b      	strh	r3, [r7, #8]
 8002294:	4b26      	ldr	r3, [pc, #152]	; (8002330 <pdu_write_single_register+0xbc>)
 8002296:	791b      	ldrb	r3, [r3, #4]
 8002298:	021b      	lsls	r3, r3, #8
 800229a:	b21a      	sxth	r2, r3
 800229c:	4b24      	ldr	r3, [pc, #144]	; (8002330 <pdu_write_single_register+0xbc>)
 800229e:	795b      	ldrb	r3, [r3, #5]
 80022a0:	b21b      	sxth	r3, r3
 80022a2:	4313      	orrs	r3, r2
 80022a4:	b21b      	sxth	r3, r3
 80022a6:	80fb      	strh	r3, [r7, #6]
 80022a8:	893b      	ldrh	r3, [r7, #8]
 80022aa:	2b07      	cmp	r3, #7
 80022ac:	d911      	bls.n	80022d2 <pdu_write_single_register+0x5e>
 80022ae:	2301      	movs	r3, #1
 80022b0:	60fb      	str	r3, [r7, #12]
 80022b2:	68fb      	ldr	r3, [r7, #12]
 80022b4:	1c5a      	adds	r2, r3, #1
 80022b6:	60fa      	str	r2, [r7, #12]
 80022b8:	7afa      	ldrb	r2, [r7, #11]
 80022ba:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80022be:	b2d1      	uxtb	r1, r2
 80022c0:	4a1c      	ldr	r2, [pc, #112]	; (8002334 <pdu_write_single_register+0xc0>)
 80022c2:	54d1      	strb	r1, [r2, r3]
 80022c4:	68fb      	ldr	r3, [r7, #12]
 80022c6:	1c5a      	adds	r2, r3, #1
 80022c8:	60fa      	str	r2, [r7, #12]
 80022ca:	4a1a      	ldr	r2, [pc, #104]	; (8002334 <pdu_write_single_register+0xc0>)
 80022cc:	2102      	movs	r1, #2
 80022ce:	54d1      	strb	r1, [r2, r3]
 80022d0:	e028      	b.n	8002324 <pdu_write_single_register+0xb0>
 80022d2:	893b      	ldrh	r3, [r7, #8]
 80022d4:	4918      	ldr	r1, [pc, #96]	; (8002338 <pdu_write_single_register+0xc4>)
 80022d6:	88fa      	ldrh	r2, [r7, #6]
 80022d8:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80022dc:	2301      	movs	r3, #1
 80022de:	60fb      	str	r3, [r7, #12]
 80022e0:	68fb      	ldr	r3, [r7, #12]
 80022e2:	1c5a      	adds	r2, r3, #1
 80022e4:	60fa      	str	r2, [r7, #12]
 80022e6:	4913      	ldr	r1, [pc, #76]	; (8002334 <pdu_write_single_register+0xc0>)
 80022e8:	7afa      	ldrb	r2, [r7, #11]
 80022ea:	54ca      	strb	r2, [r1, r3]
 80022ec:	68fb      	ldr	r3, [r7, #12]
 80022ee:	1c5a      	adds	r2, r3, #1
 80022f0:	60fa      	str	r2, [r7, #12]
 80022f2:	4a0f      	ldr	r2, [pc, #60]	; (8002330 <pdu_write_single_register+0xbc>)
 80022f4:	7891      	ldrb	r1, [r2, #2]
 80022f6:	4a0f      	ldr	r2, [pc, #60]	; (8002334 <pdu_write_single_register+0xc0>)
 80022f8:	54d1      	strb	r1, [r2, r3]
 80022fa:	68fb      	ldr	r3, [r7, #12]
 80022fc:	1c5a      	adds	r2, r3, #1
 80022fe:	60fa      	str	r2, [r7, #12]
 8002300:	4a0b      	ldr	r2, [pc, #44]	; (8002330 <pdu_write_single_register+0xbc>)
 8002302:	78d1      	ldrb	r1, [r2, #3]
 8002304:	4a0b      	ldr	r2, [pc, #44]	; (8002334 <pdu_write_single_register+0xc0>)
 8002306:	54d1      	strb	r1, [r2, r3]
 8002308:	68fb      	ldr	r3, [r7, #12]
 800230a:	1c5a      	adds	r2, r3, #1
 800230c:	60fa      	str	r2, [r7, #12]
 800230e:	4a08      	ldr	r2, [pc, #32]	; (8002330 <pdu_write_single_register+0xbc>)
 8002310:	7911      	ldrb	r1, [r2, #4]
 8002312:	4a08      	ldr	r2, [pc, #32]	; (8002334 <pdu_write_single_register+0xc0>)
 8002314:	54d1      	strb	r1, [r2, r3]
 8002316:	68fb      	ldr	r3, [r7, #12]
 8002318:	1c5a      	adds	r2, r3, #1
 800231a:	60fa      	str	r2, [r7, #12]
 800231c:	4a04      	ldr	r2, [pc, #16]	; (8002330 <pdu_write_single_register+0xbc>)
 800231e:	7951      	ldrb	r1, [r2, #5]
 8002320:	4a04      	ldr	r2, [pc, #16]	; (8002334 <pdu_write_single_register+0xc0>)
 8002322:	54d1      	strb	r1, [r2, r3]
 8002324:	68fb      	ldr	r3, [r7, #12]
 8002326:	4618      	mov	r0, r3
 8002328:	3714      	adds	r7, #20
 800232a:	46bd      	mov	sp, r7
 800232c:	bc80      	pop	{r7}
 800232e:	4770      	bx	lr
 8002330:	20000a74 	.word	0x20000a74
 8002334:	20000b7c 	.word	0x20000b7c
 8002338:	20000a60 	.word	0x20000a60

0800233c <pdu_write_multiply_registers>:
 800233c:	b480      	push	{r7}
 800233e:	b087      	sub	sp, #28
 8002340:	af00      	add	r7, sp, #0
 8002342:	4b3f      	ldr	r3, [pc, #252]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002344:	785b      	ldrb	r3, [r3, #1]
 8002346:	73fb      	strb	r3, [r7, #15]
 8002348:	4b3d      	ldr	r3, [pc, #244]	; (8002440 <pdu_write_multiply_registers+0x104>)
 800234a:	789b      	ldrb	r3, [r3, #2]
 800234c:	021b      	lsls	r3, r3, #8
 800234e:	b21a      	sxth	r2, r3
 8002350:	4b3b      	ldr	r3, [pc, #236]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002352:	78db      	ldrb	r3, [r3, #3]
 8002354:	b21b      	sxth	r3, r3
 8002356:	4313      	orrs	r3, r2
 8002358:	b21b      	sxth	r3, r3
 800235a:	81bb      	strh	r3, [r7, #12]
 800235c:	4b38      	ldr	r3, [pc, #224]	; (8002440 <pdu_write_multiply_registers+0x104>)
 800235e:	791b      	ldrb	r3, [r3, #4]
 8002360:	021b      	lsls	r3, r3, #8
 8002362:	b21a      	sxth	r2, r3
 8002364:	4b36      	ldr	r3, [pc, #216]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002366:	795b      	ldrb	r3, [r3, #5]
 8002368:	b21b      	sxth	r3, r3
 800236a:	4313      	orrs	r3, r2
 800236c:	b21b      	sxth	r3, r3
 800236e:	817b      	strh	r3, [r7, #10]
 8002370:	4b33      	ldr	r3, [pc, #204]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002372:	799b      	ldrb	r3, [r3, #6]
 8002374:	727b      	strb	r3, [r7, #9]
 8002376:	89ba      	ldrh	r2, [r7, #12]
 8002378:	897b      	ldrh	r3, [r7, #10]
 800237a:	4413      	add	r3, r2
 800237c:	2b08      	cmp	r3, #8
 800237e:	dd11      	ble.n	80023a4 <pdu_write_multiply_registers+0x68>
 8002380:	2301      	movs	r3, #1
 8002382:	613b      	str	r3, [r7, #16]
 8002384:	693b      	ldr	r3, [r7, #16]
 8002386:	1c5a      	adds	r2, r3, #1
 8002388:	613a      	str	r2, [r7, #16]
 800238a:	7bfa      	ldrb	r2, [r7, #15]
 800238c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002390:	b2d1      	uxtb	r1, r2
 8002392:	4a2c      	ldr	r2, [pc, #176]	; (8002444 <pdu_write_multiply_registers+0x108>)
 8002394:	54d1      	strb	r1, [r2, r3]
 8002396:	693b      	ldr	r3, [r7, #16]
 8002398:	1c5a      	adds	r2, r3, #1
 800239a:	613a      	str	r2, [r7, #16]
 800239c:	4a29      	ldr	r2, [pc, #164]	; (8002444 <pdu_write_multiply_registers+0x108>)
 800239e:	2102      	movs	r1, #2
 80023a0:	54d1      	strb	r1, [r2, r3]
 80023a2:	e047      	b.n	8002434 <pdu_write_multiply_registers+0xf8>
 80023a4:	2307      	movs	r3, #7
 80023a6:	613b      	str	r3, [r7, #16]
 80023a8:	2300      	movs	r3, #0
 80023aa:	617b      	str	r3, [r7, #20]
 80023ac:	e01a      	b.n	80023e4 <pdu_write_multiply_registers+0xa8>
 80023ae:	693b      	ldr	r3, [r7, #16]
 80023b0:	1c5a      	adds	r2, r3, #1
 80023b2:	613a      	str	r2, [r7, #16]
 80023b4:	4a22      	ldr	r2, [pc, #136]	; (8002440 <pdu_write_multiply_registers+0x104>)
 80023b6:	5cd3      	ldrb	r3, [r2, r3]
 80023b8:	b29b      	uxth	r3, r3
 80023ba:	021b      	lsls	r3, r3, #8
 80023bc:	80fb      	strh	r3, [r7, #6]
 80023be:	693b      	ldr	r3, [r7, #16]
 80023c0:	1c5a      	adds	r2, r3, #1
 80023c2:	613a      	str	r2, [r7, #16]
 80023c4:	4a1e      	ldr	r2, [pc, #120]	; (8002440 <pdu_write_multiply_registers+0x104>)
 80023c6:	5cd3      	ldrb	r3, [r2, r3]
 80023c8:	b29a      	uxth	r2, r3
 80023ca:	88fb      	ldrh	r3, [r7, #6]
 80023cc:	4313      	orrs	r3, r2
 80023ce:	80fb      	strh	r3, [r7, #6]
 80023d0:	89ba      	ldrh	r2, [r7, #12]
 80023d2:	697b      	ldr	r3, [r7, #20]
 80023d4:	4413      	add	r3, r2
 80023d6:	491c      	ldr	r1, [pc, #112]	; (8002448 <pdu_write_multiply_registers+0x10c>)
 80023d8:	88fa      	ldrh	r2, [r7, #6]
 80023da:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 80023de:	697b      	ldr	r3, [r7, #20]
 80023e0:	3301      	adds	r3, #1
 80023e2:	617b      	str	r3, [r7, #20]
 80023e4:	897a      	ldrh	r2, [r7, #10]
 80023e6:	697b      	ldr	r3, [r7, #20]
 80023e8:	429a      	cmp	r2, r3
 80023ea:	dce0      	bgt.n	80023ae <pdu_write_multiply_registers+0x72>
 80023ec:	2301      	movs	r3, #1
 80023ee:	613b      	str	r3, [r7, #16]
 80023f0:	693b      	ldr	r3, [r7, #16]
 80023f2:	1c5a      	adds	r2, r3, #1
 80023f4:	613a      	str	r2, [r7, #16]
 80023f6:	4913      	ldr	r1, [pc, #76]	; (8002444 <pdu_write_multiply_registers+0x108>)
 80023f8:	7bfa      	ldrb	r2, [r7, #15]
 80023fa:	54ca      	strb	r2, [r1, r3]
 80023fc:	693b      	ldr	r3, [r7, #16]
 80023fe:	1c5a      	adds	r2, r3, #1
 8002400:	613a      	str	r2, [r7, #16]
 8002402:	4a0f      	ldr	r2, [pc, #60]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002404:	7891      	ldrb	r1, [r2, #2]
 8002406:	4a0f      	ldr	r2, [pc, #60]	; (8002444 <pdu_write_multiply_registers+0x108>)
 8002408:	54d1      	strb	r1, [r2, r3]
 800240a:	693b      	ldr	r3, [r7, #16]
 800240c:	1c5a      	adds	r2, r3, #1
 800240e:	613a      	str	r2, [r7, #16]
 8002410:	4a0b      	ldr	r2, [pc, #44]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002412:	78d1      	ldrb	r1, [r2, #3]
 8002414:	4a0b      	ldr	r2, [pc, #44]	; (8002444 <pdu_write_multiply_registers+0x108>)
 8002416:	54d1      	strb	r1, [r2, r3]
 8002418:	693b      	ldr	r3, [r7, #16]
 800241a:	1c5a      	adds	r2, r3, #1
 800241c:	613a      	str	r2, [r7, #16]
 800241e:	4a08      	ldr	r2, [pc, #32]	; (8002440 <pdu_write_multiply_registers+0x104>)
 8002420:	7911      	ldrb	r1, [r2, #4]
 8002422:	4a08      	ldr	r2, [pc, #32]	; (8002444 <pdu_write_multiply_registers+0x108>)
 8002424:	54d1      	strb	r1, [r2, r3]
 8002426:	693b      	ldr	r3, [r7, #16]
 8002428:	1c5a      	adds	r2, r3, #1
 800242a:	613a      	str	r2, [r7, #16]
 800242c:	4a04      	ldr	r2, [pc, #16]	; (8002440 <pdu_write_multiply_registers+0x104>)
 800242e:	7951      	ldrb	r1, [r2, #5]
 8002430:	4a04      	ldr	r2, [pc, #16]	; (8002444 <pdu_write_multiply_registers+0x108>)
 8002432:	54d1      	strb	r1, [r2, r3]
 8002434:	693b      	ldr	r3, [r7, #16]
 8002436:	4618      	mov	r0, r3
 8002438:	371c      	adds	r7, #28
 800243a:	46bd      	mov	sp, r7
 800243c:	bc80      	pop	{r7}
 800243e:	4770      	bx	lr
 8002440:	20000a74 	.word	0x20000a74
 8002444:	20000b7c 	.word	0x20000b7c
 8002448:	20000a60 	.word	0x20000a60

0800244c <pdu_read_holding_registers>:
 800244c:	b480      	push	{r7}
 800244e:	b085      	sub	sp, #20
 8002450:	af00      	add	r7, sp, #0
 8002452:	4b33      	ldr	r3, [pc, #204]	; (8002520 <pdu_read_holding_registers+0xd4>)
 8002454:	785b      	ldrb	r3, [r3, #1]
 8002456:	71fb      	strb	r3, [r7, #7]
 8002458:	4b31      	ldr	r3, [pc, #196]	; (8002520 <pdu_read_holding_registers+0xd4>)
 800245a:	789b      	ldrb	r3, [r3, #2]
 800245c:	021b      	lsls	r3, r3, #8
 800245e:	b21a      	sxth	r2, r3
 8002460:	4b2f      	ldr	r3, [pc, #188]	; (8002520 <pdu_read_holding_registers+0xd4>)
 8002462:	78db      	ldrb	r3, [r3, #3]
 8002464:	b21b      	sxth	r3, r3
 8002466:	4313      	orrs	r3, r2
 8002468:	b21b      	sxth	r3, r3
 800246a:	80bb      	strh	r3, [r7, #4]
 800246c:	4b2c      	ldr	r3, [pc, #176]	; (8002520 <pdu_read_holding_registers+0xd4>)
 800246e:	791b      	ldrb	r3, [r3, #4]
 8002470:	021b      	lsls	r3, r3, #8
 8002472:	b21a      	sxth	r2, r3
 8002474:	4b2a      	ldr	r3, [pc, #168]	; (8002520 <pdu_read_holding_registers+0xd4>)
 8002476:	795b      	ldrb	r3, [r3, #5]
 8002478:	b21b      	sxth	r3, r3
 800247a:	4313      	orrs	r3, r2
 800247c:	b21b      	sxth	r3, r3
 800247e:	807b      	strh	r3, [r7, #2]
 8002480:	88ba      	ldrh	r2, [r7, #4]
 8002482:	887b      	ldrh	r3, [r7, #2]
 8002484:	4413      	add	r3, r2
 8002486:	2b08      	cmp	r3, #8
 8002488:	dd11      	ble.n	80024ae <pdu_read_holding_registers+0x62>
 800248a:	2301      	movs	r3, #1
 800248c:	60bb      	str	r3, [r7, #8]
 800248e:	68bb      	ldr	r3, [r7, #8]
 8002490:	1c5a      	adds	r2, r3, #1
 8002492:	60ba      	str	r2, [r7, #8]
 8002494:	79fa      	ldrb	r2, [r7, #7]
 8002496:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800249a:	b2d1      	uxtb	r1, r2
 800249c:	4a21      	ldr	r2, [pc, #132]	; (8002524 <pdu_read_holding_registers+0xd8>)
 800249e:	54d1      	strb	r1, [r2, r3]
 80024a0:	68bb      	ldr	r3, [r7, #8]
 80024a2:	1c5a      	adds	r2, r3, #1
 80024a4:	60ba      	str	r2, [r7, #8]
 80024a6:	4a1f      	ldr	r2, [pc, #124]	; (8002524 <pdu_read_holding_registers+0xd8>)
 80024a8:	2102      	movs	r1, #2
 80024aa:	54d1      	strb	r1, [r2, r3]
 80024ac:	e031      	b.n	8002512 <pdu_read_holding_registers+0xc6>
 80024ae:	2301      	movs	r3, #1
 80024b0:	60bb      	str	r3, [r7, #8]
 80024b2:	68bb      	ldr	r3, [r7, #8]
 80024b4:	1c5a      	adds	r2, r3, #1
 80024b6:	60ba      	str	r2, [r7, #8]
 80024b8:	491a      	ldr	r1, [pc, #104]	; (8002524 <pdu_read_holding_registers+0xd8>)
 80024ba:	79fa      	ldrb	r2, [r7, #7]
 80024bc:	54ca      	strb	r2, [r1, r3]
 80024be:	68bb      	ldr	r3, [r7, #8]
 80024c0:	1c5a      	adds	r2, r3, #1
 80024c2:	60ba      	str	r2, [r7, #8]
 80024c4:	887a      	ldrh	r2, [r7, #2]
 80024c6:	b2d2      	uxtb	r2, r2
 80024c8:	0052      	lsls	r2, r2, #1
 80024ca:	b2d1      	uxtb	r1, r2
 80024cc:	4a15      	ldr	r2, [pc, #84]	; (8002524 <pdu_read_holding_registers+0xd8>)
 80024ce:	54d1      	strb	r1, [r2, r3]
 80024d0:	2300      	movs	r3, #0
 80024d2:	60fb      	str	r3, [r7, #12]
 80024d4:	e019      	b.n	800250a <pdu_read_holding_registers+0xbe>
 80024d6:	88ba      	ldrh	r2, [r7, #4]
 80024d8:	68fb      	ldr	r3, [r7, #12]
 80024da:	4413      	add	r3, r2
 80024dc:	4a12      	ldr	r2, [pc, #72]	; (8002528 <pdu_read_holding_registers+0xdc>)
 80024de:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 80024e2:	803b      	strh	r3, [r7, #0]
 80024e4:	68bb      	ldr	r3, [r7, #8]
 80024e6:	1c5a      	adds	r2, r3, #1
 80024e8:	60ba      	str	r2, [r7, #8]
 80024ea:	883a      	ldrh	r2, [r7, #0]
 80024ec:	0a12      	lsrs	r2, r2, #8
 80024ee:	b292      	uxth	r2, r2
 80024f0:	b2d1      	uxtb	r1, r2
 80024f2:	4a0c      	ldr	r2, [pc, #48]	; (8002524 <pdu_read_holding_registers+0xd8>)
 80024f4:	54d1      	strb	r1, [r2, r3]
 80024f6:	68bb      	ldr	r3, [r7, #8]
 80024f8:	1c5a      	adds	r2, r3, #1
 80024fa:	60ba      	str	r2, [r7, #8]
 80024fc:	883a      	ldrh	r2, [r7, #0]
 80024fe:	b2d1      	uxtb	r1, r2
 8002500:	4a08      	ldr	r2, [pc, #32]	; (8002524 <pdu_read_holding_registers+0xd8>)
 8002502:	54d1      	strb	r1, [r2, r3]
 8002504:	68fb      	ldr	r3, [r7, #12]
 8002506:	3301      	adds	r3, #1
 8002508:	60fb      	str	r3, [r7, #12]
 800250a:	887a      	ldrh	r2, [r7, #2]
 800250c:	68fb      	ldr	r3, [r7, #12]
 800250e:	429a      	cmp	r2, r3
 8002510:	dce1      	bgt.n	80024d6 <pdu_read_holding_registers+0x8a>
 8002512:	68bb      	ldr	r3, [r7, #8]
 8002514:	4618      	mov	r0, r3
 8002516:	3714      	adds	r7, #20
 8002518:	46bd      	mov	sp, r7
 800251a:	bc80      	pop	{r7}
 800251c:	4770      	bx	lr
 800251e:	bf00      	nop
 8002520:	20000a74 	.word	0x20000a74
 8002524:	20000b7c 	.word	0x20000b7c
 8002528:	20000a60 	.word	0x20000a60

0800252c <pdu_read_write_multiply_registers>:
 800252c:	b480      	push	{r7}
 800252e:	b087      	sub	sp, #28
 8002530:	af00      	add	r7, sp, #0
 8002532:	4b5d      	ldr	r3, [pc, #372]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002534:	785b      	ldrb	r3, [r3, #1]
 8002536:	73fb      	strb	r3, [r7, #15]
 8002538:	4b5b      	ldr	r3, [pc, #364]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 800253a:	789b      	ldrb	r3, [r3, #2]
 800253c:	021b      	lsls	r3, r3, #8
 800253e:	b21a      	sxth	r2, r3
 8002540:	4b59      	ldr	r3, [pc, #356]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002542:	78db      	ldrb	r3, [r3, #3]
 8002544:	b21b      	sxth	r3, r3
 8002546:	4313      	orrs	r3, r2
 8002548:	b21b      	sxth	r3, r3
 800254a:	81bb      	strh	r3, [r7, #12]
 800254c:	4b56      	ldr	r3, [pc, #344]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 800254e:	791b      	ldrb	r3, [r3, #4]
 8002550:	021b      	lsls	r3, r3, #8
 8002552:	b21a      	sxth	r2, r3
 8002554:	4b54      	ldr	r3, [pc, #336]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002556:	795b      	ldrb	r3, [r3, #5]
 8002558:	b21b      	sxth	r3, r3
 800255a:	4313      	orrs	r3, r2
 800255c:	b21b      	sxth	r3, r3
 800255e:	817b      	strh	r3, [r7, #10]
 8002560:	4b51      	ldr	r3, [pc, #324]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002562:	799b      	ldrb	r3, [r3, #6]
 8002564:	021b      	lsls	r3, r3, #8
 8002566:	b21a      	sxth	r2, r3
 8002568:	4b4f      	ldr	r3, [pc, #316]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 800256a:	79db      	ldrb	r3, [r3, #7]
 800256c:	b21b      	sxth	r3, r3
 800256e:	4313      	orrs	r3, r2
 8002570:	b21b      	sxth	r3, r3
 8002572:	813b      	strh	r3, [r7, #8]
 8002574:	4b4c      	ldr	r3, [pc, #304]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002576:	7a1b      	ldrb	r3, [r3, #8]
 8002578:	021b      	lsls	r3, r3, #8
 800257a:	b21a      	sxth	r2, r3
 800257c:	4b4a      	ldr	r3, [pc, #296]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 800257e:	7a5b      	ldrb	r3, [r3, #9]
 8002580:	b21b      	sxth	r3, r3
 8002582:	4313      	orrs	r3, r2
 8002584:	b21b      	sxth	r3, r3
 8002586:	80fb      	strh	r3, [r7, #6]
 8002588:	4b47      	ldr	r3, [pc, #284]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 800258a:	7a9b      	ldrb	r3, [r3, #10]
 800258c:	717b      	strb	r3, [r7, #5]
 800258e:	89ba      	ldrh	r2, [r7, #12]
 8002590:	897b      	ldrh	r3, [r7, #10]
 8002592:	4413      	add	r3, r2
 8002594:	2b08      	cmp	r3, #8
 8002596:	dd12      	ble.n	80025be <pdu_read_write_multiply_registers+0x92>
 8002598:	2301      	movs	r3, #1
 800259a:	613b      	str	r3, [r7, #16]
 800259c:	693b      	ldr	r3, [r7, #16]
 800259e:	1c5a      	adds	r2, r3, #1
 80025a0:	613a      	str	r2, [r7, #16]
 80025a2:	7bfa      	ldrb	r2, [r7, #15]
 80025a4:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80025a8:	b2d1      	uxtb	r1, r2
 80025aa:	4a40      	ldr	r2, [pc, #256]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 80025ac:	54d1      	strb	r1, [r2, r3]
 80025ae:	693b      	ldr	r3, [r7, #16]
 80025b0:	1c5a      	adds	r2, r3, #1
 80025b2:	613a      	str	r2, [r7, #16]
 80025b4:	4a3d      	ldr	r2, [pc, #244]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 80025b6:	2102      	movs	r1, #2
 80025b8:	54d1      	strb	r1, [r2, r3]
 80025ba:	693b      	ldr	r3, [r7, #16]
 80025bc:	e06e      	b.n	800269c <pdu_read_write_multiply_registers+0x170>
 80025be:	893a      	ldrh	r2, [r7, #8]
 80025c0:	88fb      	ldrh	r3, [r7, #6]
 80025c2:	4413      	add	r3, r2
 80025c4:	2b08      	cmp	r3, #8
 80025c6:	dd12      	ble.n	80025ee <pdu_read_write_multiply_registers+0xc2>
 80025c8:	2301      	movs	r3, #1
 80025ca:	613b      	str	r3, [r7, #16]
 80025cc:	693b      	ldr	r3, [r7, #16]
 80025ce:	1c5a      	adds	r2, r3, #1
 80025d0:	613a      	str	r2, [r7, #16]
 80025d2:	7bfa      	ldrb	r2, [r7, #15]
 80025d4:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80025d8:	b2d1      	uxtb	r1, r2
 80025da:	4a34      	ldr	r2, [pc, #208]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 80025dc:	54d1      	strb	r1, [r2, r3]
 80025de:	693b      	ldr	r3, [r7, #16]
 80025e0:	1c5a      	adds	r2, r3, #1
 80025e2:	613a      	str	r2, [r7, #16]
 80025e4:	4a31      	ldr	r2, [pc, #196]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 80025e6:	2102      	movs	r1, #2
 80025e8:	54d1      	strb	r1, [r2, r3]
 80025ea:	693b      	ldr	r3, [r7, #16]
 80025ec:	e056      	b.n	800269c <pdu_read_write_multiply_registers+0x170>
 80025ee:	230b      	movs	r3, #11
 80025f0:	613b      	str	r3, [r7, #16]
 80025f2:	2300      	movs	r3, #0
 80025f4:	617b      	str	r3, [r7, #20]
 80025f6:	e01a      	b.n	800262e <pdu_read_write_multiply_registers+0x102>
 80025f8:	693b      	ldr	r3, [r7, #16]
 80025fa:	1c5a      	adds	r2, r3, #1
 80025fc:	613a      	str	r2, [r7, #16]
 80025fe:	4a2a      	ldr	r2, [pc, #168]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002600:	5cd3      	ldrb	r3, [r2, r3]
 8002602:	b29b      	uxth	r3, r3
 8002604:	021b      	lsls	r3, r3, #8
 8002606:	807b      	strh	r3, [r7, #2]
 8002608:	693b      	ldr	r3, [r7, #16]
 800260a:	1c5a      	adds	r2, r3, #1
 800260c:	613a      	str	r2, [r7, #16]
 800260e:	4a26      	ldr	r2, [pc, #152]	; (80026a8 <pdu_read_write_multiply_registers+0x17c>)
 8002610:	5cd3      	ldrb	r3, [r2, r3]
 8002612:	b29a      	uxth	r2, r3
 8002614:	887b      	ldrh	r3, [r7, #2]
 8002616:	4313      	orrs	r3, r2
 8002618:	807b      	strh	r3, [r7, #2]
 800261a:	893a      	ldrh	r2, [r7, #8]
 800261c:	697b      	ldr	r3, [r7, #20]
 800261e:	4413      	add	r3, r2
 8002620:	4923      	ldr	r1, [pc, #140]	; (80026b0 <pdu_read_write_multiply_registers+0x184>)
 8002622:	887a      	ldrh	r2, [r7, #2]
 8002624:	f821 2013 	strh.w	r2, [r1, r3, lsl #1]
 8002628:	697b      	ldr	r3, [r7, #20]
 800262a:	3301      	adds	r3, #1
 800262c:	617b      	str	r3, [r7, #20]
 800262e:	88fa      	ldrh	r2, [r7, #6]
 8002630:	697b      	ldr	r3, [r7, #20]
 8002632:	429a      	cmp	r2, r3
 8002634:	dce0      	bgt.n	80025f8 <pdu_read_write_multiply_registers+0xcc>
 8002636:	2301      	movs	r3, #1
 8002638:	613b      	str	r3, [r7, #16]
 800263a:	693b      	ldr	r3, [r7, #16]
 800263c:	1c5a      	adds	r2, r3, #1
 800263e:	613a      	str	r2, [r7, #16]
 8002640:	491a      	ldr	r1, [pc, #104]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 8002642:	7bfa      	ldrb	r2, [r7, #15]
 8002644:	54ca      	strb	r2, [r1, r3]
 8002646:	693b      	ldr	r3, [r7, #16]
 8002648:	1c5a      	adds	r2, r3, #1
 800264a:	613a      	str	r2, [r7, #16]
 800264c:	897a      	ldrh	r2, [r7, #10]
 800264e:	b2d2      	uxtb	r2, r2
 8002650:	0052      	lsls	r2, r2, #1
 8002652:	b2d1      	uxtb	r1, r2
 8002654:	4a15      	ldr	r2, [pc, #84]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 8002656:	54d1      	strb	r1, [r2, r3]
 8002658:	2300      	movs	r3, #0
 800265a:	617b      	str	r3, [r7, #20]
 800265c:	e019      	b.n	8002692 <pdu_read_write_multiply_registers+0x166>
 800265e:	89ba      	ldrh	r2, [r7, #12]
 8002660:	697b      	ldr	r3, [r7, #20]
 8002662:	4413      	add	r3, r2
 8002664:	4a12      	ldr	r2, [pc, #72]	; (80026b0 <pdu_read_write_multiply_registers+0x184>)
 8002666:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800266a:	803b      	strh	r3, [r7, #0]
 800266c:	693b      	ldr	r3, [r7, #16]
 800266e:	1c5a      	adds	r2, r3, #1
 8002670:	613a      	str	r2, [r7, #16]
 8002672:	883a      	ldrh	r2, [r7, #0]
 8002674:	0a12      	lsrs	r2, r2, #8
 8002676:	b292      	uxth	r2, r2
 8002678:	b2d1      	uxtb	r1, r2
 800267a:	4a0c      	ldr	r2, [pc, #48]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 800267c:	54d1      	strb	r1, [r2, r3]
 800267e:	693b      	ldr	r3, [r7, #16]
 8002680:	1c5a      	adds	r2, r3, #1
 8002682:	613a      	str	r2, [r7, #16]
 8002684:	883a      	ldrh	r2, [r7, #0]
 8002686:	b2d1      	uxtb	r1, r2
 8002688:	4a08      	ldr	r2, [pc, #32]	; (80026ac <pdu_read_write_multiply_registers+0x180>)
 800268a:	54d1      	strb	r1, [r2, r3]
 800268c:	697b      	ldr	r3, [r7, #20]
 800268e:	3301      	adds	r3, #1
 8002690:	617b      	str	r3, [r7, #20]
 8002692:	897a      	ldrh	r2, [r7, #10]
 8002694:	697b      	ldr	r3, [r7, #20]
 8002696:	429a      	cmp	r2, r3
 8002698:	dce1      	bgt.n	800265e <pdu_read_write_multiply_registers+0x132>
 800269a:	693b      	ldr	r3, [r7, #16]
 800269c:	4618      	mov	r0, r3
 800269e:	371c      	adds	r7, #28
 80026a0:	46bd      	mov	sp, r7
 80026a2:	bc80      	pop	{r7}
 80026a4:	4770      	bx	lr
 80026a6:	bf00      	nop
 80026a8:	20000a74 	.word	0x20000a74
 80026ac:	20000b7c 	.word	0x20000b7c
 80026b0:	20000a60 	.word	0x20000a60

080026b4 <pdu_illegal_function_error>:
 80026b4:	b480      	push	{r7}
 80026b6:	b083      	sub	sp, #12
 80026b8:	af00      	add	r7, sp, #0
 80026ba:	4b0d      	ldr	r3, [pc, #52]	; (80026f0 <pdu_illegal_function_error+0x3c>)
 80026bc:	785b      	ldrb	r3, [r3, #1]
 80026be:	71fb      	strb	r3, [r7, #7]
 80026c0:	2301      	movs	r3, #1
 80026c2:	603b      	str	r3, [r7, #0]
 80026c4:	683b      	ldr	r3, [r7, #0]
 80026c6:	1c5a      	adds	r2, r3, #1
 80026c8:	603a      	str	r2, [r7, #0]
 80026ca:	79fa      	ldrb	r2, [r7, #7]
 80026cc:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80026d0:	b2d1      	uxtb	r1, r2
 80026d2:	4a08      	ldr	r2, [pc, #32]	; (80026f4 <pdu_illegal_function_error+0x40>)
 80026d4:	54d1      	strb	r1, [r2, r3]
 80026d6:	683b      	ldr	r3, [r7, #0]
 80026d8:	1c5a      	adds	r2, r3, #1
 80026da:	603a      	str	r2, [r7, #0]
 80026dc:	4a05      	ldr	r2, [pc, #20]	; (80026f4 <pdu_illegal_function_error+0x40>)
 80026de:	2101      	movs	r1, #1
 80026e0:	54d1      	strb	r1, [r2, r3]
 80026e2:	683b      	ldr	r3, [r7, #0]
 80026e4:	4618      	mov	r0, r3
 80026e6:	370c      	adds	r7, #12
 80026e8:	46bd      	mov	sp, r7
 80026ea:	bc80      	pop	{r7}
 80026ec:	4770      	bx	lr
 80026ee:	bf00      	nop
 80026f0:	20000a74 	.word	0x20000a74
 80026f4:	20000b7c 	.word	0x20000b7c

080026f8 <proc_ADU>:
 80026f8:	b580      	push	{r7, lr}
 80026fa:	b082      	sub	sp, #8
 80026fc:	af00      	add	r7, sp, #0
 80026fe:	4b23      	ldr	r3, [pc, #140]	; (800278c <proc_ADU+0x94>)
 8002700:	681b      	ldr	r3, [r3, #0]
 8002702:	4619      	mov	r1, r3
 8002704:	4822      	ldr	r0, [pc, #136]	; (8002790 <proc_ADU+0x98>)
 8002706:	f000 f84b 	bl	80027a0 <crc16>
 800270a:	4603      	mov	r3, r0
 800270c:	80fb      	strh	r3, [r7, #6]
 800270e:	88fb      	ldrh	r3, [r7, #6]
 8002710:	2b00      	cmp	r3, #0
 8002712:	d003      	beq.n	800271c <proc_ADU+0x24>
 8002714:	4b1f      	ldr	r3, [pc, #124]	; (8002794 <proc_ADU+0x9c>)
 8002716:	2201      	movs	r2, #1
 8002718:	601a      	str	r2, [r3, #0]
 800271a:	e033      	b.n	8002784 <proc_ADU+0x8c>
 800271c:	4b1c      	ldr	r3, [pc, #112]	; (8002790 <proc_ADU+0x98>)
 800271e:	781b      	ldrb	r3, [r3, #0]
 8002720:	717b      	strb	r3, [r7, #5]
 8002722:	4b1b      	ldr	r3, [pc, #108]	; (8002790 <proc_ADU+0x98>)
 8002724:	785b      	ldrb	r3, [r3, #1]
 8002726:	713b      	strb	r3, [r7, #4]
 8002728:	797b      	ldrb	r3, [r7, #5]
 800272a:	2b00      	cmp	r3, #0
 800272c:	d105      	bne.n	800273a <proc_ADU+0x42>
 800272e:	793b      	ldrb	r3, [r7, #4]
 8002730:	4a19      	ldr	r2, [pc, #100]	; (8002798 <proc_ADU+0xa0>)
 8002732:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002736:	4798      	blx	r3
 8002738:	e024      	b.n	8002784 <proc_ADU+0x8c>
 800273a:	797b      	ldrb	r3, [r7, #5]
 800273c:	2b11      	cmp	r3, #17
 800273e:	d121      	bne.n	8002784 <proc_ADU+0x8c>
 8002740:	4b16      	ldr	r3, [pc, #88]	; (800279c <proc_ADU+0xa4>)
 8002742:	2211      	movs	r2, #17
 8002744:	701a      	strb	r2, [r3, #0]
 8002746:	793b      	ldrb	r3, [r7, #4]
 8002748:	4a13      	ldr	r2, [pc, #76]	; (8002798 <proc_ADU+0xa0>)
 800274a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800274e:	4798      	blx	r3
 8002750:	6038      	str	r0, [r7, #0]
 8002752:	6839      	ldr	r1, [r7, #0]
 8002754:	4811      	ldr	r0, [pc, #68]	; (800279c <proc_ADU+0xa4>)
 8002756:	f000 f823 	bl	80027a0 <crc16>
 800275a:	4603      	mov	r3, r0
 800275c:	80fb      	strh	r3, [r7, #6]
 800275e:	683b      	ldr	r3, [r7, #0]
 8002760:	1c5a      	adds	r2, r3, #1
 8002762:	603a      	str	r2, [r7, #0]
 8002764:	88fa      	ldrh	r2, [r7, #6]
 8002766:	b2d1      	uxtb	r1, r2
 8002768:	4a0c      	ldr	r2, [pc, #48]	; (800279c <proc_ADU+0xa4>)
 800276a:	54d1      	strb	r1, [r2, r3]
 800276c:	683b      	ldr	r3, [r7, #0]
 800276e:	1c5a      	adds	r2, r3, #1
 8002770:	603a      	str	r2, [r7, #0]
 8002772:	88fa      	ldrh	r2, [r7, #6]
 8002774:	0a12      	lsrs	r2, r2, #8
 8002776:	b292      	uxth	r2, r2
 8002778:	b2d1      	uxtb	r1, r2
 800277a:	4a08      	ldr	r2, [pc, #32]	; (800279c <proc_ADU+0xa4>)
 800277c:	54d1      	strb	r1, [r2, r3]
 800277e:	6838      	ldr	r0, [r7, #0]
 8002780:	f7ff f8ce 	bl	8001920 <start_trans>
 8002784:	3708      	adds	r7, #8
 8002786:	46bd      	mov	sp, r7
 8002788:	bd80      	pop	{r7, pc}
 800278a:	bf00      	nop
 800278c:	20000b74 	.word	0x20000b74
 8002790:	20000a74 	.word	0x20000a74
 8002794:	20000a70 	.word	0x20000a70
 8002798:	08003954 	.word	0x08003954
 800279c:	20000b7c 	.word	0x20000b7c

080027a0 <crc16>:
 80027a0:	b480      	push	{r7}
 80027a2:	b087      	sub	sp, #28
 80027a4:	af00      	add	r7, sp, #0
 80027a6:	6078      	str	r0, [r7, #4]
 80027a8:	6039      	str	r1, [r7, #0]
 80027aa:	23ff      	movs	r3, #255	; 0xff
 80027ac:	75fb      	strb	r3, [r7, #23]
 80027ae:	23ff      	movs	r3, #255	; 0xff
 80027b0:	75bb      	strb	r3, [r7, #22]
 80027b2:	2300      	movs	r3, #0
 80027b4:	613b      	str	r3, [r7, #16]
 80027b6:	e016      	b.n	80027e6 <crc16+0x46>
 80027b8:	693b      	ldr	r3, [r7, #16]
 80027ba:	687a      	ldr	r2, [r7, #4]
 80027bc:	4413      	add	r3, r2
 80027be:	781a      	ldrb	r2, [r3, #0]
 80027c0:	7dfb      	ldrb	r3, [r7, #23]
 80027c2:	4053      	eors	r3, r2
 80027c4:	b2db      	uxtb	r3, r3
 80027c6:	60fb      	str	r3, [r7, #12]
 80027c8:	4a0f      	ldr	r2, [pc, #60]	; (8002808 <crc16+0x68>)
 80027ca:	68fb      	ldr	r3, [r7, #12]
 80027cc:	4413      	add	r3, r2
 80027ce:	781a      	ldrb	r2, [r3, #0]
 80027d0:	7dbb      	ldrb	r3, [r7, #22]
 80027d2:	4053      	eors	r3, r2
 80027d4:	75fb      	strb	r3, [r7, #23]
 80027d6:	4a0d      	ldr	r2, [pc, #52]	; (800280c <crc16+0x6c>)
 80027d8:	68fb      	ldr	r3, [r7, #12]
 80027da:	4413      	add	r3, r2
 80027dc:	781b      	ldrb	r3, [r3, #0]
 80027de:	75bb      	strb	r3, [r7, #22]
 80027e0:	693b      	ldr	r3, [r7, #16]
 80027e2:	3301      	adds	r3, #1
 80027e4:	613b      	str	r3, [r7, #16]
 80027e6:	693a      	ldr	r2, [r7, #16]
 80027e8:	683b      	ldr	r3, [r7, #0]
 80027ea:	429a      	cmp	r2, r3
 80027ec:	dbe4      	blt.n	80027b8 <crc16+0x18>
 80027ee:	7dbb      	ldrb	r3, [r7, #22]
 80027f0:	021b      	lsls	r3, r3, #8
 80027f2:	b21a      	sxth	r2, r3
 80027f4:	7dfb      	ldrb	r3, [r7, #23]
 80027f6:	b21b      	sxth	r3, r3
 80027f8:	4313      	orrs	r3, r2
 80027fa:	b21b      	sxth	r3, r3
 80027fc:	b29b      	uxth	r3, r3
 80027fe:	4618      	mov	r0, r3
 8002800:	371c      	adds	r7, #28
 8002802:	46bd      	mov	sp, r7
 8002804:	bc80      	pop	{r7}
 8002806:	4770      	bx	lr
 8002808:	20000018 	.word	0x20000018
 800280c:	20000118 	.word	0x20000118

08002810 <NVIC_EnableIRQ>:
 8002810:	b480      	push	{r7}
 8002812:	b083      	sub	sp, #12
 8002814:	af00      	add	r7, sp, #0
 8002816:	4603      	mov	r3, r0
 8002818:	71fb      	strb	r3, [r7, #7]
 800281a:	4908      	ldr	r1, [pc, #32]	; (800283c <NVIC_EnableIRQ+0x2c>)
 800281c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8002820:	095b      	lsrs	r3, r3, #5
 8002822:	79fa      	ldrb	r2, [r7, #7]
 8002824:	f002 021f 	and.w	r2, r2, #31
 8002828:	2001      	movs	r0, #1
 800282a:	fa00 f202 	lsl.w	r2, r0, r2
 800282e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8002832:	bf00      	nop
 8002834:	370c      	adds	r7, #12
 8002836:	46bd      	mov	sp, r7
 8002838:	bc80      	pop	{r7}
 800283a:	4770      	bx	lr
 800283c:	e000e100 	.word	0xe000e100

08002840 <init_spi_dma>:
 8002840:	b580      	push	{r7, lr}
 8002842:	af00      	add	r7, sp, #0
 8002844:	4a33      	ldr	r2, [pc, #204]	; (8002914 <init_spi_dma+0xd4>)
 8002846:	4b33      	ldr	r3, [pc, #204]	; (8002914 <init_spi_dma+0xd4>)
 8002848:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800284a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800284e:	6313      	str	r3, [r2, #48]	; 0x30
 8002850:	4b31      	ldr	r3, [pc, #196]	; (8002918 <init_spi_dma+0xd8>)
 8002852:	4a32      	ldr	r2, [pc, #200]	; (800291c <init_spi_dma+0xdc>)
 8002854:	609a      	str	r2, [r3, #8]
 8002856:	4b30      	ldr	r3, [pc, #192]	; (8002918 <init_spi_dma+0xd8>)
 8002858:	4a31      	ldr	r2, [pc, #196]	; (8002920 <init_spi_dma+0xe0>)
 800285a:	60da      	str	r2, [r3, #12]
 800285c:	4b2e      	ldr	r3, [pc, #184]	; (8002918 <init_spi_dma+0xd8>)
 800285e:	2208      	movs	r2, #8
 8002860:	605a      	str	r2, [r3, #4]
 8002862:	4a2d      	ldr	r2, [pc, #180]	; (8002918 <init_spi_dma+0xd8>)
 8002864:	4b2c      	ldr	r3, [pc, #176]	; (8002918 <init_spi_dma+0xd8>)
 8002866:	681b      	ldr	r3, [r3, #0]
 8002868:	f023 6360 	bic.w	r3, r3, #234881024	; 0xe000000
 800286c:	6013      	str	r3, [r2, #0]
 800286e:	4a2a      	ldr	r2, [pc, #168]	; (8002918 <init_spi_dma+0xd8>)
 8002870:	4b29      	ldr	r3, [pc, #164]	; (8002918 <init_spi_dma+0xd8>)
 8002872:	681b      	ldr	r3, [r3, #0]
 8002874:	f023 0320 	bic.w	r3, r3, #32
 8002878:	6013      	str	r3, [r2, #0]
 800287a:	4a27      	ldr	r2, [pc, #156]	; (8002918 <init_spi_dma+0xd8>)
 800287c:	4b26      	ldr	r3, [pc, #152]	; (8002918 <init_spi_dma+0xd8>)
 800287e:	681b      	ldr	r3, [r3, #0]
 8002880:	f423 3340 	bic.w	r3, r3, #196608	; 0x30000
 8002884:	6013      	str	r3, [r2, #0]
 8002886:	4a24      	ldr	r2, [pc, #144]	; (8002918 <init_spi_dma+0xd8>)
 8002888:	4b23      	ldr	r3, [pc, #140]	; (8002918 <init_spi_dma+0xd8>)
 800288a:	681b      	ldr	r3, [r3, #0]
 800288c:	f023 03c0 	bic.w	r3, r3, #192	; 0xc0
 8002890:	6013      	str	r3, [r2, #0]
 8002892:	4a21      	ldr	r2, [pc, #132]	; (8002918 <init_spi_dma+0xd8>)
 8002894:	4b20      	ldr	r3, [pc, #128]	; (8002918 <init_spi_dma+0xd8>)
 8002896:	681b      	ldr	r3, [r3, #0]
 8002898:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800289c:	6013      	str	r3, [r2, #0]
 800289e:	4a1e      	ldr	r2, [pc, #120]	; (8002918 <init_spi_dma+0xd8>)
 80028a0:	4b1d      	ldr	r3, [pc, #116]	; (8002918 <init_spi_dma+0xd8>)
 80028a2:	681b      	ldr	r3, [r3, #0]
 80028a4:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80028a8:	6013      	str	r3, [r2, #0]
 80028aa:	4a1b      	ldr	r2, [pc, #108]	; (8002918 <init_spi_dma+0xd8>)
 80028ac:	4b1a      	ldr	r3, [pc, #104]	; (8002918 <init_spi_dma+0xd8>)
 80028ae:	681b      	ldr	r3, [r3, #0]
 80028b0:	f023 73c0 	bic.w	r3, r3, #25165824	; 0x1800000
 80028b4:	6013      	str	r3, [r2, #0]
 80028b6:	4a18      	ldr	r2, [pc, #96]	; (8002918 <init_spi_dma+0xd8>)
 80028b8:	4b17      	ldr	r3, [pc, #92]	; (8002918 <init_spi_dma+0xd8>)
 80028ba:	681b      	ldr	r3, [r3, #0]
 80028bc:	f423 03c0 	bic.w	r3, r3, #6291456	; 0x600000
 80028c0:	6013      	str	r3, [r2, #0]
 80028c2:	4a15      	ldr	r2, [pc, #84]	; (8002918 <init_spi_dma+0xd8>)
 80028c4:	4b14      	ldr	r3, [pc, #80]	; (8002918 <init_spi_dma+0xd8>)
 80028c6:	681b      	ldr	r3, [r3, #0]
 80028c8:	f423 43c0 	bic.w	r3, r3, #24576	; 0x6000
 80028cc:	6013      	str	r3, [r2, #0]
 80028ce:	4a12      	ldr	r2, [pc, #72]	; (8002918 <init_spi_dma+0xd8>)
 80028d0:	4b11      	ldr	r3, [pc, #68]	; (8002918 <init_spi_dma+0xd8>)
 80028d2:	681b      	ldr	r3, [r3, #0]
 80028d4:	f423 53c0 	bic.w	r3, r3, #6144	; 0x1800
 80028d8:	6013      	str	r3, [r2, #0]
 80028da:	4a0f      	ldr	r2, [pc, #60]	; (8002918 <init_spi_dma+0xd8>)
 80028dc:	4b0e      	ldr	r3, [pc, #56]	; (8002918 <init_spi_dma+0xd8>)
 80028de:	681b      	ldr	r3, [r3, #0]
 80028e0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80028e4:	6013      	str	r3, [r2, #0]
 80028e6:	4a0c      	ldr	r2, [pc, #48]	; (8002918 <init_spi_dma+0xd8>)
 80028e8:	4b0b      	ldr	r3, [pc, #44]	; (8002918 <init_spi_dma+0xd8>)
 80028ea:	681b      	ldr	r3, [r3, #0]
 80028ec:	f043 0310 	orr.w	r3, r3, #16
 80028f0:	6013      	str	r3, [r2, #0]
 80028f2:	200f      	movs	r0, #15
 80028f4:	f7ff ff8c 	bl	8002810 <NVIC_EnableIRQ>
 80028f8:	4a0a      	ldr	r2, [pc, #40]	; (8002924 <init_spi_dma+0xe4>)
 80028fa:	4b0a      	ldr	r3, [pc, #40]	; (8002924 <init_spi_dma+0xe4>)
 80028fc:	68db      	ldr	r3, [r3, #12]
 80028fe:	f043 0320 	orr.w	r3, r3, #32
 8002902:	60d3      	str	r3, [r2, #12]
 8002904:	4a04      	ldr	r2, [pc, #16]	; (8002918 <init_spi_dma+0xd8>)
 8002906:	4b04      	ldr	r3, [pc, #16]	; (8002918 <init_spi_dma+0xd8>)
 8002908:	681b      	ldr	r3, [r3, #0]
 800290a:	f043 0301 	orr.w	r3, r3, #1
 800290e:	6013      	str	r3, [r2, #0]
 8002910:	bf00      	nop
 8002912:	bd80      	pop	{r7, pc}
 8002914:	40023800 	.word	0x40023800
 8002918:	40026070 	.word	0x40026070
 800291c:	4000380c 	.word	0x4000380c
 8002920:	20000c84 	.word	0x20000c84
 8002924:	40026000 	.word	0x40026000

08002928 <coll_pwm_set>:
 8002928:	b480      	push	{r7}
 800292a:	b083      	sub	sp, #12
 800292c:	af00      	add	r7, sp, #0
 800292e:	4603      	mov	r3, r0
 8002930:	80fb      	strh	r3, [r7, #6]
 8002932:	88fb      	ldrh	r3, [r7, #6]
 8002934:	2bc8      	cmp	r3, #200	; 0xc8
 8002936:	d902      	bls.n	800293e <coll_pwm_set+0x16>
 8002938:	23c8      	movs	r3, #200	; 0xc8
 800293a:	80fb      	strh	r3, [r7, #6]
 800293c:	bf00      	nop
 800293e:	4a04      	ldr	r2, [pc, #16]	; (8002950 <coll_pwm_set+0x28>)
 8002940:	88fb      	ldrh	r3, [r7, #6]
 8002942:	6413      	str	r3, [r2, #64]	; 0x40
 8002944:	bf00      	nop
 8002946:	370c      	adds	r7, #12
 8002948:	46bd      	mov	sp, r7
 800294a:	bc80      	pop	{r7}
 800294c:	4770      	bx	lr
 800294e:	bf00      	nop
 8002950:	40000400 	.word	0x40000400

08002954 <ind_pwm_init>:
 8002954:	b580      	push	{r7, lr}
 8002956:	af00      	add	r7, sp, #0
 8002958:	4a46      	ldr	r2, [pc, #280]	; (8002a74 <ind_pwm_init+0x120>)
 800295a:	4b46      	ldr	r3, [pc, #280]	; (8002a74 <ind_pwm_init+0x120>)
 800295c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800295e:	f043 0302 	orr.w	r3, r3, #2
 8002962:	6413      	str	r3, [r2, #64]	; 0x40
 8002964:	4b44      	ldr	r3, [pc, #272]	; (8002a78 <ind_pwm_init+0x124>)
 8002966:	f240 12a3 	movw	r2, #419	; 0x1a3
 800296a:	851a      	strh	r2, [r3, #40]	; 0x28
 800296c:	4b42      	ldr	r3, [pc, #264]	; (8002a78 <ind_pwm_init+0x124>)
 800296e:	22c7      	movs	r2, #199	; 0xc7
 8002970:	62da      	str	r2, [r3, #44]	; 0x2c
 8002972:	4b41      	ldr	r3, [pc, #260]	; (8002a78 <ind_pwm_init+0x124>)
 8002974:	22b4      	movs	r2, #180	; 0xb4
 8002976:	63da      	str	r2, [r3, #60]	; 0x3c
 8002978:	4b3f      	ldr	r3, [pc, #252]	; (8002a78 <ind_pwm_init+0x124>)
 800297a:	22c8      	movs	r2, #200	; 0xc8
 800297c:	641a      	str	r2, [r3, #64]	; 0x40
 800297e:	4a3e      	ldr	r2, [pc, #248]	; (8002a78 <ind_pwm_init+0x124>)
 8002980:	4b3d      	ldr	r3, [pc, #244]	; (8002a78 <ind_pwm_init+0x124>)
 8002982:	899b      	ldrh	r3, [r3, #12]
 8002984:	b29b      	uxth	r3, r3
 8002986:	f043 0301 	orr.w	r3, r3, #1
 800298a:	b29b      	uxth	r3, r3
 800298c:	8193      	strh	r3, [r2, #12]
 800298e:	201d      	movs	r0, #29
 8002990:	f7ff ff3e 	bl	8002810 <NVIC_EnableIRQ>
 8002994:	4b38      	ldr	r3, [pc, #224]	; (8002a78 <ind_pwm_init+0x124>)
 8002996:	2200      	movs	r2, #0
 8002998:	839a      	strh	r2, [r3, #28]
 800299a:	4a37      	ldr	r2, [pc, #220]	; (8002a78 <ind_pwm_init+0x124>)
 800299c:	4b36      	ldr	r3, [pc, #216]	; (8002a78 <ind_pwm_init+0x124>)
 800299e:	8b9b      	ldrh	r3, [r3, #28]
 80029a0:	b29b      	uxth	r3, r3
 80029a2:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 80029a6:	b29b      	uxth	r3, r3
 80029a8:	8393      	strh	r3, [r2, #28]
 80029aa:	4a33      	ldr	r2, [pc, #204]	; (8002a78 <ind_pwm_init+0x124>)
 80029ac:	4b32      	ldr	r3, [pc, #200]	; (8002a78 <ind_pwm_init+0x124>)
 80029ae:	8c1b      	ldrh	r3, [r3, #32]
 80029b0:	b29b      	uxth	r3, r3
 80029b2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80029b6:	b29b      	uxth	r3, r3
 80029b8:	8413      	strh	r3, [r2, #32]
 80029ba:	4a2f      	ldr	r2, [pc, #188]	; (8002a78 <ind_pwm_init+0x124>)
 80029bc:	4b2e      	ldr	r3, [pc, #184]	; (8002a78 <ind_pwm_init+0x124>)
 80029be:	8b9b      	ldrh	r3, [r3, #28]
 80029c0:	b29b      	uxth	r3, r3
 80029c2:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 80029c6:	b29b      	uxth	r3, r3
 80029c8:	8393      	strh	r3, [r2, #28]
 80029ca:	4a2b      	ldr	r2, [pc, #172]	; (8002a78 <ind_pwm_init+0x124>)
 80029cc:	4b2a      	ldr	r3, [pc, #168]	; (8002a78 <ind_pwm_init+0x124>)
 80029ce:	8c1b      	ldrh	r3, [r3, #32]
 80029d0:	b29b      	uxth	r3, r3
 80029d2:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 80029d6:	b29b      	uxth	r3, r3
 80029d8:	8413      	strh	r3, [r2, #32]
 80029da:	4a27      	ldr	r2, [pc, #156]	; (8002a78 <ind_pwm_init+0x124>)
 80029dc:	4b26      	ldr	r3, [pc, #152]	; (8002a78 <ind_pwm_init+0x124>)
 80029de:	881b      	ldrh	r3, [r3, #0]
 80029e0:	b29b      	uxth	r3, r3
 80029e2:	f043 0301 	orr.w	r3, r3, #1
 80029e6:	b29b      	uxth	r3, r3
 80029e8:	8013      	strh	r3, [r2, #0]
 80029ea:	4a22      	ldr	r2, [pc, #136]	; (8002a74 <ind_pwm_init+0x120>)
 80029ec:	4b21      	ldr	r3, [pc, #132]	; (8002a74 <ind_pwm_init+0x120>)
 80029ee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80029f0:	f043 0302 	orr.w	r3, r3, #2
 80029f4:	6313      	str	r3, [r2, #48]	; 0x30
 80029f6:	4a21      	ldr	r2, [pc, #132]	; (8002a7c <ind_pwm_init+0x128>)
 80029f8:	4b20      	ldr	r3, [pc, #128]	; (8002a7c <ind_pwm_init+0x128>)
 80029fa:	681b      	ldr	r3, [r3, #0]
 80029fc:	f023 0303 	bic.w	r3, r3, #3
 8002a00:	6013      	str	r3, [r2, #0]
 8002a02:	4a1e      	ldr	r2, [pc, #120]	; (8002a7c <ind_pwm_init+0x128>)
 8002a04:	4b1d      	ldr	r3, [pc, #116]	; (8002a7c <ind_pwm_init+0x128>)
 8002a06:	681b      	ldr	r3, [r3, #0]
 8002a08:	f043 0302 	orr.w	r3, r3, #2
 8002a0c:	6013      	str	r3, [r2, #0]
 8002a0e:	4a1b      	ldr	r2, [pc, #108]	; (8002a7c <ind_pwm_init+0x128>)
 8002a10:	4b1a      	ldr	r3, [pc, #104]	; (8002a7c <ind_pwm_init+0x128>)
 8002a12:	689b      	ldr	r3, [r3, #8]
 8002a14:	f043 0303 	orr.w	r3, r3, #3
 8002a18:	6093      	str	r3, [r2, #8]
 8002a1a:	4a18      	ldr	r2, [pc, #96]	; (8002a7c <ind_pwm_init+0x128>)
 8002a1c:	4b17      	ldr	r3, [pc, #92]	; (8002a7c <ind_pwm_init+0x128>)
 8002a1e:	6a1b      	ldr	r3, [r3, #32]
 8002a20:	f023 030f 	bic.w	r3, r3, #15
 8002a24:	6213      	str	r3, [r2, #32]
 8002a26:	4a15      	ldr	r2, [pc, #84]	; (8002a7c <ind_pwm_init+0x128>)
 8002a28:	4b14      	ldr	r3, [pc, #80]	; (8002a7c <ind_pwm_init+0x128>)
 8002a2a:	6a1b      	ldr	r3, [r3, #32]
 8002a2c:	f043 0302 	orr.w	r3, r3, #2
 8002a30:	6213      	str	r3, [r2, #32]
 8002a32:	4a12      	ldr	r2, [pc, #72]	; (8002a7c <ind_pwm_init+0x128>)
 8002a34:	4b11      	ldr	r3, [pc, #68]	; (8002a7c <ind_pwm_init+0x128>)
 8002a36:	681b      	ldr	r3, [r3, #0]
 8002a38:	f023 030c 	bic.w	r3, r3, #12
 8002a3c:	6013      	str	r3, [r2, #0]
 8002a3e:	4a0f      	ldr	r2, [pc, #60]	; (8002a7c <ind_pwm_init+0x128>)
 8002a40:	4b0e      	ldr	r3, [pc, #56]	; (8002a7c <ind_pwm_init+0x128>)
 8002a42:	681b      	ldr	r3, [r3, #0]
 8002a44:	f043 0308 	orr.w	r3, r3, #8
 8002a48:	6013      	str	r3, [r2, #0]
 8002a4a:	4a0c      	ldr	r2, [pc, #48]	; (8002a7c <ind_pwm_init+0x128>)
 8002a4c:	4b0b      	ldr	r3, [pc, #44]	; (8002a7c <ind_pwm_init+0x128>)
 8002a4e:	689b      	ldr	r3, [r3, #8]
 8002a50:	f043 030c 	orr.w	r3, r3, #12
 8002a54:	6093      	str	r3, [r2, #8]
 8002a56:	4a09      	ldr	r2, [pc, #36]	; (8002a7c <ind_pwm_init+0x128>)
 8002a58:	4b08      	ldr	r3, [pc, #32]	; (8002a7c <ind_pwm_init+0x128>)
 8002a5a:	6a1b      	ldr	r3, [r3, #32]
 8002a5c:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002a60:	6213      	str	r3, [r2, #32]
 8002a62:	4a06      	ldr	r2, [pc, #24]	; (8002a7c <ind_pwm_init+0x128>)
 8002a64:	4b05      	ldr	r3, [pc, #20]	; (8002a7c <ind_pwm_init+0x128>)
 8002a66:	6a1b      	ldr	r3, [r3, #32]
 8002a68:	f043 0320 	orr.w	r3, r3, #32
 8002a6c:	6213      	str	r3, [r2, #32]
 8002a6e:	bf00      	nop
 8002a70:	bd80      	pop	{r7, pc}
 8002a72:	bf00      	nop
 8002a74:	40023800 	.word	0x40023800
 8002a78:	40000400 	.word	0x40000400
 8002a7c:	40020400 	.word	0x40020400

08002a80 <spi_master_init>:
 8002a80:	b580      	push	{r7, lr}
 8002a82:	af00      	add	r7, sp, #0
 8002a84:	4a57      	ldr	r2, [pc, #348]	; (8002be4 <spi_master_init+0x164>)
 8002a86:	4b57      	ldr	r3, [pc, #348]	; (8002be4 <spi_master_init+0x164>)
 8002a88:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8002a8a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8002a8e:	6413      	str	r3, [r2, #64]	; 0x40
 8002a90:	4a54      	ldr	r2, [pc, #336]	; (8002be4 <spi_master_init+0x164>)
 8002a92:	4b54      	ldr	r3, [pc, #336]	; (8002be4 <spi_master_init+0x164>)
 8002a94:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002a96:	f043 0302 	orr.w	r3, r3, #2
 8002a9a:	6313      	str	r3, [r2, #48]	; 0x30
 8002a9c:	4a52      	ldr	r2, [pc, #328]	; (8002be8 <spi_master_init+0x168>)
 8002a9e:	4b52      	ldr	r3, [pc, #328]	; (8002be8 <spi_master_init+0x168>)
 8002aa0:	681b      	ldr	r3, [r3, #0]
 8002aa2:	f023 4343 	bic.w	r3, r3, #3271557120	; 0xc3000000
 8002aa6:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8002aaa:	6013      	str	r3, [r2, #0]
 8002aac:	4a4e      	ldr	r2, [pc, #312]	; (8002be8 <spi_master_init+0x168>)
 8002aae:	4b4e      	ldr	r3, [pc, #312]	; (8002be8 <spi_master_init+0x168>)
 8002ab0:	681b      	ldr	r3, [r3, #0]
 8002ab2:	f043 4302 	orr.w	r3, r3, #2181038080	; 0x82000000
 8002ab6:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8002aba:	6013      	str	r3, [r2, #0]
 8002abc:	4a4a      	ldr	r2, [pc, #296]	; (8002be8 <spi_master_init+0x168>)
 8002abe:	4b4a      	ldr	r3, [pc, #296]	; (8002be8 <spi_master_init+0x168>)
 8002ac0:	689b      	ldr	r3, [r3, #8]
 8002ac2:	f043 4343 	orr.w	r3, r3, #3271557120	; 0xc3000000
 8002ac6:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8002aca:	6093      	str	r3, [r2, #8]
 8002acc:	4a46      	ldr	r2, [pc, #280]	; (8002be8 <spi_master_init+0x168>)
 8002ace:	4b46      	ldr	r3, [pc, #280]	; (8002be8 <spi_master_init+0x168>)
 8002ad0:	681b      	ldr	r3, [r3, #0]
 8002ad2:	f023 7340 	bic.w	r3, r3, #50331648	; 0x3000000
 8002ad6:	6013      	str	r3, [r2, #0]
 8002ad8:	4a43      	ldr	r2, [pc, #268]	; (8002be8 <spi_master_init+0x168>)
 8002ada:	4b43      	ldr	r3, [pc, #268]	; (8002be8 <spi_master_init+0x168>)
 8002adc:	681b      	ldr	r3, [r3, #0]
 8002ade:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8002ae2:	6013      	str	r3, [r2, #0]
 8002ae4:	4a40      	ldr	r2, [pc, #256]	; (8002be8 <spi_master_init+0x168>)
 8002ae6:	4b40      	ldr	r3, [pc, #256]	; (8002be8 <spi_master_init+0x168>)
 8002ae8:	695b      	ldr	r3, [r3, #20]
 8002aea:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8002aee:	6153      	str	r3, [r2, #20]
 8002af0:	4a3d      	ldr	r2, [pc, #244]	; (8002be8 <spi_master_init+0x168>)
 8002af2:	4b3d      	ldr	r3, [pc, #244]	; (8002be8 <spi_master_init+0x168>)
 8002af4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002af6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8002afa:	6253      	str	r3, [r2, #36]	; 0x24
 8002afc:	4a3a      	ldr	r2, [pc, #232]	; (8002be8 <spi_master_init+0x168>)
 8002afe:	4b3a      	ldr	r3, [pc, #232]	; (8002be8 <spi_master_init+0x168>)
 8002b00:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b02:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 8002b06:	6253      	str	r3, [r2, #36]	; 0x24
 8002b08:	4a37      	ldr	r2, [pc, #220]	; (8002be8 <spi_master_init+0x168>)
 8002b0a:	4b37      	ldr	r3, [pc, #220]	; (8002be8 <spi_master_init+0x168>)
 8002b0c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b0e:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
 8002b12:	6253      	str	r3, [r2, #36]	; 0x24
 8002b14:	4a34      	ldr	r2, [pc, #208]	; (8002be8 <spi_master_init+0x168>)
 8002b16:	4b34      	ldr	r3, [pc, #208]	; (8002be8 <spi_master_init+0x168>)
 8002b18:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b1a:	f043 43a0 	orr.w	r3, r3, #1342177280	; 0x50000000
 8002b1e:	6253      	str	r3, [r2, #36]	; 0x24
 8002b20:	4a31      	ldr	r2, [pc, #196]	; (8002be8 <spi_master_init+0x168>)
 8002b22:	4b31      	ldr	r3, [pc, #196]	; (8002be8 <spi_master_init+0x168>)
 8002b24:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b26:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
 8002b2a:	6253      	str	r3, [r2, #36]	; 0x24
 8002b2c:	4a2e      	ldr	r2, [pc, #184]	; (8002be8 <spi_master_init+0x168>)
 8002b2e:	4b2e      	ldr	r3, [pc, #184]	; (8002be8 <spi_master_init+0x168>)
 8002b30:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8002b32:	f443 23a0 	orr.w	r3, r3, #327680	; 0x50000
 8002b36:	6253      	str	r3, [r2, #36]	; 0x24
 8002b38:	4a2c      	ldr	r2, [pc, #176]	; (8002bec <spi_master_init+0x16c>)
 8002b3a:	4b2c      	ldr	r3, [pc, #176]	; (8002bec <spi_master_init+0x16c>)
 8002b3c:	881b      	ldrh	r3, [r3, #0]
 8002b3e:	b29b      	uxth	r3, r3
 8002b40:	f023 0338 	bic.w	r3, r3, #56	; 0x38
 8002b44:	b29b      	uxth	r3, r3
 8002b46:	8013      	strh	r3, [r2, #0]
 8002b48:	4a28      	ldr	r2, [pc, #160]	; (8002bec <spi_master_init+0x16c>)
 8002b4a:	4b28      	ldr	r3, [pc, #160]	; (8002bec <spi_master_init+0x16c>)
 8002b4c:	881b      	ldrh	r3, [r3, #0]
 8002b4e:	b29b      	uxth	r3, r3
 8002b50:	f043 0320 	orr.w	r3, r3, #32
 8002b54:	b29b      	uxth	r3, r3
 8002b56:	8013      	strh	r3, [r2, #0]
 8002b58:	4a24      	ldr	r2, [pc, #144]	; (8002bec <spi_master_init+0x16c>)
 8002b5a:	4b24      	ldr	r3, [pc, #144]	; (8002bec <spi_master_init+0x16c>)
 8002b5c:	881b      	ldrh	r3, [r3, #0]
 8002b5e:	b29b      	uxth	r3, r3
 8002b60:	f023 0303 	bic.w	r3, r3, #3
 8002b64:	b29b      	uxth	r3, r3
 8002b66:	8013      	strh	r3, [r2, #0]
 8002b68:	4a20      	ldr	r2, [pc, #128]	; (8002bec <spi_master_init+0x16c>)
 8002b6a:	4b20      	ldr	r3, [pc, #128]	; (8002bec <spi_master_init+0x16c>)
 8002b6c:	881b      	ldrh	r3, [r3, #0]
 8002b6e:	b29b      	uxth	r3, r3
 8002b70:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8002b74:	b29b      	uxth	r3, r3
 8002b76:	8013      	strh	r3, [r2, #0]
 8002b78:	4a1c      	ldr	r2, [pc, #112]	; (8002bec <spi_master_init+0x16c>)
 8002b7a:	4b1c      	ldr	r3, [pc, #112]	; (8002bec <spi_master_init+0x16c>)
 8002b7c:	881b      	ldrh	r3, [r3, #0]
 8002b7e:	b29b      	uxth	r3, r3
 8002b80:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002b84:	b29b      	uxth	r3, r3
 8002b86:	8013      	strh	r3, [r2, #0]
 8002b88:	4a18      	ldr	r2, [pc, #96]	; (8002bec <spi_master_init+0x16c>)
 8002b8a:	4b18      	ldr	r3, [pc, #96]	; (8002bec <spi_master_init+0x16c>)
 8002b8c:	881b      	ldrh	r3, [r3, #0]
 8002b8e:	b29b      	uxth	r3, r3
 8002b90:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8002b94:	b29b      	uxth	r3, r3
 8002b96:	8013      	strh	r3, [r2, #0]
 8002b98:	4a14      	ldr	r2, [pc, #80]	; (8002bec <spi_master_init+0x16c>)
 8002b9a:	4b14      	ldr	r3, [pc, #80]	; (8002bec <spi_master_init+0x16c>)
 8002b9c:	889b      	ldrh	r3, [r3, #4]
 8002b9e:	b29b      	uxth	r3, r3
 8002ba0:	f043 0304 	orr.w	r3, r3, #4
 8002ba4:	b29b      	uxth	r3, r3
 8002ba6:	8093      	strh	r3, [r2, #4]
 8002ba8:	4a10      	ldr	r2, [pc, #64]	; (8002bec <spi_master_init+0x16c>)
 8002baa:	4b10      	ldr	r3, [pc, #64]	; (8002bec <spi_master_init+0x16c>)
 8002bac:	881b      	ldrh	r3, [r3, #0]
 8002bae:	b29b      	uxth	r3, r3
 8002bb0:	f043 0304 	orr.w	r3, r3, #4
 8002bb4:	b29b      	uxth	r3, r3
 8002bb6:	8013      	strh	r3, [r2, #0]
 8002bb8:	f7ff fe42 	bl	8002840 <init_spi_dma>
 8002bbc:	4a0b      	ldr	r2, [pc, #44]	; (8002bec <spi_master_init+0x16c>)
 8002bbe:	4b0b      	ldr	r3, [pc, #44]	; (8002bec <spi_master_init+0x16c>)
 8002bc0:	889b      	ldrh	r3, [r3, #4]
 8002bc2:	b29b      	uxth	r3, r3
 8002bc4:	f043 0302 	orr.w	r3, r3, #2
 8002bc8:	b29b      	uxth	r3, r3
 8002bca:	8093      	strh	r3, [r2, #4]
 8002bcc:	4a07      	ldr	r2, [pc, #28]	; (8002bec <spi_master_init+0x16c>)
 8002bce:	4b07      	ldr	r3, [pc, #28]	; (8002bec <spi_master_init+0x16c>)
 8002bd0:	881b      	ldrh	r3, [r3, #0]
 8002bd2:	b29b      	uxth	r3, r3
 8002bd4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002bd8:	b29b      	uxth	r3, r3
 8002bda:	8013      	strh	r3, [r2, #0]
 8002bdc:	f7ff feba 	bl	8002954 <ind_pwm_init>
 8002be0:	bf00      	nop
 8002be2:	bd80      	pop	{r7, pc}
 8002be4:	40023800 	.word	0x40023800
 8002be8:	40020400 	.word	0x40020400
 8002bec:	40003800 	.word	0x40003800

08002bf0 <spi_slave_init>:
 8002bf0:	b580      	push	{r7, lr}
 8002bf2:	af00      	add	r7, sp, #0
 8002bf4:	4a22      	ldr	r2, [pc, #136]	; (8002c80 <spi_slave_init+0x90>)
 8002bf6:	4b22      	ldr	r3, [pc, #136]	; (8002c80 <spi_slave_init+0x90>)
 8002bf8:	881b      	ldrh	r3, [r3, #0]
 8002bfa:	b29b      	uxth	r3, r3
 8002bfc:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8002c00:	b29b      	uxth	r3, r3
 8002c02:	8013      	strh	r3, [r2, #0]
 8002c04:	4a1e      	ldr	r2, [pc, #120]	; (8002c80 <spi_slave_init+0x90>)
 8002c06:	4b1e      	ldr	r3, [pc, #120]	; (8002c80 <spi_slave_init+0x90>)
 8002c08:	881b      	ldrh	r3, [r3, #0]
 8002c0a:	b29b      	uxth	r3, r3
 8002c0c:	f023 0303 	bic.w	r3, r3, #3
 8002c10:	b29b      	uxth	r3, r3
 8002c12:	8013      	strh	r3, [r2, #0]
 8002c14:	4a1a      	ldr	r2, [pc, #104]	; (8002c80 <spi_slave_init+0x90>)
 8002c16:	4b1a      	ldr	r3, [pc, #104]	; (8002c80 <spi_slave_init+0x90>)
 8002c18:	881b      	ldrh	r3, [r3, #0]
 8002c1a:	b29b      	uxth	r3, r3
 8002c1c:	f043 0301 	orr.w	r3, r3, #1
 8002c20:	b29b      	uxth	r3, r3
 8002c22:	8013      	strh	r3, [r2, #0]
 8002c24:	4a16      	ldr	r2, [pc, #88]	; (8002c80 <spi_slave_init+0x90>)
 8002c26:	4b16      	ldr	r3, [pc, #88]	; (8002c80 <spi_slave_init+0x90>)
 8002c28:	881b      	ldrh	r3, [r3, #0]
 8002c2a:	b29b      	uxth	r3, r3
 8002c2c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002c30:	b29b      	uxth	r3, r3
 8002c32:	8013      	strh	r3, [r2, #0]
 8002c34:	4a12      	ldr	r2, [pc, #72]	; (8002c80 <spi_slave_init+0x90>)
 8002c36:	4b12      	ldr	r3, [pc, #72]	; (8002c80 <spi_slave_init+0x90>)
 8002c38:	881b      	ldrh	r3, [r3, #0]
 8002c3a:	b29b      	uxth	r3, r3
 8002c3c:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8002c40:	b29b      	uxth	r3, r3
 8002c42:	8013      	strh	r3, [r2, #0]
 8002c44:	4a0e      	ldr	r2, [pc, #56]	; (8002c80 <spi_slave_init+0x90>)
 8002c46:	4b0e      	ldr	r3, [pc, #56]	; (8002c80 <spi_slave_init+0x90>)
 8002c48:	889b      	ldrh	r3, [r3, #4]
 8002c4a:	b29b      	uxth	r3, r3
 8002c4c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002c50:	b29b      	uxth	r3, r3
 8002c52:	8093      	strh	r3, [r2, #4]
 8002c54:	4a0a      	ldr	r2, [pc, #40]	; (8002c80 <spi_slave_init+0x90>)
 8002c56:	4b0a      	ldr	r3, [pc, #40]	; (8002c80 <spi_slave_init+0x90>)
 8002c58:	881b      	ldrh	r3, [r3, #0]
 8002c5a:	b29b      	uxth	r3, r3
 8002c5c:	f023 0304 	bic.w	r3, r3, #4
 8002c60:	b29b      	uxth	r3, r3
 8002c62:	8013      	strh	r3, [r2, #0]
 8002c64:	2023      	movs	r0, #35	; 0x23
 8002c66:	f7ff fdd3 	bl	8002810 <NVIC_EnableIRQ>
 8002c6a:	4a05      	ldr	r2, [pc, #20]	; (8002c80 <spi_slave_init+0x90>)
 8002c6c:	4b04      	ldr	r3, [pc, #16]	; (8002c80 <spi_slave_init+0x90>)
 8002c6e:	881b      	ldrh	r3, [r3, #0]
 8002c70:	b29b      	uxth	r3, r3
 8002c72:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002c76:	b29b      	uxth	r3, r3
 8002c78:	8013      	strh	r3, [r2, #0]
 8002c7a:	bf00      	nop
 8002c7c:	bd80      	pop	{r7, pc}
 8002c7e:	bf00      	nop
 8002c80:	40013000 	.word	0x40013000

08002c84 <spi_write_read>:
 8002c84:	b480      	push	{r7}
 8002c86:	b087      	sub	sp, #28
 8002c88:	af00      	add	r7, sp, #0
 8002c8a:	60f8      	str	r0, [r7, #12]
 8002c8c:	60b9      	str	r1, [r7, #8]
 8002c8e:	4613      	mov	r3, r2
 8002c90:	80fb      	strh	r3, [r7, #6]
 8002c92:	2300      	movs	r3, #0
 8002c94:	617b      	str	r3, [r7, #20]
 8002c96:	492c      	ldr	r1, [pc, #176]	; (8002d48 <spi_write_read+0xc4>)
 8002c98:	697b      	ldr	r3, [r7, #20]
 8002c9a:	1c5a      	adds	r2, r3, #1
 8002c9c:	617a      	str	r2, [r7, #20]
 8002c9e:	461a      	mov	r2, r3
 8002ca0:	68fb      	ldr	r3, [r7, #12]
 8002ca2:	4413      	add	r3, r2
 8002ca4:	781b      	ldrb	r3, [r3, #0]
 8002ca6:	b29b      	uxth	r3, r3
 8002ca8:	818b      	strh	r3, [r1, #12]
 8002caa:	e022      	b.n	8002cf2 <spi_write_read+0x6e>
 8002cac:	bf00      	nop
 8002cae:	4b26      	ldr	r3, [pc, #152]	; (8002d48 <spi_write_read+0xc4>)
 8002cb0:	891b      	ldrh	r3, [r3, #8]
 8002cb2:	b29b      	uxth	r3, r3
 8002cb4:	f003 0302 	and.w	r3, r3, #2
 8002cb8:	2b00      	cmp	r3, #0
 8002cba:	d0f8      	beq.n	8002cae <spi_write_read+0x2a>
 8002cbc:	4922      	ldr	r1, [pc, #136]	; (8002d48 <spi_write_read+0xc4>)
 8002cbe:	697b      	ldr	r3, [r7, #20]
 8002cc0:	68fa      	ldr	r2, [r7, #12]
 8002cc2:	4413      	add	r3, r2
 8002cc4:	781b      	ldrb	r3, [r3, #0]
 8002cc6:	b29b      	uxth	r3, r3
 8002cc8:	818b      	strh	r3, [r1, #12]
 8002cca:	bf00      	nop
 8002ccc:	4b1e      	ldr	r3, [pc, #120]	; (8002d48 <spi_write_read+0xc4>)
 8002cce:	891b      	ldrh	r3, [r3, #8]
 8002cd0:	b29b      	uxth	r3, r3
 8002cd2:	f003 0301 	and.w	r3, r3, #1
 8002cd6:	2b00      	cmp	r3, #0
 8002cd8:	d0f8      	beq.n	8002ccc <spi_write_read+0x48>
 8002cda:	697b      	ldr	r3, [r7, #20]
 8002cdc:	3b01      	subs	r3, #1
 8002cde:	68ba      	ldr	r2, [r7, #8]
 8002ce0:	4413      	add	r3, r2
 8002ce2:	4a19      	ldr	r2, [pc, #100]	; (8002d48 <spi_write_read+0xc4>)
 8002ce4:	8992      	ldrh	r2, [r2, #12]
 8002ce6:	b292      	uxth	r2, r2
 8002ce8:	b2d2      	uxtb	r2, r2
 8002cea:	701a      	strb	r2, [r3, #0]
 8002cec:	697b      	ldr	r3, [r7, #20]
 8002cee:	3301      	adds	r3, #1
 8002cf0:	617b      	str	r3, [r7, #20]
 8002cf2:	88fa      	ldrh	r2, [r7, #6]
 8002cf4:	697b      	ldr	r3, [r7, #20]
 8002cf6:	429a      	cmp	r2, r3
 8002cf8:	dcd8      	bgt.n	8002cac <spi_write_read+0x28>
 8002cfa:	bf00      	nop
 8002cfc:	4b12      	ldr	r3, [pc, #72]	; (8002d48 <spi_write_read+0xc4>)
 8002cfe:	891b      	ldrh	r3, [r3, #8]
 8002d00:	b29b      	uxth	r3, r3
 8002d02:	f003 0301 	and.w	r3, r3, #1
 8002d06:	2b00      	cmp	r3, #0
 8002d08:	d0f8      	beq.n	8002cfc <spi_write_read+0x78>
 8002d0a:	88fb      	ldrh	r3, [r7, #6]
 8002d0c:	3b01      	subs	r3, #1
 8002d0e:	68ba      	ldr	r2, [r7, #8]
 8002d10:	4413      	add	r3, r2
 8002d12:	4a0d      	ldr	r2, [pc, #52]	; (8002d48 <spi_write_read+0xc4>)
 8002d14:	8992      	ldrh	r2, [r2, #12]
 8002d16:	b292      	uxth	r2, r2
 8002d18:	b2d2      	uxtb	r2, r2
 8002d1a:	701a      	strb	r2, [r3, #0]
 8002d1c:	bf00      	nop
 8002d1e:	4b0a      	ldr	r3, [pc, #40]	; (8002d48 <spi_write_read+0xc4>)
 8002d20:	891b      	ldrh	r3, [r3, #8]
 8002d22:	b29b      	uxth	r3, r3
 8002d24:	f003 0302 	and.w	r3, r3, #2
 8002d28:	2b00      	cmp	r3, #0
 8002d2a:	d0f8      	beq.n	8002d1e <spi_write_read+0x9a>
 8002d2c:	bf00      	nop
 8002d2e:	4b06      	ldr	r3, [pc, #24]	; (8002d48 <spi_write_read+0xc4>)
 8002d30:	891b      	ldrh	r3, [r3, #8]
 8002d32:	b29b      	uxth	r3, r3
 8002d34:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002d38:	2b00      	cmp	r3, #0
 8002d3a:	d1f8      	bne.n	8002d2e <spi_write_read+0xaa>
 8002d3c:	bf00      	nop
 8002d3e:	371c      	adds	r7, #28
 8002d40:	46bd      	mov	sp, r7
 8002d42:	bc80      	pop	{r7}
 8002d44:	4770      	bx	lr
 8002d46:	bf00      	nop
 8002d48:	40003800 	.word	0x40003800

08002d4c <SPI1_IRQHandler>:
 8002d4c:	b480      	push	{r7}
 8002d4e:	af00      	add	r7, sp, #0
 8002d50:	4b0a      	ldr	r3, [pc, #40]	; (8002d7c <SPI1_IRQHandler+0x30>)
 8002d52:	891b      	ldrh	r3, [r3, #8]
 8002d54:	b29b      	uxth	r3, r3
 8002d56:	f003 0301 	and.w	r3, r3, #1
 8002d5a:	2b00      	cmp	r3, #0
 8002d5c:	d008      	beq.n	8002d70 <SPI1_IRQHandler+0x24>
 8002d5e:	4b08      	ldr	r3, [pc, #32]	; (8002d80 <SPI1_IRQHandler+0x34>)
 8002d60:	2201      	movs	r2, #1
 8002d62:	601a      	str	r2, [r3, #0]
 8002d64:	4b05      	ldr	r3, [pc, #20]	; (8002d7c <SPI1_IRQHandler+0x30>)
 8002d66:	899b      	ldrh	r3, [r3, #12]
 8002d68:	b29b      	uxth	r3, r3
 8002d6a:	b2da      	uxtb	r2, r3
 8002d6c:	4b05      	ldr	r3, [pc, #20]	; (8002d84 <SPI1_IRQHandler+0x38>)
 8002d6e:	701a      	strb	r2, [r3, #0]
 8002d70:	4b02      	ldr	r3, [pc, #8]	; (8002d7c <SPI1_IRQHandler+0x30>)
 8002d72:	891b      	ldrh	r3, [r3, #8]
 8002d74:	bf00      	nop
 8002d76:	46bd      	mov	sp, r7
 8002d78:	bc80      	pop	{r7}
 8002d7a:	4770      	bx	lr
 8002d7c:	40013000 	.word	0x40013000
 8002d80:	20000c8c 	.word	0x20000c8c
 8002d84:	20000c90 	.word	0x20000c90

08002d88 <check_current>:
 8002d88:	b480      	push	{r7}
 8002d8a:	af00      	add	r7, sp, #0
 8002d8c:	4b0e      	ldr	r3, [pc, #56]	; (8002dc8 <check_current+0x40>)
 8002d8e:	681b      	ldr	r3, [r3, #0]
 8002d90:	129b      	asrs	r3, r3, #10
 8002d92:	4a0e      	ldr	r2, [pc, #56]	; (8002dcc <check_current+0x44>)
 8002d94:	fb02 f303 	mul.w	r3, r2, r3
 8002d98:	4a0d      	ldr	r2, [pc, #52]	; (8002dd0 <check_current+0x48>)
 8002d9a:	4413      	add	r3, r2
 8002d9c:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
 8002da0:	139b      	asrs	r3, r3, #14
 8002da2:	4a0c      	ldr	r2, [pc, #48]	; (8002dd4 <check_current+0x4c>)
 8002da4:	6013      	str	r3, [r2, #0]
 8002da6:	4b0b      	ldr	r3, [pc, #44]	; (8002dd4 <check_current+0x4c>)
 8002da8:	681b      	ldr	r3, [r3, #0]
 8002daa:	2b00      	cmp	r3, #0
 8002dac:	da02      	bge.n	8002db4 <check_current+0x2c>
 8002dae:	4b09      	ldr	r3, [pc, #36]	; (8002dd4 <check_current+0x4c>)
 8002db0:	2200      	movs	r2, #0
 8002db2:	601a      	str	r2, [r3, #0]
 8002db4:	4b07      	ldr	r3, [pc, #28]	; (8002dd4 <check_current+0x4c>)
 8002db6:	681b      	ldr	r3, [r3, #0]
 8002db8:	b29a      	uxth	r2, r3
 8002dba:	4b07      	ldr	r3, [pc, #28]	; (8002dd8 <check_current+0x50>)
 8002dbc:	819a      	strh	r2, [r3, #12]
 8002dbe:	bf00      	nop
 8002dc0:	46bd      	mov	sp, r7
 8002dc2:	bc80      	pop	{r7}
 8002dc4:	4770      	bx	lr
 8002dc6:	bf00      	nop
 8002dc8:	20001ca0 	.word	0x20001ca0
 8002dcc:	0001d7c4 	.word	0x0001d7c4
 8002dd0:	0003f74d 	.word	0x0003f74d
 8002dd4:	20000234 	.word	0x20000234
 8002dd8:	20000a60 	.word	0x20000a60

08002ddc <set_refcurrent>:
 8002ddc:	b490      	push	{r4, r7}
 8002dde:	b084      	sub	sp, #16
 8002de0:	af00      	add	r7, sp, #0
 8002de2:	6078      	str	r0, [r7, #4]
 8002de4:	4b1e      	ldr	r3, [pc, #120]	; (8002e60 <set_refcurrent+0x84>)
 8002de6:	681b      	ldr	r3, [r3, #0]
 8002de8:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002dec:	0c9b      	lsrs	r3, r3, #18
 8002dee:	3305      	adds	r3, #5
 8002df0:	4a1c      	ldr	r2, [pc, #112]	; (8002e64 <set_refcurrent+0x88>)
 8002df2:	fba2 2303 	umull	r2, r3, r2, r3
 8002df6:	08dc      	lsrs	r4, r3, #3
 8002df8:	f240 2356 	movw	r3, #598	; 0x256
 8002dfc:	429c      	cmp	r4, r3
 8002dfe:	d902      	bls.n	8002e06 <set_refcurrent+0x2a>
 8002e00:	f240 2457 	movw	r4, #599	; 0x257
 8002e04:	bf00      	nop
 8002e06:	4b18      	ldr	r3, [pc, #96]	; (8002e68 <set_refcurrent+0x8c>)
 8002e08:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002e0c:	4b17      	ldr	r3, [pc, #92]	; (8002e6c <set_refcurrent+0x90>)
 8002e0e:	681b      	ldr	r3, [r3, #0]
 8002e10:	f1c3 0396 	rsb	r3, r3, #150	; 0x96
 8002e14:	fb04 f303 	mul.w	r3, r4, r3
 8002e18:	4a15      	ldr	r2, [pc, #84]	; (8002e70 <set_refcurrent+0x94>)
 8002e1a:	fba2 2303 	umull	r2, r3, r2, r3
 8002e1e:	08dc      	lsrs	r4, r3, #3
 8002e20:	687b      	ldr	r3, [r7, #4]
 8002e22:	42a3      	cmp	r3, r4
 8002e24:	d902      	bls.n	8002e2c <set_refcurrent+0x50>
 8002e26:	607c      	str	r4, [r7, #4]
 8002e28:	687b      	ldr	r3, [r7, #4]
 8002e2a:	2b00      	cmp	r3, #0
 8002e2c:	4b11      	ldr	r3, [pc, #68]	; (8002e74 <set_refcurrent+0x98>)
 8002e2e:	601c      	str	r4, [r3, #0]
 8002e30:	4b11      	ldr	r3, [pc, #68]	; (8002e78 <set_refcurrent+0x9c>)
 8002e32:	461a      	mov	r2, r3
 8002e34:	687b      	ldr	r3, [r7, #4]
 8002e36:	fb03 f302 	mul.w	r3, r3, r2
 8002e3a:	4a10      	ldr	r2, [pc, #64]	; (8002e7c <set_refcurrent+0xa0>)
 8002e3c:	4413      	add	r3, r2
 8002e3e:	60fb      	str	r3, [r7, #12]
 8002e40:	68fb      	ldr	r3, [r7, #12]
 8002e42:	2b00      	cmp	r3, #0
 8002e44:	dd04      	ble.n	8002e50 <set_refcurrent+0x74>
 8002e46:	68fb      	ldr	r3, [r7, #12]
 8002e48:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 8002e4c:	151b      	asrs	r3, r3, #20
 8002e4e:	e000      	b.n	8002e52 <set_refcurrent+0x76>
 8002e50:	2300      	movs	r3, #0
 8002e52:	4a0b      	ldr	r2, [pc, #44]	; (8002e80 <set_refcurrent+0xa4>)
 8002e54:	6013      	str	r3, [r2, #0]
 8002e56:	bf00      	nop
 8002e58:	3710      	adds	r7, #16
 8002e5a:	46bd      	mov	sp, r7
 8002e5c:	bc90      	pop	{r4, r7}
 8002e5e:	4770      	bx	lr
 8002e60:	20000230 	.word	0x20000230
 8002e64:	cccccccd 	.word	0xcccccccd
 8002e68:	08003dfc 	.word	0x08003dfc
 8002e6c:	20002cbc 	.word	0x20002cbc
 8002e70:	10624dd3 	.word	0x10624dd3
 8002e74:	2000022c 	.word	0x2000022c
 8002e78:	00022baa 	.word	0x00022baa
 8002e7c:	ffdd90e7 	.word	0xffdd90e7
 8002e80:	20002ca8 	.word	0x20002ca8

08002e84 <check_voltage>:
 8002e84:	b480      	push	{r7}
 8002e86:	af00      	add	r7, sp, #0
 8002e88:	4b0d      	ldr	r3, [pc, #52]	; (8002ec0 <check_voltage+0x3c>)
 8002e8a:	681b      	ldr	r3, [r3, #0]
 8002e8c:	0a9b      	lsrs	r3, r3, #10
 8002e8e:	4a0d      	ldr	r2, [pc, #52]	; (8002ec4 <check_voltage+0x40>)
 8002e90:	fb02 f303 	mul.w	r3, r2, r3
 8002e94:	4a0c      	ldr	r2, [pc, #48]	; (8002ec8 <check_voltage+0x44>)
 8002e96:	441a      	add	r2, r3
 8002e98:	4b0c      	ldr	r3, [pc, #48]	; (8002ecc <check_voltage+0x48>)
 8002e9a:	681b      	ldr	r3, [r3, #0]
 8002e9c:	3b02      	subs	r3, #2
 8002e9e:	fa22 f303 	lsr.w	r3, r2, r3
 8002ea2:	4a0b      	ldr	r2, [pc, #44]	; (8002ed0 <check_voltage+0x4c>)
 8002ea4:	6013      	str	r3, [r2, #0]
 8002ea6:	4b0a      	ldr	r3, [pc, #40]	; (8002ed0 <check_voltage+0x4c>)
 8002ea8:	681b      	ldr	r3, [r3, #0]
 8002eaa:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002eae:	0c9b      	lsrs	r3, r3, #18
 8002eb0:	b29a      	uxth	r2, r3
 8002eb2:	4b08      	ldr	r3, [pc, #32]	; (8002ed4 <check_voltage+0x50>)
 8002eb4:	815a      	strh	r2, [r3, #10]
 8002eb6:	bf00      	nop
 8002eb8:	46bd      	mov	sp, r7
 8002eba:	bc80      	pop	{r7}
 8002ebc:	4770      	bx	lr
 8002ebe:	bf00      	nop
 8002ec0:	20000c98 	.word	0x20000c98
 8002ec4:	000537f0 	.word	0x000537f0
 8002ec8:	0007d396 	.word	0x0007d396
 8002ecc:	20002cd0 	.word	0x20002cd0
 8002ed0:	20000230 	.word	0x20000230
 8002ed4:	20000a60 	.word	0x20000a60

08002ed8 <update_mode>:
 8002ed8:	b580      	push	{r7, lr}
 8002eda:	b082      	sub	sp, #8
 8002edc:	af00      	add	r7, sp, #0
 8002ede:	f44f 03f0 	mov.w	r3, #7864320	; 0x780000
 8002ee2:	607b      	str	r3, [r7, #4]
 8002ee4:	f44f 03a0 	mov.w	r3, #5242880	; 0x500000
 8002ee8:	603b      	str	r3, [r7, #0]
 8002eea:	4b35      	ldr	r3, [pc, #212]	; (8002fc0 <update_mode+0xe8>)
 8002eec:	681b      	ldr	r3, [r3, #0]
 8002eee:	2b00      	cmp	r3, #0
 8002ef0:	d009      	beq.n	8002f06 <update_mode+0x2e>
 8002ef2:	4a34      	ldr	r2, [pc, #208]	; (8002fc4 <update_mode+0xec>)
 8002ef4:	4b33      	ldr	r3, [pc, #204]	; (8002fc4 <update_mode+0xec>)
 8002ef6:	695b      	ldr	r3, [r3, #20]
 8002ef8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002efc:	6153      	str	r3, [r2, #20]
 8002efe:	4b32      	ldr	r3, [pc, #200]	; (8002fc8 <update_mode+0xf0>)
 8002f00:	2200      	movs	r2, #0
 8002f02:	601a      	str	r2, [r3, #0]
 8002f04:	e057      	b.n	8002fb6 <update_mode+0xde>
 8002f06:	4b31      	ldr	r3, [pc, #196]	; (8002fcc <update_mode+0xf4>)
 8002f08:	681a      	ldr	r2, [r3, #0]
 8002f0a:	683b      	ldr	r3, [r7, #0]
 8002f0c:	429a      	cmp	r2, r3
 8002f0e:	d209      	bcs.n	8002f24 <update_mode+0x4c>
 8002f10:	4a2c      	ldr	r2, [pc, #176]	; (8002fc4 <update_mode+0xec>)
 8002f12:	4b2c      	ldr	r3, [pc, #176]	; (8002fc4 <update_mode+0xec>)
 8002f14:	695b      	ldr	r3, [r3, #20]
 8002f16:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002f1a:	6153      	str	r3, [r2, #20]
 8002f1c:	4b2a      	ldr	r3, [pc, #168]	; (8002fc8 <update_mode+0xf0>)
 8002f1e:	2200      	movs	r2, #0
 8002f20:	601a      	str	r2, [r3, #0]
 8002f22:	e03e      	b.n	8002fa2 <update_mode+0xca>
 8002f24:	4b29      	ldr	r3, [pc, #164]	; (8002fcc <update_mode+0xf4>)
 8002f26:	681a      	ldr	r2, [r3, #0]
 8002f28:	687b      	ldr	r3, [r7, #4]
 8002f2a:	429a      	cmp	r2, r3
 8002f2c:	d939      	bls.n	8002fa2 <update_mode+0xca>
 8002f2e:	4a25      	ldr	r2, [pc, #148]	; (8002fc4 <update_mode+0xec>)
 8002f30:	4b24      	ldr	r3, [pc, #144]	; (8002fc4 <update_mode+0xec>)
 8002f32:	695b      	ldr	r3, [r3, #20]
 8002f34:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002f38:	6153      	str	r3, [r2, #20]
 8002f3a:	4b25      	ldr	r3, [pc, #148]	; (8002fd0 <update_mode+0xf8>)
 8002f3c:	889b      	ldrh	r3, [r3, #4]
 8002f3e:	2b01      	cmp	r3, #1
 8002f40:	d013      	beq.n	8002f6a <update_mode+0x92>
 8002f42:	2b01      	cmp	r3, #1
 8002f44:	dc02      	bgt.n	8002f4c <update_mode+0x74>
 8002f46:	2b00      	cmp	r3, #0
 8002f48:	d005      	beq.n	8002f56 <update_mode+0x7e>
 8002f4a:	e02a      	b.n	8002fa2 <update_mode+0xca>
 8002f4c:	2b02      	cmp	r3, #2
 8002f4e:	d012      	beq.n	8002f76 <update_mode+0x9e>
 8002f50:	2b64      	cmp	r3, #100	; 0x64
 8002f52:	d020      	beq.n	8002f96 <update_mode+0xbe>
 8002f54:	e025      	b.n	8002fa2 <update_mode+0xca>
 8002f56:	4b1c      	ldr	r3, [pc, #112]	; (8002fc8 <update_mode+0xf0>)
 8002f58:	2200      	movs	r2, #0
 8002f5a:	601a      	str	r2, [r3, #0]
 8002f5c:	4a19      	ldr	r2, [pc, #100]	; (8002fc4 <update_mode+0xec>)
 8002f5e:	4b19      	ldr	r3, [pc, #100]	; (8002fc4 <update_mode+0xec>)
 8002f60:	695b      	ldr	r3, [r3, #20]
 8002f62:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002f66:	6153      	str	r3, [r2, #20]
 8002f68:	e01b      	b.n	8002fa2 <update_mode+0xca>
 8002f6a:	4b19      	ldr	r3, [pc, #100]	; (8002fd0 <update_mode+0xf8>)
 8002f6c:	881b      	ldrh	r3, [r3, #0]
 8002f6e:	4618      	mov	r0, r3
 8002f70:	f7ff ff34 	bl	8002ddc <set_refcurrent>
 8002f74:	e015      	b.n	8002fa2 <update_mode+0xca>
 8002f76:	4b15      	ldr	r3, [pc, #84]	; (8002fcc <update_mode+0xf4>)
 8002f78:	681b      	ldr	r3, [r3, #0]
 8002f7a:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002f7e:	0c9b      	lsrs	r3, r3, #18
 8002f80:	2264      	movs	r2, #100	; 0x64
 8002f82:	fb02 f303 	mul.w	r3, r2, r3
 8002f86:	4a12      	ldr	r2, [pc, #72]	; (8002fd0 <update_mode+0xf8>)
 8002f88:	8852      	ldrh	r2, [r2, #2]
 8002f8a:	fbb3 f3f2 	udiv	r3, r3, r2
 8002f8e:	4618      	mov	r0, r3
 8002f90:	f7ff ff24 	bl	8002ddc <set_refcurrent>
 8002f94:	e005      	b.n	8002fa2 <update_mode+0xca>
 8002f96:	4b0e      	ldr	r3, [pc, #56]	; (8002fd0 <update_mode+0xf8>)
 8002f98:	881b      	ldrh	r3, [r3, #0]
 8002f9a:	461a      	mov	r2, r3
 8002f9c:	4b0a      	ldr	r3, [pc, #40]	; (8002fc8 <update_mode+0xf0>)
 8002f9e:	601a      	str	r2, [r3, #0]
 8002fa0:	bf00      	nop
 8002fa2:	4b0b      	ldr	r3, [pc, #44]	; (8002fd0 <update_mode+0xf8>)
 8002fa4:	88db      	ldrh	r3, [r3, #6]
 8002fa6:	461a      	mov	r2, r3
 8002fa8:	4b0a      	ldr	r3, [pc, #40]	; (8002fd4 <update_mode+0xfc>)
 8002faa:	601a      	str	r2, [r3, #0]
 8002fac:	4b08      	ldr	r3, [pc, #32]	; (8002fd0 <update_mode+0xf8>)
 8002fae:	891b      	ldrh	r3, [r3, #8]
 8002fb0:	461a      	mov	r2, r3
 8002fb2:	4b09      	ldr	r3, [pc, #36]	; (8002fd8 <update_mode+0x100>)
 8002fb4:	601a      	str	r2, [r3, #0]
 8002fb6:	bf00      	nop
 8002fb8:	3708      	adds	r7, #8
 8002fba:	46bd      	mov	sp, r7
 8002fbc:	bd80      	pop	{r7, pc}
 8002fbe:	bf00      	nop
 8002fc0:	20000228 	.word	0x20000228
 8002fc4:	40021000 	.word	0x40021000
 8002fc8:	20002ca8 	.word	0x20002ca8
 8002fcc:	20000230 	.word	0x20000230
 8002fd0:	20000a60 	.word	0x20000a60
 8002fd4:	20000218 	.word	0x20000218
 8002fd8:	20002cb0 	.word	0x20002cb0

08002fdc <check_temp>:
 8002fdc:	b580      	push	{r7, lr}
 8002fde:	b082      	sub	sp, #8
 8002fe0:	af00      	add	r7, sp, #0
 8002fe2:	4b24      	ldr	r3, [pc, #144]	; (8003074 <check_temp+0x98>)
 8002fe4:	681b      	ldr	r3, [r3, #0]
 8002fe6:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002fea:	0c9b      	lsrs	r3, r3, #18
 8002fec:	3305      	adds	r3, #5
 8002fee:	4a22      	ldr	r2, [pc, #136]	; (8003078 <check_temp+0x9c>)
 8002ff0:	fba2 2303 	umull	r2, r3, r2, r3
 8002ff4:	08db      	lsrs	r3, r3, #3
 8002ff6:	607b      	str	r3, [r7, #4]
 8002ff8:	2300      	movs	r3, #0
 8002ffa:	603b      	str	r3, [r7, #0]
 8002ffc:	4b1f      	ldr	r3, [pc, #124]	; (800307c <check_temp+0xa0>)
 8002ffe:	681b      	ldr	r3, [r3, #0]
 8003000:	461a      	mov	r2, r3
 8003002:	687b      	ldr	r3, [r7, #4]
 8003004:	fb03 f302 	mul.w	r3, r3, r2
 8003008:	4a1d      	ldr	r2, [pc, #116]	; (8003080 <check_temp+0xa4>)
 800300a:	6013      	str	r3, [r2, #0]
 800300c:	2211      	movs	r2, #17
 800300e:	4b1c      	ldr	r3, [pc, #112]	; (8003080 <check_temp+0xa4>)
 8003010:	681b      	ldr	r3, [r3, #0]
 8003012:	fb03 f302 	mul.w	r3, r3, r2
 8003016:	f503 4343 	add.w	r3, r3, #49920	; 0xc300
 800301a:	3350      	adds	r3, #80	; 0x50
 800301c:	095b      	lsrs	r3, r3, #5
 800301e:	4a19      	ldr	r2, [pc, #100]	; (8003084 <check_temp+0xa8>)
 8003020:	fba2 2303 	umull	r2, r3, r2, r3
 8003024:	09da      	lsrs	r2, r3, #7
 8003026:	4b18      	ldr	r3, [pc, #96]	; (8003088 <check_temp+0xac>)
 8003028:	681b      	ldr	r3, [r3, #0]
 800302a:	4413      	add	r3, r2
 800302c:	4a17      	ldr	r2, [pc, #92]	; (800308c <check_temp+0xb0>)
 800302e:	6013      	str	r3, [r2, #0]
 8003030:	4b16      	ldr	r3, [pc, #88]	; (800308c <check_temp+0xb0>)
 8003032:	681b      	ldr	r3, [r3, #0]
 8003034:	2b27      	cmp	r3, #39	; 0x27
 8003036:	d806      	bhi.n	8003046 <check_temp+0x6a>
 8003038:	2050      	movs	r0, #80	; 0x50
 800303a:	f7ff fc75 	bl	8002928 <coll_pwm_set>
 800303e:	4b14      	ldr	r3, [pc, #80]	; (8003090 <check_temp+0xb4>)
 8003040:	2200      	movs	r2, #0
 8003042:	601a      	str	r2, [r3, #0]
 8003044:	e00d      	b.n	8003062 <check_temp+0x86>
 8003046:	4b11      	ldr	r3, [pc, #68]	; (800308c <check_temp+0xb0>)
 8003048:	681b      	ldr	r3, [r3, #0]
 800304a:	2b32      	cmp	r3, #50	; 0x32
 800304c:	d909      	bls.n	8003062 <check_temp+0x86>
 800304e:	2001      	movs	r0, #1
 8003050:	f7ff fc6a 	bl	8002928 <coll_pwm_set>
 8003054:	4b0d      	ldr	r3, [pc, #52]	; (800308c <check_temp+0xb0>)
 8003056:	681b      	ldr	r3, [r3, #0]
 8003058:	2b96      	cmp	r3, #150	; 0x96
 800305a:	d902      	bls.n	8003062 <check_temp+0x86>
 800305c:	4b0c      	ldr	r3, [pc, #48]	; (8003090 <check_temp+0xb4>)
 800305e:	2201      	movs	r2, #1
 8003060:	601a      	str	r2, [r3, #0]
 8003062:	4b09      	ldr	r3, [pc, #36]	; (8003088 <check_temp+0xac>)
 8003064:	681b      	ldr	r3, [r3, #0]
 8003066:	b29a      	uxth	r2, r3
 8003068:	4b0a      	ldr	r3, [pc, #40]	; (8003094 <check_temp+0xb8>)
 800306a:	81da      	strh	r2, [r3, #14]
 800306c:	bf00      	nop
 800306e:	3708      	adds	r7, #8
 8003070:	46bd      	mov	sp, r7
 8003072:	bd80      	pop	{r7, pc}
 8003074:	20000230 	.word	0x20000230
 8003078:	cccccccd 	.word	0xcccccccd
 800307c:	20000234 	.word	0x20000234
 8003080:	20000238 	.word	0x20000238
 8003084:	0a7c5ac5 	.word	0x0a7c5ac5
 8003088:	20002cbc 	.word	0x20002cbc
 800308c:	2000023c 	.word	0x2000023c
 8003090:	20000228 	.word	0x20000228
 8003094:	20000a60 	.word	0x20000a60

08003098 <TIM3_IRQHandler>:
 8003098:	b580      	push	{r7, lr}
 800309a:	af00      	add	r7, sp, #0
 800309c:	4a1e      	ldr	r2, [pc, #120]	; (8003118 <TIM3_IRQHandler+0x80>)
 800309e:	4b1e      	ldr	r3, [pc, #120]	; (8003118 <TIM3_IRQHandler+0x80>)
 80030a0:	695b      	ldr	r3, [r3, #20]
 80030a2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80030a6:	6153      	str	r3, [r2, #20]
 80030a8:	4a1c      	ldr	r2, [pc, #112]	; (800311c <TIM3_IRQHandler+0x84>)
 80030aa:	4b1c      	ldr	r3, [pc, #112]	; (800311c <TIM3_IRQHandler+0x84>)
 80030ac:	8a1b      	ldrh	r3, [r3, #16]
 80030ae:	b29b      	uxth	r3, r3
 80030b0:	f023 0301 	bic.w	r3, r3, #1
 80030b4:	b29b      	uxth	r3, r3
 80030b6:	8213      	strh	r3, [r2, #16]
 80030b8:	4a19      	ldr	r2, [pc, #100]	; (8003120 <TIM3_IRQHandler+0x88>)
 80030ba:	4b19      	ldr	r3, [pc, #100]	; (8003120 <TIM3_IRQHandler+0x88>)
 80030bc:	681b      	ldr	r3, [r3, #0]
 80030be:	f043 0301 	orr.w	r3, r3, #1
 80030c2:	6013      	str	r3, [r2, #0]
 80030c4:	4b17      	ldr	r3, [pc, #92]	; (8003124 <TIM3_IRQHandler+0x8c>)
 80030c6:	681b      	ldr	r3, [r3, #0]
 80030c8:	2b00      	cmp	r3, #0
 80030ca:	d005      	beq.n	80030d8 <TIM3_IRQHandler+0x40>
 80030cc:	4b16      	ldr	r3, [pc, #88]	; (8003128 <TIM3_IRQHandler+0x90>)
 80030ce:	2296      	movs	r2, #150	; 0x96
 80030d0:	601a      	str	r2, [r3, #0]
 80030d2:	f000 f8d1 	bl	8003278 <i2c_init>
 80030d6:	e004      	b.n	80030e2 <TIM3_IRQHandler+0x4a>
 80030d8:	4b14      	ldr	r3, [pc, #80]	; (800312c <TIM3_IRQHandler+0x94>)
 80030da:	781b      	ldrb	r3, [r3, #0]
 80030dc:	461a      	mov	r2, r3
 80030de:	4b12      	ldr	r3, [pc, #72]	; (8003128 <TIM3_IRQHandler+0x90>)
 80030e0:	601a      	str	r2, [r3, #0]
 80030e2:	2386      	movs	r3, #134	; 0x86
 80030e4:	b2db      	uxtb	r3, r3
 80030e6:	4618      	mov	r0, r3
 80030e8:	f000 fb00 	bl	80036ec <i2c_start>
 80030ec:	f000 fb26 	bl	800373c <update_attenuator>
 80030f0:	f7ff fec8 	bl	8002e84 <check_voltage>
 80030f4:	f7ff fe48 	bl	8002d88 <check_current>
 80030f8:	f7ff ff70 	bl	8002fdc <check_temp>
 80030fc:	f7ff feec 	bl	8002ed8 <update_mode>
 8003100:	4b0b      	ldr	r3, [pc, #44]	; (8003130 <TIM3_IRQHandler+0x98>)
 8003102:	f64a 22aa 	movw	r2, #43690	; 0xaaaa
 8003106:	601a      	str	r2, [r3, #0]
 8003108:	4a03      	ldr	r2, [pc, #12]	; (8003118 <TIM3_IRQHandler+0x80>)
 800310a:	4b03      	ldr	r3, [pc, #12]	; (8003118 <TIM3_IRQHandler+0x80>)
 800310c:	695b      	ldr	r3, [r3, #20]
 800310e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8003112:	6153      	str	r3, [r2, #20]
 8003114:	bf00      	nop
 8003116:	bd80      	pop	{r7, pc}
 8003118:	40020000 	.word	0x40020000
 800311c:	40000400 	.word	0x40000400
 8003120:	40026070 	.word	0x40026070
 8003124:	20002ccc 	.word	0x20002ccc
 8003128:	20002cbc 	.word	0x20002cbc
 800312c:	20002cc0 	.word	0x20002cc0
 8003130:	40003000 	.word	0x40003000

08003134 <DMA1_Stream4_IRQHandler>:
 8003134:	b480      	push	{r7}
 8003136:	af00      	add	r7, sp, #0
 8003138:	4a07      	ldr	r2, [pc, #28]	; (8003158 <DMA1_Stream4_IRQHandler+0x24>)
 800313a:	4b07      	ldr	r3, [pc, #28]	; (8003158 <DMA1_Stream4_IRQHandler+0x24>)
 800313c:	68db      	ldr	r3, [r3, #12]
 800313e:	f043 0320 	orr.w	r3, r3, #32
 8003142:	60d3      	str	r3, [r2, #12]
 8003144:	4a05      	ldr	r2, [pc, #20]	; (800315c <DMA1_Stream4_IRQHandler+0x28>)
 8003146:	4b05      	ldr	r3, [pc, #20]	; (800315c <DMA1_Stream4_IRQHandler+0x28>)
 8003148:	681b      	ldr	r3, [r3, #0]
 800314a:	f023 0301 	bic.w	r3, r3, #1
 800314e:	6013      	str	r3, [r2, #0]
 8003150:	bf00      	nop
 8003152:	46bd      	mov	sp, r7
 8003154:	bc80      	pop	{r7}
 8003156:	4770      	bx	lr
 8003158:	40026000 	.word	0x40026000
 800315c:	40026070 	.word	0x40026070

08003160 <reg_init>:
 8003160:	4b03      	ldr	r3, [pc, #12]	; (8003170 <reg_init+0x10>)
 8003162:	2200      	movs	r2, #0
 8003164:	21c8      	movs	r1, #200	; 0xc8
 8003166:	80d9      	strh	r1, [r3, #6]
 8003168:	811a      	strh	r2, [r3, #8]
 800316a:	801a      	strh	r2, [r3, #0]
 800316c:	809a      	strh	r2, [r3, #4]
 800316e:	4770      	bx	lr
 8003170:	20000a60 	.word	0x20000a60

08003174 <ADC_IRQHandler>:
 8003174:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003176:	4c2b      	ldr	r4, [pc, #172]	; (8003224 <ADC_IRQHandler+0xb0>)
 8003178:	4b2b      	ldr	r3, [pc, #172]	; (8003228 <ADC_IRQHandler+0xb4>)
 800317a:	6860      	ldr	r0, [r4, #4]
 800317c:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 800317e:	6825      	ldr	r5, [r4, #0]
 8003180:	4b2a      	ldr	r3, [pc, #168]	; (800322c <ADC_IRQHandler+0xb8>)
 8003182:	4f2b      	ldr	r7, [pc, #172]	; (8003230 <ADC_IRQHandler+0xbc>)
 8003184:	f853 1cec 	ldr.w	r1, [r3, #-236]
 8003188:	f8df c0b4 	ldr.w	ip, [pc, #180]	; 8003240 <ADC_IRQHandler+0xcc>
 800318c:	eb04 0680 	add.w	r6, r4, r0, lsl #2
 8003190:	f5c2 627f 	rsb	r2, r2, #4080	; 0xff0
 8003194:	f8d6 e008 	ldr.w	lr, [r6, #8]
 8003198:	320f      	adds	r2, #15
 800319a:	4415      	add	r5, r2
 800319c:	60b2      	str	r2, [r6, #8]
 800319e:	ebce 0205 	rsb	r2, lr, r5
 80031a2:	6022      	str	r2, [r4, #0]
 80031a4:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80031a6:	f853 5cf0 	ldr.w	r5, [r3, #-240]
 80031aa:	4f22      	ldr	r7, [pc, #136]	; (8003234 <ADC_IRQHandler+0xc0>)
 80031ac:	eb03 0e81 	add.w	lr, r3, r1, lsl #2
 80031b0:	f5c2 6255 	rsb	r2, r2, #3408	; 0xd50
 80031b4:	f85e 6ce8 	ldr.w	r6, [lr, #-232]
 80031b8:	683f      	ldr	r7, [r7, #0]
 80031ba:	3203      	adds	r2, #3
 80031bc:	4415      	add	r5, r2
 80031be:	1bad      	subs	r5, r5, r6
 80031c0:	f843 5cf0 	str.w	r5, [r3, #-240]
 80031c4:	f8d3 5f18 	ldr.w	r5, [r3, #3864]	; 0xf18
 80031c8:	f8d3 6f1c 	ldr.w	r6, [r3, #3868]	; 0xf1c
 80031cc:	f84e 2ce8 	str.w	r2, [lr, #-232]
 80031d0:	1aad      	subs	r5, r5, r2
 80031d2:	4a19      	ldr	r2, [pc, #100]	; (8003238 <ADC_IRQHandler+0xc4>)
 80031d4:	f8df e06c 	ldr.w	lr, [pc, #108]	; 8003244 <ADC_IRQHandler+0xd0>
 80031d8:	fb07 6605 	mla	r6, r7, r5, r6
 80031dc:	4296      	cmp	r6, r2
 80031de:	4f17      	ldr	r7, [pc, #92]	; (800323c <ADC_IRQHandler+0xc8>)
 80031e0:	bfb8      	it	lt
 80031e2:	4616      	movlt	r6, r2
 80031e4:	42be      	cmp	r6, r7
 80031e6:	f8d3 2f20 	ldr.w	r2, [r3, #3872]	; 0xf20
 80031ea:	bfa8      	it	ge
 80031ec:	463e      	movge	r6, r7
 80031ee:	fb02 6205 	mla	r2, r2, r5, r6
 80031f2:	f8b3 7f24 	ldrh.w	r7, [r3, #3876]	; 0xf24
 80031f6:	f8c3 6f1c 	str.w	r6, [r3, #3868]	; 0xf1c
 80031fa:	3001      	adds	r0, #1
 80031fc:	3101      	adds	r1, #1
 80031fe:	1352      	asrs	r2, r2, #13
 8003200:	f3c0 0009 	ubfx	r0, r0, #0, #10
 8003204:	f3c1 0109 	ubfx	r1, r1, #0, #10
 8003208:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 800320c:	b2be      	uxth	r6, r7
 800320e:	6060      	str	r0, [r4, #4]
 8003210:	f843 1cec 	str.w	r1, [r3, #-236]
 8003214:	f8cc 6034 	str.w	r6, [ip, #52]	; 0x34
 8003218:	f8ce 2008 	str.w	r2, [lr, #8]
 800321c:	f8c3 5f28 	str.w	r5, [r3, #3880]	; 0xf28
 8003220:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003222:	bf00      	nop
 8003224:	20000c98 	.word	0x20000c98
 8003228:	40012200 	.word	0x40012200
 800322c:	20001d90 	.word	0x20001d90
 8003230:	40012000 	.word	0x40012000
 8003234:	20000218 	.word	0x20000218
 8003238:	c4653600 	.word	0xc4653600
 800323c:	3b9aca00 	.word	0x3b9aca00
 8003240:	40000800 	.word	0x40000800
 8003244:	40007400 	.word	0x40007400

08003248 <NVIC_EnableIRQ>:
 8003248:	b480      	push	{r7}
 800324a:	b083      	sub	sp, #12
 800324c:	af00      	add	r7, sp, #0
 800324e:	4603      	mov	r3, r0
 8003250:	71fb      	strb	r3, [r7, #7]
 8003252:	4908      	ldr	r1, [pc, #32]	; (8003274 <NVIC_EnableIRQ+0x2c>)
 8003254:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8003258:	095b      	lsrs	r3, r3, #5
 800325a:	79fa      	ldrb	r2, [r7, #7]
 800325c:	f002 021f 	and.w	r2, r2, #31
 8003260:	2001      	movs	r0, #1
 8003262:	fa00 f202 	lsl.w	r2, r0, r2
 8003266:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800326a:	bf00      	nop
 800326c:	370c      	adds	r7, #12
 800326e:	46bd      	mov	sp, r7
 8003270:	bc80      	pop	{r7}
 8003272:	4770      	bx	lr
 8003274:	e000e100 	.word	0xe000e100

08003278 <i2c_init>:
 8003278:	b580      	push	{r7, lr}
 800327a:	af00      	add	r7, sp, #0
 800327c:	4a3a      	ldr	r2, [pc, #232]	; (8003368 <i2c_init+0xf0>)
 800327e:	4b3a      	ldr	r3, [pc, #232]	; (8003368 <i2c_init+0xf0>)
 8003280:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003282:	f043 0302 	orr.w	r3, r3, #2
 8003286:	6313      	str	r3, [r2, #48]	; 0x30
 8003288:	4a38      	ldr	r2, [pc, #224]	; (800336c <i2c_init+0xf4>)
 800328a:	4b38      	ldr	r3, [pc, #224]	; (800336c <i2c_init+0xf4>)
 800328c:	685b      	ldr	r3, [r3, #4]
 800328e:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 8003292:	6053      	str	r3, [r2, #4]
 8003294:	4a35      	ldr	r2, [pc, #212]	; (800336c <i2c_init+0xf4>)
 8003296:	4b35      	ldr	r3, [pc, #212]	; (800336c <i2c_init+0xf4>)
 8003298:	681b      	ldr	r3, [r3, #0]
 800329a:	f423 4370 	bic.w	r3, r3, #61440	; 0xf000
 800329e:	6013      	str	r3, [r2, #0]
 80032a0:	4a32      	ldr	r2, [pc, #200]	; (800336c <i2c_init+0xf4>)
 80032a2:	4b32      	ldr	r3, [pc, #200]	; (800336c <i2c_init+0xf4>)
 80032a4:	681b      	ldr	r3, [r3, #0]
 80032a6:	f443 4320 	orr.w	r3, r3, #40960	; 0xa000
 80032aa:	6013      	str	r3, [r2, #0]
 80032ac:	4a2f      	ldr	r2, [pc, #188]	; (800336c <i2c_init+0xf4>)
 80032ae:	4b2f      	ldr	r3, [pc, #188]	; (800336c <i2c_init+0xf4>)
 80032b0:	6a1b      	ldr	r3, [r3, #32]
 80032b2:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
 80032b6:	6213      	str	r3, [r2, #32]
 80032b8:	4a2c      	ldr	r2, [pc, #176]	; (800336c <i2c_init+0xf4>)
 80032ba:	4b2c      	ldr	r3, [pc, #176]	; (800336c <i2c_init+0xf4>)
 80032bc:	6a1b      	ldr	r3, [r3, #32]
 80032be:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 80032c2:	6213      	str	r3, [r2, #32]
 80032c4:	4a29      	ldr	r2, [pc, #164]	; (800336c <i2c_init+0xf4>)
 80032c6:	4b29      	ldr	r3, [pc, #164]	; (800336c <i2c_init+0xf4>)
 80032c8:	6a1b      	ldr	r3, [r3, #32]
 80032ca:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
 80032ce:	6213      	str	r3, [r2, #32]
 80032d0:	4a26      	ldr	r2, [pc, #152]	; (800336c <i2c_init+0xf4>)
 80032d2:	4b26      	ldr	r3, [pc, #152]	; (800336c <i2c_init+0xf4>)
 80032d4:	6a1b      	ldr	r3, [r3, #32]
 80032d6:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 80032da:	6213      	str	r3, [r2, #32]
 80032dc:	4a22      	ldr	r2, [pc, #136]	; (8003368 <i2c_init+0xf0>)
 80032de:	4b22      	ldr	r3, [pc, #136]	; (8003368 <i2c_init+0xf0>)
 80032e0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80032e2:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80032e6:	6413      	str	r3, [r2, #64]	; 0x40
 80032e8:	4b21      	ldr	r3, [pc, #132]	; (8003370 <i2c_init+0xf8>)
 80032ea:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80032ee:	801a      	strh	r2, [r3, #0]
 80032f0:	4b1f      	ldr	r3, [pc, #124]	; (8003370 <i2c_init+0xf8>)
 80032f2:	2200      	movs	r2, #0
 80032f4:	801a      	strh	r2, [r3, #0]
 80032f6:	4a1e      	ldr	r2, [pc, #120]	; (8003370 <i2c_init+0xf8>)
 80032f8:	4b1d      	ldr	r3, [pc, #116]	; (8003370 <i2c_init+0xf8>)
 80032fa:	889b      	ldrh	r3, [r3, #4]
 80032fc:	b29b      	uxth	r3, r3
 80032fe:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8003302:	b29b      	uxth	r3, r3
 8003304:	8093      	strh	r3, [r2, #4]
 8003306:	4a1a      	ldr	r2, [pc, #104]	; (8003370 <i2c_init+0xf8>)
 8003308:	4b19      	ldr	r3, [pc, #100]	; (8003370 <i2c_init+0xf8>)
 800330a:	889b      	ldrh	r3, [r3, #4]
 800330c:	b29b      	uxth	r3, r3
 800330e:	f043 032a 	orr.w	r3, r3, #42	; 0x2a
 8003312:	b29b      	uxth	r3, r3
 8003314:	8093      	strh	r3, [r2, #4]
 8003316:	4b16      	ldr	r3, [pc, #88]	; (8003370 <i2c_init+0xf8>)
 8003318:	22b4      	movs	r2, #180	; 0xb4
 800331a:	839a      	strh	r2, [r3, #28]
 800331c:	4a14      	ldr	r2, [pc, #80]	; (8003370 <i2c_init+0xf8>)
 800331e:	4b14      	ldr	r3, [pc, #80]	; (8003370 <i2c_init+0xf8>)
 8003320:	8c1b      	ldrh	r3, [r3, #32]
 8003322:	b29b      	uxth	r3, r3
 8003324:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8003328:	b29b      	uxth	r3, r3
 800332a:	8413      	strh	r3, [r2, #32]
 800332c:	4a10      	ldr	r2, [pc, #64]	; (8003370 <i2c_init+0xf8>)
 800332e:	4b10      	ldr	r3, [pc, #64]	; (8003370 <i2c_init+0xf8>)
 8003330:	8c1b      	ldrh	r3, [r3, #32]
 8003332:	b29b      	uxth	r3, r3
 8003334:	f043 032a 	orr.w	r3, r3, #42	; 0x2a
 8003338:	b29b      	uxth	r3, r3
 800333a:	8413      	strh	r3, [r2, #32]
 800333c:	4a0c      	ldr	r2, [pc, #48]	; (8003370 <i2c_init+0xf8>)
 800333e:	4b0c      	ldr	r3, [pc, #48]	; (8003370 <i2c_init+0xf8>)
 8003340:	889b      	ldrh	r3, [r3, #4]
 8003342:	b29b      	uxth	r3, r3
 8003344:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8003348:	b29b      	uxth	r3, r3
 800334a:	8093      	strh	r3, [r2, #4]
 800334c:	4a08      	ldr	r2, [pc, #32]	; (8003370 <i2c_init+0xf8>)
 800334e:	4b08      	ldr	r3, [pc, #32]	; (8003370 <i2c_init+0xf8>)
 8003350:	881b      	ldrh	r3, [r3, #0]
 8003352:	b29b      	uxth	r3, r3
 8003354:	f043 0301 	orr.w	r3, r3, #1
 8003358:	b29b      	uxth	r3, r3
 800335a:	8013      	strh	r3, [r2, #0]
 800335c:	201f      	movs	r0, #31
 800335e:	f7ff ff73 	bl	8003248 <NVIC_EnableIRQ>
 8003362:	bf00      	nop
 8003364:	bd80      	pop	{r7, pc}
 8003366:	bf00      	nop
 8003368:	40023800 	.word	0x40023800
 800336c:	40020400 	.word	0x40020400
 8003370:	40005400 	.word	0x40005400

08003374 <i2c_test>:
 8003374:	b580      	push	{r7, lr}
 8003376:	b082      	sub	sp, #8
 8003378:	af00      	add	r7, sp, #0
 800337a:	4a60      	ldr	r2, [pc, #384]	; (80034fc <i2c_test+0x188>)
 800337c:	4b5f      	ldr	r3, [pc, #380]	; (80034fc <i2c_test+0x188>)
 800337e:	881b      	ldrh	r3, [r3, #0]
 8003380:	b29b      	uxth	r3, r3
 8003382:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8003386:	b29b      	uxth	r3, r3
 8003388:	8013      	strh	r3, [r2, #0]
 800338a:	bf00      	nop
 800338c:	4b5b      	ldr	r3, [pc, #364]	; (80034fc <i2c_test+0x188>)
 800338e:	8a9b      	ldrh	r3, [r3, #20]
 8003390:	b29b      	uxth	r3, r3
 8003392:	f003 0301 	and.w	r3, r3, #1
 8003396:	2b00      	cmp	r3, #0
 8003398:	d0f8      	beq.n	800338c <i2c_test+0x18>
 800339a:	4b58      	ldr	r3, [pc, #352]	; (80034fc <i2c_test+0x188>)
 800339c:	8a9b      	ldrh	r3, [r3, #20]
 800339e:	b29b      	uxth	r3, r3
 80033a0:	4619      	mov	r1, r3
 80033a2:	4857      	ldr	r0, [pc, #348]	; (8003500 <i2c_test+0x18c>)
 80033a4:	f7fd fe60 	bl	8001068 <xprintf>
 80033a8:	4b54      	ldr	r3, [pc, #336]	; (80034fc <i2c_test+0x188>)
 80033aa:	2294      	movs	r2, #148	; 0x94
 80033ac:	821a      	strh	r2, [r3, #16]
 80033ae:	bf00      	nop
 80033b0:	4b52      	ldr	r3, [pc, #328]	; (80034fc <i2c_test+0x188>)
 80033b2:	8a9b      	ldrh	r3, [r3, #20]
 80033b4:	b29b      	uxth	r3, r3
 80033b6:	f003 0302 	and.w	r3, r3, #2
 80033ba:	2b00      	cmp	r3, #0
 80033bc:	d0f8      	beq.n	80033b0 <i2c_test+0x3c>
 80033be:	4b4f      	ldr	r3, [pc, #316]	; (80034fc <i2c_test+0x188>)
 80033c0:	8b1b      	ldrh	r3, [r3, #24]
 80033c2:	80fb      	strh	r3, [r7, #6]
 80033c4:	4b4d      	ldr	r3, [pc, #308]	; (80034fc <i2c_test+0x188>)
 80033c6:	8a9b      	ldrh	r3, [r3, #20]
 80033c8:	b29b      	uxth	r3, r3
 80033ca:	4619      	mov	r1, r3
 80033cc:	484d      	ldr	r0, [pc, #308]	; (8003504 <i2c_test+0x190>)
 80033ce:	f7fd fe4b 	bl	8001068 <xprintf>
 80033d2:	4b4a      	ldr	r3, [pc, #296]	; (80034fc <i2c_test+0x188>)
 80033d4:	2200      	movs	r2, #0
 80033d6:	821a      	strh	r2, [r3, #16]
 80033d8:	bf00      	nop
 80033da:	4b48      	ldr	r3, [pc, #288]	; (80034fc <i2c_test+0x188>)
 80033dc:	8a9b      	ldrh	r3, [r3, #20]
 80033de:	b29b      	uxth	r3, r3
 80033e0:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80033e4:	2b00      	cmp	r3, #0
 80033e6:	d0f8      	beq.n	80033da <i2c_test+0x66>
 80033e8:	4b44      	ldr	r3, [pc, #272]	; (80034fc <i2c_test+0x188>)
 80033ea:	8a9b      	ldrh	r3, [r3, #20]
 80033ec:	b29b      	uxth	r3, r3
 80033ee:	4619      	mov	r1, r3
 80033f0:	4845      	ldr	r0, [pc, #276]	; (8003508 <i2c_test+0x194>)
 80033f2:	f7fd fe39 	bl	8001068 <xprintf>
 80033f6:	4a41      	ldr	r2, [pc, #260]	; (80034fc <i2c_test+0x188>)
 80033f8:	4b40      	ldr	r3, [pc, #256]	; (80034fc <i2c_test+0x188>)
 80033fa:	881b      	ldrh	r3, [r3, #0]
 80033fc:	b29b      	uxth	r3, r3
 80033fe:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8003402:	b29b      	uxth	r3, r3
 8003404:	8013      	strh	r3, [r2, #0]
 8003406:	bf00      	nop
 8003408:	4b3c      	ldr	r3, [pc, #240]	; (80034fc <i2c_test+0x188>)
 800340a:	8a9b      	ldrh	r3, [r3, #20]
 800340c:	b29b      	uxth	r3, r3
 800340e:	f003 0301 	and.w	r3, r3, #1
 8003412:	2b00      	cmp	r3, #0
 8003414:	d0f8      	beq.n	8003408 <i2c_test+0x94>
 8003416:	4b39      	ldr	r3, [pc, #228]	; (80034fc <i2c_test+0x188>)
 8003418:	8a9b      	ldrh	r3, [r3, #20]
 800341a:	b29b      	uxth	r3, r3
 800341c:	4619      	mov	r1, r3
 800341e:	4838      	ldr	r0, [pc, #224]	; (8003500 <i2c_test+0x18c>)
 8003420:	f7fd fe22 	bl	8001068 <xprintf>
 8003424:	4b35      	ldr	r3, [pc, #212]	; (80034fc <i2c_test+0x188>)
 8003426:	2295      	movs	r2, #149	; 0x95
 8003428:	821a      	strh	r2, [r3, #16]
 800342a:	bf00      	nop
 800342c:	4b33      	ldr	r3, [pc, #204]	; (80034fc <i2c_test+0x188>)
 800342e:	8a9b      	ldrh	r3, [r3, #20]
 8003430:	b29b      	uxth	r3, r3
 8003432:	f003 0302 	and.w	r3, r3, #2
 8003436:	2b00      	cmp	r3, #0
 8003438:	d0f8      	beq.n	800342c <i2c_test+0xb8>
 800343a:	4b30      	ldr	r3, [pc, #192]	; (80034fc <i2c_test+0x188>)
 800343c:	8a9b      	ldrh	r3, [r3, #20]
 800343e:	b29b      	uxth	r3, r3
 8003440:	4619      	mov	r1, r3
 8003442:	4830      	ldr	r0, [pc, #192]	; (8003504 <i2c_test+0x190>)
 8003444:	f7fd fe10 	bl	8001068 <xprintf>
 8003448:	4a2c      	ldr	r2, [pc, #176]	; (80034fc <i2c_test+0x188>)
 800344a:	4b2c      	ldr	r3, [pc, #176]	; (80034fc <i2c_test+0x188>)
 800344c:	881b      	ldrh	r3, [r3, #0]
 800344e:	b29b      	uxth	r3, r3
 8003450:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8003454:	b29b      	uxth	r3, r3
 8003456:	8013      	strh	r3, [r2, #0]
 8003458:	4a28      	ldr	r2, [pc, #160]	; (80034fc <i2c_test+0x188>)
 800345a:	4b28      	ldr	r3, [pc, #160]	; (80034fc <i2c_test+0x188>)
 800345c:	881b      	ldrh	r3, [r3, #0]
 800345e:	b29b      	uxth	r3, r3
 8003460:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8003464:	b29b      	uxth	r3, r3
 8003466:	8013      	strh	r3, [r2, #0]
 8003468:	4b24      	ldr	r3, [pc, #144]	; (80034fc <i2c_test+0x188>)
 800346a:	8b1b      	ldrh	r3, [r3, #24]
 800346c:	80fb      	strh	r3, [r7, #6]
 800346e:	bf00      	nop
 8003470:	4b22      	ldr	r3, [pc, #136]	; (80034fc <i2c_test+0x188>)
 8003472:	8a9b      	ldrh	r3, [r3, #20]
 8003474:	b29b      	uxth	r3, r3
 8003476:	f003 0304 	and.w	r3, r3, #4
 800347a:	2b00      	cmp	r3, #0
 800347c:	d0f8      	beq.n	8003470 <i2c_test+0xfc>
 800347e:	4b1f      	ldr	r3, [pc, #124]	; (80034fc <i2c_test+0x188>)
 8003480:	8a9b      	ldrh	r3, [r3, #20]
 8003482:	b29b      	uxth	r3, r3
 8003484:	4619      	mov	r1, r3
 8003486:	4821      	ldr	r0, [pc, #132]	; (800350c <i2c_test+0x198>)
 8003488:	f7fd fdee 	bl	8001068 <xprintf>
 800348c:	4a1b      	ldr	r2, [pc, #108]	; (80034fc <i2c_test+0x188>)
 800348e:	4b1b      	ldr	r3, [pc, #108]	; (80034fc <i2c_test+0x188>)
 8003490:	881b      	ldrh	r3, [r3, #0]
 8003492:	b29b      	uxth	r3, r3
 8003494:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8003498:	b29b      	uxth	r3, r3
 800349a:	8013      	strh	r3, [r2, #0]
 800349c:	bf00      	nop
 800349e:	4b17      	ldr	r3, [pc, #92]	; (80034fc <i2c_test+0x188>)
 80034a0:	8a9b      	ldrh	r3, [r3, #20]
 80034a2:	b29b      	uxth	r3, r3
 80034a4:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80034a8:	2b00      	cmp	r3, #0
 80034aa:	d0f8      	beq.n	800349e <i2c_test+0x12a>
 80034ac:	4b13      	ldr	r3, [pc, #76]	; (80034fc <i2c_test+0x188>)
 80034ae:	8a1b      	ldrh	r3, [r3, #16]
 80034b0:	b29b      	uxth	r3, r3
 80034b2:	b2da      	uxtb	r2, r3
 80034b4:	4b16      	ldr	r3, [pc, #88]	; (8003510 <i2c_test+0x19c>)
 80034b6:	701a      	strb	r2, [r3, #0]
 80034b8:	bf00      	nop
 80034ba:	4b10      	ldr	r3, [pc, #64]	; (80034fc <i2c_test+0x188>)
 80034bc:	8a9b      	ldrh	r3, [r3, #20]
 80034be:	b29b      	uxth	r3, r3
 80034c0:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80034c4:	2b00      	cmp	r3, #0
 80034c6:	d0f8      	beq.n	80034ba <i2c_test+0x146>
 80034c8:	4b0c      	ldr	r3, [pc, #48]	; (80034fc <i2c_test+0x188>)
 80034ca:	8a1b      	ldrh	r3, [r3, #16]
 80034cc:	b29b      	uxth	r3, r3
 80034ce:	b2da      	uxtb	r2, r3
 80034d0:	4b0f      	ldr	r3, [pc, #60]	; (8003510 <i2c_test+0x19c>)
 80034d2:	705a      	strb	r2, [r3, #1]
 80034d4:	bf00      	nop
 80034d6:	4b09      	ldr	r3, [pc, #36]	; (80034fc <i2c_test+0x188>)
 80034d8:	8b1b      	ldrh	r3, [r3, #24]
 80034da:	b29b      	uxth	r3, r3
 80034dc:	f003 0302 	and.w	r3, r3, #2
 80034e0:	2b00      	cmp	r3, #0
 80034e2:	d1f8      	bne.n	80034d6 <i2c_test+0x162>
 80034e4:	4b05      	ldr	r3, [pc, #20]	; (80034fc <i2c_test+0x188>)
 80034e6:	8a9b      	ldrh	r3, [r3, #20]
 80034e8:	b29b      	uxth	r3, r3
 80034ea:	4619      	mov	r1, r3
 80034ec:	4809      	ldr	r0, [pc, #36]	; (8003514 <i2c_test+0x1a0>)
 80034ee:	f7fd fdbb 	bl	8001068 <xprintf>
 80034f2:	bf00      	nop
 80034f4:	3708      	adds	r7, #8
 80034f6:	46bd      	mov	sp, r7
 80034f8:	bd80      	pop	{r7, pc}
 80034fa:	bf00      	nop
 80034fc:	40005400 	.word	0x40005400
 8003500:	08003d74 	.word	0x08003d74
 8003504:	08003d94 	.word	0x08003d94
 8003508:	08003db4 	.word	0x08003db4
 800350c:	08003dd8 	.word	0x08003dd8
 8003510:	20002cc0 	.word	0x20002cc0
 8003514:	08003dec 	.word	0x08003dec

08003518 <I2C1_EV_IRQHandler>:
 8003518:	b580      	push	{r7, lr}
 800351a:	af00      	add	r7, sp, #0
 800351c:	4b02      	ldr	r3, [pc, #8]	; (8003528 <I2C1_EV_IRQHandler+0x10>)
 800351e:	681b      	ldr	r3, [r3, #0]
 8003520:	4798      	blx	r3
 8003522:	bf00      	nop
 8003524:	bd80      	pop	{r7, pc}
 8003526:	bf00      	nop
 8003528:	20002cc8 	.word	0x20002cc8

0800352c <I2C1_ER_IRQHandler>:
 800352c:	b480      	push	{r7}
 800352e:	b083      	sub	sp, #12
 8003530:	af00      	add	r7, sp, #0
 8003532:	4b08      	ldr	r3, [pc, #32]	; (8003554 <I2C1_ER_IRQHandler+0x28>)
 8003534:	8a9b      	ldrh	r3, [r3, #20]
 8003536:	80fb      	strh	r3, [r7, #6]
 8003538:	4906      	ldr	r1, [pc, #24]	; (8003554 <I2C1_ER_IRQHandler+0x28>)
 800353a:	4b06      	ldr	r3, [pc, #24]	; (8003554 <I2C1_ER_IRQHandler+0x28>)
 800353c:	8a9b      	ldrh	r3, [r3, #20]
 800353e:	b29a      	uxth	r2, r3
 8003540:	f242 03ff 	movw	r3, #8447	; 0x20ff
 8003544:	4013      	ands	r3, r2
 8003546:	b29b      	uxth	r3, r3
 8003548:	828b      	strh	r3, [r1, #20]
 800354a:	bf00      	nop
 800354c:	370c      	adds	r7, #12
 800354e:	46bd      	mov	sp, r7
 8003550:	bc80      	pop	{r7}
 8003552:	4770      	bx	lr
 8003554:	40005400 	.word	0x40005400

08003558 <btf_conf>:
 8003558:	b480      	push	{r7}
 800355a:	af00      	add	r7, sp, #0
 800355c:	4b10      	ldr	r3, [pc, #64]	; (80035a0 <btf_conf+0x48>)
 800355e:	8a9b      	ldrh	r3, [r3, #20]
 8003560:	b29b      	uxth	r3, r3
 8003562:	f003 0304 	and.w	r3, r3, #4
 8003566:	2b00      	cmp	r3, #0
 8003568:	d016      	beq.n	8003598 <btf_conf+0x40>
 800356a:	4a0d      	ldr	r2, [pc, #52]	; (80035a0 <btf_conf+0x48>)
 800356c:	4b0c      	ldr	r3, [pc, #48]	; (80035a0 <btf_conf+0x48>)
 800356e:	881b      	ldrh	r3, [r3, #0]
 8003570:	b29b      	uxth	r3, r3
 8003572:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8003576:	b29b      	uxth	r3, r3
 8003578:	8013      	strh	r3, [r2, #0]
 800357a:	4b09      	ldr	r3, [pc, #36]	; (80035a0 <btf_conf+0x48>)
 800357c:	8a1b      	ldrh	r3, [r3, #16]
 800357e:	b29b      	uxth	r3, r3
 8003580:	b2da      	uxtb	r2, r3
 8003582:	4b08      	ldr	r3, [pc, #32]	; (80035a4 <btf_conf+0x4c>)
 8003584:	701a      	strb	r2, [r3, #0]
 8003586:	4b06      	ldr	r3, [pc, #24]	; (80035a0 <btf_conf+0x48>)
 8003588:	8a1b      	ldrh	r3, [r3, #16]
 800358a:	b29b      	uxth	r3, r3
 800358c:	b2da      	uxtb	r2, r3
 800358e:	4b05      	ldr	r3, [pc, #20]	; (80035a4 <btf_conf+0x4c>)
 8003590:	705a      	strb	r2, [r3, #1]
 8003592:	4b05      	ldr	r3, [pc, #20]	; (80035a8 <btf_conf+0x50>)
 8003594:	2200      	movs	r2, #0
 8003596:	601a      	str	r2, [r3, #0]
 8003598:	bf00      	nop
 800359a:	46bd      	mov	sp, r7
 800359c:	bc80      	pop	{r7}
 800359e:	4770      	bx	lr
 80035a0:	40005400 	.word	0x40005400
 80035a4:	20002cc0 	.word	0x20002cc0
 80035a8:	20002ccc 	.word	0x20002ccc

080035ac <raddr_conf>:
 80035ac:	b480      	push	{r7}
 80035ae:	af00      	add	r7, sp, #0
 80035b0:	4b0f      	ldr	r3, [pc, #60]	; (80035f0 <raddr_conf+0x44>)
 80035b2:	8a9b      	ldrh	r3, [r3, #20]
 80035b4:	b29b      	uxth	r3, r3
 80035b6:	f003 0302 	and.w	r3, r3, #2
 80035ba:	2b00      	cmp	r3, #0
 80035bc:	d014      	beq.n	80035e8 <raddr_conf+0x3c>
 80035be:	4a0c      	ldr	r2, [pc, #48]	; (80035f0 <raddr_conf+0x44>)
 80035c0:	4b0b      	ldr	r3, [pc, #44]	; (80035f0 <raddr_conf+0x44>)
 80035c2:	881b      	ldrh	r3, [r3, #0]
 80035c4:	b29b      	uxth	r3, r3
 80035c6:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 80035ca:	b29b      	uxth	r3, r3
 80035cc:	8013      	strh	r3, [r2, #0]
 80035ce:	4a08      	ldr	r2, [pc, #32]	; (80035f0 <raddr_conf+0x44>)
 80035d0:	4b07      	ldr	r3, [pc, #28]	; (80035f0 <raddr_conf+0x44>)
 80035d2:	881b      	ldrh	r3, [r3, #0]
 80035d4:	b29b      	uxth	r3, r3
 80035d6:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80035da:	b29b      	uxth	r3, r3
 80035dc:	8013      	strh	r3, [r2, #0]
 80035de:	4b04      	ldr	r3, [pc, #16]	; (80035f0 <raddr_conf+0x44>)
 80035e0:	8b1b      	ldrh	r3, [r3, #24]
 80035e2:	4b04      	ldr	r3, [pc, #16]	; (80035f4 <raddr_conf+0x48>)
 80035e4:	4a04      	ldr	r2, [pc, #16]	; (80035f8 <raddr_conf+0x4c>)
 80035e6:	601a      	str	r2, [r3, #0]
 80035e8:	bf00      	nop
 80035ea:	46bd      	mov	sp, r7
 80035ec:	bc80      	pop	{r7}
 80035ee:	4770      	bx	lr
 80035f0:	40005400 	.word	0x40005400
 80035f4:	20002cc8 	.word	0x20002cc8
 80035f8:	08003559 	.word	0x08003559

080035fc <rsb_conf>:
 80035fc:	b480      	push	{r7}
 80035fe:	af00      	add	r7, sp, #0
 8003600:	4b0a      	ldr	r3, [pc, #40]	; (800362c <rsb_conf+0x30>)
 8003602:	8a9b      	ldrh	r3, [r3, #20]
 8003604:	b29b      	uxth	r3, r3
 8003606:	f003 0301 	and.w	r3, r3, #1
 800360a:	2b00      	cmp	r3, #0
 800360c:	d00a      	beq.n	8003624 <rsb_conf+0x28>
 800360e:	4a07      	ldr	r2, [pc, #28]	; (800362c <rsb_conf+0x30>)
 8003610:	4b07      	ldr	r3, [pc, #28]	; (8003630 <rsb_conf+0x34>)
 8003612:	781b      	ldrb	r3, [r3, #0]
 8003614:	f043 0301 	orr.w	r3, r3, #1
 8003618:	b2db      	uxtb	r3, r3
 800361a:	b29b      	uxth	r3, r3
 800361c:	8213      	strh	r3, [r2, #16]
 800361e:	4b05      	ldr	r3, [pc, #20]	; (8003634 <rsb_conf+0x38>)
 8003620:	4a05      	ldr	r2, [pc, #20]	; (8003638 <rsb_conf+0x3c>)
 8003622:	601a      	str	r2, [r3, #0]
 8003624:	bf00      	nop
 8003626:	46bd      	mov	sp, r7
 8003628:	bc80      	pop	{r7}
 800362a:	4770      	bx	lr
 800362c:	40005400 	.word	0x40005400
 8003630:	2000021e 	.word	0x2000021e
 8003634:	20002cc8 	.word	0x20002cc8
 8003638:	080035ad 	.word	0x080035ad

0800363c <pntr_tx_end>:
 800363c:	b480      	push	{r7}
 800363e:	af00      	add	r7, sp, #0
 8003640:	4b0a      	ldr	r3, [pc, #40]	; (800366c <pntr_tx_end+0x30>)
 8003642:	8a9b      	ldrh	r3, [r3, #20]
 8003644:	b29b      	uxth	r3, r3
 8003646:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800364a:	2b00      	cmp	r3, #0
 800364c:	d00a      	beq.n	8003664 <pntr_tx_end+0x28>
 800364e:	4a07      	ldr	r2, [pc, #28]	; (800366c <pntr_tx_end+0x30>)
 8003650:	4b06      	ldr	r3, [pc, #24]	; (800366c <pntr_tx_end+0x30>)
 8003652:	881b      	ldrh	r3, [r3, #0]
 8003654:	b29b      	uxth	r3, r3
 8003656:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800365a:	b29b      	uxth	r3, r3
 800365c:	8013      	strh	r3, [r2, #0]
 800365e:	4b04      	ldr	r3, [pc, #16]	; (8003670 <pntr_tx_end+0x34>)
 8003660:	4a04      	ldr	r2, [pc, #16]	; (8003674 <pntr_tx_end+0x38>)
 8003662:	601a      	str	r2, [r3, #0]
 8003664:	bf00      	nop
 8003666:	46bd      	mov	sp, r7
 8003668:	bc80      	pop	{r7}
 800366a:	4770      	bx	lr
 800366c:	40005400 	.word	0x40005400
 8003670:	20002cc8 	.word	0x20002cc8
 8003674:	080035fd 	.word	0x080035fd

08003678 <wadr_conf>:
 8003678:	b480      	push	{r7}
 800367a:	af00      	add	r7, sp, #0
 800367c:	4b09      	ldr	r3, [pc, #36]	; (80036a4 <wadr_conf+0x2c>)
 800367e:	8a9b      	ldrh	r3, [r3, #20]
 8003680:	b29b      	uxth	r3, r3
 8003682:	f003 0302 	and.w	r3, r3, #2
 8003686:	2b00      	cmp	r3, #0
 8003688:	d007      	beq.n	800369a <wadr_conf+0x22>
 800368a:	4b06      	ldr	r3, [pc, #24]	; (80036a4 <wadr_conf+0x2c>)
 800368c:	8b1b      	ldrh	r3, [r3, #24]
 800368e:	4b05      	ldr	r3, [pc, #20]	; (80036a4 <wadr_conf+0x2c>)
 8003690:	2200      	movs	r2, #0
 8003692:	821a      	strh	r2, [r3, #16]
 8003694:	4b04      	ldr	r3, [pc, #16]	; (80036a8 <wadr_conf+0x30>)
 8003696:	4a05      	ldr	r2, [pc, #20]	; (80036ac <wadr_conf+0x34>)
 8003698:	601a      	str	r2, [r3, #0]
 800369a:	bf00      	nop
 800369c:	46bd      	mov	sp, r7
 800369e:	bc80      	pop	{r7}
 80036a0:	4770      	bx	lr
 80036a2:	bf00      	nop
 80036a4:	40005400 	.word	0x40005400
 80036a8:	20002cc8 	.word	0x20002cc8
 80036ac:	0800363d 	.word	0x0800363d

080036b0 <sb_conf>:
 80036b0:	b480      	push	{r7}
 80036b2:	af00      	add	r7, sp, #0
 80036b4:	4b09      	ldr	r3, [pc, #36]	; (80036dc <sb_conf+0x2c>)
 80036b6:	8a9b      	ldrh	r3, [r3, #20]
 80036b8:	b29b      	uxth	r3, r3
 80036ba:	f003 0301 	and.w	r3, r3, #1
 80036be:	2b00      	cmp	r3, #0
 80036c0:	d007      	beq.n	80036d2 <sb_conf+0x22>
 80036c2:	4b06      	ldr	r3, [pc, #24]	; (80036dc <sb_conf+0x2c>)
 80036c4:	4a06      	ldr	r2, [pc, #24]	; (80036e0 <sb_conf+0x30>)
 80036c6:	7812      	ldrb	r2, [r2, #0]
 80036c8:	b292      	uxth	r2, r2
 80036ca:	821a      	strh	r2, [r3, #16]
 80036cc:	4b05      	ldr	r3, [pc, #20]	; (80036e4 <sb_conf+0x34>)
 80036ce:	4a06      	ldr	r2, [pc, #24]	; (80036e8 <sb_conf+0x38>)
 80036d0:	601a      	str	r2, [r3, #0]
 80036d2:	bf00      	nop
 80036d4:	46bd      	mov	sp, r7
 80036d6:	bc80      	pop	{r7}
 80036d8:	4770      	bx	lr
 80036da:	bf00      	nop
 80036dc:	40005400 	.word	0x40005400
 80036e0:	2000021e 	.word	0x2000021e
 80036e4:	20002cc8 	.word	0x20002cc8
 80036e8:	08003679 	.word	0x08003679

080036ec <i2c_start>:
 80036ec:	b480      	push	{r7}
 80036ee:	b083      	sub	sp, #12
 80036f0:	af00      	add	r7, sp, #0
 80036f2:	4603      	mov	r3, r0
 80036f4:	71fb      	strb	r3, [r7, #7]
 80036f6:	4a0c      	ldr	r2, [pc, #48]	; (8003728 <i2c_start+0x3c>)
 80036f8:	79fb      	ldrb	r3, [r7, #7]
 80036fa:	7013      	strb	r3, [r2, #0]
 80036fc:	4b0b      	ldr	r3, [pc, #44]	; (800372c <i2c_start+0x40>)
 80036fe:	4a0c      	ldr	r2, [pc, #48]	; (8003730 <i2c_start+0x44>)
 8003700:	601a      	str	r2, [r3, #0]
 8003702:	4a0c      	ldr	r2, [pc, #48]	; (8003734 <i2c_start+0x48>)
 8003704:	4b0b      	ldr	r3, [pc, #44]	; (8003734 <i2c_start+0x48>)
 8003706:	881b      	ldrh	r3, [r3, #0]
 8003708:	b29b      	uxth	r3, r3
 800370a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800370e:	b29b      	uxth	r3, r3
 8003710:	8013      	strh	r3, [r2, #0]
 8003712:	4b09      	ldr	r3, [pc, #36]	; (8003738 <i2c_start+0x4c>)
 8003714:	681b      	ldr	r3, [r3, #0]
 8003716:	3301      	adds	r3, #1
 8003718:	4a07      	ldr	r2, [pc, #28]	; (8003738 <i2c_start+0x4c>)
 800371a:	6013      	str	r3, [r2, #0]
 800371c:	bf00      	nop
 800371e:	370c      	adds	r7, #12
 8003720:	46bd      	mov	sp, r7
 8003722:	bc80      	pop	{r7}
 8003724:	4770      	bx	lr
 8003726:	bf00      	nop
 8003728:	2000021e 	.word	0x2000021e
 800372c:	20002cc8 	.word	0x20002cc8
 8003730:	080036b1 	.word	0x080036b1
 8003734:	40005400 	.word	0x40005400
 8003738:	20002ccc 	.word	0x20002ccc

0800373c <update_attenuator>:
 800373c:	b480      	push	{r7}
 800373e:	b083      	sub	sp, #12
 8003740:	af00      	add	r7, sp, #0
 8003742:	4b21      	ldr	r3, [pc, #132]	; (80037c8 <update_attenuator+0x8c>)
 8003744:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8003746:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 800374a:	330f      	adds	r3, #15
 800374c:	607b      	str	r3, [r7, #4]
 800374e:	687b      	ldr	r3, [r7, #4]
 8003750:	f240 52db 	movw	r2, #1499	; 0x5db
 8003754:	4293      	cmp	r3, r2
 8003756:	d805      	bhi.n	8003764 <update_attenuator+0x28>
 8003758:	4b1c      	ldr	r3, [pc, #112]	; (80037cc <update_attenuator+0x90>)
 800375a:	681b      	ldr	r3, [r3, #0]
 800375c:	1c5a      	adds	r2, r3, #1
 800375e:	491b      	ldr	r1, [pc, #108]	; (80037cc <update_attenuator+0x90>)
 8003760:	600a      	str	r2, [r1, #0]
 8003762:	2b00      	cmp	r3, #0
 8003764:	687b      	ldr	r3, [r7, #4]
 8003766:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 800376a:	d905      	bls.n	8003778 <update_attenuator+0x3c>
 800376c:	4b17      	ldr	r3, [pc, #92]	; (80037cc <update_attenuator+0x90>)
 800376e:	681b      	ldr	r3, [r3, #0]
 8003770:	1e5a      	subs	r2, r3, #1
 8003772:	4916      	ldr	r1, [pc, #88]	; (80037cc <update_attenuator+0x90>)
 8003774:	600a      	str	r2, [r1, #0]
 8003776:	2b00      	cmp	r3, #0
 8003778:	4b14      	ldr	r3, [pc, #80]	; (80037cc <update_attenuator+0x90>)
 800377a:	681b      	ldr	r3, [r3, #0]
 800377c:	2b0a      	cmp	r3, #10
 800377e:	dd03      	ble.n	8003788 <update_attenuator+0x4c>
 8003780:	4b12      	ldr	r3, [pc, #72]	; (80037cc <update_attenuator+0x90>)
 8003782:	220a      	movs	r2, #10
 8003784:	601a      	str	r2, [r3, #0]
 8003786:	bf00      	nop
 8003788:	4b10      	ldr	r3, [pc, #64]	; (80037cc <update_attenuator+0x90>)
 800378a:	681b      	ldr	r3, [r3, #0]
 800378c:	2b00      	cmp	r3, #0
 800378e:	da02      	bge.n	8003796 <update_attenuator+0x5a>
 8003790:	4b0e      	ldr	r3, [pc, #56]	; (80037cc <update_attenuator+0x90>)
 8003792:	2200      	movs	r2, #0
 8003794:	601a      	str	r2, [r3, #0]
 8003796:	4b0e      	ldr	r3, [pc, #56]	; (80037d0 <update_attenuator+0x94>)
 8003798:	695b      	ldr	r3, [r3, #20]
 800379a:	b29b      	uxth	r3, r3
 800379c:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80037a0:	807b      	strh	r3, [r7, #2]
 80037a2:	4b0a      	ldr	r3, [pc, #40]	; (80037cc <update_attenuator+0x90>)
 80037a4:	681b      	ldr	r3, [r3, #0]
 80037a6:	b21b      	sxth	r3, r3
 80037a8:	b2db      	uxtb	r3, r3
 80037aa:	b21a      	sxth	r2, r3
 80037ac:	f9b7 3002 	ldrsh.w	r3, [r7, #2]
 80037b0:	4313      	orrs	r3, r2
 80037b2:	b21b      	sxth	r3, r3
 80037b4:	807b      	strh	r3, [r7, #2]
 80037b6:	4a06      	ldr	r2, [pc, #24]	; (80037d0 <update_attenuator+0x94>)
 80037b8:	887b      	ldrh	r3, [r7, #2]
 80037ba:	6153      	str	r3, [r2, #20]
 80037bc:	bf00      	nop
 80037be:	370c      	adds	r7, #12
 80037c0:	46bd      	mov	sp, r7
 80037c2:	bc80      	pop	{r7}
 80037c4:	4770      	bx	lr
 80037c6:	bf00      	nop
 80037c8:	40012200 	.word	0x40012200
 80037cc:	20002cd0 	.word	0x20002cd0
 80037d0:	40020c00 	.word	0x40020c00

080037d4 <set_attenuator>:
 80037d4:	b480      	push	{r7}
 80037d6:	b085      	sub	sp, #20
 80037d8:	af00      	add	r7, sp, #0
 80037da:	4603      	mov	r3, r0
 80037dc:	80fb      	strh	r3, [r7, #6]
 80037de:	4b0b      	ldr	r3, [pc, #44]	; (800380c <set_attenuator+0x38>)
 80037e0:	695b      	ldr	r3, [r3, #20]
 80037e2:	b29b      	uxth	r3, r3
 80037e4:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80037e8:	81fb      	strh	r3, [r7, #14]
 80037ea:	88fb      	ldrh	r3, [r7, #6]
 80037ec:	b2db      	uxtb	r3, r3
 80037ee:	b29a      	uxth	r2, r3
 80037f0:	89fb      	ldrh	r3, [r7, #14]
 80037f2:	4313      	orrs	r3, r2
 80037f4:	81fb      	strh	r3, [r7, #14]
 80037f6:	4a05      	ldr	r2, [pc, #20]	; (800380c <set_attenuator+0x38>)
 80037f8:	89fb      	ldrh	r3, [r7, #14]
 80037fa:	6153      	str	r3, [r2, #20]
 80037fc:	88fb      	ldrh	r3, [r7, #6]
 80037fe:	4a04      	ldr	r2, [pc, #16]	; (8003810 <set_attenuator+0x3c>)
 8003800:	6013      	str	r3, [r2, #0]
 8003802:	bf00      	nop
 8003804:	3714      	adds	r7, #20
 8003806:	46bd      	mov	sp, r7
 8003808:	bc80      	pop	{r7}
 800380a:	4770      	bx	lr
 800380c:	40020c00 	.word	0x40020c00
 8003810:	20002cd0 	.word	0x20002cd0

08003814 <seg7_tbl>:
 8003814:	b6b31477 34e7e6d4 c7f5f6f7 e1e39763     w......4....c...
 8003824:	253d6349 000a0d64 253d7249 000a0d64     Ic=%d...Ir=%d...
 8003834:	6f727265 64253d72 00000a0d 253d6456     error=%d....Vd=%
 8003844:	000a0d64 7474614b 0d64253d 0000000a     d...Katt=%d.....
 8003854:	253d6449 0d416d64 0000000a 253d6456     Id=%dmA.....Vd=%
 8003864:	64252e64 000a0d56 64253d50 000a0d57     d.%dV...P=%dW...
 8003874:	78616d49 6d64253d 000a0d41 253d6354     Imax=%dmA...Tc=%
 8003884:	000a0d64 253d6a54 000a0d64 00000a0a     d...Tj=%d.......
 8003894:	6c6c6568 000a0d6f 6c383025 00002058     hello...%08lX ..
 80038a4:	32302520 00000058 34302520 00000058      %02X... %04X...
 80038b4:	38302520 0000584c                        %08LX..

080038bc <cos_table>:
 80038bc:	000007d0 000007bd 00000784 00000727     ............'...
 80038cc:	000006ab 00000614 00000567 000004ab     ........g.......
 80038dc:	000003e8 00000325 00000269 000001bc     ....%...i.......
 80038ec:	00000125 000000a9 0000004c 00000013     %.......L.......
 80038fc:	00000000 00000013 0000004c 000000a9     ........L.......
 800390c:	00000125 000001bc 00000269 00000325     %.......i...%...
 800391c:	000003e8 000004ab 00000567 00000614     ........g.......
 800392c:	000006ab 00000727 00000784 000007bd     ....'...........

0800393c <device_additional_info>:
 800393c:	7420794d 20747365 62646f6d 64207375     My test modbus d
 800394c:	63697665 00000065                       evice...

08003954 <proc_PDU_table>:
 8003954:	080026b5 08001f0d 08001fc1 0800244d     .&..........M$..
 8003964:	08002189 08001ce5 08002275 080026b5     .!......u"...&..
 8003974:	080020fd 080026b5 080026b5 080026b5     . ...&...&...&..
 8003984:	080026b5 080026b5 080026b5 08001de9     .&...&...&......
 8003994:	0800233d 08002075 080026b5 080026b5     =#..u ...&...&..
 80039a4:	080026b5 080026b5 080026b5 0800252d     .&...&...&..-%..
 80039b4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 80039c4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 80039d4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 80039e4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 80039f4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a04:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a14:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a24:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a34:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a44:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a54:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a64:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a74:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a84:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003a94:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003aa4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ab4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ac4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ad4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ae4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003af4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b04:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b14:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b24:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b34:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b44:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b54:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b64:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b74:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b84:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003b94:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ba4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003bb4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003bc4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003bd4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003be4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003bf4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c04:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c14:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c24:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c34:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c44:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c54:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c64:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c74:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c84:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003c94:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ca4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003cb4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003cc4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003cd4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003ce4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003cf4:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003d04:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003d14:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003d24:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003d34:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..
 8003d44:	080026b5 080026b5 080026b5 080026b5     .&...&...&...&..

08003d54 <kc>:
 8003d54:	0001d7c4                                ....

08003d58 <kr>:
 8003d58:	00022baa                                .+..

08003d5c <kv>:
 8003d5c:	000537f0                                .7..

08003d60 <ac>:
 8003d60:	0003f74d                                M...

08003d64 <ar>:
 8003d64:	ffdd90e7                                ....

08003d68 <av>:
 8003d68:	0007d396                                ....

08003d6c <temp_sens_addr>:
 8003d6c:	00000086                                ....

08003d70 <Rt>:
 8003d70:	00000011 76276577 65732065 5320646e     ....we've send S
 8003d80:	54524154 206f7420 76616c73 75253a65     TART to slave:%u
 8003d90:	0000000a 76276577 65732065 6120646e     ....we've send a
 8003da0:	65726464 6f742073 616c7320 253a6576     ddres to slave:%
 8003db0:	00000a75 76276577 72772065 20657469     u...we've write 
 8003dc0:	6e696f70 20726574 73206f74 6576616c     pointer to slave
 8003dd0:	0a75253a 00000000 76276577 61682065     :%u.....we've ha
 8003de0:	42206576 253a4654 00000a75 20737562     ve BTF:%u...bus 
 8003df0:	66207369 3a656572 000a7525              is free:%u..

08003dfc <apl602_imax>:
 8003dfc:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003e0c:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003e1c:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003e2c:	0000c350 0000c350 0000c350 0000af3e     P...P...P...>...
 8003e3c:	0000a33e 000098af 00008f53 000086fa     >.......S.......
 8003e4c:	00007f7c 000078bb 0000729d 00006d0c     |....x...r...m..
 8003e5c:	000067f6 0000634c 00005f02 00005b0d     .g..Lc..._...[..
 8003e6c:	00005763 000053fd 000050d4 00004de2     cW...S...P...M..
 8003e7c:	00004b21 0000488c 00004621 000043db     !K...H..!F...C..
 8003e8c:	000041b7 00003fb2 00003dca 00003bfc     .A...?...=...;..
 8003e9c:	00003a47 000038a8 0000371e 000035a8     G:...8...7...5..
 8003eac:	00003443 000032f0 000031ac 00003076     C4...2...1..v0..
 8003ebc:	00002f4f 00002e34 00002d25 00002c21     O/..4...%-..!,..
 8003ecc:	00002b28 00002a39 00002954 00002877     (+..9*..T)..w(..
 8003edc:	000027a3 000026d6 00002611 00002554     .'...&...&..T%..
 8003eec:	0000249d 000023ec 00002341 0000229d     .$...#..A#..."..
 8003efc:	000021fd 00002163 000020ce 0000203e     .!..c!... ..> ..
 8003f0c:	00001fb2 00001f2b 00001ea7 00001e28     ....+.......(...
 8003f1c:	00001dac 00001d34 00001cc0 00001c4f     ....4.......O...
 8003f2c:	00001be1 00001b76 00001b0e 00001aa9     ....v...........
 8003f3c:	00001a46 000019e6 00001989 0000192e     F...............
 8003f4c:	000018d5 0000187f 0000182b 000017d9     ........+.......
 8003f5c:	00001788 0000173a 000016ee 000016a3     ....:...........
 8003f6c:	0000165a 00001613 000015ce 0000158a     Z...............
 8003f7c:	00001547 00001506 000014c7 00001489     G...............
 8003f8c:	0000144c 00001410 000013d6 0000139d     L...............
 8003f9c:	00001365 0000132e 000012f8 000012c4     e...............
 8003fac:	00001290 0000125e 0000122c 000011fc     ....^...,.......
 8003fbc:	000011cc 0000119d 00001170 00001143     ........p...C...
 8003fcc:	00001116 000010eb 000010c1 00001097     ................
 8003fdc:	0000106e 00001045 0000101e 00000ff7     n...E...........
 8003fec:	00000fd1 00000fab 00000f86 00000f62     ............b...
 8003ffc:	00000f3e 00000f1b 00000ef9 00000ed7     >...............
 800400c:	00000eb5 00000e94 00000e74 00000e54     ........t...T...
 800401c:	00000e35 00000e16 00000df8 00000dda     5...............
 800402c:	00000dbd 00000da0 00000d83 00000d67     ............g...
 800403c:	00000d4b 00000d30 00000d15 00000cfb     K...0...........
 800404c:	00000ce1 00000cc7 00000cbb 00000c96     ................
 800405c:	00000c71 00000c4d 00000c2a 00000c07     q...M...*.......
 800406c:	00000be4 00000bc3 00000ba2 00000b81     ................
 800407c:	00000b61 00000b42 00000b23 00000b05     a...B...#.......
 800408c:	00000ae7 00000aca 00000aad 00000a90     ................
 800409c:	00000a74 00000a59 00000a3e 00000a23     t...Y...>...#...
 80040ac:	00000a09 000009ef 000009d6 000009bd     ................
 80040bc:	000009a4 0000098c 00000974 0000095d     ........t...]...
 80040cc:	00000946 0000092f 00000918 00000902     F.../...........
 80040dc:	000008ec 000008d7 000008c2 000008ad     ................
 80040ec:	00000899 00000884 00000870 0000085d     ........p...]...
 80040fc:	00000849 00000836 00000823 00000811     I...6...#.......
 800410c:	000007ff 000007ec 000007db 000007c9     ................
 800411c:	000007b8 000007a7 00000796 00000785     ................
 800412c:	00000775 00000765 00000755 00000745     u...e...U...E...
 800413c:	00000735 00000726 00000717 00000708     5...&...........
 800414c:	000006f9 000006eb 000006dc 000006ce     ................
 800415c:	000006c0 000006b2 000006a4 00000697     ................
 800416c:	0000068a 0000067c 0000066f 00000663     ....|...o...c...
 800417c:	00000656 00000649 0000063d 00000631     V...I...=...1...
 800418c:	00000625 00000619 0000060d 00000601     %...............
 800419c:	000005f6 000005ea 000005df 000005d4     ................
 80041ac:	000005c9 000005be 000005b3 000005a9     ................
 80041bc:	0000059e 00000594 0000058a 0000057f     ................
 80041cc:	00000575 0000056b 00000562 00000558     u...k...b...X...
 80041dc:	0000054e 00000545 0000053b 00000532     N...E...;...2...
 80041ec:	00000529 00000520 00000517 0000050e     )... ...........
 80041fc:	00000505 000004fc 000004f4 000004eb     ................
 800420c:	000004e3 000004db 000004d2 000004ca     ................
 800421c:	000004c2 000004ba 000004b2 000004aa     ................
 800422c:	000004a3 0000049b 00000493 0000048c     ................
 800423c:	00000484 0000047d 00000476 0000046e     ....}...v...n...
 800424c:	00000467 00000460 00000459 00000452     g...`...Y...R...
 800425c:	0000044b 00000444 0000043e 00000437     K...D...>...7...
 800426c:	00000430 0000042a 00000423 0000041d     0...*...#.......
 800427c:	00000417 00000410 0000040a 00000404     ................
 800428c:	000003fe 000003f8 000003f2 000003ec     ................
 800429c:	000003e6 000003e0 000003da 000003cb     ................
 80042ac:	000003c0 000003b6 000003ac 000003a2     ................
 80042bc:	00000399 0000038f 00000386 0000037c     ............|...
 80042cc:	00000373 0000036a 00000361 00000358     s...j...a...X...
 80042dc:	0000034f 00000347 0000033e 00000336     O...G...>...6...
 80042ec:	0000032e 00000325 0000031d 00000315     ....%...........
 80042fc:	0000030e 00000306 000002fe 000002f7     ................
 800430c:	000002ef 000002e8 000002e1 000002d9     ................
 800431c:	000002d2 000002cb 000002c5 000002be     ................
 800432c:	000002b7 000002b0 000002aa 000002a3     ................
 800433c:	0000029d 00000297 00000290 0000028a     ................
 800434c:	00000284 0000027e 00000278 00000272     ....~...x...r...
 800435c:	0000026d 00000267 00000261 0000025c     m...g...a...\...
 800436c:	00000256 00000251 0000024b 00000246     V...Q...K...F...
 800437c:	00000241 0000023b 00000236 00000231     A...;...6...1...
 800438c:	0000022c 00000227 00000222 0000021e     ,...'...".......
 800439c:	00000219 00000214 0000020f 0000020b     ................
 80043ac:	00000206 00000202 000001fd 000001f9     ................
 80043bc:	000001f4 000001f0 000001ec 000001e8     ................
 80043cc:	000001e3 000001df 000001db 000001d7     ................
 80043dc:	000001d3 000001cf 000001cb 000001c8     ................
 80043ec:	000001c4 000001c0 000001bc 000001b9     ................
 80043fc:	000001b5 000001b1 000001ae 000001aa     ................
 800440c:	000001a7 000001a3 000001a0 0000019c     ................
 800441c:	00000199 00000196 00000192 0000018f     ................
 800442c:	0000018c 00000189 00000186 00000183     ................
 800443c:	0000017f 0000017c 00000179 00000176     ....|...y...v...
 800444c:	00000173 00000171 0000016e 0000016b     s...q...n...k...
 800445c:	00000168 00000165 00000162 00000160     h...e...b...`...
 800446c:	0000015d 0000015a 00000158 00000155     ]...Z...X...U...
 800447c:	00000152 00000150 0000014d 0000014b     R...P...M...K...
 800448c:	00000148 00000146 00000143 00000141     H...F...C...A...
 800449c:	0000013e 0000013c 0000013a 00000137     >...<...:...7...
 80044ac:	00000135 00000133 00000130 0000012e     5...3...0.......
 80044bc:	0000012c 0000012a 00000128 00000125     ,...*...(...%...
 80044cc:	00000123 00000121 0000011f 0000011d     #...!...........
 80044dc:	0000011b 00000119 00000117 00000115     ................
 80044ec:	00000113 00000111 0000010f 0000010d     ................
 80044fc:	0000010b 00000109 00000107 00000105     ................
 800450c:	00000104 00000102 00000100 000000fe     ................
 800451c:	000000fc 000000fb 000000f9 000000f7     ................
 800452c:	000000f5 000000f4 000000f2 000000f0     ................
 800453c:	000000ef 000000ed 000000ec 000000ea     ................
 800454c:	000000e8 000000e7 000000e5 000000e4     ................
 800455c:	000000e2 000000e1 000000df 000000de     ................
 800456c:	000000dc 000000db 000000d9 000000d8     ................
 800457c:	000000d6 000000d5 000000d3 000000d2     ................
 800458c:	000000d1 000000cf 000000ce 000000cd     ................
 800459c:	000000cb 000000ca 000000c9 000000c7     ................
 80045ac:	000000c6 000000c5 000000c3 000000c2     ................
 80045bc:	000000c1 000000c0 000000be 000000bd     ................
 80045cc:	000000bc 000000bb 000000ba 000000b9     ................
 80045dc:	000000b7 000000b6 000000b5 000000b4     ................
 80045ec:	000000b3 000000b2 000000b1 000000af     ................
 80045fc:	000000ae 000000ad 000000ac 000000ab     ................
 800460c:	000000aa 000000a9 000000a8 000000a7     ................
 800461c:	000000a6 000000a5 000000a4 000000a3     ................
 800462c:	000000a2 000000a1 000000a0 0000009f     ................
 800463c:	0000009e 0000009d 0000009c 0000009b     ................
 800464c:	0000009a 00000099 00000098 00000098     ................
 800465c:	00000097 00000096 00000095 00000094     ................
 800466c:	00000093 00000092 00000091 00000091     ................
 800467c:	00000090 0000008f 0000008e 0000008d     ................
 800468c:	0000008c 0000008c 0000008b 0000008a     ................
 800469c:	00000089 00000088 00000088 00000087     ................
 80046ac:	00000086 00000085 00000084 00000084     ................
 80046bc:	00000083 00000082 00000081 00000081     ................
 80046cc:	00000080 0000007f 0000007f 0000007e     ............~...
 80046dc:	0000007d 0000007c 0000007c 0000007b     }...|...|...{...
 80046ec:	0000007a 0000007a 00000079 00000078     z...z...y...x...
 80046fc:	00000078 00000077 00000076 00000076     x...w...v...v...
 800470c:	00000075 00000074 00000074 00000073     u...t...t...s...
 800471c:	00000073 00000072 00000071 00000071     s...r...q...q...
 800472c:	00000070 0000006f 0000006f 0000006e     p...o...o...n...
 800473c:	0000006e 0000006d 0000006c 0000006c     n...m...l...l...
 800474c:	0000006b 0000006b 0000006a 00000000     k...k...j.......
