
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 00 02 20 4d 08 00 08 ad 08 00 08 ad 08 00 08     ... M...........
 8000010:	ad 08 00 08 ad 08 00 08 ad 08 00 08 00 00 00 00     ................
	...
 800002c:	ad 08 00 08 ad 08 00 08 00 00 00 00 ad 08 00 08     ................
 800003c:	31 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     1...............
 800004c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800005c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800006c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800007c:	c5 30 00 08 ad 08 00 08 ad 08 00 08 05 31 00 08     .0...........1..
 800008c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800009c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 80000ac:	ad 08 00 08 0d 17 00 08 29 30 00 08 ad 08 00 08     ........)0......
 80000bc:	b1 34 00 08 c1 34 00 08 ad 08 00 08 ad 08 00 08     .4...4..........
 80000cc:	e9 2c 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     .,..............
 80000dc:	81 1a 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 80000ec:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 80000fc:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800010c:	ad 08 00 08 fd 0b 00 08 ad 08 00 08 ad 08 00 08     ................
 800011c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800012c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800013c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800014c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800015c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800016c:	ad 08 00 08 ad 08 00 08 ad 08 00 08 ad 08 00 08     ................
 800017c:	ad 08 00 08 ad 08 00 08 ad 08 00 08                 ............

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
 8000200:	68fa      	ldr	r2, [r7, #12]
 8000202:	4b08      	ldr	r3, [pc, #32]	; (8000224 <display_out+0x9c>)
 8000204:	fba3 1302 	umull	r1, r3, r3, r2
 8000208:	08db      	lsrs	r3, r3, #3
 800020a:	60fb      	str	r3, [r7, #12]
 800020c:	697b      	ldr	r3, [r7, #20]
 800020e:	3301      	adds	r3, #1
 8000210:	617b      	str	r3, [r7, #20]
 8000212:	697b      	ldr	r3, [r7, #20]
 8000214:	2b03      	cmp	r3, #3
 8000216:	ddc5      	ble.n	80001a4 <display_out+0x1c>
 8000218:	371c      	adds	r7, #28
 800021a:	46bd      	mov	sp, r7
 800021c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000220:	4770      	bx	lr
 8000222:	bf00      	nop
 8000224:	cccccccd 	.word	0xcccccccd
 8000228:	0800a628 	.word	0x0800a628
 800022c:	200015c0 	.word	0x200015c0

08000230 <log_channel>:
 8000230:	b590      	push	{r4, r7, lr}
 8000232:	b083      	sub	sp, #12
 8000234:	af00      	add	r7, sp, #0
 8000236:	4b32      	ldr	r3, [pc, #200]	; (8000300 <log_channel+0xd0>)
 8000238:	681b      	ldr	r3, [r3, #0]
 800023a:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 800023e:	0c9b      	lsrs	r3, r3, #18
 8000240:	607b      	str	r3, [r7, #4]
 8000242:	4b30      	ldr	r3, [pc, #192]	; (8000304 <log_channel+0xd4>)
 8000244:	681b      	ldr	r3, [r3, #0]
 8000246:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800024a:	129b      	asrs	r3, r3, #10
 800024c:	482e      	ldr	r0, [pc, #184]	; (8000308 <log_channel+0xd8>)
 800024e:	4619      	mov	r1, r3
 8000250:	f000 fef4 	bl	800103c <xprintf>
 8000254:	4b2d      	ldr	r3, [pc, #180]	; (800030c <log_channel+0xdc>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	482d      	ldr	r0, [pc, #180]	; (8000310 <log_channel+0xe0>)
 800025a:	4619      	mov	r1, r3
 800025c:	f000 feee 	bl	800103c <xprintf>
 8000260:	4b2c      	ldr	r3, [pc, #176]	; (8000314 <log_channel+0xe4>)
 8000262:	681b      	ldr	r3, [r3, #0]
 8000264:	482c      	ldr	r0, [pc, #176]	; (8000318 <log_channel+0xe8>)
 8000266:	4619      	mov	r1, r3
 8000268:	f000 fee8 	bl	800103c <xprintf>
 800026c:	4b2b      	ldr	r3, [pc, #172]	; (800031c <log_channel+0xec>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	0a9b      	lsrs	r3, r3, #10
 8000272:	482b      	ldr	r0, [pc, #172]	; (8000320 <log_channel+0xf0>)
 8000274:	4619      	mov	r1, r3
 8000276:	f000 fee1 	bl	800103c <xprintf>
 800027a:	4b2a      	ldr	r3, [pc, #168]	; (8000324 <log_channel+0xf4>)
 800027c:	681b      	ldr	r3, [r3, #0]
 800027e:	482a      	ldr	r0, [pc, #168]	; (8000328 <log_channel+0xf8>)
 8000280:	4619      	mov	r1, r3
 8000282:	f000 fedb 	bl	800103c <xprintf>
 8000286:	4b29      	ldr	r3, [pc, #164]	; (800032c <log_channel+0xfc>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	4829      	ldr	r0, [pc, #164]	; (8000330 <log_channel+0x100>)
 800028c:	4619      	mov	r1, r3
 800028e:	f000 fed5 	bl	800103c <xprintf>
 8000292:	687a      	ldr	r2, [r7, #4]
 8000294:	4b27      	ldr	r3, [pc, #156]	; (8000334 <log_channel+0x104>)
 8000296:	fba3 1302 	umull	r1, r3, r3, r2
 800029a:	08dc      	lsrs	r4, r3, #3
 800029c:	6879      	ldr	r1, [r7, #4]
 800029e:	4b25      	ldr	r3, [pc, #148]	; (8000334 <log_channel+0x104>)
 80002a0:	fba3 2301 	umull	r2, r3, r3, r1
 80002a4:	08da      	lsrs	r2, r3, #3
 80002a6:	4613      	mov	r3, r2
 80002a8:	009b      	lsls	r3, r3, #2
 80002aa:	4413      	add	r3, r2
 80002ac:	005b      	lsls	r3, r3, #1
 80002ae:	1aca      	subs	r2, r1, r3
 80002b0:	4821      	ldr	r0, [pc, #132]	; (8000338 <log_channel+0x108>)
 80002b2:	4621      	mov	r1, r4
 80002b4:	f000 fec2 	bl	800103c <xprintf>
 80002b8:	4b20      	ldr	r3, [pc, #128]	; (800033c <log_channel+0x10c>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	f503 72fa 	add.w	r2, r3, #500	; 0x1f4
 80002c0:	4b1f      	ldr	r3, [pc, #124]	; (8000340 <log_channel+0x110>)
 80002c2:	fba3 1302 	umull	r1, r3, r3, r2
 80002c6:	099b      	lsrs	r3, r3, #6
 80002c8:	481e      	ldr	r0, [pc, #120]	; (8000344 <log_channel+0x114>)
 80002ca:	4619      	mov	r1, r3
 80002cc:	f000 feb6 	bl	800103c <xprintf>
 80002d0:	4b1d      	ldr	r3, [pc, #116]	; (8000348 <log_channel+0x118>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	481d      	ldr	r0, [pc, #116]	; (800034c <log_channel+0x11c>)
 80002d6:	4619      	mov	r1, r3
 80002d8:	f000 feb0 	bl	800103c <xprintf>
 80002dc:	4b1c      	ldr	r3, [pc, #112]	; (8000350 <log_channel+0x120>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	481c      	ldr	r0, [pc, #112]	; (8000354 <log_channel+0x124>)
 80002e2:	4619      	mov	r1, r3
 80002e4:	f000 feaa 	bl	800103c <xprintf>
 80002e8:	4b1b      	ldr	r3, [pc, #108]	; (8000358 <log_channel+0x128>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	481b      	ldr	r0, [pc, #108]	; (800035c <log_channel+0x12c>)
 80002ee:	4619      	mov	r1, r3
 80002f0:	f000 fea4 	bl	800103c <xprintf>
 80002f4:	481a      	ldr	r0, [pc, #104]	; (8000360 <log_channel+0x130>)
 80002f6:	f000 fea1 	bl	800103c <xprintf>
 80002fa:	370c      	adds	r7, #12
 80002fc:	46bd      	mov	sp, r7
 80002fe:	bd90      	pop	{r4, r7, pc}
 8000300:	20000b6c 	.word	0x20000b6c
 8000304:	200025dc 	.word	0x200025dc
 8000308:	0800a638 	.word	0x0800a638
 800030c:	200035e4 	.word	0x200035e4
 8000310:	0800a640 	.word	0x0800a640
 8000314:	200035f4 	.word	0x200035f4
 8000318:	0800a648 	.word	0x0800a648
 800031c:	200015d4 	.word	0x200015d4
 8000320:	0800a654 	.word	0x0800a654
 8000324:	2000360c 	.word	0x2000360c
 8000328:	0800a65c 	.word	0x0800a65c
 800032c:	20000b70 	.word	0x20000b70
 8000330:	0800a668 	.word	0x0800a668
 8000334:	cccccccd 	.word	0xcccccccd
 8000338:	0800a674 	.word	0x0800a674
 800033c:	20000b74 	.word	0x20000b74
 8000340:	10624dd3 	.word	0x10624dd3
 8000344:	0800a680 	.word	0x0800a680
 8000348:	20000b68 	.word	0x20000b68
 800034c:	0800a688 	.word	0x0800a688
 8000350:	200035f8 	.word	0x200035f8
 8000354:	0800a694 	.word	0x0800a694
 8000358:	20000b78 	.word	0x20000b78
 800035c:	0800a69c 	.word	0x0800a69c
 8000360:	0800a6a4 	.word	0x0800a6a4

08000364 <main>:
 8000364:	b5b0      	push	{r4, r5, r7, lr}
 8000366:	b0d6      	sub	sp, #344	; 0x158
 8000368:	af00      	add	r7, sp, #0
 800036a:	2300      	movs	r3, #0
 800036c:	f887 3157 	strb.w	r3, [r7, #343]	; 0x157
 8000370:	2300      	movs	r3, #0
 8000372:	f8c7 3150 	str.w	r3, [r7, #336]	; 0x150
 8000376:	2300      	movs	r3, #0
 8000378:	f8c7 314c 	str.w	r3, [r7, #332]	; 0x14c
 800037c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000380:	f8a7 314a 	strh.w	r3, [r7, #330]	; 0x14a
 8000384:	2300      	movs	r3, #0
 8000386:	f8a7 3148 	strh.w	r3, [r7, #328]	; 0x148
 800038a:	2364      	movs	r3, #100	; 0x64
 800038c:	f8a7 3146 	strh.w	r3, [r7, #326]	; 0x146
 8000390:	2300      	movs	r3, #0
 8000392:	f8c7 3140 	str.w	r3, [r7, #320]	; 0x140
 8000396:	f107 0220 	add.w	r2, r7, #32
 800039a:	4b15      	ldr	r3, [pc, #84]	; (80003f0 <main+0x8c>)
 800039c:	4614      	mov	r4, r2
 800039e:	461d      	mov	r5, r3
 80003a0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 80003a2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 80003a4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 80003a8:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
 80003ac:	f000 f9b2 	bl	8000714 <system_init>
 80003b0:	f000 fa98 	bl	80008e4 <uart_init>
 80003b4:	4b0f      	ldr	r3, [pc, #60]	; (80003f4 <main+0x90>)
 80003b6:	4a10      	ldr	r2, [pc, #64]	; (80003f8 <main+0x94>)
 80003b8:	601a      	str	r2, [r3, #0]
 80003ba:	4810      	ldr	r0, [pc, #64]	; (80003fc <main+0x98>)
 80003bc:	f004 fcd0 	bl	8004d60 <printf>
 80003c0:	480f      	ldr	r0, [pc, #60]	; (8000400 <main+0x9c>)
 80003c2:	a309      	add	r3, pc, #36	; (adr r3, 80003e8 <main+0x84>)
 80003c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80003c8:	f004 fcca 	bl	8004d60 <printf>
 80003cc:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80003d0:	f000 fa18 	bl	8000804 <sleep>
 80003d4:	480a      	ldr	r0, [pc, #40]	; (8000400 <main+0x9c>)
 80003d6:	a304      	add	r3, pc, #16	; (adr r3, 80003e8 <main+0x84>)
 80003d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80003dc:	f004 fcc0 	bl	8004d60 <printf>
 80003e0:	e7f4      	b.n	80003cc <main+0x68>
 80003e2:	bf00      	nop
 80003e4:	f3af 8000 	nop.w
 80003e8:	eb851eb8 	.word	0xeb851eb8
 80003ec:	3fbeb851 	.word	0x3fbeb851
 80003f0:	0800a6bc 	.word	0x0800a6bc
 80003f4:	20001390 	.word	0x20001390
 80003f8:	080009c9 	.word	0x080009c9
 80003fc:	0800a6a8 	.word	0x0800a6a8
 8000400:	0800a6b0 	.word	0x0800a6b0
 8000404:	f3af 8000 	nop.w

08000408 <NVIC_SetPriorityGrouping>:
 8000408:	b480      	push	{r7}
 800040a:	b085      	sub	sp, #20
 800040c:	af00      	add	r7, sp, #0
 800040e:	6078      	str	r0, [r7, #4]
 8000410:	687b      	ldr	r3, [r7, #4]
 8000412:	f003 0307 	and.w	r3, r3, #7
 8000416:	60fb      	str	r3, [r7, #12]
 8000418:	4b0c      	ldr	r3, [pc, #48]	; (800044c <NVIC_SetPriorityGrouping+0x44>)
 800041a:	68db      	ldr	r3, [r3, #12]
 800041c:	60bb      	str	r3, [r7, #8]
 800041e:	68ba      	ldr	r2, [r7, #8]
 8000420:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000424:	4013      	ands	r3, r2
 8000426:	60bb      	str	r3, [r7, #8]
 8000428:	68fb      	ldr	r3, [r7, #12]
 800042a:	021a      	lsls	r2, r3, #8
 800042c:	68bb      	ldr	r3, [r7, #8]
 800042e:	4313      	orrs	r3, r2
 8000430:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000434:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000438:	60bb      	str	r3, [r7, #8]
 800043a:	4b04      	ldr	r3, [pc, #16]	; (800044c <NVIC_SetPriorityGrouping+0x44>)
 800043c:	68ba      	ldr	r2, [r7, #8]
 800043e:	60da      	str	r2, [r3, #12]
 8000440:	3714      	adds	r7, #20
 8000442:	46bd      	mov	sp, r7
 8000444:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000448:	4770      	bx	lr
 800044a:	bf00      	nop
 800044c:	e000ed00 	.word	0xe000ed00

08000450 <NVIC_SetPriority>:
 8000450:	b480      	push	{r7}
 8000452:	b083      	sub	sp, #12
 8000454:	af00      	add	r7, sp, #0
 8000456:	4603      	mov	r3, r0
 8000458:	6039      	str	r1, [r7, #0]
 800045a:	71fb      	strb	r3, [r7, #7]
 800045c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000460:	2b00      	cmp	r3, #0
 8000462:	da0b      	bge.n	800047c <NVIC_SetPriority+0x2c>
 8000464:	490d      	ldr	r1, [pc, #52]	; (800049c <NVIC_SetPriority+0x4c>)
 8000466:	79fb      	ldrb	r3, [r7, #7]
 8000468:	f003 030f 	and.w	r3, r3, #15
 800046c:	3b04      	subs	r3, #4
 800046e:	683a      	ldr	r2, [r7, #0]
 8000470:	b2d2      	uxtb	r2, r2
 8000472:	0112      	lsls	r2, r2, #4
 8000474:	b2d2      	uxtb	r2, r2
 8000476:	440b      	add	r3, r1
 8000478:	761a      	strb	r2, [r3, #24]
 800047a:	e009      	b.n	8000490 <NVIC_SetPriority+0x40>
 800047c:	4908      	ldr	r1, [pc, #32]	; (80004a0 <NVIC_SetPriority+0x50>)
 800047e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000482:	683a      	ldr	r2, [r7, #0]
 8000484:	b2d2      	uxtb	r2, r2
 8000486:	0112      	lsls	r2, r2, #4
 8000488:	b2d2      	uxtb	r2, r2
 800048a:	440b      	add	r3, r1
 800048c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8000490:	370c      	adds	r7, #12
 8000492:	46bd      	mov	sp, r7
 8000494:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000498:	4770      	bx	lr
 800049a:	bf00      	nop
 800049c:	e000ed00 	.word	0xe000ed00
 80004a0:	e000e100 	.word	0xe000e100

080004a4 <clock_PLL>:
 80004a4:	b480      	push	{r7}
 80004a6:	af00      	add	r7, sp, #0
 80004a8:	4b5b      	ldr	r3, [pc, #364]	; (8000618 <clock_PLL+0x174>)
 80004aa:	4a5b      	ldr	r2, [pc, #364]	; (8000618 <clock_PLL+0x174>)
 80004ac:	6812      	ldr	r2, [r2, #0]
 80004ae:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80004b2:	601a      	str	r2, [r3, #0]
 80004b4:	bf00      	nop
 80004b6:	4b58      	ldr	r3, [pc, #352]	; (8000618 <clock_PLL+0x174>)
 80004b8:	681b      	ldr	r3, [r3, #0]
 80004ba:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80004be:	2b00      	cmp	r3, #0
 80004c0:	d0f9      	beq.n	80004b6 <clock_PLL+0x12>
 80004c2:	4b55      	ldr	r3, [pc, #340]	; (8000618 <clock_PLL+0x174>)
 80004c4:	4a54      	ldr	r2, [pc, #336]	; (8000618 <clock_PLL+0x174>)
 80004c6:	6812      	ldr	r2, [r2, #0]
 80004c8:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80004cc:	601a      	str	r2, [r3, #0]
 80004ce:	4a52      	ldr	r2, [pc, #328]	; (8000618 <clock_PLL+0x174>)
 80004d0:	4b51      	ldr	r3, [pc, #324]	; (8000618 <clock_PLL+0x174>)
 80004d2:	6859      	ldr	r1, [r3, #4]
 80004d4:	4b51      	ldr	r3, [pc, #324]	; (800061c <clock_PLL+0x178>)
 80004d6:	400b      	ands	r3, r1
 80004d8:	6053      	str	r3, [r2, #4]
 80004da:	4b4f      	ldr	r3, [pc, #316]	; (8000618 <clock_PLL+0x174>)
 80004dc:	4a4e      	ldr	r2, [pc, #312]	; (8000618 <clock_PLL+0x174>)
 80004de:	6852      	ldr	r2, [r2, #4]
 80004e0:	f442 42a8 	orr.w	r2, r2, #21504	; 0x5400
 80004e4:	605a      	str	r2, [r3, #4]
 80004e6:	4b4c      	ldr	r3, [pc, #304]	; (8000618 <clock_PLL+0x174>)
 80004e8:	4a4b      	ldr	r2, [pc, #300]	; (8000618 <clock_PLL+0x174>)
 80004ea:	6852      	ldr	r2, [r2, #4]
 80004ec:	f042 0208 	orr.w	r2, r2, #8
 80004f0:	605a      	str	r2, [r3, #4]
 80004f2:	4b49      	ldr	r3, [pc, #292]	; (8000618 <clock_PLL+0x174>)
 80004f4:	4a48      	ldr	r2, [pc, #288]	; (8000618 <clock_PLL+0x174>)
 80004f6:	6852      	ldr	r2, [r2, #4]
 80004f8:	605a      	str	r2, [r3, #4]
 80004fa:	4b47      	ldr	r3, [pc, #284]	; (8000618 <clock_PLL+0x174>)
 80004fc:	4a46      	ldr	r2, [pc, #280]	; (8000618 <clock_PLL+0x174>)
 80004fe:	6852      	ldr	r2, [r2, #4]
 8000500:	f042 62e0 	orr.w	r2, r2, #117440512	; 0x7000000
 8000504:	605a      	str	r2, [r3, #4]
 8000506:	4b44      	ldr	r3, [pc, #272]	; (8000618 <clock_PLL+0x174>)
 8000508:	4a43      	ldr	r2, [pc, #268]	; (8000618 <clock_PLL+0x174>)
 800050a:	6852      	ldr	r2, [r2, #4]
 800050c:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 8000510:	605a      	str	r2, [r3, #4]
 8000512:	4b41      	ldr	r3, [pc, #260]	; (8000618 <clock_PLL+0x174>)
 8000514:	4a40      	ldr	r2, [pc, #256]	; (8000618 <clock_PLL+0x174>)
 8000516:	6812      	ldr	r2, [r2, #0]
 8000518:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800051c:	601a      	str	r2, [r3, #0]
 800051e:	bf00      	nop
 8000520:	4b3d      	ldr	r3, [pc, #244]	; (8000618 <clock_PLL+0x174>)
 8000522:	681b      	ldr	r3, [r3, #0]
 8000524:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000528:	2b00      	cmp	r3, #0
 800052a:	d0f9      	beq.n	8000520 <clock_PLL+0x7c>
 800052c:	4b3c      	ldr	r3, [pc, #240]	; (8000620 <clock_PLL+0x17c>)
 800052e:	4a3c      	ldr	r2, [pc, #240]	; (8000620 <clock_PLL+0x17c>)
 8000530:	6812      	ldr	r2, [r2, #0]
 8000532:	f022 020f 	bic.w	r2, r2, #15
 8000536:	601a      	str	r2, [r3, #0]
 8000538:	4a39      	ldr	r2, [pc, #228]	; (8000620 <clock_PLL+0x17c>)
 800053a:	4b39      	ldr	r3, [pc, #228]	; (8000620 <clock_PLL+0x17c>)
 800053c:	681b      	ldr	r3, [r3, #0]
 800053e:	f443 7382 	orr.w	r3, r3, #260	; 0x104
 8000542:	f043 0301 	orr.w	r3, r3, #1
 8000546:	6013      	str	r3, [r2, #0]
 8000548:	4a33      	ldr	r2, [pc, #204]	; (8000618 <clock_PLL+0x174>)
 800054a:	4b33      	ldr	r3, [pc, #204]	; (8000618 <clock_PLL+0x174>)
 800054c:	689b      	ldr	r3, [r3, #8]
 800054e:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 8000552:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000556:	6093      	str	r3, [r2, #8]
 8000558:	4b2f      	ldr	r3, [pc, #188]	; (8000618 <clock_PLL+0x174>)
 800055a:	4a2f      	ldr	r2, [pc, #188]	; (8000618 <clock_PLL+0x174>)
 800055c:	6892      	ldr	r2, [r2, #8]
 800055e:	f442 4214 	orr.w	r2, r2, #37888	; 0x9400
 8000562:	609a      	str	r2, [r3, #8]
 8000564:	4b2c      	ldr	r3, [pc, #176]	; (8000618 <clock_PLL+0x174>)
 8000566:	4a2c      	ldr	r2, [pc, #176]	; (8000618 <clock_PLL+0x174>)
 8000568:	6892      	ldr	r2, [r2, #8]
 800056a:	f022 0203 	bic.w	r2, r2, #3
 800056e:	609a      	str	r2, [r3, #8]
 8000570:	4b29      	ldr	r3, [pc, #164]	; (8000618 <clock_PLL+0x174>)
 8000572:	4a29      	ldr	r2, [pc, #164]	; (8000618 <clock_PLL+0x174>)
 8000574:	6892      	ldr	r2, [r2, #8]
 8000576:	f042 0202 	orr.w	r2, r2, #2
 800057a:	609a      	str	r2, [r3, #8]
 800057c:	bf00      	nop
 800057e:	4b26      	ldr	r3, [pc, #152]	; (8000618 <clock_PLL+0x174>)
 8000580:	689b      	ldr	r3, [r3, #8]
 8000582:	f003 0308 	and.w	r3, r3, #8
 8000586:	2b00      	cmp	r3, #0
 8000588:	d0f9      	beq.n	800057e <clock_PLL+0xda>
 800058a:	4b23      	ldr	r3, [pc, #140]	; (8000618 <clock_PLL+0x174>)
 800058c:	4a22      	ldr	r2, [pc, #136]	; (8000618 <clock_PLL+0x174>)
 800058e:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000590:	f042 0205 	orr.w	r2, r2, #5
 8000594:	631a      	str	r2, [r3, #48]	; 0x30
 8000596:	4b23      	ldr	r3, [pc, #140]	; (8000624 <clock_PLL+0x180>)
 8000598:	4a22      	ldr	r2, [pc, #136]	; (8000624 <clock_PLL+0x180>)
 800059a:	6812      	ldr	r2, [r2, #0]
 800059c:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 80005a0:	601a      	str	r2, [r3, #0]
 80005a2:	4b20      	ldr	r3, [pc, #128]	; (8000624 <clock_PLL+0x180>)
 80005a4:	4a1f      	ldr	r2, [pc, #124]	; (8000624 <clock_PLL+0x180>)
 80005a6:	6812      	ldr	r2, [r2, #0]
 80005a8:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 80005ac:	601a      	str	r2, [r3, #0]
 80005ae:	4b1e      	ldr	r3, [pc, #120]	; (8000628 <clock_PLL+0x184>)
 80005b0:	4a1d      	ldr	r2, [pc, #116]	; (8000628 <clock_PLL+0x184>)
 80005b2:	6812      	ldr	r2, [r2, #0]
 80005b4:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 80005b8:	601a      	str	r2, [r3, #0]
 80005ba:	4b1b      	ldr	r3, [pc, #108]	; (8000628 <clock_PLL+0x184>)
 80005bc:	4a1a      	ldr	r2, [pc, #104]	; (8000628 <clock_PLL+0x184>)
 80005be:	6812      	ldr	r2, [r2, #0]
 80005c0:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 80005c4:	601a      	str	r2, [r3, #0]
 80005c6:	4b17      	ldr	r3, [pc, #92]	; (8000624 <clock_PLL+0x180>)
 80005c8:	4a16      	ldr	r2, [pc, #88]	; (8000624 <clock_PLL+0x180>)
 80005ca:	6892      	ldr	r2, [r2, #8]
 80005cc:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 80005d0:	609a      	str	r2, [r3, #8]
 80005d2:	4b15      	ldr	r3, [pc, #84]	; (8000628 <clock_PLL+0x184>)
 80005d4:	4a14      	ldr	r2, [pc, #80]	; (8000628 <clock_PLL+0x184>)
 80005d6:	6892      	ldr	r2, [r2, #8]
 80005d8:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 80005dc:	609a      	str	r2, [r3, #8]
 80005de:	4b0e      	ldr	r3, [pc, #56]	; (8000618 <clock_PLL+0x174>)
 80005e0:	4a0d      	ldr	r2, [pc, #52]	; (8000618 <clock_PLL+0x174>)
 80005e2:	6892      	ldr	r2, [r2, #8]
 80005e4:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 80005e8:	609a      	str	r2, [r3, #8]
 80005ea:	4b0b      	ldr	r3, [pc, #44]	; (8000618 <clock_PLL+0x174>)
 80005ec:	4a0a      	ldr	r2, [pc, #40]	; (8000618 <clock_PLL+0x174>)
 80005ee:	6892      	ldr	r2, [r2, #8]
 80005f0:	f442 02c0 	orr.w	r2, r2, #6291456	; 0x600000
 80005f4:	609a      	str	r2, [r3, #8]
 80005f6:	4b08      	ldr	r3, [pc, #32]	; (8000618 <clock_PLL+0x174>)
 80005f8:	4a07      	ldr	r2, [pc, #28]	; (8000618 <clock_PLL+0x174>)
 80005fa:	6892      	ldr	r2, [r2, #8]
 80005fc:	f022 527c 	bic.w	r2, r2, #1056964608	; 0x3f000000
 8000600:	609a      	str	r2, [r3, #8]
 8000602:	4b05      	ldr	r3, [pc, #20]	; (8000618 <clock_PLL+0x174>)
 8000604:	4a04      	ldr	r2, [pc, #16]	; (8000618 <clock_PLL+0x174>)
 8000606:	6892      	ldr	r2, [r2, #8]
 8000608:	f042 5258 	orr.w	r2, r2, #905969664	; 0x36000000
 800060c:	609a      	str	r2, [r3, #8]
 800060e:	46bd      	mov	sp, r7
 8000610:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000614:	4770      	bx	lr
 8000616:	bf00      	nop
 8000618:	40023800 	.word	0x40023800
 800061c:	f0fc8000 	.word	0xf0fc8000
 8000620:	40023c00 	.word	0x40023c00
 8000624:	40020000 	.word	0x40020000
 8000628:	40020800 	.word	0x40020800

0800062c <clock_HSE>:
 800062c:	b480      	push	{r7}
 800062e:	af00      	add	r7, sp, #0
 8000630:	4b2c      	ldr	r3, [pc, #176]	; (80006e4 <clock_HSE+0xb8>)
 8000632:	4a2c      	ldr	r2, [pc, #176]	; (80006e4 <clock_HSE+0xb8>)
 8000634:	6812      	ldr	r2, [r2, #0]
 8000636:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800063a:	601a      	str	r2, [r3, #0]
 800063c:	bf00      	nop
 800063e:	4b29      	ldr	r3, [pc, #164]	; (80006e4 <clock_HSE+0xb8>)
 8000640:	681b      	ldr	r3, [r3, #0]
 8000642:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000646:	2b00      	cmp	r3, #0
 8000648:	d0f9      	beq.n	800063e <clock_HSE+0x12>
 800064a:	4b26      	ldr	r3, [pc, #152]	; (80006e4 <clock_HSE+0xb8>)
 800064c:	4a25      	ldr	r2, [pc, #148]	; (80006e4 <clock_HSE+0xb8>)
 800064e:	6892      	ldr	r2, [r2, #8]
 8000650:	f022 0203 	bic.w	r2, r2, #3
 8000654:	609a      	str	r2, [r3, #8]
 8000656:	4b23      	ldr	r3, [pc, #140]	; (80006e4 <clock_HSE+0xb8>)
 8000658:	4a22      	ldr	r2, [pc, #136]	; (80006e4 <clock_HSE+0xb8>)
 800065a:	6892      	ldr	r2, [r2, #8]
 800065c:	f042 0201 	orr.w	r2, r2, #1
 8000660:	609a      	str	r2, [r3, #8]
 8000662:	bf00      	nop
 8000664:	4b1f      	ldr	r3, [pc, #124]	; (80006e4 <clock_HSE+0xb8>)
 8000666:	689b      	ldr	r3, [r3, #8]
 8000668:	f003 0304 	and.w	r3, r3, #4
 800066c:	2b00      	cmp	r3, #0
 800066e:	d0f9      	beq.n	8000664 <clock_HSE+0x38>
 8000670:	4b1c      	ldr	r3, [pc, #112]	; (80006e4 <clock_HSE+0xb8>)
 8000672:	4a1c      	ldr	r2, [pc, #112]	; (80006e4 <clock_HSE+0xb8>)
 8000674:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000676:	f042 0205 	orr.w	r2, r2, #5
 800067a:	631a      	str	r2, [r3, #48]	; 0x30
 800067c:	4b1a      	ldr	r3, [pc, #104]	; (80006e8 <clock_HSE+0xbc>)
 800067e:	4a1a      	ldr	r2, [pc, #104]	; (80006e8 <clock_HSE+0xbc>)
 8000680:	6812      	ldr	r2, [r2, #0]
 8000682:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8000686:	601a      	str	r2, [r3, #0]
 8000688:	4b17      	ldr	r3, [pc, #92]	; (80006e8 <clock_HSE+0xbc>)
 800068a:	4a17      	ldr	r2, [pc, #92]	; (80006e8 <clock_HSE+0xbc>)
 800068c:	6812      	ldr	r2, [r2, #0]
 800068e:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8000692:	601a      	str	r2, [r3, #0]
 8000694:	4b15      	ldr	r3, [pc, #84]	; (80006ec <clock_HSE+0xc0>)
 8000696:	4a15      	ldr	r2, [pc, #84]	; (80006ec <clock_HSE+0xc0>)
 8000698:	6812      	ldr	r2, [r2, #0]
 800069a:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 800069e:	601a      	str	r2, [r3, #0]
 80006a0:	4b12      	ldr	r3, [pc, #72]	; (80006ec <clock_HSE+0xc0>)
 80006a2:	4a12      	ldr	r2, [pc, #72]	; (80006ec <clock_HSE+0xc0>)
 80006a4:	6812      	ldr	r2, [r2, #0]
 80006a6:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 80006aa:	601a      	str	r2, [r3, #0]
 80006ac:	4b0e      	ldr	r3, [pc, #56]	; (80006e8 <clock_HSE+0xbc>)
 80006ae:	4a0e      	ldr	r2, [pc, #56]	; (80006e8 <clock_HSE+0xbc>)
 80006b0:	6892      	ldr	r2, [r2, #8]
 80006b2:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 80006b6:	609a      	str	r2, [r3, #8]
 80006b8:	4b0c      	ldr	r3, [pc, #48]	; (80006ec <clock_HSE+0xc0>)
 80006ba:	4a0c      	ldr	r2, [pc, #48]	; (80006ec <clock_HSE+0xc0>)
 80006bc:	6892      	ldr	r2, [r2, #8]
 80006be:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 80006c2:	609a      	str	r2, [r3, #8]
 80006c4:	4b07      	ldr	r3, [pc, #28]	; (80006e4 <clock_HSE+0xb8>)
 80006c6:	4a07      	ldr	r2, [pc, #28]	; (80006e4 <clock_HSE+0xb8>)
 80006c8:	6892      	ldr	r2, [r2, #8]
 80006ca:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 80006ce:	609a      	str	r2, [r3, #8]
 80006d0:	4b04      	ldr	r3, [pc, #16]	; (80006e4 <clock_HSE+0xb8>)
 80006d2:	4a04      	ldr	r2, [pc, #16]	; (80006e4 <clock_HSE+0xb8>)
 80006d4:	6892      	ldr	r2, [r2, #8]
 80006d6:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 80006da:	609a      	str	r2, [r3, #8]
 80006dc:	46bd      	mov	sp, r7
 80006de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006e2:	4770      	bx	lr
 80006e4:	40023800 	.word	0x40023800
 80006e8:	40020000 	.word	0x40020000
 80006ec:	40020800 	.word	0x40020800

080006f0 <systimer_init>:
 80006f0:	b480      	push	{r7}
 80006f2:	af00      	add	r7, sp, #0
 80006f4:	4b06      	ldr	r3, [pc, #24]	; (8000710 <systimer_init+0x20>)
 80006f6:	f245 2207 	movw	r2, #20999	; 0x5207
 80006fa:	605a      	str	r2, [r3, #4]
 80006fc:	4b04      	ldr	r3, [pc, #16]	; (8000710 <systimer_init+0x20>)
 80006fe:	2200      	movs	r2, #0
 8000700:	609a      	str	r2, [r3, #8]
 8000702:	4b03      	ldr	r3, [pc, #12]	; (8000710 <systimer_init+0x20>)
 8000704:	2203      	movs	r2, #3
 8000706:	601a      	str	r2, [r3, #0]
 8000708:	46bd      	mov	sp, r7
 800070a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800070e:	4770      	bx	lr
 8000710:	e000e010 	.word	0xe000e010

08000714 <system_init>:
 8000714:	b580      	push	{r7, lr}
 8000716:	af00      	add	r7, sp, #0
 8000718:	f7ff fec4 	bl	80004a4 <clock_PLL>
 800071c:	f7ff ffe8 	bl	80006f0 <systimer_init>
 8000720:	4b33      	ldr	r3, [pc, #204]	; (80007f0 <system_init+0xdc>)
 8000722:	4a33      	ldr	r2, [pc, #204]	; (80007f0 <system_init+0xdc>)
 8000724:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000726:	f042 0201 	orr.w	r2, r2, #1
 800072a:	631a      	str	r2, [r3, #48]	; 0x30
 800072c:	4b31      	ldr	r3, [pc, #196]	; (80007f4 <system_init+0xe0>)
 800072e:	4a31      	ldr	r2, [pc, #196]	; (80007f4 <system_init+0xe0>)
 8000730:	6812      	ldr	r2, [r2, #0]
 8000732:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000736:	601a      	str	r2, [r3, #0]
 8000738:	4b2e      	ldr	r3, [pc, #184]	; (80007f4 <system_init+0xe0>)
 800073a:	4a2e      	ldr	r2, [pc, #184]	; (80007f4 <system_init+0xe0>)
 800073c:	6812      	ldr	r2, [r2, #0]
 800073e:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8000742:	601a      	str	r2, [r3, #0]
 8000744:	4b2a      	ldr	r3, [pc, #168]	; (80007f0 <system_init+0xdc>)
 8000746:	4a2a      	ldr	r2, [pc, #168]	; (80007f0 <system_init+0xdc>)
 8000748:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800074a:	f042 0210 	orr.w	r2, r2, #16
 800074e:	631a      	str	r2, [r3, #48]	; 0x30
 8000750:	4b29      	ldr	r3, [pc, #164]	; (80007f8 <system_init+0xe4>)
 8000752:	4a29      	ldr	r2, [pc, #164]	; (80007f8 <system_init+0xe4>)
 8000754:	6812      	ldr	r2, [r2, #0]
 8000756:	f422 227c 	bic.w	r2, r2, #1032192	; 0xfc000
 800075a:	601a      	str	r2, [r3, #0]
 800075c:	4b26      	ldr	r3, [pc, #152]	; (80007f8 <system_init+0xe4>)
 800075e:	4a26      	ldr	r2, [pc, #152]	; (80007f8 <system_init+0xe4>)
 8000760:	6812      	ldr	r2, [r2, #0]
 8000762:	f442 22a8 	orr.w	r2, r2, #344064	; 0x54000
 8000766:	601a      	str	r2, [r3, #0]
 8000768:	4b21      	ldr	r3, [pc, #132]	; (80007f0 <system_init+0xdc>)
 800076a:	4a21      	ldr	r2, [pc, #132]	; (80007f0 <system_init+0xdc>)
 800076c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800076e:	f042 0208 	orr.w	r2, r2, #8
 8000772:	631a      	str	r2, [r3, #48]	; 0x30
 8000774:	4a21      	ldr	r2, [pc, #132]	; (80007fc <system_init+0xe8>)
 8000776:	4b21      	ldr	r3, [pc, #132]	; (80007fc <system_init+0xe8>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	0c1b      	lsrs	r3, r3, #16
 800077c:	041b      	lsls	r3, r3, #16
 800077e:	6013      	str	r3, [r2, #0]
 8000780:	4a1e      	ldr	r2, [pc, #120]	; (80007fc <system_init+0xe8>)
 8000782:	4b1e      	ldr	r3, [pc, #120]	; (80007fc <system_init+0xe8>)
 8000784:	681b      	ldr	r3, [r3, #0]
 8000786:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 800078a:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 800078e:	6013      	str	r3, [r2, #0]
 8000790:	2000      	movs	r0, #0
 8000792:	f7ff fe39 	bl	8000408 <NVIC_SetPriorityGrouping>
 8000796:	2034      	movs	r0, #52	; 0x34
 8000798:	2106      	movs	r1, #6
 800079a:	f7ff fe59 	bl	8000450 <NVIC_SetPriority>
 800079e:	2027      	movs	r0, #39	; 0x27
 80007a0:	2105      	movs	r1, #5
 80007a2:	f7ff fe55 	bl	8000450 <NVIC_SetPriority>
 80007a6:	201f      	movs	r0, #31
 80007a8:	2104      	movs	r1, #4
 80007aa:	f7ff fe51 	bl	8000450 <NVIC_SetPriority>
 80007ae:	2020      	movs	r0, #32
 80007b0:	2104      	movs	r1, #4
 80007b2:	f7ff fe4d 	bl	8000450 <NVIC_SetPriority>
 80007b6:	200f      	movs	r0, #15
 80007b8:	2103      	movs	r1, #3
 80007ba:	f7ff fe49 	bl	8000450 <NVIC_SetPriority>
 80007be:	2023      	movs	r0, #35	; 0x23
 80007c0:	2103      	movs	r1, #3
 80007c2:	f7ff fe45 	bl	8000450 <NVIC_SetPriority>
 80007c6:	201d      	movs	r0, #29
 80007c8:	2102      	movs	r1, #2
 80007ca:	f7ff fe41 	bl	8000450 <NVIC_SetPriority>
 80007ce:	f04f 30ff 	mov.w	r0, #4294967295
 80007d2:	2101      	movs	r1, #1
 80007d4:	f7ff fe3c 	bl	8000450 <NVIC_SetPriority>
 80007d8:	2012      	movs	r0, #18
 80007da:	2100      	movs	r1, #0
 80007dc:	f7ff fe38 	bl	8000450 <NVIC_SetPriority>
 80007e0:	4b07      	ldr	r3, [pc, #28]	; (8000800 <system_init+0xec>)
 80007e2:	f245 5255 	movw	r2, #21845	; 0x5555
 80007e6:	601a      	str	r2, [r3, #0]
 80007e8:	4b05      	ldr	r3, [pc, #20]	; (8000800 <system_init+0xec>)
 80007ea:	220a      	movs	r2, #10
 80007ec:	609a      	str	r2, [r3, #8]
 80007ee:	bd80      	pop	{r7, pc}
 80007f0:	40023800 	.word	0x40023800
 80007f4:	40020000 	.word	0x40020000
 80007f8:	40021000 	.word	0x40021000
 80007fc:	40020c00 	.word	0x40020c00
 8000800:	40003000 	.word	0x40003000

08000804 <sleep>:
 8000804:	b480      	push	{r7}
 8000806:	b085      	sub	sp, #20
 8000808:	af00      	add	r7, sp, #0
 800080a:	6078      	str	r0, [r7, #4]
 800080c:	4b07      	ldr	r3, [pc, #28]	; (800082c <sleep+0x28>)
 800080e:	681a      	ldr	r2, [r3, #0]
 8000810:	687b      	ldr	r3, [r7, #4]
 8000812:	4413      	add	r3, r2
 8000814:	60fb      	str	r3, [r7, #12]
 8000816:	bf00      	nop
 8000818:	4b04      	ldr	r3, [pc, #16]	; (800082c <sleep+0x28>)
 800081a:	681a      	ldr	r2, [r3, #0]
 800081c:	68fb      	ldr	r3, [r7, #12]
 800081e:	429a      	cmp	r2, r3
 8000820:	d3fa      	bcc.n	8000818 <sleep+0x14>
 8000822:	3714      	adds	r7, #20
 8000824:	46bd      	mov	sp, r7
 8000826:	f85d 7b04 	ldr.w	r7, [sp], #4
 800082a:	4770      	bx	lr
 800082c:	20000b7c 	.word	0x20000b7c

08000830 <SysTick_Handler>:
 8000830:	b480      	push	{r7}
 8000832:	af00      	add	r7, sp, #0
 8000834:	4b04      	ldr	r3, [pc, #16]	; (8000848 <SysTick_Handler+0x18>)
 8000836:	681b      	ldr	r3, [r3, #0]
 8000838:	1c5a      	adds	r2, r3, #1
 800083a:	4b03      	ldr	r3, [pc, #12]	; (8000848 <SysTick_Handler+0x18>)
 800083c:	601a      	str	r2, [r3, #0]
 800083e:	46bd      	mov	sp, r7
 8000840:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000844:	4770      	bx	lr
 8000846:	bf00      	nop
 8000848:	20000b7c 	.word	0x20000b7c

0800084c <handler_reset>:
 800084c:	b580      	push	{r7, lr}
 800084e:	b082      	sub	sp, #8
 8000850:	af00      	add	r7, sp, #0
 8000852:	4b11      	ldr	r3, [pc, #68]	; (8000898 <handler_reset+0x4c>)
 8000854:	607b      	str	r3, [r7, #4]
 8000856:	4b11      	ldr	r3, [pc, #68]	; (800089c <handler_reset+0x50>)
 8000858:	603b      	str	r3, [r7, #0]
 800085a:	e007      	b.n	800086c <handler_reset+0x20>
 800085c:	683b      	ldr	r3, [r7, #0]
 800085e:	1d1a      	adds	r2, r3, #4
 8000860:	603a      	str	r2, [r7, #0]
 8000862:	687a      	ldr	r2, [r7, #4]
 8000864:	1d11      	adds	r1, r2, #4
 8000866:	6079      	str	r1, [r7, #4]
 8000868:	6812      	ldr	r2, [r2, #0]
 800086a:	601a      	str	r2, [r3, #0]
 800086c:	683a      	ldr	r2, [r7, #0]
 800086e:	4b0c      	ldr	r3, [pc, #48]	; (80008a0 <handler_reset+0x54>)
 8000870:	429a      	cmp	r2, r3
 8000872:	d3f3      	bcc.n	800085c <handler_reset+0x10>
 8000874:	4b0b      	ldr	r3, [pc, #44]	; (80008a4 <handler_reset+0x58>)
 8000876:	603b      	str	r3, [r7, #0]
 8000878:	e004      	b.n	8000884 <handler_reset+0x38>
 800087a:	683b      	ldr	r3, [r7, #0]
 800087c:	1d1a      	adds	r2, r3, #4
 800087e:	603a      	str	r2, [r7, #0]
 8000880:	2200      	movs	r2, #0
 8000882:	601a      	str	r2, [r3, #0]
 8000884:	683a      	ldr	r2, [r7, #0]
 8000886:	4b08      	ldr	r3, [pc, #32]	; (80008a8 <handler_reset+0x5c>)
 8000888:	429a      	cmp	r2, r3
 800088a:	d3f6      	bcc.n	800087a <handler_reset+0x2e>
 800088c:	f7ff fd6a 	bl	8000364 <main>
 8000890:	3708      	adds	r7, #8
 8000892:	46bd      	mov	sp, r7
 8000894:	bd80      	pop	{r7, pc}
 8000896:	bf00      	nop
 8000898:	0800b78c 	.word	0x0800b78c
 800089c:	20000000 	.word	0x20000000
 80008a0:	20000ae4 	.word	0x20000ae4
 80008a4:	20000b5c 	.word	0x20000b5c
 80008a8:	2000365c 	.word	0x2000365c

080008ac <default_handler>:
 80008ac:	b480      	push	{r7}
 80008ae:	af00      	add	r7, sp, #0
 80008b0:	e7fe      	b.n	80008b0 <default_handler+0x4>
 80008b2:	bf00      	nop

080008b4 <NVIC_EnableIRQ>:
 80008b4:	b480      	push	{r7}
 80008b6:	b083      	sub	sp, #12
 80008b8:	af00      	add	r7, sp, #0
 80008ba:	4603      	mov	r3, r0
 80008bc:	71fb      	strb	r3, [r7, #7]
 80008be:	4b08      	ldr	r3, [pc, #32]	; (80008e0 <NVIC_EnableIRQ+0x2c>)
 80008c0:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80008c4:	0952      	lsrs	r2, r2, #5
 80008c6:	79f9      	ldrb	r1, [r7, #7]
 80008c8:	f001 011f 	and.w	r1, r1, #31
 80008cc:	2001      	movs	r0, #1
 80008ce:	fa00 f101 	lsl.w	r1, r0, r1
 80008d2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80008d6:	370c      	adds	r7, #12
 80008d8:	46bd      	mov	sp, r7
 80008da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008de:	4770      	bx	lr
 80008e0:	e000e100 	.word	0xe000e100

080008e4 <uart_init>:
 80008e4:	b580      	push	{r7, lr}
 80008e6:	af00      	add	r7, sp, #0
 80008e8:	4b34      	ldr	r3, [pc, #208]	; (80009bc <uart_init+0xd8>)
 80008ea:	4a34      	ldr	r2, [pc, #208]	; (80009bc <uart_init+0xd8>)
 80008ec:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80008ee:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 80008f2:	641a      	str	r2, [r3, #64]	; 0x40
 80008f4:	4b32      	ldr	r3, [pc, #200]	; (80009c0 <uart_init+0xdc>)
 80008f6:	4a32      	ldr	r2, [pc, #200]	; (80009c0 <uart_init+0xdc>)
 80008f8:	8992      	ldrh	r2, [r2, #12]
 80008fa:	b292      	uxth	r2, r2
 80008fc:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000900:	b292      	uxth	r2, r2
 8000902:	819a      	strh	r2, [r3, #12]
 8000904:	4b2e      	ldr	r3, [pc, #184]	; (80009c0 <uart_init+0xdc>)
 8000906:	4a2e      	ldr	r2, [pc, #184]	; (80009c0 <uart_init+0xdc>)
 8000908:	8992      	ldrh	r2, [r2, #12]
 800090a:	b292      	uxth	r2, r2
 800090c:	f042 0204 	orr.w	r2, r2, #4
 8000910:	b292      	uxth	r2, r2
 8000912:	819a      	strh	r2, [r3, #12]
 8000914:	4b2a      	ldr	r3, [pc, #168]	; (80009c0 <uart_init+0xdc>)
 8000916:	4a2a      	ldr	r2, [pc, #168]	; (80009c0 <uart_init+0xdc>)
 8000918:	8992      	ldrh	r2, [r2, #12]
 800091a:	b292      	uxth	r2, r2
 800091c:	f042 0220 	orr.w	r2, r2, #32
 8000920:	b292      	uxth	r2, r2
 8000922:	819a      	strh	r2, [r3, #12]
 8000924:	4b26      	ldr	r3, [pc, #152]	; (80009c0 <uart_init+0xdc>)
 8000926:	4a26      	ldr	r2, [pc, #152]	; (80009c0 <uart_init+0xdc>)
 8000928:	8992      	ldrh	r2, [r2, #12]
 800092a:	b292      	uxth	r2, r2
 800092c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000930:	b292      	uxth	r2, r2
 8000932:	819a      	strh	r2, [r3, #12]
 8000934:	2034      	movs	r0, #52	; 0x34
 8000936:	f7ff ffbd 	bl	80008b4 <NVIC_EnableIRQ>
 800093a:	4b21      	ldr	r3, [pc, #132]	; (80009c0 <uart_init+0xdc>)
 800093c:	891b      	ldrh	r3, [r3, #8]
 800093e:	4b20      	ldr	r3, [pc, #128]	; (80009c0 <uart_init+0xdc>)
 8000940:	2200      	movs	r2, #0
 8000942:	811a      	strh	r2, [r3, #8]
 8000944:	4a1e      	ldr	r2, [pc, #120]	; (80009c0 <uart_init+0xdc>)
 8000946:	4b1e      	ldr	r3, [pc, #120]	; (80009c0 <uart_init+0xdc>)
 8000948:	891b      	ldrh	r3, [r3, #8]
 800094a:	b29b      	uxth	r3, r3
 800094c:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8000950:	f043 0301 	orr.w	r3, r3, #1
 8000954:	b29b      	uxth	r3, r3
 8000956:	8113      	strh	r3, [r2, #8]
 8000958:	4b18      	ldr	r3, [pc, #96]	; (80009bc <uart_init+0xd8>)
 800095a:	4a18      	ldr	r2, [pc, #96]	; (80009bc <uart_init+0xd8>)
 800095c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800095e:	f042 0204 	orr.w	r2, r2, #4
 8000962:	631a      	str	r2, [r3, #48]	; 0x30
 8000964:	4b17      	ldr	r3, [pc, #92]	; (80009c4 <uart_init+0xe0>)
 8000966:	4a17      	ldr	r2, [pc, #92]	; (80009c4 <uart_init+0xe0>)
 8000968:	6812      	ldr	r2, [r2, #0]
 800096a:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800096e:	601a      	str	r2, [r3, #0]
 8000970:	4b14      	ldr	r3, [pc, #80]	; (80009c4 <uart_init+0xe0>)
 8000972:	4a14      	ldr	r2, [pc, #80]	; (80009c4 <uart_init+0xe0>)
 8000974:	6812      	ldr	r2, [r2, #0]
 8000976:	f442 0220 	orr.w	r2, r2, #10485760	; 0xa00000
 800097a:	601a      	str	r2, [r3, #0]
 800097c:	4b11      	ldr	r3, [pc, #68]	; (80009c4 <uart_init+0xe0>)
 800097e:	4a11      	ldr	r2, [pc, #68]	; (80009c4 <uart_init+0xe0>)
 8000980:	6892      	ldr	r2, [r2, #8]
 8000982:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8000986:	609a      	str	r2, [r3, #8]
 8000988:	4b0e      	ldr	r3, [pc, #56]	; (80009c4 <uart_init+0xe0>)
 800098a:	4a0e      	ldr	r2, [pc, #56]	; (80009c4 <uart_init+0xe0>)
 800098c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800098e:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8000992:	625a      	str	r2, [r3, #36]	; 0x24
 8000994:	4b0b      	ldr	r3, [pc, #44]	; (80009c4 <uart_init+0xe0>)
 8000996:	4a0b      	ldr	r2, [pc, #44]	; (80009c4 <uart_init+0xe0>)
 8000998:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800099a:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 800099e:	625a      	str	r2, [r3, #36]	; 0x24
 80009a0:	4b08      	ldr	r3, [pc, #32]	; (80009c4 <uart_init+0xe0>)
 80009a2:	4a08      	ldr	r2, [pc, #32]	; (80009c4 <uart_init+0xe0>)
 80009a4:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80009a6:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 80009aa:	625a      	str	r2, [r3, #36]	; 0x24
 80009ac:	4b05      	ldr	r3, [pc, #20]	; (80009c4 <uart_init+0xe0>)
 80009ae:	4a05      	ldr	r2, [pc, #20]	; (80009c4 <uart_init+0xe0>)
 80009b0:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80009b2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 80009b6:	625a      	str	r2, [r3, #36]	; 0x24
 80009b8:	bd80      	pop	{r7, pc}
 80009ba:	bf00      	nop
 80009bc:	40023800 	.word	0x40023800
 80009c0:	40004c00 	.word	0x40004c00
 80009c4:	40020800 	.word	0x40020800

080009c8 <uart_putch>:
 80009c8:	b480      	push	{r7}
 80009ca:	b083      	sub	sp, #12
 80009cc:	af00      	add	r7, sp, #0
 80009ce:	4603      	mov	r3, r0
 80009d0:	71fb      	strb	r3, [r7, #7]
 80009d2:	4b13      	ldr	r3, [pc, #76]	; (8000a20 <uart_putch+0x58>)
 80009d4:	681a      	ldr	r2, [r3, #0]
 80009d6:	4b13      	ldr	r3, [pc, #76]	; (8000a24 <uart_putch+0x5c>)
 80009d8:	681b      	ldr	r3, [r3, #0]
 80009da:	429a      	cmp	r2, r3
 80009dc:	d107      	bne.n	80009ee <uart_putch+0x26>
 80009de:	4b12      	ldr	r3, [pc, #72]	; (8000a28 <uart_putch+0x60>)
 80009e0:	4a11      	ldr	r2, [pc, #68]	; (8000a28 <uart_putch+0x60>)
 80009e2:	8992      	ldrh	r2, [r2, #12]
 80009e4:	b292      	uxth	r2, r2
 80009e6:	f042 0208 	orr.w	r2, r2, #8
 80009ea:	b292      	uxth	r2, r2
 80009ec:	819a      	strh	r2, [r3, #12]
 80009ee:	4b0c      	ldr	r3, [pc, #48]	; (8000a20 <uart_putch+0x58>)
 80009f0:	681b      	ldr	r3, [r3, #0]
 80009f2:	4a0e      	ldr	r2, [pc, #56]	; (8000a2c <uart_putch+0x64>)
 80009f4:	79f9      	ldrb	r1, [r7, #7]
 80009f6:	54d1      	strb	r1, [r2, r3]
 80009f8:	4b09      	ldr	r3, [pc, #36]	; (8000a20 <uart_putch+0x58>)
 80009fa:	681b      	ldr	r3, [r3, #0]
 80009fc:	3301      	adds	r3, #1
 80009fe:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000a02:	4b07      	ldr	r3, [pc, #28]	; (8000a20 <uart_putch+0x58>)
 8000a04:	601a      	str	r2, [r3, #0]
 8000a06:	4b08      	ldr	r3, [pc, #32]	; (8000a28 <uart_putch+0x60>)
 8000a08:	4a07      	ldr	r2, [pc, #28]	; (8000a28 <uart_putch+0x60>)
 8000a0a:	8992      	ldrh	r2, [r2, #12]
 8000a0c:	b292      	uxth	r2, r2
 8000a0e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000a12:	b292      	uxth	r2, r2
 8000a14:	819a      	strh	r2, [r3, #12]
 8000a16:	370c      	adds	r7, #12
 8000a18:	46bd      	mov	sp, r7
 8000a1a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a1e:	4770      	bx	lr
 8000a20:	20000f84 	.word	0x20000f84
 8000a24:	20000f80 	.word	0x20000f80
 8000a28:	40004c00 	.word	0x40004c00
 8000a2c:	20000b80 	.word	0x20000b80

08000a30 <uart_send>:
 8000a30:	b480      	push	{r7}
 8000a32:	b085      	sub	sp, #20
 8000a34:	af00      	add	r7, sp, #0
 8000a36:	6078      	str	r0, [r7, #4]
 8000a38:	6039      	str	r1, [r7, #0]
 8000a3a:	4b20      	ldr	r3, [pc, #128]	; (8000abc <uart_send+0x8c>)
 8000a3c:	681a      	ldr	r2, [r3, #0]
 8000a3e:	4b20      	ldr	r3, [pc, #128]	; (8000ac0 <uart_send+0x90>)
 8000a40:	681b      	ldr	r3, [r3, #0]
 8000a42:	429a      	cmp	r2, r3
 8000a44:	d107      	bne.n	8000a56 <uart_send+0x26>
 8000a46:	4b1f      	ldr	r3, [pc, #124]	; (8000ac4 <uart_send+0x94>)
 8000a48:	4a1e      	ldr	r2, [pc, #120]	; (8000ac4 <uart_send+0x94>)
 8000a4a:	8992      	ldrh	r2, [r2, #12]
 8000a4c:	b292      	uxth	r2, r2
 8000a4e:	f042 0208 	orr.w	r2, r2, #8
 8000a52:	b292      	uxth	r2, r2
 8000a54:	819a      	strh	r2, [r3, #12]
 8000a56:	2300      	movs	r3, #0
 8000a58:	60fb      	str	r3, [r7, #12]
 8000a5a:	e01b      	b.n	8000a94 <uart_send+0x64>
 8000a5c:	4b17      	ldr	r3, [pc, #92]	; (8000abc <uart_send+0x8c>)
 8000a5e:	681b      	ldr	r3, [r3, #0]
 8000a60:	68fa      	ldr	r2, [r7, #12]
 8000a62:	6879      	ldr	r1, [r7, #4]
 8000a64:	440a      	add	r2, r1
 8000a66:	7811      	ldrb	r1, [r2, #0]
 8000a68:	4a17      	ldr	r2, [pc, #92]	; (8000ac8 <uart_send+0x98>)
 8000a6a:	54d1      	strb	r1, [r2, r3]
 8000a6c:	4b13      	ldr	r3, [pc, #76]	; (8000abc <uart_send+0x8c>)
 8000a6e:	681b      	ldr	r3, [r3, #0]
 8000a70:	3301      	adds	r3, #1
 8000a72:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000a76:	4b11      	ldr	r3, [pc, #68]	; (8000abc <uart_send+0x8c>)
 8000a78:	601a      	str	r2, [r3, #0]
 8000a7a:	4b10      	ldr	r3, [pc, #64]	; (8000abc <uart_send+0x8c>)
 8000a7c:	681a      	ldr	r2, [r3, #0]
 8000a7e:	4b10      	ldr	r3, [pc, #64]	; (8000ac0 <uart_send+0x90>)
 8000a80:	681b      	ldr	r3, [r3, #0]
 8000a82:	429a      	cmp	r2, r3
 8000a84:	d103      	bne.n	8000a8e <uart_send+0x5e>
 8000a86:	68fb      	ldr	r3, [r7, #12]
 8000a88:	3301      	adds	r3, #1
 8000a8a:	60fb      	str	r3, [r7, #12]
 8000a8c:	e006      	b.n	8000a9c <uart_send+0x6c>
 8000a8e:	68fb      	ldr	r3, [r7, #12]
 8000a90:	3301      	adds	r3, #1
 8000a92:	60fb      	str	r3, [r7, #12]
 8000a94:	68fa      	ldr	r2, [r7, #12]
 8000a96:	683b      	ldr	r3, [r7, #0]
 8000a98:	429a      	cmp	r2, r3
 8000a9a:	dbdf      	blt.n	8000a5c <uart_send+0x2c>
 8000a9c:	4b09      	ldr	r3, [pc, #36]	; (8000ac4 <uart_send+0x94>)
 8000a9e:	4a09      	ldr	r2, [pc, #36]	; (8000ac4 <uart_send+0x94>)
 8000aa0:	8992      	ldrh	r2, [r2, #12]
 8000aa2:	b292      	uxth	r2, r2
 8000aa4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000aa8:	b292      	uxth	r2, r2
 8000aaa:	819a      	strh	r2, [r3, #12]
 8000aac:	68fb      	ldr	r3, [r7, #12]
 8000aae:	4618      	mov	r0, r3
 8000ab0:	3714      	adds	r7, #20
 8000ab2:	46bd      	mov	sp, r7
 8000ab4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ab8:	4770      	bx	lr
 8000aba:	bf00      	nop
 8000abc:	20000f84 	.word	0x20000f84
 8000ac0:	20000f80 	.word	0x20000f80
 8000ac4:	40004c00 	.word	0x40004c00
 8000ac8:	20000b80 	.word	0x20000b80

08000acc <uart_send_str>:
 8000acc:	b480      	push	{r7}
 8000ace:	b085      	sub	sp, #20
 8000ad0:	af00      	add	r7, sp, #0
 8000ad2:	6078      	str	r0, [r7, #4]
 8000ad4:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000ad8:	60bb      	str	r3, [r7, #8]
 8000ada:	4b25      	ldr	r3, [pc, #148]	; (8000b70 <uart_send_str+0xa4>)
 8000adc:	681a      	ldr	r2, [r3, #0]
 8000ade:	4b25      	ldr	r3, [pc, #148]	; (8000b74 <uart_send_str+0xa8>)
 8000ae0:	681b      	ldr	r3, [r3, #0]
 8000ae2:	1ad3      	subs	r3, r2, r3
 8000ae4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000ae8:	68ba      	ldr	r2, [r7, #8]
 8000aea:	1ad3      	subs	r3, r2, r3
 8000aec:	60bb      	str	r3, [r7, #8]
 8000aee:	4b20      	ldr	r3, [pc, #128]	; (8000b70 <uart_send_str+0xa4>)
 8000af0:	681a      	ldr	r2, [r3, #0]
 8000af2:	4b20      	ldr	r3, [pc, #128]	; (8000b74 <uart_send_str+0xa8>)
 8000af4:	681b      	ldr	r3, [r3, #0]
 8000af6:	429a      	cmp	r2, r3
 8000af8:	d107      	bne.n	8000b0a <uart_send_str+0x3e>
 8000afa:	4b1f      	ldr	r3, [pc, #124]	; (8000b78 <uart_send_str+0xac>)
 8000afc:	4a1e      	ldr	r2, [pc, #120]	; (8000b78 <uart_send_str+0xac>)
 8000afe:	8992      	ldrh	r2, [r2, #12]
 8000b00:	b292      	uxth	r2, r2
 8000b02:	f042 0208 	orr.w	r2, r2, #8
 8000b06:	b292      	uxth	r2, r2
 8000b08:	819a      	strh	r2, [r3, #12]
 8000b0a:	2300      	movs	r3, #0
 8000b0c:	60fb      	str	r3, [r7, #12]
 8000b0e:	e01b      	b.n	8000b48 <uart_send_str+0x7c>
 8000b10:	68fb      	ldr	r3, [r7, #12]
 8000b12:	687a      	ldr	r2, [r7, #4]
 8000b14:	4413      	add	r3, r2
 8000b16:	781b      	ldrb	r3, [r3, #0]
 8000b18:	2b00      	cmp	r3, #0
 8000b1a:	d103      	bne.n	8000b24 <uart_send_str+0x58>
 8000b1c:	68fb      	ldr	r3, [r7, #12]
 8000b1e:	3301      	adds	r3, #1
 8000b20:	60fb      	str	r3, [r7, #12]
 8000b22:	e015      	b.n	8000b50 <uart_send_str+0x84>
 8000b24:	4b12      	ldr	r3, [pc, #72]	; (8000b70 <uart_send_str+0xa4>)
 8000b26:	681b      	ldr	r3, [r3, #0]
 8000b28:	68fa      	ldr	r2, [r7, #12]
 8000b2a:	6879      	ldr	r1, [r7, #4]
 8000b2c:	440a      	add	r2, r1
 8000b2e:	7811      	ldrb	r1, [r2, #0]
 8000b30:	4a12      	ldr	r2, [pc, #72]	; (8000b7c <uart_send_str+0xb0>)
 8000b32:	54d1      	strb	r1, [r2, r3]
 8000b34:	4b0e      	ldr	r3, [pc, #56]	; (8000b70 <uart_send_str+0xa4>)
 8000b36:	681b      	ldr	r3, [r3, #0]
 8000b38:	3301      	adds	r3, #1
 8000b3a:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000b3e:	4b0c      	ldr	r3, [pc, #48]	; (8000b70 <uart_send_str+0xa4>)
 8000b40:	601a      	str	r2, [r3, #0]
 8000b42:	68fb      	ldr	r3, [r7, #12]
 8000b44:	3301      	adds	r3, #1
 8000b46:	60fb      	str	r3, [r7, #12]
 8000b48:	68fa      	ldr	r2, [r7, #12]
 8000b4a:	68bb      	ldr	r3, [r7, #8]
 8000b4c:	429a      	cmp	r2, r3
 8000b4e:	dbdf      	blt.n	8000b10 <uart_send_str+0x44>
 8000b50:	4b09      	ldr	r3, [pc, #36]	; (8000b78 <uart_send_str+0xac>)
 8000b52:	4a09      	ldr	r2, [pc, #36]	; (8000b78 <uart_send_str+0xac>)
 8000b54:	8992      	ldrh	r2, [r2, #12]
 8000b56:	b292      	uxth	r2, r2
 8000b58:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000b5c:	b292      	uxth	r2, r2
 8000b5e:	819a      	strh	r2, [r3, #12]
 8000b60:	68fb      	ldr	r3, [r7, #12]
 8000b62:	4618      	mov	r0, r3
 8000b64:	3714      	adds	r7, #20
 8000b66:	46bd      	mov	sp, r7
 8000b68:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b6c:	4770      	bx	lr
 8000b6e:	bf00      	nop
 8000b70:	20000f84 	.word	0x20000f84
 8000b74:	20000f80 	.word	0x20000f80
 8000b78:	40004c00 	.word	0x40004c00
 8000b7c:	20000b80 	.word	0x20000b80

08000b80 <uart_read>:
 8000b80:	b480      	push	{r7}
 8000b82:	b085      	sub	sp, #20
 8000b84:	af00      	add	r7, sp, #0
 8000b86:	6078      	str	r0, [r7, #4]
 8000b88:	6039      	str	r1, [r7, #0]
 8000b8a:	4b19      	ldr	r3, [pc, #100]	; (8000bf0 <uart_read+0x70>)
 8000b8c:	681a      	ldr	r2, [r3, #0]
 8000b8e:	4b19      	ldr	r3, [pc, #100]	; (8000bf4 <uart_read+0x74>)
 8000b90:	681b      	ldr	r3, [r3, #0]
 8000b92:	429a      	cmp	r2, r3
 8000b94:	d101      	bne.n	8000b9a <uart_read+0x1a>
 8000b96:	2300      	movs	r3, #0
 8000b98:	e023      	b.n	8000be2 <uart_read+0x62>
 8000b9a:	2300      	movs	r3, #0
 8000b9c:	60fb      	str	r3, [r7, #12]
 8000b9e:	e01b      	b.n	8000bd8 <uart_read+0x58>
 8000ba0:	68fb      	ldr	r3, [r7, #12]
 8000ba2:	687a      	ldr	r2, [r7, #4]
 8000ba4:	4413      	add	r3, r2
 8000ba6:	4a12      	ldr	r2, [pc, #72]	; (8000bf0 <uart_read+0x70>)
 8000ba8:	6812      	ldr	r2, [r2, #0]
 8000baa:	4913      	ldr	r1, [pc, #76]	; (8000bf8 <uart_read+0x78>)
 8000bac:	5c8a      	ldrb	r2, [r1, r2]
 8000bae:	701a      	strb	r2, [r3, #0]
 8000bb0:	4b0f      	ldr	r3, [pc, #60]	; (8000bf0 <uart_read+0x70>)
 8000bb2:	681b      	ldr	r3, [r3, #0]
 8000bb4:	3301      	adds	r3, #1
 8000bb6:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000bba:	4b0d      	ldr	r3, [pc, #52]	; (8000bf0 <uart_read+0x70>)
 8000bbc:	601a      	str	r2, [r3, #0]
 8000bbe:	4b0c      	ldr	r3, [pc, #48]	; (8000bf0 <uart_read+0x70>)
 8000bc0:	681a      	ldr	r2, [r3, #0]
 8000bc2:	4b0c      	ldr	r3, [pc, #48]	; (8000bf4 <uart_read+0x74>)
 8000bc4:	681b      	ldr	r3, [r3, #0]
 8000bc6:	429a      	cmp	r2, r3
 8000bc8:	d103      	bne.n	8000bd2 <uart_read+0x52>
 8000bca:	68fb      	ldr	r3, [r7, #12]
 8000bcc:	3301      	adds	r3, #1
 8000bce:	60fb      	str	r3, [r7, #12]
 8000bd0:	e006      	b.n	8000be0 <uart_read+0x60>
 8000bd2:	68fb      	ldr	r3, [r7, #12]
 8000bd4:	3301      	adds	r3, #1
 8000bd6:	60fb      	str	r3, [r7, #12]
 8000bd8:	68fa      	ldr	r2, [r7, #12]
 8000bda:	683b      	ldr	r3, [r7, #0]
 8000bdc:	429a      	cmp	r2, r3
 8000bde:	dbdf      	blt.n	8000ba0 <uart_read+0x20>
 8000be0:	68fb      	ldr	r3, [r7, #12]
 8000be2:	4618      	mov	r0, r3
 8000be4:	3714      	adds	r7, #20
 8000be6:	46bd      	mov	sp, r7
 8000be8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bec:	4770      	bx	lr
 8000bee:	bf00      	nop
 8000bf0:	2000138c 	.word	0x2000138c
 8000bf4:	20001388 	.word	0x20001388
 8000bf8:	20000f88 	.word	0x20000f88

08000bfc <UART4_IRQHandler>:
 8000bfc:	b480      	push	{r7}
 8000bfe:	af00      	add	r7, sp, #0
 8000c00:	4b1e      	ldr	r3, [pc, #120]	; (8000c7c <UART4_IRQHandler+0x80>)
 8000c02:	881b      	ldrh	r3, [r3, #0]
 8000c04:	b29b      	uxth	r3, r3
 8000c06:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000c0a:	2b00      	cmp	r3, #0
 8000c0c:	d01b      	beq.n	8000c46 <UART4_IRQHandler+0x4a>
 8000c0e:	4b1c      	ldr	r3, [pc, #112]	; (8000c80 <UART4_IRQHandler+0x84>)
 8000c10:	681a      	ldr	r2, [r3, #0]
 8000c12:	4b1c      	ldr	r3, [pc, #112]	; (8000c84 <UART4_IRQHandler+0x88>)
 8000c14:	681b      	ldr	r3, [r3, #0]
 8000c16:	429a      	cmp	r2, r3
 8000c18:	d108      	bne.n	8000c2c <UART4_IRQHandler+0x30>
 8000c1a:	4b18      	ldr	r3, [pc, #96]	; (8000c7c <UART4_IRQHandler+0x80>)
 8000c1c:	4a17      	ldr	r2, [pc, #92]	; (8000c7c <UART4_IRQHandler+0x80>)
 8000c1e:	8992      	ldrh	r2, [r2, #12]
 8000c20:	b292      	uxth	r2, r2
 8000c22:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8000c26:	b292      	uxth	r2, r2
 8000c28:	819a      	strh	r2, [r3, #12]
 8000c2a:	e00c      	b.n	8000c46 <UART4_IRQHandler+0x4a>
 8000c2c:	4b13      	ldr	r3, [pc, #76]	; (8000c7c <UART4_IRQHandler+0x80>)
 8000c2e:	4a14      	ldr	r2, [pc, #80]	; (8000c80 <UART4_IRQHandler+0x84>)
 8000c30:	6812      	ldr	r2, [r2, #0]
 8000c32:	4915      	ldr	r1, [pc, #84]	; (8000c88 <UART4_IRQHandler+0x8c>)
 8000c34:	5c8a      	ldrb	r2, [r1, r2]
 8000c36:	809a      	strh	r2, [r3, #4]
 8000c38:	4b11      	ldr	r3, [pc, #68]	; (8000c80 <UART4_IRQHandler+0x84>)
 8000c3a:	681b      	ldr	r3, [r3, #0]
 8000c3c:	3301      	adds	r3, #1
 8000c3e:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000c42:	4b0f      	ldr	r3, [pc, #60]	; (8000c80 <UART4_IRQHandler+0x84>)
 8000c44:	601a      	str	r2, [r3, #0]
 8000c46:	4b0d      	ldr	r3, [pc, #52]	; (8000c7c <UART4_IRQHandler+0x80>)
 8000c48:	881b      	ldrh	r3, [r3, #0]
 8000c4a:	b29b      	uxth	r3, r3
 8000c4c:	f003 0320 	and.w	r3, r3, #32
 8000c50:	2b00      	cmp	r3, #0
 8000c52:	d00e      	beq.n	8000c72 <UART4_IRQHandler+0x76>
 8000c54:	4b0d      	ldr	r3, [pc, #52]	; (8000c8c <UART4_IRQHandler+0x90>)
 8000c56:	681b      	ldr	r3, [r3, #0]
 8000c58:	4a08      	ldr	r2, [pc, #32]	; (8000c7c <UART4_IRQHandler+0x80>)
 8000c5a:	8892      	ldrh	r2, [r2, #4]
 8000c5c:	b292      	uxth	r2, r2
 8000c5e:	b2d1      	uxtb	r1, r2
 8000c60:	4a0b      	ldr	r2, [pc, #44]	; (8000c90 <UART4_IRQHandler+0x94>)
 8000c62:	54d1      	strb	r1, [r2, r3]
 8000c64:	4b09      	ldr	r3, [pc, #36]	; (8000c8c <UART4_IRQHandler+0x90>)
 8000c66:	681b      	ldr	r3, [r3, #0]
 8000c68:	3301      	adds	r3, #1
 8000c6a:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000c6e:	4b07      	ldr	r3, [pc, #28]	; (8000c8c <UART4_IRQHandler+0x90>)
 8000c70:	601a      	str	r2, [r3, #0]
 8000c72:	46bd      	mov	sp, r7
 8000c74:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c78:	4770      	bx	lr
 8000c7a:	bf00      	nop
 8000c7c:	40004c00 	.word	0x40004c00
 8000c80:	20000f80 	.word	0x20000f80
 8000c84:	20000f84 	.word	0x20000f84
 8000c88:	20000b80 	.word	0x20000b80
 8000c8c:	20001388 	.word	0x20001388
 8000c90:	20000f88 	.word	0x20000f88

08000c94 <xputc>:
 8000c94:	b580      	push	{r7, lr}
 8000c96:	b082      	sub	sp, #8
 8000c98:	af00      	add	r7, sp, #0
 8000c9a:	4603      	mov	r3, r0
 8000c9c:	71fb      	strb	r3, [r7, #7]
 8000c9e:	79fb      	ldrb	r3, [r7, #7]
 8000ca0:	2b0a      	cmp	r3, #10
 8000ca2:	d102      	bne.n	8000caa <xputc+0x16>
 8000ca4:	200d      	movs	r0, #13
 8000ca6:	f7ff fff5 	bl	8000c94 <xputc>
 8000caa:	4b0c      	ldr	r3, [pc, #48]	; (8000cdc <xputc+0x48>)
 8000cac:	681b      	ldr	r3, [r3, #0]
 8000cae:	2b00      	cmp	r3, #0
 8000cb0:	d007      	beq.n	8000cc2 <xputc+0x2e>
 8000cb2:	4b0a      	ldr	r3, [pc, #40]	; (8000cdc <xputc+0x48>)
 8000cb4:	681b      	ldr	r3, [r3, #0]
 8000cb6:	1c59      	adds	r1, r3, #1
 8000cb8:	4a08      	ldr	r2, [pc, #32]	; (8000cdc <xputc+0x48>)
 8000cba:	6011      	str	r1, [r2, #0]
 8000cbc:	79fa      	ldrb	r2, [r7, #7]
 8000cbe:	701a      	strb	r2, [r3, #0]
 8000cc0:	e008      	b.n	8000cd4 <xputc+0x40>
 8000cc2:	4b07      	ldr	r3, [pc, #28]	; (8000ce0 <xputc+0x4c>)
 8000cc4:	681b      	ldr	r3, [r3, #0]
 8000cc6:	2b00      	cmp	r3, #0
 8000cc8:	d004      	beq.n	8000cd4 <xputc+0x40>
 8000cca:	4b05      	ldr	r3, [pc, #20]	; (8000ce0 <xputc+0x4c>)
 8000ccc:	681b      	ldr	r3, [r3, #0]
 8000cce:	79fa      	ldrb	r2, [r7, #7]
 8000cd0:	4610      	mov	r0, r2
 8000cd2:	4798      	blx	r3
 8000cd4:	3708      	adds	r7, #8
 8000cd6:	46bd      	mov	sp, r7
 8000cd8:	bd80      	pop	{r7, pc}
 8000cda:	bf00      	nop
 8000cdc:	20001394 	.word	0x20001394
 8000ce0:	20001390 	.word	0x20001390

08000ce4 <xputs>:
 8000ce4:	b580      	push	{r7, lr}
 8000ce6:	b082      	sub	sp, #8
 8000ce8:	af00      	add	r7, sp, #0
 8000cea:	6078      	str	r0, [r7, #4]
 8000cec:	e006      	b.n	8000cfc <xputs+0x18>
 8000cee:	687b      	ldr	r3, [r7, #4]
 8000cf0:	1c5a      	adds	r2, r3, #1
 8000cf2:	607a      	str	r2, [r7, #4]
 8000cf4:	781b      	ldrb	r3, [r3, #0]
 8000cf6:	4618      	mov	r0, r3
 8000cf8:	f7ff ffcc 	bl	8000c94 <xputc>
 8000cfc:	687b      	ldr	r3, [r7, #4]
 8000cfe:	781b      	ldrb	r3, [r3, #0]
 8000d00:	2b00      	cmp	r3, #0
 8000d02:	d1f4      	bne.n	8000cee <xputs+0xa>
 8000d04:	3708      	adds	r7, #8
 8000d06:	46bd      	mov	sp, r7
 8000d08:	bd80      	pop	{r7, pc}
 8000d0a:	bf00      	nop

08000d0c <xfputs>:
 8000d0c:	b580      	push	{r7, lr}
 8000d0e:	b084      	sub	sp, #16
 8000d10:	af00      	add	r7, sp, #0
 8000d12:	6078      	str	r0, [r7, #4]
 8000d14:	6039      	str	r1, [r7, #0]
 8000d16:	4b0c      	ldr	r3, [pc, #48]	; (8000d48 <xfputs+0x3c>)
 8000d18:	681b      	ldr	r3, [r3, #0]
 8000d1a:	60fb      	str	r3, [r7, #12]
 8000d1c:	4b0a      	ldr	r3, [pc, #40]	; (8000d48 <xfputs+0x3c>)
 8000d1e:	687a      	ldr	r2, [r7, #4]
 8000d20:	601a      	str	r2, [r3, #0]
 8000d22:	e006      	b.n	8000d32 <xfputs+0x26>
 8000d24:	683b      	ldr	r3, [r7, #0]
 8000d26:	1c5a      	adds	r2, r3, #1
 8000d28:	603a      	str	r2, [r7, #0]
 8000d2a:	781b      	ldrb	r3, [r3, #0]
 8000d2c:	4618      	mov	r0, r3
 8000d2e:	f7ff ffb1 	bl	8000c94 <xputc>
 8000d32:	683b      	ldr	r3, [r7, #0]
 8000d34:	781b      	ldrb	r3, [r3, #0]
 8000d36:	2b00      	cmp	r3, #0
 8000d38:	d1f4      	bne.n	8000d24 <xfputs+0x18>
 8000d3a:	4b03      	ldr	r3, [pc, #12]	; (8000d48 <xfputs+0x3c>)
 8000d3c:	68fa      	ldr	r2, [r7, #12]
 8000d3e:	601a      	str	r2, [r3, #0]
 8000d40:	3710      	adds	r7, #16
 8000d42:	46bd      	mov	sp, r7
 8000d44:	bd80      	pop	{r7, pc}
 8000d46:	bf00      	nop
 8000d48:	20001390 	.word	0x20001390

08000d4c <xvprintf>:
 8000d4c:	b580      	push	{r7, lr}
 8000d4e:	b08e      	sub	sp, #56	; 0x38
 8000d50:	af00      	add	r7, sp, #0
 8000d52:	6078      	str	r0, [r7, #4]
 8000d54:	6039      	str	r1, [r7, #0]
 8000d56:	687b      	ldr	r3, [r7, #4]
 8000d58:	1c5a      	adds	r2, r3, #1
 8000d5a:	607a      	str	r2, [r7, #4]
 8000d5c:	781b      	ldrb	r3, [r3, #0]
 8000d5e:	77fb      	strb	r3, [r7, #31]
 8000d60:	7ffb      	ldrb	r3, [r7, #31]
 8000d62:	2b00      	cmp	r3, #0
 8000d64:	d100      	bne.n	8000d68 <xvprintf+0x1c>
 8000d66:	e166      	b.n	8001036 <xvprintf+0x2ea>
 8000d68:	7ffb      	ldrb	r3, [r7, #31]
 8000d6a:	2b25      	cmp	r3, #37	; 0x25
 8000d6c:	d004      	beq.n	8000d78 <xvprintf+0x2c>
 8000d6e:	7ffb      	ldrb	r3, [r7, #31]
 8000d70:	4618      	mov	r0, r3
 8000d72:	f7ff ff8f 	bl	8000c94 <xputc>
 8000d76:	e15d      	b.n	8001034 <xvprintf+0x2e8>
 8000d78:	2300      	movs	r3, #0
 8000d7a:	627b      	str	r3, [r7, #36]	; 0x24
 8000d7c:	687b      	ldr	r3, [r7, #4]
 8000d7e:	1c5a      	adds	r2, r3, #1
 8000d80:	607a      	str	r2, [r7, #4]
 8000d82:	781b      	ldrb	r3, [r3, #0]
 8000d84:	77fb      	strb	r3, [r7, #31]
 8000d86:	7ffb      	ldrb	r3, [r7, #31]
 8000d88:	2b30      	cmp	r3, #48	; 0x30
 8000d8a:	d107      	bne.n	8000d9c <xvprintf+0x50>
 8000d8c:	2301      	movs	r3, #1
 8000d8e:	627b      	str	r3, [r7, #36]	; 0x24
 8000d90:	687b      	ldr	r3, [r7, #4]
 8000d92:	1c5a      	adds	r2, r3, #1
 8000d94:	607a      	str	r2, [r7, #4]
 8000d96:	781b      	ldrb	r3, [r3, #0]
 8000d98:	77fb      	strb	r3, [r7, #31]
 8000d9a:	e009      	b.n	8000db0 <xvprintf+0x64>
 8000d9c:	7ffb      	ldrb	r3, [r7, #31]
 8000d9e:	2b2d      	cmp	r3, #45	; 0x2d
 8000da0:	d106      	bne.n	8000db0 <xvprintf+0x64>
 8000da2:	2302      	movs	r3, #2
 8000da4:	627b      	str	r3, [r7, #36]	; 0x24
 8000da6:	687b      	ldr	r3, [r7, #4]
 8000da8:	1c5a      	adds	r2, r3, #1
 8000daa:	607a      	str	r2, [r7, #4]
 8000dac:	781b      	ldrb	r3, [r3, #0]
 8000dae:	77fb      	strb	r3, [r7, #31]
 8000db0:	2300      	movs	r3, #0
 8000db2:	62bb      	str	r3, [r7, #40]	; 0x28
 8000db4:	e00e      	b.n	8000dd4 <xvprintf+0x88>
 8000db6:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000db8:	4613      	mov	r3, r2
 8000dba:	009b      	lsls	r3, r3, #2
 8000dbc:	4413      	add	r3, r2
 8000dbe:	005b      	lsls	r3, r3, #1
 8000dc0:	461a      	mov	r2, r3
 8000dc2:	7ffb      	ldrb	r3, [r7, #31]
 8000dc4:	4413      	add	r3, r2
 8000dc6:	3b30      	subs	r3, #48	; 0x30
 8000dc8:	62bb      	str	r3, [r7, #40]	; 0x28
 8000dca:	687b      	ldr	r3, [r7, #4]
 8000dcc:	1c5a      	adds	r2, r3, #1
 8000dce:	607a      	str	r2, [r7, #4]
 8000dd0:	781b      	ldrb	r3, [r3, #0]
 8000dd2:	77fb      	strb	r3, [r7, #31]
 8000dd4:	7ffb      	ldrb	r3, [r7, #31]
 8000dd6:	2b2f      	cmp	r3, #47	; 0x2f
 8000dd8:	d902      	bls.n	8000de0 <xvprintf+0x94>
 8000dda:	7ffb      	ldrb	r3, [r7, #31]
 8000ddc:	2b39      	cmp	r3, #57	; 0x39
 8000dde:	d9ea      	bls.n	8000db6 <xvprintf+0x6a>
 8000de0:	7ffb      	ldrb	r3, [r7, #31]
 8000de2:	2b6c      	cmp	r3, #108	; 0x6c
 8000de4:	d002      	beq.n	8000dec <xvprintf+0xa0>
 8000de6:	7ffb      	ldrb	r3, [r7, #31]
 8000de8:	2b4c      	cmp	r3, #76	; 0x4c
 8000dea:	d108      	bne.n	8000dfe <xvprintf+0xb2>
 8000dec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000dee:	f043 0304 	orr.w	r3, r3, #4
 8000df2:	627b      	str	r3, [r7, #36]	; 0x24
 8000df4:	687b      	ldr	r3, [r7, #4]
 8000df6:	1c5a      	adds	r2, r3, #1
 8000df8:	607a      	str	r2, [r7, #4]
 8000dfa:	781b      	ldrb	r3, [r3, #0]
 8000dfc:	77fb      	strb	r3, [r7, #31]
 8000dfe:	7ffb      	ldrb	r3, [r7, #31]
 8000e00:	2b00      	cmp	r3, #0
 8000e02:	d100      	bne.n	8000e06 <xvprintf+0xba>
 8000e04:	e117      	b.n	8001036 <xvprintf+0x2ea>
 8000e06:	7ffb      	ldrb	r3, [r7, #31]
 8000e08:	77bb      	strb	r3, [r7, #30]
 8000e0a:	7fbb      	ldrb	r3, [r7, #30]
 8000e0c:	2b60      	cmp	r3, #96	; 0x60
 8000e0e:	d902      	bls.n	8000e16 <xvprintf+0xca>
 8000e10:	7fbb      	ldrb	r3, [r7, #30]
 8000e12:	3b20      	subs	r3, #32
 8000e14:	77bb      	strb	r3, [r7, #30]
 8000e16:	7fbb      	ldrb	r3, [r7, #30]
 8000e18:	3b42      	subs	r3, #66	; 0x42
 8000e1a:	2b16      	cmp	r3, #22
 8000e1c:	d873      	bhi.n	8000f06 <xvprintf+0x1ba>
 8000e1e:	a101      	add	r1, pc, #4	; (adr r1, 8000e24 <xvprintf+0xd8>)
 8000e20:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 8000e24:	08000eef 	.word	0x08000eef
 8000e28:	08000edd 	.word	0x08000edd
 8000e2c:	08000efb 	.word	0x08000efb
 8000e30:	08000f07 	.word	0x08000f07
 8000e34:	08000f07 	.word	0x08000f07
 8000e38:	08000f07 	.word	0x08000f07
 8000e3c:	08000f07 	.word	0x08000f07
 8000e40:	08000f07 	.word	0x08000f07
 8000e44:	08000f07 	.word	0x08000f07
 8000e48:	08000f07 	.word	0x08000f07
 8000e4c:	08000f07 	.word	0x08000f07
 8000e50:	08000f07 	.word	0x08000f07
 8000e54:	08000f07 	.word	0x08000f07
 8000e58:	08000ef5 	.word	0x08000ef5
 8000e5c:	08000f07 	.word	0x08000f07
 8000e60:	08000f07 	.word	0x08000f07
 8000e64:	08000f07 	.word	0x08000f07
 8000e68:	08000e81 	.word	0x08000e81
 8000e6c:	08000f07 	.word	0x08000f07
 8000e70:	08000efb 	.word	0x08000efb
 8000e74:	08000f07 	.word	0x08000f07
 8000e78:	08000f07 	.word	0x08000f07
 8000e7c:	08000f01 	.word	0x08000f01
 8000e80:	683b      	ldr	r3, [r7, #0]
 8000e82:	1d1a      	adds	r2, r3, #4
 8000e84:	603a      	str	r2, [r7, #0]
 8000e86:	681b      	ldr	r3, [r3, #0]
 8000e88:	61bb      	str	r3, [r7, #24]
 8000e8a:	2300      	movs	r3, #0
 8000e8c:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000e8e:	e002      	b.n	8000e96 <xvprintf+0x14a>
 8000e90:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000e92:	3301      	adds	r3, #1
 8000e94:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000e96:	69ba      	ldr	r2, [r7, #24]
 8000e98:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000e9a:	4413      	add	r3, r2
 8000e9c:	781b      	ldrb	r3, [r3, #0]
 8000e9e:	2b00      	cmp	r3, #0
 8000ea0:	d1f6      	bne.n	8000e90 <xvprintf+0x144>
 8000ea2:	e002      	b.n	8000eaa <xvprintf+0x15e>
 8000ea4:	2020      	movs	r0, #32
 8000ea6:	f7ff fef5 	bl	8000c94 <xputc>
 8000eaa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000eac:	f003 0302 	and.w	r3, r3, #2
 8000eb0:	2b00      	cmp	r3, #0
 8000eb2:	d105      	bne.n	8000ec0 <xvprintf+0x174>
 8000eb4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000eb6:	1c5a      	adds	r2, r3, #1
 8000eb8:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000eba:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ebc:	4293      	cmp	r3, r2
 8000ebe:	d3f1      	bcc.n	8000ea4 <xvprintf+0x158>
 8000ec0:	69b8      	ldr	r0, [r7, #24]
 8000ec2:	f7ff ff0f 	bl	8000ce4 <xputs>
 8000ec6:	e002      	b.n	8000ece <xvprintf+0x182>
 8000ec8:	2020      	movs	r0, #32
 8000eca:	f7ff fee3 	bl	8000c94 <xputc>
 8000ece:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ed0:	1c5a      	adds	r2, r3, #1
 8000ed2:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ed4:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ed6:	4293      	cmp	r3, r2
 8000ed8:	d3f6      	bcc.n	8000ec8 <xvprintf+0x17c>
 8000eda:	e0ab      	b.n	8001034 <xvprintf+0x2e8>
 8000edc:	683b      	ldr	r3, [r7, #0]
 8000ede:	1d1a      	adds	r2, r3, #4
 8000ee0:	603a      	str	r2, [r7, #0]
 8000ee2:	681b      	ldr	r3, [r3, #0]
 8000ee4:	b2db      	uxtb	r3, r3
 8000ee6:	4618      	mov	r0, r3
 8000ee8:	f7ff fed4 	bl	8000c94 <xputc>
 8000eec:	e0a2      	b.n	8001034 <xvprintf+0x2e8>
 8000eee:	2302      	movs	r3, #2
 8000ef0:	637b      	str	r3, [r7, #52]	; 0x34
 8000ef2:	e00d      	b.n	8000f10 <xvprintf+0x1c4>
 8000ef4:	2308      	movs	r3, #8
 8000ef6:	637b      	str	r3, [r7, #52]	; 0x34
 8000ef8:	e00a      	b.n	8000f10 <xvprintf+0x1c4>
 8000efa:	230a      	movs	r3, #10
 8000efc:	637b      	str	r3, [r7, #52]	; 0x34
 8000efe:	e007      	b.n	8000f10 <xvprintf+0x1c4>
 8000f00:	2310      	movs	r3, #16
 8000f02:	637b      	str	r3, [r7, #52]	; 0x34
 8000f04:	e004      	b.n	8000f10 <xvprintf+0x1c4>
 8000f06:	7ffb      	ldrb	r3, [r7, #31]
 8000f08:	4618      	mov	r0, r3
 8000f0a:	f7ff fec3 	bl	8000c94 <xputc>
 8000f0e:	e091      	b.n	8001034 <xvprintf+0x2e8>
 8000f10:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f12:	f003 0304 	and.w	r3, r3, #4
 8000f16:	2b00      	cmp	r3, #0
 8000f18:	d004      	beq.n	8000f24 <xvprintf+0x1d8>
 8000f1a:	683b      	ldr	r3, [r7, #0]
 8000f1c:	1d1a      	adds	r2, r3, #4
 8000f1e:	603a      	str	r2, [r7, #0]
 8000f20:	681b      	ldr	r3, [r3, #0]
 8000f22:	e00b      	b.n	8000f3c <xvprintf+0x1f0>
 8000f24:	7fbb      	ldrb	r3, [r7, #30]
 8000f26:	2b44      	cmp	r3, #68	; 0x44
 8000f28:	d104      	bne.n	8000f34 <xvprintf+0x1e8>
 8000f2a:	683b      	ldr	r3, [r7, #0]
 8000f2c:	1d1a      	adds	r2, r3, #4
 8000f2e:	603a      	str	r2, [r7, #0]
 8000f30:	681b      	ldr	r3, [r3, #0]
 8000f32:	e003      	b.n	8000f3c <xvprintf+0x1f0>
 8000f34:	683b      	ldr	r3, [r7, #0]
 8000f36:	1d1a      	adds	r2, r3, #4
 8000f38:	603a      	str	r2, [r7, #0]
 8000f3a:	681b      	ldr	r3, [r3, #0]
 8000f3c:	623b      	str	r3, [r7, #32]
 8000f3e:	7fbb      	ldrb	r3, [r7, #30]
 8000f40:	2b44      	cmp	r3, #68	; 0x44
 8000f42:	d109      	bne.n	8000f58 <xvprintf+0x20c>
 8000f44:	6a3b      	ldr	r3, [r7, #32]
 8000f46:	2b00      	cmp	r3, #0
 8000f48:	da06      	bge.n	8000f58 <xvprintf+0x20c>
 8000f4a:	6a3b      	ldr	r3, [r7, #32]
 8000f4c:	425b      	negs	r3, r3
 8000f4e:	623b      	str	r3, [r7, #32]
 8000f50:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f52:	f043 0308 	orr.w	r3, r3, #8
 8000f56:	627b      	str	r3, [r7, #36]	; 0x24
 8000f58:	2300      	movs	r3, #0
 8000f5a:	633b      	str	r3, [r7, #48]	; 0x30
 8000f5c:	6a3b      	ldr	r3, [r7, #32]
 8000f5e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8000f60:	fbb3 f2f2 	udiv	r2, r3, r2
 8000f64:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8000f66:	fb01 f202 	mul.w	r2, r1, r2
 8000f6a:	1a9b      	subs	r3, r3, r2
 8000f6c:	77bb      	strb	r3, [r7, #30]
 8000f6e:	6a3a      	ldr	r2, [r7, #32]
 8000f70:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000f72:	fbb2 f3f3 	udiv	r3, r2, r3
 8000f76:	623b      	str	r3, [r7, #32]
 8000f78:	7fbb      	ldrb	r3, [r7, #30]
 8000f7a:	2b09      	cmp	r3, #9
 8000f7c:	d908      	bls.n	8000f90 <xvprintf+0x244>
 8000f7e:	7ffb      	ldrb	r3, [r7, #31]
 8000f80:	2b78      	cmp	r3, #120	; 0x78
 8000f82:	d101      	bne.n	8000f88 <xvprintf+0x23c>
 8000f84:	2327      	movs	r3, #39	; 0x27
 8000f86:	e000      	b.n	8000f8a <xvprintf+0x23e>
 8000f88:	2307      	movs	r3, #7
 8000f8a:	7fba      	ldrb	r2, [r7, #30]
 8000f8c:	4413      	add	r3, r2
 8000f8e:	77bb      	strb	r3, [r7, #30]
 8000f90:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000f92:	1c5a      	adds	r2, r3, #1
 8000f94:	633a      	str	r2, [r7, #48]	; 0x30
 8000f96:	7fba      	ldrb	r2, [r7, #30]
 8000f98:	3230      	adds	r2, #48	; 0x30
 8000f9a:	b2d2      	uxtb	r2, r2
 8000f9c:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8000fa0:	440b      	add	r3, r1
 8000fa2:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fa6:	6a3b      	ldr	r3, [r7, #32]
 8000fa8:	2b00      	cmp	r3, #0
 8000faa:	d002      	beq.n	8000fb2 <xvprintf+0x266>
 8000fac:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fae:	2b0f      	cmp	r3, #15
 8000fb0:	d9d4      	bls.n	8000f5c <xvprintf+0x210>
 8000fb2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fb4:	f003 0308 	and.w	r3, r3, #8
 8000fb8:	2b00      	cmp	r3, #0
 8000fba:	d008      	beq.n	8000fce <xvprintf+0x282>
 8000fbc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fbe:	1c5a      	adds	r2, r3, #1
 8000fc0:	633a      	str	r2, [r7, #48]	; 0x30
 8000fc2:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000fc6:	4413      	add	r3, r2
 8000fc8:	222d      	movs	r2, #45	; 0x2d
 8000fca:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000fce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000fd0:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000fd2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fd4:	f003 0301 	and.w	r3, r3, #1
 8000fd8:	2b00      	cmp	r3, #0
 8000fda:	d001      	beq.n	8000fe0 <xvprintf+0x294>
 8000fdc:	2330      	movs	r3, #48	; 0x30
 8000fde:	e000      	b.n	8000fe2 <xvprintf+0x296>
 8000fe0:	2320      	movs	r3, #32
 8000fe2:	77bb      	strb	r3, [r7, #30]
 8000fe4:	e003      	b.n	8000fee <xvprintf+0x2a2>
 8000fe6:	7fbb      	ldrb	r3, [r7, #30]
 8000fe8:	4618      	mov	r0, r3
 8000fea:	f7ff fe53 	bl	8000c94 <xputc>
 8000fee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000ff0:	f003 0302 	and.w	r3, r3, #2
 8000ff4:	2b00      	cmp	r3, #0
 8000ff6:	d105      	bne.n	8001004 <xvprintf+0x2b8>
 8000ff8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ffa:	1c5a      	adds	r2, r3, #1
 8000ffc:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ffe:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001000:	4293      	cmp	r3, r2
 8001002:	d3f0      	bcc.n	8000fe6 <xvprintf+0x29a>
 8001004:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001006:	3b01      	subs	r3, #1
 8001008:	633b      	str	r3, [r7, #48]	; 0x30
 800100a:	f107 0208 	add.w	r2, r7, #8
 800100e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001010:	4413      	add	r3, r2
 8001012:	781b      	ldrb	r3, [r3, #0]
 8001014:	4618      	mov	r0, r3
 8001016:	f7ff fe3d 	bl	8000c94 <xputc>
 800101a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800101c:	2b00      	cmp	r3, #0
 800101e:	d1f1      	bne.n	8001004 <xvprintf+0x2b8>
 8001020:	e002      	b.n	8001028 <xvprintf+0x2dc>
 8001022:	2020      	movs	r0, #32
 8001024:	f7ff fe36 	bl	8000c94 <xputc>
 8001028:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800102a:	1c5a      	adds	r2, r3, #1
 800102c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800102e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001030:	4293      	cmp	r3, r2
 8001032:	d3f6      	bcc.n	8001022 <xvprintf+0x2d6>
 8001034:	e68f      	b.n	8000d56 <xvprintf+0xa>
 8001036:	3738      	adds	r7, #56	; 0x38
 8001038:	46bd      	mov	sp, r7
 800103a:	bd80      	pop	{r7, pc}

0800103c <xprintf>:
 800103c:	b40f      	push	{r0, r1, r2, r3}
 800103e:	b580      	push	{r7, lr}
 8001040:	b082      	sub	sp, #8
 8001042:	af00      	add	r7, sp, #0
 8001044:	f107 0314 	add.w	r3, r7, #20
 8001048:	607b      	str	r3, [r7, #4]
 800104a:	6938      	ldr	r0, [r7, #16]
 800104c:	6879      	ldr	r1, [r7, #4]
 800104e:	f7ff fe7d 	bl	8000d4c <xvprintf>
 8001052:	3708      	adds	r7, #8
 8001054:	46bd      	mov	sp, r7
 8001056:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800105a:	b004      	add	sp, #16
 800105c:	4770      	bx	lr
 800105e:	bf00      	nop

08001060 <xsprintf>:
 8001060:	b40e      	push	{r1, r2, r3}
 8001062:	b580      	push	{r7, lr}
 8001064:	b085      	sub	sp, #20
 8001066:	af00      	add	r7, sp, #0
 8001068:	6078      	str	r0, [r7, #4]
 800106a:	4b0b      	ldr	r3, [pc, #44]	; (8001098 <xsprintf+0x38>)
 800106c:	687a      	ldr	r2, [r7, #4]
 800106e:	601a      	str	r2, [r3, #0]
 8001070:	f107 0320 	add.w	r3, r7, #32
 8001074:	60fb      	str	r3, [r7, #12]
 8001076:	69f8      	ldr	r0, [r7, #28]
 8001078:	68f9      	ldr	r1, [r7, #12]
 800107a:	f7ff fe67 	bl	8000d4c <xvprintf>
 800107e:	4b06      	ldr	r3, [pc, #24]	; (8001098 <xsprintf+0x38>)
 8001080:	681b      	ldr	r3, [r3, #0]
 8001082:	2200      	movs	r2, #0
 8001084:	701a      	strb	r2, [r3, #0]
 8001086:	4b04      	ldr	r3, [pc, #16]	; (8001098 <xsprintf+0x38>)
 8001088:	2200      	movs	r2, #0
 800108a:	601a      	str	r2, [r3, #0]
 800108c:	3714      	adds	r7, #20
 800108e:	46bd      	mov	sp, r7
 8001090:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001094:	b003      	add	sp, #12
 8001096:	4770      	bx	lr
 8001098:	20001394 	.word	0x20001394

0800109c <xfprintf>:
 800109c:	b40e      	push	{r1, r2, r3}
 800109e:	b580      	push	{r7, lr}
 80010a0:	b085      	sub	sp, #20
 80010a2:	af00      	add	r7, sp, #0
 80010a4:	6078      	str	r0, [r7, #4]
 80010a6:	4b0b      	ldr	r3, [pc, #44]	; (80010d4 <xfprintf+0x38>)
 80010a8:	681b      	ldr	r3, [r3, #0]
 80010aa:	60fb      	str	r3, [r7, #12]
 80010ac:	4b09      	ldr	r3, [pc, #36]	; (80010d4 <xfprintf+0x38>)
 80010ae:	687a      	ldr	r2, [r7, #4]
 80010b0:	601a      	str	r2, [r3, #0]
 80010b2:	f107 0320 	add.w	r3, r7, #32
 80010b6:	60bb      	str	r3, [r7, #8]
 80010b8:	69f8      	ldr	r0, [r7, #28]
 80010ba:	68b9      	ldr	r1, [r7, #8]
 80010bc:	f7ff fe46 	bl	8000d4c <xvprintf>
 80010c0:	4b04      	ldr	r3, [pc, #16]	; (80010d4 <xfprintf+0x38>)
 80010c2:	68fa      	ldr	r2, [r7, #12]
 80010c4:	601a      	str	r2, [r3, #0]
 80010c6:	3714      	adds	r7, #20
 80010c8:	46bd      	mov	sp, r7
 80010ca:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80010ce:	b003      	add	sp, #12
 80010d0:	4770      	bx	lr
 80010d2:	bf00      	nop
 80010d4:	20001390 	.word	0x20001390

080010d8 <put_dump>:
 80010d8:	b580      	push	{r7, lr}
 80010da:	b088      	sub	sp, #32
 80010dc:	af00      	add	r7, sp, #0
 80010de:	60f8      	str	r0, [r7, #12]
 80010e0:	60b9      	str	r1, [r7, #8]
 80010e2:	607a      	str	r2, [r7, #4]
 80010e4:	603b      	str	r3, [r7, #0]
 80010e6:	4835      	ldr	r0, [pc, #212]	; (80011bc <put_dump+0xe4>)
 80010e8:	68b9      	ldr	r1, [r7, #8]
 80010ea:	f7ff ffa7 	bl	800103c <xprintf>
 80010ee:	683b      	ldr	r3, [r7, #0]
 80010f0:	2b02      	cmp	r3, #2
 80010f2:	d03a      	beq.n	800116a <put_dump+0x92>
 80010f4:	2b04      	cmp	r3, #4
 80010f6:	d049      	beq.n	800118c <put_dump+0xb4>
 80010f8:	2b01      	cmp	r3, #1
 80010fa:	d158      	bne.n	80011ae <put_dump+0xd6>
 80010fc:	68fb      	ldr	r3, [r7, #12]
 80010fe:	613b      	str	r3, [r7, #16]
 8001100:	2300      	movs	r3, #0
 8001102:	61fb      	str	r3, [r7, #28]
 8001104:	e00a      	b.n	800111c <put_dump+0x44>
 8001106:	69fb      	ldr	r3, [r7, #28]
 8001108:	693a      	ldr	r2, [r7, #16]
 800110a:	4413      	add	r3, r2
 800110c:	781b      	ldrb	r3, [r3, #0]
 800110e:	482c      	ldr	r0, [pc, #176]	; (80011c0 <put_dump+0xe8>)
 8001110:	4619      	mov	r1, r3
 8001112:	f7ff ff93 	bl	800103c <xprintf>
 8001116:	69fb      	ldr	r3, [r7, #28]
 8001118:	3301      	adds	r3, #1
 800111a:	61fb      	str	r3, [r7, #28]
 800111c:	69fa      	ldr	r2, [r7, #28]
 800111e:	687b      	ldr	r3, [r7, #4]
 8001120:	429a      	cmp	r2, r3
 8001122:	dbf0      	blt.n	8001106 <put_dump+0x2e>
 8001124:	2020      	movs	r0, #32
 8001126:	f7ff fdb5 	bl	8000c94 <xputc>
 800112a:	2300      	movs	r3, #0
 800112c:	61fb      	str	r3, [r7, #28]
 800112e:	e017      	b.n	8001160 <put_dump+0x88>
 8001130:	69fb      	ldr	r3, [r7, #28]
 8001132:	693a      	ldr	r2, [r7, #16]
 8001134:	4413      	add	r3, r2
 8001136:	781b      	ldrb	r3, [r3, #0]
 8001138:	2b1f      	cmp	r3, #31
 800113a:	d90a      	bls.n	8001152 <put_dump+0x7a>
 800113c:	69fb      	ldr	r3, [r7, #28]
 800113e:	693a      	ldr	r2, [r7, #16]
 8001140:	4413      	add	r3, r2
 8001142:	781b      	ldrb	r3, [r3, #0]
 8001144:	2b7e      	cmp	r3, #126	; 0x7e
 8001146:	d804      	bhi.n	8001152 <put_dump+0x7a>
 8001148:	69fb      	ldr	r3, [r7, #28]
 800114a:	693a      	ldr	r2, [r7, #16]
 800114c:	4413      	add	r3, r2
 800114e:	781b      	ldrb	r3, [r3, #0]
 8001150:	e000      	b.n	8001154 <put_dump+0x7c>
 8001152:	232e      	movs	r3, #46	; 0x2e
 8001154:	4618      	mov	r0, r3
 8001156:	f7ff fd9d 	bl	8000c94 <xputc>
 800115a:	69fb      	ldr	r3, [r7, #28]
 800115c:	3301      	adds	r3, #1
 800115e:	61fb      	str	r3, [r7, #28]
 8001160:	69fa      	ldr	r2, [r7, #28]
 8001162:	687b      	ldr	r3, [r7, #4]
 8001164:	429a      	cmp	r2, r3
 8001166:	dbe3      	blt.n	8001130 <put_dump+0x58>
 8001168:	e021      	b.n	80011ae <put_dump+0xd6>
 800116a:	68fb      	ldr	r3, [r7, #12]
 800116c:	61bb      	str	r3, [r7, #24]
 800116e:	69bb      	ldr	r3, [r7, #24]
 8001170:	1c9a      	adds	r2, r3, #2
 8001172:	61ba      	str	r2, [r7, #24]
 8001174:	881b      	ldrh	r3, [r3, #0]
 8001176:	4813      	ldr	r0, [pc, #76]	; (80011c4 <put_dump+0xec>)
 8001178:	4619      	mov	r1, r3
 800117a:	f7ff ff5f 	bl	800103c <xprintf>
 800117e:	687b      	ldr	r3, [r7, #4]
 8001180:	3b01      	subs	r3, #1
 8001182:	607b      	str	r3, [r7, #4]
 8001184:	687b      	ldr	r3, [r7, #4]
 8001186:	2b00      	cmp	r3, #0
 8001188:	d1f1      	bne.n	800116e <put_dump+0x96>
 800118a:	e010      	b.n	80011ae <put_dump+0xd6>
 800118c:	68fb      	ldr	r3, [r7, #12]
 800118e:	617b      	str	r3, [r7, #20]
 8001190:	697b      	ldr	r3, [r7, #20]
 8001192:	1d1a      	adds	r2, r3, #4
 8001194:	617a      	str	r2, [r7, #20]
 8001196:	681b      	ldr	r3, [r3, #0]
 8001198:	480b      	ldr	r0, [pc, #44]	; (80011c8 <put_dump+0xf0>)
 800119a:	4619      	mov	r1, r3
 800119c:	f7ff ff4e 	bl	800103c <xprintf>
 80011a0:	687b      	ldr	r3, [r7, #4]
 80011a2:	3b01      	subs	r3, #1
 80011a4:	607b      	str	r3, [r7, #4]
 80011a6:	687b      	ldr	r3, [r7, #4]
 80011a8:	2b00      	cmp	r3, #0
 80011aa:	d1f1      	bne.n	8001190 <put_dump+0xb8>
 80011ac:	bf00      	nop
 80011ae:	200a      	movs	r0, #10
 80011b0:	f7ff fd70 	bl	8000c94 <xputc>
 80011b4:	3720      	adds	r7, #32
 80011b6:	46bd      	mov	sp, r7
 80011b8:	bd80      	pop	{r7, pc}
 80011ba:	bf00      	nop
 80011bc:	0800a6dc 	.word	0x0800a6dc
 80011c0:	0800a6e4 	.word	0x0800a6e4
 80011c4:	0800a6ec 	.word	0x0800a6ec
 80011c8:	0800a6f4 	.word	0x0800a6f4

080011cc <xgets>:
 80011cc:	b580      	push	{r7, lr}
 80011ce:	b084      	sub	sp, #16
 80011d0:	af00      	add	r7, sp, #0
 80011d2:	6078      	str	r0, [r7, #4]
 80011d4:	6039      	str	r1, [r7, #0]
 80011d6:	4b25      	ldr	r3, [pc, #148]	; (800126c <xgets+0xa0>)
 80011d8:	681b      	ldr	r3, [r3, #0]
 80011da:	2b00      	cmp	r3, #0
 80011dc:	d101      	bne.n	80011e2 <xgets+0x16>
 80011de:	2300      	movs	r3, #0
 80011e0:	e03f      	b.n	8001262 <xgets+0x96>
 80011e2:	2300      	movs	r3, #0
 80011e4:	60fb      	str	r3, [r7, #12]
 80011e6:	4b21      	ldr	r3, [pc, #132]	; (800126c <xgets+0xa0>)
 80011e8:	681b      	ldr	r3, [r3, #0]
 80011ea:	4798      	blx	r3
 80011ec:	4603      	mov	r3, r0
 80011ee:	60bb      	str	r3, [r7, #8]
 80011f0:	68bb      	ldr	r3, [r7, #8]
 80011f2:	2b00      	cmp	r3, #0
 80011f4:	d101      	bne.n	80011fa <xgets+0x2e>
 80011f6:	2300      	movs	r3, #0
 80011f8:	e033      	b.n	8001262 <xgets+0x96>
 80011fa:	68bb      	ldr	r3, [r7, #8]
 80011fc:	2b0d      	cmp	r3, #13
 80011fe:	d10a      	bne.n	8001216 <xgets+0x4a>
 8001200:	bf00      	nop
 8001202:	68fb      	ldr	r3, [r7, #12]
 8001204:	687a      	ldr	r2, [r7, #4]
 8001206:	4413      	add	r3, r2
 8001208:	2200      	movs	r2, #0
 800120a:	701a      	strb	r2, [r3, #0]
 800120c:	200a      	movs	r0, #10
 800120e:	f7ff fd41 	bl	8000c94 <xputc>
 8001212:	2301      	movs	r3, #1
 8001214:	e025      	b.n	8001262 <xgets+0x96>
 8001216:	68bb      	ldr	r3, [r7, #8]
 8001218:	2b08      	cmp	r3, #8
 800121a:	d10b      	bne.n	8001234 <xgets+0x68>
 800121c:	68fb      	ldr	r3, [r7, #12]
 800121e:	2b00      	cmp	r3, #0
 8001220:	d008      	beq.n	8001234 <xgets+0x68>
 8001222:	68fb      	ldr	r3, [r7, #12]
 8001224:	3b01      	subs	r3, #1
 8001226:	60fb      	str	r3, [r7, #12]
 8001228:	68bb      	ldr	r3, [r7, #8]
 800122a:	b2db      	uxtb	r3, r3
 800122c:	4618      	mov	r0, r3
 800122e:	f7ff fd31 	bl	8000c94 <xputc>
 8001232:	e015      	b.n	8001260 <xgets+0x94>
 8001234:	68bb      	ldr	r3, [r7, #8]
 8001236:	2b1f      	cmp	r3, #31
 8001238:	dd12      	ble.n	8001260 <xgets+0x94>
 800123a:	683b      	ldr	r3, [r7, #0]
 800123c:	1e5a      	subs	r2, r3, #1
 800123e:	68fb      	ldr	r3, [r7, #12]
 8001240:	429a      	cmp	r2, r3
 8001242:	dd0d      	ble.n	8001260 <xgets+0x94>
 8001244:	68fb      	ldr	r3, [r7, #12]
 8001246:	1c5a      	adds	r2, r3, #1
 8001248:	60fa      	str	r2, [r7, #12]
 800124a:	687a      	ldr	r2, [r7, #4]
 800124c:	4413      	add	r3, r2
 800124e:	68ba      	ldr	r2, [r7, #8]
 8001250:	b2d2      	uxtb	r2, r2
 8001252:	701a      	strb	r2, [r3, #0]
 8001254:	68bb      	ldr	r3, [r7, #8]
 8001256:	b2db      	uxtb	r3, r3
 8001258:	4618      	mov	r0, r3
 800125a:	f7ff fd1b 	bl	8000c94 <xputc>
 800125e:	e7c2      	b.n	80011e6 <xgets+0x1a>
 8001260:	e7c1      	b.n	80011e6 <xgets+0x1a>
 8001262:	4618      	mov	r0, r3
 8001264:	3710      	adds	r7, #16
 8001266:	46bd      	mov	sp, r7
 8001268:	bd80      	pop	{r7, pc}
 800126a:	bf00      	nop
 800126c:	20001398 	.word	0x20001398

08001270 <xfgets>:
 8001270:	b580      	push	{r7, lr}
 8001272:	b086      	sub	sp, #24
 8001274:	af00      	add	r7, sp, #0
 8001276:	60f8      	str	r0, [r7, #12]
 8001278:	60b9      	str	r1, [r7, #8]
 800127a:	607a      	str	r2, [r7, #4]
 800127c:	4b09      	ldr	r3, [pc, #36]	; (80012a4 <xfgets+0x34>)
 800127e:	681b      	ldr	r3, [r3, #0]
 8001280:	617b      	str	r3, [r7, #20]
 8001282:	4b08      	ldr	r3, [pc, #32]	; (80012a4 <xfgets+0x34>)
 8001284:	68fa      	ldr	r2, [r7, #12]
 8001286:	601a      	str	r2, [r3, #0]
 8001288:	68b8      	ldr	r0, [r7, #8]
 800128a:	6879      	ldr	r1, [r7, #4]
 800128c:	f7ff ff9e 	bl	80011cc <xgets>
 8001290:	6138      	str	r0, [r7, #16]
 8001292:	4b04      	ldr	r3, [pc, #16]	; (80012a4 <xfgets+0x34>)
 8001294:	697a      	ldr	r2, [r7, #20]
 8001296:	601a      	str	r2, [r3, #0]
 8001298:	693b      	ldr	r3, [r7, #16]
 800129a:	4618      	mov	r0, r3
 800129c:	3718      	adds	r7, #24
 800129e:	46bd      	mov	sp, r7
 80012a0:	bd80      	pop	{r7, pc}
 80012a2:	bf00      	nop
 80012a4:	20001398 	.word	0x20001398

080012a8 <xatoi>:
 80012a8:	b480      	push	{r7}
 80012aa:	b085      	sub	sp, #20
 80012ac:	af00      	add	r7, sp, #0
 80012ae:	6078      	str	r0, [r7, #4]
 80012b0:	6039      	str	r1, [r7, #0]
 80012b2:	2300      	movs	r3, #0
 80012b4:	727b      	strb	r3, [r7, #9]
 80012b6:	683b      	ldr	r3, [r7, #0]
 80012b8:	2200      	movs	r2, #0
 80012ba:	601a      	str	r2, [r3, #0]
 80012bc:	e004      	b.n	80012c8 <xatoi+0x20>
 80012be:	687b      	ldr	r3, [r7, #4]
 80012c0:	681b      	ldr	r3, [r3, #0]
 80012c2:	1c5a      	adds	r2, r3, #1
 80012c4:	687b      	ldr	r3, [r7, #4]
 80012c6:	601a      	str	r2, [r3, #0]
 80012c8:	687b      	ldr	r3, [r7, #4]
 80012ca:	681b      	ldr	r3, [r3, #0]
 80012cc:	781b      	ldrb	r3, [r3, #0]
 80012ce:	72fb      	strb	r3, [r7, #11]
 80012d0:	7afb      	ldrb	r3, [r7, #11]
 80012d2:	2b20      	cmp	r3, #32
 80012d4:	d0f3      	beq.n	80012be <xatoi+0x16>
 80012d6:	7afb      	ldrb	r3, [r7, #11]
 80012d8:	2b2d      	cmp	r3, #45	; 0x2d
 80012da:	d10a      	bne.n	80012f2 <xatoi+0x4a>
 80012dc:	2301      	movs	r3, #1
 80012de:	727b      	strb	r3, [r7, #9]
 80012e0:	687b      	ldr	r3, [r7, #4]
 80012e2:	681b      	ldr	r3, [r3, #0]
 80012e4:	1c5a      	adds	r2, r3, #1
 80012e6:	687b      	ldr	r3, [r7, #4]
 80012e8:	601a      	str	r2, [r3, #0]
 80012ea:	687b      	ldr	r3, [r7, #4]
 80012ec:	681b      	ldr	r3, [r3, #0]
 80012ee:	781b      	ldrb	r3, [r3, #0]
 80012f0:	72fb      	strb	r3, [r7, #11]
 80012f2:	7afb      	ldrb	r3, [r7, #11]
 80012f4:	2b30      	cmp	r3, #48	; 0x30
 80012f6:	d136      	bne.n	8001366 <xatoi+0xbe>
 80012f8:	687b      	ldr	r3, [r7, #4]
 80012fa:	681b      	ldr	r3, [r3, #0]
 80012fc:	1c5a      	adds	r2, r3, #1
 80012fe:	687b      	ldr	r3, [r7, #4]
 8001300:	601a      	str	r2, [r3, #0]
 8001302:	687b      	ldr	r3, [r7, #4]
 8001304:	681b      	ldr	r3, [r3, #0]
 8001306:	781b      	ldrb	r3, [r3, #0]
 8001308:	72fb      	strb	r3, [r7, #11]
 800130a:	7afb      	ldrb	r3, [r7, #11]
 800130c:	2b62      	cmp	r3, #98	; 0x62
 800130e:	d00d      	beq.n	800132c <xatoi+0x84>
 8001310:	2b78      	cmp	r3, #120	; 0x78
 8001312:	d117      	bne.n	8001344 <xatoi+0x9c>
 8001314:	2310      	movs	r3, #16
 8001316:	72bb      	strb	r3, [r7, #10]
 8001318:	687b      	ldr	r3, [r7, #4]
 800131a:	681b      	ldr	r3, [r3, #0]
 800131c:	1c5a      	adds	r2, r3, #1
 800131e:	687b      	ldr	r3, [r7, #4]
 8001320:	601a      	str	r2, [r3, #0]
 8001322:	687b      	ldr	r3, [r7, #4]
 8001324:	681b      	ldr	r3, [r3, #0]
 8001326:	781b      	ldrb	r3, [r3, #0]
 8001328:	72fb      	strb	r3, [r7, #11]
 800132a:	e01b      	b.n	8001364 <xatoi+0xbc>
 800132c:	2302      	movs	r3, #2
 800132e:	72bb      	strb	r3, [r7, #10]
 8001330:	687b      	ldr	r3, [r7, #4]
 8001332:	681b      	ldr	r3, [r3, #0]
 8001334:	1c5a      	adds	r2, r3, #1
 8001336:	687b      	ldr	r3, [r7, #4]
 8001338:	601a      	str	r2, [r3, #0]
 800133a:	687b      	ldr	r3, [r7, #4]
 800133c:	681b      	ldr	r3, [r3, #0]
 800133e:	781b      	ldrb	r3, [r3, #0]
 8001340:	72fb      	strb	r3, [r7, #11]
 8001342:	e00f      	b.n	8001364 <xatoi+0xbc>
 8001344:	7afb      	ldrb	r3, [r7, #11]
 8001346:	2b20      	cmp	r3, #32
 8001348:	d801      	bhi.n	800134e <xatoi+0xa6>
 800134a:	2301      	movs	r3, #1
 800134c:	e04f      	b.n	80013ee <xatoi+0x146>
 800134e:	7afb      	ldrb	r3, [r7, #11]
 8001350:	2b2f      	cmp	r3, #47	; 0x2f
 8001352:	d902      	bls.n	800135a <xatoi+0xb2>
 8001354:	7afb      	ldrb	r3, [r7, #11]
 8001356:	2b39      	cmp	r3, #57	; 0x39
 8001358:	d901      	bls.n	800135e <xatoi+0xb6>
 800135a:	2300      	movs	r3, #0
 800135c:	e047      	b.n	80013ee <xatoi+0x146>
 800135e:	2308      	movs	r3, #8
 8001360:	72bb      	strb	r3, [r7, #10]
 8001362:	e00a      	b.n	800137a <xatoi+0xd2>
 8001364:	e009      	b.n	800137a <xatoi+0xd2>
 8001366:	7afb      	ldrb	r3, [r7, #11]
 8001368:	2b2f      	cmp	r3, #47	; 0x2f
 800136a:	d902      	bls.n	8001372 <xatoi+0xca>
 800136c:	7afb      	ldrb	r3, [r7, #11]
 800136e:	2b39      	cmp	r3, #57	; 0x39
 8001370:	d901      	bls.n	8001376 <xatoi+0xce>
 8001372:	2300      	movs	r3, #0
 8001374:	e03b      	b.n	80013ee <xatoi+0x146>
 8001376:	230a      	movs	r3, #10
 8001378:	72bb      	strb	r3, [r7, #10]
 800137a:	2300      	movs	r3, #0
 800137c:	60fb      	str	r3, [r7, #12]
 800137e:	e029      	b.n	80013d4 <xatoi+0x12c>
 8001380:	7afb      	ldrb	r3, [r7, #11]
 8001382:	2b60      	cmp	r3, #96	; 0x60
 8001384:	d902      	bls.n	800138c <xatoi+0xe4>
 8001386:	7afb      	ldrb	r3, [r7, #11]
 8001388:	3b20      	subs	r3, #32
 800138a:	72fb      	strb	r3, [r7, #11]
 800138c:	7afb      	ldrb	r3, [r7, #11]
 800138e:	3b30      	subs	r3, #48	; 0x30
 8001390:	72fb      	strb	r3, [r7, #11]
 8001392:	7afb      	ldrb	r3, [r7, #11]
 8001394:	2b10      	cmp	r3, #16
 8001396:	d907      	bls.n	80013a8 <xatoi+0x100>
 8001398:	7afb      	ldrb	r3, [r7, #11]
 800139a:	3b07      	subs	r3, #7
 800139c:	72fb      	strb	r3, [r7, #11]
 800139e:	7afb      	ldrb	r3, [r7, #11]
 80013a0:	2b09      	cmp	r3, #9
 80013a2:	d801      	bhi.n	80013a8 <xatoi+0x100>
 80013a4:	2300      	movs	r3, #0
 80013a6:	e022      	b.n	80013ee <xatoi+0x146>
 80013a8:	7afa      	ldrb	r2, [r7, #11]
 80013aa:	7abb      	ldrb	r3, [r7, #10]
 80013ac:	429a      	cmp	r2, r3
 80013ae:	d301      	bcc.n	80013b4 <xatoi+0x10c>
 80013b0:	2300      	movs	r3, #0
 80013b2:	e01c      	b.n	80013ee <xatoi+0x146>
 80013b4:	7abb      	ldrb	r3, [r7, #10]
 80013b6:	68fa      	ldr	r2, [r7, #12]
 80013b8:	fb02 f203 	mul.w	r2, r2, r3
 80013bc:	7afb      	ldrb	r3, [r7, #11]
 80013be:	4413      	add	r3, r2
 80013c0:	60fb      	str	r3, [r7, #12]
 80013c2:	687b      	ldr	r3, [r7, #4]
 80013c4:	681b      	ldr	r3, [r3, #0]
 80013c6:	1c5a      	adds	r2, r3, #1
 80013c8:	687b      	ldr	r3, [r7, #4]
 80013ca:	601a      	str	r2, [r3, #0]
 80013cc:	687b      	ldr	r3, [r7, #4]
 80013ce:	681b      	ldr	r3, [r3, #0]
 80013d0:	781b      	ldrb	r3, [r3, #0]
 80013d2:	72fb      	strb	r3, [r7, #11]
 80013d4:	7afb      	ldrb	r3, [r7, #11]
 80013d6:	2b20      	cmp	r3, #32
 80013d8:	d8d2      	bhi.n	8001380 <xatoi+0xd8>
 80013da:	7a7b      	ldrb	r3, [r7, #9]
 80013dc:	2b00      	cmp	r3, #0
 80013de:	d002      	beq.n	80013e6 <xatoi+0x13e>
 80013e0:	68fb      	ldr	r3, [r7, #12]
 80013e2:	425b      	negs	r3, r3
 80013e4:	60fb      	str	r3, [r7, #12]
 80013e6:	68fa      	ldr	r2, [r7, #12]
 80013e8:	683b      	ldr	r3, [r7, #0]
 80013ea:	601a      	str	r2, [r3, #0]
 80013ec:	2301      	movs	r3, #1
 80013ee:	4618      	mov	r0, r3
 80013f0:	3714      	adds	r7, #20
 80013f2:	46bd      	mov	sp, r7
 80013f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80013f8:	4770      	bx	lr
 80013fa:	bf00      	nop

080013fc <NVIC_EnableIRQ>:
 80013fc:	b480      	push	{r7}
 80013fe:	b083      	sub	sp, #12
 8001400:	af00      	add	r7, sp, #0
 8001402:	4603      	mov	r3, r0
 8001404:	71fb      	strb	r3, [r7, #7]
 8001406:	4b08      	ldr	r3, [pc, #32]	; (8001428 <NVIC_EnableIRQ+0x2c>)
 8001408:	f997 2007 	ldrsb.w	r2, [r7, #7]
 800140c:	0952      	lsrs	r2, r2, #5
 800140e:	79f9      	ldrb	r1, [r7, #7]
 8001410:	f001 011f 	and.w	r1, r1, #31
 8001414:	2001      	movs	r0, #1
 8001416:	fa00 f101 	lsl.w	r1, r0, r1
 800141a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800141e:	370c      	adds	r7, #12
 8001420:	46bd      	mov	sp, r7
 8001422:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001426:	4770      	bx	lr
 8001428:	e000e100 	.word	0xe000e100

0800142c <adc_common_init>:
 800142c:	b480      	push	{r7}
 800142e:	af00      	add	r7, sp, #0
 8001430:	4b07      	ldr	r3, [pc, #28]	; (8001450 <adc_common_init+0x24>)
 8001432:	4a07      	ldr	r2, [pc, #28]	; (8001450 <adc_common_init+0x24>)
 8001434:	6852      	ldr	r2, [r2, #4]
 8001436:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 800143a:	605a      	str	r2, [r3, #4]
 800143c:	4b04      	ldr	r3, [pc, #16]	; (8001450 <adc_common_init+0x24>)
 800143e:	4a04      	ldr	r2, [pc, #16]	; (8001450 <adc_common_init+0x24>)
 8001440:	6852      	ldr	r2, [r2, #4]
 8001442:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001446:	605a      	str	r2, [r3, #4]
 8001448:	46bd      	mov	sp, r7
 800144a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800144e:	4770      	bx	lr
 8001450:	40012300 	.word	0x40012300

08001454 <adc1_init>:
 8001454:	b480      	push	{r7}
 8001456:	af00      	add	r7, sp, #0
 8001458:	4b29      	ldr	r3, [pc, #164]	; (8001500 <adc1_init+0xac>)
 800145a:	4a29      	ldr	r2, [pc, #164]	; (8001500 <adc1_init+0xac>)
 800145c:	6c52      	ldr	r2, [r2, #68]	; 0x44
 800145e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8001462:	645a      	str	r2, [r3, #68]	; 0x44
 8001464:	4b26      	ldr	r3, [pc, #152]	; (8001500 <adc1_init+0xac>)
 8001466:	4a26      	ldr	r2, [pc, #152]	; (8001500 <adc1_init+0xac>)
 8001468:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800146a:	f042 0201 	orr.w	r2, r2, #1
 800146e:	631a      	str	r2, [r3, #48]	; 0x30
 8001470:	4b24      	ldr	r3, [pc, #144]	; (8001504 <adc1_init+0xb0>)
 8001472:	4a24      	ldr	r2, [pc, #144]	; (8001504 <adc1_init+0xb0>)
 8001474:	6812      	ldr	r2, [r2, #0]
 8001476:	f022 0203 	bic.w	r2, r2, #3
 800147a:	601a      	str	r2, [r3, #0]
 800147c:	4b21      	ldr	r3, [pc, #132]	; (8001504 <adc1_init+0xb0>)
 800147e:	4a21      	ldr	r2, [pc, #132]	; (8001504 <adc1_init+0xb0>)
 8001480:	6812      	ldr	r2, [r2, #0]
 8001482:	f042 0203 	orr.w	r2, r2, #3
 8001486:	601a      	str	r2, [r3, #0]
 8001488:	4b1f      	ldr	r3, [pc, #124]	; (8001508 <adc1_init+0xb4>)
 800148a:	4a1f      	ldr	r2, [pc, #124]	; (8001508 <adc1_init+0xb4>)
 800148c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800148e:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8001492:	62da      	str	r2, [r3, #44]	; 0x2c
 8001494:	4b1c      	ldr	r3, [pc, #112]	; (8001508 <adc1_init+0xb4>)
 8001496:	4a1c      	ldr	r2, [pc, #112]	; (8001508 <adc1_init+0xb4>)
 8001498:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800149a:	62da      	str	r2, [r3, #44]	; 0x2c
 800149c:	4b1a      	ldr	r3, [pc, #104]	; (8001508 <adc1_init+0xb4>)
 800149e:	4a1a      	ldr	r2, [pc, #104]	; (8001508 <adc1_init+0xb4>)
 80014a0:	6852      	ldr	r2, [r2, #4]
 80014a2:	f042 0220 	orr.w	r2, r2, #32
 80014a6:	605a      	str	r2, [r3, #4]
 80014a8:	4b17      	ldr	r3, [pc, #92]	; (8001508 <adc1_init+0xb4>)
 80014aa:	4a17      	ldr	r2, [pc, #92]	; (8001508 <adc1_init+0xb4>)
 80014ac:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80014ae:	f022 021f 	bic.w	r2, r2, #31
 80014b2:	635a      	str	r2, [r3, #52]	; 0x34
 80014b4:	4b14      	ldr	r3, [pc, #80]	; (8001508 <adc1_init+0xb4>)
 80014b6:	4a14      	ldr	r2, [pc, #80]	; (8001508 <adc1_init+0xb4>)
 80014b8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80014ba:	635a      	str	r2, [r3, #52]	; 0x34
 80014bc:	4b12      	ldr	r3, [pc, #72]	; (8001508 <adc1_init+0xb4>)
 80014be:	4a12      	ldr	r2, [pc, #72]	; (8001508 <adc1_init+0xb4>)
 80014c0:	6892      	ldr	r2, [r2, #8]
 80014c2:	f022 5240 	bic.w	r2, r2, #805306368	; 0x30000000
 80014c6:	609a      	str	r2, [r3, #8]
 80014c8:	4b0f      	ldr	r3, [pc, #60]	; (8001508 <adc1_init+0xb4>)
 80014ca:	4a0f      	ldr	r2, [pc, #60]	; (8001508 <adc1_init+0xb4>)
 80014cc:	6892      	ldr	r2, [r2, #8]
 80014ce:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 80014d2:	609a      	str	r2, [r3, #8]
 80014d4:	4b0c      	ldr	r3, [pc, #48]	; (8001508 <adc1_init+0xb4>)
 80014d6:	4a0c      	ldr	r2, [pc, #48]	; (8001508 <adc1_init+0xb4>)
 80014d8:	6892      	ldr	r2, [r2, #8]
 80014da:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80014de:	609a      	str	r2, [r3, #8]
 80014e0:	4b09      	ldr	r3, [pc, #36]	; (8001508 <adc1_init+0xb4>)
 80014e2:	4a09      	ldr	r2, [pc, #36]	; (8001508 <adc1_init+0xb4>)
 80014e4:	6892      	ldr	r2, [r2, #8]
 80014e6:	f042 62a0 	orr.w	r2, r2, #83886080	; 0x5000000
 80014ea:	609a      	str	r2, [r3, #8]
 80014ec:	4b06      	ldr	r3, [pc, #24]	; (8001508 <adc1_init+0xb4>)
 80014ee:	4a06      	ldr	r2, [pc, #24]	; (8001508 <adc1_init+0xb4>)
 80014f0:	6892      	ldr	r2, [r2, #8]
 80014f2:	f042 0201 	orr.w	r2, r2, #1
 80014f6:	609a      	str	r2, [r3, #8]
 80014f8:	46bd      	mov	sp, r7
 80014fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014fe:	4770      	bx	lr
 8001500:	40023800 	.word	0x40023800
 8001504:	40020000 	.word	0x40020000
 8001508:	40012000 	.word	0x40012000

0800150c <adc2_init>:
 800150c:	b480      	push	{r7}
 800150e:	af00      	add	r7, sp, #0
 8001510:	4b1b      	ldr	r3, [pc, #108]	; (8001580 <adc2_init+0x74>)
 8001512:	4a1b      	ldr	r2, [pc, #108]	; (8001580 <adc2_init+0x74>)
 8001514:	6c52      	ldr	r2, [r2, #68]	; 0x44
 8001516:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 800151a:	645a      	str	r2, [r3, #68]	; 0x44
 800151c:	4b18      	ldr	r3, [pc, #96]	; (8001580 <adc2_init+0x74>)
 800151e:	4a18      	ldr	r2, [pc, #96]	; (8001580 <adc2_init+0x74>)
 8001520:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001522:	f042 0201 	orr.w	r2, r2, #1
 8001526:	631a      	str	r2, [r3, #48]	; 0x30
 8001528:	4b16      	ldr	r3, [pc, #88]	; (8001584 <adc2_init+0x78>)
 800152a:	4a16      	ldr	r2, [pc, #88]	; (8001584 <adc2_init+0x78>)
 800152c:	6812      	ldr	r2, [r2, #0]
 800152e:	f022 020c 	bic.w	r2, r2, #12
 8001532:	601a      	str	r2, [r3, #0]
 8001534:	4b13      	ldr	r3, [pc, #76]	; (8001584 <adc2_init+0x78>)
 8001536:	4a13      	ldr	r2, [pc, #76]	; (8001584 <adc2_init+0x78>)
 8001538:	6812      	ldr	r2, [r2, #0]
 800153a:	f042 020c 	orr.w	r2, r2, #12
 800153e:	601a      	str	r2, [r3, #0]
 8001540:	4b11      	ldr	r3, [pc, #68]	; (8001588 <adc2_init+0x7c>)
 8001542:	4a11      	ldr	r2, [pc, #68]	; (8001588 <adc2_init+0x7c>)
 8001544:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001546:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800154a:	62da      	str	r2, [r3, #44]	; 0x2c
 800154c:	4b0e      	ldr	r3, [pc, #56]	; (8001588 <adc2_init+0x7c>)
 800154e:	4a0e      	ldr	r2, [pc, #56]	; (8001588 <adc2_init+0x7c>)
 8001550:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001552:	62da      	str	r2, [r3, #44]	; 0x2c
 8001554:	4b0c      	ldr	r3, [pc, #48]	; (8001588 <adc2_init+0x7c>)
 8001556:	4a0c      	ldr	r2, [pc, #48]	; (8001588 <adc2_init+0x7c>)
 8001558:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800155a:	f022 021f 	bic.w	r2, r2, #31
 800155e:	635a      	str	r2, [r3, #52]	; 0x34
 8001560:	4b09      	ldr	r3, [pc, #36]	; (8001588 <adc2_init+0x7c>)
 8001562:	4a09      	ldr	r2, [pc, #36]	; (8001588 <adc2_init+0x7c>)
 8001564:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001566:	f042 0201 	orr.w	r2, r2, #1
 800156a:	635a      	str	r2, [r3, #52]	; 0x34
 800156c:	4b06      	ldr	r3, [pc, #24]	; (8001588 <adc2_init+0x7c>)
 800156e:	4a06      	ldr	r2, [pc, #24]	; (8001588 <adc2_init+0x7c>)
 8001570:	6892      	ldr	r2, [r2, #8]
 8001572:	f042 0201 	orr.w	r2, r2, #1
 8001576:	609a      	str	r2, [r3, #8]
 8001578:	46bd      	mov	sp, r7
 800157a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800157e:	4770      	bx	lr
 8001580:	40023800 	.word	0x40023800
 8001584:	40020000 	.word	0x40020000
 8001588:	40012100 	.word	0x40012100

0800158c <adc3_init>:
 800158c:	b480      	push	{r7}
 800158e:	af00      	add	r7, sp, #0
 8001590:	4b1b      	ldr	r3, [pc, #108]	; (8001600 <adc3_init+0x74>)
 8001592:	4a1b      	ldr	r2, [pc, #108]	; (8001600 <adc3_init+0x74>)
 8001594:	6c52      	ldr	r2, [r2, #68]	; 0x44
 8001596:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800159a:	645a      	str	r2, [r3, #68]	; 0x44
 800159c:	4b18      	ldr	r3, [pc, #96]	; (8001600 <adc3_init+0x74>)
 800159e:	4a18      	ldr	r2, [pc, #96]	; (8001600 <adc3_init+0x74>)
 80015a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80015a2:	f042 0201 	orr.w	r2, r2, #1
 80015a6:	631a      	str	r2, [r3, #48]	; 0x30
 80015a8:	4b16      	ldr	r3, [pc, #88]	; (8001604 <adc3_init+0x78>)
 80015aa:	4a16      	ldr	r2, [pc, #88]	; (8001604 <adc3_init+0x78>)
 80015ac:	6812      	ldr	r2, [r2, #0]
 80015ae:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 80015b2:	601a      	str	r2, [r3, #0]
 80015b4:	4b13      	ldr	r3, [pc, #76]	; (8001604 <adc3_init+0x78>)
 80015b6:	4a13      	ldr	r2, [pc, #76]	; (8001604 <adc3_init+0x78>)
 80015b8:	6812      	ldr	r2, [r2, #0]
 80015ba:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 80015be:	601a      	str	r2, [r3, #0]
 80015c0:	4b11      	ldr	r3, [pc, #68]	; (8001608 <adc3_init+0x7c>)
 80015c2:	4a11      	ldr	r2, [pc, #68]	; (8001608 <adc3_init+0x7c>)
 80015c4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80015c6:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80015ca:	62da      	str	r2, [r3, #44]	; 0x2c
 80015cc:	4b0e      	ldr	r3, [pc, #56]	; (8001608 <adc3_init+0x7c>)
 80015ce:	4a0e      	ldr	r2, [pc, #56]	; (8001608 <adc3_init+0x7c>)
 80015d0:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80015d2:	62da      	str	r2, [r3, #44]	; 0x2c
 80015d4:	4b0c      	ldr	r3, [pc, #48]	; (8001608 <adc3_init+0x7c>)
 80015d6:	4a0c      	ldr	r2, [pc, #48]	; (8001608 <adc3_init+0x7c>)
 80015d8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80015da:	f022 021f 	bic.w	r2, r2, #31
 80015de:	635a      	str	r2, [r3, #52]	; 0x34
 80015e0:	4b09      	ldr	r3, [pc, #36]	; (8001608 <adc3_init+0x7c>)
 80015e2:	4a09      	ldr	r2, [pc, #36]	; (8001608 <adc3_init+0x7c>)
 80015e4:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80015e6:	f042 0203 	orr.w	r2, r2, #3
 80015ea:	635a      	str	r2, [r3, #52]	; 0x34
 80015ec:	4b06      	ldr	r3, [pc, #24]	; (8001608 <adc3_init+0x7c>)
 80015ee:	4a06      	ldr	r2, [pc, #24]	; (8001608 <adc3_init+0x7c>)
 80015f0:	6892      	ldr	r2, [r2, #8]
 80015f2:	f042 0201 	orr.w	r2, r2, #1
 80015f6:	609a      	str	r2, [r3, #8]
 80015f8:	46bd      	mov	sp, r7
 80015fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80015fe:	4770      	bx	lr
 8001600:	40023800 	.word	0x40023800
 8001604:	40020000 	.word	0x40020000
 8001608:	40012200 	.word	0x40012200

0800160c <adc_set_trigger>:
 800160c:	b480      	push	{r7}
 800160e:	af00      	add	r7, sp, #0
 8001610:	4b2d      	ldr	r3, [pc, #180]	; (80016c8 <adc_set_trigger+0xbc>)
 8001612:	4a2d      	ldr	r2, [pc, #180]	; (80016c8 <adc_set_trigger+0xbc>)
 8001614:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001616:	f042 0201 	orr.w	r2, r2, #1
 800161a:	641a      	str	r2, [r3, #64]	; 0x40
 800161c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001620:	2229      	movs	r2, #41	; 0x29
 8001622:	851a      	strh	r2, [r3, #40]	; 0x28
 8001624:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001628:	2203      	movs	r2, #3
 800162a:	62da      	str	r2, [r3, #44]	; 0x2c
 800162c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001630:	2202      	movs	r2, #2
 8001632:	641a      	str	r2, [r3, #64]	; 0x40
 8001634:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001638:	2200      	movs	r2, #0
 800163a:	839a      	strh	r2, [r3, #28]
 800163c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001640:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001644:	8b92      	ldrh	r2, [r2, #28]
 8001646:	b292      	uxth	r2, r2
 8001648:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 800164c:	b292      	uxth	r2, r2
 800164e:	839a      	strh	r2, [r3, #28]
 8001650:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001654:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001658:	8c12      	ldrh	r2, [r2, #32]
 800165a:	b292      	uxth	r2, r2
 800165c:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8001660:	b292      	uxth	r2, r2
 8001662:	841a      	strh	r2, [r3, #32]
 8001664:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001668:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800166c:	8812      	ldrh	r2, [r2, #0]
 800166e:	b292      	uxth	r2, r2
 8001670:	f042 0201 	orr.w	r2, r2, #1
 8001674:	b292      	uxth	r2, r2
 8001676:	801a      	strh	r2, [r3, #0]
 8001678:	4b13      	ldr	r3, [pc, #76]	; (80016c8 <adc_set_trigger+0xbc>)
 800167a:	4a13      	ldr	r2, [pc, #76]	; (80016c8 <adc_set_trigger+0xbc>)
 800167c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800167e:	f042 0202 	orr.w	r2, r2, #2
 8001682:	631a      	str	r2, [r3, #48]	; 0x30
 8001684:	4b11      	ldr	r3, [pc, #68]	; (80016cc <adc_set_trigger+0xc0>)
 8001686:	4a11      	ldr	r2, [pc, #68]	; (80016cc <adc_set_trigger+0xc0>)
 8001688:	6812      	ldr	r2, [r2, #0]
 800168a:	f422 0240 	bic.w	r2, r2, #12582912	; 0xc00000
 800168e:	601a      	str	r2, [r3, #0]
 8001690:	4b0e      	ldr	r3, [pc, #56]	; (80016cc <adc_set_trigger+0xc0>)
 8001692:	4a0e      	ldr	r2, [pc, #56]	; (80016cc <adc_set_trigger+0xc0>)
 8001694:	6812      	ldr	r2, [r2, #0]
 8001696:	f442 0200 	orr.w	r2, r2, #8388608	; 0x800000
 800169a:	601a      	str	r2, [r3, #0]
 800169c:	4b0b      	ldr	r3, [pc, #44]	; (80016cc <adc_set_trigger+0xc0>)
 800169e:	4a0b      	ldr	r2, [pc, #44]	; (80016cc <adc_set_trigger+0xc0>)
 80016a0:	6892      	ldr	r2, [r2, #8]
 80016a2:	f442 0240 	orr.w	r2, r2, #12582912	; 0xc00000
 80016a6:	609a      	str	r2, [r3, #8]
 80016a8:	4b08      	ldr	r3, [pc, #32]	; (80016cc <adc_set_trigger+0xc0>)
 80016aa:	4a08      	ldr	r2, [pc, #32]	; (80016cc <adc_set_trigger+0xc0>)
 80016ac:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80016ae:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 80016b2:	625a      	str	r2, [r3, #36]	; 0x24
 80016b4:	4b05      	ldr	r3, [pc, #20]	; (80016cc <adc_set_trigger+0xc0>)
 80016b6:	4a05      	ldr	r2, [pc, #20]	; (80016cc <adc_set_trigger+0xc0>)
 80016b8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80016ba:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 80016be:	625a      	str	r2, [r3, #36]	; 0x24
 80016c0:	46bd      	mov	sp, r7
 80016c2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80016c6:	4770      	bx	lr
 80016c8:	40023800 	.word	0x40023800
 80016cc:	40020400 	.word	0x40020400

080016d0 <adc_init>:
 80016d0:	b580      	push	{r7, lr}
 80016d2:	af00      	add	r7, sp, #0
 80016d4:	f7ff feaa 	bl	800142c <adc_common_init>
 80016d8:	f7ff febc 	bl	8001454 <adc1_init>
 80016dc:	f7ff ff16 	bl	800150c <adc2_init>
 80016e0:	f7ff ff54 	bl	800158c <adc3_init>
 80016e4:	f7ff ff92 	bl	800160c <adc_set_trigger>
 80016e8:	4b07      	ldr	r3, [pc, #28]	; (8001708 <adc_init+0x38>)
 80016ea:	4a07      	ldr	r2, [pc, #28]	; (8001708 <adc_init+0x38>)
 80016ec:	6852      	ldr	r2, [r2, #4]
 80016ee:	f022 021f 	bic.w	r2, r2, #31
 80016f2:	605a      	str	r2, [r3, #4]
 80016f4:	4b04      	ldr	r3, [pc, #16]	; (8001708 <adc_init+0x38>)
 80016f6:	4a04      	ldr	r2, [pc, #16]	; (8001708 <adc_init+0x38>)
 80016f8:	6852      	ldr	r2, [r2, #4]
 80016fa:	f042 0216 	orr.w	r2, r2, #22
 80016fe:	605a      	str	r2, [r3, #4]
 8001700:	2012      	movs	r0, #18
 8001702:	f7ff fe7b 	bl	80013fc <NVIC_EnableIRQ>
 8001706:	bd80      	pop	{r7, pc}
 8001708:	40012300 	.word	0x40012300

0800170c <TIM2_IRQHandler>:
 800170c:	b480      	push	{r7}
 800170e:	af00      	add	r7, sp, #0
 8001710:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001714:	8a1b      	ldrh	r3, [r3, #16]
 8001716:	b29b      	uxth	r3, r3
 8001718:	f003 0301 	and.w	r3, r3, #1
 800171c:	2b00      	cmp	r3, #0
 800171e:	d009      	beq.n	8001734 <TIM2_IRQHandler+0x28>
 8001720:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001724:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001728:	8a12      	ldrh	r2, [r2, #16]
 800172a:	b292      	uxth	r2, r2
 800172c:	f022 0201 	bic.w	r2, r2, #1
 8001730:	b292      	uxth	r2, r2
 8001732:	821a      	strh	r2, [r3, #16]
 8001734:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001738:	8a1b      	ldrh	r3, [r3, #16]
 800173a:	b29b      	uxth	r3, r3
 800173c:	f003 0302 	and.w	r3, r3, #2
 8001740:	2b00      	cmp	r3, #0
 8001742:	d009      	beq.n	8001758 <TIM2_IRQHandler+0x4c>
 8001744:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001748:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800174c:	8a12      	ldrh	r2, [r2, #16]
 800174e:	b292      	uxth	r2, r2
 8001750:	f022 0202 	bic.w	r2, r2, #2
 8001754:	b292      	uxth	r2, r2
 8001756:	821a      	strh	r2, [r3, #16]
 8001758:	46bd      	mov	sp, r7
 800175a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800175e:	4770      	bx	lr

08001760 <offset_pwm_init>:
 8001760:	b480      	push	{r7}
 8001762:	af00      	add	r7, sp, #0
 8001764:	4b31      	ldr	r3, [pc, #196]	; (800182c <offset_pwm_init+0xcc>)
 8001766:	4a31      	ldr	r2, [pc, #196]	; (800182c <offset_pwm_init+0xcc>)
 8001768:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800176a:	f042 0204 	orr.w	r2, r2, #4
 800176e:	641a      	str	r2, [r3, #64]	; 0x40
 8001770:	4b2f      	ldr	r3, [pc, #188]	; (8001830 <offset_pwm_init+0xd0>)
 8001772:	2203      	movs	r2, #3
 8001774:	851a      	strh	r2, [r3, #40]	; 0x28
 8001776:	4b2e      	ldr	r3, [pc, #184]	; (8001830 <offset_pwm_init+0xd0>)
 8001778:	2263      	movs	r2, #99	; 0x63
 800177a:	62da      	str	r2, [r3, #44]	; 0x2c
 800177c:	4b2c      	ldr	r3, [pc, #176]	; (8001830 <offset_pwm_init+0xd0>)
 800177e:	2232      	movs	r2, #50	; 0x32
 8001780:	635a      	str	r2, [r3, #52]	; 0x34
 8001782:	4b2b      	ldr	r3, [pc, #172]	; (8001830 <offset_pwm_init+0xd0>)
 8001784:	2232      	movs	r2, #50	; 0x32
 8001786:	639a      	str	r2, [r3, #56]	; 0x38
 8001788:	4b29      	ldr	r3, [pc, #164]	; (8001830 <offset_pwm_init+0xd0>)
 800178a:	2200      	movs	r2, #0
 800178c:	831a      	strh	r2, [r3, #24]
 800178e:	4a28      	ldr	r2, [pc, #160]	; (8001830 <offset_pwm_init+0xd0>)
 8001790:	4b27      	ldr	r3, [pc, #156]	; (8001830 <offset_pwm_init+0xd0>)
 8001792:	8b1b      	ldrh	r3, [r3, #24]
 8001794:	b29b      	uxth	r3, r3
 8001796:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 800179a:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 800179e:	b29b      	uxth	r3, r3
 80017a0:	8313      	strh	r3, [r2, #24]
 80017a2:	4b23      	ldr	r3, [pc, #140]	; (8001830 <offset_pwm_init+0xd0>)
 80017a4:	4a22      	ldr	r2, [pc, #136]	; (8001830 <offset_pwm_init+0xd0>)
 80017a6:	8c12      	ldrh	r2, [r2, #32]
 80017a8:	b292      	uxth	r2, r2
 80017aa:	f042 0211 	orr.w	r2, r2, #17
 80017ae:	b292      	uxth	r2, r2
 80017b0:	841a      	strh	r2, [r3, #32]
 80017b2:	4b1f      	ldr	r3, [pc, #124]	; (8001830 <offset_pwm_init+0xd0>)
 80017b4:	4a1e      	ldr	r2, [pc, #120]	; (8001830 <offset_pwm_init+0xd0>)
 80017b6:	8812      	ldrh	r2, [r2, #0]
 80017b8:	b292      	uxth	r2, r2
 80017ba:	f042 0201 	orr.w	r2, r2, #1
 80017be:	b292      	uxth	r2, r2
 80017c0:	801a      	strh	r2, [r3, #0]
 80017c2:	4b1a      	ldr	r3, [pc, #104]	; (800182c <offset_pwm_init+0xcc>)
 80017c4:	4a19      	ldr	r2, [pc, #100]	; (800182c <offset_pwm_init+0xcc>)
 80017c6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80017c8:	f042 0208 	orr.w	r2, r2, #8
 80017cc:	631a      	str	r2, [r3, #48]	; 0x30
 80017ce:	4b19      	ldr	r3, [pc, #100]	; (8001834 <offset_pwm_init+0xd4>)
 80017d0:	4a18      	ldr	r2, [pc, #96]	; (8001834 <offset_pwm_init+0xd4>)
 80017d2:	6812      	ldr	r2, [r2, #0]
 80017d4:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80017d8:	601a      	str	r2, [r3, #0]
 80017da:	4b16      	ldr	r3, [pc, #88]	; (8001834 <offset_pwm_init+0xd4>)
 80017dc:	4a15      	ldr	r2, [pc, #84]	; (8001834 <offset_pwm_init+0xd4>)
 80017de:	6812      	ldr	r2, [r2, #0]
 80017e0:	f042 6220 	orr.w	r2, r2, #167772160	; 0xa000000
 80017e4:	601a      	str	r2, [r3, #0]
 80017e6:	4b13      	ldr	r3, [pc, #76]	; (8001834 <offset_pwm_init+0xd4>)
 80017e8:	4a12      	ldr	r2, [pc, #72]	; (8001834 <offset_pwm_init+0xd4>)
 80017ea:	6892      	ldr	r2, [r2, #8]
 80017ec:	f042 6270 	orr.w	r2, r2, #251658240	; 0xf000000
 80017f0:	609a      	str	r2, [r3, #8]
 80017f2:	4b10      	ldr	r3, [pc, #64]	; (8001834 <offset_pwm_init+0xd4>)
 80017f4:	4a0f      	ldr	r2, [pc, #60]	; (8001834 <offset_pwm_init+0xd4>)
 80017f6:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80017f8:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 80017fc:	625a      	str	r2, [r3, #36]	; 0x24
 80017fe:	4b0d      	ldr	r3, [pc, #52]	; (8001834 <offset_pwm_init+0xd4>)
 8001800:	4a0c      	ldr	r2, [pc, #48]	; (8001834 <offset_pwm_init+0xd4>)
 8001802:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001804:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8001808:	625a      	str	r2, [r3, #36]	; 0x24
 800180a:	4b0a      	ldr	r3, [pc, #40]	; (8001834 <offset_pwm_init+0xd4>)
 800180c:	4a09      	ldr	r2, [pc, #36]	; (8001834 <offset_pwm_init+0xd4>)
 800180e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001810:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8001814:	625a      	str	r2, [r3, #36]	; 0x24
 8001816:	4b07      	ldr	r3, [pc, #28]	; (8001834 <offset_pwm_init+0xd4>)
 8001818:	4a06      	ldr	r2, [pc, #24]	; (8001834 <offset_pwm_init+0xd4>)
 800181a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800181c:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8001820:	625a      	str	r2, [r3, #36]	; 0x24
 8001822:	46bd      	mov	sp, r7
 8001824:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001828:	4770      	bx	lr
 800182a:	bf00      	nop
 800182c:	40023800 	.word	0x40023800
 8001830:	40000800 	.word	0x40000800
 8001834:	40020c00 	.word	0x40020c00

08001838 <dac_init>:
 8001838:	b580      	push	{r7, lr}
 800183a:	af00      	add	r7, sp, #0
 800183c:	4b16      	ldr	r3, [pc, #88]	; (8001898 <dac_init+0x60>)
 800183e:	4a16      	ldr	r2, [pc, #88]	; (8001898 <dac_init+0x60>)
 8001840:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001842:	f042 5200 	orr.w	r2, r2, #536870912	; 0x20000000
 8001846:	641a      	str	r2, [r3, #64]	; 0x40
 8001848:	4b14      	ldr	r3, [pc, #80]	; (800189c <dac_init+0x64>)
 800184a:	4a14      	ldr	r2, [pc, #80]	; (800189c <dac_init+0x64>)
 800184c:	6812      	ldr	r2, [r2, #0]
 800184e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001852:	601a      	str	r2, [r3, #0]
 8001854:	4b11      	ldr	r3, [pc, #68]	; (800189c <dac_init+0x64>)
 8001856:	4a11      	ldr	r2, [pc, #68]	; (800189c <dac_init+0x64>)
 8001858:	6812      	ldr	r2, [r2, #0]
 800185a:	f442 7240 	orr.w	r2, r2, #768	; 0x300
 800185e:	601a      	str	r2, [r3, #0]
 8001860:	4b0e      	ldr	r3, [pc, #56]	; (800189c <dac_init+0x64>)
 8001862:	4a0e      	ldr	r2, [pc, #56]	; (800189c <dac_init+0x64>)
 8001864:	6812      	ldr	r2, [r2, #0]
 8001866:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 800186a:	601a      	str	r2, [r3, #0]
 800186c:	4b0b      	ldr	r3, [pc, #44]	; (800189c <dac_init+0x64>)
 800186e:	4a0b      	ldr	r2, [pc, #44]	; (800189c <dac_init+0x64>)
 8001870:	6812      	ldr	r2, [r2, #0]
 8001872:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
 8001876:	601a      	str	r2, [r3, #0]
 8001878:	4b09      	ldr	r3, [pc, #36]	; (80018a0 <dac_init+0x68>)
 800187a:	4a09      	ldr	r2, [pc, #36]	; (80018a0 <dac_init+0x68>)
 800187c:	6812      	ldr	r2, [r2, #0]
 800187e:	f042 0201 	orr.w	r2, r2, #1
 8001882:	601a      	str	r2, [r3, #0]
 8001884:	4b06      	ldr	r3, [pc, #24]	; (80018a0 <dac_init+0x68>)
 8001886:	4a06      	ldr	r2, [pc, #24]	; (80018a0 <dac_init+0x68>)
 8001888:	6812      	ldr	r2, [r2, #0]
 800188a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800188e:	601a      	str	r2, [r3, #0]
 8001890:	f7ff ff66 	bl	8001760 <offset_pwm_init>
 8001894:	bd80      	pop	{r7, pc}
 8001896:	bf00      	nop
 8001898:	40023800 	.word	0x40023800
 800189c:	40020000 	.word	0x40020000
 80018a0:	40007400 	.word	0x40007400

080018a4 <dac_offset_set>:
 80018a4:	b480      	push	{r7}
 80018a6:	b083      	sub	sp, #12
 80018a8:	af00      	add	r7, sp, #0
 80018aa:	4603      	mov	r3, r0
 80018ac:	80fb      	strh	r3, [r7, #6]
 80018ae:	4b04      	ldr	r3, [pc, #16]	; (80018c0 <dac_offset_set+0x1c>)
 80018b0:	88fa      	ldrh	r2, [r7, #6]
 80018b2:	635a      	str	r2, [r3, #52]	; 0x34
 80018b4:	370c      	adds	r7, #12
 80018b6:	46bd      	mov	sp, r7
 80018b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018bc:	4770      	bx	lr
 80018be:	bf00      	nop
 80018c0:	40000800 	.word	0x40000800

080018c4 <NVIC_EnableIRQ>:
 80018c4:	b480      	push	{r7}
 80018c6:	b083      	sub	sp, #12
 80018c8:	af00      	add	r7, sp, #0
 80018ca:	4603      	mov	r3, r0
 80018cc:	71fb      	strb	r3, [r7, #7]
 80018ce:	4b08      	ldr	r3, [pc, #32]	; (80018f0 <NVIC_EnableIRQ+0x2c>)
 80018d0:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80018d4:	0952      	lsrs	r2, r2, #5
 80018d6:	79f9      	ldrb	r1, [r7, #7]
 80018d8:	f001 011f 	and.w	r1, r1, #31
 80018dc:	2001      	movs	r0, #1
 80018de:	fa00 f101 	lsl.w	r1, r0, r1
 80018e2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80018e6:	370c      	adds	r7, #12
 80018e8:	46bd      	mov	sp, r7
 80018ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018ee:	4770      	bx	lr
 80018f0:	e000e100 	.word	0xe000e100

080018f4 <start_trans>:
 80018f4:	b480      	push	{r7}
 80018f6:	b083      	sub	sp, #12
 80018f8:	af00      	add	r7, sp, #0
 80018fa:	6078      	str	r0, [r7, #4]
 80018fc:	687a      	ldr	r2, [r7, #4]
 80018fe:	4b18      	ldr	r3, [pc, #96]	; (8001960 <start_trans+0x6c>)
 8001900:	601a      	str	r2, [r3, #0]
 8001902:	4b18      	ldr	r3, [pc, #96]	; (8001964 <start_trans+0x70>)
 8001904:	2200      	movs	r2, #0
 8001906:	601a      	str	r2, [r3, #0]
 8001908:	4b17      	ldr	r3, [pc, #92]	; (8001968 <start_trans+0x74>)
 800190a:	4a17      	ldr	r2, [pc, #92]	; (8001968 <start_trans+0x74>)
 800190c:	6952      	ldr	r2, [r2, #20]
 800190e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001912:	615a      	str	r2, [r3, #20]
 8001914:	4b15      	ldr	r3, [pc, #84]	; (800196c <start_trans+0x78>)
 8001916:	4a15      	ldr	r2, [pc, #84]	; (800196c <start_trans+0x78>)
 8001918:	8992      	ldrh	r2, [r2, #12]
 800191a:	b292      	uxth	r2, r2
 800191c:	f042 0208 	orr.w	r2, r2, #8
 8001920:	b292      	uxth	r2, r2
 8001922:	819a      	strh	r2, [r3, #12]
 8001924:	4b11      	ldr	r3, [pc, #68]	; (800196c <start_trans+0x78>)
 8001926:	4a11      	ldr	r2, [pc, #68]	; (800196c <start_trans+0x78>)
 8001928:	8992      	ldrh	r2, [r2, #12]
 800192a:	b292      	uxth	r2, r2
 800192c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8001930:	b292      	uxth	r2, r2
 8001932:	819a      	strh	r2, [r3, #12]
 8001934:	4b0d      	ldr	r3, [pc, #52]	; (800196c <start_trans+0x78>)
 8001936:	4a0b      	ldr	r2, [pc, #44]	; (8001964 <start_trans+0x70>)
 8001938:	6812      	ldr	r2, [r2, #0]
 800193a:	490d      	ldr	r1, [pc, #52]	; (8001970 <start_trans+0x7c>)
 800193c:	5c8a      	ldrb	r2, [r1, r2]
 800193e:	809a      	strh	r2, [r3, #4]
 8001940:	4b08      	ldr	r3, [pc, #32]	; (8001964 <start_trans+0x70>)
 8001942:	681b      	ldr	r3, [r3, #0]
 8001944:	3301      	adds	r3, #1
 8001946:	b2da      	uxtb	r2, r3
 8001948:	4b06      	ldr	r3, [pc, #24]	; (8001964 <start_trans+0x70>)
 800194a:	601a      	str	r2, [r3, #0]
 800194c:	4b04      	ldr	r3, [pc, #16]	; (8001960 <start_trans+0x6c>)
 800194e:	681b      	ldr	r3, [r3, #0]
 8001950:	1e5a      	subs	r2, r3, #1
 8001952:	4b03      	ldr	r3, [pc, #12]	; (8001960 <start_trans+0x6c>)
 8001954:	601a      	str	r2, [r3, #0]
 8001956:	370c      	adds	r7, #12
 8001958:	46bd      	mov	sp, r7
 800195a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800195e:	4770      	bx	lr
 8001960:	200015bc 	.word	0x200015bc
 8001964:	200015b8 	.word	0x200015b8
 8001968:	40020c00 	.word	0x40020c00
 800196c:	40004800 	.word	0x40004800
 8001970:	200014b8 	.word	0x200014b8

08001974 <modbus_init>:
 8001974:	b580      	push	{r7, lr}
 8001976:	af00      	add	r7, sp, #0
 8001978:	4b3e      	ldr	r3, [pc, #248]	; (8001a74 <modbus_init+0x100>)
 800197a:	4a3e      	ldr	r2, [pc, #248]	; (8001a74 <modbus_init+0x100>)
 800197c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800197e:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8001982:	641a      	str	r2, [r3, #64]	; 0x40
 8001984:	4b3c      	ldr	r3, [pc, #240]	; (8001a78 <modbus_init+0x104>)
 8001986:	2200      	movs	r2, #0
 8001988:	819a      	strh	r2, [r3, #12]
 800198a:	4b3b      	ldr	r3, [pc, #236]	; (8001a78 <modbus_init+0x104>)
 800198c:	4a3a      	ldr	r2, [pc, #232]	; (8001a78 <modbus_init+0x104>)
 800198e:	8992      	ldrh	r2, [r2, #12]
 8001990:	b292      	uxth	r2, r2
 8001992:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001996:	b292      	uxth	r2, r2
 8001998:	819a      	strh	r2, [r3, #12]
 800199a:	4b37      	ldr	r3, [pc, #220]	; (8001a78 <modbus_init+0x104>)
 800199c:	4a36      	ldr	r2, [pc, #216]	; (8001a78 <modbus_init+0x104>)
 800199e:	8992      	ldrh	r2, [r2, #12]
 80019a0:	b292      	uxth	r2, r2
 80019a2:	f042 0204 	orr.w	r2, r2, #4
 80019a6:	b292      	uxth	r2, r2
 80019a8:	819a      	strh	r2, [r3, #12]
 80019aa:	4b33      	ldr	r3, [pc, #204]	; (8001a78 <modbus_init+0x104>)
 80019ac:	4a32      	ldr	r2, [pc, #200]	; (8001a78 <modbus_init+0x104>)
 80019ae:	8992      	ldrh	r2, [r2, #12]
 80019b0:	b292      	uxth	r2, r2
 80019b2:	f042 0220 	orr.w	r2, r2, #32
 80019b6:	b292      	uxth	r2, r2
 80019b8:	819a      	strh	r2, [r3, #12]
 80019ba:	4b2f      	ldr	r3, [pc, #188]	; (8001a78 <modbus_init+0x104>)
 80019bc:	4a2e      	ldr	r2, [pc, #184]	; (8001a78 <modbus_init+0x104>)
 80019be:	8992      	ldrh	r2, [r2, #12]
 80019c0:	b292      	uxth	r2, r2
 80019c2:	f042 0210 	orr.w	r2, r2, #16
 80019c6:	b292      	uxth	r2, r2
 80019c8:	819a      	strh	r2, [r3, #12]
 80019ca:	2027      	movs	r0, #39	; 0x27
 80019cc:	f7ff ff7a 	bl	80018c4 <NVIC_EnableIRQ>
 80019d0:	4b29      	ldr	r3, [pc, #164]	; (8001a78 <modbus_init+0x104>)
 80019d2:	891b      	ldrh	r3, [r3, #8]
 80019d4:	4b28      	ldr	r3, [pc, #160]	; (8001a78 <modbus_init+0x104>)
 80019d6:	2200      	movs	r2, #0
 80019d8:	811a      	strh	r2, [r3, #8]
 80019da:	4a27      	ldr	r2, [pc, #156]	; (8001a78 <modbus_init+0x104>)
 80019dc:	4b26      	ldr	r3, [pc, #152]	; (8001a78 <modbus_init+0x104>)
 80019de:	891b      	ldrh	r3, [r3, #8]
 80019e0:	b29b      	uxth	r3, r3
 80019e2:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 80019e6:	f043 0301 	orr.w	r3, r3, #1
 80019ea:	b29b      	uxth	r3, r3
 80019ec:	8113      	strh	r3, [r2, #8]
 80019ee:	4b21      	ldr	r3, [pc, #132]	; (8001a74 <modbus_init+0x100>)
 80019f0:	4a20      	ldr	r2, [pc, #128]	; (8001a74 <modbus_init+0x100>)
 80019f2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80019f4:	f042 0208 	orr.w	r2, r2, #8
 80019f8:	631a      	str	r2, [r3, #48]	; 0x30
 80019fa:	4b20      	ldr	r3, [pc, #128]	; (8001a7c <modbus_init+0x108>)
 80019fc:	4a1f      	ldr	r2, [pc, #124]	; (8001a7c <modbus_init+0x108>)
 80019fe:	6812      	ldr	r2, [r2, #0]
 8001a00:	f422 1240 	bic.w	r2, r2, #3145728	; 0x300000
 8001a04:	601a      	str	r2, [r3, #0]
 8001a06:	4b1d      	ldr	r3, [pc, #116]	; (8001a7c <modbus_init+0x108>)
 8001a08:	4a1c      	ldr	r2, [pc, #112]	; (8001a7c <modbus_init+0x108>)
 8001a0a:	6812      	ldr	r2, [r2, #0]
 8001a0c:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
 8001a10:	601a      	str	r2, [r3, #0]
 8001a12:	4b1a      	ldr	r3, [pc, #104]	; (8001a7c <modbus_init+0x108>)
 8001a14:	4a19      	ldr	r2, [pc, #100]	; (8001a7c <modbus_init+0x108>)
 8001a16:	6812      	ldr	r2, [r2, #0]
 8001a18:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8001a1c:	601a      	str	r2, [r3, #0]
 8001a1e:	4b17      	ldr	r3, [pc, #92]	; (8001a7c <modbus_init+0x108>)
 8001a20:	4a16      	ldr	r2, [pc, #88]	; (8001a7c <modbus_init+0x108>)
 8001a22:	6812      	ldr	r2, [r2, #0]
 8001a24:	f442 2220 	orr.w	r2, r2, #655360	; 0xa0000
 8001a28:	601a      	str	r2, [r3, #0]
 8001a2a:	4b14      	ldr	r3, [pc, #80]	; (8001a7c <modbus_init+0x108>)
 8001a2c:	4a13      	ldr	r2, [pc, #76]	; (8001a7c <modbus_init+0x108>)
 8001a2e:	6892      	ldr	r2, [r2, #8]
 8001a30:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
 8001a34:	609a      	str	r2, [r3, #8]
 8001a36:	4b11      	ldr	r3, [pc, #68]	; (8001a7c <modbus_init+0x108>)
 8001a38:	4a10      	ldr	r2, [pc, #64]	; (8001a7c <modbus_init+0x108>)
 8001a3a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a3c:	f022 020f 	bic.w	r2, r2, #15
 8001a40:	625a      	str	r2, [r3, #36]	; 0x24
 8001a42:	4b0e      	ldr	r3, [pc, #56]	; (8001a7c <modbus_init+0x108>)
 8001a44:	4a0d      	ldr	r2, [pc, #52]	; (8001a7c <modbus_init+0x108>)
 8001a46:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a48:	f042 0207 	orr.w	r2, r2, #7
 8001a4c:	625a      	str	r2, [r3, #36]	; 0x24
 8001a4e:	4b0b      	ldr	r3, [pc, #44]	; (8001a7c <modbus_init+0x108>)
 8001a50:	4a0a      	ldr	r2, [pc, #40]	; (8001a7c <modbus_init+0x108>)
 8001a52:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a54:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8001a58:	625a      	str	r2, [r3, #36]	; 0x24
 8001a5a:	4b08      	ldr	r3, [pc, #32]	; (8001a7c <modbus_init+0x108>)
 8001a5c:	4a07      	ldr	r2, [pc, #28]	; (8001a7c <modbus_init+0x108>)
 8001a5e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001a60:	f042 0270 	orr.w	r2, r2, #112	; 0x70
 8001a64:	625a      	str	r2, [r3, #36]	; 0x24
 8001a66:	4b05      	ldr	r3, [pc, #20]	; (8001a7c <modbus_init+0x108>)
 8001a68:	4a04      	ldr	r2, [pc, #16]	; (8001a7c <modbus_init+0x108>)
 8001a6a:	6952      	ldr	r2, [r2, #20]
 8001a6c:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001a70:	615a      	str	r2, [r3, #20]
 8001a72:	bd80      	pop	{r7, pc}
 8001a74:	40023800 	.word	0x40023800
 8001a78:	40004800 	.word	0x40004800
 8001a7c:	40020c00 	.word	0x40020c00

08001a80 <USART3_IRQHandler>:
 8001a80:	b580      	push	{r7, lr}
 8001a82:	b082      	sub	sp, #8
 8001a84:	af00      	add	r7, sp, #0
 8001a86:	4b37      	ldr	r3, [pc, #220]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001a88:	881b      	ldrh	r3, [r3, #0]
 8001a8a:	b29b      	uxth	r3, r3
 8001a8c:	f003 0310 	and.w	r3, r3, #16
 8001a90:	2b00      	cmp	r3, #0
 8001a92:	d00c      	beq.n	8001aae <USART3_IRQHandler+0x2e>
 8001a94:	4b33      	ldr	r3, [pc, #204]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001a96:	889b      	ldrh	r3, [r3, #4]
 8001a98:	b29b      	uxth	r3, r3
 8001a9a:	71fb      	strb	r3, [r7, #7]
 8001a9c:	f000 fe00 	bl	80026a0 <proc_ADU>
 8001aa0:	4b31      	ldr	r3, [pc, #196]	; (8001b68 <USART3_IRQHandler+0xe8>)
 8001aa2:	681a      	ldr	r2, [r3, #0]
 8001aa4:	4b31      	ldr	r3, [pc, #196]	; (8001b6c <USART3_IRQHandler+0xec>)
 8001aa6:	601a      	str	r2, [r3, #0]
 8001aa8:	4b2f      	ldr	r3, [pc, #188]	; (8001b68 <USART3_IRQHandler+0xe8>)
 8001aaa:	2200      	movs	r2, #0
 8001aac:	601a      	str	r2, [r3, #0]
 8001aae:	4b2d      	ldr	r3, [pc, #180]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001ab0:	881b      	ldrh	r3, [r3, #0]
 8001ab2:	b29b      	uxth	r3, r3
 8001ab4:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001ab8:	2b00      	cmp	r3, #0
 8001aba:	d01d      	beq.n	8001af8 <USART3_IRQHandler+0x78>
 8001abc:	4b2c      	ldr	r3, [pc, #176]	; (8001b70 <USART3_IRQHandler+0xf0>)
 8001abe:	681b      	ldr	r3, [r3, #0]
 8001ac0:	2b00      	cmp	r3, #0
 8001ac2:	d108      	bne.n	8001ad6 <USART3_IRQHandler+0x56>
 8001ac4:	4b27      	ldr	r3, [pc, #156]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001ac6:	4a27      	ldr	r2, [pc, #156]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001ac8:	8992      	ldrh	r2, [r2, #12]
 8001aca:	b292      	uxth	r2, r2
 8001acc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001ad0:	b292      	uxth	r2, r2
 8001ad2:	819a      	strh	r2, [r3, #12]
 8001ad4:	e010      	b.n	8001af8 <USART3_IRQHandler+0x78>
 8001ad6:	4b23      	ldr	r3, [pc, #140]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001ad8:	4a26      	ldr	r2, [pc, #152]	; (8001b74 <USART3_IRQHandler+0xf4>)
 8001ada:	6812      	ldr	r2, [r2, #0]
 8001adc:	4926      	ldr	r1, [pc, #152]	; (8001b78 <USART3_IRQHandler+0xf8>)
 8001ade:	5c8a      	ldrb	r2, [r1, r2]
 8001ae0:	809a      	strh	r2, [r3, #4]
 8001ae2:	4b24      	ldr	r3, [pc, #144]	; (8001b74 <USART3_IRQHandler+0xf4>)
 8001ae4:	681b      	ldr	r3, [r3, #0]
 8001ae6:	3301      	adds	r3, #1
 8001ae8:	b2da      	uxtb	r2, r3
 8001aea:	4b22      	ldr	r3, [pc, #136]	; (8001b74 <USART3_IRQHandler+0xf4>)
 8001aec:	601a      	str	r2, [r3, #0]
 8001aee:	4b20      	ldr	r3, [pc, #128]	; (8001b70 <USART3_IRQHandler+0xf0>)
 8001af0:	681b      	ldr	r3, [r3, #0]
 8001af2:	1e5a      	subs	r2, r3, #1
 8001af4:	4b1e      	ldr	r3, [pc, #120]	; (8001b70 <USART3_IRQHandler+0xf0>)
 8001af6:	601a      	str	r2, [r3, #0]
 8001af8:	4b1a      	ldr	r3, [pc, #104]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001afa:	881b      	ldrh	r3, [r3, #0]
 8001afc:	b29b      	uxth	r3, r3
 8001afe:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001b02:	2b00      	cmp	r3, #0
 8001b04:	d015      	beq.n	8001b32 <USART3_IRQHandler+0xb2>
 8001b06:	4b17      	ldr	r3, [pc, #92]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001b08:	4a16      	ldr	r2, [pc, #88]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001b0a:	8812      	ldrh	r2, [r2, #0]
 8001b0c:	b292      	uxth	r2, r2
 8001b0e:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8001b12:	b292      	uxth	r2, r2
 8001b14:	801a      	strh	r2, [r3, #0]
 8001b16:	4b13      	ldr	r3, [pc, #76]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001b18:	4a12      	ldr	r2, [pc, #72]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001b1a:	8992      	ldrh	r2, [r2, #12]
 8001b1c:	b292      	uxth	r2, r2
 8001b1e:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 8001b22:	b292      	uxth	r2, r2
 8001b24:	819a      	strh	r2, [r3, #12]
 8001b26:	4b15      	ldr	r3, [pc, #84]	; (8001b7c <USART3_IRQHandler+0xfc>)
 8001b28:	4a14      	ldr	r2, [pc, #80]	; (8001b7c <USART3_IRQHandler+0xfc>)
 8001b2a:	6952      	ldr	r2, [r2, #20]
 8001b2c:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001b30:	615a      	str	r2, [r3, #20]
 8001b32:	4b0c      	ldr	r3, [pc, #48]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001b34:	881b      	ldrh	r3, [r3, #0]
 8001b36:	b29b      	uxth	r3, r3
 8001b38:	f003 0320 	and.w	r3, r3, #32
 8001b3c:	2b00      	cmp	r3, #0
 8001b3e:	d00d      	beq.n	8001b5c <USART3_IRQHandler+0xdc>
 8001b40:	4b09      	ldr	r3, [pc, #36]	; (8001b68 <USART3_IRQHandler+0xe8>)
 8001b42:	681b      	ldr	r3, [r3, #0]
 8001b44:	4a07      	ldr	r2, [pc, #28]	; (8001b64 <USART3_IRQHandler+0xe4>)
 8001b46:	8892      	ldrh	r2, [r2, #4]
 8001b48:	b292      	uxth	r2, r2
 8001b4a:	b2d1      	uxtb	r1, r2
 8001b4c:	4a0c      	ldr	r2, [pc, #48]	; (8001b80 <USART3_IRQHandler+0x100>)
 8001b4e:	54d1      	strb	r1, [r2, r3]
 8001b50:	4b05      	ldr	r3, [pc, #20]	; (8001b68 <USART3_IRQHandler+0xe8>)
 8001b52:	681b      	ldr	r3, [r3, #0]
 8001b54:	3301      	adds	r3, #1
 8001b56:	b2da      	uxtb	r2, r3
 8001b58:	4b03      	ldr	r3, [pc, #12]	; (8001b68 <USART3_IRQHandler+0xe8>)
 8001b5a:	601a      	str	r2, [r3, #0]
 8001b5c:	3708      	adds	r7, #8
 8001b5e:	46bd      	mov	sp, r7
 8001b60:	bd80      	pop	{r7, pc}
 8001b62:	bf00      	nop
 8001b64:	40004800 	.word	0x40004800
 8001b68:	200014b0 	.word	0x200014b0
 8001b6c:	200014b4 	.word	0x200014b4
 8001b70:	200015bc 	.word	0x200015bc
 8001b74:	200015b8 	.word	0x200015b8
 8001b78:	200014b8 	.word	0x200014b8
 8001b7c:	40020c00 	.word	0x40020c00
 8001b80:	200013b0 	.word	0x200013b0

08001b84 <pack_bits_to_bytes>:
 8001b84:	b480      	push	{r7}
 8001b86:	b089      	sub	sp, #36	; 0x24
 8001b88:	af00      	add	r7, sp, #0
 8001b8a:	60f8      	str	r0, [r7, #12]
 8001b8c:	60b9      	str	r1, [r7, #8]
 8001b8e:	607a      	str	r2, [r7, #4]
 8001b90:	603b      	str	r3, [r7, #0]
 8001b92:	687b      	ldr	r3, [r7, #4]
 8001b94:	10db      	asrs	r3, r3, #3
 8001b96:	61fb      	str	r3, [r7, #28]
 8001b98:	687b      	ldr	r3, [r7, #4]
 8001b9a:	f003 0307 	and.w	r3, r3, #7
 8001b9e:	617b      	str	r3, [r7, #20]
 8001ba0:	2300      	movs	r3, #0
 8001ba2:	61bb      	str	r3, [r7, #24]
 8001ba4:	69fb      	ldr	r3, [r7, #28]
 8001ba6:	1c5a      	adds	r2, r3, #1
 8001ba8:	61fa      	str	r2, [r7, #28]
 8001baa:	68ba      	ldr	r2, [r7, #8]
 8001bac:	4413      	add	r3, r2
 8001bae:	781b      	ldrb	r3, [r3, #0]
 8001bb0:	461a      	mov	r2, r3
 8001bb2:	697b      	ldr	r3, [r7, #20]
 8001bb4:	fa42 f303 	asr.w	r3, r2, r3
 8001bb8:	74fb      	strb	r3, [r7, #19]
 8001bba:	69fb      	ldr	r3, [r7, #28]
 8001bbc:	68ba      	ldr	r2, [r7, #8]
 8001bbe:	4413      	add	r3, r2
 8001bc0:	781b      	ldrb	r3, [r3, #0]
 8001bc2:	461a      	mov	r2, r3
 8001bc4:	697b      	ldr	r3, [r7, #20]
 8001bc6:	f1c3 0308 	rsb	r3, r3, #8
 8001bca:	fa02 f303 	lsl.w	r3, r2, r3
 8001bce:	b2da      	uxtb	r2, r3
 8001bd0:	7cfb      	ldrb	r3, [r7, #19]
 8001bd2:	4313      	orrs	r3, r2
 8001bd4:	b2db      	uxtb	r3, r3
 8001bd6:	74fb      	strb	r3, [r7, #19]
 8001bd8:	69bb      	ldr	r3, [r7, #24]
 8001bda:	68fa      	ldr	r2, [r7, #12]
 8001bdc:	4413      	add	r3, r2
 8001bde:	7cfa      	ldrb	r2, [r7, #19]
 8001be0:	701a      	strb	r2, [r3, #0]
 8001be2:	683b      	ldr	r3, [r7, #0]
 8001be4:	2b08      	cmp	r3, #8
 8001be6:	dd06      	ble.n	8001bf6 <pack_bits_to_bytes+0x72>
 8001be8:	683b      	ldr	r3, [r7, #0]
 8001bea:	3b08      	subs	r3, #8
 8001bec:	603b      	str	r3, [r7, #0]
 8001bee:	69bb      	ldr	r3, [r7, #24]
 8001bf0:	3301      	adds	r3, #1
 8001bf2:	61bb      	str	r3, [r7, #24]
 8001bf4:	e7d6      	b.n	8001ba4 <pack_bits_to_bytes+0x20>
 8001bf6:	69bb      	ldr	r3, [r7, #24]
 8001bf8:	68fa      	ldr	r2, [r7, #12]
 8001bfa:	4413      	add	r3, r2
 8001bfc:	69ba      	ldr	r2, [r7, #24]
 8001bfe:	68f9      	ldr	r1, [r7, #12]
 8001c00:	440a      	add	r2, r1
 8001c02:	7812      	ldrb	r2, [r2, #0]
 8001c04:	b2d1      	uxtb	r1, r2
 8001c06:	683a      	ldr	r2, [r7, #0]
 8001c08:	f1c2 0208 	rsb	r2, r2, #8
 8001c0c:	20ff      	movs	r0, #255	; 0xff
 8001c0e:	fa40 f202 	asr.w	r2, r0, r2
 8001c12:	b2d2      	uxtb	r2, r2
 8001c14:	400a      	ands	r2, r1
 8001c16:	b2d2      	uxtb	r2, r2
 8001c18:	b2d2      	uxtb	r2, r2
 8001c1a:	701a      	strb	r2, [r3, #0]
 8001c1c:	bf00      	nop
 8001c1e:	69bb      	ldr	r3, [r7, #24]
 8001c20:	3301      	adds	r3, #1
 8001c22:	4618      	mov	r0, r3
 8001c24:	3724      	adds	r7, #36	; 0x24
 8001c26:	46bd      	mov	sp, r7
 8001c28:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c2c:	4770      	bx	lr
 8001c2e:	bf00      	nop

08001c30 <set_coil>:
 8001c30:	b480      	push	{r7}
 8001c32:	b085      	sub	sp, #20
 8001c34:	af00      	add	r7, sp, #0
 8001c36:	6078      	str	r0, [r7, #4]
 8001c38:	460b      	mov	r3, r1
 8001c3a:	70fb      	strb	r3, [r7, #3]
 8001c3c:	687b      	ldr	r3, [r7, #4]
 8001c3e:	3b13      	subs	r3, #19
 8001c40:	607b      	str	r3, [r7, #4]
 8001c42:	687b      	ldr	r3, [r7, #4]
 8001c44:	10db      	asrs	r3, r3, #3
 8001c46:	60fb      	str	r3, [r7, #12]
 8001c48:	687b      	ldr	r3, [r7, #4]
 8001c4a:	f003 0307 	and.w	r3, r3, #7
 8001c4e:	60bb      	str	r3, [r7, #8]
 8001c50:	4a14      	ldr	r2, [pc, #80]	; (8001ca4 <set_coil+0x74>)
 8001c52:	68fb      	ldr	r3, [r7, #12]
 8001c54:	4413      	add	r3, r2
 8001c56:	781b      	ldrb	r3, [r3, #0]
 8001c58:	b2da      	uxtb	r2, r3
 8001c5a:	2101      	movs	r1, #1
 8001c5c:	68bb      	ldr	r3, [r7, #8]
 8001c5e:	fa01 f303 	lsl.w	r3, r1, r3
 8001c62:	b2db      	uxtb	r3, r3
 8001c64:	43db      	mvns	r3, r3
 8001c66:	b2db      	uxtb	r3, r3
 8001c68:	4013      	ands	r3, r2
 8001c6a:	b2db      	uxtb	r3, r3
 8001c6c:	b2da      	uxtb	r2, r3
 8001c6e:	490d      	ldr	r1, [pc, #52]	; (8001ca4 <set_coil+0x74>)
 8001c70:	68fb      	ldr	r3, [r7, #12]
 8001c72:	440b      	add	r3, r1
 8001c74:	701a      	strb	r2, [r3, #0]
 8001c76:	4a0b      	ldr	r2, [pc, #44]	; (8001ca4 <set_coil+0x74>)
 8001c78:	68fb      	ldr	r3, [r7, #12]
 8001c7a:	4413      	add	r3, r2
 8001c7c:	781b      	ldrb	r3, [r3, #0]
 8001c7e:	b2da      	uxtb	r2, r3
 8001c80:	78f9      	ldrb	r1, [r7, #3]
 8001c82:	68bb      	ldr	r3, [r7, #8]
 8001c84:	fa01 f303 	lsl.w	r3, r1, r3
 8001c88:	b2db      	uxtb	r3, r3
 8001c8a:	4313      	orrs	r3, r2
 8001c8c:	b2db      	uxtb	r3, r3
 8001c8e:	b2da      	uxtb	r2, r3
 8001c90:	4904      	ldr	r1, [pc, #16]	; (8001ca4 <set_coil+0x74>)
 8001c92:	68fb      	ldr	r3, [r7, #12]
 8001c94:	440b      	add	r3, r1
 8001c96:	701a      	strb	r2, [r3, #0]
 8001c98:	3714      	adds	r7, #20
 8001c9a:	46bd      	mov	sp, r7
 8001c9c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ca0:	4770      	bx	lr
 8001ca2:	bf00      	nop
 8001ca4:	20000008 	.word	0x20000008

08001ca8 <pdu_write_single_coil>:
 8001ca8:	b580      	push	{r7, lr}
 8001caa:	b084      	sub	sp, #16
 8001cac:	af00      	add	r7, sp, #0
 8001cae:	4b3c      	ldr	r3, [pc, #240]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001cb0:	785b      	ldrb	r3, [r3, #1]
 8001cb2:	73fb      	strb	r3, [r7, #15]
 8001cb4:	4b3a      	ldr	r3, [pc, #232]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001cb6:	789b      	ldrb	r3, [r3, #2]
 8001cb8:	021b      	lsls	r3, r3, #8
 8001cba:	b29a      	uxth	r2, r3
 8001cbc:	4b38      	ldr	r3, [pc, #224]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001cbe:	78db      	ldrb	r3, [r3, #3]
 8001cc0:	4313      	orrs	r3, r2
 8001cc2:	b29b      	uxth	r3, r3
 8001cc4:	81bb      	strh	r3, [r7, #12]
 8001cc6:	4b36      	ldr	r3, [pc, #216]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001cc8:	791b      	ldrb	r3, [r3, #4]
 8001cca:	021b      	lsls	r3, r3, #8
 8001ccc:	b29a      	uxth	r2, r3
 8001cce:	4b34      	ldr	r3, [pc, #208]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001cd0:	795b      	ldrb	r3, [r3, #5]
 8001cd2:	4313      	orrs	r3, r2
 8001cd4:	b29b      	uxth	r3, r3
 8001cd6:	817b      	strh	r3, [r7, #10]
 8001cd8:	2301      	movs	r3, #1
 8001cda:	607b      	str	r3, [r7, #4]
 8001cdc:	89bb      	ldrh	r3, [r7, #12]
 8001cde:	2b12      	cmp	r3, #18
 8001ce0:	d902      	bls.n	8001ce8 <pdu_write_single_coil+0x40>
 8001ce2:	89bb      	ldrh	r3, [r7, #12]
 8001ce4:	2b37      	cmp	r3, #55	; 0x37
 8001ce6:	d910      	bls.n	8001d0a <pdu_write_single_coil+0x62>
 8001ce8:	687b      	ldr	r3, [r7, #4]
 8001cea:	1c5a      	adds	r2, r3, #1
 8001cec:	607a      	str	r2, [r7, #4]
 8001cee:	7bfa      	ldrb	r2, [r7, #15]
 8001cf0:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001cf4:	b2d1      	uxtb	r1, r2
 8001cf6:	4a2b      	ldr	r2, [pc, #172]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001cf8:	54d1      	strb	r1, [r2, r3]
 8001cfa:	687b      	ldr	r3, [r7, #4]
 8001cfc:	1c5a      	adds	r2, r3, #1
 8001cfe:	607a      	str	r2, [r7, #4]
 8001d00:	4a28      	ldr	r2, [pc, #160]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d02:	2102      	movs	r1, #2
 8001d04:	54d1      	strb	r1, [r2, r3]
 8001d06:	687b      	ldr	r3, [r7, #4]
 8001d08:	e046      	b.n	8001d98 <pdu_write_single_coil+0xf0>
 8001d0a:	897b      	ldrh	r3, [r7, #10]
 8001d0c:	2b00      	cmp	r3, #0
 8001d0e:	d105      	bne.n	8001d1c <pdu_write_single_coil+0x74>
 8001d10:	89bb      	ldrh	r3, [r7, #12]
 8001d12:	4618      	mov	r0, r3
 8001d14:	2100      	movs	r1, #0
 8001d16:	f7ff ff8b 	bl	8001c30 <set_coil>
 8001d1a:	e01a      	b.n	8001d52 <pdu_write_single_coil+0xaa>
 8001d1c:	897b      	ldrh	r3, [r7, #10]
 8001d1e:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
 8001d22:	d105      	bne.n	8001d30 <pdu_write_single_coil+0x88>
 8001d24:	89bb      	ldrh	r3, [r7, #12]
 8001d26:	4618      	mov	r0, r3
 8001d28:	2101      	movs	r1, #1
 8001d2a:	f7ff ff81 	bl	8001c30 <set_coil>
 8001d2e:	e010      	b.n	8001d52 <pdu_write_single_coil+0xaa>
 8001d30:	687b      	ldr	r3, [r7, #4]
 8001d32:	1c5a      	adds	r2, r3, #1
 8001d34:	607a      	str	r2, [r7, #4]
 8001d36:	7bfa      	ldrb	r2, [r7, #15]
 8001d38:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001d3c:	b2d1      	uxtb	r1, r2
 8001d3e:	4a19      	ldr	r2, [pc, #100]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d40:	54d1      	strb	r1, [r2, r3]
 8001d42:	687b      	ldr	r3, [r7, #4]
 8001d44:	1c5a      	adds	r2, r3, #1
 8001d46:	607a      	str	r2, [r7, #4]
 8001d48:	4a16      	ldr	r2, [pc, #88]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d4a:	2103      	movs	r1, #3
 8001d4c:	54d1      	strb	r1, [r2, r3]
 8001d4e:	687b      	ldr	r3, [r7, #4]
 8001d50:	e022      	b.n	8001d98 <pdu_write_single_coil+0xf0>
 8001d52:	687b      	ldr	r3, [r7, #4]
 8001d54:	1c5a      	adds	r2, r3, #1
 8001d56:	607a      	str	r2, [r7, #4]
 8001d58:	4a12      	ldr	r2, [pc, #72]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d5a:	7bf9      	ldrb	r1, [r7, #15]
 8001d5c:	54d1      	strb	r1, [r2, r3]
 8001d5e:	687b      	ldr	r3, [r7, #4]
 8001d60:	1c5a      	adds	r2, r3, #1
 8001d62:	607a      	str	r2, [r7, #4]
 8001d64:	4a0e      	ldr	r2, [pc, #56]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001d66:	7891      	ldrb	r1, [r2, #2]
 8001d68:	4a0e      	ldr	r2, [pc, #56]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d6a:	54d1      	strb	r1, [r2, r3]
 8001d6c:	687b      	ldr	r3, [r7, #4]
 8001d6e:	1c5a      	adds	r2, r3, #1
 8001d70:	607a      	str	r2, [r7, #4]
 8001d72:	4a0b      	ldr	r2, [pc, #44]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001d74:	78d1      	ldrb	r1, [r2, #3]
 8001d76:	4a0b      	ldr	r2, [pc, #44]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d78:	54d1      	strb	r1, [r2, r3]
 8001d7a:	687b      	ldr	r3, [r7, #4]
 8001d7c:	1c5a      	adds	r2, r3, #1
 8001d7e:	607a      	str	r2, [r7, #4]
 8001d80:	4a07      	ldr	r2, [pc, #28]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001d82:	7911      	ldrb	r1, [r2, #4]
 8001d84:	4a07      	ldr	r2, [pc, #28]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d86:	54d1      	strb	r1, [r2, r3]
 8001d88:	687b      	ldr	r3, [r7, #4]
 8001d8a:	1c5a      	adds	r2, r3, #1
 8001d8c:	607a      	str	r2, [r7, #4]
 8001d8e:	4a04      	ldr	r2, [pc, #16]	; (8001da0 <pdu_write_single_coil+0xf8>)
 8001d90:	7951      	ldrb	r1, [r2, #5]
 8001d92:	4a04      	ldr	r2, [pc, #16]	; (8001da4 <pdu_write_single_coil+0xfc>)
 8001d94:	54d1      	strb	r1, [r2, r3]
 8001d96:	687b      	ldr	r3, [r7, #4]
 8001d98:	4618      	mov	r0, r3
 8001d9a:	3710      	adds	r7, #16
 8001d9c:	46bd      	mov	sp, r7
 8001d9e:	bd80      	pop	{r7, pc}
 8001da0:	200013b0 	.word	0x200013b0
 8001da4:	200014b8 	.word	0x200014b8

08001da8 <pdu_write_multiply_coils>:
 8001da8:	b580      	push	{r7, lr}
 8001daa:	b086      	sub	sp, #24
 8001dac:	af00      	add	r7, sp, #0
 8001dae:	4b43      	ldr	r3, [pc, #268]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001db0:	785b      	ldrb	r3, [r3, #1]
 8001db2:	72bb      	strb	r3, [r7, #10]
 8001db4:	4b41      	ldr	r3, [pc, #260]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001db6:	789b      	ldrb	r3, [r3, #2]
 8001db8:	021b      	lsls	r3, r3, #8
 8001dba:	b29a      	uxth	r2, r3
 8001dbc:	4b3f      	ldr	r3, [pc, #252]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001dbe:	78db      	ldrb	r3, [r3, #3]
 8001dc0:	4313      	orrs	r3, r2
 8001dc2:	b29b      	uxth	r3, r3
 8001dc4:	82fb      	strh	r3, [r7, #22]
 8001dc6:	4b3d      	ldr	r3, [pc, #244]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001dc8:	791b      	ldrb	r3, [r3, #4]
 8001dca:	021b      	lsls	r3, r3, #8
 8001dcc:	b29a      	uxth	r2, r3
 8001dce:	4b3b      	ldr	r3, [pc, #236]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001dd0:	795b      	ldrb	r3, [r3, #5]
 8001dd2:	4313      	orrs	r3, r2
 8001dd4:	b29b      	uxth	r3, r3
 8001dd6:	813b      	strh	r3, [r7, #8]
 8001dd8:	4b38      	ldr	r3, [pc, #224]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001dda:	799b      	ldrb	r3, [r3, #6]
 8001ddc:	71fb      	strb	r3, [r7, #7]
 8001dde:	2301      	movs	r3, #1
 8001de0:	603b      	str	r3, [r7, #0]
 8001de2:	8afb      	ldrh	r3, [r7, #22]
 8001de4:	2b12      	cmp	r3, #18
 8001de6:	d904      	bls.n	8001df2 <pdu_write_multiply_coils+0x4a>
 8001de8:	8afa      	ldrh	r2, [r7, #22]
 8001dea:	893b      	ldrh	r3, [r7, #8]
 8001dec:	4413      	add	r3, r2
 8001dee:	2b38      	cmp	r3, #56	; 0x38
 8001df0:	dd10      	ble.n	8001e14 <pdu_write_multiply_coils+0x6c>
 8001df2:	683b      	ldr	r3, [r7, #0]
 8001df4:	1c5a      	adds	r2, r3, #1
 8001df6:	603a      	str	r2, [r7, #0]
 8001df8:	7aba      	ldrb	r2, [r7, #10]
 8001dfa:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001dfe:	b2d1      	uxtb	r1, r2
 8001e00:	4a2f      	ldr	r2, [pc, #188]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001e02:	54d1      	strb	r1, [r2, r3]
 8001e04:	683b      	ldr	r3, [r7, #0]
 8001e06:	1c5a      	adds	r2, r3, #1
 8001e08:	603a      	str	r2, [r7, #0]
 8001e0a:	4a2d      	ldr	r2, [pc, #180]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001e0c:	2102      	movs	r1, #2
 8001e0e:	54d1      	strb	r1, [r2, r3]
 8001e10:	683b      	ldr	r3, [r7, #0]
 8001e12:	e04f      	b.n	8001eb4 <pdu_write_multiply_coils+0x10c>
 8001e14:	2300      	movs	r3, #0
 8001e16:	613b      	str	r3, [r7, #16]
 8001e18:	e025      	b.n	8001e66 <pdu_write_multiply_coils+0xbe>
 8001e1a:	693b      	ldr	r3, [r7, #16]
 8001e1c:	3307      	adds	r3, #7
 8001e1e:	4a27      	ldr	r2, [pc, #156]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001e20:	5cd3      	ldrb	r3, [r2, r3]
 8001e22:	72fb      	strb	r3, [r7, #11]
 8001e24:	2300      	movs	r3, #0
 8001e26:	60fb      	str	r3, [r7, #12]
 8001e28:	e017      	b.n	8001e5a <pdu_write_multiply_coils+0xb2>
 8001e2a:	8afb      	ldrh	r3, [r7, #22]
 8001e2c:	1c5a      	adds	r2, r3, #1
 8001e2e:	82fa      	strh	r2, [r7, #22]
 8001e30:	461a      	mov	r2, r3
 8001e32:	7afb      	ldrb	r3, [r7, #11]
 8001e34:	f003 0301 	and.w	r3, r3, #1
 8001e38:	b2db      	uxtb	r3, r3
 8001e3a:	4610      	mov	r0, r2
 8001e3c:	4619      	mov	r1, r3
 8001e3e:	f7ff fef7 	bl	8001c30 <set_coil>
 8001e42:	8afa      	ldrh	r2, [r7, #22]
 8001e44:	893b      	ldrh	r3, [r7, #8]
 8001e46:	3313      	adds	r3, #19
 8001e48:	429a      	cmp	r2, r3
 8001e4a:	d100      	bne.n	8001e4e <pdu_write_multiply_coils+0xa6>
 8001e4c:	e008      	b.n	8001e60 <pdu_write_multiply_coils+0xb8>
 8001e4e:	7afb      	ldrb	r3, [r7, #11]
 8001e50:	085b      	lsrs	r3, r3, #1
 8001e52:	72fb      	strb	r3, [r7, #11]
 8001e54:	68fb      	ldr	r3, [r7, #12]
 8001e56:	3301      	adds	r3, #1
 8001e58:	60fb      	str	r3, [r7, #12]
 8001e5a:	68fb      	ldr	r3, [r7, #12]
 8001e5c:	2b07      	cmp	r3, #7
 8001e5e:	dde4      	ble.n	8001e2a <pdu_write_multiply_coils+0x82>
 8001e60:	693b      	ldr	r3, [r7, #16]
 8001e62:	3301      	adds	r3, #1
 8001e64:	613b      	str	r3, [r7, #16]
 8001e66:	79fa      	ldrb	r2, [r7, #7]
 8001e68:	693b      	ldr	r3, [r7, #16]
 8001e6a:	429a      	cmp	r2, r3
 8001e6c:	dcd5      	bgt.n	8001e1a <pdu_write_multiply_coils+0x72>
 8001e6e:	683b      	ldr	r3, [r7, #0]
 8001e70:	1c5a      	adds	r2, r3, #1
 8001e72:	603a      	str	r2, [r7, #0]
 8001e74:	4a12      	ldr	r2, [pc, #72]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001e76:	7ab9      	ldrb	r1, [r7, #10]
 8001e78:	54d1      	strb	r1, [r2, r3]
 8001e7a:	683b      	ldr	r3, [r7, #0]
 8001e7c:	1c5a      	adds	r2, r3, #1
 8001e7e:	603a      	str	r2, [r7, #0]
 8001e80:	4a0e      	ldr	r2, [pc, #56]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001e82:	7891      	ldrb	r1, [r2, #2]
 8001e84:	4a0e      	ldr	r2, [pc, #56]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001e86:	54d1      	strb	r1, [r2, r3]
 8001e88:	683b      	ldr	r3, [r7, #0]
 8001e8a:	1c5a      	adds	r2, r3, #1
 8001e8c:	603a      	str	r2, [r7, #0]
 8001e8e:	4a0b      	ldr	r2, [pc, #44]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001e90:	78d1      	ldrb	r1, [r2, #3]
 8001e92:	4a0b      	ldr	r2, [pc, #44]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001e94:	54d1      	strb	r1, [r2, r3]
 8001e96:	683b      	ldr	r3, [r7, #0]
 8001e98:	1c5a      	adds	r2, r3, #1
 8001e9a:	603a      	str	r2, [r7, #0]
 8001e9c:	4a07      	ldr	r2, [pc, #28]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001e9e:	7911      	ldrb	r1, [r2, #4]
 8001ea0:	4a07      	ldr	r2, [pc, #28]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001ea2:	54d1      	strb	r1, [r2, r3]
 8001ea4:	683b      	ldr	r3, [r7, #0]
 8001ea6:	1c5a      	adds	r2, r3, #1
 8001ea8:	603a      	str	r2, [r7, #0]
 8001eaa:	4a04      	ldr	r2, [pc, #16]	; (8001ebc <pdu_write_multiply_coils+0x114>)
 8001eac:	7951      	ldrb	r1, [r2, #5]
 8001eae:	4a04      	ldr	r2, [pc, #16]	; (8001ec0 <pdu_write_multiply_coils+0x118>)
 8001eb0:	54d1      	strb	r1, [r2, r3]
 8001eb2:	683b      	ldr	r3, [r7, #0]
 8001eb4:	4618      	mov	r0, r3
 8001eb6:	3718      	adds	r7, #24
 8001eb8:	46bd      	mov	sp, r7
 8001eba:	bd80      	pop	{r7, pc}
 8001ebc:	200013b0 	.word	0x200013b0
 8001ec0:	200014b8 	.word	0x200014b8

08001ec4 <pdu_read_coils>:
 8001ec4:	b580      	push	{r7, lr}
 8001ec6:	b084      	sub	sp, #16
 8001ec8:	af00      	add	r7, sp, #0
 8001eca:	4b28      	ldr	r3, [pc, #160]	; (8001f6c <pdu_read_coils+0xa8>)
 8001ecc:	785b      	ldrb	r3, [r3, #1]
 8001ece:	73fb      	strb	r3, [r7, #15]
 8001ed0:	4b26      	ldr	r3, [pc, #152]	; (8001f6c <pdu_read_coils+0xa8>)
 8001ed2:	789b      	ldrb	r3, [r3, #2]
 8001ed4:	021b      	lsls	r3, r3, #8
 8001ed6:	b29a      	uxth	r2, r3
 8001ed8:	4b24      	ldr	r3, [pc, #144]	; (8001f6c <pdu_read_coils+0xa8>)
 8001eda:	78db      	ldrb	r3, [r3, #3]
 8001edc:	4313      	orrs	r3, r2
 8001ede:	b29b      	uxth	r3, r3
 8001ee0:	81bb      	strh	r3, [r7, #12]
 8001ee2:	4b22      	ldr	r3, [pc, #136]	; (8001f6c <pdu_read_coils+0xa8>)
 8001ee4:	791b      	ldrb	r3, [r3, #4]
 8001ee6:	021b      	lsls	r3, r3, #8
 8001ee8:	b29a      	uxth	r2, r3
 8001eea:	4b20      	ldr	r3, [pc, #128]	; (8001f6c <pdu_read_coils+0xa8>)
 8001eec:	795b      	ldrb	r3, [r3, #5]
 8001eee:	4313      	orrs	r3, r2
 8001ef0:	b29b      	uxth	r3, r3
 8001ef2:	817b      	strh	r3, [r7, #10]
 8001ef4:	2301      	movs	r3, #1
 8001ef6:	607b      	str	r3, [r7, #4]
 8001ef8:	89bb      	ldrh	r3, [r7, #12]
 8001efa:	2b12      	cmp	r3, #18
 8001efc:	d904      	bls.n	8001f08 <pdu_read_coils+0x44>
 8001efe:	89ba      	ldrh	r2, [r7, #12]
 8001f00:	897b      	ldrh	r3, [r7, #10]
 8001f02:	4413      	add	r3, r2
 8001f04:	2b38      	cmp	r3, #56	; 0x38
 8001f06:	dd10      	ble.n	8001f2a <pdu_read_coils+0x66>
 8001f08:	687b      	ldr	r3, [r7, #4]
 8001f0a:	1c5a      	adds	r2, r3, #1
 8001f0c:	607a      	str	r2, [r7, #4]
 8001f0e:	7bfa      	ldrb	r2, [r7, #15]
 8001f10:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001f14:	b2d1      	uxtb	r1, r2
 8001f16:	4a16      	ldr	r2, [pc, #88]	; (8001f70 <pdu_read_coils+0xac>)
 8001f18:	54d1      	strb	r1, [r2, r3]
 8001f1a:	687b      	ldr	r3, [r7, #4]
 8001f1c:	1c5a      	adds	r2, r3, #1
 8001f1e:	607a      	str	r2, [r7, #4]
 8001f20:	4a13      	ldr	r2, [pc, #76]	; (8001f70 <pdu_read_coils+0xac>)
 8001f22:	2102      	movs	r1, #2
 8001f24:	54d1      	strb	r1, [r2, r3]
 8001f26:	687b      	ldr	r3, [r7, #4]
 8001f28:	e01b      	b.n	8001f62 <pdu_read_coils+0x9e>
 8001f2a:	687b      	ldr	r3, [r7, #4]
 8001f2c:	1c5a      	adds	r2, r3, #1
 8001f2e:	607a      	str	r2, [r7, #4]
 8001f30:	4a0f      	ldr	r2, [pc, #60]	; (8001f70 <pdu_read_coils+0xac>)
 8001f32:	7bf9      	ldrb	r1, [r7, #15]
 8001f34:	54d1      	strb	r1, [r2, r3]
 8001f36:	687b      	ldr	r3, [r7, #4]
 8001f38:	3301      	adds	r3, #1
 8001f3a:	607b      	str	r3, [r7, #4]
 8001f3c:	687a      	ldr	r2, [r7, #4]
 8001f3e:	4b0c      	ldr	r3, [pc, #48]	; (8001f70 <pdu_read_coils+0xac>)
 8001f40:	18d1      	adds	r1, r2, r3
 8001f42:	89bb      	ldrh	r3, [r7, #12]
 8001f44:	f1a3 0213 	sub.w	r2, r3, #19
 8001f48:	897b      	ldrh	r3, [r7, #10]
 8001f4a:	4608      	mov	r0, r1
 8001f4c:	4909      	ldr	r1, [pc, #36]	; (8001f74 <pdu_read_coils+0xb0>)
 8001f4e:	f7ff fe19 	bl	8001b84 <pack_bits_to_bytes>
 8001f52:	6038      	str	r0, [r7, #0]
 8001f54:	683b      	ldr	r3, [r7, #0]
 8001f56:	b2da      	uxtb	r2, r3
 8001f58:	4b05      	ldr	r3, [pc, #20]	; (8001f70 <pdu_read_coils+0xac>)
 8001f5a:	709a      	strb	r2, [r3, #2]
 8001f5c:	683a      	ldr	r2, [r7, #0]
 8001f5e:	687b      	ldr	r3, [r7, #4]
 8001f60:	4413      	add	r3, r2
 8001f62:	4618      	mov	r0, r3
 8001f64:	3710      	adds	r7, #16
 8001f66:	46bd      	mov	sp, r7
 8001f68:	bd80      	pop	{r7, pc}
 8001f6a:	bf00      	nop
 8001f6c:	200013b0 	.word	0x200013b0
 8001f70:	200014b8 	.word	0x200014b8
 8001f74:	20000008 	.word	0x20000008

08001f78 <pdu_read_discrete_inputs>:
 8001f78:	b580      	push	{r7, lr}
 8001f7a:	b084      	sub	sp, #16
 8001f7c:	af00      	add	r7, sp, #0
 8001f7e:	4b28      	ldr	r3, [pc, #160]	; (8002020 <pdu_read_discrete_inputs+0xa8>)
 8001f80:	785b      	ldrb	r3, [r3, #1]
 8001f82:	73fb      	strb	r3, [r7, #15]
 8001f84:	4b26      	ldr	r3, [pc, #152]	; (8002020 <pdu_read_discrete_inputs+0xa8>)
 8001f86:	789b      	ldrb	r3, [r3, #2]
 8001f88:	021b      	lsls	r3, r3, #8
 8001f8a:	b29a      	uxth	r2, r3
 8001f8c:	4b24      	ldr	r3, [pc, #144]	; (8002020 <pdu_read_discrete_inputs+0xa8>)
 8001f8e:	78db      	ldrb	r3, [r3, #3]
 8001f90:	4313      	orrs	r3, r2
 8001f92:	b29b      	uxth	r3, r3
 8001f94:	81bb      	strh	r3, [r7, #12]
 8001f96:	4b22      	ldr	r3, [pc, #136]	; (8002020 <pdu_read_discrete_inputs+0xa8>)
 8001f98:	791b      	ldrb	r3, [r3, #4]
 8001f9a:	021b      	lsls	r3, r3, #8
 8001f9c:	b29a      	uxth	r2, r3
 8001f9e:	4b20      	ldr	r3, [pc, #128]	; (8002020 <pdu_read_discrete_inputs+0xa8>)
 8001fa0:	795b      	ldrb	r3, [r3, #5]
 8001fa2:	4313      	orrs	r3, r2
 8001fa4:	b29b      	uxth	r3, r3
 8001fa6:	817b      	strh	r3, [r7, #10]
 8001fa8:	2301      	movs	r3, #1
 8001faa:	607b      	str	r3, [r7, #4]
 8001fac:	89bb      	ldrh	r3, [r7, #12]
 8001fae:	2bc3      	cmp	r3, #195	; 0xc3
 8001fb0:	d904      	bls.n	8001fbc <pdu_read_discrete_inputs+0x44>
 8001fb2:	89ba      	ldrh	r2, [r7, #12]
 8001fb4:	897b      	ldrh	r3, [r7, #10]
 8001fb6:	4413      	add	r3, r2
 8001fb8:	2bda      	cmp	r3, #218	; 0xda
 8001fba:	dd10      	ble.n	8001fde <pdu_read_discrete_inputs+0x66>
 8001fbc:	687b      	ldr	r3, [r7, #4]
 8001fbe:	1c5a      	adds	r2, r3, #1
 8001fc0:	607a      	str	r2, [r7, #4]
 8001fc2:	7bfa      	ldrb	r2, [r7, #15]
 8001fc4:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001fc8:	b2d1      	uxtb	r1, r2
 8001fca:	4a16      	ldr	r2, [pc, #88]	; (8002024 <pdu_read_discrete_inputs+0xac>)
 8001fcc:	54d1      	strb	r1, [r2, r3]
 8001fce:	687b      	ldr	r3, [r7, #4]
 8001fd0:	1c5a      	adds	r2, r3, #1
 8001fd2:	607a      	str	r2, [r7, #4]
 8001fd4:	4a13      	ldr	r2, [pc, #76]	; (8002024 <pdu_read_discrete_inputs+0xac>)
 8001fd6:	2102      	movs	r1, #2
 8001fd8:	54d1      	strb	r1, [r2, r3]
 8001fda:	687b      	ldr	r3, [r7, #4]
 8001fdc:	e01b      	b.n	8002016 <pdu_read_discrete_inputs+0x9e>
 8001fde:	687b      	ldr	r3, [r7, #4]
 8001fe0:	1c5a      	adds	r2, r3, #1
 8001fe2:	607a      	str	r2, [r7, #4]
 8001fe4:	4a0f      	ldr	r2, [pc, #60]	; (8002024 <pdu_read_discrete_inputs+0xac>)
 8001fe6:	7bf9      	ldrb	r1, [r7, #15]
 8001fe8:	54d1      	strb	r1, [r2, r3]
 8001fea:	687b      	ldr	r3, [r7, #4]
 8001fec:	3301      	adds	r3, #1
 8001fee:	607b      	str	r3, [r7, #4]
 8001ff0:	687a      	ldr	r2, [r7, #4]
 8001ff2:	4b0c      	ldr	r3, [pc, #48]	; (8002024 <pdu_read_discrete_inputs+0xac>)
 8001ff4:	18d1      	adds	r1, r2, r3
 8001ff6:	89bb      	ldrh	r3, [r7, #12]
 8001ff8:	f1a3 02c4 	sub.w	r2, r3, #196	; 0xc4
 8001ffc:	897b      	ldrh	r3, [r7, #10]
 8001ffe:	4608      	mov	r0, r1
 8002000:	4909      	ldr	r1, [pc, #36]	; (8002028 <pdu_read_discrete_inputs+0xb0>)
 8002002:	f7ff fdbf 	bl	8001b84 <pack_bits_to_bytes>
 8002006:	6038      	str	r0, [r7, #0]
 8002008:	683b      	ldr	r3, [r7, #0]
 800200a:	b2da      	uxtb	r2, r3
 800200c:	4b05      	ldr	r3, [pc, #20]	; (8002024 <pdu_read_discrete_inputs+0xac>)
 800200e:	709a      	strb	r2, [r3, #2]
 8002010:	683a      	ldr	r2, [r7, #0]
 8002012:	687b      	ldr	r3, [r7, #4]
 8002014:	4413      	add	r3, r2
 8002016:	4618      	mov	r0, r3
 8002018:	3710      	adds	r7, #16
 800201a:	46bd      	mov	sp, r7
 800201c:	bd80      	pop	{r7, pc}
 800201e:	bf00      	nop
 8002020:	200013b0 	.word	0x200013b0
 8002024:	200014b8 	.word	0x200014b8
 8002028:	20000010 	.word	0x20000010

0800202c <pdu_report_server_id>:
 800202c:	b480      	push	{r7}
 800202e:	b085      	sub	sp, #20
 8002030:	af00      	add	r7, sp, #0
 8002032:	2316      	movs	r3, #22
 8002034:	607b      	str	r3, [r7, #4]
 8002036:	4b1d      	ldr	r3, [pc, #116]	; (80020ac <pdu_report_server_id+0x80>)
 8002038:	785b      	ldrb	r3, [r3, #1]
 800203a:	70fb      	strb	r3, [r7, #3]
 800203c:	2301      	movs	r3, #1
 800203e:	60fb      	str	r3, [r7, #12]
 8002040:	68fb      	ldr	r3, [r7, #12]
 8002042:	1c5a      	adds	r2, r3, #1
 8002044:	60fa      	str	r2, [r7, #12]
 8002046:	4a1a      	ldr	r2, [pc, #104]	; (80020b0 <pdu_report_server_id+0x84>)
 8002048:	78f9      	ldrb	r1, [r7, #3]
 800204a:	54d1      	strb	r1, [r2, r3]
 800204c:	68fb      	ldr	r3, [r7, #12]
 800204e:	1c5a      	adds	r2, r3, #1
 8002050:	60fa      	str	r2, [r7, #12]
 8002052:	687a      	ldr	r2, [r7, #4]
 8002054:	b2d2      	uxtb	r2, r2
 8002056:	3202      	adds	r2, #2
 8002058:	b2d1      	uxtb	r1, r2
 800205a:	4a15      	ldr	r2, [pc, #84]	; (80020b0 <pdu_report_server_id+0x84>)
 800205c:	54d1      	strb	r1, [r2, r3]
 800205e:	68fb      	ldr	r3, [r7, #12]
 8002060:	1c5a      	adds	r2, r3, #1
 8002062:	60fa      	str	r2, [r7, #12]
 8002064:	4a12      	ldr	r2, [pc, #72]	; (80020b0 <pdu_report_server_id+0x84>)
 8002066:	2111      	movs	r1, #17
 8002068:	54d1      	strb	r1, [r2, r3]
 800206a:	68fb      	ldr	r3, [r7, #12]
 800206c:	1c5a      	adds	r2, r3, #1
 800206e:	60fa      	str	r2, [r7, #12]
 8002070:	4a0f      	ldr	r2, [pc, #60]	; (80020b0 <pdu_report_server_id+0x84>)
 8002072:	21ff      	movs	r1, #255	; 0xff
 8002074:	54d1      	strb	r1, [r2, r3]
 8002076:	2300      	movs	r3, #0
 8002078:	60bb      	str	r3, [r7, #8]
 800207a:	e00b      	b.n	8002094 <pdu_report_server_id+0x68>
 800207c:	68fb      	ldr	r3, [r7, #12]
 800207e:	1c5a      	adds	r2, r3, #1
 8002080:	60fa      	str	r2, [r7, #12]
 8002082:	490c      	ldr	r1, [pc, #48]	; (80020b4 <pdu_report_server_id+0x88>)
 8002084:	68ba      	ldr	r2, [r7, #8]
 8002086:	440a      	add	r2, r1
 8002088:	7811      	ldrb	r1, [r2, #0]
 800208a:	4a09      	ldr	r2, [pc, #36]	; (80020b0 <pdu_report_server_id+0x84>)
 800208c:	54d1      	strb	r1, [r2, r3]
 800208e:	68bb      	ldr	r3, [r7, #8]
 8002090:	3301      	adds	r3, #1
 8002092:	60bb      	str	r3, [r7, #8]
 8002094:	68ba      	ldr	r2, [r7, #8]
 8002096:	687b      	ldr	r3, [r7, #4]
 8002098:	429a      	cmp	r2, r3
 800209a:	dbef      	blt.n	800207c <pdu_report_server_id+0x50>
 800209c:	68fb      	ldr	r3, [r7, #12]
 800209e:	4618      	mov	r0, r3
 80020a0:	3714      	adds	r7, #20
 80020a2:	46bd      	mov	sp, r7
 80020a4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020a8:	4770      	bx	lr
 80020aa:	bf00      	nop
 80020ac:	200013b0 	.word	0x200013b0
 80020b0:	200014b8 	.word	0x200014b8
 80020b4:	0800a77c 	.word	0x0800a77c

080020b8 <pdu_diagnostics>:
 80020b8:	b480      	push	{r7}
 80020ba:	b085      	sub	sp, #20
 80020bc:	af00      	add	r7, sp, #0
 80020be:	4b1e      	ldr	r3, [pc, #120]	; (8002138 <pdu_diagnostics+0x80>)
 80020c0:	785b      	ldrb	r3, [r3, #1]
 80020c2:	71fb      	strb	r3, [r7, #7]
 80020c4:	4b1c      	ldr	r3, [pc, #112]	; (8002138 <pdu_diagnostics+0x80>)
 80020c6:	789b      	ldrb	r3, [r3, #2]
 80020c8:	021b      	lsls	r3, r3, #8
 80020ca:	b29a      	uxth	r2, r3
 80020cc:	4b1a      	ldr	r3, [pc, #104]	; (8002138 <pdu_diagnostics+0x80>)
 80020ce:	78db      	ldrb	r3, [r3, #3]
 80020d0:	4313      	orrs	r3, r2
 80020d2:	b29b      	uxth	r3, r3
 80020d4:	80bb      	strh	r3, [r7, #4]
 80020d6:	2301      	movs	r3, #1
 80020d8:	60bb      	str	r3, [r7, #8]
 80020da:	88bb      	ldrh	r3, [r7, #4]
 80020dc:	2b00      	cmp	r3, #0
 80020de:	d114      	bne.n	800210a <pdu_diagnostics+0x52>
 80020e0:	2301      	movs	r3, #1
 80020e2:	60fb      	str	r3, [r7, #12]
 80020e4:	e00b      	b.n	80020fe <pdu_diagnostics+0x46>
 80020e6:	68bb      	ldr	r3, [r7, #8]
 80020e8:	1c5a      	adds	r2, r3, #1
 80020ea:	60ba      	str	r2, [r7, #8]
 80020ec:	4912      	ldr	r1, [pc, #72]	; (8002138 <pdu_diagnostics+0x80>)
 80020ee:	68fa      	ldr	r2, [r7, #12]
 80020f0:	440a      	add	r2, r1
 80020f2:	7811      	ldrb	r1, [r2, #0]
 80020f4:	4a11      	ldr	r2, [pc, #68]	; (800213c <pdu_diagnostics+0x84>)
 80020f6:	54d1      	strb	r1, [r2, r3]
 80020f8:	68fb      	ldr	r3, [r7, #12]
 80020fa:	3301      	adds	r3, #1
 80020fc:	60fb      	str	r3, [r7, #12]
 80020fe:	68fa      	ldr	r2, [r7, #12]
 8002100:	4b0f      	ldr	r3, [pc, #60]	; (8002140 <pdu_diagnostics+0x88>)
 8002102:	681b      	ldr	r3, [r3, #0]
 8002104:	429a      	cmp	r2, r3
 8002106:	d3ee      	bcc.n	80020e6 <pdu_diagnostics+0x2e>
 8002108:	e00e      	b.n	8002128 <pdu_diagnostics+0x70>
 800210a:	68bb      	ldr	r3, [r7, #8]
 800210c:	1c5a      	adds	r2, r3, #1
 800210e:	60ba      	str	r2, [r7, #8]
 8002110:	79fa      	ldrb	r2, [r7, #7]
 8002112:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002116:	b2d1      	uxtb	r1, r2
 8002118:	4a08      	ldr	r2, [pc, #32]	; (800213c <pdu_diagnostics+0x84>)
 800211a:	54d1      	strb	r1, [r2, r3]
 800211c:	68bb      	ldr	r3, [r7, #8]
 800211e:	1c5a      	adds	r2, r3, #1
 8002120:	60ba      	str	r2, [r7, #8]
 8002122:	4a06      	ldr	r2, [pc, #24]	; (800213c <pdu_diagnostics+0x84>)
 8002124:	2101      	movs	r1, #1
 8002126:	54d1      	strb	r1, [r2, r3]
 8002128:	68bb      	ldr	r3, [r7, #8]
 800212a:	4618      	mov	r0, r3
 800212c:	3714      	adds	r7, #20
 800212e:	46bd      	mov	sp, r7
 8002130:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002134:	4770      	bx	lr
 8002136:	bf00      	nop
 8002138:	200013b0 	.word	0x200013b0
 800213c:	200014b8 	.word	0x200014b8
 8002140:	200014b4 	.word	0x200014b4

08002144 <pdu_read_input_registers>:
 8002144:	b480      	push	{r7}
 8002146:	b085      	sub	sp, #20
 8002148:	af00      	add	r7, sp, #0
 800214a:	4b35      	ldr	r3, [pc, #212]	; (8002220 <pdu_read_input_registers+0xdc>)
 800214c:	785b      	ldrb	r3, [r3, #1]
 800214e:	71fb      	strb	r3, [r7, #7]
 8002150:	4b33      	ldr	r3, [pc, #204]	; (8002220 <pdu_read_input_registers+0xdc>)
 8002152:	789b      	ldrb	r3, [r3, #2]
 8002154:	021b      	lsls	r3, r3, #8
 8002156:	b29a      	uxth	r2, r3
 8002158:	4b31      	ldr	r3, [pc, #196]	; (8002220 <pdu_read_input_registers+0xdc>)
 800215a:	78db      	ldrb	r3, [r3, #3]
 800215c:	4313      	orrs	r3, r2
 800215e:	b29b      	uxth	r3, r3
 8002160:	80bb      	strh	r3, [r7, #4]
 8002162:	4b2f      	ldr	r3, [pc, #188]	; (8002220 <pdu_read_input_registers+0xdc>)
 8002164:	791b      	ldrb	r3, [r3, #4]
 8002166:	021b      	lsls	r3, r3, #8
 8002168:	b29a      	uxth	r2, r3
 800216a:	4b2d      	ldr	r3, [pc, #180]	; (8002220 <pdu_read_input_registers+0xdc>)
 800216c:	795b      	ldrb	r3, [r3, #5]
 800216e:	4313      	orrs	r3, r2
 8002170:	b29b      	uxth	r3, r3
 8002172:	807b      	strh	r3, [r7, #2]
 8002174:	88bb      	ldrh	r3, [r7, #4]
 8002176:	2b07      	cmp	r3, #7
 8002178:	d904      	bls.n	8002184 <pdu_read_input_registers+0x40>
 800217a:	88ba      	ldrh	r2, [r7, #4]
 800217c:	887b      	ldrh	r3, [r7, #2]
 800217e:	4413      	add	r3, r2
 8002180:	2b09      	cmp	r3, #9
 8002182:	dd12      	ble.n	80021aa <pdu_read_input_registers+0x66>
 8002184:	2301      	movs	r3, #1
 8002186:	60bb      	str	r3, [r7, #8]
 8002188:	68bb      	ldr	r3, [r7, #8]
 800218a:	1c5a      	adds	r2, r3, #1
 800218c:	60ba      	str	r2, [r7, #8]
 800218e:	79fa      	ldrb	r2, [r7, #7]
 8002190:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002194:	b2d1      	uxtb	r1, r2
 8002196:	4a23      	ldr	r2, [pc, #140]	; (8002224 <pdu_read_input_registers+0xe0>)
 8002198:	54d1      	strb	r1, [r2, r3]
 800219a:	68bb      	ldr	r3, [r7, #8]
 800219c:	1c5a      	adds	r2, r3, #1
 800219e:	60ba      	str	r2, [r7, #8]
 80021a0:	4a20      	ldr	r2, [pc, #128]	; (8002224 <pdu_read_input_registers+0xe0>)
 80021a2:	2102      	movs	r1, #2
 80021a4:	54d1      	strb	r1, [r2, r3]
 80021a6:	68bb      	ldr	r3, [r7, #8]
 80021a8:	e034      	b.n	8002214 <pdu_read_input_registers+0xd0>
 80021aa:	2301      	movs	r3, #1
 80021ac:	60bb      	str	r3, [r7, #8]
 80021ae:	68bb      	ldr	r3, [r7, #8]
 80021b0:	1c5a      	adds	r2, r3, #1
 80021b2:	60ba      	str	r2, [r7, #8]
 80021b4:	4a1b      	ldr	r2, [pc, #108]	; (8002224 <pdu_read_input_registers+0xe0>)
 80021b6:	79f9      	ldrb	r1, [r7, #7]
 80021b8:	54d1      	strb	r1, [r2, r3]
 80021ba:	68bb      	ldr	r3, [r7, #8]
 80021bc:	1c5a      	adds	r2, r3, #1
 80021be:	60ba      	str	r2, [r7, #8]
 80021c0:	887a      	ldrh	r2, [r7, #2]
 80021c2:	b2d2      	uxtb	r2, r2
 80021c4:	0052      	lsls	r2, r2, #1
 80021c6:	b2d1      	uxtb	r1, r2
 80021c8:	4a16      	ldr	r2, [pc, #88]	; (8002224 <pdu_read_input_registers+0xe0>)
 80021ca:	54d1      	strb	r1, [r2, r3]
 80021cc:	2300      	movs	r3, #0
 80021ce:	60fb      	str	r3, [r7, #12]
 80021d0:	e01b      	b.n	800220a <pdu_read_input_registers+0xc6>
 80021d2:	88bb      	ldrh	r3, [r7, #4]
 80021d4:	f1a3 0208 	sub.w	r2, r3, #8
 80021d8:	68fb      	ldr	r3, [r7, #12]
 80021da:	441a      	add	r2, r3
 80021dc:	4b12      	ldr	r3, [pc, #72]	; (8002228 <pdu_read_input_registers+0xe4>)
 80021de:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 80021e2:	803b      	strh	r3, [r7, #0]
 80021e4:	68bb      	ldr	r3, [r7, #8]
 80021e6:	1c5a      	adds	r2, r3, #1
 80021e8:	60ba      	str	r2, [r7, #8]
 80021ea:	883a      	ldrh	r2, [r7, #0]
 80021ec:	0a12      	lsrs	r2, r2, #8
 80021ee:	b292      	uxth	r2, r2
 80021f0:	b2d1      	uxtb	r1, r2
 80021f2:	4a0c      	ldr	r2, [pc, #48]	; (8002224 <pdu_read_input_registers+0xe0>)
 80021f4:	54d1      	strb	r1, [r2, r3]
 80021f6:	68bb      	ldr	r3, [r7, #8]
 80021f8:	1c5a      	adds	r2, r3, #1
 80021fa:	60ba      	str	r2, [r7, #8]
 80021fc:	883a      	ldrh	r2, [r7, #0]
 80021fe:	b2d1      	uxtb	r1, r2
 8002200:	4a08      	ldr	r2, [pc, #32]	; (8002224 <pdu_read_input_registers+0xe0>)
 8002202:	54d1      	strb	r1, [r2, r3]
 8002204:	68fb      	ldr	r3, [r7, #12]
 8002206:	3301      	adds	r3, #1
 8002208:	60fb      	str	r3, [r7, #12]
 800220a:	887a      	ldrh	r2, [r7, #2]
 800220c:	68fb      	ldr	r3, [r7, #12]
 800220e:	429a      	cmp	r2, r3
 8002210:	dcdf      	bgt.n	80021d2 <pdu_read_input_registers+0x8e>
 8002212:	68bb      	ldr	r3, [r7, #8]
 8002214:	4618      	mov	r0, r3
 8002216:	3714      	adds	r7, #20
 8002218:	46bd      	mov	sp, r7
 800221a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800221e:	4770      	bx	lr
 8002220:	200013b0 	.word	0x200013b0
 8002224:	200014b8 	.word	0x200014b8
 8002228:	20000014 	.word	0x20000014

0800222c <pdu_write_single_register>:
 800222c:	b480      	push	{r7}
 800222e:	b085      	sub	sp, #20
 8002230:	af00      	add	r7, sp, #0
 8002232:	4b2d      	ldr	r3, [pc, #180]	; (80022e8 <pdu_write_single_register+0xbc>)
 8002234:	785b      	ldrb	r3, [r3, #1]
 8002236:	72fb      	strb	r3, [r7, #11]
 8002238:	4b2b      	ldr	r3, [pc, #172]	; (80022e8 <pdu_write_single_register+0xbc>)
 800223a:	789b      	ldrb	r3, [r3, #2]
 800223c:	021b      	lsls	r3, r3, #8
 800223e:	b29a      	uxth	r2, r3
 8002240:	4b29      	ldr	r3, [pc, #164]	; (80022e8 <pdu_write_single_register+0xbc>)
 8002242:	78db      	ldrb	r3, [r3, #3]
 8002244:	4313      	orrs	r3, r2
 8002246:	b29b      	uxth	r3, r3
 8002248:	813b      	strh	r3, [r7, #8]
 800224a:	4b27      	ldr	r3, [pc, #156]	; (80022e8 <pdu_write_single_register+0xbc>)
 800224c:	791b      	ldrb	r3, [r3, #4]
 800224e:	021b      	lsls	r3, r3, #8
 8002250:	b29a      	uxth	r2, r3
 8002252:	4b25      	ldr	r3, [pc, #148]	; (80022e8 <pdu_write_single_register+0xbc>)
 8002254:	795b      	ldrb	r3, [r3, #5]
 8002256:	4313      	orrs	r3, r2
 8002258:	b29b      	uxth	r3, r3
 800225a:	80fb      	strh	r3, [r7, #6]
 800225c:	893b      	ldrh	r3, [r7, #8]
 800225e:	2b07      	cmp	r3, #7
 8002260:	d911      	bls.n	8002286 <pdu_write_single_register+0x5a>
 8002262:	2301      	movs	r3, #1
 8002264:	60fb      	str	r3, [r7, #12]
 8002266:	68fb      	ldr	r3, [r7, #12]
 8002268:	1c5a      	adds	r2, r3, #1
 800226a:	60fa      	str	r2, [r7, #12]
 800226c:	7afa      	ldrb	r2, [r7, #11]
 800226e:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002272:	b2d1      	uxtb	r1, r2
 8002274:	4a1d      	ldr	r2, [pc, #116]	; (80022ec <pdu_write_single_register+0xc0>)
 8002276:	54d1      	strb	r1, [r2, r3]
 8002278:	68fb      	ldr	r3, [r7, #12]
 800227a:	1c5a      	adds	r2, r3, #1
 800227c:	60fa      	str	r2, [r7, #12]
 800227e:	4a1b      	ldr	r2, [pc, #108]	; (80022ec <pdu_write_single_register+0xc0>)
 8002280:	2102      	movs	r1, #2
 8002282:	54d1      	strb	r1, [r2, r3]
 8002284:	e028      	b.n	80022d8 <pdu_write_single_register+0xac>
 8002286:	893a      	ldrh	r2, [r7, #8]
 8002288:	4b19      	ldr	r3, [pc, #100]	; (80022f0 <pdu_write_single_register+0xc4>)
 800228a:	88f9      	ldrh	r1, [r7, #6]
 800228c:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 8002290:	2301      	movs	r3, #1
 8002292:	60fb      	str	r3, [r7, #12]
 8002294:	68fb      	ldr	r3, [r7, #12]
 8002296:	1c5a      	adds	r2, r3, #1
 8002298:	60fa      	str	r2, [r7, #12]
 800229a:	4a14      	ldr	r2, [pc, #80]	; (80022ec <pdu_write_single_register+0xc0>)
 800229c:	7af9      	ldrb	r1, [r7, #11]
 800229e:	54d1      	strb	r1, [r2, r3]
 80022a0:	68fb      	ldr	r3, [r7, #12]
 80022a2:	1c5a      	adds	r2, r3, #1
 80022a4:	60fa      	str	r2, [r7, #12]
 80022a6:	4a10      	ldr	r2, [pc, #64]	; (80022e8 <pdu_write_single_register+0xbc>)
 80022a8:	7891      	ldrb	r1, [r2, #2]
 80022aa:	4a10      	ldr	r2, [pc, #64]	; (80022ec <pdu_write_single_register+0xc0>)
 80022ac:	54d1      	strb	r1, [r2, r3]
 80022ae:	68fb      	ldr	r3, [r7, #12]
 80022b0:	1c5a      	adds	r2, r3, #1
 80022b2:	60fa      	str	r2, [r7, #12]
 80022b4:	4a0c      	ldr	r2, [pc, #48]	; (80022e8 <pdu_write_single_register+0xbc>)
 80022b6:	78d1      	ldrb	r1, [r2, #3]
 80022b8:	4a0c      	ldr	r2, [pc, #48]	; (80022ec <pdu_write_single_register+0xc0>)
 80022ba:	54d1      	strb	r1, [r2, r3]
 80022bc:	68fb      	ldr	r3, [r7, #12]
 80022be:	1c5a      	adds	r2, r3, #1
 80022c0:	60fa      	str	r2, [r7, #12]
 80022c2:	4a09      	ldr	r2, [pc, #36]	; (80022e8 <pdu_write_single_register+0xbc>)
 80022c4:	7911      	ldrb	r1, [r2, #4]
 80022c6:	4a09      	ldr	r2, [pc, #36]	; (80022ec <pdu_write_single_register+0xc0>)
 80022c8:	54d1      	strb	r1, [r2, r3]
 80022ca:	68fb      	ldr	r3, [r7, #12]
 80022cc:	1c5a      	adds	r2, r3, #1
 80022ce:	60fa      	str	r2, [r7, #12]
 80022d0:	4a05      	ldr	r2, [pc, #20]	; (80022e8 <pdu_write_single_register+0xbc>)
 80022d2:	7951      	ldrb	r1, [r2, #5]
 80022d4:	4a05      	ldr	r2, [pc, #20]	; (80022ec <pdu_write_single_register+0xc0>)
 80022d6:	54d1      	strb	r1, [r2, r3]
 80022d8:	68fb      	ldr	r3, [r7, #12]
 80022da:	4618      	mov	r0, r3
 80022dc:	3714      	adds	r7, #20
 80022de:	46bd      	mov	sp, r7
 80022e0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80022e4:	4770      	bx	lr
 80022e6:	bf00      	nop
 80022e8:	200013b0 	.word	0x200013b0
 80022ec:	200014b8 	.word	0x200014b8
 80022f0:	2000139c 	.word	0x2000139c

080022f4 <pdu_write_multiply_registers>:
 80022f4:	b480      	push	{r7}
 80022f6:	b087      	sub	sp, #28
 80022f8:	af00      	add	r7, sp, #0
 80022fa:	4b3e      	ldr	r3, [pc, #248]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 80022fc:	785b      	ldrb	r3, [r3, #1]
 80022fe:	73fb      	strb	r3, [r7, #15]
 8002300:	4b3c      	ldr	r3, [pc, #240]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 8002302:	789b      	ldrb	r3, [r3, #2]
 8002304:	021b      	lsls	r3, r3, #8
 8002306:	b29a      	uxth	r2, r3
 8002308:	4b3a      	ldr	r3, [pc, #232]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 800230a:	78db      	ldrb	r3, [r3, #3]
 800230c:	4313      	orrs	r3, r2
 800230e:	b29b      	uxth	r3, r3
 8002310:	81bb      	strh	r3, [r7, #12]
 8002312:	4b38      	ldr	r3, [pc, #224]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 8002314:	791b      	ldrb	r3, [r3, #4]
 8002316:	021b      	lsls	r3, r3, #8
 8002318:	b29a      	uxth	r2, r3
 800231a:	4b36      	ldr	r3, [pc, #216]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 800231c:	795b      	ldrb	r3, [r3, #5]
 800231e:	4313      	orrs	r3, r2
 8002320:	b29b      	uxth	r3, r3
 8002322:	817b      	strh	r3, [r7, #10]
 8002324:	4b33      	ldr	r3, [pc, #204]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 8002326:	799b      	ldrb	r3, [r3, #6]
 8002328:	727b      	strb	r3, [r7, #9]
 800232a:	89ba      	ldrh	r2, [r7, #12]
 800232c:	897b      	ldrh	r3, [r7, #10]
 800232e:	4413      	add	r3, r2
 8002330:	2b08      	cmp	r3, #8
 8002332:	dd11      	ble.n	8002358 <pdu_write_multiply_registers+0x64>
 8002334:	2301      	movs	r3, #1
 8002336:	613b      	str	r3, [r7, #16]
 8002338:	693b      	ldr	r3, [r7, #16]
 800233a:	1c5a      	adds	r2, r3, #1
 800233c:	613a      	str	r2, [r7, #16]
 800233e:	7bfa      	ldrb	r2, [r7, #15]
 8002340:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002344:	b2d1      	uxtb	r1, r2
 8002346:	4a2c      	ldr	r2, [pc, #176]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 8002348:	54d1      	strb	r1, [r2, r3]
 800234a:	693b      	ldr	r3, [r7, #16]
 800234c:	1c5a      	adds	r2, r3, #1
 800234e:	613a      	str	r2, [r7, #16]
 8002350:	4a29      	ldr	r2, [pc, #164]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 8002352:	2102      	movs	r1, #2
 8002354:	54d1      	strb	r1, [r2, r3]
 8002356:	e046      	b.n	80023e6 <pdu_write_multiply_registers+0xf2>
 8002358:	2307      	movs	r3, #7
 800235a:	613b      	str	r3, [r7, #16]
 800235c:	2300      	movs	r3, #0
 800235e:	617b      	str	r3, [r7, #20]
 8002360:	e019      	b.n	8002396 <pdu_write_multiply_registers+0xa2>
 8002362:	693b      	ldr	r3, [r7, #16]
 8002364:	1c5a      	adds	r2, r3, #1
 8002366:	613a      	str	r2, [r7, #16]
 8002368:	4a22      	ldr	r2, [pc, #136]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 800236a:	5cd3      	ldrb	r3, [r2, r3]
 800236c:	021b      	lsls	r3, r3, #8
 800236e:	80fb      	strh	r3, [r7, #6]
 8002370:	693b      	ldr	r3, [r7, #16]
 8002372:	1c5a      	adds	r2, r3, #1
 8002374:	613a      	str	r2, [r7, #16]
 8002376:	4a1f      	ldr	r2, [pc, #124]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 8002378:	5cd3      	ldrb	r3, [r2, r3]
 800237a:	461a      	mov	r2, r3
 800237c:	88fb      	ldrh	r3, [r7, #6]
 800237e:	4313      	orrs	r3, r2
 8002380:	80fb      	strh	r3, [r7, #6]
 8002382:	89ba      	ldrh	r2, [r7, #12]
 8002384:	697b      	ldr	r3, [r7, #20]
 8002386:	441a      	add	r2, r3
 8002388:	4b1c      	ldr	r3, [pc, #112]	; (80023fc <pdu_write_multiply_registers+0x108>)
 800238a:	88f9      	ldrh	r1, [r7, #6]
 800238c:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 8002390:	697b      	ldr	r3, [r7, #20]
 8002392:	3301      	adds	r3, #1
 8002394:	617b      	str	r3, [r7, #20]
 8002396:	897a      	ldrh	r2, [r7, #10]
 8002398:	697b      	ldr	r3, [r7, #20]
 800239a:	429a      	cmp	r2, r3
 800239c:	dce1      	bgt.n	8002362 <pdu_write_multiply_registers+0x6e>
 800239e:	2301      	movs	r3, #1
 80023a0:	613b      	str	r3, [r7, #16]
 80023a2:	693b      	ldr	r3, [r7, #16]
 80023a4:	1c5a      	adds	r2, r3, #1
 80023a6:	613a      	str	r2, [r7, #16]
 80023a8:	4a13      	ldr	r2, [pc, #76]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 80023aa:	7bf9      	ldrb	r1, [r7, #15]
 80023ac:	54d1      	strb	r1, [r2, r3]
 80023ae:	693b      	ldr	r3, [r7, #16]
 80023b0:	1c5a      	adds	r2, r3, #1
 80023b2:	613a      	str	r2, [r7, #16]
 80023b4:	4a0f      	ldr	r2, [pc, #60]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 80023b6:	7891      	ldrb	r1, [r2, #2]
 80023b8:	4a0f      	ldr	r2, [pc, #60]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 80023ba:	54d1      	strb	r1, [r2, r3]
 80023bc:	693b      	ldr	r3, [r7, #16]
 80023be:	1c5a      	adds	r2, r3, #1
 80023c0:	613a      	str	r2, [r7, #16]
 80023c2:	4a0c      	ldr	r2, [pc, #48]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 80023c4:	78d1      	ldrb	r1, [r2, #3]
 80023c6:	4a0c      	ldr	r2, [pc, #48]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 80023c8:	54d1      	strb	r1, [r2, r3]
 80023ca:	693b      	ldr	r3, [r7, #16]
 80023cc:	1c5a      	adds	r2, r3, #1
 80023ce:	613a      	str	r2, [r7, #16]
 80023d0:	4a08      	ldr	r2, [pc, #32]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 80023d2:	7911      	ldrb	r1, [r2, #4]
 80023d4:	4a08      	ldr	r2, [pc, #32]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 80023d6:	54d1      	strb	r1, [r2, r3]
 80023d8:	693b      	ldr	r3, [r7, #16]
 80023da:	1c5a      	adds	r2, r3, #1
 80023dc:	613a      	str	r2, [r7, #16]
 80023de:	4a05      	ldr	r2, [pc, #20]	; (80023f4 <pdu_write_multiply_registers+0x100>)
 80023e0:	7951      	ldrb	r1, [r2, #5]
 80023e2:	4a05      	ldr	r2, [pc, #20]	; (80023f8 <pdu_write_multiply_registers+0x104>)
 80023e4:	54d1      	strb	r1, [r2, r3]
 80023e6:	693b      	ldr	r3, [r7, #16]
 80023e8:	4618      	mov	r0, r3
 80023ea:	371c      	adds	r7, #28
 80023ec:	46bd      	mov	sp, r7
 80023ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80023f2:	4770      	bx	lr
 80023f4:	200013b0 	.word	0x200013b0
 80023f8:	200014b8 	.word	0x200014b8
 80023fc:	2000139c 	.word	0x2000139c

08002400 <pdu_read_holding_registers>:
 8002400:	b480      	push	{r7}
 8002402:	b085      	sub	sp, #20
 8002404:	af00      	add	r7, sp, #0
 8002406:	4b32      	ldr	r3, [pc, #200]	; (80024d0 <pdu_read_holding_registers+0xd0>)
 8002408:	785b      	ldrb	r3, [r3, #1]
 800240a:	71fb      	strb	r3, [r7, #7]
 800240c:	4b30      	ldr	r3, [pc, #192]	; (80024d0 <pdu_read_holding_registers+0xd0>)
 800240e:	789b      	ldrb	r3, [r3, #2]
 8002410:	021b      	lsls	r3, r3, #8
 8002412:	b29a      	uxth	r2, r3
 8002414:	4b2e      	ldr	r3, [pc, #184]	; (80024d0 <pdu_read_holding_registers+0xd0>)
 8002416:	78db      	ldrb	r3, [r3, #3]
 8002418:	4313      	orrs	r3, r2
 800241a:	b29b      	uxth	r3, r3
 800241c:	80bb      	strh	r3, [r7, #4]
 800241e:	4b2c      	ldr	r3, [pc, #176]	; (80024d0 <pdu_read_holding_registers+0xd0>)
 8002420:	791b      	ldrb	r3, [r3, #4]
 8002422:	021b      	lsls	r3, r3, #8
 8002424:	b29a      	uxth	r2, r3
 8002426:	4b2a      	ldr	r3, [pc, #168]	; (80024d0 <pdu_read_holding_registers+0xd0>)
 8002428:	795b      	ldrb	r3, [r3, #5]
 800242a:	4313      	orrs	r3, r2
 800242c:	b29b      	uxth	r3, r3
 800242e:	807b      	strh	r3, [r7, #2]
 8002430:	88ba      	ldrh	r2, [r7, #4]
 8002432:	887b      	ldrh	r3, [r7, #2]
 8002434:	4413      	add	r3, r2
 8002436:	2b08      	cmp	r3, #8
 8002438:	dd11      	ble.n	800245e <pdu_read_holding_registers+0x5e>
 800243a:	2301      	movs	r3, #1
 800243c:	60bb      	str	r3, [r7, #8]
 800243e:	68bb      	ldr	r3, [r7, #8]
 8002440:	1c5a      	adds	r2, r3, #1
 8002442:	60ba      	str	r2, [r7, #8]
 8002444:	79fa      	ldrb	r2, [r7, #7]
 8002446:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800244a:	b2d1      	uxtb	r1, r2
 800244c:	4a21      	ldr	r2, [pc, #132]	; (80024d4 <pdu_read_holding_registers+0xd4>)
 800244e:	54d1      	strb	r1, [r2, r3]
 8002450:	68bb      	ldr	r3, [r7, #8]
 8002452:	1c5a      	adds	r2, r3, #1
 8002454:	60ba      	str	r2, [r7, #8]
 8002456:	4a1f      	ldr	r2, [pc, #124]	; (80024d4 <pdu_read_holding_registers+0xd4>)
 8002458:	2102      	movs	r1, #2
 800245a:	54d1      	strb	r1, [r2, r3]
 800245c:	e031      	b.n	80024c2 <pdu_read_holding_registers+0xc2>
 800245e:	2301      	movs	r3, #1
 8002460:	60bb      	str	r3, [r7, #8]
 8002462:	68bb      	ldr	r3, [r7, #8]
 8002464:	1c5a      	adds	r2, r3, #1
 8002466:	60ba      	str	r2, [r7, #8]
 8002468:	4a1a      	ldr	r2, [pc, #104]	; (80024d4 <pdu_read_holding_registers+0xd4>)
 800246a:	79f9      	ldrb	r1, [r7, #7]
 800246c:	54d1      	strb	r1, [r2, r3]
 800246e:	68bb      	ldr	r3, [r7, #8]
 8002470:	1c5a      	adds	r2, r3, #1
 8002472:	60ba      	str	r2, [r7, #8]
 8002474:	887a      	ldrh	r2, [r7, #2]
 8002476:	b2d2      	uxtb	r2, r2
 8002478:	0052      	lsls	r2, r2, #1
 800247a:	b2d1      	uxtb	r1, r2
 800247c:	4a15      	ldr	r2, [pc, #84]	; (80024d4 <pdu_read_holding_registers+0xd4>)
 800247e:	54d1      	strb	r1, [r2, r3]
 8002480:	2300      	movs	r3, #0
 8002482:	60fb      	str	r3, [r7, #12]
 8002484:	e019      	b.n	80024ba <pdu_read_holding_registers+0xba>
 8002486:	88ba      	ldrh	r2, [r7, #4]
 8002488:	68fb      	ldr	r3, [r7, #12]
 800248a:	441a      	add	r2, r3
 800248c:	4b12      	ldr	r3, [pc, #72]	; (80024d8 <pdu_read_holding_registers+0xd8>)
 800248e:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 8002492:	803b      	strh	r3, [r7, #0]
 8002494:	68bb      	ldr	r3, [r7, #8]
 8002496:	1c5a      	adds	r2, r3, #1
 8002498:	60ba      	str	r2, [r7, #8]
 800249a:	883a      	ldrh	r2, [r7, #0]
 800249c:	0a12      	lsrs	r2, r2, #8
 800249e:	b292      	uxth	r2, r2
 80024a0:	b2d1      	uxtb	r1, r2
 80024a2:	4a0c      	ldr	r2, [pc, #48]	; (80024d4 <pdu_read_holding_registers+0xd4>)
 80024a4:	54d1      	strb	r1, [r2, r3]
 80024a6:	68bb      	ldr	r3, [r7, #8]
 80024a8:	1c5a      	adds	r2, r3, #1
 80024aa:	60ba      	str	r2, [r7, #8]
 80024ac:	883a      	ldrh	r2, [r7, #0]
 80024ae:	b2d1      	uxtb	r1, r2
 80024b0:	4a08      	ldr	r2, [pc, #32]	; (80024d4 <pdu_read_holding_registers+0xd4>)
 80024b2:	54d1      	strb	r1, [r2, r3]
 80024b4:	68fb      	ldr	r3, [r7, #12]
 80024b6:	3301      	adds	r3, #1
 80024b8:	60fb      	str	r3, [r7, #12]
 80024ba:	887a      	ldrh	r2, [r7, #2]
 80024bc:	68fb      	ldr	r3, [r7, #12]
 80024be:	429a      	cmp	r2, r3
 80024c0:	dce1      	bgt.n	8002486 <pdu_read_holding_registers+0x86>
 80024c2:	68bb      	ldr	r3, [r7, #8]
 80024c4:	4618      	mov	r0, r3
 80024c6:	3714      	adds	r7, #20
 80024c8:	46bd      	mov	sp, r7
 80024ca:	f85d 7b04 	ldr.w	r7, [sp], #4
 80024ce:	4770      	bx	lr
 80024d0:	200013b0 	.word	0x200013b0
 80024d4:	200014b8 	.word	0x200014b8
 80024d8:	2000139c 	.word	0x2000139c

080024dc <pdu_read_write_multiply_registers>:
 80024dc:	b480      	push	{r7}
 80024de:	b087      	sub	sp, #28
 80024e0:	af00      	add	r7, sp, #0
 80024e2:	4b5b      	ldr	r3, [pc, #364]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 80024e4:	785b      	ldrb	r3, [r3, #1]
 80024e6:	73fb      	strb	r3, [r7, #15]
 80024e8:	4b59      	ldr	r3, [pc, #356]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 80024ea:	789b      	ldrb	r3, [r3, #2]
 80024ec:	021b      	lsls	r3, r3, #8
 80024ee:	b29a      	uxth	r2, r3
 80024f0:	4b57      	ldr	r3, [pc, #348]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 80024f2:	78db      	ldrb	r3, [r3, #3]
 80024f4:	4313      	orrs	r3, r2
 80024f6:	b29b      	uxth	r3, r3
 80024f8:	81bb      	strh	r3, [r7, #12]
 80024fa:	4b55      	ldr	r3, [pc, #340]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 80024fc:	791b      	ldrb	r3, [r3, #4]
 80024fe:	021b      	lsls	r3, r3, #8
 8002500:	b29a      	uxth	r2, r3
 8002502:	4b53      	ldr	r3, [pc, #332]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 8002504:	795b      	ldrb	r3, [r3, #5]
 8002506:	4313      	orrs	r3, r2
 8002508:	b29b      	uxth	r3, r3
 800250a:	817b      	strh	r3, [r7, #10]
 800250c:	4b50      	ldr	r3, [pc, #320]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 800250e:	799b      	ldrb	r3, [r3, #6]
 8002510:	021b      	lsls	r3, r3, #8
 8002512:	b29a      	uxth	r2, r3
 8002514:	4b4e      	ldr	r3, [pc, #312]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 8002516:	79db      	ldrb	r3, [r3, #7]
 8002518:	4313      	orrs	r3, r2
 800251a:	b29b      	uxth	r3, r3
 800251c:	813b      	strh	r3, [r7, #8]
 800251e:	4b4c      	ldr	r3, [pc, #304]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 8002520:	7a1b      	ldrb	r3, [r3, #8]
 8002522:	021b      	lsls	r3, r3, #8
 8002524:	b29a      	uxth	r2, r3
 8002526:	4b4a      	ldr	r3, [pc, #296]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 8002528:	7a5b      	ldrb	r3, [r3, #9]
 800252a:	4313      	orrs	r3, r2
 800252c:	b29b      	uxth	r3, r3
 800252e:	80fb      	strh	r3, [r7, #6]
 8002530:	4b47      	ldr	r3, [pc, #284]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 8002532:	7a9b      	ldrb	r3, [r3, #10]
 8002534:	717b      	strb	r3, [r7, #5]
 8002536:	89ba      	ldrh	r2, [r7, #12]
 8002538:	897b      	ldrh	r3, [r7, #10]
 800253a:	4413      	add	r3, r2
 800253c:	2b08      	cmp	r3, #8
 800253e:	dd12      	ble.n	8002566 <pdu_read_write_multiply_registers+0x8a>
 8002540:	2301      	movs	r3, #1
 8002542:	613b      	str	r3, [r7, #16]
 8002544:	693b      	ldr	r3, [r7, #16]
 8002546:	1c5a      	adds	r2, r3, #1
 8002548:	613a      	str	r2, [r7, #16]
 800254a:	7bfa      	ldrb	r2, [r7, #15]
 800254c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002550:	b2d1      	uxtb	r1, r2
 8002552:	4a40      	ldr	r2, [pc, #256]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 8002554:	54d1      	strb	r1, [r2, r3]
 8002556:	693b      	ldr	r3, [r7, #16]
 8002558:	1c5a      	adds	r2, r3, #1
 800255a:	613a      	str	r2, [r7, #16]
 800255c:	4a3d      	ldr	r2, [pc, #244]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 800255e:	2102      	movs	r1, #2
 8002560:	54d1      	strb	r1, [r2, r3]
 8002562:	693b      	ldr	r3, [r7, #16]
 8002564:	e06d      	b.n	8002642 <pdu_read_write_multiply_registers+0x166>
 8002566:	893a      	ldrh	r2, [r7, #8]
 8002568:	88fb      	ldrh	r3, [r7, #6]
 800256a:	4413      	add	r3, r2
 800256c:	2b08      	cmp	r3, #8
 800256e:	dd12      	ble.n	8002596 <pdu_read_write_multiply_registers+0xba>
 8002570:	2301      	movs	r3, #1
 8002572:	613b      	str	r3, [r7, #16]
 8002574:	693b      	ldr	r3, [r7, #16]
 8002576:	1c5a      	adds	r2, r3, #1
 8002578:	613a      	str	r2, [r7, #16]
 800257a:	7bfa      	ldrb	r2, [r7, #15]
 800257c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002580:	b2d1      	uxtb	r1, r2
 8002582:	4a34      	ldr	r2, [pc, #208]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 8002584:	54d1      	strb	r1, [r2, r3]
 8002586:	693b      	ldr	r3, [r7, #16]
 8002588:	1c5a      	adds	r2, r3, #1
 800258a:	613a      	str	r2, [r7, #16]
 800258c:	4a31      	ldr	r2, [pc, #196]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 800258e:	2102      	movs	r1, #2
 8002590:	54d1      	strb	r1, [r2, r3]
 8002592:	693b      	ldr	r3, [r7, #16]
 8002594:	e055      	b.n	8002642 <pdu_read_write_multiply_registers+0x166>
 8002596:	230b      	movs	r3, #11
 8002598:	613b      	str	r3, [r7, #16]
 800259a:	2300      	movs	r3, #0
 800259c:	617b      	str	r3, [r7, #20]
 800259e:	e019      	b.n	80025d4 <pdu_read_write_multiply_registers+0xf8>
 80025a0:	693b      	ldr	r3, [r7, #16]
 80025a2:	1c5a      	adds	r2, r3, #1
 80025a4:	613a      	str	r2, [r7, #16]
 80025a6:	4a2a      	ldr	r2, [pc, #168]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 80025a8:	5cd3      	ldrb	r3, [r2, r3]
 80025aa:	021b      	lsls	r3, r3, #8
 80025ac:	807b      	strh	r3, [r7, #2]
 80025ae:	693b      	ldr	r3, [r7, #16]
 80025b0:	1c5a      	adds	r2, r3, #1
 80025b2:	613a      	str	r2, [r7, #16]
 80025b4:	4a26      	ldr	r2, [pc, #152]	; (8002650 <pdu_read_write_multiply_registers+0x174>)
 80025b6:	5cd3      	ldrb	r3, [r2, r3]
 80025b8:	461a      	mov	r2, r3
 80025ba:	887b      	ldrh	r3, [r7, #2]
 80025bc:	4313      	orrs	r3, r2
 80025be:	807b      	strh	r3, [r7, #2]
 80025c0:	893a      	ldrh	r2, [r7, #8]
 80025c2:	697b      	ldr	r3, [r7, #20]
 80025c4:	441a      	add	r2, r3
 80025c6:	4b24      	ldr	r3, [pc, #144]	; (8002658 <pdu_read_write_multiply_registers+0x17c>)
 80025c8:	8879      	ldrh	r1, [r7, #2]
 80025ca:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 80025ce:	697b      	ldr	r3, [r7, #20]
 80025d0:	3301      	adds	r3, #1
 80025d2:	617b      	str	r3, [r7, #20]
 80025d4:	88fa      	ldrh	r2, [r7, #6]
 80025d6:	697b      	ldr	r3, [r7, #20]
 80025d8:	429a      	cmp	r2, r3
 80025da:	dce1      	bgt.n	80025a0 <pdu_read_write_multiply_registers+0xc4>
 80025dc:	2301      	movs	r3, #1
 80025de:	613b      	str	r3, [r7, #16]
 80025e0:	693b      	ldr	r3, [r7, #16]
 80025e2:	1c5a      	adds	r2, r3, #1
 80025e4:	613a      	str	r2, [r7, #16]
 80025e6:	4a1b      	ldr	r2, [pc, #108]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 80025e8:	7bf9      	ldrb	r1, [r7, #15]
 80025ea:	54d1      	strb	r1, [r2, r3]
 80025ec:	693b      	ldr	r3, [r7, #16]
 80025ee:	1c5a      	adds	r2, r3, #1
 80025f0:	613a      	str	r2, [r7, #16]
 80025f2:	897a      	ldrh	r2, [r7, #10]
 80025f4:	b2d2      	uxtb	r2, r2
 80025f6:	0052      	lsls	r2, r2, #1
 80025f8:	b2d1      	uxtb	r1, r2
 80025fa:	4a16      	ldr	r2, [pc, #88]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 80025fc:	54d1      	strb	r1, [r2, r3]
 80025fe:	2300      	movs	r3, #0
 8002600:	617b      	str	r3, [r7, #20]
 8002602:	e019      	b.n	8002638 <pdu_read_write_multiply_registers+0x15c>
 8002604:	89ba      	ldrh	r2, [r7, #12]
 8002606:	697b      	ldr	r3, [r7, #20]
 8002608:	441a      	add	r2, r3
 800260a:	4b13      	ldr	r3, [pc, #76]	; (8002658 <pdu_read_write_multiply_registers+0x17c>)
 800260c:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 8002610:	803b      	strh	r3, [r7, #0]
 8002612:	693b      	ldr	r3, [r7, #16]
 8002614:	1c5a      	adds	r2, r3, #1
 8002616:	613a      	str	r2, [r7, #16]
 8002618:	883a      	ldrh	r2, [r7, #0]
 800261a:	0a12      	lsrs	r2, r2, #8
 800261c:	b292      	uxth	r2, r2
 800261e:	b2d1      	uxtb	r1, r2
 8002620:	4a0c      	ldr	r2, [pc, #48]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 8002622:	54d1      	strb	r1, [r2, r3]
 8002624:	693b      	ldr	r3, [r7, #16]
 8002626:	1c5a      	adds	r2, r3, #1
 8002628:	613a      	str	r2, [r7, #16]
 800262a:	883a      	ldrh	r2, [r7, #0]
 800262c:	b2d1      	uxtb	r1, r2
 800262e:	4a09      	ldr	r2, [pc, #36]	; (8002654 <pdu_read_write_multiply_registers+0x178>)
 8002630:	54d1      	strb	r1, [r2, r3]
 8002632:	697b      	ldr	r3, [r7, #20]
 8002634:	3301      	adds	r3, #1
 8002636:	617b      	str	r3, [r7, #20]
 8002638:	897a      	ldrh	r2, [r7, #10]
 800263a:	697b      	ldr	r3, [r7, #20]
 800263c:	429a      	cmp	r2, r3
 800263e:	dce1      	bgt.n	8002604 <pdu_read_write_multiply_registers+0x128>
 8002640:	693b      	ldr	r3, [r7, #16]
 8002642:	4618      	mov	r0, r3
 8002644:	371c      	adds	r7, #28
 8002646:	46bd      	mov	sp, r7
 8002648:	f85d 7b04 	ldr.w	r7, [sp], #4
 800264c:	4770      	bx	lr
 800264e:	bf00      	nop
 8002650:	200013b0 	.word	0x200013b0
 8002654:	200014b8 	.word	0x200014b8
 8002658:	2000139c 	.word	0x2000139c

0800265c <pdu_illegal_function_error>:
 800265c:	b480      	push	{r7}
 800265e:	b083      	sub	sp, #12
 8002660:	af00      	add	r7, sp, #0
 8002662:	4b0d      	ldr	r3, [pc, #52]	; (8002698 <pdu_illegal_function_error+0x3c>)
 8002664:	785b      	ldrb	r3, [r3, #1]
 8002666:	71fb      	strb	r3, [r7, #7]
 8002668:	2301      	movs	r3, #1
 800266a:	603b      	str	r3, [r7, #0]
 800266c:	683b      	ldr	r3, [r7, #0]
 800266e:	1c5a      	adds	r2, r3, #1
 8002670:	603a      	str	r2, [r7, #0]
 8002672:	79fa      	ldrb	r2, [r7, #7]
 8002674:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002678:	b2d1      	uxtb	r1, r2
 800267a:	4a08      	ldr	r2, [pc, #32]	; (800269c <pdu_illegal_function_error+0x40>)
 800267c:	54d1      	strb	r1, [r2, r3]
 800267e:	683b      	ldr	r3, [r7, #0]
 8002680:	1c5a      	adds	r2, r3, #1
 8002682:	603a      	str	r2, [r7, #0]
 8002684:	4a05      	ldr	r2, [pc, #20]	; (800269c <pdu_illegal_function_error+0x40>)
 8002686:	2101      	movs	r1, #1
 8002688:	54d1      	strb	r1, [r2, r3]
 800268a:	683b      	ldr	r3, [r7, #0]
 800268c:	4618      	mov	r0, r3
 800268e:	370c      	adds	r7, #12
 8002690:	46bd      	mov	sp, r7
 8002692:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002696:	4770      	bx	lr
 8002698:	200013b0 	.word	0x200013b0
 800269c:	200014b8 	.word	0x200014b8

080026a0 <proc_ADU>:
 80026a0:	b580      	push	{r7, lr}
 80026a2:	b082      	sub	sp, #8
 80026a4:	af00      	add	r7, sp, #0
 80026a6:	4b23      	ldr	r3, [pc, #140]	; (8002734 <proc_ADU+0x94>)
 80026a8:	681b      	ldr	r3, [r3, #0]
 80026aa:	4823      	ldr	r0, [pc, #140]	; (8002738 <proc_ADU+0x98>)
 80026ac:	4619      	mov	r1, r3
 80026ae:	f000 f84b 	bl	8002748 <crc16>
 80026b2:	4603      	mov	r3, r0
 80026b4:	80fb      	strh	r3, [r7, #6]
 80026b6:	88fb      	ldrh	r3, [r7, #6]
 80026b8:	2b00      	cmp	r3, #0
 80026ba:	d003      	beq.n	80026c4 <proc_ADU+0x24>
 80026bc:	4b1f      	ldr	r3, [pc, #124]	; (800273c <proc_ADU+0x9c>)
 80026be:	2201      	movs	r2, #1
 80026c0:	601a      	str	r2, [r3, #0]
 80026c2:	e033      	b.n	800272c <proc_ADU+0x8c>
 80026c4:	4b1c      	ldr	r3, [pc, #112]	; (8002738 <proc_ADU+0x98>)
 80026c6:	781b      	ldrb	r3, [r3, #0]
 80026c8:	717b      	strb	r3, [r7, #5]
 80026ca:	4b1b      	ldr	r3, [pc, #108]	; (8002738 <proc_ADU+0x98>)
 80026cc:	785b      	ldrb	r3, [r3, #1]
 80026ce:	713b      	strb	r3, [r7, #4]
 80026d0:	797b      	ldrb	r3, [r7, #5]
 80026d2:	2b00      	cmp	r3, #0
 80026d4:	d105      	bne.n	80026e2 <proc_ADU+0x42>
 80026d6:	793a      	ldrb	r2, [r7, #4]
 80026d8:	4b19      	ldr	r3, [pc, #100]	; (8002740 <proc_ADU+0xa0>)
 80026da:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80026de:	4798      	blx	r3
 80026e0:	e024      	b.n	800272c <proc_ADU+0x8c>
 80026e2:	797b      	ldrb	r3, [r7, #5]
 80026e4:	2b11      	cmp	r3, #17
 80026e6:	d121      	bne.n	800272c <proc_ADU+0x8c>
 80026e8:	4b16      	ldr	r3, [pc, #88]	; (8002744 <proc_ADU+0xa4>)
 80026ea:	2211      	movs	r2, #17
 80026ec:	701a      	strb	r2, [r3, #0]
 80026ee:	793a      	ldrb	r2, [r7, #4]
 80026f0:	4b13      	ldr	r3, [pc, #76]	; (8002740 <proc_ADU+0xa0>)
 80026f2:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80026f6:	4798      	blx	r3
 80026f8:	6038      	str	r0, [r7, #0]
 80026fa:	4812      	ldr	r0, [pc, #72]	; (8002744 <proc_ADU+0xa4>)
 80026fc:	6839      	ldr	r1, [r7, #0]
 80026fe:	f000 f823 	bl	8002748 <crc16>
 8002702:	4603      	mov	r3, r0
 8002704:	80fb      	strh	r3, [r7, #6]
 8002706:	683b      	ldr	r3, [r7, #0]
 8002708:	1c5a      	adds	r2, r3, #1
 800270a:	603a      	str	r2, [r7, #0]
 800270c:	88fa      	ldrh	r2, [r7, #6]
 800270e:	b2d1      	uxtb	r1, r2
 8002710:	4a0c      	ldr	r2, [pc, #48]	; (8002744 <proc_ADU+0xa4>)
 8002712:	54d1      	strb	r1, [r2, r3]
 8002714:	683b      	ldr	r3, [r7, #0]
 8002716:	1c5a      	adds	r2, r3, #1
 8002718:	603a      	str	r2, [r7, #0]
 800271a:	88fa      	ldrh	r2, [r7, #6]
 800271c:	0a12      	lsrs	r2, r2, #8
 800271e:	b292      	uxth	r2, r2
 8002720:	b2d1      	uxtb	r1, r2
 8002722:	4a08      	ldr	r2, [pc, #32]	; (8002744 <proc_ADU+0xa4>)
 8002724:	54d1      	strb	r1, [r2, r3]
 8002726:	6838      	ldr	r0, [r7, #0]
 8002728:	f7ff f8e4 	bl	80018f4 <start_trans>
 800272c:	3708      	adds	r7, #8
 800272e:	46bd      	mov	sp, r7
 8002730:	bd80      	pop	{r7, pc}
 8002732:	bf00      	nop
 8002734:	200014b0 	.word	0x200014b0
 8002738:	200013b0 	.word	0x200013b0
 800273c:	200013ac 	.word	0x200013ac
 8002740:	0800a794 	.word	0x0800a794
 8002744:	200014b8 	.word	0x200014b8

08002748 <crc16>:
 8002748:	b480      	push	{r7}
 800274a:	b087      	sub	sp, #28
 800274c:	af00      	add	r7, sp, #0
 800274e:	6078      	str	r0, [r7, #4]
 8002750:	6039      	str	r1, [r7, #0]
 8002752:	23ff      	movs	r3, #255	; 0xff
 8002754:	75fb      	strb	r3, [r7, #23]
 8002756:	23ff      	movs	r3, #255	; 0xff
 8002758:	75bb      	strb	r3, [r7, #22]
 800275a:	2300      	movs	r3, #0
 800275c:	613b      	str	r3, [r7, #16]
 800275e:	e016      	b.n	800278e <crc16+0x46>
 8002760:	693b      	ldr	r3, [r7, #16]
 8002762:	687a      	ldr	r2, [r7, #4]
 8002764:	4413      	add	r3, r2
 8002766:	781a      	ldrb	r2, [r3, #0]
 8002768:	7dfb      	ldrb	r3, [r7, #23]
 800276a:	4053      	eors	r3, r2
 800276c:	b2db      	uxtb	r3, r3
 800276e:	60fb      	str	r3, [r7, #12]
 8002770:	4a10      	ldr	r2, [pc, #64]	; (80027b4 <crc16+0x6c>)
 8002772:	68fb      	ldr	r3, [r7, #12]
 8002774:	4413      	add	r3, r2
 8002776:	781a      	ldrb	r2, [r3, #0]
 8002778:	7dbb      	ldrb	r3, [r7, #22]
 800277a:	4053      	eors	r3, r2
 800277c:	75fb      	strb	r3, [r7, #23]
 800277e:	4a0e      	ldr	r2, [pc, #56]	; (80027b8 <crc16+0x70>)
 8002780:	68fb      	ldr	r3, [r7, #12]
 8002782:	4413      	add	r3, r2
 8002784:	781b      	ldrb	r3, [r3, #0]
 8002786:	75bb      	strb	r3, [r7, #22]
 8002788:	693b      	ldr	r3, [r7, #16]
 800278a:	3301      	adds	r3, #1
 800278c:	613b      	str	r3, [r7, #16]
 800278e:	693a      	ldr	r2, [r7, #16]
 8002790:	683b      	ldr	r3, [r7, #0]
 8002792:	429a      	cmp	r2, r3
 8002794:	dbe4      	blt.n	8002760 <crc16+0x18>
 8002796:	7dbb      	ldrb	r3, [r7, #22]
 8002798:	021b      	lsls	r3, r3, #8
 800279a:	b29a      	uxth	r2, r3
 800279c:	7dfb      	ldrb	r3, [r7, #23]
 800279e:	b29b      	uxth	r3, r3
 80027a0:	4313      	orrs	r3, r2
 80027a2:	b29b      	uxth	r3, r3
 80027a4:	b29b      	uxth	r3, r3
 80027a6:	4618      	mov	r0, r3
 80027a8:	371c      	adds	r7, #28
 80027aa:	46bd      	mov	sp, r7
 80027ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027b0:	4770      	bx	lr
 80027b2:	bf00      	nop
 80027b4:	20000018 	.word	0x20000018
 80027b8:	20000118 	.word	0x20000118

080027bc <NVIC_EnableIRQ>:
 80027bc:	b480      	push	{r7}
 80027be:	b083      	sub	sp, #12
 80027c0:	af00      	add	r7, sp, #0
 80027c2:	4603      	mov	r3, r0
 80027c4:	71fb      	strb	r3, [r7, #7]
 80027c6:	4b08      	ldr	r3, [pc, #32]	; (80027e8 <NVIC_EnableIRQ+0x2c>)
 80027c8:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80027cc:	0952      	lsrs	r2, r2, #5
 80027ce:	79f9      	ldrb	r1, [r7, #7]
 80027d0:	f001 011f 	and.w	r1, r1, #31
 80027d4:	2001      	movs	r0, #1
 80027d6:	fa00 f101 	lsl.w	r1, r0, r1
 80027da:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80027de:	370c      	adds	r7, #12
 80027e0:	46bd      	mov	sp, r7
 80027e2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027e6:	4770      	bx	lr
 80027e8:	e000e100 	.word	0xe000e100

080027ec <init_spi_dma>:
 80027ec:	b580      	push	{r7, lr}
 80027ee:	af00      	add	r7, sp, #0
 80027f0:	4b33      	ldr	r3, [pc, #204]	; (80028c0 <init_spi_dma+0xd4>)
 80027f2:	4a33      	ldr	r2, [pc, #204]	; (80028c0 <init_spi_dma+0xd4>)
 80027f4:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80027f6:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 80027fa:	631a      	str	r2, [r3, #48]	; 0x30
 80027fc:	4b31      	ldr	r3, [pc, #196]	; (80028c4 <init_spi_dma+0xd8>)
 80027fe:	4a32      	ldr	r2, [pc, #200]	; (80028c8 <init_spi_dma+0xdc>)
 8002800:	609a      	str	r2, [r3, #8]
 8002802:	4b30      	ldr	r3, [pc, #192]	; (80028c4 <init_spi_dma+0xd8>)
 8002804:	4a31      	ldr	r2, [pc, #196]	; (80028cc <init_spi_dma+0xe0>)
 8002806:	60da      	str	r2, [r3, #12]
 8002808:	4b2e      	ldr	r3, [pc, #184]	; (80028c4 <init_spi_dma+0xd8>)
 800280a:	2208      	movs	r2, #8
 800280c:	605a      	str	r2, [r3, #4]
 800280e:	4b2d      	ldr	r3, [pc, #180]	; (80028c4 <init_spi_dma+0xd8>)
 8002810:	4a2c      	ldr	r2, [pc, #176]	; (80028c4 <init_spi_dma+0xd8>)
 8002812:	6812      	ldr	r2, [r2, #0]
 8002814:	f022 6260 	bic.w	r2, r2, #234881024	; 0xe000000
 8002818:	601a      	str	r2, [r3, #0]
 800281a:	4b2a      	ldr	r3, [pc, #168]	; (80028c4 <init_spi_dma+0xd8>)
 800281c:	4a29      	ldr	r2, [pc, #164]	; (80028c4 <init_spi_dma+0xd8>)
 800281e:	6812      	ldr	r2, [r2, #0]
 8002820:	f022 0220 	bic.w	r2, r2, #32
 8002824:	601a      	str	r2, [r3, #0]
 8002826:	4b27      	ldr	r3, [pc, #156]	; (80028c4 <init_spi_dma+0xd8>)
 8002828:	4a26      	ldr	r2, [pc, #152]	; (80028c4 <init_spi_dma+0xd8>)
 800282a:	6812      	ldr	r2, [r2, #0]
 800282c:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8002830:	601a      	str	r2, [r3, #0]
 8002832:	4b24      	ldr	r3, [pc, #144]	; (80028c4 <init_spi_dma+0xd8>)
 8002834:	4a23      	ldr	r2, [pc, #140]	; (80028c4 <init_spi_dma+0xd8>)
 8002836:	6812      	ldr	r2, [r2, #0]
 8002838:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 800283c:	601a      	str	r2, [r3, #0]
 800283e:	4b21      	ldr	r3, [pc, #132]	; (80028c4 <init_spi_dma+0xd8>)
 8002840:	4a20      	ldr	r2, [pc, #128]	; (80028c4 <init_spi_dma+0xd8>)
 8002842:	6812      	ldr	r2, [r2, #0]
 8002844:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002848:	601a      	str	r2, [r3, #0]
 800284a:	4b1e      	ldr	r3, [pc, #120]	; (80028c4 <init_spi_dma+0xd8>)
 800284c:	4a1d      	ldr	r2, [pc, #116]	; (80028c4 <init_spi_dma+0xd8>)
 800284e:	6812      	ldr	r2, [r2, #0]
 8002850:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002854:	601a      	str	r2, [r3, #0]
 8002856:	4b1b      	ldr	r3, [pc, #108]	; (80028c4 <init_spi_dma+0xd8>)
 8002858:	4a1a      	ldr	r2, [pc, #104]	; (80028c4 <init_spi_dma+0xd8>)
 800285a:	6812      	ldr	r2, [r2, #0]
 800285c:	f022 72c0 	bic.w	r2, r2, #25165824	; 0x1800000
 8002860:	601a      	str	r2, [r3, #0]
 8002862:	4b18      	ldr	r3, [pc, #96]	; (80028c4 <init_spi_dma+0xd8>)
 8002864:	4a17      	ldr	r2, [pc, #92]	; (80028c4 <init_spi_dma+0xd8>)
 8002866:	6812      	ldr	r2, [r2, #0]
 8002868:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 800286c:	601a      	str	r2, [r3, #0]
 800286e:	4b15      	ldr	r3, [pc, #84]	; (80028c4 <init_spi_dma+0xd8>)
 8002870:	4a14      	ldr	r2, [pc, #80]	; (80028c4 <init_spi_dma+0xd8>)
 8002872:	6812      	ldr	r2, [r2, #0]
 8002874:	f422 42c0 	bic.w	r2, r2, #24576	; 0x6000
 8002878:	601a      	str	r2, [r3, #0]
 800287a:	4b12      	ldr	r3, [pc, #72]	; (80028c4 <init_spi_dma+0xd8>)
 800287c:	4a11      	ldr	r2, [pc, #68]	; (80028c4 <init_spi_dma+0xd8>)
 800287e:	6812      	ldr	r2, [r2, #0]
 8002880:	f422 52c0 	bic.w	r2, r2, #6144	; 0x1800
 8002884:	601a      	str	r2, [r3, #0]
 8002886:	4b0f      	ldr	r3, [pc, #60]	; (80028c4 <init_spi_dma+0xd8>)
 8002888:	4a0e      	ldr	r2, [pc, #56]	; (80028c4 <init_spi_dma+0xd8>)
 800288a:	6812      	ldr	r2, [r2, #0]
 800288c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002890:	601a      	str	r2, [r3, #0]
 8002892:	4b0c      	ldr	r3, [pc, #48]	; (80028c4 <init_spi_dma+0xd8>)
 8002894:	4a0b      	ldr	r2, [pc, #44]	; (80028c4 <init_spi_dma+0xd8>)
 8002896:	6812      	ldr	r2, [r2, #0]
 8002898:	f042 0210 	orr.w	r2, r2, #16
 800289c:	601a      	str	r2, [r3, #0]
 800289e:	200f      	movs	r0, #15
 80028a0:	f7ff ff8c 	bl	80027bc <NVIC_EnableIRQ>
 80028a4:	4b0a      	ldr	r3, [pc, #40]	; (80028d0 <init_spi_dma+0xe4>)
 80028a6:	4a0a      	ldr	r2, [pc, #40]	; (80028d0 <init_spi_dma+0xe4>)
 80028a8:	68d2      	ldr	r2, [r2, #12]
 80028aa:	f042 0220 	orr.w	r2, r2, #32
 80028ae:	60da      	str	r2, [r3, #12]
 80028b0:	4b04      	ldr	r3, [pc, #16]	; (80028c4 <init_spi_dma+0xd8>)
 80028b2:	4a04      	ldr	r2, [pc, #16]	; (80028c4 <init_spi_dma+0xd8>)
 80028b4:	6812      	ldr	r2, [r2, #0]
 80028b6:	f042 0201 	orr.w	r2, r2, #1
 80028ba:	601a      	str	r2, [r3, #0]
 80028bc:	bd80      	pop	{r7, pc}
 80028be:	bf00      	nop
 80028c0:	40023800 	.word	0x40023800
 80028c4:	40026070 	.word	0x40026070
 80028c8:	4000380c 	.word	0x4000380c
 80028cc:	200015c0 	.word	0x200015c0
 80028d0:	40026000 	.word	0x40026000

080028d4 <coll_pwm_set>:
 80028d4:	b480      	push	{r7}
 80028d6:	b083      	sub	sp, #12
 80028d8:	af00      	add	r7, sp, #0
 80028da:	4603      	mov	r3, r0
 80028dc:	80fb      	strh	r3, [r7, #6]
 80028de:	88fb      	ldrh	r3, [r7, #6]
 80028e0:	2bc8      	cmp	r3, #200	; 0xc8
 80028e2:	d902      	bls.n	80028ea <coll_pwm_set+0x16>
 80028e4:	23c8      	movs	r3, #200	; 0xc8
 80028e6:	80fb      	strh	r3, [r7, #6]
 80028e8:	bf00      	nop
 80028ea:	4b04      	ldr	r3, [pc, #16]	; (80028fc <coll_pwm_set+0x28>)
 80028ec:	88fa      	ldrh	r2, [r7, #6]
 80028ee:	641a      	str	r2, [r3, #64]	; 0x40
 80028f0:	370c      	adds	r7, #12
 80028f2:	46bd      	mov	sp, r7
 80028f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80028f8:	4770      	bx	lr
 80028fa:	bf00      	nop
 80028fc:	40000400 	.word	0x40000400

08002900 <ind_pwm_init>:
 8002900:	b580      	push	{r7, lr}
 8002902:	af00      	add	r7, sp, #0
 8002904:	4b45      	ldr	r3, [pc, #276]	; (8002a1c <ind_pwm_init+0x11c>)
 8002906:	4a45      	ldr	r2, [pc, #276]	; (8002a1c <ind_pwm_init+0x11c>)
 8002908:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800290a:	f042 0202 	orr.w	r2, r2, #2
 800290e:	641a      	str	r2, [r3, #64]	; 0x40
 8002910:	4b43      	ldr	r3, [pc, #268]	; (8002a20 <ind_pwm_init+0x120>)
 8002912:	f240 12a3 	movw	r2, #419	; 0x1a3
 8002916:	851a      	strh	r2, [r3, #40]	; 0x28
 8002918:	4b41      	ldr	r3, [pc, #260]	; (8002a20 <ind_pwm_init+0x120>)
 800291a:	22c7      	movs	r2, #199	; 0xc7
 800291c:	62da      	str	r2, [r3, #44]	; 0x2c
 800291e:	4b40      	ldr	r3, [pc, #256]	; (8002a20 <ind_pwm_init+0x120>)
 8002920:	22b4      	movs	r2, #180	; 0xb4
 8002922:	63da      	str	r2, [r3, #60]	; 0x3c
 8002924:	4b3e      	ldr	r3, [pc, #248]	; (8002a20 <ind_pwm_init+0x120>)
 8002926:	22c8      	movs	r2, #200	; 0xc8
 8002928:	641a      	str	r2, [r3, #64]	; 0x40
 800292a:	4b3d      	ldr	r3, [pc, #244]	; (8002a20 <ind_pwm_init+0x120>)
 800292c:	4a3c      	ldr	r2, [pc, #240]	; (8002a20 <ind_pwm_init+0x120>)
 800292e:	8992      	ldrh	r2, [r2, #12]
 8002930:	b292      	uxth	r2, r2
 8002932:	f042 0201 	orr.w	r2, r2, #1
 8002936:	b292      	uxth	r2, r2
 8002938:	819a      	strh	r2, [r3, #12]
 800293a:	201d      	movs	r0, #29
 800293c:	f7ff ff3e 	bl	80027bc <NVIC_EnableIRQ>
 8002940:	4b37      	ldr	r3, [pc, #220]	; (8002a20 <ind_pwm_init+0x120>)
 8002942:	2200      	movs	r2, #0
 8002944:	839a      	strh	r2, [r3, #28]
 8002946:	4b36      	ldr	r3, [pc, #216]	; (8002a20 <ind_pwm_init+0x120>)
 8002948:	4a35      	ldr	r2, [pc, #212]	; (8002a20 <ind_pwm_init+0x120>)
 800294a:	8b92      	ldrh	r2, [r2, #28]
 800294c:	b292      	uxth	r2, r2
 800294e:	f042 0268 	orr.w	r2, r2, #104	; 0x68
 8002952:	b292      	uxth	r2, r2
 8002954:	839a      	strh	r2, [r3, #28]
 8002956:	4b32      	ldr	r3, [pc, #200]	; (8002a20 <ind_pwm_init+0x120>)
 8002958:	4a31      	ldr	r2, [pc, #196]	; (8002a20 <ind_pwm_init+0x120>)
 800295a:	8c12      	ldrh	r2, [r2, #32]
 800295c:	b292      	uxth	r2, r2
 800295e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002962:	b292      	uxth	r2, r2
 8002964:	841a      	strh	r2, [r3, #32]
 8002966:	4b2e      	ldr	r3, [pc, #184]	; (8002a20 <ind_pwm_init+0x120>)
 8002968:	4a2d      	ldr	r2, [pc, #180]	; (8002a20 <ind_pwm_init+0x120>)
 800296a:	8b92      	ldrh	r2, [r2, #28]
 800296c:	b292      	uxth	r2, r2
 800296e:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 8002972:	b292      	uxth	r2, r2
 8002974:	839a      	strh	r2, [r3, #28]
 8002976:	4b2a      	ldr	r3, [pc, #168]	; (8002a20 <ind_pwm_init+0x120>)
 8002978:	4a29      	ldr	r2, [pc, #164]	; (8002a20 <ind_pwm_init+0x120>)
 800297a:	8c12      	ldrh	r2, [r2, #32]
 800297c:	b292      	uxth	r2, r2
 800297e:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8002982:	b292      	uxth	r2, r2
 8002984:	841a      	strh	r2, [r3, #32]
 8002986:	4b26      	ldr	r3, [pc, #152]	; (8002a20 <ind_pwm_init+0x120>)
 8002988:	4a25      	ldr	r2, [pc, #148]	; (8002a20 <ind_pwm_init+0x120>)
 800298a:	8812      	ldrh	r2, [r2, #0]
 800298c:	b292      	uxth	r2, r2
 800298e:	f042 0201 	orr.w	r2, r2, #1
 8002992:	b292      	uxth	r2, r2
 8002994:	801a      	strh	r2, [r3, #0]
 8002996:	4b21      	ldr	r3, [pc, #132]	; (8002a1c <ind_pwm_init+0x11c>)
 8002998:	4a20      	ldr	r2, [pc, #128]	; (8002a1c <ind_pwm_init+0x11c>)
 800299a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800299c:	f042 0202 	orr.w	r2, r2, #2
 80029a0:	631a      	str	r2, [r3, #48]	; 0x30
 80029a2:	4b20      	ldr	r3, [pc, #128]	; (8002a24 <ind_pwm_init+0x124>)
 80029a4:	4a1f      	ldr	r2, [pc, #124]	; (8002a24 <ind_pwm_init+0x124>)
 80029a6:	6812      	ldr	r2, [r2, #0]
 80029a8:	f022 0203 	bic.w	r2, r2, #3
 80029ac:	601a      	str	r2, [r3, #0]
 80029ae:	4b1d      	ldr	r3, [pc, #116]	; (8002a24 <ind_pwm_init+0x124>)
 80029b0:	4a1c      	ldr	r2, [pc, #112]	; (8002a24 <ind_pwm_init+0x124>)
 80029b2:	6812      	ldr	r2, [r2, #0]
 80029b4:	f042 0202 	orr.w	r2, r2, #2
 80029b8:	601a      	str	r2, [r3, #0]
 80029ba:	4b1a      	ldr	r3, [pc, #104]	; (8002a24 <ind_pwm_init+0x124>)
 80029bc:	4a19      	ldr	r2, [pc, #100]	; (8002a24 <ind_pwm_init+0x124>)
 80029be:	6892      	ldr	r2, [r2, #8]
 80029c0:	f042 0203 	orr.w	r2, r2, #3
 80029c4:	609a      	str	r2, [r3, #8]
 80029c6:	4b17      	ldr	r3, [pc, #92]	; (8002a24 <ind_pwm_init+0x124>)
 80029c8:	4a16      	ldr	r2, [pc, #88]	; (8002a24 <ind_pwm_init+0x124>)
 80029ca:	6a12      	ldr	r2, [r2, #32]
 80029cc:	f022 020f 	bic.w	r2, r2, #15
 80029d0:	621a      	str	r2, [r3, #32]
 80029d2:	4b14      	ldr	r3, [pc, #80]	; (8002a24 <ind_pwm_init+0x124>)
 80029d4:	4a13      	ldr	r2, [pc, #76]	; (8002a24 <ind_pwm_init+0x124>)
 80029d6:	6a12      	ldr	r2, [r2, #32]
 80029d8:	f042 0202 	orr.w	r2, r2, #2
 80029dc:	621a      	str	r2, [r3, #32]
 80029de:	4b11      	ldr	r3, [pc, #68]	; (8002a24 <ind_pwm_init+0x124>)
 80029e0:	4a10      	ldr	r2, [pc, #64]	; (8002a24 <ind_pwm_init+0x124>)
 80029e2:	6812      	ldr	r2, [r2, #0]
 80029e4:	f022 020c 	bic.w	r2, r2, #12
 80029e8:	601a      	str	r2, [r3, #0]
 80029ea:	4b0e      	ldr	r3, [pc, #56]	; (8002a24 <ind_pwm_init+0x124>)
 80029ec:	4a0d      	ldr	r2, [pc, #52]	; (8002a24 <ind_pwm_init+0x124>)
 80029ee:	6812      	ldr	r2, [r2, #0]
 80029f0:	f042 0208 	orr.w	r2, r2, #8
 80029f4:	601a      	str	r2, [r3, #0]
 80029f6:	4b0b      	ldr	r3, [pc, #44]	; (8002a24 <ind_pwm_init+0x124>)
 80029f8:	4a0a      	ldr	r2, [pc, #40]	; (8002a24 <ind_pwm_init+0x124>)
 80029fa:	6892      	ldr	r2, [r2, #8]
 80029fc:	f042 020c 	orr.w	r2, r2, #12
 8002a00:	609a      	str	r2, [r3, #8]
 8002a02:	4b08      	ldr	r3, [pc, #32]	; (8002a24 <ind_pwm_init+0x124>)
 8002a04:	4a07      	ldr	r2, [pc, #28]	; (8002a24 <ind_pwm_init+0x124>)
 8002a06:	6a12      	ldr	r2, [r2, #32]
 8002a08:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8002a0c:	621a      	str	r2, [r3, #32]
 8002a0e:	4b05      	ldr	r3, [pc, #20]	; (8002a24 <ind_pwm_init+0x124>)
 8002a10:	4a04      	ldr	r2, [pc, #16]	; (8002a24 <ind_pwm_init+0x124>)
 8002a12:	6a12      	ldr	r2, [r2, #32]
 8002a14:	f042 0220 	orr.w	r2, r2, #32
 8002a18:	621a      	str	r2, [r3, #32]
 8002a1a:	bd80      	pop	{r7, pc}
 8002a1c:	40023800 	.word	0x40023800
 8002a20:	40000400 	.word	0x40000400
 8002a24:	40020400 	.word	0x40020400

08002a28 <spi_master_init>:
 8002a28:	b580      	push	{r7, lr}
 8002a2a:	af00      	add	r7, sp, #0
 8002a2c:	4b57      	ldr	r3, [pc, #348]	; (8002b8c <spi_master_init+0x164>)
 8002a2e:	4a57      	ldr	r2, [pc, #348]	; (8002b8c <spi_master_init+0x164>)
 8002a30:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8002a32:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8002a36:	641a      	str	r2, [r3, #64]	; 0x40
 8002a38:	4b54      	ldr	r3, [pc, #336]	; (8002b8c <spi_master_init+0x164>)
 8002a3a:	4a54      	ldr	r2, [pc, #336]	; (8002b8c <spi_master_init+0x164>)
 8002a3c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002a3e:	f042 0202 	orr.w	r2, r2, #2
 8002a42:	631a      	str	r2, [r3, #48]	; 0x30
 8002a44:	4a52      	ldr	r2, [pc, #328]	; (8002b90 <spi_master_init+0x168>)
 8002a46:	4b52      	ldr	r3, [pc, #328]	; (8002b90 <spi_master_init+0x168>)
 8002a48:	681b      	ldr	r3, [r3, #0]
 8002a4a:	f023 4343 	bic.w	r3, r3, #3271557120	; 0xc3000000
 8002a4e:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8002a52:	6013      	str	r3, [r2, #0]
 8002a54:	4a4e      	ldr	r2, [pc, #312]	; (8002b90 <spi_master_init+0x168>)
 8002a56:	4b4e      	ldr	r3, [pc, #312]	; (8002b90 <spi_master_init+0x168>)
 8002a58:	681b      	ldr	r3, [r3, #0]
 8002a5a:	f043 4302 	orr.w	r3, r3, #2181038080	; 0x82000000
 8002a5e:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8002a62:	6013      	str	r3, [r2, #0]
 8002a64:	4a4a      	ldr	r2, [pc, #296]	; (8002b90 <spi_master_init+0x168>)
 8002a66:	4b4a      	ldr	r3, [pc, #296]	; (8002b90 <spi_master_init+0x168>)
 8002a68:	689b      	ldr	r3, [r3, #8]
 8002a6a:	f043 4343 	orr.w	r3, r3, #3271557120	; 0xc3000000
 8002a6e:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8002a72:	6093      	str	r3, [r2, #8]
 8002a74:	4b46      	ldr	r3, [pc, #280]	; (8002b90 <spi_master_init+0x168>)
 8002a76:	4a46      	ldr	r2, [pc, #280]	; (8002b90 <spi_master_init+0x168>)
 8002a78:	6812      	ldr	r2, [r2, #0]
 8002a7a:	f022 7240 	bic.w	r2, r2, #50331648	; 0x3000000
 8002a7e:	601a      	str	r2, [r3, #0]
 8002a80:	4b43      	ldr	r3, [pc, #268]	; (8002b90 <spi_master_init+0x168>)
 8002a82:	4a43      	ldr	r2, [pc, #268]	; (8002b90 <spi_master_init+0x168>)
 8002a84:	6812      	ldr	r2, [r2, #0]
 8002a86:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002a8a:	601a      	str	r2, [r3, #0]
 8002a8c:	4b40      	ldr	r3, [pc, #256]	; (8002b90 <spi_master_init+0x168>)
 8002a8e:	4a40      	ldr	r2, [pc, #256]	; (8002b90 <spi_master_init+0x168>)
 8002a90:	6952      	ldr	r2, [r2, #20]
 8002a92:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8002a96:	615a      	str	r2, [r3, #20]
 8002a98:	4b3d      	ldr	r3, [pc, #244]	; (8002b90 <spi_master_init+0x168>)
 8002a9a:	4a3d      	ldr	r2, [pc, #244]	; (8002b90 <spi_master_init+0x168>)
 8002a9c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002a9e:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8002aa2:	625a      	str	r2, [r3, #36]	; 0x24
 8002aa4:	4b3a      	ldr	r3, [pc, #232]	; (8002b90 <spi_master_init+0x168>)
 8002aa6:	4a3a      	ldr	r2, [pc, #232]	; (8002b90 <spi_master_init+0x168>)
 8002aa8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002aaa:	f442 62a0 	orr.w	r2, r2, #1280	; 0x500
 8002aae:	625a      	str	r2, [r3, #36]	; 0x24
 8002ab0:	4b37      	ldr	r3, [pc, #220]	; (8002b90 <spi_master_init+0x168>)
 8002ab2:	4a37      	ldr	r2, [pc, #220]	; (8002b90 <spi_master_init+0x168>)
 8002ab4:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002ab6:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 8002aba:	625a      	str	r2, [r3, #36]	; 0x24
 8002abc:	4b34      	ldr	r3, [pc, #208]	; (8002b90 <spi_master_init+0x168>)
 8002abe:	4a34      	ldr	r2, [pc, #208]	; (8002b90 <spi_master_init+0x168>)
 8002ac0:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002ac2:	f042 42a0 	orr.w	r2, r2, #1342177280	; 0x50000000
 8002ac6:	625a      	str	r2, [r3, #36]	; 0x24
 8002ac8:	4b31      	ldr	r3, [pc, #196]	; (8002b90 <spi_master_init+0x168>)
 8002aca:	4a31      	ldr	r2, [pc, #196]	; (8002b90 <spi_master_init+0x168>)
 8002acc:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002ace:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8002ad2:	625a      	str	r2, [r3, #36]	; 0x24
 8002ad4:	4b2e      	ldr	r3, [pc, #184]	; (8002b90 <spi_master_init+0x168>)
 8002ad6:	4a2e      	ldr	r2, [pc, #184]	; (8002b90 <spi_master_init+0x168>)
 8002ad8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002ada:	f442 22a0 	orr.w	r2, r2, #327680	; 0x50000
 8002ade:	625a      	str	r2, [r3, #36]	; 0x24
 8002ae0:	4b2c      	ldr	r3, [pc, #176]	; (8002b94 <spi_master_init+0x16c>)
 8002ae2:	4a2c      	ldr	r2, [pc, #176]	; (8002b94 <spi_master_init+0x16c>)
 8002ae4:	8812      	ldrh	r2, [r2, #0]
 8002ae6:	b292      	uxth	r2, r2
 8002ae8:	f022 0238 	bic.w	r2, r2, #56	; 0x38
 8002aec:	b292      	uxth	r2, r2
 8002aee:	801a      	strh	r2, [r3, #0]
 8002af0:	4b28      	ldr	r3, [pc, #160]	; (8002b94 <spi_master_init+0x16c>)
 8002af2:	4a28      	ldr	r2, [pc, #160]	; (8002b94 <spi_master_init+0x16c>)
 8002af4:	8812      	ldrh	r2, [r2, #0]
 8002af6:	b292      	uxth	r2, r2
 8002af8:	f042 0220 	orr.w	r2, r2, #32
 8002afc:	b292      	uxth	r2, r2
 8002afe:	801a      	strh	r2, [r3, #0]
 8002b00:	4b24      	ldr	r3, [pc, #144]	; (8002b94 <spi_master_init+0x16c>)
 8002b02:	4a24      	ldr	r2, [pc, #144]	; (8002b94 <spi_master_init+0x16c>)
 8002b04:	8812      	ldrh	r2, [r2, #0]
 8002b06:	b292      	uxth	r2, r2
 8002b08:	f022 0203 	bic.w	r2, r2, #3
 8002b0c:	b292      	uxth	r2, r2
 8002b0e:	801a      	strh	r2, [r3, #0]
 8002b10:	4b20      	ldr	r3, [pc, #128]	; (8002b94 <spi_master_init+0x16c>)
 8002b12:	4a20      	ldr	r2, [pc, #128]	; (8002b94 <spi_master_init+0x16c>)
 8002b14:	8812      	ldrh	r2, [r2, #0]
 8002b16:	b292      	uxth	r2, r2
 8002b18:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002b1c:	b292      	uxth	r2, r2
 8002b1e:	801a      	strh	r2, [r3, #0]
 8002b20:	4b1c      	ldr	r3, [pc, #112]	; (8002b94 <spi_master_init+0x16c>)
 8002b22:	4a1c      	ldr	r2, [pc, #112]	; (8002b94 <spi_master_init+0x16c>)
 8002b24:	8812      	ldrh	r2, [r2, #0]
 8002b26:	b292      	uxth	r2, r2
 8002b28:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002b2c:	b292      	uxth	r2, r2
 8002b2e:	801a      	strh	r2, [r3, #0]
 8002b30:	4b18      	ldr	r3, [pc, #96]	; (8002b94 <spi_master_init+0x16c>)
 8002b32:	4a18      	ldr	r2, [pc, #96]	; (8002b94 <spi_master_init+0x16c>)
 8002b34:	8812      	ldrh	r2, [r2, #0]
 8002b36:	b292      	uxth	r2, r2
 8002b38:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002b3c:	b292      	uxth	r2, r2
 8002b3e:	801a      	strh	r2, [r3, #0]
 8002b40:	4b14      	ldr	r3, [pc, #80]	; (8002b94 <spi_master_init+0x16c>)
 8002b42:	4a14      	ldr	r2, [pc, #80]	; (8002b94 <spi_master_init+0x16c>)
 8002b44:	8892      	ldrh	r2, [r2, #4]
 8002b46:	b292      	uxth	r2, r2
 8002b48:	f042 0204 	orr.w	r2, r2, #4
 8002b4c:	b292      	uxth	r2, r2
 8002b4e:	809a      	strh	r2, [r3, #4]
 8002b50:	4b10      	ldr	r3, [pc, #64]	; (8002b94 <spi_master_init+0x16c>)
 8002b52:	4a10      	ldr	r2, [pc, #64]	; (8002b94 <spi_master_init+0x16c>)
 8002b54:	8812      	ldrh	r2, [r2, #0]
 8002b56:	b292      	uxth	r2, r2
 8002b58:	f042 0204 	orr.w	r2, r2, #4
 8002b5c:	b292      	uxth	r2, r2
 8002b5e:	801a      	strh	r2, [r3, #0]
 8002b60:	f7ff fe44 	bl	80027ec <init_spi_dma>
 8002b64:	4b0b      	ldr	r3, [pc, #44]	; (8002b94 <spi_master_init+0x16c>)
 8002b66:	4a0b      	ldr	r2, [pc, #44]	; (8002b94 <spi_master_init+0x16c>)
 8002b68:	8892      	ldrh	r2, [r2, #4]
 8002b6a:	b292      	uxth	r2, r2
 8002b6c:	f042 0202 	orr.w	r2, r2, #2
 8002b70:	b292      	uxth	r2, r2
 8002b72:	809a      	strh	r2, [r3, #4]
 8002b74:	4b07      	ldr	r3, [pc, #28]	; (8002b94 <spi_master_init+0x16c>)
 8002b76:	4a07      	ldr	r2, [pc, #28]	; (8002b94 <spi_master_init+0x16c>)
 8002b78:	8812      	ldrh	r2, [r2, #0]
 8002b7a:	b292      	uxth	r2, r2
 8002b7c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002b80:	b292      	uxth	r2, r2
 8002b82:	801a      	strh	r2, [r3, #0]
 8002b84:	f7ff febc 	bl	8002900 <ind_pwm_init>
 8002b88:	bd80      	pop	{r7, pc}
 8002b8a:	bf00      	nop
 8002b8c:	40023800 	.word	0x40023800
 8002b90:	40020400 	.word	0x40020400
 8002b94:	40003800 	.word	0x40003800

08002b98 <spi_slave_init>:
 8002b98:	b580      	push	{r7, lr}
 8002b9a:	af00      	add	r7, sp, #0
 8002b9c:	4b21      	ldr	r3, [pc, #132]	; (8002c24 <spi_slave_init+0x8c>)
 8002b9e:	4a21      	ldr	r2, [pc, #132]	; (8002c24 <spi_slave_init+0x8c>)
 8002ba0:	8812      	ldrh	r2, [r2, #0]
 8002ba2:	b292      	uxth	r2, r2
 8002ba4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002ba8:	b292      	uxth	r2, r2
 8002baa:	801a      	strh	r2, [r3, #0]
 8002bac:	4b1d      	ldr	r3, [pc, #116]	; (8002c24 <spi_slave_init+0x8c>)
 8002bae:	4a1d      	ldr	r2, [pc, #116]	; (8002c24 <spi_slave_init+0x8c>)
 8002bb0:	8812      	ldrh	r2, [r2, #0]
 8002bb2:	b292      	uxth	r2, r2
 8002bb4:	f022 0203 	bic.w	r2, r2, #3
 8002bb8:	b292      	uxth	r2, r2
 8002bba:	801a      	strh	r2, [r3, #0]
 8002bbc:	4b19      	ldr	r3, [pc, #100]	; (8002c24 <spi_slave_init+0x8c>)
 8002bbe:	4a19      	ldr	r2, [pc, #100]	; (8002c24 <spi_slave_init+0x8c>)
 8002bc0:	8812      	ldrh	r2, [r2, #0]
 8002bc2:	b292      	uxth	r2, r2
 8002bc4:	f042 0201 	orr.w	r2, r2, #1
 8002bc8:	b292      	uxth	r2, r2
 8002bca:	801a      	strh	r2, [r3, #0]
 8002bcc:	4b15      	ldr	r3, [pc, #84]	; (8002c24 <spi_slave_init+0x8c>)
 8002bce:	4a15      	ldr	r2, [pc, #84]	; (8002c24 <spi_slave_init+0x8c>)
 8002bd0:	8812      	ldrh	r2, [r2, #0]
 8002bd2:	b292      	uxth	r2, r2
 8002bd4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002bd8:	b292      	uxth	r2, r2
 8002bda:	801a      	strh	r2, [r3, #0]
 8002bdc:	4b11      	ldr	r3, [pc, #68]	; (8002c24 <spi_slave_init+0x8c>)
 8002bde:	4a11      	ldr	r2, [pc, #68]	; (8002c24 <spi_slave_init+0x8c>)
 8002be0:	8812      	ldrh	r2, [r2, #0]
 8002be2:	b292      	uxth	r2, r2
 8002be4:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002be8:	b292      	uxth	r2, r2
 8002bea:	801a      	strh	r2, [r3, #0]
 8002bec:	4b0d      	ldr	r3, [pc, #52]	; (8002c24 <spi_slave_init+0x8c>)
 8002bee:	4a0d      	ldr	r2, [pc, #52]	; (8002c24 <spi_slave_init+0x8c>)
 8002bf0:	8892      	ldrh	r2, [r2, #4]
 8002bf2:	b292      	uxth	r2, r2
 8002bf4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002bf8:	b292      	uxth	r2, r2
 8002bfa:	809a      	strh	r2, [r3, #4]
 8002bfc:	4b09      	ldr	r3, [pc, #36]	; (8002c24 <spi_slave_init+0x8c>)
 8002bfe:	4a09      	ldr	r2, [pc, #36]	; (8002c24 <spi_slave_init+0x8c>)
 8002c00:	8812      	ldrh	r2, [r2, #0]
 8002c02:	b292      	uxth	r2, r2
 8002c04:	f022 0204 	bic.w	r2, r2, #4
 8002c08:	b292      	uxth	r2, r2
 8002c0a:	801a      	strh	r2, [r3, #0]
 8002c0c:	2023      	movs	r0, #35	; 0x23
 8002c0e:	f7ff fdd5 	bl	80027bc <NVIC_EnableIRQ>
 8002c12:	4b04      	ldr	r3, [pc, #16]	; (8002c24 <spi_slave_init+0x8c>)
 8002c14:	4a03      	ldr	r2, [pc, #12]	; (8002c24 <spi_slave_init+0x8c>)
 8002c16:	8812      	ldrh	r2, [r2, #0]
 8002c18:	b292      	uxth	r2, r2
 8002c1a:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002c1e:	b292      	uxth	r2, r2
 8002c20:	801a      	strh	r2, [r3, #0]
 8002c22:	bd80      	pop	{r7, pc}
 8002c24:	40013000 	.word	0x40013000

08002c28 <spi_write_read>:
 8002c28:	b480      	push	{r7}
 8002c2a:	b087      	sub	sp, #28
 8002c2c:	af00      	add	r7, sp, #0
 8002c2e:	60f8      	str	r0, [r7, #12]
 8002c30:	60b9      	str	r1, [r7, #8]
 8002c32:	4613      	mov	r3, r2
 8002c34:	80fb      	strh	r3, [r7, #6]
 8002c36:	2300      	movs	r3, #0
 8002c38:	617b      	str	r3, [r7, #20]
 8002c3a:	4a2a      	ldr	r2, [pc, #168]	; (8002ce4 <spi_write_read+0xbc>)
 8002c3c:	697b      	ldr	r3, [r7, #20]
 8002c3e:	1c59      	adds	r1, r3, #1
 8002c40:	6179      	str	r1, [r7, #20]
 8002c42:	68f9      	ldr	r1, [r7, #12]
 8002c44:	440b      	add	r3, r1
 8002c46:	781b      	ldrb	r3, [r3, #0]
 8002c48:	8193      	strh	r3, [r2, #12]
 8002c4a:	e021      	b.n	8002c90 <spi_write_read+0x68>
 8002c4c:	bf00      	nop
 8002c4e:	4b25      	ldr	r3, [pc, #148]	; (8002ce4 <spi_write_read+0xbc>)
 8002c50:	891b      	ldrh	r3, [r3, #8]
 8002c52:	b29b      	uxth	r3, r3
 8002c54:	f003 0302 	and.w	r3, r3, #2
 8002c58:	2b00      	cmp	r3, #0
 8002c5a:	d0f8      	beq.n	8002c4e <spi_write_read+0x26>
 8002c5c:	4b21      	ldr	r3, [pc, #132]	; (8002ce4 <spi_write_read+0xbc>)
 8002c5e:	697a      	ldr	r2, [r7, #20]
 8002c60:	68f9      	ldr	r1, [r7, #12]
 8002c62:	440a      	add	r2, r1
 8002c64:	7812      	ldrb	r2, [r2, #0]
 8002c66:	819a      	strh	r2, [r3, #12]
 8002c68:	bf00      	nop
 8002c6a:	4b1e      	ldr	r3, [pc, #120]	; (8002ce4 <spi_write_read+0xbc>)
 8002c6c:	891b      	ldrh	r3, [r3, #8]
 8002c6e:	b29b      	uxth	r3, r3
 8002c70:	f003 0301 	and.w	r3, r3, #1
 8002c74:	2b00      	cmp	r3, #0
 8002c76:	d0f8      	beq.n	8002c6a <spi_write_read+0x42>
 8002c78:	697b      	ldr	r3, [r7, #20]
 8002c7a:	3b01      	subs	r3, #1
 8002c7c:	68ba      	ldr	r2, [r7, #8]
 8002c7e:	4413      	add	r3, r2
 8002c80:	4a18      	ldr	r2, [pc, #96]	; (8002ce4 <spi_write_read+0xbc>)
 8002c82:	8992      	ldrh	r2, [r2, #12]
 8002c84:	b292      	uxth	r2, r2
 8002c86:	b2d2      	uxtb	r2, r2
 8002c88:	701a      	strb	r2, [r3, #0]
 8002c8a:	697b      	ldr	r3, [r7, #20]
 8002c8c:	3301      	adds	r3, #1
 8002c8e:	617b      	str	r3, [r7, #20]
 8002c90:	88fa      	ldrh	r2, [r7, #6]
 8002c92:	697b      	ldr	r3, [r7, #20]
 8002c94:	429a      	cmp	r2, r3
 8002c96:	dcd9      	bgt.n	8002c4c <spi_write_read+0x24>
 8002c98:	bf00      	nop
 8002c9a:	4b12      	ldr	r3, [pc, #72]	; (8002ce4 <spi_write_read+0xbc>)
 8002c9c:	891b      	ldrh	r3, [r3, #8]
 8002c9e:	b29b      	uxth	r3, r3
 8002ca0:	f003 0301 	and.w	r3, r3, #1
 8002ca4:	2b00      	cmp	r3, #0
 8002ca6:	d0f8      	beq.n	8002c9a <spi_write_read+0x72>
 8002ca8:	88fb      	ldrh	r3, [r7, #6]
 8002caa:	3b01      	subs	r3, #1
 8002cac:	68ba      	ldr	r2, [r7, #8]
 8002cae:	4413      	add	r3, r2
 8002cb0:	4a0c      	ldr	r2, [pc, #48]	; (8002ce4 <spi_write_read+0xbc>)
 8002cb2:	8992      	ldrh	r2, [r2, #12]
 8002cb4:	b292      	uxth	r2, r2
 8002cb6:	b2d2      	uxtb	r2, r2
 8002cb8:	701a      	strb	r2, [r3, #0]
 8002cba:	bf00      	nop
 8002cbc:	4b09      	ldr	r3, [pc, #36]	; (8002ce4 <spi_write_read+0xbc>)
 8002cbe:	891b      	ldrh	r3, [r3, #8]
 8002cc0:	b29b      	uxth	r3, r3
 8002cc2:	f003 0302 	and.w	r3, r3, #2
 8002cc6:	2b00      	cmp	r3, #0
 8002cc8:	d0f8      	beq.n	8002cbc <spi_write_read+0x94>
 8002cca:	bf00      	nop
 8002ccc:	4b05      	ldr	r3, [pc, #20]	; (8002ce4 <spi_write_read+0xbc>)
 8002cce:	891b      	ldrh	r3, [r3, #8]
 8002cd0:	b29b      	uxth	r3, r3
 8002cd2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002cd6:	2b00      	cmp	r3, #0
 8002cd8:	d1f8      	bne.n	8002ccc <spi_write_read+0xa4>
 8002cda:	371c      	adds	r7, #28
 8002cdc:	46bd      	mov	sp, r7
 8002cde:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ce2:	4770      	bx	lr
 8002ce4:	40003800 	.word	0x40003800

08002ce8 <SPI1_IRQHandler>:
 8002ce8:	b480      	push	{r7}
 8002cea:	af00      	add	r7, sp, #0
 8002cec:	4b0a      	ldr	r3, [pc, #40]	; (8002d18 <SPI1_IRQHandler+0x30>)
 8002cee:	891b      	ldrh	r3, [r3, #8]
 8002cf0:	b29b      	uxth	r3, r3
 8002cf2:	f003 0301 	and.w	r3, r3, #1
 8002cf6:	2b00      	cmp	r3, #0
 8002cf8:	d008      	beq.n	8002d0c <SPI1_IRQHandler+0x24>
 8002cfa:	4b08      	ldr	r3, [pc, #32]	; (8002d1c <SPI1_IRQHandler+0x34>)
 8002cfc:	2201      	movs	r2, #1
 8002cfe:	601a      	str	r2, [r3, #0]
 8002d00:	4b05      	ldr	r3, [pc, #20]	; (8002d18 <SPI1_IRQHandler+0x30>)
 8002d02:	899b      	ldrh	r3, [r3, #12]
 8002d04:	b29b      	uxth	r3, r3
 8002d06:	b2da      	uxtb	r2, r3
 8002d08:	4b05      	ldr	r3, [pc, #20]	; (8002d20 <SPI1_IRQHandler+0x38>)
 8002d0a:	701a      	strb	r2, [r3, #0]
 8002d0c:	4b02      	ldr	r3, [pc, #8]	; (8002d18 <SPI1_IRQHandler+0x30>)
 8002d0e:	891b      	ldrh	r3, [r3, #8]
 8002d10:	46bd      	mov	sp, r7
 8002d12:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d16:	4770      	bx	lr
 8002d18:	40013000 	.word	0x40013000
 8002d1c:	200015c8 	.word	0x200015c8
 8002d20:	200015cc 	.word	0x200015cc

08002d24 <check_current>:
 8002d24:	b480      	push	{r7}
 8002d26:	af00      	add	r7, sp, #0
 8002d28:	4b0e      	ldr	r3, [pc, #56]	; (8002d64 <check_current+0x40>)
 8002d2a:	681b      	ldr	r3, [r3, #0]
 8002d2c:	129b      	asrs	r3, r3, #10
 8002d2e:	4a0e      	ldr	r2, [pc, #56]	; (8002d68 <check_current+0x44>)
 8002d30:	fb02 f203 	mul.w	r2, r2, r3
 8002d34:	4b0d      	ldr	r3, [pc, #52]	; (8002d6c <check_current+0x48>)
 8002d36:	4413      	add	r3, r2
 8002d38:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
 8002d3c:	139a      	asrs	r2, r3, #14
 8002d3e:	4b0c      	ldr	r3, [pc, #48]	; (8002d70 <check_current+0x4c>)
 8002d40:	601a      	str	r2, [r3, #0]
 8002d42:	4b0b      	ldr	r3, [pc, #44]	; (8002d70 <check_current+0x4c>)
 8002d44:	681b      	ldr	r3, [r3, #0]
 8002d46:	2b00      	cmp	r3, #0
 8002d48:	da02      	bge.n	8002d50 <check_current+0x2c>
 8002d4a:	4b09      	ldr	r3, [pc, #36]	; (8002d70 <check_current+0x4c>)
 8002d4c:	2200      	movs	r2, #0
 8002d4e:	601a      	str	r2, [r3, #0]
 8002d50:	4b07      	ldr	r3, [pc, #28]	; (8002d70 <check_current+0x4c>)
 8002d52:	681b      	ldr	r3, [r3, #0]
 8002d54:	b29a      	uxth	r2, r3
 8002d56:	4b07      	ldr	r3, [pc, #28]	; (8002d74 <check_current+0x50>)
 8002d58:	819a      	strh	r2, [r3, #12]
 8002d5a:	46bd      	mov	sp, r7
 8002d5c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d60:	4770      	bx	lr
 8002d62:	bf00      	nop
 8002d64:	200025dc 	.word	0x200025dc
 8002d68:	0001d7c4 	.word	0x0001d7c4
 8002d6c:	0003f74d 	.word	0x0003f74d
 8002d70:	20000b70 	.word	0x20000b70
 8002d74:	2000139c 	.word	0x2000139c

08002d78 <set_refcurrent>:
 8002d78:	b490      	push	{r4, r7}
 8002d7a:	b084      	sub	sp, #16
 8002d7c:	af00      	add	r7, sp, #0
 8002d7e:	6078      	str	r0, [r7, #4]
 8002d80:	4b1e      	ldr	r3, [pc, #120]	; (8002dfc <set_refcurrent+0x84>)
 8002d82:	681b      	ldr	r3, [r3, #0]
 8002d84:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002d88:	0c9b      	lsrs	r3, r3, #18
 8002d8a:	1d5a      	adds	r2, r3, #5
 8002d8c:	4b1c      	ldr	r3, [pc, #112]	; (8002e00 <set_refcurrent+0x88>)
 8002d8e:	fba3 1302 	umull	r1, r3, r3, r2
 8002d92:	08dc      	lsrs	r4, r3, #3
 8002d94:	f240 2356 	movw	r3, #598	; 0x256
 8002d98:	429c      	cmp	r4, r3
 8002d9a:	d902      	bls.n	8002da2 <set_refcurrent+0x2a>
 8002d9c:	f240 2457 	movw	r4, #599	; 0x257
 8002da0:	bf00      	nop
 8002da2:	4b18      	ldr	r3, [pc, #96]	; (8002e04 <set_refcurrent+0x8c>)
 8002da4:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002da8:	4b17      	ldr	r3, [pc, #92]	; (8002e08 <set_refcurrent+0x90>)
 8002daa:	681b      	ldr	r3, [r3, #0]
 8002dac:	f1c3 0396 	rsb	r3, r3, #150	; 0x96
 8002db0:	fb04 f203 	mul.w	r2, r4, r3
 8002db4:	4b15      	ldr	r3, [pc, #84]	; (8002e0c <set_refcurrent+0x94>)
 8002db6:	fba3 1302 	umull	r1, r3, r3, r2
 8002dba:	08dc      	lsrs	r4, r3, #3
 8002dbc:	687b      	ldr	r3, [r7, #4]
 8002dbe:	42a3      	cmp	r3, r4
 8002dc0:	d904      	bls.n	8002dcc <set_refcurrent+0x54>
 8002dc2:	607c      	str	r4, [r7, #4]
 8002dc4:	687b      	ldr	r3, [r7, #4]
 8002dc6:	2b00      	cmp	r3, #0
 8002dc8:	d000      	beq.n	8002dcc <set_refcurrent+0x54>
 8002dca:	bf00      	nop
 8002dcc:	4b10      	ldr	r3, [pc, #64]	; (8002e10 <set_refcurrent+0x98>)
 8002dce:	601c      	str	r4, [r3, #0]
 8002dd0:	4b10      	ldr	r3, [pc, #64]	; (8002e14 <set_refcurrent+0x9c>)
 8002dd2:	687a      	ldr	r2, [r7, #4]
 8002dd4:	fb02 f203 	mul.w	r2, r2, r3
 8002dd8:	4b0f      	ldr	r3, [pc, #60]	; (8002e18 <set_refcurrent+0xa0>)
 8002dda:	4413      	add	r3, r2
 8002ddc:	60fb      	str	r3, [r7, #12]
 8002dde:	68fb      	ldr	r3, [r7, #12]
 8002de0:	2b00      	cmp	r3, #0
 8002de2:	dd04      	ble.n	8002dee <set_refcurrent+0x76>
 8002de4:	68fb      	ldr	r3, [r7, #12]
 8002de6:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 8002dea:	151b      	asrs	r3, r3, #20
 8002dec:	e000      	b.n	8002df0 <set_refcurrent+0x78>
 8002dee:	2300      	movs	r3, #0
 8002df0:	4a0a      	ldr	r2, [pc, #40]	; (8002e1c <set_refcurrent+0xa4>)
 8002df2:	6013      	str	r3, [r2, #0]
 8002df4:	3710      	adds	r7, #16
 8002df6:	46bd      	mov	sp, r7
 8002df8:	bc90      	pop	{r4, r7}
 8002dfa:	4770      	bx	lr
 8002dfc:	20000b6c 	.word	0x20000b6c
 8002e00:	cccccccd 	.word	0xcccccccd
 8002e04:	0800ac3c 	.word	0x0800ac3c
 8002e08:	200035f8 	.word	0x200035f8
 8002e0c:	10624dd3 	.word	0x10624dd3
 8002e10:	20000b68 	.word	0x20000b68
 8002e14:	00022baa 	.word	0x00022baa
 8002e18:	ffdd90e7 	.word	0xffdd90e7
 8002e1c:	200035e4 	.word	0x200035e4

08002e20 <check_voltage>:
 8002e20:	b480      	push	{r7}
 8002e22:	af00      	add	r7, sp, #0
 8002e24:	4b0c      	ldr	r3, [pc, #48]	; (8002e58 <check_voltage+0x38>)
 8002e26:	681b      	ldr	r3, [r3, #0]
 8002e28:	0a9b      	lsrs	r3, r3, #10
 8002e2a:	4a0c      	ldr	r2, [pc, #48]	; (8002e5c <check_voltage+0x3c>)
 8002e2c:	fb02 f203 	mul.w	r2, r2, r3
 8002e30:	4b0b      	ldr	r3, [pc, #44]	; (8002e60 <check_voltage+0x40>)
 8002e32:	441a      	add	r2, r3
 8002e34:	4b0b      	ldr	r3, [pc, #44]	; (8002e64 <check_voltage+0x44>)
 8002e36:	681b      	ldr	r3, [r3, #0]
 8002e38:	3b02      	subs	r3, #2
 8002e3a:	40da      	lsrs	r2, r3
 8002e3c:	4b0a      	ldr	r3, [pc, #40]	; (8002e68 <check_voltage+0x48>)
 8002e3e:	601a      	str	r2, [r3, #0]
 8002e40:	4b09      	ldr	r3, [pc, #36]	; (8002e68 <check_voltage+0x48>)
 8002e42:	681b      	ldr	r3, [r3, #0]
 8002e44:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002e48:	0c9b      	lsrs	r3, r3, #18
 8002e4a:	b29a      	uxth	r2, r3
 8002e4c:	4b07      	ldr	r3, [pc, #28]	; (8002e6c <check_voltage+0x4c>)
 8002e4e:	815a      	strh	r2, [r3, #10]
 8002e50:	46bd      	mov	sp, r7
 8002e52:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e56:	4770      	bx	lr
 8002e58:	200015d4 	.word	0x200015d4
 8002e5c:	000537f0 	.word	0x000537f0
 8002e60:	0007d396 	.word	0x0007d396
 8002e64:	2000360c 	.word	0x2000360c
 8002e68:	20000b6c 	.word	0x20000b6c
 8002e6c:	2000139c 	.word	0x2000139c

08002e70 <update_mode>:
 8002e70:	b580      	push	{r7, lr}
 8002e72:	b082      	sub	sp, #8
 8002e74:	af00      	add	r7, sp, #0
 8002e76:	f44f 03f0 	mov.w	r3, #7864320	; 0x780000
 8002e7a:	607b      	str	r3, [r7, #4]
 8002e7c:	f44f 03a0 	mov.w	r3, #5242880	; 0x500000
 8002e80:	603b      	str	r3, [r7, #0]
 8002e82:	4b34      	ldr	r3, [pc, #208]	; (8002f54 <update_mode+0xe4>)
 8002e84:	681b      	ldr	r3, [r3, #0]
 8002e86:	2b00      	cmp	r3, #0
 8002e88:	d009      	beq.n	8002e9e <update_mode+0x2e>
 8002e8a:	4b33      	ldr	r3, [pc, #204]	; (8002f58 <update_mode+0xe8>)
 8002e8c:	4a32      	ldr	r2, [pc, #200]	; (8002f58 <update_mode+0xe8>)
 8002e8e:	6952      	ldr	r2, [r2, #20]
 8002e90:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002e94:	615a      	str	r2, [r3, #20]
 8002e96:	4b31      	ldr	r3, [pc, #196]	; (8002f5c <update_mode+0xec>)
 8002e98:	2200      	movs	r2, #0
 8002e9a:	601a      	str	r2, [r3, #0]
 8002e9c:	e057      	b.n	8002f4e <update_mode+0xde>
 8002e9e:	4b30      	ldr	r3, [pc, #192]	; (8002f60 <update_mode+0xf0>)
 8002ea0:	681a      	ldr	r2, [r3, #0]
 8002ea2:	683b      	ldr	r3, [r7, #0]
 8002ea4:	429a      	cmp	r2, r3
 8002ea6:	d209      	bcs.n	8002ebc <update_mode+0x4c>
 8002ea8:	4b2b      	ldr	r3, [pc, #172]	; (8002f58 <update_mode+0xe8>)
 8002eaa:	4a2b      	ldr	r2, [pc, #172]	; (8002f58 <update_mode+0xe8>)
 8002eac:	6952      	ldr	r2, [r2, #20]
 8002eae:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002eb2:	615a      	str	r2, [r3, #20]
 8002eb4:	4b29      	ldr	r3, [pc, #164]	; (8002f5c <update_mode+0xec>)
 8002eb6:	2200      	movs	r2, #0
 8002eb8:	601a      	str	r2, [r3, #0]
 8002eba:	e03e      	b.n	8002f3a <update_mode+0xca>
 8002ebc:	4b28      	ldr	r3, [pc, #160]	; (8002f60 <update_mode+0xf0>)
 8002ebe:	681a      	ldr	r2, [r3, #0]
 8002ec0:	687b      	ldr	r3, [r7, #4]
 8002ec2:	429a      	cmp	r2, r3
 8002ec4:	d939      	bls.n	8002f3a <update_mode+0xca>
 8002ec6:	4b24      	ldr	r3, [pc, #144]	; (8002f58 <update_mode+0xe8>)
 8002ec8:	4a23      	ldr	r2, [pc, #140]	; (8002f58 <update_mode+0xe8>)
 8002eca:	6952      	ldr	r2, [r2, #20]
 8002ecc:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8002ed0:	615a      	str	r2, [r3, #20]
 8002ed2:	4b24      	ldr	r3, [pc, #144]	; (8002f64 <update_mode+0xf4>)
 8002ed4:	889b      	ldrh	r3, [r3, #4]
 8002ed6:	2b01      	cmp	r3, #1
 8002ed8:	d013      	beq.n	8002f02 <update_mode+0x92>
 8002eda:	2b01      	cmp	r3, #1
 8002edc:	dc02      	bgt.n	8002ee4 <update_mode+0x74>
 8002ede:	2b00      	cmp	r3, #0
 8002ee0:	d005      	beq.n	8002eee <update_mode+0x7e>
 8002ee2:	e02a      	b.n	8002f3a <update_mode+0xca>
 8002ee4:	2b02      	cmp	r3, #2
 8002ee6:	d012      	beq.n	8002f0e <update_mode+0x9e>
 8002ee8:	2b64      	cmp	r3, #100	; 0x64
 8002eea:	d020      	beq.n	8002f2e <update_mode+0xbe>
 8002eec:	e025      	b.n	8002f3a <update_mode+0xca>
 8002eee:	4b1b      	ldr	r3, [pc, #108]	; (8002f5c <update_mode+0xec>)
 8002ef0:	2200      	movs	r2, #0
 8002ef2:	601a      	str	r2, [r3, #0]
 8002ef4:	4b18      	ldr	r3, [pc, #96]	; (8002f58 <update_mode+0xe8>)
 8002ef6:	4a18      	ldr	r2, [pc, #96]	; (8002f58 <update_mode+0xe8>)
 8002ef8:	6952      	ldr	r2, [r2, #20]
 8002efa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002efe:	615a      	str	r2, [r3, #20]
 8002f00:	e01b      	b.n	8002f3a <update_mode+0xca>
 8002f02:	4b18      	ldr	r3, [pc, #96]	; (8002f64 <update_mode+0xf4>)
 8002f04:	881b      	ldrh	r3, [r3, #0]
 8002f06:	4618      	mov	r0, r3
 8002f08:	f7ff ff36 	bl	8002d78 <set_refcurrent>
 8002f0c:	e015      	b.n	8002f3a <update_mode+0xca>
 8002f0e:	4b14      	ldr	r3, [pc, #80]	; (8002f60 <update_mode+0xf0>)
 8002f10:	681b      	ldr	r3, [r3, #0]
 8002f12:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002f16:	0c9b      	lsrs	r3, r3, #18
 8002f18:	2264      	movs	r2, #100	; 0x64
 8002f1a:	fb02 f203 	mul.w	r2, r2, r3
 8002f1e:	4b11      	ldr	r3, [pc, #68]	; (8002f64 <update_mode+0xf4>)
 8002f20:	885b      	ldrh	r3, [r3, #2]
 8002f22:	fbb2 f3f3 	udiv	r3, r2, r3
 8002f26:	4618      	mov	r0, r3
 8002f28:	f7ff ff26 	bl	8002d78 <set_refcurrent>
 8002f2c:	e005      	b.n	8002f3a <update_mode+0xca>
 8002f2e:	4b0d      	ldr	r3, [pc, #52]	; (8002f64 <update_mode+0xf4>)
 8002f30:	881b      	ldrh	r3, [r3, #0]
 8002f32:	461a      	mov	r2, r3
 8002f34:	4b09      	ldr	r3, [pc, #36]	; (8002f5c <update_mode+0xec>)
 8002f36:	601a      	str	r2, [r3, #0]
 8002f38:	bf00      	nop
 8002f3a:	4b0a      	ldr	r3, [pc, #40]	; (8002f64 <update_mode+0xf4>)
 8002f3c:	88db      	ldrh	r3, [r3, #6]
 8002f3e:	461a      	mov	r2, r3
 8002f40:	4b09      	ldr	r3, [pc, #36]	; (8002f68 <update_mode+0xf8>)
 8002f42:	601a      	str	r2, [r3, #0]
 8002f44:	4b07      	ldr	r3, [pc, #28]	; (8002f64 <update_mode+0xf4>)
 8002f46:	891b      	ldrh	r3, [r3, #8]
 8002f48:	461a      	mov	r2, r3
 8002f4a:	4b08      	ldr	r3, [pc, #32]	; (8002f6c <update_mode+0xfc>)
 8002f4c:	601a      	str	r2, [r3, #0]
 8002f4e:	3708      	adds	r7, #8
 8002f50:	46bd      	mov	sp, r7
 8002f52:	bd80      	pop	{r7, pc}
 8002f54:	20000b64 	.word	0x20000b64
 8002f58:	40021000 	.word	0x40021000
 8002f5c:	200035e4 	.word	0x200035e4
 8002f60:	20000b6c 	.word	0x20000b6c
 8002f64:	2000139c 	.word	0x2000139c
 8002f68:	20000218 	.word	0x20000218
 8002f6c:	200035ec 	.word	0x200035ec

08002f70 <check_temp>:
 8002f70:	b580      	push	{r7, lr}
 8002f72:	b082      	sub	sp, #8
 8002f74:	af00      	add	r7, sp, #0
 8002f76:	4b23      	ldr	r3, [pc, #140]	; (8003004 <check_temp+0x94>)
 8002f78:	681b      	ldr	r3, [r3, #0]
 8002f7a:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002f7e:	0c9b      	lsrs	r3, r3, #18
 8002f80:	1d5a      	adds	r2, r3, #5
 8002f82:	4b21      	ldr	r3, [pc, #132]	; (8003008 <check_temp+0x98>)
 8002f84:	fba3 1302 	umull	r1, r3, r3, r2
 8002f88:	08db      	lsrs	r3, r3, #3
 8002f8a:	607b      	str	r3, [r7, #4]
 8002f8c:	2300      	movs	r3, #0
 8002f8e:	603b      	str	r3, [r7, #0]
 8002f90:	4b1e      	ldr	r3, [pc, #120]	; (800300c <check_temp+0x9c>)
 8002f92:	681b      	ldr	r3, [r3, #0]
 8002f94:	687a      	ldr	r2, [r7, #4]
 8002f96:	fb02 f203 	mul.w	r2, r2, r3
 8002f9a:	4b1d      	ldr	r3, [pc, #116]	; (8003010 <check_temp+0xa0>)
 8002f9c:	601a      	str	r2, [r3, #0]
 8002f9e:	2311      	movs	r3, #17
 8002fa0:	4a1b      	ldr	r2, [pc, #108]	; (8003010 <check_temp+0xa0>)
 8002fa2:	6812      	ldr	r2, [r2, #0]
 8002fa4:	fb02 f303 	mul.w	r3, r2, r3
 8002fa8:	f503 4343 	add.w	r3, r3, #49920	; 0xc300
 8002fac:	3350      	adds	r3, #80	; 0x50
 8002fae:	095a      	lsrs	r2, r3, #5
 8002fb0:	4b18      	ldr	r3, [pc, #96]	; (8003014 <check_temp+0xa4>)
 8002fb2:	fba3 1302 	umull	r1, r3, r3, r2
 8002fb6:	09da      	lsrs	r2, r3, #7
 8002fb8:	4b17      	ldr	r3, [pc, #92]	; (8003018 <check_temp+0xa8>)
 8002fba:	681b      	ldr	r3, [r3, #0]
 8002fbc:	441a      	add	r2, r3
 8002fbe:	4b17      	ldr	r3, [pc, #92]	; (800301c <check_temp+0xac>)
 8002fc0:	601a      	str	r2, [r3, #0]
 8002fc2:	4b16      	ldr	r3, [pc, #88]	; (800301c <check_temp+0xac>)
 8002fc4:	681b      	ldr	r3, [r3, #0]
 8002fc6:	2b27      	cmp	r3, #39	; 0x27
 8002fc8:	d806      	bhi.n	8002fd8 <check_temp+0x68>
 8002fca:	2050      	movs	r0, #80	; 0x50
 8002fcc:	f7ff fc82 	bl	80028d4 <coll_pwm_set>
 8002fd0:	4b13      	ldr	r3, [pc, #76]	; (8003020 <check_temp+0xb0>)
 8002fd2:	2200      	movs	r2, #0
 8002fd4:	601a      	str	r2, [r3, #0]
 8002fd6:	e00d      	b.n	8002ff4 <check_temp+0x84>
 8002fd8:	4b10      	ldr	r3, [pc, #64]	; (800301c <check_temp+0xac>)
 8002fda:	681b      	ldr	r3, [r3, #0]
 8002fdc:	2b32      	cmp	r3, #50	; 0x32
 8002fde:	d909      	bls.n	8002ff4 <check_temp+0x84>
 8002fe0:	2001      	movs	r0, #1
 8002fe2:	f7ff fc77 	bl	80028d4 <coll_pwm_set>
 8002fe6:	4b0d      	ldr	r3, [pc, #52]	; (800301c <check_temp+0xac>)
 8002fe8:	681b      	ldr	r3, [r3, #0]
 8002fea:	2b96      	cmp	r3, #150	; 0x96
 8002fec:	d902      	bls.n	8002ff4 <check_temp+0x84>
 8002fee:	4b0c      	ldr	r3, [pc, #48]	; (8003020 <check_temp+0xb0>)
 8002ff0:	2201      	movs	r2, #1
 8002ff2:	601a      	str	r2, [r3, #0]
 8002ff4:	4b08      	ldr	r3, [pc, #32]	; (8003018 <check_temp+0xa8>)
 8002ff6:	681b      	ldr	r3, [r3, #0]
 8002ff8:	b29a      	uxth	r2, r3
 8002ffa:	4b0a      	ldr	r3, [pc, #40]	; (8003024 <check_temp+0xb4>)
 8002ffc:	81da      	strh	r2, [r3, #14]
 8002ffe:	3708      	adds	r7, #8
 8003000:	46bd      	mov	sp, r7
 8003002:	bd80      	pop	{r7, pc}
 8003004:	20000b6c 	.word	0x20000b6c
 8003008:	cccccccd 	.word	0xcccccccd
 800300c:	20000b70 	.word	0x20000b70
 8003010:	20000b74 	.word	0x20000b74
 8003014:	0a7c5ac5 	.word	0x0a7c5ac5
 8003018:	200035f8 	.word	0x200035f8
 800301c:	20000b78 	.word	0x20000b78
 8003020:	20000b64 	.word	0x20000b64
 8003024:	2000139c 	.word	0x2000139c

08003028 <TIM3_IRQHandler>:
 8003028:	b580      	push	{r7, lr}
 800302a:	af00      	add	r7, sp, #0
 800302c:	4b1e      	ldr	r3, [pc, #120]	; (80030a8 <TIM3_IRQHandler+0x80>)
 800302e:	4a1e      	ldr	r2, [pc, #120]	; (80030a8 <TIM3_IRQHandler+0x80>)
 8003030:	6952      	ldr	r2, [r2, #20]
 8003032:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8003036:	615a      	str	r2, [r3, #20]
 8003038:	4b1c      	ldr	r3, [pc, #112]	; (80030ac <TIM3_IRQHandler+0x84>)
 800303a:	4a1c      	ldr	r2, [pc, #112]	; (80030ac <TIM3_IRQHandler+0x84>)
 800303c:	8a12      	ldrh	r2, [r2, #16]
 800303e:	b292      	uxth	r2, r2
 8003040:	f022 0201 	bic.w	r2, r2, #1
 8003044:	b292      	uxth	r2, r2
 8003046:	821a      	strh	r2, [r3, #16]
 8003048:	4b19      	ldr	r3, [pc, #100]	; (80030b0 <TIM3_IRQHandler+0x88>)
 800304a:	4a19      	ldr	r2, [pc, #100]	; (80030b0 <TIM3_IRQHandler+0x88>)
 800304c:	6812      	ldr	r2, [r2, #0]
 800304e:	f042 0201 	orr.w	r2, r2, #1
 8003052:	601a      	str	r2, [r3, #0]
 8003054:	4b17      	ldr	r3, [pc, #92]	; (80030b4 <TIM3_IRQHandler+0x8c>)
 8003056:	681b      	ldr	r3, [r3, #0]
 8003058:	2b00      	cmp	r3, #0
 800305a:	d005      	beq.n	8003068 <TIM3_IRQHandler+0x40>
 800305c:	4b16      	ldr	r3, [pc, #88]	; (80030b8 <TIM3_IRQHandler+0x90>)
 800305e:	2296      	movs	r2, #150	; 0x96
 8003060:	601a      	str	r2, [r3, #0]
 8003062:	f000 f8d9 	bl	8003218 <i2c_init>
 8003066:	e004      	b.n	8003072 <TIM3_IRQHandler+0x4a>
 8003068:	4b14      	ldr	r3, [pc, #80]	; (80030bc <TIM3_IRQHandler+0x94>)
 800306a:	781b      	ldrb	r3, [r3, #0]
 800306c:	461a      	mov	r2, r3
 800306e:	4b12      	ldr	r3, [pc, #72]	; (80030b8 <TIM3_IRQHandler+0x90>)
 8003070:	601a      	str	r2, [r3, #0]
 8003072:	2394      	movs	r3, #148	; 0x94
 8003074:	b2db      	uxtb	r3, r3
 8003076:	4618      	mov	r0, r3
 8003078:	f000 fb00 	bl	800367c <i2c_start>
 800307c:	f000 fb26 	bl	80036cc <update_attenuator>
 8003080:	f7ff fece 	bl	8002e20 <check_voltage>
 8003084:	f7ff fe4e 	bl	8002d24 <check_current>
 8003088:	f7ff ff72 	bl	8002f70 <check_temp>
 800308c:	f7ff fef0 	bl	8002e70 <update_mode>
 8003090:	4b0b      	ldr	r3, [pc, #44]	; (80030c0 <TIM3_IRQHandler+0x98>)
 8003092:	f64a 22aa 	movw	r2, #43690	; 0xaaaa
 8003096:	601a      	str	r2, [r3, #0]
 8003098:	4b03      	ldr	r3, [pc, #12]	; (80030a8 <TIM3_IRQHandler+0x80>)
 800309a:	4a03      	ldr	r2, [pc, #12]	; (80030a8 <TIM3_IRQHandler+0x80>)
 800309c:	6952      	ldr	r2, [r2, #20]
 800309e:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 80030a2:	615a      	str	r2, [r3, #20]
 80030a4:	bd80      	pop	{r7, pc}
 80030a6:	bf00      	nop
 80030a8:	40020000 	.word	0x40020000
 80030ac:	40000400 	.word	0x40000400
 80030b0:	40026070 	.word	0x40026070
 80030b4:	20003608 	.word	0x20003608
 80030b8:	200035f8 	.word	0x200035f8
 80030bc:	200035fc 	.word	0x200035fc
 80030c0:	40003000 	.word	0x40003000

080030c4 <DMA1_Stream4_IRQHandler>:
 80030c4:	b480      	push	{r7}
 80030c6:	af00      	add	r7, sp, #0
 80030c8:	4b07      	ldr	r3, [pc, #28]	; (80030e8 <DMA1_Stream4_IRQHandler+0x24>)
 80030ca:	4a07      	ldr	r2, [pc, #28]	; (80030e8 <DMA1_Stream4_IRQHandler+0x24>)
 80030cc:	68d2      	ldr	r2, [r2, #12]
 80030ce:	f042 0220 	orr.w	r2, r2, #32
 80030d2:	60da      	str	r2, [r3, #12]
 80030d4:	4b05      	ldr	r3, [pc, #20]	; (80030ec <DMA1_Stream4_IRQHandler+0x28>)
 80030d6:	4a05      	ldr	r2, [pc, #20]	; (80030ec <DMA1_Stream4_IRQHandler+0x28>)
 80030d8:	6812      	ldr	r2, [r2, #0]
 80030da:	f022 0201 	bic.w	r2, r2, #1
 80030de:	601a      	str	r2, [r3, #0]
 80030e0:	46bd      	mov	sp, r7
 80030e2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030e6:	4770      	bx	lr
 80030e8:	40026000 	.word	0x40026000
 80030ec:	40026070 	.word	0x40026070

080030f0 <reg_init>:
 80030f0:	4b03      	ldr	r3, [pc, #12]	; (8003100 <reg_init+0x10>)
 80030f2:	2200      	movs	r2, #0
 80030f4:	21c8      	movs	r1, #200	; 0xc8
 80030f6:	80d9      	strh	r1, [r3, #6]
 80030f8:	811a      	strh	r2, [r3, #8]
 80030fa:	801a      	strh	r2, [r3, #0]
 80030fc:	809a      	strh	r2, [r3, #4]
 80030fe:	4770      	bx	lr
 8003100:	2000139c 	.word	0x2000139c

08003104 <ADC_IRQHandler>:
 8003104:	492f      	ldr	r1, [pc, #188]	; (80031c4 <ADC_IRQHandler+0xc0>)
 8003106:	4b30      	ldr	r3, [pc, #192]	; (80031c8 <ADC_IRQHandler+0xc4>)
 8003108:	e92d 07f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl}
 800310c:	684d      	ldr	r5, [r1, #4]
 800310e:	4e2f      	ldr	r6, [pc, #188]	; (80031cc <ADC_IRQHandler+0xc8>)
 8003110:	6cd8      	ldr	r0, [r3, #76]	; 0x4c
 8003112:	6832      	ldr	r2, [r6, #0]
 8003114:	f8d1 a000 	ldr.w	sl, [r1]
 8003118:	4b2d      	ldr	r3, [pc, #180]	; (80031d0 <ADC_IRQHandler+0xcc>)
 800311a:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 80031e4 <ADC_IRQHandler+0xe0>
 800311e:	f853 4cec 	ldr.w	r4, [r3, #-236]
 8003122:	4f2c      	ldr	r7, [pc, #176]	; (80031d4 <ADC_IRQHandler+0xd0>)
 8003124:	eb01 0685 	add.w	r6, r1, r5, lsl #2
 8003128:	f5c0 607f 	rsb	r0, r0, #4080	; 0xff0
 800312c:	f8d6 9008 	ldr.w	r9, [r6, #8]
 8003130:	300f      	adds	r0, #15
 8003132:	60b0      	str	r0, [r6, #8]
 8003134:	4450      	add	r0, sl
 8003136:	ebc9 0000 	rsb	r0, r9, r0
 800313a:	6008      	str	r0, [r1, #0]
 800313c:	f8d8 004c 	ldr.w	r0, [r8, #76]	; 0x4c
 8003140:	f853 9cf0 	ldr.w	r9, [r3, #-240]
 8003144:	eb03 0684 	add.w	r6, r3, r4, lsl #2
 8003148:	f5c0 6055 	rsb	r0, r0, #3408	; 0xd50
 800314c:	3003      	adds	r0, #3
 800314e:	f856 8ce8 	ldr.w	r8, [r6, #-232]
 8003152:	f846 0ce8 	str.w	r0, [r6, #-232]
 8003156:	eb00 0609 	add.w	r6, r0, r9
 800315a:	ebc8 0606 	rsb	r6, r8, r6
 800315e:	f843 6cf0 	str.w	r6, [r3, #-240]
 8003162:	f8d3 6f18 	ldr.w	r6, [r3, #3864]	; 0xf18
 8003166:	1a30      	subs	r0, r6, r0
 8003168:	f8d3 6f1c 	ldr.w	r6, [r3, #3868]	; 0xf1c
 800316c:	3501      	adds	r5, #1
 800316e:	fb02 6200 	mla	r2, r2, r0, r6
 8003172:	3401      	adds	r4, #1
 8003174:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8003178:	f3c4 0409 	ubfx	r4, r4, #0, #10
 800317c:	42ba      	cmp	r2, r7
 800317e:	604d      	str	r5, [r1, #4]
 8003180:	f843 4cec 	str.w	r4, [r3, #-236]
 8003184:	4611      	mov	r1, r2
 8003186:	dc19      	bgt.n	80031bc <ADC_IRQHandler+0xb8>
 8003188:	4c13      	ldr	r4, [pc, #76]	; (80031d8 <ADC_IRQHandler+0xd4>)
 800318a:	42a2      	cmp	r2, r4
 800318c:	da01      	bge.n	8003192 <ADC_IRQHandler+0x8e>
 800318e:	4622      	mov	r2, r4
 8003190:	4621      	mov	r1, r4
 8003192:	f8d3 4f20 	ldr.w	r4, [r3, #3872]	; 0xf20
 8003196:	f8b3 7f24 	ldrh.w	r7, [r3, #3876]	; 0xf24
 800319a:	4e10      	ldr	r6, [pc, #64]	; (80031dc <ADC_IRQHandler+0xd8>)
 800319c:	4d10      	ldr	r5, [pc, #64]	; (80031e0 <ADC_IRQHandler+0xdc>)
 800319e:	f8c3 1f1c 	str.w	r1, [r3, #3868]	; 0xf1c
 80031a2:	fb04 2200 	mla	r2, r4, r0, r2
 80031a6:	1352      	asrs	r2, r2, #13
 80031a8:	b2b9      	uxth	r1, r7
 80031aa:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 80031ae:	6371      	str	r1, [r6, #52]	; 0x34
 80031b0:	60aa      	str	r2, [r5, #8]
 80031b2:	f8c3 0f28 	str.w	r0, [r3, #3880]	; 0xf28
 80031b6:	e8bd 07f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl}
 80031ba:	4770      	bx	lr
 80031bc:	463a      	mov	r2, r7
 80031be:	4639      	mov	r1, r7
 80031c0:	e7e7      	b.n	8003192 <ADC_IRQHandler+0x8e>
 80031c2:	bf00      	nop
 80031c4:	200015d4 	.word	0x200015d4
 80031c8:	40012200 	.word	0x40012200
 80031cc:	20000218 	.word	0x20000218
 80031d0:	200026cc 	.word	0x200026cc
 80031d4:	3b9aca00 	.word	0x3b9aca00
 80031d8:	c4653600 	.word	0xc4653600
 80031dc:	40000800 	.word	0x40000800
 80031e0:	40007400 	.word	0x40007400
 80031e4:	40012000 	.word	0x40012000

080031e8 <NVIC_EnableIRQ>:
 80031e8:	b480      	push	{r7}
 80031ea:	b083      	sub	sp, #12
 80031ec:	af00      	add	r7, sp, #0
 80031ee:	4603      	mov	r3, r0
 80031f0:	71fb      	strb	r3, [r7, #7]
 80031f2:	4b08      	ldr	r3, [pc, #32]	; (8003214 <NVIC_EnableIRQ+0x2c>)
 80031f4:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80031f8:	0952      	lsrs	r2, r2, #5
 80031fa:	79f9      	ldrb	r1, [r7, #7]
 80031fc:	f001 011f 	and.w	r1, r1, #31
 8003200:	2001      	movs	r0, #1
 8003202:	fa00 f101 	lsl.w	r1, r0, r1
 8003206:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800320a:	370c      	adds	r7, #12
 800320c:	46bd      	mov	sp, r7
 800320e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003212:	4770      	bx	lr
 8003214:	e000e100 	.word	0xe000e100

08003218 <i2c_init>:
 8003218:	b580      	push	{r7, lr}
 800321a:	af00      	add	r7, sp, #0
 800321c:	4b39      	ldr	r3, [pc, #228]	; (8003304 <i2c_init+0xec>)
 800321e:	4a39      	ldr	r2, [pc, #228]	; (8003304 <i2c_init+0xec>)
 8003220:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8003222:	f042 0202 	orr.w	r2, r2, #2
 8003226:	631a      	str	r2, [r3, #48]	; 0x30
 8003228:	4b37      	ldr	r3, [pc, #220]	; (8003308 <i2c_init+0xf0>)
 800322a:	4a37      	ldr	r2, [pc, #220]	; (8003308 <i2c_init+0xf0>)
 800322c:	6852      	ldr	r2, [r2, #4]
 800322e:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 8003232:	605a      	str	r2, [r3, #4]
 8003234:	4b34      	ldr	r3, [pc, #208]	; (8003308 <i2c_init+0xf0>)
 8003236:	4a34      	ldr	r2, [pc, #208]	; (8003308 <i2c_init+0xf0>)
 8003238:	6812      	ldr	r2, [r2, #0]
 800323a:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 800323e:	601a      	str	r2, [r3, #0]
 8003240:	4b31      	ldr	r3, [pc, #196]	; (8003308 <i2c_init+0xf0>)
 8003242:	4a31      	ldr	r2, [pc, #196]	; (8003308 <i2c_init+0xf0>)
 8003244:	6812      	ldr	r2, [r2, #0]
 8003246:	f442 4220 	orr.w	r2, r2, #40960	; 0xa000
 800324a:	601a      	str	r2, [r3, #0]
 800324c:	4b2e      	ldr	r3, [pc, #184]	; (8003308 <i2c_init+0xf0>)
 800324e:	4a2e      	ldr	r2, [pc, #184]	; (8003308 <i2c_init+0xf0>)
 8003250:	6a12      	ldr	r2, [r2, #32]
 8003252:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 8003256:	621a      	str	r2, [r3, #32]
 8003258:	4b2b      	ldr	r3, [pc, #172]	; (8003308 <i2c_init+0xf0>)
 800325a:	4a2b      	ldr	r2, [pc, #172]	; (8003308 <i2c_init+0xf0>)
 800325c:	6a12      	ldr	r2, [r2, #32]
 800325e:	f042 6280 	orr.w	r2, r2, #67108864	; 0x4000000
 8003262:	621a      	str	r2, [r3, #32]
 8003264:	4b28      	ldr	r3, [pc, #160]	; (8003308 <i2c_init+0xf0>)
 8003266:	4a28      	ldr	r2, [pc, #160]	; (8003308 <i2c_init+0xf0>)
 8003268:	6a12      	ldr	r2, [r2, #32]
 800326a:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 800326e:	621a      	str	r2, [r3, #32]
 8003270:	4b25      	ldr	r3, [pc, #148]	; (8003308 <i2c_init+0xf0>)
 8003272:	4a25      	ldr	r2, [pc, #148]	; (8003308 <i2c_init+0xf0>)
 8003274:	6a12      	ldr	r2, [r2, #32]
 8003276:	f042 4280 	orr.w	r2, r2, #1073741824	; 0x40000000
 800327a:	621a      	str	r2, [r3, #32]
 800327c:	4b21      	ldr	r3, [pc, #132]	; (8003304 <i2c_init+0xec>)
 800327e:	4a21      	ldr	r2, [pc, #132]	; (8003304 <i2c_init+0xec>)
 8003280:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8003282:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8003286:	641a      	str	r2, [r3, #64]	; 0x40
 8003288:	4b20      	ldr	r3, [pc, #128]	; (800330c <i2c_init+0xf4>)
 800328a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 800328e:	801a      	strh	r2, [r3, #0]
 8003290:	4b1e      	ldr	r3, [pc, #120]	; (800330c <i2c_init+0xf4>)
 8003292:	2200      	movs	r2, #0
 8003294:	801a      	strh	r2, [r3, #0]
 8003296:	4b1d      	ldr	r3, [pc, #116]	; (800330c <i2c_init+0xf4>)
 8003298:	4a1c      	ldr	r2, [pc, #112]	; (800330c <i2c_init+0xf4>)
 800329a:	8892      	ldrh	r2, [r2, #4]
 800329c:	b292      	uxth	r2, r2
 800329e:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 80032a2:	b292      	uxth	r2, r2
 80032a4:	809a      	strh	r2, [r3, #4]
 80032a6:	4b19      	ldr	r3, [pc, #100]	; (800330c <i2c_init+0xf4>)
 80032a8:	4a18      	ldr	r2, [pc, #96]	; (800330c <i2c_init+0xf4>)
 80032aa:	8892      	ldrh	r2, [r2, #4]
 80032ac:	b292      	uxth	r2, r2
 80032ae:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 80032b2:	b292      	uxth	r2, r2
 80032b4:	809a      	strh	r2, [r3, #4]
 80032b6:	4b15      	ldr	r3, [pc, #84]	; (800330c <i2c_init+0xf4>)
 80032b8:	22b4      	movs	r2, #180	; 0xb4
 80032ba:	839a      	strh	r2, [r3, #28]
 80032bc:	4b13      	ldr	r3, [pc, #76]	; (800330c <i2c_init+0xf4>)
 80032be:	4a13      	ldr	r2, [pc, #76]	; (800330c <i2c_init+0xf4>)
 80032c0:	8c12      	ldrh	r2, [r2, #32]
 80032c2:	b292      	uxth	r2, r2
 80032c4:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 80032c8:	b292      	uxth	r2, r2
 80032ca:	841a      	strh	r2, [r3, #32]
 80032cc:	4b0f      	ldr	r3, [pc, #60]	; (800330c <i2c_init+0xf4>)
 80032ce:	4a0f      	ldr	r2, [pc, #60]	; (800330c <i2c_init+0xf4>)
 80032d0:	8c12      	ldrh	r2, [r2, #32]
 80032d2:	b292      	uxth	r2, r2
 80032d4:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 80032d8:	b292      	uxth	r2, r2
 80032da:	841a      	strh	r2, [r3, #32]
 80032dc:	4b0b      	ldr	r3, [pc, #44]	; (800330c <i2c_init+0xf4>)
 80032de:	4a0b      	ldr	r2, [pc, #44]	; (800330c <i2c_init+0xf4>)
 80032e0:	8892      	ldrh	r2, [r2, #4]
 80032e2:	b292      	uxth	r2, r2
 80032e4:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80032e8:	b292      	uxth	r2, r2
 80032ea:	809a      	strh	r2, [r3, #4]
 80032ec:	4b07      	ldr	r3, [pc, #28]	; (800330c <i2c_init+0xf4>)
 80032ee:	4a07      	ldr	r2, [pc, #28]	; (800330c <i2c_init+0xf4>)
 80032f0:	8812      	ldrh	r2, [r2, #0]
 80032f2:	b292      	uxth	r2, r2
 80032f4:	f042 0201 	orr.w	r2, r2, #1
 80032f8:	b292      	uxth	r2, r2
 80032fa:	801a      	strh	r2, [r3, #0]
 80032fc:	201f      	movs	r0, #31
 80032fe:	f7ff ff73 	bl	80031e8 <NVIC_EnableIRQ>
 8003302:	bd80      	pop	{r7, pc}
 8003304:	40023800 	.word	0x40023800
 8003308:	40020400 	.word	0x40020400
 800330c:	40005400 	.word	0x40005400

08003310 <i2c_test>:
 8003310:	b580      	push	{r7, lr}
 8003312:	b082      	sub	sp, #8
 8003314:	af00      	add	r7, sp, #0
 8003316:	4b5f      	ldr	r3, [pc, #380]	; (8003494 <i2c_test+0x184>)
 8003318:	4a5e      	ldr	r2, [pc, #376]	; (8003494 <i2c_test+0x184>)
 800331a:	8812      	ldrh	r2, [r2, #0]
 800331c:	b292      	uxth	r2, r2
 800331e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8003322:	b292      	uxth	r2, r2
 8003324:	801a      	strh	r2, [r3, #0]
 8003326:	bf00      	nop
 8003328:	4b5a      	ldr	r3, [pc, #360]	; (8003494 <i2c_test+0x184>)
 800332a:	8a9b      	ldrh	r3, [r3, #20]
 800332c:	b29b      	uxth	r3, r3
 800332e:	f003 0301 	and.w	r3, r3, #1
 8003332:	2b00      	cmp	r3, #0
 8003334:	d0f8      	beq.n	8003328 <i2c_test+0x18>
 8003336:	4b57      	ldr	r3, [pc, #348]	; (8003494 <i2c_test+0x184>)
 8003338:	8a9b      	ldrh	r3, [r3, #20]
 800333a:	b29b      	uxth	r3, r3
 800333c:	4856      	ldr	r0, [pc, #344]	; (8003498 <i2c_test+0x188>)
 800333e:	4619      	mov	r1, r3
 8003340:	f7fd fe7c 	bl	800103c <xprintf>
 8003344:	4b53      	ldr	r3, [pc, #332]	; (8003494 <i2c_test+0x184>)
 8003346:	2294      	movs	r2, #148	; 0x94
 8003348:	821a      	strh	r2, [r3, #16]
 800334a:	bf00      	nop
 800334c:	4b51      	ldr	r3, [pc, #324]	; (8003494 <i2c_test+0x184>)
 800334e:	8a9b      	ldrh	r3, [r3, #20]
 8003350:	b29b      	uxth	r3, r3
 8003352:	f003 0302 	and.w	r3, r3, #2
 8003356:	2b00      	cmp	r3, #0
 8003358:	d0f8      	beq.n	800334c <i2c_test+0x3c>
 800335a:	4b4e      	ldr	r3, [pc, #312]	; (8003494 <i2c_test+0x184>)
 800335c:	8b1b      	ldrh	r3, [r3, #24]
 800335e:	80fb      	strh	r3, [r7, #6]
 8003360:	4b4c      	ldr	r3, [pc, #304]	; (8003494 <i2c_test+0x184>)
 8003362:	8a9b      	ldrh	r3, [r3, #20]
 8003364:	b29b      	uxth	r3, r3
 8003366:	484d      	ldr	r0, [pc, #308]	; (800349c <i2c_test+0x18c>)
 8003368:	4619      	mov	r1, r3
 800336a:	f7fd fe67 	bl	800103c <xprintf>
 800336e:	4b49      	ldr	r3, [pc, #292]	; (8003494 <i2c_test+0x184>)
 8003370:	2200      	movs	r2, #0
 8003372:	821a      	strh	r2, [r3, #16]
 8003374:	bf00      	nop
 8003376:	4b47      	ldr	r3, [pc, #284]	; (8003494 <i2c_test+0x184>)
 8003378:	8a9b      	ldrh	r3, [r3, #20]
 800337a:	b29b      	uxth	r3, r3
 800337c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8003380:	2b00      	cmp	r3, #0
 8003382:	d0f8      	beq.n	8003376 <i2c_test+0x66>
 8003384:	4b43      	ldr	r3, [pc, #268]	; (8003494 <i2c_test+0x184>)
 8003386:	8a9b      	ldrh	r3, [r3, #20]
 8003388:	b29b      	uxth	r3, r3
 800338a:	4845      	ldr	r0, [pc, #276]	; (80034a0 <i2c_test+0x190>)
 800338c:	4619      	mov	r1, r3
 800338e:	f7fd fe55 	bl	800103c <xprintf>
 8003392:	4b40      	ldr	r3, [pc, #256]	; (8003494 <i2c_test+0x184>)
 8003394:	4a3f      	ldr	r2, [pc, #252]	; (8003494 <i2c_test+0x184>)
 8003396:	8812      	ldrh	r2, [r2, #0]
 8003398:	b292      	uxth	r2, r2
 800339a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800339e:	b292      	uxth	r2, r2
 80033a0:	801a      	strh	r2, [r3, #0]
 80033a2:	bf00      	nop
 80033a4:	4b3b      	ldr	r3, [pc, #236]	; (8003494 <i2c_test+0x184>)
 80033a6:	8a9b      	ldrh	r3, [r3, #20]
 80033a8:	b29b      	uxth	r3, r3
 80033aa:	f003 0301 	and.w	r3, r3, #1
 80033ae:	2b00      	cmp	r3, #0
 80033b0:	d0f8      	beq.n	80033a4 <i2c_test+0x94>
 80033b2:	4b38      	ldr	r3, [pc, #224]	; (8003494 <i2c_test+0x184>)
 80033b4:	8a9b      	ldrh	r3, [r3, #20]
 80033b6:	b29b      	uxth	r3, r3
 80033b8:	4837      	ldr	r0, [pc, #220]	; (8003498 <i2c_test+0x188>)
 80033ba:	4619      	mov	r1, r3
 80033bc:	f7fd fe3e 	bl	800103c <xprintf>
 80033c0:	4b34      	ldr	r3, [pc, #208]	; (8003494 <i2c_test+0x184>)
 80033c2:	2295      	movs	r2, #149	; 0x95
 80033c4:	821a      	strh	r2, [r3, #16]
 80033c6:	bf00      	nop
 80033c8:	4b32      	ldr	r3, [pc, #200]	; (8003494 <i2c_test+0x184>)
 80033ca:	8a9b      	ldrh	r3, [r3, #20]
 80033cc:	b29b      	uxth	r3, r3
 80033ce:	f003 0302 	and.w	r3, r3, #2
 80033d2:	2b00      	cmp	r3, #0
 80033d4:	d0f8      	beq.n	80033c8 <i2c_test+0xb8>
 80033d6:	4b2f      	ldr	r3, [pc, #188]	; (8003494 <i2c_test+0x184>)
 80033d8:	8a9b      	ldrh	r3, [r3, #20]
 80033da:	b29b      	uxth	r3, r3
 80033dc:	482f      	ldr	r0, [pc, #188]	; (800349c <i2c_test+0x18c>)
 80033de:	4619      	mov	r1, r3
 80033e0:	f7fd fe2c 	bl	800103c <xprintf>
 80033e4:	4b2b      	ldr	r3, [pc, #172]	; (8003494 <i2c_test+0x184>)
 80033e6:	4a2b      	ldr	r2, [pc, #172]	; (8003494 <i2c_test+0x184>)
 80033e8:	8812      	ldrh	r2, [r2, #0]
 80033ea:	b292      	uxth	r2, r2
 80033ec:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 80033f0:	b292      	uxth	r2, r2
 80033f2:	801a      	strh	r2, [r3, #0]
 80033f4:	4b27      	ldr	r3, [pc, #156]	; (8003494 <i2c_test+0x184>)
 80033f6:	4a27      	ldr	r2, [pc, #156]	; (8003494 <i2c_test+0x184>)
 80033f8:	8812      	ldrh	r2, [r2, #0]
 80033fa:	b292      	uxth	r2, r2
 80033fc:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8003400:	b292      	uxth	r2, r2
 8003402:	801a      	strh	r2, [r3, #0]
 8003404:	4b23      	ldr	r3, [pc, #140]	; (8003494 <i2c_test+0x184>)
 8003406:	8b1b      	ldrh	r3, [r3, #24]
 8003408:	80fb      	strh	r3, [r7, #6]
 800340a:	bf00      	nop
 800340c:	4b21      	ldr	r3, [pc, #132]	; (8003494 <i2c_test+0x184>)
 800340e:	8a9b      	ldrh	r3, [r3, #20]
 8003410:	b29b      	uxth	r3, r3
 8003412:	f003 0304 	and.w	r3, r3, #4
 8003416:	2b00      	cmp	r3, #0
 8003418:	d0f8      	beq.n	800340c <i2c_test+0xfc>
 800341a:	4b1e      	ldr	r3, [pc, #120]	; (8003494 <i2c_test+0x184>)
 800341c:	8a9b      	ldrh	r3, [r3, #20]
 800341e:	b29b      	uxth	r3, r3
 8003420:	4820      	ldr	r0, [pc, #128]	; (80034a4 <i2c_test+0x194>)
 8003422:	4619      	mov	r1, r3
 8003424:	f7fd fe0a 	bl	800103c <xprintf>
 8003428:	4b1a      	ldr	r3, [pc, #104]	; (8003494 <i2c_test+0x184>)
 800342a:	4a1a      	ldr	r2, [pc, #104]	; (8003494 <i2c_test+0x184>)
 800342c:	8812      	ldrh	r2, [r2, #0]
 800342e:	b292      	uxth	r2, r2
 8003430:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8003434:	b292      	uxth	r2, r2
 8003436:	801a      	strh	r2, [r3, #0]
 8003438:	bf00      	nop
 800343a:	4b16      	ldr	r3, [pc, #88]	; (8003494 <i2c_test+0x184>)
 800343c:	8a9b      	ldrh	r3, [r3, #20]
 800343e:	b29b      	uxth	r3, r3
 8003440:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003444:	2b00      	cmp	r3, #0
 8003446:	d0f8      	beq.n	800343a <i2c_test+0x12a>
 8003448:	4b12      	ldr	r3, [pc, #72]	; (8003494 <i2c_test+0x184>)
 800344a:	8a1b      	ldrh	r3, [r3, #16]
 800344c:	b29b      	uxth	r3, r3
 800344e:	b2da      	uxtb	r2, r3
 8003450:	4b15      	ldr	r3, [pc, #84]	; (80034a8 <i2c_test+0x198>)
 8003452:	701a      	strb	r2, [r3, #0]
 8003454:	bf00      	nop
 8003456:	4b0f      	ldr	r3, [pc, #60]	; (8003494 <i2c_test+0x184>)
 8003458:	8a9b      	ldrh	r3, [r3, #20]
 800345a:	b29b      	uxth	r3, r3
 800345c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003460:	2b00      	cmp	r3, #0
 8003462:	d0f8      	beq.n	8003456 <i2c_test+0x146>
 8003464:	4b0b      	ldr	r3, [pc, #44]	; (8003494 <i2c_test+0x184>)
 8003466:	8a1b      	ldrh	r3, [r3, #16]
 8003468:	b29b      	uxth	r3, r3
 800346a:	b2da      	uxtb	r2, r3
 800346c:	4b0e      	ldr	r3, [pc, #56]	; (80034a8 <i2c_test+0x198>)
 800346e:	705a      	strb	r2, [r3, #1]
 8003470:	bf00      	nop
 8003472:	4b08      	ldr	r3, [pc, #32]	; (8003494 <i2c_test+0x184>)
 8003474:	8b1b      	ldrh	r3, [r3, #24]
 8003476:	b29b      	uxth	r3, r3
 8003478:	f003 0302 	and.w	r3, r3, #2
 800347c:	2b00      	cmp	r3, #0
 800347e:	d1f8      	bne.n	8003472 <i2c_test+0x162>
 8003480:	4b04      	ldr	r3, [pc, #16]	; (8003494 <i2c_test+0x184>)
 8003482:	8a9b      	ldrh	r3, [r3, #20]
 8003484:	b29b      	uxth	r3, r3
 8003486:	4809      	ldr	r0, [pc, #36]	; (80034ac <i2c_test+0x19c>)
 8003488:	4619      	mov	r1, r3
 800348a:	f7fd fdd7 	bl	800103c <xprintf>
 800348e:	3708      	adds	r7, #8
 8003490:	46bd      	mov	sp, r7
 8003492:	bd80      	pop	{r7, pc}
 8003494:	40005400 	.word	0x40005400
 8003498:	0800abb4 	.word	0x0800abb4
 800349c:	0800abd4 	.word	0x0800abd4
 80034a0:	0800abf4 	.word	0x0800abf4
 80034a4:	0800ac18 	.word	0x0800ac18
 80034a8:	200035fc 	.word	0x200035fc
 80034ac:	0800ac2c 	.word	0x0800ac2c

080034b0 <I2C1_EV_IRQHandler>:
 80034b0:	b580      	push	{r7, lr}
 80034b2:	af00      	add	r7, sp, #0
 80034b4:	4b01      	ldr	r3, [pc, #4]	; (80034bc <I2C1_EV_IRQHandler+0xc>)
 80034b6:	681b      	ldr	r3, [r3, #0]
 80034b8:	4798      	blx	r3
 80034ba:	bd80      	pop	{r7, pc}
 80034bc:	20003604 	.word	0x20003604

080034c0 <I2C1_ER_IRQHandler>:
 80034c0:	b480      	push	{r7}
 80034c2:	b083      	sub	sp, #12
 80034c4:	af00      	add	r7, sp, #0
 80034c6:	4b08      	ldr	r3, [pc, #32]	; (80034e8 <I2C1_ER_IRQHandler+0x28>)
 80034c8:	8a9b      	ldrh	r3, [r3, #20]
 80034ca:	80fb      	strh	r3, [r7, #6]
 80034cc:	4a06      	ldr	r2, [pc, #24]	; (80034e8 <I2C1_ER_IRQHandler+0x28>)
 80034ce:	4b06      	ldr	r3, [pc, #24]	; (80034e8 <I2C1_ER_IRQHandler+0x28>)
 80034d0:	8a9b      	ldrh	r3, [r3, #20]
 80034d2:	b299      	uxth	r1, r3
 80034d4:	f242 03ff 	movw	r3, #8447	; 0x20ff
 80034d8:	400b      	ands	r3, r1
 80034da:	b29b      	uxth	r3, r3
 80034dc:	8293      	strh	r3, [r2, #20]
 80034de:	370c      	adds	r7, #12
 80034e0:	46bd      	mov	sp, r7
 80034e2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80034e6:	4770      	bx	lr
 80034e8:	40005400 	.word	0x40005400

080034ec <btf_conf>:
 80034ec:	b480      	push	{r7}
 80034ee:	af00      	add	r7, sp, #0
 80034f0:	4b10      	ldr	r3, [pc, #64]	; (8003534 <btf_conf+0x48>)
 80034f2:	8a9b      	ldrh	r3, [r3, #20]
 80034f4:	b29b      	uxth	r3, r3
 80034f6:	f003 0304 	and.w	r3, r3, #4
 80034fa:	2b00      	cmp	r3, #0
 80034fc:	d016      	beq.n	800352c <btf_conf+0x40>
 80034fe:	4b0d      	ldr	r3, [pc, #52]	; (8003534 <btf_conf+0x48>)
 8003500:	4a0c      	ldr	r2, [pc, #48]	; (8003534 <btf_conf+0x48>)
 8003502:	8812      	ldrh	r2, [r2, #0]
 8003504:	b292      	uxth	r2, r2
 8003506:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 800350a:	b292      	uxth	r2, r2
 800350c:	801a      	strh	r2, [r3, #0]
 800350e:	4b09      	ldr	r3, [pc, #36]	; (8003534 <btf_conf+0x48>)
 8003510:	8a1b      	ldrh	r3, [r3, #16]
 8003512:	b29b      	uxth	r3, r3
 8003514:	b2da      	uxtb	r2, r3
 8003516:	4b08      	ldr	r3, [pc, #32]	; (8003538 <btf_conf+0x4c>)
 8003518:	701a      	strb	r2, [r3, #0]
 800351a:	4b06      	ldr	r3, [pc, #24]	; (8003534 <btf_conf+0x48>)
 800351c:	8a1b      	ldrh	r3, [r3, #16]
 800351e:	b29b      	uxth	r3, r3
 8003520:	b2da      	uxtb	r2, r3
 8003522:	4b05      	ldr	r3, [pc, #20]	; (8003538 <btf_conf+0x4c>)
 8003524:	705a      	strb	r2, [r3, #1]
 8003526:	4b05      	ldr	r3, [pc, #20]	; (800353c <btf_conf+0x50>)
 8003528:	2200      	movs	r2, #0
 800352a:	601a      	str	r2, [r3, #0]
 800352c:	46bd      	mov	sp, r7
 800352e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003532:	4770      	bx	lr
 8003534:	40005400 	.word	0x40005400
 8003538:	200035fc 	.word	0x200035fc
 800353c:	20003608 	.word	0x20003608

08003540 <raddr_conf>:
 8003540:	b480      	push	{r7}
 8003542:	af00      	add	r7, sp, #0
 8003544:	4b0f      	ldr	r3, [pc, #60]	; (8003584 <raddr_conf+0x44>)
 8003546:	8a9b      	ldrh	r3, [r3, #20]
 8003548:	b29b      	uxth	r3, r3
 800354a:	f003 0302 	and.w	r3, r3, #2
 800354e:	2b00      	cmp	r3, #0
 8003550:	d014      	beq.n	800357c <raddr_conf+0x3c>
 8003552:	4b0c      	ldr	r3, [pc, #48]	; (8003584 <raddr_conf+0x44>)
 8003554:	4a0b      	ldr	r2, [pc, #44]	; (8003584 <raddr_conf+0x44>)
 8003556:	8812      	ldrh	r2, [r2, #0]
 8003558:	b292      	uxth	r2, r2
 800355a:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 800355e:	b292      	uxth	r2, r2
 8003560:	801a      	strh	r2, [r3, #0]
 8003562:	4b08      	ldr	r3, [pc, #32]	; (8003584 <raddr_conf+0x44>)
 8003564:	4a07      	ldr	r2, [pc, #28]	; (8003584 <raddr_conf+0x44>)
 8003566:	8812      	ldrh	r2, [r2, #0]
 8003568:	b292      	uxth	r2, r2
 800356a:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 800356e:	b292      	uxth	r2, r2
 8003570:	801a      	strh	r2, [r3, #0]
 8003572:	4b04      	ldr	r3, [pc, #16]	; (8003584 <raddr_conf+0x44>)
 8003574:	8b1b      	ldrh	r3, [r3, #24]
 8003576:	4b04      	ldr	r3, [pc, #16]	; (8003588 <raddr_conf+0x48>)
 8003578:	4a04      	ldr	r2, [pc, #16]	; (800358c <raddr_conf+0x4c>)
 800357a:	601a      	str	r2, [r3, #0]
 800357c:	46bd      	mov	sp, r7
 800357e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003582:	4770      	bx	lr
 8003584:	40005400 	.word	0x40005400
 8003588:	20003604 	.word	0x20003604
 800358c:	080034ed 	.word	0x080034ed

08003590 <rsb_conf>:
 8003590:	b480      	push	{r7}
 8003592:	af00      	add	r7, sp, #0
 8003594:	4b0a      	ldr	r3, [pc, #40]	; (80035c0 <rsb_conf+0x30>)
 8003596:	8a9b      	ldrh	r3, [r3, #20]
 8003598:	b29b      	uxth	r3, r3
 800359a:	f003 0301 	and.w	r3, r3, #1
 800359e:	2b00      	cmp	r3, #0
 80035a0:	d009      	beq.n	80035b6 <rsb_conf+0x26>
 80035a2:	4b07      	ldr	r3, [pc, #28]	; (80035c0 <rsb_conf+0x30>)
 80035a4:	4a07      	ldr	r2, [pc, #28]	; (80035c4 <rsb_conf+0x34>)
 80035a6:	7812      	ldrb	r2, [r2, #0]
 80035a8:	f042 0201 	orr.w	r2, r2, #1
 80035ac:	b2d2      	uxtb	r2, r2
 80035ae:	821a      	strh	r2, [r3, #16]
 80035b0:	4b05      	ldr	r3, [pc, #20]	; (80035c8 <rsb_conf+0x38>)
 80035b2:	4a06      	ldr	r2, [pc, #24]	; (80035cc <rsb_conf+0x3c>)
 80035b4:	601a      	str	r2, [r3, #0]
 80035b6:	46bd      	mov	sp, r7
 80035b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80035bc:	4770      	bx	lr
 80035be:	bf00      	nop
 80035c0:	40005400 	.word	0x40005400
 80035c4:	20000220 	.word	0x20000220
 80035c8:	20003604 	.word	0x20003604
 80035cc:	08003541 	.word	0x08003541

080035d0 <pntr_tx_end>:
 80035d0:	b480      	push	{r7}
 80035d2:	af00      	add	r7, sp, #0
 80035d4:	4b0a      	ldr	r3, [pc, #40]	; (8003600 <pntr_tx_end+0x30>)
 80035d6:	8a9b      	ldrh	r3, [r3, #20]
 80035d8:	b29b      	uxth	r3, r3
 80035da:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80035de:	2b00      	cmp	r3, #0
 80035e0:	d00a      	beq.n	80035f8 <pntr_tx_end+0x28>
 80035e2:	4b07      	ldr	r3, [pc, #28]	; (8003600 <pntr_tx_end+0x30>)
 80035e4:	4a06      	ldr	r2, [pc, #24]	; (8003600 <pntr_tx_end+0x30>)
 80035e6:	8812      	ldrh	r2, [r2, #0]
 80035e8:	b292      	uxth	r2, r2
 80035ea:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80035ee:	b292      	uxth	r2, r2
 80035f0:	801a      	strh	r2, [r3, #0]
 80035f2:	4b04      	ldr	r3, [pc, #16]	; (8003604 <pntr_tx_end+0x34>)
 80035f4:	4a04      	ldr	r2, [pc, #16]	; (8003608 <pntr_tx_end+0x38>)
 80035f6:	601a      	str	r2, [r3, #0]
 80035f8:	46bd      	mov	sp, r7
 80035fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80035fe:	4770      	bx	lr
 8003600:	40005400 	.word	0x40005400
 8003604:	20003604 	.word	0x20003604
 8003608:	08003591 	.word	0x08003591

0800360c <wadr_conf>:
 800360c:	b480      	push	{r7}
 800360e:	af00      	add	r7, sp, #0
 8003610:	4b09      	ldr	r3, [pc, #36]	; (8003638 <wadr_conf+0x2c>)
 8003612:	8a9b      	ldrh	r3, [r3, #20]
 8003614:	b29b      	uxth	r3, r3
 8003616:	f003 0302 	and.w	r3, r3, #2
 800361a:	2b00      	cmp	r3, #0
 800361c:	d007      	beq.n	800362e <wadr_conf+0x22>
 800361e:	4b06      	ldr	r3, [pc, #24]	; (8003638 <wadr_conf+0x2c>)
 8003620:	8b1b      	ldrh	r3, [r3, #24]
 8003622:	4b05      	ldr	r3, [pc, #20]	; (8003638 <wadr_conf+0x2c>)
 8003624:	2200      	movs	r2, #0
 8003626:	821a      	strh	r2, [r3, #16]
 8003628:	4b04      	ldr	r3, [pc, #16]	; (800363c <wadr_conf+0x30>)
 800362a:	4a05      	ldr	r2, [pc, #20]	; (8003640 <wadr_conf+0x34>)
 800362c:	601a      	str	r2, [r3, #0]
 800362e:	46bd      	mov	sp, r7
 8003630:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003634:	4770      	bx	lr
 8003636:	bf00      	nop
 8003638:	40005400 	.word	0x40005400
 800363c:	20003604 	.word	0x20003604
 8003640:	080035d1 	.word	0x080035d1

08003644 <sb_conf>:
 8003644:	b480      	push	{r7}
 8003646:	af00      	add	r7, sp, #0
 8003648:	4b08      	ldr	r3, [pc, #32]	; (800366c <sb_conf+0x28>)
 800364a:	8a9b      	ldrh	r3, [r3, #20]
 800364c:	b29b      	uxth	r3, r3
 800364e:	f003 0301 	and.w	r3, r3, #1
 8003652:	2b00      	cmp	r3, #0
 8003654:	d006      	beq.n	8003664 <sb_conf+0x20>
 8003656:	4b05      	ldr	r3, [pc, #20]	; (800366c <sb_conf+0x28>)
 8003658:	4a05      	ldr	r2, [pc, #20]	; (8003670 <sb_conf+0x2c>)
 800365a:	7812      	ldrb	r2, [r2, #0]
 800365c:	821a      	strh	r2, [r3, #16]
 800365e:	4b05      	ldr	r3, [pc, #20]	; (8003674 <sb_conf+0x30>)
 8003660:	4a05      	ldr	r2, [pc, #20]	; (8003678 <sb_conf+0x34>)
 8003662:	601a      	str	r2, [r3, #0]
 8003664:	46bd      	mov	sp, r7
 8003666:	f85d 7b04 	ldr.w	r7, [sp], #4
 800366a:	4770      	bx	lr
 800366c:	40005400 	.word	0x40005400
 8003670:	20000220 	.word	0x20000220
 8003674:	20003604 	.word	0x20003604
 8003678:	0800360d 	.word	0x0800360d

0800367c <i2c_start>:
 800367c:	b480      	push	{r7}
 800367e:	b083      	sub	sp, #12
 8003680:	af00      	add	r7, sp, #0
 8003682:	4603      	mov	r3, r0
 8003684:	71fb      	strb	r3, [r7, #7]
 8003686:	4b0c      	ldr	r3, [pc, #48]	; (80036b8 <i2c_start+0x3c>)
 8003688:	79fa      	ldrb	r2, [r7, #7]
 800368a:	701a      	strb	r2, [r3, #0]
 800368c:	4b0b      	ldr	r3, [pc, #44]	; (80036bc <i2c_start+0x40>)
 800368e:	4a0c      	ldr	r2, [pc, #48]	; (80036c0 <i2c_start+0x44>)
 8003690:	601a      	str	r2, [r3, #0]
 8003692:	4b0c      	ldr	r3, [pc, #48]	; (80036c4 <i2c_start+0x48>)
 8003694:	4a0b      	ldr	r2, [pc, #44]	; (80036c4 <i2c_start+0x48>)
 8003696:	8812      	ldrh	r2, [r2, #0]
 8003698:	b292      	uxth	r2, r2
 800369a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800369e:	b292      	uxth	r2, r2
 80036a0:	801a      	strh	r2, [r3, #0]
 80036a2:	4b09      	ldr	r3, [pc, #36]	; (80036c8 <i2c_start+0x4c>)
 80036a4:	681b      	ldr	r3, [r3, #0]
 80036a6:	1c5a      	adds	r2, r3, #1
 80036a8:	4b07      	ldr	r3, [pc, #28]	; (80036c8 <i2c_start+0x4c>)
 80036aa:	601a      	str	r2, [r3, #0]
 80036ac:	370c      	adds	r7, #12
 80036ae:	46bd      	mov	sp, r7
 80036b0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80036b4:	4770      	bx	lr
 80036b6:	bf00      	nop
 80036b8:	20000220 	.word	0x20000220
 80036bc:	20003604 	.word	0x20003604
 80036c0:	08003645 	.word	0x08003645
 80036c4:	40005400 	.word	0x40005400
 80036c8:	20003608 	.word	0x20003608

080036cc <update_attenuator>:
 80036cc:	b480      	push	{r7}
 80036ce:	b083      	sub	sp, #12
 80036d0:	af00      	add	r7, sp, #0
 80036d2:	4b22      	ldr	r3, [pc, #136]	; (800375c <update_attenuator+0x90>)
 80036d4:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80036d6:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 80036da:	330f      	adds	r3, #15
 80036dc:	607b      	str	r3, [r7, #4]
 80036de:	687a      	ldr	r2, [r7, #4]
 80036e0:	f240 53db 	movw	r3, #1499	; 0x5db
 80036e4:	429a      	cmp	r2, r3
 80036e6:	d807      	bhi.n	80036f8 <update_attenuator+0x2c>
 80036e8:	4b1d      	ldr	r3, [pc, #116]	; (8003760 <update_attenuator+0x94>)
 80036ea:	681b      	ldr	r3, [r3, #0]
 80036ec:	1c59      	adds	r1, r3, #1
 80036ee:	4a1c      	ldr	r2, [pc, #112]	; (8003760 <update_attenuator+0x94>)
 80036f0:	6011      	str	r1, [r2, #0]
 80036f2:	2b00      	cmp	r3, #0
 80036f4:	d000      	beq.n	80036f8 <update_attenuator+0x2c>
 80036f6:	bf00      	nop
 80036f8:	687b      	ldr	r3, [r7, #4]
 80036fa:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 80036fe:	d907      	bls.n	8003710 <update_attenuator+0x44>
 8003700:	4b17      	ldr	r3, [pc, #92]	; (8003760 <update_attenuator+0x94>)
 8003702:	681b      	ldr	r3, [r3, #0]
 8003704:	1e59      	subs	r1, r3, #1
 8003706:	4a16      	ldr	r2, [pc, #88]	; (8003760 <update_attenuator+0x94>)
 8003708:	6011      	str	r1, [r2, #0]
 800370a:	2b00      	cmp	r3, #0
 800370c:	d000      	beq.n	8003710 <update_attenuator+0x44>
 800370e:	bf00      	nop
 8003710:	4b13      	ldr	r3, [pc, #76]	; (8003760 <update_attenuator+0x94>)
 8003712:	681b      	ldr	r3, [r3, #0]
 8003714:	2b0a      	cmp	r3, #10
 8003716:	dd03      	ble.n	8003720 <update_attenuator+0x54>
 8003718:	4b11      	ldr	r3, [pc, #68]	; (8003760 <update_attenuator+0x94>)
 800371a:	220a      	movs	r2, #10
 800371c:	601a      	str	r2, [r3, #0]
 800371e:	bf00      	nop
 8003720:	4b0f      	ldr	r3, [pc, #60]	; (8003760 <update_attenuator+0x94>)
 8003722:	681b      	ldr	r3, [r3, #0]
 8003724:	2b00      	cmp	r3, #0
 8003726:	da02      	bge.n	800372e <update_attenuator+0x62>
 8003728:	4b0d      	ldr	r3, [pc, #52]	; (8003760 <update_attenuator+0x94>)
 800372a:	2200      	movs	r2, #0
 800372c:	601a      	str	r2, [r3, #0]
 800372e:	4b0d      	ldr	r3, [pc, #52]	; (8003764 <update_attenuator+0x98>)
 8003730:	695b      	ldr	r3, [r3, #20]
 8003732:	b29b      	uxth	r3, r3
 8003734:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8003738:	807b      	strh	r3, [r7, #2]
 800373a:	4b09      	ldr	r3, [pc, #36]	; (8003760 <update_attenuator+0x94>)
 800373c:	681b      	ldr	r3, [r3, #0]
 800373e:	b29b      	uxth	r3, r3
 8003740:	b2db      	uxtb	r3, r3
 8003742:	b29a      	uxth	r2, r3
 8003744:	887b      	ldrh	r3, [r7, #2]
 8003746:	4313      	orrs	r3, r2
 8003748:	b29b      	uxth	r3, r3
 800374a:	807b      	strh	r3, [r7, #2]
 800374c:	4b05      	ldr	r3, [pc, #20]	; (8003764 <update_attenuator+0x98>)
 800374e:	887a      	ldrh	r2, [r7, #2]
 8003750:	615a      	str	r2, [r3, #20]
 8003752:	370c      	adds	r7, #12
 8003754:	46bd      	mov	sp, r7
 8003756:	f85d 7b04 	ldr.w	r7, [sp], #4
 800375a:	4770      	bx	lr
 800375c:	40012200 	.word	0x40012200
 8003760:	2000360c 	.word	0x2000360c
 8003764:	40020c00 	.word	0x40020c00

08003768 <set_attenuator>:
 8003768:	b480      	push	{r7}
 800376a:	b085      	sub	sp, #20
 800376c:	af00      	add	r7, sp, #0
 800376e:	4603      	mov	r3, r0
 8003770:	80fb      	strh	r3, [r7, #6]
 8003772:	4b0b      	ldr	r3, [pc, #44]	; (80037a0 <set_attenuator+0x38>)
 8003774:	695b      	ldr	r3, [r3, #20]
 8003776:	b29b      	uxth	r3, r3
 8003778:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 800377c:	81fb      	strh	r3, [r7, #14]
 800377e:	88fb      	ldrh	r3, [r7, #6]
 8003780:	b2db      	uxtb	r3, r3
 8003782:	b29a      	uxth	r2, r3
 8003784:	89fb      	ldrh	r3, [r7, #14]
 8003786:	4313      	orrs	r3, r2
 8003788:	81fb      	strh	r3, [r7, #14]
 800378a:	4b05      	ldr	r3, [pc, #20]	; (80037a0 <set_attenuator+0x38>)
 800378c:	89fa      	ldrh	r2, [r7, #14]
 800378e:	615a      	str	r2, [r3, #20]
 8003790:	88fa      	ldrh	r2, [r7, #6]
 8003792:	4b04      	ldr	r3, [pc, #16]	; (80037a4 <set_attenuator+0x3c>)
 8003794:	601a      	str	r2, [r3, #0]
 8003796:	3714      	adds	r7, #20
 8003798:	46bd      	mov	sp, r7
 800379a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800379e:	4770      	bx	lr
 80037a0:	40020c00 	.word	0x40020c00
 80037a4:	2000360c 	.word	0x2000360c

080037a8 <_exit>:
 80037a8:	b580      	push	{r7, lr}
 80037aa:	b082      	sub	sp, #8
 80037ac:	af00      	add	r7, sp, #0
 80037ae:	6078      	str	r0, [r7, #4]
 80037b0:	2001      	movs	r0, #1
 80037b2:	4902      	ldr	r1, [pc, #8]	; (80037bc <_exit+0x14>)
 80037b4:	2204      	movs	r2, #4
 80037b6:	f000 f927 	bl	8003a08 <_write>
 80037ba:	e7fe      	b.n	80037ba <_exit+0x12>
 80037bc:	0800b59c 	.word	0x0800b59c

080037c0 <_close>:
 80037c0:	b480      	push	{r7}
 80037c2:	b083      	sub	sp, #12
 80037c4:	af00      	add	r7, sp, #0
 80037c6:	6078      	str	r0, [r7, #4]
 80037c8:	f04f 33ff 	mov.w	r3, #4294967295
 80037cc:	4618      	mov	r0, r3
 80037ce:	370c      	adds	r7, #12
 80037d0:	46bd      	mov	sp, r7
 80037d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80037d6:	4770      	bx	lr

080037d8 <_execve>:
 80037d8:	b480      	push	{r7}
 80037da:	b085      	sub	sp, #20
 80037dc:	af00      	add	r7, sp, #0
 80037de:	60f8      	str	r0, [r7, #12]
 80037e0:	60b9      	str	r1, [r7, #8]
 80037e2:	607a      	str	r2, [r7, #4]
 80037e4:	4b05      	ldr	r3, [pc, #20]	; (80037fc <_execve+0x24>)
 80037e6:	220c      	movs	r2, #12
 80037e8:	601a      	str	r2, [r3, #0]
 80037ea:	f04f 33ff 	mov.w	r3, #4294967295
 80037ee:	4618      	mov	r0, r3
 80037f0:	3714      	adds	r7, #20
 80037f2:	46bd      	mov	sp, r7
 80037f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80037f8:	4770      	bx	lr
 80037fa:	bf00      	nop
 80037fc:	20003658 	.word	0x20003658

08003800 <_fork>:
 8003800:	b480      	push	{r7}
 8003802:	af00      	add	r7, sp, #0
 8003804:	4b04      	ldr	r3, [pc, #16]	; (8003818 <_fork+0x18>)
 8003806:	220b      	movs	r2, #11
 8003808:	601a      	str	r2, [r3, #0]
 800380a:	f04f 33ff 	mov.w	r3, #4294967295
 800380e:	4618      	mov	r0, r3
 8003810:	46bd      	mov	sp, r7
 8003812:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003816:	4770      	bx	lr
 8003818:	20003658 	.word	0x20003658

0800381c <_fstat>:
 800381c:	b480      	push	{r7}
 800381e:	b083      	sub	sp, #12
 8003820:	af00      	add	r7, sp, #0
 8003822:	6078      	str	r0, [r7, #4]
 8003824:	6039      	str	r1, [r7, #0]
 8003826:	683b      	ldr	r3, [r7, #0]
 8003828:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800382c:	605a      	str	r2, [r3, #4]
 800382e:	2300      	movs	r3, #0
 8003830:	4618      	mov	r0, r3
 8003832:	370c      	adds	r7, #12
 8003834:	46bd      	mov	sp, r7
 8003836:	f85d 7b04 	ldr.w	r7, [sp], #4
 800383a:	4770      	bx	lr

0800383c <_getpid>:
 800383c:	b480      	push	{r7}
 800383e:	af00      	add	r7, sp, #0
 8003840:	2301      	movs	r3, #1
 8003842:	4618      	mov	r0, r3
 8003844:	46bd      	mov	sp, r7
 8003846:	f85d 7b04 	ldr.w	r7, [sp], #4
 800384a:	4770      	bx	lr

0800384c <_isatty>:
 800384c:	b480      	push	{r7}
 800384e:	b083      	sub	sp, #12
 8003850:	af00      	add	r7, sp, #0
 8003852:	6078      	str	r0, [r7, #4]
 8003854:	687b      	ldr	r3, [r7, #4]
 8003856:	3300      	adds	r3, #0
 8003858:	2b02      	cmp	r3, #2
 800385a:	d801      	bhi.n	8003860 <_isatty+0x14>
 800385c:	2301      	movs	r3, #1
 800385e:	e003      	b.n	8003868 <_isatty+0x1c>
 8003860:	4b04      	ldr	r3, [pc, #16]	; (8003874 <_isatty+0x28>)
 8003862:	2209      	movs	r2, #9
 8003864:	601a      	str	r2, [r3, #0]
 8003866:	2300      	movs	r3, #0
 8003868:	4618      	mov	r0, r3
 800386a:	370c      	adds	r7, #12
 800386c:	46bd      	mov	sp, r7
 800386e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003872:	4770      	bx	lr
 8003874:	20003658 	.word	0x20003658

08003878 <_kill>:
 8003878:	b480      	push	{r7}
 800387a:	b083      	sub	sp, #12
 800387c:	af00      	add	r7, sp, #0
 800387e:	6078      	str	r0, [r7, #4]
 8003880:	6039      	str	r1, [r7, #0]
 8003882:	4b05      	ldr	r3, [pc, #20]	; (8003898 <_kill+0x20>)
 8003884:	2216      	movs	r2, #22
 8003886:	601a      	str	r2, [r3, #0]
 8003888:	f04f 33ff 	mov.w	r3, #4294967295
 800388c:	4618      	mov	r0, r3
 800388e:	370c      	adds	r7, #12
 8003890:	46bd      	mov	sp, r7
 8003892:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003896:	4770      	bx	lr
 8003898:	20003658 	.word	0x20003658

0800389c <_link>:
 800389c:	b480      	push	{r7}
 800389e:	b083      	sub	sp, #12
 80038a0:	af00      	add	r7, sp, #0
 80038a2:	6078      	str	r0, [r7, #4]
 80038a4:	6039      	str	r1, [r7, #0]
 80038a6:	4b05      	ldr	r3, [pc, #20]	; (80038bc <_link+0x20>)
 80038a8:	221f      	movs	r2, #31
 80038aa:	601a      	str	r2, [r3, #0]
 80038ac:	f04f 33ff 	mov.w	r3, #4294967295
 80038b0:	4618      	mov	r0, r3
 80038b2:	370c      	adds	r7, #12
 80038b4:	46bd      	mov	sp, r7
 80038b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038ba:	4770      	bx	lr
 80038bc:	20003658 	.word	0x20003658

080038c0 <_lseek>:
 80038c0:	b480      	push	{r7}
 80038c2:	b085      	sub	sp, #20
 80038c4:	af00      	add	r7, sp, #0
 80038c6:	60f8      	str	r0, [r7, #12]
 80038c8:	60b9      	str	r1, [r7, #8]
 80038ca:	607a      	str	r2, [r7, #4]
 80038cc:	2300      	movs	r3, #0
 80038ce:	4618      	mov	r0, r3
 80038d0:	3714      	adds	r7, #20
 80038d2:	46bd      	mov	sp, r7
 80038d4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038d8:	4770      	bx	lr
 80038da:	bf00      	nop

080038dc <_sbrk>:
 80038dc:	b590      	push	{r4, r7, lr}
 80038de:	b085      	sub	sp, #20
 80038e0:	af00      	add	r7, sp, #0
 80038e2:	6078      	str	r0, [r7, #4]
 80038e4:	4b15      	ldr	r3, [pc, #84]	; (800393c <_sbrk+0x60>)
 80038e6:	681b      	ldr	r3, [r3, #0]
 80038e8:	2b00      	cmp	r3, #0
 80038ea:	d102      	bne.n	80038f2 <_sbrk+0x16>
 80038ec:	4b13      	ldr	r3, [pc, #76]	; (800393c <_sbrk+0x60>)
 80038ee:	4a14      	ldr	r2, [pc, #80]	; (8003940 <_sbrk+0x64>)
 80038f0:	601a      	str	r2, [r3, #0]
 80038f2:	4b12      	ldr	r3, [pc, #72]	; (800393c <_sbrk+0x60>)
 80038f4:	681b      	ldr	r3, [r3, #0]
 80038f6:	60fb      	str	r3, [r7, #12]
 80038f8:	f3ef 8308 	mrs	r3, MSP
 80038fc:	461c      	mov	r4, r3
 80038fe:	4623      	mov	r3, r4
 8003900:	60bb      	str	r3, [r7, #8]
 8003902:	4b0e      	ldr	r3, [pc, #56]	; (800393c <_sbrk+0x60>)
 8003904:	681a      	ldr	r2, [r3, #0]
 8003906:	687b      	ldr	r3, [r7, #4]
 8003908:	441a      	add	r2, r3
 800390a:	68bb      	ldr	r3, [r7, #8]
 800390c:	429a      	cmp	r2, r3
 800390e:	d90a      	bls.n	8003926 <_sbrk+0x4a>
 8003910:	2002      	movs	r0, #2
 8003912:	490c      	ldr	r1, [pc, #48]	; (8003944 <_sbrk+0x68>)
 8003914:	2219      	movs	r2, #25
 8003916:	f000 f877 	bl	8003a08 <_write>
 800391a:	4b0b      	ldr	r3, [pc, #44]	; (8003948 <_sbrk+0x6c>)
 800391c:	220c      	movs	r2, #12
 800391e:	601a      	str	r2, [r3, #0]
 8003920:	f04f 33ff 	mov.w	r3, #4294967295
 8003924:	e006      	b.n	8003934 <_sbrk+0x58>
 8003926:	4b05      	ldr	r3, [pc, #20]	; (800393c <_sbrk+0x60>)
 8003928:	681a      	ldr	r2, [r3, #0]
 800392a:	687b      	ldr	r3, [r7, #4]
 800392c:	441a      	add	r2, r3
 800392e:	4b03      	ldr	r3, [pc, #12]	; (800393c <_sbrk+0x60>)
 8003930:	601a      	str	r2, [r3, #0]
 8003932:	68fb      	ldr	r3, [r7, #12]
 8003934:	4618      	mov	r0, r3
 8003936:	3714      	adds	r7, #20
 8003938:	46bd      	mov	sp, r7
 800393a:	bd90      	pop	{r4, r7, pc}
 800393c:	20003614 	.word	0x20003614
 8003940:	2000365c 	.word	0x2000365c
 8003944:	0800b5a4 	.word	0x0800b5a4
 8003948:	20003658 	.word	0x20003658

0800394c <_read>:
 800394c:	b580      	push	{r7, lr}
 800394e:	b086      	sub	sp, #24
 8003950:	af00      	add	r7, sp, #0
 8003952:	60f8      	str	r0, [r7, #12]
 8003954:	60b9      	str	r1, [r7, #8]
 8003956:	607a      	str	r2, [r7, #4]
 8003958:	2300      	movs	r3, #0
 800395a:	617b      	str	r3, [r7, #20]
 800395c:	68fb      	ldr	r3, [r7, #12]
 800395e:	2b00      	cmp	r3, #0
 8003960:	d107      	bne.n	8003972 <_read+0x26>
 8003962:	68b8      	ldr	r0, [r7, #8]
 8003964:	6879      	ldr	r1, [r7, #4]
 8003966:	f7fd f90b 	bl	8000b80 <uart_read>
 800396a:	6178      	str	r0, [r7, #20]
 800396c:	bf00      	nop
 800396e:	697b      	ldr	r3, [r7, #20]
 8003970:	e004      	b.n	800397c <_read+0x30>
 8003972:	4b04      	ldr	r3, [pc, #16]	; (8003984 <_read+0x38>)
 8003974:	2209      	movs	r2, #9
 8003976:	601a      	str	r2, [r3, #0]
 8003978:	f04f 33ff 	mov.w	r3, #4294967295
 800397c:	4618      	mov	r0, r3
 800397e:	3718      	adds	r7, #24
 8003980:	46bd      	mov	sp, r7
 8003982:	bd80      	pop	{r7, pc}
 8003984:	20003658 	.word	0x20003658

08003988 <_stat>:
 8003988:	b480      	push	{r7}
 800398a:	b083      	sub	sp, #12
 800398c:	af00      	add	r7, sp, #0
 800398e:	6078      	str	r0, [r7, #4]
 8003990:	6039      	str	r1, [r7, #0]
 8003992:	683b      	ldr	r3, [r7, #0]
 8003994:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8003998:	605a      	str	r2, [r3, #4]
 800399a:	2300      	movs	r3, #0
 800399c:	4618      	mov	r0, r3
 800399e:	370c      	adds	r7, #12
 80039a0:	46bd      	mov	sp, r7
 80039a2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80039a6:	4770      	bx	lr

080039a8 <_times>:
 80039a8:	b480      	push	{r7}
 80039aa:	b083      	sub	sp, #12
 80039ac:	af00      	add	r7, sp, #0
 80039ae:	6078      	str	r0, [r7, #4]
 80039b0:	f04f 33ff 	mov.w	r3, #4294967295
 80039b4:	4618      	mov	r0, r3
 80039b6:	370c      	adds	r7, #12
 80039b8:	46bd      	mov	sp, r7
 80039ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80039be:	4770      	bx	lr

080039c0 <_unlink>:
 80039c0:	b480      	push	{r7}
 80039c2:	b083      	sub	sp, #12
 80039c4:	af00      	add	r7, sp, #0
 80039c6:	6078      	str	r0, [r7, #4]
 80039c8:	4b05      	ldr	r3, [pc, #20]	; (80039e0 <_unlink+0x20>)
 80039ca:	2202      	movs	r2, #2
 80039cc:	601a      	str	r2, [r3, #0]
 80039ce:	f04f 33ff 	mov.w	r3, #4294967295
 80039d2:	4618      	mov	r0, r3
 80039d4:	370c      	adds	r7, #12
 80039d6:	46bd      	mov	sp, r7
 80039d8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80039dc:	4770      	bx	lr
 80039de:	bf00      	nop
 80039e0:	20003658 	.word	0x20003658

080039e4 <_wait>:
 80039e4:	b480      	push	{r7}
 80039e6:	b083      	sub	sp, #12
 80039e8:	af00      	add	r7, sp, #0
 80039ea:	6078      	str	r0, [r7, #4]
 80039ec:	4b05      	ldr	r3, [pc, #20]	; (8003a04 <_wait+0x20>)
 80039ee:	220a      	movs	r2, #10
 80039f0:	601a      	str	r2, [r3, #0]
 80039f2:	f04f 33ff 	mov.w	r3, #4294967295
 80039f6:	4618      	mov	r0, r3
 80039f8:	370c      	adds	r7, #12
 80039fa:	46bd      	mov	sp, r7
 80039fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003a00:	4770      	bx	lr
 8003a02:	bf00      	nop
 8003a04:	20003658 	.word	0x20003658

08003a08 <_write>:
 8003a08:	b580      	push	{r7, lr}
 8003a0a:	b086      	sub	sp, #24
 8003a0c:	af00      	add	r7, sp, #0
 8003a0e:	60f8      	str	r0, [r7, #12]
 8003a10:	60b9      	str	r1, [r7, #8]
 8003a12:	607a      	str	r2, [r7, #4]
 8003a14:	68fb      	ldr	r3, [r7, #12]
 8003a16:	2b01      	cmp	r3, #1
 8003a18:	d002      	beq.n	8003a20 <_write+0x18>
 8003a1a:	2b02      	cmp	r3, #2
 8003a1c:	d012      	beq.n	8003a44 <_write+0x3c>
 8003a1e:	e023      	b.n	8003a68 <_write+0x60>
 8003a20:	2300      	movs	r3, #0
 8003a22:	617b      	str	r3, [r7, #20]
 8003a24:	e009      	b.n	8003a3a <_write+0x32>
 8003a26:	68bb      	ldr	r3, [r7, #8]
 8003a28:	1c5a      	adds	r2, r3, #1
 8003a2a:	60ba      	str	r2, [r7, #8]
 8003a2c:	781b      	ldrb	r3, [r3, #0]
 8003a2e:	4618      	mov	r0, r3
 8003a30:	f7fc ffca 	bl	80009c8 <uart_putch>
 8003a34:	697b      	ldr	r3, [r7, #20]
 8003a36:	3301      	adds	r3, #1
 8003a38:	617b      	str	r3, [r7, #20]
 8003a3a:	697a      	ldr	r2, [r7, #20]
 8003a3c:	687b      	ldr	r3, [r7, #4]
 8003a3e:	429a      	cmp	r2, r3
 8003a40:	dbf1      	blt.n	8003a26 <_write+0x1e>
 8003a42:	e017      	b.n	8003a74 <_write+0x6c>
 8003a44:	2300      	movs	r3, #0
 8003a46:	617b      	str	r3, [r7, #20]
 8003a48:	e009      	b.n	8003a5e <_write+0x56>
 8003a4a:	68bb      	ldr	r3, [r7, #8]
 8003a4c:	1c5a      	adds	r2, r3, #1
 8003a4e:	60ba      	str	r2, [r7, #8]
 8003a50:	781b      	ldrb	r3, [r3, #0]
 8003a52:	4618      	mov	r0, r3
 8003a54:	f7fc ffb8 	bl	80009c8 <uart_putch>
 8003a58:	697b      	ldr	r3, [r7, #20]
 8003a5a:	3301      	adds	r3, #1
 8003a5c:	617b      	str	r3, [r7, #20]
 8003a5e:	697a      	ldr	r2, [r7, #20]
 8003a60:	687b      	ldr	r3, [r7, #4]
 8003a62:	429a      	cmp	r2, r3
 8003a64:	dbf1      	blt.n	8003a4a <_write+0x42>
 8003a66:	e005      	b.n	8003a74 <_write+0x6c>
 8003a68:	4b05      	ldr	r3, [pc, #20]	; (8003a80 <_write+0x78>)
 8003a6a:	2209      	movs	r2, #9
 8003a6c:	601a      	str	r2, [r3, #0]
 8003a6e:	f04f 33ff 	mov.w	r3, #4294967295
 8003a72:	e000      	b.n	8003a76 <_write+0x6e>
 8003a74:	687b      	ldr	r3, [r7, #4]
 8003a76:	4618      	mov	r0, r3
 8003a78:	3718      	adds	r7, #24
 8003a7a:	46bd      	mov	sp, r7
 8003a7c:	bd80      	pop	{r7, pc}
 8003a7e:	bf00      	nop
 8003a80:	20003658 	.word	0x20003658

08003a84 <memcpy>:
 8003a84:	4684      	mov	ip, r0
 8003a86:	ea41 0300 	orr.w	r3, r1, r0
 8003a8a:	f013 0303 	ands.w	r3, r3, #3
 8003a8e:	d16d      	bne.n	8003b6c <memcpy+0xe8>
 8003a90:	3a40      	subs	r2, #64	; 0x40
 8003a92:	d341      	bcc.n	8003b18 <memcpy+0x94>
 8003a94:	f851 3b04 	ldr.w	r3, [r1], #4
 8003a98:	f840 3b04 	str.w	r3, [r0], #4
 8003a9c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003aa0:	f840 3b04 	str.w	r3, [r0], #4
 8003aa4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003aa8:	f840 3b04 	str.w	r3, [r0], #4
 8003aac:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ab0:	f840 3b04 	str.w	r3, [r0], #4
 8003ab4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ab8:	f840 3b04 	str.w	r3, [r0], #4
 8003abc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ac0:	f840 3b04 	str.w	r3, [r0], #4
 8003ac4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ac8:	f840 3b04 	str.w	r3, [r0], #4
 8003acc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ad0:	f840 3b04 	str.w	r3, [r0], #4
 8003ad4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ad8:	f840 3b04 	str.w	r3, [r0], #4
 8003adc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ae0:	f840 3b04 	str.w	r3, [r0], #4
 8003ae4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ae8:	f840 3b04 	str.w	r3, [r0], #4
 8003aec:	f851 3b04 	ldr.w	r3, [r1], #4
 8003af0:	f840 3b04 	str.w	r3, [r0], #4
 8003af4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003af8:	f840 3b04 	str.w	r3, [r0], #4
 8003afc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b00:	f840 3b04 	str.w	r3, [r0], #4
 8003b04:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b08:	f840 3b04 	str.w	r3, [r0], #4
 8003b0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b10:	f840 3b04 	str.w	r3, [r0], #4
 8003b14:	3a40      	subs	r2, #64	; 0x40
 8003b16:	d2bd      	bcs.n	8003a94 <memcpy+0x10>
 8003b18:	3230      	adds	r2, #48	; 0x30
 8003b1a:	d311      	bcc.n	8003b40 <memcpy+0xbc>
 8003b1c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b20:	f840 3b04 	str.w	r3, [r0], #4
 8003b24:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b28:	f840 3b04 	str.w	r3, [r0], #4
 8003b2c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b30:	f840 3b04 	str.w	r3, [r0], #4
 8003b34:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b38:	f840 3b04 	str.w	r3, [r0], #4
 8003b3c:	3a10      	subs	r2, #16
 8003b3e:	d2ed      	bcs.n	8003b1c <memcpy+0x98>
 8003b40:	320c      	adds	r2, #12
 8003b42:	d305      	bcc.n	8003b50 <memcpy+0xcc>
 8003b44:	f851 3b04 	ldr.w	r3, [r1], #4
 8003b48:	f840 3b04 	str.w	r3, [r0], #4
 8003b4c:	3a04      	subs	r2, #4
 8003b4e:	d2f9      	bcs.n	8003b44 <memcpy+0xc0>
 8003b50:	3204      	adds	r2, #4
 8003b52:	d008      	beq.n	8003b66 <memcpy+0xe2>
 8003b54:	07d2      	lsls	r2, r2, #31
 8003b56:	bf1c      	itt	ne
 8003b58:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003b5c:	f800 3b01 	strbne.w	r3, [r0], #1
 8003b60:	d301      	bcc.n	8003b66 <memcpy+0xe2>
 8003b62:	880b      	ldrh	r3, [r1, #0]
 8003b64:	8003      	strh	r3, [r0, #0]
 8003b66:	4660      	mov	r0, ip
 8003b68:	4770      	bx	lr
 8003b6a:	bf00      	nop
 8003b6c:	2a08      	cmp	r2, #8
 8003b6e:	d313      	bcc.n	8003b98 <memcpy+0x114>
 8003b70:	078b      	lsls	r3, r1, #30
 8003b72:	d08d      	beq.n	8003a90 <memcpy+0xc>
 8003b74:	f010 0303 	ands.w	r3, r0, #3
 8003b78:	d08a      	beq.n	8003a90 <memcpy+0xc>
 8003b7a:	f1c3 0304 	rsb	r3, r3, #4
 8003b7e:	1ad2      	subs	r2, r2, r3
 8003b80:	07db      	lsls	r3, r3, #31
 8003b82:	bf1c      	itt	ne
 8003b84:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003b88:	f800 3b01 	strbne.w	r3, [r0], #1
 8003b8c:	d380      	bcc.n	8003a90 <memcpy+0xc>
 8003b8e:	f831 3b02 	ldrh.w	r3, [r1], #2
 8003b92:	f820 3b02 	strh.w	r3, [r0], #2
 8003b96:	e77b      	b.n	8003a90 <memcpy+0xc>
 8003b98:	3a04      	subs	r2, #4
 8003b9a:	d3d9      	bcc.n	8003b50 <memcpy+0xcc>
 8003b9c:	3a01      	subs	r2, #1
 8003b9e:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003ba2:	f800 3b01 	strb.w	r3, [r0], #1
 8003ba6:	d2f9      	bcs.n	8003b9c <memcpy+0x118>
 8003ba8:	780b      	ldrb	r3, [r1, #0]
 8003baa:	7003      	strb	r3, [r0, #0]
 8003bac:	784b      	ldrb	r3, [r1, #1]
 8003bae:	7043      	strb	r3, [r0, #1]
 8003bb0:	788b      	ldrb	r3, [r1, #2]
 8003bb2:	7083      	strb	r3, [r0, #2]
 8003bb4:	4660      	mov	r0, ip
 8003bb6:	4770      	bx	lr
	...
 8003bc0:	eba2 0003 	sub.w	r0, r2, r3
 8003bc4:	4770      	bx	lr
 8003bc6:	bf00      	nop

08003bc8 <strcmp>:
 8003bc8:	7802      	ldrb	r2, [r0, #0]
 8003bca:	780b      	ldrb	r3, [r1, #0]
 8003bcc:	2a01      	cmp	r2, #1
 8003bce:	bf28      	it	cs
 8003bd0:	429a      	cmpcs	r2, r3
 8003bd2:	d1f5      	bne.n	8003bc0 <memcpy+0x13c>
 8003bd4:	e96d 4504 	strd	r4, r5, [sp, #-16]!
 8003bd8:	ea40 0401 	orr.w	r4, r0, r1
 8003bdc:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003be0:	f06f 0c00 	mvn.w	ip, #0
 8003be4:	ea4f 7244 	mov.w	r2, r4, lsl #29
 8003be8:	b312      	cbz	r2, 8003c30 <strcmp+0x68>
 8003bea:	ea80 0401 	eor.w	r4, r0, r1
 8003bee:	f014 0f07 	tst.w	r4, #7
 8003bf2:	d16a      	bne.n	8003cca <strcmp+0x102>
 8003bf4:	f000 0407 	and.w	r4, r0, #7
 8003bf8:	f020 0007 	bic.w	r0, r0, #7
 8003bfc:	f004 0503 	and.w	r5, r4, #3
 8003c00:	f021 0107 	bic.w	r1, r1, #7
 8003c04:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8003c08:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 8003c0c:	f014 0f04 	tst.w	r4, #4
 8003c10:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 8003c14:	fa0c f405 	lsl.w	r4, ip, r5
 8003c18:	ea62 0204 	orn	r2, r2, r4
 8003c1c:	ea66 0604 	orn	r6, r6, r4
 8003c20:	d00a      	beq.n	8003c38 <strcmp+0x70>
 8003c22:	ea63 0304 	orn	r3, r3, r4
 8003c26:	4662      	mov	r2, ip
 8003c28:	ea67 0704 	orn	r7, r7, r4
 8003c2c:	4666      	mov	r6, ip
 8003c2e:	e003      	b.n	8003c38 <strcmp+0x70>
 8003c30:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 8003c34:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 8003c38:	fa82 f54c 	uadd8	r5, r2, ip
 8003c3c:	ea82 0406 	eor.w	r4, r2, r6
 8003c40:	faa4 f48c 	sel	r4, r4, ip
 8003c44:	bb6c      	cbnz	r4, 8003ca2 <strcmp+0xda>
 8003c46:	fa83 f54c 	uadd8	r5, r3, ip
 8003c4a:	ea83 0507 	eor.w	r5, r3, r7
 8003c4e:	faa5 f58c 	sel	r5, r5, ip
 8003c52:	b995      	cbnz	r5, 8003c7a <strcmp+0xb2>
 8003c54:	e950 2302 	ldrd	r2, r3, [r0, #-8]
 8003c58:	e951 6702 	ldrd	r6, r7, [r1, #-8]
 8003c5c:	fa82 f54c 	uadd8	r5, r2, ip
 8003c60:	ea82 0406 	eor.w	r4, r2, r6
 8003c64:	faa4 f48c 	sel	r4, r4, ip
 8003c68:	fa83 f54c 	uadd8	r5, r3, ip
 8003c6c:	ea83 0507 	eor.w	r5, r3, r7
 8003c70:	faa5 f58c 	sel	r5, r5, ip
 8003c74:	4325      	orrs	r5, r4
 8003c76:	d0db      	beq.n	8003c30 <strcmp+0x68>
 8003c78:	b99c      	cbnz	r4, 8003ca2 <strcmp+0xda>
 8003c7a:	ba2d      	rev	r5, r5
 8003c7c:	fab5 f485 	clz	r4, r5
 8003c80:	f024 0407 	bic.w	r4, r4, #7
 8003c84:	fa27 f104 	lsr.w	r1, r7, r4
 8003c88:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8003c8c:	fa23 f304 	lsr.w	r3, r3, r4
 8003c90:	f003 00ff 	and.w	r0, r3, #255	; 0xff
 8003c94:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003c98:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003c9c:	eba0 0001 	sub.w	r0, r0, r1
 8003ca0:	4770      	bx	lr
 8003ca2:	ba24      	rev	r4, r4
 8003ca4:	fab4 f484 	clz	r4, r4
 8003ca8:	f024 0407 	bic.w	r4, r4, #7
 8003cac:	fa26 f104 	lsr.w	r1, r6, r4
 8003cb0:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8003cb4:	fa22 f204 	lsr.w	r2, r2, r4
 8003cb8:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8003cbc:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003cc0:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003cc4:	eba0 0001 	sub.w	r0, r0, r1
 8003cc8:	4770      	bx	lr
 8003cca:	f014 0f03 	tst.w	r4, #3
 8003cce:	d13c      	bne.n	8003d4a <strcmp+0x182>
 8003cd0:	f010 0403 	ands.w	r4, r0, #3
 8003cd4:	d128      	bne.n	8003d28 <strcmp+0x160>
 8003cd6:	f850 2b08 	ldr.w	r2, [r0], #8
 8003cda:	f851 3b08 	ldr.w	r3, [r1], #8
 8003cde:	fa82 f54c 	uadd8	r5, r2, ip
 8003ce2:	ea82 0503 	eor.w	r5, r2, r3
 8003ce6:	faa5 f58c 	sel	r5, r5, ip
 8003cea:	b95d      	cbnz	r5, 8003d04 <strcmp+0x13c>
 8003cec:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8003cf0:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8003cf4:	fa82 f54c 	uadd8	r5, r2, ip
 8003cf8:	ea82 0503 	eor.w	r5, r2, r3
 8003cfc:	faa5 f58c 	sel	r5, r5, ip
 8003d00:	2d00      	cmp	r5, #0
 8003d02:	d0e8      	beq.n	8003cd6 <strcmp+0x10e>
 8003d04:	ba2d      	rev	r5, r5
 8003d06:	fab5 f485 	clz	r4, r5
 8003d0a:	f024 0407 	bic.w	r4, r4, #7
 8003d0e:	fa23 f104 	lsr.w	r1, r3, r4
 8003d12:	fa22 f204 	lsr.w	r2, r2, r4
 8003d16:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8003d1a:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003d1e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003d22:	eba0 0001 	sub.w	r0, r0, r1
 8003d26:	4770      	bx	lr
 8003d28:	ea4f 04c4 	mov.w	r4, r4, lsl #3
 8003d2c:	f020 0003 	bic.w	r0, r0, #3
 8003d30:	f850 2b08 	ldr.w	r2, [r0], #8
 8003d34:	f021 0103 	bic.w	r1, r1, #3
 8003d38:	f851 3b08 	ldr.w	r3, [r1], #8
 8003d3c:	fa0c f404 	lsl.w	r4, ip, r4
 8003d40:	ea62 0204 	orn	r2, r2, r4
 8003d44:	ea63 0304 	orn	r3, r3, r4
 8003d48:	e7c9      	b.n	8003cde <strcmp+0x116>
 8003d4a:	f010 0403 	ands.w	r4, r0, #3
 8003d4e:	d01a      	beq.n	8003d86 <strcmp+0x1be>
 8003d50:	eba1 0104 	sub.w	r1, r1, r4
 8003d54:	f020 0003 	bic.w	r0, r0, #3
 8003d58:	07e4      	lsls	r4, r4, #31
 8003d5a:	f850 2b04 	ldr.w	r2, [r0], #4
 8003d5e:	d006      	beq.n	8003d6e <strcmp+0x1a6>
 8003d60:	d20f      	bcs.n	8003d82 <strcmp+0x1ba>
 8003d62:	788b      	ldrb	r3, [r1, #2]
 8003d64:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
 8003d68:	1ae4      	subs	r4, r4, r3
 8003d6a:	d106      	bne.n	8003d7a <strcmp+0x1b2>
 8003d6c:	b12b      	cbz	r3, 8003d7a <strcmp+0x1b2>
 8003d6e:	78cb      	ldrb	r3, [r1, #3]
 8003d70:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
 8003d74:	1ae4      	subs	r4, r4, r3
 8003d76:	d100      	bne.n	8003d7a <strcmp+0x1b2>
 8003d78:	b91b      	cbnz	r3, 8003d82 <strcmp+0x1ba>
 8003d7a:	4620      	mov	r0, r4
 8003d7c:	f85d 4b10 	ldr.w	r4, [sp], #16
 8003d80:	4770      	bx	lr
 8003d82:	f101 0104 	add.w	r1, r1, #4
 8003d86:	f850 2b04 	ldr.w	r2, [r0], #4
 8003d8a:	07cc      	lsls	r4, r1, #31
 8003d8c:	f021 0103 	bic.w	r1, r1, #3
 8003d90:	f851 3b04 	ldr.w	r3, [r1], #4
 8003d94:	d848      	bhi.n	8003e28 <strcmp+0x260>
 8003d96:	d224      	bcs.n	8003de2 <strcmp+0x21a>
 8003d98:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
 8003d9c:	fa82 f54c 	uadd8	r5, r2, ip
 8003da0:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
 8003da4:	faa5 f58c 	sel	r5, r5, ip
 8003da8:	d10a      	bne.n	8003dc0 <strcmp+0x1f8>
 8003daa:	b965      	cbnz	r5, 8003dc6 <strcmp+0x1fe>
 8003dac:	f851 3b04 	ldr.w	r3, [r1], #4
 8003db0:	ea84 0402 	eor.w	r4, r4, r2
 8003db4:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
 8003db8:	d10e      	bne.n	8003dd8 <strcmp+0x210>
 8003dba:	f850 2b04 	ldr.w	r2, [r0], #4
 8003dbe:	e7eb      	b.n	8003d98 <strcmp+0x1d0>
 8003dc0:	ea4f 2313 	mov.w	r3, r3, lsr #8
 8003dc4:	e055      	b.n	8003e72 <strcmp+0x2aa>
 8003dc6:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
 8003dca:	d14d      	bne.n	8003e68 <strcmp+0x2a0>
 8003dcc:	7808      	ldrb	r0, [r1, #0]
 8003dce:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003dd2:	f1c0 0000 	rsb	r0, r0, #0
 8003dd6:	4770      	bx	lr
 8003dd8:	ea4f 6212 	mov.w	r2, r2, lsr #24
 8003ddc:	f003 03ff 	and.w	r3, r3, #255	; 0xff
 8003de0:	e047      	b.n	8003e72 <strcmp+0x2aa>
 8003de2:	ea02 441c 	and.w	r4, r2, ip, lsr #16
 8003de6:	fa82 f54c 	uadd8	r5, r2, ip
 8003dea:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
 8003dee:	faa5 f58c 	sel	r5, r5, ip
 8003df2:	d10a      	bne.n	8003e0a <strcmp+0x242>
 8003df4:	b965      	cbnz	r5, 8003e10 <strcmp+0x248>
 8003df6:	f851 3b04 	ldr.w	r3, [r1], #4
 8003dfa:	ea84 0402 	eor.w	r4, r4, r2
 8003dfe:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
 8003e02:	d10c      	bne.n	8003e1e <strcmp+0x256>
 8003e04:	f850 2b04 	ldr.w	r2, [r0], #4
 8003e08:	e7eb      	b.n	8003de2 <strcmp+0x21a>
 8003e0a:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8003e0e:	e030      	b.n	8003e72 <strcmp+0x2aa>
 8003e10:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
 8003e14:	d128      	bne.n	8003e68 <strcmp+0x2a0>
 8003e16:	880b      	ldrh	r3, [r1, #0]
 8003e18:	ea4f 4212 	mov.w	r2, r2, lsr #16
 8003e1c:	e029      	b.n	8003e72 <strcmp+0x2aa>
 8003e1e:	ea4f 4212 	mov.w	r2, r2, lsr #16
 8003e22:	ea03 431c 	and.w	r3, r3, ip, lsr #16
 8003e26:	e024      	b.n	8003e72 <strcmp+0x2aa>
 8003e28:	f002 04ff 	and.w	r4, r2, #255	; 0xff
 8003e2c:	fa82 f54c 	uadd8	r5, r2, ip
 8003e30:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
 8003e34:	faa5 f58c 	sel	r5, r5, ip
 8003e38:	d10a      	bne.n	8003e50 <strcmp+0x288>
 8003e3a:	b965      	cbnz	r5, 8003e56 <strcmp+0x28e>
 8003e3c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e40:	ea84 0402 	eor.w	r4, r4, r2
 8003e44:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
 8003e48:	d109      	bne.n	8003e5e <strcmp+0x296>
 8003e4a:	f850 2b04 	ldr.w	r2, [r0], #4
 8003e4e:	e7eb      	b.n	8003e28 <strcmp+0x260>
 8003e50:	ea4f 6313 	mov.w	r3, r3, lsr #24
 8003e54:	e00d      	b.n	8003e72 <strcmp+0x2aa>
 8003e56:	f015 0fff 	tst.w	r5, #255	; 0xff
 8003e5a:	d105      	bne.n	8003e68 <strcmp+0x2a0>
 8003e5c:	680b      	ldr	r3, [r1, #0]
 8003e5e:	ea4f 2212 	mov.w	r2, r2, lsr #8
 8003e62:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 8003e66:	e004      	b.n	8003e72 <strcmp+0x2aa>
 8003e68:	f04f 0000 	mov.w	r0, #0
 8003e6c:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003e70:	4770      	bx	lr
 8003e72:	ba12      	rev	r2, r2
 8003e74:	ba1b      	rev	r3, r3
 8003e76:	fa82 f44c 	uadd8	r4, r2, ip
 8003e7a:	ea82 0403 	eor.w	r4, r2, r3
 8003e7e:	faa4 f58c 	sel	r5, r4, ip
 8003e82:	fab5 f485 	clz	r4, r5
 8003e86:	fa02 f204 	lsl.w	r2, r2, r4
 8003e8a:	fa03 f304 	lsl.w	r3, r3, r4
 8003e8e:	ea4f 6012 	mov.w	r0, r2, lsr #24
 8003e92:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003e96:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
 8003e9a:	4770      	bx	lr
 8003e9c:	f3af 8000 	nop.w

08003ea0 <__aeabi_drsub>:
 8003ea0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8003ea4:	e002      	b.n	8003eac <__adddf3>
 8003ea6:	bf00      	nop

08003ea8 <__aeabi_dsub>:
 8003ea8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08003eac <__adddf3>:
 8003eac:	b530      	push	{r4, r5, lr}
 8003eae:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8003eb2:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8003eb6:	ea94 0f05 	teq	r4, r5
 8003eba:	bf08      	it	eq
 8003ebc:	ea90 0f02 	teqeq	r0, r2
 8003ec0:	bf1f      	itttt	ne
 8003ec2:	ea54 0c00 	orrsne.w	ip, r4, r0
 8003ec6:	ea55 0c02 	orrsne.w	ip, r5, r2
 8003eca:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8003ece:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8003ed2:	f000 80e2 	beq.w	800409a <__adddf3+0x1ee>
 8003ed6:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8003eda:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8003ede:	bfb8      	it	lt
 8003ee0:	426d      	neglt	r5, r5
 8003ee2:	dd0c      	ble.n	8003efe <__adddf3+0x52>
 8003ee4:	442c      	add	r4, r5
 8003ee6:	ea80 0202 	eor.w	r2, r0, r2
 8003eea:	ea81 0303 	eor.w	r3, r1, r3
 8003eee:	ea82 0000 	eor.w	r0, r2, r0
 8003ef2:	ea83 0101 	eor.w	r1, r3, r1
 8003ef6:	ea80 0202 	eor.w	r2, r0, r2
 8003efa:	ea81 0303 	eor.w	r3, r1, r3
 8003efe:	2d36      	cmp	r5, #54	; 0x36
 8003f00:	bf88      	it	hi
 8003f02:	bd30      	pophi	{r4, r5, pc}
 8003f04:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8003f08:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8003f0c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8003f10:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8003f14:	d002      	beq.n	8003f1c <__adddf3+0x70>
 8003f16:	4240      	negs	r0, r0
 8003f18:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8003f1c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8003f20:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8003f24:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8003f28:	d002      	beq.n	8003f30 <__adddf3+0x84>
 8003f2a:	4252      	negs	r2, r2
 8003f2c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8003f30:	ea94 0f05 	teq	r4, r5
 8003f34:	f000 80a7 	beq.w	8004086 <__adddf3+0x1da>
 8003f38:	f1a4 0401 	sub.w	r4, r4, #1
 8003f3c:	f1d5 0e20 	rsbs	lr, r5, #32
 8003f40:	db0d      	blt.n	8003f5e <__adddf3+0xb2>
 8003f42:	fa02 fc0e 	lsl.w	ip, r2, lr
 8003f46:	fa22 f205 	lsr.w	r2, r2, r5
 8003f4a:	1880      	adds	r0, r0, r2
 8003f4c:	f141 0100 	adc.w	r1, r1, #0
 8003f50:	fa03 f20e 	lsl.w	r2, r3, lr
 8003f54:	1880      	adds	r0, r0, r2
 8003f56:	fa43 f305 	asr.w	r3, r3, r5
 8003f5a:	4159      	adcs	r1, r3
 8003f5c:	e00e      	b.n	8003f7c <__adddf3+0xd0>
 8003f5e:	f1a5 0520 	sub.w	r5, r5, #32
 8003f62:	f10e 0e20 	add.w	lr, lr, #32
 8003f66:	2a01      	cmp	r2, #1
 8003f68:	fa03 fc0e 	lsl.w	ip, r3, lr
 8003f6c:	bf28      	it	cs
 8003f6e:	f04c 0c02 	orrcs.w	ip, ip, #2
 8003f72:	fa43 f305 	asr.w	r3, r3, r5
 8003f76:	18c0      	adds	r0, r0, r3
 8003f78:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8003f7c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8003f80:	d507      	bpl.n	8003f92 <__adddf3+0xe6>
 8003f82:	f04f 0e00 	mov.w	lr, #0
 8003f86:	f1dc 0c00 	rsbs	ip, ip, #0
 8003f8a:	eb7e 0000 	sbcs.w	r0, lr, r0
 8003f8e:	eb6e 0101 	sbc.w	r1, lr, r1
 8003f92:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8003f96:	d31b      	bcc.n	8003fd0 <__adddf3+0x124>
 8003f98:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8003f9c:	d30c      	bcc.n	8003fb8 <__adddf3+0x10c>
 8003f9e:	0849      	lsrs	r1, r1, #1
 8003fa0:	ea5f 0030 	movs.w	r0, r0, rrx
 8003fa4:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8003fa8:	f104 0401 	add.w	r4, r4, #1
 8003fac:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8003fb0:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8003fb4:	f080 809a 	bcs.w	80040ec <__adddf3+0x240>
 8003fb8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8003fbc:	bf08      	it	eq
 8003fbe:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8003fc2:	f150 0000 	adcs.w	r0, r0, #0
 8003fc6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8003fca:	ea41 0105 	orr.w	r1, r1, r5
 8003fce:	bd30      	pop	{r4, r5, pc}
 8003fd0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8003fd4:	4140      	adcs	r0, r0
 8003fd6:	eb41 0101 	adc.w	r1, r1, r1
 8003fda:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8003fde:	f1a4 0401 	sub.w	r4, r4, #1
 8003fe2:	d1e9      	bne.n	8003fb8 <__adddf3+0x10c>
 8003fe4:	f091 0f00 	teq	r1, #0
 8003fe8:	bf04      	itt	eq
 8003fea:	4601      	moveq	r1, r0
 8003fec:	2000      	moveq	r0, #0
 8003fee:	fab1 f381 	clz	r3, r1
 8003ff2:	bf08      	it	eq
 8003ff4:	3320      	addeq	r3, #32
 8003ff6:	f1a3 030b 	sub.w	r3, r3, #11
 8003ffa:	f1b3 0220 	subs.w	r2, r3, #32
 8003ffe:	da0c      	bge.n	800401a <__adddf3+0x16e>
 8004000:	320c      	adds	r2, #12
 8004002:	dd08      	ble.n	8004016 <__adddf3+0x16a>
 8004004:	f102 0c14 	add.w	ip, r2, #20
 8004008:	f1c2 020c 	rsb	r2, r2, #12
 800400c:	fa01 f00c 	lsl.w	r0, r1, ip
 8004010:	fa21 f102 	lsr.w	r1, r1, r2
 8004014:	e00c      	b.n	8004030 <__adddf3+0x184>
 8004016:	f102 0214 	add.w	r2, r2, #20
 800401a:	bfd8      	it	le
 800401c:	f1c2 0c20 	rsble	ip, r2, #32
 8004020:	fa01 f102 	lsl.w	r1, r1, r2
 8004024:	fa20 fc0c 	lsr.w	ip, r0, ip
 8004028:	bfdc      	itt	le
 800402a:	ea41 010c 	orrle.w	r1, r1, ip
 800402e:	4090      	lslle	r0, r2
 8004030:	1ae4      	subs	r4, r4, r3
 8004032:	bfa2      	ittt	ge
 8004034:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8004038:	4329      	orrge	r1, r5
 800403a:	bd30      	popge	{r4, r5, pc}
 800403c:	ea6f 0404 	mvn.w	r4, r4
 8004040:	3c1f      	subs	r4, #31
 8004042:	da1c      	bge.n	800407e <__adddf3+0x1d2>
 8004044:	340c      	adds	r4, #12
 8004046:	dc0e      	bgt.n	8004066 <__adddf3+0x1ba>
 8004048:	f104 0414 	add.w	r4, r4, #20
 800404c:	f1c4 0220 	rsb	r2, r4, #32
 8004050:	fa20 f004 	lsr.w	r0, r0, r4
 8004054:	fa01 f302 	lsl.w	r3, r1, r2
 8004058:	ea40 0003 	orr.w	r0, r0, r3
 800405c:	fa21 f304 	lsr.w	r3, r1, r4
 8004060:	ea45 0103 	orr.w	r1, r5, r3
 8004064:	bd30      	pop	{r4, r5, pc}
 8004066:	f1c4 040c 	rsb	r4, r4, #12
 800406a:	f1c4 0220 	rsb	r2, r4, #32
 800406e:	fa20 f002 	lsr.w	r0, r0, r2
 8004072:	fa01 f304 	lsl.w	r3, r1, r4
 8004076:	ea40 0003 	orr.w	r0, r0, r3
 800407a:	4629      	mov	r1, r5
 800407c:	bd30      	pop	{r4, r5, pc}
 800407e:	fa21 f004 	lsr.w	r0, r1, r4
 8004082:	4629      	mov	r1, r5
 8004084:	bd30      	pop	{r4, r5, pc}
 8004086:	f094 0f00 	teq	r4, #0
 800408a:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 800408e:	bf06      	itte	eq
 8004090:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8004094:	3401      	addeq	r4, #1
 8004096:	3d01      	subne	r5, #1
 8004098:	e74e      	b.n	8003f38 <__adddf3+0x8c>
 800409a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800409e:	bf18      	it	ne
 80040a0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80040a4:	d029      	beq.n	80040fa <__adddf3+0x24e>
 80040a6:	ea94 0f05 	teq	r4, r5
 80040aa:	bf08      	it	eq
 80040ac:	ea90 0f02 	teqeq	r0, r2
 80040b0:	d005      	beq.n	80040be <__adddf3+0x212>
 80040b2:	ea54 0c00 	orrs.w	ip, r4, r0
 80040b6:	bf04      	itt	eq
 80040b8:	4619      	moveq	r1, r3
 80040ba:	4610      	moveq	r0, r2
 80040bc:	bd30      	pop	{r4, r5, pc}
 80040be:	ea91 0f03 	teq	r1, r3
 80040c2:	bf1e      	ittt	ne
 80040c4:	2100      	movne	r1, #0
 80040c6:	2000      	movne	r0, #0
 80040c8:	bd30      	popne	{r4, r5, pc}
 80040ca:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 80040ce:	d105      	bne.n	80040dc <__adddf3+0x230>
 80040d0:	0040      	lsls	r0, r0, #1
 80040d2:	4149      	adcs	r1, r1
 80040d4:	bf28      	it	cs
 80040d6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 80040da:	bd30      	pop	{r4, r5, pc}
 80040dc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 80040e0:	bf3c      	itt	cc
 80040e2:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 80040e6:	bd30      	popcc	{r4, r5, pc}
 80040e8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80040ec:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 80040f0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80040f4:	f04f 0000 	mov.w	r0, #0
 80040f8:	bd30      	pop	{r4, r5, pc}
 80040fa:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80040fe:	bf1a      	itte	ne
 8004100:	4619      	movne	r1, r3
 8004102:	4610      	movne	r0, r2
 8004104:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8004108:	bf1c      	itt	ne
 800410a:	460b      	movne	r3, r1
 800410c:	4602      	movne	r2, r0
 800410e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8004112:	bf06      	itte	eq
 8004114:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8004118:	ea91 0f03 	teqeq	r1, r3
 800411c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8004120:	bd30      	pop	{r4, r5, pc}
 8004122:	bf00      	nop

08004124 <__aeabi_ui2d>:
 8004124:	f090 0f00 	teq	r0, #0
 8004128:	bf04      	itt	eq
 800412a:	2100      	moveq	r1, #0
 800412c:	4770      	bxeq	lr
 800412e:	b530      	push	{r4, r5, lr}
 8004130:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8004134:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8004138:	f04f 0500 	mov.w	r5, #0
 800413c:	f04f 0100 	mov.w	r1, #0
 8004140:	e750      	b.n	8003fe4 <__adddf3+0x138>
 8004142:	bf00      	nop

08004144 <__aeabi_i2d>:
 8004144:	f090 0f00 	teq	r0, #0
 8004148:	bf04      	itt	eq
 800414a:	2100      	moveq	r1, #0
 800414c:	4770      	bxeq	lr
 800414e:	b530      	push	{r4, r5, lr}
 8004150:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8004154:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8004158:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 800415c:	bf48      	it	mi
 800415e:	4240      	negmi	r0, r0
 8004160:	f04f 0100 	mov.w	r1, #0
 8004164:	e73e      	b.n	8003fe4 <__adddf3+0x138>
 8004166:	bf00      	nop

08004168 <__aeabi_f2d>:
 8004168:	0042      	lsls	r2, r0, #1
 800416a:	ea4f 01e2 	mov.w	r1, r2, asr #3
 800416e:	ea4f 0131 	mov.w	r1, r1, rrx
 8004172:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8004176:	bf1f      	itttt	ne
 8004178:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 800417c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8004180:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8004184:	4770      	bxne	lr
 8004186:	f092 0f00 	teq	r2, #0
 800418a:	bf14      	ite	ne
 800418c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8004190:	4770      	bxeq	lr
 8004192:	b530      	push	{r4, r5, lr}
 8004194:	f44f 7460 	mov.w	r4, #896	; 0x380
 8004198:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 800419c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80041a0:	e720      	b.n	8003fe4 <__adddf3+0x138>
 80041a2:	bf00      	nop

080041a4 <__aeabi_ul2d>:
 80041a4:	ea50 0201 	orrs.w	r2, r0, r1
 80041a8:	bf08      	it	eq
 80041aa:	4770      	bxeq	lr
 80041ac:	b530      	push	{r4, r5, lr}
 80041ae:	f04f 0500 	mov.w	r5, #0
 80041b2:	e00a      	b.n	80041ca <__aeabi_l2d+0x16>

080041b4 <__aeabi_l2d>:
 80041b4:	ea50 0201 	orrs.w	r2, r0, r1
 80041b8:	bf08      	it	eq
 80041ba:	4770      	bxeq	lr
 80041bc:	b530      	push	{r4, r5, lr}
 80041be:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 80041c2:	d502      	bpl.n	80041ca <__aeabi_l2d+0x16>
 80041c4:	4240      	negs	r0, r0
 80041c6:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80041ca:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80041ce:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80041d2:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 80041d6:	f43f aedc 	beq.w	8003f92 <__adddf3+0xe6>
 80041da:	f04f 0203 	mov.w	r2, #3
 80041de:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80041e2:	bf18      	it	ne
 80041e4:	3203      	addne	r2, #3
 80041e6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80041ea:	bf18      	it	ne
 80041ec:	3203      	addne	r2, #3
 80041ee:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 80041f2:	f1c2 0320 	rsb	r3, r2, #32
 80041f6:	fa00 fc03 	lsl.w	ip, r0, r3
 80041fa:	fa20 f002 	lsr.w	r0, r0, r2
 80041fe:	fa01 fe03 	lsl.w	lr, r1, r3
 8004202:	ea40 000e 	orr.w	r0, r0, lr
 8004206:	fa21 f102 	lsr.w	r1, r1, r2
 800420a:	4414      	add	r4, r2
 800420c:	e6c1      	b.n	8003f92 <__adddf3+0xe6>
 800420e:	bf00      	nop

08004210 <__aeabi_dmul>:
 8004210:	b570      	push	{r4, r5, r6, lr}
 8004212:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8004216:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 800421a:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 800421e:	bf1d      	ittte	ne
 8004220:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8004224:	ea94 0f0c 	teqne	r4, ip
 8004228:	ea95 0f0c 	teqne	r5, ip
 800422c:	f000 f8de 	bleq	80043ec <__aeabi_dmul+0x1dc>
 8004230:	442c      	add	r4, r5
 8004232:	ea81 0603 	eor.w	r6, r1, r3
 8004236:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 800423a:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 800423e:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8004242:	bf18      	it	ne
 8004244:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8004248:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800424c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8004250:	d038      	beq.n	80042c4 <__aeabi_dmul+0xb4>
 8004252:	fba0 ce02 	umull	ip, lr, r0, r2
 8004256:	f04f 0500 	mov.w	r5, #0
 800425a:	fbe1 e502 	umlal	lr, r5, r1, r2
 800425e:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8004262:	fbe0 e503 	umlal	lr, r5, r0, r3
 8004266:	f04f 0600 	mov.w	r6, #0
 800426a:	fbe1 5603 	umlal	r5, r6, r1, r3
 800426e:	f09c 0f00 	teq	ip, #0
 8004272:	bf18      	it	ne
 8004274:	f04e 0e01 	orrne.w	lr, lr, #1
 8004278:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 800427c:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8004280:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8004284:	d204      	bcs.n	8004290 <__aeabi_dmul+0x80>
 8004286:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 800428a:	416d      	adcs	r5, r5
 800428c:	eb46 0606 	adc.w	r6, r6, r6
 8004290:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8004294:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8004298:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 800429c:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 80042a0:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 80042a4:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 80042a8:	bf88      	it	hi
 80042aa:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 80042ae:	d81e      	bhi.n	80042ee <__aeabi_dmul+0xde>
 80042b0:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 80042b4:	bf08      	it	eq
 80042b6:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 80042ba:	f150 0000 	adcs.w	r0, r0, #0
 80042be:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80042c2:	bd70      	pop	{r4, r5, r6, pc}
 80042c4:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 80042c8:	ea46 0101 	orr.w	r1, r6, r1
 80042cc:	ea40 0002 	orr.w	r0, r0, r2
 80042d0:	ea81 0103 	eor.w	r1, r1, r3
 80042d4:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 80042d8:	bfc2      	ittt	gt
 80042da:	ebd4 050c 	rsbsgt	r5, r4, ip
 80042de:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 80042e2:	bd70      	popgt	{r4, r5, r6, pc}
 80042e4:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80042e8:	f04f 0e00 	mov.w	lr, #0
 80042ec:	3c01      	subs	r4, #1
 80042ee:	f300 80ab 	bgt.w	8004448 <__aeabi_dmul+0x238>
 80042f2:	f114 0f36 	cmn.w	r4, #54	; 0x36
 80042f6:	bfde      	ittt	le
 80042f8:	2000      	movle	r0, #0
 80042fa:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 80042fe:	bd70      	pople	{r4, r5, r6, pc}
 8004300:	f1c4 0400 	rsb	r4, r4, #0
 8004304:	3c20      	subs	r4, #32
 8004306:	da35      	bge.n	8004374 <__aeabi_dmul+0x164>
 8004308:	340c      	adds	r4, #12
 800430a:	dc1b      	bgt.n	8004344 <__aeabi_dmul+0x134>
 800430c:	f104 0414 	add.w	r4, r4, #20
 8004310:	f1c4 0520 	rsb	r5, r4, #32
 8004314:	fa00 f305 	lsl.w	r3, r0, r5
 8004318:	fa20 f004 	lsr.w	r0, r0, r4
 800431c:	fa01 f205 	lsl.w	r2, r1, r5
 8004320:	ea40 0002 	orr.w	r0, r0, r2
 8004324:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8004328:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800432c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8004330:	fa21 f604 	lsr.w	r6, r1, r4
 8004334:	eb42 0106 	adc.w	r1, r2, r6
 8004338:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 800433c:	bf08      	it	eq
 800433e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8004342:	bd70      	pop	{r4, r5, r6, pc}
 8004344:	f1c4 040c 	rsb	r4, r4, #12
 8004348:	f1c4 0520 	rsb	r5, r4, #32
 800434c:	fa00 f304 	lsl.w	r3, r0, r4
 8004350:	fa20 f005 	lsr.w	r0, r0, r5
 8004354:	fa01 f204 	lsl.w	r2, r1, r4
 8004358:	ea40 0002 	orr.w	r0, r0, r2
 800435c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8004360:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8004364:	f141 0100 	adc.w	r1, r1, #0
 8004368:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 800436c:	bf08      	it	eq
 800436e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8004372:	bd70      	pop	{r4, r5, r6, pc}
 8004374:	f1c4 0520 	rsb	r5, r4, #32
 8004378:	fa00 f205 	lsl.w	r2, r0, r5
 800437c:	ea4e 0e02 	orr.w	lr, lr, r2
 8004380:	fa20 f304 	lsr.w	r3, r0, r4
 8004384:	fa01 f205 	lsl.w	r2, r1, r5
 8004388:	ea43 0302 	orr.w	r3, r3, r2
 800438c:	fa21 f004 	lsr.w	r0, r1, r4
 8004390:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8004394:	fa21 f204 	lsr.w	r2, r1, r4
 8004398:	ea20 0002 	bic.w	r0, r0, r2
 800439c:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 80043a0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80043a4:	bf08      	it	eq
 80043a6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80043aa:	bd70      	pop	{r4, r5, r6, pc}
 80043ac:	f094 0f00 	teq	r4, #0
 80043b0:	d10f      	bne.n	80043d2 <__aeabi_dmul+0x1c2>
 80043b2:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 80043b6:	0040      	lsls	r0, r0, #1
 80043b8:	eb41 0101 	adc.w	r1, r1, r1
 80043bc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80043c0:	bf08      	it	eq
 80043c2:	3c01      	subeq	r4, #1
 80043c4:	d0f7      	beq.n	80043b6 <__aeabi_dmul+0x1a6>
 80043c6:	ea41 0106 	orr.w	r1, r1, r6
 80043ca:	f095 0f00 	teq	r5, #0
 80043ce:	bf18      	it	ne
 80043d0:	4770      	bxne	lr
 80043d2:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 80043d6:	0052      	lsls	r2, r2, #1
 80043d8:	eb43 0303 	adc.w	r3, r3, r3
 80043dc:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 80043e0:	bf08      	it	eq
 80043e2:	3d01      	subeq	r5, #1
 80043e4:	d0f7      	beq.n	80043d6 <__aeabi_dmul+0x1c6>
 80043e6:	ea43 0306 	orr.w	r3, r3, r6
 80043ea:	4770      	bx	lr
 80043ec:	ea94 0f0c 	teq	r4, ip
 80043f0:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 80043f4:	bf18      	it	ne
 80043f6:	ea95 0f0c 	teqne	r5, ip
 80043fa:	d00c      	beq.n	8004416 <__aeabi_dmul+0x206>
 80043fc:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8004400:	bf18      	it	ne
 8004402:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8004406:	d1d1      	bne.n	80043ac <__aeabi_dmul+0x19c>
 8004408:	ea81 0103 	eor.w	r1, r1, r3
 800440c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8004410:	f04f 0000 	mov.w	r0, #0
 8004414:	bd70      	pop	{r4, r5, r6, pc}
 8004416:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800441a:	bf06      	itte	eq
 800441c:	4610      	moveq	r0, r2
 800441e:	4619      	moveq	r1, r3
 8004420:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8004424:	d019      	beq.n	800445a <__aeabi_dmul+0x24a>
 8004426:	ea94 0f0c 	teq	r4, ip
 800442a:	d102      	bne.n	8004432 <__aeabi_dmul+0x222>
 800442c:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8004430:	d113      	bne.n	800445a <__aeabi_dmul+0x24a>
 8004432:	ea95 0f0c 	teq	r5, ip
 8004436:	d105      	bne.n	8004444 <__aeabi_dmul+0x234>
 8004438:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 800443c:	bf1c      	itt	ne
 800443e:	4610      	movne	r0, r2
 8004440:	4619      	movne	r1, r3
 8004442:	d10a      	bne.n	800445a <__aeabi_dmul+0x24a>
 8004444:	ea81 0103 	eor.w	r1, r1, r3
 8004448:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 800444c:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8004450:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8004454:	f04f 0000 	mov.w	r0, #0
 8004458:	bd70      	pop	{r4, r5, r6, pc}
 800445a:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 800445e:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8004462:	bd70      	pop	{r4, r5, r6, pc}

08004464 <__aeabi_ddiv>:
 8004464:	b570      	push	{r4, r5, r6, lr}
 8004466:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800446a:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 800446e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8004472:	bf1d      	ittte	ne
 8004474:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8004478:	ea94 0f0c 	teqne	r4, ip
 800447c:	ea95 0f0c 	teqne	r5, ip
 8004480:	f000 f8a7 	bleq	80045d2 <__aeabi_ddiv+0x16e>
 8004484:	eba4 0405 	sub.w	r4, r4, r5
 8004488:	ea81 0e03 	eor.w	lr, r1, r3
 800448c:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8004490:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8004494:	f000 8088 	beq.w	80045a8 <__aeabi_ddiv+0x144>
 8004498:	ea4f 3303 	mov.w	r3, r3, lsl #12
 800449c:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 80044a0:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 80044a4:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 80044a8:	ea4f 2202 	mov.w	r2, r2, lsl #8
 80044ac:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 80044b0:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 80044b4:	ea4f 2600 	mov.w	r6, r0, lsl #8
 80044b8:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 80044bc:	429d      	cmp	r5, r3
 80044be:	bf08      	it	eq
 80044c0:	4296      	cmpeq	r6, r2
 80044c2:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 80044c6:	f504 7440 	add.w	r4, r4, #768	; 0x300
 80044ca:	d202      	bcs.n	80044d2 <__aeabi_ddiv+0x6e>
 80044cc:	085b      	lsrs	r3, r3, #1
 80044ce:	ea4f 0232 	mov.w	r2, r2, rrx
 80044d2:	1ab6      	subs	r6, r6, r2
 80044d4:	eb65 0503 	sbc.w	r5, r5, r3
 80044d8:	085b      	lsrs	r3, r3, #1
 80044da:	ea4f 0232 	mov.w	r2, r2, rrx
 80044de:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 80044e2:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 80044e6:	ebb6 0e02 	subs.w	lr, r6, r2
 80044ea:	eb75 0e03 	sbcs.w	lr, r5, r3
 80044ee:	bf22      	ittt	cs
 80044f0:	1ab6      	subcs	r6, r6, r2
 80044f2:	4675      	movcs	r5, lr
 80044f4:	ea40 000c 	orrcs.w	r0, r0, ip
 80044f8:	085b      	lsrs	r3, r3, #1
 80044fa:	ea4f 0232 	mov.w	r2, r2, rrx
 80044fe:	ebb6 0e02 	subs.w	lr, r6, r2
 8004502:	eb75 0e03 	sbcs.w	lr, r5, r3
 8004506:	bf22      	ittt	cs
 8004508:	1ab6      	subcs	r6, r6, r2
 800450a:	4675      	movcs	r5, lr
 800450c:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8004510:	085b      	lsrs	r3, r3, #1
 8004512:	ea4f 0232 	mov.w	r2, r2, rrx
 8004516:	ebb6 0e02 	subs.w	lr, r6, r2
 800451a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800451e:	bf22      	ittt	cs
 8004520:	1ab6      	subcs	r6, r6, r2
 8004522:	4675      	movcs	r5, lr
 8004524:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8004528:	085b      	lsrs	r3, r3, #1
 800452a:	ea4f 0232 	mov.w	r2, r2, rrx
 800452e:	ebb6 0e02 	subs.w	lr, r6, r2
 8004532:	eb75 0e03 	sbcs.w	lr, r5, r3
 8004536:	bf22      	ittt	cs
 8004538:	1ab6      	subcs	r6, r6, r2
 800453a:	4675      	movcs	r5, lr
 800453c:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8004540:	ea55 0e06 	orrs.w	lr, r5, r6
 8004544:	d018      	beq.n	8004578 <__aeabi_ddiv+0x114>
 8004546:	ea4f 1505 	mov.w	r5, r5, lsl #4
 800454a:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 800454e:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8004552:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8004556:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 800455a:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 800455e:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8004562:	d1c0      	bne.n	80044e6 <__aeabi_ddiv+0x82>
 8004564:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8004568:	d10b      	bne.n	8004582 <__aeabi_ddiv+0x11e>
 800456a:	ea41 0100 	orr.w	r1, r1, r0
 800456e:	f04f 0000 	mov.w	r0, #0
 8004572:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8004576:	e7b6      	b.n	80044e6 <__aeabi_ddiv+0x82>
 8004578:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800457c:	bf04      	itt	eq
 800457e:	4301      	orreq	r1, r0
 8004580:	2000      	moveq	r0, #0
 8004582:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8004586:	bf88      	it	hi
 8004588:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 800458c:	f63f aeaf 	bhi.w	80042ee <__aeabi_dmul+0xde>
 8004590:	ebb5 0c03 	subs.w	ip, r5, r3
 8004594:	bf04      	itt	eq
 8004596:	ebb6 0c02 	subseq.w	ip, r6, r2
 800459a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800459e:	f150 0000 	adcs.w	r0, r0, #0
 80045a2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80045a6:	bd70      	pop	{r4, r5, r6, pc}
 80045a8:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 80045ac:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 80045b0:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 80045b4:	bfc2      	ittt	gt
 80045b6:	ebd4 050c 	rsbsgt	r5, r4, ip
 80045ba:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 80045be:	bd70      	popgt	{r4, r5, r6, pc}
 80045c0:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80045c4:	f04f 0e00 	mov.w	lr, #0
 80045c8:	3c01      	subs	r4, #1
 80045ca:	e690      	b.n	80042ee <__aeabi_dmul+0xde>
 80045cc:	ea45 0e06 	orr.w	lr, r5, r6
 80045d0:	e68d      	b.n	80042ee <__aeabi_dmul+0xde>
 80045d2:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 80045d6:	ea94 0f0c 	teq	r4, ip
 80045da:	bf08      	it	eq
 80045dc:	ea95 0f0c 	teqeq	r5, ip
 80045e0:	f43f af3b 	beq.w	800445a <__aeabi_dmul+0x24a>
 80045e4:	ea94 0f0c 	teq	r4, ip
 80045e8:	d10a      	bne.n	8004600 <__aeabi_ddiv+0x19c>
 80045ea:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80045ee:	f47f af34 	bne.w	800445a <__aeabi_dmul+0x24a>
 80045f2:	ea95 0f0c 	teq	r5, ip
 80045f6:	f47f af25 	bne.w	8004444 <__aeabi_dmul+0x234>
 80045fa:	4610      	mov	r0, r2
 80045fc:	4619      	mov	r1, r3
 80045fe:	e72c      	b.n	800445a <__aeabi_dmul+0x24a>
 8004600:	ea95 0f0c 	teq	r5, ip
 8004604:	d106      	bne.n	8004614 <__aeabi_ddiv+0x1b0>
 8004606:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 800460a:	f43f aefd 	beq.w	8004408 <__aeabi_dmul+0x1f8>
 800460e:	4610      	mov	r0, r2
 8004610:	4619      	mov	r1, r3
 8004612:	e722      	b.n	800445a <__aeabi_dmul+0x24a>
 8004614:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8004618:	bf18      	it	ne
 800461a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800461e:	f47f aec5 	bne.w	80043ac <__aeabi_dmul+0x19c>
 8004622:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8004626:	f47f af0d 	bne.w	8004444 <__aeabi_dmul+0x234>
 800462a:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 800462e:	f47f aeeb 	bne.w	8004408 <__aeabi_dmul+0x1f8>
 8004632:	e712      	b.n	800445a <__aeabi_dmul+0x24a>

08004634 <__gedf2>:
 8004634:	f04f 3cff 	mov.w	ip, #4294967295
 8004638:	e006      	b.n	8004648 <__cmpdf2+0x4>
 800463a:	bf00      	nop

0800463c <__ledf2>:
 800463c:	f04f 0c01 	mov.w	ip, #1
 8004640:	e002      	b.n	8004648 <__cmpdf2+0x4>
 8004642:	bf00      	nop

08004644 <__cmpdf2>:
 8004644:	f04f 0c01 	mov.w	ip, #1
 8004648:	f84d cd04 	str.w	ip, [sp, #-4]!
 800464c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8004650:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8004654:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8004658:	bf18      	it	ne
 800465a:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 800465e:	d01b      	beq.n	8004698 <__cmpdf2+0x54>
 8004660:	b001      	add	sp, #4
 8004662:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8004666:	bf0c      	ite	eq
 8004668:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 800466c:	ea91 0f03 	teqne	r1, r3
 8004670:	bf02      	ittt	eq
 8004672:	ea90 0f02 	teqeq	r0, r2
 8004676:	2000      	moveq	r0, #0
 8004678:	4770      	bxeq	lr
 800467a:	f110 0f00 	cmn.w	r0, #0
 800467e:	ea91 0f03 	teq	r1, r3
 8004682:	bf58      	it	pl
 8004684:	4299      	cmppl	r1, r3
 8004686:	bf08      	it	eq
 8004688:	4290      	cmpeq	r0, r2
 800468a:	bf2c      	ite	cs
 800468c:	17d8      	asrcs	r0, r3, #31
 800468e:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8004692:	f040 0001 	orr.w	r0, r0, #1
 8004696:	4770      	bx	lr
 8004698:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 800469c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80046a0:	d102      	bne.n	80046a8 <__cmpdf2+0x64>
 80046a2:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 80046a6:	d107      	bne.n	80046b8 <__cmpdf2+0x74>
 80046a8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80046ac:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80046b0:	d1d6      	bne.n	8004660 <__cmpdf2+0x1c>
 80046b2:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80046b6:	d0d3      	beq.n	8004660 <__cmpdf2+0x1c>
 80046b8:	f85d 0b04 	ldr.w	r0, [sp], #4
 80046bc:	4770      	bx	lr
 80046be:	bf00      	nop

080046c0 <__aeabi_cdrcmple>:
 80046c0:	4684      	mov	ip, r0
 80046c2:	4610      	mov	r0, r2
 80046c4:	4662      	mov	r2, ip
 80046c6:	468c      	mov	ip, r1
 80046c8:	4619      	mov	r1, r3
 80046ca:	4663      	mov	r3, ip
 80046cc:	e000      	b.n	80046d0 <__aeabi_cdcmpeq>
 80046ce:	bf00      	nop

080046d0 <__aeabi_cdcmpeq>:
 80046d0:	b501      	push	{r0, lr}
 80046d2:	f7ff ffb7 	bl	8004644 <__cmpdf2>
 80046d6:	2800      	cmp	r0, #0
 80046d8:	bf48      	it	mi
 80046da:	f110 0f00 	cmnmi.w	r0, #0
 80046de:	bd01      	pop	{r0, pc}

080046e0 <__aeabi_dcmpeq>:
 80046e0:	f84d ed08 	str.w	lr, [sp, #-8]!
 80046e4:	f7ff fff4 	bl	80046d0 <__aeabi_cdcmpeq>
 80046e8:	bf0c      	ite	eq
 80046ea:	2001      	moveq	r0, #1
 80046ec:	2000      	movne	r0, #0
 80046ee:	f85d fb08 	ldr.w	pc, [sp], #8
 80046f2:	bf00      	nop

080046f4 <__aeabi_dcmplt>:
 80046f4:	f84d ed08 	str.w	lr, [sp, #-8]!
 80046f8:	f7ff ffea 	bl	80046d0 <__aeabi_cdcmpeq>
 80046fc:	bf34      	ite	cc
 80046fe:	2001      	movcc	r0, #1
 8004700:	2000      	movcs	r0, #0
 8004702:	f85d fb08 	ldr.w	pc, [sp], #8
 8004706:	bf00      	nop

08004708 <__aeabi_dcmple>:
 8004708:	f84d ed08 	str.w	lr, [sp, #-8]!
 800470c:	f7ff ffe0 	bl	80046d0 <__aeabi_cdcmpeq>
 8004710:	bf94      	ite	ls
 8004712:	2001      	movls	r0, #1
 8004714:	2000      	movhi	r0, #0
 8004716:	f85d fb08 	ldr.w	pc, [sp], #8
 800471a:	bf00      	nop

0800471c <__aeabi_dcmpge>:
 800471c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8004720:	f7ff ffce 	bl	80046c0 <__aeabi_cdrcmple>
 8004724:	bf94      	ite	ls
 8004726:	2001      	movls	r0, #1
 8004728:	2000      	movhi	r0, #0
 800472a:	f85d fb08 	ldr.w	pc, [sp], #8
 800472e:	bf00      	nop

08004730 <__aeabi_dcmpgt>:
 8004730:	f84d ed08 	str.w	lr, [sp, #-8]!
 8004734:	f7ff ffc4 	bl	80046c0 <__aeabi_cdrcmple>
 8004738:	bf34      	ite	cc
 800473a:	2001      	movcc	r0, #1
 800473c:	2000      	movcs	r0, #0
 800473e:	f85d fb08 	ldr.w	pc, [sp], #8
 8004742:	bf00      	nop

08004744 <__aeabi_d2iz>:
 8004744:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8004748:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 800474c:	d215      	bcs.n	800477a <__aeabi_d2iz+0x36>
 800474e:	d511      	bpl.n	8004774 <__aeabi_d2iz+0x30>
 8004750:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8004754:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8004758:	d912      	bls.n	8004780 <__aeabi_d2iz+0x3c>
 800475a:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 800475e:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8004762:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8004766:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800476a:	fa23 f002 	lsr.w	r0, r3, r2
 800476e:	bf18      	it	ne
 8004770:	4240      	negne	r0, r0
 8004772:	4770      	bx	lr
 8004774:	f04f 0000 	mov.w	r0, #0
 8004778:	4770      	bx	lr
 800477a:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 800477e:	d105      	bne.n	800478c <__aeabi_d2iz+0x48>
 8004780:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8004784:	bf08      	it	eq
 8004786:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 800478a:	4770      	bx	lr
 800478c:	f04f 0000 	mov.w	r0, #0
 8004790:	4770      	bx	lr
 8004792:	bf00      	nop

08004794 <__aeabi_uldivmod>:
 8004794:	b94b      	cbnz	r3, 80047aa <__aeabi_uldivmod+0x16>
 8004796:	b942      	cbnz	r2, 80047aa <__aeabi_uldivmod+0x16>
 8004798:	2900      	cmp	r1, #0
 800479a:	bf08      	it	eq
 800479c:	2800      	cmpeq	r0, #0
 800479e:	d002      	beq.n	80047a6 <__aeabi_uldivmod+0x12>
 80047a0:	f04f 31ff 	mov.w	r1, #4294967295
 80047a4:	4608      	mov	r0, r1
 80047a6:	f000 b83b 	b.w	8004820 <__aeabi_idiv0>
 80047aa:	b082      	sub	sp, #8
 80047ac:	46ec      	mov	ip, sp
 80047ae:	e92d 5000 	stmdb	sp!, {ip, lr}
 80047b2:	f000 f81d 	bl	80047f0 <__gnu_uldivmod_helper>
 80047b6:	f8dd e004 	ldr.w	lr, [sp, #4]
 80047ba:	b002      	add	sp, #8
 80047bc:	bc0c      	pop	{r2, r3}
 80047be:	4770      	bx	lr

080047c0 <__gnu_ldivmod_helper>:
 80047c0:	e92d 4370 	stmdb	sp!, {r4, r5, r6, r8, r9, lr}
 80047c4:	9e06      	ldr	r6, [sp, #24]
 80047c6:	4614      	mov	r4, r2
 80047c8:	461d      	mov	r5, r3
 80047ca:	4680      	mov	r8, r0
 80047cc:	4689      	mov	r9, r1
 80047ce:	f000 f829 	bl	8004824 <__divdi3>
 80047d2:	fb04 f301 	mul.w	r3, r4, r1
 80047d6:	fb00 3305 	mla	r3, r0, r5, r3
 80047da:	fba4 4500 	umull	r4, r5, r4, r0
 80047de:	441d      	add	r5, r3
 80047e0:	ebb8 0404 	subs.w	r4, r8, r4
 80047e4:	eb69 0505 	sbc.w	r5, r9, r5
 80047e8:	e9c6 4500 	strd	r4, r5, [r6]
 80047ec:	e8bd 8370 	ldmia.w	sp!, {r4, r5, r6, r8, r9, pc}

080047f0 <__gnu_uldivmod_helper>:
 80047f0:	e92d 4370 	stmdb	sp!, {r4, r5, r6, r8, r9, lr}
 80047f4:	9e06      	ldr	r6, [sp, #24]
 80047f6:	4614      	mov	r4, r2
 80047f8:	4680      	mov	r8, r0
 80047fa:	4689      	mov	r9, r1
 80047fc:	461d      	mov	r5, r3
 80047fe:	f000 f95d 	bl	8004abc <__udivdi3>
 8004802:	fb00 f505 	mul.w	r5, r0, r5
 8004806:	fb04 5301 	mla	r3, r4, r1, r5
 800480a:	fba0 4504 	umull	r4, r5, r0, r4
 800480e:	441d      	add	r5, r3
 8004810:	ebb8 0404 	subs.w	r4, r8, r4
 8004814:	eb69 0505 	sbc.w	r5, r9, r5
 8004818:	e9c6 4500 	strd	r4, r5, [r6]
 800481c:	e8bd 8370 	ldmia.w	sp!, {r4, r5, r6, r8, r9, pc}

08004820 <__aeabi_idiv0>:
 8004820:	4770      	bx	lr
 8004822:	bf00      	nop

08004824 <__divdi3>:
 8004824:	2900      	cmp	r1, #0
 8004826:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800482a:	f2c0 809f 	blt.w	800496c <__divdi3+0x148>
 800482e:	2400      	movs	r4, #0
 8004830:	2b00      	cmp	r3, #0
 8004832:	f2c0 8096 	blt.w	8004962 <__divdi3+0x13e>
 8004836:	4615      	mov	r5, r2
 8004838:	4606      	mov	r6, r0
 800483a:	460f      	mov	r7, r1
 800483c:	2b00      	cmp	r3, #0
 800483e:	d13e      	bne.n	80048be <__divdi3+0x9a>
 8004840:	428a      	cmp	r2, r1
 8004842:	d957      	bls.n	80048f4 <__divdi3+0xd0>
 8004844:	fab2 f382 	clz	r3, r2
 8004848:	b14b      	cbz	r3, 800485e <__divdi3+0x3a>
 800484a:	f1c3 0220 	rsb	r2, r3, #32
 800484e:	fa01 f703 	lsl.w	r7, r1, r3
 8004852:	fa20 f202 	lsr.w	r2, r0, r2
 8004856:	409d      	lsls	r5, r3
 8004858:	4317      	orrs	r7, r2
 800485a:	fa00 f603 	lsl.w	r6, r0, r3
 800485e:	0c29      	lsrs	r1, r5, #16
 8004860:	fbb7 f2f1 	udiv	r2, r7, r1
 8004864:	0c33      	lsrs	r3, r6, #16
 8004866:	fb01 7c12 	mls	ip, r1, r2, r7
 800486a:	b2a8      	uxth	r0, r5
 800486c:	ea43 470c 	orr.w	r7, r3, ip, lsl #16
 8004870:	fb00 f302 	mul.w	r3, r0, r2
 8004874:	42bb      	cmp	r3, r7
 8004876:	d909      	bls.n	800488c <__divdi3+0x68>
 8004878:	197f      	adds	r7, r7, r5
 800487a:	f102 3cff 	add.w	ip, r2, #4294967295
 800487e:	f080 8101 	bcs.w	8004a84 <__divdi3+0x260>
 8004882:	42bb      	cmp	r3, r7
 8004884:	f240 80fe 	bls.w	8004a84 <__divdi3+0x260>
 8004888:	3a02      	subs	r2, #2
 800488a:	442f      	add	r7, r5
 800488c:	1aff      	subs	r7, r7, r3
 800488e:	fbb7 f3f1 	udiv	r3, r7, r1
 8004892:	b2b6      	uxth	r6, r6
 8004894:	fb01 7113 	mls	r1, r1, r3, r7
 8004898:	ea46 4101 	orr.w	r1, r6, r1, lsl #16
 800489c:	fb00 f003 	mul.w	r0, r0, r3
 80048a0:	4288      	cmp	r0, r1
 80048a2:	d908      	bls.n	80048b6 <__divdi3+0x92>
 80048a4:	1949      	adds	r1, r1, r5
 80048a6:	f103 37ff 	add.w	r7, r3, #4294967295
 80048aa:	f080 80ed 	bcs.w	8004a88 <__divdi3+0x264>
 80048ae:	4288      	cmp	r0, r1
 80048b0:	f240 80ea 	bls.w	8004a88 <__divdi3+0x264>
 80048b4:	3b02      	subs	r3, #2
 80048b6:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
 80048ba:	2300      	movs	r3, #0
 80048bc:	e003      	b.n	80048c6 <__divdi3+0xa2>
 80048be:	428b      	cmp	r3, r1
 80048c0:	d90a      	bls.n	80048d8 <__divdi3+0xb4>
 80048c2:	2300      	movs	r3, #0
 80048c4:	461a      	mov	r2, r3
 80048c6:	4610      	mov	r0, r2
 80048c8:	4619      	mov	r1, r3
 80048ca:	b114      	cbz	r4, 80048d2 <__divdi3+0xae>
 80048cc:	4240      	negs	r0, r0
 80048ce:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80048d2:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80048d6:	4770      	bx	lr
 80048d8:	fab3 f883 	clz	r8, r3
 80048dc:	f1b8 0f00 	cmp.w	r8, #0
 80048e0:	f040 8084 	bne.w	80049ec <__divdi3+0x1c8>
 80048e4:	428b      	cmp	r3, r1
 80048e6:	d302      	bcc.n	80048ee <__divdi3+0xca>
 80048e8:	4282      	cmp	r2, r0
 80048ea:	f200 80de 	bhi.w	8004aaa <__divdi3+0x286>
 80048ee:	2300      	movs	r3, #0
 80048f0:	2201      	movs	r2, #1
 80048f2:	e7e8      	b.n	80048c6 <__divdi3+0xa2>
 80048f4:	b912      	cbnz	r2, 80048fc <__divdi3+0xd8>
 80048f6:	2301      	movs	r3, #1
 80048f8:	fbb3 f5f2 	udiv	r5, r3, r2
 80048fc:	fab5 f285 	clz	r2, r5
 8004900:	2a00      	cmp	r2, #0
 8004902:	d139      	bne.n	8004978 <__divdi3+0x154>
 8004904:	1b7f      	subs	r7, r7, r5
 8004906:	0c28      	lsrs	r0, r5, #16
 8004908:	fa1f fc85 	uxth.w	ip, r5
 800490c:	2301      	movs	r3, #1
 800490e:	fbb7 f1f0 	udiv	r1, r7, r0
 8004912:	0c32      	lsrs	r2, r6, #16
 8004914:	fb00 7711 	mls	r7, r0, r1, r7
 8004918:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
 800491c:	fb0c f201 	mul.w	r2, ip, r1
 8004920:	42ba      	cmp	r2, r7
 8004922:	d907      	bls.n	8004934 <__divdi3+0x110>
 8004924:	197f      	adds	r7, r7, r5
 8004926:	f101 38ff 	add.w	r8, r1, #4294967295
 800492a:	d202      	bcs.n	8004932 <__divdi3+0x10e>
 800492c:	42ba      	cmp	r2, r7
 800492e:	f200 80c1 	bhi.w	8004ab4 <__divdi3+0x290>
 8004932:	4641      	mov	r1, r8
 8004934:	1abf      	subs	r7, r7, r2
 8004936:	fbb7 f2f0 	udiv	r2, r7, r0
 800493a:	b2b6      	uxth	r6, r6
 800493c:	fb00 7012 	mls	r0, r0, r2, r7
 8004940:	ea46 4000 	orr.w	r0, r6, r0, lsl #16
 8004944:	fb0c fc02 	mul.w	ip, ip, r2
 8004948:	4584      	cmp	ip, r0
 800494a:	d907      	bls.n	800495c <__divdi3+0x138>
 800494c:	1940      	adds	r0, r0, r5
 800494e:	f102 37ff 	add.w	r7, r2, #4294967295
 8004952:	d202      	bcs.n	800495a <__divdi3+0x136>
 8004954:	4584      	cmp	ip, r0
 8004956:	f200 80ab 	bhi.w	8004ab0 <__divdi3+0x28c>
 800495a:	463a      	mov	r2, r7
 800495c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8004960:	e7b1      	b.n	80048c6 <__divdi3+0xa2>
 8004962:	43e4      	mvns	r4, r4
 8004964:	4252      	negs	r2, r2
 8004966:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 800496a:	e764      	b.n	8004836 <__divdi3+0x12>
 800496c:	4240      	negs	r0, r0
 800496e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8004972:	f04f 34ff 	mov.w	r4, #4294967295
 8004976:	e75b      	b.n	8004830 <__divdi3+0xc>
 8004978:	4095      	lsls	r5, r2
 800497a:	f1c2 0320 	rsb	r3, r2, #32
 800497e:	fa27 f103 	lsr.w	r1, r7, r3
 8004982:	0c28      	lsrs	r0, r5, #16
 8004984:	fa26 f303 	lsr.w	r3, r6, r3
 8004988:	4097      	lsls	r7, r2
 800498a:	fbb1 f8f0 	udiv	r8, r1, r0
 800498e:	431f      	orrs	r7, r3
 8004990:	0c3b      	lsrs	r3, r7, #16
 8004992:	fb00 1118 	mls	r1, r0, r8, r1
 8004996:	fa1f fc85 	uxth.w	ip, r5
 800499a:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
 800499e:	fb0c f308 	mul.w	r3, ip, r8
 80049a2:	428b      	cmp	r3, r1
 80049a4:	fa06 f602 	lsl.w	r6, r6, r2
 80049a8:	d908      	bls.n	80049bc <__divdi3+0x198>
 80049aa:	1949      	adds	r1, r1, r5
 80049ac:	f108 32ff 	add.w	r2, r8, #4294967295
 80049b0:	d279      	bcs.n	8004aa6 <__divdi3+0x282>
 80049b2:	428b      	cmp	r3, r1
 80049b4:	d977      	bls.n	8004aa6 <__divdi3+0x282>
 80049b6:	f1a8 0802 	sub.w	r8, r8, #2
 80049ba:	4429      	add	r1, r5
 80049bc:	1ac9      	subs	r1, r1, r3
 80049be:	fbb1 f3f0 	udiv	r3, r1, r0
 80049c2:	b2bf      	uxth	r7, r7
 80049c4:	fb00 1113 	mls	r1, r0, r3, r1
 80049c8:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
 80049cc:	fb0c f203 	mul.w	r2, ip, r3
 80049d0:	42ba      	cmp	r2, r7
 80049d2:	d907      	bls.n	80049e4 <__divdi3+0x1c0>
 80049d4:	197f      	adds	r7, r7, r5
 80049d6:	f103 31ff 	add.w	r1, r3, #4294967295
 80049da:	d260      	bcs.n	8004a9e <__divdi3+0x27a>
 80049dc:	42ba      	cmp	r2, r7
 80049de:	d95e      	bls.n	8004a9e <__divdi3+0x27a>
 80049e0:	3b02      	subs	r3, #2
 80049e2:	442f      	add	r7, r5
 80049e4:	1abf      	subs	r7, r7, r2
 80049e6:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 80049ea:	e790      	b.n	800490e <__divdi3+0xea>
 80049ec:	f1c8 0220 	rsb	r2, r8, #32
 80049f0:	fa03 fc08 	lsl.w	ip, r3, r8
 80049f4:	fa25 f302 	lsr.w	r3, r5, r2
 80049f8:	ea43 0c0c 	orr.w	ip, r3, ip
 80049fc:	ea4f 491c 	mov.w	r9, ip, lsr #16
 8004a00:	fa21 f302 	lsr.w	r3, r1, r2
 8004a04:	fa01 f708 	lsl.w	r7, r1, r8
 8004a08:	fa20 f202 	lsr.w	r2, r0, r2
 8004a0c:	fbb3 f1f9 	udiv	r1, r3, r9
 8004a10:	4317      	orrs	r7, r2
 8004a12:	fb09 3311 	mls	r3, r9, r1, r3
 8004a16:	0c3a      	lsrs	r2, r7, #16
 8004a18:	fa1f fb8c 	uxth.w	fp, ip
 8004a1c:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
 8004a20:	fb0b fa01 	mul.w	sl, fp, r1
 8004a24:	459a      	cmp	sl, r3
 8004a26:	fa05 f008 	lsl.w	r0, r5, r8
 8004a2a:	d908      	bls.n	8004a3e <__divdi3+0x21a>
 8004a2c:	eb13 030c 	adds.w	r3, r3, ip
 8004a30:	f101 32ff 	add.w	r2, r1, #4294967295
 8004a34:	d235      	bcs.n	8004aa2 <__divdi3+0x27e>
 8004a36:	459a      	cmp	sl, r3
 8004a38:	d933      	bls.n	8004aa2 <__divdi3+0x27e>
 8004a3a:	3902      	subs	r1, #2
 8004a3c:	4463      	add	r3, ip
 8004a3e:	ebca 0303 	rsb	r3, sl, r3
 8004a42:	fbb3 f2f9 	udiv	r2, r3, r9
 8004a46:	fb09 3312 	mls	r3, r9, r2, r3
 8004a4a:	b2bf      	uxth	r7, r7
 8004a4c:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
 8004a50:	fb0b f902 	mul.w	r9, fp, r2
 8004a54:	45b9      	cmp	r9, r7
 8004a56:	d908      	bls.n	8004a6a <__divdi3+0x246>
 8004a58:	eb17 070c 	adds.w	r7, r7, ip
 8004a5c:	f102 33ff 	add.w	r3, r2, #4294967295
 8004a60:	d21b      	bcs.n	8004a9a <__divdi3+0x276>
 8004a62:	45b9      	cmp	r9, r7
 8004a64:	d919      	bls.n	8004a9a <__divdi3+0x276>
 8004a66:	3a02      	subs	r2, #2
 8004a68:	4467      	add	r7, ip
 8004a6a:	ea42 4501 	orr.w	r5, r2, r1, lsl #16
 8004a6e:	fba5 0100 	umull	r0, r1, r5, r0
 8004a72:	ebc9 0707 	rsb	r7, r9, r7
 8004a76:	428f      	cmp	r7, r1
 8004a78:	f04f 0300 	mov.w	r3, #0
 8004a7c:	d30a      	bcc.n	8004a94 <__divdi3+0x270>
 8004a7e:	d005      	beq.n	8004a8c <__divdi3+0x268>
 8004a80:	462a      	mov	r2, r5
 8004a82:	e720      	b.n	80048c6 <__divdi3+0xa2>
 8004a84:	4662      	mov	r2, ip
 8004a86:	e701      	b.n	800488c <__divdi3+0x68>
 8004a88:	463b      	mov	r3, r7
 8004a8a:	e714      	b.n	80048b6 <__divdi3+0x92>
 8004a8c:	fa06 f608 	lsl.w	r6, r6, r8
 8004a90:	4286      	cmp	r6, r0
 8004a92:	d2f5      	bcs.n	8004a80 <__divdi3+0x25c>
 8004a94:	1e6a      	subs	r2, r5, #1
 8004a96:	2300      	movs	r3, #0
 8004a98:	e715      	b.n	80048c6 <__divdi3+0xa2>
 8004a9a:	461a      	mov	r2, r3
 8004a9c:	e7e5      	b.n	8004a6a <__divdi3+0x246>
 8004a9e:	460b      	mov	r3, r1
 8004aa0:	e7a0      	b.n	80049e4 <__divdi3+0x1c0>
 8004aa2:	4611      	mov	r1, r2
 8004aa4:	e7cb      	b.n	8004a3e <__divdi3+0x21a>
 8004aa6:	4690      	mov	r8, r2
 8004aa8:	e788      	b.n	80049bc <__divdi3+0x198>
 8004aaa:	4643      	mov	r3, r8
 8004aac:	4642      	mov	r2, r8
 8004aae:	e70a      	b.n	80048c6 <__divdi3+0xa2>
 8004ab0:	3a02      	subs	r2, #2
 8004ab2:	e753      	b.n	800495c <__divdi3+0x138>
 8004ab4:	3902      	subs	r1, #2
 8004ab6:	442f      	add	r7, r5
 8004ab8:	e73c      	b.n	8004934 <__divdi3+0x110>
 8004aba:	bf00      	nop

08004abc <__udivdi3>:
 8004abc:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8004ac0:	4614      	mov	r4, r2
 8004ac2:	4605      	mov	r5, r0
 8004ac4:	460e      	mov	r6, r1
 8004ac6:	2b00      	cmp	r3, #0
 8004ac8:	d143      	bne.n	8004b52 <__udivdi3+0x96>
 8004aca:	428a      	cmp	r2, r1
 8004acc:	d953      	bls.n	8004b76 <__udivdi3+0xba>
 8004ace:	fab2 f782 	clz	r7, r2
 8004ad2:	b157      	cbz	r7, 8004aea <__udivdi3+0x2e>
 8004ad4:	f1c7 0620 	rsb	r6, r7, #32
 8004ad8:	fa20 f606 	lsr.w	r6, r0, r6
 8004adc:	fa01 f307 	lsl.w	r3, r1, r7
 8004ae0:	fa02 f407 	lsl.w	r4, r2, r7
 8004ae4:	431e      	orrs	r6, r3
 8004ae6:	fa00 f507 	lsl.w	r5, r0, r7
 8004aea:	0c21      	lsrs	r1, r4, #16
 8004aec:	fbb6 f2f1 	udiv	r2, r6, r1
 8004af0:	0c2b      	lsrs	r3, r5, #16
 8004af2:	fb01 6712 	mls	r7, r1, r2, r6
 8004af6:	b2a0      	uxth	r0, r4
 8004af8:	ea43 4607 	orr.w	r6, r3, r7, lsl #16
 8004afc:	fb00 f302 	mul.w	r3, r0, r2
 8004b00:	42b3      	cmp	r3, r6
 8004b02:	d909      	bls.n	8004b18 <__udivdi3+0x5c>
 8004b04:	1936      	adds	r6, r6, r4
 8004b06:	f102 37ff 	add.w	r7, r2, #4294967295
 8004b0a:	f080 80f6 	bcs.w	8004cfa <__udivdi3+0x23e>
 8004b0e:	42b3      	cmp	r3, r6
 8004b10:	f240 80f3 	bls.w	8004cfa <__udivdi3+0x23e>
 8004b14:	3a02      	subs	r2, #2
 8004b16:	4426      	add	r6, r4
 8004b18:	1af6      	subs	r6, r6, r3
 8004b1a:	fbb6 f3f1 	udiv	r3, r6, r1
 8004b1e:	b2ad      	uxth	r5, r5
 8004b20:	fb01 6113 	mls	r1, r1, r3, r6
 8004b24:	ea45 4101 	orr.w	r1, r5, r1, lsl #16
 8004b28:	fb00 f003 	mul.w	r0, r0, r3
 8004b2c:	4288      	cmp	r0, r1
 8004b2e:	d908      	bls.n	8004b42 <__udivdi3+0x86>
 8004b30:	1909      	adds	r1, r1, r4
 8004b32:	f103 36ff 	add.w	r6, r3, #4294967295
 8004b36:	f080 80e2 	bcs.w	8004cfe <__udivdi3+0x242>
 8004b3a:	4288      	cmp	r0, r1
 8004b3c:	f240 80df 	bls.w	8004cfe <__udivdi3+0x242>
 8004b40:	3b02      	subs	r3, #2
 8004b42:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
 8004b46:	2300      	movs	r3, #0
 8004b48:	4610      	mov	r0, r2
 8004b4a:	4619      	mov	r1, r3
 8004b4c:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8004b50:	4770      	bx	lr
 8004b52:	428b      	cmp	r3, r1
 8004b54:	d84a      	bhi.n	8004bec <__udivdi3+0x130>
 8004b56:	fab3 f683 	clz	r6, r3
 8004b5a:	2e00      	cmp	r6, #0
 8004b5c:	d14d      	bne.n	8004bfa <__udivdi3+0x13e>
 8004b5e:	428b      	cmp	r3, r1
 8004b60:	d302      	bcc.n	8004b68 <__udivdi3+0xac>
 8004b62:	4282      	cmp	r2, r0
 8004b64:	f200 80d6 	bhi.w	8004d14 <__udivdi3+0x258>
 8004b68:	2300      	movs	r3, #0
 8004b6a:	2201      	movs	r2, #1
 8004b6c:	4610      	mov	r0, r2
 8004b6e:	4619      	mov	r1, r3
 8004b70:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8004b74:	4770      	bx	lr
 8004b76:	b912      	cbnz	r2, 8004b7e <__udivdi3+0xc2>
 8004b78:	2401      	movs	r4, #1
 8004b7a:	fbb4 f4f2 	udiv	r4, r4, r2
 8004b7e:	fab4 f284 	clz	r2, r4
 8004b82:	2a00      	cmp	r2, #0
 8004b84:	d17c      	bne.n	8004c80 <__udivdi3+0x1c4>
 8004b86:	1b09      	subs	r1, r1, r4
 8004b88:	0c26      	lsrs	r6, r4, #16
 8004b8a:	b2a7      	uxth	r7, r4
 8004b8c:	2301      	movs	r3, #1
 8004b8e:	fbb1 f0f6 	udiv	r0, r1, r6
 8004b92:	0c2a      	lsrs	r2, r5, #16
 8004b94:	fb06 1110 	mls	r1, r6, r0, r1
 8004b98:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
 8004b9c:	fb07 f200 	mul.w	r2, r7, r0
 8004ba0:	428a      	cmp	r2, r1
 8004ba2:	d907      	bls.n	8004bb4 <__udivdi3+0xf8>
 8004ba4:	1909      	adds	r1, r1, r4
 8004ba6:	f100 3cff 	add.w	ip, r0, #4294967295
 8004baa:	d202      	bcs.n	8004bb2 <__udivdi3+0xf6>
 8004bac:	428a      	cmp	r2, r1
 8004bae:	f200 80c3 	bhi.w	8004d38 <__udivdi3+0x27c>
 8004bb2:	4660      	mov	r0, ip
 8004bb4:	1a89      	subs	r1, r1, r2
 8004bb6:	fbb1 f2f6 	udiv	r2, r1, r6
 8004bba:	b2ad      	uxth	r5, r5
 8004bbc:	fb06 1112 	mls	r1, r6, r2, r1
 8004bc0:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
 8004bc4:	fb07 f702 	mul.w	r7, r7, r2
 8004bc8:	42af      	cmp	r7, r5
 8004bca:	d908      	bls.n	8004bde <__udivdi3+0x122>
 8004bcc:	192c      	adds	r4, r5, r4
 8004bce:	f102 31ff 	add.w	r1, r2, #4294967295
 8004bd2:	f080 8096 	bcs.w	8004d02 <__udivdi3+0x246>
 8004bd6:	42a7      	cmp	r7, r4
 8004bd8:	f240 8093 	bls.w	8004d02 <__udivdi3+0x246>
 8004bdc:	3a02      	subs	r2, #2
 8004bde:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
 8004be2:	4610      	mov	r0, r2
 8004be4:	4619      	mov	r1, r3
 8004be6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8004bea:	4770      	bx	lr
 8004bec:	2300      	movs	r3, #0
 8004bee:	461a      	mov	r2, r3
 8004bf0:	4610      	mov	r0, r2
 8004bf2:	4619      	mov	r1, r3
 8004bf4:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8004bf8:	4770      	bx	lr
 8004bfa:	f1c6 0520 	rsb	r5, r6, #32
 8004bfe:	fa22 f405 	lsr.w	r4, r2, r5
 8004c02:	40b3      	lsls	r3, r6
 8004c04:	431c      	orrs	r4, r3
 8004c06:	ea4f 4814 	mov.w	r8, r4, lsr #16
 8004c0a:	fa21 f305 	lsr.w	r3, r1, r5
 8004c0e:	fa01 f706 	lsl.w	r7, r1, r6
 8004c12:	fa20 f505 	lsr.w	r5, r0, r5
 8004c16:	fbb3 fcf8 	udiv	ip, r3, r8
 8004c1a:	432f      	orrs	r7, r5
 8004c1c:	fb08 331c 	mls	r3, r8, ip, r3
 8004c20:	0c3d      	lsrs	r5, r7, #16
 8004c22:	fa1f fa84 	uxth.w	sl, r4
 8004c26:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
 8004c2a:	fb0a f90c 	mul.w	r9, sl, ip
 8004c2e:	4599      	cmp	r9, r3
 8004c30:	fa02 fb06 	lsl.w	fp, r2, r6
 8004c34:	d904      	bls.n	8004c40 <__udivdi3+0x184>
 8004c36:	191b      	adds	r3, r3, r4
 8004c38:	f10c 32ff 	add.w	r2, ip, #4294967295
 8004c3c:	d36d      	bcc.n	8004d1a <__udivdi3+0x25e>
 8004c3e:	4694      	mov	ip, r2
 8004c40:	ebc9 0303 	rsb	r3, r9, r3
 8004c44:	fbb3 f5f8 	udiv	r5, r3, r8
 8004c48:	fb08 3315 	mls	r3, r8, r5, r3
 8004c4c:	b2bf      	uxth	r7, r7
 8004c4e:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
 8004c52:	fb0a f805 	mul.w	r8, sl, r5
 8004c56:	45b8      	cmp	r8, r7
 8004c58:	d904      	bls.n	8004c64 <__udivdi3+0x1a8>
 8004c5a:	193f      	adds	r7, r7, r4
 8004c5c:	f105 33ff 	add.w	r3, r5, #4294967295
 8004c60:	d361      	bcc.n	8004d26 <__udivdi3+0x26a>
 8004c62:	461d      	mov	r5, r3
 8004c64:	ea45 4c0c 	orr.w	ip, r5, ip, lsl #16
 8004c68:	fbac 230b 	umull	r2, r3, ip, fp
 8004c6c:	ebc8 0707 	rsb	r7, r8, r7
 8004c70:	429f      	cmp	r7, r3
 8004c72:	f04f 0500 	mov.w	r5, #0
 8004c76:	d349      	bcc.n	8004d0c <__udivdi3+0x250>
 8004c78:	d045      	beq.n	8004d06 <__udivdi3+0x24a>
 8004c7a:	4662      	mov	r2, ip
 8004c7c:	462b      	mov	r3, r5
 8004c7e:	e763      	b.n	8004b48 <__udivdi3+0x8c>
 8004c80:	4094      	lsls	r4, r2
 8004c82:	f1c2 0320 	rsb	r3, r2, #32
 8004c86:	fa21 fc03 	lsr.w	ip, r1, r3
 8004c8a:	0c26      	lsrs	r6, r4, #16
 8004c8c:	fa20 f303 	lsr.w	r3, r0, r3
 8004c90:	fa01 f502 	lsl.w	r5, r1, r2
 8004c94:	fbbc f8f6 	udiv	r8, ip, r6
 8004c98:	ea43 0105 	orr.w	r1, r3, r5
 8004c9c:	0c0b      	lsrs	r3, r1, #16
 8004c9e:	fb06 cc18 	mls	ip, r6, r8, ip
 8004ca2:	b2a7      	uxth	r7, r4
 8004ca4:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
 8004ca8:	fb07 f308 	mul.w	r3, r7, r8
 8004cac:	4563      	cmp	r3, ip
 8004cae:	fa00 f502 	lsl.w	r5, r0, r2
 8004cb2:	d909      	bls.n	8004cc8 <__udivdi3+0x20c>
 8004cb4:	eb1c 0c04 	adds.w	ip, ip, r4
 8004cb8:	f108 32ff 	add.w	r2, r8, #4294967295
 8004cbc:	d23a      	bcs.n	8004d34 <__udivdi3+0x278>
 8004cbe:	4563      	cmp	r3, ip
 8004cc0:	d938      	bls.n	8004d34 <__udivdi3+0x278>
 8004cc2:	f1a8 0802 	sub.w	r8, r8, #2
 8004cc6:	44a4      	add	ip, r4
 8004cc8:	ebc3 0c0c 	rsb	ip, r3, ip
 8004ccc:	fbbc f3f6 	udiv	r3, ip, r6
 8004cd0:	b289      	uxth	r1, r1
 8004cd2:	fb06 cc13 	mls	ip, r6, r3, ip
 8004cd6:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
 8004cda:	fb07 f203 	mul.w	r2, r7, r3
 8004cde:	428a      	cmp	r2, r1
 8004ce0:	d907      	bls.n	8004cf2 <__udivdi3+0x236>
 8004ce2:	1909      	adds	r1, r1, r4
 8004ce4:	f103 30ff 	add.w	r0, r3, #4294967295
 8004ce8:	d222      	bcs.n	8004d30 <__udivdi3+0x274>
 8004cea:	428a      	cmp	r2, r1
 8004cec:	d920      	bls.n	8004d30 <__udivdi3+0x274>
 8004cee:	3b02      	subs	r3, #2
 8004cf0:	4421      	add	r1, r4
 8004cf2:	1a89      	subs	r1, r1, r2
 8004cf4:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8004cf8:	e749      	b.n	8004b8e <__udivdi3+0xd2>
 8004cfa:	463a      	mov	r2, r7
 8004cfc:	e70c      	b.n	8004b18 <__udivdi3+0x5c>
 8004cfe:	4633      	mov	r3, r6
 8004d00:	e71f      	b.n	8004b42 <__udivdi3+0x86>
 8004d02:	460a      	mov	r2, r1
 8004d04:	e76b      	b.n	8004bde <__udivdi3+0x122>
 8004d06:	40b0      	lsls	r0, r6
 8004d08:	4290      	cmp	r0, r2
 8004d0a:	d2b6      	bcs.n	8004c7a <__udivdi3+0x1be>
 8004d0c:	f10c 32ff 	add.w	r2, ip, #4294967295
 8004d10:	2300      	movs	r3, #0
 8004d12:	e719      	b.n	8004b48 <__udivdi3+0x8c>
 8004d14:	4633      	mov	r3, r6
 8004d16:	4632      	mov	r2, r6
 8004d18:	e716      	b.n	8004b48 <__udivdi3+0x8c>
 8004d1a:	4599      	cmp	r9, r3
 8004d1c:	d98f      	bls.n	8004c3e <__udivdi3+0x182>
 8004d1e:	f1ac 0c02 	sub.w	ip, ip, #2
 8004d22:	4423      	add	r3, r4
 8004d24:	e78c      	b.n	8004c40 <__udivdi3+0x184>
 8004d26:	45b8      	cmp	r8, r7
 8004d28:	d99b      	bls.n	8004c62 <__udivdi3+0x1a6>
 8004d2a:	3d02      	subs	r5, #2
 8004d2c:	4427      	add	r7, r4
 8004d2e:	e799      	b.n	8004c64 <__udivdi3+0x1a8>
 8004d30:	4603      	mov	r3, r0
 8004d32:	e7de      	b.n	8004cf2 <__udivdi3+0x236>
 8004d34:	4690      	mov	r8, r2
 8004d36:	e7c7      	b.n	8004cc8 <__udivdi3+0x20c>
 8004d38:	3802      	subs	r0, #2
 8004d3a:	4421      	add	r1, r4
 8004d3c:	e73a      	b.n	8004bb4 <__udivdi3+0xf8>
 8004d3e:	bf00      	nop

08004d40 <_printf_r>:
 8004d40:	b40e      	push	{r1, r2, r3}
 8004d42:	b500      	push	{lr}
 8004d44:	b082      	sub	sp, #8
 8004d46:	ab03      	add	r3, sp, #12
 8004d48:	6881      	ldr	r1, [r0, #8]
 8004d4a:	f853 2b04 	ldr.w	r2, [r3], #4
 8004d4e:	9301      	str	r3, [sp, #4]
 8004d50:	f000 f870 	bl	8004e34 <_vfprintf_r>
 8004d54:	b002      	add	sp, #8
 8004d56:	f85d eb04 	ldr.w	lr, [sp], #4
 8004d5a:	b003      	add	sp, #12
 8004d5c:	4770      	bx	lr
 8004d5e:	bf00      	nop

08004d60 <printf>:
 8004d60:	b40f      	push	{r0, r1, r2, r3}
 8004d62:	b500      	push	{lr}
 8004d64:	4a07      	ldr	r2, [pc, #28]	; (8004d84 <printf+0x24>)
 8004d66:	b083      	sub	sp, #12
 8004d68:	ab04      	add	r3, sp, #16
 8004d6a:	6810      	ldr	r0, [r2, #0]
 8004d6c:	f853 2b04 	ldr.w	r2, [r3], #4
 8004d70:	6881      	ldr	r1, [r0, #8]
 8004d72:	9301      	str	r3, [sp, #4]
 8004d74:	f000 f85e 	bl	8004e34 <_vfprintf_r>
 8004d78:	b003      	add	sp, #12
 8004d7a:	f85d eb04 	ldr.w	lr, [sp], #4
 8004d7e:	b004      	add	sp, #16
 8004d80:	4770      	bx	lr
 8004d82:	bf00      	nop
 8004d84:	20000650 	.word	0x20000650

08004d88 <cleanup_glue>:
 8004d88:	b538      	push	{r3, r4, r5, lr}
 8004d8a:	460c      	mov	r4, r1
 8004d8c:	6809      	ldr	r1, [r1, #0]
 8004d8e:	4605      	mov	r5, r0
 8004d90:	b109      	cbz	r1, 8004d96 <cleanup_glue+0xe>
 8004d92:	f7ff fff9 	bl	8004d88 <cleanup_glue>
 8004d96:	4628      	mov	r0, r5
 8004d98:	4621      	mov	r1, r4
 8004d9a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8004d9e:	f002 bd73 	b.w	8007888 <_free_r>
 8004da2:	bf00      	nop

08004da4 <_reclaim_reent>:
 8004da4:	4b22      	ldr	r3, [pc, #136]	; (8004e30 <_reclaim_reent+0x8c>)
 8004da6:	681b      	ldr	r3, [r3, #0]
 8004da8:	4298      	cmp	r0, r3
 8004daa:	b570      	push	{r4, r5, r6, lr}
 8004dac:	4605      	mov	r5, r0
 8004dae:	d032      	beq.n	8004e16 <_reclaim_reent+0x72>
 8004db0:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
 8004db2:	b1aa      	cbz	r2, 8004de0 <_reclaim_reent+0x3c>
 8004db4:	2300      	movs	r3, #0
 8004db6:	461e      	mov	r6, r3
 8004db8:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 8004dbc:	b909      	cbnz	r1, 8004dc2 <_reclaim_reent+0x1e>
 8004dbe:	e007      	b.n	8004dd0 <_reclaim_reent+0x2c>
 8004dc0:	4621      	mov	r1, r4
 8004dc2:	680c      	ldr	r4, [r1, #0]
 8004dc4:	4628      	mov	r0, r5
 8004dc6:	f002 fd5f 	bl	8007888 <_free_r>
 8004dca:	2c00      	cmp	r4, #0
 8004dcc:	d1f8      	bne.n	8004dc0 <_reclaim_reent+0x1c>
 8004dce:	6cea      	ldr	r2, [r5, #76]	; 0x4c
 8004dd0:	3601      	adds	r6, #1
 8004dd2:	2e20      	cmp	r6, #32
 8004dd4:	4633      	mov	r3, r6
 8004dd6:	d1ef      	bne.n	8004db8 <_reclaim_reent+0x14>
 8004dd8:	4611      	mov	r1, r2
 8004dda:	4628      	mov	r0, r5
 8004ddc:	f002 fd54 	bl	8007888 <_free_r>
 8004de0:	6c29      	ldr	r1, [r5, #64]	; 0x40
 8004de2:	b111      	cbz	r1, 8004dea <_reclaim_reent+0x46>
 8004de4:	4628      	mov	r0, r5
 8004de6:	f002 fd4f 	bl	8007888 <_free_r>
 8004dea:	f8d5 1148 	ldr.w	r1, [r5, #328]	; 0x148
 8004dee:	b159      	cbz	r1, 8004e08 <_reclaim_reent+0x64>
 8004df0:	f505 76a6 	add.w	r6, r5, #332	; 0x14c
 8004df4:	42b1      	cmp	r1, r6
 8004df6:	d101      	bne.n	8004dfc <_reclaim_reent+0x58>
 8004df8:	e006      	b.n	8004e08 <_reclaim_reent+0x64>
 8004dfa:	4621      	mov	r1, r4
 8004dfc:	680c      	ldr	r4, [r1, #0]
 8004dfe:	4628      	mov	r0, r5
 8004e00:	f002 fd42 	bl	8007888 <_free_r>
 8004e04:	42a6      	cmp	r6, r4
 8004e06:	d1f8      	bne.n	8004dfa <_reclaim_reent+0x56>
 8004e08:	6d69      	ldr	r1, [r5, #84]	; 0x54
 8004e0a:	b111      	cbz	r1, 8004e12 <_reclaim_reent+0x6e>
 8004e0c:	4628      	mov	r0, r5
 8004e0e:	f002 fd3b 	bl	8007888 <_free_r>
 8004e12:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004e14:	b903      	cbnz	r3, 8004e18 <_reclaim_reent+0x74>
 8004e16:	bd70      	pop	{r4, r5, r6, pc}
 8004e18:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8004e1a:	4628      	mov	r0, r5
 8004e1c:	4798      	blx	r3
 8004e1e:	f8d5 12e0 	ldr.w	r1, [r5, #736]	; 0x2e0
 8004e22:	2900      	cmp	r1, #0
 8004e24:	d0f7      	beq.n	8004e16 <_reclaim_reent+0x72>
 8004e26:	4628      	mov	r0, r5
 8004e28:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8004e2c:	f7ff bfac 	b.w	8004d88 <cleanup_glue>
 8004e30:	20000650 	.word	0x20000650

08004e34 <_vfprintf_r>:
 8004e34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004e38:	b0c9      	sub	sp, #292	; 0x124
 8004e3a:	461c      	mov	r4, r3
 8004e3c:	4689      	mov	r9, r1
 8004e3e:	920a      	str	r2, [sp, #40]	; 0x28
 8004e40:	900d      	str	r0, [sp, #52]	; 0x34
 8004e42:	f002 fe6d 	bl	8007b20 <_localeconv_r>
 8004e46:	6800      	ldr	r0, [r0, #0]
 8004e48:	9015      	str	r0, [sp, #84]	; 0x54
 8004e4a:	f003 feff 	bl	8008c4c <strlen>
 8004e4e:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8004e50:	9018      	str	r0, [sp, #96]	; 0x60
 8004e52:	940f      	str	r4, [sp, #60]	; 0x3c
 8004e54:	b11d      	cbz	r5, 8004e5e <_vfprintf_r+0x2a>
 8004e56:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004e58:	2b00      	cmp	r3, #0
 8004e5a:	f000 8109 	beq.w	8005070 <_vfprintf_r+0x23c>
 8004e5e:	f8b9 200c 	ldrh.w	r2, [r9, #12]
 8004e62:	b293      	uxth	r3, r2
 8004e64:	0499      	lsls	r1, r3, #18
 8004e66:	d40a      	bmi.n	8004e7e <_vfprintf_r+0x4a>
 8004e68:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8004e6c:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8004e70:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8004e74:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004e78:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8004e7c:	b29b      	uxth	r3, r3
 8004e7e:	071a      	lsls	r2, r3, #28
 8004e80:	f140 80c0 	bpl.w	8005004 <_vfprintf_r+0x1d0>
 8004e84:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8004e88:	2a00      	cmp	r2, #0
 8004e8a:	f000 80bb 	beq.w	8005004 <_vfprintf_r+0x1d0>
 8004e8e:	f003 031a 	and.w	r3, r3, #26
 8004e92:	2b0a      	cmp	r3, #10
 8004e94:	f000 80c2 	beq.w	800501c <_vfprintf_r+0x1e8>
 8004e98:	ac38      	add	r4, sp, #224	; 0xe0
 8004e9a:	46a4      	mov	ip, r4
 8004e9c:	9408      	str	r4, [sp, #32]
 8004e9e:	942b      	str	r4, [sp, #172]	; 0xac
 8004ea0:	2500      	movs	r5, #0
 8004ea2:	2400      	movs	r4, #0
 8004ea4:	e9cd 4516 	strd	r4, r5, [sp, #88]	; 0x58
 8004ea8:	2300      	movs	r3, #0
 8004eaa:	9311      	str	r3, [sp, #68]	; 0x44
 8004eac:	932d      	str	r3, [sp, #180]	; 0xb4
 8004eae:	932c      	str	r3, [sp, #176]	; 0xb0
 8004eb0:	931a      	str	r3, [sp, #104]	; 0x68
 8004eb2:	9319      	str	r3, [sp, #100]	; 0x64
 8004eb4:	9310      	str	r3, [sp, #64]	; 0x40
 8004eb6:	4666      	mov	r6, ip
 8004eb8:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004eba:	782b      	ldrb	r3, [r5, #0]
 8004ebc:	2b00      	cmp	r3, #0
 8004ebe:	f000 80db 	beq.w	8005078 <_vfprintf_r+0x244>
 8004ec2:	2b25      	cmp	r3, #37	; 0x25
 8004ec4:	f000 80d8 	beq.w	8005078 <_vfprintf_r+0x244>
 8004ec8:	1c6a      	adds	r2, r5, #1
 8004eca:	e002      	b.n	8004ed2 <_vfprintf_r+0x9e>
 8004ecc:	2b25      	cmp	r3, #37	; 0x25
 8004ece:	f000 808b 	beq.w	8004fe8 <_vfprintf_r+0x1b4>
 8004ed2:	4614      	mov	r4, r2
 8004ed4:	3201      	adds	r2, #1
 8004ed6:	7823      	ldrb	r3, [r4, #0]
 8004ed8:	2b00      	cmp	r3, #0
 8004eda:	d1f7      	bne.n	8004ecc <_vfprintf_r+0x98>
 8004edc:	980a      	ldr	r0, [sp, #40]	; 0x28
 8004ede:	1a25      	subs	r5, r4, r0
 8004ee0:	b17d      	cbz	r5, 8004f02 <_vfprintf_r+0xce>
 8004ee2:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8004ee4:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 8004ee6:	980a      	ldr	r0, [sp, #40]	; 0x28
 8004ee8:	6030      	str	r0, [r6, #0]
 8004eea:	3301      	adds	r3, #1
 8004eec:	442a      	add	r2, r5
 8004eee:	2b07      	cmp	r3, #7
 8004ef0:	6075      	str	r5, [r6, #4]
 8004ef2:	922d      	str	r2, [sp, #180]	; 0xb4
 8004ef4:	932c      	str	r3, [sp, #176]	; 0xb0
 8004ef6:	f300 80a4 	bgt.w	8005042 <_vfprintf_r+0x20e>
 8004efa:	3608      	adds	r6, #8
 8004efc:	9910      	ldr	r1, [sp, #64]	; 0x40
 8004efe:	4429      	add	r1, r5
 8004f00:	9110      	str	r1, [sp, #64]	; 0x40
 8004f02:	7823      	ldrb	r3, [r4, #0]
 8004f04:	2b00      	cmp	r3, #0
 8004f06:	f000 80a4 	beq.w	8005052 <_vfprintf_r+0x21e>
 8004f0a:	2300      	movs	r3, #0
 8004f0c:	1c65      	adds	r5, r4, #1
 8004f0e:	f894 8001 	ldrb.w	r8, [r4, #1]
 8004f12:	f88d 308f 	strb.w	r3, [sp, #143]	; 0x8f
 8004f16:	f04f 34ff 	mov.w	r4, #4294967295
 8004f1a:	461a      	mov	r2, r3
 8004f1c:	930e      	str	r3, [sp, #56]	; 0x38
 8004f1e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f20:	950a      	str	r5, [sp, #40]	; 0x28
 8004f22:	940b      	str	r4, [sp, #44]	; 0x2c
 8004f24:	462b      	mov	r3, r5
 8004f26:	3301      	adds	r3, #1
 8004f28:	f1a8 0120 	sub.w	r1, r8, #32
 8004f2c:	2958      	cmp	r1, #88	; 0x58
 8004f2e:	f200 83f8 	bhi.w	8005722 <_vfprintf_r+0x8ee>
 8004f32:	e8df f011 	tbh	[pc, r1, lsl #1]
 8004f36:	0237      	.short	0x0237
 8004f38:	03f603f6 	.word	0x03f603f6
 8004f3c:	03f60303 	.word	0x03f60303
 8004f40:	03f603f6 	.word	0x03f603f6
 8004f44:	03f603f6 	.word	0x03f603f6
 8004f48:	023e03f6 	.word	0x023e03f6
 8004f4c:	03f60233 	.word	0x03f60233
 8004f50:	03350060 	.word	0x03350060
 8004f54:	037503f6 	.word	0x037503f6
 8004f58:	037c037c 	.word	0x037c037c
 8004f5c:	037c037c 	.word	0x037c037c
 8004f60:	037c037c 	.word	0x037c037c
 8004f64:	037c037c 	.word	0x037c037c
 8004f68:	03f6037c 	.word	0x03f6037c
 8004f6c:	03f603f6 	.word	0x03f603f6
 8004f70:	03f603f6 	.word	0x03f603f6
 8004f74:	03f603f6 	.word	0x03f603f6
 8004f78:	03f603f6 	.word	0x03f603f6
 8004f7c:	035303f6 	.word	0x035303f6
 8004f80:	03f6039d 	.word	0x03f6039d
 8004f84:	03f6039d 	.word	0x03f6039d
 8004f88:	03f603f6 	.word	0x03f603f6
 8004f8c:	038d03f6 	.word	0x038d03f6
 8004f90:	03f603f6 	.word	0x03f603f6
 8004f94:	03f603d4 	.word	0x03f603d4
 8004f98:	03f603f6 	.word	0x03f603f6
 8004f9c:	03f603f6 	.word	0x03f603f6
 8004fa0:	03f602a3 	.word	0x03f602a3
 8004fa4:	02c303f6 	.word	0x02c303f6
 8004fa8:	03f603f6 	.word	0x03f603f6
 8004fac:	03f603f6 	.word	0x03f603f6
 8004fb0:	03f603f6 	.word	0x03f603f6
 8004fb4:	03f603f6 	.word	0x03f603f6
 8004fb8:	03f603f6 	.word	0x03f603f6
 8004fbc:	031c030a 	.word	0x031c030a
 8004fc0:	039d039d 	.word	0x039d039d
 8004fc4:	02d9039d 	.word	0x02d9039d
 8004fc8:	03f6031c 	.word	0x03f6031c
 8004fcc:	02e203f6 	.word	0x02e203f6
 8004fd0:	02ee03f6 	.word	0x02ee03f6
 8004fd4:	021c020a 	.word	0x021c020a
 8004fd8:	03f6024b 	.word	0x03f6024b
 8004fdc:	03f60254 	.word	0x03f60254
 8004fe0:	03f600a3 	.word	0x03f600a3
 8004fe4:	027b03f6 	.word	0x027b03f6
 8004fe8:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004fea:	1a65      	subs	r5, r4, r1
 8004fec:	e778      	b.n	8004ee0 <_vfprintf_r+0xac>
 8004fee:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004ff0:	910f      	str	r1, [sp, #60]	; 0x3c
 8004ff2:	4264      	negs	r4, r4
 8004ff4:	940e      	str	r4, [sp, #56]	; 0x38
 8004ff6:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8004ff8:	f045 0504 	orr.w	r5, r5, #4
 8004ffc:	9509      	str	r5, [sp, #36]	; 0x24
 8004ffe:	f893 8000 	ldrb.w	r8, [r3]
 8005002:	e790      	b.n	8004f26 <_vfprintf_r+0xf2>
 8005004:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005006:	4649      	mov	r1, r9
 8005008:	f001 f9fe 	bl	8006408 <__swsetup_r>
 800500c:	b9a0      	cbnz	r0, 8005038 <_vfprintf_r+0x204>
 800500e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005012:	f003 031a 	and.w	r3, r3, #26
 8005016:	2b0a      	cmp	r3, #10
 8005018:	f47f af3e 	bne.w	8004e98 <_vfprintf_r+0x64>
 800501c:	f9b9 300e 	ldrsh.w	r3, [r9, #14]
 8005020:	2b00      	cmp	r3, #0
 8005022:	f6ff af39 	blt.w	8004e98 <_vfprintf_r+0x64>
 8005026:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005028:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800502a:	4649      	mov	r1, r9
 800502c:	4623      	mov	r3, r4
 800502e:	f001 f9af 	bl	8006390 <__sbprintf>
 8005032:	b049      	add	sp, #292	; 0x124
 8005034:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005038:	f04f 30ff 	mov.w	r0, #4294967295
 800503c:	b049      	add	sp, #292	; 0x124
 800503e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005042:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005044:	4649      	mov	r1, r9
 8005046:	aa2b      	add	r2, sp, #172	; 0xac
 8005048:	f003 fe6a 	bl	8008d20 <__sprint_r>
 800504c:	b940      	cbnz	r0, 8005060 <_vfprintf_r+0x22c>
 800504e:	ae38      	add	r6, sp, #224	; 0xe0
 8005050:	e754      	b.n	8004efc <_vfprintf_r+0xc8>
 8005052:	9b2d      	ldr	r3, [sp, #180]	; 0xb4
 8005054:	b123      	cbz	r3, 8005060 <_vfprintf_r+0x22c>
 8005056:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005058:	4649      	mov	r1, r9
 800505a:	aa2b      	add	r2, sp, #172	; 0xac
 800505c:	f003 fe60 	bl	8008d20 <__sprint_r>
 8005060:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005064:	065b      	lsls	r3, r3, #25
 8005066:	d4e7      	bmi.n	8005038 <_vfprintf_r+0x204>
 8005068:	9810      	ldr	r0, [sp, #64]	; 0x40
 800506a:	b049      	add	sp, #292	; 0x124
 800506c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005070:	4628      	mov	r0, r5
 8005072:	f002 fadf 	bl	8007634 <__sinit>
 8005076:	e6f2      	b.n	8004e5e <_vfprintf_r+0x2a>
 8005078:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800507a:	e742      	b.n	8004f02 <_vfprintf_r+0xce>
 800507c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800507e:	930a      	str	r3, [sp, #40]	; 0x28
 8005080:	06a2      	lsls	r2, r4, #26
 8005082:	f140 8206 	bpl.w	8005492 <_vfprintf_r+0x65e>
 8005086:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005088:	1deb      	adds	r3, r5, #7
 800508a:	f023 0307 	bic.w	r3, r3, #7
 800508e:	f103 0c08 	add.w	ip, r3, #8
 8005092:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005096:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 800509a:	2301      	movs	r3, #1
 800509c:	f04f 0a00 	mov.w	sl, #0
 80050a0:	f88d a08f 	strb.w	sl, [sp, #143]	; 0x8f
 80050a4:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80050a6:	2900      	cmp	r1, #0
 80050a8:	db05      	blt.n	80050b6 <_vfprintf_r+0x282>
 80050aa:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80050ae:	f02c 0c80 	bic.w	ip, ip, #128	; 0x80
 80050b2:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 80050b6:	ea54 0005 	orrs.w	r0, r4, r5
 80050ba:	f040 834b 	bne.w	8005754 <_vfprintf_r+0x920>
 80050be:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80050c0:	2900      	cmp	r1, #0
 80050c2:	f040 8347 	bne.w	8005754 <_vfprintf_r+0x920>
 80050c6:	2b00      	cmp	r3, #0
 80050c8:	f040 84bd 	bne.w	8005a46 <_vfprintf_r+0xc12>
 80050cc:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80050d0:	f01c 0f01 	tst.w	ip, #1
 80050d4:	f000 84b7 	beq.w	8005a46 <_vfprintf_r+0xc12>
 80050d8:	af48      	add	r7, sp, #288	; 0x120
 80050da:	2330      	movs	r3, #48	; 0x30
 80050dc:	f807 3d41 	strb.w	r3, [r7, #-65]!
 80050e0:	9d08      	ldr	r5, [sp, #32]
 80050e2:	1bec      	subs	r4, r5, r7
 80050e4:	f8dd c02c 	ldr.w	ip, [sp, #44]	; 0x2c
 80050e8:	2500      	movs	r5, #0
 80050ea:	4564      	cmp	r4, ip
 80050ec:	bfa8      	it	ge
 80050ee:	46a4      	movge	ip, r4
 80050f0:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 80050f4:	9514      	str	r5, [sp, #80]	; 0x50
 80050f6:	f1ba 0f00 	cmp.w	sl, #0
 80050fa:	d002      	beq.n	8005102 <_vfprintf_r+0x2ce>
 80050fc:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 80050fe:	3501      	adds	r5, #1
 8005100:	950c      	str	r5, [sp, #48]	; 0x30
 8005102:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005104:	f013 0302 	ands.w	r3, r3, #2
 8005108:	9312      	str	r3, [sp, #72]	; 0x48
 800510a:	d002      	beq.n	8005112 <_vfprintf_r+0x2de>
 800510c:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 800510e:	3502      	adds	r5, #2
 8005110:	950c      	str	r5, [sp, #48]	; 0x30
 8005112:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005116:	f01c 0c84 	ands.w	ip, ip, #132	; 0x84
 800511a:	f8cd c04c 	str.w	ip, [sp, #76]	; 0x4c
 800511e:	f040 8316 	bne.w	800574e <_vfprintf_r+0x91a>
 8005122:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8005124:	f8dd c030 	ldr.w	ip, [sp, #48]	; 0x30
 8005128:	ebcc 0b05 	rsb	fp, ip, r5
 800512c:	f1bb 0f00 	cmp.w	fp, #0
 8005130:	f340 830d 	ble.w	800574e <_vfprintf_r+0x91a>
 8005134:	f1bb 0f10 	cmp.w	fp, #16
 8005138:	992d      	ldr	r1, [sp, #180]	; 0xb4
 800513a:	9a2c      	ldr	r2, [sp, #176]	; 0xb0
 800513c:	f8df a528 	ldr.w	sl, [pc, #1320]	; 8005668 <_vfprintf_r+0x834>
 8005140:	dd27      	ble.n	8005192 <_vfprintf_r+0x35e>
 8005142:	971b      	str	r7, [sp, #108]	; 0x6c
 8005144:	2510      	movs	r5, #16
 8005146:	4657      	mov	r7, sl
 8005148:	46a2      	mov	sl, r4
 800514a:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 800514c:	e006      	b.n	800515c <_vfprintf_r+0x328>
 800514e:	f1ab 0b10 	sub.w	fp, fp, #16
 8005152:	f1bb 0f10 	cmp.w	fp, #16
 8005156:	f106 0608 	add.w	r6, r6, #8
 800515a:	dd17      	ble.n	800518c <_vfprintf_r+0x358>
 800515c:	3201      	adds	r2, #1
 800515e:	3110      	adds	r1, #16
 8005160:	2a07      	cmp	r2, #7
 8005162:	912d      	str	r1, [sp, #180]	; 0xb4
 8005164:	922c      	str	r2, [sp, #176]	; 0xb0
 8005166:	6037      	str	r7, [r6, #0]
 8005168:	6075      	str	r5, [r6, #4]
 800516a:	ddf0      	ble.n	800514e <_vfprintf_r+0x31a>
 800516c:	4620      	mov	r0, r4
 800516e:	4649      	mov	r1, r9
 8005170:	aa2b      	add	r2, sp, #172	; 0xac
 8005172:	f003 fdd5 	bl	8008d20 <__sprint_r>
 8005176:	2800      	cmp	r0, #0
 8005178:	f47f af72 	bne.w	8005060 <_vfprintf_r+0x22c>
 800517c:	f1ab 0b10 	sub.w	fp, fp, #16
 8005180:	f1bb 0f10 	cmp.w	fp, #16
 8005184:	992d      	ldr	r1, [sp, #180]	; 0xb4
 8005186:	9a2c      	ldr	r2, [sp, #176]	; 0xb0
 8005188:	ae38      	add	r6, sp, #224	; 0xe0
 800518a:	dce7      	bgt.n	800515c <_vfprintf_r+0x328>
 800518c:	4654      	mov	r4, sl
 800518e:	46ba      	mov	sl, r7
 8005190:	9f1b      	ldr	r7, [sp, #108]	; 0x6c
 8005192:	3201      	adds	r2, #1
 8005194:	eb0b 0c01 	add.w	ip, fp, r1
 8005198:	2a07      	cmp	r2, #7
 800519a:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 800519e:	922c      	str	r2, [sp, #176]	; 0xb0
 80051a0:	e886 0c00 	stmia.w	r6, {sl, fp}
 80051a4:	f300 849e 	bgt.w	8005ae4 <_vfprintf_r+0xcb0>
 80051a8:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 80051ac:	3608      	adds	r6, #8
 80051ae:	f1ba 0f00 	cmp.w	sl, #0
 80051b2:	d00f      	beq.n	80051d4 <_vfprintf_r+0x3a0>
 80051b4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80051b6:	3301      	adds	r3, #1
 80051b8:	f10c 0c01 	add.w	ip, ip, #1
 80051bc:	f10d 018f 	add.w	r1, sp, #143	; 0x8f
 80051c0:	2201      	movs	r2, #1
 80051c2:	2b07      	cmp	r3, #7
 80051c4:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 80051c8:	932c      	str	r3, [sp, #176]	; 0xb0
 80051ca:	e886 0006 	stmia.w	r6, {r1, r2}
 80051ce:	f300 8420 	bgt.w	8005a12 <_vfprintf_r+0xbde>
 80051d2:	3608      	adds	r6, #8
 80051d4:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80051d6:	b173      	cbz	r3, 80051f6 <_vfprintf_r+0x3c2>
 80051d8:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80051da:	3301      	adds	r3, #1
 80051dc:	f10c 0c02 	add.w	ip, ip, #2
 80051e0:	a924      	add	r1, sp, #144	; 0x90
 80051e2:	2202      	movs	r2, #2
 80051e4:	2b07      	cmp	r3, #7
 80051e6:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 80051ea:	932c      	str	r3, [sp, #176]	; 0xb0
 80051ec:	e886 0006 	stmia.w	r6, {r1, r2}
 80051f0:	f300 841c 	bgt.w	8005a2c <_vfprintf_r+0xbf8>
 80051f4:	3608      	adds	r6, #8
 80051f6:	9d13      	ldr	r5, [sp, #76]	; 0x4c
 80051f8:	2d80      	cmp	r5, #128	; 0x80
 80051fa:	f000 834c 	beq.w	8005896 <_vfprintf_r+0xa62>
 80051fe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005200:	1b15      	subs	r5, r2, r4
 8005202:	2d00      	cmp	r5, #0
 8005204:	dd3d      	ble.n	8005282 <_vfprintf_r+0x44e>
 8005206:	2d10      	cmp	r5, #16
 8005208:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800520a:	f8df a460 	ldr.w	sl, [pc, #1120]	; 800566c <_vfprintf_r+0x838>
 800520e:	dd2c      	ble.n	800526a <_vfprintf_r+0x436>
 8005210:	4651      	mov	r1, sl
 8005212:	940b      	str	r4, [sp, #44]	; 0x2c
 8005214:	46aa      	mov	sl, r5
 8005216:	f04f 0b10 	mov.w	fp, #16
 800521a:	4662      	mov	r2, ip
 800521c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 800521e:	460d      	mov	r5, r1
 8005220:	e006      	b.n	8005230 <_vfprintf_r+0x3fc>
 8005222:	f1aa 0a10 	sub.w	sl, sl, #16
 8005226:	f1ba 0f10 	cmp.w	sl, #16
 800522a:	f106 0608 	add.w	r6, r6, #8
 800522e:	dd17      	ble.n	8005260 <_vfprintf_r+0x42c>
 8005230:	3301      	adds	r3, #1
 8005232:	3210      	adds	r2, #16
 8005234:	2b07      	cmp	r3, #7
 8005236:	922d      	str	r2, [sp, #180]	; 0xb4
 8005238:	932c      	str	r3, [sp, #176]	; 0xb0
 800523a:	e886 0820 	stmia.w	r6, {r5, fp}
 800523e:	ddf0      	ble.n	8005222 <_vfprintf_r+0x3ee>
 8005240:	4620      	mov	r0, r4
 8005242:	4649      	mov	r1, r9
 8005244:	aa2b      	add	r2, sp, #172	; 0xac
 8005246:	f003 fd6b 	bl	8008d20 <__sprint_r>
 800524a:	2800      	cmp	r0, #0
 800524c:	f47f af08 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005250:	f1aa 0a10 	sub.w	sl, sl, #16
 8005254:	f1ba 0f10 	cmp.w	sl, #16
 8005258:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 800525a:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800525c:	ae38      	add	r6, sp, #224	; 0xe0
 800525e:	dce7      	bgt.n	8005230 <_vfprintf_r+0x3fc>
 8005260:	4694      	mov	ip, r2
 8005262:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 8005264:	462a      	mov	r2, r5
 8005266:	4655      	mov	r5, sl
 8005268:	4692      	mov	sl, r2
 800526a:	3301      	adds	r3, #1
 800526c:	44ac      	add	ip, r5
 800526e:	2b07      	cmp	r3, #7
 8005270:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005274:	932c      	str	r3, [sp, #176]	; 0xb0
 8005276:	f8c6 a000 	str.w	sl, [r6]
 800527a:	6075      	str	r5, [r6, #4]
 800527c:	f300 83bd 	bgt.w	80059fa <_vfprintf_r+0xbc6>
 8005280:	3608      	adds	r6, #8
 8005282:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005284:	05eb      	lsls	r3, r5, #23
 8005286:	f100 82a6 	bmi.w	80057d6 <_vfprintf_r+0x9a2>
 800528a:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800528c:	6037      	str	r7, [r6, #0]
 800528e:	3301      	adds	r3, #1
 8005290:	44a4      	add	ip, r4
 8005292:	2b07      	cmp	r3, #7
 8005294:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005298:	6074      	str	r4, [r6, #4]
 800529a:	932c      	str	r3, [sp, #176]	; 0xb0
 800529c:	f300 8397 	bgt.w	80059ce <_vfprintf_r+0xb9a>
 80052a0:	3608      	adds	r6, #8
 80052a2:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80052a4:	0762      	lsls	r2, r4, #29
 80052a6:	d540      	bpl.n	800532a <_vfprintf_r+0x4f6>
 80052a8:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80052aa:	980c      	ldr	r0, [sp, #48]	; 0x30
 80052ac:	1a2c      	subs	r4, r5, r0
 80052ae:	2c00      	cmp	r4, #0
 80052b0:	dd3b      	ble.n	800532a <_vfprintf_r+0x4f6>
 80052b2:	2c10      	cmp	r4, #16
 80052b4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80052b6:	f8df a3b0 	ldr.w	sl, [pc, #944]	; 8005668 <_vfprintf_r+0x834>
 80052ba:	dd22      	ble.n	8005302 <_vfprintf_r+0x4ce>
 80052bc:	2510      	movs	r5, #16
 80052be:	4662      	mov	r2, ip
 80052c0:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
 80052c4:	4657      	mov	r7, sl
 80052c6:	e004      	b.n	80052d2 <_vfprintf_r+0x49e>
 80052c8:	3c10      	subs	r4, #16
 80052ca:	2c10      	cmp	r4, #16
 80052cc:	f106 0608 	add.w	r6, r6, #8
 80052d0:	dd15      	ble.n	80052fe <_vfprintf_r+0x4ca>
 80052d2:	3301      	adds	r3, #1
 80052d4:	3210      	adds	r2, #16
 80052d6:	2b07      	cmp	r3, #7
 80052d8:	922d      	str	r2, [sp, #180]	; 0xb4
 80052da:	932c      	str	r3, [sp, #176]	; 0xb0
 80052dc:	6037      	str	r7, [r6, #0]
 80052de:	6075      	str	r5, [r6, #4]
 80052e0:	ddf2      	ble.n	80052c8 <_vfprintf_r+0x494>
 80052e2:	4640      	mov	r0, r8
 80052e4:	4649      	mov	r1, r9
 80052e6:	aa2b      	add	r2, sp, #172	; 0xac
 80052e8:	f003 fd1a 	bl	8008d20 <__sprint_r>
 80052ec:	2800      	cmp	r0, #0
 80052ee:	f47f aeb7 	bne.w	8005060 <_vfprintf_r+0x22c>
 80052f2:	3c10      	subs	r4, #16
 80052f4:	2c10      	cmp	r4, #16
 80052f6:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 80052f8:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80052fa:	ae38      	add	r6, sp, #224	; 0xe0
 80052fc:	dce9      	bgt.n	80052d2 <_vfprintf_r+0x49e>
 80052fe:	4694      	mov	ip, r2
 8005300:	46ba      	mov	sl, r7
 8005302:	3301      	adds	r3, #1
 8005304:	44a4      	add	ip, r4
 8005306:	2b07      	cmp	r3, #7
 8005308:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 800530c:	932c      	str	r3, [sp, #176]	; 0xb0
 800530e:	f8c6 a000 	str.w	sl, [r6]
 8005312:	6074      	str	r4, [r6, #4]
 8005314:	dd09      	ble.n	800532a <_vfprintf_r+0x4f6>
 8005316:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005318:	4649      	mov	r1, r9
 800531a:	aa2b      	add	r2, sp, #172	; 0xac
 800531c:	f003 fd00 	bl	8008d20 <__sprint_r>
 8005320:	2800      	cmp	r0, #0
 8005322:	f47f ae9d 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005326:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 800532a:	9c10      	ldr	r4, [sp, #64]	; 0x40
 800532c:	980c      	ldr	r0, [sp, #48]	; 0x30
 800532e:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8005330:	42a8      	cmp	r0, r5
 8005332:	bfac      	ite	ge
 8005334:	1824      	addge	r4, r4, r0
 8005336:	1964      	addlt	r4, r4, r5
 8005338:	9410      	str	r4, [sp, #64]	; 0x40
 800533a:	f1bc 0f00 	cmp.w	ip, #0
 800533e:	f040 8352 	bne.w	80059e6 <_vfprintf_r+0xbb2>
 8005342:	2300      	movs	r3, #0
 8005344:	932c      	str	r3, [sp, #176]	; 0xb0
 8005346:	ae38      	add	r6, sp, #224	; 0xe0
 8005348:	e5b6      	b.n	8004eb8 <_vfprintf_r+0x84>
 800534a:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 800534e:	930a      	str	r3, [sp, #40]	; 0x28
 8005350:	f01c 0320 	ands.w	r3, ip, #32
 8005354:	f000 81ce 	beq.w	80056f4 <_vfprintf_r+0x8c0>
 8005358:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 800535a:	1de3      	adds	r3, r4, #7
 800535c:	f023 0307 	bic.w	r3, r3, #7
 8005360:	f103 0508 	add.w	r5, r3, #8
 8005364:	950f      	str	r5, [sp, #60]	; 0x3c
 8005366:	e9d3 4500 	ldrd	r4, r5, [r3]
 800536a:	2300      	movs	r3, #0
 800536c:	e696      	b.n	800509c <_vfprintf_r+0x268>
 800536e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005370:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005374:	930a      	str	r3, [sp, #40]	; 0x28
 8005376:	1d15      	adds	r5, r2, #4
 8005378:	2330      	movs	r3, #48	; 0x30
 800537a:	f04f 0878 	mov.w	r8, #120	; 0x78
 800537e:	f04c 0c02 	orr.w	ip, ip, #2
 8005382:	48b7      	ldr	r0, [pc, #732]	; (8005660 <_vfprintf_r+0x82c>)
 8005384:	f88d 3090 	strb.w	r3, [sp, #144]	; 0x90
 8005388:	950f      	str	r5, [sp, #60]	; 0x3c
 800538a:	6814      	ldr	r4, [r2, #0]
 800538c:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 8005390:	2500      	movs	r5, #0
 8005392:	f88d 8091 	strb.w	r8, [sp, #145]	; 0x91
 8005396:	901a      	str	r0, [sp, #104]	; 0x68
 8005398:	2302      	movs	r3, #2
 800539a:	e67f      	b.n	800509c <_vfprintf_r+0x268>
 800539c:	f893 8000 	ldrb.w	r8, [r3]
 80053a0:	222b      	movs	r2, #43	; 0x2b
 80053a2:	e5c0      	b.n	8004f26 <_vfprintf_r+0xf2>
 80053a4:	f893 8000 	ldrb.w	r8, [r3]
 80053a8:	2a00      	cmp	r2, #0
 80053aa:	f47f adbc 	bne.w	8004f26 <_vfprintf_r+0xf2>
 80053ae:	2220      	movs	r2, #32
 80053b0:	e5b9      	b.n	8004f26 <_vfprintf_r+0xf2>
 80053b2:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 80053b4:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 80053b6:	6824      	ldr	r4, [r4, #0]
 80053b8:	940e      	str	r4, [sp, #56]	; 0x38
 80053ba:	2c00      	cmp	r4, #0
 80053bc:	f105 0104 	add.w	r1, r5, #4
 80053c0:	f6ff ae15 	blt.w	8004fee <_vfprintf_r+0x1ba>
 80053c4:	910f      	str	r1, [sp, #60]	; 0x3c
 80053c6:	f893 8000 	ldrb.w	r8, [r3]
 80053ca:	e5ac      	b.n	8004f26 <_vfprintf_r+0xf2>
 80053cc:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80053d0:	f04c 0c20 	orr.w	ip, ip, #32
 80053d4:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 80053d8:	f893 8000 	ldrb.w	r8, [r3]
 80053dc:	e5a3      	b.n	8004f26 <_vfprintf_r+0xf2>
 80053de:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 80053e0:	930a      	str	r3, [sp, #40]	; 0x28
 80053e2:	6827      	ldr	r7, [r4, #0]
 80053e4:	f04f 0a00 	mov.w	sl, #0
 80053e8:	f88d a08f 	strb.w	sl, [sp, #143]	; 0x8f
 80053ec:	1d25      	adds	r5, r4, #4
 80053ee:	2f00      	cmp	r7, #0
 80053f0:	f000 866b 	beq.w	80060ca <_vfprintf_r+0x1296>
 80053f4:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 80053f6:	2c00      	cmp	r4, #0
 80053f8:	4638      	mov	r0, r7
 80053fa:	f2c0 8616 	blt.w	800602a <_vfprintf_r+0x11f6>
 80053fe:	4651      	mov	r1, sl
 8005400:	4622      	mov	r2, r4
 8005402:	f002 fea9 	bl	8008158 <memchr>
 8005406:	2800      	cmp	r0, #0
 8005408:	f000 86ab 	beq.w	8006162 <_vfprintf_r+0x132e>
 800540c:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800540e:	950f      	str	r5, [sp, #60]	; 0x3c
 8005410:	1bc0      	subs	r0, r0, r7
 8005412:	42a0      	cmp	r0, r4
 8005414:	bfb8      	it	lt
 8005416:	4604      	movlt	r4, r0
 8005418:	ea24 75e4 	bic.w	r5, r4, r4, asr #31
 800541c:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8005420:	f8cd a050 	str.w	sl, [sp, #80]	; 0x50
 8005424:	950c      	str	r5, [sp, #48]	; 0x30
 8005426:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 800542a:	e664      	b.n	80050f6 <_vfprintf_r+0x2c2>
 800542c:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800542e:	4c8c      	ldr	r4, [pc, #560]	; (8005660 <_vfprintf_r+0x82c>)
 8005430:	930a      	str	r3, [sp, #40]	; 0x28
 8005432:	06af      	lsls	r7, r5, #26
 8005434:	941a      	str	r4, [sp, #104]	; 0x68
 8005436:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 800543a:	d547      	bpl.n	80054cc <_vfprintf_r+0x698>
 800543c:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 8005440:	f10c 0307 	add.w	r3, ip, #7
 8005444:	f023 0307 	bic.w	r3, r3, #7
 8005448:	f103 0408 	add.w	r4, r3, #8
 800544c:	940f      	str	r4, [sp, #60]	; 0x3c
 800544e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005452:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005456:	f01c 0f01 	tst.w	ip, #1
 800545a:	f000 82f8 	beq.w	8005a4e <_vfprintf_r+0xc1a>
 800545e:	ea54 0005 	orrs.w	r0, r4, r5
 8005462:	f000 82f4 	beq.w	8005a4e <_vfprintf_r+0xc1a>
 8005466:	2330      	movs	r3, #48	; 0x30
 8005468:	f04c 0c02 	orr.w	ip, ip, #2
 800546c:	f88d 3090 	strb.w	r3, [sp, #144]	; 0x90
 8005470:	f88d 8091 	strb.w	r8, [sp, #145]	; 0x91
 8005474:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 8005478:	2302      	movs	r3, #2
 800547a:	e60f      	b.n	800509c <_vfprintf_r+0x268>
 800547c:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005480:	930a      	str	r3, [sp, #40]	; 0x28
 8005482:	f04c 0c10 	orr.w	ip, ip, #16
 8005486:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 800548a:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800548c:	06a2      	lsls	r2, r4, #26
 800548e:	f53f adfa 	bmi.w	8005086 <_vfprintf_r+0x252>
 8005492:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005494:	06e3      	lsls	r3, r4, #27
 8005496:	f100 8334 	bmi.w	8005b02 <_vfprintf_r+0xcce>
 800549a:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 800549e:	f01c 0f40 	tst.w	ip, #64	; 0x40
 80054a2:	f000 832e 	beq.w	8005b02 <_vfprintf_r+0xcce>
 80054a6:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 80054aa:	f8bc 4000 	ldrh.w	r4, [ip]
 80054ae:	f10c 0c04 	add.w	ip, ip, #4
 80054b2:	2500      	movs	r5, #0
 80054b4:	2301      	movs	r3, #1
 80054b6:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 80054ba:	e5ef      	b.n	800509c <_vfprintf_r+0x268>
 80054bc:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80054be:	4c69      	ldr	r4, [pc, #420]	; (8005664 <_vfprintf_r+0x830>)
 80054c0:	930a      	str	r3, [sp, #40]	; 0x28
 80054c2:	06af      	lsls	r7, r5, #26
 80054c4:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 80054c8:	941a      	str	r4, [sp, #104]	; 0x68
 80054ca:	d4b7      	bmi.n	800543c <_vfprintf_r+0x608>
 80054cc:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80054ce:	06ed      	lsls	r5, r5, #27
 80054d0:	f140 84ec 	bpl.w	8005eac <_vfprintf_r+0x1078>
 80054d4:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 80054d8:	f8dc 4000 	ldr.w	r4, [ip]
 80054dc:	f10c 0c04 	add.w	ip, ip, #4
 80054e0:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 80054e4:	2500      	movs	r5, #0
 80054e6:	e7b4      	b.n	8005452 <_vfprintf_r+0x61e>
 80054e8:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80054ec:	f04c 0c40 	orr.w	ip, ip, #64	; 0x40
 80054f0:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 80054f4:	f893 8000 	ldrb.w	r8, [r3]
 80054f8:	e515      	b.n	8004f26 <_vfprintf_r+0xf2>
 80054fa:	f893 8000 	ldrb.w	r8, [r3]
 80054fe:	f1b8 0f6c 	cmp.w	r8, #108	; 0x6c
 8005502:	4619      	mov	r1, r3
 8005504:	f000 857c 	beq.w	8006000 <_vfprintf_r+0x11cc>
 8005508:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800550a:	f045 0510 	orr.w	r5, r5, #16
 800550e:	9509      	str	r5, [sp, #36]	; 0x24
 8005510:	e509      	b.n	8004f26 <_vfprintf_r+0xf2>
 8005512:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005516:	930a      	str	r3, [sp, #40]	; 0x28
 8005518:	f01c 0f20 	tst.w	ip, #32
 800551c:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 8005520:	f000 84a8 	beq.w	8005e74 <_vfprintf_r+0x1040>
 8005524:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 8005526:	6821      	ldr	r1, [r4, #0]
 8005528:	9c10      	ldr	r4, [sp, #64]	; 0x40
 800552a:	17e5      	asrs	r5, r4, #31
 800552c:	462b      	mov	r3, r5
 800552e:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005530:	4622      	mov	r2, r4
 8005532:	3504      	adds	r5, #4
 8005534:	950f      	str	r5, [sp, #60]	; 0x3c
 8005536:	e9c1 2300 	strd	r2, r3, [r1]
 800553a:	e4bd      	b.n	8004eb8 <_vfprintf_r+0x84>
 800553c:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800553e:	f045 0501 	orr.w	r5, r5, #1
 8005542:	9509      	str	r5, [sp, #36]	; 0x24
 8005544:	f893 8000 	ldrb.w	r8, [r3]
 8005548:	e4ed      	b.n	8004f26 <_vfprintf_r+0xf2>
 800554a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800554c:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 800554e:	930a      	str	r3, [sp, #40]	; 0x28
 8005550:	6812      	ldr	r2, [r2, #0]
 8005552:	f88d 20b8 	strb.w	r2, [sp, #184]	; 0xb8
 8005556:	2300      	movs	r3, #0
 8005558:	2401      	movs	r4, #1
 800555a:	3504      	adds	r5, #4
 800555c:	469a      	mov	sl, r3
 800555e:	940c      	str	r4, [sp, #48]	; 0x30
 8005560:	950f      	str	r5, [sp, #60]	; 0x3c
 8005562:	f88d 308f 	strb.w	r3, [sp, #143]	; 0x8f
 8005566:	930b      	str	r3, [sp, #44]	; 0x2c
 8005568:	9314      	str	r3, [sp, #80]	; 0x50
 800556a:	af2e      	add	r7, sp, #184	; 0xb8
 800556c:	e5c9      	b.n	8005102 <_vfprintf_r+0x2ce>
 800556e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005570:	930a      	str	r3, [sp, #40]	; 0x28
 8005572:	06a3      	lsls	r3, r4, #26
 8005574:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 8005578:	d53c      	bpl.n	80055f4 <_vfprintf_r+0x7c0>
 800557a:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 800557c:	1de9      	adds	r1, r5, #7
 800557e:	f021 0107 	bic.w	r1, r1, #7
 8005582:	e9d1 2300 	ldrd	r2, r3, [r1]
 8005586:	3108      	adds	r1, #8
 8005588:	910f      	str	r1, [sp, #60]	; 0x3c
 800558a:	4614      	mov	r4, r2
 800558c:	461d      	mov	r5, r3
 800558e:	2a00      	cmp	r2, #0
 8005590:	f173 0000 	sbcs.w	r0, r3, #0
 8005594:	f2c0 83d1 	blt.w	8005d3a <_vfprintf_r+0xf06>
 8005598:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 800559c:	2301      	movs	r3, #1
 800559e:	e581      	b.n	80050a4 <_vfprintf_r+0x270>
 80055a0:	f893 8000 	ldrb.w	r8, [r3]
 80055a4:	f1b8 0f2a 	cmp.w	r8, #42	; 0x2a
 80055a8:	f103 0001 	add.w	r0, r3, #1
 80055ac:	f000 86bd 	beq.w	800632a <_vfprintf_r+0x14f6>
 80055b0:	f1a8 0130 	sub.w	r1, r8, #48	; 0x30
 80055b4:	2909      	cmp	r1, #9
 80055b6:	bf98      	it	ls
 80055b8:	2300      	movls	r3, #0
 80055ba:	f200 861b 	bhi.w	80061f4 <_vfprintf_r+0x13c0>
 80055be:	f810 8b01 	ldrb.w	r8, [r0], #1
 80055c2:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 80055c6:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 80055ca:	f1a8 0130 	sub.w	r1, r8, #48	; 0x30
 80055ce:	2909      	cmp	r1, #9
 80055d0:	d9f5      	bls.n	80055be <_vfprintf_r+0x78a>
 80055d2:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 80055d6:	930b      	str	r3, [sp, #44]	; 0x2c
 80055d8:	4603      	mov	r3, r0
 80055da:	e4a5      	b.n	8004f28 <_vfprintf_r+0xf4>
 80055dc:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80055e0:	930a      	str	r3, [sp, #40]	; 0x28
 80055e2:	f04c 0c10 	orr.w	ip, ip, #16
 80055e6:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
 80055ea:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80055ec:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 80055f0:	06a3      	lsls	r3, r4, #26
 80055f2:	d4c2      	bmi.n	800557a <_vfprintf_r+0x746>
 80055f4:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80055f8:	f01c 0f10 	tst.w	ip, #16
 80055fc:	f040 82b3 	bne.w	8005b66 <_vfprintf_r+0xd32>
 8005600:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005602:	0667      	lsls	r7, r4, #25
 8005604:	f140 82af 	bpl.w	8005b66 <_vfprintf_r+0xd32>
 8005608:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 800560c:	f9bc 4000 	ldrsh.w	r4, [ip]
 8005610:	f10c 0c04 	add.w	ip, ip, #4
 8005614:	17e5      	asrs	r5, r4, #31
 8005616:	4622      	mov	r2, r4
 8005618:	462b      	mov	r3, r5
 800561a:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 800561e:	e7b6      	b.n	800558e <_vfprintf_r+0x75a>
 8005620:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005622:	f045 0580 	orr.w	r5, r5, #128	; 0x80
 8005626:	9509      	str	r5, [sp, #36]	; 0x24
 8005628:	f893 8000 	ldrb.w	r8, [r3]
 800562c:	e47b      	b.n	8004f26 <_vfprintf_r+0xf2>
 800562e:	2400      	movs	r4, #0
 8005630:	f1a8 0130 	sub.w	r1, r8, #48	; 0x30
 8005634:	940e      	str	r4, [sp, #56]	; 0x38
 8005636:	4620      	mov	r0, r4
 8005638:	f813 8b01 	ldrb.w	r8, [r3], #1
 800563c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8005640:	eb01 0040 	add.w	r0, r1, r0, lsl #1
 8005644:	f1a8 0130 	sub.w	r1, r8, #48	; 0x30
 8005648:	2909      	cmp	r1, #9
 800564a:	d9f5      	bls.n	8005638 <_vfprintf_r+0x804>
 800564c:	900e      	str	r0, [sp, #56]	; 0x38
 800564e:	e46b      	b.n	8004f28 <_vfprintf_r+0xf4>
 8005650:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005652:	f045 0508 	orr.w	r5, r5, #8
 8005656:	9509      	str	r5, [sp, #36]	; 0x24
 8005658:	f893 8000 	ldrb.w	r8, [r3]
 800565c:	e463      	b.n	8004f26 <_vfprintf_r+0xf2>
 800565e:	bf00      	nop
 8005660:	0800b5f4 	.word	0x0800b5f4
 8005664:	0800b5e0 	.word	0x0800b5e0
 8005668:	0800b614 	.word	0x0800b614
 800566c:	0800b5c0 	.word	0x0800b5c0
 8005670:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005672:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005674:	930a      	str	r3, [sp, #40]	; 0x28
 8005676:	1deb      	adds	r3, r5, #7
 8005678:	0725      	lsls	r5, r4, #28
 800567a:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 800567e:	f023 0307 	bic.w	r3, r3, #7
 8005682:	f140 840b 	bpl.w	8005e9c <_vfprintf_r+0x1068>
 8005686:	e9d3 4500 	ldrd	r4, r5, [r3]
 800568a:	e9cd 4516 	strd	r4, r5, [sp, #88]	; 0x58
 800568e:	f103 0c08 	add.w	ip, r3, #8
 8005692:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8005696:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 800569a:	f003 fa6b 	bl	8008b74 <__fpclassifyd>
 800569e:	2801      	cmp	r0, #1
 80056a0:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 80056a4:	f040 8353 	bne.w	8005d4e <_vfprintf_r+0xf1a>
 80056a8:	2200      	movs	r2, #0
 80056aa:	2300      	movs	r3, #0
 80056ac:	f7ff f822 	bl	80046f4 <__aeabi_dcmplt>
 80056b0:	2800      	cmp	r0, #0
 80056b2:	f040 853c 	bne.w	800612e <_vfprintf_r+0x12fa>
 80056b6:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 80056ba:	2503      	movs	r5, #3
 80056bc:	950c      	str	r5, [sp, #48]	; 0x30
 80056be:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80056c0:	4f9e      	ldr	r7, [pc, #632]	; (800593c <_vfprintf_r+0xb08>)
 80056c2:	4b9f      	ldr	r3, [pc, #636]	; (8005940 <_vfprintf_r+0xb0c>)
 80056c4:	f025 0580 	bic.w	r5, r5, #128	; 0x80
 80056c8:	2400      	movs	r4, #0
 80056ca:	9509      	str	r5, [sp, #36]	; 0x24
 80056cc:	2500      	movs	r5, #0
 80056ce:	940b      	str	r4, [sp, #44]	; 0x2c
 80056d0:	f1b8 0f47 	cmp.w	r8, #71	; 0x47
 80056d4:	bfd8      	it	le
 80056d6:	461f      	movle	r7, r3
 80056d8:	2403      	movs	r4, #3
 80056da:	9514      	str	r5, [sp, #80]	; 0x50
 80056dc:	e50b      	b.n	80050f6 <_vfprintf_r+0x2c2>
 80056de:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80056e0:	930a      	str	r3, [sp, #40]	; 0x28
 80056e2:	f045 0510 	orr.w	r5, r5, #16
 80056e6:	9509      	str	r5, [sp, #36]	; 0x24
 80056e8:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80056ec:	f01c 0320 	ands.w	r3, ip, #32
 80056f0:	f47f ae32 	bne.w	8005358 <_vfprintf_r+0x524>
 80056f4:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 80056f8:	f01c 0210 	ands.w	r2, ip, #16
 80056fc:	f040 823f 	bne.w	8005b7e <_vfprintf_r+0xd4a>
 8005700:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005704:	f01c 0340 	ands.w	r3, ip, #64	; 0x40
 8005708:	f000 8239 	beq.w	8005b7e <_vfprintf_r+0xd4a>
 800570c:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 8005710:	f8bc 4000 	ldrh.w	r4, [ip]
 8005714:	f10c 0c04 	add.w	ip, ip, #4
 8005718:	4613      	mov	r3, r2
 800571a:	2500      	movs	r5, #0
 800571c:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8005720:	e4bc      	b.n	800509c <_vfprintf_r+0x268>
 8005722:	930a      	str	r3, [sp, #40]	; 0x28
 8005724:	f88d 208f 	strb.w	r2, [sp, #143]	; 0x8f
 8005728:	f1b8 0f00 	cmp.w	r8, #0
 800572c:	f43f ac91 	beq.w	8005052 <_vfprintf_r+0x21e>
 8005730:	2300      	movs	r3, #0
 8005732:	f04f 0c01 	mov.w	ip, #1
 8005736:	469a      	mov	sl, r3
 8005738:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 800573c:	f88d 80b8 	strb.w	r8, [sp, #184]	; 0xb8
 8005740:	f88d 308f 	strb.w	r3, [sp, #143]	; 0x8f
 8005744:	930b      	str	r3, [sp, #44]	; 0x2c
 8005746:	9314      	str	r3, [sp, #80]	; 0x50
 8005748:	4664      	mov	r4, ip
 800574a:	af2e      	add	r7, sp, #184	; 0xb8
 800574c:	e4d9      	b.n	8005102 <_vfprintf_r+0x2ce>
 800574e:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005752:	e52c      	b.n	80051ae <_vfprintf_r+0x37a>
 8005754:	2b01      	cmp	r3, #1
 8005756:	f000 80e3 	beq.w	8005920 <_vfprintf_r+0xaec>
 800575a:	2b02      	cmp	r3, #2
 800575c:	f10d 03df 	add.w	r3, sp, #223	; 0xdf
 8005760:	d118      	bne.n	8005794 <_vfprintf_r+0x960>
 8005762:	f8dd c068 	ldr.w	ip, [sp, #104]	; 0x68
 8005766:	4619      	mov	r1, r3
 8005768:	f004 000f 	and.w	r0, r4, #15
 800576c:	0922      	lsrs	r2, r4, #4
 800576e:	ea42 7205 	orr.w	r2, r2, r5, lsl #28
 8005772:	460f      	mov	r7, r1
 8005774:	092b      	lsrs	r3, r5, #4
 8005776:	f81c 1000 	ldrb.w	r1, [ip, r0]
 800577a:	7039      	strb	r1, [r7, #0]
 800577c:	ea52 0003 	orrs.w	r0, r2, r3
 8005780:	4614      	mov	r4, r2
 8005782:	461d      	mov	r5, r3
 8005784:	f107 31ff 	add.w	r1, r7, #4294967295
 8005788:	d1ee      	bne.n	8005768 <_vfprintf_r+0x934>
 800578a:	9d08      	ldr	r5, [sp, #32]
 800578c:	e9cd 231e 	strd	r2, r3, [sp, #120]	; 0x78
 8005790:	1bec      	subs	r4, r5, r7
 8005792:	e4a7      	b.n	80050e4 <_vfprintf_r+0x2b0>
 8005794:	08e0      	lsrs	r0, r4, #3
 8005796:	ea40 7045 	orr.w	r0, r0, r5, lsl #29
 800579a:	f004 0207 	and.w	r2, r4, #7
 800579e:	08e9      	lsrs	r1, r5, #3
 80057a0:	3230      	adds	r2, #48	; 0x30
 80057a2:	ea50 0c01 	orrs.w	ip, r0, r1
 80057a6:	461f      	mov	r7, r3
 80057a8:	701a      	strb	r2, [r3, #0]
 80057aa:	4604      	mov	r4, r0
 80057ac:	460d      	mov	r5, r1
 80057ae:	f103 33ff 	add.w	r3, r3, #4294967295
 80057b2:	d1ef      	bne.n	8005794 <_vfprintf_r+0x960>
 80057b4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80057b6:	e9cd 011c 	strd	r0, r1, [sp, #112]	; 0x70
 80057ba:	07e0      	lsls	r0, r4, #31
 80057bc:	4639      	mov	r1, r7
 80057be:	f140 80b8 	bpl.w	8005932 <_vfprintf_r+0xafe>
 80057c2:	2a30      	cmp	r2, #48	; 0x30
 80057c4:	f000 80b5 	beq.w	8005932 <_vfprintf_r+0xafe>
 80057c8:	9d08      	ldr	r5, [sp, #32]
 80057ca:	461f      	mov	r7, r3
 80057cc:	2330      	movs	r3, #48	; 0x30
 80057ce:	1bec      	subs	r4, r5, r7
 80057d0:	f801 3c01 	strb.w	r3, [r1, #-1]
 80057d4:	e486      	b.n	80050e4 <_vfprintf_r+0x2b0>
 80057d6:	f1b8 0f65 	cmp.w	r8, #101	; 0x65
 80057da:	f340 80b7 	ble.w	800594c <_vfprintf_r+0xb18>
 80057de:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 80057e2:	2200      	movs	r2, #0
 80057e4:	2300      	movs	r3, #0
 80057e6:	f8cd c01c 	str.w	ip, [sp, #28]
 80057ea:	f7fe ff79 	bl	80046e0 <__aeabi_dcmpeq>
 80057ee:	f8dd c01c 	ldr.w	ip, [sp, #28]
 80057f2:	2800      	cmp	r0, #0
 80057f4:	f000 812e 	beq.w	8005a54 <_vfprintf_r+0xc20>
 80057f8:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80057fa:	4a52      	ldr	r2, [pc, #328]	; (8005944 <_vfprintf_r+0xb10>)
 80057fc:	6032      	str	r2, [r6, #0]
 80057fe:	3301      	adds	r3, #1
 8005800:	f10c 0c01 	add.w	ip, ip, #1
 8005804:	2201      	movs	r2, #1
 8005806:	2b07      	cmp	r3, #7
 8005808:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 800580c:	932c      	str	r3, [sp, #176]	; 0xb0
 800580e:	6072      	str	r2, [r6, #4]
 8005810:	f300 836c 	bgt.w	8005eec <_vfprintf_r+0x10b8>
 8005814:	3608      	adds	r6, #8
 8005816:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005818:	9c11      	ldr	r4, [sp, #68]	; 0x44
 800581a:	42a3      	cmp	r3, r4
 800581c:	db03      	blt.n	8005826 <_vfprintf_r+0x9f2>
 800581e:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005820:	07ef      	lsls	r7, r5, #31
 8005822:	f57f ad3e 	bpl.w	80052a2 <_vfprintf_r+0x46e>
 8005826:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005828:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800582a:	9c15      	ldr	r4, [sp, #84]	; 0x54
 800582c:	6034      	str	r4, [r6, #0]
 800582e:	3301      	adds	r3, #1
 8005830:	44ac      	add	ip, r5
 8005832:	2b07      	cmp	r3, #7
 8005834:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005838:	6075      	str	r5, [r6, #4]
 800583a:	932c      	str	r3, [sp, #176]	; 0xb0
 800583c:	f300 83e9 	bgt.w	8006012 <_vfprintf_r+0x11de>
 8005840:	3608      	adds	r6, #8
 8005842:	9d11      	ldr	r5, [sp, #68]	; 0x44
 8005844:	1e6c      	subs	r4, r5, #1
 8005846:	2c00      	cmp	r4, #0
 8005848:	f77f ad2b 	ble.w	80052a2 <_vfprintf_r+0x46e>
 800584c:	2c10      	cmp	r4, #16
 800584e:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005850:	f8df a0f4 	ldr.w	sl, [pc, #244]	; 8005948 <_vfprintf_r+0xb14>
 8005854:	f340 819c 	ble.w	8005b90 <_vfprintf_r+0xd5c>
 8005858:	2510      	movs	r5, #16
 800585a:	4662      	mov	r2, ip
 800585c:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
 8005860:	4657      	mov	r7, sl
 8005862:	e004      	b.n	800586e <_vfprintf_r+0xa3a>
 8005864:	3608      	adds	r6, #8
 8005866:	3c10      	subs	r4, #16
 8005868:	2c10      	cmp	r4, #16
 800586a:	f340 818f 	ble.w	8005b8c <_vfprintf_r+0xd58>
 800586e:	3301      	adds	r3, #1
 8005870:	3210      	adds	r2, #16
 8005872:	2b07      	cmp	r3, #7
 8005874:	922d      	str	r2, [sp, #180]	; 0xb4
 8005876:	932c      	str	r3, [sp, #176]	; 0xb0
 8005878:	6037      	str	r7, [r6, #0]
 800587a:	6075      	str	r5, [r6, #4]
 800587c:	ddf2      	ble.n	8005864 <_vfprintf_r+0xa30>
 800587e:	4640      	mov	r0, r8
 8005880:	4649      	mov	r1, r9
 8005882:	aa2b      	add	r2, sp, #172	; 0xac
 8005884:	f003 fa4c 	bl	8008d20 <__sprint_r>
 8005888:	2800      	cmp	r0, #0
 800588a:	f47f abe9 	bne.w	8005060 <_vfprintf_r+0x22c>
 800588e:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 8005890:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005892:	ae38      	add	r6, sp, #224	; 0xe0
 8005894:	e7e7      	b.n	8005866 <_vfprintf_r+0xa32>
 8005896:	980e      	ldr	r0, [sp, #56]	; 0x38
 8005898:	990c      	ldr	r1, [sp, #48]	; 0x30
 800589a:	1a45      	subs	r5, r0, r1
 800589c:	2d00      	cmp	r5, #0
 800589e:	f77f acae 	ble.w	80051fe <_vfprintf_r+0x3ca>
 80058a2:	2d10      	cmp	r5, #16
 80058a4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80058a6:	f8df a0a0 	ldr.w	sl, [pc, #160]	; 8005948 <_vfprintf_r+0xb14>
 80058aa:	dd2c      	ble.n	8005906 <_vfprintf_r+0xad2>
 80058ac:	4651      	mov	r1, sl
 80058ae:	9412      	str	r4, [sp, #72]	; 0x48
 80058b0:	46aa      	mov	sl, r5
 80058b2:	f04f 0b10 	mov.w	fp, #16
 80058b6:	4662      	mov	r2, ip
 80058b8:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 80058ba:	460d      	mov	r5, r1
 80058bc:	e006      	b.n	80058cc <_vfprintf_r+0xa98>
 80058be:	f1aa 0a10 	sub.w	sl, sl, #16
 80058c2:	f1ba 0f10 	cmp.w	sl, #16
 80058c6:	f106 0608 	add.w	r6, r6, #8
 80058ca:	dd17      	ble.n	80058fc <_vfprintf_r+0xac8>
 80058cc:	3301      	adds	r3, #1
 80058ce:	3210      	adds	r2, #16
 80058d0:	2b07      	cmp	r3, #7
 80058d2:	922d      	str	r2, [sp, #180]	; 0xb4
 80058d4:	932c      	str	r3, [sp, #176]	; 0xb0
 80058d6:	e886 0820 	stmia.w	r6, {r5, fp}
 80058da:	ddf0      	ble.n	80058be <_vfprintf_r+0xa8a>
 80058dc:	4620      	mov	r0, r4
 80058de:	4649      	mov	r1, r9
 80058e0:	aa2b      	add	r2, sp, #172	; 0xac
 80058e2:	f003 fa1d 	bl	8008d20 <__sprint_r>
 80058e6:	2800      	cmp	r0, #0
 80058e8:	f47f abba 	bne.w	8005060 <_vfprintf_r+0x22c>
 80058ec:	f1aa 0a10 	sub.w	sl, sl, #16
 80058f0:	f1ba 0f10 	cmp.w	sl, #16
 80058f4:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 80058f6:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80058f8:	ae38      	add	r6, sp, #224	; 0xe0
 80058fa:	dce7      	bgt.n	80058cc <_vfprintf_r+0xa98>
 80058fc:	4694      	mov	ip, r2
 80058fe:	9c12      	ldr	r4, [sp, #72]	; 0x48
 8005900:	462a      	mov	r2, r5
 8005902:	4655      	mov	r5, sl
 8005904:	4692      	mov	sl, r2
 8005906:	3301      	adds	r3, #1
 8005908:	44ac      	add	ip, r5
 800590a:	2b07      	cmp	r3, #7
 800590c:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005910:	932c      	str	r3, [sp, #176]	; 0xb0
 8005912:	f8c6 a000 	str.w	sl, [r6]
 8005916:	6075      	str	r5, [r6, #4]
 8005918:	f300 8202 	bgt.w	8005d20 <_vfprintf_r+0xeec>
 800591c:	3608      	adds	r6, #8
 800591e:	e46e      	b.n	80051fe <_vfprintf_r+0x3ca>
 8005920:	2d00      	cmp	r5, #0
 8005922:	bf08      	it	eq
 8005924:	2c0a      	cmpeq	r4, #10
 8005926:	f080 813f 	bcs.w	8005ba8 <_vfprintf_r+0xd74>
 800592a:	af48      	add	r7, sp, #288	; 0x120
 800592c:	3430      	adds	r4, #48	; 0x30
 800592e:	f807 4d41 	strb.w	r4, [r7, #-65]!
 8005932:	9d08      	ldr	r5, [sp, #32]
 8005934:	1bec      	subs	r4, r5, r7
 8005936:	f7ff bbd5 	b.w	80050e4 <_vfprintf_r+0x2b0>
 800593a:	bf00      	nop
 800593c:	0800b5d4 	.word	0x0800b5d4
 8005940:	0800b5d0 	.word	0x0800b5d0
 8005944:	0800b610 	.word	0x0800b610
 8005948:	0800b5c0 	.word	0x0800b5c0
 800594c:	9c11      	ldr	r4, [sp, #68]	; 0x44
 800594e:	2c01      	cmp	r4, #1
 8005950:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005952:	f340 81a7 	ble.w	8005ca4 <_vfprintf_r+0xe70>
 8005956:	3401      	adds	r4, #1
 8005958:	f10c 0501 	add.w	r5, ip, #1
 800595c:	2301      	movs	r3, #1
 800595e:	2c07      	cmp	r4, #7
 8005960:	952d      	str	r5, [sp, #180]	; 0xb4
 8005962:	942c      	str	r4, [sp, #176]	; 0xb0
 8005964:	6037      	str	r7, [r6, #0]
 8005966:	6073      	str	r3, [r6, #4]
 8005968:	f300 81b7 	bgt.w	8005cda <_vfprintf_r+0xea6>
 800596c:	3608      	adds	r6, #8
 800596e:	9818      	ldr	r0, [sp, #96]	; 0x60
 8005970:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005972:	6031      	str	r1, [r6, #0]
 8005974:	3401      	adds	r4, #1
 8005976:	4405      	add	r5, r0
 8005978:	2c07      	cmp	r4, #7
 800597a:	952d      	str	r5, [sp, #180]	; 0xb4
 800597c:	942c      	str	r4, [sp, #176]	; 0xb0
 800597e:	6070      	str	r0, [r6, #4]
 8005980:	f300 81c2 	bgt.w	8005d08 <_vfprintf_r+0xed4>
 8005984:	3608      	adds	r6, #8
 8005986:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 800598a:	2200      	movs	r2, #0
 800598c:	2300      	movs	r3, #0
 800598e:	f7fe fea7 	bl	80046e0 <__aeabi_dcmpeq>
 8005992:	2800      	cmp	r0, #0
 8005994:	f040 80bd 	bne.w	8005b12 <_vfprintf_r+0xcde>
 8005998:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800599a:	3401      	adds	r4, #1
 800599c:	1e53      	subs	r3, r2, #1
 800599e:	3701      	adds	r7, #1
 80059a0:	441d      	add	r5, r3
 80059a2:	2c07      	cmp	r4, #7
 80059a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80059a6:	952d      	str	r5, [sp, #180]	; 0xb4
 80059a8:	6037      	str	r7, [r6, #0]
 80059aa:	6073      	str	r3, [r6, #4]
 80059ac:	f300 8189 	bgt.w	8005cc2 <_vfprintf_r+0xe8e>
 80059b0:	3608      	adds	r6, #8
 80059b2:	f8dd c064 	ldr.w	ip, [sp, #100]	; 0x64
 80059b6:	3401      	adds	r4, #1
 80059b8:	44ac      	add	ip, r5
 80059ba:	9d19      	ldr	r5, [sp, #100]	; 0x64
 80059bc:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 80059c0:	ab27      	add	r3, sp, #156	; 0x9c
 80059c2:	2c07      	cmp	r4, #7
 80059c4:	942c      	str	r4, [sp, #176]	; 0xb0
 80059c6:	e886 0028 	stmia.w	r6, {r3, r5}
 80059ca:	f77f ac69 	ble.w	80052a0 <_vfprintf_r+0x46c>
 80059ce:	980d      	ldr	r0, [sp, #52]	; 0x34
 80059d0:	4649      	mov	r1, r9
 80059d2:	aa2b      	add	r2, sp, #172	; 0xac
 80059d4:	f003 f9a4 	bl	8008d20 <__sprint_r>
 80059d8:	2800      	cmp	r0, #0
 80059da:	f47f ab41 	bne.w	8005060 <_vfprintf_r+0x22c>
 80059de:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 80059e2:	ae38      	add	r6, sp, #224	; 0xe0
 80059e4:	e45d      	b.n	80052a2 <_vfprintf_r+0x46e>
 80059e6:	980d      	ldr	r0, [sp, #52]	; 0x34
 80059e8:	4649      	mov	r1, r9
 80059ea:	aa2b      	add	r2, sp, #172	; 0xac
 80059ec:	f003 f998 	bl	8008d20 <__sprint_r>
 80059f0:	2800      	cmp	r0, #0
 80059f2:	f43f aca6 	beq.w	8005342 <_vfprintf_r+0x50e>
 80059f6:	f7ff bb33 	b.w	8005060 <_vfprintf_r+0x22c>
 80059fa:	980d      	ldr	r0, [sp, #52]	; 0x34
 80059fc:	4649      	mov	r1, r9
 80059fe:	aa2b      	add	r2, sp, #172	; 0xac
 8005a00:	f003 f98e 	bl	8008d20 <__sprint_r>
 8005a04:	2800      	cmp	r0, #0
 8005a06:	f47f ab2b 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005a0a:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005a0e:	ae38      	add	r6, sp, #224	; 0xe0
 8005a10:	e437      	b.n	8005282 <_vfprintf_r+0x44e>
 8005a12:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005a14:	4649      	mov	r1, r9
 8005a16:	aa2b      	add	r2, sp, #172	; 0xac
 8005a18:	f003 f982 	bl	8008d20 <__sprint_r>
 8005a1c:	2800      	cmp	r0, #0
 8005a1e:	f47f ab1f 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005a22:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005a26:	ae38      	add	r6, sp, #224	; 0xe0
 8005a28:	f7ff bbd4 	b.w	80051d4 <_vfprintf_r+0x3a0>
 8005a2c:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005a2e:	4649      	mov	r1, r9
 8005a30:	aa2b      	add	r2, sp, #172	; 0xac
 8005a32:	f003 f975 	bl	8008d20 <__sprint_r>
 8005a36:	2800      	cmp	r0, #0
 8005a38:	f47f ab12 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005a3c:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005a40:	ae38      	add	r6, sp, #224	; 0xe0
 8005a42:	f7ff bbd8 	b.w	80051f6 <_vfprintf_r+0x3c2>
 8005a46:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 8005a48:	af38      	add	r7, sp, #224	; 0xe0
 8005a4a:	f7ff bb4b 	b.w	80050e4 <_vfprintf_r+0x2b0>
 8005a4e:	2302      	movs	r3, #2
 8005a50:	f7ff bb24 	b.w	800509c <_vfprintf_r+0x268>
 8005a54:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005a56:	2b00      	cmp	r3, #0
 8005a58:	f340 8254 	ble.w	8005f04 <_vfprintf_r+0x10d0>
 8005a5c:	9c11      	ldr	r4, [sp, #68]	; 0x44
 8005a5e:	9d14      	ldr	r5, [sp, #80]	; 0x50
 8005a60:	f8dd 8044 	ldr.w	r8, [sp, #68]	; 0x44
 8005a64:	42ac      	cmp	r4, r5
 8005a66:	bfa8      	it	ge
 8005a68:	462c      	movge	r4, r5
 8005a6a:	2c00      	cmp	r4, #0
 8005a6c:	44b8      	add	r8, r7
 8005a6e:	dd0b      	ble.n	8005a88 <_vfprintf_r+0xc54>
 8005a70:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005a72:	6037      	str	r7, [r6, #0]
 8005a74:	3301      	adds	r3, #1
 8005a76:	44a4      	add	ip, r4
 8005a78:	2b07      	cmp	r3, #7
 8005a7a:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005a7e:	6074      	str	r4, [r6, #4]
 8005a80:	932c      	str	r3, [sp, #176]	; 0xb0
 8005a82:	f300 82fb 	bgt.w	800607c <_vfprintf_r+0x1248>
 8005a86:	3608      	adds	r6, #8
 8005a88:	9d14      	ldr	r5, [sp, #80]	; 0x50
 8005a8a:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
 8005a8e:	1b2c      	subs	r4, r5, r4
 8005a90:	2c00      	cmp	r4, #0
 8005a92:	f340 80b1 	ble.w	8005bf8 <_vfprintf_r+0xdc4>
 8005a96:	2c10      	cmp	r4, #16
 8005a98:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005a9a:	f8df a6f0 	ldr.w	sl, [pc, #1776]	; 800618c <_vfprintf_r+0x1358>
 8005a9e:	f340 8218 	ble.w	8005ed2 <_vfprintf_r+0x109e>
 8005aa2:	4651      	mov	r1, sl
 8005aa4:	2510      	movs	r5, #16
 8005aa6:	46ba      	mov	sl, r7
 8005aa8:	4662      	mov	r2, ip
 8005aaa:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
 8005aae:	460f      	mov	r7, r1
 8005ab0:	e004      	b.n	8005abc <_vfprintf_r+0xc88>
 8005ab2:	3608      	adds	r6, #8
 8005ab4:	3c10      	subs	r4, #16
 8005ab6:	2c10      	cmp	r4, #16
 8005ab8:	f340 8207 	ble.w	8005eca <_vfprintf_r+0x1096>
 8005abc:	3301      	adds	r3, #1
 8005abe:	3210      	adds	r2, #16
 8005ac0:	2b07      	cmp	r3, #7
 8005ac2:	922d      	str	r2, [sp, #180]	; 0xb4
 8005ac4:	932c      	str	r3, [sp, #176]	; 0xb0
 8005ac6:	6037      	str	r7, [r6, #0]
 8005ac8:	6075      	str	r5, [r6, #4]
 8005aca:	ddf2      	ble.n	8005ab2 <_vfprintf_r+0xc7e>
 8005acc:	4658      	mov	r0, fp
 8005ace:	4649      	mov	r1, r9
 8005ad0:	aa2b      	add	r2, sp, #172	; 0xac
 8005ad2:	f003 f925 	bl	8008d20 <__sprint_r>
 8005ad6:	2800      	cmp	r0, #0
 8005ad8:	f47f aac2 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005adc:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 8005ade:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005ae0:	ae38      	add	r6, sp, #224	; 0xe0
 8005ae2:	e7e7      	b.n	8005ab4 <_vfprintf_r+0xc80>
 8005ae4:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005ae6:	4649      	mov	r1, r9
 8005ae8:	aa2b      	add	r2, sp, #172	; 0xac
 8005aea:	f003 f919 	bl	8008d20 <__sprint_r>
 8005aee:	2800      	cmp	r0, #0
 8005af0:	f47f aab6 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005af4:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 8005af8:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005afc:	ae38      	add	r6, sp, #224	; 0xe0
 8005afe:	f7ff bb56 	b.w	80051ae <_vfprintf_r+0x37a>
 8005b02:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005b04:	682c      	ldr	r4, [r5, #0]
 8005b06:	3504      	adds	r5, #4
 8005b08:	950f      	str	r5, [sp, #60]	; 0x3c
 8005b0a:	2301      	movs	r3, #1
 8005b0c:	2500      	movs	r5, #0
 8005b0e:	f7ff bac5 	b.w	800509c <_vfprintf_r+0x268>
 8005b12:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005b14:	1e5f      	subs	r7, r3, #1
 8005b16:	2f00      	cmp	r7, #0
 8005b18:	f77f af4b 	ble.w	80059b2 <_vfprintf_r+0xb7e>
 8005b1c:	2f10      	cmp	r7, #16
 8005b1e:	f8df a66c 	ldr.w	sl, [pc, #1644]	; 800618c <_vfprintf_r+0x1358>
 8005b22:	f340 80e6 	ble.w	8005cf2 <_vfprintf_r+0xebe>
 8005b26:	f04f 0810 	mov.w	r8, #16
 8005b2a:	f8dd b034 	ldr.w	fp, [sp, #52]	; 0x34
 8005b2e:	e004      	b.n	8005b3a <_vfprintf_r+0xd06>
 8005b30:	3608      	adds	r6, #8
 8005b32:	3f10      	subs	r7, #16
 8005b34:	2f10      	cmp	r7, #16
 8005b36:	f340 80dc 	ble.w	8005cf2 <_vfprintf_r+0xebe>
 8005b3a:	3401      	adds	r4, #1
 8005b3c:	3510      	adds	r5, #16
 8005b3e:	2c07      	cmp	r4, #7
 8005b40:	952d      	str	r5, [sp, #180]	; 0xb4
 8005b42:	942c      	str	r4, [sp, #176]	; 0xb0
 8005b44:	f8c6 a000 	str.w	sl, [r6]
 8005b48:	f8c6 8004 	str.w	r8, [r6, #4]
 8005b4c:	ddf0      	ble.n	8005b30 <_vfprintf_r+0xcfc>
 8005b4e:	4658      	mov	r0, fp
 8005b50:	4649      	mov	r1, r9
 8005b52:	aa2b      	add	r2, sp, #172	; 0xac
 8005b54:	f003 f8e4 	bl	8008d20 <__sprint_r>
 8005b58:	2800      	cmp	r0, #0
 8005b5a:	f47f aa81 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005b5e:	9d2d      	ldr	r5, [sp, #180]	; 0xb4
 8005b60:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005b62:	ae38      	add	r6, sp, #224	; 0xe0
 8005b64:	e7e5      	b.n	8005b32 <_vfprintf_r+0xcfe>
 8005b66:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005b68:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 8005b6c:	682c      	ldr	r4, [r5, #0]
 8005b6e:	f10c 0c04 	add.w	ip, ip, #4
 8005b72:	17e5      	asrs	r5, r4, #31
 8005b74:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8005b78:	4622      	mov	r2, r4
 8005b7a:	462b      	mov	r3, r5
 8005b7c:	e507      	b.n	800558e <_vfprintf_r+0x75a>
 8005b7e:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005b80:	682c      	ldr	r4, [r5, #0]
 8005b82:	3504      	adds	r5, #4
 8005b84:	950f      	str	r5, [sp, #60]	; 0x3c
 8005b86:	2500      	movs	r5, #0
 8005b88:	f7ff ba88 	b.w	800509c <_vfprintf_r+0x268>
 8005b8c:	4694      	mov	ip, r2
 8005b8e:	46ba      	mov	sl, r7
 8005b90:	3301      	adds	r3, #1
 8005b92:	44a4      	add	ip, r4
 8005b94:	2b07      	cmp	r3, #7
 8005b96:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005b9a:	932c      	str	r3, [sp, #176]	; 0xb0
 8005b9c:	f8c6 a000 	str.w	sl, [r6]
 8005ba0:	6074      	str	r4, [r6, #4]
 8005ba2:	f77f ab7d 	ble.w	80052a0 <_vfprintf_r+0x46c>
 8005ba6:	e712      	b.n	80059ce <_vfprintf_r+0xb9a>
 8005ba8:	f10d 0bdf 	add.w	fp, sp, #223	; 0xdf
 8005bac:	4620      	mov	r0, r4
 8005bae:	4629      	mov	r1, r5
 8005bb0:	220a      	movs	r2, #10
 8005bb2:	2300      	movs	r3, #0
 8005bb4:	f7fe fdee 	bl	8004794 <__aeabi_uldivmod>
 8005bb8:	3230      	adds	r2, #48	; 0x30
 8005bba:	f88b 2000 	strb.w	r2, [fp]
 8005bbe:	4620      	mov	r0, r4
 8005bc0:	4629      	mov	r1, r5
 8005bc2:	220a      	movs	r2, #10
 8005bc4:	2300      	movs	r3, #0
 8005bc6:	f7fe fde5 	bl	8004794 <__aeabi_uldivmod>
 8005bca:	4604      	mov	r4, r0
 8005bcc:	460d      	mov	r5, r1
 8005bce:	ea54 0c05 	orrs.w	ip, r4, r5
 8005bd2:	465f      	mov	r7, fp
 8005bd4:	f10b 3bff 	add.w	fp, fp, #4294967295
 8005bd8:	d1e8      	bne.n	8005bac <_vfprintf_r+0xd78>
 8005bda:	9d08      	ldr	r5, [sp, #32]
 8005bdc:	1bec      	subs	r4, r5, r7
 8005bde:	f7ff ba81 	b.w	80050e4 <_vfprintf_r+0x2b0>
 8005be2:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005be4:	4649      	mov	r1, r9
 8005be6:	aa2b      	add	r2, sp, #172	; 0xac
 8005be8:	f003 f89a 	bl	8008d20 <__sprint_r>
 8005bec:	2800      	cmp	r0, #0
 8005bee:	f47f aa37 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005bf2:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005bf6:	ae38      	add	r6, sp, #224	; 0xe0
 8005bf8:	9d14      	ldr	r5, [sp, #80]	; 0x50
 8005bfa:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005bfc:	442f      	add	r7, r5
 8005bfe:	9d11      	ldr	r5, [sp, #68]	; 0x44
 8005c00:	42ac      	cmp	r4, r5
 8005c02:	db40      	blt.n	8005c86 <_vfprintf_r+0xe52>
 8005c04:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005c06:	07e8      	lsls	r0, r5, #31
 8005c08:	d43d      	bmi.n	8005c86 <_vfprintf_r+0xe52>
 8005c0a:	9811      	ldr	r0, [sp, #68]	; 0x44
 8005c0c:	ebc7 0508 	rsb	r5, r7, r8
 8005c10:	1b04      	subs	r4, r0, r4
 8005c12:	42ac      	cmp	r4, r5
 8005c14:	bfb8      	it	lt
 8005c16:	4625      	movlt	r5, r4
 8005c18:	2d00      	cmp	r5, #0
 8005c1a:	dd0b      	ble.n	8005c34 <_vfprintf_r+0xe00>
 8005c1c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005c1e:	6037      	str	r7, [r6, #0]
 8005c20:	3301      	adds	r3, #1
 8005c22:	44ac      	add	ip, r5
 8005c24:	2b07      	cmp	r3, #7
 8005c26:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005c2a:	6075      	str	r5, [r6, #4]
 8005c2c:	932c      	str	r3, [sp, #176]	; 0xb0
 8005c2e:	f300 825b 	bgt.w	80060e8 <_vfprintf_r+0x12b4>
 8005c32:	3608      	adds	r6, #8
 8005c34:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
 8005c38:	1b64      	subs	r4, r4, r5
 8005c3a:	2c00      	cmp	r4, #0
 8005c3c:	f77f ab31 	ble.w	80052a2 <_vfprintf_r+0x46e>
 8005c40:	2c10      	cmp	r4, #16
 8005c42:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005c44:	f8df a544 	ldr.w	sl, [pc, #1348]	; 800618c <_vfprintf_r+0x1358>
 8005c48:	dda2      	ble.n	8005b90 <_vfprintf_r+0xd5c>
 8005c4a:	2510      	movs	r5, #16
 8005c4c:	4662      	mov	r2, ip
 8005c4e:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
 8005c52:	4657      	mov	r7, sl
 8005c54:	e003      	b.n	8005c5e <_vfprintf_r+0xe2a>
 8005c56:	3608      	adds	r6, #8
 8005c58:	3c10      	subs	r4, #16
 8005c5a:	2c10      	cmp	r4, #16
 8005c5c:	dd96      	ble.n	8005b8c <_vfprintf_r+0xd58>
 8005c5e:	3301      	adds	r3, #1
 8005c60:	3210      	adds	r2, #16
 8005c62:	2b07      	cmp	r3, #7
 8005c64:	922d      	str	r2, [sp, #180]	; 0xb4
 8005c66:	932c      	str	r3, [sp, #176]	; 0xb0
 8005c68:	6037      	str	r7, [r6, #0]
 8005c6a:	6075      	str	r5, [r6, #4]
 8005c6c:	ddf3      	ble.n	8005c56 <_vfprintf_r+0xe22>
 8005c6e:	4640      	mov	r0, r8
 8005c70:	4649      	mov	r1, r9
 8005c72:	aa2b      	add	r2, sp, #172	; 0xac
 8005c74:	f003 f854 	bl	8008d20 <__sprint_r>
 8005c78:	2800      	cmp	r0, #0
 8005c7a:	f47f a9f1 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005c7e:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 8005c80:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005c82:	ae38      	add	r6, sp, #224	; 0xe0
 8005c84:	e7e8      	b.n	8005c58 <_vfprintf_r+0xe24>
 8005c86:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005c88:	9d15      	ldr	r5, [sp, #84]	; 0x54
 8005c8a:	6035      	str	r5, [r6, #0]
 8005c8c:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8005c8e:	6075      	str	r5, [r6, #4]
 8005c90:	3301      	adds	r3, #1
 8005c92:	44ac      	add	ip, r5
 8005c94:	2b07      	cmp	r3, #7
 8005c96:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005c9a:	932c      	str	r3, [sp, #176]	; 0xb0
 8005c9c:	f300 8208 	bgt.w	80060b0 <_vfprintf_r+0x127c>
 8005ca0:	3608      	adds	r6, #8
 8005ca2:	e7b2      	b.n	8005c0a <_vfprintf_r+0xdd6>
 8005ca4:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005ca6:	07e9      	lsls	r1, r5, #31
 8005ca8:	f53f ae55 	bmi.w	8005956 <_vfprintf_r+0xb22>
 8005cac:	3401      	adds	r4, #1
 8005cae:	f10c 0501 	add.w	r5, ip, #1
 8005cb2:	2301      	movs	r3, #1
 8005cb4:	2c07      	cmp	r4, #7
 8005cb6:	952d      	str	r5, [sp, #180]	; 0xb4
 8005cb8:	942c      	str	r4, [sp, #176]	; 0xb0
 8005cba:	6037      	str	r7, [r6, #0]
 8005cbc:	6073      	str	r3, [r6, #4]
 8005cbe:	f77f ae77 	ble.w	80059b0 <_vfprintf_r+0xb7c>
 8005cc2:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005cc4:	4649      	mov	r1, r9
 8005cc6:	aa2b      	add	r2, sp, #172	; 0xac
 8005cc8:	f003 f82a 	bl	8008d20 <__sprint_r>
 8005ccc:	2800      	cmp	r0, #0
 8005cce:	f47f a9c7 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005cd2:	9d2d      	ldr	r5, [sp, #180]	; 0xb4
 8005cd4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005cd6:	ae38      	add	r6, sp, #224	; 0xe0
 8005cd8:	e66b      	b.n	80059b2 <_vfprintf_r+0xb7e>
 8005cda:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005cdc:	4649      	mov	r1, r9
 8005cde:	aa2b      	add	r2, sp, #172	; 0xac
 8005ce0:	f003 f81e 	bl	8008d20 <__sprint_r>
 8005ce4:	2800      	cmp	r0, #0
 8005ce6:	f47f a9bb 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005cea:	9d2d      	ldr	r5, [sp, #180]	; 0xb4
 8005cec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005cee:	ae38      	add	r6, sp, #224	; 0xe0
 8005cf0:	e63d      	b.n	800596e <_vfprintf_r+0xb3a>
 8005cf2:	3401      	adds	r4, #1
 8005cf4:	443d      	add	r5, r7
 8005cf6:	2c07      	cmp	r4, #7
 8005cf8:	952d      	str	r5, [sp, #180]	; 0xb4
 8005cfa:	942c      	str	r4, [sp, #176]	; 0xb0
 8005cfc:	f8c6 a000 	str.w	sl, [r6]
 8005d00:	6077      	str	r7, [r6, #4]
 8005d02:	f77f ae55 	ble.w	80059b0 <_vfprintf_r+0xb7c>
 8005d06:	e7dc      	b.n	8005cc2 <_vfprintf_r+0xe8e>
 8005d08:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005d0a:	4649      	mov	r1, r9
 8005d0c:	aa2b      	add	r2, sp, #172	; 0xac
 8005d0e:	f003 f807 	bl	8008d20 <__sprint_r>
 8005d12:	2800      	cmp	r0, #0
 8005d14:	f47f a9a4 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005d18:	9d2d      	ldr	r5, [sp, #180]	; 0xb4
 8005d1a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005d1c:	ae38      	add	r6, sp, #224	; 0xe0
 8005d1e:	e632      	b.n	8005986 <_vfprintf_r+0xb52>
 8005d20:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005d22:	4649      	mov	r1, r9
 8005d24:	aa2b      	add	r2, sp, #172	; 0xac
 8005d26:	f002 fffb 	bl	8008d20 <__sprint_r>
 8005d2a:	2800      	cmp	r0, #0
 8005d2c:	f47f a998 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005d30:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005d34:	ae38      	add	r6, sp, #224	; 0xe0
 8005d36:	f7ff ba62 	b.w	80051fe <_vfprintf_r+0x3ca>
 8005d3a:	f04f 0a2d 	mov.w	sl, #45	; 0x2d
 8005d3e:	4264      	negs	r4, r4
 8005d40:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8005d44:	f88d a08f 	strb.w	sl, [sp, #143]	; 0x8f
 8005d48:	2301      	movs	r3, #1
 8005d4a:	f7ff b9ab 	b.w	80050a4 <_vfprintf_r+0x270>
 8005d4e:	f002 ff11 	bl	8008b74 <__fpclassifyd>
 8005d52:	2800      	cmp	r0, #0
 8005d54:	f000 8123 	beq.w	8005f9e <_vfprintf_r+0x116a>
 8005d58:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8005d5a:	3501      	adds	r5, #1
 8005d5c:	f028 0a20 	bic.w	sl, r8, #32
 8005d60:	f000 8275 	beq.w	800624e <_vfprintf_r+0x141a>
 8005d64:	f1ba 0f47 	cmp.w	sl, #71	; 0x47
 8005d68:	d104      	bne.n	8005d74 <_vfprintf_r+0xf40>
 8005d6a:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8005d6c:	2d00      	cmp	r5, #0
 8005d6e:	bf08      	it	eq
 8005d70:	2501      	moveq	r5, #1
 8005d72:	950b      	str	r5, [sp, #44]	; 0x2c
 8005d74:	e9dd 2316 	ldrd	r2, r3, [sp, #88]	; 0x58
 8005d78:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005d7c:	2b00      	cmp	r3, #0
 8005d7e:	f44c 7c80 	orr.w	ip, ip, #256	; 0x100
 8005d82:	f8cd c048 	str.w	ip, [sp, #72]	; 0x48
 8005d86:	f2c0 8259 	blt.w	800623c <_vfprintf_r+0x1408>
 8005d8a:	e9dd 4516 	ldrd	r4, r5, [sp, #88]	; 0x58
 8005d8e:	e9cd 4520 	strd	r4, r5, [sp, #128]	; 0x80
 8005d92:	f04f 0b00 	mov.w	fp, #0
 8005d96:	f1b8 0f66 	cmp.w	r8, #102	; 0x66
 8005d9a:	f000 823d 	beq.w	8006218 <_vfprintf_r+0x13e4>
 8005d9e:	f1b8 0f46 	cmp.w	r8, #70	; 0x46
 8005da2:	f000 8295 	beq.w	80062d0 <_vfprintf_r+0x149c>
 8005da6:	f1ba 0f45 	cmp.w	sl, #69	; 0x45
 8005daa:	bf0a      	itet	eq
 8005dac:	9c0b      	ldreq	r4, [sp, #44]	; 0x2c
 8005dae:	9d0b      	ldrne	r5, [sp, #44]	; 0x2c
 8005db0:	1c65      	addeq	r5, r4, #1
 8005db2:	2002      	movs	r0, #2
 8005db4:	a925      	add	r1, sp, #148	; 0x94
 8005db6:	aa26      	add	r2, sp, #152	; 0x98
 8005db8:	ab29      	add	r3, sp, #164	; 0xa4
 8005dba:	e88d 0021 	stmia.w	sp, {r0, r5}
 8005dbe:	9203      	str	r2, [sp, #12]
 8005dc0:	9304      	str	r3, [sp, #16]
 8005dc2:	9102      	str	r1, [sp, #8]
 8005dc4:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005dc6:	e9dd 2320 	ldrd	r2, r3, [sp, #128]	; 0x80
 8005dca:	f000 fc19 	bl	8006600 <_dtoa_r>
 8005dce:	f1b8 0f67 	cmp.w	r8, #103	; 0x67
 8005dd2:	4607      	mov	r7, r0
 8005dd4:	d002      	beq.n	8005ddc <_vfprintf_r+0xfa8>
 8005dd6:	f1b8 0f47 	cmp.w	r8, #71	; 0x47
 8005dda:	d105      	bne.n	8005de8 <_vfprintf_r+0xfb4>
 8005ddc:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005de0:	f01c 0f01 	tst.w	ip, #1
 8005de4:	f000 8244 	beq.w	8006270 <_vfprintf_r+0x143c>
 8005de8:	f1ba 0f46 	cmp.w	sl, #70	; 0x46
 8005dec:	eb07 0405 	add.w	r4, r7, r5
 8005df0:	f000 81b0 	beq.w	8006154 <_vfprintf_r+0x1320>
 8005df4:	e9dd 0120 	ldrd	r0, r1, [sp, #128]	; 0x80
 8005df8:	2200      	movs	r2, #0
 8005dfa:	2300      	movs	r3, #0
 8005dfc:	f7fe fc70 	bl	80046e0 <__aeabi_dcmpeq>
 8005e00:	2800      	cmp	r0, #0
 8005e02:	f040 81a5 	bne.w	8006150 <_vfprintf_r+0x131c>
 8005e06:	9b29      	ldr	r3, [sp, #164]	; 0xa4
 8005e08:	429c      	cmp	r4, r3
 8005e0a:	d906      	bls.n	8005e1a <_vfprintf_r+0xfe6>
 8005e0c:	2130      	movs	r1, #48	; 0x30
 8005e0e:	1c5a      	adds	r2, r3, #1
 8005e10:	9229      	str	r2, [sp, #164]	; 0xa4
 8005e12:	7019      	strb	r1, [r3, #0]
 8005e14:	9b29      	ldr	r3, [sp, #164]	; 0xa4
 8005e16:	429c      	cmp	r4, r3
 8005e18:	d8f9      	bhi.n	8005e0e <_vfprintf_r+0xfda>
 8005e1a:	1bdb      	subs	r3, r3, r7
 8005e1c:	f1ba 0f47 	cmp.w	sl, #71	; 0x47
 8005e20:	9311      	str	r3, [sp, #68]	; 0x44
 8005e22:	f000 817c 	beq.w	800611e <_vfprintf_r+0x12ea>
 8005e26:	f1b8 0f65 	cmp.w	r8, #101	; 0x65
 8005e2a:	f340 829d 	ble.w	8006368 <_vfprintf_r+0x1534>
 8005e2e:	f1b8 0f66 	cmp.w	r8, #102	; 0x66
 8005e32:	f000 820f 	beq.w	8006254 <_vfprintf_r+0x1420>
 8005e36:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005e38:	9414      	str	r4, [sp, #80]	; 0x50
 8005e3a:	9c11      	ldr	r4, [sp, #68]	; 0x44
 8005e3c:	9d14      	ldr	r5, [sp, #80]	; 0x50
 8005e3e:	42ac      	cmp	r4, r5
 8005e40:	f300 81dd 	bgt.w	80061fe <_vfprintf_r+0x13ca>
 8005e44:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005e48:	f01c 0f01 	tst.w	ip, #1
 8005e4c:	f040 825c 	bne.w	8006308 <_vfprintf_r+0x14d4>
 8005e50:	ea25 73e5 	bic.w	r3, r5, r5, asr #31
 8005e54:	462c      	mov	r4, r5
 8005e56:	f04f 0867 	mov.w	r8, #103	; 0x67
 8005e5a:	f1bb 0f00 	cmp.w	fp, #0
 8005e5e:	f040 816c 	bne.w	800613a <_vfprintf_r+0x1306>
 8005e62:	9d12      	ldr	r5, [sp, #72]	; 0x48
 8005e64:	930c      	str	r3, [sp, #48]	; 0x30
 8005e66:	9509      	str	r5, [sp, #36]	; 0x24
 8005e68:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005e6c:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 8005e70:	f7ff b941 	b.w	80050f6 <_vfprintf_r+0x2c2>
 8005e74:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005e78:	f01c 0f10 	tst.w	ip, #16
 8005e7c:	f040 80ab 	bne.w	8005fd6 <_vfprintf_r+0x11a2>
 8005e80:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8005e84:	f01c 0f40 	tst.w	ip, #64	; 0x40
 8005e88:	f000 813d 	beq.w	8006106 <_vfprintf_r+0x12d2>
 8005e8c:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 8005e8e:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005e90:	6823      	ldr	r3, [r4, #0]
 8005e92:	3404      	adds	r4, #4
 8005e94:	940f      	str	r4, [sp, #60]	; 0x3c
 8005e96:	801d      	strh	r5, [r3, #0]
 8005e98:	f7ff b80e 	b.w	8004eb8 <_vfprintf_r+0x84>
 8005e9c:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005ea0:	3308      	adds	r3, #8
 8005ea2:	e9cd 4516 	strd	r4, r5, [sp, #88]	; 0x58
 8005ea6:	930f      	str	r3, [sp, #60]	; 0x3c
 8005ea8:	f7ff bbf5 	b.w	8005696 <_vfprintf_r+0x862>
 8005eac:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005eae:	0664      	lsls	r4, r4, #25
 8005eb0:	f140 808a 	bpl.w	8005fc8 <_vfprintf_r+0x1194>
 8005eb4:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 8005eb8:	f8bc 4000 	ldrh.w	r4, [ip]
 8005ebc:	f10c 0c04 	add.w	ip, ip, #4
 8005ec0:	2500      	movs	r5, #0
 8005ec2:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8005ec6:	f7ff bac4 	b.w	8005452 <_vfprintf_r+0x61e>
 8005eca:	4694      	mov	ip, r2
 8005ecc:	463a      	mov	r2, r7
 8005ece:	4657      	mov	r7, sl
 8005ed0:	4692      	mov	sl, r2
 8005ed2:	3301      	adds	r3, #1
 8005ed4:	44a4      	add	ip, r4
 8005ed6:	2b07      	cmp	r3, #7
 8005ed8:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005edc:	932c      	str	r3, [sp, #176]	; 0xb0
 8005ede:	f8c6 a000 	str.w	sl, [r6]
 8005ee2:	6074      	str	r4, [r6, #4]
 8005ee4:	f73f ae7d 	bgt.w	8005be2 <_vfprintf_r+0xdae>
 8005ee8:	3608      	adds	r6, #8
 8005eea:	e685      	b.n	8005bf8 <_vfprintf_r+0xdc4>
 8005eec:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005eee:	4649      	mov	r1, r9
 8005ef0:	aa2b      	add	r2, sp, #172	; 0xac
 8005ef2:	f002 ff15 	bl	8008d20 <__sprint_r>
 8005ef6:	2800      	cmp	r0, #0
 8005ef8:	f47f a8b2 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005efc:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005f00:	ae38      	add	r6, sp, #224	; 0xe0
 8005f02:	e488      	b.n	8005816 <_vfprintf_r+0x9e2>
 8005f04:	9a2c      	ldr	r2, [sp, #176]	; 0xb0
 8005f06:	499d      	ldr	r1, [pc, #628]	; (800617c <_vfprintf_r+0x1348>)
 8005f08:	6031      	str	r1, [r6, #0]
 8005f0a:	3201      	adds	r2, #1
 8005f0c:	f10c 0c01 	add.w	ip, ip, #1
 8005f10:	2101      	movs	r1, #1
 8005f12:	2a07      	cmp	r2, #7
 8005f14:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8005f18:	922c      	str	r2, [sp, #176]	; 0xb0
 8005f1a:	6071      	str	r1, [r6, #4]
 8005f1c:	dc63      	bgt.n	8005fe6 <_vfprintf_r+0x11b2>
 8005f1e:	3608      	adds	r6, #8
 8005f20:	461c      	mov	r4, r3
 8005f22:	b92c      	cbnz	r4, 8005f30 <_vfprintf_r+0x10fc>
 8005f24:	9d11      	ldr	r5, [sp, #68]	; 0x44
 8005f26:	b91d      	cbnz	r5, 8005f30 <_vfprintf_r+0x10fc>
 8005f28:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005f2a:	07ed      	lsls	r5, r5, #31
 8005f2c:	f57f a9b9 	bpl.w	80052a2 <_vfprintf_r+0x46e>
 8005f30:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005f32:	9a18      	ldr	r2, [sp, #96]	; 0x60
 8005f34:	9d15      	ldr	r5, [sp, #84]	; 0x54
 8005f36:	6035      	str	r5, [r6, #0]
 8005f38:	3301      	adds	r3, #1
 8005f3a:	4462      	add	r2, ip
 8005f3c:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8005f3e:	922d      	str	r2, [sp, #180]	; 0xb4
 8005f40:	2b07      	cmp	r3, #7
 8005f42:	6075      	str	r5, [r6, #4]
 8005f44:	932c      	str	r3, [sp, #176]	; 0xb0
 8005f46:	f300 8148 	bgt.w	80061da <_vfprintf_r+0x13a6>
 8005f4a:	3608      	adds	r6, #8
 8005f4c:	4264      	negs	r4, r4
 8005f4e:	2c00      	cmp	r4, #0
 8005f50:	f340 8086 	ble.w	8006060 <_vfprintf_r+0x122c>
 8005f54:	2c10      	cmp	r4, #16
 8005f56:	f8df a234 	ldr.w	sl, [pc, #564]	; 800618c <_vfprintf_r+0x1358>
 8005f5a:	f340 809e 	ble.w	800609a <_vfprintf_r+0x1266>
 8005f5e:	4651      	mov	r1, sl
 8005f60:	2510      	movs	r5, #16
 8005f62:	46ba      	mov	sl, r7
 8005f64:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
 8005f68:	460f      	mov	r7, r1
 8005f6a:	e004      	b.n	8005f76 <_vfprintf_r+0x1142>
 8005f6c:	3608      	adds	r6, #8
 8005f6e:	3c10      	subs	r4, #16
 8005f70:	2c10      	cmp	r4, #16
 8005f72:	f340 808f 	ble.w	8006094 <_vfprintf_r+0x1260>
 8005f76:	3301      	adds	r3, #1
 8005f78:	3210      	adds	r2, #16
 8005f7a:	2b07      	cmp	r3, #7
 8005f7c:	922d      	str	r2, [sp, #180]	; 0xb4
 8005f7e:	932c      	str	r3, [sp, #176]	; 0xb0
 8005f80:	6037      	str	r7, [r6, #0]
 8005f82:	6075      	str	r5, [r6, #4]
 8005f84:	ddf2      	ble.n	8005f6c <_vfprintf_r+0x1138>
 8005f86:	4640      	mov	r0, r8
 8005f88:	4649      	mov	r1, r9
 8005f8a:	aa2b      	add	r2, sp, #172	; 0xac
 8005f8c:	f002 fec8 	bl	8008d20 <__sprint_r>
 8005f90:	2800      	cmp	r0, #0
 8005f92:	f47f a865 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005f96:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 8005f98:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8005f9a:	ae38      	add	r6, sp, #224	; 0xe0
 8005f9c:	e7e7      	b.n	8005f6e <_vfprintf_r+0x113a>
 8005f9e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005fa0:	4f77      	ldr	r7, [pc, #476]	; (8006180 <_vfprintf_r+0x134c>)
 8005fa2:	4b78      	ldr	r3, [pc, #480]	; (8006184 <_vfprintf_r+0x1350>)
 8005fa4:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 8005fa8:	900b      	str	r0, [sp, #44]	; 0x2c
 8005faa:	f04f 0c03 	mov.w	ip, #3
 8005fae:	f024 0480 	bic.w	r4, r4, #128	; 0x80
 8005fb2:	9409      	str	r4, [sp, #36]	; 0x24
 8005fb4:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 8005fb8:	9014      	str	r0, [sp, #80]	; 0x50
 8005fba:	f1b8 0f47 	cmp.w	r8, #71	; 0x47
 8005fbe:	bfd8      	it	le
 8005fc0:	461f      	movle	r7, r3
 8005fc2:	4664      	mov	r4, ip
 8005fc4:	f7ff b897 	b.w	80050f6 <_vfprintf_r+0x2c2>
 8005fc8:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8005fca:	682c      	ldr	r4, [r5, #0]
 8005fcc:	3504      	adds	r5, #4
 8005fce:	950f      	str	r5, [sp, #60]	; 0x3c
 8005fd0:	2500      	movs	r5, #0
 8005fd2:	f7ff ba3e 	b.w	8005452 <_vfprintf_r+0x61e>
 8005fd6:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 8005fd8:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005fda:	6823      	ldr	r3, [r4, #0]
 8005fdc:	3404      	adds	r4, #4
 8005fde:	940f      	str	r4, [sp, #60]	; 0x3c
 8005fe0:	601d      	str	r5, [r3, #0]
 8005fe2:	f7fe bf69 	b.w	8004eb8 <_vfprintf_r+0x84>
 8005fe6:	980d      	ldr	r0, [sp, #52]	; 0x34
 8005fe8:	4649      	mov	r1, r9
 8005fea:	aa2b      	add	r2, sp, #172	; 0xac
 8005fec:	f002 fe98 	bl	8008d20 <__sprint_r>
 8005ff0:	2800      	cmp	r0, #0
 8005ff2:	f47f a835 	bne.w	8005060 <_vfprintf_r+0x22c>
 8005ff6:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005ff8:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8005ffc:	ae38      	add	r6, sp, #224	; 0xe0
 8005ffe:	e790      	b.n	8005f22 <_vfprintf_r+0x10ee>
 8006000:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8006002:	f891 8001 	ldrb.w	r8, [r1, #1]
 8006006:	f044 0420 	orr.w	r4, r4, #32
 800600a:	3301      	adds	r3, #1
 800600c:	9409      	str	r4, [sp, #36]	; 0x24
 800600e:	f7fe bf8a 	b.w	8004f26 <_vfprintf_r+0xf2>
 8006012:	980d      	ldr	r0, [sp, #52]	; 0x34
 8006014:	4649      	mov	r1, r9
 8006016:	aa2b      	add	r2, sp, #172	; 0xac
 8006018:	f002 fe82 	bl	8008d20 <__sprint_r>
 800601c:	2800      	cmp	r0, #0
 800601e:	f47f a81f 	bne.w	8005060 <_vfprintf_r+0x22c>
 8006022:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8006026:	ae38      	add	r6, sp, #224	; 0xe0
 8006028:	e40b      	b.n	8005842 <_vfprintf_r+0xa0e>
 800602a:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800602e:	f002 fe0d 	bl	8008c4c <strlen>
 8006032:	950f      	str	r5, [sp, #60]	; 0x3c
 8006034:	ea20 7ce0 	bic.w	ip, r0, r0, asr #31
 8006038:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 800603a:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 800603e:	4604      	mov	r4, r0
 8006040:	9514      	str	r5, [sp, #80]	; 0x50
 8006042:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 8006046:	f7ff b856 	b.w	80050f6 <_vfprintf_r+0x2c2>
 800604a:	980d      	ldr	r0, [sp, #52]	; 0x34
 800604c:	4649      	mov	r1, r9
 800604e:	aa2b      	add	r2, sp, #172	; 0xac
 8006050:	f002 fe66 	bl	8008d20 <__sprint_r>
 8006054:	2800      	cmp	r0, #0
 8006056:	f47f a803 	bne.w	8005060 <_vfprintf_r+0x22c>
 800605a:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 800605c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800605e:	ae38      	add	r6, sp, #224	; 0xe0
 8006060:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
 8006064:	9c11      	ldr	r4, [sp, #68]	; 0x44
 8006066:	6037      	str	r7, [r6, #0]
 8006068:	3301      	adds	r3, #1
 800606a:	4494      	add	ip, r2
 800606c:	2b07      	cmp	r3, #7
 800606e:	f8cd c0b4 	str.w	ip, [sp, #180]	; 0xb4
 8006072:	932c      	str	r3, [sp, #176]	; 0xb0
 8006074:	6074      	str	r4, [r6, #4]
 8006076:	f77f a913 	ble.w	80052a0 <_vfprintf_r+0x46c>
 800607a:	e4a8      	b.n	80059ce <_vfprintf_r+0xb9a>
 800607c:	980d      	ldr	r0, [sp, #52]	; 0x34
 800607e:	4649      	mov	r1, r9
 8006080:	aa2b      	add	r2, sp, #172	; 0xac
 8006082:	f002 fe4d 	bl	8008d20 <__sprint_r>
 8006086:	2800      	cmp	r0, #0
 8006088:	f47e afea 	bne.w	8005060 <_vfprintf_r+0x22c>
 800608c:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8006090:	ae38      	add	r6, sp, #224	; 0xe0
 8006092:	e4f9      	b.n	8005a88 <_vfprintf_r+0xc54>
 8006094:	4639      	mov	r1, r7
 8006096:	4657      	mov	r7, sl
 8006098:	468a      	mov	sl, r1
 800609a:	3301      	adds	r3, #1
 800609c:	4422      	add	r2, r4
 800609e:	2b07      	cmp	r3, #7
 80060a0:	922d      	str	r2, [sp, #180]	; 0xb4
 80060a2:	932c      	str	r3, [sp, #176]	; 0xb0
 80060a4:	f8c6 a000 	str.w	sl, [r6]
 80060a8:	6074      	str	r4, [r6, #4]
 80060aa:	dcce      	bgt.n	800604a <_vfprintf_r+0x1216>
 80060ac:	3608      	adds	r6, #8
 80060ae:	e7d7      	b.n	8006060 <_vfprintf_r+0x122c>
 80060b0:	980d      	ldr	r0, [sp, #52]	; 0x34
 80060b2:	4649      	mov	r1, r9
 80060b4:	aa2b      	add	r2, sp, #172	; 0xac
 80060b6:	f002 fe33 	bl	8008d20 <__sprint_r>
 80060ba:	2800      	cmp	r0, #0
 80060bc:	f47e afd0 	bne.w	8005060 <_vfprintf_r+0x22c>
 80060c0:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80060c2:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 80060c6:	ae38      	add	r6, sp, #224	; 0xe0
 80060c8:	e59f      	b.n	8005c0a <_vfprintf_r+0xdd6>
 80060ca:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 80060cc:	9714      	str	r7, [sp, #80]	; 0x50
 80060ce:	2c06      	cmp	r4, #6
 80060d0:	bf28      	it	cs
 80060d2:	2406      	movcs	r4, #6
 80060d4:	ea24 7ce4 	bic.w	ip, r4, r4, asr #31
 80060d8:	46ba      	mov	sl, r7
 80060da:	970b      	str	r7, [sp, #44]	; 0x2c
 80060dc:	950f      	str	r5, [sp, #60]	; 0x3c
 80060de:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 80060e2:	4f29      	ldr	r7, [pc, #164]	; (8006188 <_vfprintf_r+0x1354>)
 80060e4:	f7ff b807 	b.w	80050f6 <_vfprintf_r+0x2c2>
 80060e8:	980d      	ldr	r0, [sp, #52]	; 0x34
 80060ea:	4649      	mov	r1, r9
 80060ec:	aa2b      	add	r2, sp, #172	; 0xac
 80060ee:	f002 fe17 	bl	8008d20 <__sprint_r>
 80060f2:	2800      	cmp	r0, #0
 80060f4:	f47e afb4 	bne.w	8005060 <_vfprintf_r+0x22c>
 80060f8:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80060fa:	9911      	ldr	r1, [sp, #68]	; 0x44
 80060fc:	f8dd c0b4 	ldr.w	ip, [sp, #180]	; 0xb4
 8006100:	1b0c      	subs	r4, r1, r4
 8006102:	ae38      	add	r6, sp, #224	; 0xe0
 8006104:	e596      	b.n	8005c34 <_vfprintf_r+0xe00>
 8006106:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 800610a:	9c10      	ldr	r4, [sp, #64]	; 0x40
 800610c:	f8dc 3000 	ldr.w	r3, [ip]
 8006110:	f10c 0c04 	add.w	ip, ip, #4
 8006114:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8006118:	601c      	str	r4, [r3, #0]
 800611a:	f7fe becd 	b.w	8004eb8 <_vfprintf_r+0x84>
 800611e:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006120:	1cdc      	adds	r4, r3, #3
 8006122:	db35      	blt.n	8006190 <_vfprintf_r+0x135c>
 8006124:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 8006126:	429c      	cmp	r4, r3
 8006128:	db32      	blt.n	8006190 <_vfprintf_r+0x135c>
 800612a:	9314      	str	r3, [sp, #80]	; 0x50
 800612c:	e685      	b.n	8005e3a <_vfprintf_r+0x1006>
 800612e:	f04f 0a2d 	mov.w	sl, #45	; 0x2d
 8006132:	f88d a08f 	strb.w	sl, [sp, #143]	; 0x8f
 8006136:	f7ff bac0 	b.w	80056ba <_vfprintf_r+0x886>
 800613a:	9d12      	ldr	r5, [sp, #72]	; 0x48
 800613c:	9509      	str	r5, [sp, #36]	; 0x24
 800613e:	f04f 0a2d 	mov.w	sl, #45	; 0x2d
 8006142:	2500      	movs	r5, #0
 8006144:	930c      	str	r3, [sp, #48]	; 0x30
 8006146:	f88d a08f 	strb.w	sl, [sp, #143]	; 0x8f
 800614a:	950b      	str	r5, [sp, #44]	; 0x2c
 800614c:	f7fe bfd6 	b.w	80050fc <_vfprintf_r+0x2c8>
 8006150:	4623      	mov	r3, r4
 8006152:	e662      	b.n	8005e1a <_vfprintf_r+0xfe6>
 8006154:	783b      	ldrb	r3, [r7, #0]
 8006156:	2b30      	cmp	r3, #48	; 0x30
 8006158:	f000 80c1 	beq.w	80062de <_vfprintf_r+0x14aa>
 800615c:	9d25      	ldr	r5, [sp, #148]	; 0x94
 800615e:	442c      	add	r4, r5
 8006160:	e648      	b.n	8005df4 <_vfprintf_r+0xfc0>
 8006162:	ea24 7ce4 	bic.w	ip, r4, r4, asr #31
 8006166:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
 800616a:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800616c:	950f      	str	r5, [sp, #60]	; 0x3c
 800616e:	900b      	str	r0, [sp, #44]	; 0x2c
 8006170:	9014      	str	r0, [sp, #80]	; 0x50
 8006172:	f89d a08f 	ldrb.w	sl, [sp, #143]	; 0x8f
 8006176:	f7fe bfbe 	b.w	80050f6 <_vfprintf_r+0x2c2>
 800617a:	bf00      	nop
 800617c:	0800b610 	.word	0x0800b610
 8006180:	0800b5dc 	.word	0x0800b5dc
 8006184:	0800b5d8 	.word	0x0800b5d8
 8006188:	0800b608 	.word	0x0800b608
 800618c:	0800b5c0 	.word	0x0800b5c0
 8006190:	f1a8 0802 	sub.w	r8, r8, #2
 8006194:	3b01      	subs	r3, #1
 8006196:	2b00      	cmp	r3, #0
 8006198:	9325      	str	r3, [sp, #148]	; 0x94
 800619a:	bfba      	itte	lt
 800619c:	425b      	neglt	r3, r3
 800619e:	222d      	movlt	r2, #45	; 0x2d
 80061a0:	222b      	movge	r2, #43	; 0x2b
 80061a2:	2b09      	cmp	r3, #9
 80061a4:	f88d 809c 	strb.w	r8, [sp, #156]	; 0x9c
 80061a8:	f88d 209d 	strb.w	r2, [sp, #157]	; 0x9d
 80061ac:	dc62      	bgt.n	8006274 <_vfprintf_r+0x1440>
 80061ae:	3330      	adds	r3, #48	; 0x30
 80061b0:	2230      	movs	r2, #48	; 0x30
 80061b2:	f88d 309f 	strb.w	r3, [sp, #159]	; 0x9f
 80061b6:	f88d 209e 	strb.w	r2, [sp, #158]	; 0x9e
 80061ba:	ab28      	add	r3, sp, #160	; 0xa0
 80061bc:	9d11      	ldr	r5, [sp, #68]	; 0x44
 80061be:	9c11      	ldr	r4, [sp, #68]	; 0x44
 80061c0:	aa27      	add	r2, sp, #156	; 0x9c
 80061c2:	1a9a      	subs	r2, r3, r2
 80061c4:	2d01      	cmp	r5, #1
 80061c6:	9219      	str	r2, [sp, #100]	; 0x64
 80061c8:	4414      	add	r4, r2
 80061ca:	f340 80a4 	ble.w	8006316 <_vfprintf_r+0x14e2>
 80061ce:	3401      	adds	r4, #1
 80061d0:	2500      	movs	r5, #0
 80061d2:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 80061d6:	9514      	str	r5, [sp, #80]	; 0x50
 80061d8:	e63f      	b.n	8005e5a <_vfprintf_r+0x1026>
 80061da:	980d      	ldr	r0, [sp, #52]	; 0x34
 80061dc:	4649      	mov	r1, r9
 80061de:	aa2b      	add	r2, sp, #172	; 0xac
 80061e0:	f002 fd9e 	bl	8008d20 <__sprint_r>
 80061e4:	2800      	cmp	r0, #0
 80061e6:	f47e af3b 	bne.w	8005060 <_vfprintf_r+0x22c>
 80061ea:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80061ec:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
 80061ee:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80061f0:	ae38      	add	r6, sp, #224	; 0xe0
 80061f2:	e6ab      	b.n	8005f4c <_vfprintf_r+0x1118>
 80061f4:	2400      	movs	r4, #0
 80061f6:	4603      	mov	r3, r0
 80061f8:	940b      	str	r4, [sp, #44]	; 0x2c
 80061fa:	f7fe be95 	b.w	8004f28 <_vfprintf_r+0xf4>
 80061fe:	9c14      	ldr	r4, [sp, #80]	; 0x50
 8006200:	9d11      	ldr	r5, [sp, #68]	; 0x44
 8006202:	2c00      	cmp	r4, #0
 8006204:	bfd4      	ite	le
 8006206:	f1c4 0402 	rsble	r4, r4, #2
 800620a:	2401      	movgt	r4, #1
 800620c:	442c      	add	r4, r5
 800620e:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 8006212:	f04f 0867 	mov.w	r8, #103	; 0x67
 8006216:	e620      	b.n	8005e5a <_vfprintf_r+0x1026>
 8006218:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800621a:	9401      	str	r4, [sp, #4]
 800621c:	2003      	movs	r0, #3
 800621e:	a925      	add	r1, sp, #148	; 0x94
 8006220:	aa26      	add	r2, sp, #152	; 0x98
 8006222:	ab29      	add	r3, sp, #164	; 0xa4
 8006224:	9000      	str	r0, [sp, #0]
 8006226:	9203      	str	r2, [sp, #12]
 8006228:	9304      	str	r3, [sp, #16]
 800622a:	9102      	str	r1, [sp, #8]
 800622c:	980d      	ldr	r0, [sp, #52]	; 0x34
 800622e:	e9dd 2320 	ldrd	r2, r3, [sp, #128]	; 0x80
 8006232:	f000 f9e5 	bl	8006600 <_dtoa_r>
 8006236:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8006238:	4607      	mov	r7, r0
 800623a:	e5d5      	b.n	8005de8 <_vfprintf_r+0xfb4>
 800623c:	9917      	ldr	r1, [sp, #92]	; 0x5c
 800623e:	9816      	ldr	r0, [sp, #88]	; 0x58
 8006240:	9020      	str	r0, [sp, #128]	; 0x80
 8006242:	f101 4100 	add.w	r1, r1, #2147483648	; 0x80000000
 8006246:	9121      	str	r1, [sp, #132]	; 0x84
 8006248:	f04f 0b2d 	mov.w	fp, #45	; 0x2d
 800624c:	e5a3      	b.n	8005d96 <_vfprintf_r+0xf62>
 800624e:	2406      	movs	r4, #6
 8006250:	940b      	str	r4, [sp, #44]	; 0x2c
 8006252:	e58f      	b.n	8005d74 <_vfprintf_r+0xf40>
 8006254:	9d25      	ldr	r5, [sp, #148]	; 0x94
 8006256:	9514      	str	r5, [sp, #80]	; 0x50
 8006258:	2d00      	cmp	r5, #0
 800625a:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800625c:	dd78      	ble.n	8006350 <_vfprintf_r+0x151c>
 800625e:	2c00      	cmp	r4, #0
 8006260:	d14b      	bne.n	80062fa <_vfprintf_r+0x14c6>
 8006262:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8006264:	07e8      	lsls	r0, r5, #31
 8006266:	d448      	bmi.n	80062fa <_vfprintf_r+0x14c6>
 8006268:	9c14      	ldr	r4, [sp, #80]	; 0x50
 800626a:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 800626e:	e5f4      	b.n	8005e5a <_vfprintf_r+0x1026>
 8006270:	9b29      	ldr	r3, [sp, #164]	; 0xa4
 8006272:	e5d2      	b.n	8005e1a <_vfprintf_r+0xfe6>
 8006274:	f10d 00aa 	add.w	r0, sp, #170	; 0xaa
 8006278:	4d3e      	ldr	r5, [pc, #248]	; (8006374 <_vfprintf_r+0x1540>)
 800627a:	17da      	asrs	r2, r3, #31
 800627c:	fb85 5103 	smull	r5, r1, r5, r3
 8006280:	ebc2 01a1 	rsb	r1, r2, r1, asr #2
 8006284:	eb01 0481 	add.w	r4, r1, r1, lsl #2
 8006288:	4602      	mov	r2, r0
 800628a:	eba3 0344 	sub.w	r3, r3, r4, lsl #1
 800628e:	f103 0030 	add.w	r0, r3, #48	; 0x30
 8006292:	2909      	cmp	r1, #9
 8006294:	7010      	strb	r0, [r2, #0]
 8006296:	460b      	mov	r3, r1
 8006298:	f102 30ff 	add.w	r0, r2, #4294967295
 800629c:	dcec      	bgt.n	8006278 <_vfprintf_r+0x1444>
 800629e:	f101 0330 	add.w	r3, r1, #48	; 0x30
 80062a2:	f10d 04ab 	add.w	r4, sp, #171	; 0xab
 80062a6:	b2d9      	uxtb	r1, r3
 80062a8:	4284      	cmp	r4, r0
 80062aa:	f802 1c01 	strb.w	r1, [r2, #-1]
 80062ae:	d95d      	bls.n	800636c <_vfprintf_r+0x1538>
 80062b0:	f10d 009d 	add.w	r0, sp, #157	; 0x9d
 80062b4:	4613      	mov	r3, r2
 80062b6:	e001      	b.n	80062bc <_vfprintf_r+0x1488>
 80062b8:	f813 1b01 	ldrb.w	r1, [r3], #1
 80062bc:	42a3      	cmp	r3, r4
 80062be:	f800 1f01 	strb.w	r1, [r0, #1]!
 80062c2:	d1f9      	bne.n	80062b8 <_vfprintf_r+0x1484>
 80062c4:	f50d 7c90 	add.w	ip, sp, #288	; 0x120
 80062c8:	ebc2 034c 	rsb	r3, r2, ip, lsl #1
 80062cc:	3bf6      	subs	r3, #246	; 0xf6
 80062ce:	e775      	b.n	80061bc <_vfprintf_r+0x1388>
 80062d0:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 80062d2:	9501      	str	r5, [sp, #4]
 80062d4:	2003      	movs	r0, #3
 80062d6:	a925      	add	r1, sp, #148	; 0x94
 80062d8:	aa26      	add	r2, sp, #152	; 0x98
 80062da:	ab29      	add	r3, sp, #164	; 0xa4
 80062dc:	e7a2      	b.n	8006224 <_vfprintf_r+0x13f0>
 80062de:	e9dd 0120 	ldrd	r0, r1, [sp, #128]	; 0x80
 80062e2:	2200      	movs	r2, #0
 80062e4:	2300      	movs	r3, #0
 80062e6:	f7fe f9fb 	bl	80046e0 <__aeabi_dcmpeq>
 80062ea:	2800      	cmp	r0, #0
 80062ec:	f47f af36 	bne.w	800615c <_vfprintf_r+0x1328>
 80062f0:	f1c5 0501 	rsb	r5, r5, #1
 80062f4:	9525      	str	r5, [sp, #148]	; 0x94
 80062f6:	442c      	add	r4, r5
 80062f8:	e57c      	b.n	8005df4 <_vfprintf_r+0xfc0>
 80062fa:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 80062fc:	1c6c      	adds	r4, r5, #1
 80062fe:	9d14      	ldr	r5, [sp, #80]	; 0x50
 8006300:	442c      	add	r4, r5
 8006302:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 8006306:	e5a8      	b.n	8005e5a <_vfprintf_r+0x1026>
 8006308:	9d14      	ldr	r5, [sp, #80]	; 0x50
 800630a:	1c6c      	adds	r4, r5, #1
 800630c:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 8006310:	f04f 0867 	mov.w	r8, #103	; 0x67
 8006314:	e5a1      	b.n	8005e5a <_vfprintf_r+0x1026>
 8006316:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 800631a:	f01c 0301 	ands.w	r3, ip, #1
 800631e:	f47f af56 	bne.w	80061ce <_vfprintf_r+0x139a>
 8006322:	9314      	str	r3, [sp, #80]	; 0x50
 8006324:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 8006328:	e597      	b.n	8005e5a <_vfprintf_r+0x1026>
 800632a:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 800632c:	f8dd c03c 	ldr.w	ip, [sp, #60]	; 0x3c
 8006330:	682d      	ldr	r5, [r5, #0]
 8006332:	f893 8001 	ldrb.w	r8, [r3, #1]
 8006336:	950b      	str	r5, [sp, #44]	; 0x2c
 8006338:	f10c 0104 	add.w	r1, ip, #4
 800633c:	2d00      	cmp	r5, #0
 800633e:	910f      	str	r1, [sp, #60]	; 0x3c
 8006340:	4603      	mov	r3, r0
 8006342:	f6be adf0 	bge.w	8004f26 <_vfprintf_r+0xf2>
 8006346:	f04f 34ff 	mov.w	r4, #4294967295
 800634a:	940b      	str	r4, [sp, #44]	; 0x2c
 800634c:	f7fe bdeb 	b.w	8004f26 <_vfprintf_r+0xf2>
 8006350:	b92c      	cbnz	r4, 800635e <_vfprintf_r+0x152a>
 8006352:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8006354:	07e9      	lsls	r1, r5, #31
 8006356:	d402      	bmi.n	800635e <_vfprintf_r+0x152a>
 8006358:	2301      	movs	r3, #1
 800635a:	461c      	mov	r4, r3
 800635c:	e57d      	b.n	8005e5a <_vfprintf_r+0x1026>
 800635e:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8006360:	1cac      	adds	r4, r5, #2
 8006362:	ea24 73e4 	bic.w	r3, r4, r4, asr #31
 8006366:	e578      	b.n	8005e5a <_vfprintf_r+0x1026>
 8006368:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800636a:	e713      	b.n	8006194 <_vfprintf_r+0x1360>
 800636c:	f10d 039e 	add.w	r3, sp, #158	; 0x9e
 8006370:	e724      	b.n	80061bc <_vfprintf_r+0x1388>
 8006372:	bf00      	nop
 8006374:	66666667 	.word	0x66666667

08006378 <vfprintf>:
 8006378:	b430      	push	{r4, r5}
 800637a:	4c04      	ldr	r4, [pc, #16]	; (800638c <vfprintf+0x14>)
 800637c:	460d      	mov	r5, r1
 800637e:	4613      	mov	r3, r2
 8006380:	4601      	mov	r1, r0
 8006382:	462a      	mov	r2, r5
 8006384:	6820      	ldr	r0, [r4, #0]
 8006386:	bc30      	pop	{r4, r5}
 8006388:	f7fe bd54 	b.w	8004e34 <_vfprintf_r>
 800638c:	20000650 	.word	0x20000650

08006390 <__sbprintf>:
 8006390:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006394:	460c      	mov	r4, r1
 8006396:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 800639a:	f8b1 900c 	ldrh.w	r9, [r1, #12]
 800639e:	69e7      	ldr	r7, [r4, #28]
 80063a0:	6e49      	ldr	r1, [r1, #100]	; 0x64
 80063a2:	f8b4 800e 	ldrh.w	r8, [r4, #14]
 80063a6:	9119      	str	r1, [sp, #100]	; 0x64
 80063a8:	ad1a      	add	r5, sp, #104	; 0x68
 80063aa:	f44f 6680 	mov.w	r6, #1024	; 0x400
 80063ae:	f04f 0e00 	mov.w	lr, #0
 80063b2:	9707      	str	r7, [sp, #28]
 80063b4:	f029 0902 	bic.w	r9, r9, #2
 80063b8:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80063ba:	9500      	str	r5, [sp, #0]
 80063bc:	4669      	mov	r1, sp
 80063be:	9504      	str	r5, [sp, #16]
 80063c0:	9602      	str	r6, [sp, #8]
 80063c2:	9605      	str	r6, [sp, #20]
 80063c4:	f8ad 900c 	strh.w	r9, [sp, #12]
 80063c8:	f8ad 800e 	strh.w	r8, [sp, #14]
 80063cc:	9709      	str	r7, [sp, #36]	; 0x24
 80063ce:	f8cd e018 	str.w	lr, [sp, #24]
 80063d2:	4606      	mov	r6, r0
 80063d4:	f7fe fd2e 	bl	8004e34 <_vfprintf_r>
 80063d8:	1e05      	subs	r5, r0, #0
 80063da:	db07      	blt.n	80063ec <__sbprintf+0x5c>
 80063dc:	4630      	mov	r0, r6
 80063de:	4669      	mov	r1, sp
 80063e0:	f001 f8d4 	bl	800758c <_fflush_r>
 80063e4:	2800      	cmp	r0, #0
 80063e6:	bf18      	it	ne
 80063e8:	f04f 35ff 	movne.w	r5, #4294967295
 80063ec:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80063f0:	065b      	lsls	r3, r3, #25
 80063f2:	d503      	bpl.n	80063fc <__sbprintf+0x6c>
 80063f4:	89a3      	ldrh	r3, [r4, #12]
 80063f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80063fa:	81a3      	strh	r3, [r4, #12]
 80063fc:	4628      	mov	r0, r5
 80063fe:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 8006402:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006406:	bf00      	nop

08006408 <__swsetup_r>:
 8006408:	4b2f      	ldr	r3, [pc, #188]	; (80064c8 <__swsetup_r+0xc0>)
 800640a:	681b      	ldr	r3, [r3, #0]
 800640c:	b570      	push	{r4, r5, r6, lr}
 800640e:	4606      	mov	r6, r0
 8006410:	460c      	mov	r4, r1
 8006412:	b113      	cbz	r3, 800641a <__swsetup_r+0x12>
 8006414:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8006416:	2a00      	cmp	r2, #0
 8006418:	d036      	beq.n	8006488 <__swsetup_r+0x80>
 800641a:	89a5      	ldrh	r5, [r4, #12]
 800641c:	b2ab      	uxth	r3, r5
 800641e:	0719      	lsls	r1, r3, #28
 8006420:	d50c      	bpl.n	800643c <__swsetup_r+0x34>
 8006422:	6922      	ldr	r2, [r4, #16]
 8006424:	b1aa      	cbz	r2, 8006452 <__swsetup_r+0x4a>
 8006426:	f013 0101 	ands.w	r1, r3, #1
 800642a:	d01e      	beq.n	800646a <__swsetup_r+0x62>
 800642c:	6963      	ldr	r3, [r4, #20]
 800642e:	2100      	movs	r1, #0
 8006430:	425b      	negs	r3, r3
 8006432:	61a3      	str	r3, [r4, #24]
 8006434:	60a1      	str	r1, [r4, #8]
 8006436:	b1f2      	cbz	r2, 8006476 <__swsetup_r+0x6e>
 8006438:	2000      	movs	r0, #0
 800643a:	bd70      	pop	{r4, r5, r6, pc}
 800643c:	06da      	lsls	r2, r3, #27
 800643e:	d53b      	bpl.n	80064b8 <__swsetup_r+0xb0>
 8006440:	075b      	lsls	r3, r3, #29
 8006442:	d425      	bmi.n	8006490 <__swsetup_r+0x88>
 8006444:	6922      	ldr	r2, [r4, #16]
 8006446:	f045 0308 	orr.w	r3, r5, #8
 800644a:	81a3      	strh	r3, [r4, #12]
 800644c:	b29b      	uxth	r3, r3
 800644e:	2a00      	cmp	r2, #0
 8006450:	d1e9      	bne.n	8006426 <__swsetup_r+0x1e>
 8006452:	f403 7120 	and.w	r1, r3, #640	; 0x280
 8006456:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800645a:	d0e4      	beq.n	8006426 <__swsetup_r+0x1e>
 800645c:	4630      	mov	r0, r6
 800645e:	4621      	mov	r1, r4
 8006460:	f001 fb6e 	bl	8007b40 <__smakebuf_r>
 8006464:	89a3      	ldrh	r3, [r4, #12]
 8006466:	6922      	ldr	r2, [r4, #16]
 8006468:	e7dd      	b.n	8006426 <__swsetup_r+0x1e>
 800646a:	0798      	lsls	r0, r3, #30
 800646c:	bf58      	it	pl
 800646e:	6961      	ldrpl	r1, [r4, #20]
 8006470:	60a1      	str	r1, [r4, #8]
 8006472:	2a00      	cmp	r2, #0
 8006474:	d1e0      	bne.n	8006438 <__swsetup_r+0x30>
 8006476:	89a3      	ldrh	r3, [r4, #12]
 8006478:	061a      	lsls	r2, r3, #24
 800647a:	d5dd      	bpl.n	8006438 <__swsetup_r+0x30>
 800647c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006480:	81a3      	strh	r3, [r4, #12]
 8006482:	f04f 30ff 	mov.w	r0, #4294967295
 8006486:	bd70      	pop	{r4, r5, r6, pc}
 8006488:	4618      	mov	r0, r3
 800648a:	f001 f8d3 	bl	8007634 <__sinit>
 800648e:	e7c4      	b.n	800641a <__swsetup_r+0x12>
 8006490:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006492:	b149      	cbz	r1, 80064a8 <__swsetup_r+0xa0>
 8006494:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006498:	4299      	cmp	r1, r3
 800649a:	d003      	beq.n	80064a4 <__swsetup_r+0x9c>
 800649c:	4630      	mov	r0, r6
 800649e:	f001 f9f3 	bl	8007888 <_free_r>
 80064a2:	89a5      	ldrh	r5, [r4, #12]
 80064a4:	2300      	movs	r3, #0
 80064a6:	6323      	str	r3, [r4, #48]	; 0x30
 80064a8:	f025 0524 	bic.w	r5, r5, #36	; 0x24
 80064ac:	2300      	movs	r3, #0
 80064ae:	6922      	ldr	r2, [r4, #16]
 80064b0:	6063      	str	r3, [r4, #4]
 80064b2:	b2ad      	uxth	r5, r5
 80064b4:	6022      	str	r2, [r4, #0]
 80064b6:	e7c6      	b.n	8006446 <__swsetup_r+0x3e>
 80064b8:	f045 0540 	orr.w	r5, r5, #64	; 0x40
 80064bc:	2309      	movs	r3, #9
 80064be:	6033      	str	r3, [r6, #0]
 80064c0:	f04f 30ff 	mov.w	r0, #4294967295
 80064c4:	81a5      	strh	r5, [r4, #12]
 80064c6:	bd70      	pop	{r4, r5, r6, pc}
 80064c8:	20000650 	.word	0x20000650

080064cc <quorem>:
 80064cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064d0:	6903      	ldr	r3, [r0, #16]
 80064d2:	690d      	ldr	r5, [r1, #16]
 80064d4:	429d      	cmp	r5, r3
 80064d6:	b083      	sub	sp, #12
 80064d8:	4683      	mov	fp, r0
 80064da:	f300 808b 	bgt.w	80065f4 <quorem+0x128>
 80064de:	3d01      	subs	r5, #1
 80064e0:	f101 0414 	add.w	r4, r1, #20
 80064e4:	f100 0a14 	add.w	sl, r0, #20
 80064e8:	f854 2025 	ldr.w	r2, [r4, r5, lsl #2]
 80064ec:	f85a 3025 	ldr.w	r3, [sl, r5, lsl #2]
 80064f0:	3201      	adds	r2, #1
 80064f2:	fbb3 f8f2 	udiv	r8, r3, r2
 80064f6:	00aa      	lsls	r2, r5, #2
 80064f8:	4691      	mov	r9, r2
 80064fa:	9200      	str	r2, [sp, #0]
 80064fc:	4452      	add	r2, sl
 80064fe:	44a1      	add	r9, r4
 8006500:	9201      	str	r2, [sp, #4]
 8006502:	f1b8 0f00 	cmp.w	r8, #0
 8006506:	d03d      	beq.n	8006584 <quorem+0xb8>
 8006508:	f04f 0e00 	mov.w	lr, #0
 800650c:	4670      	mov	r0, lr
 800650e:	4622      	mov	r2, r4
 8006510:	4653      	mov	r3, sl
 8006512:	468c      	mov	ip, r1
 8006514:	f852 6b04 	ldr.w	r6, [r2], #4
 8006518:	6819      	ldr	r1, [r3, #0]
 800651a:	b2b7      	uxth	r7, r6
 800651c:	0c36      	lsrs	r6, r6, #16
 800651e:	fb07 ee08 	mla	lr, r7, r8, lr
 8006522:	fb06 f608 	mul.w	r6, r6, r8
 8006526:	eb06 461e 	add.w	r6, r6, lr, lsr #16
 800652a:	fa1f f78e 	uxth.w	r7, lr
 800652e:	1bc7      	subs	r7, r0, r7
 8006530:	b2b0      	uxth	r0, r6
 8006532:	fa17 f781 	uxtah	r7, r7, r1
 8006536:	ebc0 4011 	rsb	r0, r0, r1, lsr #16
 800653a:	eb00 4027 	add.w	r0, r0, r7, asr #16
 800653e:	b2bf      	uxth	r7, r7
 8006540:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
 8006544:	4591      	cmp	r9, r2
 8006546:	f843 7b04 	str.w	r7, [r3], #4
 800654a:	ea4f 4020 	mov.w	r0, r0, asr #16
 800654e:	ea4f 4e16 	mov.w	lr, r6, lsr #16
 8006552:	d2df      	bcs.n	8006514 <quorem+0x48>
 8006554:	9a00      	ldr	r2, [sp, #0]
 8006556:	f85a 3002 	ldr.w	r3, [sl, r2]
 800655a:	4661      	mov	r1, ip
 800655c:	b993      	cbnz	r3, 8006584 <quorem+0xb8>
 800655e:	9a01      	ldr	r2, [sp, #4]
 8006560:	1f13      	subs	r3, r2, #4
 8006562:	459a      	cmp	sl, r3
 8006564:	d20c      	bcs.n	8006580 <quorem+0xb4>
 8006566:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800656a:	b94b      	cbnz	r3, 8006580 <quorem+0xb4>
 800656c:	f1a2 0308 	sub.w	r3, r2, #8
 8006570:	e002      	b.n	8006578 <quorem+0xac>
 8006572:	681a      	ldr	r2, [r3, #0]
 8006574:	3b04      	subs	r3, #4
 8006576:	b91a      	cbnz	r2, 8006580 <quorem+0xb4>
 8006578:	459a      	cmp	sl, r3
 800657a:	f105 35ff 	add.w	r5, r5, #4294967295
 800657e:	d3f8      	bcc.n	8006572 <quorem+0xa6>
 8006580:	f8cb 5010 	str.w	r5, [fp, #16]
 8006584:	4658      	mov	r0, fp
 8006586:	f002 f8e7 	bl	8008758 <__mcmp>
 800658a:	2800      	cmp	r0, #0
 800658c:	db2e      	blt.n	80065ec <quorem+0x120>
 800658e:	f108 0801 	add.w	r8, r8, #1
 8006592:	4653      	mov	r3, sl
 8006594:	2200      	movs	r2, #0
 8006596:	f854 6b04 	ldr.w	r6, [r4], #4
 800659a:	6818      	ldr	r0, [r3, #0]
 800659c:	b2b1      	uxth	r1, r6
 800659e:	1a52      	subs	r2, r2, r1
 80065a0:	0c36      	lsrs	r6, r6, #16
 80065a2:	fa12 f180 	uxtah	r1, r2, r0
 80065a6:	ebc6 4210 	rsb	r2, r6, r0, lsr #16
 80065aa:	eb02 4221 	add.w	r2, r2, r1, asr #16
 80065ae:	b289      	uxth	r1, r1
 80065b0:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
 80065b4:	45a1      	cmp	r9, r4
 80065b6:	f843 1b04 	str.w	r1, [r3], #4
 80065ba:	ea4f 4222 	mov.w	r2, r2, asr #16
 80065be:	d2ea      	bcs.n	8006596 <quorem+0xca>
 80065c0:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
 80065c4:	eb0a 0385 	add.w	r3, sl, r5, lsl #2
 80065c8:	b982      	cbnz	r2, 80065ec <quorem+0x120>
 80065ca:	1f1a      	subs	r2, r3, #4
 80065cc:	4592      	cmp	sl, r2
 80065ce:	d20b      	bcs.n	80065e8 <quorem+0x11c>
 80065d0:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80065d4:	b942      	cbnz	r2, 80065e8 <quorem+0x11c>
 80065d6:	3b08      	subs	r3, #8
 80065d8:	e002      	b.n	80065e0 <quorem+0x114>
 80065da:	681a      	ldr	r2, [r3, #0]
 80065dc:	3b04      	subs	r3, #4
 80065de:	b91a      	cbnz	r2, 80065e8 <quorem+0x11c>
 80065e0:	459a      	cmp	sl, r3
 80065e2:	f105 35ff 	add.w	r5, r5, #4294967295
 80065e6:	d3f8      	bcc.n	80065da <quorem+0x10e>
 80065e8:	f8cb 5010 	str.w	r5, [fp, #16]
 80065ec:	4640      	mov	r0, r8
 80065ee:	b003      	add	sp, #12
 80065f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065f4:	2000      	movs	r0, #0
 80065f6:	b003      	add	sp, #12
 80065f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065fc:	0000      	movs	r0, r0
	...

08006600 <_dtoa_r>:
 8006600:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006604:	6c01      	ldr	r1, [r0, #64]	; 0x40
 8006606:	b09b      	sub	sp, #108	; 0x6c
 8006608:	4604      	mov	r4, r0
 800660a:	9d27      	ldr	r5, [sp, #156]	; 0x9c
 800660c:	4692      	mov	sl, r2
 800660e:	469b      	mov	fp, r3
 8006610:	b149      	cbz	r1, 8006626 <_dtoa_r+0x26>
 8006612:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8006614:	604b      	str	r3, [r1, #4]
 8006616:	2201      	movs	r2, #1
 8006618:	fa02 f303 	lsl.w	r3, r2, r3
 800661c:	608b      	str	r3, [r1, #8]
 800661e:	f001 fe57 	bl	80082d0 <_Bfree>
 8006622:	2300      	movs	r3, #0
 8006624:	6423      	str	r3, [r4, #64]	; 0x40
 8006626:	f1bb 0f00 	cmp.w	fp, #0
 800662a:	46d9      	mov	r9, fp
 800662c:	db33      	blt.n	8006696 <_dtoa_r+0x96>
 800662e:	2300      	movs	r3, #0
 8006630:	602b      	str	r3, [r5, #0]
 8006632:	4ba5      	ldr	r3, [pc, #660]	; (80068c8 <_dtoa_r+0x2c8>)
 8006634:	461a      	mov	r2, r3
 8006636:	ea09 0303 	and.w	r3, r9, r3
 800663a:	4293      	cmp	r3, r2
 800663c:	d014      	beq.n	8006668 <_dtoa_r+0x68>
 800663e:	4650      	mov	r0, sl
 8006640:	4659      	mov	r1, fp
 8006642:	2200      	movs	r2, #0
 8006644:	2300      	movs	r3, #0
 8006646:	f7fe f84b 	bl	80046e0 <__aeabi_dcmpeq>
 800664a:	4680      	mov	r8, r0
 800664c:	b348      	cbz	r0, 80066a2 <_dtoa_r+0xa2>
 800664e:	9e26      	ldr	r6, [sp, #152]	; 0x98
 8006650:	9d28      	ldr	r5, [sp, #160]	; 0xa0
 8006652:	2301      	movs	r3, #1
 8006654:	6033      	str	r3, [r6, #0]
 8006656:	2d00      	cmp	r5, #0
 8006658:	f000 80c9 	beq.w	80067ee <_dtoa_r+0x1ee>
 800665c:	489b      	ldr	r0, [pc, #620]	; (80068cc <_dtoa_r+0x2cc>)
 800665e:	6028      	str	r0, [r5, #0]
 8006660:	3801      	subs	r0, #1
 8006662:	b01b      	add	sp, #108	; 0x6c
 8006664:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006668:	9d26      	ldr	r5, [sp, #152]	; 0x98
 800666a:	f242 730f 	movw	r3, #9999	; 0x270f
 800666e:	602b      	str	r3, [r5, #0]
 8006670:	f1ba 0f00 	cmp.w	sl, #0
 8006674:	f000 80a4 	beq.w	80067c0 <_dtoa_r+0x1c0>
 8006678:	4895      	ldr	r0, [pc, #596]	; (80068d0 <_dtoa_r+0x2d0>)
 800667a:	9e28      	ldr	r6, [sp, #160]	; 0xa0
 800667c:	2e00      	cmp	r6, #0
 800667e:	d0f0      	beq.n	8006662 <_dtoa_r+0x62>
 8006680:	78c3      	ldrb	r3, [r0, #3]
 8006682:	2b00      	cmp	r3, #0
 8006684:	f000 80b5 	beq.w	80067f2 <_dtoa_r+0x1f2>
 8006688:	f100 0308 	add.w	r3, r0, #8
 800668c:	9d28      	ldr	r5, [sp, #160]	; 0xa0
 800668e:	602b      	str	r3, [r5, #0]
 8006690:	b01b      	add	sp, #108	; 0x6c
 8006692:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006696:	2301      	movs	r3, #1
 8006698:	f02b 4900 	bic.w	r9, fp, #2147483648	; 0x80000000
 800669c:	602b      	str	r3, [r5, #0]
 800669e:	46cb      	mov	fp, r9
 80066a0:	e7c7      	b.n	8006632 <_dtoa_r+0x32>
 80066a2:	aa19      	add	r2, sp, #100	; 0x64
 80066a4:	ab18      	add	r3, sp, #96	; 0x60
 80066a6:	e88d 000c 	stmia.w	sp, {r2, r3}
 80066aa:	4620      	mov	r0, r4
 80066ac:	4652      	mov	r2, sl
 80066ae:	465b      	mov	r3, fp
 80066b0:	f002 f95a 	bl	8008968 <__d2b>
 80066b4:	ea5f 5519 	movs.w	r5, r9, lsr #20
 80066b8:	900a      	str	r0, [sp, #40]	; 0x28
 80066ba:	f040 808a 	bne.w	80067d2 <_dtoa_r+0x1d2>
 80066be:	9f18      	ldr	r7, [sp, #96]	; 0x60
 80066c0:	9d19      	ldr	r5, [sp, #100]	; 0x64
 80066c2:	f46f 6382 	mvn.w	r3, #1040	; 0x410
 80066c6:	443d      	add	r5, r7
 80066c8:	429d      	cmp	r5, r3
 80066ca:	f2c0 8294 	blt.w	8006bf6 <_dtoa_r+0x5f6>
 80066ce:	331f      	adds	r3, #31
 80066d0:	f205 4212 	addw	r2, r5, #1042	; 0x412
 80066d4:	1b5b      	subs	r3, r3, r5
 80066d6:	fa09 f303 	lsl.w	r3, r9, r3
 80066da:	fa2a f202 	lsr.w	r2, sl, r2
 80066de:	ea43 0002 	orr.w	r0, r3, r2
 80066e2:	f7fd fd1f 	bl	8004124 <__aeabi_ui2d>
 80066e6:	2601      	movs	r6, #1
 80066e8:	3d01      	subs	r5, #1
 80066ea:	46b8      	mov	r8, r7
 80066ec:	f1a1 71f8 	sub.w	r1, r1, #32505856	; 0x1f00000
 80066f0:	9616      	str	r6, [sp, #88]	; 0x58
 80066f2:	2200      	movs	r2, #0
 80066f4:	4b77      	ldr	r3, [pc, #476]	; (80068d4 <_dtoa_r+0x2d4>)
 80066f6:	f7fd fbd7 	bl	8003ea8 <__aeabi_dsub>
 80066fa:	a36d      	add	r3, pc, #436	; (adr r3, 80068b0 <_dtoa_r+0x2b0>)
 80066fc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006700:	f7fd fd86 	bl	8004210 <__aeabi_dmul>
 8006704:	a36c      	add	r3, pc, #432	; (adr r3, 80068b8 <_dtoa_r+0x2b8>)
 8006706:	e9d3 2300 	ldrd	r2, r3, [r3]
 800670a:	f7fd fbcf 	bl	8003eac <__adddf3>
 800670e:	4606      	mov	r6, r0
 8006710:	4628      	mov	r0, r5
 8006712:	460f      	mov	r7, r1
 8006714:	f7fd fd16 	bl	8004144 <__aeabi_i2d>
 8006718:	a369      	add	r3, pc, #420	; (adr r3, 80068c0 <_dtoa_r+0x2c0>)
 800671a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800671e:	f7fd fd77 	bl	8004210 <__aeabi_dmul>
 8006722:	4602      	mov	r2, r0
 8006724:	460b      	mov	r3, r1
 8006726:	4630      	mov	r0, r6
 8006728:	4639      	mov	r1, r7
 800672a:	f7fd fbbf 	bl	8003eac <__adddf3>
 800672e:	4606      	mov	r6, r0
 8006730:	460f      	mov	r7, r1
 8006732:	f7fe f807 	bl	8004744 <__aeabi_d2iz>
 8006736:	4639      	mov	r1, r7
 8006738:	9007      	str	r0, [sp, #28]
 800673a:	2200      	movs	r2, #0
 800673c:	4630      	mov	r0, r6
 800673e:	2300      	movs	r3, #0
 8006740:	f7fd ffd8 	bl	80046f4 <__aeabi_dcmplt>
 8006744:	2800      	cmp	r0, #0
 8006746:	f040 8228 	bne.w	8006b9a <_dtoa_r+0x59a>
 800674a:	9e07      	ldr	r6, [sp, #28]
 800674c:	2e16      	cmp	r6, #22
 800674e:	f200 8221 	bhi.w	8006b94 <_dtoa_r+0x594>
 8006752:	4b61      	ldr	r3, [pc, #388]	; (80068d8 <_dtoa_r+0x2d8>)
 8006754:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8006758:	e9d3 0100 	ldrd	r0, r1, [r3]
 800675c:	4652      	mov	r2, sl
 800675e:	465b      	mov	r3, fp
 8006760:	f7fd ffe6 	bl	8004730 <__aeabi_dcmpgt>
 8006764:	2800      	cmp	r0, #0
 8006766:	f000 824b 	beq.w	8006c00 <_dtoa_r+0x600>
 800676a:	3e01      	subs	r6, #1
 800676c:	9607      	str	r6, [sp, #28]
 800676e:	2600      	movs	r6, #0
 8006770:	960e      	str	r6, [sp, #56]	; 0x38
 8006772:	ebc5 0508 	rsb	r5, r5, r8
 8006776:	3d01      	subs	r5, #1
 8006778:	9506      	str	r5, [sp, #24]
 800677a:	f100 8225 	bmi.w	8006bc8 <_dtoa_r+0x5c8>
 800677e:	2500      	movs	r5, #0
 8006780:	9508      	str	r5, [sp, #32]
 8006782:	9e07      	ldr	r6, [sp, #28]
 8006784:	2e00      	cmp	r6, #0
 8006786:	f2c0 8216 	blt.w	8006bb6 <_dtoa_r+0x5b6>
 800678a:	9d06      	ldr	r5, [sp, #24]
 800678c:	960d      	str	r6, [sp, #52]	; 0x34
 800678e:	4435      	add	r5, r6
 8006790:	2600      	movs	r6, #0
 8006792:	9506      	str	r5, [sp, #24]
 8006794:	960c      	str	r6, [sp, #48]	; 0x30
 8006796:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8006798:	2d09      	cmp	r5, #9
 800679a:	d82c      	bhi.n	80067f6 <_dtoa_r+0x1f6>
 800679c:	2d05      	cmp	r5, #5
 800679e:	bfc4      	itt	gt
 80067a0:	3d04      	subgt	r5, #4
 80067a2:	9524      	strgt	r5, [sp, #144]	; 0x90
 80067a4:	9e24      	ldr	r6, [sp, #144]	; 0x90
 80067a6:	f1a6 0302 	sub.w	r3, r6, #2
 80067aa:	bfcc      	ite	gt
 80067ac:	2500      	movgt	r5, #0
 80067ae:	2501      	movle	r5, #1
 80067b0:	2b03      	cmp	r3, #3
 80067b2:	d822      	bhi.n	80067fa <_dtoa_r+0x1fa>
 80067b4:	e8df f013 	tbh	[pc, r3, lsl #1]
 80067b8:	029e03b7 	.word	0x029e03b7
 80067bc:	049a03c0 	.word	0x049a03c0
 80067c0:	4a46      	ldr	r2, [pc, #280]	; (80068dc <_dtoa_r+0x2dc>)
 80067c2:	4b43      	ldr	r3, [pc, #268]	; (80068d0 <_dtoa_r+0x2d0>)
 80067c4:	f3c9 0013 	ubfx	r0, r9, #0, #20
 80067c8:	2800      	cmp	r0, #0
 80067ca:	bf0c      	ite	eq
 80067cc:	4610      	moveq	r0, r2
 80067ce:	4618      	movne	r0, r3
 80067d0:	e753      	b.n	800667a <_dtoa_r+0x7a>
 80067d2:	f3cb 0313 	ubfx	r3, fp, #0, #20
 80067d6:	f043 517f 	orr.w	r1, r3, #1069547520	; 0x3fc00000
 80067da:	f8cd 8058 	str.w	r8, [sp, #88]	; 0x58
 80067de:	4650      	mov	r0, sl
 80067e0:	f2a5 35ff 	subw	r5, r5, #1023	; 0x3ff
 80067e4:	f441 1140 	orr.w	r1, r1, #3145728	; 0x300000
 80067e8:	f8dd 8060 	ldr.w	r8, [sp, #96]	; 0x60
 80067ec:	e781      	b.n	80066f2 <_dtoa_r+0xf2>
 80067ee:	483c      	ldr	r0, [pc, #240]	; (80068e0 <_dtoa_r+0x2e0>)
 80067f0:	e737      	b.n	8006662 <_dtoa_r+0x62>
 80067f2:	1cc3      	adds	r3, r0, #3
 80067f4:	e74a      	b.n	800668c <_dtoa_r+0x8c>
 80067f6:	2500      	movs	r5, #0
 80067f8:	9524      	str	r5, [sp, #144]	; 0x90
 80067fa:	2500      	movs	r5, #0
 80067fc:	6465      	str	r5, [r4, #68]	; 0x44
 80067fe:	4629      	mov	r1, r5
 8006800:	4620      	mov	r0, r4
 8006802:	f001 fd3f 	bl	8008284 <_Balloc>
 8006806:	f04f 39ff 	mov.w	r9, #4294967295
 800680a:	2601      	movs	r6, #1
 800680c:	9009      	str	r0, [sp, #36]	; 0x24
 800680e:	9525      	str	r5, [sp, #148]	; 0x94
 8006810:	6420      	str	r0, [r4, #64]	; 0x40
 8006812:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8006816:	960b      	str	r6, [sp, #44]	; 0x2c
 8006818:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800681a:	2b00      	cmp	r3, #0
 800681c:	f2c0 80d2 	blt.w	80069c4 <_dtoa_r+0x3c4>
 8006820:	9e07      	ldr	r6, [sp, #28]
 8006822:	2e0e      	cmp	r6, #14
 8006824:	f300 80ce 	bgt.w	80069c4 <_dtoa_r+0x3c4>
 8006828:	4b2b      	ldr	r3, [pc, #172]	; (80068d8 <_dtoa_r+0x2d8>)
 800682a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800682e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8006832:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8006836:	9925      	ldr	r1, [sp, #148]	; 0x94
 8006838:	2900      	cmp	r1, #0
 800683a:	f2c0 8380 	blt.w	8006f3e <_dtoa_r+0x93e>
 800683e:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006842:	4659      	mov	r1, fp
 8006844:	4650      	mov	r0, sl
 8006846:	f7fd fe0d 	bl	8004464 <__aeabi_ddiv>
 800684a:	f7fd ff7b 	bl	8004744 <__aeabi_d2iz>
 800684e:	4605      	mov	r5, r0
 8006850:	f7fd fc78 	bl	8004144 <__aeabi_i2d>
 8006854:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006858:	f7fd fcda 	bl	8004210 <__aeabi_dmul>
 800685c:	4602      	mov	r2, r0
 800685e:	460b      	mov	r3, r1
 8006860:	4650      	mov	r0, sl
 8006862:	4659      	mov	r1, fp
 8006864:	f7fd fb20 	bl	8003ea8 <__aeabi_dsub>
 8006868:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800686a:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800686e:	f1b9 0f01 	cmp.w	r9, #1
 8006872:	4606      	mov	r6, r0
 8006874:	460f      	mov	r7, r1
 8006876:	7013      	strb	r3, [r2, #0]
 8006878:	f102 0b01 	add.w	fp, r2, #1
 800687c:	d064      	beq.n	8006948 <_dtoa_r+0x348>
 800687e:	2200      	movs	r2, #0
 8006880:	4b18      	ldr	r3, [pc, #96]	; (80068e4 <_dtoa_r+0x2e4>)
 8006882:	f7fd fcc5 	bl	8004210 <__aeabi_dmul>
 8006886:	2200      	movs	r2, #0
 8006888:	2300      	movs	r3, #0
 800688a:	4606      	mov	r6, r0
 800688c:	460f      	mov	r7, r1
 800688e:	f7fd ff27 	bl	80046e0 <__aeabi_dcmpeq>
 8006892:	2800      	cmp	r0, #0
 8006894:	f040 8081 	bne.w	800699a <_dtoa_r+0x39a>
 8006898:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800689c:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800689e:	9403      	str	r4, [sp, #12]
 80068a0:	44c8      	add	r8, r9
 80068a2:	e9dd ab04 	ldrd	sl, fp, [sp, #16]
 80068a6:	f105 0902 	add.w	r9, r5, #2
 80068aa:	e028      	b.n	80068fe <_dtoa_r+0x2fe>
 80068ac:	f3af 8000 	nop.w
 80068b0:	636f4361 	.word	0x636f4361
 80068b4:	3fd287a7 	.word	0x3fd287a7
 80068b8:	8b60c8b3 	.word	0x8b60c8b3
 80068bc:	3fc68a28 	.word	0x3fc68a28
 80068c0:	509f79fb 	.word	0x509f79fb
 80068c4:	3fd34413 	.word	0x3fd34413
 80068c8:	7ff00000 	.word	0x7ff00000
 80068cc:	0800b611 	.word	0x0800b611
 80068d0:	0800b630 	.word	0x0800b630
 80068d4:	3ff80000 	.word	0x3ff80000
 80068d8:	0800b648 	.word	0x0800b648
 80068dc:	0800b624 	.word	0x0800b624
 80068e0:	0800b610 	.word	0x0800b610
 80068e4:	40240000 	.word	0x40240000
 80068e8:	f7fd fc92 	bl	8004210 <__aeabi_dmul>
 80068ec:	2200      	movs	r2, #0
 80068ee:	2300      	movs	r3, #0
 80068f0:	4606      	mov	r6, r0
 80068f2:	460f      	mov	r7, r1
 80068f4:	f7fd fef4 	bl	80046e0 <__aeabi_dcmpeq>
 80068f8:	2800      	cmp	r0, #0
 80068fa:	f040 83c1 	bne.w	8007080 <_dtoa_r+0xa80>
 80068fe:	4652      	mov	r2, sl
 8006900:	465b      	mov	r3, fp
 8006902:	4630      	mov	r0, r6
 8006904:	4639      	mov	r1, r7
 8006906:	f7fd fdad 	bl	8004464 <__aeabi_ddiv>
 800690a:	f7fd ff1b 	bl	8004744 <__aeabi_d2iz>
 800690e:	4605      	mov	r5, r0
 8006910:	f7fd fc18 	bl	8004144 <__aeabi_i2d>
 8006914:	4652      	mov	r2, sl
 8006916:	465b      	mov	r3, fp
 8006918:	f7fd fc7a 	bl	8004210 <__aeabi_dmul>
 800691c:	4602      	mov	r2, r0
 800691e:	460b      	mov	r3, r1
 8006920:	4630      	mov	r0, r6
 8006922:	4639      	mov	r1, r7
 8006924:	f7fd fac0 	bl	8003ea8 <__aeabi_dsub>
 8006928:	f105 0e30 	add.w	lr, r5, #48	; 0x30
 800692c:	45c1      	cmp	r9, r8
 800692e:	f809 ec01 	strb.w	lr, [r9, #-1]
 8006932:	464c      	mov	r4, r9
 8006934:	4606      	mov	r6, r0
 8006936:	460f      	mov	r7, r1
 8006938:	f04f 0200 	mov.w	r2, #0
 800693c:	4ba7      	ldr	r3, [pc, #668]	; (8006bdc <_dtoa_r+0x5dc>)
 800693e:	f109 0901 	add.w	r9, r9, #1
 8006942:	d1d1      	bne.n	80068e8 <_dtoa_r+0x2e8>
 8006944:	46a3      	mov	fp, r4
 8006946:	9c03      	ldr	r4, [sp, #12]
 8006948:	4632      	mov	r2, r6
 800694a:	463b      	mov	r3, r7
 800694c:	4630      	mov	r0, r6
 800694e:	4639      	mov	r1, r7
 8006950:	f7fd faac 	bl	8003eac <__adddf3>
 8006954:	4606      	mov	r6, r0
 8006956:	460f      	mov	r7, r1
 8006958:	4632      	mov	r2, r6
 800695a:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 800695e:	463b      	mov	r3, r7
 8006960:	f7fd fec8 	bl	80046f4 <__aeabi_dcmplt>
 8006964:	b940      	cbnz	r0, 8006978 <_dtoa_r+0x378>
 8006966:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 800696a:	4632      	mov	r2, r6
 800696c:	463b      	mov	r3, r7
 800696e:	f7fd feb7 	bl	80046e0 <__aeabi_dcmpeq>
 8006972:	b190      	cbz	r0, 800699a <_dtoa_r+0x39a>
 8006974:	07eb      	lsls	r3, r5, #31
 8006976:	d510      	bpl.n	800699a <_dtoa_r+0x39a>
 8006978:	f81b 5c01 	ldrb.w	r5, [fp, #-1]
 800697c:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800697e:	e005      	b.n	800698c <_dtoa_r+0x38c>
 8006980:	429a      	cmp	r2, r3
 8006982:	f000 8428 	beq.w	80071d6 <_dtoa_r+0xbd6>
 8006986:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 800698a:	469b      	mov	fp, r3
 800698c:	2d39      	cmp	r5, #57	; 0x39
 800698e:	f10b 33ff 	add.w	r3, fp, #4294967295
 8006992:	d0f5      	beq.n	8006980 <_dtoa_r+0x380>
 8006994:	1c6a      	adds	r2, r5, #1
 8006996:	b2d2      	uxtb	r2, r2
 8006998:	701a      	strb	r2, [r3, #0]
 800699a:	4620      	mov	r0, r4
 800699c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800699e:	f001 fc97 	bl	80082d0 <_Bfree>
 80069a2:	9e07      	ldr	r6, [sp, #28]
 80069a4:	9d26      	ldr	r5, [sp, #152]	; 0x98
 80069a6:	1c73      	adds	r3, r6, #1
 80069a8:	9e28      	ldr	r6, [sp, #160]	; 0xa0
 80069aa:	2200      	movs	r2, #0
 80069ac:	f88b 2000 	strb.w	r2, [fp]
 80069b0:	602b      	str	r3, [r5, #0]
 80069b2:	2e00      	cmp	r6, #0
 80069b4:	f000 8325 	beq.w	8007002 <_dtoa_r+0xa02>
 80069b8:	9809      	ldr	r0, [sp, #36]	; 0x24
 80069ba:	f8c6 b000 	str.w	fp, [r6]
 80069be:	b01b      	add	sp, #108	; 0x6c
 80069c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069c4:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 80069c6:	2d00      	cmp	r5, #0
 80069c8:	f000 8103 	beq.w	8006bd2 <_dtoa_r+0x5d2>
 80069cc:	9e24      	ldr	r6, [sp, #144]	; 0x90
 80069ce:	2e01      	cmp	r6, #1
 80069d0:	f340 82dc 	ble.w	8006f8c <_dtoa_r+0x98c>
 80069d4:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 80069d6:	f109 37ff 	add.w	r7, r9, #4294967295
 80069da:	42be      	cmp	r6, r7
 80069dc:	f2c0 8389 	blt.w	80070f2 <_dtoa_r+0xaf2>
 80069e0:	1bf7      	subs	r7, r6, r7
 80069e2:	f1b9 0f00 	cmp.w	r9, #0
 80069e6:	f2c0 8486 	blt.w	80072f6 <_dtoa_r+0xcf6>
 80069ea:	9d08      	ldr	r5, [sp, #32]
 80069ec:	464b      	mov	r3, r9
 80069ee:	9e08      	ldr	r6, [sp, #32]
 80069f0:	441e      	add	r6, r3
 80069f2:	9608      	str	r6, [sp, #32]
 80069f4:	9e06      	ldr	r6, [sp, #24]
 80069f6:	4620      	mov	r0, r4
 80069f8:	441e      	add	r6, r3
 80069fa:	2101      	movs	r1, #1
 80069fc:	9606      	str	r6, [sp, #24]
 80069fe:	f001 fd57 	bl	80084b0 <__i2b>
 8006a02:	4606      	mov	r6, r0
 8006a04:	b165      	cbz	r5, 8006a20 <_dtoa_r+0x420>
 8006a06:	9806      	ldr	r0, [sp, #24]
 8006a08:	2800      	cmp	r0, #0
 8006a0a:	dd09      	ble.n	8006a20 <_dtoa_r+0x420>
 8006a0c:	4603      	mov	r3, r0
 8006a0e:	9908      	ldr	r1, [sp, #32]
 8006a10:	42ab      	cmp	r3, r5
 8006a12:	bfa8      	it	ge
 8006a14:	462b      	movge	r3, r5
 8006a16:	1ac9      	subs	r1, r1, r3
 8006a18:	1ac0      	subs	r0, r0, r3
 8006a1a:	9108      	str	r1, [sp, #32]
 8006a1c:	1aed      	subs	r5, r5, r3
 8006a1e:	9006      	str	r0, [sp, #24]
 8006a20:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006a22:	2a00      	cmp	r2, #0
 8006a24:	dd1d      	ble.n	8006a62 <_dtoa_r+0x462>
 8006a26:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006a28:	2b00      	cmp	r3, #0
 8006a2a:	f000 8358 	beq.w	80070de <_dtoa_r+0xade>
 8006a2e:	2f00      	cmp	r7, #0
 8006a30:	dd11      	ble.n	8006a56 <_dtoa_r+0x456>
 8006a32:	4631      	mov	r1, r6
 8006a34:	463a      	mov	r2, r7
 8006a36:	4620      	mov	r0, r4
 8006a38:	f001 fde2 	bl	8008600 <__pow5mult>
 8006a3c:	4606      	mov	r6, r0
 8006a3e:	4631      	mov	r1, r6
 8006a40:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006a42:	4620      	mov	r0, r4
 8006a44:	f001 fd3e 	bl	80084c4 <__multiply>
 8006a48:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006a4a:	4680      	mov	r8, r0
 8006a4c:	4620      	mov	r0, r4
 8006a4e:	f001 fc3f 	bl	80082d0 <_Bfree>
 8006a52:	f8cd 8028 	str.w	r8, [sp, #40]	; 0x28
 8006a56:	f8dd e030 	ldr.w	lr, [sp, #48]	; 0x30
 8006a5a:	ebbe 0207 	subs.w	r2, lr, r7
 8006a5e:	f040 828f 	bne.w	8006f80 <_dtoa_r+0x980>
 8006a62:	4620      	mov	r0, r4
 8006a64:	2101      	movs	r1, #1
 8006a66:	f001 fd23 	bl	80084b0 <__i2b>
 8006a6a:	4680      	mov	r8, r0
 8006a6c:	980d      	ldr	r0, [sp, #52]	; 0x34
 8006a6e:	2800      	cmp	r0, #0
 8006a70:	dd05      	ble.n	8006a7e <_dtoa_r+0x47e>
 8006a72:	4641      	mov	r1, r8
 8006a74:	4620      	mov	r0, r4
 8006a76:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8006a78:	f001 fdc2 	bl	8008600 <__pow5mult>
 8006a7c:	4680      	mov	r8, r0
 8006a7e:	9924      	ldr	r1, [sp, #144]	; 0x90
 8006a80:	2901      	cmp	r1, #1
 8006a82:	f340 82c1 	ble.w	8007008 <_dtoa_r+0xa08>
 8006a86:	2700      	movs	r7, #0
 8006a88:	980d      	ldr	r0, [sp, #52]	; 0x34
 8006a8a:	2800      	cmp	r0, #0
 8006a8c:	f040 82af 	bne.w	8006fee <_dtoa_r+0x9ee>
 8006a90:	2001      	movs	r0, #1
 8006a92:	9b06      	ldr	r3, [sp, #24]
 8006a94:	4403      	add	r3, r0
 8006a96:	f013 031f 	ands.w	r3, r3, #31
 8006a9a:	f000 80a1 	beq.w	8006be0 <_dtoa_r+0x5e0>
 8006a9e:	f1c3 0220 	rsb	r2, r3, #32
 8006aa2:	2a04      	cmp	r2, #4
 8006aa4:	f340 84b5 	ble.w	8007412 <_dtoa_r+0xe12>
 8006aa8:	9908      	ldr	r1, [sp, #32]
 8006aaa:	9a06      	ldr	r2, [sp, #24]
 8006aac:	f1c3 031c 	rsb	r3, r3, #28
 8006ab0:	4419      	add	r1, r3
 8006ab2:	441a      	add	r2, r3
 8006ab4:	9108      	str	r1, [sp, #32]
 8006ab6:	441d      	add	r5, r3
 8006ab8:	9206      	str	r2, [sp, #24]
 8006aba:	9908      	ldr	r1, [sp, #32]
 8006abc:	2900      	cmp	r1, #0
 8006abe:	dd05      	ble.n	8006acc <_dtoa_r+0x4cc>
 8006ac0:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006ac2:	9a08      	ldr	r2, [sp, #32]
 8006ac4:	4620      	mov	r0, r4
 8006ac6:	f001 fde9 	bl	800869c <__lshift>
 8006aca:	900a      	str	r0, [sp, #40]	; 0x28
 8006acc:	9a06      	ldr	r2, [sp, #24]
 8006ace:	2a00      	cmp	r2, #0
 8006ad0:	dd04      	ble.n	8006adc <_dtoa_r+0x4dc>
 8006ad2:	4641      	mov	r1, r8
 8006ad4:	4620      	mov	r0, r4
 8006ad6:	f001 fde1 	bl	800869c <__lshift>
 8006ada:	4680      	mov	r8, r0
 8006adc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006ade:	2b00      	cmp	r3, #0
 8006ae0:	f040 826a 	bne.w	8006fb8 <_dtoa_r+0x9b8>
 8006ae4:	f1b9 0f00 	cmp.w	r9, #0
 8006ae8:	f340 82a6 	ble.w	8007038 <_dtoa_r+0xa38>
 8006aec:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8006aee:	2800      	cmp	r0, #0
 8006af0:	f040 8088 	bne.w	8006c04 <_dtoa_r+0x604>
 8006af4:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8006af6:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 8006af8:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8006afc:	e006      	b.n	8006b0c <_dtoa_r+0x50c>
 8006afe:	4639      	mov	r1, r7
 8006b00:	4620      	mov	r0, r4
 8006b02:	220a      	movs	r2, #10
 8006b04:	2300      	movs	r3, #0
 8006b06:	f001 fbed 	bl	80082e4 <__multadd>
 8006b0a:	4607      	mov	r7, r0
 8006b0c:	4638      	mov	r0, r7
 8006b0e:	4641      	mov	r1, r8
 8006b10:	f7ff fcdc 	bl	80064cc <quorem>
 8006b14:	3030      	adds	r0, #48	; 0x30
 8006b16:	f80b 0005 	strb.w	r0, [fp, r5]
 8006b1a:	3501      	adds	r5, #1
 8006b1c:	45a9      	cmp	r9, r5
 8006b1e:	dcee      	bgt.n	8006afe <_dtoa_r+0x4fe>
 8006b20:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8006b24:	970a      	str	r7, [sp, #40]	; 0x28
 8006b26:	4682      	mov	sl, r0
 8006b28:	f1b9 0f01 	cmp.w	r9, #1
 8006b2c:	bfac      	ite	ge
 8006b2e:	44cb      	addge	fp, r9
 8006b30:	f10b 0b01 	addlt.w	fp, fp, #1
 8006b34:	2500      	movs	r5, #0
 8006b36:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006b38:	2201      	movs	r2, #1
 8006b3a:	4620      	mov	r0, r4
 8006b3c:	f001 fdae 	bl	800869c <__lshift>
 8006b40:	4641      	mov	r1, r8
 8006b42:	900a      	str	r0, [sp, #40]	; 0x28
 8006b44:	f001 fe08 	bl	8008758 <__mcmp>
 8006b48:	2800      	cmp	r0, #0
 8006b4a:	f340 8309 	ble.w	8007160 <_dtoa_r+0xb60>
 8006b4e:	f81b 2c01 	ldrb.w	r2, [fp, #-1]
 8006b52:	9909      	ldr	r1, [sp, #36]	; 0x24
 8006b54:	e005      	b.n	8006b62 <_dtoa_r+0x562>
 8006b56:	4299      	cmp	r1, r3
 8006b58:	f000 828b 	beq.w	8007072 <_dtoa_r+0xa72>
 8006b5c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006b60:	469b      	mov	fp, r3
 8006b62:	2a39      	cmp	r2, #57	; 0x39
 8006b64:	f10b 33ff 	add.w	r3, fp, #4294967295
 8006b68:	d0f5      	beq.n	8006b56 <_dtoa_r+0x556>
 8006b6a:	3201      	adds	r2, #1
 8006b6c:	701a      	strb	r2, [r3, #0]
 8006b6e:	4641      	mov	r1, r8
 8006b70:	4620      	mov	r0, r4
 8006b72:	f001 fbad 	bl	80082d0 <_Bfree>
 8006b76:	2e00      	cmp	r6, #0
 8006b78:	f43f af0f 	beq.w	800699a <_dtoa_r+0x39a>
 8006b7c:	b12d      	cbz	r5, 8006b8a <_dtoa_r+0x58a>
 8006b7e:	42b5      	cmp	r5, r6
 8006b80:	d003      	beq.n	8006b8a <_dtoa_r+0x58a>
 8006b82:	4629      	mov	r1, r5
 8006b84:	4620      	mov	r0, r4
 8006b86:	f001 fba3 	bl	80082d0 <_Bfree>
 8006b8a:	4631      	mov	r1, r6
 8006b8c:	4620      	mov	r0, r4
 8006b8e:	f001 fb9f 	bl	80082d0 <_Bfree>
 8006b92:	e702      	b.n	800699a <_dtoa_r+0x39a>
 8006b94:	2601      	movs	r6, #1
 8006b96:	960e      	str	r6, [sp, #56]	; 0x38
 8006b98:	e5eb      	b.n	8006772 <_dtoa_r+0x172>
 8006b9a:	9807      	ldr	r0, [sp, #28]
 8006b9c:	f7fd fad2 	bl	8004144 <__aeabi_i2d>
 8006ba0:	4632      	mov	r2, r6
 8006ba2:	463b      	mov	r3, r7
 8006ba4:	f7fd fd9c 	bl	80046e0 <__aeabi_dcmpeq>
 8006ba8:	2800      	cmp	r0, #0
 8006baa:	f47f adce 	bne.w	800674a <_dtoa_r+0x14a>
 8006bae:	9e07      	ldr	r6, [sp, #28]
 8006bb0:	3e01      	subs	r6, #1
 8006bb2:	9607      	str	r6, [sp, #28]
 8006bb4:	e5c9      	b.n	800674a <_dtoa_r+0x14a>
 8006bb6:	9e07      	ldr	r6, [sp, #28]
 8006bb8:	9d08      	ldr	r5, [sp, #32]
 8006bba:	1bad      	subs	r5, r5, r6
 8006bbc:	9508      	str	r5, [sp, #32]
 8006bbe:	4275      	negs	r5, r6
 8006bc0:	2600      	movs	r6, #0
 8006bc2:	950c      	str	r5, [sp, #48]	; 0x30
 8006bc4:	960d      	str	r6, [sp, #52]	; 0x34
 8006bc6:	e5e6      	b.n	8006796 <_dtoa_r+0x196>
 8006bc8:	426d      	negs	r5, r5
 8006bca:	2600      	movs	r6, #0
 8006bcc:	9508      	str	r5, [sp, #32]
 8006bce:	9606      	str	r6, [sp, #24]
 8006bd0:	e5d7      	b.n	8006782 <_dtoa_r+0x182>
 8006bd2:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006bd4:	9d08      	ldr	r5, [sp, #32]
 8006bd6:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
 8006bd8:	e714      	b.n	8006a04 <_dtoa_r+0x404>
 8006bda:	bf00      	nop
 8006bdc:	40240000 	.word	0x40240000
 8006be0:	231c      	movs	r3, #28
 8006be2:	f8dd e020 	ldr.w	lr, [sp, #32]
 8006be6:	9806      	ldr	r0, [sp, #24]
 8006be8:	449e      	add	lr, r3
 8006bea:	4418      	add	r0, r3
 8006bec:	f8cd e020 	str.w	lr, [sp, #32]
 8006bf0:	441d      	add	r5, r3
 8006bf2:	9006      	str	r0, [sp, #24]
 8006bf4:	e761      	b.n	8006aba <_dtoa_r+0x4ba>
 8006bf6:	48a7      	ldr	r0, [pc, #668]	; (8006e94 <_dtoa_r+0x894>)
 8006bf8:	1b40      	subs	r0, r0, r5
 8006bfa:	fa0a f000 	lsl.w	r0, sl, r0
 8006bfe:	e570      	b.n	80066e2 <_dtoa_r+0xe2>
 8006c00:	900e      	str	r0, [sp, #56]	; 0x38
 8006c02:	e5b6      	b.n	8006772 <_dtoa_r+0x172>
 8006c04:	2d00      	cmp	r5, #0
 8006c06:	dd05      	ble.n	8006c14 <_dtoa_r+0x614>
 8006c08:	4631      	mov	r1, r6
 8006c0a:	462a      	mov	r2, r5
 8006c0c:	4620      	mov	r0, r4
 8006c0e:	f001 fd45 	bl	800869c <__lshift>
 8006c12:	4606      	mov	r6, r0
 8006c14:	2f00      	cmp	r7, #0
 8006c16:	f040 82e8 	bne.w	80071ea <_dtoa_r+0xbea>
 8006c1a:	4637      	mov	r7, r6
 8006c1c:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8006c1e:	9809      	ldr	r0, [sp, #36]	; 0x24
 8006c20:	444d      	add	r5, r9
 8006c22:	9508      	str	r5, [sp, #32]
 8006c24:	f00a 0501 	and.w	r5, sl, #1
 8006c28:	950b      	str	r5, [sp, #44]	; 0x2c
 8006c2a:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
 8006c2e:	1c45      	adds	r5, r0, #1
 8006c30:	e00a      	b.n	8006c48 <_dtoa_r+0x648>
 8006c32:	f001 fb57 	bl	80082e4 <__multadd>
 8006c36:	4639      	mov	r1, r7
 8006c38:	4606      	mov	r6, r0
 8006c3a:	220a      	movs	r2, #10
 8006c3c:	4620      	mov	r0, r4
 8006c3e:	2300      	movs	r3, #0
 8006c40:	f001 fb50 	bl	80082e4 <__multadd>
 8006c44:	4607      	mov	r7, r0
 8006c46:	3501      	adds	r5, #1
 8006c48:	4641      	mov	r1, r8
 8006c4a:	4648      	mov	r0, r9
 8006c4c:	f7ff fc3e 	bl	80064cc <quorem>
 8006c50:	4631      	mov	r1, r6
 8006c52:	4683      	mov	fp, r0
 8006c54:	4648      	mov	r0, r9
 8006c56:	f001 fd7f 	bl	8008758 <__mcmp>
 8006c5a:	4641      	mov	r1, r8
 8006c5c:	9003      	str	r0, [sp, #12]
 8006c5e:	463a      	mov	r2, r7
 8006c60:	4620      	mov	r0, r4
 8006c62:	f001 fd9d 	bl	80087a0 <__mdiff>
 8006c66:	68c2      	ldr	r2, [r0, #12]
 8006c68:	1e69      	subs	r1, r5, #1
 8006c6a:	4603      	mov	r3, r0
 8006c6c:	f10b 0a30 	add.w	sl, fp, #48	; 0x30
 8006c70:	9106      	str	r1, [sp, #24]
 8006c72:	2a00      	cmp	r2, #0
 8006c74:	f040 8193 	bne.w	8006f9e <_dtoa_r+0x99e>
 8006c78:	4619      	mov	r1, r3
 8006c7a:	4648      	mov	r0, r9
 8006c7c:	9302      	str	r3, [sp, #8]
 8006c7e:	f001 fd6b 	bl	8008758 <__mcmp>
 8006c82:	9b02      	ldr	r3, [sp, #8]
 8006c84:	4602      	mov	r2, r0
 8006c86:	4619      	mov	r1, r3
 8006c88:	4620      	mov	r0, r4
 8006c8a:	9202      	str	r2, [sp, #8]
 8006c8c:	f001 fb20 	bl	80082d0 <_Bfree>
 8006c90:	9a02      	ldr	r2, [sp, #8]
 8006c92:	b92a      	cbnz	r2, 8006ca0 <_dtoa_r+0x6a0>
 8006c94:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8006c96:	b91b      	cbnz	r3, 8006ca0 <_dtoa_r+0x6a0>
 8006c98:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8006c9a:	2800      	cmp	r0, #0
 8006c9c:	f000 8391 	beq.w	80073c2 <_dtoa_r+0xdc2>
 8006ca0:	9b03      	ldr	r3, [sp, #12]
 8006ca2:	2b00      	cmp	r3, #0
 8006ca4:	f2c0 8234 	blt.w	8007110 <_dtoa_r+0xb10>
 8006ca8:	d105      	bne.n	8006cb6 <_dtoa_r+0x6b6>
 8006caa:	9824      	ldr	r0, [sp, #144]	; 0x90
 8006cac:	b918      	cbnz	r0, 8006cb6 <_dtoa_r+0x6b6>
 8006cae:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8006cb0:	2900      	cmp	r1, #0
 8006cb2:	f000 822d 	beq.w	8007110 <_dtoa_r+0xb10>
 8006cb6:	2a00      	cmp	r2, #0
 8006cb8:	f300 82ab 	bgt.w	8007212 <_dtoa_r+0xc12>
 8006cbc:	f8dd e020 	ldr.w	lr, [sp, #32]
 8006cc0:	f805 ac01 	strb.w	sl, [r5, #-1]
 8006cc4:	4575      	cmp	r5, lr
 8006cc6:	46ab      	mov	fp, r5
 8006cc8:	f000 82b3 	beq.w	8007232 <_dtoa_r+0xc32>
 8006ccc:	4649      	mov	r1, r9
 8006cce:	220a      	movs	r2, #10
 8006cd0:	2300      	movs	r3, #0
 8006cd2:	4620      	mov	r0, r4
 8006cd4:	f001 fb06 	bl	80082e4 <__multadd>
 8006cd8:	42be      	cmp	r6, r7
 8006cda:	4681      	mov	r9, r0
 8006cdc:	4631      	mov	r1, r6
 8006cde:	4620      	mov	r0, r4
 8006ce0:	f04f 020a 	mov.w	r2, #10
 8006ce4:	f04f 0300 	mov.w	r3, #0
 8006ce8:	d1a3      	bne.n	8006c32 <_dtoa_r+0x632>
 8006cea:	f001 fafb 	bl	80082e4 <__multadd>
 8006cee:	4606      	mov	r6, r0
 8006cf0:	4607      	mov	r7, r0
 8006cf2:	e7a8      	b.n	8006c46 <_dtoa_r+0x646>
 8006cf4:	2600      	movs	r6, #0
 8006cf6:	960b      	str	r6, [sp, #44]	; 0x2c
 8006cf8:	9e07      	ldr	r6, [sp, #28]
 8006cfa:	f8dd e094 	ldr.w	lr, [sp, #148]	; 0x94
 8006cfe:	44b6      	add	lr, r6
 8006d00:	f10e 0901 	add.w	r9, lr, #1
 8006d04:	f1b9 0f00 	cmp.w	r9, #0
 8006d08:	f8cd e03c 	str.w	lr, [sp, #60]	; 0x3c
 8006d0c:	464e      	mov	r6, r9
 8006d0e:	f340 8150 	ble.w	8006fb2 <_dtoa_r+0x9b2>
 8006d12:	2100      	movs	r1, #0
 8006d14:	2e17      	cmp	r6, #23
 8006d16:	6461      	str	r1, [r4, #68]	; 0x44
 8006d18:	d90a      	bls.n	8006d30 <_dtoa_r+0x730>
 8006d1a:	2201      	movs	r2, #1
 8006d1c:	2304      	movs	r3, #4
 8006d1e:	005b      	lsls	r3, r3, #1
 8006d20:	f103 0014 	add.w	r0, r3, #20
 8006d24:	42b0      	cmp	r0, r6
 8006d26:	4611      	mov	r1, r2
 8006d28:	f102 0201 	add.w	r2, r2, #1
 8006d2c:	d9f7      	bls.n	8006d1e <_dtoa_r+0x71e>
 8006d2e:	6461      	str	r1, [r4, #68]	; 0x44
 8006d30:	4620      	mov	r0, r4
 8006d32:	f001 faa7 	bl	8008284 <_Balloc>
 8006d36:	2e0e      	cmp	r6, #14
 8006d38:	9009      	str	r0, [sp, #36]	; 0x24
 8006d3a:	6420      	str	r0, [r4, #64]	; 0x40
 8006d3c:	f63f ad6c 	bhi.w	8006818 <_dtoa_r+0x218>
 8006d40:	2d00      	cmp	r5, #0
 8006d42:	f43f ad69 	beq.w	8006818 <_dtoa_r+0x218>
 8006d46:	9d07      	ldr	r5, [sp, #28]
 8006d48:	2d00      	cmp	r5, #0
 8006d4a:	e9cd ab12 	strd	sl, fp, [sp, #72]	; 0x48
 8006d4e:	f340 821b 	ble.w	8007188 <_dtoa_r+0xb88>
 8006d52:	4b51      	ldr	r3, [pc, #324]	; (8006e98 <_dtoa_r+0x898>)
 8006d54:	f005 020f 	and.w	r2, r5, #15
 8006d58:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006d5c:	112d      	asrs	r5, r5, #4
 8006d5e:	e9d3 6700 	ldrd	r6, r7, [r3]
 8006d62:	06eb      	lsls	r3, r5, #27
 8006d64:	f140 81cd 	bpl.w	8007102 <_dtoa_r+0xb02>
 8006d68:	4b4c      	ldr	r3, [pc, #304]	; (8006e9c <_dtoa_r+0x89c>)
 8006d6a:	4650      	mov	r0, sl
 8006d6c:	4659      	mov	r1, fp
 8006d6e:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8006d72:	f7fd fb77 	bl	8004464 <__aeabi_ddiv>
 8006d76:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
 8006d7a:	f005 050f 	and.w	r5, r5, #15
 8006d7e:	f04f 0803 	mov.w	r8, #3
 8006d82:	b18d      	cbz	r5, 8006da8 <_dtoa_r+0x7a8>
 8006d84:	f8df a114 	ldr.w	sl, [pc, #276]	; 8006e9c <_dtoa_r+0x89c>
 8006d88:	4630      	mov	r0, r6
 8006d8a:	4639      	mov	r1, r7
 8006d8c:	07ee      	lsls	r6, r5, #31
 8006d8e:	d505      	bpl.n	8006d9c <_dtoa_r+0x79c>
 8006d90:	e9da 2300 	ldrd	r2, r3, [sl]
 8006d94:	f108 0801 	add.w	r8, r8, #1
 8006d98:	f7fd fa3a 	bl	8004210 <__aeabi_dmul>
 8006d9c:	106d      	asrs	r5, r5, #1
 8006d9e:	f10a 0a08 	add.w	sl, sl, #8
 8006da2:	d1f3      	bne.n	8006d8c <_dtoa_r+0x78c>
 8006da4:	4606      	mov	r6, r0
 8006da6:	460f      	mov	r7, r1
 8006da8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006dac:	4632      	mov	r2, r6
 8006dae:	463b      	mov	r3, r7
 8006db0:	f7fd fb58 	bl	8004464 <__aeabi_ddiv>
 8006db4:	4682      	mov	sl, r0
 8006db6:	468b      	mov	fp, r1
 8006db8:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8006dba:	b145      	cbz	r5, 8006dce <_dtoa_r+0x7ce>
 8006dbc:	4650      	mov	r0, sl
 8006dbe:	4659      	mov	r1, fp
 8006dc0:	2200      	movs	r2, #0
 8006dc2:	4b37      	ldr	r3, [pc, #220]	; (8006ea0 <_dtoa_r+0x8a0>)
 8006dc4:	f7fd fc96 	bl	80046f4 <__aeabi_dcmplt>
 8006dc8:	2800      	cmp	r0, #0
 8006dca:	f040 82a9 	bne.w	8007320 <_dtoa_r+0xd20>
 8006dce:	4640      	mov	r0, r8
 8006dd0:	f7fd f9b8 	bl	8004144 <__aeabi_i2d>
 8006dd4:	4652      	mov	r2, sl
 8006dd6:	465b      	mov	r3, fp
 8006dd8:	f7fd fa1a 	bl	8004210 <__aeabi_dmul>
 8006ddc:	2200      	movs	r2, #0
 8006dde:	4b31      	ldr	r3, [pc, #196]	; (8006ea4 <_dtoa_r+0x8a4>)
 8006de0:	f7fd f864 	bl	8003eac <__adddf3>
 8006de4:	4606      	mov	r6, r0
 8006de6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006dea:	f1b9 0f00 	cmp.w	r9, #0
 8006dee:	f000 815a 	beq.w	80070a6 <_dtoa_r+0xaa6>
 8006df2:	9d07      	ldr	r5, [sp, #28]
 8006df4:	9517      	str	r5, [sp, #92]	; 0x5c
 8006df6:	46c8      	mov	r8, r9
 8006df8:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8006dfa:	2d00      	cmp	r5, #0
 8006dfc:	f000 8222 	beq.w	8007244 <_dtoa_r+0xc44>
 8006e00:	4b25      	ldr	r3, [pc, #148]	; (8006e98 <_dtoa_r+0x898>)
 8006e02:	4929      	ldr	r1, [pc, #164]	; (8006ea8 <_dtoa_r+0x8a8>)
 8006e04:	eb03 03c8 	add.w	r3, r3, r8, lsl #3
 8006e08:	e953 2302 	ldrd	r2, r3, [r3, #-8]
 8006e0c:	2000      	movs	r0, #0
 8006e0e:	f7fd fb29 	bl	8004464 <__aeabi_ddiv>
 8006e12:	4632      	mov	r2, r6
 8006e14:	463b      	mov	r3, r7
 8006e16:	f7fd f847 	bl	8003ea8 <__aeabi_dsub>
 8006e1a:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
 8006e1e:	4659      	mov	r1, fp
 8006e20:	4650      	mov	r0, sl
 8006e22:	f7fd fc8f 	bl	8004744 <__aeabi_d2iz>
 8006e26:	4605      	mov	r5, r0
 8006e28:	f7fd f98c 	bl	8004144 <__aeabi_i2d>
 8006e2c:	4602      	mov	r2, r0
 8006e2e:	460b      	mov	r3, r1
 8006e30:	4650      	mov	r0, sl
 8006e32:	4659      	mov	r1, fp
 8006e34:	f7fd f838 	bl	8003ea8 <__aeabi_dsub>
 8006e38:	3530      	adds	r5, #48	; 0x30
 8006e3a:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8006e3c:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8006e40:	b2ed      	uxtb	r5, r5
 8006e42:	7035      	strb	r5, [r6, #0]
 8006e44:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006e48:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006e4c:	f106 0b01 	add.w	fp, r6, #1
 8006e50:	f7fd fc6e 	bl	8004730 <__aeabi_dcmpgt>
 8006e54:	2800      	cmp	r0, #0
 8006e56:	f040 82a9 	bne.w	80073ac <_dtoa_r+0xdac>
 8006e5a:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006e5e:	2000      	movs	r0, #0
 8006e60:	490f      	ldr	r1, [pc, #60]	; (8006ea0 <_dtoa_r+0x8a0>)
 8006e62:	f7fd f821 	bl	8003ea8 <__aeabi_dsub>
 8006e66:	4602      	mov	r2, r0
 8006e68:	460b      	mov	r3, r1
 8006e6a:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006e6e:	f7fd fc5f 	bl	8004730 <__aeabi_dcmpgt>
 8006e72:	2800      	cmp	r0, #0
 8006e74:	f040 82a0 	bne.w	80073b8 <_dtoa_r+0xdb8>
 8006e78:	f1b8 0f01 	cmp.w	r8, #1
 8006e7c:	f340 8180 	ble.w	8007180 <_dtoa_r+0xb80>
 8006e80:	44b0      	add	r8, r6
 8006e82:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8006e86:	46a2      	mov	sl, r4
 8006e88:	46c1      	mov	r9, r8
 8006e8a:	e9dd 6704 	ldrd	r6, r7, [sp, #16]
 8006e8e:	e9dd 4510 	ldrd	r4, r5, [sp, #64]	; 0x40
 8006e92:	e019      	b.n	8006ec8 <_dtoa_r+0x8c8>
 8006e94:	fffffbee 	.word	0xfffffbee
 8006e98:	0800b648 	.word	0x0800b648
 8006e9c:	0800b710 	.word	0x0800b710
 8006ea0:	3ff00000 	.word	0x3ff00000
 8006ea4:	401c0000 	.word	0x401c0000
 8006ea8:	3fe00000 	.word	0x3fe00000
 8006eac:	2000      	movs	r0, #0
 8006eae:	49a8      	ldr	r1, [pc, #672]	; (8007150 <_dtoa_r+0xb50>)
 8006eb0:	f7fc fffa 	bl	8003ea8 <__aeabi_dsub>
 8006eb4:	4622      	mov	r2, r4
 8006eb6:	462b      	mov	r3, r5
 8006eb8:	f7fd fc1c 	bl	80046f4 <__aeabi_dcmplt>
 8006ebc:	2800      	cmp	r0, #0
 8006ebe:	f040 8279 	bne.w	80073b4 <_dtoa_r+0xdb4>
 8006ec2:	45cb      	cmp	fp, r9
 8006ec4:	f000 8159 	beq.w	800717a <_dtoa_r+0xb7a>
 8006ec8:	4620      	mov	r0, r4
 8006eca:	4629      	mov	r1, r5
 8006ecc:	2200      	movs	r2, #0
 8006ece:	4ba1      	ldr	r3, [pc, #644]	; (8007154 <_dtoa_r+0xb54>)
 8006ed0:	f7fd f99e 	bl	8004210 <__aeabi_dmul>
 8006ed4:	2200      	movs	r2, #0
 8006ed6:	4b9f      	ldr	r3, [pc, #636]	; (8007154 <_dtoa_r+0xb54>)
 8006ed8:	4604      	mov	r4, r0
 8006eda:	460d      	mov	r5, r1
 8006edc:	4630      	mov	r0, r6
 8006ede:	4639      	mov	r1, r7
 8006ee0:	f7fd f996 	bl	8004210 <__aeabi_dmul>
 8006ee4:	460f      	mov	r7, r1
 8006ee6:	4606      	mov	r6, r0
 8006ee8:	f7fd fc2c 	bl	8004744 <__aeabi_d2iz>
 8006eec:	4680      	mov	r8, r0
 8006eee:	f7fd f929 	bl	8004144 <__aeabi_i2d>
 8006ef2:	4602      	mov	r2, r0
 8006ef4:	460b      	mov	r3, r1
 8006ef6:	4630      	mov	r0, r6
 8006ef8:	4639      	mov	r1, r7
 8006efa:	f7fc ffd5 	bl	8003ea8 <__aeabi_dsub>
 8006efe:	f108 0830 	add.w	r8, r8, #48	; 0x30
 8006f02:	fa5f f888 	uxtb.w	r8, r8
 8006f06:	4622      	mov	r2, r4
 8006f08:	462b      	mov	r3, r5
 8006f0a:	f80b 8b01 	strb.w	r8, [fp], #1
 8006f0e:	4606      	mov	r6, r0
 8006f10:	460f      	mov	r7, r1
 8006f12:	f7fd fbef 	bl	80046f4 <__aeabi_dcmplt>
 8006f16:	4632      	mov	r2, r6
 8006f18:	463b      	mov	r3, r7
 8006f1a:	2800      	cmp	r0, #0
 8006f1c:	d0c6      	beq.n	8006eac <_dtoa_r+0x8ac>
 8006f1e:	9e17      	ldr	r6, [sp, #92]	; 0x5c
 8006f20:	9607      	str	r6, [sp, #28]
 8006f22:	4654      	mov	r4, sl
 8006f24:	e539      	b.n	800699a <_dtoa_r+0x39a>
 8006f26:	2600      	movs	r6, #0
 8006f28:	960b      	str	r6, [sp, #44]	; 0x2c
 8006f2a:	9825      	ldr	r0, [sp, #148]	; 0x94
 8006f2c:	2800      	cmp	r0, #0
 8006f2e:	dd3c      	ble.n	8006faa <_dtoa_r+0x9aa>
 8006f30:	4606      	mov	r6, r0
 8006f32:	900f      	str	r0, [sp, #60]	; 0x3c
 8006f34:	4681      	mov	r9, r0
 8006f36:	e6ec      	b.n	8006d12 <_dtoa_r+0x712>
 8006f38:	2601      	movs	r6, #1
 8006f3a:	960b      	str	r6, [sp, #44]	; 0x2c
 8006f3c:	e7f5      	b.n	8006f2a <_dtoa_r+0x92a>
 8006f3e:	f1b9 0f00 	cmp.w	r9, #0
 8006f42:	f73f ac7c 	bgt.w	800683e <_dtoa_r+0x23e>
 8006f46:	f040 80c6 	bne.w	80070d6 <_dtoa_r+0xad6>
 8006f4a:	2200      	movs	r2, #0
 8006f4c:	4b82      	ldr	r3, [pc, #520]	; (8007158 <_dtoa_r+0xb58>)
 8006f4e:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8006f52:	f7fd f95d 	bl	8004210 <__aeabi_dmul>
 8006f56:	4652      	mov	r2, sl
 8006f58:	465b      	mov	r3, fp
 8006f5a:	f7fd fbdf 	bl	800471c <__aeabi_dcmpge>
 8006f5e:	46c8      	mov	r8, r9
 8006f60:	464e      	mov	r6, r9
 8006f62:	2800      	cmp	r0, #0
 8006f64:	d07c      	beq.n	8007060 <_dtoa_r+0xa60>
 8006f66:	9d25      	ldr	r5, [sp, #148]	; 0x94
 8006f68:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8006f6c:	43ed      	mvns	r5, r5
 8006f6e:	9507      	str	r5, [sp, #28]
 8006f70:	4641      	mov	r1, r8
 8006f72:	4620      	mov	r0, r4
 8006f74:	f001 f9ac 	bl	80082d0 <_Bfree>
 8006f78:	2e00      	cmp	r6, #0
 8006f7a:	f47f ae06 	bne.w	8006b8a <_dtoa_r+0x58a>
 8006f7e:	e50c      	b.n	800699a <_dtoa_r+0x39a>
 8006f80:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006f82:	4620      	mov	r0, r4
 8006f84:	f001 fb3c 	bl	8008600 <__pow5mult>
 8006f88:	900a      	str	r0, [sp, #40]	; 0x28
 8006f8a:	e56a      	b.n	8006a62 <_dtoa_r+0x462>
 8006f8c:	9d16      	ldr	r5, [sp, #88]	; 0x58
 8006f8e:	2d00      	cmp	r5, #0
 8006f90:	f000 81b7 	beq.w	8007302 <_dtoa_r+0xd02>
 8006f94:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8006f98:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006f9a:	9d08      	ldr	r5, [sp, #32]
 8006f9c:	e527      	b.n	80069ee <_dtoa_r+0x3ee>
 8006f9e:	4601      	mov	r1, r0
 8006fa0:	4620      	mov	r0, r4
 8006fa2:	f001 f995 	bl	80082d0 <_Bfree>
 8006fa6:	2201      	movs	r2, #1
 8006fa8:	e67a      	b.n	8006ca0 <_dtoa_r+0x6a0>
 8006faa:	2601      	movs	r6, #1
 8006fac:	9625      	str	r6, [sp, #148]	; 0x94
 8006fae:	960f      	str	r6, [sp, #60]	; 0x3c
 8006fb0:	46b1      	mov	r9, r6
 8006fb2:	2100      	movs	r1, #0
 8006fb4:	6461      	str	r1, [r4, #68]	; 0x44
 8006fb6:	e6bb      	b.n	8006d30 <_dtoa_r+0x730>
 8006fb8:	980a      	ldr	r0, [sp, #40]	; 0x28
 8006fba:	4641      	mov	r1, r8
 8006fbc:	f001 fbcc 	bl	8008758 <__mcmp>
 8006fc0:	2800      	cmp	r0, #0
 8006fc2:	f6bf ad8f 	bge.w	8006ae4 <_dtoa_r+0x4e4>
 8006fc6:	f8dd e01c 	ldr.w	lr, [sp, #28]
 8006fca:	990a      	ldr	r1, [sp, #40]	; 0x28
 8006fcc:	f10e 3eff 	add.w	lr, lr, #4294967295
 8006fd0:	4620      	mov	r0, r4
 8006fd2:	220a      	movs	r2, #10
 8006fd4:	2300      	movs	r3, #0
 8006fd6:	f8cd e01c 	str.w	lr, [sp, #28]
 8006fda:	f001 f983 	bl	80082e4 <__multadd>
 8006fde:	900a      	str	r0, [sp, #40]	; 0x28
 8006fe0:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8006fe2:	2800      	cmp	r0, #0
 8006fe4:	f040 8207 	bne.w	80073f6 <_dtoa_r+0xdf6>
 8006fe8:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
 8006fec:	e57a      	b.n	8006ae4 <_dtoa_r+0x4e4>
 8006fee:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006ff2:	eb08 0383 	add.w	r3, r8, r3, lsl #2
 8006ff6:	6918      	ldr	r0, [r3, #16]
 8006ff8:	f001 fa0c 	bl	8008414 <__hi0bits>
 8006ffc:	f1c0 0020 	rsb	r0, r0, #32
 8007000:	e547      	b.n	8006a92 <_dtoa_r+0x492>
 8007002:	9809      	ldr	r0, [sp, #36]	; 0x24
 8007004:	f7ff bb2d 	b.w	8006662 <_dtoa_r+0x62>
 8007008:	f1ba 0f00 	cmp.w	sl, #0
 800700c:	f47f ad3b 	bne.w	8006a86 <_dtoa_r+0x486>
 8007010:	f3cb 0313 	ubfx	r3, fp, #0, #20
 8007014:	2b00      	cmp	r3, #0
 8007016:	f040 817b 	bne.w	8007310 <_dtoa_r+0xd10>
 800701a:	f02b 4700 	bic.w	r7, fp, #2147483648	; 0x80000000
 800701e:	0d3f      	lsrs	r7, r7, #20
 8007020:	053f      	lsls	r7, r7, #20
 8007022:	2f00      	cmp	r7, #0
 8007024:	f43f ad30 	beq.w	8006a88 <_dtoa_r+0x488>
 8007028:	9a08      	ldr	r2, [sp, #32]
 800702a:	9b06      	ldr	r3, [sp, #24]
 800702c:	3201      	adds	r2, #1
 800702e:	3301      	adds	r3, #1
 8007030:	9208      	str	r2, [sp, #32]
 8007032:	9306      	str	r3, [sp, #24]
 8007034:	2701      	movs	r7, #1
 8007036:	e527      	b.n	8006a88 <_dtoa_r+0x488>
 8007038:	9924      	ldr	r1, [sp, #144]	; 0x90
 800703a:	2902      	cmp	r1, #2
 800703c:	f77f ad56 	ble.w	8006aec <_dtoa_r+0x4ec>
 8007040:	f1b9 0f00 	cmp.w	r9, #0
 8007044:	d18f      	bne.n	8006f66 <_dtoa_r+0x966>
 8007046:	4641      	mov	r1, r8
 8007048:	464b      	mov	r3, r9
 800704a:	2205      	movs	r2, #5
 800704c:	4620      	mov	r0, r4
 800704e:	f001 f949 	bl	80082e4 <__multadd>
 8007052:	4680      	mov	r8, r0
 8007054:	4641      	mov	r1, r8
 8007056:	980a      	ldr	r0, [sp, #40]	; 0x28
 8007058:	f001 fb7e 	bl	8008758 <__mcmp>
 800705c:	2800      	cmp	r0, #0
 800705e:	dd82      	ble.n	8006f66 <_dtoa_r+0x966>
 8007060:	9d07      	ldr	r5, [sp, #28]
 8007062:	3501      	adds	r5, #1
 8007064:	9507      	str	r5, [sp, #28]
 8007066:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8007068:	2331      	movs	r3, #49	; 0x31
 800706a:	702b      	strb	r3, [r5, #0]
 800706c:	f105 0b01 	add.w	fp, r5, #1
 8007070:	e77e      	b.n	8006f70 <_dtoa_r+0x970>
 8007072:	9807      	ldr	r0, [sp, #28]
 8007074:	9909      	ldr	r1, [sp, #36]	; 0x24
 8007076:	2331      	movs	r3, #49	; 0x31
 8007078:	3001      	adds	r0, #1
 800707a:	9007      	str	r0, [sp, #28]
 800707c:	700b      	strb	r3, [r1, #0]
 800707e:	e576      	b.n	8006b6e <_dtoa_r+0x56e>
 8007080:	46a3      	mov	fp, r4
 8007082:	9c03      	ldr	r4, [sp, #12]
 8007084:	e489      	b.n	800699a <_dtoa_r+0x39a>
 8007086:	4640      	mov	r0, r8
 8007088:	f7fd f85c 	bl	8004144 <__aeabi_i2d>
 800708c:	4602      	mov	r2, r0
 800708e:	460b      	mov	r3, r1
 8007090:	4650      	mov	r0, sl
 8007092:	4659      	mov	r1, fp
 8007094:	f7fd f8bc 	bl	8004210 <__aeabi_dmul>
 8007098:	2200      	movs	r2, #0
 800709a:	4b30      	ldr	r3, [pc, #192]	; (800715c <_dtoa_r+0xb5c>)
 800709c:	f7fc ff06 	bl	8003eac <__adddf3>
 80070a0:	4606      	mov	r6, r0
 80070a2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80070a6:	4650      	mov	r0, sl
 80070a8:	4659      	mov	r1, fp
 80070aa:	2200      	movs	r2, #0
 80070ac:	4b2a      	ldr	r3, [pc, #168]	; (8007158 <_dtoa_r+0xb58>)
 80070ae:	f7fc fefb 	bl	8003ea8 <__aeabi_dsub>
 80070b2:	4632      	mov	r2, r6
 80070b4:	463b      	mov	r3, r7
 80070b6:	4682      	mov	sl, r0
 80070b8:	468b      	mov	fp, r1
 80070ba:	f7fd fb39 	bl	8004730 <__aeabi_dcmpgt>
 80070be:	2800      	cmp	r0, #0
 80070c0:	f040 80bc 	bne.w	800723c <_dtoa_r+0xc3c>
 80070c4:	4632      	mov	r2, r6
 80070c6:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80070ca:	4650      	mov	r0, sl
 80070cc:	4659      	mov	r1, fp
 80070ce:	f7fd fb11 	bl	80046f4 <__aeabi_dcmplt>
 80070d2:	2800      	cmp	r0, #0
 80070d4:	d054      	beq.n	8007180 <_dtoa_r+0xb80>
 80070d6:	f04f 0800 	mov.w	r8, #0
 80070da:	4646      	mov	r6, r8
 80070dc:	e743      	b.n	8006f66 <_dtoa_r+0x966>
 80070de:	990a      	ldr	r1, [sp, #40]	; 0x28
 80070e0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80070e2:	4620      	mov	r0, r4
 80070e4:	f001 fa8c 	bl	8008600 <__pow5mult>
 80070e8:	900a      	str	r0, [sp, #40]	; 0x28
 80070ea:	e4ba      	b.n	8006a62 <_dtoa_r+0x462>
 80070ec:	2601      	movs	r6, #1
 80070ee:	960b      	str	r6, [sp, #44]	; 0x2c
 80070f0:	e602      	b.n	8006cf8 <_dtoa_r+0x6f8>
 80070f2:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 80070f4:	9e0d      	ldr	r6, [sp, #52]	; 0x34
 80070f6:	970c      	str	r7, [sp, #48]	; 0x30
 80070f8:	1b7b      	subs	r3, r7, r5
 80070fa:	441e      	add	r6, r3
 80070fc:	960d      	str	r6, [sp, #52]	; 0x34
 80070fe:	2700      	movs	r7, #0
 8007100:	e46f      	b.n	80069e2 <_dtoa_r+0x3e2>
 8007102:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8007106:	f04f 0802 	mov.w	r8, #2
 800710a:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
 800710e:	e638      	b.n	8006d82 <_dtoa_r+0x782>
 8007110:	2a00      	cmp	r2, #0
 8007112:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8007116:	46d9      	mov	r9, fp
 8007118:	dd11      	ble.n	800713e <_dtoa_r+0xb3e>
 800711a:	990a      	ldr	r1, [sp, #40]	; 0x28
 800711c:	2201      	movs	r2, #1
 800711e:	4620      	mov	r0, r4
 8007120:	f001 fabc 	bl	800869c <__lshift>
 8007124:	4641      	mov	r1, r8
 8007126:	900a      	str	r0, [sp, #40]	; 0x28
 8007128:	f001 fb16 	bl	8008758 <__mcmp>
 800712c:	2800      	cmp	r0, #0
 800712e:	f340 815b 	ble.w	80073e8 <_dtoa_r+0xde8>
 8007132:	f1ba 0f39 	cmp.w	sl, #57	; 0x39
 8007136:	f000 811a 	beq.w	800736e <_dtoa_r+0xd6e>
 800713a:	f109 0a31 	add.w	sl, r9, #49	; 0x31
 800713e:	9b06      	ldr	r3, [sp, #24]
 8007140:	4635      	mov	r5, r6
 8007142:	f883 a000 	strb.w	sl, [r3]
 8007146:	f103 0b01 	add.w	fp, r3, #1
 800714a:	463e      	mov	r6, r7
 800714c:	e50f      	b.n	8006b6e <_dtoa_r+0x56e>
 800714e:	bf00      	nop
 8007150:	3ff00000 	.word	0x3ff00000
 8007154:	40240000 	.word	0x40240000
 8007158:	40140000 	.word	0x40140000
 800715c:	401c0000 	.word	0x401c0000
 8007160:	d103      	bne.n	800716a <_dtoa_r+0xb6a>
 8007162:	f01a 0f01 	tst.w	sl, #1
 8007166:	f47f acf2 	bne.w	8006b4e <_dtoa_r+0x54e>
 800716a:	465b      	mov	r3, fp
 800716c:	469b      	mov	fp, r3
 800716e:	3b01      	subs	r3, #1
 8007170:	f81b 2c01 	ldrb.w	r2, [fp, #-1]
 8007174:	2a30      	cmp	r2, #48	; 0x30
 8007176:	d0f9      	beq.n	800716c <_dtoa_r+0xb6c>
 8007178:	e4f9      	b.n	8006b6e <_dtoa_r+0x56e>
 800717a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800717e:	4654      	mov	r4, sl
 8007180:	e9dd ab12 	ldrd	sl, fp, [sp, #72]	; 0x48
 8007184:	f7ff bb48 	b.w	8006818 <_dtoa_r+0x218>
 8007188:	9e07      	ldr	r6, [sp, #28]
 800718a:	4275      	negs	r5, r6
 800718c:	2d00      	cmp	r5, #0
 800718e:	f000 80c2 	beq.w	8007316 <_dtoa_r+0xd16>
 8007192:	4ba3      	ldr	r3, [pc, #652]	; (8007420 <_dtoa_r+0xe20>)
 8007194:	f005 020f 	and.w	r2, r5, #15
 8007198:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800719c:	e9d3 2300 	ldrd	r2, r3, [r3]
 80071a0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80071a4:	f7fd f834 	bl	8004210 <__aeabi_dmul>
 80071a8:	112d      	asrs	r5, r5, #4
 80071aa:	4682      	mov	sl, r0
 80071ac:	468b      	mov	fp, r1
 80071ae:	f000 812d 	beq.w	800740c <_dtoa_r+0xe0c>
 80071b2:	4e9c      	ldr	r6, [pc, #624]	; (8007424 <_dtoa_r+0xe24>)
 80071b4:	f04f 0802 	mov.w	r8, #2
 80071b8:	07ea      	lsls	r2, r5, #31
 80071ba:	d505      	bpl.n	80071c8 <_dtoa_r+0xbc8>
 80071bc:	e9d6 2300 	ldrd	r2, r3, [r6]
 80071c0:	f108 0801 	add.w	r8, r8, #1
 80071c4:	f7fd f824 	bl	8004210 <__aeabi_dmul>
 80071c8:	106d      	asrs	r5, r5, #1
 80071ca:	f106 0608 	add.w	r6, r6, #8
 80071ce:	d1f3      	bne.n	80071b8 <_dtoa_r+0xbb8>
 80071d0:	4682      	mov	sl, r0
 80071d2:	468b      	mov	fp, r1
 80071d4:	e5f0      	b.n	8006db8 <_dtoa_r+0x7b8>
 80071d6:	9e07      	ldr	r6, [sp, #28]
 80071d8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80071da:	2230      	movs	r2, #48	; 0x30
 80071dc:	702a      	strb	r2, [r5, #0]
 80071de:	3601      	adds	r6, #1
 80071e0:	2231      	movs	r2, #49	; 0x31
 80071e2:	9607      	str	r6, [sp, #28]
 80071e4:	701a      	strb	r2, [r3, #0]
 80071e6:	f7ff bbd8 	b.w	800699a <_dtoa_r+0x39a>
 80071ea:	6871      	ldr	r1, [r6, #4]
 80071ec:	4620      	mov	r0, r4
 80071ee:	f001 f849 	bl	8008284 <_Balloc>
 80071f2:	6933      	ldr	r3, [r6, #16]
 80071f4:	1c9a      	adds	r2, r3, #2
 80071f6:	4605      	mov	r5, r0
 80071f8:	0092      	lsls	r2, r2, #2
 80071fa:	f106 010c 	add.w	r1, r6, #12
 80071fe:	300c      	adds	r0, #12
 8007200:	f7fc fc40 	bl	8003a84 <memcpy>
 8007204:	4620      	mov	r0, r4
 8007206:	4629      	mov	r1, r5
 8007208:	2201      	movs	r2, #1
 800720a:	f001 fa47 	bl	800869c <__lshift>
 800720e:	4607      	mov	r7, r0
 8007210:	e504      	b.n	8006c1c <_dtoa_r+0x61c>
 8007212:	f1ba 0f39 	cmp.w	sl, #57	; 0x39
 8007216:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800721a:	f000 80a8 	beq.w	800736e <_dtoa_r+0xd6e>
 800721e:	9d06      	ldr	r5, [sp, #24]
 8007220:	f10a 0301 	add.w	r3, sl, #1
 8007224:	702b      	strb	r3, [r5, #0]
 8007226:	4635      	mov	r5, r6
 8007228:	9e06      	ldr	r6, [sp, #24]
 800722a:	f106 0b01 	add.w	fp, r6, #1
 800722e:	463e      	mov	r6, r7
 8007230:	e49d      	b.n	8006b6e <_dtoa_r+0x56e>
 8007232:	4635      	mov	r5, r6
 8007234:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8007238:	463e      	mov	r6, r7
 800723a:	e47c      	b.n	8006b36 <_dtoa_r+0x536>
 800723c:	f04f 0800 	mov.w	r8, #0
 8007240:	4646      	mov	r6, r8
 8007242:	e70d      	b.n	8007060 <_dtoa_r+0xa60>
 8007244:	4976      	ldr	r1, [pc, #472]	; (8007420 <_dtoa_r+0xe20>)
 8007246:	f108 35ff 	add.w	r5, r8, #4294967295
 800724a:	eb01 01c5 	add.w	r1, r1, r5, lsl #3
 800724e:	4632      	mov	r2, r6
 8007250:	463b      	mov	r3, r7
 8007252:	e9d1 0100 	ldrd	r0, r1, [r1]
 8007256:	9510      	str	r5, [sp, #64]	; 0x40
 8007258:	f7fc ffda 	bl	8004210 <__aeabi_dmul>
 800725c:	e9cd 0114 	strd	r0, r1, [sp, #80]	; 0x50
 8007260:	4659      	mov	r1, fp
 8007262:	4650      	mov	r0, sl
 8007264:	f7fd fa6e 	bl	8004744 <__aeabi_d2iz>
 8007268:	4605      	mov	r5, r0
 800726a:	f7fc ff6b 	bl	8004144 <__aeabi_i2d>
 800726e:	4602      	mov	r2, r0
 8007270:	460b      	mov	r3, r1
 8007272:	4650      	mov	r0, sl
 8007274:	4659      	mov	r1, fp
 8007276:	f7fc fe17 	bl	8003ea8 <__aeabi_dsub>
 800727a:	f8dd e024 	ldr.w	lr, [sp, #36]	; 0x24
 800727e:	3530      	adds	r5, #48	; 0x30
 8007280:	f1b8 0f01 	cmp.w	r8, #1
 8007284:	4606      	mov	r6, r0
 8007286:	460f      	mov	r7, r1
 8007288:	f88e 5000 	strb.w	r5, [lr]
 800728c:	f10e 0b01 	add.w	fp, lr, #1
 8007290:	d01e      	beq.n	80072d0 <_dtoa_r+0xcd0>
 8007292:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8007294:	1e6b      	subs	r3, r5, #1
 8007296:	eb03 0a08 	add.w	sl, r3, r8
 800729a:	2200      	movs	r2, #0
 800729c:	4b62      	ldr	r3, [pc, #392]	; (8007428 <_dtoa_r+0xe28>)
 800729e:	f7fc ffb7 	bl	8004210 <__aeabi_dmul>
 80072a2:	460f      	mov	r7, r1
 80072a4:	4606      	mov	r6, r0
 80072a6:	f7fd fa4d 	bl	8004744 <__aeabi_d2iz>
 80072aa:	4680      	mov	r8, r0
 80072ac:	f7fc ff4a 	bl	8004144 <__aeabi_i2d>
 80072b0:	f108 0830 	add.w	r8, r8, #48	; 0x30
 80072b4:	4602      	mov	r2, r0
 80072b6:	460b      	mov	r3, r1
 80072b8:	4630      	mov	r0, r6
 80072ba:	4639      	mov	r1, r7
 80072bc:	f7fc fdf4 	bl	8003ea8 <__aeabi_dsub>
 80072c0:	f805 8f01 	strb.w	r8, [r5, #1]!
 80072c4:	4555      	cmp	r5, sl
 80072c6:	d1e8      	bne.n	800729a <_dtoa_r+0xc9a>
 80072c8:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80072ca:	4606      	mov	r6, r0
 80072cc:	460f      	mov	r7, r1
 80072ce:	44ab      	add	fp, r5
 80072d0:	2200      	movs	r2, #0
 80072d2:	4b56      	ldr	r3, [pc, #344]	; (800742c <_dtoa_r+0xe2c>)
 80072d4:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
 80072d8:	f7fc fde8 	bl	8003eac <__adddf3>
 80072dc:	4632      	mov	r2, r6
 80072de:	463b      	mov	r3, r7
 80072e0:	f7fd fa08 	bl	80046f4 <__aeabi_dcmplt>
 80072e4:	2800      	cmp	r0, #0
 80072e6:	d04d      	beq.n	8007384 <_dtoa_r+0xd84>
 80072e8:	9e17      	ldr	r6, [sp, #92]	; 0x5c
 80072ea:	9607      	str	r6, [sp, #28]
 80072ec:	f81b 5c01 	ldrb.w	r5, [fp, #-1]
 80072f0:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80072f2:	f7ff bb4b 	b.w	800698c <_dtoa_r+0x38c>
 80072f6:	9e08      	ldr	r6, [sp, #32]
 80072f8:	2300      	movs	r3, #0
 80072fa:	ebc9 0506 	rsb	r5, r9, r6
 80072fe:	f7ff bb76 	b.w	80069ee <_dtoa_r+0x3ee>
 8007302:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8007304:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007306:	9d08      	ldr	r5, [sp, #32]
 8007308:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800730c:	f7ff bb6f 	b.w	80069ee <_dtoa_r+0x3ee>
 8007310:	4657      	mov	r7, sl
 8007312:	f7ff bbb9 	b.w	8006a88 <_dtoa_r+0x488>
 8007316:	e9dd ab12 	ldrd	sl, fp, [sp, #72]	; 0x48
 800731a:	f04f 0802 	mov.w	r8, #2
 800731e:	e54b      	b.n	8006db8 <_dtoa_r+0x7b8>
 8007320:	f1b9 0f00 	cmp.w	r9, #0
 8007324:	f43f aeaf 	beq.w	8007086 <_dtoa_r+0xa86>
 8007328:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
 800732a:	2e00      	cmp	r6, #0
 800732c:	f77f af28 	ble.w	8007180 <_dtoa_r+0xb80>
 8007330:	2200      	movs	r2, #0
 8007332:	4b3d      	ldr	r3, [pc, #244]	; (8007428 <_dtoa_r+0xe28>)
 8007334:	4650      	mov	r0, sl
 8007336:	4659      	mov	r1, fp
 8007338:	f7fc ff6a 	bl	8004210 <__aeabi_dmul>
 800733c:	4682      	mov	sl, r0
 800733e:	f108 0001 	add.w	r0, r8, #1
 8007342:	468b      	mov	fp, r1
 8007344:	f7fc fefe 	bl	8004144 <__aeabi_i2d>
 8007348:	4602      	mov	r2, r0
 800734a:	460b      	mov	r3, r1
 800734c:	4650      	mov	r0, sl
 800734e:	4659      	mov	r1, fp
 8007350:	f7fc ff5e 	bl	8004210 <__aeabi_dmul>
 8007354:	2200      	movs	r2, #0
 8007356:	4b36      	ldr	r3, [pc, #216]	; (8007430 <_dtoa_r+0xe30>)
 8007358:	f7fc fda8 	bl	8003eac <__adddf3>
 800735c:	9d07      	ldr	r5, [sp, #28]
 800735e:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
 8007362:	3d01      	subs	r5, #1
 8007364:	4606      	mov	r6, r0
 8007366:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800736a:	9517      	str	r5, [sp, #92]	; 0x5c
 800736c:	e544      	b.n	8006df8 <_dtoa_r+0x7f8>
 800736e:	4635      	mov	r5, r6
 8007370:	9b06      	ldr	r3, [sp, #24]
 8007372:	9e06      	ldr	r6, [sp, #24]
 8007374:	9909      	ldr	r1, [sp, #36]	; 0x24
 8007376:	2239      	movs	r2, #57	; 0x39
 8007378:	7032      	strb	r2, [r6, #0]
 800737a:	f103 0b01 	add.w	fp, r3, #1
 800737e:	463e      	mov	r6, r7
 8007380:	f7ff bbef 	b.w	8006b62 <_dtoa_r+0x562>
 8007384:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007388:	2000      	movs	r0, #0
 800738a:	4928      	ldr	r1, [pc, #160]	; (800742c <_dtoa_r+0xe2c>)
 800738c:	f7fc fd8c 	bl	8003ea8 <__aeabi_dsub>
 8007390:	4632      	mov	r2, r6
 8007392:	463b      	mov	r3, r7
 8007394:	f7fd f9cc 	bl	8004730 <__aeabi_dcmpgt>
 8007398:	2800      	cmp	r0, #0
 800739a:	f43f aef1 	beq.w	8007180 <_dtoa_r+0xb80>
 800739e:	465b      	mov	r3, fp
 80073a0:	469b      	mov	fp, r3
 80073a2:	3b01      	subs	r3, #1
 80073a4:	f81b 2c01 	ldrb.w	r2, [fp, #-1]
 80073a8:	2a30      	cmp	r2, #48	; 0x30
 80073aa:	d0f9      	beq.n	80073a0 <_dtoa_r+0xda0>
 80073ac:	9d17      	ldr	r5, [sp, #92]	; 0x5c
 80073ae:	9507      	str	r5, [sp, #28]
 80073b0:	f7ff baf3 	b.w	800699a <_dtoa_r+0x39a>
 80073b4:	4645      	mov	r5, r8
 80073b6:	4654      	mov	r4, sl
 80073b8:	9e17      	ldr	r6, [sp, #92]	; 0x5c
 80073ba:	9607      	str	r6, [sp, #28]
 80073bc:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80073be:	f7ff bae5 	b.w	800698c <_dtoa_r+0x38c>
 80073c2:	f1ba 0f39 	cmp.w	sl, #57	; 0x39
 80073c6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80073ca:	d0d0      	beq.n	800736e <_dtoa_r+0xd6e>
 80073cc:	9b03      	ldr	r3, [sp, #12]
 80073ce:	4635      	mov	r5, r6
 80073d0:	2b00      	cmp	r3, #0
 80073d2:	9e06      	ldr	r6, [sp, #24]
 80073d4:	bfc8      	it	gt
 80073d6:	f10b 0a31 	addgt.w	sl, fp, #49	; 0x31
 80073da:	f886 a000 	strb.w	sl, [r6]
 80073de:	f106 0b01 	add.w	fp, r6, #1
 80073e2:	463e      	mov	r6, r7
 80073e4:	f7ff bbc3 	b.w	8006b6e <_dtoa_r+0x56e>
 80073e8:	f47f aea9 	bne.w	800713e <_dtoa_r+0xb3e>
 80073ec:	f01a 0f01 	tst.w	sl, #1
 80073f0:	f43f aea5 	beq.w	800713e <_dtoa_r+0xb3e>
 80073f4:	e69d      	b.n	8007132 <_dtoa_r+0xb32>
 80073f6:	4631      	mov	r1, r6
 80073f8:	4620      	mov	r0, r4
 80073fa:	220a      	movs	r2, #10
 80073fc:	2300      	movs	r3, #0
 80073fe:	f8dd 903c 	ldr.w	r9, [sp, #60]	; 0x3c
 8007402:	f000 ff6f 	bl	80082e4 <__multadd>
 8007406:	4606      	mov	r6, r0
 8007408:	f7ff bb6c 	b.w	8006ae4 <_dtoa_r+0x4e4>
 800740c:	f04f 0802 	mov.w	r8, #2
 8007410:	e4d2      	b.n	8006db8 <_dtoa_r+0x7b8>
 8007412:	f43f ab52 	beq.w	8006aba <_dtoa_r+0x4ba>
 8007416:	f1c3 033c 	rsb	r3, r3, #60	; 0x3c
 800741a:	f7ff bbe2 	b.w	8006be2 <_dtoa_r+0x5e2>
 800741e:	bf00      	nop
 8007420:	0800b648 	.word	0x0800b648
 8007424:	0800b710 	.word	0x0800b710
 8007428:	40240000 	.word	0x40240000
 800742c:	3fe00000 	.word	0x3fe00000
 8007430:	401c0000 	.word	0x401c0000
 8007434:	f3af 8000 	nop.w

08007438 <__sflush_r>:
 8007438:	898b      	ldrh	r3, [r1, #12]
 800743a:	b29a      	uxth	r2, r3
 800743c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007440:	460d      	mov	r5, r1
 8007442:	0711      	lsls	r1, r2, #28
 8007444:	4680      	mov	r8, r0
 8007446:	d43c      	bmi.n	80074c2 <__sflush_r+0x8a>
 8007448:	686a      	ldr	r2, [r5, #4]
 800744a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 800744e:	2a00      	cmp	r2, #0
 8007450:	81ab      	strh	r3, [r5, #12]
 8007452:	dd59      	ble.n	8007508 <__sflush_r+0xd0>
 8007454:	6aac      	ldr	r4, [r5, #40]	; 0x28
 8007456:	2c00      	cmp	r4, #0
 8007458:	d04b      	beq.n	80074f2 <__sflush_r+0xba>
 800745a:	b29b      	uxth	r3, r3
 800745c:	f403 5280 	and.w	r2, r3, #4096	; 0x1000
 8007460:	2100      	movs	r1, #0
 8007462:	b292      	uxth	r2, r2
 8007464:	f8d8 6000 	ldr.w	r6, [r8]
 8007468:	f8c8 1000 	str.w	r1, [r8]
 800746c:	2a00      	cmp	r2, #0
 800746e:	d04f      	beq.n	8007510 <__sflush_r+0xd8>
 8007470:	6d2a      	ldr	r2, [r5, #80]	; 0x50
 8007472:	075f      	lsls	r7, r3, #29
 8007474:	d505      	bpl.n	8007482 <__sflush_r+0x4a>
 8007476:	6869      	ldr	r1, [r5, #4]
 8007478:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 800747a:	1a52      	subs	r2, r2, r1
 800747c:	b10b      	cbz	r3, 8007482 <__sflush_r+0x4a>
 800747e:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8007480:	1ad2      	subs	r2, r2, r3
 8007482:	4640      	mov	r0, r8
 8007484:	69e9      	ldr	r1, [r5, #28]
 8007486:	2300      	movs	r3, #0
 8007488:	47a0      	blx	r4
 800748a:	1c44      	adds	r4, r0, #1
 800748c:	d04a      	beq.n	8007524 <__sflush_r+0xec>
 800748e:	89aa      	ldrh	r2, [r5, #12]
 8007490:	692b      	ldr	r3, [r5, #16]
 8007492:	602b      	str	r3, [r5, #0]
 8007494:	f422 6300 	bic.w	r3, r2, #2048	; 0x800
 8007498:	b29b      	uxth	r3, r3
 800749a:	2200      	movs	r2, #0
 800749c:	606a      	str	r2, [r5, #4]
 800749e:	04da      	lsls	r2, r3, #19
 80074a0:	81ab      	strh	r3, [r5, #12]
 80074a2:	d44c      	bmi.n	800753e <__sflush_r+0x106>
 80074a4:	6b29      	ldr	r1, [r5, #48]	; 0x30
 80074a6:	f8c8 6000 	str.w	r6, [r8]
 80074aa:	b311      	cbz	r1, 80074f2 <__sflush_r+0xba>
 80074ac:	f105 0340 	add.w	r3, r5, #64	; 0x40
 80074b0:	4299      	cmp	r1, r3
 80074b2:	d002      	beq.n	80074ba <__sflush_r+0x82>
 80074b4:	4640      	mov	r0, r8
 80074b6:	f000 f9e7 	bl	8007888 <_free_r>
 80074ba:	2000      	movs	r0, #0
 80074bc:	6328      	str	r0, [r5, #48]	; 0x30
 80074be:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80074c2:	692e      	ldr	r6, [r5, #16]
 80074c4:	b1ae      	cbz	r6, 80074f2 <__sflush_r+0xba>
 80074c6:	682c      	ldr	r4, [r5, #0]
 80074c8:	602e      	str	r6, [r5, #0]
 80074ca:	0791      	lsls	r1, r2, #30
 80074cc:	bf0c      	ite	eq
 80074ce:	696b      	ldreq	r3, [r5, #20]
 80074d0:	2300      	movne	r3, #0
 80074d2:	1ba4      	subs	r4, r4, r6
 80074d4:	60ab      	str	r3, [r5, #8]
 80074d6:	e00a      	b.n	80074ee <__sflush_r+0xb6>
 80074d8:	4632      	mov	r2, r6
 80074da:	4623      	mov	r3, r4
 80074dc:	6a6f      	ldr	r7, [r5, #36]	; 0x24
 80074de:	69e9      	ldr	r1, [r5, #28]
 80074e0:	4640      	mov	r0, r8
 80074e2:	47b8      	blx	r7
 80074e4:	2800      	cmp	r0, #0
 80074e6:	ebc0 0404 	rsb	r4, r0, r4
 80074ea:	4406      	add	r6, r0
 80074ec:	dd04      	ble.n	80074f8 <__sflush_r+0xc0>
 80074ee:	2c00      	cmp	r4, #0
 80074f0:	dcf2      	bgt.n	80074d8 <__sflush_r+0xa0>
 80074f2:	2000      	movs	r0, #0
 80074f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80074f8:	89ab      	ldrh	r3, [r5, #12]
 80074fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80074fe:	81ab      	strh	r3, [r5, #12]
 8007500:	f04f 30ff 	mov.w	r0, #4294967295
 8007504:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007508:	6bea      	ldr	r2, [r5, #60]	; 0x3c
 800750a:	2a00      	cmp	r2, #0
 800750c:	dca2      	bgt.n	8007454 <__sflush_r+0x1c>
 800750e:	e7f0      	b.n	80074f2 <__sflush_r+0xba>
 8007510:	2301      	movs	r3, #1
 8007512:	4640      	mov	r0, r8
 8007514:	69e9      	ldr	r1, [r5, #28]
 8007516:	47a0      	blx	r4
 8007518:	1c43      	adds	r3, r0, #1
 800751a:	4602      	mov	r2, r0
 800751c:	d01e      	beq.n	800755c <__sflush_r+0x124>
 800751e:	89ab      	ldrh	r3, [r5, #12]
 8007520:	6aac      	ldr	r4, [r5, #40]	; 0x28
 8007522:	e7a6      	b.n	8007472 <__sflush_r+0x3a>
 8007524:	f8d8 3000 	ldr.w	r3, [r8]
 8007528:	b95b      	cbnz	r3, 8007542 <__sflush_r+0x10a>
 800752a:	89a9      	ldrh	r1, [r5, #12]
 800752c:	606b      	str	r3, [r5, #4]
 800752e:	f421 6300 	bic.w	r3, r1, #2048	; 0x800
 8007532:	b29b      	uxth	r3, r3
 8007534:	692a      	ldr	r2, [r5, #16]
 8007536:	81ab      	strh	r3, [r5, #12]
 8007538:	04db      	lsls	r3, r3, #19
 800753a:	602a      	str	r2, [r5, #0]
 800753c:	d5b2      	bpl.n	80074a4 <__sflush_r+0x6c>
 800753e:	6528      	str	r0, [r5, #80]	; 0x50
 8007540:	e7b0      	b.n	80074a4 <__sflush_r+0x6c>
 8007542:	2b1d      	cmp	r3, #29
 8007544:	d001      	beq.n	800754a <__sflush_r+0x112>
 8007546:	2b16      	cmp	r3, #22
 8007548:	d119      	bne.n	800757e <__sflush_r+0x146>
 800754a:	89aa      	ldrh	r2, [r5, #12]
 800754c:	692b      	ldr	r3, [r5, #16]
 800754e:	602b      	str	r3, [r5, #0]
 8007550:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8007554:	2300      	movs	r3, #0
 8007556:	81aa      	strh	r2, [r5, #12]
 8007558:	606b      	str	r3, [r5, #4]
 800755a:	e7a3      	b.n	80074a4 <__sflush_r+0x6c>
 800755c:	f8d8 3000 	ldr.w	r3, [r8]
 8007560:	2b00      	cmp	r3, #0
 8007562:	d0dc      	beq.n	800751e <__sflush_r+0xe6>
 8007564:	2b1d      	cmp	r3, #29
 8007566:	d007      	beq.n	8007578 <__sflush_r+0x140>
 8007568:	2b16      	cmp	r3, #22
 800756a:	d005      	beq.n	8007578 <__sflush_r+0x140>
 800756c:	89ab      	ldrh	r3, [r5, #12]
 800756e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007572:	81ab      	strh	r3, [r5, #12]
 8007574:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007578:	f8c8 6000 	str.w	r6, [r8]
 800757c:	e7b9      	b.n	80074f2 <__sflush_r+0xba>
 800757e:	89ab      	ldrh	r3, [r5, #12]
 8007580:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007584:	81ab      	strh	r3, [r5, #12]
 8007586:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800758a:	bf00      	nop

0800758c <_fflush_r>:
 800758c:	b510      	push	{r4, lr}
 800758e:	4604      	mov	r4, r0
 8007590:	b082      	sub	sp, #8
 8007592:	b108      	cbz	r0, 8007598 <_fflush_r+0xc>
 8007594:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007596:	b153      	cbz	r3, 80075ae <_fflush_r+0x22>
 8007598:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
 800759c:	b908      	cbnz	r0, 80075a2 <_fflush_r+0x16>
 800759e:	b002      	add	sp, #8
 80075a0:	bd10      	pop	{r4, pc}
 80075a2:	4620      	mov	r0, r4
 80075a4:	b002      	add	sp, #8
 80075a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80075aa:	f7ff bf45 	b.w	8007438 <__sflush_r>
 80075ae:	9101      	str	r1, [sp, #4]
 80075b0:	f000 f840 	bl	8007634 <__sinit>
 80075b4:	9901      	ldr	r1, [sp, #4]
 80075b6:	e7ef      	b.n	8007598 <_fflush_r+0xc>

080075b8 <fflush>:
 80075b8:	b120      	cbz	r0, 80075c4 <fflush+0xc>
 80075ba:	4b05      	ldr	r3, [pc, #20]	; (80075d0 <fflush+0x18>)
 80075bc:	4601      	mov	r1, r0
 80075be:	6818      	ldr	r0, [r3, #0]
 80075c0:	f7ff bfe4 	b.w	800758c <_fflush_r>
 80075c4:	4b03      	ldr	r3, [pc, #12]	; (80075d4 <fflush+0x1c>)
 80075c6:	4904      	ldr	r1, [pc, #16]	; (80075d8 <fflush+0x20>)
 80075c8:	6818      	ldr	r0, [r3, #0]
 80075ca:	f000 ba51 	b.w	8007a70 <_fwalk_reent>
 80075ce:	bf00      	nop
 80075d0:	20000650 	.word	0x20000650
 80075d4:	0800b638 	.word	0x0800b638
 80075d8:	0800758d 	.word	0x0800758d

080075dc <__fp_lock>:
 80075dc:	2000      	movs	r0, #0
 80075de:	4770      	bx	lr

080075e0 <__fp_unlock>:
 80075e0:	2000      	movs	r0, #0
 80075e2:	4770      	bx	lr

080075e4 <_cleanup_r>:
 80075e4:	4901      	ldr	r1, [pc, #4]	; (80075ec <_cleanup_r+0x8>)
 80075e6:	f000 ba43 	b.w	8007a70 <_fwalk_reent>
 80075ea:	bf00      	nop
 80075ec:	08009ac9 	.word	0x08009ac9

080075f0 <__sfmoreglue>:
 80075f0:	b570      	push	{r4, r5, r6, lr}
 80075f2:	1e4b      	subs	r3, r1, #1
 80075f4:	2568      	movs	r5, #104	; 0x68
 80075f6:	fb05 f503 	mul.w	r5, r5, r3
 80075fa:	460e      	mov	r6, r1
 80075fc:	f105 0174 	add.w	r1, r5, #116	; 0x74
 8007600:	f000 fb0e 	bl	8007c20 <_malloc_r>
 8007604:	4604      	mov	r4, r0
 8007606:	b140      	cbz	r0, 800761a <__sfmoreglue+0x2a>
 8007608:	2100      	movs	r1, #0
 800760a:	300c      	adds	r0, #12
 800760c:	6066      	str	r6, [r4, #4]
 800760e:	f105 0268 	add.w	r2, r5, #104	; 0x68
 8007612:	6021      	str	r1, [r4, #0]
 8007614:	60a0      	str	r0, [r4, #8]
 8007616:	f000 fde7 	bl	80081e8 <memset>
 800761a:	4620      	mov	r0, r4
 800761c:	bd70      	pop	{r4, r5, r6, pc}
 800761e:	bf00      	nop

08007620 <_cleanup>:
 8007620:	4b02      	ldr	r3, [pc, #8]	; (800762c <_cleanup+0xc>)
 8007622:	4903      	ldr	r1, [pc, #12]	; (8007630 <_cleanup+0x10>)
 8007624:	6818      	ldr	r0, [r3, #0]
 8007626:	f000 ba23 	b.w	8007a70 <_fwalk_reent>
 800762a:	bf00      	nop
 800762c:	0800b638 	.word	0x0800b638
 8007630:	08009ac9 	.word	0x08009ac9

08007634 <__sinit>:
 8007634:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007638:	6b84      	ldr	r4, [r0, #56]	; 0x38
 800763a:	b083      	sub	sp, #12
 800763c:	4607      	mov	r7, r0
 800763e:	2c00      	cmp	r4, #0
 8007640:	d165      	bne.n	800770e <__sinit+0xda>
 8007642:	6845      	ldr	r5, [r0, #4]
 8007644:	4833      	ldr	r0, [pc, #204]	; (8007714 <__sinit+0xe0>)
 8007646:	63f8      	str	r0, [r7, #60]	; 0x3c
 8007648:	2304      	movs	r3, #4
 800764a:	2103      	movs	r1, #3
 800764c:	f507 723b 	add.w	r2, r7, #748	; 0x2ec
 8007650:	f8c7 12e4 	str.w	r1, [r7, #740]	; 0x2e4
 8007654:	f8c7 22e8 	str.w	r2, [r7, #744]	; 0x2e8
 8007658:	f8c7 42e0 	str.w	r4, [r7, #736]	; 0x2e0
 800765c:	f105 005c 	add.w	r0, r5, #92	; 0x5c
 8007660:	81ab      	strh	r3, [r5, #12]
 8007662:	602c      	str	r4, [r5, #0]
 8007664:	606c      	str	r4, [r5, #4]
 8007666:	60ac      	str	r4, [r5, #8]
 8007668:	666c      	str	r4, [r5, #100]	; 0x64
 800766a:	81ec      	strh	r4, [r5, #14]
 800766c:	612c      	str	r4, [r5, #16]
 800766e:	616c      	str	r4, [r5, #20]
 8007670:	61ac      	str	r4, [r5, #24]
 8007672:	4621      	mov	r1, r4
 8007674:	2208      	movs	r2, #8
 8007676:	f000 fdb7 	bl	80081e8 <memset>
 800767a:	68be      	ldr	r6, [r7, #8]
 800767c:	f8df b098 	ldr.w	fp, [pc, #152]	; 8007718 <__sinit+0xe4>
 8007680:	f8df a098 	ldr.w	sl, [pc, #152]	; 800771c <__sinit+0xe8>
 8007684:	f8df 9098 	ldr.w	r9, [pc, #152]	; 8007720 <__sinit+0xec>
 8007688:	f8df 8098 	ldr.w	r8, [pc, #152]	; 8007724 <__sinit+0xf0>
 800768c:	61ed      	str	r5, [r5, #28]
 800768e:	2301      	movs	r3, #1
 8007690:	2209      	movs	r2, #9
 8007692:	f8c5 b020 	str.w	fp, [r5, #32]
 8007696:	f8c5 a024 	str.w	sl, [r5, #36]	; 0x24
 800769a:	f8c5 9028 	str.w	r9, [r5, #40]	; 0x28
 800769e:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
 80076a2:	4621      	mov	r1, r4
 80076a4:	81f3      	strh	r3, [r6, #14]
 80076a6:	81b2      	strh	r2, [r6, #12]
 80076a8:	6034      	str	r4, [r6, #0]
 80076aa:	6074      	str	r4, [r6, #4]
 80076ac:	60b4      	str	r4, [r6, #8]
 80076ae:	6674      	str	r4, [r6, #100]	; 0x64
 80076b0:	6134      	str	r4, [r6, #16]
 80076b2:	6174      	str	r4, [r6, #20]
 80076b4:	61b4      	str	r4, [r6, #24]
 80076b6:	2208      	movs	r2, #8
 80076b8:	f106 005c 	add.w	r0, r6, #92	; 0x5c
 80076bc:	9301      	str	r3, [sp, #4]
 80076be:	f000 fd93 	bl	80081e8 <memset>
 80076c2:	68fd      	ldr	r5, [r7, #12]
 80076c4:	61f6      	str	r6, [r6, #28]
 80076c6:	2012      	movs	r0, #18
 80076c8:	2202      	movs	r2, #2
 80076ca:	f8c6 b020 	str.w	fp, [r6, #32]
 80076ce:	f8c6 a024 	str.w	sl, [r6, #36]	; 0x24
 80076d2:	f8c6 9028 	str.w	r9, [r6, #40]	; 0x28
 80076d6:	f8c6 802c 	str.w	r8, [r6, #44]	; 0x2c
 80076da:	4621      	mov	r1, r4
 80076dc:	81a8      	strh	r0, [r5, #12]
 80076de:	81ea      	strh	r2, [r5, #14]
 80076e0:	602c      	str	r4, [r5, #0]
 80076e2:	606c      	str	r4, [r5, #4]
 80076e4:	60ac      	str	r4, [r5, #8]
 80076e6:	666c      	str	r4, [r5, #100]	; 0x64
 80076e8:	612c      	str	r4, [r5, #16]
 80076ea:	616c      	str	r4, [r5, #20]
 80076ec:	61ac      	str	r4, [r5, #24]
 80076ee:	f105 005c 	add.w	r0, r5, #92	; 0x5c
 80076f2:	2208      	movs	r2, #8
 80076f4:	f000 fd78 	bl	80081e8 <memset>
 80076f8:	9b01      	ldr	r3, [sp, #4]
 80076fa:	61ed      	str	r5, [r5, #28]
 80076fc:	f8c5 b020 	str.w	fp, [r5, #32]
 8007700:	f8c5 a024 	str.w	sl, [r5, #36]	; 0x24
 8007704:	f8c5 9028 	str.w	r9, [r5, #40]	; 0x28
 8007708:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
 800770c:	63bb      	str	r3, [r7, #56]	; 0x38
 800770e:	b003      	add	sp, #12
 8007710:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007714:	080075e5 	.word	0x080075e5
 8007718:	08008bc5 	.word	0x08008bc5
 800771c:	08008bed 	.word	0x08008bed
 8007720:	08008c25 	.word	0x08008c25
 8007724:	08008c45 	.word	0x08008c45

08007728 <__sfp>:
 8007728:	4b21      	ldr	r3, [pc, #132]	; (80077b0 <__sfp+0x88>)
 800772a:	b570      	push	{r4, r5, r6, lr}
 800772c:	681d      	ldr	r5, [r3, #0]
 800772e:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8007730:	4606      	mov	r6, r0
 8007732:	2b00      	cmp	r3, #0
 8007734:	d02c      	beq.n	8007790 <__sfp+0x68>
 8007736:	f505 7538 	add.w	r5, r5, #736	; 0x2e0
 800773a:	686b      	ldr	r3, [r5, #4]
 800773c:	68ac      	ldr	r4, [r5, #8]
 800773e:	3b01      	subs	r3, #1
 8007740:	d505      	bpl.n	800774e <__sfp+0x26>
 8007742:	e021      	b.n	8007788 <__sfp+0x60>
 8007744:	3b01      	subs	r3, #1
 8007746:	1c5a      	adds	r2, r3, #1
 8007748:	f104 0468 	add.w	r4, r4, #104	; 0x68
 800774c:	d01c      	beq.n	8007788 <__sfp+0x60>
 800774e:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007752:	2a00      	cmp	r2, #0
 8007754:	d1f6      	bne.n	8007744 <__sfp+0x1c>
 8007756:	2500      	movs	r5, #0
 8007758:	2301      	movs	r3, #1
 800775a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800775e:	81e2      	strh	r2, [r4, #14]
 8007760:	81a3      	strh	r3, [r4, #12]
 8007762:	6665      	str	r5, [r4, #100]	; 0x64
 8007764:	6025      	str	r5, [r4, #0]
 8007766:	60a5      	str	r5, [r4, #8]
 8007768:	6065      	str	r5, [r4, #4]
 800776a:	6125      	str	r5, [r4, #16]
 800776c:	6165      	str	r5, [r4, #20]
 800776e:	61a5      	str	r5, [r4, #24]
 8007770:	4629      	mov	r1, r5
 8007772:	f104 005c 	add.w	r0, r4, #92	; 0x5c
 8007776:	2208      	movs	r2, #8
 8007778:	f000 fd36 	bl	80081e8 <memset>
 800777c:	6325      	str	r5, [r4, #48]	; 0x30
 800777e:	6365      	str	r5, [r4, #52]	; 0x34
 8007780:	6465      	str	r5, [r4, #68]	; 0x44
 8007782:	64a5      	str	r5, [r4, #72]	; 0x48
 8007784:	4620      	mov	r0, r4
 8007786:	bd70      	pop	{r4, r5, r6, pc}
 8007788:	682b      	ldr	r3, [r5, #0]
 800778a:	b12b      	cbz	r3, 8007798 <__sfp+0x70>
 800778c:	461d      	mov	r5, r3
 800778e:	e7d4      	b.n	800773a <__sfp+0x12>
 8007790:	4628      	mov	r0, r5
 8007792:	f7ff ff4f 	bl	8007634 <__sinit>
 8007796:	e7ce      	b.n	8007736 <__sfp+0xe>
 8007798:	4630      	mov	r0, r6
 800779a:	2104      	movs	r1, #4
 800779c:	f7ff ff28 	bl	80075f0 <__sfmoreglue>
 80077a0:	6028      	str	r0, [r5, #0]
 80077a2:	b108      	cbz	r0, 80077a8 <__sfp+0x80>
 80077a4:	4605      	mov	r5, r0
 80077a6:	e7c8      	b.n	800773a <__sfp+0x12>
 80077a8:	230c      	movs	r3, #12
 80077aa:	6033      	str	r3, [r6, #0]
 80077ac:	bd70      	pop	{r4, r5, r6, pc}
 80077ae:	bf00      	nop
 80077b0:	0800b638 	.word	0x0800b638

080077b4 <__sfp_lock_acquire>:
 80077b4:	4770      	bx	lr
 80077b6:	bf00      	nop

080077b8 <__sfp_lock_release>:
 80077b8:	4770      	bx	lr
 80077ba:	bf00      	nop

080077bc <__sinit_lock_acquire>:
 80077bc:	4770      	bx	lr
 80077be:	bf00      	nop

080077c0 <__sinit_lock_release>:
 80077c0:	4770      	bx	lr
 80077c2:	bf00      	nop

080077c4 <__fp_lock_all>:
 80077c4:	4b02      	ldr	r3, [pc, #8]	; (80077d0 <__fp_lock_all+0xc>)
 80077c6:	4903      	ldr	r1, [pc, #12]	; (80077d4 <__fp_lock_all+0x10>)
 80077c8:	6818      	ldr	r0, [r3, #0]
 80077ca:	f000 b92b 	b.w	8007a24 <_fwalk>
 80077ce:	bf00      	nop
 80077d0:	20000650 	.word	0x20000650
 80077d4:	080075dd 	.word	0x080075dd

080077d8 <__fp_unlock_all>:
 80077d8:	4b02      	ldr	r3, [pc, #8]	; (80077e4 <__fp_unlock_all+0xc>)
 80077da:	4903      	ldr	r1, [pc, #12]	; (80077e8 <__fp_unlock_all+0x10>)
 80077dc:	6818      	ldr	r0, [r3, #0]
 80077de:	f000 b921 	b.w	8007a24 <_fwalk>
 80077e2:	bf00      	nop
 80077e4:	20000650 	.word	0x20000650
 80077e8:	080075e1 	.word	0x080075e1

080077ec <_malloc_trim_r>:
 80077ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80077ee:	4d23      	ldr	r5, [pc, #140]	; (800787c <_malloc_trim_r+0x90>)
 80077f0:	460f      	mov	r7, r1
 80077f2:	4604      	mov	r4, r0
 80077f4:	f000 fd42 	bl	800827c <__malloc_lock>
 80077f8:	68ab      	ldr	r3, [r5, #8]
 80077fa:	685e      	ldr	r6, [r3, #4]
 80077fc:	f026 0603 	bic.w	r6, r6, #3
 8007800:	1bf1      	subs	r1, r6, r7
 8007802:	f601 71ef 	addw	r1, r1, #4079	; 0xfef
 8007806:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 800780a:	f021 010f 	bic.w	r1, r1, #15
 800780e:	f5a1 5780 	sub.w	r7, r1, #4096	; 0x1000
 8007812:	f5b7 5f80 	cmp.w	r7, #4096	; 0x1000
 8007816:	db07      	blt.n	8007828 <_malloc_trim_r+0x3c>
 8007818:	4620      	mov	r0, r4
 800781a:	2100      	movs	r1, #0
 800781c:	f001 f998 	bl	8008b50 <_sbrk_r>
 8007820:	68ab      	ldr	r3, [r5, #8]
 8007822:	4433      	add	r3, r6
 8007824:	4298      	cmp	r0, r3
 8007826:	d004      	beq.n	8007832 <_malloc_trim_r+0x46>
 8007828:	4620      	mov	r0, r4
 800782a:	f000 fd29 	bl	8008280 <__malloc_unlock>
 800782e:	2000      	movs	r0, #0
 8007830:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007832:	4620      	mov	r0, r4
 8007834:	4279      	negs	r1, r7
 8007836:	f001 f98b 	bl	8008b50 <_sbrk_r>
 800783a:	3001      	adds	r0, #1
 800783c:	d00d      	beq.n	800785a <_malloc_trim_r+0x6e>
 800783e:	4b10      	ldr	r3, [pc, #64]	; (8007880 <_malloc_trim_r+0x94>)
 8007840:	68aa      	ldr	r2, [r5, #8]
 8007842:	6819      	ldr	r1, [r3, #0]
 8007844:	1bf6      	subs	r6, r6, r7
 8007846:	f046 0601 	orr.w	r6, r6, #1
 800784a:	4620      	mov	r0, r4
 800784c:	1bc9      	subs	r1, r1, r7
 800784e:	6056      	str	r6, [r2, #4]
 8007850:	6019      	str	r1, [r3, #0]
 8007852:	f000 fd15 	bl	8008280 <__malloc_unlock>
 8007856:	2001      	movs	r0, #1
 8007858:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800785a:	4620      	mov	r0, r4
 800785c:	2100      	movs	r1, #0
 800785e:	f001 f977 	bl	8008b50 <_sbrk_r>
 8007862:	68ab      	ldr	r3, [r5, #8]
 8007864:	1ac2      	subs	r2, r0, r3
 8007866:	2a0f      	cmp	r2, #15
 8007868:	ddde      	ble.n	8007828 <_malloc_trim_r+0x3c>
 800786a:	4d06      	ldr	r5, [pc, #24]	; (8007884 <_malloc_trim_r+0x98>)
 800786c:	4904      	ldr	r1, [pc, #16]	; (8007880 <_malloc_trim_r+0x94>)
 800786e:	682d      	ldr	r5, [r5, #0]
 8007870:	f042 0201 	orr.w	r2, r2, #1
 8007874:	1b40      	subs	r0, r0, r5
 8007876:	605a      	str	r2, [r3, #4]
 8007878:	6008      	str	r0, [r1, #0]
 800787a:	e7d5      	b.n	8007828 <_malloc_trim_r+0x3c>
 800787c:	200006d0 	.word	0x200006d0
 8007880:	20003630 	.word	0x20003630
 8007884:	20000adc 	.word	0x20000adc

08007888 <_free_r>:
 8007888:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800788c:	460d      	mov	r5, r1
 800788e:	4606      	mov	r6, r0
 8007890:	2900      	cmp	r1, #0
 8007892:	d055      	beq.n	8007940 <_free_r+0xb8>
 8007894:	f000 fcf2 	bl	800827c <__malloc_lock>
 8007898:	f855 1c04 	ldr.w	r1, [r5, #-4]
 800789c:	f8df c174 	ldr.w	ip, [pc, #372]	; 8007a14 <_free_r+0x18c>
 80078a0:	f021 0301 	bic.w	r3, r1, #1
 80078a4:	f1a5 0408 	sub.w	r4, r5, #8
 80078a8:	18e2      	adds	r2, r4, r3
 80078aa:	f8dc 0008 	ldr.w	r0, [ip, #8]
 80078ae:	6857      	ldr	r7, [r2, #4]
 80078b0:	4290      	cmp	r0, r2
 80078b2:	f027 0703 	bic.w	r7, r7, #3
 80078b6:	d069      	beq.n	800798c <_free_r+0x104>
 80078b8:	f011 0101 	ands.w	r1, r1, #1
 80078bc:	6057      	str	r7, [r2, #4]
 80078be:	d032      	beq.n	8007926 <_free_r+0x9e>
 80078c0:	2100      	movs	r1, #0
 80078c2:	19d0      	adds	r0, r2, r7
 80078c4:	6840      	ldr	r0, [r0, #4]
 80078c6:	07c0      	lsls	r0, r0, #31
 80078c8:	d406      	bmi.n	80078d8 <_free_r+0x50>
 80078ca:	443b      	add	r3, r7
 80078cc:	6890      	ldr	r0, [r2, #8]
 80078ce:	2900      	cmp	r1, #0
 80078d0:	d04e      	beq.n	8007970 <_free_r+0xe8>
 80078d2:	68d2      	ldr	r2, [r2, #12]
 80078d4:	60c2      	str	r2, [r0, #12]
 80078d6:	6090      	str	r0, [r2, #8]
 80078d8:	f043 0201 	orr.w	r2, r3, #1
 80078dc:	6062      	str	r2, [r4, #4]
 80078de:	50e3      	str	r3, [r4, r3]
 80078e0:	b9e1      	cbnz	r1, 800791c <_free_r+0x94>
 80078e2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80078e6:	d32d      	bcc.n	8007944 <_free_r+0xbc>
 80078e8:	0a5a      	lsrs	r2, r3, #9
 80078ea:	2a04      	cmp	r2, #4
 80078ec:	d86a      	bhi.n	80079c4 <_free_r+0x13c>
 80078ee:	0998      	lsrs	r0, r3, #6
 80078f0:	3038      	adds	r0, #56	; 0x38
 80078f2:	0041      	lsls	r1, r0, #1
 80078f4:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
 80078f8:	4946      	ldr	r1, [pc, #280]	; (8007a14 <_free_r+0x18c>)
 80078fa:	f8dc 2008 	ldr.w	r2, [ip, #8]
 80078fe:	4562      	cmp	r2, ip
 8007900:	d066      	beq.n	80079d0 <_free_r+0x148>
 8007902:	6851      	ldr	r1, [r2, #4]
 8007904:	f021 0103 	bic.w	r1, r1, #3
 8007908:	428b      	cmp	r3, r1
 800790a:	d202      	bcs.n	8007912 <_free_r+0x8a>
 800790c:	6892      	ldr	r2, [r2, #8]
 800790e:	4594      	cmp	ip, r2
 8007910:	d1f7      	bne.n	8007902 <_free_r+0x7a>
 8007912:	68d3      	ldr	r3, [r2, #12]
 8007914:	60e3      	str	r3, [r4, #12]
 8007916:	60a2      	str	r2, [r4, #8]
 8007918:	609c      	str	r4, [r3, #8]
 800791a:	60d4      	str	r4, [r2, #12]
 800791c:	4630      	mov	r0, r6
 800791e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8007922:	f000 bcad 	b.w	8008280 <__malloc_unlock>
 8007926:	f855 5c08 	ldr.w	r5, [r5, #-8]
 800792a:	1b64      	subs	r4, r4, r5
 800792c:	f10c 0808 	add.w	r8, ip, #8
 8007930:	68a0      	ldr	r0, [r4, #8]
 8007932:	4540      	cmp	r0, r8
 8007934:	442b      	add	r3, r5
 8007936:	d043      	beq.n	80079c0 <_free_r+0x138>
 8007938:	68e5      	ldr	r5, [r4, #12]
 800793a:	60c5      	str	r5, [r0, #12]
 800793c:	60a8      	str	r0, [r5, #8]
 800793e:	e7c0      	b.n	80078c2 <_free_r+0x3a>
 8007940:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007944:	08db      	lsrs	r3, r3, #3
 8007946:	eb0c 02c3 	add.w	r2, ip, r3, lsl #3
 800794a:	2501      	movs	r5, #1
 800794c:	f8dc 0004 	ldr.w	r0, [ip, #4]
 8007950:	6891      	ldr	r1, [r2, #8]
 8007952:	60a1      	str	r1, [r4, #8]
 8007954:	109b      	asrs	r3, r3, #2
 8007956:	fa05 f303 	lsl.w	r3, r5, r3
 800795a:	4318      	orrs	r0, r3
 800795c:	60e2      	str	r2, [r4, #12]
 800795e:	f8cc 0004 	str.w	r0, [ip, #4]
 8007962:	6094      	str	r4, [r2, #8]
 8007964:	4630      	mov	r0, r6
 8007966:	60cc      	str	r4, [r1, #12]
 8007968:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800796c:	f000 bc88 	b.w	8008280 <__malloc_unlock>
 8007970:	4d29      	ldr	r5, [pc, #164]	; (8007a18 <_free_r+0x190>)
 8007972:	42a8      	cmp	r0, r5
 8007974:	d1ad      	bne.n	80078d2 <_free_r+0x4a>
 8007976:	f043 0201 	orr.w	r2, r3, #1
 800797a:	f8cc 4014 	str.w	r4, [ip, #20]
 800797e:	f8cc 4010 	str.w	r4, [ip, #16]
 8007982:	60e0      	str	r0, [r4, #12]
 8007984:	60a0      	str	r0, [r4, #8]
 8007986:	6062      	str	r2, [r4, #4]
 8007988:	50e3      	str	r3, [r4, r3]
 800798a:	e7c7      	b.n	800791c <_free_r+0x94>
 800798c:	441f      	add	r7, r3
 800798e:	07cb      	lsls	r3, r1, #31
 8007990:	d407      	bmi.n	80079a2 <_free_r+0x11a>
 8007992:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007996:	1ae4      	subs	r4, r4, r3
 8007998:	441f      	add	r7, r3
 800799a:	68a2      	ldr	r2, [r4, #8]
 800799c:	68e3      	ldr	r3, [r4, #12]
 800799e:	60d3      	str	r3, [r2, #12]
 80079a0:	609a      	str	r2, [r3, #8]
 80079a2:	4b1e      	ldr	r3, [pc, #120]	; (8007a1c <_free_r+0x194>)
 80079a4:	681b      	ldr	r3, [r3, #0]
 80079a6:	f047 0201 	orr.w	r2, r7, #1
 80079aa:	429f      	cmp	r7, r3
 80079ac:	6062      	str	r2, [r4, #4]
 80079ae:	f8cc 4008 	str.w	r4, [ip, #8]
 80079b2:	d3b3      	bcc.n	800791c <_free_r+0x94>
 80079b4:	4b1a      	ldr	r3, [pc, #104]	; (8007a20 <_free_r+0x198>)
 80079b6:	4630      	mov	r0, r6
 80079b8:	6819      	ldr	r1, [r3, #0]
 80079ba:	f7ff ff17 	bl	80077ec <_malloc_trim_r>
 80079be:	e7ad      	b.n	800791c <_free_r+0x94>
 80079c0:	2101      	movs	r1, #1
 80079c2:	e77e      	b.n	80078c2 <_free_r+0x3a>
 80079c4:	2a14      	cmp	r2, #20
 80079c6:	d80c      	bhi.n	80079e2 <_free_r+0x15a>
 80079c8:	f102 005b 	add.w	r0, r2, #91	; 0x5b
 80079cc:	0041      	lsls	r1, r0, #1
 80079ce:	e791      	b.n	80078f4 <_free_r+0x6c>
 80079d0:	684b      	ldr	r3, [r1, #4]
 80079d2:	1080      	asrs	r0, r0, #2
 80079d4:	2501      	movs	r5, #1
 80079d6:	fa05 f000 	lsl.w	r0, r5, r0
 80079da:	4303      	orrs	r3, r0
 80079dc:	604b      	str	r3, [r1, #4]
 80079de:	4613      	mov	r3, r2
 80079e0:	e798      	b.n	8007914 <_free_r+0x8c>
 80079e2:	2a54      	cmp	r2, #84	; 0x54
 80079e4:	d803      	bhi.n	80079ee <_free_r+0x166>
 80079e6:	0b18      	lsrs	r0, r3, #12
 80079e8:	306e      	adds	r0, #110	; 0x6e
 80079ea:	0041      	lsls	r1, r0, #1
 80079ec:	e782      	b.n	80078f4 <_free_r+0x6c>
 80079ee:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80079f2:	d803      	bhi.n	80079fc <_free_r+0x174>
 80079f4:	0bd8      	lsrs	r0, r3, #15
 80079f6:	3077      	adds	r0, #119	; 0x77
 80079f8:	0041      	lsls	r1, r0, #1
 80079fa:	e77b      	b.n	80078f4 <_free_r+0x6c>
 80079fc:	f240 5154 	movw	r1, #1364	; 0x554
 8007a00:	428a      	cmp	r2, r1
 8007a02:	d803      	bhi.n	8007a0c <_free_r+0x184>
 8007a04:	0c98      	lsrs	r0, r3, #18
 8007a06:	307c      	adds	r0, #124	; 0x7c
 8007a08:	0041      	lsls	r1, r0, #1
 8007a0a:	e773      	b.n	80078f4 <_free_r+0x6c>
 8007a0c:	21fc      	movs	r1, #252	; 0xfc
 8007a0e:	207e      	movs	r0, #126	; 0x7e
 8007a10:	e770      	b.n	80078f4 <_free_r+0x6c>
 8007a12:	bf00      	nop
 8007a14:	200006d0 	.word	0x200006d0
 8007a18:	200006d8 	.word	0x200006d8
 8007a1c:	20000ad8 	.word	0x20000ad8
 8007a20:	2000362c 	.word	0x2000362c

08007a24 <_fwalk>:
 8007a24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007a28:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8007a2c:	4688      	mov	r8, r1
 8007a2e:	d01a      	beq.n	8007a66 <_fwalk+0x42>
 8007a30:	2600      	movs	r6, #0
 8007a32:	687d      	ldr	r5, [r7, #4]
 8007a34:	68bc      	ldr	r4, [r7, #8]
 8007a36:	3d01      	subs	r5, #1
 8007a38:	d40f      	bmi.n	8007a5a <_fwalk+0x36>
 8007a3a:	89a3      	ldrh	r3, [r4, #12]
 8007a3c:	2b01      	cmp	r3, #1
 8007a3e:	f105 35ff 	add.w	r5, r5, #4294967295
 8007a42:	d906      	bls.n	8007a52 <_fwalk+0x2e>
 8007a44:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8007a48:	3301      	adds	r3, #1
 8007a4a:	4620      	mov	r0, r4
 8007a4c:	d001      	beq.n	8007a52 <_fwalk+0x2e>
 8007a4e:	47c0      	blx	r8
 8007a50:	4306      	orrs	r6, r0
 8007a52:	1c6b      	adds	r3, r5, #1
 8007a54:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8007a58:	d1ef      	bne.n	8007a3a <_fwalk+0x16>
 8007a5a:	683f      	ldr	r7, [r7, #0]
 8007a5c:	2f00      	cmp	r7, #0
 8007a5e:	d1e8      	bne.n	8007a32 <_fwalk+0xe>
 8007a60:	4630      	mov	r0, r6
 8007a62:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007a66:	463e      	mov	r6, r7
 8007a68:	4630      	mov	r0, r6
 8007a6a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007a6e:	bf00      	nop

08007a70 <_fwalk_reent>:
 8007a70:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007a74:	f510 7638 	adds.w	r6, r0, #736	; 0x2e0
 8007a78:	4680      	mov	r8, r0
 8007a7a:	4689      	mov	r9, r1
 8007a7c:	d01b      	beq.n	8007ab6 <_fwalk_reent+0x46>
 8007a7e:	2700      	movs	r7, #0
 8007a80:	6875      	ldr	r5, [r6, #4]
 8007a82:	68b4      	ldr	r4, [r6, #8]
 8007a84:	3d01      	subs	r5, #1
 8007a86:	d410      	bmi.n	8007aaa <_fwalk_reent+0x3a>
 8007a88:	89a3      	ldrh	r3, [r4, #12]
 8007a8a:	2b01      	cmp	r3, #1
 8007a8c:	f105 35ff 	add.w	r5, r5, #4294967295
 8007a90:	d907      	bls.n	8007aa2 <_fwalk_reent+0x32>
 8007a92:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8007a96:	3301      	adds	r3, #1
 8007a98:	4621      	mov	r1, r4
 8007a9a:	4640      	mov	r0, r8
 8007a9c:	d001      	beq.n	8007aa2 <_fwalk_reent+0x32>
 8007a9e:	47c8      	blx	r9
 8007aa0:	4307      	orrs	r7, r0
 8007aa2:	1c6b      	adds	r3, r5, #1
 8007aa4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8007aa8:	d1ee      	bne.n	8007a88 <_fwalk_reent+0x18>
 8007aaa:	6836      	ldr	r6, [r6, #0]
 8007aac:	2e00      	cmp	r6, #0
 8007aae:	d1e7      	bne.n	8007a80 <_fwalk_reent+0x10>
 8007ab0:	4638      	mov	r0, r7
 8007ab2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007ab6:	4637      	mov	r7, r6
 8007ab8:	4638      	mov	r0, r7
 8007aba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007abe:	bf00      	nop

08007ac0 <_setlocale_r>:
 8007ac0:	b510      	push	{r4, lr}
 8007ac2:	4614      	mov	r4, r2
 8007ac4:	b122      	cbz	r2, 8007ad0 <_setlocale_r+0x10>
 8007ac6:	4610      	mov	r0, r2
 8007ac8:	490a      	ldr	r1, [pc, #40]	; (8007af4 <_setlocale_r+0x34>)
 8007aca:	f7fc f87d 	bl	8003bc8 <strcmp>
 8007ace:	b908      	cbnz	r0, 8007ad4 <_setlocale_r+0x14>
 8007ad0:	4809      	ldr	r0, [pc, #36]	; (8007af8 <_setlocale_r+0x38>)
 8007ad2:	bd10      	pop	{r4, pc}
 8007ad4:	4620      	mov	r0, r4
 8007ad6:	4908      	ldr	r1, [pc, #32]	; (8007af8 <_setlocale_r+0x38>)
 8007ad8:	f7fc f876 	bl	8003bc8 <strcmp>
 8007adc:	2800      	cmp	r0, #0
 8007ade:	d0f7      	beq.n	8007ad0 <_setlocale_r+0x10>
 8007ae0:	4620      	mov	r0, r4
 8007ae2:	4906      	ldr	r1, [pc, #24]	; (8007afc <_setlocale_r+0x3c>)
 8007ae4:	f7fc f870 	bl	8003bc8 <strcmp>
 8007ae8:	4b03      	ldr	r3, [pc, #12]	; (8007af8 <_setlocale_r+0x38>)
 8007aea:	2800      	cmp	r0, #0
 8007aec:	bf0c      	ite	eq
 8007aee:	4618      	moveq	r0, r3
 8007af0:	2000      	movne	r0, #0
 8007af2:	bd10      	pop	{r4, pc}
 8007af4:	0800b63c 	.word	0x0800b63c
 8007af8:	0800b634 	.word	0x0800b634
 8007afc:	0800b5f0 	.word	0x0800b5f0

08007b00 <__locale_charset>:
 8007b00:	4800      	ldr	r0, [pc, #0]	; (8007b04 <__locale_charset+0x4>)
 8007b02:	4770      	bx	lr
 8007b04:	200006ac 	.word	0x200006ac

08007b08 <__locale_mb_cur_max>:
 8007b08:	4b01      	ldr	r3, [pc, #4]	; (8007b10 <__locale_mb_cur_max+0x8>)
 8007b0a:	6818      	ldr	r0, [r3, #0]
 8007b0c:	4770      	bx	lr
 8007b0e:	bf00      	nop
 8007b10:	200006cc 	.word	0x200006cc

08007b14 <__locale_msgcharset>:
 8007b14:	4800      	ldr	r0, [pc, #0]	; (8007b18 <__locale_msgcharset+0x4>)
 8007b16:	4770      	bx	lr
 8007b18:	20000654 	.word	0x20000654

08007b1c <__locale_cjk_lang>:
 8007b1c:	2000      	movs	r0, #0
 8007b1e:	4770      	bx	lr

08007b20 <_localeconv_r>:
 8007b20:	4800      	ldr	r0, [pc, #0]	; (8007b24 <_localeconv_r+0x4>)
 8007b22:	4770      	bx	lr
 8007b24:	20000674 	.word	0x20000674

08007b28 <setlocale>:
 8007b28:	4b02      	ldr	r3, [pc, #8]	; (8007b34 <setlocale+0xc>)
 8007b2a:	460a      	mov	r2, r1
 8007b2c:	4601      	mov	r1, r0
 8007b2e:	6818      	ldr	r0, [r3, #0]
 8007b30:	f7ff bfc6 	b.w	8007ac0 <_setlocale_r>
 8007b34:	20000650 	.word	0x20000650

08007b38 <localeconv>:
 8007b38:	4800      	ldr	r0, [pc, #0]	; (8007b3c <localeconv+0x4>)
 8007b3a:	4770      	bx	lr
 8007b3c:	20000674 	.word	0x20000674

08007b40 <__smakebuf_r>:
 8007b40:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007b42:	898b      	ldrh	r3, [r1, #12]
 8007b44:	b29a      	uxth	r2, r3
 8007b46:	0796      	lsls	r6, r2, #30
 8007b48:	b091      	sub	sp, #68	; 0x44
 8007b4a:	460c      	mov	r4, r1
 8007b4c:	4605      	mov	r5, r0
 8007b4e:	d437      	bmi.n	8007bc0 <__smakebuf_r+0x80>
 8007b50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007b54:	2900      	cmp	r1, #0
 8007b56:	db17      	blt.n	8007b88 <__smakebuf_r+0x48>
 8007b58:	aa01      	add	r2, sp, #4
 8007b5a:	f002 f86f 	bl	8009c3c <_fstat_r>
 8007b5e:	2800      	cmp	r0, #0
 8007b60:	db10      	blt.n	8007b84 <__smakebuf_r+0x44>
 8007b62:	9b02      	ldr	r3, [sp, #8]
 8007b64:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8007b68:	f5b3 5100 	subs.w	r1, r3, #8192	; 0x2000
 8007b6c:	424f      	negs	r7, r1
 8007b6e:	414f      	adcs	r7, r1
 8007b70:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8007b74:	d02c      	beq.n	8007bd0 <__smakebuf_r+0x90>
 8007b76:	89a3      	ldrh	r3, [r4, #12]
 8007b78:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007b7c:	81a3      	strh	r3, [r4, #12]
 8007b7e:	f44f 6680 	mov.w	r6, #1024	; 0x400
 8007b82:	e00b      	b.n	8007b9c <__smakebuf_r+0x5c>
 8007b84:	89a3      	ldrh	r3, [r4, #12]
 8007b86:	b29a      	uxth	r2, r3
 8007b88:	f012 0f80 	tst.w	r2, #128	; 0x80
 8007b8c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007b90:	81a3      	strh	r3, [r4, #12]
 8007b92:	bf14      	ite	ne
 8007b94:	2640      	movne	r6, #64	; 0x40
 8007b96:	f44f 6680 	moveq.w	r6, #1024	; 0x400
 8007b9a:	2700      	movs	r7, #0
 8007b9c:	4628      	mov	r0, r5
 8007b9e:	4631      	mov	r1, r6
 8007ba0:	f000 f83e 	bl	8007c20 <_malloc_r>
 8007ba4:	89a3      	ldrh	r3, [r4, #12]
 8007ba6:	2800      	cmp	r0, #0
 8007ba8:	d029      	beq.n	8007bfe <__smakebuf_r+0xbe>
 8007baa:	4a1b      	ldr	r2, [pc, #108]	; (8007c18 <__smakebuf_r+0xd8>)
 8007bac:	63ea      	str	r2, [r5, #60]	; 0x3c
 8007bae:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8007bb2:	81a3      	strh	r3, [r4, #12]
 8007bb4:	6020      	str	r0, [r4, #0]
 8007bb6:	6120      	str	r0, [r4, #16]
 8007bb8:	6166      	str	r6, [r4, #20]
 8007bba:	b9a7      	cbnz	r7, 8007be6 <__smakebuf_r+0xa6>
 8007bbc:	b011      	add	sp, #68	; 0x44
 8007bbe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007bc0:	f101 0343 	add.w	r3, r1, #67	; 0x43
 8007bc4:	2201      	movs	r2, #1
 8007bc6:	600b      	str	r3, [r1, #0]
 8007bc8:	610b      	str	r3, [r1, #16]
 8007bca:	614a      	str	r2, [r1, #20]
 8007bcc:	b011      	add	sp, #68	; 0x44
 8007bce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007bd0:	4a12      	ldr	r2, [pc, #72]	; (8007c1c <__smakebuf_r+0xdc>)
 8007bd2:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8007bd4:	4293      	cmp	r3, r2
 8007bd6:	d1ce      	bne.n	8007b76 <__smakebuf_r+0x36>
 8007bd8:	89a3      	ldrh	r3, [r4, #12]
 8007bda:	f44f 6680 	mov.w	r6, #1024	; 0x400
 8007bde:	4333      	orrs	r3, r6
 8007be0:	81a3      	strh	r3, [r4, #12]
 8007be2:	64e6      	str	r6, [r4, #76]	; 0x4c
 8007be4:	e7da      	b.n	8007b9c <__smakebuf_r+0x5c>
 8007be6:	4628      	mov	r0, r5
 8007be8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8007bec:	f002 f9c6 	bl	8009f7c <_isatty_r>
 8007bf0:	2800      	cmp	r0, #0
 8007bf2:	d0e3      	beq.n	8007bbc <__smakebuf_r+0x7c>
 8007bf4:	89a3      	ldrh	r3, [r4, #12]
 8007bf6:	f043 0301 	orr.w	r3, r3, #1
 8007bfa:	81a3      	strh	r3, [r4, #12]
 8007bfc:	e7de      	b.n	8007bbc <__smakebuf_r+0x7c>
 8007bfe:	059a      	lsls	r2, r3, #22
 8007c00:	d4dc      	bmi.n	8007bbc <__smakebuf_r+0x7c>
 8007c02:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8007c06:	f043 0302 	orr.w	r3, r3, #2
 8007c0a:	2101      	movs	r1, #1
 8007c0c:	81a3      	strh	r3, [r4, #12]
 8007c0e:	6022      	str	r2, [r4, #0]
 8007c10:	6122      	str	r2, [r4, #16]
 8007c12:	6161      	str	r1, [r4, #20]
 8007c14:	e7d2      	b.n	8007bbc <__smakebuf_r+0x7c>
 8007c16:	bf00      	nop
 8007c18:	080075e5 	.word	0x080075e5
 8007c1c:	08008c25 	.word	0x08008c25

08007c20 <_malloc_r>:
 8007c20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007c24:	f101 050b 	add.w	r5, r1, #11
 8007c28:	2d16      	cmp	r5, #22
 8007c2a:	b083      	sub	sp, #12
 8007c2c:	4606      	mov	r6, r0
 8007c2e:	d927      	bls.n	8007c80 <_malloc_r+0x60>
 8007c30:	f035 0507 	bics.w	r5, r5, #7
 8007c34:	d427      	bmi.n	8007c86 <_malloc_r+0x66>
 8007c36:	42a9      	cmp	r1, r5
 8007c38:	d825      	bhi.n	8007c86 <_malloc_r+0x66>
 8007c3a:	4630      	mov	r0, r6
 8007c3c:	f000 fb1e 	bl	800827c <__malloc_lock>
 8007c40:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8007c44:	d226      	bcs.n	8007c94 <_malloc_r+0x74>
 8007c46:	4fc1      	ldr	r7, [pc, #772]	; (8007f4c <_malloc_r+0x32c>)
 8007c48:	ea4f 0cd5 	mov.w	ip, r5, lsr #3
 8007c4c:	eb07 03cc 	add.w	r3, r7, ip, lsl #3
 8007c50:	68dc      	ldr	r4, [r3, #12]
 8007c52:	429c      	cmp	r4, r3
 8007c54:	f000 81d2 	beq.w	8007ffc <_malloc_r+0x3dc>
 8007c58:	6863      	ldr	r3, [r4, #4]
 8007c5a:	68e2      	ldr	r2, [r4, #12]
 8007c5c:	68a1      	ldr	r1, [r4, #8]
 8007c5e:	f023 0303 	bic.w	r3, r3, #3
 8007c62:	4423      	add	r3, r4
 8007c64:	4630      	mov	r0, r6
 8007c66:	685d      	ldr	r5, [r3, #4]
 8007c68:	60ca      	str	r2, [r1, #12]
 8007c6a:	f045 0501 	orr.w	r5, r5, #1
 8007c6e:	6091      	str	r1, [r2, #8]
 8007c70:	605d      	str	r5, [r3, #4]
 8007c72:	f000 fb05 	bl	8008280 <__malloc_unlock>
 8007c76:	3408      	adds	r4, #8
 8007c78:	4620      	mov	r0, r4
 8007c7a:	b003      	add	sp, #12
 8007c7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007c80:	2510      	movs	r5, #16
 8007c82:	42a9      	cmp	r1, r5
 8007c84:	d9d9      	bls.n	8007c3a <_malloc_r+0x1a>
 8007c86:	2400      	movs	r4, #0
 8007c88:	230c      	movs	r3, #12
 8007c8a:	4620      	mov	r0, r4
 8007c8c:	6033      	str	r3, [r6, #0]
 8007c8e:	b003      	add	sp, #12
 8007c90:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007c94:	ea5f 2c55 	movs.w	ip, r5, lsr #9
 8007c98:	f000 808a 	beq.w	8007db0 <_malloc_r+0x190>
 8007c9c:	f1bc 0f04 	cmp.w	ip, #4
 8007ca0:	f200 8160 	bhi.w	8007f64 <_malloc_r+0x344>
 8007ca4:	ea4f 1c95 	mov.w	ip, r5, lsr #6
 8007ca8:	f10c 0c38 	add.w	ip, ip, #56	; 0x38
 8007cac:	ea4f 014c 	mov.w	r1, ip, lsl #1
 8007cb0:	4fa6      	ldr	r7, [pc, #664]	; (8007f4c <_malloc_r+0x32c>)
 8007cb2:	eb07 0181 	add.w	r1, r7, r1, lsl #2
 8007cb6:	68cc      	ldr	r4, [r1, #12]
 8007cb8:	42a1      	cmp	r1, r4
 8007cba:	d105      	bne.n	8007cc8 <_malloc_r+0xa8>
 8007cbc:	e00c      	b.n	8007cd8 <_malloc_r+0xb8>
 8007cbe:	2b00      	cmp	r3, #0
 8007cc0:	da7a      	bge.n	8007db8 <_malloc_r+0x198>
 8007cc2:	68e4      	ldr	r4, [r4, #12]
 8007cc4:	42a1      	cmp	r1, r4
 8007cc6:	d007      	beq.n	8007cd8 <_malloc_r+0xb8>
 8007cc8:	6862      	ldr	r2, [r4, #4]
 8007cca:	f022 0203 	bic.w	r2, r2, #3
 8007cce:	1b53      	subs	r3, r2, r5
 8007cd0:	2b0f      	cmp	r3, #15
 8007cd2:	ddf4      	ble.n	8007cbe <_malloc_r+0x9e>
 8007cd4:	f10c 3cff 	add.w	ip, ip, #4294967295
 8007cd8:	f10c 0c01 	add.w	ip, ip, #1
 8007cdc:	4b9b      	ldr	r3, [pc, #620]	; (8007f4c <_malloc_r+0x32c>)
 8007cde:	693c      	ldr	r4, [r7, #16]
 8007ce0:	f103 0e08 	add.w	lr, r3, #8
 8007ce4:	4574      	cmp	r4, lr
 8007ce6:	f000 817e 	beq.w	8007fe6 <_malloc_r+0x3c6>
 8007cea:	6861      	ldr	r1, [r4, #4]
 8007cec:	f021 0103 	bic.w	r1, r1, #3
 8007cf0:	1b4a      	subs	r2, r1, r5
 8007cf2:	2a0f      	cmp	r2, #15
 8007cf4:	f300 8164 	bgt.w	8007fc0 <_malloc_r+0x3a0>
 8007cf8:	2a00      	cmp	r2, #0
 8007cfa:	f8c3 e014 	str.w	lr, [r3, #20]
 8007cfe:	f8c3 e010 	str.w	lr, [r3, #16]
 8007d02:	da6a      	bge.n	8007dda <_malloc_r+0x1ba>
 8007d04:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8007d08:	f080 813a 	bcs.w	8007f80 <_malloc_r+0x360>
 8007d0c:	08c9      	lsrs	r1, r1, #3
 8007d0e:	eb03 00c1 	add.w	r0, r3, r1, lsl #3
 8007d12:	ea4f 08a1 	mov.w	r8, r1, asr #2
 8007d16:	685a      	ldr	r2, [r3, #4]
 8007d18:	6881      	ldr	r1, [r0, #8]
 8007d1a:	60a1      	str	r1, [r4, #8]
 8007d1c:	f04f 0901 	mov.w	r9, #1
 8007d20:	fa09 f808 	lsl.w	r8, r9, r8
 8007d24:	ea48 0202 	orr.w	r2, r8, r2
 8007d28:	60e0      	str	r0, [r4, #12]
 8007d2a:	605a      	str	r2, [r3, #4]
 8007d2c:	6084      	str	r4, [r0, #8]
 8007d2e:	60cc      	str	r4, [r1, #12]
 8007d30:	ea4f 03ac 	mov.w	r3, ip, asr #2
 8007d34:	2001      	movs	r0, #1
 8007d36:	4098      	lsls	r0, r3
 8007d38:	4290      	cmp	r0, r2
 8007d3a:	d85b      	bhi.n	8007df4 <_malloc_r+0x1d4>
 8007d3c:	4202      	tst	r2, r0
 8007d3e:	d106      	bne.n	8007d4e <_malloc_r+0x12e>
 8007d40:	f02c 0c03 	bic.w	ip, ip, #3
 8007d44:	0040      	lsls	r0, r0, #1
 8007d46:	4202      	tst	r2, r0
 8007d48:	f10c 0c04 	add.w	ip, ip, #4
 8007d4c:	d0fa      	beq.n	8007d44 <_malloc_r+0x124>
 8007d4e:	eb07 08cc 	add.w	r8, r7, ip, lsl #3
 8007d52:	4644      	mov	r4, r8
 8007d54:	46e1      	mov	r9, ip
 8007d56:	68e3      	ldr	r3, [r4, #12]
 8007d58:	429c      	cmp	r4, r3
 8007d5a:	d107      	bne.n	8007d6c <_malloc_r+0x14c>
 8007d5c:	e145      	b.n	8007fea <_malloc_r+0x3ca>
 8007d5e:	2a00      	cmp	r2, #0
 8007d60:	f280 8156 	bge.w	8008010 <_malloc_r+0x3f0>
 8007d64:	68db      	ldr	r3, [r3, #12]
 8007d66:	429c      	cmp	r4, r3
 8007d68:	f000 813f 	beq.w	8007fea <_malloc_r+0x3ca>
 8007d6c:	6859      	ldr	r1, [r3, #4]
 8007d6e:	f021 0103 	bic.w	r1, r1, #3
 8007d72:	1b4a      	subs	r2, r1, r5
 8007d74:	2a0f      	cmp	r2, #15
 8007d76:	ddf2      	ble.n	8007d5e <_malloc_r+0x13e>
 8007d78:	461c      	mov	r4, r3
 8007d7a:	f8d3 c00c 	ldr.w	ip, [r3, #12]
 8007d7e:	f854 8f08 	ldr.w	r8, [r4, #8]!
 8007d82:	1959      	adds	r1, r3, r5
 8007d84:	f045 0901 	orr.w	r9, r5, #1
 8007d88:	f042 0501 	orr.w	r5, r2, #1
 8007d8c:	f8c3 9004 	str.w	r9, [r3, #4]
 8007d90:	4630      	mov	r0, r6
 8007d92:	f8c8 c00c 	str.w	ip, [r8, #12]
 8007d96:	f8cc 8008 	str.w	r8, [ip, #8]
 8007d9a:	6179      	str	r1, [r7, #20]
 8007d9c:	6139      	str	r1, [r7, #16]
 8007d9e:	f8c1 e00c 	str.w	lr, [r1, #12]
 8007da2:	f8c1 e008 	str.w	lr, [r1, #8]
 8007da6:	604d      	str	r5, [r1, #4]
 8007da8:	508a      	str	r2, [r1, r2]
 8007daa:	f000 fa69 	bl	8008280 <__malloc_unlock>
 8007dae:	e763      	b.n	8007c78 <_malloc_r+0x58>
 8007db0:	217e      	movs	r1, #126	; 0x7e
 8007db2:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8007db6:	e77b      	b.n	8007cb0 <_malloc_r+0x90>
 8007db8:	4422      	add	r2, r4
 8007dba:	68e3      	ldr	r3, [r4, #12]
 8007dbc:	6850      	ldr	r0, [r2, #4]
 8007dbe:	68a1      	ldr	r1, [r4, #8]
 8007dc0:	f040 0501 	orr.w	r5, r0, #1
 8007dc4:	60cb      	str	r3, [r1, #12]
 8007dc6:	4630      	mov	r0, r6
 8007dc8:	6099      	str	r1, [r3, #8]
 8007dca:	6055      	str	r5, [r2, #4]
 8007dcc:	f000 fa58 	bl	8008280 <__malloc_unlock>
 8007dd0:	3408      	adds	r4, #8
 8007dd2:	4620      	mov	r0, r4
 8007dd4:	b003      	add	sp, #12
 8007dd6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007dda:	4421      	add	r1, r4
 8007ddc:	4630      	mov	r0, r6
 8007dde:	684b      	ldr	r3, [r1, #4]
 8007de0:	f043 0301 	orr.w	r3, r3, #1
 8007de4:	604b      	str	r3, [r1, #4]
 8007de6:	f000 fa4b 	bl	8008280 <__malloc_unlock>
 8007dea:	3408      	adds	r4, #8
 8007dec:	4620      	mov	r0, r4
 8007dee:	b003      	add	sp, #12
 8007df0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007df4:	68bc      	ldr	r4, [r7, #8]
 8007df6:	6863      	ldr	r3, [r4, #4]
 8007df8:	f023 0903 	bic.w	r9, r3, #3
 8007dfc:	45a9      	cmp	r9, r5
 8007dfe:	d304      	bcc.n	8007e0a <_malloc_r+0x1ea>
 8007e00:	ebc5 0309 	rsb	r3, r5, r9
 8007e04:	2b0f      	cmp	r3, #15
 8007e06:	f300 8091 	bgt.w	8007f2c <_malloc_r+0x30c>
 8007e0a:	4b51      	ldr	r3, [pc, #324]	; (8007f50 <_malloc_r+0x330>)
 8007e0c:	4a51      	ldr	r2, [pc, #324]	; (8007f54 <_malloc_r+0x334>)
 8007e0e:	6819      	ldr	r1, [r3, #0]
 8007e10:	6813      	ldr	r3, [r2, #0]
 8007e12:	3301      	adds	r3, #1
 8007e14:	eb05 0a01 	add.w	sl, r5, r1
 8007e18:	eb04 0b09 	add.w	fp, r4, r9
 8007e1c:	f000 8161 	beq.w	80080e2 <_malloc_r+0x4c2>
 8007e20:	f50a 5a80 	add.w	sl, sl, #4096	; 0x1000
 8007e24:	f10a 0a0f 	add.w	sl, sl, #15
 8007e28:	f42a 6a7f 	bic.w	sl, sl, #4080	; 0xff0
 8007e2c:	f02a 0a0f 	bic.w	sl, sl, #15
 8007e30:	4630      	mov	r0, r6
 8007e32:	4651      	mov	r1, sl
 8007e34:	9201      	str	r2, [sp, #4]
 8007e36:	f000 fe8b 	bl	8008b50 <_sbrk_r>
 8007e3a:	f1b0 3fff 	cmp.w	r0, #4294967295
 8007e3e:	4680      	mov	r8, r0
 8007e40:	9a01      	ldr	r2, [sp, #4]
 8007e42:	f000 8100 	beq.w	8008046 <_malloc_r+0x426>
 8007e46:	4583      	cmp	fp, r0
 8007e48:	f200 80fa 	bhi.w	8008040 <_malloc_r+0x420>
 8007e4c:	f8df c110 	ldr.w	ip, [pc, #272]	; 8007f60 <_malloc_r+0x340>
 8007e50:	f8dc 3000 	ldr.w	r3, [ip]
 8007e54:	45c3      	cmp	fp, r8
 8007e56:	4453      	add	r3, sl
 8007e58:	f8cc 3000 	str.w	r3, [ip]
 8007e5c:	f000 814a 	beq.w	80080f4 <_malloc_r+0x4d4>
 8007e60:	6812      	ldr	r2, [r2, #0]
 8007e62:	493c      	ldr	r1, [pc, #240]	; (8007f54 <_malloc_r+0x334>)
 8007e64:	3201      	adds	r2, #1
 8007e66:	bf1b      	ittet	ne
 8007e68:	ebcb 0b08 	rsbne	fp, fp, r8
 8007e6c:	445b      	addne	r3, fp
 8007e6e:	f8c1 8000 	streq.w	r8, [r1]
 8007e72:	f8cc 3000 	strne.w	r3, [ip]
 8007e76:	f018 0307 	ands.w	r3, r8, #7
 8007e7a:	f000 8113 	beq.w	80080a4 <_malloc_r+0x484>
 8007e7e:	f1c3 0208 	rsb	r2, r3, #8
 8007e82:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8007e86:	4490      	add	r8, r2
 8007e88:	3308      	adds	r3, #8
 8007e8a:	44c2      	add	sl, r8
 8007e8c:	f3ca 0a0b 	ubfx	sl, sl, #0, #12
 8007e90:	ebca 0a03 	rsb	sl, sl, r3
 8007e94:	4651      	mov	r1, sl
 8007e96:	4630      	mov	r0, r6
 8007e98:	f8cd c004 	str.w	ip, [sp, #4]
 8007e9c:	f000 fe58 	bl	8008b50 <_sbrk_r>
 8007ea0:	1c43      	adds	r3, r0, #1
 8007ea2:	f8dd c004 	ldr.w	ip, [sp, #4]
 8007ea6:	f000 8135 	beq.w	8008114 <_malloc_r+0x4f4>
 8007eaa:	ebc8 0200 	rsb	r2, r8, r0
 8007eae:	4452      	add	r2, sl
 8007eb0:	f042 0201 	orr.w	r2, r2, #1
 8007eb4:	f8dc 3000 	ldr.w	r3, [ip]
 8007eb8:	f8c7 8008 	str.w	r8, [r7, #8]
 8007ebc:	4453      	add	r3, sl
 8007ebe:	42bc      	cmp	r4, r7
 8007ec0:	f8c8 2004 	str.w	r2, [r8, #4]
 8007ec4:	f8cc 3000 	str.w	r3, [ip]
 8007ec8:	f8df a094 	ldr.w	sl, [pc, #148]	; 8007f60 <_malloc_r+0x340>
 8007ecc:	d015      	beq.n	8007efa <_malloc_r+0x2da>
 8007ece:	f1b9 0f0f 	cmp.w	r9, #15
 8007ed2:	f240 80ea 	bls.w	80080aa <_malloc_r+0x48a>
 8007ed6:	6861      	ldr	r1, [r4, #4]
 8007ed8:	f1a9 020c 	sub.w	r2, r9, #12
 8007edc:	f022 0207 	bic.w	r2, r2, #7
 8007ee0:	f001 0e01 	and.w	lr, r1, #1
 8007ee4:	18a1      	adds	r1, r4, r2
 8007ee6:	2005      	movs	r0, #5
 8007ee8:	ea42 0e0e 	orr.w	lr, r2, lr
 8007eec:	2a0f      	cmp	r2, #15
 8007eee:	f8c4 e004 	str.w	lr, [r4, #4]
 8007ef2:	6048      	str	r0, [r1, #4]
 8007ef4:	6088      	str	r0, [r1, #8]
 8007ef6:	f200 8111 	bhi.w	800811c <_malloc_r+0x4fc>
 8007efa:	4a17      	ldr	r2, [pc, #92]	; (8007f58 <_malloc_r+0x338>)
 8007efc:	68bc      	ldr	r4, [r7, #8]
 8007efe:	6811      	ldr	r1, [r2, #0]
 8007f00:	428b      	cmp	r3, r1
 8007f02:	bf88      	it	hi
 8007f04:	6013      	strhi	r3, [r2, #0]
 8007f06:	4a15      	ldr	r2, [pc, #84]	; (8007f5c <_malloc_r+0x33c>)
 8007f08:	6811      	ldr	r1, [r2, #0]
 8007f0a:	428b      	cmp	r3, r1
 8007f0c:	bf88      	it	hi
 8007f0e:	6013      	strhi	r3, [r2, #0]
 8007f10:	6862      	ldr	r2, [r4, #4]
 8007f12:	f022 0203 	bic.w	r2, r2, #3
 8007f16:	4295      	cmp	r5, r2
 8007f18:	ebc5 0302 	rsb	r3, r5, r2
 8007f1c:	d801      	bhi.n	8007f22 <_malloc_r+0x302>
 8007f1e:	2b0f      	cmp	r3, #15
 8007f20:	dc04      	bgt.n	8007f2c <_malloc_r+0x30c>
 8007f22:	4630      	mov	r0, r6
 8007f24:	f000 f9ac 	bl	8008280 <__malloc_unlock>
 8007f28:	2400      	movs	r4, #0
 8007f2a:	e6a5      	b.n	8007c78 <_malloc_r+0x58>
 8007f2c:	1962      	adds	r2, r4, r5
 8007f2e:	f043 0301 	orr.w	r3, r3, #1
 8007f32:	f045 0501 	orr.w	r5, r5, #1
 8007f36:	6065      	str	r5, [r4, #4]
 8007f38:	4630      	mov	r0, r6
 8007f3a:	60ba      	str	r2, [r7, #8]
 8007f3c:	6053      	str	r3, [r2, #4]
 8007f3e:	f000 f99f 	bl	8008280 <__malloc_unlock>
 8007f42:	3408      	adds	r4, #8
 8007f44:	4620      	mov	r0, r4
 8007f46:	b003      	add	sp, #12
 8007f48:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007f4c:	200006d0 	.word	0x200006d0
 8007f50:	2000362c 	.word	0x2000362c
 8007f54:	20000adc 	.word	0x20000adc
 8007f58:	20003628 	.word	0x20003628
 8007f5c:	20003624 	.word	0x20003624
 8007f60:	20003630 	.word	0x20003630
 8007f64:	f1bc 0f14 	cmp.w	ip, #20
 8007f68:	d961      	bls.n	800802e <_malloc_r+0x40e>
 8007f6a:	f1bc 0f54 	cmp.w	ip, #84	; 0x54
 8007f6e:	f200 808f 	bhi.w	8008090 <_malloc_r+0x470>
 8007f72:	ea4f 3c15 	mov.w	ip, r5, lsr #12
 8007f76:	f10c 0c6e 	add.w	ip, ip, #110	; 0x6e
 8007f7a:	ea4f 014c 	mov.w	r1, ip, lsl #1
 8007f7e:	e697      	b.n	8007cb0 <_malloc_r+0x90>
 8007f80:	0a4b      	lsrs	r3, r1, #9
 8007f82:	2b04      	cmp	r3, #4
 8007f84:	d958      	bls.n	8008038 <_malloc_r+0x418>
 8007f86:	2b14      	cmp	r3, #20
 8007f88:	f200 80ae 	bhi.w	80080e8 <_malloc_r+0x4c8>
 8007f8c:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8007f90:	0050      	lsls	r0, r2, #1
 8007f92:	eb07 0080 	add.w	r0, r7, r0, lsl #2
 8007f96:	f8df 81bc 	ldr.w	r8, [pc, #444]	; 8008154 <_malloc_r+0x534>
 8007f9a:	6883      	ldr	r3, [r0, #8]
 8007f9c:	4283      	cmp	r3, r0
 8007f9e:	f000 808a 	beq.w	80080b6 <_malloc_r+0x496>
 8007fa2:	685a      	ldr	r2, [r3, #4]
 8007fa4:	f022 0203 	bic.w	r2, r2, #3
 8007fa8:	4291      	cmp	r1, r2
 8007faa:	d202      	bcs.n	8007fb2 <_malloc_r+0x392>
 8007fac:	689b      	ldr	r3, [r3, #8]
 8007fae:	4298      	cmp	r0, r3
 8007fb0:	d1f7      	bne.n	8007fa2 <_malloc_r+0x382>
 8007fb2:	68d9      	ldr	r1, [r3, #12]
 8007fb4:	687a      	ldr	r2, [r7, #4]
 8007fb6:	60e1      	str	r1, [r4, #12]
 8007fb8:	60a3      	str	r3, [r4, #8]
 8007fba:	608c      	str	r4, [r1, #8]
 8007fbc:	60dc      	str	r4, [r3, #12]
 8007fbe:	e6b7      	b.n	8007d30 <_malloc_r+0x110>
 8007fc0:	1961      	adds	r1, r4, r5
 8007fc2:	f042 0701 	orr.w	r7, r2, #1
 8007fc6:	f045 0501 	orr.w	r5, r5, #1
 8007fca:	6065      	str	r5, [r4, #4]
 8007fcc:	4630      	mov	r0, r6
 8007fce:	6159      	str	r1, [r3, #20]
 8007fd0:	6119      	str	r1, [r3, #16]
 8007fd2:	f8c1 e00c 	str.w	lr, [r1, #12]
 8007fd6:	f8c1 e008 	str.w	lr, [r1, #8]
 8007fda:	604f      	str	r7, [r1, #4]
 8007fdc:	508a      	str	r2, [r1, r2]
 8007fde:	3408      	adds	r4, #8
 8007fe0:	f000 f94e 	bl	8008280 <__malloc_unlock>
 8007fe4:	e648      	b.n	8007c78 <_malloc_r+0x58>
 8007fe6:	685a      	ldr	r2, [r3, #4]
 8007fe8:	e6a2      	b.n	8007d30 <_malloc_r+0x110>
 8007fea:	f109 0901 	add.w	r9, r9, #1
 8007fee:	f019 0f03 	tst.w	r9, #3
 8007ff2:	f104 0408 	add.w	r4, r4, #8
 8007ff6:	f47f aeae 	bne.w	8007d56 <_malloc_r+0x136>
 8007ffa:	e02d      	b.n	8008058 <_malloc_r+0x438>
 8007ffc:	f104 0308 	add.w	r3, r4, #8
 8008000:	6964      	ldr	r4, [r4, #20]
 8008002:	42a3      	cmp	r3, r4
 8008004:	bf08      	it	eq
 8008006:	f10c 0c02 	addeq.w	ip, ip, #2
 800800a:	f43f ae67 	beq.w	8007cdc <_malloc_r+0xbc>
 800800e:	e623      	b.n	8007c58 <_malloc_r+0x38>
 8008010:	4419      	add	r1, r3
 8008012:	461c      	mov	r4, r3
 8008014:	6848      	ldr	r0, [r1, #4]
 8008016:	68db      	ldr	r3, [r3, #12]
 8008018:	f854 2f08 	ldr.w	r2, [r4, #8]!
 800801c:	f040 0501 	orr.w	r5, r0, #1
 8008020:	604d      	str	r5, [r1, #4]
 8008022:	4630      	mov	r0, r6
 8008024:	60d3      	str	r3, [r2, #12]
 8008026:	609a      	str	r2, [r3, #8]
 8008028:	f000 f92a 	bl	8008280 <__malloc_unlock>
 800802c:	e624      	b.n	8007c78 <_malloc_r+0x58>
 800802e:	f10c 0c5b 	add.w	ip, ip, #91	; 0x5b
 8008032:	ea4f 014c 	mov.w	r1, ip, lsl #1
 8008036:	e63b      	b.n	8007cb0 <_malloc_r+0x90>
 8008038:	098a      	lsrs	r2, r1, #6
 800803a:	3238      	adds	r2, #56	; 0x38
 800803c:	0050      	lsls	r0, r2, #1
 800803e:	e7a8      	b.n	8007f92 <_malloc_r+0x372>
 8008040:	42bc      	cmp	r4, r7
 8008042:	f43f af03 	beq.w	8007e4c <_malloc_r+0x22c>
 8008046:	68bc      	ldr	r4, [r7, #8]
 8008048:	6862      	ldr	r2, [r4, #4]
 800804a:	f022 0203 	bic.w	r2, r2, #3
 800804e:	e762      	b.n	8007f16 <_malloc_r+0x2f6>
 8008050:	f8d8 8000 	ldr.w	r8, [r8]
 8008054:	4598      	cmp	r8, r3
 8008056:	d17b      	bne.n	8008150 <_malloc_r+0x530>
 8008058:	f01c 0f03 	tst.w	ip, #3
 800805c:	f1a8 0308 	sub.w	r3, r8, #8
 8008060:	f10c 3cff 	add.w	ip, ip, #4294967295
 8008064:	d1f4      	bne.n	8008050 <_malloc_r+0x430>
 8008066:	687b      	ldr	r3, [r7, #4]
 8008068:	ea23 0300 	bic.w	r3, r3, r0
 800806c:	607b      	str	r3, [r7, #4]
 800806e:	0040      	lsls	r0, r0, #1
 8008070:	4298      	cmp	r0, r3
 8008072:	f63f aebf 	bhi.w	8007df4 <_malloc_r+0x1d4>
 8008076:	2800      	cmp	r0, #0
 8008078:	f43f aebc 	beq.w	8007df4 <_malloc_r+0x1d4>
 800807c:	4203      	tst	r3, r0
 800807e:	46cc      	mov	ip, r9
 8008080:	f47f ae65 	bne.w	8007d4e <_malloc_r+0x12e>
 8008084:	0040      	lsls	r0, r0, #1
 8008086:	4203      	tst	r3, r0
 8008088:	f10c 0c04 	add.w	ip, ip, #4
 800808c:	d0fa      	beq.n	8008084 <_malloc_r+0x464>
 800808e:	e65e      	b.n	8007d4e <_malloc_r+0x12e>
 8008090:	f5bc 7faa 	cmp.w	ip, #340	; 0x154
 8008094:	d81a      	bhi.n	80080cc <_malloc_r+0x4ac>
 8008096:	ea4f 3cd5 	mov.w	ip, r5, lsr #15
 800809a:	f10c 0c77 	add.w	ip, ip, #119	; 0x77
 800809e:	ea4f 014c 	mov.w	r1, ip, lsl #1
 80080a2:	e605      	b.n	8007cb0 <_malloc_r+0x90>
 80080a4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80080a8:	e6ef      	b.n	8007e8a <_malloc_r+0x26a>
 80080aa:	2301      	movs	r3, #1
 80080ac:	f8c8 3004 	str.w	r3, [r8, #4]
 80080b0:	4644      	mov	r4, r8
 80080b2:	2200      	movs	r2, #0
 80080b4:	e72f      	b.n	8007f16 <_malloc_r+0x2f6>
 80080b6:	1091      	asrs	r1, r2, #2
 80080b8:	2001      	movs	r0, #1
 80080ba:	f8d8 2004 	ldr.w	r2, [r8, #4]
 80080be:	fa00 f101 	lsl.w	r1, r0, r1
 80080c2:	430a      	orrs	r2, r1
 80080c4:	f8c8 2004 	str.w	r2, [r8, #4]
 80080c8:	4619      	mov	r1, r3
 80080ca:	e774      	b.n	8007fb6 <_malloc_r+0x396>
 80080cc:	f240 5354 	movw	r3, #1364	; 0x554
 80080d0:	459c      	cmp	ip, r3
 80080d2:	d81b      	bhi.n	800810c <_malloc_r+0x4ec>
 80080d4:	ea4f 4c95 	mov.w	ip, r5, lsr #18
 80080d8:	f10c 0c7c 	add.w	ip, ip, #124	; 0x7c
 80080dc:	ea4f 014c 	mov.w	r1, ip, lsl #1
 80080e0:	e5e6      	b.n	8007cb0 <_malloc_r+0x90>
 80080e2:	f10a 0a10 	add.w	sl, sl, #16
 80080e6:	e6a3      	b.n	8007e30 <_malloc_r+0x210>
 80080e8:	2b54      	cmp	r3, #84	; 0x54
 80080ea:	d81f      	bhi.n	800812c <_malloc_r+0x50c>
 80080ec:	0b0a      	lsrs	r2, r1, #12
 80080ee:	326e      	adds	r2, #110	; 0x6e
 80080f0:	0050      	lsls	r0, r2, #1
 80080f2:	e74e      	b.n	8007f92 <_malloc_r+0x372>
 80080f4:	f3cb 010b 	ubfx	r1, fp, #0, #12
 80080f8:	2900      	cmp	r1, #0
 80080fa:	f47f aeb1 	bne.w	8007e60 <_malloc_r+0x240>
 80080fe:	eb0a 0109 	add.w	r1, sl, r9
 8008102:	68ba      	ldr	r2, [r7, #8]
 8008104:	f041 0101 	orr.w	r1, r1, #1
 8008108:	6051      	str	r1, [r2, #4]
 800810a:	e6f6      	b.n	8007efa <_malloc_r+0x2da>
 800810c:	21fc      	movs	r1, #252	; 0xfc
 800810e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8008112:	e5cd      	b.n	8007cb0 <_malloc_r+0x90>
 8008114:	2201      	movs	r2, #1
 8008116:	f04f 0a00 	mov.w	sl, #0
 800811a:	e6cb      	b.n	8007eb4 <_malloc_r+0x294>
 800811c:	f104 0108 	add.w	r1, r4, #8
 8008120:	4630      	mov	r0, r6
 8008122:	f7ff fbb1 	bl	8007888 <_free_r>
 8008126:	f8da 3000 	ldr.w	r3, [sl]
 800812a:	e6e6      	b.n	8007efa <_malloc_r+0x2da>
 800812c:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8008130:	d803      	bhi.n	800813a <_malloc_r+0x51a>
 8008132:	0bca      	lsrs	r2, r1, #15
 8008134:	3277      	adds	r2, #119	; 0x77
 8008136:	0050      	lsls	r0, r2, #1
 8008138:	e72b      	b.n	8007f92 <_malloc_r+0x372>
 800813a:	f240 5254 	movw	r2, #1364	; 0x554
 800813e:	4293      	cmp	r3, r2
 8008140:	d803      	bhi.n	800814a <_malloc_r+0x52a>
 8008142:	0c8a      	lsrs	r2, r1, #18
 8008144:	327c      	adds	r2, #124	; 0x7c
 8008146:	0050      	lsls	r0, r2, #1
 8008148:	e723      	b.n	8007f92 <_malloc_r+0x372>
 800814a:	20fc      	movs	r0, #252	; 0xfc
 800814c:	227e      	movs	r2, #126	; 0x7e
 800814e:	e720      	b.n	8007f92 <_malloc_r+0x372>
 8008150:	687b      	ldr	r3, [r7, #4]
 8008152:	e78c      	b.n	800806e <_malloc_r+0x44e>
 8008154:	200006d0 	.word	0x200006d0

08008158 <memchr>:
 8008158:	0783      	lsls	r3, r0, #30
 800815a:	b470      	push	{r4, r5, r6}
 800815c:	b2c9      	uxtb	r1, r1
 800815e:	d03f      	beq.n	80081e0 <memchr+0x88>
 8008160:	1e54      	subs	r4, r2, #1
 8008162:	b32a      	cbz	r2, 80081b0 <memchr+0x58>
 8008164:	7803      	ldrb	r3, [r0, #0]
 8008166:	428b      	cmp	r3, r1
 8008168:	d023      	beq.n	80081b2 <memchr+0x5a>
 800816a:	1c43      	adds	r3, r0, #1
 800816c:	e004      	b.n	8008178 <memchr+0x20>
 800816e:	b1fc      	cbz	r4, 80081b0 <memchr+0x58>
 8008170:	7804      	ldrb	r4, [r0, #0]
 8008172:	428c      	cmp	r4, r1
 8008174:	d01d      	beq.n	80081b2 <memchr+0x5a>
 8008176:	4614      	mov	r4, r2
 8008178:	f013 0f03 	tst.w	r3, #3
 800817c:	4618      	mov	r0, r3
 800817e:	f104 32ff 	add.w	r2, r4, #4294967295
 8008182:	f103 0301 	add.w	r3, r3, #1
 8008186:	d1f2      	bne.n	800816e <memchr+0x16>
 8008188:	2c03      	cmp	r4, #3
 800818a:	d814      	bhi.n	80081b6 <memchr+0x5e>
 800818c:	1e65      	subs	r5, r4, #1
 800818e:	b34c      	cbz	r4, 80081e4 <memchr+0x8c>
 8008190:	7803      	ldrb	r3, [r0, #0]
 8008192:	428b      	cmp	r3, r1
 8008194:	d00d      	beq.n	80081b2 <memchr+0x5a>
 8008196:	1c42      	adds	r2, r0, #1
 8008198:	2300      	movs	r3, #0
 800819a:	e002      	b.n	80081a2 <memchr+0x4a>
 800819c:	7804      	ldrb	r4, [r0, #0]
 800819e:	428c      	cmp	r4, r1
 80081a0:	d007      	beq.n	80081b2 <memchr+0x5a>
 80081a2:	42ab      	cmp	r3, r5
 80081a4:	4610      	mov	r0, r2
 80081a6:	f103 0301 	add.w	r3, r3, #1
 80081aa:	f102 0201 	add.w	r2, r2, #1
 80081ae:	d1f5      	bne.n	800819c <memchr+0x44>
 80081b0:	2000      	movs	r0, #0
 80081b2:	bc70      	pop	{r4, r5, r6}
 80081b4:	4770      	bx	lr
 80081b6:	ea41 2601 	orr.w	r6, r1, r1, lsl #8
 80081ba:	4603      	mov	r3, r0
 80081bc:	ea46 4606 	orr.w	r6, r6, r6, lsl #16
 80081c0:	4618      	mov	r0, r3
 80081c2:	3304      	adds	r3, #4
 80081c4:	6802      	ldr	r2, [r0, #0]
 80081c6:	4072      	eors	r2, r6
 80081c8:	f1a2 3501 	sub.w	r5, r2, #16843009	; 0x1010101
 80081cc:	ea25 0202 	bic.w	r2, r5, r2
 80081d0:	f012 3f80 	tst.w	r2, #2155905152	; 0x80808080
 80081d4:	d1da      	bne.n	800818c <memchr+0x34>
 80081d6:	3c04      	subs	r4, #4
 80081d8:	2c03      	cmp	r4, #3
 80081da:	4618      	mov	r0, r3
 80081dc:	d8f0      	bhi.n	80081c0 <memchr+0x68>
 80081de:	e7d5      	b.n	800818c <memchr+0x34>
 80081e0:	4614      	mov	r4, r2
 80081e2:	e7d1      	b.n	8008188 <memchr+0x30>
 80081e4:	4620      	mov	r0, r4
 80081e6:	e7e4      	b.n	80081b2 <memchr+0x5a>

080081e8 <memset>:
 80081e8:	b4f0      	push	{r4, r5, r6, r7}
 80081ea:	0784      	lsls	r4, r0, #30
 80081ec:	d043      	beq.n	8008276 <memset+0x8e>
 80081ee:	1e54      	subs	r4, r2, #1
 80081f0:	2a00      	cmp	r2, #0
 80081f2:	d03e      	beq.n	8008272 <memset+0x8a>
 80081f4:	b2cd      	uxtb	r5, r1
 80081f6:	4603      	mov	r3, r0
 80081f8:	e003      	b.n	8008202 <memset+0x1a>
 80081fa:	1e62      	subs	r2, r4, #1
 80081fc:	2c00      	cmp	r4, #0
 80081fe:	d038      	beq.n	8008272 <memset+0x8a>
 8008200:	4614      	mov	r4, r2
 8008202:	f803 5b01 	strb.w	r5, [r3], #1
 8008206:	079a      	lsls	r2, r3, #30
 8008208:	d1f7      	bne.n	80081fa <memset+0x12>
 800820a:	2c03      	cmp	r4, #3
 800820c:	d92a      	bls.n	8008264 <memset+0x7c>
 800820e:	b2cd      	uxtb	r5, r1
 8008210:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8008214:	2c0f      	cmp	r4, #15
 8008216:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800821a:	d915      	bls.n	8008248 <memset+0x60>
 800821c:	f1a4 0710 	sub.w	r7, r4, #16
 8008220:	093f      	lsrs	r7, r7, #4
 8008222:	f103 0610 	add.w	r6, r3, #16
 8008226:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800822a:	461a      	mov	r2, r3
 800822c:	6015      	str	r5, [r2, #0]
 800822e:	6055      	str	r5, [r2, #4]
 8008230:	6095      	str	r5, [r2, #8]
 8008232:	60d5      	str	r5, [r2, #12]
 8008234:	3210      	adds	r2, #16
 8008236:	42b2      	cmp	r2, r6
 8008238:	d1f8      	bne.n	800822c <memset+0x44>
 800823a:	f004 040f 	and.w	r4, r4, #15
 800823e:	3701      	adds	r7, #1
 8008240:	2c03      	cmp	r4, #3
 8008242:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8008246:	d90d      	bls.n	8008264 <memset+0x7c>
 8008248:	461e      	mov	r6, r3
 800824a:	4622      	mov	r2, r4
 800824c:	3a04      	subs	r2, #4
 800824e:	2a03      	cmp	r2, #3
 8008250:	f846 5b04 	str.w	r5, [r6], #4
 8008254:	d8fa      	bhi.n	800824c <memset+0x64>
 8008256:	1f22      	subs	r2, r4, #4
 8008258:	f022 0203 	bic.w	r2, r2, #3
 800825c:	3204      	adds	r2, #4
 800825e:	4413      	add	r3, r2
 8008260:	f004 0403 	and.w	r4, r4, #3
 8008264:	b12c      	cbz	r4, 8008272 <memset+0x8a>
 8008266:	b2c9      	uxtb	r1, r1
 8008268:	441c      	add	r4, r3
 800826a:	f803 1b01 	strb.w	r1, [r3], #1
 800826e:	42a3      	cmp	r3, r4
 8008270:	d1fb      	bne.n	800826a <memset+0x82>
 8008272:	bcf0      	pop	{r4, r5, r6, r7}
 8008274:	4770      	bx	lr
 8008276:	4614      	mov	r4, r2
 8008278:	4603      	mov	r3, r0
 800827a:	e7c6      	b.n	800820a <memset+0x22>

0800827c <__malloc_lock>:
 800827c:	4770      	bx	lr
 800827e:	bf00      	nop

08008280 <__malloc_unlock>:
 8008280:	4770      	bx	lr
 8008282:	bf00      	nop

08008284 <_Balloc>:
 8008284:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
 8008286:	b570      	push	{r4, r5, r6, lr}
 8008288:	4605      	mov	r5, r0
 800828a:	460c      	mov	r4, r1
 800828c:	b14a      	cbz	r2, 80082a2 <_Balloc+0x1e>
 800828e:	f852 0024 	ldr.w	r0, [r2, r4, lsl #2]
 8008292:	b180      	cbz	r0, 80082b6 <_Balloc+0x32>
 8008294:	6801      	ldr	r1, [r0, #0]
 8008296:	f842 1024 	str.w	r1, [r2, r4, lsl #2]
 800829a:	2200      	movs	r2, #0
 800829c:	6102      	str	r2, [r0, #16]
 800829e:	60c2      	str	r2, [r0, #12]
 80082a0:	bd70      	pop	{r4, r5, r6, pc}
 80082a2:	2221      	movs	r2, #33	; 0x21
 80082a4:	2104      	movs	r1, #4
 80082a6:	f001 fbcd 	bl	8009a44 <_calloc_r>
 80082aa:	64e8      	str	r0, [r5, #76]	; 0x4c
 80082ac:	4602      	mov	r2, r0
 80082ae:	2800      	cmp	r0, #0
 80082b0:	d1ed      	bne.n	800828e <_Balloc+0xa>
 80082b2:	2000      	movs	r0, #0
 80082b4:	bd70      	pop	{r4, r5, r6, pc}
 80082b6:	2101      	movs	r1, #1
 80082b8:	fa01 f604 	lsl.w	r6, r1, r4
 80082bc:	1d72      	adds	r2, r6, #5
 80082be:	4628      	mov	r0, r5
 80082c0:	0092      	lsls	r2, r2, #2
 80082c2:	f001 fbbf 	bl	8009a44 <_calloc_r>
 80082c6:	2800      	cmp	r0, #0
 80082c8:	d0f3      	beq.n	80082b2 <_Balloc+0x2e>
 80082ca:	6044      	str	r4, [r0, #4]
 80082cc:	6086      	str	r6, [r0, #8]
 80082ce:	e7e4      	b.n	800829a <_Balloc+0x16>

080082d0 <_Bfree>:
 80082d0:	b131      	cbz	r1, 80082e0 <_Bfree+0x10>
 80082d2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80082d4:	684a      	ldr	r2, [r1, #4]
 80082d6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80082da:	6008      	str	r0, [r1, #0]
 80082dc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80082e0:	4770      	bx	lr
 80082e2:	bf00      	nop

080082e4 <__multadd>:
 80082e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80082e8:	f8d1 8010 	ldr.w	r8, [r1, #16]
 80082ec:	b082      	sub	sp, #8
 80082ee:	4689      	mov	r9, r1
 80082f0:	4682      	mov	sl, r0
 80082f2:	f101 0514 	add.w	r5, r1, #20
 80082f6:	2400      	movs	r4, #0
 80082f8:	682f      	ldr	r7, [r5, #0]
 80082fa:	b2be      	uxth	r6, r7
 80082fc:	0c3f      	lsrs	r7, r7, #16
 80082fe:	fb02 3606 	mla	r6, r2, r6, r3
 8008302:	fb02 f307 	mul.w	r3, r2, r7
 8008306:	eb03 4316 	add.w	r3, r3, r6, lsr #16
 800830a:	3401      	adds	r4, #1
 800830c:	b2b6      	uxth	r6, r6
 800830e:	eb06 4603 	add.w	r6, r6, r3, lsl #16
 8008312:	45a0      	cmp	r8, r4
 8008314:	f845 6b04 	str.w	r6, [r5], #4
 8008318:	ea4f 4313 	mov.w	r3, r3, lsr #16
 800831c:	dcec      	bgt.n	80082f8 <__multadd+0x14>
 800831e:	b153      	cbz	r3, 8008336 <__multadd+0x52>
 8008320:	f8d9 2008 	ldr.w	r2, [r9, #8]
 8008324:	4590      	cmp	r8, r2
 8008326:	da0a      	bge.n	800833e <__multadd+0x5a>
 8008328:	eb09 0188 	add.w	r1, r9, r8, lsl #2
 800832c:	f108 0201 	add.w	r2, r8, #1
 8008330:	614b      	str	r3, [r1, #20]
 8008332:	f8c9 2010 	str.w	r2, [r9, #16]
 8008336:	4648      	mov	r0, r9
 8008338:	b002      	add	sp, #8
 800833a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800833e:	f8d9 1004 	ldr.w	r1, [r9, #4]
 8008342:	9301      	str	r3, [sp, #4]
 8008344:	3101      	adds	r1, #1
 8008346:	4650      	mov	r0, sl
 8008348:	f7ff ff9c 	bl	8008284 <_Balloc>
 800834c:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8008350:	3202      	adds	r2, #2
 8008352:	f109 010c 	add.w	r1, r9, #12
 8008356:	4604      	mov	r4, r0
 8008358:	0092      	lsls	r2, r2, #2
 800835a:	300c      	adds	r0, #12
 800835c:	f7fb fb92 	bl	8003a84 <memcpy>
 8008360:	f8da 204c 	ldr.w	r2, [sl, #76]	; 0x4c
 8008364:	f8d9 1004 	ldr.w	r1, [r9, #4]
 8008368:	9b01      	ldr	r3, [sp, #4]
 800836a:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800836e:	f8c9 0000 	str.w	r0, [r9]
 8008372:	f842 9021 	str.w	r9, [r2, r1, lsl #2]
 8008376:	46a1      	mov	r9, r4
 8008378:	e7d6      	b.n	8008328 <__multadd+0x44>
 800837a:	bf00      	nop

0800837c <__s2b>:
 800837c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008380:	4699      	mov	r9, r3
 8008382:	4b23      	ldr	r3, [pc, #140]	; (8008410 <__s2b+0x94>)
 8008384:	9e08      	ldr	r6, [sp, #32]
 8008386:	f109 0408 	add.w	r4, r9, #8
 800838a:	fb83 5304 	smull	r5, r3, r3, r4
 800838e:	17e4      	asrs	r4, r4, #31
 8008390:	ebc4 0363 	rsb	r3, r4, r3, asr #1
 8008394:	2b01      	cmp	r3, #1
 8008396:	4607      	mov	r7, r0
 8008398:	460c      	mov	r4, r1
 800839a:	4690      	mov	r8, r2
 800839c:	dd35      	ble.n	800840a <__s2b+0x8e>
 800839e:	2501      	movs	r5, #1
 80083a0:	2100      	movs	r1, #0
 80083a2:	006d      	lsls	r5, r5, #1
 80083a4:	42ab      	cmp	r3, r5
 80083a6:	f101 0101 	add.w	r1, r1, #1
 80083aa:	dcfa      	bgt.n	80083a2 <__s2b+0x26>
 80083ac:	4638      	mov	r0, r7
 80083ae:	f7ff ff69 	bl	8008284 <_Balloc>
 80083b2:	2301      	movs	r3, #1
 80083b4:	f1b8 0f09 	cmp.w	r8, #9
 80083b8:	6146      	str	r6, [r0, #20]
 80083ba:	6103      	str	r3, [r0, #16]
 80083bc:	dd21      	ble.n	8008402 <__s2b+0x86>
 80083be:	f104 0609 	add.w	r6, r4, #9
 80083c2:	4635      	mov	r5, r6
 80083c4:	4444      	add	r4, r8
 80083c6:	f815 3b01 	ldrb.w	r3, [r5], #1
 80083ca:	4601      	mov	r1, r0
 80083cc:	3b30      	subs	r3, #48	; 0x30
 80083ce:	4638      	mov	r0, r7
 80083d0:	220a      	movs	r2, #10
 80083d2:	f7ff ff87 	bl	80082e4 <__multadd>
 80083d6:	42a5      	cmp	r5, r4
 80083d8:	d1f5      	bne.n	80083c6 <__s2b+0x4a>
 80083da:	eb06 0408 	add.w	r4, r6, r8
 80083de:	3c08      	subs	r4, #8
 80083e0:	45c1      	cmp	r9, r8
 80083e2:	dd0c      	ble.n	80083fe <__s2b+0x82>
 80083e4:	ebc8 0809 	rsb	r8, r8, r9
 80083e8:	44a0      	add	r8, r4
 80083ea:	f814 3b01 	ldrb.w	r3, [r4], #1
 80083ee:	4601      	mov	r1, r0
 80083f0:	3b30      	subs	r3, #48	; 0x30
 80083f2:	4638      	mov	r0, r7
 80083f4:	220a      	movs	r2, #10
 80083f6:	f7ff ff75 	bl	80082e4 <__multadd>
 80083fa:	4544      	cmp	r4, r8
 80083fc:	d1f5      	bne.n	80083ea <__s2b+0x6e>
 80083fe:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008402:	340a      	adds	r4, #10
 8008404:	f04f 0809 	mov.w	r8, #9
 8008408:	e7ea      	b.n	80083e0 <__s2b+0x64>
 800840a:	2100      	movs	r1, #0
 800840c:	e7ce      	b.n	80083ac <__s2b+0x30>
 800840e:	bf00      	nop
 8008410:	38e38e39 	.word	0x38e38e39

08008414 <__hi0bits>:
 8008414:	0c03      	lsrs	r3, r0, #16
 8008416:	041b      	lsls	r3, r3, #16
 8008418:	b9b3      	cbnz	r3, 8008448 <__hi0bits+0x34>
 800841a:	0400      	lsls	r0, r0, #16
 800841c:	2310      	movs	r3, #16
 800841e:	f010 4f7f 	tst.w	r0, #4278190080	; 0xff000000
 8008422:	bf04      	itt	eq
 8008424:	0200      	lsleq	r0, r0, #8
 8008426:	3308      	addeq	r3, #8
 8008428:	f010 4f70 	tst.w	r0, #4026531840	; 0xf0000000
 800842c:	bf04      	itt	eq
 800842e:	0100      	lsleq	r0, r0, #4
 8008430:	3304      	addeq	r3, #4
 8008432:	f010 4f40 	tst.w	r0, #3221225472	; 0xc0000000
 8008436:	bf04      	itt	eq
 8008438:	0080      	lsleq	r0, r0, #2
 800843a:	3302      	addeq	r3, #2
 800843c:	2800      	cmp	r0, #0
 800843e:	db07      	blt.n	8008450 <__hi0bits+0x3c>
 8008440:	0042      	lsls	r2, r0, #1
 8008442:	d403      	bmi.n	800844c <__hi0bits+0x38>
 8008444:	2020      	movs	r0, #32
 8008446:	4770      	bx	lr
 8008448:	2300      	movs	r3, #0
 800844a:	e7e8      	b.n	800841e <__hi0bits+0xa>
 800844c:	1c58      	adds	r0, r3, #1
 800844e:	4770      	bx	lr
 8008450:	4618      	mov	r0, r3
 8008452:	4770      	bx	lr

08008454 <__lo0bits>:
 8008454:	6803      	ldr	r3, [r0, #0]
 8008456:	f013 0207 	ands.w	r2, r3, #7
 800845a:	d007      	beq.n	800846c <__lo0bits+0x18>
 800845c:	07d9      	lsls	r1, r3, #31
 800845e:	d420      	bmi.n	80084a2 <__lo0bits+0x4e>
 8008460:	079a      	lsls	r2, r3, #30
 8008462:	d420      	bmi.n	80084a6 <__lo0bits+0x52>
 8008464:	089b      	lsrs	r3, r3, #2
 8008466:	6003      	str	r3, [r0, #0]
 8008468:	2002      	movs	r0, #2
 800846a:	4770      	bx	lr
 800846c:	b299      	uxth	r1, r3
 800846e:	b909      	cbnz	r1, 8008474 <__lo0bits+0x20>
 8008470:	0c1b      	lsrs	r3, r3, #16
 8008472:	2210      	movs	r2, #16
 8008474:	f013 0fff 	tst.w	r3, #255	; 0xff
 8008478:	bf04      	itt	eq
 800847a:	0a1b      	lsreq	r3, r3, #8
 800847c:	3208      	addeq	r2, #8
 800847e:	0719      	lsls	r1, r3, #28
 8008480:	bf04      	itt	eq
 8008482:	091b      	lsreq	r3, r3, #4
 8008484:	3204      	addeq	r2, #4
 8008486:	0799      	lsls	r1, r3, #30
 8008488:	bf04      	itt	eq
 800848a:	089b      	lsreq	r3, r3, #2
 800848c:	3202      	addeq	r2, #2
 800848e:	07d9      	lsls	r1, r3, #31
 8008490:	d404      	bmi.n	800849c <__lo0bits+0x48>
 8008492:	085b      	lsrs	r3, r3, #1
 8008494:	d101      	bne.n	800849a <__lo0bits+0x46>
 8008496:	2020      	movs	r0, #32
 8008498:	4770      	bx	lr
 800849a:	3201      	adds	r2, #1
 800849c:	6003      	str	r3, [r0, #0]
 800849e:	4610      	mov	r0, r2
 80084a0:	4770      	bx	lr
 80084a2:	2000      	movs	r0, #0
 80084a4:	4770      	bx	lr
 80084a6:	085b      	lsrs	r3, r3, #1
 80084a8:	6003      	str	r3, [r0, #0]
 80084aa:	2001      	movs	r0, #1
 80084ac:	4770      	bx	lr
 80084ae:	bf00      	nop

080084b0 <__i2b>:
 80084b0:	b510      	push	{r4, lr}
 80084b2:	460c      	mov	r4, r1
 80084b4:	2101      	movs	r1, #1
 80084b6:	f7ff fee5 	bl	8008284 <_Balloc>
 80084ba:	2201      	movs	r2, #1
 80084bc:	6144      	str	r4, [r0, #20]
 80084be:	6102      	str	r2, [r0, #16]
 80084c0:	bd10      	pop	{r4, pc}
 80084c2:	bf00      	nop

080084c4 <__multiply>:
 80084c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80084c8:	690d      	ldr	r5, [r1, #16]
 80084ca:	f8d2 9010 	ldr.w	r9, [r2, #16]
 80084ce:	454d      	cmp	r5, r9
 80084d0:	b085      	sub	sp, #20
 80084d2:	460c      	mov	r4, r1
 80084d4:	4692      	mov	sl, r2
 80084d6:	da04      	bge.n	80084e2 <__multiply+0x1e>
 80084d8:	462a      	mov	r2, r5
 80084da:	4654      	mov	r4, sl
 80084dc:	464d      	mov	r5, r9
 80084de:	468a      	mov	sl, r1
 80084e0:	4691      	mov	r9, r2
 80084e2:	68a3      	ldr	r3, [r4, #8]
 80084e4:	6861      	ldr	r1, [r4, #4]
 80084e6:	eb05 0709 	add.w	r7, r5, r9
 80084ea:	429f      	cmp	r7, r3
 80084ec:	bfc8      	it	gt
 80084ee:	3101      	addgt	r1, #1
 80084f0:	f7ff fec8 	bl	8008284 <_Balloc>
 80084f4:	f100 0614 	add.w	r6, r0, #20
 80084f8:	eb06 0887 	add.w	r8, r6, r7, lsl #2
 80084fc:	4546      	cmp	r6, r8
 80084fe:	9001      	str	r0, [sp, #4]
 8008500:	d205      	bcs.n	800850e <__multiply+0x4a>
 8008502:	4633      	mov	r3, r6
 8008504:	2000      	movs	r0, #0
 8008506:	f843 0b04 	str.w	r0, [r3], #4
 800850a:	4598      	cmp	r8, r3
 800850c:	d8fb      	bhi.n	8008506 <__multiply+0x42>
 800850e:	f10a 0c14 	add.w	ip, sl, #20
 8008512:	eb0c 0989 	add.w	r9, ip, r9, lsl #2
 8008516:	3414      	adds	r4, #20
 8008518:	45cc      	cmp	ip, r9
 800851a:	9400      	str	r4, [sp, #0]
 800851c:	eb04 0585 	add.w	r5, r4, r5, lsl #2
 8008520:	d25b      	bcs.n	80085da <__multiply+0x116>
 8008522:	f8cd 8008 	str.w	r8, [sp, #8]
 8008526:	9703      	str	r7, [sp, #12]
 8008528:	46c8      	mov	r8, r9
 800852a:	f85c 3b04 	ldr.w	r3, [ip], #4
 800852e:	b29c      	uxth	r4, r3
 8008530:	b324      	cbz	r4, 800857c <__multiply+0xb8>
 8008532:	9a00      	ldr	r2, [sp, #0]
 8008534:	4633      	mov	r3, r6
 8008536:	f04f 0900 	mov.w	r9, #0
 800853a:	e000      	b.n	800853e <__multiply+0x7a>
 800853c:	460b      	mov	r3, r1
 800853e:	f852 7b04 	ldr.w	r7, [r2], #4
 8008542:	6819      	ldr	r1, [r3, #0]
 8008544:	fa1f fb87 	uxth.w	fp, r7
 8008548:	fa1f fa81 	uxth.w	sl, r1
 800854c:	0c38      	lsrs	r0, r7, #16
 800854e:	0c09      	lsrs	r1, r1, #16
 8008550:	fb04 a70b 	mla	r7, r4, fp, sl
 8008554:	44b9      	add	r9, r7
 8008556:	fb04 1000 	mla	r0, r4, r0, r1
 800855a:	eb00 4019 	add.w	r0, r0, r9, lsr #16
 800855e:	4619      	mov	r1, r3
 8008560:	fa1f f989 	uxth.w	r9, r9
 8008564:	ea49 4700 	orr.w	r7, r9, r0, lsl #16
 8008568:	4295      	cmp	r5, r2
 800856a:	ea4f 4910 	mov.w	r9, r0, lsr #16
 800856e:	f841 7b04 	str.w	r7, [r1], #4
 8008572:	d8e3      	bhi.n	800853c <__multiply+0x78>
 8008574:	f8c3 9004 	str.w	r9, [r3, #4]
 8008578:	f85c 3c04 	ldr.w	r3, [ip, #-4]
 800857c:	ea5f 4913 	movs.w	r9, r3, lsr #16
 8008580:	d024      	beq.n	80085cc <__multiply+0x108>
 8008582:	f8d6 a000 	ldr.w	sl, [r6]
 8008586:	9b00      	ldr	r3, [sp, #0]
 8008588:	4650      	mov	r0, sl
 800858a:	4631      	mov	r1, r6
 800858c:	f04f 0b00 	mov.w	fp, #0
 8008590:	e000      	b.n	8008594 <__multiply+0xd0>
 8008592:	4611      	mov	r1, r2
 8008594:	881a      	ldrh	r2, [r3, #0]
 8008596:	0c00      	lsrs	r0, r0, #16
 8008598:	fb09 0002 	mla	r0, r9, r2, r0
 800859c:	4483      	add	fp, r0
 800859e:	fa1f fa8a 	uxth.w	sl, sl
 80085a2:	460a      	mov	r2, r1
 80085a4:	ea4a 400b 	orr.w	r0, sl, fp, lsl #16
 80085a8:	f842 0b04 	str.w	r0, [r2], #4
 80085ac:	f853 7b04 	ldr.w	r7, [r3], #4
 80085b0:	6848      	ldr	r0, [r1, #4]
 80085b2:	ea4f 4a17 	mov.w	sl, r7, lsr #16
 80085b6:	b284      	uxth	r4, r0
 80085b8:	fb09 4a0a 	mla	sl, r9, sl, r4
 80085bc:	eb0a 4a1b 	add.w	sl, sl, fp, lsr #16
 80085c0:	429d      	cmp	r5, r3
 80085c2:	ea4f 4b1a 	mov.w	fp, sl, lsr #16
 80085c6:	d8e4      	bhi.n	8008592 <__multiply+0xce>
 80085c8:	f8c1 a004 	str.w	sl, [r1, #4]
 80085cc:	45e0      	cmp	r8, ip
 80085ce:	f106 0604 	add.w	r6, r6, #4
 80085d2:	d8aa      	bhi.n	800852a <__multiply+0x66>
 80085d4:	f8dd 8008 	ldr.w	r8, [sp, #8]
 80085d8:	9f03      	ldr	r7, [sp, #12]
 80085da:	2f00      	cmp	r7, #0
 80085dc:	dd0a      	ble.n	80085f4 <__multiply+0x130>
 80085de:	f858 3c04 	ldr.w	r3, [r8, #-4]
 80085e2:	f1a8 0804 	sub.w	r8, r8, #4
 80085e6:	b11b      	cbz	r3, 80085f0 <__multiply+0x12c>
 80085e8:	e004      	b.n	80085f4 <__multiply+0x130>
 80085ea:	f858 3d04 	ldr.w	r3, [r8, #-4]!
 80085ee:	b90b      	cbnz	r3, 80085f4 <__multiply+0x130>
 80085f0:	3f01      	subs	r7, #1
 80085f2:	d1fa      	bne.n	80085ea <__multiply+0x126>
 80085f4:	9b01      	ldr	r3, [sp, #4]
 80085f6:	4618      	mov	r0, r3
 80085f8:	611f      	str	r7, [r3, #16]
 80085fa:	b005      	add	sp, #20
 80085fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08008600 <__pow5mult>:
 8008600:	f012 0303 	ands.w	r3, r2, #3
 8008604:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008608:	4614      	mov	r4, r2
 800860a:	4607      	mov	r7, r0
 800860c:	460e      	mov	r6, r1
 800860e:	d12c      	bne.n	800866a <__pow5mult+0x6a>
 8008610:	10a4      	asrs	r4, r4, #2
 8008612:	d01c      	beq.n	800864e <__pow5mult+0x4e>
 8008614:	6cbd      	ldr	r5, [r7, #72]	; 0x48
 8008616:	2d00      	cmp	r5, #0
 8008618:	d030      	beq.n	800867c <__pow5mult+0x7c>
 800861a:	f04f 0800 	mov.w	r8, #0
 800861e:	e004      	b.n	800862a <__pow5mult+0x2a>
 8008620:	1064      	asrs	r4, r4, #1
 8008622:	d014      	beq.n	800864e <__pow5mult+0x4e>
 8008624:	6828      	ldr	r0, [r5, #0]
 8008626:	b1a8      	cbz	r0, 8008654 <__pow5mult+0x54>
 8008628:	4605      	mov	r5, r0
 800862a:	07e3      	lsls	r3, r4, #31
 800862c:	d5f8      	bpl.n	8008620 <__pow5mult+0x20>
 800862e:	4638      	mov	r0, r7
 8008630:	4631      	mov	r1, r6
 8008632:	462a      	mov	r2, r5
 8008634:	f7ff ff46 	bl	80084c4 <__multiply>
 8008638:	b1ae      	cbz	r6, 8008666 <__pow5mult+0x66>
 800863a:	6872      	ldr	r2, [r6, #4]
 800863c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800863e:	1064      	asrs	r4, r4, #1
 8008640:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008644:	6031      	str	r1, [r6, #0]
 8008646:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 800864a:	4606      	mov	r6, r0
 800864c:	d1ea      	bne.n	8008624 <__pow5mult+0x24>
 800864e:	4630      	mov	r0, r6
 8008650:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8008654:	4638      	mov	r0, r7
 8008656:	4629      	mov	r1, r5
 8008658:	462a      	mov	r2, r5
 800865a:	f7ff ff33 	bl	80084c4 <__multiply>
 800865e:	6028      	str	r0, [r5, #0]
 8008660:	f8c0 8000 	str.w	r8, [r0]
 8008664:	e7e0      	b.n	8008628 <__pow5mult+0x28>
 8008666:	4606      	mov	r6, r0
 8008668:	e7da      	b.n	8008620 <__pow5mult+0x20>
 800866a:	1e5d      	subs	r5, r3, #1
 800866c:	4a0a      	ldr	r2, [pc, #40]	; (8008698 <__pow5mult+0x98>)
 800866e:	2300      	movs	r3, #0
 8008670:	f852 2025 	ldr.w	r2, [r2, r5, lsl #2]
 8008674:	f7ff fe36 	bl	80082e4 <__multadd>
 8008678:	4606      	mov	r6, r0
 800867a:	e7c9      	b.n	8008610 <__pow5mult+0x10>
 800867c:	2101      	movs	r1, #1
 800867e:	4638      	mov	r0, r7
 8008680:	f7ff fe00 	bl	8008284 <_Balloc>
 8008684:	f240 2171 	movw	r1, #625	; 0x271
 8008688:	2201      	movs	r2, #1
 800868a:	2300      	movs	r3, #0
 800868c:	6141      	str	r1, [r0, #20]
 800868e:	6102      	str	r2, [r0, #16]
 8008690:	4605      	mov	r5, r0
 8008692:	64b8      	str	r0, [r7, #72]	; 0x48
 8008694:	6003      	str	r3, [r0, #0]
 8008696:	e7c0      	b.n	800861a <__pow5mult+0x1a>
 8008698:	0800b760 	.word	0x0800b760

0800869c <__lshift>:
 800869c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80086a0:	4693      	mov	fp, r2
 80086a2:	690a      	ldr	r2, [r1, #16]
 80086a4:	688b      	ldr	r3, [r1, #8]
 80086a6:	ea4f 1a6b 	mov.w	sl, fp, asr #5
 80086aa:	eb0a 0902 	add.w	r9, sl, r2
 80086ae:	f109 0601 	add.w	r6, r9, #1
 80086b2:	429e      	cmp	r6, r3
 80086b4:	460f      	mov	r7, r1
 80086b6:	4680      	mov	r8, r0
 80086b8:	6849      	ldr	r1, [r1, #4]
 80086ba:	dd04      	ble.n	80086c6 <__lshift+0x2a>
 80086bc:	005b      	lsls	r3, r3, #1
 80086be:	429e      	cmp	r6, r3
 80086c0:	f101 0101 	add.w	r1, r1, #1
 80086c4:	dcfa      	bgt.n	80086bc <__lshift+0x20>
 80086c6:	4640      	mov	r0, r8
 80086c8:	f7ff fddc 	bl	8008284 <_Balloc>
 80086cc:	f1ba 0f00 	cmp.w	sl, #0
 80086d0:	f100 0414 	add.w	r4, r0, #20
 80086d4:	dd09      	ble.n	80086ea <__lshift+0x4e>
 80086d6:	2300      	movs	r3, #0
 80086d8:	461a      	mov	r2, r3
 80086da:	4625      	mov	r5, r4
 80086dc:	3301      	adds	r3, #1
 80086de:	4553      	cmp	r3, sl
 80086e0:	f845 2b04 	str.w	r2, [r5], #4
 80086e4:	d1fa      	bne.n	80086dc <__lshift+0x40>
 80086e6:	eb04 0483 	add.w	r4, r4, r3, lsl #2
 80086ea:	693a      	ldr	r2, [r7, #16]
 80086ec:	f107 0314 	add.w	r3, r7, #20
 80086f0:	f01b 0b1f 	ands.w	fp, fp, #31
 80086f4:	eb03 0c82 	add.w	ip, r3, r2, lsl #2
 80086f8:	d021      	beq.n	800873e <__lshift+0xa2>
 80086fa:	f1cb 0a20 	rsb	sl, fp, #32
 80086fe:	2200      	movs	r2, #0
 8008700:	e000      	b.n	8008704 <__lshift+0x68>
 8008702:	462c      	mov	r4, r5
 8008704:	6819      	ldr	r1, [r3, #0]
 8008706:	4625      	mov	r5, r4
 8008708:	fa01 f10b 	lsl.w	r1, r1, fp
 800870c:	430a      	orrs	r2, r1
 800870e:	f845 2b04 	str.w	r2, [r5], #4
 8008712:	f853 2b04 	ldr.w	r2, [r3], #4
 8008716:	4563      	cmp	r3, ip
 8008718:	fa22 f20a 	lsr.w	r2, r2, sl
 800871c:	d3f1      	bcc.n	8008702 <__lshift+0x66>
 800871e:	6062      	str	r2, [r4, #4]
 8008720:	b10a      	cbz	r2, 8008726 <__lshift+0x8a>
 8008722:	f109 0602 	add.w	r6, r9, #2
 8008726:	f8d8 304c 	ldr.w	r3, [r8, #76]	; 0x4c
 800872a:	687a      	ldr	r2, [r7, #4]
 800872c:	3e01      	subs	r6, #1
 800872e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8008732:	6106      	str	r6, [r0, #16]
 8008734:	6039      	str	r1, [r7, #0]
 8008736:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800873a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800873e:	f853 2b04 	ldr.w	r2, [r3], #4
 8008742:	f844 2b04 	str.w	r2, [r4], #4
 8008746:	459c      	cmp	ip, r3
 8008748:	d9ed      	bls.n	8008726 <__lshift+0x8a>
 800874a:	f853 2b04 	ldr.w	r2, [r3], #4
 800874e:	f844 2b04 	str.w	r2, [r4], #4
 8008752:	459c      	cmp	ip, r3
 8008754:	d8f3      	bhi.n	800873e <__lshift+0xa2>
 8008756:	e7e6      	b.n	8008726 <__lshift+0x8a>

08008758 <__mcmp>:
 8008758:	6902      	ldr	r2, [r0, #16]
 800875a:	690b      	ldr	r3, [r1, #16]
 800875c:	1ad2      	subs	r2, r2, r3
 800875e:	b410      	push	{r4}
 8008760:	d115      	bne.n	800878e <__mcmp+0x36>
 8008762:	009b      	lsls	r3, r3, #2
 8008764:	3014      	adds	r0, #20
 8008766:	3114      	adds	r1, #20
 8008768:	4419      	add	r1, r3
 800876a:	4403      	add	r3, r0
 800876c:	e001      	b.n	8008772 <__mcmp+0x1a>
 800876e:	4298      	cmp	r0, r3
 8008770:	d211      	bcs.n	8008796 <__mcmp+0x3e>
 8008772:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 8008776:	f851 4d04 	ldr.w	r4, [r1, #-4]!
 800877a:	42a2      	cmp	r2, r4
 800877c:	d0f7      	beq.n	800876e <__mcmp+0x16>
 800877e:	4294      	cmp	r4, r2
 8008780:	bf94      	ite	ls
 8008782:	2001      	movls	r0, #1
 8008784:	f04f 30ff 	movhi.w	r0, #4294967295
 8008788:	f85d 4b04 	ldr.w	r4, [sp], #4
 800878c:	4770      	bx	lr
 800878e:	4610      	mov	r0, r2
 8008790:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008794:	4770      	bx	lr
 8008796:	2000      	movs	r0, #0
 8008798:	f85d 4b04 	ldr.w	r4, [sp], #4
 800879c:	4770      	bx	lr
 800879e:	bf00      	nop

080087a0 <__mdiff>:
 80087a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80087a4:	460d      	mov	r5, r1
 80087a6:	4604      	mov	r4, r0
 80087a8:	4611      	mov	r1, r2
 80087aa:	4628      	mov	r0, r5
 80087ac:	4616      	mov	r6, r2
 80087ae:	f7ff ffd3 	bl	8008758 <__mcmp>
 80087b2:	1e07      	subs	r7, r0, #0
 80087b4:	d055      	beq.n	8008862 <__mdiff+0xc2>
 80087b6:	db4e      	blt.n	8008856 <__mdiff+0xb6>
 80087b8:	f04f 0800 	mov.w	r8, #0
 80087bc:	6869      	ldr	r1, [r5, #4]
 80087be:	4620      	mov	r0, r4
 80087c0:	f7ff fd60 	bl	8008284 <_Balloc>
 80087c4:	692f      	ldr	r7, [r5, #16]
 80087c6:	6932      	ldr	r2, [r6, #16]
 80087c8:	f8c0 800c 	str.w	r8, [r0, #12]
 80087cc:	3514      	adds	r5, #20
 80087ce:	3614      	adds	r6, #20
 80087d0:	f100 0314 	add.w	r3, r0, #20
 80087d4:	eb05 0c87 	add.w	ip, r5, r7, lsl #2
 80087d8:	eb06 0882 	add.w	r8, r6, r2, lsl #2
 80087dc:	2100      	movs	r1, #0
 80087de:	f856 2b04 	ldr.w	r2, [r6], #4
 80087e2:	f855 4b04 	ldr.w	r4, [r5], #4
 80087e6:	fa1f f982 	uxth.w	r9, r2
 80087ea:	fa11 fa84 	uxtah	sl, r1, r4
 80087ee:	0c11      	lsrs	r1, r2, #16
 80087f0:	ebc1 4114 	rsb	r1, r1, r4, lsr #16
 80087f4:	ebc9 020a 	rsb	r2, r9, sl
 80087f8:	eb01 4122 	add.w	r1, r1, r2, asr #16
 80087fc:	b292      	uxth	r2, r2
 80087fe:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8008802:	45b0      	cmp	r8, r6
 8008804:	f843 2b04 	str.w	r2, [r3], #4
 8008808:	ea4f 4121 	mov.w	r1, r1, asr #16
 800880c:	462c      	mov	r4, r5
 800880e:	d8e6      	bhi.n	80087de <__mdiff+0x3e>
 8008810:	45ac      	cmp	ip, r5
 8008812:	4698      	mov	r8, r3
 8008814:	d915      	bls.n	8008842 <__mdiff+0xa2>
 8008816:	f854 6b04 	ldr.w	r6, [r4], #4
 800881a:	fa11 f186 	uxtah	r1, r1, r6
 800881e:	0c36      	lsrs	r6, r6, #16
 8008820:	eb06 4621 	add.w	r6, r6, r1, asr #16
 8008824:	b289      	uxth	r1, r1
 8008826:	ea41 4206 	orr.w	r2, r1, r6, lsl #16
 800882a:	45a4      	cmp	ip, r4
 800882c:	f843 2b04 	str.w	r2, [r3], #4
 8008830:	ea4f 4126 	mov.w	r1, r6, asr #16
 8008834:	d8ef      	bhi.n	8008816 <__mdiff+0x76>
 8008836:	43eb      	mvns	r3, r5
 8008838:	4463      	add	r3, ip
 800883a:	f023 0303 	bic.w	r3, r3, #3
 800883e:	3304      	adds	r3, #4
 8008840:	4443      	add	r3, r8
 8008842:	3b04      	subs	r3, #4
 8008844:	b922      	cbnz	r2, 8008850 <__mdiff+0xb0>
 8008846:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 800884a:	3f01      	subs	r7, #1
 800884c:	2a00      	cmp	r2, #0
 800884e:	d0fa      	beq.n	8008846 <__mdiff+0xa6>
 8008850:	6107      	str	r7, [r0, #16]
 8008852:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008856:	462b      	mov	r3, r5
 8008858:	f04f 0801 	mov.w	r8, #1
 800885c:	4635      	mov	r5, r6
 800885e:	461e      	mov	r6, r3
 8008860:	e7ac      	b.n	80087bc <__mdiff+0x1c>
 8008862:	4620      	mov	r0, r4
 8008864:	4639      	mov	r1, r7
 8008866:	f7ff fd0d 	bl	8008284 <_Balloc>
 800886a:	2301      	movs	r3, #1
 800886c:	6147      	str	r7, [r0, #20]
 800886e:	6103      	str	r3, [r0, #16]
 8008870:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08008874 <__ulp>:
 8008874:	4b0e      	ldr	r3, [pc, #56]	; (80088b0 <__ulp+0x3c>)
 8008876:	400b      	ands	r3, r1
 8008878:	f1a3 7350 	sub.w	r3, r3, #54525952	; 0x3400000
 800887c:	2b00      	cmp	r3, #0
 800887e:	dd02      	ble.n	8008886 <__ulp+0x12>
 8008880:	4619      	mov	r1, r3
 8008882:	2000      	movs	r0, #0
 8008884:	4770      	bx	lr
 8008886:	425b      	negs	r3, r3
 8008888:	151b      	asrs	r3, r3, #20
 800888a:	2b13      	cmp	r3, #19
 800888c:	dd0a      	ble.n	80088a4 <__ulp+0x30>
 800888e:	2b32      	cmp	r3, #50	; 0x32
 8008890:	bfdd      	ittte	le
 8008892:	f1c3 0333 	rsble	r3, r3, #51	; 0x33
 8008896:	2201      	movle	r2, #1
 8008898:	fa02 f303 	lslle.w	r3, r2, r3
 800889c:	2301      	movgt	r3, #1
 800889e:	2100      	movs	r1, #0
 80088a0:	4618      	mov	r0, r3
 80088a2:	4770      	bx	lr
 80088a4:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 80088a8:	fa42 f103 	asr.w	r1, r2, r3
 80088ac:	2000      	movs	r0, #0
 80088ae:	4770      	bx	lr
 80088b0:	7ff00000 	.word	0x7ff00000

080088b4 <__b2d>:
 80088b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80088b6:	6904      	ldr	r4, [r0, #16]
 80088b8:	f100 0614 	add.w	r6, r0, #20
 80088bc:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 80088c0:	460f      	mov	r7, r1
 80088c2:	f854 5c04 	ldr.w	r5, [r4, #-4]
 80088c6:	4628      	mov	r0, r5
 80088c8:	f7ff fda4 	bl	8008414 <__hi0bits>
 80088cc:	f1c0 0320 	rsb	r3, r0, #32
 80088d0:	280a      	cmp	r0, #10
 80088d2:	603b      	str	r3, [r7, #0]
 80088d4:	f1a4 0104 	sub.w	r1, r4, #4
 80088d8:	dc19      	bgt.n	800890e <__b2d+0x5a>
 80088da:	428e      	cmp	r6, r1
 80088dc:	f1c0 070b 	rsb	r7, r0, #11
 80088e0:	bf38      	it	cc
 80088e2:	f854 1c08 	ldrcc.w	r1, [r4, #-8]
 80088e6:	fa25 fc07 	lsr.w	ip, r5, r7
 80088ea:	f100 0015 	add.w	r0, r0, #21
 80088ee:	bf38      	it	cc
 80088f0:	fa21 f707 	lsrcc.w	r7, r1, r7
 80088f4:	fa05 f500 	lsl.w	r5, r5, r0
 80088f8:	f04c 537f 	orr.w	r3, ip, #1069547520	; 0x3fc00000
 80088fc:	bf28      	it	cs
 80088fe:	2700      	movcs	r7, #0
 8008900:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8008904:	ea47 0205 	orr.w	r2, r7, r5
 8008908:	4610      	mov	r0, r2
 800890a:	4619      	mov	r1, r3
 800890c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800890e:	428e      	cmp	r6, r1
 8008910:	bf36      	itet	cc
 8008912:	f1a4 0108 	subcc.w	r1, r4, #8
 8008916:	2400      	movcs	r4, #0
 8008918:	f854 4c08 	ldrcc.w	r4, [r4, #-8]
 800891c:	f1b0 070b 	subs.w	r7, r0, #11
 8008920:	d019      	beq.n	8008956 <__b2d+0xa2>
 8008922:	42b1      	cmp	r1, r6
 8008924:	bf88      	it	hi
 8008926:	f851 1c04 	ldrhi.w	r1, [r1, #-4]
 800892a:	fa05 f507 	lsl.w	r5, r5, r7
 800892e:	f1c0 002b 	rsb	r0, r0, #43	; 0x2b
 8008932:	f045 557f 	orr.w	r5, r5, #1069547520	; 0x3fc00000
 8008936:	fa24 fc00 	lsr.w	ip, r4, r0
 800893a:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 800893e:	bf8c      	ite	hi
 8008940:	fa21 f000 	lsrhi.w	r0, r1, r0
 8008944:	2000      	movls	r0, #0
 8008946:	40bc      	lsls	r4, r7
 8008948:	ea45 030c 	orr.w	r3, r5, ip
 800894c:	ea40 0204 	orr.w	r2, r0, r4
 8008950:	4610      	mov	r0, r2
 8008952:	4619      	mov	r1, r3
 8008954:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008956:	f045 537f 	orr.w	r3, r5, #1069547520	; 0x3fc00000
 800895a:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 800895e:	4622      	mov	r2, r4
 8008960:	4610      	mov	r0, r2
 8008962:	4619      	mov	r1, r3
 8008964:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008966:	bf00      	nop

08008968 <__d2b>:
 8008968:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800896c:	b083      	sub	sp, #12
 800896e:	2101      	movs	r1, #1
 8008970:	461d      	mov	r5, r3
 8008972:	f3c3 560a 	ubfx	r6, r3, #20, #11
 8008976:	4614      	mov	r4, r2
 8008978:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 800897a:	f7ff fc83 	bl	8008284 <_Balloc>
 800897e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8008982:	4680      	mov	r8, r0
 8008984:	b10e      	cbz	r6, 800898a <__d2b+0x22>
 8008986:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800898a:	9301      	str	r3, [sp, #4]
 800898c:	b324      	cbz	r4, 80089d8 <__d2b+0x70>
 800898e:	a802      	add	r0, sp, #8
 8008990:	f840 4d08 	str.w	r4, [r0, #-8]!
 8008994:	4668      	mov	r0, sp
 8008996:	f7ff fd5d 	bl	8008454 <__lo0bits>
 800899a:	2800      	cmp	r0, #0
 800899c:	d135      	bne.n	8008a0a <__d2b+0xa2>
 800899e:	e89d 000c 	ldmia.w	sp, {r2, r3}
 80089a2:	f8c8 2014 	str.w	r2, [r8, #20]
 80089a6:	2b00      	cmp	r3, #0
 80089a8:	bf0c      	ite	eq
 80089aa:	2401      	moveq	r4, #1
 80089ac:	2402      	movne	r4, #2
 80089ae:	f8c8 3018 	str.w	r3, [r8, #24]
 80089b2:	f8c8 4010 	str.w	r4, [r8, #16]
 80089b6:	b9de      	cbnz	r6, 80089f0 <__d2b+0x88>
 80089b8:	eb08 0384 	add.w	r3, r8, r4, lsl #2
 80089bc:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80089c0:	6038      	str	r0, [r7, #0]
 80089c2:	6918      	ldr	r0, [r3, #16]
 80089c4:	f7ff fd26 	bl	8008414 <__hi0bits>
 80089c8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80089ca:	ebc0 1044 	rsb	r0, r0, r4, lsl #5
 80089ce:	6018      	str	r0, [r3, #0]
 80089d0:	4640      	mov	r0, r8
 80089d2:	b003      	add	sp, #12
 80089d4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80089d8:	a801      	add	r0, sp, #4
 80089da:	f7ff fd3b 	bl	8008454 <__lo0bits>
 80089de:	2401      	movs	r4, #1
 80089e0:	9b01      	ldr	r3, [sp, #4]
 80089e2:	f8c8 3014 	str.w	r3, [r8, #20]
 80089e6:	3020      	adds	r0, #32
 80089e8:	f8c8 4010 	str.w	r4, [r8, #16]
 80089ec:	2e00      	cmp	r6, #0
 80089ee:	d0e3      	beq.n	80089b8 <__d2b+0x50>
 80089f0:	f2a6 4933 	subw	r9, r6, #1075	; 0x433
 80089f4:	eb09 0300 	add.w	r3, r9, r0
 80089f8:	603b      	str	r3, [r7, #0]
 80089fa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80089fc:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8008a00:	6018      	str	r0, [r3, #0]
 8008a02:	4640      	mov	r0, r8
 8008a04:	b003      	add	sp, #12
 8008a06:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8008a0a:	e89d 000c 	ldmia.w	sp, {r2, r3}
 8008a0e:	f1c0 0120 	rsb	r1, r0, #32
 8008a12:	fa03 f101 	lsl.w	r1, r3, r1
 8008a16:	430a      	orrs	r2, r1
 8008a18:	40c3      	lsrs	r3, r0
 8008a1a:	9301      	str	r3, [sp, #4]
 8008a1c:	f8c8 2014 	str.w	r2, [r8, #20]
 8008a20:	e7c1      	b.n	80089a6 <__d2b+0x3e>
 8008a22:	bf00      	nop

08008a24 <__ratio>:
 8008a24:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008a26:	b083      	sub	sp, #12
 8008a28:	460e      	mov	r6, r1
 8008a2a:	4669      	mov	r1, sp
 8008a2c:	4607      	mov	r7, r0
 8008a2e:	f7ff ff41 	bl	80088b4 <__b2d>
 8008a32:	4604      	mov	r4, r0
 8008a34:	460d      	mov	r5, r1
 8008a36:	4630      	mov	r0, r6
 8008a38:	a901      	add	r1, sp, #4
 8008a3a:	f7ff ff3b 	bl	80088b4 <__b2d>
 8008a3e:	4602      	mov	r2, r0
 8008a40:	460b      	mov	r3, r1
 8008a42:	e89d 0003 	ldmia.w	sp, {r0, r1}
 8008a46:	693f      	ldr	r7, [r7, #16]
 8008a48:	6936      	ldr	r6, [r6, #16]
 8008a4a:	1a41      	subs	r1, r0, r1
 8008a4c:	ebc6 0e07 	rsb	lr, r6, r7
 8008a50:	eb01 1e4e 	add.w	lr, r1, lr, lsl #5
 8008a54:	f1be 0f00 	cmp.w	lr, #0
 8008a58:	dd08      	ble.n	8008a6c <__ratio+0x48>
 8008a5a:	eb05 510e 	add.w	r1, r5, lr, lsl #20
 8008a5e:	460d      	mov	r5, r1
 8008a60:	4620      	mov	r0, r4
 8008a62:	4629      	mov	r1, r5
 8008a64:	f7fb fcfe 	bl	8004464 <__aeabi_ddiv>
 8008a68:	b003      	add	sp, #12
 8008a6a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008a6c:	eba3 570e 	sub.w	r7, r3, lr, lsl #20
 8008a70:	463b      	mov	r3, r7
 8008a72:	e7f5      	b.n	8008a60 <__ratio+0x3c>

08008a74 <_mprec_log10>:
 8008a74:	2817      	cmp	r0, #23
 8008a76:	b510      	push	{r4, lr}
 8008a78:	4604      	mov	r4, r0
 8008a7a:	dd08      	ble.n	8008a8e <_mprec_log10+0x1a>
 8008a7c:	4907      	ldr	r1, [pc, #28]	; (8008a9c <_mprec_log10+0x28>)
 8008a7e:	2000      	movs	r0, #0
 8008a80:	2200      	movs	r2, #0
 8008a82:	4b07      	ldr	r3, [pc, #28]	; (8008aa0 <_mprec_log10+0x2c>)
 8008a84:	f7fb fbc4 	bl	8004210 <__aeabi_dmul>
 8008a88:	3c01      	subs	r4, #1
 8008a8a:	d1f9      	bne.n	8008a80 <_mprec_log10+0xc>
 8008a8c:	bd10      	pop	{r4, pc}
 8008a8e:	4b05      	ldr	r3, [pc, #20]	; (8008aa4 <_mprec_log10+0x30>)
 8008a90:	eb03 04c0 	add.w	r4, r3, r0, lsl #3
 8008a94:	e9d4 0100 	ldrd	r0, r1, [r4]
 8008a98:	bd10      	pop	{r4, pc}
 8008a9a:	bf00      	nop
 8008a9c:	3ff00000 	.word	0x3ff00000
 8008aa0:	40240000 	.word	0x40240000
 8008aa4:	0800b648 	.word	0x0800b648

08008aa8 <__copybits>:
 8008aa8:	b470      	push	{r4, r5, r6}
 8008aaa:	6915      	ldr	r5, [r2, #16]
 8008aac:	f102 0314 	add.w	r3, r2, #20
 8008ab0:	3901      	subs	r1, #1
 8008ab2:	114e      	asrs	r6, r1, #5
 8008ab4:	eb03 0585 	add.w	r5, r3, r5, lsl #2
 8008ab8:	3601      	adds	r6, #1
 8008aba:	42ab      	cmp	r3, r5
 8008abc:	eb00 0686 	add.w	r6, r0, r6, lsl #2
 8008ac0:	d20c      	bcs.n	8008adc <__copybits+0x34>
 8008ac2:	4601      	mov	r1, r0
 8008ac4:	f853 4b04 	ldr.w	r4, [r3], #4
 8008ac8:	f841 4b04 	str.w	r4, [r1], #4
 8008acc:	429d      	cmp	r5, r3
 8008ace:	d8f9      	bhi.n	8008ac4 <__copybits+0x1c>
 8008ad0:	1aab      	subs	r3, r5, r2
 8008ad2:	3b15      	subs	r3, #21
 8008ad4:	f023 0303 	bic.w	r3, r3, #3
 8008ad8:	3304      	adds	r3, #4
 8008ada:	4418      	add	r0, r3
 8008adc:	4286      	cmp	r6, r0
 8008ade:	d904      	bls.n	8008aea <__copybits+0x42>
 8008ae0:	2300      	movs	r3, #0
 8008ae2:	f840 3b04 	str.w	r3, [r0], #4
 8008ae6:	4286      	cmp	r6, r0
 8008ae8:	d8fb      	bhi.n	8008ae2 <__copybits+0x3a>
 8008aea:	bc70      	pop	{r4, r5, r6}
 8008aec:	4770      	bx	lr
 8008aee:	bf00      	nop

08008af0 <__any_on>:
 8008af0:	6903      	ldr	r3, [r0, #16]
 8008af2:	114a      	asrs	r2, r1, #5
 8008af4:	4293      	cmp	r3, r2
 8008af6:	b410      	push	{r4}
 8008af8:	f100 0414 	add.w	r4, r0, #20
 8008afc:	da10      	bge.n	8008b20 <__any_on+0x30>
 8008afe:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 8008b02:	429c      	cmp	r4, r3
 8008b04:	d221      	bcs.n	8008b4a <__any_on+0x5a>
 8008b06:	f853 0c04 	ldr.w	r0, [r3, #-4]
 8008b0a:	3b04      	subs	r3, #4
 8008b0c:	b118      	cbz	r0, 8008b16 <__any_on+0x26>
 8008b0e:	e015      	b.n	8008b3c <__any_on+0x4c>
 8008b10:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 8008b14:	b992      	cbnz	r2, 8008b3c <__any_on+0x4c>
 8008b16:	429c      	cmp	r4, r3
 8008b18:	d3fa      	bcc.n	8008b10 <__any_on+0x20>
 8008b1a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008b1e:	4770      	bx	lr
 8008b20:	dd10      	ble.n	8008b44 <__any_on+0x54>
 8008b22:	f011 011f 	ands.w	r1, r1, #31
 8008b26:	d00d      	beq.n	8008b44 <__any_on+0x54>
 8008b28:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
 8008b2c:	fa20 f301 	lsr.w	r3, r0, r1
 8008b30:	fa03 f101 	lsl.w	r1, r3, r1
 8008b34:	4281      	cmp	r1, r0
 8008b36:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 8008b3a:	d0e2      	beq.n	8008b02 <__any_on+0x12>
 8008b3c:	2001      	movs	r0, #1
 8008b3e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008b42:	4770      	bx	lr
 8008b44:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 8008b48:	e7db      	b.n	8008b02 <__any_on+0x12>
 8008b4a:	2000      	movs	r0, #0
 8008b4c:	e7e5      	b.n	8008b1a <__any_on+0x2a>
 8008b4e:	bf00      	nop

08008b50 <_sbrk_r>:
 8008b50:	b538      	push	{r3, r4, r5, lr}
 8008b52:	4c07      	ldr	r4, [pc, #28]	; (8008b70 <_sbrk_r+0x20>)
 8008b54:	2300      	movs	r3, #0
 8008b56:	4605      	mov	r5, r0
 8008b58:	4608      	mov	r0, r1
 8008b5a:	6023      	str	r3, [r4, #0]
 8008b5c:	f7fa febe 	bl	80038dc <_sbrk>
 8008b60:	1c43      	adds	r3, r0, #1
 8008b62:	d000      	beq.n	8008b66 <_sbrk_r+0x16>
 8008b64:	bd38      	pop	{r3, r4, r5, pc}
 8008b66:	6823      	ldr	r3, [r4, #0]
 8008b68:	2b00      	cmp	r3, #0
 8008b6a:	d0fb      	beq.n	8008b64 <_sbrk_r+0x14>
 8008b6c:	602b      	str	r3, [r5, #0]
 8008b6e:	bd38      	pop	{r3, r4, r5, pc}
 8008b70:	20003658 	.word	0x20003658

08008b74 <__fpclassifyd>:
 8008b74:	f031 4300 	bics.w	r3, r1, #2147483648	; 0x80000000
 8008b78:	b410      	push	{r4}
 8008b7a:	d008      	beq.n	8008b8e <__fpclassifyd+0x1a>
 8008b7c:	4a0f      	ldr	r2, [pc, #60]	; (8008bbc <__fpclassifyd+0x48>)
 8008b7e:	f5a3 1480 	sub.w	r4, r3, #1048576	; 0x100000
 8008b82:	4294      	cmp	r4, r2
 8008b84:	d80a      	bhi.n	8008b9c <__fpclassifyd+0x28>
 8008b86:	2004      	movs	r0, #4
 8008b88:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008b8c:	4770      	bx	lr
 8008b8e:	2800      	cmp	r0, #0
 8008b90:	bf0c      	ite	eq
 8008b92:	2002      	moveq	r0, #2
 8008b94:	2003      	movne	r0, #3
 8008b96:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008b9a:	4770      	bx	lr
 8008b9c:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8008ba0:	d201      	bcs.n	8008ba6 <__fpclassifyd+0x32>
 8008ba2:	2003      	movs	r0, #3
 8008ba4:	e7f7      	b.n	8008b96 <__fpclassifyd+0x22>
 8008ba6:	4a06      	ldr	r2, [pc, #24]	; (8008bc0 <__fpclassifyd+0x4c>)
 8008ba8:	4293      	cmp	r3, r2
 8008baa:	d001      	beq.n	8008bb0 <__fpclassifyd+0x3c>
 8008bac:	2000      	movs	r0, #0
 8008bae:	e7f2      	b.n	8008b96 <__fpclassifyd+0x22>
 8008bb0:	f1d0 0001 	rsbs	r0, r0, #1
 8008bb4:	bf38      	it	cc
 8008bb6:	2000      	movcc	r0, #0
 8008bb8:	e7ed      	b.n	8008b96 <__fpclassifyd+0x22>
 8008bba:	bf00      	nop
 8008bbc:	7fdfffff 	.word	0x7fdfffff
 8008bc0:	7ff00000 	.word	0x7ff00000

08008bc4 <__sread>:
 8008bc4:	b510      	push	{r4, lr}
 8008bc6:	460c      	mov	r4, r1
 8008bc8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008bcc:	f001 fa5c 	bl	800a088 <_read_r>
 8008bd0:	2800      	cmp	r0, #0
 8008bd2:	db03      	blt.n	8008bdc <__sread+0x18>
 8008bd4:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8008bd6:	4403      	add	r3, r0
 8008bd8:	6523      	str	r3, [r4, #80]	; 0x50
 8008bda:	bd10      	pop	{r4, pc}
 8008bdc:	89a3      	ldrh	r3, [r4, #12]
 8008bde:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008be2:	81a3      	strh	r3, [r4, #12]
 8008be4:	bd10      	pop	{r4, pc}
 8008be6:	bf00      	nop

08008be8 <__seofread>:
 8008be8:	2000      	movs	r0, #0
 8008bea:	4770      	bx	lr

08008bec <__swrite>:
 8008bec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008bf0:	460c      	mov	r4, r1
 8008bf2:	8989      	ldrh	r1, [r1, #12]
 8008bf4:	461d      	mov	r5, r3
 8008bf6:	05cb      	lsls	r3, r1, #23
 8008bf8:	4616      	mov	r6, r2
 8008bfa:	4607      	mov	r7, r0
 8008bfc:	d506      	bpl.n	8008c0c <__swrite+0x20>
 8008bfe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008c02:	2200      	movs	r2, #0
 8008c04:	2302      	movs	r3, #2
 8008c06:	f001 f9cb 	bl	8009fa0 <_lseek_r>
 8008c0a:	89a1      	ldrh	r1, [r4, #12]
 8008c0c:	f421 5180 	bic.w	r1, r1, #4096	; 0x1000
 8008c10:	81a1      	strh	r1, [r4, #12]
 8008c12:	4638      	mov	r0, r7
 8008c14:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008c18:	4632      	mov	r2, r6
 8008c1a:	462b      	mov	r3, r5
 8008c1c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8008c20:	f000 befc 	b.w	8009a1c <_write_r>

08008c24 <__sseek>:
 8008c24:	b510      	push	{r4, lr}
 8008c26:	460c      	mov	r4, r1
 8008c28:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008c2c:	f001 f9b8 	bl	8009fa0 <_lseek_r>
 8008c30:	89a3      	ldrh	r3, [r4, #12]
 8008c32:	1c42      	adds	r2, r0, #1
 8008c34:	bf0e      	itee	eq
 8008c36:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8008c3a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8008c3e:	6520      	strne	r0, [r4, #80]	; 0x50
 8008c40:	81a3      	strh	r3, [r4, #12]
 8008c42:	bd10      	pop	{r4, pc}

08008c44 <__sclose>:
 8008c44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008c48:	f000 bf2c 	b.w	8009aa4 <_close_r>

08008c4c <strlen>:
 8008c4c:	f020 0103 	bic.w	r1, r0, #3
 8008c50:	f010 0003 	ands.w	r0, r0, #3
 8008c54:	f1c0 0000 	rsb	r0, r0, #0
 8008c58:	f851 3b04 	ldr.w	r3, [r1], #4
 8008c5c:	f100 0c04 	add.w	ip, r0, #4
 8008c60:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
 8008c64:	f06f 0200 	mvn.w	r2, #0
 8008c68:	bf1c      	itt	ne
 8008c6a:	fa22 f20c 	lsrne.w	r2, r2, ip
 8008c6e:	4313      	orrne	r3, r2
 8008c70:	f04f 0c01 	mov.w	ip, #1
 8008c74:	ea4c 2c0c 	orr.w	ip, ip, ip, lsl #8
 8008c78:	ea4c 4c0c 	orr.w	ip, ip, ip, lsl #16
 8008c7c:	eba3 020c 	sub.w	r2, r3, ip
 8008c80:	ea22 0203 	bic.w	r2, r2, r3
 8008c84:	ea12 12cc 	ands.w	r2, r2, ip, lsl #7
 8008c88:	bf04      	itt	eq
 8008c8a:	f851 3b04 	ldreq.w	r3, [r1], #4
 8008c8e:	3004      	addeq	r0, #4
 8008c90:	d0f4      	beq.n	8008c7c <strlen+0x30>
 8008c92:	f1c2 0100 	rsb	r1, r2, #0
 8008c96:	ea02 0201 	and.w	r2, r2, r1
 8008c9a:	fab2 f282 	clz	r2, r2
 8008c9e:	f1c2 021f 	rsb	r2, r2, #31
 8008ca2:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8008ca6:	4770      	bx	lr

08008ca8 <__sprint_r.part.0>:
 8008ca8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8008caa:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008cae:	049c      	lsls	r4, r3, #18
 8008cb0:	460e      	mov	r6, r1
 8008cb2:	4680      	mov	r8, r0
 8008cb4:	4691      	mov	r9, r2
 8008cb6:	d52a      	bpl.n	8008d0e <__sprint_r.part.0+0x66>
 8008cb8:	6893      	ldr	r3, [r2, #8]
 8008cba:	6812      	ldr	r2, [r2, #0]
 8008cbc:	f102 0a08 	add.w	sl, r2, #8
 8008cc0:	b31b      	cbz	r3, 8008d0a <__sprint_r.part.0+0x62>
 8008cc2:	e91a 00a0 	ldmdb	sl, {r5, r7}
 8008cc6:	08bf      	lsrs	r7, r7, #2
 8008cc8:	d017      	beq.n	8008cfa <__sprint_r.part.0+0x52>
 8008cca:	3d04      	subs	r5, #4
 8008ccc:	2400      	movs	r4, #0
 8008cce:	e001      	b.n	8008cd4 <__sprint_r.part.0+0x2c>
 8008cd0:	42a7      	cmp	r7, r4
 8008cd2:	d010      	beq.n	8008cf6 <__sprint_r.part.0+0x4e>
 8008cd4:	4640      	mov	r0, r8
 8008cd6:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8008cda:	4632      	mov	r2, r6
 8008cdc:	f000 ff3c 	bl	8009b58 <_fputwc_r>
 8008ce0:	1c43      	adds	r3, r0, #1
 8008ce2:	f104 0401 	add.w	r4, r4, #1
 8008ce6:	d1f3      	bne.n	8008cd0 <__sprint_r.part.0+0x28>
 8008ce8:	2300      	movs	r3, #0
 8008cea:	f8c9 3008 	str.w	r3, [r9, #8]
 8008cee:	f8c9 3004 	str.w	r3, [r9, #4]
 8008cf2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008cf6:	f8d9 3008 	ldr.w	r3, [r9, #8]
 8008cfa:	eba3 0387 	sub.w	r3, r3, r7, lsl #2
 8008cfe:	f8c9 3008 	str.w	r3, [r9, #8]
 8008d02:	f10a 0a08 	add.w	sl, sl, #8
 8008d06:	2b00      	cmp	r3, #0
 8008d08:	d1db      	bne.n	8008cc2 <__sprint_r.part.0+0x1a>
 8008d0a:	2000      	movs	r0, #0
 8008d0c:	e7ec      	b.n	8008ce8 <__sprint_r.part.0+0x40>
 8008d0e:	f000 ffa9 	bl	8009c64 <__sfvwrite_r>
 8008d12:	2300      	movs	r3, #0
 8008d14:	f8c9 3008 	str.w	r3, [r9, #8]
 8008d18:	f8c9 3004 	str.w	r3, [r9, #4]
 8008d1c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08008d20 <__sprint_r>:
 8008d20:	6893      	ldr	r3, [r2, #8]
 8008d22:	b410      	push	{r4}
 8008d24:	b11b      	cbz	r3, 8008d2e <__sprint_r+0xe>
 8008d26:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008d2a:	f7ff bfbd 	b.w	8008ca8 <__sprint_r.part.0>
 8008d2e:	4618      	mov	r0, r3
 8008d30:	6053      	str	r3, [r2, #4]
 8008d32:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008d36:	4770      	bx	lr

08008d38 <_vfiprintf_r>:
 8008d38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008d3c:	b0b1      	sub	sp, #196	; 0xc4
 8008d3e:	461c      	mov	r4, r3
 8008d40:	9102      	str	r1, [sp, #8]
 8008d42:	4690      	mov	r8, r2
 8008d44:	9308      	str	r3, [sp, #32]
 8008d46:	9006      	str	r0, [sp, #24]
 8008d48:	b118      	cbz	r0, 8008d52 <_vfiprintf_r+0x1a>
 8008d4a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008d4c:	2b00      	cmp	r3, #0
 8008d4e:	f000 80e8 	beq.w	8008f22 <_vfiprintf_r+0x1ea>
 8008d52:	9d02      	ldr	r5, [sp, #8]
 8008d54:	89ab      	ldrh	r3, [r5, #12]
 8008d56:	b29a      	uxth	r2, r3
 8008d58:	0490      	lsls	r0, r2, #18
 8008d5a:	d407      	bmi.n	8008d6c <_vfiprintf_r+0x34>
 8008d5c:	6e6a      	ldr	r2, [r5, #100]	; 0x64
 8008d5e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008d62:	f422 5100 	bic.w	r1, r2, #8192	; 0x2000
 8008d66:	81ab      	strh	r3, [r5, #12]
 8008d68:	b29a      	uxth	r2, r3
 8008d6a:	6669      	str	r1, [r5, #100]	; 0x64
 8008d6c:	0711      	lsls	r1, r2, #28
 8008d6e:	f140 80b7 	bpl.w	8008ee0 <_vfiprintf_r+0x1a8>
 8008d72:	f8dd b008 	ldr.w	fp, [sp, #8]
 8008d76:	f8db 3010 	ldr.w	r3, [fp, #16]
 8008d7a:	2b00      	cmp	r3, #0
 8008d7c:	f000 80b0 	beq.w	8008ee0 <_vfiprintf_r+0x1a8>
 8008d80:	f002 021a 	and.w	r2, r2, #26
 8008d84:	2a0a      	cmp	r2, #10
 8008d86:	f000 80b7 	beq.w	8008ef8 <_vfiprintf_r+0x1c0>
 8008d8a:	2300      	movs	r3, #0
 8008d8c:	f10d 0980 	add.w	r9, sp, #128	; 0x80
 8008d90:	930a      	str	r3, [sp, #40]	; 0x28
 8008d92:	9315      	str	r3, [sp, #84]	; 0x54
 8008d94:	9314      	str	r3, [sp, #80]	; 0x50
 8008d96:	9309      	str	r3, [sp, #36]	; 0x24
 8008d98:	f8cd 904c 	str.w	r9, [sp, #76]	; 0x4c
 8008d9c:	464e      	mov	r6, r9
 8008d9e:	f898 3000 	ldrb.w	r3, [r8]
 8008da2:	2b00      	cmp	r3, #0
 8008da4:	f000 84c4 	beq.w	8009730 <_vfiprintf_r+0x9f8>
 8008da8:	2b25      	cmp	r3, #37	; 0x25
 8008daa:	f000 84c1 	beq.w	8009730 <_vfiprintf_r+0x9f8>
 8008dae:	f108 0201 	add.w	r2, r8, #1
 8008db2:	e001      	b.n	8008db8 <_vfiprintf_r+0x80>
 8008db4:	2b25      	cmp	r3, #37	; 0x25
 8008db6:	d004      	beq.n	8008dc2 <_vfiprintf_r+0x8a>
 8008db8:	4614      	mov	r4, r2
 8008dba:	3201      	adds	r2, #1
 8008dbc:	7823      	ldrb	r3, [r4, #0]
 8008dbe:	2b00      	cmp	r3, #0
 8008dc0:	d1f8      	bne.n	8008db4 <_vfiprintf_r+0x7c>
 8008dc2:	ebc8 0504 	rsb	r5, r8, r4
 8008dc6:	b195      	cbz	r5, 8008dee <_vfiprintf_r+0xb6>
 8008dc8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8008dca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8008dcc:	f8c6 8000 	str.w	r8, [r6]
 8008dd0:	3301      	adds	r3, #1
 8008dd2:	442a      	add	r2, r5
 8008dd4:	2b07      	cmp	r3, #7
 8008dd6:	6075      	str	r5, [r6, #4]
 8008dd8:	9215      	str	r2, [sp, #84]	; 0x54
 8008dda:	9314      	str	r3, [sp, #80]	; 0x50
 8008ddc:	dd7b      	ble.n	8008ed6 <_vfiprintf_r+0x19e>
 8008dde:	2a00      	cmp	r2, #0
 8008de0:	f040 84d4 	bne.w	800978c <_vfiprintf_r+0xa54>
 8008de4:	9809      	ldr	r0, [sp, #36]	; 0x24
 8008de6:	9214      	str	r2, [sp, #80]	; 0x50
 8008de8:	4428      	add	r0, r5
 8008dea:	464e      	mov	r6, r9
 8008dec:	9009      	str	r0, [sp, #36]	; 0x24
 8008dee:	7823      	ldrb	r3, [r4, #0]
 8008df0:	2b00      	cmp	r3, #0
 8008df2:	f000 83e9 	beq.w	80095c8 <_vfiprintf_r+0x890>
 8008df6:	2100      	movs	r1, #0
 8008df8:	f04f 0200 	mov.w	r2, #0
 8008dfc:	f04f 3cff 	mov.w	ip, #4294967295
 8008e00:	7863      	ldrb	r3, [r4, #1]
 8008e02:	f88d 2047 	strb.w	r2, [sp, #71]	; 0x47
 8008e06:	9104      	str	r1, [sp, #16]
 8008e08:	468a      	mov	sl, r1
 8008e0a:	f104 0801 	add.w	r8, r4, #1
 8008e0e:	4608      	mov	r0, r1
 8008e10:	4665      	mov	r5, ip
 8008e12:	f108 0801 	add.w	r8, r8, #1
 8008e16:	f1a3 0220 	sub.w	r2, r3, #32
 8008e1a:	2a58      	cmp	r2, #88	; 0x58
 8008e1c:	f200 82d5 	bhi.w	80093ca <_vfiprintf_r+0x692>
 8008e20:	e8df f012 	tbh	[pc, r2, lsl #1]
 8008e24:	02d302c7 	.word	0x02d302c7
 8008e28:	02ce02d3 	.word	0x02ce02d3
 8008e2c:	02d302d3 	.word	0x02d302d3
 8008e30:	02d302d3 	.word	0x02d302d3
 8008e34:	02d302d3 	.word	0x02d302d3
 8008e38:	028b027e 	.word	0x028b027e
 8008e3c:	008402d3 	.word	0x008402d3
 8008e40:	02d3028f 	.word	0x02d3028f
 8008e44:	0194012b 	.word	0x0194012b
 8008e48:	01940194 	.word	0x01940194
 8008e4c:	01940194 	.word	0x01940194
 8008e50:	01940194 	.word	0x01940194
 8008e54:	01940194 	.word	0x01940194
 8008e58:	02d302d3 	.word	0x02d302d3
 8008e5c:	02d302d3 	.word	0x02d302d3
 8008e60:	02d302d3 	.word	0x02d302d3
 8008e64:	02d302d3 	.word	0x02d302d3
 8008e68:	02d302d3 	.word	0x02d302d3
 8008e6c:	02d30130 	.word	0x02d30130
 8008e70:	02d302d3 	.word	0x02d302d3
 8008e74:	02d302d3 	.word	0x02d302d3
 8008e78:	02d302d3 	.word	0x02d302d3
 8008e7c:	02d302d3 	.word	0x02d302d3
 8008e80:	017902d3 	.word	0x017902d3
 8008e84:	02d302d3 	.word	0x02d302d3
 8008e88:	02d302d3 	.word	0x02d302d3
 8008e8c:	01a202d3 	.word	0x01a202d3
 8008e90:	02d302d3 	.word	0x02d302d3
 8008e94:	02d301bd 	.word	0x02d301bd
 8008e98:	02d302d3 	.word	0x02d302d3
 8008e9c:	02d302d3 	.word	0x02d302d3
 8008ea0:	02d302d3 	.word	0x02d302d3
 8008ea4:	02d302d3 	.word	0x02d302d3
 8008ea8:	01e202d3 	.word	0x01e202d3
 8008eac:	02d301f8 	.word	0x02d301f8
 8008eb0:	02d302d3 	.word	0x02d302d3
 8008eb4:	01f80214 	.word	0x01f80214
 8008eb8:	02d302d3 	.word	0x02d302d3
 8008ebc:	02d30219 	.word	0x02d30219
 8008ec0:	00890226 	.word	0x00890226
 8008ec4:	02790264 	.word	0x02790264
 8008ec8:	023802d3 	.word	0x023802d3
 8008ecc:	011902d3 	.word	0x011902d3
 8008ed0:	02d302d3 	.word	0x02d302d3
 8008ed4:	02ab      	.short	0x02ab
 8008ed6:	3608      	adds	r6, #8
 8008ed8:	9809      	ldr	r0, [sp, #36]	; 0x24
 8008eda:	4428      	add	r0, r5
 8008edc:	9009      	str	r0, [sp, #36]	; 0x24
 8008ede:	e786      	b.n	8008dee <_vfiprintf_r+0xb6>
 8008ee0:	9806      	ldr	r0, [sp, #24]
 8008ee2:	9902      	ldr	r1, [sp, #8]
 8008ee4:	f7fd fa90 	bl	8006408 <__swsetup_r>
 8008ee8:	b9b0      	cbnz	r0, 8008f18 <_vfiprintf_r+0x1e0>
 8008eea:	9d02      	ldr	r5, [sp, #8]
 8008eec:	89aa      	ldrh	r2, [r5, #12]
 8008eee:	f002 021a 	and.w	r2, r2, #26
 8008ef2:	2a0a      	cmp	r2, #10
 8008ef4:	f47f af49 	bne.w	8008d8a <_vfiprintf_r+0x52>
 8008ef8:	f8dd b008 	ldr.w	fp, [sp, #8]
 8008efc:	f9bb 300e 	ldrsh.w	r3, [fp, #14]
 8008f00:	2b00      	cmp	r3, #0
 8008f02:	f6ff af42 	blt.w	8008d8a <_vfiprintf_r+0x52>
 8008f06:	9806      	ldr	r0, [sp, #24]
 8008f08:	4659      	mov	r1, fp
 8008f0a:	4642      	mov	r2, r8
 8008f0c:	4623      	mov	r3, r4
 8008f0e:	f000 fd49 	bl	80099a4 <__sbprintf>
 8008f12:	b031      	add	sp, #196	; 0xc4
 8008f14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f18:	f04f 30ff 	mov.w	r0, #4294967295
 8008f1c:	b031      	add	sp, #196	; 0xc4
 8008f1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f22:	f7fe fb87 	bl	8007634 <__sinit>
 8008f26:	e714      	b.n	8008d52 <_vfiprintf_r+0x1a>
 8008f28:	4240      	negs	r0, r0
 8008f2a:	9308      	str	r3, [sp, #32]
 8008f2c:	f04a 0a04 	orr.w	sl, sl, #4
 8008f30:	f898 3000 	ldrb.w	r3, [r8]
 8008f34:	e76d      	b.n	8008e12 <_vfiprintf_r+0xda>
 8008f36:	f01a 0320 	ands.w	r3, sl, #32
 8008f3a:	9004      	str	r0, [sp, #16]
 8008f3c:	46ac      	mov	ip, r5
 8008f3e:	f000 80f2 	beq.w	8009126 <_vfiprintf_r+0x3ee>
 8008f42:	f8dd b020 	ldr.w	fp, [sp, #32]
 8008f46:	f10b 0307 	add.w	r3, fp, #7
 8008f4a:	f023 0307 	bic.w	r3, r3, #7
 8008f4e:	f103 0408 	add.w	r4, r3, #8
 8008f52:	9408      	str	r4, [sp, #32]
 8008f54:	e9d3 4500 	ldrd	r4, r5, [r3]
 8008f58:	2300      	movs	r3, #0
 8008f5a:	f04f 0000 	mov.w	r0, #0
 8008f5e:	2100      	movs	r1, #0
 8008f60:	f88d 0047 	strb.w	r0, [sp, #71]	; 0x47
 8008f64:	f8cd c014 	str.w	ip, [sp, #20]
 8008f68:	9107      	str	r1, [sp, #28]
 8008f6a:	f1bc 0f00 	cmp.w	ip, #0
 8008f6e:	bfa8      	it	ge
 8008f70:	f02a 0a80 	bicge.w	sl, sl, #128	; 0x80
 8008f74:	ea54 0205 	orrs.w	r2, r4, r5
 8008f78:	f040 80ad 	bne.w	80090d6 <_vfiprintf_r+0x39e>
 8008f7c:	f1bc 0f00 	cmp.w	ip, #0
 8008f80:	f040 80a9 	bne.w	80090d6 <_vfiprintf_r+0x39e>
 8008f84:	2b00      	cmp	r3, #0
 8008f86:	f040 83bc 	bne.w	8009702 <_vfiprintf_r+0x9ca>
 8008f8a:	f01a 0f01 	tst.w	sl, #1
 8008f8e:	f000 83b8 	beq.w	8009702 <_vfiprintf_r+0x9ca>
 8008f92:	af30      	add	r7, sp, #192	; 0xc0
 8008f94:	2330      	movs	r3, #48	; 0x30
 8008f96:	f807 3d41 	strb.w	r3, [r7, #-65]!
 8008f9a:	ebc7 0409 	rsb	r4, r7, r9
 8008f9e:	9405      	str	r4, [sp, #20]
 8008fa0:	f8dd b014 	ldr.w	fp, [sp, #20]
 8008fa4:	9c07      	ldr	r4, [sp, #28]
 8008fa6:	45e3      	cmp	fp, ip
 8008fa8:	bfb8      	it	lt
 8008faa:	46e3      	movlt	fp, ip
 8008fac:	f8cd b00c 	str.w	fp, [sp, #12]
 8008fb0:	b11c      	cbz	r4, 8008fba <_vfiprintf_r+0x282>
 8008fb2:	f10b 0b01 	add.w	fp, fp, #1
 8008fb6:	f8cd b00c 	str.w	fp, [sp, #12]
 8008fba:	f01a 0502 	ands.w	r5, sl, #2
 8008fbe:	9507      	str	r5, [sp, #28]
 8008fc0:	d005      	beq.n	8008fce <_vfiprintf_r+0x296>
 8008fc2:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8008fc6:	f10b 0b02 	add.w	fp, fp, #2
 8008fca:	f8cd b00c 	str.w	fp, [sp, #12]
 8008fce:	f01a 0384 	ands.w	r3, sl, #132	; 0x84
 8008fd2:	930b      	str	r3, [sp, #44]	; 0x2c
 8008fd4:	f040 8217 	bne.w	8009406 <_vfiprintf_r+0x6ce>
 8008fd8:	9d04      	ldr	r5, [sp, #16]
 8008fda:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8008fde:	ebcb 0405 	rsb	r4, fp, r5
 8008fe2:	2c00      	cmp	r4, #0
 8008fe4:	f340 820f 	ble.w	8009406 <_vfiprintf_r+0x6ce>
 8008fe8:	2c10      	cmp	r4, #16
 8008fea:	f340 8488 	ble.w	80098fe <_vfiprintf_r+0xbc6>
 8008fee:	4dbd      	ldr	r5, [pc, #756]	; (80092e4 <_vfiprintf_r+0x5ac>)
 8008ff0:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8008ff2:	9814      	ldr	r0, [sp, #80]	; 0x50
 8008ff4:	462b      	mov	r3, r5
 8008ff6:	f04f 0b10 	mov.w	fp, #16
 8008ffa:	4625      	mov	r5, r4
 8008ffc:	4664      	mov	r4, ip
 8008ffe:	46b4      	mov	ip, r6
 8009000:	461e      	mov	r6, r3
 8009002:	e006      	b.n	8009012 <_vfiprintf_r+0x2da>
 8009004:	1c83      	adds	r3, r0, #2
 8009006:	f10c 0c08 	add.w	ip, ip, #8
 800900a:	4608      	mov	r0, r1
 800900c:	3d10      	subs	r5, #16
 800900e:	2d10      	cmp	r5, #16
 8009010:	dd11      	ble.n	8009036 <_vfiprintf_r+0x2fe>
 8009012:	1c41      	adds	r1, r0, #1
 8009014:	3210      	adds	r2, #16
 8009016:	2907      	cmp	r1, #7
 8009018:	9215      	str	r2, [sp, #84]	; 0x54
 800901a:	e88c 0840 	stmia.w	ip, {r6, fp}
 800901e:	9114      	str	r1, [sp, #80]	; 0x50
 8009020:	ddf0      	ble.n	8009004 <_vfiprintf_r+0x2cc>
 8009022:	2a00      	cmp	r2, #0
 8009024:	f040 81e2 	bne.w	80093ec <_vfiprintf_r+0x6b4>
 8009028:	3d10      	subs	r5, #16
 800902a:	2d10      	cmp	r5, #16
 800902c:	f04f 0301 	mov.w	r3, #1
 8009030:	4610      	mov	r0, r2
 8009032:	46cc      	mov	ip, r9
 8009034:	dced      	bgt.n	8009012 <_vfiprintf_r+0x2da>
 8009036:	4631      	mov	r1, r6
 8009038:	4666      	mov	r6, ip
 800903a:	46a4      	mov	ip, r4
 800903c:	462c      	mov	r4, r5
 800903e:	460d      	mov	r5, r1
 8009040:	4422      	add	r2, r4
 8009042:	2b07      	cmp	r3, #7
 8009044:	9215      	str	r2, [sp, #84]	; 0x54
 8009046:	6035      	str	r5, [r6, #0]
 8009048:	6074      	str	r4, [r6, #4]
 800904a:	9314      	str	r3, [sp, #80]	; 0x50
 800904c:	f300 8369 	bgt.w	8009722 <_vfiprintf_r+0x9ea>
 8009050:	3608      	adds	r6, #8
 8009052:	1c59      	adds	r1, r3, #1
 8009054:	e1da      	b.n	800940c <_vfiprintf_r+0x6d4>
 8009056:	f01a 0f20 	tst.w	sl, #32
 800905a:	9004      	str	r0, [sp, #16]
 800905c:	46ac      	mov	ip, r5
 800905e:	f000 808b 	beq.w	8009178 <_vfiprintf_r+0x440>
 8009062:	9d08      	ldr	r5, [sp, #32]
 8009064:	1deb      	adds	r3, r5, #7
 8009066:	f023 0307 	bic.w	r3, r3, #7
 800906a:	f103 0b08 	add.w	fp, r3, #8
 800906e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8009072:	f8cd b020 	str.w	fp, [sp, #32]
 8009076:	2301      	movs	r3, #1
 8009078:	e76f      	b.n	8008f5a <_vfiprintf_r+0x222>
 800907a:	f04a 0a80 	orr.w	sl, sl, #128	; 0x80
 800907e:	f898 3000 	ldrb.w	r3, [r8]
 8009082:	e6c6      	b.n	8008e12 <_vfiprintf_r+0xda>
 8009084:	f04a 0a10 	orr.w	sl, sl, #16
 8009088:	f01a 0f20 	tst.w	sl, #32
 800908c:	9004      	str	r0, [sp, #16]
 800908e:	46ac      	mov	ip, r5
 8009090:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
 8009094:	f000 80c6 	beq.w	8009224 <_vfiprintf_r+0x4ec>
 8009098:	9c08      	ldr	r4, [sp, #32]
 800909a:	1de1      	adds	r1, r4, #7
 800909c:	f021 0107 	bic.w	r1, r1, #7
 80090a0:	e9d1 2300 	ldrd	r2, r3, [r1]
 80090a4:	3108      	adds	r1, #8
 80090a6:	9108      	str	r1, [sp, #32]
 80090a8:	4614      	mov	r4, r2
 80090aa:	461d      	mov	r5, r3
 80090ac:	2a00      	cmp	r2, #0
 80090ae:	f173 0000 	sbcs.w	r0, r3, #0
 80090b2:	f2c0 83cd 	blt.w	8009850 <_vfiprintf_r+0xb18>
 80090b6:	f1bc 0f00 	cmp.w	ip, #0
 80090ba:	f89d 1047 	ldrb.w	r1, [sp, #71]	; 0x47
 80090be:	9107      	str	r1, [sp, #28]
 80090c0:	bfa8      	it	ge
 80090c2:	f02a 0a80 	bicge.w	sl, sl, #128	; 0x80
 80090c6:	ea54 0205 	orrs.w	r2, r4, r5
 80090ca:	f8cd c014 	str.w	ip, [sp, #20]
 80090ce:	f04f 0301 	mov.w	r3, #1
 80090d2:	f43f af53 	beq.w	8008f7c <_vfiprintf_r+0x244>
 80090d6:	2b01      	cmp	r3, #1
 80090d8:	f000 8315 	beq.w	8009706 <_vfiprintf_r+0x9ce>
 80090dc:	2b02      	cmp	r3, #2
 80090de:	f10d 037f 	add.w	r3, sp, #127	; 0x7f
 80090e2:	f040 8248 	bne.w	8009576 <_vfiprintf_r+0x83e>
 80090e6:	980a      	ldr	r0, [sp, #40]	; 0x28
 80090e8:	4619      	mov	r1, r3
 80090ea:	0922      	lsrs	r2, r4, #4
 80090ec:	f004 040f 	and.w	r4, r4, #15
 80090f0:	ea42 7205 	orr.w	r2, r2, r5, lsl #28
 80090f4:	460f      	mov	r7, r1
 80090f6:	092b      	lsrs	r3, r5, #4
 80090f8:	5d01      	ldrb	r1, [r0, r4]
 80090fa:	7039      	strb	r1, [r7, #0]
 80090fc:	ea52 0b03 	orrs.w	fp, r2, r3
 8009100:	4614      	mov	r4, r2
 8009102:	461d      	mov	r5, r3
 8009104:	f107 31ff 	add.w	r1, r7, #4294967295
 8009108:	d1ef      	bne.n	80090ea <_vfiprintf_r+0x3b2>
 800910a:	e9cd 230e 	strd	r2, r3, [sp, #56]	; 0x38
 800910e:	ebc7 0309 	rsb	r3, r7, r9
 8009112:	9305      	str	r3, [sp, #20]
 8009114:	e744      	b.n	8008fa0 <_vfiprintf_r+0x268>
 8009116:	f04a 0a10 	orr.w	sl, sl, #16
 800911a:	f01a 0320 	ands.w	r3, sl, #32
 800911e:	9004      	str	r0, [sp, #16]
 8009120:	46ac      	mov	ip, r5
 8009122:	f47f af0e 	bne.w	8008f42 <_vfiprintf_r+0x20a>
 8009126:	f01a 0210 	ands.w	r2, sl, #16
 800912a:	f040 830f 	bne.w	800974c <_vfiprintf_r+0xa14>
 800912e:	f01a 0340 	ands.w	r3, sl, #64	; 0x40
 8009132:	f000 830b 	beq.w	800974c <_vfiprintf_r+0xa14>
 8009136:	f8dd b020 	ldr.w	fp, [sp, #32]
 800913a:	f8bb 4000 	ldrh.w	r4, [fp]
 800913e:	f10b 0b04 	add.w	fp, fp, #4
 8009142:	4613      	mov	r3, r2
 8009144:	2500      	movs	r5, #0
 8009146:	f8cd b020 	str.w	fp, [sp, #32]
 800914a:	e706      	b.n	8008f5a <_vfiprintf_r+0x222>
 800914c:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8009150:	2000      	movs	r0, #0
 8009152:	f818 3b01 	ldrb.w	r3, [r8], #1
 8009156:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800915a:	eb02 0040 	add.w	r0, r2, r0, lsl #1
 800915e:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8009162:	2a09      	cmp	r2, #9
 8009164:	d9f5      	bls.n	8009152 <_vfiprintf_r+0x41a>
 8009166:	e656      	b.n	8008e16 <_vfiprintf_r+0xde>
 8009168:	f04a 0a10 	orr.w	sl, sl, #16
 800916c:	f01a 0f20 	tst.w	sl, #32
 8009170:	9004      	str	r0, [sp, #16]
 8009172:	46ac      	mov	ip, r5
 8009174:	f47f af75 	bne.w	8009062 <_vfiprintf_r+0x32a>
 8009178:	f01a 0f10 	tst.w	sl, #16
 800917c:	f040 82ec 	bne.w	8009758 <_vfiprintf_r+0xa20>
 8009180:	f01a 0f40 	tst.w	sl, #64	; 0x40
 8009184:	f000 82e8 	beq.w	8009758 <_vfiprintf_r+0xa20>
 8009188:	f8dd b020 	ldr.w	fp, [sp, #32]
 800918c:	f8bb 4000 	ldrh.w	r4, [fp]
 8009190:	f10b 0b04 	add.w	fp, fp, #4
 8009194:	2500      	movs	r5, #0
 8009196:	2301      	movs	r3, #1
 8009198:	f8cd b020 	str.w	fp, [sp, #32]
 800919c:	e6dd      	b.n	8008f5a <_vfiprintf_r+0x222>
 800919e:	46ac      	mov	ip, r5
 80091a0:	f01a 0f20 	tst.w	sl, #32
 80091a4:	4d50      	ldr	r5, [pc, #320]	; (80092e8 <_vfiprintf_r+0x5b0>)
 80091a6:	9004      	str	r0, [sp, #16]
 80091a8:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
 80091ac:	950a      	str	r5, [sp, #40]	; 0x28
 80091ae:	f000 80ee 	beq.w	800938e <_vfiprintf_r+0x656>
 80091b2:	9d08      	ldr	r5, [sp, #32]
 80091b4:	1dea      	adds	r2, r5, #7
 80091b6:	f022 0207 	bic.w	r2, r2, #7
 80091ba:	e9d2 4500 	ldrd	r4, r5, [r2]
 80091be:	f102 0b08 	add.w	fp, r2, #8
 80091c2:	f8cd b020 	str.w	fp, [sp, #32]
 80091c6:	f01a 0f01 	tst.w	sl, #1
 80091ca:	f000 82a8 	beq.w	800971e <_vfiprintf_r+0x9e6>
 80091ce:	ea54 0b05 	orrs.w	fp, r4, r5
 80091d2:	f000 82a4 	beq.w	800971e <_vfiprintf_r+0x9e6>
 80091d6:	2230      	movs	r2, #48	; 0x30
 80091d8:	f88d 3049 	strb.w	r3, [sp, #73]	; 0x49
 80091dc:	f04a 0a02 	orr.w	sl, sl, #2
 80091e0:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
 80091e4:	2302      	movs	r3, #2
 80091e6:	e6b8      	b.n	8008f5a <_vfiprintf_r+0x222>
 80091e8:	9b08      	ldr	r3, [sp, #32]
 80091ea:	f8dd b020 	ldr.w	fp, [sp, #32]
 80091ee:	681b      	ldr	r3, [r3, #0]
 80091f0:	9004      	str	r0, [sp, #16]
 80091f2:	2401      	movs	r4, #1
 80091f4:	f04f 0500 	mov.w	r5, #0
 80091f8:	f10b 0b04 	add.w	fp, fp, #4
 80091fc:	9403      	str	r4, [sp, #12]
 80091fe:	f88d 5047 	strb.w	r5, [sp, #71]	; 0x47
 8009202:	f88d 3058 	strb.w	r3, [sp, #88]	; 0x58
 8009206:	f8cd b020 	str.w	fp, [sp, #32]
 800920a:	9405      	str	r4, [sp, #20]
 800920c:	af16      	add	r7, sp, #88	; 0x58
 800920e:	f04f 0c00 	mov.w	ip, #0
 8009212:	e6d2      	b.n	8008fba <_vfiprintf_r+0x282>
 8009214:	f01a 0f20 	tst.w	sl, #32
 8009218:	9004      	str	r0, [sp, #16]
 800921a:	46ac      	mov	ip, r5
 800921c:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
 8009220:	f47f af3a 	bne.w	8009098 <_vfiprintf_r+0x360>
 8009224:	f01a 0f10 	tst.w	sl, #16
 8009228:	f040 82a4 	bne.w	8009774 <_vfiprintf_r+0xa3c>
 800922c:	f01a 0f40 	tst.w	sl, #64	; 0x40
 8009230:	f000 82a0 	beq.w	8009774 <_vfiprintf_r+0xa3c>
 8009234:	f8dd b020 	ldr.w	fp, [sp, #32]
 8009238:	f9bb 4000 	ldrsh.w	r4, [fp]
 800923c:	f10b 0b04 	add.w	fp, fp, #4
 8009240:	17e5      	asrs	r5, r4, #31
 8009242:	4622      	mov	r2, r4
 8009244:	462b      	mov	r3, r5
 8009246:	f8cd b020 	str.w	fp, [sp, #32]
 800924a:	e72f      	b.n	80090ac <_vfiprintf_r+0x374>
 800924c:	f04a 0a40 	orr.w	sl, sl, #64	; 0x40
 8009250:	f898 3000 	ldrb.w	r3, [r8]
 8009254:	e5dd      	b.n	8008e12 <_vfiprintf_r+0xda>
 8009256:	f898 3000 	ldrb.w	r3, [r8]
 800925a:	4642      	mov	r2, r8
 800925c:	2b6c      	cmp	r3, #108	; 0x6c
 800925e:	bf03      	ittte	eq
 8009260:	f108 0801 	addeq.w	r8, r8, #1
 8009264:	f04a 0a20 	orreq.w	sl, sl, #32
 8009268:	7853      	ldrbeq	r3, [r2, #1]
 800926a:	f04a 0a10 	orrne.w	sl, sl, #16
 800926e:	e5d0      	b.n	8008e12 <_vfiprintf_r+0xda>
 8009270:	f01a 0f20 	tst.w	sl, #32
 8009274:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
 8009278:	f000 82f8 	beq.w	800986c <_vfiprintf_r+0xb34>
 800927c:	9c08      	ldr	r4, [sp, #32]
 800927e:	6821      	ldr	r1, [r4, #0]
 8009280:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8009282:	17e5      	asrs	r5, r4, #31
 8009284:	462b      	mov	r3, r5
 8009286:	9d08      	ldr	r5, [sp, #32]
 8009288:	4622      	mov	r2, r4
 800928a:	3504      	adds	r5, #4
 800928c:	9508      	str	r5, [sp, #32]
 800928e:	e9c1 2300 	strd	r2, r3, [r1]
 8009292:	e584      	b.n	8008d9e <_vfiprintf_r+0x66>
 8009294:	9c08      	ldr	r4, [sp, #32]
 8009296:	9004      	str	r0, [sp, #16]
 8009298:	6827      	ldr	r7, [r4, #0]
 800929a:	46ac      	mov	ip, r5
 800929c:	f04f 0500 	mov.w	r5, #0
 80092a0:	f88d 5047 	strb.w	r5, [sp, #71]	; 0x47
 80092a4:	3404      	adds	r4, #4
 80092a6:	2f00      	cmp	r7, #0
 80092a8:	f000 8334 	beq.w	8009914 <_vfiprintf_r+0xbdc>
 80092ac:	f1bc 0f00 	cmp.w	ip, #0
 80092b0:	4638      	mov	r0, r7
 80092b2:	f2c0 8308 	blt.w	80098c6 <_vfiprintf_r+0xb8e>
 80092b6:	4662      	mov	r2, ip
 80092b8:	2100      	movs	r1, #0
 80092ba:	f8cd c004 	str.w	ip, [sp, #4]
 80092be:	f7fe ff4b 	bl	8008158 <memchr>
 80092c2:	f8dd c004 	ldr.w	ip, [sp, #4]
 80092c6:	2800      	cmp	r0, #0
 80092c8:	f000 833c 	beq.w	8009944 <_vfiprintf_r+0xc0c>
 80092cc:	1bc0      	subs	r0, r0, r7
 80092ce:	4560      	cmp	r0, ip
 80092d0:	bfa8      	it	ge
 80092d2:	4660      	movge	r0, ip
 80092d4:	f89d 5047 	ldrb.w	r5, [sp, #71]	; 0x47
 80092d8:	9005      	str	r0, [sp, #20]
 80092da:	9408      	str	r4, [sp, #32]
 80092dc:	9507      	str	r5, [sp, #28]
 80092de:	f04f 0c00 	mov.w	ip, #0
 80092e2:	e65d      	b.n	8008fa0 <_vfiprintf_r+0x268>
 80092e4:	0800b77c 	.word	0x0800b77c
 80092e8:	0800b5e0 	.word	0x0800b5e0
 80092ec:	9a08      	ldr	r2, [sp, #32]
 80092ee:	9004      	str	r0, [sp, #16]
 80092f0:	2330      	movs	r3, #48	; 0x30
 80092f2:	f88d 3048 	strb.w	r3, [sp, #72]	; 0x48
 80092f6:	f102 0b04 	add.w	fp, r2, #4
 80092fa:	2378      	movs	r3, #120	; 0x78
 80092fc:	48af      	ldr	r0, [pc, #700]	; (80095bc <_vfiprintf_r+0x884>)
 80092fe:	f88d 3049 	strb.w	r3, [sp, #73]	; 0x49
 8009302:	46ac      	mov	ip, r5
 8009304:	6814      	ldr	r4, [r2, #0]
 8009306:	f8cd b020 	str.w	fp, [sp, #32]
 800930a:	f04a 0a02 	orr.w	sl, sl, #2
 800930e:	2500      	movs	r5, #0
 8009310:	900a      	str	r0, [sp, #40]	; 0x28
 8009312:	2302      	movs	r3, #2
 8009314:	e621      	b.n	8008f5a <_vfiprintf_r+0x222>
 8009316:	f04a 0a20 	orr.w	sl, sl, #32
 800931a:	f898 3000 	ldrb.w	r3, [r8]
 800931e:	e578      	b.n	8008e12 <_vfiprintf_r+0xda>
 8009320:	f8dd b020 	ldr.w	fp, [sp, #32]
 8009324:	f8db 0000 	ldr.w	r0, [fp]
 8009328:	2800      	cmp	r0, #0
 800932a:	f10b 0304 	add.w	r3, fp, #4
 800932e:	f6ff adfb 	blt.w	8008f28 <_vfiprintf_r+0x1f0>
 8009332:	9308      	str	r3, [sp, #32]
 8009334:	f898 3000 	ldrb.w	r3, [r8]
 8009338:	e56b      	b.n	8008e12 <_vfiprintf_r+0xda>
 800933a:	f898 3000 	ldrb.w	r3, [r8]
 800933e:	212b      	movs	r1, #43	; 0x2b
 8009340:	e567      	b.n	8008e12 <_vfiprintf_r+0xda>
 8009342:	f898 3000 	ldrb.w	r3, [r8]
 8009346:	2b2a      	cmp	r3, #42	; 0x2a
 8009348:	f108 0401 	add.w	r4, r8, #1
 800934c:	f000 8309 	beq.w	8009962 <_vfiprintf_r+0xc2a>
 8009350:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8009354:	2a09      	cmp	r2, #9
 8009356:	bf98      	it	ls
 8009358:	2500      	movls	r5, #0
 800935a:	f200 82fe 	bhi.w	800995a <_vfiprintf_r+0xc22>
 800935e:	f814 3b01 	ldrb.w	r3, [r4], #1
 8009362:	eb05 0585 	add.w	r5, r5, r5, lsl #2
 8009366:	eb02 0545 	add.w	r5, r2, r5, lsl #1
 800936a:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 800936e:	2a09      	cmp	r2, #9
 8009370:	d9f5      	bls.n	800935e <_vfiprintf_r+0x626>
 8009372:	ea45 75e5 	orr.w	r5, r5, r5, asr #31
 8009376:	46a0      	mov	r8, r4
 8009378:	e54d      	b.n	8008e16 <_vfiprintf_r+0xde>
 800937a:	4c90      	ldr	r4, [pc, #576]	; (80095bc <_vfiprintf_r+0x884>)
 800937c:	9004      	str	r0, [sp, #16]
 800937e:	f01a 0f20 	tst.w	sl, #32
 8009382:	46ac      	mov	ip, r5
 8009384:	940a      	str	r4, [sp, #40]	; 0x28
 8009386:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
 800938a:	f47f af12 	bne.w	80091b2 <_vfiprintf_r+0x47a>
 800938e:	f01a 0f10 	tst.w	sl, #16
 8009392:	f040 81e9 	bne.w	8009768 <_vfiprintf_r+0xa30>
 8009396:	f01a 0f40 	tst.w	sl, #64	; 0x40
 800939a:	f000 81e5 	beq.w	8009768 <_vfiprintf_r+0xa30>
 800939e:	f8dd b020 	ldr.w	fp, [sp, #32]
 80093a2:	f8bb 4000 	ldrh.w	r4, [fp]
 80093a6:	f10b 0b04 	add.w	fp, fp, #4
 80093aa:	2500      	movs	r5, #0
 80093ac:	f8cd b020 	str.w	fp, [sp, #32]
 80093b0:	e709      	b.n	80091c6 <_vfiprintf_r+0x48e>
 80093b2:	f898 3000 	ldrb.w	r3, [r8]
 80093b6:	2900      	cmp	r1, #0
 80093b8:	f47f ad2b 	bne.w	8008e12 <_vfiprintf_r+0xda>
 80093bc:	2120      	movs	r1, #32
 80093be:	e528      	b.n	8008e12 <_vfiprintf_r+0xda>
 80093c0:	f04a 0a01 	orr.w	sl, sl, #1
 80093c4:	f898 3000 	ldrb.w	r3, [r8]
 80093c8:	e523      	b.n	8008e12 <_vfiprintf_r+0xda>
 80093ca:	9004      	str	r0, [sp, #16]
 80093cc:	f88d 1047 	strb.w	r1, [sp, #71]	; 0x47
 80093d0:	2b00      	cmp	r3, #0
 80093d2:	f000 80f9 	beq.w	80095c8 <_vfiprintf_r+0x890>
 80093d6:	2501      	movs	r5, #1
 80093d8:	f04f 0b00 	mov.w	fp, #0
 80093dc:	9503      	str	r5, [sp, #12]
 80093de:	f88d 3058 	strb.w	r3, [sp, #88]	; 0x58
 80093e2:	f88d b047 	strb.w	fp, [sp, #71]	; 0x47
 80093e6:	9505      	str	r5, [sp, #20]
 80093e8:	af16      	add	r7, sp, #88	; 0x58
 80093ea:	e710      	b.n	800920e <_vfiprintf_r+0x4d6>
 80093ec:	9806      	ldr	r0, [sp, #24]
 80093ee:	9902      	ldr	r1, [sp, #8]
 80093f0:	aa13      	add	r2, sp, #76	; 0x4c
 80093f2:	f7ff fc59 	bl	8008ca8 <__sprint_r.part.0>
 80093f6:	2800      	cmp	r0, #0
 80093f8:	f040 80ed 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 80093fc:	9814      	ldr	r0, [sp, #80]	; 0x50
 80093fe:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8009400:	1c43      	adds	r3, r0, #1
 8009402:	46cc      	mov	ip, r9
 8009404:	e602      	b.n	800900c <_vfiprintf_r+0x2d4>
 8009406:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8009408:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800940a:	1c59      	adds	r1, r3, #1
 800940c:	f89d 0047 	ldrb.w	r0, [sp, #71]	; 0x47
 8009410:	b168      	cbz	r0, 800942e <_vfiprintf_r+0x6f6>
 8009412:	3201      	adds	r2, #1
 8009414:	f10d 0047 	add.w	r0, sp, #71	; 0x47
 8009418:	2301      	movs	r3, #1
 800941a:	2907      	cmp	r1, #7
 800941c:	9215      	str	r2, [sp, #84]	; 0x54
 800941e:	9114      	str	r1, [sp, #80]	; 0x50
 8009420:	e886 0009 	stmia.w	r6, {r0, r3}
 8009424:	f300 8160 	bgt.w	80096e8 <_vfiprintf_r+0x9b0>
 8009428:	460b      	mov	r3, r1
 800942a:	3608      	adds	r6, #8
 800942c:	3101      	adds	r1, #1
 800942e:	9c07      	ldr	r4, [sp, #28]
 8009430:	b164      	cbz	r4, 800944c <_vfiprintf_r+0x714>
 8009432:	3202      	adds	r2, #2
 8009434:	a812      	add	r0, sp, #72	; 0x48
 8009436:	2302      	movs	r3, #2
 8009438:	2907      	cmp	r1, #7
 800943a:	9215      	str	r2, [sp, #84]	; 0x54
 800943c:	9114      	str	r1, [sp, #80]	; 0x50
 800943e:	e886 0009 	stmia.w	r6, {r0, r3}
 8009442:	f300 8157 	bgt.w	80096f4 <_vfiprintf_r+0x9bc>
 8009446:	460b      	mov	r3, r1
 8009448:	3608      	adds	r6, #8
 800944a:	3101      	adds	r1, #1
 800944c:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 800944e:	2d80      	cmp	r5, #128	; 0x80
 8009450:	f000 8101 	beq.w	8009656 <_vfiprintf_r+0x91e>
 8009454:	9d05      	ldr	r5, [sp, #20]
 8009456:	ebc5 040c 	rsb	r4, r5, ip
 800945a:	2c00      	cmp	r4, #0
 800945c:	dd2f      	ble.n	80094be <_vfiprintf_r+0x786>
 800945e:	2c10      	cmp	r4, #16
 8009460:	4d57      	ldr	r5, [pc, #348]	; (80095c0 <_vfiprintf_r+0x888>)
 8009462:	dd22      	ble.n	80094aa <_vfiprintf_r+0x772>
 8009464:	4630      	mov	r0, r6
 8009466:	f04f 0b10 	mov.w	fp, #16
 800946a:	462e      	mov	r6, r5
 800946c:	4625      	mov	r5, r4
 800946e:	9c06      	ldr	r4, [sp, #24]
 8009470:	e006      	b.n	8009480 <_vfiprintf_r+0x748>
 8009472:	f103 0c02 	add.w	ip, r3, #2
 8009476:	3008      	adds	r0, #8
 8009478:	460b      	mov	r3, r1
 800947a:	3d10      	subs	r5, #16
 800947c:	2d10      	cmp	r5, #16
 800947e:	dd10      	ble.n	80094a2 <_vfiprintf_r+0x76a>
 8009480:	1c59      	adds	r1, r3, #1
 8009482:	3210      	adds	r2, #16
 8009484:	2907      	cmp	r1, #7
 8009486:	9215      	str	r2, [sp, #84]	; 0x54
 8009488:	e880 0840 	stmia.w	r0, {r6, fp}
 800948c:	9114      	str	r1, [sp, #80]	; 0x50
 800948e:	ddf0      	ble.n	8009472 <_vfiprintf_r+0x73a>
 8009490:	2a00      	cmp	r2, #0
 8009492:	d163      	bne.n	800955c <_vfiprintf_r+0x824>
 8009494:	3d10      	subs	r5, #16
 8009496:	2d10      	cmp	r5, #16
 8009498:	f04f 0c01 	mov.w	ip, #1
 800949c:	4613      	mov	r3, r2
 800949e:	4648      	mov	r0, r9
 80094a0:	dcee      	bgt.n	8009480 <_vfiprintf_r+0x748>
 80094a2:	462c      	mov	r4, r5
 80094a4:	4661      	mov	r1, ip
 80094a6:	4635      	mov	r5, r6
 80094a8:	4606      	mov	r6, r0
 80094aa:	4422      	add	r2, r4
 80094ac:	2907      	cmp	r1, #7
 80094ae:	9215      	str	r2, [sp, #84]	; 0x54
 80094b0:	6035      	str	r5, [r6, #0]
 80094b2:	6074      	str	r4, [r6, #4]
 80094b4:	9114      	str	r1, [sp, #80]	; 0x50
 80094b6:	f300 80c1 	bgt.w	800963c <_vfiprintf_r+0x904>
 80094ba:	3608      	adds	r6, #8
 80094bc:	3101      	adds	r1, #1
 80094be:	9d05      	ldr	r5, [sp, #20]
 80094c0:	6037      	str	r7, [r6, #0]
 80094c2:	442a      	add	r2, r5
 80094c4:	2907      	cmp	r1, #7
 80094c6:	9215      	str	r2, [sp, #84]	; 0x54
 80094c8:	6075      	str	r5, [r6, #4]
 80094ca:	9114      	str	r1, [sp, #80]	; 0x50
 80094cc:	f340 80c1 	ble.w	8009652 <_vfiprintf_r+0x91a>
 80094d0:	2a00      	cmp	r2, #0
 80094d2:	f040 8130 	bne.w	8009736 <_vfiprintf_r+0x9fe>
 80094d6:	9214      	str	r2, [sp, #80]	; 0x50
 80094d8:	464e      	mov	r6, r9
 80094da:	f01a 0f04 	tst.w	sl, #4
 80094de:	f000 808b 	beq.w	80095f8 <_vfiprintf_r+0x8c0>
 80094e2:	9d04      	ldr	r5, [sp, #16]
 80094e4:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80094e8:	ebcb 0405 	rsb	r4, fp, r5
 80094ec:	2c00      	cmp	r4, #0
 80094ee:	f340 8083 	ble.w	80095f8 <_vfiprintf_r+0x8c0>
 80094f2:	2c10      	cmp	r4, #16
 80094f4:	f340 8222 	ble.w	800993c <_vfiprintf_r+0xc04>
 80094f8:	9914      	ldr	r1, [sp, #80]	; 0x50
 80094fa:	4d32      	ldr	r5, [pc, #200]	; (80095c4 <_vfiprintf_r+0x88c>)
 80094fc:	f8dd a018 	ldr.w	sl, [sp, #24]
 8009500:	f8dd b008 	ldr.w	fp, [sp, #8]
 8009504:	2710      	movs	r7, #16
 8009506:	e005      	b.n	8009514 <_vfiprintf_r+0x7dc>
 8009508:	1c88      	adds	r0, r1, #2
 800950a:	3608      	adds	r6, #8
 800950c:	4619      	mov	r1, r3
 800950e:	3c10      	subs	r4, #16
 8009510:	2c10      	cmp	r4, #16
 8009512:	dd10      	ble.n	8009536 <_vfiprintf_r+0x7fe>
 8009514:	1c4b      	adds	r3, r1, #1
 8009516:	3210      	adds	r2, #16
 8009518:	2b07      	cmp	r3, #7
 800951a:	9215      	str	r2, [sp, #84]	; 0x54
 800951c:	e886 00a0 	stmia.w	r6, {r5, r7}
 8009520:	9314      	str	r3, [sp, #80]	; 0x50
 8009522:	ddf1      	ble.n	8009508 <_vfiprintf_r+0x7d0>
 8009524:	2a00      	cmp	r2, #0
 8009526:	d17d      	bne.n	8009624 <_vfiprintf_r+0x8ec>
 8009528:	3c10      	subs	r4, #16
 800952a:	2c10      	cmp	r4, #16
 800952c:	f04f 0001 	mov.w	r0, #1
 8009530:	4611      	mov	r1, r2
 8009532:	464e      	mov	r6, r9
 8009534:	dcee      	bgt.n	8009514 <_vfiprintf_r+0x7dc>
 8009536:	4422      	add	r2, r4
 8009538:	2807      	cmp	r0, #7
 800953a:	9215      	str	r2, [sp, #84]	; 0x54
 800953c:	6035      	str	r5, [r6, #0]
 800953e:	6074      	str	r4, [r6, #4]
 8009540:	9014      	str	r0, [sp, #80]	; 0x50
 8009542:	dd59      	ble.n	80095f8 <_vfiprintf_r+0x8c0>
 8009544:	2a00      	cmp	r2, #0
 8009546:	d14f      	bne.n	80095e8 <_vfiprintf_r+0x8b0>
 8009548:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800954a:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800954e:	9d04      	ldr	r5, [sp, #16]
 8009550:	45ab      	cmp	fp, r5
 8009552:	bfac      	ite	ge
 8009554:	445c      	addge	r4, fp
 8009556:	1964      	addlt	r4, r4, r5
 8009558:	9409      	str	r4, [sp, #36]	; 0x24
 800955a:	e05e      	b.n	800961a <_vfiprintf_r+0x8e2>
 800955c:	4620      	mov	r0, r4
 800955e:	9902      	ldr	r1, [sp, #8]
 8009560:	aa13      	add	r2, sp, #76	; 0x4c
 8009562:	f7ff fba1 	bl	8008ca8 <__sprint_r.part.0>
 8009566:	2800      	cmp	r0, #0
 8009568:	d135      	bne.n	80095d6 <_vfiprintf_r+0x89e>
 800956a:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800956c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800956e:	f103 0c01 	add.w	ip, r3, #1
 8009572:	4648      	mov	r0, r9
 8009574:	e781      	b.n	800947a <_vfiprintf_r+0x742>
 8009576:	08e0      	lsrs	r0, r4, #3
 8009578:	ea40 7045 	orr.w	r0, r0, r5, lsl #29
 800957c:	f004 0207 	and.w	r2, r4, #7
 8009580:	08e9      	lsrs	r1, r5, #3
 8009582:	3230      	adds	r2, #48	; 0x30
 8009584:	ea50 0b01 	orrs.w	fp, r0, r1
 8009588:	461f      	mov	r7, r3
 800958a:	701a      	strb	r2, [r3, #0]
 800958c:	4604      	mov	r4, r0
 800958e:	460d      	mov	r5, r1
 8009590:	f103 33ff 	add.w	r3, r3, #4294967295
 8009594:	d1ef      	bne.n	8009576 <_vfiprintf_r+0x83e>
 8009596:	f01a 0f01 	tst.w	sl, #1
 800959a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800959e:	4639      	mov	r1, r7
 80095a0:	f000 80b9 	beq.w	8009716 <_vfiprintf_r+0x9de>
 80095a4:	2a30      	cmp	r2, #48	; 0x30
 80095a6:	f43f acf8 	beq.w	8008f9a <_vfiprintf_r+0x262>
 80095aa:	461f      	mov	r7, r3
 80095ac:	ebc7 0509 	rsb	r5, r7, r9
 80095b0:	2330      	movs	r3, #48	; 0x30
 80095b2:	9505      	str	r5, [sp, #20]
 80095b4:	f801 3c01 	strb.w	r3, [r1, #-1]
 80095b8:	e4f2      	b.n	8008fa0 <_vfiprintf_r+0x268>
 80095ba:	bf00      	nop
 80095bc:	0800b5f4 	.word	0x0800b5f4
 80095c0:	0800b76c 	.word	0x0800b76c
 80095c4:	0800b77c 	.word	0x0800b77c
 80095c8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80095ca:	b123      	cbz	r3, 80095d6 <_vfiprintf_r+0x89e>
 80095cc:	9806      	ldr	r0, [sp, #24]
 80095ce:	9902      	ldr	r1, [sp, #8]
 80095d0:	aa13      	add	r2, sp, #76	; 0x4c
 80095d2:	f7ff fb69 	bl	8008ca8 <__sprint_r.part.0>
 80095d6:	9c02      	ldr	r4, [sp, #8]
 80095d8:	89a3      	ldrh	r3, [r4, #12]
 80095da:	065b      	lsls	r3, r3, #25
 80095dc:	f53f ac9c 	bmi.w	8008f18 <_vfiprintf_r+0x1e0>
 80095e0:	9809      	ldr	r0, [sp, #36]	; 0x24
 80095e2:	b031      	add	sp, #196	; 0xc4
 80095e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80095e8:	9806      	ldr	r0, [sp, #24]
 80095ea:	9902      	ldr	r1, [sp, #8]
 80095ec:	aa13      	add	r2, sp, #76	; 0x4c
 80095ee:	f7ff fb5b 	bl	8008ca8 <__sprint_r.part.0>
 80095f2:	2800      	cmp	r0, #0
 80095f4:	d1ef      	bne.n	80095d6 <_vfiprintf_r+0x89e>
 80095f6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80095f8:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80095fa:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80095fe:	9d04      	ldr	r5, [sp, #16]
 8009600:	45ab      	cmp	fp, r5
 8009602:	bfac      	ite	ge
 8009604:	445c      	addge	r4, fp
 8009606:	1964      	addlt	r4, r4, r5
 8009608:	9409      	str	r4, [sp, #36]	; 0x24
 800960a:	b132      	cbz	r2, 800961a <_vfiprintf_r+0x8e2>
 800960c:	9806      	ldr	r0, [sp, #24]
 800960e:	9902      	ldr	r1, [sp, #8]
 8009610:	aa13      	add	r2, sp, #76	; 0x4c
 8009612:	f7ff fb49 	bl	8008ca8 <__sprint_r.part.0>
 8009616:	2800      	cmp	r0, #0
 8009618:	d1dd      	bne.n	80095d6 <_vfiprintf_r+0x89e>
 800961a:	2000      	movs	r0, #0
 800961c:	9014      	str	r0, [sp, #80]	; 0x50
 800961e:	464e      	mov	r6, r9
 8009620:	f7ff bbbd 	b.w	8008d9e <_vfiprintf_r+0x66>
 8009624:	4650      	mov	r0, sl
 8009626:	4659      	mov	r1, fp
 8009628:	aa13      	add	r2, sp, #76	; 0x4c
 800962a:	f7ff fb3d 	bl	8008ca8 <__sprint_r.part.0>
 800962e:	2800      	cmp	r0, #0
 8009630:	d1d1      	bne.n	80095d6 <_vfiprintf_r+0x89e>
 8009632:	9914      	ldr	r1, [sp, #80]	; 0x50
 8009634:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8009636:	1c48      	adds	r0, r1, #1
 8009638:	464e      	mov	r6, r9
 800963a:	e768      	b.n	800950e <_vfiprintf_r+0x7d6>
 800963c:	2a00      	cmp	r2, #0
 800963e:	f040 80fa 	bne.w	8009836 <_vfiprintf_r+0xafe>
 8009642:	9c05      	ldr	r4, [sp, #20]
 8009644:	9720      	str	r7, [sp, #128]	; 0x80
 8009646:	2301      	movs	r3, #1
 8009648:	9421      	str	r4, [sp, #132]	; 0x84
 800964a:	9415      	str	r4, [sp, #84]	; 0x54
 800964c:	4622      	mov	r2, r4
 800964e:	9314      	str	r3, [sp, #80]	; 0x50
 8009650:	464e      	mov	r6, r9
 8009652:	3608      	adds	r6, #8
 8009654:	e741      	b.n	80094da <_vfiprintf_r+0x7a2>
 8009656:	9d04      	ldr	r5, [sp, #16]
 8009658:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800965c:	ebcb 0405 	rsb	r4, fp, r5
 8009660:	2c00      	cmp	r4, #0
 8009662:	f77f aef7 	ble.w	8009454 <_vfiprintf_r+0x71c>
 8009666:	2c10      	cmp	r4, #16
 8009668:	4da8      	ldr	r5, [pc, #672]	; (800990c <_vfiprintf_r+0xbd4>)
 800966a:	f340 8174 	ble.w	8009956 <_vfiprintf_r+0xc1e>
 800966e:	4629      	mov	r1, r5
 8009670:	f04f 0b10 	mov.w	fp, #16
 8009674:	4625      	mov	r5, r4
 8009676:	4664      	mov	r4, ip
 8009678:	46b4      	mov	ip, r6
 800967a:	460e      	mov	r6, r1
 800967c:	e006      	b.n	800968c <_vfiprintf_r+0x954>
 800967e:	1c98      	adds	r0, r3, #2
 8009680:	f10c 0c08 	add.w	ip, ip, #8
 8009684:	460b      	mov	r3, r1
 8009686:	3d10      	subs	r5, #16
 8009688:	2d10      	cmp	r5, #16
 800968a:	dd0f      	ble.n	80096ac <_vfiprintf_r+0x974>
 800968c:	1c59      	adds	r1, r3, #1
 800968e:	3210      	adds	r2, #16
 8009690:	2907      	cmp	r1, #7
 8009692:	9215      	str	r2, [sp, #84]	; 0x54
 8009694:	e88c 0840 	stmia.w	ip, {r6, fp}
 8009698:	9114      	str	r1, [sp, #80]	; 0x50
 800969a:	ddf0      	ble.n	800967e <_vfiprintf_r+0x946>
 800969c:	b9ba      	cbnz	r2, 80096ce <_vfiprintf_r+0x996>
 800969e:	3d10      	subs	r5, #16
 80096a0:	2d10      	cmp	r5, #16
 80096a2:	f04f 0001 	mov.w	r0, #1
 80096a6:	4613      	mov	r3, r2
 80096a8:	46cc      	mov	ip, r9
 80096aa:	dcef      	bgt.n	800968c <_vfiprintf_r+0x954>
 80096ac:	4633      	mov	r3, r6
 80096ae:	4666      	mov	r6, ip
 80096b0:	46a4      	mov	ip, r4
 80096b2:	462c      	mov	r4, r5
 80096b4:	461d      	mov	r5, r3
 80096b6:	4422      	add	r2, r4
 80096b8:	2807      	cmp	r0, #7
 80096ba:	9215      	str	r2, [sp, #84]	; 0x54
 80096bc:	6035      	str	r5, [r6, #0]
 80096be:	6074      	str	r4, [r6, #4]
 80096c0:	9014      	str	r0, [sp, #80]	; 0x50
 80096c2:	f300 80b2 	bgt.w	800982a <_vfiprintf_r+0xaf2>
 80096c6:	3608      	adds	r6, #8
 80096c8:	1c41      	adds	r1, r0, #1
 80096ca:	4603      	mov	r3, r0
 80096cc:	e6c2      	b.n	8009454 <_vfiprintf_r+0x71c>
 80096ce:	9806      	ldr	r0, [sp, #24]
 80096d0:	9902      	ldr	r1, [sp, #8]
 80096d2:	aa13      	add	r2, sp, #76	; 0x4c
 80096d4:	f7ff fae8 	bl	8008ca8 <__sprint_r.part.0>
 80096d8:	2800      	cmp	r0, #0
 80096da:	f47f af7c 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 80096de:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80096e0:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80096e2:	1c58      	adds	r0, r3, #1
 80096e4:	46cc      	mov	ip, r9
 80096e6:	e7ce      	b.n	8009686 <_vfiprintf_r+0x94e>
 80096e8:	2a00      	cmp	r2, #0
 80096ea:	d17c      	bne.n	80097e6 <_vfiprintf_r+0xaae>
 80096ec:	4619      	mov	r1, r3
 80096ee:	464e      	mov	r6, r9
 80096f0:	4613      	mov	r3, r2
 80096f2:	e69c      	b.n	800942e <_vfiprintf_r+0x6f6>
 80096f4:	2a00      	cmp	r2, #0
 80096f6:	f040 8087 	bne.w	8009808 <_vfiprintf_r+0xad0>
 80096fa:	2101      	movs	r1, #1
 80096fc:	4613      	mov	r3, r2
 80096fe:	464e      	mov	r6, r9
 8009700:	e6a4      	b.n	800944c <_vfiprintf_r+0x714>
 8009702:	464f      	mov	r7, r9
 8009704:	e44c      	b.n	8008fa0 <_vfiprintf_r+0x268>
 8009706:	2d00      	cmp	r5, #0
 8009708:	bf08      	it	eq
 800970a:	2c0a      	cmpeq	r4, #10
 800970c:	d249      	bcs.n	80097a2 <_vfiprintf_r+0xa6a>
 800970e:	af30      	add	r7, sp, #192	; 0xc0
 8009710:	3430      	adds	r4, #48	; 0x30
 8009712:	f807 4d41 	strb.w	r4, [r7, #-65]!
 8009716:	ebc7 0309 	rsb	r3, r7, r9
 800971a:	9305      	str	r3, [sp, #20]
 800971c:	e440      	b.n	8008fa0 <_vfiprintf_r+0x268>
 800971e:	2302      	movs	r3, #2
 8009720:	e41b      	b.n	8008f5a <_vfiprintf_r+0x222>
 8009722:	2a00      	cmp	r2, #0
 8009724:	f040 80b2 	bne.w	800988c <_vfiprintf_r+0xb54>
 8009728:	4613      	mov	r3, r2
 800972a:	2101      	movs	r1, #1
 800972c:	464e      	mov	r6, r9
 800972e:	e66d      	b.n	800940c <_vfiprintf_r+0x6d4>
 8009730:	4644      	mov	r4, r8
 8009732:	f7ff bb5c 	b.w	8008dee <_vfiprintf_r+0xb6>
 8009736:	9806      	ldr	r0, [sp, #24]
 8009738:	9902      	ldr	r1, [sp, #8]
 800973a:	aa13      	add	r2, sp, #76	; 0x4c
 800973c:	f7ff fab4 	bl	8008ca8 <__sprint_r.part.0>
 8009740:	2800      	cmp	r0, #0
 8009742:	f47f af48 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 8009746:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8009748:	464e      	mov	r6, r9
 800974a:	e6c6      	b.n	80094da <_vfiprintf_r+0x7a2>
 800974c:	9d08      	ldr	r5, [sp, #32]
 800974e:	682c      	ldr	r4, [r5, #0]
 8009750:	3504      	adds	r5, #4
 8009752:	9508      	str	r5, [sp, #32]
 8009754:	2500      	movs	r5, #0
 8009756:	e400      	b.n	8008f5a <_vfiprintf_r+0x222>
 8009758:	9d08      	ldr	r5, [sp, #32]
 800975a:	682c      	ldr	r4, [r5, #0]
 800975c:	3504      	adds	r5, #4
 800975e:	9508      	str	r5, [sp, #32]
 8009760:	2301      	movs	r3, #1
 8009762:	2500      	movs	r5, #0
 8009764:	f7ff bbf9 	b.w	8008f5a <_vfiprintf_r+0x222>
 8009768:	9d08      	ldr	r5, [sp, #32]
 800976a:	682c      	ldr	r4, [r5, #0]
 800976c:	3504      	adds	r5, #4
 800976e:	9508      	str	r5, [sp, #32]
 8009770:	2500      	movs	r5, #0
 8009772:	e528      	b.n	80091c6 <_vfiprintf_r+0x48e>
 8009774:	9d08      	ldr	r5, [sp, #32]
 8009776:	f8dd b020 	ldr.w	fp, [sp, #32]
 800977a:	682c      	ldr	r4, [r5, #0]
 800977c:	f10b 0b04 	add.w	fp, fp, #4
 8009780:	17e5      	asrs	r5, r4, #31
 8009782:	f8cd b020 	str.w	fp, [sp, #32]
 8009786:	4622      	mov	r2, r4
 8009788:	462b      	mov	r3, r5
 800978a:	e48f      	b.n	80090ac <_vfiprintf_r+0x374>
 800978c:	9806      	ldr	r0, [sp, #24]
 800978e:	9902      	ldr	r1, [sp, #8]
 8009790:	aa13      	add	r2, sp, #76	; 0x4c
 8009792:	f7ff fa89 	bl	8008ca8 <__sprint_r.part.0>
 8009796:	2800      	cmp	r0, #0
 8009798:	f47f af1d 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 800979c:	464e      	mov	r6, r9
 800979e:	f7ff bb9b 	b.w	8008ed8 <_vfiprintf_r+0x1a0>
 80097a2:	f10d 0b7f 	add.w	fp, sp, #127	; 0x7f
 80097a6:	9603      	str	r6, [sp, #12]
 80097a8:	465e      	mov	r6, fp
 80097aa:	46e3      	mov	fp, ip
 80097ac:	4620      	mov	r0, r4
 80097ae:	4629      	mov	r1, r5
 80097b0:	220a      	movs	r2, #10
 80097b2:	2300      	movs	r3, #0
 80097b4:	f7fa ffee 	bl	8004794 <__aeabi_uldivmod>
 80097b8:	3230      	adds	r2, #48	; 0x30
 80097ba:	7032      	strb	r2, [r6, #0]
 80097bc:	4620      	mov	r0, r4
 80097be:	4629      	mov	r1, r5
 80097c0:	220a      	movs	r2, #10
 80097c2:	2300      	movs	r3, #0
 80097c4:	f7fa ffe6 	bl	8004794 <__aeabi_uldivmod>
 80097c8:	4604      	mov	r4, r0
 80097ca:	460d      	mov	r5, r1
 80097cc:	ea54 0005 	orrs.w	r0, r4, r5
 80097d0:	4637      	mov	r7, r6
 80097d2:	f106 36ff 	add.w	r6, r6, #4294967295
 80097d6:	d1e9      	bne.n	80097ac <_vfiprintf_r+0xa74>
 80097d8:	ebc7 0309 	rsb	r3, r7, r9
 80097dc:	46dc      	mov	ip, fp
 80097de:	9e03      	ldr	r6, [sp, #12]
 80097e0:	9305      	str	r3, [sp, #20]
 80097e2:	f7ff bbdd 	b.w	8008fa0 <_vfiprintf_r+0x268>
 80097e6:	9806      	ldr	r0, [sp, #24]
 80097e8:	9902      	ldr	r1, [sp, #8]
 80097ea:	f8cd c004 	str.w	ip, [sp, #4]
 80097ee:	aa13      	add	r2, sp, #76	; 0x4c
 80097f0:	f7ff fa5a 	bl	8008ca8 <__sprint_r.part.0>
 80097f4:	f8dd c004 	ldr.w	ip, [sp, #4]
 80097f8:	2800      	cmp	r0, #0
 80097fa:	f47f aeec 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 80097fe:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8009800:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8009802:	1c59      	adds	r1, r3, #1
 8009804:	464e      	mov	r6, r9
 8009806:	e612      	b.n	800942e <_vfiprintf_r+0x6f6>
 8009808:	9806      	ldr	r0, [sp, #24]
 800980a:	9902      	ldr	r1, [sp, #8]
 800980c:	f8cd c004 	str.w	ip, [sp, #4]
 8009810:	aa13      	add	r2, sp, #76	; 0x4c
 8009812:	f7ff fa49 	bl	8008ca8 <__sprint_r.part.0>
 8009816:	f8dd c004 	ldr.w	ip, [sp, #4]
 800981a:	2800      	cmp	r0, #0
 800981c:	f47f aedb 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 8009820:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8009822:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8009824:	1c59      	adds	r1, r3, #1
 8009826:	464e      	mov	r6, r9
 8009828:	e610      	b.n	800944c <_vfiprintf_r+0x714>
 800982a:	2a00      	cmp	r2, #0
 800982c:	d156      	bne.n	80098dc <_vfiprintf_r+0xba4>
 800982e:	2101      	movs	r1, #1
 8009830:	4613      	mov	r3, r2
 8009832:	464e      	mov	r6, r9
 8009834:	e60e      	b.n	8009454 <_vfiprintf_r+0x71c>
 8009836:	9806      	ldr	r0, [sp, #24]
 8009838:	9902      	ldr	r1, [sp, #8]
 800983a:	aa13      	add	r2, sp, #76	; 0x4c
 800983c:	f7ff fa34 	bl	8008ca8 <__sprint_r.part.0>
 8009840:	2800      	cmp	r0, #0
 8009842:	f47f aec8 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 8009846:	9914      	ldr	r1, [sp, #80]	; 0x50
 8009848:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800984a:	3101      	adds	r1, #1
 800984c:	464e      	mov	r6, r9
 800984e:	e636      	b.n	80094be <_vfiprintf_r+0x786>
 8009850:	f04f 0b2d 	mov.w	fp, #45	; 0x2d
 8009854:	4264      	negs	r4, r4
 8009856:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800985a:	f88d b047 	strb.w	fp, [sp, #71]	; 0x47
 800985e:	f8cd b01c 	str.w	fp, [sp, #28]
 8009862:	f8cd c014 	str.w	ip, [sp, #20]
 8009866:	2301      	movs	r3, #1
 8009868:	f7ff bb7f 	b.w	8008f6a <_vfiprintf_r+0x232>
 800986c:	f01a 0f10 	tst.w	sl, #16
 8009870:	d11d      	bne.n	80098ae <_vfiprintf_r+0xb76>
 8009872:	f01a 0f40 	tst.w	sl, #64	; 0x40
 8009876:	d059      	beq.n	800992c <_vfiprintf_r+0xbf4>
 8009878:	9d08      	ldr	r5, [sp, #32]
 800987a:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 800987e:	682b      	ldr	r3, [r5, #0]
 8009880:	3504      	adds	r5, #4
 8009882:	9508      	str	r5, [sp, #32]
 8009884:	f8a3 b000 	strh.w	fp, [r3]
 8009888:	f7ff ba89 	b.w	8008d9e <_vfiprintf_r+0x66>
 800988c:	9806      	ldr	r0, [sp, #24]
 800988e:	9902      	ldr	r1, [sp, #8]
 8009890:	f8cd c004 	str.w	ip, [sp, #4]
 8009894:	aa13      	add	r2, sp, #76	; 0x4c
 8009896:	f7ff fa07 	bl	8008ca8 <__sprint_r.part.0>
 800989a:	f8dd c004 	ldr.w	ip, [sp, #4]
 800989e:	2800      	cmp	r0, #0
 80098a0:	f47f ae99 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 80098a4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80098a6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80098a8:	1c59      	adds	r1, r3, #1
 80098aa:	464e      	mov	r6, r9
 80098ac:	e5ae      	b.n	800940c <_vfiprintf_r+0x6d4>
 80098ae:	f8dd b020 	ldr.w	fp, [sp, #32]
 80098b2:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80098b4:	f8db 3000 	ldr.w	r3, [fp]
 80098b8:	f10b 0b04 	add.w	fp, fp, #4
 80098bc:	f8cd b020 	str.w	fp, [sp, #32]
 80098c0:	601c      	str	r4, [r3, #0]
 80098c2:	f7ff ba6c 	b.w	8008d9e <_vfiprintf_r+0x66>
 80098c6:	9408      	str	r4, [sp, #32]
 80098c8:	f7ff f9c0 	bl	8008c4c <strlen>
 80098cc:	f89d 4047 	ldrb.w	r4, [sp, #71]	; 0x47
 80098d0:	9005      	str	r0, [sp, #20]
 80098d2:	9407      	str	r4, [sp, #28]
 80098d4:	f04f 0c00 	mov.w	ip, #0
 80098d8:	f7ff bb62 	b.w	8008fa0 <_vfiprintf_r+0x268>
 80098dc:	9806      	ldr	r0, [sp, #24]
 80098de:	9902      	ldr	r1, [sp, #8]
 80098e0:	f8cd c004 	str.w	ip, [sp, #4]
 80098e4:	aa13      	add	r2, sp, #76	; 0x4c
 80098e6:	f7ff f9df 	bl	8008ca8 <__sprint_r.part.0>
 80098ea:	f8dd c004 	ldr.w	ip, [sp, #4]
 80098ee:	2800      	cmp	r0, #0
 80098f0:	f47f ae71 	bne.w	80095d6 <_vfiprintf_r+0x89e>
 80098f4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80098f6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80098f8:	1c59      	adds	r1, r3, #1
 80098fa:	464e      	mov	r6, r9
 80098fc:	e5aa      	b.n	8009454 <_vfiprintf_r+0x71c>
 80098fe:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8009900:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8009902:	4d03      	ldr	r5, [pc, #12]	; (8009910 <_vfiprintf_r+0xbd8>)
 8009904:	3301      	adds	r3, #1
 8009906:	f7ff bb9b 	b.w	8009040 <_vfiprintf_r+0x308>
 800990a:	bf00      	nop
 800990c:	0800b76c 	.word	0x0800b76c
 8009910:	0800b77c 	.word	0x0800b77c
 8009914:	f1bc 0f06 	cmp.w	ip, #6
 8009918:	bf34      	ite	cc
 800991a:	4663      	movcc	r3, ip
 800991c:	2306      	movcs	r3, #6
 800991e:	9408      	str	r4, [sp, #32]
 8009920:	ea23 74e3 	bic.w	r4, r3, r3, asr #31
 8009924:	9305      	str	r3, [sp, #20]
 8009926:	9403      	str	r4, [sp, #12]
 8009928:	4f16      	ldr	r7, [pc, #88]	; (8009984 <_vfiprintf_r+0xc4c>)
 800992a:	e470      	b.n	800920e <_vfiprintf_r+0x4d6>
 800992c:	9c08      	ldr	r4, [sp, #32]
 800992e:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8009930:	6823      	ldr	r3, [r4, #0]
 8009932:	3404      	adds	r4, #4
 8009934:	9408      	str	r4, [sp, #32]
 8009936:	601d      	str	r5, [r3, #0]
 8009938:	f7ff ba31 	b.w	8008d9e <_vfiprintf_r+0x66>
 800993c:	9814      	ldr	r0, [sp, #80]	; 0x50
 800993e:	4d12      	ldr	r5, [pc, #72]	; (8009988 <_vfiprintf_r+0xc50>)
 8009940:	3001      	adds	r0, #1
 8009942:	e5f8      	b.n	8009536 <_vfiprintf_r+0x7fe>
 8009944:	f89d 5047 	ldrb.w	r5, [sp, #71]	; 0x47
 8009948:	f8cd c014 	str.w	ip, [sp, #20]
 800994c:	9507      	str	r5, [sp, #28]
 800994e:	9408      	str	r4, [sp, #32]
 8009950:	4684      	mov	ip, r0
 8009952:	f7ff bb25 	b.w	8008fa0 <_vfiprintf_r+0x268>
 8009956:	4608      	mov	r0, r1
 8009958:	e6ad      	b.n	80096b6 <_vfiprintf_r+0x97e>
 800995a:	46a0      	mov	r8, r4
 800995c:	2500      	movs	r5, #0
 800995e:	f7ff ba5a 	b.w	8008e16 <_vfiprintf_r+0xde>
 8009962:	f8dd b020 	ldr.w	fp, [sp, #32]
 8009966:	f898 3001 	ldrb.w	r3, [r8, #1]
 800996a:	f8db 5000 	ldr.w	r5, [fp]
 800996e:	f10b 0204 	add.w	r2, fp, #4
 8009972:	2d00      	cmp	r5, #0
 8009974:	9208      	str	r2, [sp, #32]
 8009976:	46a0      	mov	r8, r4
 8009978:	f6bf aa4b 	bge.w	8008e12 <_vfiprintf_r+0xda>
 800997c:	f04f 35ff 	mov.w	r5, #4294967295
 8009980:	f7ff ba47 	b.w	8008e12 <_vfiprintf_r+0xda>
 8009984:	0800b608 	.word	0x0800b608
 8009988:	0800b77c 	.word	0x0800b77c

0800998c <vfiprintf>:
 800998c:	b430      	push	{r4, r5}
 800998e:	4c04      	ldr	r4, [pc, #16]	; (80099a0 <vfiprintf+0x14>)
 8009990:	460d      	mov	r5, r1
 8009992:	4613      	mov	r3, r2
 8009994:	4601      	mov	r1, r0
 8009996:	462a      	mov	r2, r5
 8009998:	6820      	ldr	r0, [r4, #0]
 800999a:	bc30      	pop	{r4, r5}
 800999c:	f7ff b9cc 	b.w	8008d38 <_vfiprintf_r>
 80099a0:	20000650 	.word	0x20000650

080099a4 <__sbprintf>:
 80099a4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80099a8:	460c      	mov	r4, r1
 80099aa:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 80099ae:	f8b1 900c 	ldrh.w	r9, [r1, #12]
 80099b2:	69e7      	ldr	r7, [r4, #28]
 80099b4:	6e49      	ldr	r1, [r1, #100]	; 0x64
 80099b6:	f8b4 800e 	ldrh.w	r8, [r4, #14]
 80099ba:	9119      	str	r1, [sp, #100]	; 0x64
 80099bc:	ad1a      	add	r5, sp, #104	; 0x68
 80099be:	f44f 6680 	mov.w	r6, #1024	; 0x400
 80099c2:	f04f 0e00 	mov.w	lr, #0
 80099c6:	9707      	str	r7, [sp, #28]
 80099c8:	f029 0902 	bic.w	r9, r9, #2
 80099cc:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80099ce:	9500      	str	r5, [sp, #0]
 80099d0:	4669      	mov	r1, sp
 80099d2:	9504      	str	r5, [sp, #16]
 80099d4:	9602      	str	r6, [sp, #8]
 80099d6:	9605      	str	r6, [sp, #20]
 80099d8:	f8ad 900c 	strh.w	r9, [sp, #12]
 80099dc:	f8ad 800e 	strh.w	r8, [sp, #14]
 80099e0:	9709      	str	r7, [sp, #36]	; 0x24
 80099e2:	f8cd e018 	str.w	lr, [sp, #24]
 80099e6:	4606      	mov	r6, r0
 80099e8:	f7ff f9a6 	bl	8008d38 <_vfiprintf_r>
 80099ec:	1e05      	subs	r5, r0, #0
 80099ee:	db07      	blt.n	8009a00 <__sbprintf+0x5c>
 80099f0:	4630      	mov	r0, r6
 80099f2:	4669      	mov	r1, sp
 80099f4:	f7fd fdca 	bl	800758c <_fflush_r>
 80099f8:	2800      	cmp	r0, #0
 80099fa:	bf18      	it	ne
 80099fc:	f04f 35ff 	movne.w	r5, #4294967295
 8009a00:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8009a04:	065b      	lsls	r3, r3, #25
 8009a06:	d503      	bpl.n	8009a10 <__sbprintf+0x6c>
 8009a08:	89a3      	ldrh	r3, [r4, #12]
 8009a0a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009a0e:	81a3      	strh	r3, [r4, #12]
 8009a10:	4628      	mov	r0, r5
 8009a12:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 8009a16:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009a1a:	bf00      	nop

08009a1c <_write_r>:
 8009a1c:	b570      	push	{r4, r5, r6, lr}
 8009a1e:	4c08      	ldr	r4, [pc, #32]	; (8009a40 <_write_r+0x24>)
 8009a20:	4606      	mov	r6, r0
 8009a22:	2500      	movs	r5, #0
 8009a24:	4608      	mov	r0, r1
 8009a26:	4611      	mov	r1, r2
 8009a28:	461a      	mov	r2, r3
 8009a2a:	6025      	str	r5, [r4, #0]
 8009a2c:	f7f9 ffec 	bl	8003a08 <_write>
 8009a30:	1c43      	adds	r3, r0, #1
 8009a32:	d000      	beq.n	8009a36 <_write_r+0x1a>
 8009a34:	bd70      	pop	{r4, r5, r6, pc}
 8009a36:	6823      	ldr	r3, [r4, #0]
 8009a38:	2b00      	cmp	r3, #0
 8009a3a:	d0fb      	beq.n	8009a34 <_write_r+0x18>
 8009a3c:	6033      	str	r3, [r6, #0]
 8009a3e:	bd70      	pop	{r4, r5, r6, pc}
 8009a40:	20003658 	.word	0x20003658

08009a44 <_calloc_r>:
 8009a44:	b510      	push	{r4, lr}
 8009a46:	fb02 f101 	mul.w	r1, r2, r1
 8009a4a:	f7fe f8e9 	bl	8007c20 <_malloc_r>
 8009a4e:	4604      	mov	r4, r0
 8009a50:	b168      	cbz	r0, 8009a6e <_calloc_r+0x2a>
 8009a52:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8009a56:	f022 0203 	bic.w	r2, r2, #3
 8009a5a:	3a04      	subs	r2, #4
 8009a5c:	2a24      	cmp	r2, #36	; 0x24
 8009a5e:	d818      	bhi.n	8009a92 <_calloc_r+0x4e>
 8009a60:	2a13      	cmp	r2, #19
 8009a62:	d806      	bhi.n	8009a72 <_calloc_r+0x2e>
 8009a64:	4603      	mov	r3, r0
 8009a66:	2200      	movs	r2, #0
 8009a68:	601a      	str	r2, [r3, #0]
 8009a6a:	605a      	str	r2, [r3, #4]
 8009a6c:	609a      	str	r2, [r3, #8]
 8009a6e:	4620      	mov	r0, r4
 8009a70:	bd10      	pop	{r4, pc}
 8009a72:	2300      	movs	r3, #0
 8009a74:	2a1b      	cmp	r2, #27
 8009a76:	6003      	str	r3, [r0, #0]
 8009a78:	6043      	str	r3, [r0, #4]
 8009a7a:	d90f      	bls.n	8009a9c <_calloc_r+0x58>
 8009a7c:	2a24      	cmp	r2, #36	; 0x24
 8009a7e:	6083      	str	r3, [r0, #8]
 8009a80:	60c3      	str	r3, [r0, #12]
 8009a82:	bf05      	ittet	eq
 8009a84:	6103      	streq	r3, [r0, #16]
 8009a86:	6143      	streq	r3, [r0, #20]
 8009a88:	f100 0310 	addne.w	r3, r0, #16
 8009a8c:	f100 0318 	addeq.w	r3, r0, #24
 8009a90:	e7e9      	b.n	8009a66 <_calloc_r+0x22>
 8009a92:	2100      	movs	r1, #0
 8009a94:	f7fe fba8 	bl	80081e8 <memset>
 8009a98:	4620      	mov	r0, r4
 8009a9a:	bd10      	pop	{r4, pc}
 8009a9c:	f100 0308 	add.w	r3, r0, #8
 8009aa0:	e7e1      	b.n	8009a66 <_calloc_r+0x22>
 8009aa2:	bf00      	nop

08009aa4 <_close_r>:
 8009aa4:	b538      	push	{r3, r4, r5, lr}
 8009aa6:	4c07      	ldr	r4, [pc, #28]	; (8009ac4 <_close_r+0x20>)
 8009aa8:	2300      	movs	r3, #0
 8009aaa:	4605      	mov	r5, r0
 8009aac:	4608      	mov	r0, r1
 8009aae:	6023      	str	r3, [r4, #0]
 8009ab0:	f7f9 fe86 	bl	80037c0 <_close>
 8009ab4:	1c43      	adds	r3, r0, #1
 8009ab6:	d000      	beq.n	8009aba <_close_r+0x16>
 8009ab8:	bd38      	pop	{r3, r4, r5, pc}
 8009aba:	6823      	ldr	r3, [r4, #0]
 8009abc:	2b00      	cmp	r3, #0
 8009abe:	d0fb      	beq.n	8009ab8 <_close_r+0x14>
 8009ac0:	602b      	str	r3, [r5, #0]
 8009ac2:	bd38      	pop	{r3, r4, r5, pc}
 8009ac4:	20003658 	.word	0x20003658

08009ac8 <_fclose_r>:
 8009ac8:	b570      	push	{r4, r5, r6, lr}
 8009aca:	460c      	mov	r4, r1
 8009acc:	4605      	mov	r5, r0
 8009ace:	b131      	cbz	r1, 8009ade <_fclose_r+0x16>
 8009ad0:	b110      	cbz	r0, 8009ad8 <_fclose_r+0x10>
 8009ad2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009ad4:	2b00      	cmp	r3, #0
 8009ad6:	d02f      	beq.n	8009b38 <_fclose_r+0x70>
 8009ad8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009adc:	b90b      	cbnz	r3, 8009ae2 <_fclose_r+0x1a>
 8009ade:	2000      	movs	r0, #0
 8009ae0:	bd70      	pop	{r4, r5, r6, pc}
 8009ae2:	4628      	mov	r0, r5
 8009ae4:	4621      	mov	r1, r4
 8009ae6:	f7fd fca7 	bl	8007438 <__sflush_r>
 8009aea:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8009aec:	4606      	mov	r6, r0
 8009aee:	b133      	cbz	r3, 8009afe <_fclose_r+0x36>
 8009af0:	4628      	mov	r0, r5
 8009af2:	69e1      	ldr	r1, [r4, #28]
 8009af4:	4798      	blx	r3
 8009af6:	2800      	cmp	r0, #0
 8009af8:	bfb8      	it	lt
 8009afa:	f04f 36ff 	movlt.w	r6, #4294967295
 8009afe:	89a3      	ldrh	r3, [r4, #12]
 8009b00:	061b      	lsls	r3, r3, #24
 8009b02:	d41c      	bmi.n	8009b3e <_fclose_r+0x76>
 8009b04:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8009b06:	b141      	cbz	r1, 8009b1a <_fclose_r+0x52>
 8009b08:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8009b0c:	4299      	cmp	r1, r3
 8009b0e:	d002      	beq.n	8009b16 <_fclose_r+0x4e>
 8009b10:	4628      	mov	r0, r5
 8009b12:	f7fd feb9 	bl	8007888 <_free_r>
 8009b16:	2300      	movs	r3, #0
 8009b18:	6323      	str	r3, [r4, #48]	; 0x30
 8009b1a:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8009b1c:	b121      	cbz	r1, 8009b28 <_fclose_r+0x60>
 8009b1e:	4628      	mov	r0, r5
 8009b20:	f7fd feb2 	bl	8007888 <_free_r>
 8009b24:	2300      	movs	r3, #0
 8009b26:	6463      	str	r3, [r4, #68]	; 0x44
 8009b28:	f7fd fe44 	bl	80077b4 <__sfp_lock_acquire>
 8009b2c:	2300      	movs	r3, #0
 8009b2e:	81a3      	strh	r3, [r4, #12]
 8009b30:	f7fd fe42 	bl	80077b8 <__sfp_lock_release>
 8009b34:	4630      	mov	r0, r6
 8009b36:	bd70      	pop	{r4, r5, r6, pc}
 8009b38:	f7fd fd7c 	bl	8007634 <__sinit>
 8009b3c:	e7cc      	b.n	8009ad8 <_fclose_r+0x10>
 8009b3e:	4628      	mov	r0, r5
 8009b40:	6921      	ldr	r1, [r4, #16]
 8009b42:	f7fd fea1 	bl	8007888 <_free_r>
 8009b46:	e7dd      	b.n	8009b04 <_fclose_r+0x3c>

08009b48 <fclose>:
 8009b48:	4b02      	ldr	r3, [pc, #8]	; (8009b54 <fclose+0xc>)
 8009b4a:	4601      	mov	r1, r0
 8009b4c:	6818      	ldr	r0, [r3, #0]
 8009b4e:	f7ff bfbb 	b.w	8009ac8 <_fclose_r>
 8009b52:	bf00      	nop
 8009b54:	20000650 	.word	0x20000650

08009b58 <_fputwc_r>:
 8009b58:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009b5c:	8993      	ldrh	r3, [r2, #12]
 8009b5e:	460f      	mov	r7, r1
 8009b60:	0499      	lsls	r1, r3, #18
 8009b62:	b082      	sub	sp, #8
 8009b64:	4614      	mov	r4, r2
 8009b66:	4680      	mov	r8, r0
 8009b68:	d406      	bmi.n	8009b78 <_fputwc_r+0x20>
 8009b6a:	6e52      	ldr	r2, [r2, #100]	; 0x64
 8009b6c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8009b70:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009b74:	81a3      	strh	r3, [r4, #12]
 8009b76:	6662      	str	r2, [r4, #100]	; 0x64
 8009b78:	f7fd ffc6 	bl	8007b08 <__locale_mb_cur_max>
 8009b7c:	2801      	cmp	r0, #1
 8009b7e:	d03d      	beq.n	8009bfc <_fputwc_r+0xa4>
 8009b80:	463a      	mov	r2, r7
 8009b82:	4640      	mov	r0, r8
 8009b84:	a901      	add	r1, sp, #4
 8009b86:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8009b8a:	f000 fcd3 	bl	800a534 <_wcrtomb_r>
 8009b8e:	1c42      	adds	r2, r0, #1
 8009b90:	4606      	mov	r6, r0
 8009b92:	d02c      	beq.n	8009bee <_fputwc_r+0x96>
 8009b94:	2800      	cmp	r0, #0
 8009b96:	d039      	beq.n	8009c0c <_fputwc_r+0xb4>
 8009b98:	f89d 1004 	ldrb.w	r1, [sp, #4]
 8009b9c:	2500      	movs	r5, #0
 8009b9e:	e009      	b.n	8009bb4 <_fputwc_r+0x5c>
 8009ba0:	6823      	ldr	r3, [r4, #0]
 8009ba2:	7019      	strb	r1, [r3, #0]
 8009ba4:	6823      	ldr	r3, [r4, #0]
 8009ba6:	3301      	adds	r3, #1
 8009ba8:	6023      	str	r3, [r4, #0]
 8009baa:	3501      	adds	r5, #1
 8009bac:	42b5      	cmp	r5, r6
 8009bae:	d22d      	bcs.n	8009c0c <_fputwc_r+0xb4>
 8009bb0:	ab01      	add	r3, sp, #4
 8009bb2:	5ce9      	ldrb	r1, [r5, r3]
 8009bb4:	68a3      	ldr	r3, [r4, #8]
 8009bb6:	3b01      	subs	r3, #1
 8009bb8:	2b00      	cmp	r3, #0
 8009bba:	60a3      	str	r3, [r4, #8]
 8009bbc:	daf0      	bge.n	8009ba0 <_fputwc_r+0x48>
 8009bbe:	69a2      	ldr	r2, [r4, #24]
 8009bc0:	4293      	cmp	r3, r2
 8009bc2:	db05      	blt.n	8009bd0 <_fputwc_r+0x78>
 8009bc4:	6823      	ldr	r3, [r4, #0]
 8009bc6:	7019      	strb	r1, [r3, #0]
 8009bc8:	6823      	ldr	r3, [r4, #0]
 8009bca:	7819      	ldrb	r1, [r3, #0]
 8009bcc:	290a      	cmp	r1, #10
 8009bce:	d1ea      	bne.n	8009ba6 <_fputwc_r+0x4e>
 8009bd0:	4640      	mov	r0, r8
 8009bd2:	4622      	mov	r2, r4
 8009bd4:	f000 fc52 	bl	800a47c <__swbuf_r>
 8009bd8:	f1b0 33ff 	subs.w	r3, r0, #4294967295
 8009bdc:	4258      	negs	r0, r3
 8009bde:	4158      	adcs	r0, r3
 8009be0:	2800      	cmp	r0, #0
 8009be2:	d0e2      	beq.n	8009baa <_fputwc_r+0x52>
 8009be4:	f04f 30ff 	mov.w	r0, #4294967295
 8009be8:	b002      	add	sp, #8
 8009bea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009bee:	89a3      	ldrh	r3, [r4, #12]
 8009bf0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009bf4:	81a3      	strh	r3, [r4, #12]
 8009bf6:	b002      	add	sp, #8
 8009bf8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009bfc:	1e7b      	subs	r3, r7, #1
 8009bfe:	2bfe      	cmp	r3, #254	; 0xfe
 8009c00:	d8be      	bhi.n	8009b80 <_fputwc_r+0x28>
 8009c02:	b2f9      	uxtb	r1, r7
 8009c04:	4606      	mov	r6, r0
 8009c06:	f88d 1004 	strb.w	r1, [sp, #4]
 8009c0a:	e7c7      	b.n	8009b9c <_fputwc_r+0x44>
 8009c0c:	4638      	mov	r0, r7
 8009c0e:	b002      	add	sp, #8
 8009c10:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08009c14 <fputwc>:
 8009c14:	4b08      	ldr	r3, [pc, #32]	; (8009c38 <fputwc+0x24>)
 8009c16:	b570      	push	{r4, r5, r6, lr}
 8009c18:	681c      	ldr	r4, [r3, #0]
 8009c1a:	4606      	mov	r6, r0
 8009c1c:	460d      	mov	r5, r1
 8009c1e:	b124      	cbz	r4, 8009c2a <fputwc+0x16>
 8009c20:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 8009c22:	b913      	cbnz	r3, 8009c2a <fputwc+0x16>
 8009c24:	4620      	mov	r0, r4
 8009c26:	f7fd fd05 	bl	8007634 <__sinit>
 8009c2a:	4620      	mov	r0, r4
 8009c2c:	4631      	mov	r1, r6
 8009c2e:	462a      	mov	r2, r5
 8009c30:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8009c34:	f7ff bf90 	b.w	8009b58 <_fputwc_r>
 8009c38:	20000650 	.word	0x20000650

08009c3c <_fstat_r>:
 8009c3c:	b538      	push	{r3, r4, r5, lr}
 8009c3e:	4c08      	ldr	r4, [pc, #32]	; (8009c60 <_fstat_r+0x24>)
 8009c40:	2300      	movs	r3, #0
 8009c42:	4605      	mov	r5, r0
 8009c44:	4608      	mov	r0, r1
 8009c46:	4611      	mov	r1, r2
 8009c48:	6023      	str	r3, [r4, #0]
 8009c4a:	f7f9 fde7 	bl	800381c <_fstat>
 8009c4e:	1c43      	adds	r3, r0, #1
 8009c50:	d000      	beq.n	8009c54 <_fstat_r+0x18>
 8009c52:	bd38      	pop	{r3, r4, r5, pc}
 8009c54:	6823      	ldr	r3, [r4, #0]
 8009c56:	2b00      	cmp	r3, #0
 8009c58:	d0fb      	beq.n	8009c52 <_fstat_r+0x16>
 8009c5a:	602b      	str	r3, [r5, #0]
 8009c5c:	bd38      	pop	{r3, r4, r5, pc}
 8009c5e:	bf00      	nop
 8009c60:	20003658 	.word	0x20003658

08009c64 <__sfvwrite_r>:
 8009c64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009c68:	6893      	ldr	r3, [r2, #8]
 8009c6a:	b083      	sub	sp, #12
 8009c6c:	4616      	mov	r6, r2
 8009c6e:	4681      	mov	r9, r0
 8009c70:	460c      	mov	r4, r1
 8009c72:	b32b      	cbz	r3, 8009cc0 <__sfvwrite_r+0x5c>
 8009c74:	898b      	ldrh	r3, [r1, #12]
 8009c76:	0719      	lsls	r1, r3, #28
 8009c78:	d526      	bpl.n	8009cc8 <__sfvwrite_r+0x64>
 8009c7a:	6922      	ldr	r2, [r4, #16]
 8009c7c:	b322      	cbz	r2, 8009cc8 <__sfvwrite_r+0x64>
 8009c7e:	f003 0202 	and.w	r2, r3, #2
 8009c82:	b292      	uxth	r2, r2
 8009c84:	6835      	ldr	r5, [r6, #0]
 8009c86:	2a00      	cmp	r2, #0
 8009c88:	d02c      	beq.n	8009ce4 <__sfvwrite_r+0x80>
 8009c8a:	f04f 0a00 	mov.w	sl, #0
 8009c8e:	f8df b2e8 	ldr.w	fp, [pc, #744]	; 8009f78 <__sfvwrite_r+0x314>
 8009c92:	46d0      	mov	r8, sl
 8009c94:	45d8      	cmp	r8, fp
 8009c96:	bf34      	ite	cc
 8009c98:	4643      	movcc	r3, r8
 8009c9a:	465b      	movcs	r3, fp
 8009c9c:	4652      	mov	r2, sl
 8009c9e:	4648      	mov	r0, r9
 8009ca0:	f1b8 0f00 	cmp.w	r8, #0
 8009ca4:	d04f      	beq.n	8009d46 <__sfvwrite_r+0xe2>
 8009ca6:	69e1      	ldr	r1, [r4, #28]
 8009ca8:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8009caa:	47b8      	blx	r7
 8009cac:	2800      	cmp	r0, #0
 8009cae:	dd56      	ble.n	8009d5e <__sfvwrite_r+0xfa>
 8009cb0:	68b3      	ldr	r3, [r6, #8]
 8009cb2:	1a1b      	subs	r3, r3, r0
 8009cb4:	4482      	add	sl, r0
 8009cb6:	ebc0 0808 	rsb	r8, r0, r8
 8009cba:	60b3      	str	r3, [r6, #8]
 8009cbc:	2b00      	cmp	r3, #0
 8009cbe:	d1e9      	bne.n	8009c94 <__sfvwrite_r+0x30>
 8009cc0:	2000      	movs	r0, #0
 8009cc2:	b003      	add	sp, #12
 8009cc4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009cc8:	4648      	mov	r0, r9
 8009cca:	4621      	mov	r1, r4
 8009ccc:	f7fc fb9c 	bl	8006408 <__swsetup_r>
 8009cd0:	2800      	cmp	r0, #0
 8009cd2:	f040 8148 	bne.w	8009f66 <__sfvwrite_r+0x302>
 8009cd6:	89a3      	ldrh	r3, [r4, #12]
 8009cd8:	6835      	ldr	r5, [r6, #0]
 8009cda:	f003 0202 	and.w	r2, r3, #2
 8009cde:	b292      	uxth	r2, r2
 8009ce0:	2a00      	cmp	r2, #0
 8009ce2:	d1d2      	bne.n	8009c8a <__sfvwrite_r+0x26>
 8009ce4:	f013 0a01 	ands.w	sl, r3, #1
 8009ce8:	d142      	bne.n	8009d70 <__sfvwrite_r+0x10c>
 8009cea:	46d0      	mov	r8, sl
 8009cec:	f1b8 0f00 	cmp.w	r8, #0
 8009cf0:	d023      	beq.n	8009d3a <__sfvwrite_r+0xd6>
 8009cf2:	059a      	lsls	r2, r3, #22
 8009cf4:	68a7      	ldr	r7, [r4, #8]
 8009cf6:	d576      	bpl.n	8009de6 <__sfvwrite_r+0x182>
 8009cf8:	45b8      	cmp	r8, r7
 8009cfa:	f0c0 80a4 	bcc.w	8009e46 <__sfvwrite_r+0x1e2>
 8009cfe:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8009d02:	f040 80b2 	bne.w	8009e6a <__sfvwrite_r+0x206>
 8009d06:	6820      	ldr	r0, [r4, #0]
 8009d08:	46bb      	mov	fp, r7
 8009d0a:	4651      	mov	r1, sl
 8009d0c:	465a      	mov	r2, fp
 8009d0e:	f000 f95b 	bl	8009fc8 <memmove>
 8009d12:	68a2      	ldr	r2, [r4, #8]
 8009d14:	6821      	ldr	r1, [r4, #0]
 8009d16:	1bd2      	subs	r2, r2, r7
 8009d18:	eb01 030b 	add.w	r3, r1, fp
 8009d1c:	60a2      	str	r2, [r4, #8]
 8009d1e:	6023      	str	r3, [r4, #0]
 8009d20:	4642      	mov	r2, r8
 8009d22:	68b3      	ldr	r3, [r6, #8]
 8009d24:	1a9b      	subs	r3, r3, r2
 8009d26:	4492      	add	sl, r2
 8009d28:	ebc2 0808 	rsb	r8, r2, r8
 8009d2c:	60b3      	str	r3, [r6, #8]
 8009d2e:	2b00      	cmp	r3, #0
 8009d30:	d0c6      	beq.n	8009cc0 <__sfvwrite_r+0x5c>
 8009d32:	89a3      	ldrh	r3, [r4, #12]
 8009d34:	f1b8 0f00 	cmp.w	r8, #0
 8009d38:	d1db      	bne.n	8009cf2 <__sfvwrite_r+0x8e>
 8009d3a:	f8d5 a000 	ldr.w	sl, [r5]
 8009d3e:	f8d5 8004 	ldr.w	r8, [r5, #4]
 8009d42:	3508      	adds	r5, #8
 8009d44:	e7d2      	b.n	8009cec <__sfvwrite_r+0x88>
 8009d46:	f8d5 a000 	ldr.w	sl, [r5]
 8009d4a:	f8d5 8004 	ldr.w	r8, [r5, #4]
 8009d4e:	3508      	adds	r5, #8
 8009d50:	e7a0      	b.n	8009c94 <__sfvwrite_r+0x30>
 8009d52:	4648      	mov	r0, r9
 8009d54:	4621      	mov	r1, r4
 8009d56:	f7fd fc19 	bl	800758c <_fflush_r>
 8009d5a:	2800      	cmp	r0, #0
 8009d5c:	d059      	beq.n	8009e12 <__sfvwrite_r+0x1ae>
 8009d5e:	89a3      	ldrh	r3, [r4, #12]
 8009d60:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009d64:	f04f 30ff 	mov.w	r0, #4294967295
 8009d68:	81a3      	strh	r3, [r4, #12]
 8009d6a:	b003      	add	sp, #12
 8009d6c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009d70:	4692      	mov	sl, r2
 8009d72:	9201      	str	r2, [sp, #4]
 8009d74:	4693      	mov	fp, r2
 8009d76:	4690      	mov	r8, r2
 8009d78:	f1b8 0f00 	cmp.w	r8, #0
 8009d7c:	d02b      	beq.n	8009dd6 <__sfvwrite_r+0x172>
 8009d7e:	9f01      	ldr	r7, [sp, #4]
 8009d80:	2f00      	cmp	r7, #0
 8009d82:	d064      	beq.n	8009e4e <__sfvwrite_r+0x1ea>
 8009d84:	6820      	ldr	r0, [r4, #0]
 8009d86:	6921      	ldr	r1, [r4, #16]
 8009d88:	f8d4 c008 	ldr.w	ip, [r4, #8]
 8009d8c:	6962      	ldr	r2, [r4, #20]
 8009d8e:	45c2      	cmp	sl, r8
 8009d90:	bf34      	ite	cc
 8009d92:	4653      	movcc	r3, sl
 8009d94:	4643      	movcs	r3, r8
 8009d96:	4288      	cmp	r0, r1
 8009d98:	461f      	mov	r7, r3
 8009d9a:	d903      	bls.n	8009da4 <__sfvwrite_r+0x140>
 8009d9c:	4494      	add	ip, r2
 8009d9e:	4563      	cmp	r3, ip
 8009da0:	f300 80ae 	bgt.w	8009f00 <__sfvwrite_r+0x29c>
 8009da4:	4293      	cmp	r3, r2
 8009da6:	db36      	blt.n	8009e16 <__sfvwrite_r+0x1b2>
 8009da8:	4613      	mov	r3, r2
 8009daa:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8009dac:	69e1      	ldr	r1, [r4, #28]
 8009dae:	4648      	mov	r0, r9
 8009db0:	465a      	mov	r2, fp
 8009db2:	47b8      	blx	r7
 8009db4:	1e07      	subs	r7, r0, #0
 8009db6:	ddd2      	ble.n	8009d5e <__sfvwrite_r+0xfa>
 8009db8:	ebba 0a07 	subs.w	sl, sl, r7
 8009dbc:	d03a      	beq.n	8009e34 <__sfvwrite_r+0x1d0>
 8009dbe:	68b3      	ldr	r3, [r6, #8]
 8009dc0:	1bdb      	subs	r3, r3, r7
 8009dc2:	44bb      	add	fp, r7
 8009dc4:	ebc7 0808 	rsb	r8, r7, r8
 8009dc8:	60b3      	str	r3, [r6, #8]
 8009dca:	2b00      	cmp	r3, #0
 8009dcc:	f43f af78 	beq.w	8009cc0 <__sfvwrite_r+0x5c>
 8009dd0:	f1b8 0f00 	cmp.w	r8, #0
 8009dd4:	d1d3      	bne.n	8009d7e <__sfvwrite_r+0x11a>
 8009dd6:	2700      	movs	r7, #0
 8009dd8:	f8d5 b000 	ldr.w	fp, [r5]
 8009ddc:	f8d5 8004 	ldr.w	r8, [r5, #4]
 8009de0:	9701      	str	r7, [sp, #4]
 8009de2:	3508      	adds	r5, #8
 8009de4:	e7c8      	b.n	8009d78 <__sfvwrite_r+0x114>
 8009de6:	6820      	ldr	r0, [r4, #0]
 8009de8:	6923      	ldr	r3, [r4, #16]
 8009dea:	4298      	cmp	r0, r3
 8009dec:	d802      	bhi.n	8009df4 <__sfvwrite_r+0x190>
 8009dee:	6963      	ldr	r3, [r4, #20]
 8009df0:	4598      	cmp	r8, r3
 8009df2:	d272      	bcs.n	8009eda <__sfvwrite_r+0x276>
 8009df4:	45b8      	cmp	r8, r7
 8009df6:	bf38      	it	cc
 8009df8:	4647      	movcc	r7, r8
 8009dfa:	463a      	mov	r2, r7
 8009dfc:	4651      	mov	r1, sl
 8009dfe:	f000 f8e3 	bl	8009fc8 <memmove>
 8009e02:	68a3      	ldr	r3, [r4, #8]
 8009e04:	6822      	ldr	r2, [r4, #0]
 8009e06:	1bdb      	subs	r3, r3, r7
 8009e08:	443a      	add	r2, r7
 8009e0a:	60a3      	str	r3, [r4, #8]
 8009e0c:	6022      	str	r2, [r4, #0]
 8009e0e:	2b00      	cmp	r3, #0
 8009e10:	d09f      	beq.n	8009d52 <__sfvwrite_r+0xee>
 8009e12:	463a      	mov	r2, r7
 8009e14:	e785      	b.n	8009d22 <__sfvwrite_r+0xbe>
 8009e16:	461a      	mov	r2, r3
 8009e18:	4659      	mov	r1, fp
 8009e1a:	9300      	str	r3, [sp, #0]
 8009e1c:	f000 f8d4 	bl	8009fc8 <memmove>
 8009e20:	9b00      	ldr	r3, [sp, #0]
 8009e22:	68a1      	ldr	r1, [r4, #8]
 8009e24:	6822      	ldr	r2, [r4, #0]
 8009e26:	1ac9      	subs	r1, r1, r3
 8009e28:	ebba 0a07 	subs.w	sl, sl, r7
 8009e2c:	4413      	add	r3, r2
 8009e2e:	60a1      	str	r1, [r4, #8]
 8009e30:	6023      	str	r3, [r4, #0]
 8009e32:	d1c4      	bne.n	8009dbe <__sfvwrite_r+0x15a>
 8009e34:	4648      	mov	r0, r9
 8009e36:	4621      	mov	r1, r4
 8009e38:	f7fd fba8 	bl	800758c <_fflush_r>
 8009e3c:	2800      	cmp	r0, #0
 8009e3e:	d18e      	bne.n	8009d5e <__sfvwrite_r+0xfa>
 8009e40:	f8cd a004 	str.w	sl, [sp, #4]
 8009e44:	e7bb      	b.n	8009dbe <__sfvwrite_r+0x15a>
 8009e46:	6820      	ldr	r0, [r4, #0]
 8009e48:	4647      	mov	r7, r8
 8009e4a:	46c3      	mov	fp, r8
 8009e4c:	e75d      	b.n	8009d0a <__sfvwrite_r+0xa6>
 8009e4e:	4658      	mov	r0, fp
 8009e50:	210a      	movs	r1, #10
 8009e52:	4642      	mov	r2, r8
 8009e54:	f7fe f980 	bl	8008158 <memchr>
 8009e58:	2800      	cmp	r0, #0
 8009e5a:	d07f      	beq.n	8009f5c <__sfvwrite_r+0x2f8>
 8009e5c:	f100 0a01 	add.w	sl, r0, #1
 8009e60:	2701      	movs	r7, #1
 8009e62:	ebcb 0a0a 	rsb	sl, fp, sl
 8009e66:	9701      	str	r7, [sp, #4]
 8009e68:	e78c      	b.n	8009d84 <__sfvwrite_r+0x120>
 8009e6a:	6822      	ldr	r2, [r4, #0]
 8009e6c:	6921      	ldr	r1, [r4, #16]
 8009e6e:	6967      	ldr	r7, [r4, #20]
 8009e70:	ebc1 0c02 	rsb	ip, r1, r2
 8009e74:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8009e78:	f10c 0201 	add.w	r2, ip, #1
 8009e7c:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8009e80:	4442      	add	r2, r8
 8009e82:	107f      	asrs	r7, r7, #1
 8009e84:	4297      	cmp	r7, r2
 8009e86:	bf34      	ite	cc
 8009e88:	4617      	movcc	r7, r2
 8009e8a:	463a      	movcs	r2, r7
 8009e8c:	055b      	lsls	r3, r3, #21
 8009e8e:	d54f      	bpl.n	8009f30 <__sfvwrite_r+0x2cc>
 8009e90:	4611      	mov	r1, r2
 8009e92:	4648      	mov	r0, r9
 8009e94:	f8cd c000 	str.w	ip, [sp]
 8009e98:	f7fd fec2 	bl	8007c20 <_malloc_r>
 8009e9c:	f8dd c000 	ldr.w	ip, [sp]
 8009ea0:	4683      	mov	fp, r0
 8009ea2:	2800      	cmp	r0, #0
 8009ea4:	d062      	beq.n	8009f6c <__sfvwrite_r+0x308>
 8009ea6:	4662      	mov	r2, ip
 8009ea8:	6921      	ldr	r1, [r4, #16]
 8009eaa:	f8cd c000 	str.w	ip, [sp]
 8009eae:	f7f9 fde9 	bl	8003a84 <memcpy>
 8009eb2:	89a2      	ldrh	r2, [r4, #12]
 8009eb4:	f8dd c000 	ldr.w	ip, [sp]
 8009eb8:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8009ebc:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8009ec0:	81a2      	strh	r2, [r4, #12]
 8009ec2:	eb0b 000c 	add.w	r0, fp, ip
 8009ec6:	ebcc 0207 	rsb	r2, ip, r7
 8009eca:	f8c4 b010 	str.w	fp, [r4, #16]
 8009ece:	6167      	str	r7, [r4, #20]
 8009ed0:	6020      	str	r0, [r4, #0]
 8009ed2:	60a2      	str	r2, [r4, #8]
 8009ed4:	4647      	mov	r7, r8
 8009ed6:	46c3      	mov	fp, r8
 8009ed8:	e717      	b.n	8009d0a <__sfvwrite_r+0xa6>
 8009eda:	f06f 4200 	mvn.w	r2, #2147483648	; 0x80000000
 8009ede:	4590      	cmp	r8, r2
 8009ee0:	bf38      	it	cc
 8009ee2:	4642      	movcc	r2, r8
 8009ee4:	fb92 f2f3 	sdiv	r2, r2, r3
 8009ee8:	fb02 f303 	mul.w	r3, r2, r3
 8009eec:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8009eee:	69e1      	ldr	r1, [r4, #28]
 8009ef0:	4648      	mov	r0, r9
 8009ef2:	4652      	mov	r2, sl
 8009ef4:	47b8      	blx	r7
 8009ef6:	2800      	cmp	r0, #0
 8009ef8:	f77f af31 	ble.w	8009d5e <__sfvwrite_r+0xfa>
 8009efc:	4602      	mov	r2, r0
 8009efe:	e710      	b.n	8009d22 <__sfvwrite_r+0xbe>
 8009f00:	4662      	mov	r2, ip
 8009f02:	4659      	mov	r1, fp
 8009f04:	f8cd c000 	str.w	ip, [sp]
 8009f08:	f000 f85e 	bl	8009fc8 <memmove>
 8009f0c:	f8dd c000 	ldr.w	ip, [sp]
 8009f10:	6823      	ldr	r3, [r4, #0]
 8009f12:	4463      	add	r3, ip
 8009f14:	6023      	str	r3, [r4, #0]
 8009f16:	4648      	mov	r0, r9
 8009f18:	4621      	mov	r1, r4
 8009f1a:	f8cd c000 	str.w	ip, [sp]
 8009f1e:	f7fd fb35 	bl	800758c <_fflush_r>
 8009f22:	f8dd c000 	ldr.w	ip, [sp]
 8009f26:	2800      	cmp	r0, #0
 8009f28:	f47f af19 	bne.w	8009d5e <__sfvwrite_r+0xfa>
 8009f2c:	4667      	mov	r7, ip
 8009f2e:	e743      	b.n	8009db8 <__sfvwrite_r+0x154>
 8009f30:	4648      	mov	r0, r9
 8009f32:	f8cd c000 	str.w	ip, [sp]
 8009f36:	f000 f8bb 	bl	800a0b0 <_realloc_r>
 8009f3a:	f8dd c000 	ldr.w	ip, [sp]
 8009f3e:	4683      	mov	fp, r0
 8009f40:	2800      	cmp	r0, #0
 8009f42:	d1be      	bne.n	8009ec2 <__sfvwrite_r+0x25e>
 8009f44:	4648      	mov	r0, r9
 8009f46:	6921      	ldr	r1, [r4, #16]
 8009f48:	f7fd fc9e 	bl	8007888 <_free_r>
 8009f4c:	89a3      	ldrh	r3, [r4, #12]
 8009f4e:	220c      	movs	r2, #12
 8009f50:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8009f54:	b29b      	uxth	r3, r3
 8009f56:	f8c9 2000 	str.w	r2, [r9]
 8009f5a:	e701      	b.n	8009d60 <__sfvwrite_r+0xfc>
 8009f5c:	2701      	movs	r7, #1
 8009f5e:	f108 0a01 	add.w	sl, r8, #1
 8009f62:	9701      	str	r7, [sp, #4]
 8009f64:	e70e      	b.n	8009d84 <__sfvwrite_r+0x120>
 8009f66:	f04f 30ff 	mov.w	r0, #4294967295
 8009f6a:	e6aa      	b.n	8009cc2 <__sfvwrite_r+0x5e>
 8009f6c:	230c      	movs	r3, #12
 8009f6e:	f8c9 3000 	str.w	r3, [r9]
 8009f72:	89a3      	ldrh	r3, [r4, #12]
 8009f74:	e6f4      	b.n	8009d60 <__sfvwrite_r+0xfc>
 8009f76:	bf00      	nop
 8009f78:	7ffffc00 	.word	0x7ffffc00

08009f7c <_isatty_r>:
 8009f7c:	b538      	push	{r3, r4, r5, lr}
 8009f7e:	4c07      	ldr	r4, [pc, #28]	; (8009f9c <_isatty_r+0x20>)
 8009f80:	2300      	movs	r3, #0
 8009f82:	4605      	mov	r5, r0
 8009f84:	4608      	mov	r0, r1
 8009f86:	6023      	str	r3, [r4, #0]
 8009f88:	f7f9 fc60 	bl	800384c <_isatty>
 8009f8c:	1c43      	adds	r3, r0, #1
 8009f8e:	d000      	beq.n	8009f92 <_isatty_r+0x16>
 8009f90:	bd38      	pop	{r3, r4, r5, pc}
 8009f92:	6823      	ldr	r3, [r4, #0]
 8009f94:	2b00      	cmp	r3, #0
 8009f96:	d0fb      	beq.n	8009f90 <_isatty_r+0x14>
 8009f98:	602b      	str	r3, [r5, #0]
 8009f9a:	bd38      	pop	{r3, r4, r5, pc}
 8009f9c:	20003658 	.word	0x20003658

08009fa0 <_lseek_r>:
 8009fa0:	b570      	push	{r4, r5, r6, lr}
 8009fa2:	4c08      	ldr	r4, [pc, #32]	; (8009fc4 <_lseek_r+0x24>)
 8009fa4:	4606      	mov	r6, r0
 8009fa6:	2500      	movs	r5, #0
 8009fa8:	4608      	mov	r0, r1
 8009faa:	4611      	mov	r1, r2
 8009fac:	461a      	mov	r2, r3
 8009fae:	6025      	str	r5, [r4, #0]
 8009fb0:	f7f9 fc86 	bl	80038c0 <_lseek>
 8009fb4:	1c43      	adds	r3, r0, #1
 8009fb6:	d000      	beq.n	8009fba <_lseek_r+0x1a>
 8009fb8:	bd70      	pop	{r4, r5, r6, pc}
 8009fba:	6823      	ldr	r3, [r4, #0]
 8009fbc:	2b00      	cmp	r3, #0
 8009fbe:	d0fb      	beq.n	8009fb8 <_lseek_r+0x18>
 8009fc0:	6033      	str	r3, [r6, #0]
 8009fc2:	bd70      	pop	{r4, r5, r6, pc}
 8009fc4:	20003658 	.word	0x20003658

08009fc8 <memmove>:
 8009fc8:	4288      	cmp	r0, r1
 8009fca:	b4f0      	push	{r4, r5, r6, r7}
 8009fcc:	d910      	bls.n	8009ff0 <memmove+0x28>
 8009fce:	188c      	adds	r4, r1, r2
 8009fd0:	42a0      	cmp	r0, r4
 8009fd2:	d20d      	bcs.n	8009ff0 <memmove+0x28>
 8009fd4:	1885      	adds	r5, r0, r2
 8009fd6:	1e53      	subs	r3, r2, #1
 8009fd8:	b142      	cbz	r2, 8009fec <memmove+0x24>
 8009fda:	4621      	mov	r1, r4
 8009fdc:	462a      	mov	r2, r5
 8009fde:	f811 4d01 	ldrb.w	r4, [r1, #-1]!
 8009fe2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8009fe6:	3b01      	subs	r3, #1
 8009fe8:	1c5c      	adds	r4, r3, #1
 8009fea:	d1f8      	bne.n	8009fde <memmove+0x16>
 8009fec:	bcf0      	pop	{r4, r5, r6, r7}
 8009fee:	4770      	bx	lr
 8009ff0:	2a0f      	cmp	r2, #15
 8009ff2:	d93f      	bls.n	800a074 <memmove+0xac>
 8009ff4:	ea40 0301 	orr.w	r3, r0, r1
 8009ff8:	079b      	lsls	r3, r3, #30
 8009ffa:	d13f      	bne.n	800a07c <memmove+0xb4>
 8009ffc:	f1a2 0710 	sub.w	r7, r2, #16
 800a000:	093f      	lsrs	r7, r7, #4
 800a002:	eb00 1607 	add.w	r6, r0, r7, lsl #4
 800a006:	3610      	adds	r6, #16
 800a008:	460c      	mov	r4, r1
 800a00a:	4603      	mov	r3, r0
 800a00c:	6825      	ldr	r5, [r4, #0]
 800a00e:	601d      	str	r5, [r3, #0]
 800a010:	6865      	ldr	r5, [r4, #4]
 800a012:	605d      	str	r5, [r3, #4]
 800a014:	68a5      	ldr	r5, [r4, #8]
 800a016:	609d      	str	r5, [r3, #8]
 800a018:	68e5      	ldr	r5, [r4, #12]
 800a01a:	60dd      	str	r5, [r3, #12]
 800a01c:	3310      	adds	r3, #16
 800a01e:	42b3      	cmp	r3, r6
 800a020:	f104 0410 	add.w	r4, r4, #16
 800a024:	d1f2      	bne.n	800a00c <memmove+0x44>
 800a026:	1c7b      	adds	r3, r7, #1
 800a028:	f002 0c0f 	and.w	ip, r2, #15
 800a02c:	011b      	lsls	r3, r3, #4
 800a02e:	f1bc 0f03 	cmp.w	ip, #3
 800a032:	4419      	add	r1, r3
 800a034:	4403      	add	r3, r0
 800a036:	d923      	bls.n	800a080 <memmove+0xb8>
 800a038:	460e      	mov	r6, r1
 800a03a:	461d      	mov	r5, r3
 800a03c:	4664      	mov	r4, ip
 800a03e:	3c04      	subs	r4, #4
 800a040:	f856 7b04 	ldr.w	r7, [r6], #4
 800a044:	f845 7b04 	str.w	r7, [r5], #4
 800a048:	2c03      	cmp	r4, #3
 800a04a:	d8f8      	bhi.n	800a03e <memmove+0x76>
 800a04c:	f1ac 0404 	sub.w	r4, ip, #4
 800a050:	f024 0403 	bic.w	r4, r4, #3
 800a054:	3404      	adds	r4, #4
 800a056:	f002 0203 	and.w	r2, r2, #3
 800a05a:	4423      	add	r3, r4
 800a05c:	4421      	add	r1, r4
 800a05e:	2a00      	cmp	r2, #0
 800a060:	d0c4      	beq.n	8009fec <memmove+0x24>
 800a062:	441a      	add	r2, r3
 800a064:	f811 4b01 	ldrb.w	r4, [r1], #1
 800a068:	f803 4b01 	strb.w	r4, [r3], #1
 800a06c:	4293      	cmp	r3, r2
 800a06e:	d1f9      	bne.n	800a064 <memmove+0x9c>
 800a070:	bcf0      	pop	{r4, r5, r6, r7}
 800a072:	4770      	bx	lr
 800a074:	4603      	mov	r3, r0
 800a076:	2a00      	cmp	r2, #0
 800a078:	d1f3      	bne.n	800a062 <memmove+0x9a>
 800a07a:	e7b7      	b.n	8009fec <memmove+0x24>
 800a07c:	4603      	mov	r3, r0
 800a07e:	e7f0      	b.n	800a062 <memmove+0x9a>
 800a080:	4662      	mov	r2, ip
 800a082:	2a00      	cmp	r2, #0
 800a084:	d1ed      	bne.n	800a062 <memmove+0x9a>
 800a086:	e7b1      	b.n	8009fec <memmove+0x24>

0800a088 <_read_r>:
 800a088:	b570      	push	{r4, r5, r6, lr}
 800a08a:	4c08      	ldr	r4, [pc, #32]	; (800a0ac <_read_r+0x24>)
 800a08c:	4606      	mov	r6, r0
 800a08e:	2500      	movs	r5, #0
 800a090:	4608      	mov	r0, r1
 800a092:	4611      	mov	r1, r2
 800a094:	461a      	mov	r2, r3
 800a096:	6025      	str	r5, [r4, #0]
 800a098:	f7f9 fc58 	bl	800394c <_read>
 800a09c:	1c43      	adds	r3, r0, #1
 800a09e:	d000      	beq.n	800a0a2 <_read_r+0x1a>
 800a0a0:	bd70      	pop	{r4, r5, r6, pc}
 800a0a2:	6823      	ldr	r3, [r4, #0]
 800a0a4:	2b00      	cmp	r3, #0
 800a0a6:	d0fb      	beq.n	800a0a0 <_read_r+0x18>
 800a0a8:	6033      	str	r3, [r6, #0]
 800a0aa:	bd70      	pop	{r4, r5, r6, pc}
 800a0ac:	20003658 	.word	0x20003658

0800a0b0 <_realloc_r>:
 800a0b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a0b4:	460c      	mov	r4, r1
 800a0b6:	b083      	sub	sp, #12
 800a0b8:	4690      	mov	r8, r2
 800a0ba:	4681      	mov	r9, r0
 800a0bc:	2900      	cmp	r1, #0
 800a0be:	f000 80e2 	beq.w	800a286 <_realloc_r+0x1d6>
 800a0c2:	f7fe f8db 	bl	800827c <__malloc_lock>
 800a0c6:	f108 060b 	add.w	r6, r8, #11
 800a0ca:	f854 3c04 	ldr.w	r3, [r4, #-4]
 800a0ce:	2e16      	cmp	r6, #22
 800a0d0:	f023 0503 	bic.w	r5, r3, #3
 800a0d4:	f1a4 0708 	sub.w	r7, r4, #8
 800a0d8:	d84b      	bhi.n	800a172 <_realloc_r+0xc2>
 800a0da:	2110      	movs	r1, #16
 800a0dc:	460e      	mov	r6, r1
 800a0de:	45b0      	cmp	r8, r6
 800a0e0:	d84c      	bhi.n	800a17c <_realloc_r+0xcc>
 800a0e2:	428d      	cmp	r5, r1
 800a0e4:	da78      	bge.n	800a1d8 <_realloc_r+0x128>
 800a0e6:	f8df b390 	ldr.w	fp, [pc, #912]	; 800a478 <_realloc_r+0x3c8>
 800a0ea:	f8db e008 	ldr.w	lr, [fp, #8]
 800a0ee:	1978      	adds	r0, r7, r5
 800a0f0:	4586      	cmp	lr, r0
 800a0f2:	f000 80ce 	beq.w	800a292 <_realloc_r+0x1e2>
 800a0f6:	6842      	ldr	r2, [r0, #4]
 800a0f8:	f022 0c01 	bic.w	ip, r2, #1
 800a0fc:	4484      	add	ip, r0
 800a0fe:	f8dc c004 	ldr.w	ip, [ip, #4]
 800a102:	f01c 0f01 	tst.w	ip, #1
 800a106:	d07a      	beq.n	800a1fe <_realloc_r+0x14e>
 800a108:	2200      	movs	r2, #0
 800a10a:	4610      	mov	r0, r2
 800a10c:	07db      	lsls	r3, r3, #31
 800a10e:	f100 8092 	bmi.w	800a236 <_realloc_r+0x186>
 800a112:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800a116:	ebc3 0a07 	rsb	sl, r3, r7
 800a11a:	f8da 3004 	ldr.w	r3, [sl, #4]
 800a11e:	f023 0303 	bic.w	r3, r3, #3
 800a122:	442b      	add	r3, r5
 800a124:	b388      	cbz	r0, 800a18a <_realloc_r+0xda>
 800a126:	4570      	cmp	r0, lr
 800a128:	f000 80ed 	beq.w	800a306 <_realloc_r+0x256>
 800a12c:	eb02 0e03 	add.w	lr, r2, r3
 800a130:	458e      	cmp	lr, r1
 800a132:	db2a      	blt.n	800a18a <_realloc_r+0xda>
 800a134:	68c3      	ldr	r3, [r0, #12]
 800a136:	6882      	ldr	r2, [r0, #8]
 800a138:	4657      	mov	r7, sl
 800a13a:	60d3      	str	r3, [r2, #12]
 800a13c:	609a      	str	r2, [r3, #8]
 800a13e:	f857 1f08 	ldr.w	r1, [r7, #8]!
 800a142:	f8da 300c 	ldr.w	r3, [sl, #12]
 800a146:	60cb      	str	r3, [r1, #12]
 800a148:	1f2a      	subs	r2, r5, #4
 800a14a:	2a24      	cmp	r2, #36	; 0x24
 800a14c:	6099      	str	r1, [r3, #8]
 800a14e:	f200 8126 	bhi.w	800a39e <_realloc_r+0x2ee>
 800a152:	2a13      	cmp	r2, #19
 800a154:	f240 80b3 	bls.w	800a2be <_realloc_r+0x20e>
 800a158:	6823      	ldr	r3, [r4, #0]
 800a15a:	f8ca 3008 	str.w	r3, [sl, #8]
 800a15e:	6863      	ldr	r3, [r4, #4]
 800a160:	f8ca 300c 	str.w	r3, [sl, #12]
 800a164:	2a1b      	cmp	r2, #27
 800a166:	f200 8130 	bhi.w	800a3ca <_realloc_r+0x31a>
 800a16a:	3408      	adds	r4, #8
 800a16c:	f10a 0310 	add.w	r3, sl, #16
 800a170:	e0a6      	b.n	800a2c0 <_realloc_r+0x210>
 800a172:	f026 0607 	bic.w	r6, r6, #7
 800a176:	2e00      	cmp	r6, #0
 800a178:	4631      	mov	r1, r6
 800a17a:	dab0      	bge.n	800a0de <_realloc_r+0x2e>
 800a17c:	230c      	movs	r3, #12
 800a17e:	2000      	movs	r0, #0
 800a180:	f8c9 3000 	str.w	r3, [r9]
 800a184:	b003      	add	sp, #12
 800a186:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a18a:	428b      	cmp	r3, r1
 800a18c:	db53      	blt.n	800a236 <_realloc_r+0x186>
 800a18e:	4657      	mov	r7, sl
 800a190:	f8da 100c 	ldr.w	r1, [sl, #12]
 800a194:	f857 0f08 	ldr.w	r0, [r7, #8]!
 800a198:	1f2a      	subs	r2, r5, #4
 800a19a:	2a24      	cmp	r2, #36	; 0x24
 800a19c:	60c1      	str	r1, [r0, #12]
 800a19e:	6088      	str	r0, [r1, #8]
 800a1a0:	f200 8109 	bhi.w	800a3b6 <_realloc_r+0x306>
 800a1a4:	2a13      	cmp	r2, #19
 800a1a6:	f240 8104 	bls.w	800a3b2 <_realloc_r+0x302>
 800a1aa:	6821      	ldr	r1, [r4, #0]
 800a1ac:	f8ca 1008 	str.w	r1, [sl, #8]
 800a1b0:	6861      	ldr	r1, [r4, #4]
 800a1b2:	f8ca 100c 	str.w	r1, [sl, #12]
 800a1b6:	2a1b      	cmp	r2, #27
 800a1b8:	f200 811c 	bhi.w	800a3f4 <_realloc_r+0x344>
 800a1bc:	3408      	adds	r4, #8
 800a1be:	f10a 0210 	add.w	r2, sl, #16
 800a1c2:	6821      	ldr	r1, [r4, #0]
 800a1c4:	6011      	str	r1, [r2, #0]
 800a1c6:	6861      	ldr	r1, [r4, #4]
 800a1c8:	6051      	str	r1, [r2, #4]
 800a1ca:	68a1      	ldr	r1, [r4, #8]
 800a1cc:	6091      	str	r1, [r2, #8]
 800a1ce:	461d      	mov	r5, r3
 800a1d0:	f8da 3004 	ldr.w	r3, [sl, #4]
 800a1d4:	463c      	mov	r4, r7
 800a1d6:	4657      	mov	r7, sl
 800a1d8:	1baa      	subs	r2, r5, r6
 800a1da:	2a0f      	cmp	r2, #15
 800a1dc:	f003 0301 	and.w	r3, r3, #1
 800a1e0:	d819      	bhi.n	800a216 <_realloc_r+0x166>
 800a1e2:	432b      	orrs	r3, r5
 800a1e4:	443d      	add	r5, r7
 800a1e6:	607b      	str	r3, [r7, #4]
 800a1e8:	686b      	ldr	r3, [r5, #4]
 800a1ea:	f043 0301 	orr.w	r3, r3, #1
 800a1ee:	606b      	str	r3, [r5, #4]
 800a1f0:	4648      	mov	r0, r9
 800a1f2:	f7fe f845 	bl	8008280 <__malloc_unlock>
 800a1f6:	4620      	mov	r0, r4
 800a1f8:	b003      	add	sp, #12
 800a1fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a1fe:	f022 0203 	bic.w	r2, r2, #3
 800a202:	eb02 0c05 	add.w	ip, r2, r5
 800a206:	458c      	cmp	ip, r1
 800a208:	db80      	blt.n	800a10c <_realloc_r+0x5c>
 800a20a:	68c2      	ldr	r2, [r0, #12]
 800a20c:	6881      	ldr	r1, [r0, #8]
 800a20e:	4665      	mov	r5, ip
 800a210:	60ca      	str	r2, [r1, #12]
 800a212:	6091      	str	r1, [r2, #8]
 800a214:	e7e0      	b.n	800a1d8 <_realloc_r+0x128>
 800a216:	19b9      	adds	r1, r7, r6
 800a218:	f042 0001 	orr.w	r0, r2, #1
 800a21c:	431e      	orrs	r6, r3
 800a21e:	440a      	add	r2, r1
 800a220:	607e      	str	r6, [r7, #4]
 800a222:	6048      	str	r0, [r1, #4]
 800a224:	6853      	ldr	r3, [r2, #4]
 800a226:	f043 0301 	orr.w	r3, r3, #1
 800a22a:	3108      	adds	r1, #8
 800a22c:	6053      	str	r3, [r2, #4]
 800a22e:	4648      	mov	r0, r9
 800a230:	f7fd fb2a 	bl	8007888 <_free_r>
 800a234:	e7dc      	b.n	800a1f0 <_realloc_r+0x140>
 800a236:	4641      	mov	r1, r8
 800a238:	4648      	mov	r0, r9
 800a23a:	f7fd fcf1 	bl	8007c20 <_malloc_r>
 800a23e:	4680      	mov	r8, r0
 800a240:	b1d0      	cbz	r0, 800a278 <_realloc_r+0x1c8>
 800a242:	f854 3c04 	ldr.w	r3, [r4, #-4]
 800a246:	f023 0201 	bic.w	r2, r3, #1
 800a24a:	443a      	add	r2, r7
 800a24c:	f1a0 0108 	sub.w	r1, r0, #8
 800a250:	4291      	cmp	r1, r2
 800a252:	f000 809e 	beq.w	800a392 <_realloc_r+0x2e2>
 800a256:	1f2a      	subs	r2, r5, #4
 800a258:	2a24      	cmp	r2, #36	; 0x24
 800a25a:	d850      	bhi.n	800a2fe <_realloc_r+0x24e>
 800a25c:	2a13      	cmp	r2, #19
 800a25e:	d823      	bhi.n	800a2a8 <_realloc_r+0x1f8>
 800a260:	4603      	mov	r3, r0
 800a262:	4622      	mov	r2, r4
 800a264:	6811      	ldr	r1, [r2, #0]
 800a266:	6019      	str	r1, [r3, #0]
 800a268:	6851      	ldr	r1, [r2, #4]
 800a26a:	6059      	str	r1, [r3, #4]
 800a26c:	6892      	ldr	r2, [r2, #8]
 800a26e:	609a      	str	r2, [r3, #8]
 800a270:	4621      	mov	r1, r4
 800a272:	4648      	mov	r0, r9
 800a274:	f7fd fb08 	bl	8007888 <_free_r>
 800a278:	4648      	mov	r0, r9
 800a27a:	f7fe f801 	bl	8008280 <__malloc_unlock>
 800a27e:	4640      	mov	r0, r8
 800a280:	b003      	add	sp, #12
 800a282:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a286:	4611      	mov	r1, r2
 800a288:	b003      	add	sp, #12
 800a28a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a28e:	f7fd bcc7 	b.w	8007c20 <_malloc_r>
 800a292:	f8de 2004 	ldr.w	r2, [lr, #4]
 800a296:	f022 0203 	bic.w	r2, r2, #3
 800a29a:	1950      	adds	r0, r2, r5
 800a29c:	f106 0c10 	add.w	ip, r6, #16
 800a2a0:	4560      	cmp	r0, ip
 800a2a2:	da19      	bge.n	800a2d8 <_realloc_r+0x228>
 800a2a4:	4670      	mov	r0, lr
 800a2a6:	e731      	b.n	800a10c <_realloc_r+0x5c>
 800a2a8:	6823      	ldr	r3, [r4, #0]
 800a2aa:	6003      	str	r3, [r0, #0]
 800a2ac:	6863      	ldr	r3, [r4, #4]
 800a2ae:	6043      	str	r3, [r0, #4]
 800a2b0:	2a1b      	cmp	r2, #27
 800a2b2:	d863      	bhi.n	800a37c <_realloc_r+0x2cc>
 800a2b4:	f100 0308 	add.w	r3, r0, #8
 800a2b8:	f104 0208 	add.w	r2, r4, #8
 800a2bc:	e7d2      	b.n	800a264 <_realloc_r+0x1b4>
 800a2be:	463b      	mov	r3, r7
 800a2c0:	6822      	ldr	r2, [r4, #0]
 800a2c2:	601a      	str	r2, [r3, #0]
 800a2c4:	6862      	ldr	r2, [r4, #4]
 800a2c6:	605a      	str	r2, [r3, #4]
 800a2c8:	68a2      	ldr	r2, [r4, #8]
 800a2ca:	609a      	str	r2, [r3, #8]
 800a2cc:	463c      	mov	r4, r7
 800a2ce:	4675      	mov	r5, lr
 800a2d0:	f8da 3004 	ldr.w	r3, [sl, #4]
 800a2d4:	4657      	mov	r7, sl
 800a2d6:	e77f      	b.n	800a1d8 <_realloc_r+0x128>
 800a2d8:	4437      	add	r7, r6
 800a2da:	1b83      	subs	r3, r0, r6
 800a2dc:	f043 0301 	orr.w	r3, r3, #1
 800a2e0:	f8cb 7008 	str.w	r7, [fp, #8]
 800a2e4:	607b      	str	r3, [r7, #4]
 800a2e6:	f854 3c04 	ldr.w	r3, [r4, #-4]
 800a2ea:	f003 0301 	and.w	r3, r3, #1
 800a2ee:	431e      	orrs	r6, r3
 800a2f0:	4648      	mov	r0, r9
 800a2f2:	f844 6c04 	str.w	r6, [r4, #-4]
 800a2f6:	f7fd ffc3 	bl	8008280 <__malloc_unlock>
 800a2fa:	4620      	mov	r0, r4
 800a2fc:	e77c      	b.n	800a1f8 <_realloc_r+0x148>
 800a2fe:	4621      	mov	r1, r4
 800a300:	f7ff fe62 	bl	8009fc8 <memmove>
 800a304:	e7b4      	b.n	800a270 <_realloc_r+0x1c0>
 800a306:	eb02 0c03 	add.w	ip, r2, r3
 800a30a:	f106 0210 	add.w	r2, r6, #16
 800a30e:	4594      	cmp	ip, r2
 800a310:	f6ff af3b 	blt.w	800a18a <_realloc_r+0xda>
 800a314:	4657      	mov	r7, sl
 800a316:	f8da 300c 	ldr.w	r3, [sl, #12]
 800a31a:	f857 1f08 	ldr.w	r1, [r7, #8]!
 800a31e:	1f2a      	subs	r2, r5, #4
 800a320:	2a24      	cmp	r2, #36	; 0x24
 800a322:	60cb      	str	r3, [r1, #12]
 800a324:	6099      	str	r1, [r3, #8]
 800a326:	f200 8087 	bhi.w	800a438 <_realloc_r+0x388>
 800a32a:	2a13      	cmp	r2, #19
 800a32c:	d978      	bls.n	800a420 <_realloc_r+0x370>
 800a32e:	6823      	ldr	r3, [r4, #0]
 800a330:	f8ca 3008 	str.w	r3, [sl, #8]
 800a334:	6863      	ldr	r3, [r4, #4]
 800a336:	f8ca 300c 	str.w	r3, [sl, #12]
 800a33a:	2a1b      	cmp	r2, #27
 800a33c:	f200 8085 	bhi.w	800a44a <_realloc_r+0x39a>
 800a340:	3408      	adds	r4, #8
 800a342:	f10a 0310 	add.w	r3, sl, #16
 800a346:	6822      	ldr	r2, [r4, #0]
 800a348:	601a      	str	r2, [r3, #0]
 800a34a:	6862      	ldr	r2, [r4, #4]
 800a34c:	605a      	str	r2, [r3, #4]
 800a34e:	68a2      	ldr	r2, [r4, #8]
 800a350:	609a      	str	r2, [r3, #8]
 800a352:	eb0a 0306 	add.w	r3, sl, r6
 800a356:	ebc6 020c 	rsb	r2, r6, ip
 800a35a:	f042 0201 	orr.w	r2, r2, #1
 800a35e:	f8cb 3008 	str.w	r3, [fp, #8]
 800a362:	605a      	str	r2, [r3, #4]
 800a364:	f8da 3004 	ldr.w	r3, [sl, #4]
 800a368:	f003 0301 	and.w	r3, r3, #1
 800a36c:	431e      	orrs	r6, r3
 800a36e:	4648      	mov	r0, r9
 800a370:	f8ca 6004 	str.w	r6, [sl, #4]
 800a374:	f7fd ff84 	bl	8008280 <__malloc_unlock>
 800a378:	4638      	mov	r0, r7
 800a37a:	e73d      	b.n	800a1f8 <_realloc_r+0x148>
 800a37c:	68a3      	ldr	r3, [r4, #8]
 800a37e:	6083      	str	r3, [r0, #8]
 800a380:	68e3      	ldr	r3, [r4, #12]
 800a382:	60c3      	str	r3, [r0, #12]
 800a384:	2a24      	cmp	r2, #36	; 0x24
 800a386:	d02c      	beq.n	800a3e2 <_realloc_r+0x332>
 800a388:	f100 0310 	add.w	r3, r0, #16
 800a38c:	f104 0210 	add.w	r2, r4, #16
 800a390:	e768      	b.n	800a264 <_realloc_r+0x1b4>
 800a392:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800a396:	f022 0203 	bic.w	r2, r2, #3
 800a39a:	4415      	add	r5, r2
 800a39c:	e71c      	b.n	800a1d8 <_realloc_r+0x128>
 800a39e:	4621      	mov	r1, r4
 800a3a0:	4638      	mov	r0, r7
 800a3a2:	4675      	mov	r5, lr
 800a3a4:	463c      	mov	r4, r7
 800a3a6:	f7ff fe0f 	bl	8009fc8 <memmove>
 800a3aa:	4657      	mov	r7, sl
 800a3ac:	f8da 3004 	ldr.w	r3, [sl, #4]
 800a3b0:	e712      	b.n	800a1d8 <_realloc_r+0x128>
 800a3b2:	463a      	mov	r2, r7
 800a3b4:	e705      	b.n	800a1c2 <_realloc_r+0x112>
 800a3b6:	4621      	mov	r1, r4
 800a3b8:	4638      	mov	r0, r7
 800a3ba:	461d      	mov	r5, r3
 800a3bc:	463c      	mov	r4, r7
 800a3be:	f7ff fe03 	bl	8009fc8 <memmove>
 800a3c2:	4657      	mov	r7, sl
 800a3c4:	f8da 3004 	ldr.w	r3, [sl, #4]
 800a3c8:	e706      	b.n	800a1d8 <_realloc_r+0x128>
 800a3ca:	68a3      	ldr	r3, [r4, #8]
 800a3cc:	f8ca 3010 	str.w	r3, [sl, #16]
 800a3d0:	68e3      	ldr	r3, [r4, #12]
 800a3d2:	f8ca 3014 	str.w	r3, [sl, #20]
 800a3d6:	2a24      	cmp	r2, #36	; 0x24
 800a3d8:	d018      	beq.n	800a40c <_realloc_r+0x35c>
 800a3da:	3410      	adds	r4, #16
 800a3dc:	f10a 0318 	add.w	r3, sl, #24
 800a3e0:	e76e      	b.n	800a2c0 <_realloc_r+0x210>
 800a3e2:	6923      	ldr	r3, [r4, #16]
 800a3e4:	6103      	str	r3, [r0, #16]
 800a3e6:	6963      	ldr	r3, [r4, #20]
 800a3e8:	6143      	str	r3, [r0, #20]
 800a3ea:	f104 0218 	add.w	r2, r4, #24
 800a3ee:	f100 0318 	add.w	r3, r0, #24
 800a3f2:	e737      	b.n	800a264 <_realloc_r+0x1b4>
 800a3f4:	68a1      	ldr	r1, [r4, #8]
 800a3f6:	f8ca 1010 	str.w	r1, [sl, #16]
 800a3fa:	68e1      	ldr	r1, [r4, #12]
 800a3fc:	f8ca 1014 	str.w	r1, [sl, #20]
 800a400:	2a24      	cmp	r2, #36	; 0x24
 800a402:	d00f      	beq.n	800a424 <_realloc_r+0x374>
 800a404:	3410      	adds	r4, #16
 800a406:	f10a 0218 	add.w	r2, sl, #24
 800a40a:	e6da      	b.n	800a1c2 <_realloc_r+0x112>
 800a40c:	6923      	ldr	r3, [r4, #16]
 800a40e:	f8ca 3018 	str.w	r3, [sl, #24]
 800a412:	6963      	ldr	r3, [r4, #20]
 800a414:	f8ca 301c 	str.w	r3, [sl, #28]
 800a418:	3418      	adds	r4, #24
 800a41a:	f10a 0320 	add.w	r3, sl, #32
 800a41e:	e74f      	b.n	800a2c0 <_realloc_r+0x210>
 800a420:	463b      	mov	r3, r7
 800a422:	e790      	b.n	800a346 <_realloc_r+0x296>
 800a424:	6922      	ldr	r2, [r4, #16]
 800a426:	f8ca 2018 	str.w	r2, [sl, #24]
 800a42a:	6962      	ldr	r2, [r4, #20]
 800a42c:	f8ca 201c 	str.w	r2, [sl, #28]
 800a430:	3418      	adds	r4, #24
 800a432:	f10a 0220 	add.w	r2, sl, #32
 800a436:	e6c4      	b.n	800a1c2 <_realloc_r+0x112>
 800a438:	4621      	mov	r1, r4
 800a43a:	4638      	mov	r0, r7
 800a43c:	f8cd c004 	str.w	ip, [sp, #4]
 800a440:	f7ff fdc2 	bl	8009fc8 <memmove>
 800a444:	f8dd c004 	ldr.w	ip, [sp, #4]
 800a448:	e783      	b.n	800a352 <_realloc_r+0x2a2>
 800a44a:	68a3      	ldr	r3, [r4, #8]
 800a44c:	f8ca 3010 	str.w	r3, [sl, #16]
 800a450:	68e3      	ldr	r3, [r4, #12]
 800a452:	f8ca 3014 	str.w	r3, [sl, #20]
 800a456:	2a24      	cmp	r2, #36	; 0x24
 800a458:	d003      	beq.n	800a462 <_realloc_r+0x3b2>
 800a45a:	3410      	adds	r4, #16
 800a45c:	f10a 0318 	add.w	r3, sl, #24
 800a460:	e771      	b.n	800a346 <_realloc_r+0x296>
 800a462:	6923      	ldr	r3, [r4, #16]
 800a464:	f8ca 3018 	str.w	r3, [sl, #24]
 800a468:	6963      	ldr	r3, [r4, #20]
 800a46a:	f8ca 301c 	str.w	r3, [sl, #28]
 800a46e:	3418      	adds	r4, #24
 800a470:	f10a 0320 	add.w	r3, sl, #32
 800a474:	e767      	b.n	800a346 <_realloc_r+0x296>
 800a476:	bf00      	nop
 800a478:	200006d0 	.word	0x200006d0

0800a47c <__swbuf_r>:
 800a47c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a47e:	460d      	mov	r5, r1
 800a480:	4614      	mov	r4, r2
 800a482:	4607      	mov	r7, r0
 800a484:	b110      	cbz	r0, 800a48c <__swbuf_r+0x10>
 800a486:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800a488:	2b00      	cmp	r3, #0
 800a48a:	d048      	beq.n	800a51e <__swbuf_r+0xa2>
 800a48c:	89a2      	ldrh	r2, [r4, #12]
 800a48e:	69a3      	ldr	r3, [r4, #24]
 800a490:	60a3      	str	r3, [r4, #8]
 800a492:	b293      	uxth	r3, r2
 800a494:	0718      	lsls	r0, r3, #28
 800a496:	d538      	bpl.n	800a50a <__swbuf_r+0x8e>
 800a498:	6926      	ldr	r6, [r4, #16]
 800a49a:	2e00      	cmp	r6, #0
 800a49c:	d035      	beq.n	800a50a <__swbuf_r+0x8e>
 800a49e:	0499      	lsls	r1, r3, #18
 800a4a0:	b2ed      	uxtb	r5, r5
 800a4a2:	d515      	bpl.n	800a4d0 <__swbuf_r+0x54>
 800a4a4:	6823      	ldr	r3, [r4, #0]
 800a4a6:	6962      	ldr	r2, [r4, #20]
 800a4a8:	1b9e      	subs	r6, r3, r6
 800a4aa:	4296      	cmp	r6, r2
 800a4ac:	da1c      	bge.n	800a4e8 <__swbuf_r+0x6c>
 800a4ae:	3601      	adds	r6, #1
 800a4b0:	68a2      	ldr	r2, [r4, #8]
 800a4b2:	1c59      	adds	r1, r3, #1
 800a4b4:	3a01      	subs	r2, #1
 800a4b6:	60a2      	str	r2, [r4, #8]
 800a4b8:	6021      	str	r1, [r4, #0]
 800a4ba:	701d      	strb	r5, [r3, #0]
 800a4bc:	6963      	ldr	r3, [r4, #20]
 800a4be:	42b3      	cmp	r3, r6
 800a4c0:	d01a      	beq.n	800a4f8 <__swbuf_r+0x7c>
 800a4c2:	89a3      	ldrh	r3, [r4, #12]
 800a4c4:	07db      	lsls	r3, r3, #31
 800a4c6:	d501      	bpl.n	800a4cc <__swbuf_r+0x50>
 800a4c8:	2d0a      	cmp	r5, #10
 800a4ca:	d015      	beq.n	800a4f8 <__swbuf_r+0x7c>
 800a4cc:	4628      	mov	r0, r5
 800a4ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a4d0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800a4d2:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 800a4d6:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800a4da:	6663      	str	r3, [r4, #100]	; 0x64
 800a4dc:	6823      	ldr	r3, [r4, #0]
 800a4de:	81a2      	strh	r2, [r4, #12]
 800a4e0:	6962      	ldr	r2, [r4, #20]
 800a4e2:	1b9e      	subs	r6, r3, r6
 800a4e4:	4296      	cmp	r6, r2
 800a4e6:	dbe2      	blt.n	800a4ae <__swbuf_r+0x32>
 800a4e8:	4638      	mov	r0, r7
 800a4ea:	4621      	mov	r1, r4
 800a4ec:	f7fd f84e 	bl	800758c <_fflush_r>
 800a4f0:	b940      	cbnz	r0, 800a504 <__swbuf_r+0x88>
 800a4f2:	6823      	ldr	r3, [r4, #0]
 800a4f4:	2601      	movs	r6, #1
 800a4f6:	e7db      	b.n	800a4b0 <__swbuf_r+0x34>
 800a4f8:	4638      	mov	r0, r7
 800a4fa:	4621      	mov	r1, r4
 800a4fc:	f7fd f846 	bl	800758c <_fflush_r>
 800a500:	2800      	cmp	r0, #0
 800a502:	d0e3      	beq.n	800a4cc <__swbuf_r+0x50>
 800a504:	f04f 30ff 	mov.w	r0, #4294967295
 800a508:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a50a:	4638      	mov	r0, r7
 800a50c:	4621      	mov	r1, r4
 800a50e:	f7fb ff7b 	bl	8006408 <__swsetup_r>
 800a512:	2800      	cmp	r0, #0
 800a514:	d1f6      	bne.n	800a504 <__swbuf_r+0x88>
 800a516:	89a2      	ldrh	r2, [r4, #12]
 800a518:	6926      	ldr	r6, [r4, #16]
 800a51a:	b293      	uxth	r3, r2
 800a51c:	e7bf      	b.n	800a49e <__swbuf_r+0x22>
 800a51e:	f7fd f889 	bl	8007634 <__sinit>
 800a522:	e7b3      	b.n	800a48c <__swbuf_r+0x10>

0800a524 <__swbuf>:
 800a524:	4b02      	ldr	r3, [pc, #8]	; (800a530 <__swbuf+0xc>)
 800a526:	460a      	mov	r2, r1
 800a528:	4601      	mov	r1, r0
 800a52a:	6818      	ldr	r0, [r3, #0]
 800a52c:	f7ff bfa6 	b.w	800a47c <__swbuf_r>
 800a530:	20000650 	.word	0x20000650

0800a534 <_wcrtomb_r>:
 800a534:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a538:	461e      	mov	r6, r3
 800a53a:	b086      	sub	sp, #24
 800a53c:	460c      	mov	r4, r1
 800a53e:	4605      	mov	r5, r0
 800a540:	4617      	mov	r7, r2
 800a542:	4b0f      	ldr	r3, [pc, #60]	; (800a580 <_wcrtomb_r+0x4c>)
 800a544:	b191      	cbz	r1, 800a56c <_wcrtomb_r+0x38>
 800a546:	f8d3 8000 	ldr.w	r8, [r3]
 800a54a:	f7fd fad9 	bl	8007b00 <__locale_charset>
 800a54e:	9600      	str	r6, [sp, #0]
 800a550:	4603      	mov	r3, r0
 800a552:	4621      	mov	r1, r4
 800a554:	463a      	mov	r2, r7
 800a556:	4628      	mov	r0, r5
 800a558:	47c0      	blx	r8
 800a55a:	1c43      	adds	r3, r0, #1
 800a55c:	d103      	bne.n	800a566 <_wcrtomb_r+0x32>
 800a55e:	2200      	movs	r2, #0
 800a560:	238a      	movs	r3, #138	; 0x8a
 800a562:	6032      	str	r2, [r6, #0]
 800a564:	602b      	str	r3, [r5, #0]
 800a566:	b006      	add	sp, #24
 800a568:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a56c:	681f      	ldr	r7, [r3, #0]
 800a56e:	f7fd fac7 	bl	8007b00 <__locale_charset>
 800a572:	9600      	str	r6, [sp, #0]
 800a574:	4603      	mov	r3, r0
 800a576:	4622      	mov	r2, r4
 800a578:	4628      	mov	r0, r5
 800a57a:	a903      	add	r1, sp, #12
 800a57c:	47b8      	blx	r7
 800a57e:	e7ec      	b.n	800a55a <_wcrtomb_r+0x26>
 800a580:	20000ae0 	.word	0x20000ae0

0800a584 <wcrtomb>:
 800a584:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a588:	4b12      	ldr	r3, [pc, #72]	; (800a5d4 <wcrtomb+0x50>)
 800a58a:	b086      	sub	sp, #24
 800a58c:	681d      	ldr	r5, [r3, #0]
 800a58e:	4b12      	ldr	r3, [pc, #72]	; (800a5d8 <wcrtomb+0x54>)
 800a590:	4604      	mov	r4, r0
 800a592:	460f      	mov	r7, r1
 800a594:	4616      	mov	r6, r2
 800a596:	b190      	cbz	r0, 800a5be <wcrtomb+0x3a>
 800a598:	f8d3 8000 	ldr.w	r8, [r3]
 800a59c:	f7fd fab0 	bl	8007b00 <__locale_charset>
 800a5a0:	9600      	str	r6, [sp, #0]
 800a5a2:	4603      	mov	r3, r0
 800a5a4:	4621      	mov	r1, r4
 800a5a6:	463a      	mov	r2, r7
 800a5a8:	4628      	mov	r0, r5
 800a5aa:	47c0      	blx	r8
 800a5ac:	1c43      	adds	r3, r0, #1
 800a5ae:	d103      	bne.n	800a5b8 <wcrtomb+0x34>
 800a5b0:	2200      	movs	r2, #0
 800a5b2:	238a      	movs	r3, #138	; 0x8a
 800a5b4:	6032      	str	r2, [r6, #0]
 800a5b6:	602b      	str	r3, [r5, #0]
 800a5b8:	b006      	add	sp, #24
 800a5ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a5be:	681f      	ldr	r7, [r3, #0]
 800a5c0:	f7fd fa9e 	bl	8007b00 <__locale_charset>
 800a5c4:	9600      	str	r6, [sp, #0]
 800a5c6:	4603      	mov	r3, r0
 800a5c8:	4622      	mov	r2, r4
 800a5ca:	4628      	mov	r0, r5
 800a5cc:	a903      	add	r1, sp, #12
 800a5ce:	47b8      	blx	r7
 800a5d0:	e7ec      	b.n	800a5ac <wcrtomb+0x28>
 800a5d2:	bf00      	nop
 800a5d4:	20000650 	.word	0x20000650
 800a5d8:	20000ae0 	.word	0x20000ae0

0800a5dc <__ascii_wctomb>:
 800a5dc:	b121      	cbz	r1, 800a5e8 <__ascii_wctomb+0xc>
 800a5de:	2aff      	cmp	r2, #255	; 0xff
 800a5e0:	d804      	bhi.n	800a5ec <__ascii_wctomb+0x10>
 800a5e2:	700a      	strb	r2, [r1, #0]
 800a5e4:	2001      	movs	r0, #1
 800a5e6:	4770      	bx	lr
 800a5e8:	4608      	mov	r0, r1
 800a5ea:	4770      	bx	lr
 800a5ec:	238a      	movs	r3, #138	; 0x8a
 800a5ee:	6003      	str	r3, [r0, #0]
 800a5f0:	f04f 30ff 	mov.w	r0, #4294967295
 800a5f4:	4770      	bx	lr
 800a5f6:	bf00      	nop

0800a5f8 <_wctomb_r>:
 800a5f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a5fc:	4c09      	ldr	r4, [pc, #36]	; (800a624 <_wctomb_r+0x2c>)
 800a5fe:	b082      	sub	sp, #8
 800a600:	4698      	mov	r8, r3
 800a602:	4605      	mov	r5, r0
 800a604:	460f      	mov	r7, r1
 800a606:	4616      	mov	r6, r2
 800a608:	6824      	ldr	r4, [r4, #0]
 800a60a:	f7fd fa79 	bl	8007b00 <__locale_charset>
 800a60e:	f8cd 8000 	str.w	r8, [sp]
 800a612:	4603      	mov	r3, r0
 800a614:	4639      	mov	r1, r7
 800a616:	4632      	mov	r2, r6
 800a618:	4628      	mov	r0, r5
 800a61a:	47a0      	blx	r4
 800a61c:	b002      	add	sp, #8
 800a61e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a622:	bf00      	nop
 800a624:	20000ae0 	.word	0x20000ae0

0800a628 <seg7_tbl>:
 800a628:	b6b31477 34e7e6d4 c7f5f6f7 e1e39763     w......4....c...
 800a638:	253d6349 000a0d64 253d7249 000a0d64     Ic=%d...Ir=%d...
 800a648:	6f727265 64253d72 00000a0d 253d6456     error=%d....Vd=%
 800a658:	000a0d64 7474614b 0d64253d 0000000a     d...Katt=%d.....
 800a668:	253d6449 0d416d64 0000000a 253d6456     Id=%dmA.....Vd=%
 800a678:	64252e64 000a0d56 64253d50 000a0d57     d.%dV...P=%dW...
 800a688:	78616d49 6d64253d 000a0d41 253d6354     Imax=%dmA...Tc=%
 800a698:	000a0d64 253d6a54 000a0d64 00000a0a     d...Tj=%d.......
 800a6a8:	6c6c6568 000a0d6f 31253d78 0d66322e     hello...x=%1.2f.
 800a6b8:	0000000a 3dcccccd 3e4ccccd 3f000000     .......=..L>...?
 800a6c8:	3f4ccccd 3e19999a 3e4ccccd 3f333333     ..L?...>..L>333?
 800a6d8:	3f19999a 6c383025 00002058 32302520     ...?%08lX .. %02
 800a6e8:	00000058 34302520 00000058 38302520     X... %04X... %08
 800a6f8:	0000584c                                LX..

0800a6fc <cos_table>:
 800a6fc:	000007d0 000007bd 00000784 00000727     ............'...
 800a70c:	000006ab 00000614 00000567 000004ab     ........g.......
 800a71c:	000003e8 00000325 00000269 000001bc     ....%...i.......
 800a72c:	00000125 000000a9 0000004c 00000013     %.......L.......
 800a73c:	00000000 00000013 0000004c 000000a9     ........L.......
 800a74c:	00000125 000001bc 00000269 00000325     %.......i...%...
 800a75c:	000003e8 000004ab 00000567 00000614     ........g.......
 800a76c:	000006ab 00000727 00000784 000007bd     ....'...........

0800a77c <device_additional_info>:
 800a77c:	7420794d 20747365 62646f6d 64207375     My test modbus d
 800a78c:	63697665 00000065                       evice...

0800a794 <proc_PDU_table>:
 800a794:	0800265d 08001ec5 08001f79 08002401     ]&......y....$..
 800a7a4:	08002145 08001ca9 0800222d 0800265d     E!......-"..]&..
 800a7b4:	080020b9 0800265d 0800265d 0800265d     . ..]&..]&..]&..
 800a7c4:	0800265d 0800265d 0800265d 08001da9     ]&..]&..]&......
 800a7d4:	080022f5 0800202d 0800265d 0800265d     ."..- ..]&..]&..
 800a7e4:	0800265d 0800265d 0800265d 080024dd     ]&..]&..]&...$..
 800a7f4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a804:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a814:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a824:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a834:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a844:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a854:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a864:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a874:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a884:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a894:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a8a4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a8b4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a8c4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a8d4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a8e4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a8f4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a904:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a914:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a924:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a934:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a944:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a954:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a964:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a974:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a984:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a994:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a9a4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a9b4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a9c4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a9d4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a9e4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800a9f4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa04:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa14:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa24:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa34:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa44:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa54:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa64:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa74:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa84:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aa94:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aaa4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aab4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aac4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aad4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aae4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800aaf4:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab04:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab14:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab24:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab34:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab44:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab54:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab64:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab74:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..
 800ab84:	0800265d 0800265d 0800265d 0800265d     ]&..]&..]&..]&..

0800ab94 <kc>:
 800ab94:	0001d7c4                                ....

0800ab98 <kr>:
 800ab98:	00022baa                                .+..

0800ab9c <kv>:
 800ab9c:	000537f0                                .7..

0800aba0 <ac>:
 800aba0:	0003f74d                                M...

0800aba4 <ar>:
 800aba4:	ffdd90e7                                ....

0800aba8 <av>:
 800aba8:	0007d396                                ....

0800abac <temp_sens_addr>:
 800abac:	00000094                                ....

0800abb0 <Rt>:
 800abb0:	00000011 76276577 65732065 5320646e     ....we've send S
 800abc0:	54524154 206f7420 76616c73 75253a65     TART to slave:%u
 800abd0:	0000000a 76276577 65732065 6120646e     ....we've send a
 800abe0:	65726464 6f742073 616c7320 253a6576     ddres to slave:%
 800abf0:	00000a75 76276577 72772065 20657469     u...we've write 
 800ac00:	6e696f70 20726574 73206f74 6576616c     pointer to slave
 800ac10:	0a75253a 00000000 76276577 61682065     :%u.....we've ha
 800ac20:	42206576 253a4654 00000a75 20737562     ve BTF:%u...bus 
 800ac30:	66207369 3a656572 000a7525              is free:%u..

0800ac3c <apl602_imax>:
 800ac3c:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 800ac4c:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 800ac5c:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 800ac6c:	0000c350 0000c350 0000c350 0000af3e     P...P...P...>...
 800ac7c:	0000a33e 000098af 00008f53 000086fa     >.......S.......
 800ac8c:	00007f7c 000078bb 0000729d 00006d0c     |....x...r...m..
 800ac9c:	000067f6 0000634c 00005f02 00005b0d     .g..Lc..._...[..
 800acac:	00005763 000053fd 000050d4 00004de2     cW...S...P...M..
 800acbc:	00004b21 0000488c 00004621 000043db     !K...H..!F...C..
 800accc:	000041b7 00003fb2 00003dca 00003bfc     .A...?...=...;..
 800acdc:	00003a47 000038a8 0000371e 000035a8     G:...8...7...5..
 800acec:	00003443 000032f0 000031ac 00003076     C4...2...1..v0..
 800acfc:	00002f4f 00002e34 00002d25 00002c21     O/..4...%-..!,..
 800ad0c:	00002b28 00002a39 00002954 00002877     (+..9*..T)..w(..
 800ad1c:	000027a3 000026d6 00002611 00002554     .'...&...&..T%..
 800ad2c:	0000249d 000023ec 00002341 0000229d     .$...#..A#..."..
 800ad3c:	000021fd 00002163 000020ce 0000203e     .!..c!... ..> ..
 800ad4c:	00001fb2 00001f2b 00001ea7 00001e28     ....+.......(...
 800ad5c:	00001dac 00001d34 00001cc0 00001c4f     ....4.......O...
 800ad6c:	00001be1 00001b76 00001b0e 00001aa9     ....v...........
 800ad7c:	00001a46 000019e6 00001989 0000192e     F...............
 800ad8c:	000018d5 0000187f 0000182b 000017d9     ........+.......
 800ad9c:	00001788 0000173a 000016ee 000016a3     ....:...........
 800adac:	0000165a 00001613 000015ce 0000158a     Z...............
 800adbc:	00001547 00001506 000014c7 00001489     G...............
 800adcc:	0000144c 00001410 000013d6 0000139d     L...............
 800addc:	00001365 0000132e 000012f8 000012c4     e...............
 800adec:	00001290 0000125e 0000122c 000011fc     ....^...,.......
 800adfc:	000011cc 0000119d 00001170 00001143     ........p...C...
 800ae0c:	00001116 000010eb 000010c1 00001097     ................
 800ae1c:	0000106e 00001045 0000101e 00000ff7     n...E...........
 800ae2c:	00000fd1 00000fab 00000f86 00000f62     ............b...
 800ae3c:	00000f3e 00000f1b 00000ef9 00000ed7     >...............
 800ae4c:	00000eb5 00000e94 00000e74 00000e54     ........t...T...
 800ae5c:	00000e35 00000e16 00000df8 00000dda     5...............
 800ae6c:	00000dbd 00000da0 00000d83 00000d67     ............g...
 800ae7c:	00000d4b 00000d30 00000d15 00000cfb     K...0...........
 800ae8c:	00000ce1 00000cc7 00000cbb 00000c96     ................
 800ae9c:	00000c71 00000c4d 00000c2a 00000c07     q...M...*.......
 800aeac:	00000be4 00000bc3 00000ba2 00000b81     ................
 800aebc:	00000b61 00000b42 00000b23 00000b05     a...B...#.......
 800aecc:	00000ae7 00000aca 00000aad 00000a90     ................
 800aedc:	00000a74 00000a59 00000a3e 00000a23     t...Y...>...#...
 800aeec:	00000a09 000009ef 000009d6 000009bd     ................
 800aefc:	000009a4 0000098c 00000974 0000095d     ........t...]...
 800af0c:	00000946 0000092f 00000918 00000902     F.../...........
 800af1c:	000008ec 000008d7 000008c2 000008ad     ................
 800af2c:	00000899 00000884 00000870 0000085d     ........p...]...
 800af3c:	00000849 00000836 00000823 00000811     I...6...#.......
 800af4c:	000007ff 000007ec 000007db 000007c9     ................
 800af5c:	000007b8 000007a7 00000796 00000785     ................
 800af6c:	00000775 00000765 00000755 00000745     u...e...U...E...
 800af7c:	00000735 00000726 00000717 00000708     5...&...........
 800af8c:	000006f9 000006eb 000006dc 000006ce     ................
 800af9c:	000006c0 000006b2 000006a4 00000697     ................
 800afac:	0000068a 0000067c 0000066f 00000663     ....|...o...c...
 800afbc:	00000656 00000649 0000063d 00000631     V...I...=...1...
 800afcc:	00000625 00000619 0000060d 00000601     %...............
 800afdc:	000005f6 000005ea 000005df 000005d4     ................
 800afec:	000005c9 000005be 000005b3 000005a9     ................
 800affc:	0000059e 00000594 0000058a 0000057f     ................
 800b00c:	00000575 0000056b 00000562 00000558     u...k...b...X...
 800b01c:	0000054e 00000545 0000053b 00000532     N...E...;...2...
 800b02c:	00000529 00000520 00000517 0000050e     )... ...........
 800b03c:	00000505 000004fc 000004f4 000004eb     ................
 800b04c:	000004e3 000004db 000004d2 000004ca     ................
 800b05c:	000004c2 000004ba 000004b2 000004aa     ................
 800b06c:	000004a3 0000049b 00000493 0000048c     ................
 800b07c:	00000484 0000047d 00000476 0000046e     ....}...v...n...
 800b08c:	00000467 00000460 00000459 00000452     g...`...Y...R...
 800b09c:	0000044b 00000444 0000043e 00000437     K...D...>...7...
 800b0ac:	00000430 0000042a 00000423 0000041d     0...*...#.......
 800b0bc:	00000417 00000410 0000040a 00000404     ................
 800b0cc:	000003fe 000003f8 000003f2 000003ec     ................
 800b0dc:	000003e6 000003e0 000003da 000003cb     ................
 800b0ec:	000003c0 000003b6 000003ac 000003a2     ................
 800b0fc:	00000399 0000038f 00000386 0000037c     ............|...
 800b10c:	00000373 0000036a 00000361 00000358     s...j...a...X...
 800b11c:	0000034f 00000347 0000033e 00000336     O...G...>...6...
 800b12c:	0000032e 00000325 0000031d 00000315     ....%...........
 800b13c:	0000030e 00000306 000002fe 000002f7     ................
 800b14c:	000002ef 000002e8 000002e1 000002d9     ................
 800b15c:	000002d2 000002cb 000002c5 000002be     ................
 800b16c:	000002b7 000002b0 000002aa 000002a3     ................
 800b17c:	0000029d 00000297 00000290 0000028a     ................
 800b18c:	00000284 0000027e 00000278 00000272     ....~...x...r...
 800b19c:	0000026d 00000267 00000261 0000025c     m...g...a...\...
 800b1ac:	00000256 00000251 0000024b 00000246     V...Q...K...F...
 800b1bc:	00000241 0000023b 00000236 00000231     A...;...6...1...
 800b1cc:	0000022c 00000227 00000222 0000021e     ,...'...".......
 800b1dc:	00000219 00000214 0000020f 0000020b     ................
 800b1ec:	00000206 00000202 000001fd 000001f9     ................
 800b1fc:	000001f4 000001f0 000001ec 000001e8     ................
 800b20c:	000001e3 000001df 000001db 000001d7     ................
 800b21c:	000001d3 000001cf 000001cb 000001c8     ................
 800b22c:	000001c4 000001c0 000001bc 000001b9     ................
 800b23c:	000001b5 000001b1 000001ae 000001aa     ................
 800b24c:	000001a7 000001a3 000001a0 0000019c     ................
 800b25c:	00000199 00000196 00000192 0000018f     ................
 800b26c:	0000018c 00000189 00000186 00000183     ................
 800b27c:	0000017f 0000017c 00000179 00000176     ....|...y...v...
 800b28c:	00000173 00000171 0000016e 0000016b     s...q...n...k...
 800b29c:	00000168 00000165 00000162 00000160     h...e...b...`...
 800b2ac:	0000015d 0000015a 00000158 00000155     ]...Z...X...U...
 800b2bc:	00000152 00000150 0000014d 0000014b     R...P...M...K...
 800b2cc:	00000148 00000146 00000143 00000141     H...F...C...A...
 800b2dc:	0000013e 0000013c 0000013a 00000137     >...<...:...7...
 800b2ec:	00000135 00000133 00000130 0000012e     5...3...0.......
 800b2fc:	0000012c 0000012a 00000128 00000125     ,...*...(...%...
 800b30c:	00000123 00000121 0000011f 0000011d     #...!...........
 800b31c:	0000011b 00000119 00000117 00000115     ................
 800b32c:	00000113 00000111 0000010f 0000010d     ................
 800b33c:	0000010b 00000109 00000107 00000105     ................
 800b34c:	00000104 00000102 00000100 000000fe     ................
 800b35c:	000000fc 000000fb 000000f9 000000f7     ................
 800b36c:	000000f5 000000f4 000000f2 000000f0     ................
 800b37c:	000000ef 000000ed 000000ec 000000ea     ................
 800b38c:	000000e8 000000e7 000000e5 000000e4     ................
 800b39c:	000000e2 000000e1 000000df 000000de     ................
 800b3ac:	000000dc 000000db 000000d9 000000d8     ................
 800b3bc:	000000d6 000000d5 000000d3 000000d2     ................
 800b3cc:	000000d1 000000cf 000000ce 000000cd     ................
 800b3dc:	000000cb 000000ca 000000c9 000000c7     ................
 800b3ec:	000000c6 000000c5 000000c3 000000c2     ................
 800b3fc:	000000c1 000000c0 000000be 000000bd     ................
 800b40c:	000000bc 000000bb 000000ba 000000b9     ................
 800b41c:	000000b7 000000b6 000000b5 000000b4     ................
 800b42c:	000000b3 000000b2 000000b1 000000af     ................
 800b43c:	000000ae 000000ad 000000ac 000000ab     ................
 800b44c:	000000aa 000000a9 000000a8 000000a7     ................
 800b45c:	000000a6 000000a5 000000a4 000000a3     ................
 800b46c:	000000a2 000000a1 000000a0 0000009f     ................
 800b47c:	0000009e 0000009d 0000009c 0000009b     ................
 800b48c:	0000009a 00000099 00000098 00000098     ................
 800b49c:	00000097 00000096 00000095 00000094     ................
 800b4ac:	00000093 00000092 00000091 00000091     ................
 800b4bc:	00000090 0000008f 0000008e 0000008d     ................
 800b4cc:	0000008c 0000008c 0000008b 0000008a     ................
 800b4dc:	00000089 00000088 00000088 00000087     ................
 800b4ec:	00000086 00000085 00000084 00000084     ................
 800b4fc:	00000083 00000082 00000081 00000081     ................
 800b50c:	00000080 0000007f 0000007f 0000007e     ............~...
 800b51c:	0000007d 0000007c 0000007c 0000007b     }...|...|...{...
 800b52c:	0000007a 0000007a 00000079 00000078     z...z...y...x...
 800b53c:	00000078 00000077 00000076 00000076     x...w...v...v...
 800b54c:	00000075 00000074 00000074 00000073     u...t...t...s...
 800b55c:	00000073 00000072 00000071 00000071     s...r...q...q...
 800b56c:	00000070 0000006f 0000006f 0000006e     p...o...o...n...
 800b57c:	0000006e 0000006d 0000006c 0000006c     n...m...l...l...
 800b58c:	0000006b 0000006b 0000006a 00000000     k...k...j.......
 800b59c:	74697865 00000000 70616548 646e6120     exit....Heap and
 800b5ac:	61747320 63206b63 696c6c6f 6e6f6973      stack collision
 800b5bc:	0000000a                                ....

0800b5c0 <zeroes.6811>:
 800b5c0:	30303030 30303030 30303030 30303030     0000000000000000
 800b5d0:	00464e49 00666e69 004e414e 006e616e     INF.inf.NAN.nan.
 800b5e0:	33323130 37363534 42413938 46454443     0123456789ABCDEF
 800b5f0:	00000000 33323130 37363534 62613938     ....0123456789ab
 800b600:	66656463 00000000 6c756e28 0000296c     cdef....(null)..
 800b610:	00000030                                0...

0800b614 <blanks.6810>:
 800b614:	20202020 20202020 20202020 20202020                     
 800b624:	69666e49 7974696e 00000000 004e614e     Infinity....NaN.
 800b634:	00000043                                C...

0800b638 <_global_impure_ptr>:
 800b638:	20000228 49534f50 00000058 0000002e     (.. POSIX.......

0800b648 <__mprec_tens>:
 800b648:	00000000 3ff00000 00000000 40240000     .......?......$@
 800b658:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 800b668:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 800b678:	00000000 412e8480 00000000 416312d0     .......A......cA
 800b688:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 800b698:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 800b6a8:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 800b6b8:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 800b6c8:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 800b6d8:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 800b6e8:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 800b6f8:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 800b708:	79d99db4 44ea7843                       ...yCx.D

0800b710 <__mprec_bigtens>:
 800b710:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 800b720:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 800b730:	7f73bf3c 75154fdd                       <.s..O.u

0800b738 <__mprec_tinytens>:
 800b738:	97d889bc 3c9cd2b2 d5a8a733 3949f623     .......<3...#.I9
 800b748:	44f4a73d 32a50ffd cf8c979d 255bba08     =..D...2......[%
 800b758:	64ac6f43 0ac80628                       Co.d(...

0800b760 <p05.5269>:
 800b760:	00000005 00000019 0000007d              ........}...

0800b76c <zeroes.6754>:
 800b76c:	30303030 30303030 30303030 30303030     0000000000000000

0800b77c <blanks.6753>:
 800b77c:	20202020 20202020 20202020 20202020                     
