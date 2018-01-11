
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 00 02 20 29 0a 00 08 89 0a 00 08 89 0a 00 08     ... )...........
 8000010:	89 0a 00 08 89 0a 00 08 89 0a 00 08 00 00 00 00     ................
	...
 800002c:	89 0a 00 08 89 0a 00 08 00 00 00 00 89 0a 00 08     ................
 800003c:	0d 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800004c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800005c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800006c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800007c:	9d 2f 00 08 89 0a 00 08 89 0a 00 08 71 34 00 08     ./..........q4..
 800008c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800009c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 80000ac:	89 0a 00 08 e9 18 00 08 35 2f 00 08 89 0a 00 08     ........5/......
 80000bc:	dd 37 00 08 ed 37 00 08 89 0a 00 08 89 0a 00 08     .7...7..........
 80000cc:	f9 2e 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 80000dc:	65 1c 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     e...............
 80000ec:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 80000fc:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800010c:	89 0a 00 08 d9 0d 00 08 89 0a 00 08 89 0a 00 08     ................
 800011c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800012c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800013c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800014c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800015c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800016c:	89 0a 00 08 89 0a 00 08 89 0a 00 08 89 0a 00 08     ................
 800017c:	89 0a 00 08 89 0a 00 08 89 0a 00 08                 ............

08000188 <test_del>:
 8000188:	b490      	push	{r4, r7}
 800018a:	af00      	add	r7, sp, #0
 800018c:	2400      	movs	r4, #0
 800018e:	e000      	b.n	8000192 <test_del+0xa>
 8000190:	3401      	adds	r4, #1
 8000192:	f242 730f 	movw	r3, #9999	; 0x270f
 8000196:	429c      	cmp	r4, r3
 8000198:	d9fa      	bls.n	8000190 <test_del+0x8>
 800019a:	46bd      	mov	sp, r7
 800019c:	bc90      	pop	{r4, r7}
 800019e:	4770      	bx	lr

080001a0 <display_out>:
 80001a0:	b480      	push	{r7}
 80001a2:	b085      	sub	sp, #20
 80001a4:	af00      	add	r7, sp, #0
 80001a6:	60f8      	str	r0, [r7, #12]
 80001a8:	60b9      	str	r1, [r7, #8]
 80001aa:	607a      	str	r2, [r7, #4]
 80001ac:	687b      	ldr	r3, [r7, #4]
 80001ae:	009b      	lsls	r3, r3, #2
 80001b0:	607b      	str	r3, [r7, #4]
 80001b2:	68bb      	ldr	r3, [r7, #8]
 80001b4:	2b09      	cmp	r3, #9
 80001b6:	d809      	bhi.n	80001cc <display_out+0x2c>
 80001b8:	687b      	ldr	r3, [r7, #4]
 80001ba:	1c5a      	adds	r2, r3, #1
 80001bc:	607a      	str	r2, [r7, #4]
 80001be:	492f      	ldr	r1, [pc, #188]	; (800027c <display_out+0xdc>)
 80001c0:	68ba      	ldr	r2, [r7, #8]
 80001c2:	440a      	add	r2, r1
 80001c4:	7811      	ldrb	r1, [r2, #0]
 80001c6:	4a2e      	ldr	r2, [pc, #184]	; (8000280 <display_out+0xe0>)
 80001c8:	54d1      	strb	r1, [r2, r3]
 80001ca:	e012      	b.n	80001f2 <display_out+0x52>
 80001cc:	6879      	ldr	r1, [r7, #4]
 80001ce:	1c4b      	adds	r3, r1, #1
 80001d0:	607b      	str	r3, [r7, #4]
 80001d2:	68b8      	ldr	r0, [r7, #8]
 80001d4:	4b2b      	ldr	r3, [pc, #172]	; (8000284 <display_out+0xe4>)
 80001d6:	fba3 2300 	umull	r2, r3, r3, r0
 80001da:	08da      	lsrs	r2, r3, #3
 80001dc:	4613      	mov	r3, r2
 80001de:	009b      	lsls	r3, r3, #2
 80001e0:	4413      	add	r3, r2
 80001e2:	005b      	lsls	r3, r3, #1
 80001e4:	1ac2      	subs	r2, r0, r3
 80001e6:	f002 030f 	and.w	r3, r2, #15
 80001ea:	4a24      	ldr	r2, [pc, #144]	; (800027c <display_out+0xdc>)
 80001ec:	5cd2      	ldrb	r2, [r2, r3]
 80001ee:	4b24      	ldr	r3, [pc, #144]	; (8000280 <display_out+0xe0>)
 80001f0:	545a      	strb	r2, [r3, r1]
 80001f2:	6879      	ldr	r1, [r7, #4]
 80001f4:	1c4b      	adds	r3, r1, #1
 80001f6:	607b      	str	r3, [r7, #4]
 80001f8:	68f8      	ldr	r0, [r7, #12]
 80001fa:	4b22      	ldr	r3, [pc, #136]	; (8000284 <display_out+0xe4>)
 80001fc:	fba3 2300 	umull	r2, r3, r3, r0
 8000200:	08da      	lsrs	r2, r3, #3
 8000202:	4613      	mov	r3, r2
 8000204:	009b      	lsls	r3, r3, #2
 8000206:	4413      	add	r3, r2
 8000208:	005b      	lsls	r3, r3, #1
 800020a:	1ac2      	subs	r2, r0, r3
 800020c:	f002 030f 	and.w	r3, r2, #15
 8000210:	4a1a      	ldr	r2, [pc, #104]	; (800027c <display_out+0xdc>)
 8000212:	5cd3      	ldrb	r3, [r2, r3]
 8000214:	f043 0308 	orr.w	r3, r3, #8
 8000218:	b2da      	uxtb	r2, r3
 800021a:	4b19      	ldr	r3, [pc, #100]	; (8000280 <display_out+0xe0>)
 800021c:	545a      	strb	r2, [r3, r1]
 800021e:	68fa      	ldr	r2, [r7, #12]
 8000220:	4b18      	ldr	r3, [pc, #96]	; (8000284 <display_out+0xe4>)
 8000222:	fba3 1302 	umull	r1, r3, r3, r2
 8000226:	08db      	lsrs	r3, r3, #3
 8000228:	60fb      	str	r3, [r7, #12]
 800022a:	6879      	ldr	r1, [r7, #4]
 800022c:	1c4b      	adds	r3, r1, #1
 800022e:	607b      	str	r3, [r7, #4]
 8000230:	68f8      	ldr	r0, [r7, #12]
 8000232:	4b14      	ldr	r3, [pc, #80]	; (8000284 <display_out+0xe4>)
 8000234:	fba3 2300 	umull	r2, r3, r3, r0
 8000238:	08da      	lsrs	r2, r3, #3
 800023a:	4613      	mov	r3, r2
 800023c:	009b      	lsls	r3, r3, #2
 800023e:	4413      	add	r3, r2
 8000240:	005b      	lsls	r3, r3, #1
 8000242:	1ac2      	subs	r2, r0, r3
 8000244:	f002 030f 	and.w	r3, r2, #15
 8000248:	4a0c      	ldr	r2, [pc, #48]	; (800027c <display_out+0xdc>)
 800024a:	5cd2      	ldrb	r2, [r2, r3]
 800024c:	4b0c      	ldr	r3, [pc, #48]	; (8000280 <display_out+0xe0>)
 800024e:	545a      	strb	r2, [r3, r1]
 8000250:	68fa      	ldr	r2, [r7, #12]
 8000252:	4b0c      	ldr	r3, [pc, #48]	; (8000284 <display_out+0xe4>)
 8000254:	fba3 1302 	umull	r1, r3, r3, r2
 8000258:	08db      	lsrs	r3, r3, #3
 800025a:	60fb      	str	r3, [r7, #12]
 800025c:	687b      	ldr	r3, [r7, #4]
 800025e:	1c5a      	adds	r2, r3, #1
 8000260:	607a      	str	r2, [r7, #4]
 8000262:	68fa      	ldr	r2, [r7, #12]
 8000264:	f002 020f 	and.w	r2, r2, #15
 8000268:	4904      	ldr	r1, [pc, #16]	; (800027c <display_out+0xdc>)
 800026a:	5c89      	ldrb	r1, [r1, r2]
 800026c:	4a04      	ldr	r2, [pc, #16]	; (8000280 <display_out+0xe0>)
 800026e:	54d1      	strb	r1, [r2, r3]
 8000270:	3714      	adds	r7, #20
 8000272:	46bd      	mov	sp, r7
 8000274:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000278:	4770      	bx	lr
 800027a:	bf00      	nop
 800027c:	08004974 	.word	0x08004974
 8000280:	20000c84 	.word	0x20000c84
 8000284:	cccccccd 	.word	0xcccccccd

08000288 <check_channel_1>:
 8000288:	b580      	push	{r7, lr}
 800028a:	b086      	sub	sp, #24
 800028c:	af00      	add	r7, sp, #0
 800028e:	4b3c      	ldr	r3, [pc, #240]	; (8000380 <check_channel_1+0xf8>)
 8000290:	681b      	ldr	r3, [r3, #0]
 8000292:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8000296:	fb02 f303 	mul.w	r3, r2, r3
 800029a:	4a3a      	ldr	r2, [pc, #232]	; (8000384 <check_channel_1+0xfc>)
 800029c:	fb82 1203 	smull	r1, r2, r2, r3
 80002a0:	1252      	asrs	r2, r2, #9
 80002a2:	17db      	asrs	r3, r3, #31
 80002a4:	1ad3      	subs	r3, r2, r3
 80002a6:	11db      	asrs	r3, r3, #7
 80002a8:	617b      	str	r3, [r7, #20]
 80002aa:	4b37      	ldr	r3, [pc, #220]	; (8000388 <check_channel_1+0x100>)
 80002ac:	681b      	ldr	r3, [r3, #0]
 80002ae:	08da      	lsrs	r2, r3, #3
 80002b0:	4b36      	ldr	r3, [pc, #216]	; (800038c <check_channel_1+0x104>)
 80002b2:	fba3 1302 	umull	r1, r3, r3, r2
 80002b6:	095b      	lsrs	r3, r3, #5
 80002b8:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 80002bc:	fb02 f303 	mul.w	r3, r2, r3
 80002c0:	f503 72fa 	add.w	r2, r3, #500	; 0x1f4
 80002c4:	4b32      	ldr	r3, [pc, #200]	; (8000390 <check_channel_1+0x108>)
 80002c6:	fba3 1302 	umull	r1, r3, r3, r2
 80002ca:	099b      	lsrs	r3, r3, #6
 80002cc:	09db      	lsrs	r3, r3, #7
 80002ce:	613b      	str	r3, [r7, #16]
 80002d0:	693b      	ldr	r3, [r7, #16]
 80002d2:	697a      	ldr	r2, [r7, #20]
 80002d4:	fb02 f203 	mul.w	r2, r2, r3
 80002d8:	4b2e      	ldr	r3, [pc, #184]	; (8000394 <check_channel_1+0x10c>)
 80002da:	fba3 1302 	umull	r1, r3, r3, r2
 80002de:	095b      	lsrs	r3, r3, #5
 80002e0:	60fb      	str	r3, [r7, #12]
 80002e2:	4b2d      	ldr	r3, [pc, #180]	; (8000398 <check_channel_1+0x110>)
 80002e4:	681b      	ldr	r3, [r3, #0]
 80002e6:	60bb      	str	r3, [r7, #8]
 80002e8:	68fb      	ldr	r3, [r7, #12]
 80002ea:	2216      	movs	r2, #22
 80002ec:	fb02 f203 	mul.w	r2, r2, r3
 80002f0:	4b28      	ldr	r3, [pc, #160]	; (8000394 <check_channel_1+0x10c>)
 80002f2:	fba3 1302 	umull	r1, r3, r3, r2
 80002f6:	095a      	lsrs	r2, r3, #5
 80002f8:	68bb      	ldr	r3, [r7, #8]
 80002fa:	4413      	add	r3, r2
 80002fc:	607b      	str	r3, [r7, #4]
 80002fe:	68bb      	ldr	r3, [r7, #8]
 8000300:	4a26      	ldr	r2, [pc, #152]	; (800039c <check_channel_1+0x114>)
 8000302:	fb02 f303 	mul.w	r3, r2, r3
 8000306:	f503 3312 	add.w	r3, r3, #149504	; 0x24800
 800030a:	f503 73f8 	add.w	r3, r3, #496	; 0x1f0
 800030e:	4a24      	ldr	r2, [pc, #144]	; (80003a0 <check_channel_1+0x118>)
 8000310:	fba2 1303 	umull	r1, r3, r2, r3
 8000314:	091a      	lsrs	r2, r3, #4
 8000316:	693b      	ldr	r3, [r7, #16]
 8000318:	fbb2 f3f3 	udiv	r3, r2, r3
 800031c:	1d5a      	adds	r2, r3, #5
 800031e:	4b21      	ldr	r3, [pc, #132]	; (80003a4 <check_channel_1+0x11c>)
 8000320:	fba3 1302 	umull	r1, r3, r3, r2
 8000324:	08da      	lsrs	r2, r3, #3
 8000326:	4b20      	ldr	r3, [pc, #128]	; (80003a8 <check_channel_1+0x120>)
 8000328:	601a      	str	r2, [r3, #0]
 800032a:	4820      	ldr	r0, [pc, #128]	; (80003ac <check_channel_1+0x124>)
 800032c:	f000 ff74 	bl	8001218 <xprintf>
 8000330:	697a      	ldr	r2, [r7, #20]
 8000332:	4613      	mov	r3, r2
 8000334:	009b      	lsls	r3, r3, #2
 8000336:	4413      	add	r3, r2
 8000338:	005b      	lsls	r3, r3, #1
 800033a:	481d      	ldr	r0, [pc, #116]	; (80003b0 <check_channel_1+0x128>)
 800033c:	4619      	mov	r1, r3
 800033e:	f000 ff6b 	bl	8001218 <xprintf>
 8000342:	481c      	ldr	r0, [pc, #112]	; (80003b4 <check_channel_1+0x12c>)
 8000344:	6939      	ldr	r1, [r7, #16]
 8000346:	f000 ff67 	bl	8001218 <xprintf>
 800034a:	481b      	ldr	r0, [pc, #108]	; (80003b8 <check_channel_1+0x130>)
 800034c:	68f9      	ldr	r1, [r7, #12]
 800034e:	f000 ff63 	bl	8001218 <xprintf>
 8000352:	481a      	ldr	r0, [pc, #104]	; (80003bc <check_channel_1+0x134>)
 8000354:	68b9      	ldr	r1, [r7, #8]
 8000356:	f000 ff5f 	bl	8001218 <xprintf>
 800035a:	4819      	ldr	r0, [pc, #100]	; (80003c0 <check_channel_1+0x138>)
 800035c:	6879      	ldr	r1, [r7, #4]
 800035e:	f000 ff5b 	bl	8001218 <xprintf>
 8000362:	4b11      	ldr	r3, [pc, #68]	; (80003a8 <check_channel_1+0x120>)
 8000364:	681b      	ldr	r3, [r3, #0]
 8000366:	4817      	ldr	r0, [pc, #92]	; (80003c4 <check_channel_1+0x13c>)
 8000368:	4619      	mov	r1, r3
 800036a:	f000 ff55 	bl	8001218 <xprintf>
 800036e:	4816      	ldr	r0, [pc, #88]	; (80003c8 <check_channel_1+0x140>)
 8000370:	f000 ff52 	bl	8001218 <xprintf>
 8000374:	687b      	ldr	r3, [r7, #4]
 8000376:	4618      	mov	r0, r3
 8000378:	3718      	adds	r7, #24
 800037a:	46bd      	mov	sp, r7
 800037c:	bd80      	pop	{r7, pc}
 800037e:	bf00      	nop
 8000380:	20000cac 	.word	0x20000cac
 8000384:	6084b67b 	.word	0x6084b67b
 8000388:	20000cb4 	.word	0x20000cb4
 800038c:	2fe80bfb 	.word	0x2fe80bfb
 8000390:	10624dd3 	.word	0x10624dd3
 8000394:	51eb851f 	.word	0x51eb851f
 8000398:	20000c9c 	.word	0x20000c9c
 800039c:	fffffc18 	.word	0xfffffc18
 80003a0:	ba2e8ba3 	.word	0xba2e8ba3
 80003a4:	cccccccd 	.word	0xcccccccd
 80003a8:	2000024c 	.word	0x2000024c
 80003ac:	08004984 	.word	0x08004984
 80003b0:	080049a0 	.word	0x080049a0
 80003b4:	080049ac 	.word	0x080049ac
 80003b8:	080049b8 	.word	0x080049b8
 80003bc:	080049c0 	.word	0x080049c0
 80003c0:	080049c8 	.word	0x080049c8
 80003c4:	080049d0 	.word	0x080049d0
 80003c8:	080049dc 	.word	0x080049dc

080003cc <check_channel_2>:
 80003cc:	b580      	push	{r7, lr}
 80003ce:	b086      	sub	sp, #24
 80003d0:	af00      	add	r7, sp, #0
 80003d2:	4b3c      	ldr	r3, [pc, #240]	; (80004c4 <check_channel_2+0xf8>)
 80003d4:	681b      	ldr	r3, [r3, #0]
 80003d6:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 80003da:	fb02 f303 	mul.w	r3, r2, r3
 80003de:	4a3a      	ldr	r2, [pc, #232]	; (80004c8 <check_channel_2+0xfc>)
 80003e0:	fb82 1203 	smull	r1, r2, r2, r3
 80003e4:	1252      	asrs	r2, r2, #9
 80003e6:	17db      	asrs	r3, r3, #31
 80003e8:	1ad3      	subs	r3, r2, r3
 80003ea:	11db      	asrs	r3, r3, #7
 80003ec:	617b      	str	r3, [r7, #20]
 80003ee:	4b37      	ldr	r3, [pc, #220]	; (80004cc <check_channel_2+0x100>)
 80003f0:	681b      	ldr	r3, [r3, #0]
 80003f2:	08da      	lsrs	r2, r3, #3
 80003f4:	4b36      	ldr	r3, [pc, #216]	; (80004d0 <check_channel_2+0x104>)
 80003f6:	fba3 1302 	umull	r1, r3, r3, r2
 80003fa:	095b      	lsrs	r3, r3, #5
 80003fc:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8000400:	fb02 f303 	mul.w	r3, r2, r3
 8000404:	f503 72fa 	add.w	r2, r3, #500	; 0x1f4
 8000408:	4b32      	ldr	r3, [pc, #200]	; (80004d4 <check_channel_2+0x108>)
 800040a:	fba3 1302 	umull	r1, r3, r3, r2
 800040e:	099b      	lsrs	r3, r3, #6
 8000410:	09db      	lsrs	r3, r3, #7
 8000412:	613b      	str	r3, [r7, #16]
 8000414:	693b      	ldr	r3, [r7, #16]
 8000416:	697a      	ldr	r2, [r7, #20]
 8000418:	fb02 f203 	mul.w	r2, r2, r3
 800041c:	4b2e      	ldr	r3, [pc, #184]	; (80004d8 <check_channel_2+0x10c>)
 800041e:	fba3 1302 	umull	r1, r3, r3, r2
 8000422:	095b      	lsrs	r3, r3, #5
 8000424:	60fb      	str	r3, [r7, #12]
 8000426:	4b2d      	ldr	r3, [pc, #180]	; (80004dc <check_channel_2+0x110>)
 8000428:	685b      	ldr	r3, [r3, #4]
 800042a:	60bb      	str	r3, [r7, #8]
 800042c:	68fb      	ldr	r3, [r7, #12]
 800042e:	2216      	movs	r2, #22
 8000430:	fb02 f203 	mul.w	r2, r2, r3
 8000434:	4b28      	ldr	r3, [pc, #160]	; (80004d8 <check_channel_2+0x10c>)
 8000436:	fba3 1302 	umull	r1, r3, r3, r2
 800043a:	095a      	lsrs	r2, r3, #5
 800043c:	68bb      	ldr	r3, [r7, #8]
 800043e:	4413      	add	r3, r2
 8000440:	607b      	str	r3, [r7, #4]
 8000442:	68bb      	ldr	r3, [r7, #8]
 8000444:	4a26      	ldr	r2, [pc, #152]	; (80004e0 <check_channel_2+0x114>)
 8000446:	fb02 f303 	mul.w	r3, r2, r3
 800044a:	f503 3312 	add.w	r3, r3, #149504	; 0x24800
 800044e:	f503 73f8 	add.w	r3, r3, #496	; 0x1f0
 8000452:	4a24      	ldr	r2, [pc, #144]	; (80004e4 <check_channel_2+0x118>)
 8000454:	fba2 1303 	umull	r1, r3, r2, r3
 8000458:	091a      	lsrs	r2, r3, #4
 800045a:	693b      	ldr	r3, [r7, #16]
 800045c:	fbb2 f3f3 	udiv	r3, r2, r3
 8000460:	1d5a      	adds	r2, r3, #5
 8000462:	4b21      	ldr	r3, [pc, #132]	; (80004e8 <check_channel_2+0x11c>)
 8000464:	fba3 1302 	umull	r1, r3, r3, r2
 8000468:	08da      	lsrs	r2, r3, #3
 800046a:	4b20      	ldr	r3, [pc, #128]	; (80004ec <check_channel_2+0x120>)
 800046c:	601a      	str	r2, [r3, #0]
 800046e:	4820      	ldr	r0, [pc, #128]	; (80004f0 <check_channel_2+0x124>)
 8000470:	f000 fed2 	bl	8001218 <xprintf>
 8000474:	697a      	ldr	r2, [r7, #20]
 8000476:	4613      	mov	r3, r2
 8000478:	009b      	lsls	r3, r3, #2
 800047a:	4413      	add	r3, r2
 800047c:	005b      	lsls	r3, r3, #1
 800047e:	481d      	ldr	r0, [pc, #116]	; (80004f4 <check_channel_2+0x128>)
 8000480:	4619      	mov	r1, r3
 8000482:	f000 fec9 	bl	8001218 <xprintf>
 8000486:	481c      	ldr	r0, [pc, #112]	; (80004f8 <check_channel_2+0x12c>)
 8000488:	6939      	ldr	r1, [r7, #16]
 800048a:	f000 fec5 	bl	8001218 <xprintf>
 800048e:	481b      	ldr	r0, [pc, #108]	; (80004fc <check_channel_2+0x130>)
 8000490:	68f9      	ldr	r1, [r7, #12]
 8000492:	f000 fec1 	bl	8001218 <xprintf>
 8000496:	481a      	ldr	r0, [pc, #104]	; (8000500 <check_channel_2+0x134>)
 8000498:	68b9      	ldr	r1, [r7, #8]
 800049a:	f000 febd 	bl	8001218 <xprintf>
 800049e:	4819      	ldr	r0, [pc, #100]	; (8000504 <check_channel_2+0x138>)
 80004a0:	6879      	ldr	r1, [r7, #4]
 80004a2:	f000 feb9 	bl	8001218 <xprintf>
 80004a6:	4b11      	ldr	r3, [pc, #68]	; (80004ec <check_channel_2+0x120>)
 80004a8:	681b      	ldr	r3, [r3, #0]
 80004aa:	4817      	ldr	r0, [pc, #92]	; (8000508 <check_channel_2+0x13c>)
 80004ac:	4619      	mov	r1, r3
 80004ae:	f000 feb3 	bl	8001218 <xprintf>
 80004b2:	4816      	ldr	r0, [pc, #88]	; (800050c <check_channel_2+0x140>)
 80004b4:	f000 feb0 	bl	8001218 <xprintf>
 80004b8:	687b      	ldr	r3, [r7, #4]
 80004ba:	4618      	mov	r0, r3
 80004bc:	3718      	adds	r7, #24
 80004be:	46bd      	mov	sp, r7
 80004c0:	bd80      	pop	{r7, pc}
 80004c2:	bf00      	nop
 80004c4:	20000cb0 	.word	0x20000cb0
 80004c8:	5f76c545 	.word	0x5f76c545
 80004cc:	20000cb4 	.word	0x20000cb4
 80004d0:	2fe80bfb 	.word	0x2fe80bfb
 80004d4:	10624dd3 	.word	0x10624dd3
 80004d8:	51eb851f 	.word	0x51eb851f
 80004dc:	20000c9c 	.word	0x20000c9c
 80004e0:	fffffc18 	.word	0xfffffc18
 80004e4:	ba2e8ba3 	.word	0xba2e8ba3
 80004e8:	cccccccd 	.word	0xcccccccd
 80004ec:	2000024c 	.word	0x2000024c
 80004f0:	080049e0 	.word	0x080049e0
 80004f4:	080049a0 	.word	0x080049a0
 80004f8:	080049ac 	.word	0x080049ac
 80004fc:	080049b8 	.word	0x080049b8
 8000500:	080049c0 	.word	0x080049c0
 8000504:	080049c8 	.word	0x080049c8
 8000508:	080049d0 	.word	0x080049d0
 800050c:	080049dc 	.word	0x080049dc

08000510 <main>:
 8000510:	b580      	push	{r7, lr}
 8000512:	b0c8      	sub	sp, #288	; 0x120
 8000514:	af00      	add	r7, sp, #0
 8000516:	2300      	movs	r3, #0
 8000518:	f887 311f 	strb.w	r3, [r7, #287]	; 0x11f
 800051c:	2300      	movs	r3, #0
 800051e:	f8c7 3118 	str.w	r3, [r7, #280]	; 0x118
 8000522:	2300      	movs	r3, #0
 8000524:	f8c7 3114 	str.w	r3, [r7, #276]	; 0x114
 8000528:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800052c:	f8a7 3112 	strh.w	r3, [r7, #274]	; 0x112
 8000530:	2300      	movs	r3, #0
 8000532:	f8a7 3110 	strh.w	r3, [r7, #272]	; 0x110
 8000536:	2364      	movs	r3, #100	; 0x64
 8000538:	f8a7 310e 	strh.w	r3, [r7, #270]	; 0x10e
 800053c:	2300      	movs	r3, #0
 800053e:	f8c7 3108 	str.w	r3, [r7, #264]	; 0x108
 8000542:	f000 f9dd 	bl	8000900 <system_init>
 8000546:	f000 fabb 	bl	8000ac0 <uart_init>
 800054a:	4b18      	ldr	r3, [pc, #96]	; (80005ac <main+0x9c>)
 800054c:	4a18      	ldr	r2, [pc, #96]	; (80005b0 <main+0xa0>)
 800054e:	601a      	str	r2, [r3, #0]
 8000550:	f001 f9ac 	bl	80018ac <adc_init>
 8000554:	f001 fa5e 	bl	8001a14 <dac_init>
 8000558:	f001 fafa 	bl	8001b50 <modbus_init>
 800055c:	f002 fb6c 	bl	8002c38 <spi_master_init>
 8000560:	f002 fff0 	bl	8003544 <i2c_init>
 8000564:	4813      	ldr	r0, [pc, #76]	; (80005b4 <main+0xa4>)
 8000566:	f000 fe57 	bl	8001218 <xprintf>
 800056a:	4b13      	ldr	r3, [pc, #76]	; (80005b8 <main+0xa8>)
 800056c:	2203      	movs	r2, #3
 800056e:	801a      	strh	r2, [r3, #0]
 8000570:	4b11      	ldr	r3, [pc, #68]	; (80005b8 <main+0xa8>)
 8000572:	2203      	movs	r2, #3
 8000574:	805a      	strh	r2, [r3, #2]
 8000576:	4b10      	ldr	r3, [pc, #64]	; (80005b8 <main+0xa8>)
 8000578:	2200      	movs	r2, #0
 800057a:	809a      	strh	r2, [r3, #4]
 800057c:	4b0e      	ldr	r3, [pc, #56]	; (80005b8 <main+0xa8>)
 800057e:	2200      	movs	r2, #0
 8000580:	80da      	strh	r2, [r3, #6]
 8000582:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000586:	f002 faa7 	bl	8002ad8 <coll_pwm_set>
 800058a:	1d3b      	adds	r3, r7, #4
 800058c:	4a0b      	ldr	r2, [pc, #44]	; (80005bc <main+0xac>)
 800058e:	601a      	str	r2, [r3, #0]
 8000590:	1d3a      	adds	r2, r7, #4
 8000592:	463b      	mov	r3, r7
 8000594:	4610      	mov	r0, r2
 8000596:	4619      	mov	r1, r3
 8000598:	2201      	movs	r2, #1
 800059a:	f004 f917 	bl	80047cc <arm_float_to_q31>
 800059e:	f8b7 3112 	ldrh.w	r3, [r7, #274]	; 0x112
 80005a2:	4807      	ldr	r0, [pc, #28]	; (80005c0 <main+0xb0>)
 80005a4:	4619      	mov	r1, r3
 80005a6:	f000 fe37 	bl	8001218 <xprintf>
 80005aa:	e7fe      	b.n	80005aa <main+0x9a>
 80005ac:	20000a64 	.word	0x20000a64
 80005b0:	08000ba5 	.word	0x08000ba5
 80005b4:	080049fc 	.word	0x080049fc
 80005b8:	20000014 	.word	0x20000014
 80005bc:	3e818937 	.word	0x3e818937
 80005c0:	08004a04 	.word	0x08004a04

080005c4 <NVIC_SetPriorityGrouping>:
 80005c4:	b480      	push	{r7}
 80005c6:	b085      	sub	sp, #20
 80005c8:	af00      	add	r7, sp, #0
 80005ca:	6078      	str	r0, [r7, #4]
 80005cc:	687b      	ldr	r3, [r7, #4]
 80005ce:	f003 0307 	and.w	r3, r3, #7
 80005d2:	60fb      	str	r3, [r7, #12]
 80005d4:	4b0c      	ldr	r3, [pc, #48]	; (8000608 <NVIC_SetPriorityGrouping+0x44>)
 80005d6:	68db      	ldr	r3, [r3, #12]
 80005d8:	60bb      	str	r3, [r7, #8]
 80005da:	68ba      	ldr	r2, [r7, #8]
 80005dc:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80005e0:	4013      	ands	r3, r2
 80005e2:	60bb      	str	r3, [r7, #8]
 80005e4:	68fb      	ldr	r3, [r7, #12]
 80005e6:	021a      	lsls	r2, r3, #8
 80005e8:	68bb      	ldr	r3, [r7, #8]
 80005ea:	4313      	orrs	r3, r2
 80005ec:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80005f0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80005f4:	60bb      	str	r3, [r7, #8]
 80005f6:	4b04      	ldr	r3, [pc, #16]	; (8000608 <NVIC_SetPriorityGrouping+0x44>)
 80005f8:	68ba      	ldr	r2, [r7, #8]
 80005fa:	60da      	str	r2, [r3, #12]
 80005fc:	3714      	adds	r7, #20
 80005fe:	46bd      	mov	sp, r7
 8000600:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000604:	4770      	bx	lr
 8000606:	bf00      	nop
 8000608:	e000ed00 	.word	0xe000ed00

0800060c <NVIC_SetPriority>:
 800060c:	b480      	push	{r7}
 800060e:	b083      	sub	sp, #12
 8000610:	af00      	add	r7, sp, #0
 8000612:	4603      	mov	r3, r0
 8000614:	6039      	str	r1, [r7, #0]
 8000616:	71fb      	strb	r3, [r7, #7]
 8000618:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800061c:	2b00      	cmp	r3, #0
 800061e:	da0b      	bge.n	8000638 <NVIC_SetPriority+0x2c>
 8000620:	490d      	ldr	r1, [pc, #52]	; (8000658 <NVIC_SetPriority+0x4c>)
 8000622:	79fb      	ldrb	r3, [r7, #7]
 8000624:	f003 030f 	and.w	r3, r3, #15
 8000628:	3b04      	subs	r3, #4
 800062a:	683a      	ldr	r2, [r7, #0]
 800062c:	b2d2      	uxtb	r2, r2
 800062e:	0112      	lsls	r2, r2, #4
 8000630:	b2d2      	uxtb	r2, r2
 8000632:	440b      	add	r3, r1
 8000634:	761a      	strb	r2, [r3, #24]
 8000636:	e009      	b.n	800064c <NVIC_SetPriority+0x40>
 8000638:	4908      	ldr	r1, [pc, #32]	; (800065c <NVIC_SetPriority+0x50>)
 800063a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800063e:	683a      	ldr	r2, [r7, #0]
 8000640:	b2d2      	uxtb	r2, r2
 8000642:	0112      	lsls	r2, r2, #4
 8000644:	b2d2      	uxtb	r2, r2
 8000646:	440b      	add	r3, r1
 8000648:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800064c:	370c      	adds	r7, #12
 800064e:	46bd      	mov	sp, r7
 8000650:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000654:	4770      	bx	lr
 8000656:	bf00      	nop
 8000658:	e000ed00 	.word	0xe000ed00
 800065c:	e000e100 	.word	0xe000e100

08000660 <clock_PLL>:
 8000660:	b480      	push	{r7}
 8000662:	af00      	add	r7, sp, #0
 8000664:	4b5b      	ldr	r3, [pc, #364]	; (80007d4 <clock_PLL+0x174>)
 8000666:	4a5b      	ldr	r2, [pc, #364]	; (80007d4 <clock_PLL+0x174>)
 8000668:	6812      	ldr	r2, [r2, #0]
 800066a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800066e:	601a      	str	r2, [r3, #0]
 8000670:	bf00      	nop
 8000672:	4b58      	ldr	r3, [pc, #352]	; (80007d4 <clock_PLL+0x174>)
 8000674:	681b      	ldr	r3, [r3, #0]
 8000676:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800067a:	2b00      	cmp	r3, #0
 800067c:	d0f9      	beq.n	8000672 <clock_PLL+0x12>
 800067e:	4b55      	ldr	r3, [pc, #340]	; (80007d4 <clock_PLL+0x174>)
 8000680:	4a54      	ldr	r2, [pc, #336]	; (80007d4 <clock_PLL+0x174>)
 8000682:	6812      	ldr	r2, [r2, #0]
 8000684:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8000688:	601a      	str	r2, [r3, #0]
 800068a:	4a52      	ldr	r2, [pc, #328]	; (80007d4 <clock_PLL+0x174>)
 800068c:	4b51      	ldr	r3, [pc, #324]	; (80007d4 <clock_PLL+0x174>)
 800068e:	6859      	ldr	r1, [r3, #4]
 8000690:	4b51      	ldr	r3, [pc, #324]	; (80007d8 <clock_PLL+0x178>)
 8000692:	400b      	ands	r3, r1
 8000694:	6053      	str	r3, [r2, #4]
 8000696:	4b4f      	ldr	r3, [pc, #316]	; (80007d4 <clock_PLL+0x174>)
 8000698:	4a4e      	ldr	r2, [pc, #312]	; (80007d4 <clock_PLL+0x174>)
 800069a:	6852      	ldr	r2, [r2, #4]
 800069c:	f442 42a8 	orr.w	r2, r2, #21504	; 0x5400
 80006a0:	605a      	str	r2, [r3, #4]
 80006a2:	4b4c      	ldr	r3, [pc, #304]	; (80007d4 <clock_PLL+0x174>)
 80006a4:	4a4b      	ldr	r2, [pc, #300]	; (80007d4 <clock_PLL+0x174>)
 80006a6:	6852      	ldr	r2, [r2, #4]
 80006a8:	f042 0208 	orr.w	r2, r2, #8
 80006ac:	605a      	str	r2, [r3, #4]
 80006ae:	4b49      	ldr	r3, [pc, #292]	; (80007d4 <clock_PLL+0x174>)
 80006b0:	4a48      	ldr	r2, [pc, #288]	; (80007d4 <clock_PLL+0x174>)
 80006b2:	6852      	ldr	r2, [r2, #4]
 80006b4:	605a      	str	r2, [r3, #4]
 80006b6:	4b47      	ldr	r3, [pc, #284]	; (80007d4 <clock_PLL+0x174>)
 80006b8:	4a46      	ldr	r2, [pc, #280]	; (80007d4 <clock_PLL+0x174>)
 80006ba:	6852      	ldr	r2, [r2, #4]
 80006bc:	f042 62e0 	orr.w	r2, r2, #117440512	; 0x7000000
 80006c0:	605a      	str	r2, [r3, #4]
 80006c2:	4b44      	ldr	r3, [pc, #272]	; (80007d4 <clock_PLL+0x174>)
 80006c4:	4a43      	ldr	r2, [pc, #268]	; (80007d4 <clock_PLL+0x174>)
 80006c6:	6852      	ldr	r2, [r2, #4]
 80006c8:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 80006cc:	605a      	str	r2, [r3, #4]
 80006ce:	4b41      	ldr	r3, [pc, #260]	; (80007d4 <clock_PLL+0x174>)
 80006d0:	4a40      	ldr	r2, [pc, #256]	; (80007d4 <clock_PLL+0x174>)
 80006d2:	6812      	ldr	r2, [r2, #0]
 80006d4:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80006d8:	601a      	str	r2, [r3, #0]
 80006da:	bf00      	nop
 80006dc:	4b3d      	ldr	r3, [pc, #244]	; (80007d4 <clock_PLL+0x174>)
 80006de:	681b      	ldr	r3, [r3, #0]
 80006e0:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80006e4:	2b00      	cmp	r3, #0
 80006e6:	d0f9      	beq.n	80006dc <clock_PLL+0x7c>
 80006e8:	4b3c      	ldr	r3, [pc, #240]	; (80007dc <clock_PLL+0x17c>)
 80006ea:	4a3c      	ldr	r2, [pc, #240]	; (80007dc <clock_PLL+0x17c>)
 80006ec:	6812      	ldr	r2, [r2, #0]
 80006ee:	f022 020f 	bic.w	r2, r2, #15
 80006f2:	601a      	str	r2, [r3, #0]
 80006f4:	4a39      	ldr	r2, [pc, #228]	; (80007dc <clock_PLL+0x17c>)
 80006f6:	4b39      	ldr	r3, [pc, #228]	; (80007dc <clock_PLL+0x17c>)
 80006f8:	681b      	ldr	r3, [r3, #0]
 80006fa:	f443 7382 	orr.w	r3, r3, #260	; 0x104
 80006fe:	f043 0301 	orr.w	r3, r3, #1
 8000702:	6013      	str	r3, [r2, #0]
 8000704:	4a33      	ldr	r2, [pc, #204]	; (80007d4 <clock_PLL+0x174>)
 8000706:	4b33      	ldr	r3, [pc, #204]	; (80007d4 <clock_PLL+0x174>)
 8000708:	689b      	ldr	r3, [r3, #8]
 800070a:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 800070e:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000712:	6093      	str	r3, [r2, #8]
 8000714:	4b2f      	ldr	r3, [pc, #188]	; (80007d4 <clock_PLL+0x174>)
 8000716:	4a2f      	ldr	r2, [pc, #188]	; (80007d4 <clock_PLL+0x174>)
 8000718:	6892      	ldr	r2, [r2, #8]
 800071a:	f442 4214 	orr.w	r2, r2, #37888	; 0x9400
 800071e:	609a      	str	r2, [r3, #8]
 8000720:	4b2c      	ldr	r3, [pc, #176]	; (80007d4 <clock_PLL+0x174>)
 8000722:	4a2c      	ldr	r2, [pc, #176]	; (80007d4 <clock_PLL+0x174>)
 8000724:	6892      	ldr	r2, [r2, #8]
 8000726:	f022 0203 	bic.w	r2, r2, #3
 800072a:	609a      	str	r2, [r3, #8]
 800072c:	4b29      	ldr	r3, [pc, #164]	; (80007d4 <clock_PLL+0x174>)
 800072e:	4a29      	ldr	r2, [pc, #164]	; (80007d4 <clock_PLL+0x174>)
 8000730:	6892      	ldr	r2, [r2, #8]
 8000732:	f042 0202 	orr.w	r2, r2, #2
 8000736:	609a      	str	r2, [r3, #8]
 8000738:	bf00      	nop
 800073a:	4b26      	ldr	r3, [pc, #152]	; (80007d4 <clock_PLL+0x174>)
 800073c:	689b      	ldr	r3, [r3, #8]
 800073e:	f003 0308 	and.w	r3, r3, #8
 8000742:	2b00      	cmp	r3, #0
 8000744:	d0f9      	beq.n	800073a <clock_PLL+0xda>
 8000746:	4b23      	ldr	r3, [pc, #140]	; (80007d4 <clock_PLL+0x174>)
 8000748:	4a22      	ldr	r2, [pc, #136]	; (80007d4 <clock_PLL+0x174>)
 800074a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800074c:	f042 0205 	orr.w	r2, r2, #5
 8000750:	631a      	str	r2, [r3, #48]	; 0x30
 8000752:	4b23      	ldr	r3, [pc, #140]	; (80007e0 <clock_PLL+0x180>)
 8000754:	4a22      	ldr	r2, [pc, #136]	; (80007e0 <clock_PLL+0x180>)
 8000756:	6812      	ldr	r2, [r2, #0]
 8000758:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 800075c:	601a      	str	r2, [r3, #0]
 800075e:	4b20      	ldr	r3, [pc, #128]	; (80007e0 <clock_PLL+0x180>)
 8000760:	4a1f      	ldr	r2, [pc, #124]	; (80007e0 <clock_PLL+0x180>)
 8000762:	6812      	ldr	r2, [r2, #0]
 8000764:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8000768:	601a      	str	r2, [r3, #0]
 800076a:	4b1e      	ldr	r3, [pc, #120]	; (80007e4 <clock_PLL+0x184>)
 800076c:	4a1d      	ldr	r2, [pc, #116]	; (80007e4 <clock_PLL+0x184>)
 800076e:	6812      	ldr	r2, [r2, #0]
 8000770:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 8000774:	601a      	str	r2, [r3, #0]
 8000776:	4b1b      	ldr	r3, [pc, #108]	; (80007e4 <clock_PLL+0x184>)
 8000778:	4a1a      	ldr	r2, [pc, #104]	; (80007e4 <clock_PLL+0x184>)
 800077a:	6812      	ldr	r2, [r2, #0]
 800077c:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 8000780:	601a      	str	r2, [r3, #0]
 8000782:	4b17      	ldr	r3, [pc, #92]	; (80007e0 <clock_PLL+0x180>)
 8000784:	4a16      	ldr	r2, [pc, #88]	; (80007e0 <clock_PLL+0x180>)
 8000786:	6892      	ldr	r2, [r2, #8]
 8000788:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 800078c:	609a      	str	r2, [r3, #8]
 800078e:	4b15      	ldr	r3, [pc, #84]	; (80007e4 <clock_PLL+0x184>)
 8000790:	4a14      	ldr	r2, [pc, #80]	; (80007e4 <clock_PLL+0x184>)
 8000792:	6892      	ldr	r2, [r2, #8]
 8000794:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 8000798:	609a      	str	r2, [r3, #8]
 800079a:	4b0e      	ldr	r3, [pc, #56]	; (80007d4 <clock_PLL+0x174>)
 800079c:	4a0d      	ldr	r2, [pc, #52]	; (80007d4 <clock_PLL+0x174>)
 800079e:	6892      	ldr	r2, [r2, #8]
 80007a0:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 80007a4:	609a      	str	r2, [r3, #8]
 80007a6:	4b0b      	ldr	r3, [pc, #44]	; (80007d4 <clock_PLL+0x174>)
 80007a8:	4a0a      	ldr	r2, [pc, #40]	; (80007d4 <clock_PLL+0x174>)
 80007aa:	6892      	ldr	r2, [r2, #8]
 80007ac:	f442 02c0 	orr.w	r2, r2, #6291456	; 0x600000
 80007b0:	609a      	str	r2, [r3, #8]
 80007b2:	4b08      	ldr	r3, [pc, #32]	; (80007d4 <clock_PLL+0x174>)
 80007b4:	4a07      	ldr	r2, [pc, #28]	; (80007d4 <clock_PLL+0x174>)
 80007b6:	6892      	ldr	r2, [r2, #8]
 80007b8:	f022 527c 	bic.w	r2, r2, #1056964608	; 0x3f000000
 80007bc:	609a      	str	r2, [r3, #8]
 80007be:	4b05      	ldr	r3, [pc, #20]	; (80007d4 <clock_PLL+0x174>)
 80007c0:	4a04      	ldr	r2, [pc, #16]	; (80007d4 <clock_PLL+0x174>)
 80007c2:	6892      	ldr	r2, [r2, #8]
 80007c4:	f042 5258 	orr.w	r2, r2, #905969664	; 0x36000000
 80007c8:	609a      	str	r2, [r3, #8]
 80007ca:	46bd      	mov	sp, r7
 80007cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007d0:	4770      	bx	lr
 80007d2:	bf00      	nop
 80007d4:	40023800 	.word	0x40023800
 80007d8:	f0fc8000 	.word	0xf0fc8000
 80007dc:	40023c00 	.word	0x40023c00
 80007e0:	40020000 	.word	0x40020000
 80007e4:	40020800 	.word	0x40020800

080007e8 <clock_HSE>:
 80007e8:	b480      	push	{r7}
 80007ea:	af00      	add	r7, sp, #0
 80007ec:	4b2c      	ldr	r3, [pc, #176]	; (80008a0 <clock_HSE+0xb8>)
 80007ee:	4a2c      	ldr	r2, [pc, #176]	; (80008a0 <clock_HSE+0xb8>)
 80007f0:	6812      	ldr	r2, [r2, #0]
 80007f2:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80007f6:	601a      	str	r2, [r3, #0]
 80007f8:	bf00      	nop
 80007fa:	4b29      	ldr	r3, [pc, #164]	; (80008a0 <clock_HSE+0xb8>)
 80007fc:	681b      	ldr	r3, [r3, #0]
 80007fe:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000802:	2b00      	cmp	r3, #0
 8000804:	d0f9      	beq.n	80007fa <clock_HSE+0x12>
 8000806:	4b26      	ldr	r3, [pc, #152]	; (80008a0 <clock_HSE+0xb8>)
 8000808:	4a25      	ldr	r2, [pc, #148]	; (80008a0 <clock_HSE+0xb8>)
 800080a:	6892      	ldr	r2, [r2, #8]
 800080c:	f022 0203 	bic.w	r2, r2, #3
 8000810:	609a      	str	r2, [r3, #8]
 8000812:	4b23      	ldr	r3, [pc, #140]	; (80008a0 <clock_HSE+0xb8>)
 8000814:	4a22      	ldr	r2, [pc, #136]	; (80008a0 <clock_HSE+0xb8>)
 8000816:	6892      	ldr	r2, [r2, #8]
 8000818:	f042 0201 	orr.w	r2, r2, #1
 800081c:	609a      	str	r2, [r3, #8]
 800081e:	bf00      	nop
 8000820:	4b1f      	ldr	r3, [pc, #124]	; (80008a0 <clock_HSE+0xb8>)
 8000822:	689b      	ldr	r3, [r3, #8]
 8000824:	f003 0304 	and.w	r3, r3, #4
 8000828:	2b00      	cmp	r3, #0
 800082a:	d0f9      	beq.n	8000820 <clock_HSE+0x38>
 800082c:	4b1c      	ldr	r3, [pc, #112]	; (80008a0 <clock_HSE+0xb8>)
 800082e:	4a1c      	ldr	r2, [pc, #112]	; (80008a0 <clock_HSE+0xb8>)
 8000830:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000832:	f042 0205 	orr.w	r2, r2, #5
 8000836:	631a      	str	r2, [r3, #48]	; 0x30
 8000838:	4b1a      	ldr	r3, [pc, #104]	; (80008a4 <clock_HSE+0xbc>)
 800083a:	4a1a      	ldr	r2, [pc, #104]	; (80008a4 <clock_HSE+0xbc>)
 800083c:	6812      	ldr	r2, [r2, #0]
 800083e:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8000842:	601a      	str	r2, [r3, #0]
 8000844:	4b17      	ldr	r3, [pc, #92]	; (80008a4 <clock_HSE+0xbc>)
 8000846:	4a17      	ldr	r2, [pc, #92]	; (80008a4 <clock_HSE+0xbc>)
 8000848:	6812      	ldr	r2, [r2, #0]
 800084a:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 800084e:	601a      	str	r2, [r3, #0]
 8000850:	4b15      	ldr	r3, [pc, #84]	; (80008a8 <clock_HSE+0xc0>)
 8000852:	4a15      	ldr	r2, [pc, #84]	; (80008a8 <clock_HSE+0xc0>)
 8000854:	6812      	ldr	r2, [r2, #0]
 8000856:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 800085a:	601a      	str	r2, [r3, #0]
 800085c:	4b12      	ldr	r3, [pc, #72]	; (80008a8 <clock_HSE+0xc0>)
 800085e:	4a12      	ldr	r2, [pc, #72]	; (80008a8 <clock_HSE+0xc0>)
 8000860:	6812      	ldr	r2, [r2, #0]
 8000862:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 8000866:	601a      	str	r2, [r3, #0]
 8000868:	4b0e      	ldr	r3, [pc, #56]	; (80008a4 <clock_HSE+0xbc>)
 800086a:	4a0e      	ldr	r2, [pc, #56]	; (80008a4 <clock_HSE+0xbc>)
 800086c:	6892      	ldr	r2, [r2, #8]
 800086e:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 8000872:	609a      	str	r2, [r3, #8]
 8000874:	4b0c      	ldr	r3, [pc, #48]	; (80008a8 <clock_HSE+0xc0>)
 8000876:	4a0c      	ldr	r2, [pc, #48]	; (80008a8 <clock_HSE+0xc0>)
 8000878:	6892      	ldr	r2, [r2, #8]
 800087a:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 800087e:	609a      	str	r2, [r3, #8]
 8000880:	4b07      	ldr	r3, [pc, #28]	; (80008a0 <clock_HSE+0xb8>)
 8000882:	4a07      	ldr	r2, [pc, #28]	; (80008a0 <clock_HSE+0xb8>)
 8000884:	6892      	ldr	r2, [r2, #8]
 8000886:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 800088a:	609a      	str	r2, [r3, #8]
 800088c:	4b04      	ldr	r3, [pc, #16]	; (80008a0 <clock_HSE+0xb8>)
 800088e:	4a04      	ldr	r2, [pc, #16]	; (80008a0 <clock_HSE+0xb8>)
 8000890:	6892      	ldr	r2, [r2, #8]
 8000892:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 8000896:	609a      	str	r2, [r3, #8]
 8000898:	46bd      	mov	sp, r7
 800089a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800089e:	4770      	bx	lr
 80008a0:	40023800 	.word	0x40023800
 80008a4:	40020000 	.word	0x40020000
 80008a8:	40020800 	.word	0x40020800

080008ac <systimer_init>:
 80008ac:	b480      	push	{r7}
 80008ae:	af00      	add	r7, sp, #0
 80008b0:	4b06      	ldr	r3, [pc, #24]	; (80008cc <systimer_init+0x20>)
 80008b2:	f245 2207 	movw	r2, #20999	; 0x5207
 80008b6:	605a      	str	r2, [r3, #4]
 80008b8:	4b04      	ldr	r3, [pc, #16]	; (80008cc <systimer_init+0x20>)
 80008ba:	2200      	movs	r2, #0
 80008bc:	609a      	str	r2, [r3, #8]
 80008be:	4b03      	ldr	r3, [pc, #12]	; (80008cc <systimer_init+0x20>)
 80008c0:	2203      	movs	r2, #3
 80008c2:	601a      	str	r2, [r3, #0]
 80008c4:	46bd      	mov	sp, r7
 80008c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008ca:	4770      	bx	lr
 80008cc:	e000e010 	.word	0xe000e010

080008d0 <set_attenuator>:
 80008d0:	b480      	push	{r7}
 80008d2:	b085      	sub	sp, #20
 80008d4:	af00      	add	r7, sp, #0
 80008d6:	4603      	mov	r3, r0
 80008d8:	71fb      	strb	r3, [r7, #7]
 80008da:	4b08      	ldr	r3, [pc, #32]	; (80008fc <set_attenuator+0x2c>)
 80008dc:	695b      	ldr	r3, [r3, #20]
 80008de:	60fb      	str	r3, [r7, #12]
 80008e0:	68fb      	ldr	r3, [r7, #12]
 80008e2:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 80008e6:	60fb      	str	r3, [r7, #12]
 80008e8:	4b04      	ldr	r3, [pc, #16]	; (80008fc <set_attenuator+0x2c>)
 80008ea:	79f9      	ldrb	r1, [r7, #7]
 80008ec:	68fa      	ldr	r2, [r7, #12]
 80008ee:	430a      	orrs	r2, r1
 80008f0:	615a      	str	r2, [r3, #20]
 80008f2:	3714      	adds	r7, #20
 80008f4:	46bd      	mov	sp, r7
 80008f6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008fa:	4770      	bx	lr
 80008fc:	40020c00 	.word	0x40020c00

08000900 <system_init>:
 8000900:	b580      	push	{r7, lr}
 8000902:	af00      	add	r7, sp, #0
 8000904:	f7ff feac 	bl	8000660 <clock_PLL>
 8000908:	f7ff ffd0 	bl	80008ac <systimer_init>
 800090c:	4b30      	ldr	r3, [pc, #192]	; (80009d0 <system_init+0xd0>)
 800090e:	4a30      	ldr	r2, [pc, #192]	; (80009d0 <system_init+0xd0>)
 8000910:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000912:	f042 0201 	orr.w	r2, r2, #1
 8000916:	631a      	str	r2, [r3, #48]	; 0x30
 8000918:	4b2e      	ldr	r3, [pc, #184]	; (80009d4 <system_init+0xd4>)
 800091a:	4a2e      	ldr	r2, [pc, #184]	; (80009d4 <system_init+0xd4>)
 800091c:	6812      	ldr	r2, [r2, #0]
 800091e:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000922:	601a      	str	r2, [r3, #0]
 8000924:	4b2b      	ldr	r3, [pc, #172]	; (80009d4 <system_init+0xd4>)
 8000926:	4a2b      	ldr	r2, [pc, #172]	; (80009d4 <system_init+0xd4>)
 8000928:	6812      	ldr	r2, [r2, #0]
 800092a:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 800092e:	601a      	str	r2, [r3, #0]
 8000930:	4b27      	ldr	r3, [pc, #156]	; (80009d0 <system_init+0xd0>)
 8000932:	4a27      	ldr	r2, [pc, #156]	; (80009d0 <system_init+0xd0>)
 8000934:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000936:	f042 0210 	orr.w	r2, r2, #16
 800093a:	631a      	str	r2, [r3, #48]	; 0x30
 800093c:	4b26      	ldr	r3, [pc, #152]	; (80009d8 <system_init+0xd8>)
 800093e:	4a26      	ldr	r2, [pc, #152]	; (80009d8 <system_init+0xd8>)
 8000940:	6812      	ldr	r2, [r2, #0]
 8000942:	f422 227c 	bic.w	r2, r2, #1032192	; 0xfc000
 8000946:	601a      	str	r2, [r3, #0]
 8000948:	4b23      	ldr	r3, [pc, #140]	; (80009d8 <system_init+0xd8>)
 800094a:	4a23      	ldr	r2, [pc, #140]	; (80009d8 <system_init+0xd8>)
 800094c:	6812      	ldr	r2, [r2, #0]
 800094e:	f442 22a8 	orr.w	r2, r2, #344064	; 0x54000
 8000952:	601a      	str	r2, [r3, #0]
 8000954:	4b1e      	ldr	r3, [pc, #120]	; (80009d0 <system_init+0xd0>)
 8000956:	4a1e      	ldr	r2, [pc, #120]	; (80009d0 <system_init+0xd0>)
 8000958:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800095a:	f042 0208 	orr.w	r2, r2, #8
 800095e:	631a      	str	r2, [r3, #48]	; 0x30
 8000960:	4a1e      	ldr	r2, [pc, #120]	; (80009dc <system_init+0xdc>)
 8000962:	4b1e      	ldr	r3, [pc, #120]	; (80009dc <system_init+0xdc>)
 8000964:	681b      	ldr	r3, [r3, #0]
 8000966:	0c1b      	lsrs	r3, r3, #16
 8000968:	041b      	lsls	r3, r3, #16
 800096a:	6013      	str	r3, [r2, #0]
 800096c:	4a1b      	ldr	r2, [pc, #108]	; (80009dc <system_init+0xdc>)
 800096e:	4b1b      	ldr	r3, [pc, #108]	; (80009dc <system_init+0xdc>)
 8000970:	681b      	ldr	r3, [r3, #0]
 8000972:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 8000976:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 800097a:	6013      	str	r3, [r2, #0]
 800097c:	2000      	movs	r0, #0
 800097e:	f7ff fe21 	bl	80005c4 <NVIC_SetPriorityGrouping>
 8000982:	201f      	movs	r0, #31
 8000984:	2104      	movs	r1, #4
 8000986:	f7ff fe41 	bl	800060c <NVIC_SetPriority>
 800098a:	2020      	movs	r0, #32
 800098c:	2104      	movs	r1, #4
 800098e:	f7ff fe3d 	bl	800060c <NVIC_SetPriority>
 8000992:	200f      	movs	r0, #15
 8000994:	2103      	movs	r1, #3
 8000996:	f7ff fe39 	bl	800060c <NVIC_SetPriority>
 800099a:	201d      	movs	r0, #29
 800099c:	2103      	movs	r1, #3
 800099e:	f7ff fe35 	bl	800060c <NVIC_SetPriority>
 80009a2:	2023      	movs	r0, #35	; 0x23
 80009a4:	2103      	movs	r1, #3
 80009a6:	f7ff fe31 	bl	800060c <NVIC_SetPriority>
 80009aa:	2034      	movs	r0, #52	; 0x34
 80009ac:	2103      	movs	r1, #3
 80009ae:	f7ff fe2d 	bl	800060c <NVIC_SetPriority>
 80009b2:	2026      	movs	r0, #38	; 0x26
 80009b4:	2102      	movs	r1, #2
 80009b6:	f7ff fe29 	bl	800060c <NVIC_SetPriority>
 80009ba:	f04f 30ff 	mov.w	r0, #4294967295
 80009be:	2101      	movs	r1, #1
 80009c0:	f7ff fe24 	bl	800060c <NVIC_SetPriority>
 80009c4:	2012      	movs	r0, #18
 80009c6:	2100      	movs	r1, #0
 80009c8:	f7ff fe20 	bl	800060c <NVIC_SetPriority>
 80009cc:	bd80      	pop	{r7, pc}
 80009ce:	bf00      	nop
 80009d0:	40023800 	.word	0x40023800
 80009d4:	40020000 	.word	0x40020000
 80009d8:	40021000 	.word	0x40021000
 80009dc:	40020c00 	.word	0x40020c00

080009e0 <sleep>:
 80009e0:	b480      	push	{r7}
 80009e2:	b085      	sub	sp, #20
 80009e4:	af00      	add	r7, sp, #0
 80009e6:	6078      	str	r0, [r7, #4]
 80009e8:	4b07      	ldr	r3, [pc, #28]	; (8000a08 <sleep+0x28>)
 80009ea:	681a      	ldr	r2, [r3, #0]
 80009ec:	687b      	ldr	r3, [r7, #4]
 80009ee:	4413      	add	r3, r2
 80009f0:	60fb      	str	r3, [r7, #12]
 80009f2:	bf00      	nop
 80009f4:	4b04      	ldr	r3, [pc, #16]	; (8000a08 <sleep+0x28>)
 80009f6:	681a      	ldr	r2, [r3, #0]
 80009f8:	68fb      	ldr	r3, [r7, #12]
 80009fa:	429a      	cmp	r2, r3
 80009fc:	d3fa      	bcc.n	80009f4 <sleep+0x14>
 80009fe:	3714      	adds	r7, #20
 8000a00:	46bd      	mov	sp, r7
 8000a02:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a06:	4770      	bx	lr
 8000a08:	20000250 	.word	0x20000250

08000a0c <SysTick_Handler>:
 8000a0c:	b480      	push	{r7}
 8000a0e:	af00      	add	r7, sp, #0
 8000a10:	4b04      	ldr	r3, [pc, #16]	; (8000a24 <SysTick_Handler+0x18>)
 8000a12:	681b      	ldr	r3, [r3, #0]
 8000a14:	1c5a      	adds	r2, r3, #1
 8000a16:	4b03      	ldr	r3, [pc, #12]	; (8000a24 <SysTick_Handler+0x18>)
 8000a18:	601a      	str	r2, [r3, #0]
 8000a1a:	46bd      	mov	sp, r7
 8000a1c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a20:	4770      	bx	lr
 8000a22:	bf00      	nop
 8000a24:	20000250 	.word	0x20000250

08000a28 <handler_reset>:
 8000a28:	b580      	push	{r7, lr}
 8000a2a:	b082      	sub	sp, #8
 8000a2c:	af00      	add	r7, sp, #0
 8000a2e:	4b11      	ldr	r3, [pc, #68]	; (8000a74 <handler_reset+0x4c>)
 8000a30:	607b      	str	r3, [r7, #4]
 8000a32:	4b11      	ldr	r3, [pc, #68]	; (8000a78 <handler_reset+0x50>)
 8000a34:	603b      	str	r3, [r7, #0]
 8000a36:	e007      	b.n	8000a48 <handler_reset+0x20>
 8000a38:	683b      	ldr	r3, [r7, #0]
 8000a3a:	1d1a      	adds	r2, r3, #4
 8000a3c:	603a      	str	r2, [r7, #0]
 8000a3e:	687a      	ldr	r2, [r7, #4]
 8000a40:	1d11      	adds	r1, r2, #4
 8000a42:	6079      	str	r1, [r7, #4]
 8000a44:	6812      	ldr	r2, [r2, #0]
 8000a46:	601a      	str	r2, [r3, #0]
 8000a48:	683a      	ldr	r2, [r7, #0]
 8000a4a:	4b0c      	ldr	r3, [pc, #48]	; (8000a7c <handler_reset+0x54>)
 8000a4c:	429a      	cmp	r2, r3
 8000a4e:	d3f3      	bcc.n	8000a38 <handler_reset+0x10>
 8000a50:	4b0b      	ldr	r3, [pc, #44]	; (8000a80 <handler_reset+0x58>)
 8000a52:	603b      	str	r3, [r7, #0]
 8000a54:	e004      	b.n	8000a60 <handler_reset+0x38>
 8000a56:	683b      	ldr	r3, [r7, #0]
 8000a58:	1d1a      	adds	r2, r3, #4
 8000a5a:	603a      	str	r2, [r7, #0]
 8000a5c:	2200      	movs	r2, #0
 8000a5e:	601a      	str	r2, [r3, #0]
 8000a60:	683a      	ldr	r2, [r7, #0]
 8000a62:	4b08      	ldr	r3, [pc, #32]	; (8000a84 <handler_reset+0x5c>)
 8000a64:	429a      	cmp	r2, r3
 8000a66:	d3f6      	bcc.n	8000a56 <handler_reset+0x2e>
 8000a68:	f7ff fd52 	bl	8000510 <main>
 8000a6c:	3708      	adds	r7, #8
 8000a6e:	46bd      	mov	sp, r7
 8000a70:	bd80      	pop	{r7, pc}
 8000a72:	bf00      	nop
 8000a74:	08004f58 	.word	0x08004f58
 8000a78:	20000000 	.word	0x20000000
 8000a7c:	20000240 	.word	0x20000240
 8000a80:	20000240 	.word	0x20000240
 8000a84:	200012e4 	.word	0x200012e4

08000a88 <default_handler>:
 8000a88:	b480      	push	{r7}
 8000a8a:	af00      	add	r7, sp, #0
 8000a8c:	e7fe      	b.n	8000a8c <default_handler+0x4>
 8000a8e:	bf00      	nop

08000a90 <NVIC_EnableIRQ>:
 8000a90:	b480      	push	{r7}
 8000a92:	b083      	sub	sp, #12
 8000a94:	af00      	add	r7, sp, #0
 8000a96:	4603      	mov	r3, r0
 8000a98:	71fb      	strb	r3, [r7, #7]
 8000a9a:	4b08      	ldr	r3, [pc, #32]	; (8000abc <NVIC_EnableIRQ+0x2c>)
 8000a9c:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8000aa0:	0952      	lsrs	r2, r2, #5
 8000aa2:	79f9      	ldrb	r1, [r7, #7]
 8000aa4:	f001 011f 	and.w	r1, r1, #31
 8000aa8:	2001      	movs	r0, #1
 8000aaa:	fa00 f101 	lsl.w	r1, r0, r1
 8000aae:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8000ab2:	370c      	adds	r7, #12
 8000ab4:	46bd      	mov	sp, r7
 8000ab6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000aba:	4770      	bx	lr
 8000abc:	e000e100 	.word	0xe000e100

08000ac0 <uart_init>:
 8000ac0:	b580      	push	{r7, lr}
 8000ac2:	af00      	add	r7, sp, #0
 8000ac4:	4b34      	ldr	r3, [pc, #208]	; (8000b98 <uart_init+0xd8>)
 8000ac6:	4a34      	ldr	r2, [pc, #208]	; (8000b98 <uart_init+0xd8>)
 8000ac8:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8000aca:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 8000ace:	641a      	str	r2, [r3, #64]	; 0x40
 8000ad0:	4b32      	ldr	r3, [pc, #200]	; (8000b9c <uart_init+0xdc>)
 8000ad2:	4a32      	ldr	r2, [pc, #200]	; (8000b9c <uart_init+0xdc>)
 8000ad4:	8992      	ldrh	r2, [r2, #12]
 8000ad6:	b292      	uxth	r2, r2
 8000ad8:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000adc:	b292      	uxth	r2, r2
 8000ade:	819a      	strh	r2, [r3, #12]
 8000ae0:	4b2e      	ldr	r3, [pc, #184]	; (8000b9c <uart_init+0xdc>)
 8000ae2:	4a2e      	ldr	r2, [pc, #184]	; (8000b9c <uart_init+0xdc>)
 8000ae4:	8992      	ldrh	r2, [r2, #12]
 8000ae6:	b292      	uxth	r2, r2
 8000ae8:	f042 0204 	orr.w	r2, r2, #4
 8000aec:	b292      	uxth	r2, r2
 8000aee:	819a      	strh	r2, [r3, #12]
 8000af0:	4b2a      	ldr	r3, [pc, #168]	; (8000b9c <uart_init+0xdc>)
 8000af2:	4a2a      	ldr	r2, [pc, #168]	; (8000b9c <uart_init+0xdc>)
 8000af4:	8992      	ldrh	r2, [r2, #12]
 8000af6:	b292      	uxth	r2, r2
 8000af8:	f042 0220 	orr.w	r2, r2, #32
 8000afc:	b292      	uxth	r2, r2
 8000afe:	819a      	strh	r2, [r3, #12]
 8000b00:	4b26      	ldr	r3, [pc, #152]	; (8000b9c <uart_init+0xdc>)
 8000b02:	4a26      	ldr	r2, [pc, #152]	; (8000b9c <uart_init+0xdc>)
 8000b04:	8992      	ldrh	r2, [r2, #12]
 8000b06:	b292      	uxth	r2, r2
 8000b08:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000b0c:	b292      	uxth	r2, r2
 8000b0e:	819a      	strh	r2, [r3, #12]
 8000b10:	2034      	movs	r0, #52	; 0x34
 8000b12:	f7ff ffbd 	bl	8000a90 <NVIC_EnableIRQ>
 8000b16:	4b21      	ldr	r3, [pc, #132]	; (8000b9c <uart_init+0xdc>)
 8000b18:	891b      	ldrh	r3, [r3, #8]
 8000b1a:	4b20      	ldr	r3, [pc, #128]	; (8000b9c <uart_init+0xdc>)
 8000b1c:	2200      	movs	r2, #0
 8000b1e:	811a      	strh	r2, [r3, #8]
 8000b20:	4a1e      	ldr	r2, [pc, #120]	; (8000b9c <uart_init+0xdc>)
 8000b22:	4b1e      	ldr	r3, [pc, #120]	; (8000b9c <uart_init+0xdc>)
 8000b24:	891b      	ldrh	r3, [r3, #8]
 8000b26:	b29b      	uxth	r3, r3
 8000b28:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8000b2c:	f043 0301 	orr.w	r3, r3, #1
 8000b30:	b29b      	uxth	r3, r3
 8000b32:	8113      	strh	r3, [r2, #8]
 8000b34:	4b18      	ldr	r3, [pc, #96]	; (8000b98 <uart_init+0xd8>)
 8000b36:	4a18      	ldr	r2, [pc, #96]	; (8000b98 <uart_init+0xd8>)
 8000b38:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000b3a:	f042 0204 	orr.w	r2, r2, #4
 8000b3e:	631a      	str	r2, [r3, #48]	; 0x30
 8000b40:	4b17      	ldr	r3, [pc, #92]	; (8000ba0 <uart_init+0xe0>)
 8000b42:	4a17      	ldr	r2, [pc, #92]	; (8000ba0 <uart_init+0xe0>)
 8000b44:	6812      	ldr	r2, [r2, #0]
 8000b46:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8000b4a:	601a      	str	r2, [r3, #0]
 8000b4c:	4b14      	ldr	r3, [pc, #80]	; (8000ba0 <uart_init+0xe0>)
 8000b4e:	4a14      	ldr	r2, [pc, #80]	; (8000ba0 <uart_init+0xe0>)
 8000b50:	6812      	ldr	r2, [r2, #0]
 8000b52:	f442 0220 	orr.w	r2, r2, #10485760	; 0xa00000
 8000b56:	601a      	str	r2, [r3, #0]
 8000b58:	4b11      	ldr	r3, [pc, #68]	; (8000ba0 <uart_init+0xe0>)
 8000b5a:	4a11      	ldr	r2, [pc, #68]	; (8000ba0 <uart_init+0xe0>)
 8000b5c:	6892      	ldr	r2, [r2, #8]
 8000b5e:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8000b62:	609a      	str	r2, [r3, #8]
 8000b64:	4b0e      	ldr	r3, [pc, #56]	; (8000ba0 <uart_init+0xe0>)
 8000b66:	4a0e      	ldr	r2, [pc, #56]	; (8000ba0 <uart_init+0xe0>)
 8000b68:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000b6a:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8000b6e:	625a      	str	r2, [r3, #36]	; 0x24
 8000b70:	4b0b      	ldr	r3, [pc, #44]	; (8000ba0 <uart_init+0xe0>)
 8000b72:	4a0b      	ldr	r2, [pc, #44]	; (8000ba0 <uart_init+0xe0>)
 8000b74:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000b76:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8000b7a:	625a      	str	r2, [r3, #36]	; 0x24
 8000b7c:	4b08      	ldr	r3, [pc, #32]	; (8000ba0 <uart_init+0xe0>)
 8000b7e:	4a08      	ldr	r2, [pc, #32]	; (8000ba0 <uart_init+0xe0>)
 8000b80:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000b82:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 8000b86:	625a      	str	r2, [r3, #36]	; 0x24
 8000b88:	4b05      	ldr	r3, [pc, #20]	; (8000ba0 <uart_init+0xe0>)
 8000b8a:	4a05      	ldr	r2, [pc, #20]	; (8000ba0 <uart_init+0xe0>)
 8000b8c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000b8e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8000b92:	625a      	str	r2, [r3, #36]	; 0x24
 8000b94:	bd80      	pop	{r7, pc}
 8000b96:	bf00      	nop
 8000b98:	40023800 	.word	0x40023800
 8000b9c:	40004c00 	.word	0x40004c00
 8000ba0:	40020800 	.word	0x40020800

08000ba4 <uart_putch>:
 8000ba4:	b480      	push	{r7}
 8000ba6:	b083      	sub	sp, #12
 8000ba8:	af00      	add	r7, sp, #0
 8000baa:	4603      	mov	r3, r0
 8000bac:	71fb      	strb	r3, [r7, #7]
 8000bae:	4b13      	ldr	r3, [pc, #76]	; (8000bfc <uart_putch+0x58>)
 8000bb0:	681a      	ldr	r2, [r3, #0]
 8000bb2:	4b13      	ldr	r3, [pc, #76]	; (8000c00 <uart_putch+0x5c>)
 8000bb4:	681b      	ldr	r3, [r3, #0]
 8000bb6:	429a      	cmp	r2, r3
 8000bb8:	d107      	bne.n	8000bca <uart_putch+0x26>
 8000bba:	4b12      	ldr	r3, [pc, #72]	; (8000c04 <uart_putch+0x60>)
 8000bbc:	4a11      	ldr	r2, [pc, #68]	; (8000c04 <uart_putch+0x60>)
 8000bbe:	8992      	ldrh	r2, [r2, #12]
 8000bc0:	b292      	uxth	r2, r2
 8000bc2:	f042 0208 	orr.w	r2, r2, #8
 8000bc6:	b292      	uxth	r2, r2
 8000bc8:	819a      	strh	r2, [r3, #12]
 8000bca:	4b0c      	ldr	r3, [pc, #48]	; (8000bfc <uart_putch+0x58>)
 8000bcc:	681b      	ldr	r3, [r3, #0]
 8000bce:	4a0e      	ldr	r2, [pc, #56]	; (8000c08 <uart_putch+0x64>)
 8000bd0:	79f9      	ldrb	r1, [r7, #7]
 8000bd2:	54d1      	strb	r1, [r2, r3]
 8000bd4:	4b09      	ldr	r3, [pc, #36]	; (8000bfc <uart_putch+0x58>)
 8000bd6:	681b      	ldr	r3, [r3, #0]
 8000bd8:	3301      	adds	r3, #1
 8000bda:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000bde:	4b07      	ldr	r3, [pc, #28]	; (8000bfc <uart_putch+0x58>)
 8000be0:	601a      	str	r2, [r3, #0]
 8000be2:	4b08      	ldr	r3, [pc, #32]	; (8000c04 <uart_putch+0x60>)
 8000be4:	4a07      	ldr	r2, [pc, #28]	; (8000c04 <uart_putch+0x60>)
 8000be6:	8992      	ldrh	r2, [r2, #12]
 8000be8:	b292      	uxth	r2, r2
 8000bea:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000bee:	b292      	uxth	r2, r2
 8000bf0:	819a      	strh	r2, [r3, #12]
 8000bf2:	370c      	adds	r7, #12
 8000bf4:	46bd      	mov	sp, r7
 8000bf6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bfa:	4770      	bx	lr
 8000bfc:	20000658 	.word	0x20000658
 8000c00:	20000654 	.word	0x20000654
 8000c04:	40004c00 	.word	0x40004c00
 8000c08:	20000254 	.word	0x20000254

08000c0c <uart_send>:
 8000c0c:	b480      	push	{r7}
 8000c0e:	b085      	sub	sp, #20
 8000c10:	af00      	add	r7, sp, #0
 8000c12:	6078      	str	r0, [r7, #4]
 8000c14:	6039      	str	r1, [r7, #0]
 8000c16:	4b20      	ldr	r3, [pc, #128]	; (8000c98 <uart_send+0x8c>)
 8000c18:	681a      	ldr	r2, [r3, #0]
 8000c1a:	4b20      	ldr	r3, [pc, #128]	; (8000c9c <uart_send+0x90>)
 8000c1c:	681b      	ldr	r3, [r3, #0]
 8000c1e:	429a      	cmp	r2, r3
 8000c20:	d107      	bne.n	8000c32 <uart_send+0x26>
 8000c22:	4b1f      	ldr	r3, [pc, #124]	; (8000ca0 <uart_send+0x94>)
 8000c24:	4a1e      	ldr	r2, [pc, #120]	; (8000ca0 <uart_send+0x94>)
 8000c26:	8992      	ldrh	r2, [r2, #12]
 8000c28:	b292      	uxth	r2, r2
 8000c2a:	f042 0208 	orr.w	r2, r2, #8
 8000c2e:	b292      	uxth	r2, r2
 8000c30:	819a      	strh	r2, [r3, #12]
 8000c32:	2300      	movs	r3, #0
 8000c34:	60fb      	str	r3, [r7, #12]
 8000c36:	e01b      	b.n	8000c70 <uart_send+0x64>
 8000c38:	4b17      	ldr	r3, [pc, #92]	; (8000c98 <uart_send+0x8c>)
 8000c3a:	681b      	ldr	r3, [r3, #0]
 8000c3c:	68fa      	ldr	r2, [r7, #12]
 8000c3e:	6879      	ldr	r1, [r7, #4]
 8000c40:	440a      	add	r2, r1
 8000c42:	7811      	ldrb	r1, [r2, #0]
 8000c44:	4a17      	ldr	r2, [pc, #92]	; (8000ca4 <uart_send+0x98>)
 8000c46:	54d1      	strb	r1, [r2, r3]
 8000c48:	4b13      	ldr	r3, [pc, #76]	; (8000c98 <uart_send+0x8c>)
 8000c4a:	681b      	ldr	r3, [r3, #0]
 8000c4c:	3301      	adds	r3, #1
 8000c4e:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000c52:	4b11      	ldr	r3, [pc, #68]	; (8000c98 <uart_send+0x8c>)
 8000c54:	601a      	str	r2, [r3, #0]
 8000c56:	4b10      	ldr	r3, [pc, #64]	; (8000c98 <uart_send+0x8c>)
 8000c58:	681a      	ldr	r2, [r3, #0]
 8000c5a:	4b10      	ldr	r3, [pc, #64]	; (8000c9c <uart_send+0x90>)
 8000c5c:	681b      	ldr	r3, [r3, #0]
 8000c5e:	429a      	cmp	r2, r3
 8000c60:	d103      	bne.n	8000c6a <uart_send+0x5e>
 8000c62:	68fb      	ldr	r3, [r7, #12]
 8000c64:	3301      	adds	r3, #1
 8000c66:	60fb      	str	r3, [r7, #12]
 8000c68:	e006      	b.n	8000c78 <uart_send+0x6c>
 8000c6a:	68fb      	ldr	r3, [r7, #12]
 8000c6c:	3301      	adds	r3, #1
 8000c6e:	60fb      	str	r3, [r7, #12]
 8000c70:	68fa      	ldr	r2, [r7, #12]
 8000c72:	683b      	ldr	r3, [r7, #0]
 8000c74:	429a      	cmp	r2, r3
 8000c76:	dbdf      	blt.n	8000c38 <uart_send+0x2c>
 8000c78:	4b09      	ldr	r3, [pc, #36]	; (8000ca0 <uart_send+0x94>)
 8000c7a:	4a09      	ldr	r2, [pc, #36]	; (8000ca0 <uart_send+0x94>)
 8000c7c:	8992      	ldrh	r2, [r2, #12]
 8000c7e:	b292      	uxth	r2, r2
 8000c80:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000c84:	b292      	uxth	r2, r2
 8000c86:	819a      	strh	r2, [r3, #12]
 8000c88:	68fb      	ldr	r3, [r7, #12]
 8000c8a:	4618      	mov	r0, r3
 8000c8c:	3714      	adds	r7, #20
 8000c8e:	46bd      	mov	sp, r7
 8000c90:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c94:	4770      	bx	lr
 8000c96:	bf00      	nop
 8000c98:	20000658 	.word	0x20000658
 8000c9c:	20000654 	.word	0x20000654
 8000ca0:	40004c00 	.word	0x40004c00
 8000ca4:	20000254 	.word	0x20000254

08000ca8 <uart_send_str>:
 8000ca8:	b480      	push	{r7}
 8000caa:	b085      	sub	sp, #20
 8000cac:	af00      	add	r7, sp, #0
 8000cae:	6078      	str	r0, [r7, #4]
 8000cb0:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000cb4:	60bb      	str	r3, [r7, #8]
 8000cb6:	4b25      	ldr	r3, [pc, #148]	; (8000d4c <uart_send_str+0xa4>)
 8000cb8:	681a      	ldr	r2, [r3, #0]
 8000cba:	4b25      	ldr	r3, [pc, #148]	; (8000d50 <uart_send_str+0xa8>)
 8000cbc:	681b      	ldr	r3, [r3, #0]
 8000cbe:	1ad3      	subs	r3, r2, r3
 8000cc0:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000cc4:	68ba      	ldr	r2, [r7, #8]
 8000cc6:	1ad3      	subs	r3, r2, r3
 8000cc8:	60bb      	str	r3, [r7, #8]
 8000cca:	4b20      	ldr	r3, [pc, #128]	; (8000d4c <uart_send_str+0xa4>)
 8000ccc:	681a      	ldr	r2, [r3, #0]
 8000cce:	4b20      	ldr	r3, [pc, #128]	; (8000d50 <uart_send_str+0xa8>)
 8000cd0:	681b      	ldr	r3, [r3, #0]
 8000cd2:	429a      	cmp	r2, r3
 8000cd4:	d107      	bne.n	8000ce6 <uart_send_str+0x3e>
 8000cd6:	4b1f      	ldr	r3, [pc, #124]	; (8000d54 <uart_send_str+0xac>)
 8000cd8:	4a1e      	ldr	r2, [pc, #120]	; (8000d54 <uart_send_str+0xac>)
 8000cda:	8992      	ldrh	r2, [r2, #12]
 8000cdc:	b292      	uxth	r2, r2
 8000cde:	f042 0208 	orr.w	r2, r2, #8
 8000ce2:	b292      	uxth	r2, r2
 8000ce4:	819a      	strh	r2, [r3, #12]
 8000ce6:	2300      	movs	r3, #0
 8000ce8:	60fb      	str	r3, [r7, #12]
 8000cea:	e01b      	b.n	8000d24 <uart_send_str+0x7c>
 8000cec:	68fb      	ldr	r3, [r7, #12]
 8000cee:	687a      	ldr	r2, [r7, #4]
 8000cf0:	4413      	add	r3, r2
 8000cf2:	781b      	ldrb	r3, [r3, #0]
 8000cf4:	2b00      	cmp	r3, #0
 8000cf6:	d103      	bne.n	8000d00 <uart_send_str+0x58>
 8000cf8:	68fb      	ldr	r3, [r7, #12]
 8000cfa:	3301      	adds	r3, #1
 8000cfc:	60fb      	str	r3, [r7, #12]
 8000cfe:	e015      	b.n	8000d2c <uart_send_str+0x84>
 8000d00:	4b12      	ldr	r3, [pc, #72]	; (8000d4c <uart_send_str+0xa4>)
 8000d02:	681b      	ldr	r3, [r3, #0]
 8000d04:	68fa      	ldr	r2, [r7, #12]
 8000d06:	6879      	ldr	r1, [r7, #4]
 8000d08:	440a      	add	r2, r1
 8000d0a:	7811      	ldrb	r1, [r2, #0]
 8000d0c:	4a12      	ldr	r2, [pc, #72]	; (8000d58 <uart_send_str+0xb0>)
 8000d0e:	54d1      	strb	r1, [r2, r3]
 8000d10:	4b0e      	ldr	r3, [pc, #56]	; (8000d4c <uart_send_str+0xa4>)
 8000d12:	681b      	ldr	r3, [r3, #0]
 8000d14:	3301      	adds	r3, #1
 8000d16:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000d1a:	4b0c      	ldr	r3, [pc, #48]	; (8000d4c <uart_send_str+0xa4>)
 8000d1c:	601a      	str	r2, [r3, #0]
 8000d1e:	68fb      	ldr	r3, [r7, #12]
 8000d20:	3301      	adds	r3, #1
 8000d22:	60fb      	str	r3, [r7, #12]
 8000d24:	68fa      	ldr	r2, [r7, #12]
 8000d26:	68bb      	ldr	r3, [r7, #8]
 8000d28:	429a      	cmp	r2, r3
 8000d2a:	dbdf      	blt.n	8000cec <uart_send_str+0x44>
 8000d2c:	4b09      	ldr	r3, [pc, #36]	; (8000d54 <uart_send_str+0xac>)
 8000d2e:	4a09      	ldr	r2, [pc, #36]	; (8000d54 <uart_send_str+0xac>)
 8000d30:	8992      	ldrh	r2, [r2, #12]
 8000d32:	b292      	uxth	r2, r2
 8000d34:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000d38:	b292      	uxth	r2, r2
 8000d3a:	819a      	strh	r2, [r3, #12]
 8000d3c:	68fb      	ldr	r3, [r7, #12]
 8000d3e:	4618      	mov	r0, r3
 8000d40:	3714      	adds	r7, #20
 8000d42:	46bd      	mov	sp, r7
 8000d44:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d48:	4770      	bx	lr
 8000d4a:	bf00      	nop
 8000d4c:	20000658 	.word	0x20000658
 8000d50:	20000654 	.word	0x20000654
 8000d54:	40004c00 	.word	0x40004c00
 8000d58:	20000254 	.word	0x20000254

08000d5c <uart_read>:
 8000d5c:	b480      	push	{r7}
 8000d5e:	b085      	sub	sp, #20
 8000d60:	af00      	add	r7, sp, #0
 8000d62:	6078      	str	r0, [r7, #4]
 8000d64:	6039      	str	r1, [r7, #0]
 8000d66:	4b19      	ldr	r3, [pc, #100]	; (8000dcc <uart_read+0x70>)
 8000d68:	681a      	ldr	r2, [r3, #0]
 8000d6a:	4b19      	ldr	r3, [pc, #100]	; (8000dd0 <uart_read+0x74>)
 8000d6c:	681b      	ldr	r3, [r3, #0]
 8000d6e:	429a      	cmp	r2, r3
 8000d70:	d101      	bne.n	8000d76 <uart_read+0x1a>
 8000d72:	2300      	movs	r3, #0
 8000d74:	e023      	b.n	8000dbe <uart_read+0x62>
 8000d76:	2300      	movs	r3, #0
 8000d78:	60fb      	str	r3, [r7, #12]
 8000d7a:	e01b      	b.n	8000db4 <uart_read+0x58>
 8000d7c:	68fb      	ldr	r3, [r7, #12]
 8000d7e:	687a      	ldr	r2, [r7, #4]
 8000d80:	4413      	add	r3, r2
 8000d82:	4a12      	ldr	r2, [pc, #72]	; (8000dcc <uart_read+0x70>)
 8000d84:	6812      	ldr	r2, [r2, #0]
 8000d86:	4913      	ldr	r1, [pc, #76]	; (8000dd4 <uart_read+0x78>)
 8000d88:	5c8a      	ldrb	r2, [r1, r2]
 8000d8a:	701a      	strb	r2, [r3, #0]
 8000d8c:	4b0f      	ldr	r3, [pc, #60]	; (8000dcc <uart_read+0x70>)
 8000d8e:	681b      	ldr	r3, [r3, #0]
 8000d90:	3301      	adds	r3, #1
 8000d92:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000d96:	4b0d      	ldr	r3, [pc, #52]	; (8000dcc <uart_read+0x70>)
 8000d98:	601a      	str	r2, [r3, #0]
 8000d9a:	4b0c      	ldr	r3, [pc, #48]	; (8000dcc <uart_read+0x70>)
 8000d9c:	681a      	ldr	r2, [r3, #0]
 8000d9e:	4b0c      	ldr	r3, [pc, #48]	; (8000dd0 <uart_read+0x74>)
 8000da0:	681b      	ldr	r3, [r3, #0]
 8000da2:	429a      	cmp	r2, r3
 8000da4:	d103      	bne.n	8000dae <uart_read+0x52>
 8000da6:	68fb      	ldr	r3, [r7, #12]
 8000da8:	3301      	adds	r3, #1
 8000daa:	60fb      	str	r3, [r7, #12]
 8000dac:	e006      	b.n	8000dbc <uart_read+0x60>
 8000dae:	68fb      	ldr	r3, [r7, #12]
 8000db0:	3301      	adds	r3, #1
 8000db2:	60fb      	str	r3, [r7, #12]
 8000db4:	68fa      	ldr	r2, [r7, #12]
 8000db6:	683b      	ldr	r3, [r7, #0]
 8000db8:	429a      	cmp	r2, r3
 8000dba:	dbdf      	blt.n	8000d7c <uart_read+0x20>
 8000dbc:	68fb      	ldr	r3, [r7, #12]
 8000dbe:	4618      	mov	r0, r3
 8000dc0:	3714      	adds	r7, #20
 8000dc2:	46bd      	mov	sp, r7
 8000dc4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dc8:	4770      	bx	lr
 8000dca:	bf00      	nop
 8000dcc:	20000a60 	.word	0x20000a60
 8000dd0:	20000a5c 	.word	0x20000a5c
 8000dd4:	2000065c 	.word	0x2000065c

08000dd8 <UART4_IRQHandler>:
 8000dd8:	b480      	push	{r7}
 8000dda:	af00      	add	r7, sp, #0
 8000ddc:	4b1e      	ldr	r3, [pc, #120]	; (8000e58 <UART4_IRQHandler+0x80>)
 8000dde:	881b      	ldrh	r3, [r3, #0]
 8000de0:	b29b      	uxth	r3, r3
 8000de2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000de6:	2b00      	cmp	r3, #0
 8000de8:	d01b      	beq.n	8000e22 <UART4_IRQHandler+0x4a>
 8000dea:	4b1c      	ldr	r3, [pc, #112]	; (8000e5c <UART4_IRQHandler+0x84>)
 8000dec:	681a      	ldr	r2, [r3, #0]
 8000dee:	4b1c      	ldr	r3, [pc, #112]	; (8000e60 <UART4_IRQHandler+0x88>)
 8000df0:	681b      	ldr	r3, [r3, #0]
 8000df2:	429a      	cmp	r2, r3
 8000df4:	d108      	bne.n	8000e08 <UART4_IRQHandler+0x30>
 8000df6:	4b18      	ldr	r3, [pc, #96]	; (8000e58 <UART4_IRQHandler+0x80>)
 8000df8:	4a17      	ldr	r2, [pc, #92]	; (8000e58 <UART4_IRQHandler+0x80>)
 8000dfa:	8992      	ldrh	r2, [r2, #12]
 8000dfc:	b292      	uxth	r2, r2
 8000dfe:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8000e02:	b292      	uxth	r2, r2
 8000e04:	819a      	strh	r2, [r3, #12]
 8000e06:	e00c      	b.n	8000e22 <UART4_IRQHandler+0x4a>
 8000e08:	4b13      	ldr	r3, [pc, #76]	; (8000e58 <UART4_IRQHandler+0x80>)
 8000e0a:	4a14      	ldr	r2, [pc, #80]	; (8000e5c <UART4_IRQHandler+0x84>)
 8000e0c:	6812      	ldr	r2, [r2, #0]
 8000e0e:	4915      	ldr	r1, [pc, #84]	; (8000e64 <UART4_IRQHandler+0x8c>)
 8000e10:	5c8a      	ldrb	r2, [r1, r2]
 8000e12:	809a      	strh	r2, [r3, #4]
 8000e14:	4b11      	ldr	r3, [pc, #68]	; (8000e5c <UART4_IRQHandler+0x84>)
 8000e16:	681b      	ldr	r3, [r3, #0]
 8000e18:	3301      	adds	r3, #1
 8000e1a:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000e1e:	4b0f      	ldr	r3, [pc, #60]	; (8000e5c <UART4_IRQHandler+0x84>)
 8000e20:	601a      	str	r2, [r3, #0]
 8000e22:	4b0d      	ldr	r3, [pc, #52]	; (8000e58 <UART4_IRQHandler+0x80>)
 8000e24:	881b      	ldrh	r3, [r3, #0]
 8000e26:	b29b      	uxth	r3, r3
 8000e28:	f003 0320 	and.w	r3, r3, #32
 8000e2c:	2b00      	cmp	r3, #0
 8000e2e:	d00e      	beq.n	8000e4e <UART4_IRQHandler+0x76>
 8000e30:	4b0d      	ldr	r3, [pc, #52]	; (8000e68 <UART4_IRQHandler+0x90>)
 8000e32:	681b      	ldr	r3, [r3, #0]
 8000e34:	4a08      	ldr	r2, [pc, #32]	; (8000e58 <UART4_IRQHandler+0x80>)
 8000e36:	8892      	ldrh	r2, [r2, #4]
 8000e38:	b292      	uxth	r2, r2
 8000e3a:	b2d1      	uxtb	r1, r2
 8000e3c:	4a0b      	ldr	r2, [pc, #44]	; (8000e6c <UART4_IRQHandler+0x94>)
 8000e3e:	54d1      	strb	r1, [r2, r3]
 8000e40:	4b09      	ldr	r3, [pc, #36]	; (8000e68 <UART4_IRQHandler+0x90>)
 8000e42:	681b      	ldr	r3, [r3, #0]
 8000e44:	3301      	adds	r3, #1
 8000e46:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000e4a:	4b07      	ldr	r3, [pc, #28]	; (8000e68 <UART4_IRQHandler+0x90>)
 8000e4c:	601a      	str	r2, [r3, #0]
 8000e4e:	46bd      	mov	sp, r7
 8000e50:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e54:	4770      	bx	lr
 8000e56:	bf00      	nop
 8000e58:	40004c00 	.word	0x40004c00
 8000e5c:	20000654 	.word	0x20000654
 8000e60:	20000658 	.word	0x20000658
 8000e64:	20000254 	.word	0x20000254
 8000e68:	20000a5c 	.word	0x20000a5c
 8000e6c:	2000065c 	.word	0x2000065c

08000e70 <xputc>:
 8000e70:	b580      	push	{r7, lr}
 8000e72:	b082      	sub	sp, #8
 8000e74:	af00      	add	r7, sp, #0
 8000e76:	4603      	mov	r3, r0
 8000e78:	71fb      	strb	r3, [r7, #7]
 8000e7a:	79fb      	ldrb	r3, [r7, #7]
 8000e7c:	2b0a      	cmp	r3, #10
 8000e7e:	d102      	bne.n	8000e86 <xputc+0x16>
 8000e80:	200d      	movs	r0, #13
 8000e82:	f7ff fff5 	bl	8000e70 <xputc>
 8000e86:	4b0c      	ldr	r3, [pc, #48]	; (8000eb8 <xputc+0x48>)
 8000e88:	681b      	ldr	r3, [r3, #0]
 8000e8a:	2b00      	cmp	r3, #0
 8000e8c:	d007      	beq.n	8000e9e <xputc+0x2e>
 8000e8e:	4b0a      	ldr	r3, [pc, #40]	; (8000eb8 <xputc+0x48>)
 8000e90:	681b      	ldr	r3, [r3, #0]
 8000e92:	1c59      	adds	r1, r3, #1
 8000e94:	4a08      	ldr	r2, [pc, #32]	; (8000eb8 <xputc+0x48>)
 8000e96:	6011      	str	r1, [r2, #0]
 8000e98:	79fa      	ldrb	r2, [r7, #7]
 8000e9a:	701a      	strb	r2, [r3, #0]
 8000e9c:	e008      	b.n	8000eb0 <xputc+0x40>
 8000e9e:	4b07      	ldr	r3, [pc, #28]	; (8000ebc <xputc+0x4c>)
 8000ea0:	681b      	ldr	r3, [r3, #0]
 8000ea2:	2b00      	cmp	r3, #0
 8000ea4:	d004      	beq.n	8000eb0 <xputc+0x40>
 8000ea6:	4b05      	ldr	r3, [pc, #20]	; (8000ebc <xputc+0x4c>)
 8000ea8:	681b      	ldr	r3, [r3, #0]
 8000eaa:	79fa      	ldrb	r2, [r7, #7]
 8000eac:	4610      	mov	r0, r2
 8000eae:	4798      	blx	r3
 8000eb0:	3708      	adds	r7, #8
 8000eb2:	46bd      	mov	sp, r7
 8000eb4:	bd80      	pop	{r7, pc}
 8000eb6:	bf00      	nop
 8000eb8:	20000a68 	.word	0x20000a68
 8000ebc:	20000a64 	.word	0x20000a64

08000ec0 <xputs>:
 8000ec0:	b580      	push	{r7, lr}
 8000ec2:	b082      	sub	sp, #8
 8000ec4:	af00      	add	r7, sp, #0
 8000ec6:	6078      	str	r0, [r7, #4]
 8000ec8:	e006      	b.n	8000ed8 <xputs+0x18>
 8000eca:	687b      	ldr	r3, [r7, #4]
 8000ecc:	1c5a      	adds	r2, r3, #1
 8000ece:	607a      	str	r2, [r7, #4]
 8000ed0:	781b      	ldrb	r3, [r3, #0]
 8000ed2:	4618      	mov	r0, r3
 8000ed4:	f7ff ffcc 	bl	8000e70 <xputc>
 8000ed8:	687b      	ldr	r3, [r7, #4]
 8000eda:	781b      	ldrb	r3, [r3, #0]
 8000edc:	2b00      	cmp	r3, #0
 8000ede:	d1f4      	bne.n	8000eca <xputs+0xa>
 8000ee0:	3708      	adds	r7, #8
 8000ee2:	46bd      	mov	sp, r7
 8000ee4:	bd80      	pop	{r7, pc}
 8000ee6:	bf00      	nop

08000ee8 <xfputs>:
 8000ee8:	b580      	push	{r7, lr}
 8000eea:	b084      	sub	sp, #16
 8000eec:	af00      	add	r7, sp, #0
 8000eee:	6078      	str	r0, [r7, #4]
 8000ef0:	6039      	str	r1, [r7, #0]
 8000ef2:	4b0c      	ldr	r3, [pc, #48]	; (8000f24 <xfputs+0x3c>)
 8000ef4:	681b      	ldr	r3, [r3, #0]
 8000ef6:	60fb      	str	r3, [r7, #12]
 8000ef8:	4b0a      	ldr	r3, [pc, #40]	; (8000f24 <xfputs+0x3c>)
 8000efa:	687a      	ldr	r2, [r7, #4]
 8000efc:	601a      	str	r2, [r3, #0]
 8000efe:	e006      	b.n	8000f0e <xfputs+0x26>
 8000f00:	683b      	ldr	r3, [r7, #0]
 8000f02:	1c5a      	adds	r2, r3, #1
 8000f04:	603a      	str	r2, [r7, #0]
 8000f06:	781b      	ldrb	r3, [r3, #0]
 8000f08:	4618      	mov	r0, r3
 8000f0a:	f7ff ffb1 	bl	8000e70 <xputc>
 8000f0e:	683b      	ldr	r3, [r7, #0]
 8000f10:	781b      	ldrb	r3, [r3, #0]
 8000f12:	2b00      	cmp	r3, #0
 8000f14:	d1f4      	bne.n	8000f00 <xfputs+0x18>
 8000f16:	4b03      	ldr	r3, [pc, #12]	; (8000f24 <xfputs+0x3c>)
 8000f18:	68fa      	ldr	r2, [r7, #12]
 8000f1a:	601a      	str	r2, [r3, #0]
 8000f1c:	3710      	adds	r7, #16
 8000f1e:	46bd      	mov	sp, r7
 8000f20:	bd80      	pop	{r7, pc}
 8000f22:	bf00      	nop
 8000f24:	20000a64 	.word	0x20000a64

08000f28 <xvprintf>:
 8000f28:	b580      	push	{r7, lr}
 8000f2a:	b08e      	sub	sp, #56	; 0x38
 8000f2c:	af00      	add	r7, sp, #0
 8000f2e:	6078      	str	r0, [r7, #4]
 8000f30:	6039      	str	r1, [r7, #0]
 8000f32:	687b      	ldr	r3, [r7, #4]
 8000f34:	1c5a      	adds	r2, r3, #1
 8000f36:	607a      	str	r2, [r7, #4]
 8000f38:	781b      	ldrb	r3, [r3, #0]
 8000f3a:	77fb      	strb	r3, [r7, #31]
 8000f3c:	7ffb      	ldrb	r3, [r7, #31]
 8000f3e:	2b00      	cmp	r3, #0
 8000f40:	d100      	bne.n	8000f44 <xvprintf+0x1c>
 8000f42:	e166      	b.n	8001212 <xvprintf+0x2ea>
 8000f44:	7ffb      	ldrb	r3, [r7, #31]
 8000f46:	2b25      	cmp	r3, #37	; 0x25
 8000f48:	d004      	beq.n	8000f54 <xvprintf+0x2c>
 8000f4a:	7ffb      	ldrb	r3, [r7, #31]
 8000f4c:	4618      	mov	r0, r3
 8000f4e:	f7ff ff8f 	bl	8000e70 <xputc>
 8000f52:	e15d      	b.n	8001210 <xvprintf+0x2e8>
 8000f54:	2300      	movs	r3, #0
 8000f56:	627b      	str	r3, [r7, #36]	; 0x24
 8000f58:	687b      	ldr	r3, [r7, #4]
 8000f5a:	1c5a      	adds	r2, r3, #1
 8000f5c:	607a      	str	r2, [r7, #4]
 8000f5e:	781b      	ldrb	r3, [r3, #0]
 8000f60:	77fb      	strb	r3, [r7, #31]
 8000f62:	7ffb      	ldrb	r3, [r7, #31]
 8000f64:	2b30      	cmp	r3, #48	; 0x30
 8000f66:	d107      	bne.n	8000f78 <xvprintf+0x50>
 8000f68:	2301      	movs	r3, #1
 8000f6a:	627b      	str	r3, [r7, #36]	; 0x24
 8000f6c:	687b      	ldr	r3, [r7, #4]
 8000f6e:	1c5a      	adds	r2, r3, #1
 8000f70:	607a      	str	r2, [r7, #4]
 8000f72:	781b      	ldrb	r3, [r3, #0]
 8000f74:	77fb      	strb	r3, [r7, #31]
 8000f76:	e009      	b.n	8000f8c <xvprintf+0x64>
 8000f78:	7ffb      	ldrb	r3, [r7, #31]
 8000f7a:	2b2d      	cmp	r3, #45	; 0x2d
 8000f7c:	d106      	bne.n	8000f8c <xvprintf+0x64>
 8000f7e:	2302      	movs	r3, #2
 8000f80:	627b      	str	r3, [r7, #36]	; 0x24
 8000f82:	687b      	ldr	r3, [r7, #4]
 8000f84:	1c5a      	adds	r2, r3, #1
 8000f86:	607a      	str	r2, [r7, #4]
 8000f88:	781b      	ldrb	r3, [r3, #0]
 8000f8a:	77fb      	strb	r3, [r7, #31]
 8000f8c:	2300      	movs	r3, #0
 8000f8e:	62bb      	str	r3, [r7, #40]	; 0x28
 8000f90:	e00e      	b.n	8000fb0 <xvprintf+0x88>
 8000f92:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000f94:	4613      	mov	r3, r2
 8000f96:	009b      	lsls	r3, r3, #2
 8000f98:	4413      	add	r3, r2
 8000f9a:	005b      	lsls	r3, r3, #1
 8000f9c:	461a      	mov	r2, r3
 8000f9e:	7ffb      	ldrb	r3, [r7, #31]
 8000fa0:	4413      	add	r3, r2
 8000fa2:	3b30      	subs	r3, #48	; 0x30
 8000fa4:	62bb      	str	r3, [r7, #40]	; 0x28
 8000fa6:	687b      	ldr	r3, [r7, #4]
 8000fa8:	1c5a      	adds	r2, r3, #1
 8000faa:	607a      	str	r2, [r7, #4]
 8000fac:	781b      	ldrb	r3, [r3, #0]
 8000fae:	77fb      	strb	r3, [r7, #31]
 8000fb0:	7ffb      	ldrb	r3, [r7, #31]
 8000fb2:	2b2f      	cmp	r3, #47	; 0x2f
 8000fb4:	d902      	bls.n	8000fbc <xvprintf+0x94>
 8000fb6:	7ffb      	ldrb	r3, [r7, #31]
 8000fb8:	2b39      	cmp	r3, #57	; 0x39
 8000fba:	d9ea      	bls.n	8000f92 <xvprintf+0x6a>
 8000fbc:	7ffb      	ldrb	r3, [r7, #31]
 8000fbe:	2b6c      	cmp	r3, #108	; 0x6c
 8000fc0:	d002      	beq.n	8000fc8 <xvprintf+0xa0>
 8000fc2:	7ffb      	ldrb	r3, [r7, #31]
 8000fc4:	2b4c      	cmp	r3, #76	; 0x4c
 8000fc6:	d108      	bne.n	8000fda <xvprintf+0xb2>
 8000fc8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000fca:	f043 0304 	orr.w	r3, r3, #4
 8000fce:	627b      	str	r3, [r7, #36]	; 0x24
 8000fd0:	687b      	ldr	r3, [r7, #4]
 8000fd2:	1c5a      	adds	r2, r3, #1
 8000fd4:	607a      	str	r2, [r7, #4]
 8000fd6:	781b      	ldrb	r3, [r3, #0]
 8000fd8:	77fb      	strb	r3, [r7, #31]
 8000fda:	7ffb      	ldrb	r3, [r7, #31]
 8000fdc:	2b00      	cmp	r3, #0
 8000fde:	d100      	bne.n	8000fe2 <xvprintf+0xba>
 8000fe0:	e117      	b.n	8001212 <xvprintf+0x2ea>
 8000fe2:	7ffb      	ldrb	r3, [r7, #31]
 8000fe4:	77bb      	strb	r3, [r7, #30]
 8000fe6:	7fbb      	ldrb	r3, [r7, #30]
 8000fe8:	2b60      	cmp	r3, #96	; 0x60
 8000fea:	d902      	bls.n	8000ff2 <xvprintf+0xca>
 8000fec:	7fbb      	ldrb	r3, [r7, #30]
 8000fee:	3b20      	subs	r3, #32
 8000ff0:	77bb      	strb	r3, [r7, #30]
 8000ff2:	7fbb      	ldrb	r3, [r7, #30]
 8000ff4:	3b42      	subs	r3, #66	; 0x42
 8000ff6:	2b16      	cmp	r3, #22
 8000ff8:	d873      	bhi.n	80010e2 <xvprintf+0x1ba>
 8000ffa:	a101      	add	r1, pc, #4	; (adr r1, 8001000 <xvprintf+0xd8>)
 8000ffc:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 8001000:	080010cb 	.word	0x080010cb
 8001004:	080010b9 	.word	0x080010b9
 8001008:	080010d7 	.word	0x080010d7
 800100c:	080010e3 	.word	0x080010e3
 8001010:	080010e3 	.word	0x080010e3
 8001014:	080010e3 	.word	0x080010e3
 8001018:	080010e3 	.word	0x080010e3
 800101c:	080010e3 	.word	0x080010e3
 8001020:	080010e3 	.word	0x080010e3
 8001024:	080010e3 	.word	0x080010e3
 8001028:	080010e3 	.word	0x080010e3
 800102c:	080010e3 	.word	0x080010e3
 8001030:	080010e3 	.word	0x080010e3
 8001034:	080010d1 	.word	0x080010d1
 8001038:	080010e3 	.word	0x080010e3
 800103c:	080010e3 	.word	0x080010e3
 8001040:	080010e3 	.word	0x080010e3
 8001044:	0800105d 	.word	0x0800105d
 8001048:	080010e3 	.word	0x080010e3
 800104c:	080010d7 	.word	0x080010d7
 8001050:	080010e3 	.word	0x080010e3
 8001054:	080010e3 	.word	0x080010e3
 8001058:	080010dd 	.word	0x080010dd
 800105c:	683b      	ldr	r3, [r7, #0]
 800105e:	1d1a      	adds	r2, r3, #4
 8001060:	603a      	str	r2, [r7, #0]
 8001062:	681b      	ldr	r3, [r3, #0]
 8001064:	61bb      	str	r3, [r7, #24]
 8001066:	2300      	movs	r3, #0
 8001068:	62fb      	str	r3, [r7, #44]	; 0x2c
 800106a:	e002      	b.n	8001072 <xvprintf+0x14a>
 800106c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800106e:	3301      	adds	r3, #1
 8001070:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001072:	69ba      	ldr	r2, [r7, #24]
 8001074:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001076:	4413      	add	r3, r2
 8001078:	781b      	ldrb	r3, [r3, #0]
 800107a:	2b00      	cmp	r3, #0
 800107c:	d1f6      	bne.n	800106c <xvprintf+0x144>
 800107e:	e002      	b.n	8001086 <xvprintf+0x15e>
 8001080:	2020      	movs	r0, #32
 8001082:	f7ff fef5 	bl	8000e70 <xputc>
 8001086:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001088:	f003 0302 	and.w	r3, r3, #2
 800108c:	2b00      	cmp	r3, #0
 800108e:	d105      	bne.n	800109c <xvprintf+0x174>
 8001090:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001092:	1c5a      	adds	r2, r3, #1
 8001094:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001096:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001098:	4293      	cmp	r3, r2
 800109a:	d3f1      	bcc.n	8001080 <xvprintf+0x158>
 800109c:	69b8      	ldr	r0, [r7, #24]
 800109e:	f7ff ff0f 	bl	8000ec0 <xputs>
 80010a2:	e002      	b.n	80010aa <xvprintf+0x182>
 80010a4:	2020      	movs	r0, #32
 80010a6:	f7ff fee3 	bl	8000e70 <xputc>
 80010aa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80010ac:	1c5a      	adds	r2, r3, #1
 80010ae:	62fa      	str	r2, [r7, #44]	; 0x2c
 80010b0:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80010b2:	4293      	cmp	r3, r2
 80010b4:	d3f6      	bcc.n	80010a4 <xvprintf+0x17c>
 80010b6:	e0ab      	b.n	8001210 <xvprintf+0x2e8>
 80010b8:	683b      	ldr	r3, [r7, #0]
 80010ba:	1d1a      	adds	r2, r3, #4
 80010bc:	603a      	str	r2, [r7, #0]
 80010be:	681b      	ldr	r3, [r3, #0]
 80010c0:	b2db      	uxtb	r3, r3
 80010c2:	4618      	mov	r0, r3
 80010c4:	f7ff fed4 	bl	8000e70 <xputc>
 80010c8:	e0a2      	b.n	8001210 <xvprintf+0x2e8>
 80010ca:	2302      	movs	r3, #2
 80010cc:	637b      	str	r3, [r7, #52]	; 0x34
 80010ce:	e00d      	b.n	80010ec <xvprintf+0x1c4>
 80010d0:	2308      	movs	r3, #8
 80010d2:	637b      	str	r3, [r7, #52]	; 0x34
 80010d4:	e00a      	b.n	80010ec <xvprintf+0x1c4>
 80010d6:	230a      	movs	r3, #10
 80010d8:	637b      	str	r3, [r7, #52]	; 0x34
 80010da:	e007      	b.n	80010ec <xvprintf+0x1c4>
 80010dc:	2310      	movs	r3, #16
 80010de:	637b      	str	r3, [r7, #52]	; 0x34
 80010e0:	e004      	b.n	80010ec <xvprintf+0x1c4>
 80010e2:	7ffb      	ldrb	r3, [r7, #31]
 80010e4:	4618      	mov	r0, r3
 80010e6:	f7ff fec3 	bl	8000e70 <xputc>
 80010ea:	e091      	b.n	8001210 <xvprintf+0x2e8>
 80010ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80010ee:	f003 0304 	and.w	r3, r3, #4
 80010f2:	2b00      	cmp	r3, #0
 80010f4:	d004      	beq.n	8001100 <xvprintf+0x1d8>
 80010f6:	683b      	ldr	r3, [r7, #0]
 80010f8:	1d1a      	adds	r2, r3, #4
 80010fa:	603a      	str	r2, [r7, #0]
 80010fc:	681b      	ldr	r3, [r3, #0]
 80010fe:	e00b      	b.n	8001118 <xvprintf+0x1f0>
 8001100:	7fbb      	ldrb	r3, [r7, #30]
 8001102:	2b44      	cmp	r3, #68	; 0x44
 8001104:	d104      	bne.n	8001110 <xvprintf+0x1e8>
 8001106:	683b      	ldr	r3, [r7, #0]
 8001108:	1d1a      	adds	r2, r3, #4
 800110a:	603a      	str	r2, [r7, #0]
 800110c:	681b      	ldr	r3, [r3, #0]
 800110e:	e003      	b.n	8001118 <xvprintf+0x1f0>
 8001110:	683b      	ldr	r3, [r7, #0]
 8001112:	1d1a      	adds	r2, r3, #4
 8001114:	603a      	str	r2, [r7, #0]
 8001116:	681b      	ldr	r3, [r3, #0]
 8001118:	623b      	str	r3, [r7, #32]
 800111a:	7fbb      	ldrb	r3, [r7, #30]
 800111c:	2b44      	cmp	r3, #68	; 0x44
 800111e:	d109      	bne.n	8001134 <xvprintf+0x20c>
 8001120:	6a3b      	ldr	r3, [r7, #32]
 8001122:	2b00      	cmp	r3, #0
 8001124:	da06      	bge.n	8001134 <xvprintf+0x20c>
 8001126:	6a3b      	ldr	r3, [r7, #32]
 8001128:	425b      	negs	r3, r3
 800112a:	623b      	str	r3, [r7, #32]
 800112c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800112e:	f043 0308 	orr.w	r3, r3, #8
 8001132:	627b      	str	r3, [r7, #36]	; 0x24
 8001134:	2300      	movs	r3, #0
 8001136:	633b      	str	r3, [r7, #48]	; 0x30
 8001138:	6a3b      	ldr	r3, [r7, #32]
 800113a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800113c:	fbb3 f2f2 	udiv	r2, r3, r2
 8001140:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8001142:	fb01 f202 	mul.w	r2, r1, r2
 8001146:	1a9b      	subs	r3, r3, r2
 8001148:	77bb      	strb	r3, [r7, #30]
 800114a:	6a3a      	ldr	r2, [r7, #32]
 800114c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800114e:	fbb2 f3f3 	udiv	r3, r2, r3
 8001152:	623b      	str	r3, [r7, #32]
 8001154:	7fbb      	ldrb	r3, [r7, #30]
 8001156:	2b09      	cmp	r3, #9
 8001158:	d908      	bls.n	800116c <xvprintf+0x244>
 800115a:	7ffb      	ldrb	r3, [r7, #31]
 800115c:	2b78      	cmp	r3, #120	; 0x78
 800115e:	d101      	bne.n	8001164 <xvprintf+0x23c>
 8001160:	2327      	movs	r3, #39	; 0x27
 8001162:	e000      	b.n	8001166 <xvprintf+0x23e>
 8001164:	2307      	movs	r3, #7
 8001166:	7fba      	ldrb	r2, [r7, #30]
 8001168:	4413      	add	r3, r2
 800116a:	77bb      	strb	r3, [r7, #30]
 800116c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800116e:	1c5a      	adds	r2, r3, #1
 8001170:	633a      	str	r2, [r7, #48]	; 0x30
 8001172:	7fba      	ldrb	r2, [r7, #30]
 8001174:	3230      	adds	r2, #48	; 0x30
 8001176:	b2d2      	uxtb	r2, r2
 8001178:	f107 0138 	add.w	r1, r7, #56	; 0x38
 800117c:	440b      	add	r3, r1
 800117e:	f803 2c30 	strb.w	r2, [r3, #-48]
 8001182:	6a3b      	ldr	r3, [r7, #32]
 8001184:	2b00      	cmp	r3, #0
 8001186:	d002      	beq.n	800118e <xvprintf+0x266>
 8001188:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800118a:	2b0f      	cmp	r3, #15
 800118c:	d9d4      	bls.n	8001138 <xvprintf+0x210>
 800118e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001190:	f003 0308 	and.w	r3, r3, #8
 8001194:	2b00      	cmp	r3, #0
 8001196:	d008      	beq.n	80011aa <xvprintf+0x282>
 8001198:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800119a:	1c5a      	adds	r2, r3, #1
 800119c:	633a      	str	r2, [r7, #48]	; 0x30
 800119e:	f107 0238 	add.w	r2, r7, #56	; 0x38
 80011a2:	4413      	add	r3, r2
 80011a4:	222d      	movs	r2, #45	; 0x2d
 80011a6:	f803 2c30 	strb.w	r2, [r3, #-48]
 80011aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80011ac:	62fb      	str	r3, [r7, #44]	; 0x2c
 80011ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80011b0:	f003 0301 	and.w	r3, r3, #1
 80011b4:	2b00      	cmp	r3, #0
 80011b6:	d001      	beq.n	80011bc <xvprintf+0x294>
 80011b8:	2330      	movs	r3, #48	; 0x30
 80011ba:	e000      	b.n	80011be <xvprintf+0x296>
 80011bc:	2320      	movs	r3, #32
 80011be:	77bb      	strb	r3, [r7, #30]
 80011c0:	e003      	b.n	80011ca <xvprintf+0x2a2>
 80011c2:	7fbb      	ldrb	r3, [r7, #30]
 80011c4:	4618      	mov	r0, r3
 80011c6:	f7ff fe53 	bl	8000e70 <xputc>
 80011ca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80011cc:	f003 0302 	and.w	r3, r3, #2
 80011d0:	2b00      	cmp	r3, #0
 80011d2:	d105      	bne.n	80011e0 <xvprintf+0x2b8>
 80011d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80011d6:	1c5a      	adds	r2, r3, #1
 80011d8:	62fa      	str	r2, [r7, #44]	; 0x2c
 80011da:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80011dc:	4293      	cmp	r3, r2
 80011de:	d3f0      	bcc.n	80011c2 <xvprintf+0x29a>
 80011e0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80011e2:	3b01      	subs	r3, #1
 80011e4:	633b      	str	r3, [r7, #48]	; 0x30
 80011e6:	f107 0208 	add.w	r2, r7, #8
 80011ea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80011ec:	4413      	add	r3, r2
 80011ee:	781b      	ldrb	r3, [r3, #0]
 80011f0:	4618      	mov	r0, r3
 80011f2:	f7ff fe3d 	bl	8000e70 <xputc>
 80011f6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80011f8:	2b00      	cmp	r3, #0
 80011fa:	d1f1      	bne.n	80011e0 <xvprintf+0x2b8>
 80011fc:	e002      	b.n	8001204 <xvprintf+0x2dc>
 80011fe:	2020      	movs	r0, #32
 8001200:	f7ff fe36 	bl	8000e70 <xputc>
 8001204:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001206:	1c5a      	adds	r2, r3, #1
 8001208:	62fa      	str	r2, [r7, #44]	; 0x2c
 800120a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800120c:	4293      	cmp	r3, r2
 800120e:	d3f6      	bcc.n	80011fe <xvprintf+0x2d6>
 8001210:	e68f      	b.n	8000f32 <xvprintf+0xa>
 8001212:	3738      	adds	r7, #56	; 0x38
 8001214:	46bd      	mov	sp, r7
 8001216:	bd80      	pop	{r7, pc}

08001218 <xprintf>:
 8001218:	b40f      	push	{r0, r1, r2, r3}
 800121a:	b580      	push	{r7, lr}
 800121c:	b082      	sub	sp, #8
 800121e:	af00      	add	r7, sp, #0
 8001220:	f107 0314 	add.w	r3, r7, #20
 8001224:	607b      	str	r3, [r7, #4]
 8001226:	6938      	ldr	r0, [r7, #16]
 8001228:	6879      	ldr	r1, [r7, #4]
 800122a:	f7ff fe7d 	bl	8000f28 <xvprintf>
 800122e:	3708      	adds	r7, #8
 8001230:	46bd      	mov	sp, r7
 8001232:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001236:	b004      	add	sp, #16
 8001238:	4770      	bx	lr
 800123a:	bf00      	nop

0800123c <xsprintf>:
 800123c:	b40e      	push	{r1, r2, r3}
 800123e:	b580      	push	{r7, lr}
 8001240:	b085      	sub	sp, #20
 8001242:	af00      	add	r7, sp, #0
 8001244:	6078      	str	r0, [r7, #4]
 8001246:	4b0b      	ldr	r3, [pc, #44]	; (8001274 <xsprintf+0x38>)
 8001248:	687a      	ldr	r2, [r7, #4]
 800124a:	601a      	str	r2, [r3, #0]
 800124c:	f107 0320 	add.w	r3, r7, #32
 8001250:	60fb      	str	r3, [r7, #12]
 8001252:	69f8      	ldr	r0, [r7, #28]
 8001254:	68f9      	ldr	r1, [r7, #12]
 8001256:	f7ff fe67 	bl	8000f28 <xvprintf>
 800125a:	4b06      	ldr	r3, [pc, #24]	; (8001274 <xsprintf+0x38>)
 800125c:	681b      	ldr	r3, [r3, #0]
 800125e:	2200      	movs	r2, #0
 8001260:	701a      	strb	r2, [r3, #0]
 8001262:	4b04      	ldr	r3, [pc, #16]	; (8001274 <xsprintf+0x38>)
 8001264:	2200      	movs	r2, #0
 8001266:	601a      	str	r2, [r3, #0]
 8001268:	3714      	adds	r7, #20
 800126a:	46bd      	mov	sp, r7
 800126c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001270:	b003      	add	sp, #12
 8001272:	4770      	bx	lr
 8001274:	20000a68 	.word	0x20000a68

08001278 <xfprintf>:
 8001278:	b40e      	push	{r1, r2, r3}
 800127a:	b580      	push	{r7, lr}
 800127c:	b085      	sub	sp, #20
 800127e:	af00      	add	r7, sp, #0
 8001280:	6078      	str	r0, [r7, #4]
 8001282:	4b0b      	ldr	r3, [pc, #44]	; (80012b0 <xfprintf+0x38>)
 8001284:	681b      	ldr	r3, [r3, #0]
 8001286:	60fb      	str	r3, [r7, #12]
 8001288:	4b09      	ldr	r3, [pc, #36]	; (80012b0 <xfprintf+0x38>)
 800128a:	687a      	ldr	r2, [r7, #4]
 800128c:	601a      	str	r2, [r3, #0]
 800128e:	f107 0320 	add.w	r3, r7, #32
 8001292:	60bb      	str	r3, [r7, #8]
 8001294:	69f8      	ldr	r0, [r7, #28]
 8001296:	68b9      	ldr	r1, [r7, #8]
 8001298:	f7ff fe46 	bl	8000f28 <xvprintf>
 800129c:	4b04      	ldr	r3, [pc, #16]	; (80012b0 <xfprintf+0x38>)
 800129e:	68fa      	ldr	r2, [r7, #12]
 80012a0:	601a      	str	r2, [r3, #0]
 80012a2:	3714      	adds	r7, #20
 80012a4:	46bd      	mov	sp, r7
 80012a6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80012aa:	b003      	add	sp, #12
 80012ac:	4770      	bx	lr
 80012ae:	bf00      	nop
 80012b0:	20000a64 	.word	0x20000a64

080012b4 <put_dump>:
 80012b4:	b580      	push	{r7, lr}
 80012b6:	b088      	sub	sp, #32
 80012b8:	af00      	add	r7, sp, #0
 80012ba:	60f8      	str	r0, [r7, #12]
 80012bc:	60b9      	str	r1, [r7, #8]
 80012be:	607a      	str	r2, [r7, #4]
 80012c0:	603b      	str	r3, [r7, #0]
 80012c2:	4835      	ldr	r0, [pc, #212]	; (8001398 <put_dump+0xe4>)
 80012c4:	68b9      	ldr	r1, [r7, #8]
 80012c6:	f7ff ffa7 	bl	8001218 <xprintf>
 80012ca:	683b      	ldr	r3, [r7, #0]
 80012cc:	2b02      	cmp	r3, #2
 80012ce:	d03a      	beq.n	8001346 <put_dump+0x92>
 80012d0:	2b04      	cmp	r3, #4
 80012d2:	d049      	beq.n	8001368 <put_dump+0xb4>
 80012d4:	2b01      	cmp	r3, #1
 80012d6:	d158      	bne.n	800138a <put_dump+0xd6>
 80012d8:	68fb      	ldr	r3, [r7, #12]
 80012da:	613b      	str	r3, [r7, #16]
 80012dc:	2300      	movs	r3, #0
 80012de:	61fb      	str	r3, [r7, #28]
 80012e0:	e00a      	b.n	80012f8 <put_dump+0x44>
 80012e2:	69fb      	ldr	r3, [r7, #28]
 80012e4:	693a      	ldr	r2, [r7, #16]
 80012e6:	4413      	add	r3, r2
 80012e8:	781b      	ldrb	r3, [r3, #0]
 80012ea:	482c      	ldr	r0, [pc, #176]	; (800139c <put_dump+0xe8>)
 80012ec:	4619      	mov	r1, r3
 80012ee:	f7ff ff93 	bl	8001218 <xprintf>
 80012f2:	69fb      	ldr	r3, [r7, #28]
 80012f4:	3301      	adds	r3, #1
 80012f6:	61fb      	str	r3, [r7, #28]
 80012f8:	69fa      	ldr	r2, [r7, #28]
 80012fa:	687b      	ldr	r3, [r7, #4]
 80012fc:	429a      	cmp	r2, r3
 80012fe:	dbf0      	blt.n	80012e2 <put_dump+0x2e>
 8001300:	2020      	movs	r0, #32
 8001302:	f7ff fdb5 	bl	8000e70 <xputc>
 8001306:	2300      	movs	r3, #0
 8001308:	61fb      	str	r3, [r7, #28]
 800130a:	e017      	b.n	800133c <put_dump+0x88>
 800130c:	69fb      	ldr	r3, [r7, #28]
 800130e:	693a      	ldr	r2, [r7, #16]
 8001310:	4413      	add	r3, r2
 8001312:	781b      	ldrb	r3, [r3, #0]
 8001314:	2b1f      	cmp	r3, #31
 8001316:	d90a      	bls.n	800132e <put_dump+0x7a>
 8001318:	69fb      	ldr	r3, [r7, #28]
 800131a:	693a      	ldr	r2, [r7, #16]
 800131c:	4413      	add	r3, r2
 800131e:	781b      	ldrb	r3, [r3, #0]
 8001320:	2b7e      	cmp	r3, #126	; 0x7e
 8001322:	d804      	bhi.n	800132e <put_dump+0x7a>
 8001324:	69fb      	ldr	r3, [r7, #28]
 8001326:	693a      	ldr	r2, [r7, #16]
 8001328:	4413      	add	r3, r2
 800132a:	781b      	ldrb	r3, [r3, #0]
 800132c:	e000      	b.n	8001330 <put_dump+0x7c>
 800132e:	232e      	movs	r3, #46	; 0x2e
 8001330:	4618      	mov	r0, r3
 8001332:	f7ff fd9d 	bl	8000e70 <xputc>
 8001336:	69fb      	ldr	r3, [r7, #28]
 8001338:	3301      	adds	r3, #1
 800133a:	61fb      	str	r3, [r7, #28]
 800133c:	69fa      	ldr	r2, [r7, #28]
 800133e:	687b      	ldr	r3, [r7, #4]
 8001340:	429a      	cmp	r2, r3
 8001342:	dbe3      	blt.n	800130c <put_dump+0x58>
 8001344:	e021      	b.n	800138a <put_dump+0xd6>
 8001346:	68fb      	ldr	r3, [r7, #12]
 8001348:	61bb      	str	r3, [r7, #24]
 800134a:	69bb      	ldr	r3, [r7, #24]
 800134c:	1c9a      	adds	r2, r3, #2
 800134e:	61ba      	str	r2, [r7, #24]
 8001350:	881b      	ldrh	r3, [r3, #0]
 8001352:	4813      	ldr	r0, [pc, #76]	; (80013a0 <put_dump+0xec>)
 8001354:	4619      	mov	r1, r3
 8001356:	f7ff ff5f 	bl	8001218 <xprintf>
 800135a:	687b      	ldr	r3, [r7, #4]
 800135c:	3b01      	subs	r3, #1
 800135e:	607b      	str	r3, [r7, #4]
 8001360:	687b      	ldr	r3, [r7, #4]
 8001362:	2b00      	cmp	r3, #0
 8001364:	d1f1      	bne.n	800134a <put_dump+0x96>
 8001366:	e010      	b.n	800138a <put_dump+0xd6>
 8001368:	68fb      	ldr	r3, [r7, #12]
 800136a:	617b      	str	r3, [r7, #20]
 800136c:	697b      	ldr	r3, [r7, #20]
 800136e:	1d1a      	adds	r2, r3, #4
 8001370:	617a      	str	r2, [r7, #20]
 8001372:	681b      	ldr	r3, [r3, #0]
 8001374:	480b      	ldr	r0, [pc, #44]	; (80013a4 <put_dump+0xf0>)
 8001376:	4619      	mov	r1, r3
 8001378:	f7ff ff4e 	bl	8001218 <xprintf>
 800137c:	687b      	ldr	r3, [r7, #4]
 800137e:	3b01      	subs	r3, #1
 8001380:	607b      	str	r3, [r7, #4]
 8001382:	687b      	ldr	r3, [r7, #4]
 8001384:	2b00      	cmp	r3, #0
 8001386:	d1f1      	bne.n	800136c <put_dump+0xb8>
 8001388:	bf00      	nop
 800138a:	200a      	movs	r0, #10
 800138c:	f7ff fd70 	bl	8000e70 <xputc>
 8001390:	3720      	adds	r7, #32
 8001392:	46bd      	mov	sp, r7
 8001394:	bd80      	pop	{r7, pc}
 8001396:	bf00      	nop
 8001398:	08004a10 	.word	0x08004a10
 800139c:	08004a18 	.word	0x08004a18
 80013a0:	08004a20 	.word	0x08004a20
 80013a4:	08004a28 	.word	0x08004a28

080013a8 <xgets>:
 80013a8:	b580      	push	{r7, lr}
 80013aa:	b084      	sub	sp, #16
 80013ac:	af00      	add	r7, sp, #0
 80013ae:	6078      	str	r0, [r7, #4]
 80013b0:	6039      	str	r1, [r7, #0]
 80013b2:	4b25      	ldr	r3, [pc, #148]	; (8001448 <xgets+0xa0>)
 80013b4:	681b      	ldr	r3, [r3, #0]
 80013b6:	2b00      	cmp	r3, #0
 80013b8:	d101      	bne.n	80013be <xgets+0x16>
 80013ba:	2300      	movs	r3, #0
 80013bc:	e03f      	b.n	800143e <xgets+0x96>
 80013be:	2300      	movs	r3, #0
 80013c0:	60fb      	str	r3, [r7, #12]
 80013c2:	4b21      	ldr	r3, [pc, #132]	; (8001448 <xgets+0xa0>)
 80013c4:	681b      	ldr	r3, [r3, #0]
 80013c6:	4798      	blx	r3
 80013c8:	4603      	mov	r3, r0
 80013ca:	60bb      	str	r3, [r7, #8]
 80013cc:	68bb      	ldr	r3, [r7, #8]
 80013ce:	2b00      	cmp	r3, #0
 80013d0:	d101      	bne.n	80013d6 <xgets+0x2e>
 80013d2:	2300      	movs	r3, #0
 80013d4:	e033      	b.n	800143e <xgets+0x96>
 80013d6:	68bb      	ldr	r3, [r7, #8]
 80013d8:	2b0d      	cmp	r3, #13
 80013da:	d10a      	bne.n	80013f2 <xgets+0x4a>
 80013dc:	bf00      	nop
 80013de:	68fb      	ldr	r3, [r7, #12]
 80013e0:	687a      	ldr	r2, [r7, #4]
 80013e2:	4413      	add	r3, r2
 80013e4:	2200      	movs	r2, #0
 80013e6:	701a      	strb	r2, [r3, #0]
 80013e8:	200a      	movs	r0, #10
 80013ea:	f7ff fd41 	bl	8000e70 <xputc>
 80013ee:	2301      	movs	r3, #1
 80013f0:	e025      	b.n	800143e <xgets+0x96>
 80013f2:	68bb      	ldr	r3, [r7, #8]
 80013f4:	2b08      	cmp	r3, #8
 80013f6:	d10b      	bne.n	8001410 <xgets+0x68>
 80013f8:	68fb      	ldr	r3, [r7, #12]
 80013fa:	2b00      	cmp	r3, #0
 80013fc:	d008      	beq.n	8001410 <xgets+0x68>
 80013fe:	68fb      	ldr	r3, [r7, #12]
 8001400:	3b01      	subs	r3, #1
 8001402:	60fb      	str	r3, [r7, #12]
 8001404:	68bb      	ldr	r3, [r7, #8]
 8001406:	b2db      	uxtb	r3, r3
 8001408:	4618      	mov	r0, r3
 800140a:	f7ff fd31 	bl	8000e70 <xputc>
 800140e:	e015      	b.n	800143c <xgets+0x94>
 8001410:	68bb      	ldr	r3, [r7, #8]
 8001412:	2b1f      	cmp	r3, #31
 8001414:	dd12      	ble.n	800143c <xgets+0x94>
 8001416:	683b      	ldr	r3, [r7, #0]
 8001418:	1e5a      	subs	r2, r3, #1
 800141a:	68fb      	ldr	r3, [r7, #12]
 800141c:	429a      	cmp	r2, r3
 800141e:	dd0d      	ble.n	800143c <xgets+0x94>
 8001420:	68fb      	ldr	r3, [r7, #12]
 8001422:	1c5a      	adds	r2, r3, #1
 8001424:	60fa      	str	r2, [r7, #12]
 8001426:	687a      	ldr	r2, [r7, #4]
 8001428:	4413      	add	r3, r2
 800142a:	68ba      	ldr	r2, [r7, #8]
 800142c:	b2d2      	uxtb	r2, r2
 800142e:	701a      	strb	r2, [r3, #0]
 8001430:	68bb      	ldr	r3, [r7, #8]
 8001432:	b2db      	uxtb	r3, r3
 8001434:	4618      	mov	r0, r3
 8001436:	f7ff fd1b 	bl	8000e70 <xputc>
 800143a:	e7c2      	b.n	80013c2 <xgets+0x1a>
 800143c:	e7c1      	b.n	80013c2 <xgets+0x1a>
 800143e:	4618      	mov	r0, r3
 8001440:	3710      	adds	r7, #16
 8001442:	46bd      	mov	sp, r7
 8001444:	bd80      	pop	{r7, pc}
 8001446:	bf00      	nop
 8001448:	20000a6c 	.word	0x20000a6c

0800144c <xfgets>:
 800144c:	b580      	push	{r7, lr}
 800144e:	b086      	sub	sp, #24
 8001450:	af00      	add	r7, sp, #0
 8001452:	60f8      	str	r0, [r7, #12]
 8001454:	60b9      	str	r1, [r7, #8]
 8001456:	607a      	str	r2, [r7, #4]
 8001458:	4b09      	ldr	r3, [pc, #36]	; (8001480 <xfgets+0x34>)
 800145a:	681b      	ldr	r3, [r3, #0]
 800145c:	617b      	str	r3, [r7, #20]
 800145e:	4b08      	ldr	r3, [pc, #32]	; (8001480 <xfgets+0x34>)
 8001460:	68fa      	ldr	r2, [r7, #12]
 8001462:	601a      	str	r2, [r3, #0]
 8001464:	68b8      	ldr	r0, [r7, #8]
 8001466:	6879      	ldr	r1, [r7, #4]
 8001468:	f7ff ff9e 	bl	80013a8 <xgets>
 800146c:	6138      	str	r0, [r7, #16]
 800146e:	4b04      	ldr	r3, [pc, #16]	; (8001480 <xfgets+0x34>)
 8001470:	697a      	ldr	r2, [r7, #20]
 8001472:	601a      	str	r2, [r3, #0]
 8001474:	693b      	ldr	r3, [r7, #16]
 8001476:	4618      	mov	r0, r3
 8001478:	3718      	adds	r7, #24
 800147a:	46bd      	mov	sp, r7
 800147c:	bd80      	pop	{r7, pc}
 800147e:	bf00      	nop
 8001480:	20000a6c 	.word	0x20000a6c

08001484 <xatoi>:
 8001484:	b480      	push	{r7}
 8001486:	b085      	sub	sp, #20
 8001488:	af00      	add	r7, sp, #0
 800148a:	6078      	str	r0, [r7, #4]
 800148c:	6039      	str	r1, [r7, #0]
 800148e:	2300      	movs	r3, #0
 8001490:	727b      	strb	r3, [r7, #9]
 8001492:	683b      	ldr	r3, [r7, #0]
 8001494:	2200      	movs	r2, #0
 8001496:	601a      	str	r2, [r3, #0]
 8001498:	e004      	b.n	80014a4 <xatoi+0x20>
 800149a:	687b      	ldr	r3, [r7, #4]
 800149c:	681b      	ldr	r3, [r3, #0]
 800149e:	1c5a      	adds	r2, r3, #1
 80014a0:	687b      	ldr	r3, [r7, #4]
 80014a2:	601a      	str	r2, [r3, #0]
 80014a4:	687b      	ldr	r3, [r7, #4]
 80014a6:	681b      	ldr	r3, [r3, #0]
 80014a8:	781b      	ldrb	r3, [r3, #0]
 80014aa:	72fb      	strb	r3, [r7, #11]
 80014ac:	7afb      	ldrb	r3, [r7, #11]
 80014ae:	2b20      	cmp	r3, #32
 80014b0:	d0f3      	beq.n	800149a <xatoi+0x16>
 80014b2:	7afb      	ldrb	r3, [r7, #11]
 80014b4:	2b2d      	cmp	r3, #45	; 0x2d
 80014b6:	d10a      	bne.n	80014ce <xatoi+0x4a>
 80014b8:	2301      	movs	r3, #1
 80014ba:	727b      	strb	r3, [r7, #9]
 80014bc:	687b      	ldr	r3, [r7, #4]
 80014be:	681b      	ldr	r3, [r3, #0]
 80014c0:	1c5a      	adds	r2, r3, #1
 80014c2:	687b      	ldr	r3, [r7, #4]
 80014c4:	601a      	str	r2, [r3, #0]
 80014c6:	687b      	ldr	r3, [r7, #4]
 80014c8:	681b      	ldr	r3, [r3, #0]
 80014ca:	781b      	ldrb	r3, [r3, #0]
 80014cc:	72fb      	strb	r3, [r7, #11]
 80014ce:	7afb      	ldrb	r3, [r7, #11]
 80014d0:	2b30      	cmp	r3, #48	; 0x30
 80014d2:	d136      	bne.n	8001542 <xatoi+0xbe>
 80014d4:	687b      	ldr	r3, [r7, #4]
 80014d6:	681b      	ldr	r3, [r3, #0]
 80014d8:	1c5a      	adds	r2, r3, #1
 80014da:	687b      	ldr	r3, [r7, #4]
 80014dc:	601a      	str	r2, [r3, #0]
 80014de:	687b      	ldr	r3, [r7, #4]
 80014e0:	681b      	ldr	r3, [r3, #0]
 80014e2:	781b      	ldrb	r3, [r3, #0]
 80014e4:	72fb      	strb	r3, [r7, #11]
 80014e6:	7afb      	ldrb	r3, [r7, #11]
 80014e8:	2b62      	cmp	r3, #98	; 0x62
 80014ea:	d00d      	beq.n	8001508 <xatoi+0x84>
 80014ec:	2b78      	cmp	r3, #120	; 0x78
 80014ee:	d117      	bne.n	8001520 <xatoi+0x9c>
 80014f0:	2310      	movs	r3, #16
 80014f2:	72bb      	strb	r3, [r7, #10]
 80014f4:	687b      	ldr	r3, [r7, #4]
 80014f6:	681b      	ldr	r3, [r3, #0]
 80014f8:	1c5a      	adds	r2, r3, #1
 80014fa:	687b      	ldr	r3, [r7, #4]
 80014fc:	601a      	str	r2, [r3, #0]
 80014fe:	687b      	ldr	r3, [r7, #4]
 8001500:	681b      	ldr	r3, [r3, #0]
 8001502:	781b      	ldrb	r3, [r3, #0]
 8001504:	72fb      	strb	r3, [r7, #11]
 8001506:	e01b      	b.n	8001540 <xatoi+0xbc>
 8001508:	2302      	movs	r3, #2
 800150a:	72bb      	strb	r3, [r7, #10]
 800150c:	687b      	ldr	r3, [r7, #4]
 800150e:	681b      	ldr	r3, [r3, #0]
 8001510:	1c5a      	adds	r2, r3, #1
 8001512:	687b      	ldr	r3, [r7, #4]
 8001514:	601a      	str	r2, [r3, #0]
 8001516:	687b      	ldr	r3, [r7, #4]
 8001518:	681b      	ldr	r3, [r3, #0]
 800151a:	781b      	ldrb	r3, [r3, #0]
 800151c:	72fb      	strb	r3, [r7, #11]
 800151e:	e00f      	b.n	8001540 <xatoi+0xbc>
 8001520:	7afb      	ldrb	r3, [r7, #11]
 8001522:	2b20      	cmp	r3, #32
 8001524:	d801      	bhi.n	800152a <xatoi+0xa6>
 8001526:	2301      	movs	r3, #1
 8001528:	e04f      	b.n	80015ca <xatoi+0x146>
 800152a:	7afb      	ldrb	r3, [r7, #11]
 800152c:	2b2f      	cmp	r3, #47	; 0x2f
 800152e:	d902      	bls.n	8001536 <xatoi+0xb2>
 8001530:	7afb      	ldrb	r3, [r7, #11]
 8001532:	2b39      	cmp	r3, #57	; 0x39
 8001534:	d901      	bls.n	800153a <xatoi+0xb6>
 8001536:	2300      	movs	r3, #0
 8001538:	e047      	b.n	80015ca <xatoi+0x146>
 800153a:	2308      	movs	r3, #8
 800153c:	72bb      	strb	r3, [r7, #10]
 800153e:	e00a      	b.n	8001556 <xatoi+0xd2>
 8001540:	e009      	b.n	8001556 <xatoi+0xd2>
 8001542:	7afb      	ldrb	r3, [r7, #11]
 8001544:	2b2f      	cmp	r3, #47	; 0x2f
 8001546:	d902      	bls.n	800154e <xatoi+0xca>
 8001548:	7afb      	ldrb	r3, [r7, #11]
 800154a:	2b39      	cmp	r3, #57	; 0x39
 800154c:	d901      	bls.n	8001552 <xatoi+0xce>
 800154e:	2300      	movs	r3, #0
 8001550:	e03b      	b.n	80015ca <xatoi+0x146>
 8001552:	230a      	movs	r3, #10
 8001554:	72bb      	strb	r3, [r7, #10]
 8001556:	2300      	movs	r3, #0
 8001558:	60fb      	str	r3, [r7, #12]
 800155a:	e029      	b.n	80015b0 <xatoi+0x12c>
 800155c:	7afb      	ldrb	r3, [r7, #11]
 800155e:	2b60      	cmp	r3, #96	; 0x60
 8001560:	d902      	bls.n	8001568 <xatoi+0xe4>
 8001562:	7afb      	ldrb	r3, [r7, #11]
 8001564:	3b20      	subs	r3, #32
 8001566:	72fb      	strb	r3, [r7, #11]
 8001568:	7afb      	ldrb	r3, [r7, #11]
 800156a:	3b30      	subs	r3, #48	; 0x30
 800156c:	72fb      	strb	r3, [r7, #11]
 800156e:	7afb      	ldrb	r3, [r7, #11]
 8001570:	2b10      	cmp	r3, #16
 8001572:	d907      	bls.n	8001584 <xatoi+0x100>
 8001574:	7afb      	ldrb	r3, [r7, #11]
 8001576:	3b07      	subs	r3, #7
 8001578:	72fb      	strb	r3, [r7, #11]
 800157a:	7afb      	ldrb	r3, [r7, #11]
 800157c:	2b09      	cmp	r3, #9
 800157e:	d801      	bhi.n	8001584 <xatoi+0x100>
 8001580:	2300      	movs	r3, #0
 8001582:	e022      	b.n	80015ca <xatoi+0x146>
 8001584:	7afa      	ldrb	r2, [r7, #11]
 8001586:	7abb      	ldrb	r3, [r7, #10]
 8001588:	429a      	cmp	r2, r3
 800158a:	d301      	bcc.n	8001590 <xatoi+0x10c>
 800158c:	2300      	movs	r3, #0
 800158e:	e01c      	b.n	80015ca <xatoi+0x146>
 8001590:	7abb      	ldrb	r3, [r7, #10]
 8001592:	68fa      	ldr	r2, [r7, #12]
 8001594:	fb02 f203 	mul.w	r2, r2, r3
 8001598:	7afb      	ldrb	r3, [r7, #11]
 800159a:	4413      	add	r3, r2
 800159c:	60fb      	str	r3, [r7, #12]
 800159e:	687b      	ldr	r3, [r7, #4]
 80015a0:	681b      	ldr	r3, [r3, #0]
 80015a2:	1c5a      	adds	r2, r3, #1
 80015a4:	687b      	ldr	r3, [r7, #4]
 80015a6:	601a      	str	r2, [r3, #0]
 80015a8:	687b      	ldr	r3, [r7, #4]
 80015aa:	681b      	ldr	r3, [r3, #0]
 80015ac:	781b      	ldrb	r3, [r3, #0]
 80015ae:	72fb      	strb	r3, [r7, #11]
 80015b0:	7afb      	ldrb	r3, [r7, #11]
 80015b2:	2b20      	cmp	r3, #32
 80015b4:	d8d2      	bhi.n	800155c <xatoi+0xd8>
 80015b6:	7a7b      	ldrb	r3, [r7, #9]
 80015b8:	2b00      	cmp	r3, #0
 80015ba:	d002      	beq.n	80015c2 <xatoi+0x13e>
 80015bc:	68fb      	ldr	r3, [r7, #12]
 80015be:	425b      	negs	r3, r3
 80015c0:	60fb      	str	r3, [r7, #12]
 80015c2:	68fa      	ldr	r2, [r7, #12]
 80015c4:	683b      	ldr	r3, [r7, #0]
 80015c6:	601a      	str	r2, [r3, #0]
 80015c8:	2301      	movs	r3, #1
 80015ca:	4618      	mov	r0, r3
 80015cc:	3714      	adds	r7, #20
 80015ce:	46bd      	mov	sp, r7
 80015d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80015d4:	4770      	bx	lr
 80015d6:	bf00      	nop

080015d8 <NVIC_EnableIRQ>:
 80015d8:	b480      	push	{r7}
 80015da:	b083      	sub	sp, #12
 80015dc:	af00      	add	r7, sp, #0
 80015de:	4603      	mov	r3, r0
 80015e0:	71fb      	strb	r3, [r7, #7]
 80015e2:	4b08      	ldr	r3, [pc, #32]	; (8001604 <NVIC_EnableIRQ+0x2c>)
 80015e4:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80015e8:	0952      	lsrs	r2, r2, #5
 80015ea:	79f9      	ldrb	r1, [r7, #7]
 80015ec:	f001 011f 	and.w	r1, r1, #31
 80015f0:	2001      	movs	r0, #1
 80015f2:	fa00 f101 	lsl.w	r1, r0, r1
 80015f6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80015fa:	370c      	adds	r7, #12
 80015fc:	46bd      	mov	sp, r7
 80015fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001602:	4770      	bx	lr
 8001604:	e000e100 	.word	0xe000e100

08001608 <adc_common_init>:
 8001608:	b480      	push	{r7}
 800160a:	af00      	add	r7, sp, #0
 800160c:	4b07      	ldr	r3, [pc, #28]	; (800162c <adc_common_init+0x24>)
 800160e:	4a07      	ldr	r2, [pc, #28]	; (800162c <adc_common_init+0x24>)
 8001610:	6852      	ldr	r2, [r2, #4]
 8001612:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8001616:	605a      	str	r2, [r3, #4]
 8001618:	4b04      	ldr	r3, [pc, #16]	; (800162c <adc_common_init+0x24>)
 800161a:	4a04      	ldr	r2, [pc, #16]	; (800162c <adc_common_init+0x24>)
 800161c:	6852      	ldr	r2, [r2, #4]
 800161e:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001622:	605a      	str	r2, [r3, #4]
 8001624:	46bd      	mov	sp, r7
 8001626:	f85d 7b04 	ldr.w	r7, [sp], #4
 800162a:	4770      	bx	lr
 800162c:	40012300 	.word	0x40012300

08001630 <adc1_init>:
 8001630:	b480      	push	{r7}
 8001632:	af00      	add	r7, sp, #0
 8001634:	4b29      	ldr	r3, [pc, #164]	; (80016dc <adc1_init+0xac>)
 8001636:	4a29      	ldr	r2, [pc, #164]	; (80016dc <adc1_init+0xac>)
 8001638:	6c52      	ldr	r2, [r2, #68]	; 0x44
 800163a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800163e:	645a      	str	r2, [r3, #68]	; 0x44
 8001640:	4b26      	ldr	r3, [pc, #152]	; (80016dc <adc1_init+0xac>)
 8001642:	4a26      	ldr	r2, [pc, #152]	; (80016dc <adc1_init+0xac>)
 8001644:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001646:	f042 0201 	orr.w	r2, r2, #1
 800164a:	631a      	str	r2, [r3, #48]	; 0x30
 800164c:	4b24      	ldr	r3, [pc, #144]	; (80016e0 <adc1_init+0xb0>)
 800164e:	4a24      	ldr	r2, [pc, #144]	; (80016e0 <adc1_init+0xb0>)
 8001650:	6812      	ldr	r2, [r2, #0]
 8001652:	f022 0203 	bic.w	r2, r2, #3
 8001656:	601a      	str	r2, [r3, #0]
 8001658:	4b21      	ldr	r3, [pc, #132]	; (80016e0 <adc1_init+0xb0>)
 800165a:	4a21      	ldr	r2, [pc, #132]	; (80016e0 <adc1_init+0xb0>)
 800165c:	6812      	ldr	r2, [r2, #0]
 800165e:	f042 0203 	orr.w	r2, r2, #3
 8001662:	601a      	str	r2, [r3, #0]
 8001664:	4b1f      	ldr	r3, [pc, #124]	; (80016e4 <adc1_init+0xb4>)
 8001666:	4a1f      	ldr	r2, [pc, #124]	; (80016e4 <adc1_init+0xb4>)
 8001668:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800166a:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800166e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001670:	4b1c      	ldr	r3, [pc, #112]	; (80016e4 <adc1_init+0xb4>)
 8001672:	4a1c      	ldr	r2, [pc, #112]	; (80016e4 <adc1_init+0xb4>)
 8001674:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001676:	62da      	str	r2, [r3, #44]	; 0x2c
 8001678:	4b1a      	ldr	r3, [pc, #104]	; (80016e4 <adc1_init+0xb4>)
 800167a:	4a1a      	ldr	r2, [pc, #104]	; (80016e4 <adc1_init+0xb4>)
 800167c:	6852      	ldr	r2, [r2, #4]
 800167e:	f042 0220 	orr.w	r2, r2, #32
 8001682:	605a      	str	r2, [r3, #4]
 8001684:	4b17      	ldr	r3, [pc, #92]	; (80016e4 <adc1_init+0xb4>)
 8001686:	4a17      	ldr	r2, [pc, #92]	; (80016e4 <adc1_init+0xb4>)
 8001688:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800168a:	f022 021f 	bic.w	r2, r2, #31
 800168e:	635a      	str	r2, [r3, #52]	; 0x34
 8001690:	4b14      	ldr	r3, [pc, #80]	; (80016e4 <adc1_init+0xb4>)
 8001692:	4a14      	ldr	r2, [pc, #80]	; (80016e4 <adc1_init+0xb4>)
 8001694:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001696:	635a      	str	r2, [r3, #52]	; 0x34
 8001698:	4b12      	ldr	r3, [pc, #72]	; (80016e4 <adc1_init+0xb4>)
 800169a:	4a12      	ldr	r2, [pc, #72]	; (80016e4 <adc1_init+0xb4>)
 800169c:	6892      	ldr	r2, [r2, #8]
 800169e:	f022 5240 	bic.w	r2, r2, #805306368	; 0x30000000
 80016a2:	609a      	str	r2, [r3, #8]
 80016a4:	4b0f      	ldr	r3, [pc, #60]	; (80016e4 <adc1_init+0xb4>)
 80016a6:	4a0f      	ldr	r2, [pc, #60]	; (80016e4 <adc1_init+0xb4>)
 80016a8:	6892      	ldr	r2, [r2, #8]
 80016aa:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 80016ae:	609a      	str	r2, [r3, #8]
 80016b0:	4b0c      	ldr	r3, [pc, #48]	; (80016e4 <adc1_init+0xb4>)
 80016b2:	4a0c      	ldr	r2, [pc, #48]	; (80016e4 <adc1_init+0xb4>)
 80016b4:	6892      	ldr	r2, [r2, #8]
 80016b6:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80016ba:	609a      	str	r2, [r3, #8]
 80016bc:	4b09      	ldr	r3, [pc, #36]	; (80016e4 <adc1_init+0xb4>)
 80016be:	4a09      	ldr	r2, [pc, #36]	; (80016e4 <adc1_init+0xb4>)
 80016c0:	6892      	ldr	r2, [r2, #8]
 80016c2:	f042 62a0 	orr.w	r2, r2, #83886080	; 0x5000000
 80016c6:	609a      	str	r2, [r3, #8]
 80016c8:	4b06      	ldr	r3, [pc, #24]	; (80016e4 <adc1_init+0xb4>)
 80016ca:	4a06      	ldr	r2, [pc, #24]	; (80016e4 <adc1_init+0xb4>)
 80016cc:	6892      	ldr	r2, [r2, #8]
 80016ce:	f042 0201 	orr.w	r2, r2, #1
 80016d2:	609a      	str	r2, [r3, #8]
 80016d4:	46bd      	mov	sp, r7
 80016d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80016da:	4770      	bx	lr
 80016dc:	40023800 	.word	0x40023800
 80016e0:	40020000 	.word	0x40020000
 80016e4:	40012000 	.word	0x40012000

080016e8 <adc2_init>:
 80016e8:	b480      	push	{r7}
 80016ea:	af00      	add	r7, sp, #0
 80016ec:	4b1b      	ldr	r3, [pc, #108]	; (800175c <adc2_init+0x74>)
 80016ee:	4a1b      	ldr	r2, [pc, #108]	; (800175c <adc2_init+0x74>)
 80016f0:	6c52      	ldr	r2, [r2, #68]	; 0x44
 80016f2:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80016f6:	645a      	str	r2, [r3, #68]	; 0x44
 80016f8:	4b18      	ldr	r3, [pc, #96]	; (800175c <adc2_init+0x74>)
 80016fa:	4a18      	ldr	r2, [pc, #96]	; (800175c <adc2_init+0x74>)
 80016fc:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80016fe:	f042 0201 	orr.w	r2, r2, #1
 8001702:	631a      	str	r2, [r3, #48]	; 0x30
 8001704:	4b16      	ldr	r3, [pc, #88]	; (8001760 <adc2_init+0x78>)
 8001706:	4a16      	ldr	r2, [pc, #88]	; (8001760 <adc2_init+0x78>)
 8001708:	6812      	ldr	r2, [r2, #0]
 800170a:	f022 020c 	bic.w	r2, r2, #12
 800170e:	601a      	str	r2, [r3, #0]
 8001710:	4b13      	ldr	r3, [pc, #76]	; (8001760 <adc2_init+0x78>)
 8001712:	4a13      	ldr	r2, [pc, #76]	; (8001760 <adc2_init+0x78>)
 8001714:	6812      	ldr	r2, [r2, #0]
 8001716:	f042 020c 	orr.w	r2, r2, #12
 800171a:	601a      	str	r2, [r3, #0]
 800171c:	4b11      	ldr	r3, [pc, #68]	; (8001764 <adc2_init+0x7c>)
 800171e:	4a11      	ldr	r2, [pc, #68]	; (8001764 <adc2_init+0x7c>)
 8001720:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8001722:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8001726:	62da      	str	r2, [r3, #44]	; 0x2c
 8001728:	4b0e      	ldr	r3, [pc, #56]	; (8001764 <adc2_init+0x7c>)
 800172a:	4a0e      	ldr	r2, [pc, #56]	; (8001764 <adc2_init+0x7c>)
 800172c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800172e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001730:	4b0c      	ldr	r3, [pc, #48]	; (8001764 <adc2_init+0x7c>)
 8001732:	4a0c      	ldr	r2, [pc, #48]	; (8001764 <adc2_init+0x7c>)
 8001734:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001736:	f022 021f 	bic.w	r2, r2, #31
 800173a:	635a      	str	r2, [r3, #52]	; 0x34
 800173c:	4b09      	ldr	r3, [pc, #36]	; (8001764 <adc2_init+0x7c>)
 800173e:	4a09      	ldr	r2, [pc, #36]	; (8001764 <adc2_init+0x7c>)
 8001740:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001742:	f042 0201 	orr.w	r2, r2, #1
 8001746:	635a      	str	r2, [r3, #52]	; 0x34
 8001748:	4b06      	ldr	r3, [pc, #24]	; (8001764 <adc2_init+0x7c>)
 800174a:	4a06      	ldr	r2, [pc, #24]	; (8001764 <adc2_init+0x7c>)
 800174c:	6892      	ldr	r2, [r2, #8]
 800174e:	f042 0201 	orr.w	r2, r2, #1
 8001752:	609a      	str	r2, [r3, #8]
 8001754:	46bd      	mov	sp, r7
 8001756:	f85d 7b04 	ldr.w	r7, [sp], #4
 800175a:	4770      	bx	lr
 800175c:	40023800 	.word	0x40023800
 8001760:	40020000 	.word	0x40020000
 8001764:	40012100 	.word	0x40012100

08001768 <adc3_init>:
 8001768:	b480      	push	{r7}
 800176a:	af00      	add	r7, sp, #0
 800176c:	4b1b      	ldr	r3, [pc, #108]	; (80017dc <adc3_init+0x74>)
 800176e:	4a1b      	ldr	r2, [pc, #108]	; (80017dc <adc3_init+0x74>)
 8001770:	6c52      	ldr	r2, [r2, #68]	; 0x44
 8001772:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001776:	645a      	str	r2, [r3, #68]	; 0x44
 8001778:	4b18      	ldr	r3, [pc, #96]	; (80017dc <adc3_init+0x74>)
 800177a:	4a18      	ldr	r2, [pc, #96]	; (80017dc <adc3_init+0x74>)
 800177c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800177e:	f042 0201 	orr.w	r2, r2, #1
 8001782:	631a      	str	r2, [r3, #48]	; 0x30
 8001784:	4b16      	ldr	r3, [pc, #88]	; (80017e0 <adc3_init+0x78>)
 8001786:	4a16      	ldr	r2, [pc, #88]	; (80017e0 <adc3_init+0x78>)
 8001788:	6812      	ldr	r2, [r2, #0]
 800178a:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 800178e:	601a      	str	r2, [r3, #0]
 8001790:	4b13      	ldr	r3, [pc, #76]	; (80017e0 <adc3_init+0x78>)
 8001792:	4a13      	ldr	r2, [pc, #76]	; (80017e0 <adc3_init+0x78>)
 8001794:	6812      	ldr	r2, [r2, #0]
 8001796:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 800179a:	601a      	str	r2, [r3, #0]
 800179c:	4b11      	ldr	r3, [pc, #68]	; (80017e4 <adc3_init+0x7c>)
 800179e:	4a11      	ldr	r2, [pc, #68]	; (80017e4 <adc3_init+0x7c>)
 80017a0:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80017a2:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80017a6:	62da      	str	r2, [r3, #44]	; 0x2c
 80017a8:	4b0e      	ldr	r3, [pc, #56]	; (80017e4 <adc3_init+0x7c>)
 80017aa:	4a0e      	ldr	r2, [pc, #56]	; (80017e4 <adc3_init+0x7c>)
 80017ac:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80017ae:	62da      	str	r2, [r3, #44]	; 0x2c
 80017b0:	4b0c      	ldr	r3, [pc, #48]	; (80017e4 <adc3_init+0x7c>)
 80017b2:	4a0c      	ldr	r2, [pc, #48]	; (80017e4 <adc3_init+0x7c>)
 80017b4:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80017b6:	f022 021f 	bic.w	r2, r2, #31
 80017ba:	635a      	str	r2, [r3, #52]	; 0x34
 80017bc:	4b09      	ldr	r3, [pc, #36]	; (80017e4 <adc3_init+0x7c>)
 80017be:	4a09      	ldr	r2, [pc, #36]	; (80017e4 <adc3_init+0x7c>)
 80017c0:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80017c2:	f042 0203 	orr.w	r2, r2, #3
 80017c6:	635a      	str	r2, [r3, #52]	; 0x34
 80017c8:	4b06      	ldr	r3, [pc, #24]	; (80017e4 <adc3_init+0x7c>)
 80017ca:	4a06      	ldr	r2, [pc, #24]	; (80017e4 <adc3_init+0x7c>)
 80017cc:	6892      	ldr	r2, [r2, #8]
 80017ce:	f042 0201 	orr.w	r2, r2, #1
 80017d2:	609a      	str	r2, [r3, #8]
 80017d4:	46bd      	mov	sp, r7
 80017d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80017da:	4770      	bx	lr
 80017dc:	40023800 	.word	0x40023800
 80017e0:	40020000 	.word	0x40020000
 80017e4:	40012200 	.word	0x40012200

080017e8 <adc_set_trigger>:
 80017e8:	b480      	push	{r7}
 80017ea:	af00      	add	r7, sp, #0
 80017ec:	4b2d      	ldr	r3, [pc, #180]	; (80018a4 <adc_set_trigger+0xbc>)
 80017ee:	4a2d      	ldr	r2, [pc, #180]	; (80018a4 <adc_set_trigger+0xbc>)
 80017f0:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80017f2:	f042 0201 	orr.w	r2, r2, #1
 80017f6:	641a      	str	r2, [r3, #64]	; 0x40
 80017f8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80017fc:	2229      	movs	r2, #41	; 0x29
 80017fe:	851a      	strh	r2, [r3, #40]	; 0x28
 8001800:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001804:	2213      	movs	r2, #19
 8001806:	62da      	str	r2, [r3, #44]	; 0x2c
 8001808:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800180c:	2202      	movs	r2, #2
 800180e:	641a      	str	r2, [r3, #64]	; 0x40
 8001810:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001814:	2200      	movs	r2, #0
 8001816:	839a      	strh	r2, [r3, #28]
 8001818:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800181c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001820:	8b92      	ldrh	r2, [r2, #28]
 8001822:	b292      	uxth	r2, r2
 8001824:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 8001828:	b292      	uxth	r2, r2
 800182a:	839a      	strh	r2, [r3, #28]
 800182c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001830:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001834:	8c12      	ldrh	r2, [r2, #32]
 8001836:	b292      	uxth	r2, r2
 8001838:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 800183c:	b292      	uxth	r2, r2
 800183e:	841a      	strh	r2, [r3, #32]
 8001840:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001844:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001848:	8812      	ldrh	r2, [r2, #0]
 800184a:	b292      	uxth	r2, r2
 800184c:	f042 0201 	orr.w	r2, r2, #1
 8001850:	b292      	uxth	r2, r2
 8001852:	801a      	strh	r2, [r3, #0]
 8001854:	4b13      	ldr	r3, [pc, #76]	; (80018a4 <adc_set_trigger+0xbc>)
 8001856:	4a13      	ldr	r2, [pc, #76]	; (80018a4 <adc_set_trigger+0xbc>)
 8001858:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800185a:	f042 0202 	orr.w	r2, r2, #2
 800185e:	631a      	str	r2, [r3, #48]	; 0x30
 8001860:	4b11      	ldr	r3, [pc, #68]	; (80018a8 <adc_set_trigger+0xc0>)
 8001862:	4a11      	ldr	r2, [pc, #68]	; (80018a8 <adc_set_trigger+0xc0>)
 8001864:	6812      	ldr	r2, [r2, #0]
 8001866:	f422 0240 	bic.w	r2, r2, #12582912	; 0xc00000
 800186a:	601a      	str	r2, [r3, #0]
 800186c:	4b0e      	ldr	r3, [pc, #56]	; (80018a8 <adc_set_trigger+0xc0>)
 800186e:	4a0e      	ldr	r2, [pc, #56]	; (80018a8 <adc_set_trigger+0xc0>)
 8001870:	6812      	ldr	r2, [r2, #0]
 8001872:	f442 0200 	orr.w	r2, r2, #8388608	; 0x800000
 8001876:	601a      	str	r2, [r3, #0]
 8001878:	4b0b      	ldr	r3, [pc, #44]	; (80018a8 <adc_set_trigger+0xc0>)
 800187a:	4a0b      	ldr	r2, [pc, #44]	; (80018a8 <adc_set_trigger+0xc0>)
 800187c:	6892      	ldr	r2, [r2, #8]
 800187e:	f442 0240 	orr.w	r2, r2, #12582912	; 0xc00000
 8001882:	609a      	str	r2, [r3, #8]
 8001884:	4b08      	ldr	r3, [pc, #32]	; (80018a8 <adc_set_trigger+0xc0>)
 8001886:	4a08      	ldr	r2, [pc, #32]	; (80018a8 <adc_set_trigger+0xc0>)
 8001888:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800188a:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 800188e:	625a      	str	r2, [r3, #36]	; 0x24
 8001890:	4b05      	ldr	r3, [pc, #20]	; (80018a8 <adc_set_trigger+0xc0>)
 8001892:	4a05      	ldr	r2, [pc, #20]	; (80018a8 <adc_set_trigger+0xc0>)
 8001894:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001896:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 800189a:	625a      	str	r2, [r3, #36]	; 0x24
 800189c:	46bd      	mov	sp, r7
 800189e:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018a2:	4770      	bx	lr
 80018a4:	40023800 	.word	0x40023800
 80018a8:	40020400 	.word	0x40020400

080018ac <adc_init>:
 80018ac:	b580      	push	{r7, lr}
 80018ae:	af00      	add	r7, sp, #0
 80018b0:	f7ff feaa 	bl	8001608 <adc_common_init>
 80018b4:	f7ff febc 	bl	8001630 <adc1_init>
 80018b8:	f7ff ff16 	bl	80016e8 <adc2_init>
 80018bc:	f7ff ff54 	bl	8001768 <adc3_init>
 80018c0:	f7ff ff92 	bl	80017e8 <adc_set_trigger>
 80018c4:	4b07      	ldr	r3, [pc, #28]	; (80018e4 <adc_init+0x38>)
 80018c6:	4a07      	ldr	r2, [pc, #28]	; (80018e4 <adc_init+0x38>)
 80018c8:	6852      	ldr	r2, [r2, #4]
 80018ca:	f022 021f 	bic.w	r2, r2, #31
 80018ce:	605a      	str	r2, [r3, #4]
 80018d0:	4b04      	ldr	r3, [pc, #16]	; (80018e4 <adc_init+0x38>)
 80018d2:	4a04      	ldr	r2, [pc, #16]	; (80018e4 <adc_init+0x38>)
 80018d4:	6852      	ldr	r2, [r2, #4]
 80018d6:	f042 0216 	orr.w	r2, r2, #22
 80018da:	605a      	str	r2, [r3, #4]
 80018dc:	2012      	movs	r0, #18
 80018de:	f7ff fe7b 	bl	80015d8 <NVIC_EnableIRQ>
 80018e2:	bd80      	pop	{r7, pc}
 80018e4:	40012300 	.word	0x40012300

080018e8 <TIM2_IRQHandler>:
 80018e8:	b480      	push	{r7}
 80018ea:	af00      	add	r7, sp, #0
 80018ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80018f0:	8a1b      	ldrh	r3, [r3, #16]
 80018f2:	b29b      	uxth	r3, r3
 80018f4:	f003 0301 	and.w	r3, r3, #1
 80018f8:	2b00      	cmp	r3, #0
 80018fa:	d009      	beq.n	8001910 <TIM2_IRQHandler+0x28>
 80018fc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001900:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001904:	8a12      	ldrh	r2, [r2, #16]
 8001906:	b292      	uxth	r2, r2
 8001908:	f022 0201 	bic.w	r2, r2, #1
 800190c:	b292      	uxth	r2, r2
 800190e:	821a      	strh	r2, [r3, #16]
 8001910:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001914:	8a1b      	ldrh	r3, [r3, #16]
 8001916:	b29b      	uxth	r3, r3
 8001918:	f003 0302 	and.w	r3, r3, #2
 800191c:	2b00      	cmp	r3, #0
 800191e:	d009      	beq.n	8001934 <TIM2_IRQHandler+0x4c>
 8001920:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001924:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8001928:	8a12      	ldrh	r2, [r2, #16]
 800192a:	b292      	uxth	r2, r2
 800192c:	f022 0202 	bic.w	r2, r2, #2
 8001930:	b292      	uxth	r2, r2
 8001932:	821a      	strh	r2, [r3, #16]
 8001934:	46bd      	mov	sp, r7
 8001936:	f85d 7b04 	ldr.w	r7, [sp], #4
 800193a:	4770      	bx	lr

0800193c <offset_pwm_init>:
 800193c:	b480      	push	{r7}
 800193e:	af00      	add	r7, sp, #0
 8001940:	4b31      	ldr	r3, [pc, #196]	; (8001a08 <offset_pwm_init+0xcc>)
 8001942:	4a31      	ldr	r2, [pc, #196]	; (8001a08 <offset_pwm_init+0xcc>)
 8001944:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001946:	f042 0204 	orr.w	r2, r2, #4
 800194a:	641a      	str	r2, [r3, #64]	; 0x40
 800194c:	4b2f      	ldr	r3, [pc, #188]	; (8001a0c <offset_pwm_init+0xd0>)
 800194e:	2203      	movs	r2, #3
 8001950:	851a      	strh	r2, [r3, #40]	; 0x28
 8001952:	4b2e      	ldr	r3, [pc, #184]	; (8001a0c <offset_pwm_init+0xd0>)
 8001954:	2263      	movs	r2, #99	; 0x63
 8001956:	62da      	str	r2, [r3, #44]	; 0x2c
 8001958:	4b2c      	ldr	r3, [pc, #176]	; (8001a0c <offset_pwm_init+0xd0>)
 800195a:	2232      	movs	r2, #50	; 0x32
 800195c:	635a      	str	r2, [r3, #52]	; 0x34
 800195e:	4b2b      	ldr	r3, [pc, #172]	; (8001a0c <offset_pwm_init+0xd0>)
 8001960:	2232      	movs	r2, #50	; 0x32
 8001962:	639a      	str	r2, [r3, #56]	; 0x38
 8001964:	4b29      	ldr	r3, [pc, #164]	; (8001a0c <offset_pwm_init+0xd0>)
 8001966:	2200      	movs	r2, #0
 8001968:	831a      	strh	r2, [r3, #24]
 800196a:	4a28      	ldr	r2, [pc, #160]	; (8001a0c <offset_pwm_init+0xd0>)
 800196c:	4b27      	ldr	r3, [pc, #156]	; (8001a0c <offset_pwm_init+0xd0>)
 800196e:	8b1b      	ldrh	r3, [r3, #24]
 8001970:	b29b      	uxth	r3, r3
 8001972:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 8001976:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 800197a:	b29b      	uxth	r3, r3
 800197c:	8313      	strh	r3, [r2, #24]
 800197e:	4b23      	ldr	r3, [pc, #140]	; (8001a0c <offset_pwm_init+0xd0>)
 8001980:	4a22      	ldr	r2, [pc, #136]	; (8001a0c <offset_pwm_init+0xd0>)
 8001982:	8c12      	ldrh	r2, [r2, #32]
 8001984:	b292      	uxth	r2, r2
 8001986:	f042 0211 	orr.w	r2, r2, #17
 800198a:	b292      	uxth	r2, r2
 800198c:	841a      	strh	r2, [r3, #32]
 800198e:	4b1f      	ldr	r3, [pc, #124]	; (8001a0c <offset_pwm_init+0xd0>)
 8001990:	4a1e      	ldr	r2, [pc, #120]	; (8001a0c <offset_pwm_init+0xd0>)
 8001992:	8812      	ldrh	r2, [r2, #0]
 8001994:	b292      	uxth	r2, r2
 8001996:	f042 0201 	orr.w	r2, r2, #1
 800199a:	b292      	uxth	r2, r2
 800199c:	801a      	strh	r2, [r3, #0]
 800199e:	4b1a      	ldr	r3, [pc, #104]	; (8001a08 <offset_pwm_init+0xcc>)
 80019a0:	4a19      	ldr	r2, [pc, #100]	; (8001a08 <offset_pwm_init+0xcc>)
 80019a2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80019a4:	f042 0208 	orr.w	r2, r2, #8
 80019a8:	631a      	str	r2, [r3, #48]	; 0x30
 80019aa:	4b19      	ldr	r3, [pc, #100]	; (8001a10 <offset_pwm_init+0xd4>)
 80019ac:	4a18      	ldr	r2, [pc, #96]	; (8001a10 <offset_pwm_init+0xd4>)
 80019ae:	6812      	ldr	r2, [r2, #0]
 80019b0:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80019b4:	601a      	str	r2, [r3, #0]
 80019b6:	4b16      	ldr	r3, [pc, #88]	; (8001a10 <offset_pwm_init+0xd4>)
 80019b8:	4a15      	ldr	r2, [pc, #84]	; (8001a10 <offset_pwm_init+0xd4>)
 80019ba:	6812      	ldr	r2, [r2, #0]
 80019bc:	f042 6220 	orr.w	r2, r2, #167772160	; 0xa000000
 80019c0:	601a      	str	r2, [r3, #0]
 80019c2:	4b13      	ldr	r3, [pc, #76]	; (8001a10 <offset_pwm_init+0xd4>)
 80019c4:	4a12      	ldr	r2, [pc, #72]	; (8001a10 <offset_pwm_init+0xd4>)
 80019c6:	6892      	ldr	r2, [r2, #8]
 80019c8:	f042 6270 	orr.w	r2, r2, #251658240	; 0xf000000
 80019cc:	609a      	str	r2, [r3, #8]
 80019ce:	4b10      	ldr	r3, [pc, #64]	; (8001a10 <offset_pwm_init+0xd4>)
 80019d0:	4a0f      	ldr	r2, [pc, #60]	; (8001a10 <offset_pwm_init+0xd4>)
 80019d2:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80019d4:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 80019d8:	625a      	str	r2, [r3, #36]	; 0x24
 80019da:	4b0d      	ldr	r3, [pc, #52]	; (8001a10 <offset_pwm_init+0xd4>)
 80019dc:	4a0c      	ldr	r2, [pc, #48]	; (8001a10 <offset_pwm_init+0xd4>)
 80019de:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80019e0:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 80019e4:	625a      	str	r2, [r3, #36]	; 0x24
 80019e6:	4b0a      	ldr	r3, [pc, #40]	; (8001a10 <offset_pwm_init+0xd4>)
 80019e8:	4a09      	ldr	r2, [pc, #36]	; (8001a10 <offset_pwm_init+0xd4>)
 80019ea:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80019ec:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80019f0:	625a      	str	r2, [r3, #36]	; 0x24
 80019f2:	4b07      	ldr	r3, [pc, #28]	; (8001a10 <offset_pwm_init+0xd4>)
 80019f4:	4a06      	ldr	r2, [pc, #24]	; (8001a10 <offset_pwm_init+0xd4>)
 80019f6:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80019f8:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 80019fc:	625a      	str	r2, [r3, #36]	; 0x24
 80019fe:	46bd      	mov	sp, r7
 8001a00:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a04:	4770      	bx	lr
 8001a06:	bf00      	nop
 8001a08:	40023800 	.word	0x40023800
 8001a0c:	40000800 	.word	0x40000800
 8001a10:	40020c00 	.word	0x40020c00

08001a14 <dac_init>:
 8001a14:	b580      	push	{r7, lr}
 8001a16:	af00      	add	r7, sp, #0
 8001a18:	4b16      	ldr	r3, [pc, #88]	; (8001a74 <dac_init+0x60>)
 8001a1a:	4a16      	ldr	r2, [pc, #88]	; (8001a74 <dac_init+0x60>)
 8001a1c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001a1e:	f042 5200 	orr.w	r2, r2, #536870912	; 0x20000000
 8001a22:	641a      	str	r2, [r3, #64]	; 0x40
 8001a24:	4b14      	ldr	r3, [pc, #80]	; (8001a78 <dac_init+0x64>)
 8001a26:	4a14      	ldr	r2, [pc, #80]	; (8001a78 <dac_init+0x64>)
 8001a28:	6812      	ldr	r2, [r2, #0]
 8001a2a:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001a2e:	601a      	str	r2, [r3, #0]
 8001a30:	4b11      	ldr	r3, [pc, #68]	; (8001a78 <dac_init+0x64>)
 8001a32:	4a11      	ldr	r2, [pc, #68]	; (8001a78 <dac_init+0x64>)
 8001a34:	6812      	ldr	r2, [r2, #0]
 8001a36:	f442 7240 	orr.w	r2, r2, #768	; 0x300
 8001a3a:	601a      	str	r2, [r3, #0]
 8001a3c:	4b0e      	ldr	r3, [pc, #56]	; (8001a78 <dac_init+0x64>)
 8001a3e:	4a0e      	ldr	r2, [pc, #56]	; (8001a78 <dac_init+0x64>)
 8001a40:	6812      	ldr	r2, [r2, #0]
 8001a42:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8001a46:	601a      	str	r2, [r3, #0]
 8001a48:	4b0b      	ldr	r3, [pc, #44]	; (8001a78 <dac_init+0x64>)
 8001a4a:	4a0b      	ldr	r2, [pc, #44]	; (8001a78 <dac_init+0x64>)
 8001a4c:	6812      	ldr	r2, [r2, #0]
 8001a4e:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
 8001a52:	601a      	str	r2, [r3, #0]
 8001a54:	4b09      	ldr	r3, [pc, #36]	; (8001a7c <dac_init+0x68>)
 8001a56:	4a09      	ldr	r2, [pc, #36]	; (8001a7c <dac_init+0x68>)
 8001a58:	6812      	ldr	r2, [r2, #0]
 8001a5a:	f042 0201 	orr.w	r2, r2, #1
 8001a5e:	601a      	str	r2, [r3, #0]
 8001a60:	4b06      	ldr	r3, [pc, #24]	; (8001a7c <dac_init+0x68>)
 8001a62:	4a06      	ldr	r2, [pc, #24]	; (8001a7c <dac_init+0x68>)
 8001a64:	6812      	ldr	r2, [r2, #0]
 8001a66:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001a6a:	601a      	str	r2, [r3, #0]
 8001a6c:	f7ff ff66 	bl	800193c <offset_pwm_init>
 8001a70:	bd80      	pop	{r7, pc}
 8001a72:	bf00      	nop
 8001a74:	40023800 	.word	0x40023800
 8001a78:	40020000 	.word	0x40020000
 8001a7c:	40007400 	.word	0x40007400

08001a80 <dac_offset_set>:
 8001a80:	b480      	push	{r7}
 8001a82:	b083      	sub	sp, #12
 8001a84:	af00      	add	r7, sp, #0
 8001a86:	4603      	mov	r3, r0
 8001a88:	80fb      	strh	r3, [r7, #6]
 8001a8a:	4b04      	ldr	r3, [pc, #16]	; (8001a9c <dac_offset_set+0x1c>)
 8001a8c:	88fa      	ldrh	r2, [r7, #6]
 8001a8e:	635a      	str	r2, [r3, #52]	; 0x34
 8001a90:	370c      	adds	r7, #12
 8001a92:	46bd      	mov	sp, r7
 8001a94:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a98:	4770      	bx	lr
 8001a9a:	bf00      	nop
 8001a9c:	40000800 	.word	0x40000800

08001aa0 <NVIC_EnableIRQ>:
 8001aa0:	b480      	push	{r7}
 8001aa2:	b083      	sub	sp, #12
 8001aa4:	af00      	add	r7, sp, #0
 8001aa6:	4603      	mov	r3, r0
 8001aa8:	71fb      	strb	r3, [r7, #7]
 8001aaa:	4b08      	ldr	r3, [pc, #32]	; (8001acc <NVIC_EnableIRQ+0x2c>)
 8001aac:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8001ab0:	0952      	lsrs	r2, r2, #5
 8001ab2:	79f9      	ldrb	r1, [r7, #7]
 8001ab4:	f001 011f 	and.w	r1, r1, #31
 8001ab8:	2001      	movs	r0, #1
 8001aba:	fa00 f101 	lsl.w	r1, r0, r1
 8001abe:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8001ac2:	370c      	adds	r7, #12
 8001ac4:	46bd      	mov	sp, r7
 8001ac6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001aca:	4770      	bx	lr
 8001acc:	e000e100 	.word	0xe000e100

08001ad0 <start_trans>:
 8001ad0:	b480      	push	{r7}
 8001ad2:	b083      	sub	sp, #12
 8001ad4:	af00      	add	r7, sp, #0
 8001ad6:	6078      	str	r0, [r7, #4]
 8001ad8:	687a      	ldr	r2, [r7, #4]
 8001ada:	4b18      	ldr	r3, [pc, #96]	; (8001b3c <start_trans+0x6c>)
 8001adc:	601a      	str	r2, [r3, #0]
 8001ade:	4b18      	ldr	r3, [pc, #96]	; (8001b40 <start_trans+0x70>)
 8001ae0:	2200      	movs	r2, #0
 8001ae2:	601a      	str	r2, [r3, #0]
 8001ae4:	4b17      	ldr	r3, [pc, #92]	; (8001b44 <start_trans+0x74>)
 8001ae6:	4a17      	ldr	r2, [pc, #92]	; (8001b44 <start_trans+0x74>)
 8001ae8:	6952      	ldr	r2, [r2, #20]
 8001aea:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001aee:	615a      	str	r2, [r3, #20]
 8001af0:	4b15      	ldr	r3, [pc, #84]	; (8001b48 <start_trans+0x78>)
 8001af2:	4a15      	ldr	r2, [pc, #84]	; (8001b48 <start_trans+0x78>)
 8001af4:	8992      	ldrh	r2, [r2, #12]
 8001af6:	b292      	uxth	r2, r2
 8001af8:	f042 0208 	orr.w	r2, r2, #8
 8001afc:	b292      	uxth	r2, r2
 8001afe:	819a      	strh	r2, [r3, #12]
 8001b00:	4b11      	ldr	r3, [pc, #68]	; (8001b48 <start_trans+0x78>)
 8001b02:	4a11      	ldr	r2, [pc, #68]	; (8001b48 <start_trans+0x78>)
 8001b04:	8992      	ldrh	r2, [r2, #12]
 8001b06:	b292      	uxth	r2, r2
 8001b08:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8001b0c:	b292      	uxth	r2, r2
 8001b0e:	819a      	strh	r2, [r3, #12]
 8001b10:	4b0d      	ldr	r3, [pc, #52]	; (8001b48 <start_trans+0x78>)
 8001b12:	4a0b      	ldr	r2, [pc, #44]	; (8001b40 <start_trans+0x70>)
 8001b14:	6812      	ldr	r2, [r2, #0]
 8001b16:	490d      	ldr	r1, [pc, #52]	; (8001b4c <start_trans+0x7c>)
 8001b18:	5c8a      	ldrb	r2, [r1, r2]
 8001b1a:	809a      	strh	r2, [r3, #4]
 8001b1c:	4b08      	ldr	r3, [pc, #32]	; (8001b40 <start_trans+0x70>)
 8001b1e:	681b      	ldr	r3, [r3, #0]
 8001b20:	3301      	adds	r3, #1
 8001b22:	b2da      	uxtb	r2, r3
 8001b24:	4b06      	ldr	r3, [pc, #24]	; (8001b40 <start_trans+0x70>)
 8001b26:	601a      	str	r2, [r3, #0]
 8001b28:	4b04      	ldr	r3, [pc, #16]	; (8001b3c <start_trans+0x6c>)
 8001b2a:	681b      	ldr	r3, [r3, #0]
 8001b2c:	1e5a      	subs	r2, r3, #1
 8001b2e:	4b03      	ldr	r3, [pc, #12]	; (8001b3c <start_trans+0x6c>)
 8001b30:	601a      	str	r2, [r3, #0]
 8001b32:	370c      	adds	r7, #12
 8001b34:	46bd      	mov	sp, r7
 8001b36:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001b3a:	4770      	bx	lr
 8001b3c:	20000c80 	.word	0x20000c80
 8001b40:	20000c7c 	.word	0x20000c7c
 8001b44:	40020c00 	.word	0x40020c00
 8001b48:	40004800 	.word	0x40004800
 8001b4c:	20000b7c 	.word	0x20000b7c

08001b50 <modbus_init>:
 8001b50:	b580      	push	{r7, lr}
 8001b52:	af00      	add	r7, sp, #0
 8001b54:	4b40      	ldr	r3, [pc, #256]	; (8001c58 <modbus_init+0x108>)
 8001b56:	4a40      	ldr	r2, [pc, #256]	; (8001c58 <modbus_init+0x108>)
 8001b58:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001b5a:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8001b5e:	641a      	str	r2, [r3, #64]	; 0x40
 8001b60:	4b3e      	ldr	r3, [pc, #248]	; (8001c5c <modbus_init+0x10c>)
 8001b62:	2200      	movs	r2, #0
 8001b64:	819a      	strh	r2, [r3, #12]
 8001b66:	4b3d      	ldr	r3, [pc, #244]	; (8001c5c <modbus_init+0x10c>)
 8001b68:	4a3c      	ldr	r2, [pc, #240]	; (8001c5c <modbus_init+0x10c>)
 8001b6a:	8992      	ldrh	r2, [r2, #12]
 8001b6c:	b292      	uxth	r2, r2
 8001b6e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001b72:	b292      	uxth	r2, r2
 8001b74:	819a      	strh	r2, [r3, #12]
 8001b76:	4b39      	ldr	r3, [pc, #228]	; (8001c5c <modbus_init+0x10c>)
 8001b78:	4a38      	ldr	r2, [pc, #224]	; (8001c5c <modbus_init+0x10c>)
 8001b7a:	8992      	ldrh	r2, [r2, #12]
 8001b7c:	b292      	uxth	r2, r2
 8001b7e:	f042 0204 	orr.w	r2, r2, #4
 8001b82:	b292      	uxth	r2, r2
 8001b84:	819a      	strh	r2, [r3, #12]
 8001b86:	4b35      	ldr	r3, [pc, #212]	; (8001c5c <modbus_init+0x10c>)
 8001b88:	4a34      	ldr	r2, [pc, #208]	; (8001c5c <modbus_init+0x10c>)
 8001b8a:	8992      	ldrh	r2, [r2, #12]
 8001b8c:	b292      	uxth	r2, r2
 8001b8e:	f042 0220 	orr.w	r2, r2, #32
 8001b92:	b292      	uxth	r2, r2
 8001b94:	819a      	strh	r2, [r3, #12]
 8001b96:	4b31      	ldr	r3, [pc, #196]	; (8001c5c <modbus_init+0x10c>)
 8001b98:	4a30      	ldr	r2, [pc, #192]	; (8001c5c <modbus_init+0x10c>)
 8001b9a:	8992      	ldrh	r2, [r2, #12]
 8001b9c:	b292      	uxth	r2, r2
 8001b9e:	f042 0210 	orr.w	r2, r2, #16
 8001ba2:	b292      	uxth	r2, r2
 8001ba4:	819a      	strh	r2, [r3, #12]
 8001ba6:	2027      	movs	r0, #39	; 0x27
 8001ba8:	f7ff ff7a 	bl	8001aa0 <NVIC_EnableIRQ>
 8001bac:	4b2b      	ldr	r3, [pc, #172]	; (8001c5c <modbus_init+0x10c>)
 8001bae:	891b      	ldrh	r3, [r3, #8]
 8001bb0:	4b2a      	ldr	r3, [pc, #168]	; (8001c5c <modbus_init+0x10c>)
 8001bb2:	2200      	movs	r2, #0
 8001bb4:	811a      	strh	r2, [r3, #8]
 8001bb6:	4a29      	ldr	r2, [pc, #164]	; (8001c5c <modbus_init+0x10c>)
 8001bb8:	4b28      	ldr	r3, [pc, #160]	; (8001c5c <modbus_init+0x10c>)
 8001bba:	891b      	ldrh	r3, [r3, #8]
 8001bbc:	b29b      	uxth	r3, r3
 8001bbe:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8001bc2:	f043 0301 	orr.w	r3, r3, #1
 8001bc6:	b29b      	uxth	r3, r3
 8001bc8:	8113      	strh	r3, [r2, #8]
 8001bca:	4b23      	ldr	r3, [pc, #140]	; (8001c58 <modbus_init+0x108>)
 8001bcc:	4a22      	ldr	r2, [pc, #136]	; (8001c58 <modbus_init+0x108>)
 8001bce:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001bd0:	f042 0208 	orr.w	r2, r2, #8
 8001bd4:	631a      	str	r2, [r3, #48]	; 0x30
 8001bd6:	4b22      	ldr	r3, [pc, #136]	; (8001c60 <modbus_init+0x110>)
 8001bd8:	4a21      	ldr	r2, [pc, #132]	; (8001c60 <modbus_init+0x110>)
 8001bda:	6812      	ldr	r2, [r2, #0]
 8001bdc:	f422 1240 	bic.w	r2, r2, #3145728	; 0x300000
 8001be0:	601a      	str	r2, [r3, #0]
 8001be2:	4b1f      	ldr	r3, [pc, #124]	; (8001c60 <modbus_init+0x110>)
 8001be4:	4a1e      	ldr	r2, [pc, #120]	; (8001c60 <modbus_init+0x110>)
 8001be6:	6812      	ldr	r2, [r2, #0]
 8001be8:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
 8001bec:	601a      	str	r2, [r3, #0]
 8001bee:	4b1c      	ldr	r3, [pc, #112]	; (8001c60 <modbus_init+0x110>)
 8001bf0:	4a1b      	ldr	r2, [pc, #108]	; (8001c60 <modbus_init+0x110>)
 8001bf2:	6812      	ldr	r2, [r2, #0]
 8001bf4:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8001bf8:	601a      	str	r2, [r3, #0]
 8001bfa:	4b19      	ldr	r3, [pc, #100]	; (8001c60 <modbus_init+0x110>)
 8001bfc:	4a18      	ldr	r2, [pc, #96]	; (8001c60 <modbus_init+0x110>)
 8001bfe:	6812      	ldr	r2, [r2, #0]
 8001c00:	f442 2220 	orr.w	r2, r2, #655360	; 0xa0000
 8001c04:	601a      	str	r2, [r3, #0]
 8001c06:	4b16      	ldr	r3, [pc, #88]	; (8001c60 <modbus_init+0x110>)
 8001c08:	4a15      	ldr	r2, [pc, #84]	; (8001c60 <modbus_init+0x110>)
 8001c0a:	6892      	ldr	r2, [r2, #8]
 8001c0c:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
 8001c10:	609a      	str	r2, [r3, #8]
 8001c12:	4b13      	ldr	r3, [pc, #76]	; (8001c60 <modbus_init+0x110>)
 8001c14:	4a12      	ldr	r2, [pc, #72]	; (8001c60 <modbus_init+0x110>)
 8001c16:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001c18:	f022 020f 	bic.w	r2, r2, #15
 8001c1c:	625a      	str	r2, [r3, #36]	; 0x24
 8001c1e:	4b10      	ldr	r3, [pc, #64]	; (8001c60 <modbus_init+0x110>)
 8001c20:	4a0f      	ldr	r2, [pc, #60]	; (8001c60 <modbus_init+0x110>)
 8001c22:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001c24:	f042 0207 	orr.w	r2, r2, #7
 8001c28:	625a      	str	r2, [r3, #36]	; 0x24
 8001c2a:	4b0d      	ldr	r3, [pc, #52]	; (8001c60 <modbus_init+0x110>)
 8001c2c:	4a0c      	ldr	r2, [pc, #48]	; (8001c60 <modbus_init+0x110>)
 8001c2e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001c30:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8001c34:	625a      	str	r2, [r3, #36]	; 0x24
 8001c36:	4b0a      	ldr	r3, [pc, #40]	; (8001c60 <modbus_init+0x110>)
 8001c38:	4a09      	ldr	r2, [pc, #36]	; (8001c60 <modbus_init+0x110>)
 8001c3a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001c3c:	f042 0270 	orr.w	r2, r2, #112	; 0x70
 8001c40:	625a      	str	r2, [r3, #36]	; 0x24
 8001c42:	2000      	movs	r0, #0
 8001c44:	f7ff ff44 	bl	8001ad0 <start_trans>
 8001c48:	4b05      	ldr	r3, [pc, #20]	; (8001c60 <modbus_init+0x110>)
 8001c4a:	4a05      	ldr	r2, [pc, #20]	; (8001c60 <modbus_init+0x110>)
 8001c4c:	6952      	ldr	r2, [r2, #20]
 8001c4e:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001c52:	615a      	str	r2, [r3, #20]
 8001c54:	bd80      	pop	{r7, pc}
 8001c56:	bf00      	nop
 8001c58:	40023800 	.word	0x40023800
 8001c5c:	40004800 	.word	0x40004800
 8001c60:	40020c00 	.word	0x40020c00

08001c64 <USART3_IRQHandler>:
 8001c64:	b580      	push	{r7, lr}
 8001c66:	b082      	sub	sp, #8
 8001c68:	af00      	add	r7, sp, #0
 8001c6a:	4b37      	ldr	r3, [pc, #220]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001c6c:	881b      	ldrh	r3, [r3, #0]
 8001c6e:	b29b      	uxth	r3, r3
 8001c70:	f003 0310 	and.w	r3, r3, #16
 8001c74:	2b00      	cmp	r3, #0
 8001c76:	d00c      	beq.n	8001c92 <USART3_IRQHandler+0x2e>
 8001c78:	4b33      	ldr	r3, [pc, #204]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001c7a:	889b      	ldrh	r3, [r3, #4]
 8001c7c:	b29b      	uxth	r3, r3
 8001c7e:	71fb      	strb	r3, [r7, #7]
 8001c80:	f000 fe1a 	bl	80028b8 <proc_ADU>
 8001c84:	4b31      	ldr	r3, [pc, #196]	; (8001d4c <USART3_IRQHandler+0xe8>)
 8001c86:	681a      	ldr	r2, [r3, #0]
 8001c88:	4b31      	ldr	r3, [pc, #196]	; (8001d50 <USART3_IRQHandler+0xec>)
 8001c8a:	601a      	str	r2, [r3, #0]
 8001c8c:	4b2f      	ldr	r3, [pc, #188]	; (8001d4c <USART3_IRQHandler+0xe8>)
 8001c8e:	2200      	movs	r2, #0
 8001c90:	601a      	str	r2, [r3, #0]
 8001c92:	4b2d      	ldr	r3, [pc, #180]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001c94:	881b      	ldrh	r3, [r3, #0]
 8001c96:	b29b      	uxth	r3, r3
 8001c98:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001c9c:	2b00      	cmp	r3, #0
 8001c9e:	d01d      	beq.n	8001cdc <USART3_IRQHandler+0x78>
 8001ca0:	4b2c      	ldr	r3, [pc, #176]	; (8001d54 <USART3_IRQHandler+0xf0>)
 8001ca2:	681b      	ldr	r3, [r3, #0]
 8001ca4:	2b00      	cmp	r3, #0
 8001ca6:	d108      	bne.n	8001cba <USART3_IRQHandler+0x56>
 8001ca8:	4b27      	ldr	r3, [pc, #156]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001caa:	4a27      	ldr	r2, [pc, #156]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cac:	8992      	ldrh	r2, [r2, #12]
 8001cae:	b292      	uxth	r2, r2
 8001cb0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001cb4:	b292      	uxth	r2, r2
 8001cb6:	819a      	strh	r2, [r3, #12]
 8001cb8:	e010      	b.n	8001cdc <USART3_IRQHandler+0x78>
 8001cba:	4b23      	ldr	r3, [pc, #140]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cbc:	4a26      	ldr	r2, [pc, #152]	; (8001d58 <USART3_IRQHandler+0xf4>)
 8001cbe:	6812      	ldr	r2, [r2, #0]
 8001cc0:	4926      	ldr	r1, [pc, #152]	; (8001d5c <USART3_IRQHandler+0xf8>)
 8001cc2:	5c8a      	ldrb	r2, [r1, r2]
 8001cc4:	809a      	strh	r2, [r3, #4]
 8001cc6:	4b24      	ldr	r3, [pc, #144]	; (8001d58 <USART3_IRQHandler+0xf4>)
 8001cc8:	681b      	ldr	r3, [r3, #0]
 8001cca:	3301      	adds	r3, #1
 8001ccc:	b2da      	uxtb	r2, r3
 8001cce:	4b22      	ldr	r3, [pc, #136]	; (8001d58 <USART3_IRQHandler+0xf4>)
 8001cd0:	601a      	str	r2, [r3, #0]
 8001cd2:	4b20      	ldr	r3, [pc, #128]	; (8001d54 <USART3_IRQHandler+0xf0>)
 8001cd4:	681b      	ldr	r3, [r3, #0]
 8001cd6:	1e5a      	subs	r2, r3, #1
 8001cd8:	4b1e      	ldr	r3, [pc, #120]	; (8001d54 <USART3_IRQHandler+0xf0>)
 8001cda:	601a      	str	r2, [r3, #0]
 8001cdc:	4b1a      	ldr	r3, [pc, #104]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cde:	881b      	ldrh	r3, [r3, #0]
 8001ce0:	b29b      	uxth	r3, r3
 8001ce2:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001ce6:	2b00      	cmp	r3, #0
 8001ce8:	d015      	beq.n	8001d16 <USART3_IRQHandler+0xb2>
 8001cea:	4b17      	ldr	r3, [pc, #92]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cec:	4a16      	ldr	r2, [pc, #88]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cee:	8812      	ldrh	r2, [r2, #0]
 8001cf0:	b292      	uxth	r2, r2
 8001cf2:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8001cf6:	b292      	uxth	r2, r2
 8001cf8:	801a      	strh	r2, [r3, #0]
 8001cfa:	4b13      	ldr	r3, [pc, #76]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cfc:	4a12      	ldr	r2, [pc, #72]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001cfe:	8992      	ldrh	r2, [r2, #12]
 8001d00:	b292      	uxth	r2, r2
 8001d02:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 8001d06:	b292      	uxth	r2, r2
 8001d08:	819a      	strh	r2, [r3, #12]
 8001d0a:	4b15      	ldr	r3, [pc, #84]	; (8001d60 <USART3_IRQHandler+0xfc>)
 8001d0c:	4a14      	ldr	r2, [pc, #80]	; (8001d60 <USART3_IRQHandler+0xfc>)
 8001d0e:	6952      	ldr	r2, [r2, #20]
 8001d10:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001d14:	615a      	str	r2, [r3, #20]
 8001d16:	4b0c      	ldr	r3, [pc, #48]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001d18:	881b      	ldrh	r3, [r3, #0]
 8001d1a:	b29b      	uxth	r3, r3
 8001d1c:	f003 0320 	and.w	r3, r3, #32
 8001d20:	2b00      	cmp	r3, #0
 8001d22:	d00d      	beq.n	8001d40 <USART3_IRQHandler+0xdc>
 8001d24:	4b09      	ldr	r3, [pc, #36]	; (8001d4c <USART3_IRQHandler+0xe8>)
 8001d26:	681b      	ldr	r3, [r3, #0]
 8001d28:	4a07      	ldr	r2, [pc, #28]	; (8001d48 <USART3_IRQHandler+0xe4>)
 8001d2a:	8892      	ldrh	r2, [r2, #4]
 8001d2c:	b292      	uxth	r2, r2
 8001d2e:	b2d1      	uxtb	r1, r2
 8001d30:	4a0c      	ldr	r2, [pc, #48]	; (8001d64 <USART3_IRQHandler+0x100>)
 8001d32:	54d1      	strb	r1, [r2, r3]
 8001d34:	4b05      	ldr	r3, [pc, #20]	; (8001d4c <USART3_IRQHandler+0xe8>)
 8001d36:	681b      	ldr	r3, [r3, #0]
 8001d38:	3301      	adds	r3, #1
 8001d3a:	b2da      	uxtb	r2, r3
 8001d3c:	4b03      	ldr	r3, [pc, #12]	; (8001d4c <USART3_IRQHandler+0xe8>)
 8001d3e:	601a      	str	r2, [r3, #0]
 8001d40:	3708      	adds	r7, #8
 8001d42:	46bd      	mov	sp, r7
 8001d44:	bd80      	pop	{r7, pc}
 8001d46:	bf00      	nop
 8001d48:	40004800 	.word	0x40004800
 8001d4c:	20000b74 	.word	0x20000b74
 8001d50:	20000b78 	.word	0x20000b78
 8001d54:	20000c80 	.word	0x20000c80
 8001d58:	20000c7c 	.word	0x20000c7c
 8001d5c:	20000b7c 	.word	0x20000b7c
 8001d60:	40020c00 	.word	0x40020c00
 8001d64:	20000a74 	.word	0x20000a74

08001d68 <pack_bits_to_bytes>:
 8001d68:	b480      	push	{r7}
 8001d6a:	b089      	sub	sp, #36	; 0x24
 8001d6c:	af00      	add	r7, sp, #0
 8001d6e:	60f8      	str	r0, [r7, #12]
 8001d70:	60b9      	str	r1, [r7, #8]
 8001d72:	607a      	str	r2, [r7, #4]
 8001d74:	603b      	str	r3, [r7, #0]
 8001d76:	687b      	ldr	r3, [r7, #4]
 8001d78:	10db      	asrs	r3, r3, #3
 8001d7a:	61fb      	str	r3, [r7, #28]
 8001d7c:	687b      	ldr	r3, [r7, #4]
 8001d7e:	f003 0307 	and.w	r3, r3, #7
 8001d82:	617b      	str	r3, [r7, #20]
 8001d84:	2300      	movs	r3, #0
 8001d86:	61bb      	str	r3, [r7, #24]
 8001d88:	69fb      	ldr	r3, [r7, #28]
 8001d8a:	1c5a      	adds	r2, r3, #1
 8001d8c:	61fa      	str	r2, [r7, #28]
 8001d8e:	68ba      	ldr	r2, [r7, #8]
 8001d90:	4413      	add	r3, r2
 8001d92:	781b      	ldrb	r3, [r3, #0]
 8001d94:	461a      	mov	r2, r3
 8001d96:	697b      	ldr	r3, [r7, #20]
 8001d98:	fa42 f303 	asr.w	r3, r2, r3
 8001d9c:	74fb      	strb	r3, [r7, #19]
 8001d9e:	69fb      	ldr	r3, [r7, #28]
 8001da0:	68ba      	ldr	r2, [r7, #8]
 8001da2:	4413      	add	r3, r2
 8001da4:	781b      	ldrb	r3, [r3, #0]
 8001da6:	461a      	mov	r2, r3
 8001da8:	697b      	ldr	r3, [r7, #20]
 8001daa:	f1c3 0308 	rsb	r3, r3, #8
 8001dae:	fa02 f303 	lsl.w	r3, r2, r3
 8001db2:	b2da      	uxtb	r2, r3
 8001db4:	7cfb      	ldrb	r3, [r7, #19]
 8001db6:	4313      	orrs	r3, r2
 8001db8:	b2db      	uxtb	r3, r3
 8001dba:	74fb      	strb	r3, [r7, #19]
 8001dbc:	69bb      	ldr	r3, [r7, #24]
 8001dbe:	68fa      	ldr	r2, [r7, #12]
 8001dc0:	4413      	add	r3, r2
 8001dc2:	7cfa      	ldrb	r2, [r7, #19]
 8001dc4:	701a      	strb	r2, [r3, #0]
 8001dc6:	683b      	ldr	r3, [r7, #0]
 8001dc8:	2b08      	cmp	r3, #8
 8001dca:	dd06      	ble.n	8001dda <pack_bits_to_bytes+0x72>
 8001dcc:	683b      	ldr	r3, [r7, #0]
 8001dce:	3b08      	subs	r3, #8
 8001dd0:	603b      	str	r3, [r7, #0]
 8001dd2:	69bb      	ldr	r3, [r7, #24]
 8001dd4:	3301      	adds	r3, #1
 8001dd6:	61bb      	str	r3, [r7, #24]
 8001dd8:	e7d6      	b.n	8001d88 <pack_bits_to_bytes+0x20>
 8001dda:	69bb      	ldr	r3, [r7, #24]
 8001ddc:	68fa      	ldr	r2, [r7, #12]
 8001dde:	4413      	add	r3, r2
 8001de0:	69ba      	ldr	r2, [r7, #24]
 8001de2:	68f9      	ldr	r1, [r7, #12]
 8001de4:	440a      	add	r2, r1
 8001de6:	7812      	ldrb	r2, [r2, #0]
 8001de8:	b2d1      	uxtb	r1, r2
 8001dea:	683a      	ldr	r2, [r7, #0]
 8001dec:	f1c2 0208 	rsb	r2, r2, #8
 8001df0:	20ff      	movs	r0, #255	; 0xff
 8001df2:	fa40 f202 	asr.w	r2, r0, r2
 8001df6:	b2d2      	uxtb	r2, r2
 8001df8:	400a      	ands	r2, r1
 8001dfa:	b2d2      	uxtb	r2, r2
 8001dfc:	b2d2      	uxtb	r2, r2
 8001dfe:	701a      	strb	r2, [r3, #0]
 8001e00:	bf00      	nop
 8001e02:	69bb      	ldr	r3, [r7, #24]
 8001e04:	3301      	adds	r3, #1
 8001e06:	4618      	mov	r0, r3
 8001e08:	3724      	adds	r7, #36	; 0x24
 8001e0a:	46bd      	mov	sp, r7
 8001e0c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001e10:	4770      	bx	lr
 8001e12:	bf00      	nop

08001e14 <set_coil>:
 8001e14:	b480      	push	{r7}
 8001e16:	b085      	sub	sp, #20
 8001e18:	af00      	add	r7, sp, #0
 8001e1a:	6078      	str	r0, [r7, #4]
 8001e1c:	460b      	mov	r3, r1
 8001e1e:	70fb      	strb	r3, [r7, #3]
 8001e20:	687b      	ldr	r3, [r7, #4]
 8001e22:	3b13      	subs	r3, #19
 8001e24:	607b      	str	r3, [r7, #4]
 8001e26:	687b      	ldr	r3, [r7, #4]
 8001e28:	10db      	asrs	r3, r3, #3
 8001e2a:	60fb      	str	r3, [r7, #12]
 8001e2c:	687b      	ldr	r3, [r7, #4]
 8001e2e:	f003 0307 	and.w	r3, r3, #7
 8001e32:	60bb      	str	r3, [r7, #8]
 8001e34:	4a14      	ldr	r2, [pc, #80]	; (8001e88 <set_coil+0x74>)
 8001e36:	68fb      	ldr	r3, [r7, #12]
 8001e38:	4413      	add	r3, r2
 8001e3a:	781b      	ldrb	r3, [r3, #0]
 8001e3c:	b2da      	uxtb	r2, r3
 8001e3e:	2101      	movs	r1, #1
 8001e40:	68bb      	ldr	r3, [r7, #8]
 8001e42:	fa01 f303 	lsl.w	r3, r1, r3
 8001e46:	b2db      	uxtb	r3, r3
 8001e48:	43db      	mvns	r3, r3
 8001e4a:	b2db      	uxtb	r3, r3
 8001e4c:	4013      	ands	r3, r2
 8001e4e:	b2db      	uxtb	r3, r3
 8001e50:	b2da      	uxtb	r2, r3
 8001e52:	490d      	ldr	r1, [pc, #52]	; (8001e88 <set_coil+0x74>)
 8001e54:	68fb      	ldr	r3, [r7, #12]
 8001e56:	440b      	add	r3, r1
 8001e58:	701a      	strb	r2, [r3, #0]
 8001e5a:	4a0b      	ldr	r2, [pc, #44]	; (8001e88 <set_coil+0x74>)
 8001e5c:	68fb      	ldr	r3, [r7, #12]
 8001e5e:	4413      	add	r3, r2
 8001e60:	781b      	ldrb	r3, [r3, #0]
 8001e62:	b2da      	uxtb	r2, r3
 8001e64:	78f9      	ldrb	r1, [r7, #3]
 8001e66:	68bb      	ldr	r3, [r7, #8]
 8001e68:	fa01 f303 	lsl.w	r3, r1, r3
 8001e6c:	b2db      	uxtb	r3, r3
 8001e6e:	4313      	orrs	r3, r2
 8001e70:	b2db      	uxtb	r3, r3
 8001e72:	b2da      	uxtb	r2, r3
 8001e74:	4904      	ldr	r1, [pc, #16]	; (8001e88 <set_coil+0x74>)
 8001e76:	68fb      	ldr	r3, [r7, #12]
 8001e78:	440b      	add	r3, r1
 8001e7a:	701a      	strb	r2, [r3, #0]
 8001e7c:	3714      	adds	r7, #20
 8001e7e:	46bd      	mov	sp, r7
 8001e80:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001e84:	4770      	bx	lr
 8001e86:	bf00      	nop
 8001e88:	20000008 	.word	0x20000008

08001e8c <pdu_write_single_coil>:
 8001e8c:	b580      	push	{r7, lr}
 8001e8e:	b084      	sub	sp, #16
 8001e90:	af00      	add	r7, sp, #0
 8001e92:	4b3c      	ldr	r3, [pc, #240]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001e94:	785b      	ldrb	r3, [r3, #1]
 8001e96:	73fb      	strb	r3, [r7, #15]
 8001e98:	4b3a      	ldr	r3, [pc, #232]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001e9a:	789b      	ldrb	r3, [r3, #2]
 8001e9c:	021b      	lsls	r3, r3, #8
 8001e9e:	b29a      	uxth	r2, r3
 8001ea0:	4b38      	ldr	r3, [pc, #224]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001ea2:	78db      	ldrb	r3, [r3, #3]
 8001ea4:	4313      	orrs	r3, r2
 8001ea6:	b29b      	uxth	r3, r3
 8001ea8:	81bb      	strh	r3, [r7, #12]
 8001eaa:	4b36      	ldr	r3, [pc, #216]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001eac:	791b      	ldrb	r3, [r3, #4]
 8001eae:	021b      	lsls	r3, r3, #8
 8001eb0:	b29a      	uxth	r2, r3
 8001eb2:	4b34      	ldr	r3, [pc, #208]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001eb4:	795b      	ldrb	r3, [r3, #5]
 8001eb6:	4313      	orrs	r3, r2
 8001eb8:	b29b      	uxth	r3, r3
 8001eba:	817b      	strh	r3, [r7, #10]
 8001ebc:	2301      	movs	r3, #1
 8001ebe:	607b      	str	r3, [r7, #4]
 8001ec0:	89bb      	ldrh	r3, [r7, #12]
 8001ec2:	2b12      	cmp	r3, #18
 8001ec4:	d902      	bls.n	8001ecc <pdu_write_single_coil+0x40>
 8001ec6:	89bb      	ldrh	r3, [r7, #12]
 8001ec8:	2b37      	cmp	r3, #55	; 0x37
 8001eca:	d910      	bls.n	8001eee <pdu_write_single_coil+0x62>
 8001ecc:	687b      	ldr	r3, [r7, #4]
 8001ece:	1c5a      	adds	r2, r3, #1
 8001ed0:	607a      	str	r2, [r7, #4]
 8001ed2:	7bfa      	ldrb	r2, [r7, #15]
 8001ed4:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001ed8:	b2d1      	uxtb	r1, r2
 8001eda:	4a2b      	ldr	r2, [pc, #172]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001edc:	54d1      	strb	r1, [r2, r3]
 8001ede:	687b      	ldr	r3, [r7, #4]
 8001ee0:	1c5a      	adds	r2, r3, #1
 8001ee2:	607a      	str	r2, [r7, #4]
 8001ee4:	4a28      	ldr	r2, [pc, #160]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001ee6:	2102      	movs	r1, #2
 8001ee8:	54d1      	strb	r1, [r2, r3]
 8001eea:	687b      	ldr	r3, [r7, #4]
 8001eec:	e046      	b.n	8001f7c <pdu_write_single_coil+0xf0>
 8001eee:	897b      	ldrh	r3, [r7, #10]
 8001ef0:	2b00      	cmp	r3, #0
 8001ef2:	d105      	bne.n	8001f00 <pdu_write_single_coil+0x74>
 8001ef4:	89bb      	ldrh	r3, [r7, #12]
 8001ef6:	4618      	mov	r0, r3
 8001ef8:	2100      	movs	r1, #0
 8001efa:	f7ff ff8b 	bl	8001e14 <set_coil>
 8001efe:	e01a      	b.n	8001f36 <pdu_write_single_coil+0xaa>
 8001f00:	897b      	ldrh	r3, [r7, #10]
 8001f02:	f5b3 4f7f 	cmp.w	r3, #65280	; 0xff00
 8001f06:	d105      	bne.n	8001f14 <pdu_write_single_coil+0x88>
 8001f08:	89bb      	ldrh	r3, [r7, #12]
 8001f0a:	4618      	mov	r0, r3
 8001f0c:	2101      	movs	r1, #1
 8001f0e:	f7ff ff81 	bl	8001e14 <set_coil>
 8001f12:	e010      	b.n	8001f36 <pdu_write_single_coil+0xaa>
 8001f14:	687b      	ldr	r3, [r7, #4]
 8001f16:	1c5a      	adds	r2, r3, #1
 8001f18:	607a      	str	r2, [r7, #4]
 8001f1a:	7bfa      	ldrb	r2, [r7, #15]
 8001f1c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001f20:	b2d1      	uxtb	r1, r2
 8001f22:	4a19      	ldr	r2, [pc, #100]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f24:	54d1      	strb	r1, [r2, r3]
 8001f26:	687b      	ldr	r3, [r7, #4]
 8001f28:	1c5a      	adds	r2, r3, #1
 8001f2a:	607a      	str	r2, [r7, #4]
 8001f2c:	4a16      	ldr	r2, [pc, #88]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f2e:	2103      	movs	r1, #3
 8001f30:	54d1      	strb	r1, [r2, r3]
 8001f32:	687b      	ldr	r3, [r7, #4]
 8001f34:	e022      	b.n	8001f7c <pdu_write_single_coil+0xf0>
 8001f36:	687b      	ldr	r3, [r7, #4]
 8001f38:	1c5a      	adds	r2, r3, #1
 8001f3a:	607a      	str	r2, [r7, #4]
 8001f3c:	4a12      	ldr	r2, [pc, #72]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f3e:	7bf9      	ldrb	r1, [r7, #15]
 8001f40:	54d1      	strb	r1, [r2, r3]
 8001f42:	687b      	ldr	r3, [r7, #4]
 8001f44:	1c5a      	adds	r2, r3, #1
 8001f46:	607a      	str	r2, [r7, #4]
 8001f48:	4a0e      	ldr	r2, [pc, #56]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001f4a:	7891      	ldrb	r1, [r2, #2]
 8001f4c:	4a0e      	ldr	r2, [pc, #56]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f4e:	54d1      	strb	r1, [r2, r3]
 8001f50:	687b      	ldr	r3, [r7, #4]
 8001f52:	1c5a      	adds	r2, r3, #1
 8001f54:	607a      	str	r2, [r7, #4]
 8001f56:	4a0b      	ldr	r2, [pc, #44]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001f58:	78d1      	ldrb	r1, [r2, #3]
 8001f5a:	4a0b      	ldr	r2, [pc, #44]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f5c:	54d1      	strb	r1, [r2, r3]
 8001f5e:	687b      	ldr	r3, [r7, #4]
 8001f60:	1c5a      	adds	r2, r3, #1
 8001f62:	607a      	str	r2, [r7, #4]
 8001f64:	4a07      	ldr	r2, [pc, #28]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001f66:	7911      	ldrb	r1, [r2, #4]
 8001f68:	4a07      	ldr	r2, [pc, #28]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f6a:	54d1      	strb	r1, [r2, r3]
 8001f6c:	687b      	ldr	r3, [r7, #4]
 8001f6e:	1c5a      	adds	r2, r3, #1
 8001f70:	607a      	str	r2, [r7, #4]
 8001f72:	4a04      	ldr	r2, [pc, #16]	; (8001f84 <pdu_write_single_coil+0xf8>)
 8001f74:	7951      	ldrb	r1, [r2, #5]
 8001f76:	4a04      	ldr	r2, [pc, #16]	; (8001f88 <pdu_write_single_coil+0xfc>)
 8001f78:	54d1      	strb	r1, [r2, r3]
 8001f7a:	687b      	ldr	r3, [r7, #4]
 8001f7c:	4618      	mov	r0, r3
 8001f7e:	3710      	adds	r7, #16
 8001f80:	46bd      	mov	sp, r7
 8001f82:	bd80      	pop	{r7, pc}
 8001f84:	20000a74 	.word	0x20000a74
 8001f88:	20000b7c 	.word	0x20000b7c

08001f8c <pdu_write_multiply_coils>:
 8001f8c:	b580      	push	{r7, lr}
 8001f8e:	b086      	sub	sp, #24
 8001f90:	af00      	add	r7, sp, #0
 8001f92:	4b43      	ldr	r3, [pc, #268]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8001f94:	785b      	ldrb	r3, [r3, #1]
 8001f96:	72bb      	strb	r3, [r7, #10]
 8001f98:	4b41      	ldr	r3, [pc, #260]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8001f9a:	789b      	ldrb	r3, [r3, #2]
 8001f9c:	021b      	lsls	r3, r3, #8
 8001f9e:	b29a      	uxth	r2, r3
 8001fa0:	4b3f      	ldr	r3, [pc, #252]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8001fa2:	78db      	ldrb	r3, [r3, #3]
 8001fa4:	4313      	orrs	r3, r2
 8001fa6:	b29b      	uxth	r3, r3
 8001fa8:	82fb      	strh	r3, [r7, #22]
 8001faa:	4b3d      	ldr	r3, [pc, #244]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8001fac:	791b      	ldrb	r3, [r3, #4]
 8001fae:	021b      	lsls	r3, r3, #8
 8001fb0:	b29a      	uxth	r2, r3
 8001fb2:	4b3b      	ldr	r3, [pc, #236]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8001fb4:	795b      	ldrb	r3, [r3, #5]
 8001fb6:	4313      	orrs	r3, r2
 8001fb8:	b29b      	uxth	r3, r3
 8001fba:	813b      	strh	r3, [r7, #8]
 8001fbc:	4b38      	ldr	r3, [pc, #224]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8001fbe:	799b      	ldrb	r3, [r3, #6]
 8001fc0:	71fb      	strb	r3, [r7, #7]
 8001fc2:	2301      	movs	r3, #1
 8001fc4:	603b      	str	r3, [r7, #0]
 8001fc6:	8afb      	ldrh	r3, [r7, #22]
 8001fc8:	2b12      	cmp	r3, #18
 8001fca:	d904      	bls.n	8001fd6 <pdu_write_multiply_coils+0x4a>
 8001fcc:	8afa      	ldrh	r2, [r7, #22]
 8001fce:	893b      	ldrh	r3, [r7, #8]
 8001fd0:	4413      	add	r3, r2
 8001fd2:	2b38      	cmp	r3, #56	; 0x38
 8001fd4:	dd10      	ble.n	8001ff8 <pdu_write_multiply_coils+0x6c>
 8001fd6:	683b      	ldr	r3, [r7, #0]
 8001fd8:	1c5a      	adds	r2, r3, #1
 8001fda:	603a      	str	r2, [r7, #0]
 8001fdc:	7aba      	ldrb	r2, [r7, #10]
 8001fde:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8001fe2:	b2d1      	uxtb	r1, r2
 8001fe4:	4a2f      	ldr	r2, [pc, #188]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 8001fe6:	54d1      	strb	r1, [r2, r3]
 8001fe8:	683b      	ldr	r3, [r7, #0]
 8001fea:	1c5a      	adds	r2, r3, #1
 8001fec:	603a      	str	r2, [r7, #0]
 8001fee:	4a2d      	ldr	r2, [pc, #180]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 8001ff0:	2102      	movs	r1, #2
 8001ff2:	54d1      	strb	r1, [r2, r3]
 8001ff4:	683b      	ldr	r3, [r7, #0]
 8001ff6:	e04f      	b.n	8002098 <pdu_write_multiply_coils+0x10c>
 8001ff8:	2300      	movs	r3, #0
 8001ffa:	613b      	str	r3, [r7, #16]
 8001ffc:	e025      	b.n	800204a <pdu_write_multiply_coils+0xbe>
 8001ffe:	693b      	ldr	r3, [r7, #16]
 8002000:	3307      	adds	r3, #7
 8002002:	4a27      	ldr	r2, [pc, #156]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8002004:	5cd3      	ldrb	r3, [r2, r3]
 8002006:	72fb      	strb	r3, [r7, #11]
 8002008:	2300      	movs	r3, #0
 800200a:	60fb      	str	r3, [r7, #12]
 800200c:	e017      	b.n	800203e <pdu_write_multiply_coils+0xb2>
 800200e:	8afb      	ldrh	r3, [r7, #22]
 8002010:	1c5a      	adds	r2, r3, #1
 8002012:	82fa      	strh	r2, [r7, #22]
 8002014:	461a      	mov	r2, r3
 8002016:	7afb      	ldrb	r3, [r7, #11]
 8002018:	f003 0301 	and.w	r3, r3, #1
 800201c:	b2db      	uxtb	r3, r3
 800201e:	4610      	mov	r0, r2
 8002020:	4619      	mov	r1, r3
 8002022:	f7ff fef7 	bl	8001e14 <set_coil>
 8002026:	8afa      	ldrh	r2, [r7, #22]
 8002028:	893b      	ldrh	r3, [r7, #8]
 800202a:	3313      	adds	r3, #19
 800202c:	429a      	cmp	r2, r3
 800202e:	d100      	bne.n	8002032 <pdu_write_multiply_coils+0xa6>
 8002030:	e008      	b.n	8002044 <pdu_write_multiply_coils+0xb8>
 8002032:	7afb      	ldrb	r3, [r7, #11]
 8002034:	085b      	lsrs	r3, r3, #1
 8002036:	72fb      	strb	r3, [r7, #11]
 8002038:	68fb      	ldr	r3, [r7, #12]
 800203a:	3301      	adds	r3, #1
 800203c:	60fb      	str	r3, [r7, #12]
 800203e:	68fb      	ldr	r3, [r7, #12]
 8002040:	2b07      	cmp	r3, #7
 8002042:	dde4      	ble.n	800200e <pdu_write_multiply_coils+0x82>
 8002044:	693b      	ldr	r3, [r7, #16]
 8002046:	3301      	adds	r3, #1
 8002048:	613b      	str	r3, [r7, #16]
 800204a:	79fa      	ldrb	r2, [r7, #7]
 800204c:	693b      	ldr	r3, [r7, #16]
 800204e:	429a      	cmp	r2, r3
 8002050:	dcd5      	bgt.n	8001ffe <pdu_write_multiply_coils+0x72>
 8002052:	683b      	ldr	r3, [r7, #0]
 8002054:	1c5a      	adds	r2, r3, #1
 8002056:	603a      	str	r2, [r7, #0]
 8002058:	4a12      	ldr	r2, [pc, #72]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 800205a:	7ab9      	ldrb	r1, [r7, #10]
 800205c:	54d1      	strb	r1, [r2, r3]
 800205e:	683b      	ldr	r3, [r7, #0]
 8002060:	1c5a      	adds	r2, r3, #1
 8002062:	603a      	str	r2, [r7, #0]
 8002064:	4a0e      	ldr	r2, [pc, #56]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8002066:	7891      	ldrb	r1, [r2, #2]
 8002068:	4a0e      	ldr	r2, [pc, #56]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 800206a:	54d1      	strb	r1, [r2, r3]
 800206c:	683b      	ldr	r3, [r7, #0]
 800206e:	1c5a      	adds	r2, r3, #1
 8002070:	603a      	str	r2, [r7, #0]
 8002072:	4a0b      	ldr	r2, [pc, #44]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8002074:	78d1      	ldrb	r1, [r2, #3]
 8002076:	4a0b      	ldr	r2, [pc, #44]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 8002078:	54d1      	strb	r1, [r2, r3]
 800207a:	683b      	ldr	r3, [r7, #0]
 800207c:	1c5a      	adds	r2, r3, #1
 800207e:	603a      	str	r2, [r7, #0]
 8002080:	4a07      	ldr	r2, [pc, #28]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8002082:	7911      	ldrb	r1, [r2, #4]
 8002084:	4a07      	ldr	r2, [pc, #28]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 8002086:	54d1      	strb	r1, [r2, r3]
 8002088:	683b      	ldr	r3, [r7, #0]
 800208a:	1c5a      	adds	r2, r3, #1
 800208c:	603a      	str	r2, [r7, #0]
 800208e:	4a04      	ldr	r2, [pc, #16]	; (80020a0 <pdu_write_multiply_coils+0x114>)
 8002090:	7951      	ldrb	r1, [r2, #5]
 8002092:	4a04      	ldr	r2, [pc, #16]	; (80020a4 <pdu_write_multiply_coils+0x118>)
 8002094:	54d1      	strb	r1, [r2, r3]
 8002096:	683b      	ldr	r3, [r7, #0]
 8002098:	4618      	mov	r0, r3
 800209a:	3718      	adds	r7, #24
 800209c:	46bd      	mov	sp, r7
 800209e:	bd80      	pop	{r7, pc}
 80020a0:	20000a74 	.word	0x20000a74
 80020a4:	20000b7c 	.word	0x20000b7c

080020a8 <pdu_read_coils>:
 80020a8:	b580      	push	{r7, lr}
 80020aa:	b084      	sub	sp, #16
 80020ac:	af00      	add	r7, sp, #0
 80020ae:	4b28      	ldr	r3, [pc, #160]	; (8002150 <pdu_read_coils+0xa8>)
 80020b0:	785b      	ldrb	r3, [r3, #1]
 80020b2:	73fb      	strb	r3, [r7, #15]
 80020b4:	4b26      	ldr	r3, [pc, #152]	; (8002150 <pdu_read_coils+0xa8>)
 80020b6:	789b      	ldrb	r3, [r3, #2]
 80020b8:	021b      	lsls	r3, r3, #8
 80020ba:	b29a      	uxth	r2, r3
 80020bc:	4b24      	ldr	r3, [pc, #144]	; (8002150 <pdu_read_coils+0xa8>)
 80020be:	78db      	ldrb	r3, [r3, #3]
 80020c0:	4313      	orrs	r3, r2
 80020c2:	b29b      	uxth	r3, r3
 80020c4:	81bb      	strh	r3, [r7, #12]
 80020c6:	4b22      	ldr	r3, [pc, #136]	; (8002150 <pdu_read_coils+0xa8>)
 80020c8:	791b      	ldrb	r3, [r3, #4]
 80020ca:	021b      	lsls	r3, r3, #8
 80020cc:	b29a      	uxth	r2, r3
 80020ce:	4b20      	ldr	r3, [pc, #128]	; (8002150 <pdu_read_coils+0xa8>)
 80020d0:	795b      	ldrb	r3, [r3, #5]
 80020d2:	4313      	orrs	r3, r2
 80020d4:	b29b      	uxth	r3, r3
 80020d6:	817b      	strh	r3, [r7, #10]
 80020d8:	2301      	movs	r3, #1
 80020da:	607b      	str	r3, [r7, #4]
 80020dc:	89bb      	ldrh	r3, [r7, #12]
 80020de:	2b12      	cmp	r3, #18
 80020e0:	d904      	bls.n	80020ec <pdu_read_coils+0x44>
 80020e2:	89ba      	ldrh	r2, [r7, #12]
 80020e4:	897b      	ldrh	r3, [r7, #10]
 80020e6:	4413      	add	r3, r2
 80020e8:	2b38      	cmp	r3, #56	; 0x38
 80020ea:	dd10      	ble.n	800210e <pdu_read_coils+0x66>
 80020ec:	687b      	ldr	r3, [r7, #4]
 80020ee:	1c5a      	adds	r2, r3, #1
 80020f0:	607a      	str	r2, [r7, #4]
 80020f2:	7bfa      	ldrb	r2, [r7, #15]
 80020f4:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80020f8:	b2d1      	uxtb	r1, r2
 80020fa:	4a16      	ldr	r2, [pc, #88]	; (8002154 <pdu_read_coils+0xac>)
 80020fc:	54d1      	strb	r1, [r2, r3]
 80020fe:	687b      	ldr	r3, [r7, #4]
 8002100:	1c5a      	adds	r2, r3, #1
 8002102:	607a      	str	r2, [r7, #4]
 8002104:	4a13      	ldr	r2, [pc, #76]	; (8002154 <pdu_read_coils+0xac>)
 8002106:	2102      	movs	r1, #2
 8002108:	54d1      	strb	r1, [r2, r3]
 800210a:	687b      	ldr	r3, [r7, #4]
 800210c:	e01b      	b.n	8002146 <pdu_read_coils+0x9e>
 800210e:	687b      	ldr	r3, [r7, #4]
 8002110:	1c5a      	adds	r2, r3, #1
 8002112:	607a      	str	r2, [r7, #4]
 8002114:	4a0f      	ldr	r2, [pc, #60]	; (8002154 <pdu_read_coils+0xac>)
 8002116:	7bf9      	ldrb	r1, [r7, #15]
 8002118:	54d1      	strb	r1, [r2, r3]
 800211a:	687b      	ldr	r3, [r7, #4]
 800211c:	3301      	adds	r3, #1
 800211e:	607b      	str	r3, [r7, #4]
 8002120:	687a      	ldr	r2, [r7, #4]
 8002122:	4b0c      	ldr	r3, [pc, #48]	; (8002154 <pdu_read_coils+0xac>)
 8002124:	18d1      	adds	r1, r2, r3
 8002126:	89bb      	ldrh	r3, [r7, #12]
 8002128:	f1a3 0213 	sub.w	r2, r3, #19
 800212c:	897b      	ldrh	r3, [r7, #10]
 800212e:	4608      	mov	r0, r1
 8002130:	4909      	ldr	r1, [pc, #36]	; (8002158 <pdu_read_coils+0xb0>)
 8002132:	f7ff fe19 	bl	8001d68 <pack_bits_to_bytes>
 8002136:	6038      	str	r0, [r7, #0]
 8002138:	683b      	ldr	r3, [r7, #0]
 800213a:	b2da      	uxtb	r2, r3
 800213c:	4b05      	ldr	r3, [pc, #20]	; (8002154 <pdu_read_coils+0xac>)
 800213e:	709a      	strb	r2, [r3, #2]
 8002140:	683a      	ldr	r2, [r7, #0]
 8002142:	687b      	ldr	r3, [r7, #4]
 8002144:	4413      	add	r3, r2
 8002146:	4618      	mov	r0, r3
 8002148:	3710      	adds	r7, #16
 800214a:	46bd      	mov	sp, r7
 800214c:	bd80      	pop	{r7, pc}
 800214e:	bf00      	nop
 8002150:	20000a74 	.word	0x20000a74
 8002154:	20000b7c 	.word	0x20000b7c
 8002158:	20000008 	.word	0x20000008

0800215c <pdu_read_discrete_inputs>:
 800215c:	b580      	push	{r7, lr}
 800215e:	b084      	sub	sp, #16
 8002160:	af00      	add	r7, sp, #0
 8002162:	4b28      	ldr	r3, [pc, #160]	; (8002204 <pdu_read_discrete_inputs+0xa8>)
 8002164:	785b      	ldrb	r3, [r3, #1]
 8002166:	73fb      	strb	r3, [r7, #15]
 8002168:	4b26      	ldr	r3, [pc, #152]	; (8002204 <pdu_read_discrete_inputs+0xa8>)
 800216a:	789b      	ldrb	r3, [r3, #2]
 800216c:	021b      	lsls	r3, r3, #8
 800216e:	b29a      	uxth	r2, r3
 8002170:	4b24      	ldr	r3, [pc, #144]	; (8002204 <pdu_read_discrete_inputs+0xa8>)
 8002172:	78db      	ldrb	r3, [r3, #3]
 8002174:	4313      	orrs	r3, r2
 8002176:	b29b      	uxth	r3, r3
 8002178:	81bb      	strh	r3, [r7, #12]
 800217a:	4b22      	ldr	r3, [pc, #136]	; (8002204 <pdu_read_discrete_inputs+0xa8>)
 800217c:	791b      	ldrb	r3, [r3, #4]
 800217e:	021b      	lsls	r3, r3, #8
 8002180:	b29a      	uxth	r2, r3
 8002182:	4b20      	ldr	r3, [pc, #128]	; (8002204 <pdu_read_discrete_inputs+0xa8>)
 8002184:	795b      	ldrb	r3, [r3, #5]
 8002186:	4313      	orrs	r3, r2
 8002188:	b29b      	uxth	r3, r3
 800218a:	817b      	strh	r3, [r7, #10]
 800218c:	2301      	movs	r3, #1
 800218e:	607b      	str	r3, [r7, #4]
 8002190:	89bb      	ldrh	r3, [r7, #12]
 8002192:	2bc3      	cmp	r3, #195	; 0xc3
 8002194:	d904      	bls.n	80021a0 <pdu_read_discrete_inputs+0x44>
 8002196:	89ba      	ldrh	r2, [r7, #12]
 8002198:	897b      	ldrh	r3, [r7, #10]
 800219a:	4413      	add	r3, r2
 800219c:	2bda      	cmp	r3, #218	; 0xda
 800219e:	dd10      	ble.n	80021c2 <pdu_read_discrete_inputs+0x66>
 80021a0:	687b      	ldr	r3, [r7, #4]
 80021a2:	1c5a      	adds	r2, r3, #1
 80021a4:	607a      	str	r2, [r7, #4]
 80021a6:	7bfa      	ldrb	r2, [r7, #15]
 80021a8:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80021ac:	b2d1      	uxtb	r1, r2
 80021ae:	4a16      	ldr	r2, [pc, #88]	; (8002208 <pdu_read_discrete_inputs+0xac>)
 80021b0:	54d1      	strb	r1, [r2, r3]
 80021b2:	687b      	ldr	r3, [r7, #4]
 80021b4:	1c5a      	adds	r2, r3, #1
 80021b6:	607a      	str	r2, [r7, #4]
 80021b8:	4a13      	ldr	r2, [pc, #76]	; (8002208 <pdu_read_discrete_inputs+0xac>)
 80021ba:	2102      	movs	r1, #2
 80021bc:	54d1      	strb	r1, [r2, r3]
 80021be:	687b      	ldr	r3, [r7, #4]
 80021c0:	e01b      	b.n	80021fa <pdu_read_discrete_inputs+0x9e>
 80021c2:	687b      	ldr	r3, [r7, #4]
 80021c4:	1c5a      	adds	r2, r3, #1
 80021c6:	607a      	str	r2, [r7, #4]
 80021c8:	4a0f      	ldr	r2, [pc, #60]	; (8002208 <pdu_read_discrete_inputs+0xac>)
 80021ca:	7bf9      	ldrb	r1, [r7, #15]
 80021cc:	54d1      	strb	r1, [r2, r3]
 80021ce:	687b      	ldr	r3, [r7, #4]
 80021d0:	3301      	adds	r3, #1
 80021d2:	607b      	str	r3, [r7, #4]
 80021d4:	687a      	ldr	r2, [r7, #4]
 80021d6:	4b0c      	ldr	r3, [pc, #48]	; (8002208 <pdu_read_discrete_inputs+0xac>)
 80021d8:	18d1      	adds	r1, r2, r3
 80021da:	89bb      	ldrh	r3, [r7, #12]
 80021dc:	f1a3 02c4 	sub.w	r2, r3, #196	; 0xc4
 80021e0:	897b      	ldrh	r3, [r7, #10]
 80021e2:	4608      	mov	r0, r1
 80021e4:	4909      	ldr	r1, [pc, #36]	; (800220c <pdu_read_discrete_inputs+0xb0>)
 80021e6:	f7ff fdbf 	bl	8001d68 <pack_bits_to_bytes>
 80021ea:	6038      	str	r0, [r7, #0]
 80021ec:	683b      	ldr	r3, [r7, #0]
 80021ee:	b2da      	uxtb	r2, r3
 80021f0:	4b05      	ldr	r3, [pc, #20]	; (8002208 <pdu_read_discrete_inputs+0xac>)
 80021f2:	709a      	strb	r2, [r3, #2]
 80021f4:	683a      	ldr	r2, [r7, #0]
 80021f6:	687b      	ldr	r3, [r7, #4]
 80021f8:	4413      	add	r3, r2
 80021fa:	4618      	mov	r0, r3
 80021fc:	3710      	adds	r7, #16
 80021fe:	46bd      	mov	sp, r7
 8002200:	bd80      	pop	{r7, pc}
 8002202:	bf00      	nop
 8002204:	20000a74 	.word	0x20000a74
 8002208:	20000b7c 	.word	0x20000b7c
 800220c:	20000010 	.word	0x20000010

08002210 <pdu_report_server_id>:
 8002210:	b480      	push	{r7}
 8002212:	b085      	sub	sp, #20
 8002214:	af00      	add	r7, sp, #0
 8002216:	2316      	movs	r3, #22
 8002218:	607b      	str	r3, [r7, #4]
 800221a:	4b1d      	ldr	r3, [pc, #116]	; (8002290 <pdu_report_server_id+0x80>)
 800221c:	785b      	ldrb	r3, [r3, #1]
 800221e:	70fb      	strb	r3, [r7, #3]
 8002220:	2301      	movs	r3, #1
 8002222:	60fb      	str	r3, [r7, #12]
 8002224:	68fb      	ldr	r3, [r7, #12]
 8002226:	1c5a      	adds	r2, r3, #1
 8002228:	60fa      	str	r2, [r7, #12]
 800222a:	4a1a      	ldr	r2, [pc, #104]	; (8002294 <pdu_report_server_id+0x84>)
 800222c:	78f9      	ldrb	r1, [r7, #3]
 800222e:	54d1      	strb	r1, [r2, r3]
 8002230:	68fb      	ldr	r3, [r7, #12]
 8002232:	1c5a      	adds	r2, r3, #1
 8002234:	60fa      	str	r2, [r7, #12]
 8002236:	687a      	ldr	r2, [r7, #4]
 8002238:	b2d2      	uxtb	r2, r2
 800223a:	3202      	adds	r2, #2
 800223c:	b2d1      	uxtb	r1, r2
 800223e:	4a15      	ldr	r2, [pc, #84]	; (8002294 <pdu_report_server_id+0x84>)
 8002240:	54d1      	strb	r1, [r2, r3]
 8002242:	68fb      	ldr	r3, [r7, #12]
 8002244:	1c5a      	adds	r2, r3, #1
 8002246:	60fa      	str	r2, [r7, #12]
 8002248:	4a12      	ldr	r2, [pc, #72]	; (8002294 <pdu_report_server_id+0x84>)
 800224a:	2111      	movs	r1, #17
 800224c:	54d1      	strb	r1, [r2, r3]
 800224e:	68fb      	ldr	r3, [r7, #12]
 8002250:	1c5a      	adds	r2, r3, #1
 8002252:	60fa      	str	r2, [r7, #12]
 8002254:	4a0f      	ldr	r2, [pc, #60]	; (8002294 <pdu_report_server_id+0x84>)
 8002256:	21ff      	movs	r1, #255	; 0xff
 8002258:	54d1      	strb	r1, [r2, r3]
 800225a:	2300      	movs	r3, #0
 800225c:	60bb      	str	r3, [r7, #8]
 800225e:	e00b      	b.n	8002278 <pdu_report_server_id+0x68>
 8002260:	68fb      	ldr	r3, [r7, #12]
 8002262:	1c5a      	adds	r2, r3, #1
 8002264:	60fa      	str	r2, [r7, #12]
 8002266:	490c      	ldr	r1, [pc, #48]	; (8002298 <pdu_report_server_id+0x88>)
 8002268:	68ba      	ldr	r2, [r7, #8]
 800226a:	440a      	add	r2, r1
 800226c:	7811      	ldrb	r1, [r2, #0]
 800226e:	4a09      	ldr	r2, [pc, #36]	; (8002294 <pdu_report_server_id+0x84>)
 8002270:	54d1      	strb	r1, [r2, r3]
 8002272:	68bb      	ldr	r3, [r7, #8]
 8002274:	3301      	adds	r3, #1
 8002276:	60bb      	str	r3, [r7, #8]
 8002278:	68ba      	ldr	r2, [r7, #8]
 800227a:	687b      	ldr	r3, [r7, #4]
 800227c:	429a      	cmp	r2, r3
 800227e:	dbef      	blt.n	8002260 <pdu_report_server_id+0x50>
 8002280:	68fb      	ldr	r3, [r7, #12]
 8002282:	4618      	mov	r0, r3
 8002284:	3714      	adds	r7, #20
 8002286:	46bd      	mov	sp, r7
 8002288:	f85d 7b04 	ldr.w	r7, [sp], #4
 800228c:	4770      	bx	lr
 800228e:	bf00      	nop
 8002290:	20000a74 	.word	0x20000a74
 8002294:	20000b7c 	.word	0x20000b7c
 8002298:	08004ab0 	.word	0x08004ab0

0800229c <pdu_diagnostics>:
 800229c:	b480      	push	{r7}
 800229e:	b085      	sub	sp, #20
 80022a0:	af00      	add	r7, sp, #0
 80022a2:	4b1e      	ldr	r3, [pc, #120]	; (800231c <pdu_diagnostics+0x80>)
 80022a4:	785b      	ldrb	r3, [r3, #1]
 80022a6:	71fb      	strb	r3, [r7, #7]
 80022a8:	4b1c      	ldr	r3, [pc, #112]	; (800231c <pdu_diagnostics+0x80>)
 80022aa:	789b      	ldrb	r3, [r3, #2]
 80022ac:	021b      	lsls	r3, r3, #8
 80022ae:	b29a      	uxth	r2, r3
 80022b0:	4b1a      	ldr	r3, [pc, #104]	; (800231c <pdu_diagnostics+0x80>)
 80022b2:	78db      	ldrb	r3, [r3, #3]
 80022b4:	4313      	orrs	r3, r2
 80022b6:	b29b      	uxth	r3, r3
 80022b8:	80bb      	strh	r3, [r7, #4]
 80022ba:	2301      	movs	r3, #1
 80022bc:	60bb      	str	r3, [r7, #8]
 80022be:	88bb      	ldrh	r3, [r7, #4]
 80022c0:	2b00      	cmp	r3, #0
 80022c2:	d114      	bne.n	80022ee <pdu_diagnostics+0x52>
 80022c4:	2301      	movs	r3, #1
 80022c6:	60fb      	str	r3, [r7, #12]
 80022c8:	e00b      	b.n	80022e2 <pdu_diagnostics+0x46>
 80022ca:	68bb      	ldr	r3, [r7, #8]
 80022cc:	1c5a      	adds	r2, r3, #1
 80022ce:	60ba      	str	r2, [r7, #8]
 80022d0:	4912      	ldr	r1, [pc, #72]	; (800231c <pdu_diagnostics+0x80>)
 80022d2:	68fa      	ldr	r2, [r7, #12]
 80022d4:	440a      	add	r2, r1
 80022d6:	7811      	ldrb	r1, [r2, #0]
 80022d8:	4a11      	ldr	r2, [pc, #68]	; (8002320 <pdu_diagnostics+0x84>)
 80022da:	54d1      	strb	r1, [r2, r3]
 80022dc:	68fb      	ldr	r3, [r7, #12]
 80022de:	3301      	adds	r3, #1
 80022e0:	60fb      	str	r3, [r7, #12]
 80022e2:	68fa      	ldr	r2, [r7, #12]
 80022e4:	4b0f      	ldr	r3, [pc, #60]	; (8002324 <pdu_diagnostics+0x88>)
 80022e6:	681b      	ldr	r3, [r3, #0]
 80022e8:	429a      	cmp	r2, r3
 80022ea:	d3ee      	bcc.n	80022ca <pdu_diagnostics+0x2e>
 80022ec:	e00e      	b.n	800230c <pdu_diagnostics+0x70>
 80022ee:	68bb      	ldr	r3, [r7, #8]
 80022f0:	1c5a      	adds	r2, r3, #1
 80022f2:	60ba      	str	r2, [r7, #8]
 80022f4:	79fa      	ldrb	r2, [r7, #7]
 80022f6:	f062 027f 	orn	r2, r2, #127	; 0x7f
 80022fa:	b2d1      	uxtb	r1, r2
 80022fc:	4a08      	ldr	r2, [pc, #32]	; (8002320 <pdu_diagnostics+0x84>)
 80022fe:	54d1      	strb	r1, [r2, r3]
 8002300:	68bb      	ldr	r3, [r7, #8]
 8002302:	1c5a      	adds	r2, r3, #1
 8002304:	60ba      	str	r2, [r7, #8]
 8002306:	4a06      	ldr	r2, [pc, #24]	; (8002320 <pdu_diagnostics+0x84>)
 8002308:	2101      	movs	r1, #1
 800230a:	54d1      	strb	r1, [r2, r3]
 800230c:	68bb      	ldr	r3, [r7, #8]
 800230e:	4618      	mov	r0, r3
 8002310:	3714      	adds	r7, #20
 8002312:	46bd      	mov	sp, r7
 8002314:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002318:	4770      	bx	lr
 800231a:	bf00      	nop
 800231c:	20000a74 	.word	0x20000a74
 8002320:	20000b7c 	.word	0x20000b7c
 8002324:	20000b78 	.word	0x20000b78

08002328 <pdu_read_input_registers>:
 8002328:	b480      	push	{r7}
 800232a:	b085      	sub	sp, #20
 800232c:	af00      	add	r7, sp, #0
 800232e:	4b35      	ldr	r3, [pc, #212]	; (8002404 <pdu_read_input_registers+0xdc>)
 8002330:	785b      	ldrb	r3, [r3, #1]
 8002332:	71fb      	strb	r3, [r7, #7]
 8002334:	4b33      	ldr	r3, [pc, #204]	; (8002404 <pdu_read_input_registers+0xdc>)
 8002336:	789b      	ldrb	r3, [r3, #2]
 8002338:	021b      	lsls	r3, r3, #8
 800233a:	b29a      	uxth	r2, r3
 800233c:	4b31      	ldr	r3, [pc, #196]	; (8002404 <pdu_read_input_registers+0xdc>)
 800233e:	78db      	ldrb	r3, [r3, #3]
 8002340:	4313      	orrs	r3, r2
 8002342:	b29b      	uxth	r3, r3
 8002344:	80bb      	strh	r3, [r7, #4]
 8002346:	4b2f      	ldr	r3, [pc, #188]	; (8002404 <pdu_read_input_registers+0xdc>)
 8002348:	791b      	ldrb	r3, [r3, #4]
 800234a:	021b      	lsls	r3, r3, #8
 800234c:	b29a      	uxth	r2, r3
 800234e:	4b2d      	ldr	r3, [pc, #180]	; (8002404 <pdu_read_input_registers+0xdc>)
 8002350:	795b      	ldrb	r3, [r3, #5]
 8002352:	4313      	orrs	r3, r2
 8002354:	b29b      	uxth	r3, r3
 8002356:	807b      	strh	r3, [r7, #2]
 8002358:	88bb      	ldrh	r3, [r7, #4]
 800235a:	2b07      	cmp	r3, #7
 800235c:	d904      	bls.n	8002368 <pdu_read_input_registers+0x40>
 800235e:	88ba      	ldrh	r2, [r7, #4]
 8002360:	887b      	ldrh	r3, [r7, #2]
 8002362:	4413      	add	r3, r2
 8002364:	2b09      	cmp	r3, #9
 8002366:	dd12      	ble.n	800238e <pdu_read_input_registers+0x66>
 8002368:	2301      	movs	r3, #1
 800236a:	60bb      	str	r3, [r7, #8]
 800236c:	68bb      	ldr	r3, [r7, #8]
 800236e:	1c5a      	adds	r2, r3, #1
 8002370:	60ba      	str	r2, [r7, #8]
 8002372:	79fa      	ldrb	r2, [r7, #7]
 8002374:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002378:	b2d1      	uxtb	r1, r2
 800237a:	4a23      	ldr	r2, [pc, #140]	; (8002408 <pdu_read_input_registers+0xe0>)
 800237c:	54d1      	strb	r1, [r2, r3]
 800237e:	68bb      	ldr	r3, [r7, #8]
 8002380:	1c5a      	adds	r2, r3, #1
 8002382:	60ba      	str	r2, [r7, #8]
 8002384:	4a20      	ldr	r2, [pc, #128]	; (8002408 <pdu_read_input_registers+0xe0>)
 8002386:	2102      	movs	r1, #2
 8002388:	54d1      	strb	r1, [r2, r3]
 800238a:	68bb      	ldr	r3, [r7, #8]
 800238c:	e034      	b.n	80023f8 <pdu_read_input_registers+0xd0>
 800238e:	2301      	movs	r3, #1
 8002390:	60bb      	str	r3, [r7, #8]
 8002392:	68bb      	ldr	r3, [r7, #8]
 8002394:	1c5a      	adds	r2, r3, #1
 8002396:	60ba      	str	r2, [r7, #8]
 8002398:	4a1b      	ldr	r2, [pc, #108]	; (8002408 <pdu_read_input_registers+0xe0>)
 800239a:	79f9      	ldrb	r1, [r7, #7]
 800239c:	54d1      	strb	r1, [r2, r3]
 800239e:	68bb      	ldr	r3, [r7, #8]
 80023a0:	1c5a      	adds	r2, r3, #1
 80023a2:	60ba      	str	r2, [r7, #8]
 80023a4:	887a      	ldrh	r2, [r7, #2]
 80023a6:	b2d2      	uxtb	r2, r2
 80023a8:	0052      	lsls	r2, r2, #1
 80023aa:	b2d1      	uxtb	r1, r2
 80023ac:	4a16      	ldr	r2, [pc, #88]	; (8002408 <pdu_read_input_registers+0xe0>)
 80023ae:	54d1      	strb	r1, [r2, r3]
 80023b0:	2300      	movs	r3, #0
 80023b2:	60fb      	str	r3, [r7, #12]
 80023b4:	e01b      	b.n	80023ee <pdu_read_input_registers+0xc6>
 80023b6:	88bb      	ldrh	r3, [r7, #4]
 80023b8:	f1a3 0208 	sub.w	r2, r3, #8
 80023bc:	68fb      	ldr	r3, [r7, #12]
 80023be:	441a      	add	r2, r3
 80023c0:	4b12      	ldr	r3, [pc, #72]	; (800240c <pdu_read_input_registers+0xe4>)
 80023c2:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 80023c6:	803b      	strh	r3, [r7, #0]
 80023c8:	68bb      	ldr	r3, [r7, #8]
 80023ca:	1c5a      	adds	r2, r3, #1
 80023cc:	60ba      	str	r2, [r7, #8]
 80023ce:	883a      	ldrh	r2, [r7, #0]
 80023d0:	0a12      	lsrs	r2, r2, #8
 80023d2:	b292      	uxth	r2, r2
 80023d4:	b2d1      	uxtb	r1, r2
 80023d6:	4a0c      	ldr	r2, [pc, #48]	; (8002408 <pdu_read_input_registers+0xe0>)
 80023d8:	54d1      	strb	r1, [r2, r3]
 80023da:	68bb      	ldr	r3, [r7, #8]
 80023dc:	1c5a      	adds	r2, r3, #1
 80023de:	60ba      	str	r2, [r7, #8]
 80023e0:	883a      	ldrh	r2, [r7, #0]
 80023e2:	b2d1      	uxtb	r1, r2
 80023e4:	4a08      	ldr	r2, [pc, #32]	; (8002408 <pdu_read_input_registers+0xe0>)
 80023e6:	54d1      	strb	r1, [r2, r3]
 80023e8:	68fb      	ldr	r3, [r7, #12]
 80023ea:	3301      	adds	r3, #1
 80023ec:	60fb      	str	r3, [r7, #12]
 80023ee:	887a      	ldrh	r2, [r7, #2]
 80023f0:	68fb      	ldr	r3, [r7, #12]
 80023f2:	429a      	cmp	r2, r3
 80023f4:	dcdf      	bgt.n	80023b6 <pdu_read_input_registers+0x8e>
 80023f6:	68bb      	ldr	r3, [r7, #8]
 80023f8:	4618      	mov	r0, r3
 80023fa:	3714      	adds	r7, #20
 80023fc:	46bd      	mov	sp, r7
 80023fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002402:	4770      	bx	lr
 8002404:	20000a74 	.word	0x20000a74
 8002408:	20000b7c 	.word	0x20000b7c
 800240c:	20000024 	.word	0x20000024

08002410 <pdu_write_single_register>:
 8002410:	b480      	push	{r7}
 8002412:	b085      	sub	sp, #20
 8002414:	af00      	add	r7, sp, #0
 8002416:	4b2f      	ldr	r3, [pc, #188]	; (80024d4 <pdu_write_single_register+0xc4>)
 8002418:	785b      	ldrb	r3, [r3, #1]
 800241a:	72fb      	strb	r3, [r7, #11]
 800241c:	4b2d      	ldr	r3, [pc, #180]	; (80024d4 <pdu_write_single_register+0xc4>)
 800241e:	789b      	ldrb	r3, [r3, #2]
 8002420:	021b      	lsls	r3, r3, #8
 8002422:	b29a      	uxth	r2, r3
 8002424:	4b2b      	ldr	r3, [pc, #172]	; (80024d4 <pdu_write_single_register+0xc4>)
 8002426:	78db      	ldrb	r3, [r3, #3]
 8002428:	4313      	orrs	r3, r2
 800242a:	b29b      	uxth	r3, r3
 800242c:	813b      	strh	r3, [r7, #8]
 800242e:	4b29      	ldr	r3, [pc, #164]	; (80024d4 <pdu_write_single_register+0xc4>)
 8002430:	791b      	ldrb	r3, [r3, #4]
 8002432:	021b      	lsls	r3, r3, #8
 8002434:	b29a      	uxth	r2, r3
 8002436:	4b27      	ldr	r3, [pc, #156]	; (80024d4 <pdu_write_single_register+0xc4>)
 8002438:	795b      	ldrb	r3, [r3, #5]
 800243a:	4313      	orrs	r3, r2
 800243c:	b29b      	uxth	r3, r3
 800243e:	80fb      	strh	r3, [r7, #6]
 8002440:	893b      	ldrh	r3, [r7, #8]
 8002442:	2b6a      	cmp	r3, #106	; 0x6a
 8002444:	d902      	bls.n	800244c <pdu_write_single_register+0x3c>
 8002446:	893b      	ldrh	r3, [r7, #8]
 8002448:	2b72      	cmp	r3, #114	; 0x72
 800244a:	d911      	bls.n	8002470 <pdu_write_single_register+0x60>
 800244c:	2301      	movs	r3, #1
 800244e:	60fb      	str	r3, [r7, #12]
 8002450:	68fb      	ldr	r3, [r7, #12]
 8002452:	1c5a      	adds	r2, r3, #1
 8002454:	60fa      	str	r2, [r7, #12]
 8002456:	7afa      	ldrb	r2, [r7, #11]
 8002458:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800245c:	b2d1      	uxtb	r1, r2
 800245e:	4a1e      	ldr	r2, [pc, #120]	; (80024d8 <pdu_write_single_register+0xc8>)
 8002460:	54d1      	strb	r1, [r2, r3]
 8002462:	68fb      	ldr	r3, [r7, #12]
 8002464:	1c5a      	adds	r2, r3, #1
 8002466:	60fa      	str	r2, [r7, #12]
 8002468:	4a1b      	ldr	r2, [pc, #108]	; (80024d8 <pdu_write_single_register+0xc8>)
 800246a:	2102      	movs	r1, #2
 800246c:	54d1      	strb	r1, [r2, r3]
 800246e:	e02a      	b.n	80024c6 <pdu_write_single_register+0xb6>
 8002470:	893b      	ldrh	r3, [r7, #8]
 8002472:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 8002476:	4b19      	ldr	r3, [pc, #100]	; (80024dc <pdu_write_single_register+0xcc>)
 8002478:	88f9      	ldrh	r1, [r7, #6]
 800247a:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 800247e:	2301      	movs	r3, #1
 8002480:	60fb      	str	r3, [r7, #12]
 8002482:	68fb      	ldr	r3, [r7, #12]
 8002484:	1c5a      	adds	r2, r3, #1
 8002486:	60fa      	str	r2, [r7, #12]
 8002488:	4a13      	ldr	r2, [pc, #76]	; (80024d8 <pdu_write_single_register+0xc8>)
 800248a:	7af9      	ldrb	r1, [r7, #11]
 800248c:	54d1      	strb	r1, [r2, r3]
 800248e:	68fb      	ldr	r3, [r7, #12]
 8002490:	1c5a      	adds	r2, r3, #1
 8002492:	60fa      	str	r2, [r7, #12]
 8002494:	4a0f      	ldr	r2, [pc, #60]	; (80024d4 <pdu_write_single_register+0xc4>)
 8002496:	7891      	ldrb	r1, [r2, #2]
 8002498:	4a0f      	ldr	r2, [pc, #60]	; (80024d8 <pdu_write_single_register+0xc8>)
 800249a:	54d1      	strb	r1, [r2, r3]
 800249c:	68fb      	ldr	r3, [r7, #12]
 800249e:	1c5a      	adds	r2, r3, #1
 80024a0:	60fa      	str	r2, [r7, #12]
 80024a2:	4a0c      	ldr	r2, [pc, #48]	; (80024d4 <pdu_write_single_register+0xc4>)
 80024a4:	78d1      	ldrb	r1, [r2, #3]
 80024a6:	4a0c      	ldr	r2, [pc, #48]	; (80024d8 <pdu_write_single_register+0xc8>)
 80024a8:	54d1      	strb	r1, [r2, r3]
 80024aa:	68fb      	ldr	r3, [r7, #12]
 80024ac:	1c5a      	adds	r2, r3, #1
 80024ae:	60fa      	str	r2, [r7, #12]
 80024b0:	4a08      	ldr	r2, [pc, #32]	; (80024d4 <pdu_write_single_register+0xc4>)
 80024b2:	7911      	ldrb	r1, [r2, #4]
 80024b4:	4a08      	ldr	r2, [pc, #32]	; (80024d8 <pdu_write_single_register+0xc8>)
 80024b6:	54d1      	strb	r1, [r2, r3]
 80024b8:	68fb      	ldr	r3, [r7, #12]
 80024ba:	1c5a      	adds	r2, r3, #1
 80024bc:	60fa      	str	r2, [r7, #12]
 80024be:	4a05      	ldr	r2, [pc, #20]	; (80024d4 <pdu_write_single_register+0xc4>)
 80024c0:	7951      	ldrb	r1, [r2, #5]
 80024c2:	4a05      	ldr	r2, [pc, #20]	; (80024d8 <pdu_write_single_register+0xc8>)
 80024c4:	54d1      	strb	r1, [r2, r3]
 80024c6:	68fb      	ldr	r3, [r7, #12]
 80024c8:	4618      	mov	r0, r3
 80024ca:	3714      	adds	r7, #20
 80024cc:	46bd      	mov	sp, r7
 80024ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80024d2:	4770      	bx	lr
 80024d4:	20000a74 	.word	0x20000a74
 80024d8:	20000b7c 	.word	0x20000b7c
 80024dc:	20000014 	.word	0x20000014

080024e0 <pdu_write_multiply_registers>:
 80024e0:	b480      	push	{r7}
 80024e2:	b087      	sub	sp, #28
 80024e4:	af00      	add	r7, sp, #0
 80024e6:	4b41      	ldr	r3, [pc, #260]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80024e8:	785b      	ldrb	r3, [r3, #1]
 80024ea:	73fb      	strb	r3, [r7, #15]
 80024ec:	4b3f      	ldr	r3, [pc, #252]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80024ee:	789b      	ldrb	r3, [r3, #2]
 80024f0:	021b      	lsls	r3, r3, #8
 80024f2:	b29a      	uxth	r2, r3
 80024f4:	4b3d      	ldr	r3, [pc, #244]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80024f6:	78db      	ldrb	r3, [r3, #3]
 80024f8:	4313      	orrs	r3, r2
 80024fa:	b29b      	uxth	r3, r3
 80024fc:	81bb      	strh	r3, [r7, #12]
 80024fe:	4b3b      	ldr	r3, [pc, #236]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 8002500:	791b      	ldrb	r3, [r3, #4]
 8002502:	021b      	lsls	r3, r3, #8
 8002504:	b29a      	uxth	r2, r3
 8002506:	4b39      	ldr	r3, [pc, #228]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 8002508:	795b      	ldrb	r3, [r3, #5]
 800250a:	4313      	orrs	r3, r2
 800250c:	b29b      	uxth	r3, r3
 800250e:	817b      	strh	r3, [r7, #10]
 8002510:	4b36      	ldr	r3, [pc, #216]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 8002512:	799b      	ldrb	r3, [r3, #6]
 8002514:	727b      	strb	r3, [r7, #9]
 8002516:	89bb      	ldrh	r3, [r7, #12]
 8002518:	2b6a      	cmp	r3, #106	; 0x6a
 800251a:	d904      	bls.n	8002526 <pdu_write_multiply_registers+0x46>
 800251c:	89ba      	ldrh	r2, [r7, #12]
 800251e:	897b      	ldrh	r3, [r7, #10]
 8002520:	4413      	add	r3, r2
 8002522:	2b73      	cmp	r3, #115	; 0x73
 8002524:	dd11      	ble.n	800254a <pdu_write_multiply_registers+0x6a>
 8002526:	2301      	movs	r3, #1
 8002528:	613b      	str	r3, [r7, #16]
 800252a:	693b      	ldr	r3, [r7, #16]
 800252c:	1c5a      	adds	r2, r3, #1
 800252e:	613a      	str	r2, [r7, #16]
 8002530:	7bfa      	ldrb	r2, [r7, #15]
 8002532:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002536:	b2d1      	uxtb	r1, r2
 8002538:	4a2d      	ldr	r2, [pc, #180]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 800253a:	54d1      	strb	r1, [r2, r3]
 800253c:	693b      	ldr	r3, [r7, #16]
 800253e:	1c5a      	adds	r2, r3, #1
 8002540:	613a      	str	r2, [r7, #16]
 8002542:	4a2b      	ldr	r2, [pc, #172]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 8002544:	2102      	movs	r1, #2
 8002546:	54d1      	strb	r1, [r2, r3]
 8002548:	e048      	b.n	80025dc <pdu_write_multiply_registers+0xfc>
 800254a:	2307      	movs	r3, #7
 800254c:	613b      	str	r3, [r7, #16]
 800254e:	2300      	movs	r3, #0
 8002550:	617b      	str	r3, [r7, #20]
 8002552:	e01b      	b.n	800258c <pdu_write_multiply_registers+0xac>
 8002554:	693b      	ldr	r3, [r7, #16]
 8002556:	1c5a      	adds	r2, r3, #1
 8002558:	613a      	str	r2, [r7, #16]
 800255a:	4a24      	ldr	r2, [pc, #144]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 800255c:	5cd3      	ldrb	r3, [r2, r3]
 800255e:	021b      	lsls	r3, r3, #8
 8002560:	80fb      	strh	r3, [r7, #6]
 8002562:	693b      	ldr	r3, [r7, #16]
 8002564:	1c5a      	adds	r2, r3, #1
 8002566:	613a      	str	r2, [r7, #16]
 8002568:	4a20      	ldr	r2, [pc, #128]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 800256a:	5cd3      	ldrb	r3, [r2, r3]
 800256c:	461a      	mov	r2, r3
 800256e:	88fb      	ldrh	r3, [r7, #6]
 8002570:	4313      	orrs	r3, r2
 8002572:	80fb      	strh	r3, [r7, #6]
 8002574:	89bb      	ldrh	r3, [r7, #12]
 8002576:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 800257a:	697b      	ldr	r3, [r7, #20]
 800257c:	441a      	add	r2, r3
 800257e:	4b1d      	ldr	r3, [pc, #116]	; (80025f4 <pdu_write_multiply_registers+0x114>)
 8002580:	88f9      	ldrh	r1, [r7, #6]
 8002582:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 8002586:	697b      	ldr	r3, [r7, #20]
 8002588:	3301      	adds	r3, #1
 800258a:	617b      	str	r3, [r7, #20]
 800258c:	897a      	ldrh	r2, [r7, #10]
 800258e:	697b      	ldr	r3, [r7, #20]
 8002590:	429a      	cmp	r2, r3
 8002592:	dcdf      	bgt.n	8002554 <pdu_write_multiply_registers+0x74>
 8002594:	2301      	movs	r3, #1
 8002596:	613b      	str	r3, [r7, #16]
 8002598:	693b      	ldr	r3, [r7, #16]
 800259a:	1c5a      	adds	r2, r3, #1
 800259c:	613a      	str	r2, [r7, #16]
 800259e:	4a14      	ldr	r2, [pc, #80]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 80025a0:	7bf9      	ldrb	r1, [r7, #15]
 80025a2:	54d1      	strb	r1, [r2, r3]
 80025a4:	693b      	ldr	r3, [r7, #16]
 80025a6:	1c5a      	adds	r2, r3, #1
 80025a8:	613a      	str	r2, [r7, #16]
 80025aa:	4a10      	ldr	r2, [pc, #64]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80025ac:	7891      	ldrb	r1, [r2, #2]
 80025ae:	4a10      	ldr	r2, [pc, #64]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 80025b0:	54d1      	strb	r1, [r2, r3]
 80025b2:	693b      	ldr	r3, [r7, #16]
 80025b4:	1c5a      	adds	r2, r3, #1
 80025b6:	613a      	str	r2, [r7, #16]
 80025b8:	4a0c      	ldr	r2, [pc, #48]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80025ba:	78d1      	ldrb	r1, [r2, #3]
 80025bc:	4a0c      	ldr	r2, [pc, #48]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 80025be:	54d1      	strb	r1, [r2, r3]
 80025c0:	693b      	ldr	r3, [r7, #16]
 80025c2:	1c5a      	adds	r2, r3, #1
 80025c4:	613a      	str	r2, [r7, #16]
 80025c6:	4a09      	ldr	r2, [pc, #36]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80025c8:	7911      	ldrb	r1, [r2, #4]
 80025ca:	4a09      	ldr	r2, [pc, #36]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 80025cc:	54d1      	strb	r1, [r2, r3]
 80025ce:	693b      	ldr	r3, [r7, #16]
 80025d0:	1c5a      	adds	r2, r3, #1
 80025d2:	613a      	str	r2, [r7, #16]
 80025d4:	4a05      	ldr	r2, [pc, #20]	; (80025ec <pdu_write_multiply_registers+0x10c>)
 80025d6:	7951      	ldrb	r1, [r2, #5]
 80025d8:	4a05      	ldr	r2, [pc, #20]	; (80025f0 <pdu_write_multiply_registers+0x110>)
 80025da:	54d1      	strb	r1, [r2, r3]
 80025dc:	693b      	ldr	r3, [r7, #16]
 80025de:	4618      	mov	r0, r3
 80025e0:	371c      	adds	r7, #28
 80025e2:	46bd      	mov	sp, r7
 80025e4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80025e8:	4770      	bx	lr
 80025ea:	bf00      	nop
 80025ec:	20000a74 	.word	0x20000a74
 80025f0:	20000b7c 	.word	0x20000b7c
 80025f4:	20000014 	.word	0x20000014

080025f8 <pdu_read_holding_registers>:
 80025f8:	b480      	push	{r7}
 80025fa:	b085      	sub	sp, #20
 80025fc:	af00      	add	r7, sp, #0
 80025fe:	4b35      	ldr	r3, [pc, #212]	; (80026d4 <pdu_read_holding_registers+0xdc>)
 8002600:	785b      	ldrb	r3, [r3, #1]
 8002602:	71fb      	strb	r3, [r7, #7]
 8002604:	4b33      	ldr	r3, [pc, #204]	; (80026d4 <pdu_read_holding_registers+0xdc>)
 8002606:	789b      	ldrb	r3, [r3, #2]
 8002608:	021b      	lsls	r3, r3, #8
 800260a:	b29a      	uxth	r2, r3
 800260c:	4b31      	ldr	r3, [pc, #196]	; (80026d4 <pdu_read_holding_registers+0xdc>)
 800260e:	78db      	ldrb	r3, [r3, #3]
 8002610:	4313      	orrs	r3, r2
 8002612:	b29b      	uxth	r3, r3
 8002614:	80bb      	strh	r3, [r7, #4]
 8002616:	4b2f      	ldr	r3, [pc, #188]	; (80026d4 <pdu_read_holding_registers+0xdc>)
 8002618:	791b      	ldrb	r3, [r3, #4]
 800261a:	021b      	lsls	r3, r3, #8
 800261c:	b29a      	uxth	r2, r3
 800261e:	4b2d      	ldr	r3, [pc, #180]	; (80026d4 <pdu_read_holding_registers+0xdc>)
 8002620:	795b      	ldrb	r3, [r3, #5]
 8002622:	4313      	orrs	r3, r2
 8002624:	b29b      	uxth	r3, r3
 8002626:	807b      	strh	r3, [r7, #2]
 8002628:	88bb      	ldrh	r3, [r7, #4]
 800262a:	2b6a      	cmp	r3, #106	; 0x6a
 800262c:	d904      	bls.n	8002638 <pdu_read_holding_registers+0x40>
 800262e:	88ba      	ldrh	r2, [r7, #4]
 8002630:	887b      	ldrh	r3, [r7, #2]
 8002632:	4413      	add	r3, r2
 8002634:	2b73      	cmp	r3, #115	; 0x73
 8002636:	dd11      	ble.n	800265c <pdu_read_holding_registers+0x64>
 8002638:	2301      	movs	r3, #1
 800263a:	60bb      	str	r3, [r7, #8]
 800263c:	68bb      	ldr	r3, [r7, #8]
 800263e:	1c5a      	adds	r2, r3, #1
 8002640:	60ba      	str	r2, [r7, #8]
 8002642:	79fa      	ldrb	r2, [r7, #7]
 8002644:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002648:	b2d1      	uxtb	r1, r2
 800264a:	4a23      	ldr	r2, [pc, #140]	; (80026d8 <pdu_read_holding_registers+0xe0>)
 800264c:	54d1      	strb	r1, [r2, r3]
 800264e:	68bb      	ldr	r3, [r7, #8]
 8002650:	1c5a      	adds	r2, r3, #1
 8002652:	60ba      	str	r2, [r7, #8]
 8002654:	4a20      	ldr	r2, [pc, #128]	; (80026d8 <pdu_read_holding_registers+0xe0>)
 8002656:	2102      	movs	r1, #2
 8002658:	54d1      	strb	r1, [r2, r3]
 800265a:	e033      	b.n	80026c4 <pdu_read_holding_registers+0xcc>
 800265c:	2301      	movs	r3, #1
 800265e:	60bb      	str	r3, [r7, #8]
 8002660:	68bb      	ldr	r3, [r7, #8]
 8002662:	1c5a      	adds	r2, r3, #1
 8002664:	60ba      	str	r2, [r7, #8]
 8002666:	4a1c      	ldr	r2, [pc, #112]	; (80026d8 <pdu_read_holding_registers+0xe0>)
 8002668:	79f9      	ldrb	r1, [r7, #7]
 800266a:	54d1      	strb	r1, [r2, r3]
 800266c:	68bb      	ldr	r3, [r7, #8]
 800266e:	1c5a      	adds	r2, r3, #1
 8002670:	60ba      	str	r2, [r7, #8]
 8002672:	887a      	ldrh	r2, [r7, #2]
 8002674:	b2d2      	uxtb	r2, r2
 8002676:	0052      	lsls	r2, r2, #1
 8002678:	b2d1      	uxtb	r1, r2
 800267a:	4a17      	ldr	r2, [pc, #92]	; (80026d8 <pdu_read_holding_registers+0xe0>)
 800267c:	54d1      	strb	r1, [r2, r3]
 800267e:	2300      	movs	r3, #0
 8002680:	60fb      	str	r3, [r7, #12]
 8002682:	e01b      	b.n	80026bc <pdu_read_holding_registers+0xc4>
 8002684:	88bb      	ldrh	r3, [r7, #4]
 8002686:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 800268a:	68fb      	ldr	r3, [r7, #12]
 800268c:	441a      	add	r2, r3
 800268e:	4b13      	ldr	r3, [pc, #76]	; (80026dc <pdu_read_holding_registers+0xe4>)
 8002690:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 8002694:	803b      	strh	r3, [r7, #0]
 8002696:	68bb      	ldr	r3, [r7, #8]
 8002698:	1c5a      	adds	r2, r3, #1
 800269a:	60ba      	str	r2, [r7, #8]
 800269c:	883a      	ldrh	r2, [r7, #0]
 800269e:	0a12      	lsrs	r2, r2, #8
 80026a0:	b292      	uxth	r2, r2
 80026a2:	b2d1      	uxtb	r1, r2
 80026a4:	4a0c      	ldr	r2, [pc, #48]	; (80026d8 <pdu_read_holding_registers+0xe0>)
 80026a6:	54d1      	strb	r1, [r2, r3]
 80026a8:	68bb      	ldr	r3, [r7, #8]
 80026aa:	1c5a      	adds	r2, r3, #1
 80026ac:	60ba      	str	r2, [r7, #8]
 80026ae:	883a      	ldrh	r2, [r7, #0]
 80026b0:	b2d1      	uxtb	r1, r2
 80026b2:	4a09      	ldr	r2, [pc, #36]	; (80026d8 <pdu_read_holding_registers+0xe0>)
 80026b4:	54d1      	strb	r1, [r2, r3]
 80026b6:	68fb      	ldr	r3, [r7, #12]
 80026b8:	3301      	adds	r3, #1
 80026ba:	60fb      	str	r3, [r7, #12]
 80026bc:	887a      	ldrh	r2, [r7, #2]
 80026be:	68fb      	ldr	r3, [r7, #12]
 80026c0:	429a      	cmp	r2, r3
 80026c2:	dcdf      	bgt.n	8002684 <pdu_read_holding_registers+0x8c>
 80026c4:	68bb      	ldr	r3, [r7, #8]
 80026c6:	4618      	mov	r0, r3
 80026c8:	3714      	adds	r7, #20
 80026ca:	46bd      	mov	sp, r7
 80026cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026d0:	4770      	bx	lr
 80026d2:	bf00      	nop
 80026d4:	20000a74 	.word	0x20000a74
 80026d8:	20000b7c 	.word	0x20000b7c
 80026dc:	20000014 	.word	0x20000014

080026e0 <pdu_read_write_multiply_registers>:
 80026e0:	b480      	push	{r7}
 80026e2:	b087      	sub	sp, #28
 80026e4:	af00      	add	r7, sp, #0
 80026e6:	4b60      	ldr	r3, [pc, #384]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 80026e8:	785b      	ldrb	r3, [r3, #1]
 80026ea:	73fb      	strb	r3, [r7, #15]
 80026ec:	4b5e      	ldr	r3, [pc, #376]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 80026ee:	789b      	ldrb	r3, [r3, #2]
 80026f0:	021b      	lsls	r3, r3, #8
 80026f2:	b29a      	uxth	r2, r3
 80026f4:	4b5c      	ldr	r3, [pc, #368]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 80026f6:	78db      	ldrb	r3, [r3, #3]
 80026f8:	4313      	orrs	r3, r2
 80026fa:	b29b      	uxth	r3, r3
 80026fc:	81bb      	strh	r3, [r7, #12]
 80026fe:	4b5a      	ldr	r3, [pc, #360]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 8002700:	791b      	ldrb	r3, [r3, #4]
 8002702:	021b      	lsls	r3, r3, #8
 8002704:	b29a      	uxth	r2, r3
 8002706:	4b58      	ldr	r3, [pc, #352]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 8002708:	795b      	ldrb	r3, [r3, #5]
 800270a:	4313      	orrs	r3, r2
 800270c:	b29b      	uxth	r3, r3
 800270e:	817b      	strh	r3, [r7, #10]
 8002710:	4b55      	ldr	r3, [pc, #340]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 8002712:	799b      	ldrb	r3, [r3, #6]
 8002714:	021b      	lsls	r3, r3, #8
 8002716:	b29a      	uxth	r2, r3
 8002718:	4b53      	ldr	r3, [pc, #332]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 800271a:	79db      	ldrb	r3, [r3, #7]
 800271c:	4313      	orrs	r3, r2
 800271e:	b29b      	uxth	r3, r3
 8002720:	813b      	strh	r3, [r7, #8]
 8002722:	4b51      	ldr	r3, [pc, #324]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 8002724:	7a1b      	ldrb	r3, [r3, #8]
 8002726:	021b      	lsls	r3, r3, #8
 8002728:	b29a      	uxth	r2, r3
 800272a:	4b4f      	ldr	r3, [pc, #316]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 800272c:	7a5b      	ldrb	r3, [r3, #9]
 800272e:	4313      	orrs	r3, r2
 8002730:	b29b      	uxth	r3, r3
 8002732:	80fb      	strh	r3, [r7, #6]
 8002734:	4b4c      	ldr	r3, [pc, #304]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 8002736:	7a9b      	ldrb	r3, [r3, #10]
 8002738:	717b      	strb	r3, [r7, #5]
 800273a:	89bb      	ldrh	r3, [r7, #12]
 800273c:	2b6a      	cmp	r3, #106	; 0x6a
 800273e:	d904      	bls.n	800274a <pdu_read_write_multiply_registers+0x6a>
 8002740:	89ba      	ldrh	r2, [r7, #12]
 8002742:	897b      	ldrh	r3, [r7, #10]
 8002744:	4413      	add	r3, r2
 8002746:	2b73      	cmp	r3, #115	; 0x73
 8002748:	dd12      	ble.n	8002770 <pdu_read_write_multiply_registers+0x90>
 800274a:	2301      	movs	r3, #1
 800274c:	613b      	str	r3, [r7, #16]
 800274e:	693b      	ldr	r3, [r7, #16]
 8002750:	1c5a      	adds	r2, r3, #1
 8002752:	613a      	str	r2, [r7, #16]
 8002754:	7bfa      	ldrb	r2, [r7, #15]
 8002756:	f062 027f 	orn	r2, r2, #127	; 0x7f
 800275a:	b2d1      	uxtb	r1, r2
 800275c:	4a43      	ldr	r2, [pc, #268]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 800275e:	54d1      	strb	r1, [r2, r3]
 8002760:	693b      	ldr	r3, [r7, #16]
 8002762:	1c5a      	adds	r2, r3, #1
 8002764:	613a      	str	r2, [r7, #16]
 8002766:	4a41      	ldr	r2, [pc, #260]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 8002768:	2102      	movs	r1, #2
 800276a:	54d1      	strb	r1, [r2, r3]
 800276c:	693b      	ldr	r3, [r7, #16]
 800276e:	e074      	b.n	800285a <pdu_read_write_multiply_registers+0x17a>
 8002770:	893b      	ldrh	r3, [r7, #8]
 8002772:	2b6a      	cmp	r3, #106	; 0x6a
 8002774:	d904      	bls.n	8002780 <pdu_read_write_multiply_registers+0xa0>
 8002776:	893a      	ldrh	r2, [r7, #8]
 8002778:	88fb      	ldrh	r3, [r7, #6]
 800277a:	4413      	add	r3, r2
 800277c:	2b73      	cmp	r3, #115	; 0x73
 800277e:	dd12      	ble.n	80027a6 <pdu_read_write_multiply_registers+0xc6>
 8002780:	2301      	movs	r3, #1
 8002782:	613b      	str	r3, [r7, #16]
 8002784:	693b      	ldr	r3, [r7, #16]
 8002786:	1c5a      	adds	r2, r3, #1
 8002788:	613a      	str	r2, [r7, #16]
 800278a:	7bfa      	ldrb	r2, [r7, #15]
 800278c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002790:	b2d1      	uxtb	r1, r2
 8002792:	4a36      	ldr	r2, [pc, #216]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 8002794:	54d1      	strb	r1, [r2, r3]
 8002796:	693b      	ldr	r3, [r7, #16]
 8002798:	1c5a      	adds	r2, r3, #1
 800279a:	613a      	str	r2, [r7, #16]
 800279c:	4a33      	ldr	r2, [pc, #204]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 800279e:	2102      	movs	r1, #2
 80027a0:	54d1      	strb	r1, [r2, r3]
 80027a2:	693b      	ldr	r3, [r7, #16]
 80027a4:	e059      	b.n	800285a <pdu_read_write_multiply_registers+0x17a>
 80027a6:	230b      	movs	r3, #11
 80027a8:	613b      	str	r3, [r7, #16]
 80027aa:	2300      	movs	r3, #0
 80027ac:	617b      	str	r3, [r7, #20]
 80027ae:	e01b      	b.n	80027e8 <pdu_read_write_multiply_registers+0x108>
 80027b0:	693b      	ldr	r3, [r7, #16]
 80027b2:	1c5a      	adds	r2, r3, #1
 80027b4:	613a      	str	r2, [r7, #16]
 80027b6:	4a2c      	ldr	r2, [pc, #176]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 80027b8:	5cd3      	ldrb	r3, [r2, r3]
 80027ba:	021b      	lsls	r3, r3, #8
 80027bc:	807b      	strh	r3, [r7, #2]
 80027be:	693b      	ldr	r3, [r7, #16]
 80027c0:	1c5a      	adds	r2, r3, #1
 80027c2:	613a      	str	r2, [r7, #16]
 80027c4:	4a28      	ldr	r2, [pc, #160]	; (8002868 <pdu_read_write_multiply_registers+0x188>)
 80027c6:	5cd3      	ldrb	r3, [r2, r3]
 80027c8:	461a      	mov	r2, r3
 80027ca:	887b      	ldrh	r3, [r7, #2]
 80027cc:	4313      	orrs	r3, r2
 80027ce:	807b      	strh	r3, [r7, #2]
 80027d0:	893b      	ldrh	r3, [r7, #8]
 80027d2:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 80027d6:	697b      	ldr	r3, [r7, #20]
 80027d8:	441a      	add	r2, r3
 80027da:	4b25      	ldr	r3, [pc, #148]	; (8002870 <pdu_read_write_multiply_registers+0x190>)
 80027dc:	8879      	ldrh	r1, [r7, #2]
 80027de:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 80027e2:	697b      	ldr	r3, [r7, #20]
 80027e4:	3301      	adds	r3, #1
 80027e6:	617b      	str	r3, [r7, #20]
 80027e8:	88fa      	ldrh	r2, [r7, #6]
 80027ea:	697b      	ldr	r3, [r7, #20]
 80027ec:	429a      	cmp	r2, r3
 80027ee:	dcdf      	bgt.n	80027b0 <pdu_read_write_multiply_registers+0xd0>
 80027f0:	2301      	movs	r3, #1
 80027f2:	613b      	str	r3, [r7, #16]
 80027f4:	693b      	ldr	r3, [r7, #16]
 80027f6:	1c5a      	adds	r2, r3, #1
 80027f8:	613a      	str	r2, [r7, #16]
 80027fa:	4a1c      	ldr	r2, [pc, #112]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 80027fc:	7bf9      	ldrb	r1, [r7, #15]
 80027fe:	54d1      	strb	r1, [r2, r3]
 8002800:	693b      	ldr	r3, [r7, #16]
 8002802:	1c5a      	adds	r2, r3, #1
 8002804:	613a      	str	r2, [r7, #16]
 8002806:	897a      	ldrh	r2, [r7, #10]
 8002808:	b2d2      	uxtb	r2, r2
 800280a:	0052      	lsls	r2, r2, #1
 800280c:	b2d1      	uxtb	r1, r2
 800280e:	4a17      	ldr	r2, [pc, #92]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 8002810:	54d1      	strb	r1, [r2, r3]
 8002812:	2300      	movs	r3, #0
 8002814:	617b      	str	r3, [r7, #20]
 8002816:	e01b      	b.n	8002850 <pdu_read_write_multiply_registers+0x170>
 8002818:	89bb      	ldrh	r3, [r7, #12]
 800281a:	f1a3 026b 	sub.w	r2, r3, #107	; 0x6b
 800281e:	697b      	ldr	r3, [r7, #20]
 8002820:	441a      	add	r2, r3
 8002822:	4b13      	ldr	r3, [pc, #76]	; (8002870 <pdu_read_write_multiply_registers+0x190>)
 8002824:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
 8002828:	803b      	strh	r3, [r7, #0]
 800282a:	693b      	ldr	r3, [r7, #16]
 800282c:	1c5a      	adds	r2, r3, #1
 800282e:	613a      	str	r2, [r7, #16]
 8002830:	883a      	ldrh	r2, [r7, #0]
 8002832:	0a12      	lsrs	r2, r2, #8
 8002834:	b292      	uxth	r2, r2
 8002836:	b2d1      	uxtb	r1, r2
 8002838:	4a0c      	ldr	r2, [pc, #48]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 800283a:	54d1      	strb	r1, [r2, r3]
 800283c:	693b      	ldr	r3, [r7, #16]
 800283e:	1c5a      	adds	r2, r3, #1
 8002840:	613a      	str	r2, [r7, #16]
 8002842:	883a      	ldrh	r2, [r7, #0]
 8002844:	b2d1      	uxtb	r1, r2
 8002846:	4a09      	ldr	r2, [pc, #36]	; (800286c <pdu_read_write_multiply_registers+0x18c>)
 8002848:	54d1      	strb	r1, [r2, r3]
 800284a:	697b      	ldr	r3, [r7, #20]
 800284c:	3301      	adds	r3, #1
 800284e:	617b      	str	r3, [r7, #20]
 8002850:	897a      	ldrh	r2, [r7, #10]
 8002852:	697b      	ldr	r3, [r7, #20]
 8002854:	429a      	cmp	r2, r3
 8002856:	dcdf      	bgt.n	8002818 <pdu_read_write_multiply_registers+0x138>
 8002858:	693b      	ldr	r3, [r7, #16]
 800285a:	4618      	mov	r0, r3
 800285c:	371c      	adds	r7, #28
 800285e:	46bd      	mov	sp, r7
 8002860:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002864:	4770      	bx	lr
 8002866:	bf00      	nop
 8002868:	20000a74 	.word	0x20000a74
 800286c:	20000b7c 	.word	0x20000b7c
 8002870:	20000014 	.word	0x20000014

08002874 <pdu_illegal_function_error>:
 8002874:	b480      	push	{r7}
 8002876:	b083      	sub	sp, #12
 8002878:	af00      	add	r7, sp, #0
 800287a:	4b0d      	ldr	r3, [pc, #52]	; (80028b0 <pdu_illegal_function_error+0x3c>)
 800287c:	785b      	ldrb	r3, [r3, #1]
 800287e:	71fb      	strb	r3, [r7, #7]
 8002880:	2301      	movs	r3, #1
 8002882:	603b      	str	r3, [r7, #0]
 8002884:	683b      	ldr	r3, [r7, #0]
 8002886:	1c5a      	adds	r2, r3, #1
 8002888:	603a      	str	r2, [r7, #0]
 800288a:	79fa      	ldrb	r2, [r7, #7]
 800288c:	f062 027f 	orn	r2, r2, #127	; 0x7f
 8002890:	b2d1      	uxtb	r1, r2
 8002892:	4a08      	ldr	r2, [pc, #32]	; (80028b4 <pdu_illegal_function_error+0x40>)
 8002894:	54d1      	strb	r1, [r2, r3]
 8002896:	683b      	ldr	r3, [r7, #0]
 8002898:	1c5a      	adds	r2, r3, #1
 800289a:	603a      	str	r2, [r7, #0]
 800289c:	4a05      	ldr	r2, [pc, #20]	; (80028b4 <pdu_illegal_function_error+0x40>)
 800289e:	2101      	movs	r1, #1
 80028a0:	54d1      	strb	r1, [r2, r3]
 80028a2:	683b      	ldr	r3, [r7, #0]
 80028a4:	4618      	mov	r0, r3
 80028a6:	370c      	adds	r7, #12
 80028a8:	46bd      	mov	sp, r7
 80028aa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80028ae:	4770      	bx	lr
 80028b0:	20000a74 	.word	0x20000a74
 80028b4:	20000b7c 	.word	0x20000b7c

080028b8 <proc_ADU>:
 80028b8:	b580      	push	{r7, lr}
 80028ba:	b082      	sub	sp, #8
 80028bc:	af00      	add	r7, sp, #0
 80028be:	4b1e      	ldr	r3, [pc, #120]	; (8002938 <proc_ADU+0x80>)
 80028c0:	681b      	ldr	r3, [r3, #0]
 80028c2:	481e      	ldr	r0, [pc, #120]	; (800293c <proc_ADU+0x84>)
 80028c4:	4619      	mov	r1, r3
 80028c6:	f000 f841 	bl	800294c <crc16>
 80028ca:	4603      	mov	r3, r0
 80028cc:	80fb      	strh	r3, [r7, #6]
 80028ce:	88fb      	ldrh	r3, [r7, #6]
 80028d0:	2b00      	cmp	r3, #0
 80028d2:	d003      	beq.n	80028dc <proc_ADU+0x24>
 80028d4:	4b1a      	ldr	r3, [pc, #104]	; (8002940 <proc_ADU+0x88>)
 80028d6:	2201      	movs	r2, #1
 80028d8:	601a      	str	r2, [r3, #0]
 80028da:	e02a      	b.n	8002932 <proc_ADU+0x7a>
 80028dc:	4b17      	ldr	r3, [pc, #92]	; (800293c <proc_ADU+0x84>)
 80028de:	781b      	ldrb	r3, [r3, #0]
 80028e0:	717b      	strb	r3, [r7, #5]
 80028e2:	4b16      	ldr	r3, [pc, #88]	; (800293c <proc_ADU+0x84>)
 80028e4:	785b      	ldrb	r3, [r3, #1]
 80028e6:	713b      	strb	r3, [r7, #4]
 80028e8:	797b      	ldrb	r3, [r7, #5]
 80028ea:	2b11      	cmp	r3, #17
 80028ec:	d121      	bne.n	8002932 <proc_ADU+0x7a>
 80028ee:	4b15      	ldr	r3, [pc, #84]	; (8002944 <proc_ADU+0x8c>)
 80028f0:	2211      	movs	r2, #17
 80028f2:	701a      	strb	r2, [r3, #0]
 80028f4:	793a      	ldrb	r2, [r7, #4]
 80028f6:	4b14      	ldr	r3, [pc, #80]	; (8002948 <proc_ADU+0x90>)
 80028f8:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80028fc:	4798      	blx	r3
 80028fe:	6038      	str	r0, [r7, #0]
 8002900:	4810      	ldr	r0, [pc, #64]	; (8002944 <proc_ADU+0x8c>)
 8002902:	6839      	ldr	r1, [r7, #0]
 8002904:	f000 f822 	bl	800294c <crc16>
 8002908:	4603      	mov	r3, r0
 800290a:	80fb      	strh	r3, [r7, #6]
 800290c:	683b      	ldr	r3, [r7, #0]
 800290e:	1c5a      	adds	r2, r3, #1
 8002910:	603a      	str	r2, [r7, #0]
 8002912:	88fa      	ldrh	r2, [r7, #6]
 8002914:	b2d1      	uxtb	r1, r2
 8002916:	4a0b      	ldr	r2, [pc, #44]	; (8002944 <proc_ADU+0x8c>)
 8002918:	54d1      	strb	r1, [r2, r3]
 800291a:	683b      	ldr	r3, [r7, #0]
 800291c:	1c5a      	adds	r2, r3, #1
 800291e:	603a      	str	r2, [r7, #0]
 8002920:	88fa      	ldrh	r2, [r7, #6]
 8002922:	0a12      	lsrs	r2, r2, #8
 8002924:	b292      	uxth	r2, r2
 8002926:	b2d1      	uxtb	r1, r2
 8002928:	4a06      	ldr	r2, [pc, #24]	; (8002944 <proc_ADU+0x8c>)
 800292a:	54d1      	strb	r1, [r2, r3]
 800292c:	6838      	ldr	r0, [r7, #0]
 800292e:	f7ff f8cf 	bl	8001ad0 <start_trans>
 8002932:	3708      	adds	r7, #8
 8002934:	46bd      	mov	sp, r7
 8002936:	bd80      	pop	{r7, pc}
 8002938:	20000b74 	.word	0x20000b74
 800293c:	20000a74 	.word	0x20000a74
 8002940:	20000a70 	.word	0x20000a70
 8002944:	20000b7c 	.word	0x20000b7c
 8002948:	08004ac8 	.word	0x08004ac8

0800294c <crc16>:
 800294c:	b480      	push	{r7}
 800294e:	b087      	sub	sp, #28
 8002950:	af00      	add	r7, sp, #0
 8002952:	6078      	str	r0, [r7, #4]
 8002954:	6039      	str	r1, [r7, #0]
 8002956:	23ff      	movs	r3, #255	; 0xff
 8002958:	75fb      	strb	r3, [r7, #23]
 800295a:	23ff      	movs	r3, #255	; 0xff
 800295c:	75bb      	strb	r3, [r7, #22]
 800295e:	2300      	movs	r3, #0
 8002960:	613b      	str	r3, [r7, #16]
 8002962:	e016      	b.n	8002992 <crc16+0x46>
 8002964:	693b      	ldr	r3, [r7, #16]
 8002966:	687a      	ldr	r2, [r7, #4]
 8002968:	4413      	add	r3, r2
 800296a:	781a      	ldrb	r2, [r3, #0]
 800296c:	7dfb      	ldrb	r3, [r7, #23]
 800296e:	4053      	eors	r3, r2
 8002970:	b2db      	uxtb	r3, r3
 8002972:	60fb      	str	r3, [r7, #12]
 8002974:	4a10      	ldr	r2, [pc, #64]	; (80029b8 <crc16+0x6c>)
 8002976:	68fb      	ldr	r3, [r7, #12]
 8002978:	4413      	add	r3, r2
 800297a:	781a      	ldrb	r2, [r3, #0]
 800297c:	7dbb      	ldrb	r3, [r7, #22]
 800297e:	4053      	eors	r3, r2
 8002980:	75fb      	strb	r3, [r7, #23]
 8002982:	4a0e      	ldr	r2, [pc, #56]	; (80029bc <crc16+0x70>)
 8002984:	68fb      	ldr	r3, [r7, #12]
 8002986:	4413      	add	r3, r2
 8002988:	781b      	ldrb	r3, [r3, #0]
 800298a:	75bb      	strb	r3, [r7, #22]
 800298c:	693b      	ldr	r3, [r7, #16]
 800298e:	3301      	adds	r3, #1
 8002990:	613b      	str	r3, [r7, #16]
 8002992:	693a      	ldr	r2, [r7, #16]
 8002994:	683b      	ldr	r3, [r7, #0]
 8002996:	429a      	cmp	r2, r3
 8002998:	dbe4      	blt.n	8002964 <crc16+0x18>
 800299a:	7dbb      	ldrb	r3, [r7, #22]
 800299c:	021b      	lsls	r3, r3, #8
 800299e:	b29a      	uxth	r2, r3
 80029a0:	7dfb      	ldrb	r3, [r7, #23]
 80029a2:	b29b      	uxth	r3, r3
 80029a4:	4313      	orrs	r3, r2
 80029a6:	b29b      	uxth	r3, r3
 80029a8:	b29b      	uxth	r3, r3
 80029aa:	4618      	mov	r0, r3
 80029ac:	371c      	adds	r7, #28
 80029ae:	46bd      	mov	sp, r7
 80029b0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80029b4:	4770      	bx	lr
 80029b6:	bf00      	nop
 80029b8:	20000028 	.word	0x20000028
 80029bc:	20000128 	.word	0x20000128

080029c0 <NVIC_EnableIRQ>:
 80029c0:	b480      	push	{r7}
 80029c2:	b083      	sub	sp, #12
 80029c4:	af00      	add	r7, sp, #0
 80029c6:	4603      	mov	r3, r0
 80029c8:	71fb      	strb	r3, [r7, #7]
 80029ca:	4b08      	ldr	r3, [pc, #32]	; (80029ec <NVIC_EnableIRQ+0x2c>)
 80029cc:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80029d0:	0952      	lsrs	r2, r2, #5
 80029d2:	79f9      	ldrb	r1, [r7, #7]
 80029d4:	f001 011f 	and.w	r1, r1, #31
 80029d8:	2001      	movs	r0, #1
 80029da:	fa00 f101 	lsl.w	r1, r0, r1
 80029de:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80029e2:	370c      	adds	r7, #12
 80029e4:	46bd      	mov	sp, r7
 80029e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80029ea:	4770      	bx	lr
 80029ec:	e000e100 	.word	0xe000e100

080029f0 <init_spi_dma>:
 80029f0:	b580      	push	{r7, lr}
 80029f2:	af00      	add	r7, sp, #0
 80029f4:	4b33      	ldr	r3, [pc, #204]	; (8002ac4 <init_spi_dma+0xd4>)
 80029f6:	4a33      	ldr	r2, [pc, #204]	; (8002ac4 <init_spi_dma+0xd4>)
 80029f8:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80029fa:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 80029fe:	631a      	str	r2, [r3, #48]	; 0x30
 8002a00:	4b31      	ldr	r3, [pc, #196]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a02:	4a32      	ldr	r2, [pc, #200]	; (8002acc <init_spi_dma+0xdc>)
 8002a04:	609a      	str	r2, [r3, #8]
 8002a06:	4b30      	ldr	r3, [pc, #192]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a08:	4a31      	ldr	r2, [pc, #196]	; (8002ad0 <init_spi_dma+0xe0>)
 8002a0a:	60da      	str	r2, [r3, #12]
 8002a0c:	4b2e      	ldr	r3, [pc, #184]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a0e:	2208      	movs	r2, #8
 8002a10:	605a      	str	r2, [r3, #4]
 8002a12:	4b2d      	ldr	r3, [pc, #180]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a14:	4a2c      	ldr	r2, [pc, #176]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a16:	6812      	ldr	r2, [r2, #0]
 8002a18:	f022 6260 	bic.w	r2, r2, #234881024	; 0xe000000
 8002a1c:	601a      	str	r2, [r3, #0]
 8002a1e:	4b2a      	ldr	r3, [pc, #168]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a20:	4a29      	ldr	r2, [pc, #164]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a22:	6812      	ldr	r2, [r2, #0]
 8002a24:	f022 0220 	bic.w	r2, r2, #32
 8002a28:	601a      	str	r2, [r3, #0]
 8002a2a:	4b27      	ldr	r3, [pc, #156]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a2c:	4a26      	ldr	r2, [pc, #152]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a2e:	6812      	ldr	r2, [r2, #0]
 8002a30:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8002a34:	601a      	str	r2, [r3, #0]
 8002a36:	4b24      	ldr	r3, [pc, #144]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a38:	4a23      	ldr	r2, [pc, #140]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a3a:	6812      	ldr	r2, [r2, #0]
 8002a3c:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 8002a40:	601a      	str	r2, [r3, #0]
 8002a42:	4b21      	ldr	r3, [pc, #132]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a44:	4a20      	ldr	r2, [pc, #128]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a46:	6812      	ldr	r2, [r2, #0]
 8002a48:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002a4c:	601a      	str	r2, [r3, #0]
 8002a4e:	4b1e      	ldr	r3, [pc, #120]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a50:	4a1d      	ldr	r2, [pc, #116]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a52:	6812      	ldr	r2, [r2, #0]
 8002a54:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002a58:	601a      	str	r2, [r3, #0]
 8002a5a:	4b1b      	ldr	r3, [pc, #108]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a5c:	4a1a      	ldr	r2, [pc, #104]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a5e:	6812      	ldr	r2, [r2, #0]
 8002a60:	f022 72c0 	bic.w	r2, r2, #25165824	; 0x1800000
 8002a64:	601a      	str	r2, [r3, #0]
 8002a66:	4b18      	ldr	r3, [pc, #96]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a68:	4a17      	ldr	r2, [pc, #92]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a6a:	6812      	ldr	r2, [r2, #0]
 8002a6c:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8002a70:	601a      	str	r2, [r3, #0]
 8002a72:	4b15      	ldr	r3, [pc, #84]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a74:	4a14      	ldr	r2, [pc, #80]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a76:	6812      	ldr	r2, [r2, #0]
 8002a78:	f422 42c0 	bic.w	r2, r2, #24576	; 0x6000
 8002a7c:	601a      	str	r2, [r3, #0]
 8002a7e:	4b12      	ldr	r3, [pc, #72]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a80:	4a11      	ldr	r2, [pc, #68]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a82:	6812      	ldr	r2, [r2, #0]
 8002a84:	f422 52c0 	bic.w	r2, r2, #6144	; 0x1800
 8002a88:	601a      	str	r2, [r3, #0]
 8002a8a:	4b0f      	ldr	r3, [pc, #60]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a8c:	4a0e      	ldr	r2, [pc, #56]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a8e:	6812      	ldr	r2, [r2, #0]
 8002a90:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002a94:	601a      	str	r2, [r3, #0]
 8002a96:	4b0c      	ldr	r3, [pc, #48]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a98:	4a0b      	ldr	r2, [pc, #44]	; (8002ac8 <init_spi_dma+0xd8>)
 8002a9a:	6812      	ldr	r2, [r2, #0]
 8002a9c:	f042 0210 	orr.w	r2, r2, #16
 8002aa0:	601a      	str	r2, [r3, #0]
 8002aa2:	200f      	movs	r0, #15
 8002aa4:	f7ff ff8c 	bl	80029c0 <NVIC_EnableIRQ>
 8002aa8:	4b0a      	ldr	r3, [pc, #40]	; (8002ad4 <init_spi_dma+0xe4>)
 8002aaa:	4a0a      	ldr	r2, [pc, #40]	; (8002ad4 <init_spi_dma+0xe4>)
 8002aac:	68d2      	ldr	r2, [r2, #12]
 8002aae:	f042 0220 	orr.w	r2, r2, #32
 8002ab2:	60da      	str	r2, [r3, #12]
 8002ab4:	4b04      	ldr	r3, [pc, #16]	; (8002ac8 <init_spi_dma+0xd8>)
 8002ab6:	4a04      	ldr	r2, [pc, #16]	; (8002ac8 <init_spi_dma+0xd8>)
 8002ab8:	6812      	ldr	r2, [r2, #0]
 8002aba:	f042 0201 	orr.w	r2, r2, #1
 8002abe:	601a      	str	r2, [r3, #0]
 8002ac0:	bd80      	pop	{r7, pc}
 8002ac2:	bf00      	nop
 8002ac4:	40023800 	.word	0x40023800
 8002ac8:	40026070 	.word	0x40026070
 8002acc:	4000380c 	.word	0x4000380c
 8002ad0:	20000c84 	.word	0x20000c84
 8002ad4:	40026000 	.word	0x40026000

08002ad8 <coll_pwm_set>:
 8002ad8:	b480      	push	{r7}
 8002ada:	b083      	sub	sp, #12
 8002adc:	af00      	add	r7, sp, #0
 8002ade:	4603      	mov	r3, r0
 8002ae0:	80fb      	strh	r3, [r7, #6]
 8002ae2:	88fb      	ldrh	r3, [r7, #6]
 8002ae4:	f5b3 6ffa 	cmp.w	r3, #2000	; 0x7d0
 8002ae8:	d903      	bls.n	8002af2 <coll_pwm_set+0x1a>
 8002aea:	f44f 63fa 	mov.w	r3, #2000	; 0x7d0
 8002aee:	80fb      	strh	r3, [r7, #6]
 8002af0:	bf00      	nop
 8002af2:	4b04      	ldr	r3, [pc, #16]	; (8002b04 <coll_pwm_set+0x2c>)
 8002af4:	88fa      	ldrh	r2, [r7, #6]
 8002af6:	641a      	str	r2, [r3, #64]	; 0x40
 8002af8:	370c      	adds	r7, #12
 8002afa:	46bd      	mov	sp, r7
 8002afc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b00:	4770      	bx	lr
 8002b02:	bf00      	nop
 8002b04:	40000400 	.word	0x40000400

08002b08 <ind_pwm_init>:
 8002b08:	b580      	push	{r7, lr}
 8002b0a:	af00      	add	r7, sp, #0
 8002b0c:	4b47      	ldr	r3, [pc, #284]	; (8002c2c <ind_pwm_init+0x124>)
 8002b0e:	4a47      	ldr	r2, [pc, #284]	; (8002c2c <ind_pwm_init+0x124>)
 8002b10:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8002b12:	f042 0202 	orr.w	r2, r2, #2
 8002b16:	641a      	str	r2, [r3, #64]	; 0x40
 8002b18:	4b45      	ldr	r3, [pc, #276]	; (8002c30 <ind_pwm_init+0x128>)
 8002b1a:	f240 12a3 	movw	r2, #419	; 0x1a3
 8002b1e:	851a      	strh	r2, [r3, #40]	; 0x28
 8002b20:	4b43      	ldr	r3, [pc, #268]	; (8002c30 <ind_pwm_init+0x128>)
 8002b22:	f240 72cf 	movw	r2, #1999	; 0x7cf
 8002b26:	62da      	str	r2, [r3, #44]	; 0x2c
 8002b28:	4b41      	ldr	r3, [pc, #260]	; (8002c30 <ind_pwm_init+0x128>)
 8002b2a:	f240 723a 	movw	r2, #1850	; 0x73a
 8002b2e:	63da      	str	r2, [r3, #60]	; 0x3c
 8002b30:	4b3f      	ldr	r3, [pc, #252]	; (8002c30 <ind_pwm_init+0x128>)
 8002b32:	f44f 62fa 	mov.w	r2, #2000	; 0x7d0
 8002b36:	641a      	str	r2, [r3, #64]	; 0x40
 8002b38:	4b3d      	ldr	r3, [pc, #244]	; (8002c30 <ind_pwm_init+0x128>)
 8002b3a:	4a3d      	ldr	r2, [pc, #244]	; (8002c30 <ind_pwm_init+0x128>)
 8002b3c:	8992      	ldrh	r2, [r2, #12]
 8002b3e:	b292      	uxth	r2, r2
 8002b40:	f042 0201 	orr.w	r2, r2, #1
 8002b44:	b292      	uxth	r2, r2
 8002b46:	819a      	strh	r2, [r3, #12]
 8002b48:	201d      	movs	r0, #29
 8002b4a:	f7ff ff39 	bl	80029c0 <NVIC_EnableIRQ>
 8002b4e:	4b38      	ldr	r3, [pc, #224]	; (8002c30 <ind_pwm_init+0x128>)
 8002b50:	2200      	movs	r2, #0
 8002b52:	839a      	strh	r2, [r3, #28]
 8002b54:	4b36      	ldr	r3, [pc, #216]	; (8002c30 <ind_pwm_init+0x128>)
 8002b56:	4a36      	ldr	r2, [pc, #216]	; (8002c30 <ind_pwm_init+0x128>)
 8002b58:	8b92      	ldrh	r2, [r2, #28]
 8002b5a:	b292      	uxth	r2, r2
 8002b5c:	f042 0268 	orr.w	r2, r2, #104	; 0x68
 8002b60:	b292      	uxth	r2, r2
 8002b62:	839a      	strh	r2, [r3, #28]
 8002b64:	4b32      	ldr	r3, [pc, #200]	; (8002c30 <ind_pwm_init+0x128>)
 8002b66:	4a32      	ldr	r2, [pc, #200]	; (8002c30 <ind_pwm_init+0x128>)
 8002b68:	8c12      	ldrh	r2, [r2, #32]
 8002b6a:	b292      	uxth	r2, r2
 8002b6c:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002b70:	b292      	uxth	r2, r2
 8002b72:	841a      	strh	r2, [r3, #32]
 8002b74:	4b2e      	ldr	r3, [pc, #184]	; (8002c30 <ind_pwm_init+0x128>)
 8002b76:	4a2e      	ldr	r2, [pc, #184]	; (8002c30 <ind_pwm_init+0x128>)
 8002b78:	8b92      	ldrh	r2, [r2, #28]
 8002b7a:	b292      	uxth	r2, r2
 8002b7c:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 8002b80:	b292      	uxth	r2, r2
 8002b82:	839a      	strh	r2, [r3, #28]
 8002b84:	4b2a      	ldr	r3, [pc, #168]	; (8002c30 <ind_pwm_init+0x128>)
 8002b86:	4a2a      	ldr	r2, [pc, #168]	; (8002c30 <ind_pwm_init+0x128>)
 8002b88:	8c12      	ldrh	r2, [r2, #32]
 8002b8a:	b292      	uxth	r2, r2
 8002b8c:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8002b90:	b292      	uxth	r2, r2
 8002b92:	841a      	strh	r2, [r3, #32]
 8002b94:	4b26      	ldr	r3, [pc, #152]	; (8002c30 <ind_pwm_init+0x128>)
 8002b96:	4a26      	ldr	r2, [pc, #152]	; (8002c30 <ind_pwm_init+0x128>)
 8002b98:	8812      	ldrh	r2, [r2, #0]
 8002b9a:	b292      	uxth	r2, r2
 8002b9c:	f042 0201 	orr.w	r2, r2, #1
 8002ba0:	b292      	uxth	r2, r2
 8002ba2:	801a      	strh	r2, [r3, #0]
 8002ba4:	4b21      	ldr	r3, [pc, #132]	; (8002c2c <ind_pwm_init+0x124>)
 8002ba6:	4a21      	ldr	r2, [pc, #132]	; (8002c2c <ind_pwm_init+0x124>)
 8002ba8:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002baa:	f042 0202 	orr.w	r2, r2, #2
 8002bae:	631a      	str	r2, [r3, #48]	; 0x30
 8002bb0:	4b20      	ldr	r3, [pc, #128]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bb2:	4a20      	ldr	r2, [pc, #128]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bb4:	6812      	ldr	r2, [r2, #0]
 8002bb6:	f022 0203 	bic.w	r2, r2, #3
 8002bba:	601a      	str	r2, [r3, #0]
 8002bbc:	4b1d      	ldr	r3, [pc, #116]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bbe:	4a1d      	ldr	r2, [pc, #116]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bc0:	6812      	ldr	r2, [r2, #0]
 8002bc2:	f042 0202 	orr.w	r2, r2, #2
 8002bc6:	601a      	str	r2, [r3, #0]
 8002bc8:	4b1a      	ldr	r3, [pc, #104]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bca:	4a1a      	ldr	r2, [pc, #104]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bcc:	6892      	ldr	r2, [r2, #8]
 8002bce:	f042 0203 	orr.w	r2, r2, #3
 8002bd2:	609a      	str	r2, [r3, #8]
 8002bd4:	4b17      	ldr	r3, [pc, #92]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bd6:	4a17      	ldr	r2, [pc, #92]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bd8:	6a12      	ldr	r2, [r2, #32]
 8002bda:	f022 020f 	bic.w	r2, r2, #15
 8002bde:	621a      	str	r2, [r3, #32]
 8002be0:	4b14      	ldr	r3, [pc, #80]	; (8002c34 <ind_pwm_init+0x12c>)
 8002be2:	4a14      	ldr	r2, [pc, #80]	; (8002c34 <ind_pwm_init+0x12c>)
 8002be4:	6a12      	ldr	r2, [r2, #32]
 8002be6:	f042 0202 	orr.w	r2, r2, #2
 8002bea:	621a      	str	r2, [r3, #32]
 8002bec:	4b11      	ldr	r3, [pc, #68]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bee:	4a11      	ldr	r2, [pc, #68]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bf0:	6812      	ldr	r2, [r2, #0]
 8002bf2:	f022 020c 	bic.w	r2, r2, #12
 8002bf6:	601a      	str	r2, [r3, #0]
 8002bf8:	4b0e      	ldr	r3, [pc, #56]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bfa:	4a0e      	ldr	r2, [pc, #56]	; (8002c34 <ind_pwm_init+0x12c>)
 8002bfc:	6812      	ldr	r2, [r2, #0]
 8002bfe:	f042 0208 	orr.w	r2, r2, #8
 8002c02:	601a      	str	r2, [r3, #0]
 8002c04:	4b0b      	ldr	r3, [pc, #44]	; (8002c34 <ind_pwm_init+0x12c>)
 8002c06:	4a0b      	ldr	r2, [pc, #44]	; (8002c34 <ind_pwm_init+0x12c>)
 8002c08:	6892      	ldr	r2, [r2, #8]
 8002c0a:	f042 020c 	orr.w	r2, r2, #12
 8002c0e:	609a      	str	r2, [r3, #8]
 8002c10:	4b08      	ldr	r3, [pc, #32]	; (8002c34 <ind_pwm_init+0x12c>)
 8002c12:	4a08      	ldr	r2, [pc, #32]	; (8002c34 <ind_pwm_init+0x12c>)
 8002c14:	6a12      	ldr	r2, [r2, #32]
 8002c16:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8002c1a:	621a      	str	r2, [r3, #32]
 8002c1c:	4b05      	ldr	r3, [pc, #20]	; (8002c34 <ind_pwm_init+0x12c>)
 8002c1e:	4a05      	ldr	r2, [pc, #20]	; (8002c34 <ind_pwm_init+0x12c>)
 8002c20:	6a12      	ldr	r2, [r2, #32]
 8002c22:	f042 0220 	orr.w	r2, r2, #32
 8002c26:	621a      	str	r2, [r3, #32]
 8002c28:	bd80      	pop	{r7, pc}
 8002c2a:	bf00      	nop
 8002c2c:	40023800 	.word	0x40023800
 8002c30:	40000400 	.word	0x40000400
 8002c34:	40020400 	.word	0x40020400

08002c38 <spi_master_init>:
 8002c38:	b580      	push	{r7, lr}
 8002c3a:	af00      	add	r7, sp, #0
 8002c3c:	4b57      	ldr	r3, [pc, #348]	; (8002d9c <spi_master_init+0x164>)
 8002c3e:	4a57      	ldr	r2, [pc, #348]	; (8002d9c <spi_master_init+0x164>)
 8002c40:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8002c42:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 8002c46:	641a      	str	r2, [r3, #64]	; 0x40
 8002c48:	4b54      	ldr	r3, [pc, #336]	; (8002d9c <spi_master_init+0x164>)
 8002c4a:	4a54      	ldr	r2, [pc, #336]	; (8002d9c <spi_master_init+0x164>)
 8002c4c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002c4e:	f042 0202 	orr.w	r2, r2, #2
 8002c52:	631a      	str	r2, [r3, #48]	; 0x30
 8002c54:	4a52      	ldr	r2, [pc, #328]	; (8002da0 <spi_master_init+0x168>)
 8002c56:	4b52      	ldr	r3, [pc, #328]	; (8002da0 <spi_master_init+0x168>)
 8002c58:	681b      	ldr	r3, [r3, #0]
 8002c5a:	f023 4343 	bic.w	r3, r3, #3271557120	; 0xc3000000
 8002c5e:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 8002c62:	6013      	str	r3, [r2, #0]
 8002c64:	4a4e      	ldr	r2, [pc, #312]	; (8002da0 <spi_master_init+0x168>)
 8002c66:	4b4e      	ldr	r3, [pc, #312]	; (8002da0 <spi_master_init+0x168>)
 8002c68:	681b      	ldr	r3, [r3, #0]
 8002c6a:	f043 4302 	orr.w	r3, r3, #2181038080	; 0x82000000
 8002c6e:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8002c72:	6013      	str	r3, [r2, #0]
 8002c74:	4a4a      	ldr	r2, [pc, #296]	; (8002da0 <spi_master_init+0x168>)
 8002c76:	4b4a      	ldr	r3, [pc, #296]	; (8002da0 <spi_master_init+0x168>)
 8002c78:	689b      	ldr	r3, [r3, #8]
 8002c7a:	f043 4343 	orr.w	r3, r3, #3271557120	; 0xc3000000
 8002c7e:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8002c82:	6093      	str	r3, [r2, #8]
 8002c84:	4b46      	ldr	r3, [pc, #280]	; (8002da0 <spi_master_init+0x168>)
 8002c86:	4a46      	ldr	r2, [pc, #280]	; (8002da0 <spi_master_init+0x168>)
 8002c88:	6812      	ldr	r2, [r2, #0]
 8002c8a:	f022 7240 	bic.w	r2, r2, #50331648	; 0x3000000
 8002c8e:	601a      	str	r2, [r3, #0]
 8002c90:	4b43      	ldr	r3, [pc, #268]	; (8002da0 <spi_master_init+0x168>)
 8002c92:	4a43      	ldr	r2, [pc, #268]	; (8002da0 <spi_master_init+0x168>)
 8002c94:	6812      	ldr	r2, [r2, #0]
 8002c96:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002c9a:	601a      	str	r2, [r3, #0]
 8002c9c:	4b40      	ldr	r3, [pc, #256]	; (8002da0 <spi_master_init+0x168>)
 8002c9e:	4a40      	ldr	r2, [pc, #256]	; (8002da0 <spi_master_init+0x168>)
 8002ca0:	6952      	ldr	r2, [r2, #20]
 8002ca2:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8002ca6:	615a      	str	r2, [r3, #20]
 8002ca8:	4b3d      	ldr	r3, [pc, #244]	; (8002da0 <spi_master_init+0x168>)
 8002caa:	4a3d      	ldr	r2, [pc, #244]	; (8002da0 <spi_master_init+0x168>)
 8002cac:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002cae:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8002cb2:	625a      	str	r2, [r3, #36]	; 0x24
 8002cb4:	4b3a      	ldr	r3, [pc, #232]	; (8002da0 <spi_master_init+0x168>)
 8002cb6:	4a3a      	ldr	r2, [pc, #232]	; (8002da0 <spi_master_init+0x168>)
 8002cb8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002cba:	f442 62a0 	orr.w	r2, r2, #1280	; 0x500
 8002cbe:	625a      	str	r2, [r3, #36]	; 0x24
 8002cc0:	4b37      	ldr	r3, [pc, #220]	; (8002da0 <spi_master_init+0x168>)
 8002cc2:	4a37      	ldr	r2, [pc, #220]	; (8002da0 <spi_master_init+0x168>)
 8002cc4:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002cc6:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 8002cca:	625a      	str	r2, [r3, #36]	; 0x24
 8002ccc:	4b34      	ldr	r3, [pc, #208]	; (8002da0 <spi_master_init+0x168>)
 8002cce:	4a34      	ldr	r2, [pc, #208]	; (8002da0 <spi_master_init+0x168>)
 8002cd0:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002cd2:	f042 42a0 	orr.w	r2, r2, #1342177280	; 0x50000000
 8002cd6:	625a      	str	r2, [r3, #36]	; 0x24
 8002cd8:	4b31      	ldr	r3, [pc, #196]	; (8002da0 <spi_master_init+0x168>)
 8002cda:	4a31      	ldr	r2, [pc, #196]	; (8002da0 <spi_master_init+0x168>)
 8002cdc:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002cde:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8002ce2:	625a      	str	r2, [r3, #36]	; 0x24
 8002ce4:	4b2e      	ldr	r3, [pc, #184]	; (8002da0 <spi_master_init+0x168>)
 8002ce6:	4a2e      	ldr	r2, [pc, #184]	; (8002da0 <spi_master_init+0x168>)
 8002ce8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002cea:	f442 22a0 	orr.w	r2, r2, #327680	; 0x50000
 8002cee:	625a      	str	r2, [r3, #36]	; 0x24
 8002cf0:	4b2c      	ldr	r3, [pc, #176]	; (8002da4 <spi_master_init+0x16c>)
 8002cf2:	4a2c      	ldr	r2, [pc, #176]	; (8002da4 <spi_master_init+0x16c>)
 8002cf4:	8812      	ldrh	r2, [r2, #0]
 8002cf6:	b292      	uxth	r2, r2
 8002cf8:	f022 0238 	bic.w	r2, r2, #56	; 0x38
 8002cfc:	b292      	uxth	r2, r2
 8002cfe:	801a      	strh	r2, [r3, #0]
 8002d00:	4b28      	ldr	r3, [pc, #160]	; (8002da4 <spi_master_init+0x16c>)
 8002d02:	4a28      	ldr	r2, [pc, #160]	; (8002da4 <spi_master_init+0x16c>)
 8002d04:	8812      	ldrh	r2, [r2, #0]
 8002d06:	b292      	uxth	r2, r2
 8002d08:	f042 0238 	orr.w	r2, r2, #56	; 0x38
 8002d0c:	b292      	uxth	r2, r2
 8002d0e:	801a      	strh	r2, [r3, #0]
 8002d10:	4b24      	ldr	r3, [pc, #144]	; (8002da4 <spi_master_init+0x16c>)
 8002d12:	4a24      	ldr	r2, [pc, #144]	; (8002da4 <spi_master_init+0x16c>)
 8002d14:	8812      	ldrh	r2, [r2, #0]
 8002d16:	b292      	uxth	r2, r2
 8002d18:	f022 0203 	bic.w	r2, r2, #3
 8002d1c:	b292      	uxth	r2, r2
 8002d1e:	801a      	strh	r2, [r3, #0]
 8002d20:	4b20      	ldr	r3, [pc, #128]	; (8002da4 <spi_master_init+0x16c>)
 8002d22:	4a20      	ldr	r2, [pc, #128]	; (8002da4 <spi_master_init+0x16c>)
 8002d24:	8812      	ldrh	r2, [r2, #0]
 8002d26:	b292      	uxth	r2, r2
 8002d28:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002d2c:	b292      	uxth	r2, r2
 8002d2e:	801a      	strh	r2, [r3, #0]
 8002d30:	4b1c      	ldr	r3, [pc, #112]	; (8002da4 <spi_master_init+0x16c>)
 8002d32:	4a1c      	ldr	r2, [pc, #112]	; (8002da4 <spi_master_init+0x16c>)
 8002d34:	8812      	ldrh	r2, [r2, #0]
 8002d36:	b292      	uxth	r2, r2
 8002d38:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002d3c:	b292      	uxth	r2, r2
 8002d3e:	801a      	strh	r2, [r3, #0]
 8002d40:	4b18      	ldr	r3, [pc, #96]	; (8002da4 <spi_master_init+0x16c>)
 8002d42:	4a18      	ldr	r2, [pc, #96]	; (8002da4 <spi_master_init+0x16c>)
 8002d44:	8812      	ldrh	r2, [r2, #0]
 8002d46:	b292      	uxth	r2, r2
 8002d48:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002d4c:	b292      	uxth	r2, r2
 8002d4e:	801a      	strh	r2, [r3, #0]
 8002d50:	4b14      	ldr	r3, [pc, #80]	; (8002da4 <spi_master_init+0x16c>)
 8002d52:	4a14      	ldr	r2, [pc, #80]	; (8002da4 <spi_master_init+0x16c>)
 8002d54:	8892      	ldrh	r2, [r2, #4]
 8002d56:	b292      	uxth	r2, r2
 8002d58:	f042 0204 	orr.w	r2, r2, #4
 8002d5c:	b292      	uxth	r2, r2
 8002d5e:	809a      	strh	r2, [r3, #4]
 8002d60:	4b10      	ldr	r3, [pc, #64]	; (8002da4 <spi_master_init+0x16c>)
 8002d62:	4a10      	ldr	r2, [pc, #64]	; (8002da4 <spi_master_init+0x16c>)
 8002d64:	8812      	ldrh	r2, [r2, #0]
 8002d66:	b292      	uxth	r2, r2
 8002d68:	f042 0204 	orr.w	r2, r2, #4
 8002d6c:	b292      	uxth	r2, r2
 8002d6e:	801a      	strh	r2, [r3, #0]
 8002d70:	f7ff fe3e 	bl	80029f0 <init_spi_dma>
 8002d74:	4b0b      	ldr	r3, [pc, #44]	; (8002da4 <spi_master_init+0x16c>)
 8002d76:	4a0b      	ldr	r2, [pc, #44]	; (8002da4 <spi_master_init+0x16c>)
 8002d78:	8892      	ldrh	r2, [r2, #4]
 8002d7a:	b292      	uxth	r2, r2
 8002d7c:	f042 0202 	orr.w	r2, r2, #2
 8002d80:	b292      	uxth	r2, r2
 8002d82:	809a      	strh	r2, [r3, #4]
 8002d84:	4b07      	ldr	r3, [pc, #28]	; (8002da4 <spi_master_init+0x16c>)
 8002d86:	4a07      	ldr	r2, [pc, #28]	; (8002da4 <spi_master_init+0x16c>)
 8002d88:	8812      	ldrh	r2, [r2, #0]
 8002d8a:	b292      	uxth	r2, r2
 8002d8c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002d90:	b292      	uxth	r2, r2
 8002d92:	801a      	strh	r2, [r3, #0]
 8002d94:	f7ff feb8 	bl	8002b08 <ind_pwm_init>
 8002d98:	bd80      	pop	{r7, pc}
 8002d9a:	bf00      	nop
 8002d9c:	40023800 	.word	0x40023800
 8002da0:	40020400 	.word	0x40020400
 8002da4:	40003800 	.word	0x40003800

08002da8 <spi_slave_init>:
 8002da8:	b580      	push	{r7, lr}
 8002daa:	af00      	add	r7, sp, #0
 8002dac:	4b21      	ldr	r3, [pc, #132]	; (8002e34 <spi_slave_init+0x8c>)
 8002dae:	4a21      	ldr	r2, [pc, #132]	; (8002e34 <spi_slave_init+0x8c>)
 8002db0:	8812      	ldrh	r2, [r2, #0]
 8002db2:	b292      	uxth	r2, r2
 8002db4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002db8:	b292      	uxth	r2, r2
 8002dba:	801a      	strh	r2, [r3, #0]
 8002dbc:	4b1d      	ldr	r3, [pc, #116]	; (8002e34 <spi_slave_init+0x8c>)
 8002dbe:	4a1d      	ldr	r2, [pc, #116]	; (8002e34 <spi_slave_init+0x8c>)
 8002dc0:	8812      	ldrh	r2, [r2, #0]
 8002dc2:	b292      	uxth	r2, r2
 8002dc4:	f022 0203 	bic.w	r2, r2, #3
 8002dc8:	b292      	uxth	r2, r2
 8002dca:	801a      	strh	r2, [r3, #0]
 8002dcc:	4b19      	ldr	r3, [pc, #100]	; (8002e34 <spi_slave_init+0x8c>)
 8002dce:	4a19      	ldr	r2, [pc, #100]	; (8002e34 <spi_slave_init+0x8c>)
 8002dd0:	8812      	ldrh	r2, [r2, #0]
 8002dd2:	b292      	uxth	r2, r2
 8002dd4:	f042 0201 	orr.w	r2, r2, #1
 8002dd8:	b292      	uxth	r2, r2
 8002dda:	801a      	strh	r2, [r3, #0]
 8002ddc:	4b15      	ldr	r3, [pc, #84]	; (8002e34 <spi_slave_init+0x8c>)
 8002dde:	4a15      	ldr	r2, [pc, #84]	; (8002e34 <spi_slave_init+0x8c>)
 8002de0:	8812      	ldrh	r2, [r2, #0]
 8002de2:	b292      	uxth	r2, r2
 8002de4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002de8:	b292      	uxth	r2, r2
 8002dea:	801a      	strh	r2, [r3, #0]
 8002dec:	4b11      	ldr	r3, [pc, #68]	; (8002e34 <spi_slave_init+0x8c>)
 8002dee:	4a11      	ldr	r2, [pc, #68]	; (8002e34 <spi_slave_init+0x8c>)
 8002df0:	8812      	ldrh	r2, [r2, #0]
 8002df2:	b292      	uxth	r2, r2
 8002df4:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002df8:	b292      	uxth	r2, r2
 8002dfa:	801a      	strh	r2, [r3, #0]
 8002dfc:	4b0d      	ldr	r3, [pc, #52]	; (8002e34 <spi_slave_init+0x8c>)
 8002dfe:	4a0d      	ldr	r2, [pc, #52]	; (8002e34 <spi_slave_init+0x8c>)
 8002e00:	8892      	ldrh	r2, [r2, #4]
 8002e02:	b292      	uxth	r2, r2
 8002e04:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002e08:	b292      	uxth	r2, r2
 8002e0a:	809a      	strh	r2, [r3, #4]
 8002e0c:	4b09      	ldr	r3, [pc, #36]	; (8002e34 <spi_slave_init+0x8c>)
 8002e0e:	4a09      	ldr	r2, [pc, #36]	; (8002e34 <spi_slave_init+0x8c>)
 8002e10:	8812      	ldrh	r2, [r2, #0]
 8002e12:	b292      	uxth	r2, r2
 8002e14:	f022 0204 	bic.w	r2, r2, #4
 8002e18:	b292      	uxth	r2, r2
 8002e1a:	801a      	strh	r2, [r3, #0]
 8002e1c:	2023      	movs	r0, #35	; 0x23
 8002e1e:	f7ff fdcf 	bl	80029c0 <NVIC_EnableIRQ>
 8002e22:	4b04      	ldr	r3, [pc, #16]	; (8002e34 <spi_slave_init+0x8c>)
 8002e24:	4a03      	ldr	r2, [pc, #12]	; (8002e34 <spi_slave_init+0x8c>)
 8002e26:	8812      	ldrh	r2, [r2, #0]
 8002e28:	b292      	uxth	r2, r2
 8002e2a:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002e2e:	b292      	uxth	r2, r2
 8002e30:	801a      	strh	r2, [r3, #0]
 8002e32:	bd80      	pop	{r7, pc}
 8002e34:	40013000 	.word	0x40013000

08002e38 <spi_write_read>:
 8002e38:	b480      	push	{r7}
 8002e3a:	b087      	sub	sp, #28
 8002e3c:	af00      	add	r7, sp, #0
 8002e3e:	60f8      	str	r0, [r7, #12]
 8002e40:	60b9      	str	r1, [r7, #8]
 8002e42:	4613      	mov	r3, r2
 8002e44:	80fb      	strh	r3, [r7, #6]
 8002e46:	2300      	movs	r3, #0
 8002e48:	617b      	str	r3, [r7, #20]
 8002e4a:	4a2a      	ldr	r2, [pc, #168]	; (8002ef4 <spi_write_read+0xbc>)
 8002e4c:	697b      	ldr	r3, [r7, #20]
 8002e4e:	1c59      	adds	r1, r3, #1
 8002e50:	6179      	str	r1, [r7, #20]
 8002e52:	68f9      	ldr	r1, [r7, #12]
 8002e54:	440b      	add	r3, r1
 8002e56:	781b      	ldrb	r3, [r3, #0]
 8002e58:	8193      	strh	r3, [r2, #12]
 8002e5a:	e021      	b.n	8002ea0 <spi_write_read+0x68>
 8002e5c:	bf00      	nop
 8002e5e:	4b25      	ldr	r3, [pc, #148]	; (8002ef4 <spi_write_read+0xbc>)
 8002e60:	891b      	ldrh	r3, [r3, #8]
 8002e62:	b29b      	uxth	r3, r3
 8002e64:	f003 0302 	and.w	r3, r3, #2
 8002e68:	2b00      	cmp	r3, #0
 8002e6a:	d0f8      	beq.n	8002e5e <spi_write_read+0x26>
 8002e6c:	4b21      	ldr	r3, [pc, #132]	; (8002ef4 <spi_write_read+0xbc>)
 8002e6e:	697a      	ldr	r2, [r7, #20]
 8002e70:	68f9      	ldr	r1, [r7, #12]
 8002e72:	440a      	add	r2, r1
 8002e74:	7812      	ldrb	r2, [r2, #0]
 8002e76:	819a      	strh	r2, [r3, #12]
 8002e78:	bf00      	nop
 8002e7a:	4b1e      	ldr	r3, [pc, #120]	; (8002ef4 <spi_write_read+0xbc>)
 8002e7c:	891b      	ldrh	r3, [r3, #8]
 8002e7e:	b29b      	uxth	r3, r3
 8002e80:	f003 0301 	and.w	r3, r3, #1
 8002e84:	2b00      	cmp	r3, #0
 8002e86:	d0f8      	beq.n	8002e7a <spi_write_read+0x42>
 8002e88:	697b      	ldr	r3, [r7, #20]
 8002e8a:	3b01      	subs	r3, #1
 8002e8c:	68ba      	ldr	r2, [r7, #8]
 8002e8e:	4413      	add	r3, r2
 8002e90:	4a18      	ldr	r2, [pc, #96]	; (8002ef4 <spi_write_read+0xbc>)
 8002e92:	8992      	ldrh	r2, [r2, #12]
 8002e94:	b292      	uxth	r2, r2
 8002e96:	b2d2      	uxtb	r2, r2
 8002e98:	701a      	strb	r2, [r3, #0]
 8002e9a:	697b      	ldr	r3, [r7, #20]
 8002e9c:	3301      	adds	r3, #1
 8002e9e:	617b      	str	r3, [r7, #20]
 8002ea0:	88fa      	ldrh	r2, [r7, #6]
 8002ea2:	697b      	ldr	r3, [r7, #20]
 8002ea4:	429a      	cmp	r2, r3
 8002ea6:	dcd9      	bgt.n	8002e5c <spi_write_read+0x24>
 8002ea8:	bf00      	nop
 8002eaa:	4b12      	ldr	r3, [pc, #72]	; (8002ef4 <spi_write_read+0xbc>)
 8002eac:	891b      	ldrh	r3, [r3, #8]
 8002eae:	b29b      	uxth	r3, r3
 8002eb0:	f003 0301 	and.w	r3, r3, #1
 8002eb4:	2b00      	cmp	r3, #0
 8002eb6:	d0f8      	beq.n	8002eaa <spi_write_read+0x72>
 8002eb8:	88fb      	ldrh	r3, [r7, #6]
 8002eba:	3b01      	subs	r3, #1
 8002ebc:	68ba      	ldr	r2, [r7, #8]
 8002ebe:	4413      	add	r3, r2
 8002ec0:	4a0c      	ldr	r2, [pc, #48]	; (8002ef4 <spi_write_read+0xbc>)
 8002ec2:	8992      	ldrh	r2, [r2, #12]
 8002ec4:	b292      	uxth	r2, r2
 8002ec6:	b2d2      	uxtb	r2, r2
 8002ec8:	701a      	strb	r2, [r3, #0]
 8002eca:	bf00      	nop
 8002ecc:	4b09      	ldr	r3, [pc, #36]	; (8002ef4 <spi_write_read+0xbc>)
 8002ece:	891b      	ldrh	r3, [r3, #8]
 8002ed0:	b29b      	uxth	r3, r3
 8002ed2:	f003 0302 	and.w	r3, r3, #2
 8002ed6:	2b00      	cmp	r3, #0
 8002ed8:	d0f8      	beq.n	8002ecc <spi_write_read+0x94>
 8002eda:	bf00      	nop
 8002edc:	4b05      	ldr	r3, [pc, #20]	; (8002ef4 <spi_write_read+0xbc>)
 8002ede:	891b      	ldrh	r3, [r3, #8]
 8002ee0:	b29b      	uxth	r3, r3
 8002ee2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002ee6:	2b00      	cmp	r3, #0
 8002ee8:	d1f8      	bne.n	8002edc <spi_write_read+0xa4>
 8002eea:	371c      	adds	r7, #28
 8002eec:	46bd      	mov	sp, r7
 8002eee:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ef2:	4770      	bx	lr
 8002ef4:	40003800 	.word	0x40003800

08002ef8 <SPI1_IRQHandler>:
 8002ef8:	b480      	push	{r7}
 8002efa:	af00      	add	r7, sp, #0
 8002efc:	4b0a      	ldr	r3, [pc, #40]	; (8002f28 <SPI1_IRQHandler+0x30>)
 8002efe:	891b      	ldrh	r3, [r3, #8]
 8002f00:	b29b      	uxth	r3, r3
 8002f02:	f003 0301 	and.w	r3, r3, #1
 8002f06:	2b00      	cmp	r3, #0
 8002f08:	d008      	beq.n	8002f1c <SPI1_IRQHandler+0x24>
 8002f0a:	4b08      	ldr	r3, [pc, #32]	; (8002f2c <SPI1_IRQHandler+0x34>)
 8002f0c:	2201      	movs	r2, #1
 8002f0e:	601a      	str	r2, [r3, #0]
 8002f10:	4b05      	ldr	r3, [pc, #20]	; (8002f28 <SPI1_IRQHandler+0x30>)
 8002f12:	899b      	ldrh	r3, [r3, #12]
 8002f14:	b29b      	uxth	r3, r3
 8002f16:	b2da      	uxtb	r2, r3
 8002f18:	4b05      	ldr	r3, [pc, #20]	; (8002f30 <SPI1_IRQHandler+0x38>)
 8002f1a:	701a      	strb	r2, [r3, #0]
 8002f1c:	4b02      	ldr	r3, [pc, #8]	; (8002f28 <SPI1_IRQHandler+0x30>)
 8002f1e:	891b      	ldrh	r3, [r3, #8]
 8002f20:	46bd      	mov	sp, r7
 8002f22:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f26:	4770      	bx	lr
 8002f28:	40013000 	.word	0x40013000
 8002f2c:	20000c8c 	.word	0x20000c8c
 8002f30:	20000c90 	.word	0x20000c90

08002f34 <TIM3_IRQHandler>:
 8002f34:	b580      	push	{r7, lr}
 8002f36:	af00      	add	r7, sp, #0
 8002f38:	4b12      	ldr	r3, [pc, #72]	; (8002f84 <TIM3_IRQHandler+0x50>)
 8002f3a:	4a12      	ldr	r2, [pc, #72]	; (8002f84 <TIM3_IRQHandler+0x50>)
 8002f3c:	8a12      	ldrh	r2, [r2, #16]
 8002f3e:	b292      	uxth	r2, r2
 8002f40:	f022 0201 	bic.w	r2, r2, #1
 8002f44:	b292      	uxth	r2, r2
 8002f46:	821a      	strh	r2, [r3, #16]
 8002f48:	4b0f      	ldr	r3, [pc, #60]	; (8002f88 <TIM3_IRQHandler+0x54>)
 8002f4a:	4a0f      	ldr	r2, [pc, #60]	; (8002f88 <TIM3_IRQHandler+0x54>)
 8002f4c:	6812      	ldr	r2, [r2, #0]
 8002f4e:	f042 0201 	orr.w	r2, r2, #1
 8002f52:	601a      	str	r2, [r3, #0]
 8002f54:	4b0d      	ldr	r3, [pc, #52]	; (8002f8c <TIM3_IRQHandler+0x58>)
 8002f56:	681a      	ldr	r2, [r3, #0]
 8002f58:	4b0d      	ldr	r3, [pc, #52]	; (8002f90 <TIM3_IRQHandler+0x5c>)
 8002f5a:	781b      	ldrb	r3, [r3, #0]
 8002f5c:	4619      	mov	r1, r3
 8002f5e:	4b0d      	ldr	r3, [pc, #52]	; (8002f94 <TIM3_IRQHandler+0x60>)
 8002f60:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002f64:	4b09      	ldr	r3, [pc, #36]	; (8002f8c <TIM3_IRQHandler+0x58>)
 8002f66:	681b      	ldr	r3, [r3, #0]
 8002f68:	f083 0201 	eor.w	r2, r3, #1
 8002f6c:	4b07      	ldr	r3, [pc, #28]	; (8002f8c <TIM3_IRQHandler+0x58>)
 8002f6e:	601a      	str	r2, [r3, #0]
 8002f70:	4b06      	ldr	r3, [pc, #24]	; (8002f8c <TIM3_IRQHandler+0x58>)
 8002f72:	681a      	ldr	r2, [r3, #0]
 8002f74:	4b08      	ldr	r3, [pc, #32]	; (8002f98 <TIM3_IRQHandler+0x64>)
 8002f76:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8002f7a:	4618      	mov	r0, r3
 8002f7c:	f000 fd10 	bl	80039a0 <i2c_start>
 8002f80:	bd80      	pop	{r7, pc}
 8002f82:	bf00      	nop
 8002f84:	40000400 	.word	0x40000400
 8002f88:	40026070 	.word	0x40026070
 8002f8c:	20000c94 	.word	0x20000c94
 8002f90:	200012d8 	.word	0x200012d8
 8002f94:	20000c9c 	.word	0x20000c9c
 8002f98:	08004ec8 	.word	0x08004ec8

08002f9c <DMA1_Stream4_IRQHandler>:
 8002f9c:	b480      	push	{r7}
 8002f9e:	af00      	add	r7, sp, #0
 8002fa0:	4b07      	ldr	r3, [pc, #28]	; (8002fc0 <DMA1_Stream4_IRQHandler+0x24>)
 8002fa2:	4a07      	ldr	r2, [pc, #28]	; (8002fc0 <DMA1_Stream4_IRQHandler+0x24>)
 8002fa4:	68d2      	ldr	r2, [r2, #12]
 8002fa6:	f042 0220 	orr.w	r2, r2, #32
 8002faa:	60da      	str	r2, [r3, #12]
 8002fac:	4b05      	ldr	r3, [pc, #20]	; (8002fc4 <DMA1_Stream4_IRQHandler+0x28>)
 8002fae:	4a05      	ldr	r2, [pc, #20]	; (8002fc4 <DMA1_Stream4_IRQHandler+0x28>)
 8002fb0:	6812      	ldr	r2, [r2, #0]
 8002fb2:	f022 0201 	bic.w	r2, r2, #1
 8002fb6:	601a      	str	r2, [r3, #0]
 8002fb8:	46bd      	mov	sp, r7
 8002fba:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002fbe:	4770      	bx	lr
 8002fc0:	40026000 	.word	0x40026000
 8002fc4:	40026070 	.word	0x40026070

08002fc8 <update_reg_ch1>:
 8002fc8:	b480      	push	{r7}
 8002fca:	b085      	sub	sp, #20
 8002fcc:	af00      	add	r7, sp, #0
 8002fce:	6078      	str	r0, [r7, #4]
 8002fd0:	2300      	movs	r3, #0
 8002fd2:	60fb      	str	r3, [r7, #12]
 8002fd4:	2300      	movs	r3, #0
 8002fd6:	60bb      	str	r3, [r7, #8]
 8002fd8:	4b14      	ldr	r3, [pc, #80]	; (800302c <update_reg_ch1+0x64>)
 8002fda:	681b      	ldr	r3, [r3, #0]
 8002fdc:	687a      	ldr	r2, [r7, #4]
 8002fde:	fb02 f203 	mul.w	r2, r2, r3
 8002fe2:	4b13      	ldr	r3, [pc, #76]	; (8003030 <update_reg_ch1+0x68>)
 8002fe4:	681b      	ldr	r3, [r3, #0]
 8002fe6:	4413      	add	r3, r2
 8002fe8:	60fb      	str	r3, [r7, #12]
 8002fea:	68fa      	ldr	r2, [r7, #12]
 8002fec:	4b11      	ldr	r3, [pc, #68]	; (8003034 <update_reg_ch1+0x6c>)
 8002fee:	429a      	cmp	r2, r3
 8002ff0:	dd02      	ble.n	8002ff8 <update_reg_ch1+0x30>
 8002ff2:	4b10      	ldr	r3, [pc, #64]	; (8003034 <update_reg_ch1+0x6c>)
 8002ff4:	60fb      	str	r3, [r7, #12]
 8002ff6:	bf00      	nop
 8002ff8:	68fa      	ldr	r2, [r7, #12]
 8002ffa:	4b0f      	ldr	r3, [pc, #60]	; (8003038 <update_reg_ch1+0x70>)
 8002ffc:	429a      	cmp	r2, r3
 8002ffe:	da02      	bge.n	8003006 <update_reg_ch1+0x3e>
 8003000:	4b0d      	ldr	r3, [pc, #52]	; (8003038 <update_reg_ch1+0x70>)
 8003002:	60fb      	str	r3, [r7, #12]
 8003004:	bf00      	nop
 8003006:	4b0d      	ldr	r3, [pc, #52]	; (800303c <update_reg_ch1+0x74>)
 8003008:	681b      	ldr	r3, [r3, #0]
 800300a:	687a      	ldr	r2, [r7, #4]
 800300c:	fb02 f203 	mul.w	r2, r2, r3
 8003010:	68fb      	ldr	r3, [r7, #12]
 8003012:	4413      	add	r3, r2
 8003014:	60bb      	str	r3, [r7, #8]
 8003016:	4b06      	ldr	r3, [pc, #24]	; (8003030 <update_reg_ch1+0x68>)
 8003018:	68fa      	ldr	r2, [r7, #12]
 800301a:	601a      	str	r2, [r3, #0]
 800301c:	68bb      	ldr	r3, [r7, #8]
 800301e:	4618      	mov	r0, r3
 8003020:	3714      	adds	r7, #20
 8003022:	46bd      	mov	sp, r7
 8003024:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003028:	4770      	bx	lr
 800302a:	bf00      	nop
 800302c:	2000022c 	.word	0x2000022c
 8003030:	20000cc0 	.word	0x20000cc0
 8003034:	3b9aca00 	.word	0x3b9aca00
 8003038:	c4653600 	.word	0xc4653600
 800303c:	20000230 	.word	0x20000230

08003040 <update_reg_ch2>:
 8003040:	b480      	push	{r7}
 8003042:	b085      	sub	sp, #20
 8003044:	af00      	add	r7, sp, #0
 8003046:	6078      	str	r0, [r7, #4]
 8003048:	2300      	movs	r3, #0
 800304a:	60fb      	str	r3, [r7, #12]
 800304c:	2300      	movs	r3, #0
 800304e:	60bb      	str	r3, [r7, #8]
 8003050:	4b14      	ldr	r3, [pc, #80]	; (80030a4 <update_reg_ch2+0x64>)
 8003052:	681b      	ldr	r3, [r3, #0]
 8003054:	687a      	ldr	r2, [r7, #4]
 8003056:	fb02 f203 	mul.w	r2, r2, r3
 800305a:	4b13      	ldr	r3, [pc, #76]	; (80030a8 <update_reg_ch2+0x68>)
 800305c:	681b      	ldr	r3, [r3, #0]
 800305e:	4413      	add	r3, r2
 8003060:	60fb      	str	r3, [r7, #12]
 8003062:	68fa      	ldr	r2, [r7, #12]
 8003064:	4b11      	ldr	r3, [pc, #68]	; (80030ac <update_reg_ch2+0x6c>)
 8003066:	429a      	cmp	r2, r3
 8003068:	dd02      	ble.n	8003070 <update_reg_ch2+0x30>
 800306a:	4b10      	ldr	r3, [pc, #64]	; (80030ac <update_reg_ch2+0x6c>)
 800306c:	60fb      	str	r3, [r7, #12]
 800306e:	bf00      	nop
 8003070:	68fa      	ldr	r2, [r7, #12]
 8003072:	4b0f      	ldr	r3, [pc, #60]	; (80030b0 <update_reg_ch2+0x70>)
 8003074:	429a      	cmp	r2, r3
 8003076:	da02      	bge.n	800307e <update_reg_ch2+0x3e>
 8003078:	4b0d      	ldr	r3, [pc, #52]	; (80030b0 <update_reg_ch2+0x70>)
 800307a:	60fb      	str	r3, [r7, #12]
 800307c:	bf00      	nop
 800307e:	4b0d      	ldr	r3, [pc, #52]	; (80030b4 <update_reg_ch2+0x74>)
 8003080:	681b      	ldr	r3, [r3, #0]
 8003082:	687a      	ldr	r2, [r7, #4]
 8003084:	fb02 f203 	mul.w	r2, r2, r3
 8003088:	68fb      	ldr	r3, [r7, #12]
 800308a:	4413      	add	r3, r2
 800308c:	60bb      	str	r3, [r7, #8]
 800308e:	4b06      	ldr	r3, [pc, #24]	; (80030a8 <update_reg_ch2+0x68>)
 8003090:	68fa      	ldr	r2, [r7, #12]
 8003092:	601a      	str	r2, [r3, #0]
 8003094:	68bb      	ldr	r3, [r7, #8]
 8003096:	4618      	mov	r0, r3
 8003098:	3714      	adds	r7, #20
 800309a:	46bd      	mov	sp, r7
 800309c:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030a0:	4770      	bx	lr
 80030a2:	bf00      	nop
 80030a4:	2000022c 	.word	0x2000022c
 80030a8:	20000cc4 	.word	0x20000cc4
 80030ac:	3b9aca00 	.word	0x3b9aca00
 80030b0:	c4653600 	.word	0xc4653600
 80030b4:	20000230 	.word	0x20000230

080030b8 <fet_down>:
 80030b8:	b480      	push	{r7}
 80030ba:	af00      	add	r7, sp, #0
 80030bc:	4b05      	ldr	r3, [pc, #20]	; (80030d4 <fet_down+0x1c>)
 80030be:	f44f 627a 	mov.w	r2, #4000	; 0xfa0
 80030c2:	615a      	str	r2, [r3, #20]
 80030c4:	4b03      	ldr	r3, [pc, #12]	; (80030d4 <fet_down+0x1c>)
 80030c6:	2200      	movs	r2, #0
 80030c8:	609a      	str	r2, [r3, #8]
 80030ca:	46bd      	mov	sp, r7
 80030cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030d0:	4770      	bx	lr
 80030d2:	bf00      	nop
 80030d4:	40007400 	.word	0x40007400

080030d8 <reg_out_ch1>:
 80030d8:	b580      	push	{r7, lr}
 80030da:	b082      	sub	sp, #8
 80030dc:	af00      	add	r7, sp, #0
 80030de:	6078      	str	r0, [r7, #4]
 80030e0:	4b05      	ldr	r3, [pc, #20]	; (80030f8 <reg_out_ch1+0x20>)
 80030e2:	881b      	ldrh	r3, [r3, #0]
 80030e4:	b29b      	uxth	r3, r3
 80030e6:	4618      	mov	r0, r3
 80030e8:	f7fe fcca 	bl	8001a80 <dac_offset_set>
 80030ec:	4b03      	ldr	r3, [pc, #12]	; (80030fc <reg_out_ch1+0x24>)
 80030ee:	687a      	ldr	r2, [r7, #4]
 80030f0:	609a      	str	r2, [r3, #8]
 80030f2:	3708      	adds	r7, #8
 80030f4:	46bd      	mov	sp, r7
 80030f6:	bd80      	pop	{r7, pc}
 80030f8:	20000c98 	.word	0x20000c98
 80030fc:	40007400 	.word	0x40007400

08003100 <get_current_ch1>:
 8003100:	b480      	push	{r7}
 8003102:	af00      	add	r7, sp, #0
 8003104:	4b04      	ldr	r3, [pc, #16]	; (8003118 <get_current_ch1+0x18>)
 8003106:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8003108:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 800310c:	330f      	adds	r3, #15
 800310e:	4618      	mov	r0, r3
 8003110:	46bd      	mov	sp, r7
 8003112:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003116:	4770      	bx	lr
 8003118:	40012000 	.word	0x40012000

0800311c <get_current_ch2>:
 800311c:	b480      	push	{r7}
 800311e:	af00      	add	r7, sp, #0
 8003120:	4b04      	ldr	r3, [pc, #16]	; (8003134 <get_current_ch2+0x18>)
 8003122:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8003124:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 8003128:	330f      	adds	r3, #15
 800312a:	4618      	mov	r0, r3
 800312c:	46bd      	mov	sp, r7
 800312e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003132:	4770      	bx	lr
 8003134:	40012100 	.word	0x40012100

08003138 <get_voltage>:
 8003138:	b480      	push	{r7}
 800313a:	b085      	sub	sp, #20
 800313c:	af00      	add	r7, sp, #0
 800313e:	4b28      	ldr	r3, [pc, #160]	; (80031e0 <get_voltage+0xa8>)
 8003140:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8003142:	60fb      	str	r3, [r7, #12]
 8003144:	4b27      	ldr	r3, [pc, #156]	; (80031e4 <get_voltage+0xac>)
 8003146:	681b      	ldr	r3, [r3, #0]
 8003148:	68fa      	ldr	r2, [r7, #12]
 800314a:	fa02 f303 	lsl.w	r3, r2, r3
 800314e:	60bb      	str	r3, [r7, #8]
 8003150:	4b25      	ldr	r3, [pc, #148]	; (80031e8 <get_voltage+0xb0>)
 8003152:	681b      	ldr	r3, [r3, #0]
 8003154:	1c59      	adds	r1, r3, #1
 8003156:	4a24      	ldr	r2, [pc, #144]	; (80031e8 <get_voltage+0xb0>)
 8003158:	6011      	str	r1, [r2, #0]
 800315a:	b2db      	uxtb	r3, r3
 800315c:	2b00      	cmp	r3, #0
 800315e:	d138      	bne.n	80031d2 <get_voltage+0x9a>
 8003160:	68fa      	ldr	r2, [r7, #12]
 8003162:	f240 53db 	movw	r3, #1499	; 0x5db
 8003166:	429a      	cmp	r2, r3
 8003168:	d807      	bhi.n	800317a <get_voltage+0x42>
 800316a:	4b1e      	ldr	r3, [pc, #120]	; (80031e4 <get_voltage+0xac>)
 800316c:	681b      	ldr	r3, [r3, #0]
 800316e:	1e59      	subs	r1, r3, #1
 8003170:	4a1c      	ldr	r2, [pc, #112]	; (80031e4 <get_voltage+0xac>)
 8003172:	6011      	str	r1, [r2, #0]
 8003174:	2b00      	cmp	r3, #0
 8003176:	d000      	beq.n	800317a <get_voltage+0x42>
 8003178:	bf00      	nop
 800317a:	68fb      	ldr	r3, [r7, #12]
 800317c:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 8003180:	d907      	bls.n	8003192 <get_voltage+0x5a>
 8003182:	4b18      	ldr	r3, [pc, #96]	; (80031e4 <get_voltage+0xac>)
 8003184:	681b      	ldr	r3, [r3, #0]
 8003186:	1c59      	adds	r1, r3, #1
 8003188:	4a16      	ldr	r2, [pc, #88]	; (80031e4 <get_voltage+0xac>)
 800318a:	6011      	str	r1, [r2, #0]
 800318c:	2b00      	cmp	r3, #0
 800318e:	d000      	beq.n	8003192 <get_voltage+0x5a>
 8003190:	bf00      	nop
 8003192:	4b14      	ldr	r3, [pc, #80]	; (80031e4 <get_voltage+0xac>)
 8003194:	681b      	ldr	r3, [r3, #0]
 8003196:	2b08      	cmp	r3, #8
 8003198:	dd03      	ble.n	80031a2 <get_voltage+0x6a>
 800319a:	4b12      	ldr	r3, [pc, #72]	; (80031e4 <get_voltage+0xac>)
 800319c:	2208      	movs	r2, #8
 800319e:	601a      	str	r2, [r3, #0]
 80031a0:	bf00      	nop
 80031a2:	4b10      	ldr	r3, [pc, #64]	; (80031e4 <get_voltage+0xac>)
 80031a4:	681b      	ldr	r3, [r3, #0]
 80031a6:	2b00      	cmp	r3, #0
 80031a8:	da02      	bge.n	80031b0 <get_voltage+0x78>
 80031aa:	4b0e      	ldr	r3, [pc, #56]	; (80031e4 <get_voltage+0xac>)
 80031ac:	2200      	movs	r2, #0
 80031ae:	601a      	str	r2, [r3, #0]
 80031b0:	4b0e      	ldr	r3, [pc, #56]	; (80031ec <get_voltage+0xb4>)
 80031b2:	695b      	ldr	r3, [r3, #20]
 80031b4:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 80031b8:	607b      	str	r3, [r7, #4]
 80031ba:	4b0a      	ldr	r3, [pc, #40]	; (80031e4 <get_voltage+0xac>)
 80031bc:	681b      	ldr	r3, [r3, #0]
 80031be:	22ff      	movs	r2, #255	; 0xff
 80031c0:	fa02 f303 	lsl.w	r3, r2, r3
 80031c4:	b2db      	uxtb	r3, r3
 80031c6:	687a      	ldr	r2, [r7, #4]
 80031c8:	4313      	orrs	r3, r2
 80031ca:	607b      	str	r3, [r7, #4]
 80031cc:	4b07      	ldr	r3, [pc, #28]	; (80031ec <get_voltage+0xb4>)
 80031ce:	687a      	ldr	r2, [r7, #4]
 80031d0:	615a      	str	r2, [r3, #20]
 80031d2:	68bb      	ldr	r3, [r7, #8]
 80031d4:	4618      	mov	r0, r3
 80031d6:	3714      	adds	r7, #20
 80031d8:	46bd      	mov	sp, r7
 80031da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80031de:	4770      	bx	lr
 80031e0:	40012200 	.word	0x40012200
 80031e4:	20000cbc 	.word	0x20000cbc
 80031e8:	20000cc8 	.word	0x20000cc8
 80031ec:	40020c00 	.word	0x40020c00

080031f0 <update_vmeter>:
 80031f0:	b480      	push	{r7}
 80031f2:	b083      	sub	sp, #12
 80031f4:	af00      	add	r7, sp, #0
 80031f6:	6078      	str	r0, [r7, #4]
 80031f8:	4b69      	ldr	r3, [pc, #420]	; (80033a0 <update_vmeter+0x1b0>)
 80031fa:	681a      	ldr	r2, [r3, #0]
 80031fc:	687b      	ldr	r3, [r7, #4]
 80031fe:	441a      	add	r2, r3
 8003200:	4b68      	ldr	r3, [pc, #416]	; (80033a4 <update_vmeter+0x1b4>)
 8003202:	6819      	ldr	r1, [r3, #0]
 8003204:	4b68      	ldr	r3, [pc, #416]	; (80033a8 <update_vmeter+0x1b8>)
 8003206:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
 800320a:	1ad2      	subs	r2, r2, r3
 800320c:	4b64      	ldr	r3, [pc, #400]	; (80033a0 <update_vmeter+0x1b0>)
 800320e:	601a      	str	r2, [r3, #0]
 8003210:	4b64      	ldr	r3, [pc, #400]	; (80033a4 <update_vmeter+0x1b4>)
 8003212:	681a      	ldr	r2, [r3, #0]
 8003214:	4b64      	ldr	r3, [pc, #400]	; (80033a8 <update_vmeter+0x1b8>)
 8003216:	6879      	ldr	r1, [r7, #4]
 8003218:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800321c:	4b61      	ldr	r3, [pc, #388]	; (80033a4 <update_vmeter+0x1b4>)
 800321e:	681b      	ldr	r3, [r3, #0]
 8003220:	3301      	adds	r3, #1
 8003222:	f003 027f 	and.w	r2, r3, #127	; 0x7f
 8003226:	4b5f      	ldr	r3, [pc, #380]	; (80033a4 <update_vmeter+0x1b4>)
 8003228:	601a      	str	r2, [r3, #0]
 800322a:	4b60      	ldr	r3, [pc, #384]	; (80033ac <update_vmeter+0x1bc>)
 800322c:	681b      	ldr	r3, [r3, #0]
 800322e:	2b00      	cmp	r3, #0
 8003230:	d012      	beq.n	8003258 <update_vmeter+0x68>
 8003232:	4b5f      	ldr	r3, [pc, #380]	; (80033b0 <update_vmeter+0x1c0>)
 8003234:	4a5e      	ldr	r2, [pc, #376]	; (80033b0 <update_vmeter+0x1c0>)
 8003236:	6952      	ldr	r2, [r2, #20]
 8003238:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800323c:	615a      	str	r2, [r3, #20]
 800323e:	4b5c      	ldr	r3, [pc, #368]	; (80033b0 <update_vmeter+0x1c0>)
 8003240:	4a5b      	ldr	r2, [pc, #364]	; (80033b0 <update_vmeter+0x1c0>)
 8003242:	6952      	ldr	r2, [r2, #20]
 8003244:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8003248:	615a      	str	r2, [r3, #20]
 800324a:	4b5a      	ldr	r3, [pc, #360]	; (80033b4 <update_vmeter+0x1c4>)
 800324c:	2200      	movs	r2, #0
 800324e:	601a      	str	r2, [r3, #0]
 8003250:	4b59      	ldr	r3, [pc, #356]	; (80033b8 <update_vmeter+0x1c8>)
 8003252:	2200      	movs	r2, #0
 8003254:	601a      	str	r2, [r3, #0]
 8003256:	e09d      	b.n	8003394 <update_vmeter+0x1a4>
 8003258:	4b51      	ldr	r3, [pc, #324]	; (80033a0 <update_vmeter+0x1b0>)
 800325a:	681a      	ldr	r2, [r3, #0]
 800325c:	f64f 53e7 	movw	r3, #64999	; 0xfde7
 8003260:	429a      	cmp	r2, r3
 8003262:	d812      	bhi.n	800328a <update_vmeter+0x9a>
 8003264:	4b52      	ldr	r3, [pc, #328]	; (80033b0 <update_vmeter+0x1c0>)
 8003266:	4a52      	ldr	r2, [pc, #328]	; (80033b0 <update_vmeter+0x1c0>)
 8003268:	6952      	ldr	r2, [r2, #20]
 800326a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800326e:	615a      	str	r2, [r3, #20]
 8003270:	4b4f      	ldr	r3, [pc, #316]	; (80033b0 <update_vmeter+0x1c0>)
 8003272:	4a4f      	ldr	r2, [pc, #316]	; (80033b0 <update_vmeter+0x1c0>)
 8003274:	6952      	ldr	r2, [r2, #20]
 8003276:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800327a:	615a      	str	r2, [r3, #20]
 800327c:	4b4d      	ldr	r3, [pc, #308]	; (80033b4 <update_vmeter+0x1c4>)
 800327e:	2200      	movs	r2, #0
 8003280:	601a      	str	r2, [r3, #0]
 8003282:	4b4d      	ldr	r3, [pc, #308]	; (80033b8 <update_vmeter+0x1c8>)
 8003284:	2200      	movs	r2, #0
 8003286:	601a      	str	r2, [r3, #0]
 8003288:	e084      	b.n	8003394 <update_vmeter+0x1a4>
 800328a:	4b45      	ldr	r3, [pc, #276]	; (80033a0 <update_vmeter+0x1b0>)
 800328c:	681a      	ldr	r2, [r3, #0]
 800328e:	4b4b      	ldr	r3, [pc, #300]	; (80033bc <update_vmeter+0x1cc>)
 8003290:	429a      	cmp	r2, r3
 8003292:	d97f      	bls.n	8003394 <update_vmeter+0x1a4>
 8003294:	4b46      	ldr	r3, [pc, #280]	; (80033b0 <update_vmeter+0x1c0>)
 8003296:	4a46      	ldr	r2, [pc, #280]	; (80033b0 <update_vmeter+0x1c0>)
 8003298:	6952      	ldr	r2, [r2, #20]
 800329a:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 800329e:	615a      	str	r2, [r3, #20]
 80032a0:	4b43      	ldr	r3, [pc, #268]	; (80033b0 <update_vmeter+0x1c0>)
 80032a2:	4a43      	ldr	r2, [pc, #268]	; (80033b0 <update_vmeter+0x1c0>)
 80032a4:	6952      	ldr	r2, [r2, #20]
 80032a6:	f422 7280 	bic.w	r2, r2, #256	; 0x100
 80032aa:	615a      	str	r2, [r3, #20]
 80032ac:	4b44      	ldr	r3, [pc, #272]	; (80033c0 <update_vmeter+0x1d0>)
 80032ae:	889b      	ldrh	r3, [r3, #4]
 80032b0:	2b00      	cmp	r3, #0
 80032b2:	d114      	bne.n	80032de <update_vmeter+0xee>
 80032b4:	4b42      	ldr	r3, [pc, #264]	; (80033c0 <update_vmeter+0x1d0>)
 80032b6:	881b      	ldrh	r3, [r3, #0]
 80032b8:	461a      	mov	r2, r3
 80032ba:	4613      	mov	r3, r2
 80032bc:	00db      	lsls	r3, r3, #3
 80032be:	4413      	add	r3, r2
 80032c0:	011a      	lsls	r2, r3, #4
 80032c2:	1ad2      	subs	r2, r2, r3
 80032c4:	4b3e      	ldr	r3, [pc, #248]	; (80033c0 <update_vmeter+0x1d0>)
 80032c6:	881b      	ldrh	r3, [r3, #0]
 80032c8:	085b      	lsrs	r3, r3, #1
 80032ca:	b29b      	uxth	r3, r3
 80032cc:	441a      	add	r2, r3
 80032ce:	4b3c      	ldr	r3, [pc, #240]	; (80033c0 <update_vmeter+0x1d0>)
 80032d0:	881b      	ldrh	r3, [r3, #0]
 80032d2:	089b      	lsrs	r3, r3, #2
 80032d4:	b29b      	uxth	r3, r3
 80032d6:	441a      	add	r2, r3
 80032d8:	4b36      	ldr	r3, [pc, #216]	; (80033b4 <update_vmeter+0x1c4>)
 80032da:	601a      	str	r2, [r3, #0]
 80032dc:	e00c      	b.n	80032f8 <update_vmeter+0x108>
 80032de:	4b38      	ldr	r3, [pc, #224]	; (80033c0 <update_vmeter+0x1d0>)
 80032e0:	889b      	ldrh	r3, [r3, #4]
 80032e2:	687a      	ldr	r2, [r7, #4]
 80032e4:	fb92 f3f3 	sdiv	r3, r2, r3
 80032e8:	4a36      	ldr	r2, [pc, #216]	; (80033c4 <update_vmeter+0x1d4>)
 80032ea:	fb82 1203 	smull	r1, r2, r2, r3
 80032ee:	1092      	asrs	r2, r2, #2
 80032f0:	17db      	asrs	r3, r3, #31
 80032f2:	1ad2      	subs	r2, r2, r3
 80032f4:	4b2f      	ldr	r3, [pc, #188]	; (80033b4 <update_vmeter+0x1c4>)
 80032f6:	601a      	str	r2, [r3, #0]
 80032f8:	4b31      	ldr	r3, [pc, #196]	; (80033c0 <update_vmeter+0x1d0>)
 80032fa:	88db      	ldrh	r3, [r3, #6]
 80032fc:	2b00      	cmp	r3, #0
 80032fe:	d114      	bne.n	800332a <update_vmeter+0x13a>
 8003300:	4b2f      	ldr	r3, [pc, #188]	; (80033c0 <update_vmeter+0x1d0>)
 8003302:	885b      	ldrh	r3, [r3, #2]
 8003304:	461a      	mov	r2, r3
 8003306:	4613      	mov	r3, r2
 8003308:	011b      	lsls	r3, r3, #4
 800330a:	4413      	add	r3, r2
 800330c:	00db      	lsls	r3, r3, #3
 800330e:	441a      	add	r2, r3
 8003310:	4b2b      	ldr	r3, [pc, #172]	; (80033c0 <update_vmeter+0x1d0>)
 8003312:	885b      	ldrh	r3, [r3, #2]
 8003314:	085b      	lsrs	r3, r3, #1
 8003316:	b29b      	uxth	r3, r3
 8003318:	441a      	add	r2, r3
 800331a:	4b29      	ldr	r3, [pc, #164]	; (80033c0 <update_vmeter+0x1d0>)
 800331c:	885b      	ldrh	r3, [r3, #2]
 800331e:	089b      	lsrs	r3, r3, #2
 8003320:	b29b      	uxth	r3, r3
 8003322:	441a      	add	r2, r3
 8003324:	4b24      	ldr	r3, [pc, #144]	; (80033b8 <update_vmeter+0x1c8>)
 8003326:	601a      	str	r2, [r3, #0]
 8003328:	e00c      	b.n	8003344 <update_vmeter+0x154>
 800332a:	4b25      	ldr	r3, [pc, #148]	; (80033c0 <update_vmeter+0x1d0>)
 800332c:	88db      	ldrh	r3, [r3, #6]
 800332e:	687a      	ldr	r2, [r7, #4]
 8003330:	fb92 f3f3 	sdiv	r3, r2, r3
 8003334:	4a23      	ldr	r2, [pc, #140]	; (80033c4 <update_vmeter+0x1d4>)
 8003336:	fb82 1203 	smull	r1, r2, r2, r3
 800333a:	1092      	asrs	r2, r2, #2
 800333c:	17db      	asrs	r3, r3, #31
 800333e:	1ad2      	subs	r2, r2, r3
 8003340:	4b1d      	ldr	r3, [pc, #116]	; (80033b8 <update_vmeter+0x1c8>)
 8003342:	601a      	str	r2, [r3, #0]
 8003344:	4b20      	ldr	r3, [pc, #128]	; (80033c8 <update_vmeter+0x1d8>)
 8003346:	681b      	ldr	r3, [r3, #0]
 8003348:	2b00      	cmp	r3, #0
 800334a:	d023      	beq.n	8003394 <update_vmeter+0x1a4>
 800334c:	4b1f      	ldr	r3, [pc, #124]	; (80033cc <update_vmeter+0x1dc>)
 800334e:	681a      	ldr	r2, [r3, #0]
 8003350:	4613      	mov	r3, r2
 8003352:	00db      	lsls	r3, r3, #3
 8003354:	4413      	add	r3, r2
 8003356:	011a      	lsls	r2, r3, #4
 8003358:	1ad2      	subs	r2, r2, r3
 800335a:	4b1c      	ldr	r3, [pc, #112]	; (80033cc <update_vmeter+0x1dc>)
 800335c:	681b      	ldr	r3, [r3, #0]
 800335e:	085b      	lsrs	r3, r3, #1
 8003360:	441a      	add	r2, r3
 8003362:	4b1a      	ldr	r3, [pc, #104]	; (80033cc <update_vmeter+0x1dc>)
 8003364:	681b      	ldr	r3, [r3, #0]
 8003366:	089b      	lsrs	r3, r3, #2
 8003368:	4413      	add	r3, r2
 800336a:	461a      	mov	r2, r3
 800336c:	4b11      	ldr	r3, [pc, #68]	; (80033b4 <update_vmeter+0x1c4>)
 800336e:	601a      	str	r2, [r3, #0]
 8003370:	4b16      	ldr	r3, [pc, #88]	; (80033cc <update_vmeter+0x1dc>)
 8003372:	681a      	ldr	r2, [r3, #0]
 8003374:	4613      	mov	r3, r2
 8003376:	011b      	lsls	r3, r3, #4
 8003378:	4413      	add	r3, r2
 800337a:	00db      	lsls	r3, r3, #3
 800337c:	441a      	add	r2, r3
 800337e:	4b13      	ldr	r3, [pc, #76]	; (80033cc <update_vmeter+0x1dc>)
 8003380:	681b      	ldr	r3, [r3, #0]
 8003382:	085b      	lsrs	r3, r3, #1
 8003384:	441a      	add	r2, r3
 8003386:	4b11      	ldr	r3, [pc, #68]	; (80033cc <update_vmeter+0x1dc>)
 8003388:	681b      	ldr	r3, [r3, #0]
 800338a:	089b      	lsrs	r3, r3, #2
 800338c:	4413      	add	r3, r2
 800338e:	461a      	mov	r2, r3
 8003390:	4b09      	ldr	r3, [pc, #36]	; (80033b8 <update_vmeter+0x1c8>)
 8003392:	601a      	str	r2, [r3, #0]
 8003394:	370c      	adds	r7, #12
 8003396:	46bd      	mov	sp, r7
 8003398:	f85d 7b04 	ldr.w	r7, [sp], #4
 800339c:	4770      	bx	lr
 800339e:	bf00      	nop
 80033a0:	20000cb4 	.word	0x20000cb4
 80033a4:	20000ccc 	.word	0x20000ccc
 80033a8:	20000cd0 	.word	0x20000cd0
 80033ac:	20000248 	.word	0x20000248
 80033b0:	40021000 	.word	0x40021000
 80033b4:	20000ca4 	.word	0x20000ca4
 80033b8:	20000ca8 	.word	0x20000ca8
 80033bc:	00013880 	.word	0x00013880
 80033c0:	20000014 	.word	0x20000014
 80033c4:	66666667 	.word	0x66666667
 80033c8:	20000244 	.word	0x20000244
 80033cc:	2000024c 	.word	0x2000024c

080033d0 <update_imeter_ch1>:
 80033d0:	b480      	push	{r7}
 80033d2:	b083      	sub	sp, #12
 80033d4:	af00      	add	r7, sp, #0
 80033d6:	6078      	str	r0, [r7, #4]
 80033d8:	4b0e      	ldr	r3, [pc, #56]	; (8003414 <update_imeter_ch1+0x44>)
 80033da:	681a      	ldr	r2, [r3, #0]
 80033dc:	687b      	ldr	r3, [r7, #4]
 80033de:	441a      	add	r2, r3
 80033e0:	4b0d      	ldr	r3, [pc, #52]	; (8003418 <update_imeter_ch1+0x48>)
 80033e2:	6819      	ldr	r1, [r3, #0]
 80033e4:	4b0d      	ldr	r3, [pc, #52]	; (800341c <update_imeter_ch1+0x4c>)
 80033e6:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
 80033ea:	1ad2      	subs	r2, r2, r3
 80033ec:	4b09      	ldr	r3, [pc, #36]	; (8003414 <update_imeter_ch1+0x44>)
 80033ee:	601a      	str	r2, [r3, #0]
 80033f0:	4b09      	ldr	r3, [pc, #36]	; (8003418 <update_imeter_ch1+0x48>)
 80033f2:	681a      	ldr	r2, [r3, #0]
 80033f4:	4b09      	ldr	r3, [pc, #36]	; (800341c <update_imeter_ch1+0x4c>)
 80033f6:	6879      	ldr	r1, [r7, #4]
 80033f8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80033fc:	4b06      	ldr	r3, [pc, #24]	; (8003418 <update_imeter_ch1+0x48>)
 80033fe:	681b      	ldr	r3, [r3, #0]
 8003400:	3301      	adds	r3, #1
 8003402:	f003 027f 	and.w	r2, r3, #127	; 0x7f
 8003406:	4b04      	ldr	r3, [pc, #16]	; (8003418 <update_imeter_ch1+0x48>)
 8003408:	601a      	str	r2, [r3, #0]
 800340a:	370c      	adds	r7, #12
 800340c:	46bd      	mov	sp, r7
 800340e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003412:	4770      	bx	lr
 8003414:	20000cac 	.word	0x20000cac
 8003418:	20000ed0 	.word	0x20000ed0
 800341c:	20000ed4 	.word	0x20000ed4

08003420 <update_imeter_ch2>:
 8003420:	b480      	push	{r7}
 8003422:	b083      	sub	sp, #12
 8003424:	af00      	add	r7, sp, #0
 8003426:	6078      	str	r0, [r7, #4]
 8003428:	4b0e      	ldr	r3, [pc, #56]	; (8003464 <update_imeter_ch2+0x44>)
 800342a:	681a      	ldr	r2, [r3, #0]
 800342c:	687b      	ldr	r3, [r7, #4]
 800342e:	441a      	add	r2, r3
 8003430:	4b0d      	ldr	r3, [pc, #52]	; (8003468 <update_imeter_ch2+0x48>)
 8003432:	6819      	ldr	r1, [r3, #0]
 8003434:	4b0d      	ldr	r3, [pc, #52]	; (800346c <update_imeter_ch2+0x4c>)
 8003436:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
 800343a:	1ad2      	subs	r2, r2, r3
 800343c:	4b09      	ldr	r3, [pc, #36]	; (8003464 <update_imeter_ch2+0x44>)
 800343e:	601a      	str	r2, [r3, #0]
 8003440:	4b09      	ldr	r3, [pc, #36]	; (8003468 <update_imeter_ch2+0x48>)
 8003442:	681a      	ldr	r2, [r3, #0]
 8003444:	4b09      	ldr	r3, [pc, #36]	; (800346c <update_imeter_ch2+0x4c>)
 8003446:	6879      	ldr	r1, [r7, #4]
 8003448:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800344c:	4b06      	ldr	r3, [pc, #24]	; (8003468 <update_imeter_ch2+0x48>)
 800344e:	681b      	ldr	r3, [r3, #0]
 8003450:	3301      	adds	r3, #1
 8003452:	f003 027f 	and.w	r2, r3, #127	; 0x7f
 8003456:	4b04      	ldr	r3, [pc, #16]	; (8003468 <update_imeter_ch2+0x48>)
 8003458:	601a      	str	r2, [r3, #0]
 800345a:	370c      	adds	r7, #12
 800345c:	46bd      	mov	sp, r7
 800345e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003462:	4770      	bx	lr
 8003464:	20000cb0 	.word	0x20000cb0
 8003468:	200010d4 	.word	0x200010d4
 800346c:	200010d8 	.word	0x200010d8

08003470 <ADC_IRQHandler>:
 8003470:	b580      	push	{r7, lr}
 8003472:	b084      	sub	sp, #16
 8003474:	af00      	add	r7, sp, #0
 8003476:	f7ff fe5f 	bl	8003138 <get_voltage>
 800347a:	4603      	mov	r3, r0
 800347c:	60bb      	str	r3, [r7, #8]
 800347e:	68b8      	ldr	r0, [r7, #8]
 8003480:	f7ff feb6 	bl	80031f0 <update_vmeter>
 8003484:	f7ff fe3c 	bl	8003100 <get_current_ch1>
 8003488:	6078      	str	r0, [r7, #4]
 800348a:	6878      	ldr	r0, [r7, #4]
 800348c:	f7ff ffa0 	bl	80033d0 <update_imeter_ch1>
 8003490:	4b1b      	ldr	r3, [pc, #108]	; (8003500 <ADC_IRQHandler+0x90>)
 8003492:	681a      	ldr	r2, [r3, #0]
 8003494:	687b      	ldr	r3, [r7, #4]
 8003496:	1ad3      	subs	r3, r2, r3
 8003498:	603b      	str	r3, [r7, #0]
 800349a:	6838      	ldr	r0, [r7, #0]
 800349c:	f7ff fd94 	bl	8002fc8 <update_reg_ch1>
 80034a0:	60f8      	str	r0, [r7, #12]
 80034a2:	68fb      	ldr	r3, [r7, #12]
 80034a4:	2b00      	cmp	r3, #0
 80034a6:	da01      	bge.n	80034ac <ADC_IRQHandler+0x3c>
 80034a8:	2300      	movs	r3, #0
 80034aa:	60fb      	str	r3, [r7, #12]
 80034ac:	4b15      	ldr	r3, [pc, #84]	; (8003504 <ADC_IRQHandler+0x94>)
 80034ae:	4a16      	ldr	r2, [pc, #88]	; (8003508 <ADC_IRQHandler+0x98>)
 80034b0:	8812      	ldrh	r2, [r2, #0]
 80034b2:	b292      	uxth	r2, r2
 80034b4:	635a      	str	r2, [r3, #52]	; 0x34
 80034b6:	4b15      	ldr	r3, [pc, #84]	; (800350c <ADC_IRQHandler+0x9c>)
 80034b8:	68fa      	ldr	r2, [r7, #12]
 80034ba:	1292      	asrs	r2, r2, #10
 80034bc:	609a      	str	r2, [r3, #8]
 80034be:	f7ff fe2d 	bl	800311c <get_current_ch2>
 80034c2:	6078      	str	r0, [r7, #4]
 80034c4:	6878      	ldr	r0, [r7, #4]
 80034c6:	f7ff ffab 	bl	8003420 <update_imeter_ch2>
 80034ca:	4b11      	ldr	r3, [pc, #68]	; (8003510 <ADC_IRQHandler+0xa0>)
 80034cc:	681a      	ldr	r2, [r3, #0]
 80034ce:	687b      	ldr	r3, [r7, #4]
 80034d0:	1ad3      	subs	r3, r2, r3
 80034d2:	603b      	str	r3, [r7, #0]
 80034d4:	6838      	ldr	r0, [r7, #0]
 80034d6:	f7ff fdb3 	bl	8003040 <update_reg_ch2>
 80034da:	60f8      	str	r0, [r7, #12]
 80034dc:	68fb      	ldr	r3, [r7, #12]
 80034de:	2b00      	cmp	r3, #0
 80034e0:	da01      	bge.n	80034e6 <ADC_IRQHandler+0x76>
 80034e2:	2300      	movs	r3, #0
 80034e4:	60fb      	str	r3, [r7, #12]
 80034e6:	4b07      	ldr	r3, [pc, #28]	; (8003504 <ADC_IRQHandler+0x94>)
 80034e8:	4a07      	ldr	r2, [pc, #28]	; (8003508 <ADC_IRQHandler+0x98>)
 80034ea:	8812      	ldrh	r2, [r2, #0]
 80034ec:	b292      	uxth	r2, r2
 80034ee:	639a      	str	r2, [r3, #56]	; 0x38
 80034f0:	4b06      	ldr	r3, [pc, #24]	; (800350c <ADC_IRQHandler+0x9c>)
 80034f2:	68fa      	ldr	r2, [r7, #12]
 80034f4:	1292      	asrs	r2, r2, #10
 80034f6:	615a      	str	r2, [r3, #20]
 80034f8:	3710      	adds	r7, #16
 80034fa:	46bd      	mov	sp, r7
 80034fc:	bd80      	pop	{r7, pc}
 80034fe:	bf00      	nop
 8003500:	20000ca4 	.word	0x20000ca4
 8003504:	40000800 	.word	0x40000800
 8003508:	20000c98 	.word	0x20000c98
 800350c:	40007400 	.word	0x40007400
 8003510:	20000ca8 	.word	0x20000ca8

08003514 <NVIC_EnableIRQ>:
 8003514:	b480      	push	{r7}
 8003516:	b083      	sub	sp, #12
 8003518:	af00      	add	r7, sp, #0
 800351a:	4603      	mov	r3, r0
 800351c:	71fb      	strb	r3, [r7, #7]
 800351e:	4b08      	ldr	r3, [pc, #32]	; (8003540 <NVIC_EnableIRQ+0x2c>)
 8003520:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8003524:	0952      	lsrs	r2, r2, #5
 8003526:	79f9      	ldrb	r1, [r7, #7]
 8003528:	f001 011f 	and.w	r1, r1, #31
 800352c:	2001      	movs	r0, #1
 800352e:	fa00 f101 	lsl.w	r1, r0, r1
 8003532:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8003536:	370c      	adds	r7, #12
 8003538:	46bd      	mov	sp, r7
 800353a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800353e:	4770      	bx	lr
 8003540:	e000e100 	.word	0xe000e100

08003544 <i2c_init>:
 8003544:	b580      	push	{r7, lr}
 8003546:	af00      	add	r7, sp, #0
 8003548:	4b39      	ldr	r3, [pc, #228]	; (8003630 <i2c_init+0xec>)
 800354a:	4a39      	ldr	r2, [pc, #228]	; (8003630 <i2c_init+0xec>)
 800354c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800354e:	f042 0202 	orr.w	r2, r2, #2
 8003552:	631a      	str	r2, [r3, #48]	; 0x30
 8003554:	4b37      	ldr	r3, [pc, #220]	; (8003634 <i2c_init+0xf0>)
 8003556:	4a37      	ldr	r2, [pc, #220]	; (8003634 <i2c_init+0xf0>)
 8003558:	6852      	ldr	r2, [r2, #4]
 800355a:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 800355e:	605a      	str	r2, [r3, #4]
 8003560:	4b34      	ldr	r3, [pc, #208]	; (8003634 <i2c_init+0xf0>)
 8003562:	4a34      	ldr	r2, [pc, #208]	; (8003634 <i2c_init+0xf0>)
 8003564:	6812      	ldr	r2, [r2, #0]
 8003566:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 800356a:	601a      	str	r2, [r3, #0]
 800356c:	4b31      	ldr	r3, [pc, #196]	; (8003634 <i2c_init+0xf0>)
 800356e:	4a31      	ldr	r2, [pc, #196]	; (8003634 <i2c_init+0xf0>)
 8003570:	6812      	ldr	r2, [r2, #0]
 8003572:	f442 4220 	orr.w	r2, r2, #40960	; 0xa000
 8003576:	601a      	str	r2, [r3, #0]
 8003578:	4b2e      	ldr	r3, [pc, #184]	; (8003634 <i2c_init+0xf0>)
 800357a:	4a2e      	ldr	r2, [pc, #184]	; (8003634 <i2c_init+0xf0>)
 800357c:	6a12      	ldr	r2, [r2, #32]
 800357e:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 8003582:	621a      	str	r2, [r3, #32]
 8003584:	4b2b      	ldr	r3, [pc, #172]	; (8003634 <i2c_init+0xf0>)
 8003586:	4a2b      	ldr	r2, [pc, #172]	; (8003634 <i2c_init+0xf0>)
 8003588:	6a12      	ldr	r2, [r2, #32]
 800358a:	f042 6280 	orr.w	r2, r2, #67108864	; 0x4000000
 800358e:	621a      	str	r2, [r3, #32]
 8003590:	4b28      	ldr	r3, [pc, #160]	; (8003634 <i2c_init+0xf0>)
 8003592:	4a28      	ldr	r2, [pc, #160]	; (8003634 <i2c_init+0xf0>)
 8003594:	6a12      	ldr	r2, [r2, #32]
 8003596:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 800359a:	621a      	str	r2, [r3, #32]
 800359c:	4b25      	ldr	r3, [pc, #148]	; (8003634 <i2c_init+0xf0>)
 800359e:	4a25      	ldr	r2, [pc, #148]	; (8003634 <i2c_init+0xf0>)
 80035a0:	6a12      	ldr	r2, [r2, #32]
 80035a2:	f042 4280 	orr.w	r2, r2, #1073741824	; 0x40000000
 80035a6:	621a      	str	r2, [r3, #32]
 80035a8:	4b21      	ldr	r3, [pc, #132]	; (8003630 <i2c_init+0xec>)
 80035aa:	4a21      	ldr	r2, [pc, #132]	; (8003630 <i2c_init+0xec>)
 80035ac:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80035ae:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 80035b2:	641a      	str	r2, [r3, #64]	; 0x40
 80035b4:	4b20      	ldr	r3, [pc, #128]	; (8003638 <i2c_init+0xf4>)
 80035b6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80035ba:	801a      	strh	r2, [r3, #0]
 80035bc:	4b1e      	ldr	r3, [pc, #120]	; (8003638 <i2c_init+0xf4>)
 80035be:	2200      	movs	r2, #0
 80035c0:	801a      	strh	r2, [r3, #0]
 80035c2:	4b1d      	ldr	r3, [pc, #116]	; (8003638 <i2c_init+0xf4>)
 80035c4:	4a1c      	ldr	r2, [pc, #112]	; (8003638 <i2c_init+0xf4>)
 80035c6:	8892      	ldrh	r2, [r2, #4]
 80035c8:	b292      	uxth	r2, r2
 80035ca:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 80035ce:	b292      	uxth	r2, r2
 80035d0:	809a      	strh	r2, [r3, #4]
 80035d2:	4b19      	ldr	r3, [pc, #100]	; (8003638 <i2c_init+0xf4>)
 80035d4:	4a18      	ldr	r2, [pc, #96]	; (8003638 <i2c_init+0xf4>)
 80035d6:	8892      	ldrh	r2, [r2, #4]
 80035d8:	b292      	uxth	r2, r2
 80035da:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 80035de:	b292      	uxth	r2, r2
 80035e0:	809a      	strh	r2, [r3, #4]
 80035e2:	4b15      	ldr	r3, [pc, #84]	; (8003638 <i2c_init+0xf4>)
 80035e4:	2269      	movs	r2, #105	; 0x69
 80035e6:	839a      	strh	r2, [r3, #28]
 80035e8:	4b13      	ldr	r3, [pc, #76]	; (8003638 <i2c_init+0xf4>)
 80035ea:	4a13      	ldr	r2, [pc, #76]	; (8003638 <i2c_init+0xf4>)
 80035ec:	8c12      	ldrh	r2, [r2, #32]
 80035ee:	b292      	uxth	r2, r2
 80035f0:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 80035f4:	b292      	uxth	r2, r2
 80035f6:	841a      	strh	r2, [r3, #32]
 80035f8:	4b0f      	ldr	r3, [pc, #60]	; (8003638 <i2c_init+0xf4>)
 80035fa:	4a0f      	ldr	r2, [pc, #60]	; (8003638 <i2c_init+0xf4>)
 80035fc:	8c12      	ldrh	r2, [r2, #32]
 80035fe:	b292      	uxth	r2, r2
 8003600:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 8003604:	b292      	uxth	r2, r2
 8003606:	841a      	strh	r2, [r3, #32]
 8003608:	4b0b      	ldr	r3, [pc, #44]	; (8003638 <i2c_init+0xf4>)
 800360a:	4a0b      	ldr	r2, [pc, #44]	; (8003638 <i2c_init+0xf4>)
 800360c:	8892      	ldrh	r2, [r2, #4]
 800360e:	b292      	uxth	r2, r2
 8003610:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8003614:	b292      	uxth	r2, r2
 8003616:	809a      	strh	r2, [r3, #4]
 8003618:	4b07      	ldr	r3, [pc, #28]	; (8003638 <i2c_init+0xf4>)
 800361a:	4a07      	ldr	r2, [pc, #28]	; (8003638 <i2c_init+0xf4>)
 800361c:	8812      	ldrh	r2, [r2, #0]
 800361e:	b292      	uxth	r2, r2
 8003620:	f042 0201 	orr.w	r2, r2, #1
 8003624:	b292      	uxth	r2, r2
 8003626:	801a      	strh	r2, [r3, #0]
 8003628:	201f      	movs	r0, #31
 800362a:	f7ff ff73 	bl	8003514 <NVIC_EnableIRQ>
 800362e:	bd80      	pop	{r7, pc}
 8003630:	40023800 	.word	0x40023800
 8003634:	40020400 	.word	0x40020400
 8003638:	40005400 	.word	0x40005400

0800363c <i2c_test>:
 800363c:	b580      	push	{r7, lr}
 800363e:	b082      	sub	sp, #8
 8003640:	af00      	add	r7, sp, #0
 8003642:	4b5f      	ldr	r3, [pc, #380]	; (80037c0 <i2c_test+0x184>)
 8003644:	4a5e      	ldr	r2, [pc, #376]	; (80037c0 <i2c_test+0x184>)
 8003646:	8812      	ldrh	r2, [r2, #0]
 8003648:	b292      	uxth	r2, r2
 800364a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800364e:	b292      	uxth	r2, r2
 8003650:	801a      	strh	r2, [r3, #0]
 8003652:	bf00      	nop
 8003654:	4b5a      	ldr	r3, [pc, #360]	; (80037c0 <i2c_test+0x184>)
 8003656:	8a9b      	ldrh	r3, [r3, #20]
 8003658:	b29b      	uxth	r3, r3
 800365a:	f003 0301 	and.w	r3, r3, #1
 800365e:	2b00      	cmp	r3, #0
 8003660:	d0f8      	beq.n	8003654 <i2c_test+0x18>
 8003662:	4b57      	ldr	r3, [pc, #348]	; (80037c0 <i2c_test+0x184>)
 8003664:	8a9b      	ldrh	r3, [r3, #20]
 8003666:	b29b      	uxth	r3, r3
 8003668:	4856      	ldr	r0, [pc, #344]	; (80037c4 <i2c_test+0x188>)
 800366a:	4619      	mov	r1, r3
 800366c:	f7fd fdd4 	bl	8001218 <xprintf>
 8003670:	4b53      	ldr	r3, [pc, #332]	; (80037c0 <i2c_test+0x184>)
 8003672:	2294      	movs	r2, #148	; 0x94
 8003674:	821a      	strh	r2, [r3, #16]
 8003676:	bf00      	nop
 8003678:	4b51      	ldr	r3, [pc, #324]	; (80037c0 <i2c_test+0x184>)
 800367a:	8a9b      	ldrh	r3, [r3, #20]
 800367c:	b29b      	uxth	r3, r3
 800367e:	f003 0302 	and.w	r3, r3, #2
 8003682:	2b00      	cmp	r3, #0
 8003684:	d0f8      	beq.n	8003678 <i2c_test+0x3c>
 8003686:	4b4e      	ldr	r3, [pc, #312]	; (80037c0 <i2c_test+0x184>)
 8003688:	8b1b      	ldrh	r3, [r3, #24]
 800368a:	80fb      	strh	r3, [r7, #6]
 800368c:	4b4c      	ldr	r3, [pc, #304]	; (80037c0 <i2c_test+0x184>)
 800368e:	8a9b      	ldrh	r3, [r3, #20]
 8003690:	b29b      	uxth	r3, r3
 8003692:	484d      	ldr	r0, [pc, #308]	; (80037c8 <i2c_test+0x18c>)
 8003694:	4619      	mov	r1, r3
 8003696:	f7fd fdbf 	bl	8001218 <xprintf>
 800369a:	4b49      	ldr	r3, [pc, #292]	; (80037c0 <i2c_test+0x184>)
 800369c:	2200      	movs	r2, #0
 800369e:	821a      	strh	r2, [r3, #16]
 80036a0:	bf00      	nop
 80036a2:	4b47      	ldr	r3, [pc, #284]	; (80037c0 <i2c_test+0x184>)
 80036a4:	8a9b      	ldrh	r3, [r3, #20]
 80036a6:	b29b      	uxth	r3, r3
 80036a8:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80036ac:	2b00      	cmp	r3, #0
 80036ae:	d0f8      	beq.n	80036a2 <i2c_test+0x66>
 80036b0:	4b43      	ldr	r3, [pc, #268]	; (80037c0 <i2c_test+0x184>)
 80036b2:	8a9b      	ldrh	r3, [r3, #20]
 80036b4:	b29b      	uxth	r3, r3
 80036b6:	4845      	ldr	r0, [pc, #276]	; (80037cc <i2c_test+0x190>)
 80036b8:	4619      	mov	r1, r3
 80036ba:	f7fd fdad 	bl	8001218 <xprintf>
 80036be:	4b40      	ldr	r3, [pc, #256]	; (80037c0 <i2c_test+0x184>)
 80036c0:	4a3f      	ldr	r2, [pc, #252]	; (80037c0 <i2c_test+0x184>)
 80036c2:	8812      	ldrh	r2, [r2, #0]
 80036c4:	b292      	uxth	r2, r2
 80036c6:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80036ca:	b292      	uxth	r2, r2
 80036cc:	801a      	strh	r2, [r3, #0]
 80036ce:	bf00      	nop
 80036d0:	4b3b      	ldr	r3, [pc, #236]	; (80037c0 <i2c_test+0x184>)
 80036d2:	8a9b      	ldrh	r3, [r3, #20]
 80036d4:	b29b      	uxth	r3, r3
 80036d6:	f003 0301 	and.w	r3, r3, #1
 80036da:	2b00      	cmp	r3, #0
 80036dc:	d0f8      	beq.n	80036d0 <i2c_test+0x94>
 80036de:	4b38      	ldr	r3, [pc, #224]	; (80037c0 <i2c_test+0x184>)
 80036e0:	8a9b      	ldrh	r3, [r3, #20]
 80036e2:	b29b      	uxth	r3, r3
 80036e4:	4837      	ldr	r0, [pc, #220]	; (80037c4 <i2c_test+0x188>)
 80036e6:	4619      	mov	r1, r3
 80036e8:	f7fd fd96 	bl	8001218 <xprintf>
 80036ec:	4b34      	ldr	r3, [pc, #208]	; (80037c0 <i2c_test+0x184>)
 80036ee:	2295      	movs	r2, #149	; 0x95
 80036f0:	821a      	strh	r2, [r3, #16]
 80036f2:	bf00      	nop
 80036f4:	4b32      	ldr	r3, [pc, #200]	; (80037c0 <i2c_test+0x184>)
 80036f6:	8a9b      	ldrh	r3, [r3, #20]
 80036f8:	b29b      	uxth	r3, r3
 80036fa:	f003 0302 	and.w	r3, r3, #2
 80036fe:	2b00      	cmp	r3, #0
 8003700:	d0f8      	beq.n	80036f4 <i2c_test+0xb8>
 8003702:	4b2f      	ldr	r3, [pc, #188]	; (80037c0 <i2c_test+0x184>)
 8003704:	8a9b      	ldrh	r3, [r3, #20]
 8003706:	b29b      	uxth	r3, r3
 8003708:	482f      	ldr	r0, [pc, #188]	; (80037c8 <i2c_test+0x18c>)
 800370a:	4619      	mov	r1, r3
 800370c:	f7fd fd84 	bl	8001218 <xprintf>
 8003710:	4b2b      	ldr	r3, [pc, #172]	; (80037c0 <i2c_test+0x184>)
 8003712:	4a2b      	ldr	r2, [pc, #172]	; (80037c0 <i2c_test+0x184>)
 8003714:	8812      	ldrh	r2, [r2, #0]
 8003716:	b292      	uxth	r2, r2
 8003718:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 800371c:	b292      	uxth	r2, r2
 800371e:	801a      	strh	r2, [r3, #0]
 8003720:	4b27      	ldr	r3, [pc, #156]	; (80037c0 <i2c_test+0x184>)
 8003722:	4a27      	ldr	r2, [pc, #156]	; (80037c0 <i2c_test+0x184>)
 8003724:	8812      	ldrh	r2, [r2, #0]
 8003726:	b292      	uxth	r2, r2
 8003728:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 800372c:	b292      	uxth	r2, r2
 800372e:	801a      	strh	r2, [r3, #0]
 8003730:	4b23      	ldr	r3, [pc, #140]	; (80037c0 <i2c_test+0x184>)
 8003732:	8b1b      	ldrh	r3, [r3, #24]
 8003734:	80fb      	strh	r3, [r7, #6]
 8003736:	bf00      	nop
 8003738:	4b21      	ldr	r3, [pc, #132]	; (80037c0 <i2c_test+0x184>)
 800373a:	8a9b      	ldrh	r3, [r3, #20]
 800373c:	b29b      	uxth	r3, r3
 800373e:	f003 0304 	and.w	r3, r3, #4
 8003742:	2b00      	cmp	r3, #0
 8003744:	d0f8      	beq.n	8003738 <i2c_test+0xfc>
 8003746:	4b1e      	ldr	r3, [pc, #120]	; (80037c0 <i2c_test+0x184>)
 8003748:	8a9b      	ldrh	r3, [r3, #20]
 800374a:	b29b      	uxth	r3, r3
 800374c:	4820      	ldr	r0, [pc, #128]	; (80037d0 <i2c_test+0x194>)
 800374e:	4619      	mov	r1, r3
 8003750:	f7fd fd62 	bl	8001218 <xprintf>
 8003754:	4b1a      	ldr	r3, [pc, #104]	; (80037c0 <i2c_test+0x184>)
 8003756:	4a1a      	ldr	r2, [pc, #104]	; (80037c0 <i2c_test+0x184>)
 8003758:	8812      	ldrh	r2, [r2, #0]
 800375a:	b292      	uxth	r2, r2
 800375c:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8003760:	b292      	uxth	r2, r2
 8003762:	801a      	strh	r2, [r3, #0]
 8003764:	bf00      	nop
 8003766:	4b16      	ldr	r3, [pc, #88]	; (80037c0 <i2c_test+0x184>)
 8003768:	8a9b      	ldrh	r3, [r3, #20]
 800376a:	b29b      	uxth	r3, r3
 800376c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003770:	2b00      	cmp	r3, #0
 8003772:	d0f8      	beq.n	8003766 <i2c_test+0x12a>
 8003774:	4b12      	ldr	r3, [pc, #72]	; (80037c0 <i2c_test+0x184>)
 8003776:	8a1b      	ldrh	r3, [r3, #16]
 8003778:	b29b      	uxth	r3, r3
 800377a:	b2da      	uxtb	r2, r3
 800377c:	4b15      	ldr	r3, [pc, #84]	; (80037d4 <i2c_test+0x198>)
 800377e:	701a      	strb	r2, [r3, #0]
 8003780:	bf00      	nop
 8003782:	4b0f      	ldr	r3, [pc, #60]	; (80037c0 <i2c_test+0x184>)
 8003784:	8a9b      	ldrh	r3, [r3, #20]
 8003786:	b29b      	uxth	r3, r3
 8003788:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800378c:	2b00      	cmp	r3, #0
 800378e:	d0f8      	beq.n	8003782 <i2c_test+0x146>
 8003790:	4b0b      	ldr	r3, [pc, #44]	; (80037c0 <i2c_test+0x184>)
 8003792:	8a1b      	ldrh	r3, [r3, #16]
 8003794:	b29b      	uxth	r3, r3
 8003796:	b2da      	uxtb	r2, r3
 8003798:	4b0e      	ldr	r3, [pc, #56]	; (80037d4 <i2c_test+0x198>)
 800379a:	705a      	strb	r2, [r3, #1]
 800379c:	bf00      	nop
 800379e:	4b08      	ldr	r3, [pc, #32]	; (80037c0 <i2c_test+0x184>)
 80037a0:	8b1b      	ldrh	r3, [r3, #24]
 80037a2:	b29b      	uxth	r3, r3
 80037a4:	f003 0302 	and.w	r3, r3, #2
 80037a8:	2b00      	cmp	r3, #0
 80037aa:	d1f8      	bne.n	800379e <i2c_test+0x162>
 80037ac:	4b04      	ldr	r3, [pc, #16]	; (80037c0 <i2c_test+0x184>)
 80037ae:	8a9b      	ldrh	r3, [r3, #20]
 80037b0:	b29b      	uxth	r3, r3
 80037b2:	4809      	ldr	r0, [pc, #36]	; (80037d8 <i2c_test+0x19c>)
 80037b4:	4619      	mov	r1, r3
 80037b6:	f7fd fd2f 	bl	8001218 <xprintf>
 80037ba:	3708      	adds	r7, #8
 80037bc:	46bd      	mov	sp, r7
 80037be:	bd80      	pop	{r7, pc}
 80037c0:	40005400 	.word	0x40005400
 80037c4:	08004ed0 	.word	0x08004ed0
 80037c8:	08004ef0 	.word	0x08004ef0
 80037cc:	08004f10 	.word	0x08004f10
 80037d0:	08004f34 	.word	0x08004f34
 80037d4:	200012d8 	.word	0x200012d8
 80037d8:	08004f48 	.word	0x08004f48

080037dc <I2C1_EV_IRQHandler>:
 80037dc:	b580      	push	{r7, lr}
 80037de:	af00      	add	r7, sp, #0
 80037e0:	4b01      	ldr	r3, [pc, #4]	; (80037e8 <I2C1_EV_IRQHandler+0xc>)
 80037e2:	681b      	ldr	r3, [r3, #0]
 80037e4:	4798      	blx	r3
 80037e6:	bd80      	pop	{r7, pc}
 80037e8:	200012e0 	.word	0x200012e0

080037ec <I2C1_ER_IRQHandler>:
 80037ec:	b480      	push	{r7}
 80037ee:	b083      	sub	sp, #12
 80037f0:	af00      	add	r7, sp, #0
 80037f2:	4b08      	ldr	r3, [pc, #32]	; (8003814 <I2C1_ER_IRQHandler+0x28>)
 80037f4:	8a9b      	ldrh	r3, [r3, #20]
 80037f6:	80fb      	strh	r3, [r7, #6]
 80037f8:	4a06      	ldr	r2, [pc, #24]	; (8003814 <I2C1_ER_IRQHandler+0x28>)
 80037fa:	4b06      	ldr	r3, [pc, #24]	; (8003814 <I2C1_ER_IRQHandler+0x28>)
 80037fc:	8a9b      	ldrh	r3, [r3, #20]
 80037fe:	b299      	uxth	r1, r3
 8003800:	f242 03ff 	movw	r3, #8447	; 0x20ff
 8003804:	400b      	ands	r3, r1
 8003806:	b29b      	uxth	r3, r3
 8003808:	8293      	strh	r3, [r2, #20]
 800380a:	370c      	adds	r7, #12
 800380c:	46bd      	mov	sp, r7
 800380e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003812:	4770      	bx	lr
 8003814:	40005400 	.word	0x40005400

08003818 <btf_conf>:
 8003818:	b480      	push	{r7}
 800381a:	af00      	add	r7, sp, #0
 800381c:	4b0f      	ldr	r3, [pc, #60]	; (800385c <btf_conf+0x44>)
 800381e:	8a9b      	ldrh	r3, [r3, #20]
 8003820:	b29b      	uxth	r3, r3
 8003822:	f003 0304 	and.w	r3, r3, #4
 8003826:	2b00      	cmp	r3, #0
 8003828:	d013      	beq.n	8003852 <btf_conf+0x3a>
 800382a:	4b0c      	ldr	r3, [pc, #48]	; (800385c <btf_conf+0x44>)
 800382c:	4a0b      	ldr	r2, [pc, #44]	; (800385c <btf_conf+0x44>)
 800382e:	8812      	ldrh	r2, [r2, #0]
 8003830:	b292      	uxth	r2, r2
 8003832:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8003836:	b292      	uxth	r2, r2
 8003838:	801a      	strh	r2, [r3, #0]
 800383a:	4b08      	ldr	r3, [pc, #32]	; (800385c <btf_conf+0x44>)
 800383c:	8a1b      	ldrh	r3, [r3, #16]
 800383e:	b29b      	uxth	r3, r3
 8003840:	b2da      	uxtb	r2, r3
 8003842:	4b07      	ldr	r3, [pc, #28]	; (8003860 <btf_conf+0x48>)
 8003844:	701a      	strb	r2, [r3, #0]
 8003846:	4b05      	ldr	r3, [pc, #20]	; (800385c <btf_conf+0x44>)
 8003848:	8a1b      	ldrh	r3, [r3, #16]
 800384a:	b29b      	uxth	r3, r3
 800384c:	b2da      	uxtb	r2, r3
 800384e:	4b04      	ldr	r3, [pc, #16]	; (8003860 <btf_conf+0x48>)
 8003850:	705a      	strb	r2, [r3, #1]
 8003852:	46bd      	mov	sp, r7
 8003854:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003858:	4770      	bx	lr
 800385a:	bf00      	nop
 800385c:	40005400 	.word	0x40005400
 8003860:	200012d8 	.word	0x200012d8

08003864 <raddr_conf>:
 8003864:	b480      	push	{r7}
 8003866:	af00      	add	r7, sp, #0
 8003868:	4b0f      	ldr	r3, [pc, #60]	; (80038a8 <raddr_conf+0x44>)
 800386a:	8a9b      	ldrh	r3, [r3, #20]
 800386c:	b29b      	uxth	r3, r3
 800386e:	f003 0302 	and.w	r3, r3, #2
 8003872:	2b00      	cmp	r3, #0
 8003874:	d014      	beq.n	80038a0 <raddr_conf+0x3c>
 8003876:	4b0c      	ldr	r3, [pc, #48]	; (80038a8 <raddr_conf+0x44>)
 8003878:	4a0b      	ldr	r2, [pc, #44]	; (80038a8 <raddr_conf+0x44>)
 800387a:	8812      	ldrh	r2, [r2, #0]
 800387c:	b292      	uxth	r2, r2
 800387e:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8003882:	b292      	uxth	r2, r2
 8003884:	801a      	strh	r2, [r3, #0]
 8003886:	4b08      	ldr	r3, [pc, #32]	; (80038a8 <raddr_conf+0x44>)
 8003888:	4a07      	ldr	r2, [pc, #28]	; (80038a8 <raddr_conf+0x44>)
 800388a:	8812      	ldrh	r2, [r2, #0]
 800388c:	b292      	uxth	r2, r2
 800388e:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8003892:	b292      	uxth	r2, r2
 8003894:	801a      	strh	r2, [r3, #0]
 8003896:	4b04      	ldr	r3, [pc, #16]	; (80038a8 <raddr_conf+0x44>)
 8003898:	8b1b      	ldrh	r3, [r3, #24]
 800389a:	4b04      	ldr	r3, [pc, #16]	; (80038ac <raddr_conf+0x48>)
 800389c:	4a04      	ldr	r2, [pc, #16]	; (80038b0 <raddr_conf+0x4c>)
 800389e:	601a      	str	r2, [r3, #0]
 80038a0:	46bd      	mov	sp, r7
 80038a2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038a6:	4770      	bx	lr
 80038a8:	40005400 	.word	0x40005400
 80038ac:	200012e0 	.word	0x200012e0
 80038b0:	08003819 	.word	0x08003819

080038b4 <rsb_conf>:
 80038b4:	b480      	push	{r7}
 80038b6:	af00      	add	r7, sp, #0
 80038b8:	4b0a      	ldr	r3, [pc, #40]	; (80038e4 <rsb_conf+0x30>)
 80038ba:	8a9b      	ldrh	r3, [r3, #20]
 80038bc:	b29b      	uxth	r3, r3
 80038be:	f003 0301 	and.w	r3, r3, #1
 80038c2:	2b00      	cmp	r3, #0
 80038c4:	d009      	beq.n	80038da <rsb_conf+0x26>
 80038c6:	4b07      	ldr	r3, [pc, #28]	; (80038e4 <rsb_conf+0x30>)
 80038c8:	4a07      	ldr	r2, [pc, #28]	; (80038e8 <rsb_conf+0x34>)
 80038ca:	7812      	ldrb	r2, [r2, #0]
 80038cc:	f042 0201 	orr.w	r2, r2, #1
 80038d0:	b2d2      	uxtb	r2, r2
 80038d2:	821a      	strh	r2, [r3, #16]
 80038d4:	4b05      	ldr	r3, [pc, #20]	; (80038ec <rsb_conf+0x38>)
 80038d6:	4a06      	ldr	r2, [pc, #24]	; (80038f0 <rsb_conf+0x3c>)
 80038d8:	601a      	str	r2, [r3, #0]
 80038da:	46bd      	mov	sp, r7
 80038dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038e0:	4770      	bx	lr
 80038e2:	bf00      	nop
 80038e4:	40005400 	.word	0x40005400
 80038e8:	2000023c 	.word	0x2000023c
 80038ec:	200012e0 	.word	0x200012e0
 80038f0:	08003865 	.word	0x08003865

080038f4 <pntr_tx_end>:
 80038f4:	b480      	push	{r7}
 80038f6:	af00      	add	r7, sp, #0
 80038f8:	4b0a      	ldr	r3, [pc, #40]	; (8003924 <pntr_tx_end+0x30>)
 80038fa:	8a9b      	ldrh	r3, [r3, #20]
 80038fc:	b29b      	uxth	r3, r3
 80038fe:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8003902:	2b00      	cmp	r3, #0
 8003904:	d00a      	beq.n	800391c <pntr_tx_end+0x28>
 8003906:	4b07      	ldr	r3, [pc, #28]	; (8003924 <pntr_tx_end+0x30>)
 8003908:	4a06      	ldr	r2, [pc, #24]	; (8003924 <pntr_tx_end+0x30>)
 800390a:	8812      	ldrh	r2, [r2, #0]
 800390c:	b292      	uxth	r2, r2
 800390e:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8003912:	b292      	uxth	r2, r2
 8003914:	801a      	strh	r2, [r3, #0]
 8003916:	4b04      	ldr	r3, [pc, #16]	; (8003928 <pntr_tx_end+0x34>)
 8003918:	4a04      	ldr	r2, [pc, #16]	; (800392c <pntr_tx_end+0x38>)
 800391a:	601a      	str	r2, [r3, #0]
 800391c:	46bd      	mov	sp, r7
 800391e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003922:	4770      	bx	lr
 8003924:	40005400 	.word	0x40005400
 8003928:	200012e0 	.word	0x200012e0
 800392c:	080038b5 	.word	0x080038b5

08003930 <wadr_conf>:
 8003930:	b480      	push	{r7}
 8003932:	af00      	add	r7, sp, #0
 8003934:	4b09      	ldr	r3, [pc, #36]	; (800395c <wadr_conf+0x2c>)
 8003936:	8a9b      	ldrh	r3, [r3, #20]
 8003938:	b29b      	uxth	r3, r3
 800393a:	f003 0302 	and.w	r3, r3, #2
 800393e:	2b00      	cmp	r3, #0
 8003940:	d007      	beq.n	8003952 <wadr_conf+0x22>
 8003942:	4b06      	ldr	r3, [pc, #24]	; (800395c <wadr_conf+0x2c>)
 8003944:	8b1b      	ldrh	r3, [r3, #24]
 8003946:	4b05      	ldr	r3, [pc, #20]	; (800395c <wadr_conf+0x2c>)
 8003948:	2200      	movs	r2, #0
 800394a:	821a      	strh	r2, [r3, #16]
 800394c:	4b04      	ldr	r3, [pc, #16]	; (8003960 <wadr_conf+0x30>)
 800394e:	4a05      	ldr	r2, [pc, #20]	; (8003964 <wadr_conf+0x34>)
 8003950:	601a      	str	r2, [r3, #0]
 8003952:	46bd      	mov	sp, r7
 8003954:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003958:	4770      	bx	lr
 800395a:	bf00      	nop
 800395c:	40005400 	.word	0x40005400
 8003960:	200012e0 	.word	0x200012e0
 8003964:	080038f5 	.word	0x080038f5

08003968 <sb_conf>:
 8003968:	b480      	push	{r7}
 800396a:	af00      	add	r7, sp, #0
 800396c:	4b08      	ldr	r3, [pc, #32]	; (8003990 <sb_conf+0x28>)
 800396e:	8a9b      	ldrh	r3, [r3, #20]
 8003970:	b29b      	uxth	r3, r3
 8003972:	f003 0301 	and.w	r3, r3, #1
 8003976:	2b00      	cmp	r3, #0
 8003978:	d006      	beq.n	8003988 <sb_conf+0x20>
 800397a:	4b05      	ldr	r3, [pc, #20]	; (8003990 <sb_conf+0x28>)
 800397c:	4a05      	ldr	r2, [pc, #20]	; (8003994 <sb_conf+0x2c>)
 800397e:	7812      	ldrb	r2, [r2, #0]
 8003980:	821a      	strh	r2, [r3, #16]
 8003982:	4b05      	ldr	r3, [pc, #20]	; (8003998 <sb_conf+0x30>)
 8003984:	4a05      	ldr	r2, [pc, #20]	; (800399c <sb_conf+0x34>)
 8003986:	601a      	str	r2, [r3, #0]
 8003988:	46bd      	mov	sp, r7
 800398a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800398e:	4770      	bx	lr
 8003990:	40005400 	.word	0x40005400
 8003994:	2000023c 	.word	0x2000023c
 8003998:	200012e0 	.word	0x200012e0
 800399c:	08003931 	.word	0x08003931

080039a0 <i2c_start>:
 80039a0:	b480      	push	{r7}
 80039a2:	b083      	sub	sp, #12
 80039a4:	af00      	add	r7, sp, #0
 80039a6:	4603      	mov	r3, r0
 80039a8:	71fb      	strb	r3, [r7, #7]
 80039aa:	4b09      	ldr	r3, [pc, #36]	; (80039d0 <i2c_start+0x30>)
 80039ac:	79fa      	ldrb	r2, [r7, #7]
 80039ae:	701a      	strb	r2, [r3, #0]
 80039b0:	4b08      	ldr	r3, [pc, #32]	; (80039d4 <i2c_start+0x34>)
 80039b2:	4a09      	ldr	r2, [pc, #36]	; (80039d8 <i2c_start+0x38>)
 80039b4:	601a      	str	r2, [r3, #0]
 80039b6:	4b09      	ldr	r3, [pc, #36]	; (80039dc <i2c_start+0x3c>)
 80039b8:	4a08      	ldr	r2, [pc, #32]	; (80039dc <i2c_start+0x3c>)
 80039ba:	8812      	ldrh	r2, [r2, #0]
 80039bc:	b292      	uxth	r2, r2
 80039be:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80039c2:	b292      	uxth	r2, r2
 80039c4:	801a      	strh	r2, [r3, #0]
 80039c6:	370c      	adds	r7, #12
 80039c8:	46bd      	mov	sp, r7
 80039ca:	f85d 7b04 	ldr.w	r7, [sp], #4
 80039ce:	4770      	bx	lr
 80039d0:	2000023c 	.word	0x2000023c
 80039d4:	200012e0 	.word	0x200012e0
 80039d8:	08003969 	.word	0x08003969
 80039dc:	40005400 	.word	0x40005400

080039e0 <__aeabi_frsub>:
 80039e0:	f080 4000 	eor.w	r0, r0, #2147483648	; 0x80000000
 80039e4:	e002      	b.n	80039ec <__addsf3>
 80039e6:	bf00      	nop

080039e8 <__aeabi_fsub>:
 80039e8:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000

080039ec <__addsf3>:
 80039ec:	0042      	lsls	r2, r0, #1
 80039ee:	bf1f      	itttt	ne
 80039f0:	ea5f 0341 	movsne.w	r3, r1, lsl #1
 80039f4:	ea92 0f03 	teqne	r2, r3
 80039f8:	ea7f 6c22 	mvnsne.w	ip, r2, asr #24
 80039fc:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
 8003a00:	d06a      	beq.n	8003ad8 <__addsf3+0xec>
 8003a02:	ea4f 6212 	mov.w	r2, r2, lsr #24
 8003a06:	ebd2 6313 	rsbs	r3, r2, r3, lsr #24
 8003a0a:	bfc1      	itttt	gt
 8003a0c:	18d2      	addgt	r2, r2, r3
 8003a0e:	4041      	eorgt	r1, r0
 8003a10:	4048      	eorgt	r0, r1
 8003a12:	4041      	eorgt	r1, r0
 8003a14:	bfb8      	it	lt
 8003a16:	425b      	neglt	r3, r3
 8003a18:	2b19      	cmp	r3, #25
 8003a1a:	bf88      	it	hi
 8003a1c:	4770      	bxhi	lr
 8003a1e:	f010 4f00 	tst.w	r0, #2147483648	; 0x80000000
 8003a22:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003a26:	f020 407f 	bic.w	r0, r0, #4278190080	; 0xff000000
 8003a2a:	bf18      	it	ne
 8003a2c:	4240      	negne	r0, r0
 8003a2e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8003a32:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 8003a36:	f021 417f 	bic.w	r1, r1, #4278190080	; 0xff000000
 8003a3a:	bf18      	it	ne
 8003a3c:	4249      	negne	r1, r1
 8003a3e:	ea92 0f03 	teq	r2, r3
 8003a42:	d03f      	beq.n	8003ac4 <__addsf3+0xd8>
 8003a44:	f1a2 0201 	sub.w	r2, r2, #1
 8003a48:	fa41 fc03 	asr.w	ip, r1, r3
 8003a4c:	eb10 000c 	adds.w	r0, r0, ip
 8003a50:	f1c3 0320 	rsb	r3, r3, #32
 8003a54:	fa01 f103 	lsl.w	r1, r1, r3
 8003a58:	f000 4300 	and.w	r3, r0, #2147483648	; 0x80000000
 8003a5c:	d502      	bpl.n	8003a64 <__addsf3+0x78>
 8003a5e:	4249      	negs	r1, r1
 8003a60:	eb60 0040 	sbc.w	r0, r0, r0, lsl #1
 8003a64:	f5b0 0f00 	cmp.w	r0, #8388608	; 0x800000
 8003a68:	d313      	bcc.n	8003a92 <__addsf3+0xa6>
 8003a6a:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 8003a6e:	d306      	bcc.n	8003a7e <__addsf3+0x92>
 8003a70:	0840      	lsrs	r0, r0, #1
 8003a72:	ea4f 0131 	mov.w	r1, r1, rrx
 8003a76:	f102 0201 	add.w	r2, r2, #1
 8003a7a:	2afe      	cmp	r2, #254	; 0xfe
 8003a7c:	d251      	bcs.n	8003b22 <__addsf3+0x136>
 8003a7e:	f1b1 4f00 	cmp.w	r1, #2147483648	; 0x80000000
 8003a82:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
 8003a86:	bf08      	it	eq
 8003a88:	f020 0001 	biceq.w	r0, r0, #1
 8003a8c:	ea40 0003 	orr.w	r0, r0, r3
 8003a90:	4770      	bx	lr
 8003a92:	0049      	lsls	r1, r1, #1
 8003a94:	eb40 0000 	adc.w	r0, r0, r0
 8003a98:	f410 0f00 	tst.w	r0, #8388608	; 0x800000
 8003a9c:	f1a2 0201 	sub.w	r2, r2, #1
 8003aa0:	d1ed      	bne.n	8003a7e <__addsf3+0x92>
 8003aa2:	fab0 fc80 	clz	ip, r0
 8003aa6:	f1ac 0c08 	sub.w	ip, ip, #8
 8003aaa:	ebb2 020c 	subs.w	r2, r2, ip
 8003aae:	fa00 f00c 	lsl.w	r0, r0, ip
 8003ab2:	bfaa      	itet	ge
 8003ab4:	eb00 50c2 	addge.w	r0, r0, r2, lsl #23
 8003ab8:	4252      	neglt	r2, r2
 8003aba:	4318      	orrge	r0, r3
 8003abc:	bfbc      	itt	lt
 8003abe:	40d0      	lsrlt	r0, r2
 8003ac0:	4318      	orrlt	r0, r3
 8003ac2:	4770      	bx	lr
 8003ac4:	f092 0f00 	teq	r2, #0
 8003ac8:	f481 0100 	eor.w	r1, r1, #8388608	; 0x800000
 8003acc:	bf06      	itte	eq
 8003ace:	f480 0000 	eoreq.w	r0, r0, #8388608	; 0x800000
 8003ad2:	3201      	addeq	r2, #1
 8003ad4:	3b01      	subne	r3, #1
 8003ad6:	e7b5      	b.n	8003a44 <__addsf3+0x58>
 8003ad8:	ea4f 0341 	mov.w	r3, r1, lsl #1
 8003adc:	ea7f 6c22 	mvns.w	ip, r2, asr #24
 8003ae0:	bf18      	it	ne
 8003ae2:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
 8003ae6:	d021      	beq.n	8003b2c <__addsf3+0x140>
 8003ae8:	ea92 0f03 	teq	r2, r3
 8003aec:	d004      	beq.n	8003af8 <__addsf3+0x10c>
 8003aee:	f092 0f00 	teq	r2, #0
 8003af2:	bf08      	it	eq
 8003af4:	4608      	moveq	r0, r1
 8003af6:	4770      	bx	lr
 8003af8:	ea90 0f01 	teq	r0, r1
 8003afc:	bf1c      	itt	ne
 8003afe:	2000      	movne	r0, #0
 8003b00:	4770      	bxne	lr
 8003b02:	f012 4f7f 	tst.w	r2, #4278190080	; 0xff000000
 8003b06:	d104      	bne.n	8003b12 <__addsf3+0x126>
 8003b08:	0040      	lsls	r0, r0, #1
 8003b0a:	bf28      	it	cs
 8003b0c:	f040 4000 	orrcs.w	r0, r0, #2147483648	; 0x80000000
 8003b10:	4770      	bx	lr
 8003b12:	f112 7200 	adds.w	r2, r2, #33554432	; 0x2000000
 8003b16:	bf3c      	itt	cc
 8003b18:	f500 0000 	addcc.w	r0, r0, #8388608	; 0x800000
 8003b1c:	4770      	bxcc	lr
 8003b1e:	f000 4300 	and.w	r3, r0, #2147483648	; 0x80000000
 8003b22:	f043 40fe 	orr.w	r0, r3, #2130706432	; 0x7f000000
 8003b26:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003b2a:	4770      	bx	lr
 8003b2c:	ea7f 6222 	mvns.w	r2, r2, asr #24
 8003b30:	bf16      	itet	ne
 8003b32:	4608      	movne	r0, r1
 8003b34:	ea7f 6323 	mvnseq.w	r3, r3, asr #24
 8003b38:	4601      	movne	r1, r0
 8003b3a:	0242      	lsls	r2, r0, #9
 8003b3c:	bf06      	itte	eq
 8003b3e:	ea5f 2341 	movseq.w	r3, r1, lsl #9
 8003b42:	ea90 0f01 	teqeq	r0, r1
 8003b46:	f440 0080 	orrne.w	r0, r0, #4194304	; 0x400000
 8003b4a:	4770      	bx	lr

08003b4c <__aeabi_ui2f>:
 8003b4c:	f04f 0300 	mov.w	r3, #0
 8003b50:	e004      	b.n	8003b5c <__aeabi_i2f+0x8>
 8003b52:	bf00      	nop

08003b54 <__aeabi_i2f>:
 8003b54:	f010 4300 	ands.w	r3, r0, #2147483648	; 0x80000000
 8003b58:	bf48      	it	mi
 8003b5a:	4240      	negmi	r0, r0
 8003b5c:	ea5f 0c00 	movs.w	ip, r0
 8003b60:	bf08      	it	eq
 8003b62:	4770      	bxeq	lr
 8003b64:	f043 4396 	orr.w	r3, r3, #1258291200	; 0x4b000000
 8003b68:	4601      	mov	r1, r0
 8003b6a:	f04f 0000 	mov.w	r0, #0
 8003b6e:	e01c      	b.n	8003baa <__aeabi_l2f+0x2a>

08003b70 <__aeabi_ul2f>:
 8003b70:	ea50 0201 	orrs.w	r2, r0, r1
 8003b74:	bf08      	it	eq
 8003b76:	4770      	bxeq	lr
 8003b78:	f04f 0300 	mov.w	r3, #0
 8003b7c:	e00a      	b.n	8003b94 <__aeabi_l2f+0x14>
 8003b7e:	bf00      	nop

08003b80 <__aeabi_l2f>:
 8003b80:	ea50 0201 	orrs.w	r2, r0, r1
 8003b84:	bf08      	it	eq
 8003b86:	4770      	bxeq	lr
 8003b88:	f011 4300 	ands.w	r3, r1, #2147483648	; 0x80000000
 8003b8c:	d502      	bpl.n	8003b94 <__aeabi_l2f+0x14>
 8003b8e:	4240      	negs	r0, r0
 8003b90:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8003b94:	ea5f 0c01 	movs.w	ip, r1
 8003b98:	bf02      	ittt	eq
 8003b9a:	4684      	moveq	ip, r0
 8003b9c:	4601      	moveq	r1, r0
 8003b9e:	2000      	moveq	r0, #0
 8003ba0:	f043 43b6 	orr.w	r3, r3, #1526726656	; 0x5b000000
 8003ba4:	bf08      	it	eq
 8003ba6:	f1a3 5380 	subeq.w	r3, r3, #268435456	; 0x10000000
 8003baa:	f5a3 0300 	sub.w	r3, r3, #8388608	; 0x800000
 8003bae:	fabc f28c 	clz	r2, ip
 8003bb2:	3a08      	subs	r2, #8
 8003bb4:	eba3 53c2 	sub.w	r3, r3, r2, lsl #23
 8003bb8:	db10      	blt.n	8003bdc <__aeabi_l2f+0x5c>
 8003bba:	fa01 fc02 	lsl.w	ip, r1, r2
 8003bbe:	4463      	add	r3, ip
 8003bc0:	fa00 fc02 	lsl.w	ip, r0, r2
 8003bc4:	f1c2 0220 	rsb	r2, r2, #32
 8003bc8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8003bcc:	fa20 f202 	lsr.w	r2, r0, r2
 8003bd0:	eb43 0002 	adc.w	r0, r3, r2
 8003bd4:	bf08      	it	eq
 8003bd6:	f020 0001 	biceq.w	r0, r0, #1
 8003bda:	4770      	bx	lr
 8003bdc:	f102 0220 	add.w	r2, r2, #32
 8003be0:	fa01 fc02 	lsl.w	ip, r1, r2
 8003be4:	f1c2 0220 	rsb	r2, r2, #32
 8003be8:	ea50 004c 	orrs.w	r0, r0, ip, lsl #1
 8003bec:	fa21 f202 	lsr.w	r2, r1, r2
 8003bf0:	eb43 0002 	adc.w	r0, r3, r2
 8003bf4:	bf08      	it	eq
 8003bf6:	ea20 70dc 	biceq.w	r0, r0, ip, lsr #31
 8003bfa:	4770      	bx	lr

08003bfc <__aeabi_fmul>:
 8003bfc:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8003c00:	ea1c 52d0 	ands.w	r2, ip, r0, lsr #23
 8003c04:	bf1e      	ittt	ne
 8003c06:	ea1c 53d1 	andsne.w	r3, ip, r1, lsr #23
 8003c0a:	ea92 0f0c 	teqne	r2, ip
 8003c0e:	ea93 0f0c 	teqne	r3, ip
 8003c12:	d06f      	beq.n	8003cf4 <__aeabi_fmul+0xf8>
 8003c14:	441a      	add	r2, r3
 8003c16:	ea80 0c01 	eor.w	ip, r0, r1
 8003c1a:	0240      	lsls	r0, r0, #9
 8003c1c:	bf18      	it	ne
 8003c1e:	ea5f 2141 	movsne.w	r1, r1, lsl #9
 8003c22:	d01e      	beq.n	8003c62 <__aeabi_fmul+0x66>
 8003c24:	f04f 6300 	mov.w	r3, #134217728	; 0x8000000
 8003c28:	ea43 1050 	orr.w	r0, r3, r0, lsr #5
 8003c2c:	ea43 1151 	orr.w	r1, r3, r1, lsr #5
 8003c30:	fba0 3101 	umull	r3, r1, r0, r1
 8003c34:	f00c 4000 	and.w	r0, ip, #2147483648	; 0x80000000
 8003c38:	f5b1 0f00 	cmp.w	r1, #8388608	; 0x800000
 8003c3c:	bf3e      	ittt	cc
 8003c3e:	0049      	lslcc	r1, r1, #1
 8003c40:	ea41 71d3 	orrcc.w	r1, r1, r3, lsr #31
 8003c44:	005b      	lslcc	r3, r3, #1
 8003c46:	ea40 0001 	orr.w	r0, r0, r1
 8003c4a:	f162 027f 	sbc.w	r2, r2, #127	; 0x7f
 8003c4e:	2afd      	cmp	r2, #253	; 0xfd
 8003c50:	d81d      	bhi.n	8003c8e <__aeabi_fmul+0x92>
 8003c52:	f1b3 4f00 	cmp.w	r3, #2147483648	; 0x80000000
 8003c56:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
 8003c5a:	bf08      	it	eq
 8003c5c:	f020 0001 	biceq.w	r0, r0, #1
 8003c60:	4770      	bx	lr
 8003c62:	f090 0f00 	teq	r0, #0
 8003c66:	f00c 4c00 	and.w	ip, ip, #2147483648	; 0x80000000
 8003c6a:	bf08      	it	eq
 8003c6c:	0249      	lsleq	r1, r1, #9
 8003c6e:	ea4c 2050 	orr.w	r0, ip, r0, lsr #9
 8003c72:	ea40 2051 	orr.w	r0, r0, r1, lsr #9
 8003c76:	3a7f      	subs	r2, #127	; 0x7f
 8003c78:	bfc2      	ittt	gt
 8003c7a:	f1d2 03ff 	rsbsgt	r3, r2, #255	; 0xff
 8003c7e:	ea40 50c2 	orrgt.w	r0, r0, r2, lsl #23
 8003c82:	4770      	bxgt	lr
 8003c84:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003c88:	f04f 0300 	mov.w	r3, #0
 8003c8c:	3a01      	subs	r2, #1
 8003c8e:	dc5d      	bgt.n	8003d4c <__aeabi_fmul+0x150>
 8003c90:	f112 0f19 	cmn.w	r2, #25
 8003c94:	bfdc      	itt	le
 8003c96:	f000 4000 	andle.w	r0, r0, #2147483648	; 0x80000000
 8003c9a:	4770      	bxle	lr
 8003c9c:	f1c2 0200 	rsb	r2, r2, #0
 8003ca0:	0041      	lsls	r1, r0, #1
 8003ca2:	fa21 f102 	lsr.w	r1, r1, r2
 8003ca6:	f1c2 0220 	rsb	r2, r2, #32
 8003caa:	fa00 fc02 	lsl.w	ip, r0, r2
 8003cae:	ea5f 0031 	movs.w	r0, r1, rrx
 8003cb2:	f140 0000 	adc.w	r0, r0, #0
 8003cb6:	ea53 034c 	orrs.w	r3, r3, ip, lsl #1
 8003cba:	bf08      	it	eq
 8003cbc:	ea20 70dc 	biceq.w	r0, r0, ip, lsr #31
 8003cc0:	4770      	bx	lr
 8003cc2:	f092 0f00 	teq	r2, #0
 8003cc6:	f000 4c00 	and.w	ip, r0, #2147483648	; 0x80000000
 8003cca:	bf02      	ittt	eq
 8003ccc:	0040      	lsleq	r0, r0, #1
 8003cce:	f410 0f00 	tsteq.w	r0, #8388608	; 0x800000
 8003cd2:	3a01      	subeq	r2, #1
 8003cd4:	d0f9      	beq.n	8003cca <__aeabi_fmul+0xce>
 8003cd6:	ea40 000c 	orr.w	r0, r0, ip
 8003cda:	f093 0f00 	teq	r3, #0
 8003cde:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8003ce2:	bf02      	ittt	eq
 8003ce4:	0049      	lsleq	r1, r1, #1
 8003ce6:	f411 0f00 	tsteq.w	r1, #8388608	; 0x800000
 8003cea:	3b01      	subeq	r3, #1
 8003cec:	d0f9      	beq.n	8003ce2 <__aeabi_fmul+0xe6>
 8003cee:	ea41 010c 	orr.w	r1, r1, ip
 8003cf2:	e78f      	b.n	8003c14 <__aeabi_fmul+0x18>
 8003cf4:	ea0c 53d1 	and.w	r3, ip, r1, lsr #23
 8003cf8:	ea92 0f0c 	teq	r2, ip
 8003cfc:	bf18      	it	ne
 8003cfe:	ea93 0f0c 	teqne	r3, ip
 8003d02:	d00a      	beq.n	8003d1a <__aeabi_fmul+0x11e>
 8003d04:	f030 4c00 	bics.w	ip, r0, #2147483648	; 0x80000000
 8003d08:	bf18      	it	ne
 8003d0a:	f031 4c00 	bicsne.w	ip, r1, #2147483648	; 0x80000000
 8003d0e:	d1d8      	bne.n	8003cc2 <__aeabi_fmul+0xc6>
 8003d10:	ea80 0001 	eor.w	r0, r0, r1
 8003d14:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 8003d18:	4770      	bx	lr
 8003d1a:	f090 0f00 	teq	r0, #0
 8003d1e:	bf17      	itett	ne
 8003d20:	f090 4f00 	teqne	r0, #2147483648	; 0x80000000
 8003d24:	4608      	moveq	r0, r1
 8003d26:	f091 0f00 	teqne	r1, #0
 8003d2a:	f091 4f00 	teqne	r1, #2147483648	; 0x80000000
 8003d2e:	d014      	beq.n	8003d5a <__aeabi_fmul+0x15e>
 8003d30:	ea92 0f0c 	teq	r2, ip
 8003d34:	d101      	bne.n	8003d3a <__aeabi_fmul+0x13e>
 8003d36:	0242      	lsls	r2, r0, #9
 8003d38:	d10f      	bne.n	8003d5a <__aeabi_fmul+0x15e>
 8003d3a:	ea93 0f0c 	teq	r3, ip
 8003d3e:	d103      	bne.n	8003d48 <__aeabi_fmul+0x14c>
 8003d40:	024b      	lsls	r3, r1, #9
 8003d42:	bf18      	it	ne
 8003d44:	4608      	movne	r0, r1
 8003d46:	d108      	bne.n	8003d5a <__aeabi_fmul+0x15e>
 8003d48:	ea80 0001 	eor.w	r0, r0, r1
 8003d4c:	f000 4000 	and.w	r0, r0, #2147483648	; 0x80000000
 8003d50:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8003d54:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003d58:	4770      	bx	lr
 8003d5a:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8003d5e:	f440 0040 	orr.w	r0, r0, #12582912	; 0xc00000
 8003d62:	4770      	bx	lr

08003d64 <__aeabi_fdiv>:
 8003d64:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8003d68:	ea1c 52d0 	ands.w	r2, ip, r0, lsr #23
 8003d6c:	bf1e      	ittt	ne
 8003d6e:	ea1c 53d1 	andsne.w	r3, ip, r1, lsr #23
 8003d72:	ea92 0f0c 	teqne	r2, ip
 8003d76:	ea93 0f0c 	teqne	r3, ip
 8003d7a:	d069      	beq.n	8003e50 <__aeabi_fdiv+0xec>
 8003d7c:	eba2 0203 	sub.w	r2, r2, r3
 8003d80:	ea80 0c01 	eor.w	ip, r0, r1
 8003d84:	0249      	lsls	r1, r1, #9
 8003d86:	ea4f 2040 	mov.w	r0, r0, lsl #9
 8003d8a:	d037      	beq.n	8003dfc <__aeabi_fdiv+0x98>
 8003d8c:	f04f 5380 	mov.w	r3, #268435456	; 0x10000000
 8003d90:	ea43 1111 	orr.w	r1, r3, r1, lsr #4
 8003d94:	ea43 1310 	orr.w	r3, r3, r0, lsr #4
 8003d98:	f00c 4000 	and.w	r0, ip, #2147483648	; 0x80000000
 8003d9c:	428b      	cmp	r3, r1
 8003d9e:	bf38      	it	cc
 8003da0:	005b      	lslcc	r3, r3, #1
 8003da2:	f142 027d 	adc.w	r2, r2, #125	; 0x7d
 8003da6:	f44f 0c00 	mov.w	ip, #8388608	; 0x800000
 8003daa:	428b      	cmp	r3, r1
 8003dac:	bf24      	itt	cs
 8003dae:	1a5b      	subcs	r3, r3, r1
 8003db0:	ea40 000c 	orrcs.w	r0, r0, ip
 8003db4:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8003db8:	bf24      	itt	cs
 8003dba:	eba3 0351 	subcs.w	r3, r3, r1, lsr #1
 8003dbe:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8003dc2:	ebb3 0f91 	cmp.w	r3, r1, lsr #2
 8003dc6:	bf24      	itt	cs
 8003dc8:	eba3 0391 	subcs.w	r3, r3, r1, lsr #2
 8003dcc:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8003dd0:	ebb3 0fd1 	cmp.w	r3, r1, lsr #3
 8003dd4:	bf24      	itt	cs
 8003dd6:	eba3 03d1 	subcs.w	r3, r3, r1, lsr #3
 8003dda:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8003dde:	011b      	lsls	r3, r3, #4
 8003de0:	bf18      	it	ne
 8003de2:	ea5f 1c1c 	movsne.w	ip, ip, lsr #4
 8003de6:	d1e0      	bne.n	8003daa <__aeabi_fdiv+0x46>
 8003de8:	2afd      	cmp	r2, #253	; 0xfd
 8003dea:	f63f af50 	bhi.w	8003c8e <__aeabi_fmul+0x92>
 8003dee:	428b      	cmp	r3, r1
 8003df0:	eb40 50c2 	adc.w	r0, r0, r2, lsl #23
 8003df4:	bf08      	it	eq
 8003df6:	f020 0001 	biceq.w	r0, r0, #1
 8003dfa:	4770      	bx	lr
 8003dfc:	f00c 4c00 	and.w	ip, ip, #2147483648	; 0x80000000
 8003e00:	ea4c 2050 	orr.w	r0, ip, r0, lsr #9
 8003e04:	327f      	adds	r2, #127	; 0x7f
 8003e06:	bfc2      	ittt	gt
 8003e08:	f1d2 03ff 	rsbsgt	r3, r2, #255	; 0xff
 8003e0c:	ea40 50c2 	orrgt.w	r0, r0, r2, lsl #23
 8003e10:	4770      	bxgt	lr
 8003e12:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003e16:	f04f 0300 	mov.w	r3, #0
 8003e1a:	3a01      	subs	r2, #1
 8003e1c:	e737      	b.n	8003c8e <__aeabi_fmul+0x92>
 8003e1e:	f092 0f00 	teq	r2, #0
 8003e22:	f000 4c00 	and.w	ip, r0, #2147483648	; 0x80000000
 8003e26:	bf02      	ittt	eq
 8003e28:	0040      	lsleq	r0, r0, #1
 8003e2a:	f410 0f00 	tsteq.w	r0, #8388608	; 0x800000
 8003e2e:	3a01      	subeq	r2, #1
 8003e30:	d0f9      	beq.n	8003e26 <__aeabi_fdiv+0xc2>
 8003e32:	ea40 000c 	orr.w	r0, r0, ip
 8003e36:	f093 0f00 	teq	r3, #0
 8003e3a:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8003e3e:	bf02      	ittt	eq
 8003e40:	0049      	lsleq	r1, r1, #1
 8003e42:	f411 0f00 	tsteq.w	r1, #8388608	; 0x800000
 8003e46:	3b01      	subeq	r3, #1
 8003e48:	d0f9      	beq.n	8003e3e <__aeabi_fdiv+0xda>
 8003e4a:	ea41 010c 	orr.w	r1, r1, ip
 8003e4e:	e795      	b.n	8003d7c <__aeabi_fdiv+0x18>
 8003e50:	ea0c 53d1 	and.w	r3, ip, r1, lsr #23
 8003e54:	ea92 0f0c 	teq	r2, ip
 8003e58:	d108      	bne.n	8003e6c <__aeabi_fdiv+0x108>
 8003e5a:	0242      	lsls	r2, r0, #9
 8003e5c:	f47f af7d 	bne.w	8003d5a <__aeabi_fmul+0x15e>
 8003e60:	ea93 0f0c 	teq	r3, ip
 8003e64:	f47f af70 	bne.w	8003d48 <__aeabi_fmul+0x14c>
 8003e68:	4608      	mov	r0, r1
 8003e6a:	e776      	b.n	8003d5a <__aeabi_fmul+0x15e>
 8003e6c:	ea93 0f0c 	teq	r3, ip
 8003e70:	d104      	bne.n	8003e7c <__aeabi_fdiv+0x118>
 8003e72:	024b      	lsls	r3, r1, #9
 8003e74:	f43f af4c 	beq.w	8003d10 <__aeabi_fmul+0x114>
 8003e78:	4608      	mov	r0, r1
 8003e7a:	e76e      	b.n	8003d5a <__aeabi_fmul+0x15e>
 8003e7c:	f030 4c00 	bics.w	ip, r0, #2147483648	; 0x80000000
 8003e80:	bf18      	it	ne
 8003e82:	f031 4c00 	bicsne.w	ip, r1, #2147483648	; 0x80000000
 8003e86:	d1ca      	bne.n	8003e1e <__aeabi_fdiv+0xba>
 8003e88:	f030 4200 	bics.w	r2, r0, #2147483648	; 0x80000000
 8003e8c:	f47f af5c 	bne.w	8003d48 <__aeabi_fmul+0x14c>
 8003e90:	f031 4300 	bics.w	r3, r1, #2147483648	; 0x80000000
 8003e94:	f47f af3c 	bne.w	8003d10 <__aeabi_fmul+0x114>
 8003e98:	e75f      	b.n	8003d5a <__aeabi_fmul+0x15e>
 8003e9a:	bf00      	nop

08003e9c <__gesf2>:
 8003e9c:	f04f 3cff 	mov.w	ip, #4294967295
 8003ea0:	e006      	b.n	8003eb0 <__cmpsf2+0x4>
 8003ea2:	bf00      	nop

08003ea4 <__lesf2>:
 8003ea4:	f04f 0c01 	mov.w	ip, #1
 8003ea8:	e002      	b.n	8003eb0 <__cmpsf2+0x4>
 8003eaa:	bf00      	nop

08003eac <__cmpsf2>:
 8003eac:	f04f 0c01 	mov.w	ip, #1
 8003eb0:	f84d cd04 	str.w	ip, [sp, #-4]!
 8003eb4:	ea4f 0240 	mov.w	r2, r0, lsl #1
 8003eb8:	ea4f 0341 	mov.w	r3, r1, lsl #1
 8003ebc:	ea7f 6c22 	mvns.w	ip, r2, asr #24
 8003ec0:	bf18      	it	ne
 8003ec2:	ea7f 6c23 	mvnsne.w	ip, r3, asr #24
 8003ec6:	d011      	beq.n	8003eec <__cmpsf2+0x40>
 8003ec8:	b001      	add	sp, #4
 8003eca:	ea52 0c53 	orrs.w	ip, r2, r3, lsr #1
 8003ece:	bf18      	it	ne
 8003ed0:	ea90 0f01 	teqne	r0, r1
 8003ed4:	bf58      	it	pl
 8003ed6:	ebb2 0003 	subspl.w	r0, r2, r3
 8003eda:	bf88      	it	hi
 8003edc:	17c8      	asrhi	r0, r1, #31
 8003ede:	bf38      	it	cc
 8003ee0:	ea6f 70e1 	mvncc.w	r0, r1, asr #31
 8003ee4:	bf18      	it	ne
 8003ee6:	f040 0001 	orrne.w	r0, r0, #1
 8003eea:	4770      	bx	lr
 8003eec:	ea7f 6c22 	mvns.w	ip, r2, asr #24
 8003ef0:	d102      	bne.n	8003ef8 <__cmpsf2+0x4c>
 8003ef2:	ea5f 2c40 	movs.w	ip, r0, lsl #9
 8003ef6:	d105      	bne.n	8003f04 <__cmpsf2+0x58>
 8003ef8:	ea7f 6c23 	mvns.w	ip, r3, asr #24
 8003efc:	d1e4      	bne.n	8003ec8 <__cmpsf2+0x1c>
 8003efe:	ea5f 2c41 	movs.w	ip, r1, lsl #9
 8003f02:	d0e1      	beq.n	8003ec8 <__cmpsf2+0x1c>
 8003f04:	f85d 0b04 	ldr.w	r0, [sp], #4
 8003f08:	4770      	bx	lr
 8003f0a:	bf00      	nop

08003f0c <__aeabi_cfrcmple>:
 8003f0c:	4684      	mov	ip, r0
 8003f0e:	4608      	mov	r0, r1
 8003f10:	4661      	mov	r1, ip
 8003f12:	e7ff      	b.n	8003f14 <__aeabi_cfcmpeq>

08003f14 <__aeabi_cfcmpeq>:
 8003f14:	b50f      	push	{r0, r1, r2, r3, lr}
 8003f16:	f7ff ffc9 	bl	8003eac <__cmpsf2>
 8003f1a:	2800      	cmp	r0, #0
 8003f1c:	bf48      	it	mi
 8003f1e:	f110 0f00 	cmnmi.w	r0, #0
 8003f22:	bd0f      	pop	{r0, r1, r2, r3, pc}

08003f24 <__aeabi_fcmpeq>:
 8003f24:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003f28:	f7ff fff4 	bl	8003f14 <__aeabi_cfcmpeq>
 8003f2c:	bf0c      	ite	eq
 8003f2e:	2001      	moveq	r0, #1
 8003f30:	2000      	movne	r0, #0
 8003f32:	f85d fb08 	ldr.w	pc, [sp], #8
 8003f36:	bf00      	nop

08003f38 <__aeabi_fcmplt>:
 8003f38:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003f3c:	f7ff ffea 	bl	8003f14 <__aeabi_cfcmpeq>
 8003f40:	bf34      	ite	cc
 8003f42:	2001      	movcc	r0, #1
 8003f44:	2000      	movcs	r0, #0
 8003f46:	f85d fb08 	ldr.w	pc, [sp], #8
 8003f4a:	bf00      	nop

08003f4c <__aeabi_fcmple>:
 8003f4c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003f50:	f7ff ffe0 	bl	8003f14 <__aeabi_cfcmpeq>
 8003f54:	bf94      	ite	ls
 8003f56:	2001      	movls	r0, #1
 8003f58:	2000      	movhi	r0, #0
 8003f5a:	f85d fb08 	ldr.w	pc, [sp], #8
 8003f5e:	bf00      	nop

08003f60 <__aeabi_fcmpge>:
 8003f60:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003f64:	f7ff ffd2 	bl	8003f0c <__aeabi_cfrcmple>
 8003f68:	bf94      	ite	ls
 8003f6a:	2001      	movls	r0, #1
 8003f6c:	2000      	movhi	r0, #0
 8003f6e:	f85d fb08 	ldr.w	pc, [sp], #8
 8003f72:	bf00      	nop

08003f74 <__aeabi_fcmpgt>:
 8003f74:	f84d ed08 	str.w	lr, [sp, #-8]!
 8003f78:	f7ff ffc8 	bl	8003f0c <__aeabi_cfrcmple>
 8003f7c:	bf34      	ite	cc
 8003f7e:	2001      	movcc	r0, #1
 8003f80:	2000      	movcs	r0, #0
 8003f82:	f85d fb08 	ldr.w	pc, [sp], #8
 8003f86:	bf00      	nop

08003f88 <__aeabi_f2lz>:
 8003f88:	b510      	push	{r4, lr}
 8003f8a:	2100      	movs	r1, #0
 8003f8c:	4604      	mov	r4, r0
 8003f8e:	f7ff ffd3 	bl	8003f38 <__aeabi_fcmplt>
 8003f92:	b920      	cbnz	r0, 8003f9e <__aeabi_f2lz+0x16>
 8003f94:	4620      	mov	r0, r4
 8003f96:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003f9a:	f000 b809 	b.w	8003fb0 <__aeabi_f2ulz>
 8003f9e:	f104 4000 	add.w	r0, r4, #2147483648	; 0x80000000
 8003fa2:	f000 f805 	bl	8003fb0 <__aeabi_f2ulz>
 8003fa6:	4240      	negs	r0, r0
 8003fa8:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8003fac:	bd10      	pop	{r4, pc}
 8003fae:	bf00      	nop

08003fb0 <__aeabi_f2ulz>:
 8003fb0:	b570      	push	{r4, r5, r6, lr}
 8003fb2:	f000 f985 	bl	80042c0 <__aeabi_f2d>
 8003fb6:	2200      	movs	r2, #0
 8003fb8:	4b0d      	ldr	r3, [pc, #52]	; (8003ff0 <__aeabi_f2ulz+0x40>)
 8003fba:	4604      	mov	r4, r0
 8003fbc:	460d      	mov	r5, r1
 8003fbe:	f000 f9d3 	bl	8004368 <__aeabi_dmul>
 8003fc2:	f000 fbe3 	bl	800478c <__aeabi_d2uiz>
 8003fc6:	4606      	mov	r6, r0
 8003fc8:	f000 f958 	bl	800427c <__aeabi_ui2d>
 8003fcc:	2200      	movs	r2, #0
 8003fce:	4b09      	ldr	r3, [pc, #36]	; (8003ff4 <__aeabi_f2ulz+0x44>)
 8003fd0:	f000 f9ca 	bl	8004368 <__aeabi_dmul>
 8003fd4:	4602      	mov	r2, r0
 8003fd6:	460b      	mov	r3, r1
 8003fd8:	4620      	mov	r0, r4
 8003fda:	4629      	mov	r1, r5
 8003fdc:	f000 f810 	bl	8004000 <__aeabi_dsub>
 8003fe0:	f000 fbd4 	bl	800478c <__aeabi_d2uiz>
 8003fe4:	2200      	movs	r2, #0
 8003fe6:	ea42 0400 	orr.w	r4, r2, r0
 8003fea:	4620      	mov	r0, r4
 8003fec:	4631      	mov	r1, r6
 8003fee:	bd70      	pop	{r4, r5, r6, pc}
 8003ff0:	3df00000 	.word	0x3df00000
 8003ff4:	41f00000 	.word	0x41f00000

08003ff8 <__aeabi_drsub>:
 8003ff8:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8003ffc:	e002      	b.n	8004004 <__adddf3>
 8003ffe:	bf00      	nop

08004000 <__aeabi_dsub>:
 8004000:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08004004 <__adddf3>:
 8004004:	b530      	push	{r4, r5, lr}
 8004006:	ea4f 0441 	mov.w	r4, r1, lsl #1
 800400a:	ea4f 0543 	mov.w	r5, r3, lsl #1
 800400e:	ea94 0f05 	teq	r4, r5
 8004012:	bf08      	it	eq
 8004014:	ea90 0f02 	teqeq	r0, r2
 8004018:	bf1f      	itttt	ne
 800401a:	ea54 0c00 	orrsne.w	ip, r4, r0
 800401e:	ea55 0c02 	orrsne.w	ip, r5, r2
 8004022:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8004026:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800402a:	f000 80e2 	beq.w	80041f2 <__adddf3+0x1ee>
 800402e:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8004032:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8004036:	bfb8      	it	lt
 8004038:	426d      	neglt	r5, r5
 800403a:	dd0c      	ble.n	8004056 <__adddf3+0x52>
 800403c:	442c      	add	r4, r5
 800403e:	ea80 0202 	eor.w	r2, r0, r2
 8004042:	ea81 0303 	eor.w	r3, r1, r3
 8004046:	ea82 0000 	eor.w	r0, r2, r0
 800404a:	ea83 0101 	eor.w	r1, r3, r1
 800404e:	ea80 0202 	eor.w	r2, r0, r2
 8004052:	ea81 0303 	eor.w	r3, r1, r3
 8004056:	2d36      	cmp	r5, #54	; 0x36
 8004058:	bf88      	it	hi
 800405a:	bd30      	pophi	{r4, r5, pc}
 800405c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8004060:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8004064:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8004068:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 800406c:	d002      	beq.n	8004074 <__adddf3+0x70>
 800406e:	4240      	negs	r0, r0
 8004070:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8004074:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8004078:	ea4f 3303 	mov.w	r3, r3, lsl #12
 800407c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8004080:	d002      	beq.n	8004088 <__adddf3+0x84>
 8004082:	4252      	negs	r2, r2
 8004084:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8004088:	ea94 0f05 	teq	r4, r5
 800408c:	f000 80a7 	beq.w	80041de <__adddf3+0x1da>
 8004090:	f1a4 0401 	sub.w	r4, r4, #1
 8004094:	f1d5 0e20 	rsbs	lr, r5, #32
 8004098:	db0d      	blt.n	80040b6 <__adddf3+0xb2>
 800409a:	fa02 fc0e 	lsl.w	ip, r2, lr
 800409e:	fa22 f205 	lsr.w	r2, r2, r5
 80040a2:	1880      	adds	r0, r0, r2
 80040a4:	f141 0100 	adc.w	r1, r1, #0
 80040a8:	fa03 f20e 	lsl.w	r2, r3, lr
 80040ac:	1880      	adds	r0, r0, r2
 80040ae:	fa43 f305 	asr.w	r3, r3, r5
 80040b2:	4159      	adcs	r1, r3
 80040b4:	e00e      	b.n	80040d4 <__adddf3+0xd0>
 80040b6:	f1a5 0520 	sub.w	r5, r5, #32
 80040ba:	f10e 0e20 	add.w	lr, lr, #32
 80040be:	2a01      	cmp	r2, #1
 80040c0:	fa03 fc0e 	lsl.w	ip, r3, lr
 80040c4:	bf28      	it	cs
 80040c6:	f04c 0c02 	orrcs.w	ip, ip, #2
 80040ca:	fa43 f305 	asr.w	r3, r3, r5
 80040ce:	18c0      	adds	r0, r0, r3
 80040d0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80040d4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80040d8:	d507      	bpl.n	80040ea <__adddf3+0xe6>
 80040da:	f04f 0e00 	mov.w	lr, #0
 80040de:	f1dc 0c00 	rsbs	ip, ip, #0
 80040e2:	eb7e 0000 	sbcs.w	r0, lr, r0
 80040e6:	eb6e 0101 	sbc.w	r1, lr, r1
 80040ea:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80040ee:	d31b      	bcc.n	8004128 <__adddf3+0x124>
 80040f0:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80040f4:	d30c      	bcc.n	8004110 <__adddf3+0x10c>
 80040f6:	0849      	lsrs	r1, r1, #1
 80040f8:	ea5f 0030 	movs.w	r0, r0, rrx
 80040fc:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8004100:	f104 0401 	add.w	r4, r4, #1
 8004104:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8004108:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 800410c:	f080 809a 	bcs.w	8004244 <__adddf3+0x240>
 8004110:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8004114:	bf08      	it	eq
 8004116:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800411a:	f150 0000 	adcs.w	r0, r0, #0
 800411e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8004122:	ea41 0105 	orr.w	r1, r1, r5
 8004126:	bd30      	pop	{r4, r5, pc}
 8004128:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 800412c:	4140      	adcs	r0, r0
 800412e:	eb41 0101 	adc.w	r1, r1, r1
 8004132:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8004136:	f1a4 0401 	sub.w	r4, r4, #1
 800413a:	d1e9      	bne.n	8004110 <__adddf3+0x10c>
 800413c:	f091 0f00 	teq	r1, #0
 8004140:	bf04      	itt	eq
 8004142:	4601      	moveq	r1, r0
 8004144:	2000      	moveq	r0, #0
 8004146:	fab1 f381 	clz	r3, r1
 800414a:	bf08      	it	eq
 800414c:	3320      	addeq	r3, #32
 800414e:	f1a3 030b 	sub.w	r3, r3, #11
 8004152:	f1b3 0220 	subs.w	r2, r3, #32
 8004156:	da0c      	bge.n	8004172 <__adddf3+0x16e>
 8004158:	320c      	adds	r2, #12
 800415a:	dd08      	ble.n	800416e <__adddf3+0x16a>
 800415c:	f102 0c14 	add.w	ip, r2, #20
 8004160:	f1c2 020c 	rsb	r2, r2, #12
 8004164:	fa01 f00c 	lsl.w	r0, r1, ip
 8004168:	fa21 f102 	lsr.w	r1, r1, r2
 800416c:	e00c      	b.n	8004188 <__adddf3+0x184>
 800416e:	f102 0214 	add.w	r2, r2, #20
 8004172:	bfd8      	it	le
 8004174:	f1c2 0c20 	rsble	ip, r2, #32
 8004178:	fa01 f102 	lsl.w	r1, r1, r2
 800417c:	fa20 fc0c 	lsr.w	ip, r0, ip
 8004180:	bfdc      	itt	le
 8004182:	ea41 010c 	orrle.w	r1, r1, ip
 8004186:	4090      	lslle	r0, r2
 8004188:	1ae4      	subs	r4, r4, r3
 800418a:	bfa2      	ittt	ge
 800418c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8004190:	4329      	orrge	r1, r5
 8004192:	bd30      	popge	{r4, r5, pc}
 8004194:	ea6f 0404 	mvn.w	r4, r4
 8004198:	3c1f      	subs	r4, #31
 800419a:	da1c      	bge.n	80041d6 <__adddf3+0x1d2>
 800419c:	340c      	adds	r4, #12
 800419e:	dc0e      	bgt.n	80041be <__adddf3+0x1ba>
 80041a0:	f104 0414 	add.w	r4, r4, #20
 80041a4:	f1c4 0220 	rsb	r2, r4, #32
 80041a8:	fa20 f004 	lsr.w	r0, r0, r4
 80041ac:	fa01 f302 	lsl.w	r3, r1, r2
 80041b0:	ea40 0003 	orr.w	r0, r0, r3
 80041b4:	fa21 f304 	lsr.w	r3, r1, r4
 80041b8:	ea45 0103 	orr.w	r1, r5, r3
 80041bc:	bd30      	pop	{r4, r5, pc}
 80041be:	f1c4 040c 	rsb	r4, r4, #12
 80041c2:	f1c4 0220 	rsb	r2, r4, #32
 80041c6:	fa20 f002 	lsr.w	r0, r0, r2
 80041ca:	fa01 f304 	lsl.w	r3, r1, r4
 80041ce:	ea40 0003 	orr.w	r0, r0, r3
 80041d2:	4629      	mov	r1, r5
 80041d4:	bd30      	pop	{r4, r5, pc}
 80041d6:	fa21 f004 	lsr.w	r0, r1, r4
 80041da:	4629      	mov	r1, r5
 80041dc:	bd30      	pop	{r4, r5, pc}
 80041de:	f094 0f00 	teq	r4, #0
 80041e2:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80041e6:	bf06      	itte	eq
 80041e8:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80041ec:	3401      	addeq	r4, #1
 80041ee:	3d01      	subne	r5, #1
 80041f0:	e74e      	b.n	8004090 <__adddf3+0x8c>
 80041f2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80041f6:	bf18      	it	ne
 80041f8:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80041fc:	d029      	beq.n	8004252 <__adddf3+0x24e>
 80041fe:	ea94 0f05 	teq	r4, r5
 8004202:	bf08      	it	eq
 8004204:	ea90 0f02 	teqeq	r0, r2
 8004208:	d005      	beq.n	8004216 <__adddf3+0x212>
 800420a:	ea54 0c00 	orrs.w	ip, r4, r0
 800420e:	bf04      	itt	eq
 8004210:	4619      	moveq	r1, r3
 8004212:	4610      	moveq	r0, r2
 8004214:	bd30      	pop	{r4, r5, pc}
 8004216:	ea91 0f03 	teq	r1, r3
 800421a:	bf1e      	ittt	ne
 800421c:	2100      	movne	r1, #0
 800421e:	2000      	movne	r0, #0
 8004220:	bd30      	popne	{r4, r5, pc}
 8004222:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8004226:	d105      	bne.n	8004234 <__adddf3+0x230>
 8004228:	0040      	lsls	r0, r0, #1
 800422a:	4149      	adcs	r1, r1
 800422c:	bf28      	it	cs
 800422e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8004232:	bd30      	pop	{r4, r5, pc}
 8004234:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8004238:	bf3c      	itt	cc
 800423a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 800423e:	bd30      	popcc	{r4, r5, pc}
 8004240:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8004244:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8004248:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800424c:	f04f 0000 	mov.w	r0, #0
 8004250:	bd30      	pop	{r4, r5, pc}
 8004252:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8004256:	bf1a      	itte	ne
 8004258:	4619      	movne	r1, r3
 800425a:	4610      	movne	r0, r2
 800425c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8004260:	bf1c      	itt	ne
 8004262:	460b      	movne	r3, r1
 8004264:	4602      	movne	r2, r0
 8004266:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 800426a:	bf06      	itte	eq
 800426c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8004270:	ea91 0f03 	teqeq	r1, r3
 8004274:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8004278:	bd30      	pop	{r4, r5, pc}
 800427a:	bf00      	nop

0800427c <__aeabi_ui2d>:
 800427c:	f090 0f00 	teq	r0, #0
 8004280:	bf04      	itt	eq
 8004282:	2100      	moveq	r1, #0
 8004284:	4770      	bxeq	lr
 8004286:	b530      	push	{r4, r5, lr}
 8004288:	f44f 6480 	mov.w	r4, #1024	; 0x400
 800428c:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8004290:	f04f 0500 	mov.w	r5, #0
 8004294:	f04f 0100 	mov.w	r1, #0
 8004298:	e750      	b.n	800413c <__adddf3+0x138>
 800429a:	bf00      	nop

0800429c <__aeabi_i2d>:
 800429c:	f090 0f00 	teq	r0, #0
 80042a0:	bf04      	itt	eq
 80042a2:	2100      	moveq	r1, #0
 80042a4:	4770      	bxeq	lr
 80042a6:	b530      	push	{r4, r5, lr}
 80042a8:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80042ac:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80042b0:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 80042b4:	bf48      	it	mi
 80042b6:	4240      	negmi	r0, r0
 80042b8:	f04f 0100 	mov.w	r1, #0
 80042bc:	e73e      	b.n	800413c <__adddf3+0x138>
 80042be:	bf00      	nop

080042c0 <__aeabi_f2d>:
 80042c0:	0042      	lsls	r2, r0, #1
 80042c2:	ea4f 01e2 	mov.w	r1, r2, asr #3
 80042c6:	ea4f 0131 	mov.w	r1, r1, rrx
 80042ca:	ea4f 7002 	mov.w	r0, r2, lsl #28
 80042ce:	bf1f      	itttt	ne
 80042d0:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 80042d4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80042d8:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 80042dc:	4770      	bxne	lr
 80042de:	f092 0f00 	teq	r2, #0
 80042e2:	bf14      	ite	ne
 80042e4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80042e8:	4770      	bxeq	lr
 80042ea:	b530      	push	{r4, r5, lr}
 80042ec:	f44f 7460 	mov.w	r4, #896	; 0x380
 80042f0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80042f4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80042f8:	e720      	b.n	800413c <__adddf3+0x138>
 80042fa:	bf00      	nop

080042fc <__aeabi_ul2d>:
 80042fc:	ea50 0201 	orrs.w	r2, r0, r1
 8004300:	bf08      	it	eq
 8004302:	4770      	bxeq	lr
 8004304:	b530      	push	{r4, r5, lr}
 8004306:	f04f 0500 	mov.w	r5, #0
 800430a:	e00a      	b.n	8004322 <__aeabi_l2d+0x16>

0800430c <__aeabi_l2d>:
 800430c:	ea50 0201 	orrs.w	r2, r0, r1
 8004310:	bf08      	it	eq
 8004312:	4770      	bxeq	lr
 8004314:	b530      	push	{r4, r5, lr}
 8004316:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 800431a:	d502      	bpl.n	8004322 <__aeabi_l2d+0x16>
 800431c:	4240      	negs	r0, r0
 800431e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8004322:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8004326:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800432a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800432e:	f43f aedc 	beq.w	80040ea <__adddf3+0xe6>
 8004332:	f04f 0203 	mov.w	r2, #3
 8004336:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800433a:	bf18      	it	ne
 800433c:	3203      	addne	r2, #3
 800433e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8004342:	bf18      	it	ne
 8004344:	3203      	addne	r2, #3
 8004346:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 800434a:	f1c2 0320 	rsb	r3, r2, #32
 800434e:	fa00 fc03 	lsl.w	ip, r0, r3
 8004352:	fa20 f002 	lsr.w	r0, r0, r2
 8004356:	fa01 fe03 	lsl.w	lr, r1, r3
 800435a:	ea40 000e 	orr.w	r0, r0, lr
 800435e:	fa21 f102 	lsr.w	r1, r1, r2
 8004362:	4414      	add	r4, r2
 8004364:	e6c1      	b.n	80040ea <__adddf3+0xe6>
 8004366:	bf00      	nop

08004368 <__aeabi_dmul>:
 8004368:	b570      	push	{r4, r5, r6, lr}
 800436a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800436e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8004372:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8004376:	bf1d      	ittte	ne
 8004378:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 800437c:	ea94 0f0c 	teqne	r4, ip
 8004380:	ea95 0f0c 	teqne	r5, ip
 8004384:	f000 f8de 	bleq	8004544 <__aeabi_dmul+0x1dc>
 8004388:	442c      	add	r4, r5
 800438a:	ea81 0603 	eor.w	r6, r1, r3
 800438e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8004392:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8004396:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 800439a:	bf18      	it	ne
 800439c:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 80043a0:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80043a4:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80043a8:	d038      	beq.n	800441c <__aeabi_dmul+0xb4>
 80043aa:	fba0 ce02 	umull	ip, lr, r0, r2
 80043ae:	f04f 0500 	mov.w	r5, #0
 80043b2:	fbe1 e502 	umlal	lr, r5, r1, r2
 80043b6:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 80043ba:	fbe0 e503 	umlal	lr, r5, r0, r3
 80043be:	f04f 0600 	mov.w	r6, #0
 80043c2:	fbe1 5603 	umlal	r5, r6, r1, r3
 80043c6:	f09c 0f00 	teq	ip, #0
 80043ca:	bf18      	it	ne
 80043cc:	f04e 0e01 	orrne.w	lr, lr, #1
 80043d0:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 80043d4:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 80043d8:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 80043dc:	d204      	bcs.n	80043e8 <__aeabi_dmul+0x80>
 80043de:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 80043e2:	416d      	adcs	r5, r5
 80043e4:	eb46 0606 	adc.w	r6, r6, r6
 80043e8:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 80043ec:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 80043f0:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 80043f4:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 80043f8:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 80043fc:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8004400:	bf88      	it	hi
 8004402:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8004406:	d81e      	bhi.n	8004446 <__aeabi_dmul+0xde>
 8004408:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 800440c:	bf08      	it	eq
 800440e:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8004412:	f150 0000 	adcs.w	r0, r0, #0
 8004416:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800441a:	bd70      	pop	{r4, r5, r6, pc}
 800441c:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8004420:	ea46 0101 	orr.w	r1, r6, r1
 8004424:	ea40 0002 	orr.w	r0, r0, r2
 8004428:	ea81 0103 	eor.w	r1, r1, r3
 800442c:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8004430:	bfc2      	ittt	gt
 8004432:	ebd4 050c 	rsbsgt	r5, r4, ip
 8004436:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 800443a:	bd70      	popgt	{r4, r5, r6, pc}
 800443c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8004440:	f04f 0e00 	mov.w	lr, #0
 8004444:	3c01      	subs	r4, #1
 8004446:	f300 80ab 	bgt.w	80045a0 <__aeabi_dmul+0x238>
 800444a:	f114 0f36 	cmn.w	r4, #54	; 0x36
 800444e:	bfde      	ittt	le
 8004450:	2000      	movle	r0, #0
 8004452:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8004456:	bd70      	pople	{r4, r5, r6, pc}
 8004458:	f1c4 0400 	rsb	r4, r4, #0
 800445c:	3c20      	subs	r4, #32
 800445e:	da35      	bge.n	80044cc <__aeabi_dmul+0x164>
 8004460:	340c      	adds	r4, #12
 8004462:	dc1b      	bgt.n	800449c <__aeabi_dmul+0x134>
 8004464:	f104 0414 	add.w	r4, r4, #20
 8004468:	f1c4 0520 	rsb	r5, r4, #32
 800446c:	fa00 f305 	lsl.w	r3, r0, r5
 8004470:	fa20 f004 	lsr.w	r0, r0, r4
 8004474:	fa01 f205 	lsl.w	r2, r1, r5
 8004478:	ea40 0002 	orr.w	r0, r0, r2
 800447c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8004480:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8004484:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8004488:	fa21 f604 	lsr.w	r6, r1, r4
 800448c:	eb42 0106 	adc.w	r1, r2, r6
 8004490:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8004494:	bf08      	it	eq
 8004496:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 800449a:	bd70      	pop	{r4, r5, r6, pc}
 800449c:	f1c4 040c 	rsb	r4, r4, #12
 80044a0:	f1c4 0520 	rsb	r5, r4, #32
 80044a4:	fa00 f304 	lsl.w	r3, r0, r4
 80044a8:	fa20 f005 	lsr.w	r0, r0, r5
 80044ac:	fa01 f204 	lsl.w	r2, r1, r4
 80044b0:	ea40 0002 	orr.w	r0, r0, r2
 80044b4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80044b8:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80044bc:	f141 0100 	adc.w	r1, r1, #0
 80044c0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80044c4:	bf08      	it	eq
 80044c6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80044ca:	bd70      	pop	{r4, r5, r6, pc}
 80044cc:	f1c4 0520 	rsb	r5, r4, #32
 80044d0:	fa00 f205 	lsl.w	r2, r0, r5
 80044d4:	ea4e 0e02 	orr.w	lr, lr, r2
 80044d8:	fa20 f304 	lsr.w	r3, r0, r4
 80044dc:	fa01 f205 	lsl.w	r2, r1, r5
 80044e0:	ea43 0302 	orr.w	r3, r3, r2
 80044e4:	fa21 f004 	lsr.w	r0, r1, r4
 80044e8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80044ec:	fa21 f204 	lsr.w	r2, r1, r4
 80044f0:	ea20 0002 	bic.w	r0, r0, r2
 80044f4:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 80044f8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80044fc:	bf08      	it	eq
 80044fe:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8004502:	bd70      	pop	{r4, r5, r6, pc}
 8004504:	f094 0f00 	teq	r4, #0
 8004508:	d10f      	bne.n	800452a <__aeabi_dmul+0x1c2>
 800450a:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 800450e:	0040      	lsls	r0, r0, #1
 8004510:	eb41 0101 	adc.w	r1, r1, r1
 8004514:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8004518:	bf08      	it	eq
 800451a:	3c01      	subeq	r4, #1
 800451c:	d0f7      	beq.n	800450e <__aeabi_dmul+0x1a6>
 800451e:	ea41 0106 	orr.w	r1, r1, r6
 8004522:	f095 0f00 	teq	r5, #0
 8004526:	bf18      	it	ne
 8004528:	4770      	bxne	lr
 800452a:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 800452e:	0052      	lsls	r2, r2, #1
 8004530:	eb43 0303 	adc.w	r3, r3, r3
 8004534:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8004538:	bf08      	it	eq
 800453a:	3d01      	subeq	r5, #1
 800453c:	d0f7      	beq.n	800452e <__aeabi_dmul+0x1c6>
 800453e:	ea43 0306 	orr.w	r3, r3, r6
 8004542:	4770      	bx	lr
 8004544:	ea94 0f0c 	teq	r4, ip
 8004548:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800454c:	bf18      	it	ne
 800454e:	ea95 0f0c 	teqne	r5, ip
 8004552:	d00c      	beq.n	800456e <__aeabi_dmul+0x206>
 8004554:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8004558:	bf18      	it	ne
 800455a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800455e:	d1d1      	bne.n	8004504 <__aeabi_dmul+0x19c>
 8004560:	ea81 0103 	eor.w	r1, r1, r3
 8004564:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8004568:	f04f 0000 	mov.w	r0, #0
 800456c:	bd70      	pop	{r4, r5, r6, pc}
 800456e:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8004572:	bf06      	itte	eq
 8004574:	4610      	moveq	r0, r2
 8004576:	4619      	moveq	r1, r3
 8004578:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800457c:	d019      	beq.n	80045b2 <__aeabi_dmul+0x24a>
 800457e:	ea94 0f0c 	teq	r4, ip
 8004582:	d102      	bne.n	800458a <__aeabi_dmul+0x222>
 8004584:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8004588:	d113      	bne.n	80045b2 <__aeabi_dmul+0x24a>
 800458a:	ea95 0f0c 	teq	r5, ip
 800458e:	d105      	bne.n	800459c <__aeabi_dmul+0x234>
 8004590:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8004594:	bf1c      	itt	ne
 8004596:	4610      	movne	r0, r2
 8004598:	4619      	movne	r1, r3
 800459a:	d10a      	bne.n	80045b2 <__aeabi_dmul+0x24a>
 800459c:	ea81 0103 	eor.w	r1, r1, r3
 80045a0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80045a4:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80045a8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80045ac:	f04f 0000 	mov.w	r0, #0
 80045b0:	bd70      	pop	{r4, r5, r6, pc}
 80045b2:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80045b6:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 80045ba:	bd70      	pop	{r4, r5, r6, pc}

080045bc <__aeabi_ddiv>:
 80045bc:	b570      	push	{r4, r5, r6, lr}
 80045be:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80045c2:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80045c6:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80045ca:	bf1d      	ittte	ne
 80045cc:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80045d0:	ea94 0f0c 	teqne	r4, ip
 80045d4:	ea95 0f0c 	teqne	r5, ip
 80045d8:	f000 f8a7 	bleq	800472a <__aeabi_ddiv+0x16e>
 80045dc:	eba4 0405 	sub.w	r4, r4, r5
 80045e0:	ea81 0e03 	eor.w	lr, r1, r3
 80045e4:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 80045e8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80045ec:	f000 8088 	beq.w	8004700 <__aeabi_ddiv+0x144>
 80045f0:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80045f4:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 80045f8:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 80045fc:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8004600:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8004604:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8004608:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 800460c:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8004610:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8004614:	429d      	cmp	r5, r3
 8004616:	bf08      	it	eq
 8004618:	4296      	cmpeq	r6, r2
 800461a:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 800461e:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8004622:	d202      	bcs.n	800462a <__aeabi_ddiv+0x6e>
 8004624:	085b      	lsrs	r3, r3, #1
 8004626:	ea4f 0232 	mov.w	r2, r2, rrx
 800462a:	1ab6      	subs	r6, r6, r2
 800462c:	eb65 0503 	sbc.w	r5, r5, r3
 8004630:	085b      	lsrs	r3, r3, #1
 8004632:	ea4f 0232 	mov.w	r2, r2, rrx
 8004636:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 800463a:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 800463e:	ebb6 0e02 	subs.w	lr, r6, r2
 8004642:	eb75 0e03 	sbcs.w	lr, r5, r3
 8004646:	bf22      	ittt	cs
 8004648:	1ab6      	subcs	r6, r6, r2
 800464a:	4675      	movcs	r5, lr
 800464c:	ea40 000c 	orrcs.w	r0, r0, ip
 8004650:	085b      	lsrs	r3, r3, #1
 8004652:	ea4f 0232 	mov.w	r2, r2, rrx
 8004656:	ebb6 0e02 	subs.w	lr, r6, r2
 800465a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800465e:	bf22      	ittt	cs
 8004660:	1ab6      	subcs	r6, r6, r2
 8004662:	4675      	movcs	r5, lr
 8004664:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8004668:	085b      	lsrs	r3, r3, #1
 800466a:	ea4f 0232 	mov.w	r2, r2, rrx
 800466e:	ebb6 0e02 	subs.w	lr, r6, r2
 8004672:	eb75 0e03 	sbcs.w	lr, r5, r3
 8004676:	bf22      	ittt	cs
 8004678:	1ab6      	subcs	r6, r6, r2
 800467a:	4675      	movcs	r5, lr
 800467c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8004680:	085b      	lsrs	r3, r3, #1
 8004682:	ea4f 0232 	mov.w	r2, r2, rrx
 8004686:	ebb6 0e02 	subs.w	lr, r6, r2
 800468a:	eb75 0e03 	sbcs.w	lr, r5, r3
 800468e:	bf22      	ittt	cs
 8004690:	1ab6      	subcs	r6, r6, r2
 8004692:	4675      	movcs	r5, lr
 8004694:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8004698:	ea55 0e06 	orrs.w	lr, r5, r6
 800469c:	d018      	beq.n	80046d0 <__aeabi_ddiv+0x114>
 800469e:	ea4f 1505 	mov.w	r5, r5, lsl #4
 80046a2:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 80046a6:	ea4f 1606 	mov.w	r6, r6, lsl #4
 80046aa:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 80046ae:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 80046b2:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 80046b6:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 80046ba:	d1c0      	bne.n	800463e <__aeabi_ddiv+0x82>
 80046bc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80046c0:	d10b      	bne.n	80046da <__aeabi_ddiv+0x11e>
 80046c2:	ea41 0100 	orr.w	r1, r1, r0
 80046c6:	f04f 0000 	mov.w	r0, #0
 80046ca:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 80046ce:	e7b6      	b.n	800463e <__aeabi_ddiv+0x82>
 80046d0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80046d4:	bf04      	itt	eq
 80046d6:	4301      	orreq	r1, r0
 80046d8:	2000      	moveq	r0, #0
 80046da:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 80046de:	bf88      	it	hi
 80046e0:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 80046e4:	f63f aeaf 	bhi.w	8004446 <__aeabi_dmul+0xde>
 80046e8:	ebb5 0c03 	subs.w	ip, r5, r3
 80046ec:	bf04      	itt	eq
 80046ee:	ebb6 0c02 	subseq.w	ip, r6, r2
 80046f2:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80046f6:	f150 0000 	adcs.w	r0, r0, #0
 80046fa:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80046fe:	bd70      	pop	{r4, r5, r6, pc}
 8004700:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8004704:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8004708:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 800470c:	bfc2      	ittt	gt
 800470e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8004712:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8004716:	bd70      	popgt	{r4, r5, r6, pc}
 8004718:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800471c:	f04f 0e00 	mov.w	lr, #0
 8004720:	3c01      	subs	r4, #1
 8004722:	e690      	b.n	8004446 <__aeabi_dmul+0xde>
 8004724:	ea45 0e06 	orr.w	lr, r5, r6
 8004728:	e68d      	b.n	8004446 <__aeabi_dmul+0xde>
 800472a:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800472e:	ea94 0f0c 	teq	r4, ip
 8004732:	bf08      	it	eq
 8004734:	ea95 0f0c 	teqeq	r5, ip
 8004738:	f43f af3b 	beq.w	80045b2 <__aeabi_dmul+0x24a>
 800473c:	ea94 0f0c 	teq	r4, ip
 8004740:	d10a      	bne.n	8004758 <__aeabi_ddiv+0x19c>
 8004742:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8004746:	f47f af34 	bne.w	80045b2 <__aeabi_dmul+0x24a>
 800474a:	ea95 0f0c 	teq	r5, ip
 800474e:	f47f af25 	bne.w	800459c <__aeabi_dmul+0x234>
 8004752:	4610      	mov	r0, r2
 8004754:	4619      	mov	r1, r3
 8004756:	e72c      	b.n	80045b2 <__aeabi_dmul+0x24a>
 8004758:	ea95 0f0c 	teq	r5, ip
 800475c:	d106      	bne.n	800476c <__aeabi_ddiv+0x1b0>
 800475e:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8004762:	f43f aefd 	beq.w	8004560 <__aeabi_dmul+0x1f8>
 8004766:	4610      	mov	r0, r2
 8004768:	4619      	mov	r1, r3
 800476a:	e722      	b.n	80045b2 <__aeabi_dmul+0x24a>
 800476c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8004770:	bf18      	it	ne
 8004772:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8004776:	f47f aec5 	bne.w	8004504 <__aeabi_dmul+0x19c>
 800477a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800477e:	f47f af0d 	bne.w	800459c <__aeabi_dmul+0x234>
 8004782:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8004786:	f47f aeeb 	bne.w	8004560 <__aeabi_dmul+0x1f8>
 800478a:	e712      	b.n	80045b2 <__aeabi_dmul+0x24a>

0800478c <__aeabi_d2uiz>:
 800478c:	004a      	lsls	r2, r1, #1
 800478e:	d211      	bcs.n	80047b4 <__aeabi_d2uiz+0x28>
 8004790:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8004794:	d211      	bcs.n	80047ba <__aeabi_d2uiz+0x2e>
 8004796:	d50d      	bpl.n	80047b4 <__aeabi_d2uiz+0x28>
 8004798:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 800479c:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80047a0:	d40e      	bmi.n	80047c0 <__aeabi_d2uiz+0x34>
 80047a2:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80047a6:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80047aa:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80047ae:	fa23 f002 	lsr.w	r0, r3, r2
 80047b2:	4770      	bx	lr
 80047b4:	f04f 0000 	mov.w	r0, #0
 80047b8:	4770      	bx	lr
 80047ba:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80047be:	d102      	bne.n	80047c6 <__aeabi_d2uiz+0x3a>
 80047c0:	f04f 30ff 	mov.w	r0, #4294967295
 80047c4:	4770      	bx	lr
 80047c6:	f04f 0000 	mov.w	r0, #0
 80047ca:	4770      	bx	lr

080047cc <arm_float_to_q31>:
 80047cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80047d0:	b097      	sub	sp, #92	; 0x5c
 80047d2:	468a      	mov	sl, r1
 80047d4:	920c      	str	r2, [sp, #48]	; 0x30
 80047d6:	0892      	lsrs	r2, r2, #2
 80047d8:	900d      	str	r0, [sp, #52]	; 0x34
 80047da:	920e      	str	r2, [sp, #56]	; 0x38
 80047dc:	f000 80a0 	beq.w	8004920 <arm_float_to_q31+0x154>
 80047e0:	460f      	mov	r7, r1
 80047e2:	4606      	mov	r6, r0
 80047e4:	910f      	str	r1, [sp, #60]	; 0x3c
 80047e6:	4692      	mov	sl, r2
 80047e8:	e9cd 4510 	strd	r4, r5, [sp, #64]	; 0x40
 80047ec:	e078      	b.n	80048e0 <arm_float_to_q31+0x114>
 80047ee:	f04f 507c 	mov.w	r0, #1056964608	; 0x3f000000
 80047f2:	4659      	mov	r1, fp
 80047f4:	f7ff f8fa 	bl	80039ec <__addsf3>
 80047f8:	f7ff fbc6 	bl	8003f88 <__aeabi_f2lz>
 80047fc:	ea4f 78e1 	mov.w	r8, r1, asr #31
 8004800:	f088 4300 	eor.w	r3, r8, #2147483648	; 0x80000000
 8004804:	ebb1 7fe0 	cmp.w	r1, r0, asr #31
 8004808:	ea6f 0303 	mvn.w	r3, r3
 800480c:	bf18      	it	ne
 800480e:	4618      	movne	r0, r3
 8004810:	6038      	str	r0, [r7, #0]
 8004812:	9104      	str	r1, [sp, #16]
 8004814:	6870      	ldr	r0, [r6, #4]
 8004816:	f8cd 8014 	str.w	r8, [sp, #20]
 800481a:	f04f 419e 	mov.w	r1, #1325400064	; 0x4f000000
 800481e:	f7ff f9ed 	bl	8003bfc <__aeabi_fmul>
 8004822:	2100      	movs	r1, #0
 8004824:	4683      	mov	fp, r0
 8004826:	f7ff fba5 	bl	8003f74 <__aeabi_fcmpgt>
 800482a:	2800      	cmp	r0, #0
 800482c:	d06d      	beq.n	800490a <arm_float_to_q31+0x13e>
 800482e:	f04f 507c 	mov.w	r0, #1056964608	; 0x3f000000
 8004832:	4659      	mov	r1, fp
 8004834:	f7ff f8da 	bl	80039ec <__addsf3>
 8004838:	f7ff fba6 	bl	8003f88 <__aeabi_f2lz>
 800483c:	17cb      	asrs	r3, r1, #31
 800483e:	9300      	str	r3, [sp, #0]
 8004840:	9301      	str	r3, [sp, #4]
 8004842:	9307      	str	r3, [sp, #28]
 8004844:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000
 8004848:	ebb1 7fe0 	cmp.w	r1, r0, asr #31
 800484c:	ea6f 0303 	mvn.w	r3, r3
 8004850:	bf18      	it	ne
 8004852:	4618      	movne	r0, r3
 8004854:	6078      	str	r0, [r7, #4]
 8004856:	9106      	str	r1, [sp, #24]
 8004858:	68b0      	ldr	r0, [r6, #8]
 800485a:	f04f 419e 	mov.w	r1, #1325400064	; 0x4f000000
 800485e:	f7ff f9cd 	bl	8003bfc <__aeabi_fmul>
 8004862:	2100      	movs	r1, #0
 8004864:	4683      	mov	fp, r0
 8004866:	f7ff fb85 	bl	8003f74 <__aeabi_fcmpgt>
 800486a:	2800      	cmp	r0, #0
 800486c:	d04a      	beq.n	8004904 <arm_float_to_q31+0x138>
 800486e:	f04f 507c 	mov.w	r0, #1056964608	; 0x3f000000
 8004872:	4659      	mov	r1, fp
 8004874:	f7ff f8ba 	bl	80039ec <__addsf3>
 8004878:	f7ff fb86 	bl	8003f88 <__aeabi_f2lz>
 800487c:	17cb      	asrs	r3, r1, #31
 800487e:	9302      	str	r3, [sp, #8]
 8004880:	9303      	str	r3, [sp, #12]
 8004882:	9309      	str	r3, [sp, #36]	; 0x24
 8004884:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000
 8004888:	ebb1 7fe0 	cmp.w	r1, r0, asr #31
 800488c:	ea6f 0303 	mvn.w	r3, r3
 8004890:	bf18      	it	ne
 8004892:	4618      	movne	r0, r3
 8004894:	60b8      	str	r0, [r7, #8]
 8004896:	9108      	str	r1, [sp, #32]
 8004898:	68f0      	ldr	r0, [r6, #12]
 800489a:	f04f 419e 	mov.w	r1, #1325400064	; 0x4f000000
 800489e:	f7ff f9ad 	bl	8003bfc <__aeabi_fmul>
 80048a2:	2100      	movs	r1, #0
 80048a4:	4683      	mov	fp, r0
 80048a6:	f7ff fb65 	bl	8003f74 <__aeabi_fcmpgt>
 80048aa:	b340      	cbz	r0, 80048fe <arm_float_to_q31+0x132>
 80048ac:	f04f 507c 	mov.w	r0, #1056964608	; 0x3f000000
 80048b0:	4659      	mov	r1, fp
 80048b2:	f7ff f89b 	bl	80039ec <__addsf3>
 80048b6:	f7ff fb67 	bl	8003f88 <__aeabi_f2lz>
 80048ba:	17cc      	asrs	r4, r1, #31
 80048bc:	f084 4300 	eor.w	r3, r4, #2147483648	; 0x80000000
 80048c0:	ebb1 7fe0 	cmp.w	r1, r0, asr #31
 80048c4:	ea6f 0303 	mvn.w	r3, r3
 80048c8:	bf18      	it	ne
 80048ca:	4618      	movne	r0, r3
 80048cc:	f1ba 0a01 	subs.w	sl, sl, #1
 80048d0:	60f8      	str	r0, [r7, #12]
 80048d2:	910a      	str	r1, [sp, #40]	; 0x28
 80048d4:	940b      	str	r4, [sp, #44]	; 0x2c
 80048d6:	f106 0610 	add.w	r6, r6, #16
 80048da:	f107 0710 	add.w	r7, r7, #16
 80048de:	d017      	beq.n	8004910 <arm_float_to_q31+0x144>
 80048e0:	f04f 419e 	mov.w	r1, #1325400064	; 0x4f000000
 80048e4:	6830      	ldr	r0, [r6, #0]
 80048e6:	f7ff f989 	bl	8003bfc <__aeabi_fmul>
 80048ea:	2100      	movs	r1, #0
 80048ec:	4683      	mov	fp, r0
 80048ee:	f7ff fb41 	bl	8003f74 <__aeabi_fcmpgt>
 80048f2:	2800      	cmp	r0, #0
 80048f4:	f47f af7b 	bne.w	80047ee <arm_float_to_q31+0x22>
 80048f8:	f04f 403f 	mov.w	r0, #3204448256	; 0xbf000000
 80048fc:	e779      	b.n	80047f2 <arm_float_to_q31+0x26>
 80048fe:	f04f 403f 	mov.w	r0, #3204448256	; 0xbf000000
 8004902:	e7d5      	b.n	80048b0 <arm_float_to_q31+0xe4>
 8004904:	f04f 403f 	mov.w	r0, #3204448256	; 0xbf000000
 8004908:	e7b3      	b.n	8004872 <arm_float_to_q31+0xa6>
 800490a:	f04f 403f 	mov.w	r0, #3204448256	; 0xbf000000
 800490e:	e790      	b.n	8004832 <arm_float_to_q31+0x66>
 8004910:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004912:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004916:	0113      	lsls	r3, r2, #4
 8004918:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 800491a:	441a      	add	r2, r3
 800491c:	920d      	str	r2, [sp, #52]	; 0x34
 800491e:	449a      	add	sl, r3
 8004920:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004922:	f013 0603 	ands.w	r6, r3, #3
 8004926:	d022      	beq.n	800496e <arm_float_to_q31+0x1a2>
 8004928:	9f0d      	ldr	r7, [sp, #52]	; 0x34
 800492a:	f04f 419e 	mov.w	r1, #1325400064	; 0x4f000000
 800492e:	f857 0b04 	ldr.w	r0, [r7], #4
 8004932:	f7ff f963 	bl	8003bfc <__aeabi_fmul>
 8004936:	2100      	movs	r1, #0
 8004938:	4683      	mov	fp, r0
 800493a:	f7ff fb1b 	bl	8003f74 <__aeabi_fcmpgt>
 800493e:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8004942:	b108      	cbz	r0, 8004948 <arm_float_to_q31+0x17c>
 8004944:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8004948:	4618      	mov	r0, r3
 800494a:	4659      	mov	r1, fp
 800494c:	f7ff f84e 	bl	80039ec <__addsf3>
 8004950:	f7ff fb1a 	bl	8003f88 <__aeabi_f2lz>
 8004954:	17cc      	asrs	r4, r1, #31
 8004956:	f084 4300 	eor.w	r3, r4, #2147483648	; 0x80000000
 800495a:	ebb1 7fe0 	cmp.w	r1, r0, asr #31
 800495e:	ea6f 0303 	mvn.w	r3, r3
 8004962:	bf18      	it	ne
 8004964:	4618      	movne	r0, r3
 8004966:	3e01      	subs	r6, #1
 8004968:	f84a 0b04 	str.w	r0, [sl], #4
 800496c:	d1dd      	bne.n	800492a <arm_float_to_q31+0x15e>
 800496e:	b017      	add	sp, #92	; 0x5c
 8004970:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004974 <seg7_tbl>:
 8004974:	1477 b6b3 e6d4 34e7 f6f7 c7f5 9763 e1e3     w......4....c...
 8004984:	2a2a 2a2a 4843 4e41 454e 204c 2a31 2a2a     ****CHANNEL 1***
 8004994:	2a2a 2a2a 2a2a 2a2a 000a 0000 6449 253d     ********....Id=%
 80049a4:	6d64 0d41 000a 0000 6456 253d 5664 0a0d     dmA.....Vd=%dV..
 80049b4:	0000 0000 3d50 6425 0d57 000a 6354 253d     ....P=%dW...Tc=%
 80049c4:	0d64 000a 6a54 253d 0d64 000a 6d49 7861     d...Tj=%d...Imax
 80049d4:	253d 4164 0a0d 0000 0a0a 0000 2a2a 2a2a     =%dA........****
 80049e4:	4843 4e41 454e 204c 2a32 2a2a 2a2a 2a2a     CHANNEL 2*******
 80049f4:	2a2a 2a2a 000a 0000 6568 6c6c 0d6f 000a     ****....hello...
 8004a04:	6574 7473 253d 0d64 000a 0000 3025 6c38     test=%d.....%08l
 8004a14:	2058 0000 2520 3230 0058 0000 2520 3430     X .. %02X... %04
 8004a24:	0058 0000 2520 3830 584c 0000               X... %08LX..

08004a30 <cos_table>:
 8004a30:	07d0 0000 07bd 0000 0784 0000 0727 0000     ............'...
 8004a40:	06ab 0000 0614 0000 0567 0000 04ab 0000     ........g.......
 8004a50:	03e8 0000 0325 0000 0269 0000 01bc 0000     ....%...i.......
 8004a60:	0125 0000 00a9 0000 004c 0000 0013 0000     %.......L.......
 8004a70:	0000 0000 0013 0000 004c 0000 00a9 0000     ........L.......
 8004a80:	0125 0000 01bc 0000 0269 0000 0325 0000     %.......i...%...
 8004a90:	03e8 0000 04ab 0000 0567 0000 0614 0000     ........g.......
 8004aa0:	06ab 0000 0727 0000 0784 0000 07bd 0000     ....'...........

08004ab0 <device_additional_info>:
 8004ab0:	794d 7420 7365 2074 6f6d 6264 7375 6420     My test modbus d
 8004ac0:	7665 6369 0065 0000                         evice...

08004ac8 <proc_PDU_table>:
 8004ac8:	2875 0800 20a9 0800 215d 0800 25f9 0800     u(... ..]!...%..
 8004ad8:	2329 0800 1e8d 0800 2411 0800 2875 0800     )#.......$..u(..
 8004ae8:	229d 0800 2875 0800 2875 0800 2875 0800     ."..u(..u(..u(..
 8004af8:	2875 0800 2875 0800 2875 0800 1f8d 0800     u(..u(..u(......
 8004b08:	24e1 0800 2211 0800 2875 0800 2875 0800     .$..."..u(..u(..
 8004b18:	2875 0800 2875 0800 2875 0800 26e1 0800     u(..u(..u(...&..
 8004b28:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b38:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b48:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b58:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b68:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b78:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b88:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004b98:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004ba8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004bb8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004bc8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004bd8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004be8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004bf8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c08:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c18:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c28:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c38:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c48:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c58:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c68:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c78:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c88:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004c98:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004ca8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004cb8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004cc8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004cd8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004ce8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004cf8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d08:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d18:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d28:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d38:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d48:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d58:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d68:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d78:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d88:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004d98:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004da8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004db8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004dc8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004dd8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004de8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004df8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e08:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e18:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e28:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e38:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e48:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e58:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e68:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e78:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e88:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004e98:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004ea8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..
 8004eb8:	2875 0800 2875 0800 2875 0800 2875 0800     u(..u(..u(..u(..

08004ec8 <temp_sens_addr>:
 8004ec8:	0090 0000 0086 0000 6577 7627 2065 6573     ........we've se
 8004ed8:	646e 5320 4154 5452 7420 206f 6c73 7661     nd START to slav
 8004ee8:	3a65 7525 000a 0000 6577 7627 2065 6573     e:%u....we've se
 8004ef8:	646e 6120 6464 6572 2073 6f74 7320 616c     nd addres to sla
 8004f08:	6576 253a 0a75 0000 6577 7627 2065 7277     ve:%u...we've wr
 8004f18:	7469 2065 6f70 6e69 6574 2072 6f74 7320     ite pointer to s
 8004f28:	616c 6576 253a 0a75 0000 0000 6577 7627     lave:%u.....we'v
 8004f38:	2065 6168 6576 4220 4654 253a 0a75 0000     e have BTF:%u...
 8004f48:	7562 2073 7369 6620 6572 3a65 7525 000a     bus is free:%u..
