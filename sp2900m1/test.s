
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 00 02 20 a5 09 00 08 05 0a 00 08 05 0a 00 08     ... ............
 8000010:	05 0a 00 08 05 0a 00 08 05 0a 00 08 00 00 00 00     ................
	...
 800002c:	05 0a 00 08 05 0a 00 08 00 00 00 00 05 0a 00 08     ................
 800003c:	89 09 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800004c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800005c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800006c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800007c:	59 29 00 08 05 0a 00 08 05 0a 00 08 a5 29 00 08     Y)...........)..
 800008c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800009c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 80000ac:	05 0a 00 08 65 18 00 08 d5 27 00 08 05 0a 00 08     ....e....'......
 80000bc:	51 2d 00 08 61 2d 00 08 05 0a 00 08 05 0a 00 08     Q-..a-..........
 80000cc:	95 24 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     .$..............
 80000dc:	69 1b 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     i...............
 80000ec:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 80000fc:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800010c:	05 0a 00 08 55 0d 00 08 05 0a 00 08 05 0a 00 08     ....U...........
 800011c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800012c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800013c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800014c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800015c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800016c:	05 0a 00 08 05 0a 00 08 05 0a 00 08 05 0a 00 08     ................
 800017c:	05 0a 00 08 05 0a 00 08 05 0a 00 08                 ............

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
 8000228:	08003048 	.word	0x08003048
 800022c:	20000c7c 	.word	0x20000c7c

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
 8000250:	f000 ffa0 	bl	8001194 <xprintf>
 8000254:	4b2d      	ldr	r3, [pc, #180]	; (800030c <log_channel+0xdc>)
 8000256:	681b      	ldr	r3, [r3, #0]
 8000258:	482d      	ldr	r0, [pc, #180]	; (8000310 <log_channel+0xe0>)
 800025a:	4619      	mov	r1, r3
 800025c:	f000 ff9a 	bl	8001194 <xprintf>
 8000260:	4b2c      	ldr	r3, [pc, #176]	; (8000314 <log_channel+0xe4>)
 8000262:	681b      	ldr	r3, [r3, #0]
 8000264:	482c      	ldr	r0, [pc, #176]	; (8000318 <log_channel+0xe8>)
 8000266:	4619      	mov	r1, r3
 8000268:	f000 ff94 	bl	8001194 <xprintf>
 800026c:	4b2b      	ldr	r3, [pc, #172]	; (800031c <log_channel+0xec>)
 800026e:	681b      	ldr	r3, [r3, #0]
 8000270:	0a9b      	lsrs	r3, r3, #10
 8000272:	482b      	ldr	r0, [pc, #172]	; (8000320 <log_channel+0xf0>)
 8000274:	4619      	mov	r1, r3
 8000276:	f000 ff8d 	bl	8001194 <xprintf>
 800027a:	4b2a      	ldr	r3, [pc, #168]	; (8000324 <log_channel+0xf4>)
 800027c:	681b      	ldr	r3, [r3, #0]
 800027e:	482a      	ldr	r0, [pc, #168]	; (8000328 <log_channel+0xf8>)
 8000280:	4619      	mov	r1, r3
 8000282:	f000 ff87 	bl	8001194 <xprintf>
 8000286:	4b29      	ldr	r3, [pc, #164]	; (800032c <log_channel+0xfc>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	4829      	ldr	r0, [pc, #164]	; (8000330 <log_channel+0x100>)
 800028c:	4619      	mov	r1, r3
 800028e:	f000 ff81 	bl	8001194 <xprintf>
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
 80002b4:	f000 ff6e 	bl	8001194 <xprintf>
 80002b8:	4b20      	ldr	r3, [pc, #128]	; (800033c <log_channel+0x10c>)
 80002ba:	681b      	ldr	r3, [r3, #0]
 80002bc:	f503 72fa 	add.w	r2, r3, #500	; 0x1f4
 80002c0:	4b1f      	ldr	r3, [pc, #124]	; (8000340 <log_channel+0x110>)
 80002c2:	fba3 1302 	umull	r1, r3, r3, r2
 80002c6:	099b      	lsrs	r3, r3, #6
 80002c8:	481e      	ldr	r0, [pc, #120]	; (8000344 <log_channel+0x114>)
 80002ca:	4619      	mov	r1, r3
 80002cc:	f000 ff62 	bl	8001194 <xprintf>
 80002d0:	4b1d      	ldr	r3, [pc, #116]	; (8000348 <log_channel+0x118>)
 80002d2:	681b      	ldr	r3, [r3, #0]
 80002d4:	481d      	ldr	r0, [pc, #116]	; (800034c <log_channel+0x11c>)
 80002d6:	4619      	mov	r1, r3
 80002d8:	f000 ff5c 	bl	8001194 <xprintf>
 80002dc:	4b1c      	ldr	r3, [pc, #112]	; (8000350 <log_channel+0x120>)
 80002de:	681b      	ldr	r3, [r3, #0]
 80002e0:	481c      	ldr	r0, [pc, #112]	; (8000354 <log_channel+0x124>)
 80002e2:	4619      	mov	r1, r3
 80002e4:	f000 ff56 	bl	8001194 <xprintf>
 80002e8:	4b1b      	ldr	r3, [pc, #108]	; (8000358 <log_channel+0x128>)
 80002ea:	681b      	ldr	r3, [r3, #0]
 80002ec:	481b      	ldr	r0, [pc, #108]	; (800035c <log_channel+0x12c>)
 80002ee:	4619      	mov	r1, r3
 80002f0:	f000 ff50 	bl	8001194 <xprintf>
 80002f4:	481a      	ldr	r0, [pc, #104]	; (8000360 <log_channel+0x130>)
 80002f6:	f000 ff4d 	bl	8001194 <xprintf>
 80002fa:	370c      	adds	r7, #12
 80002fc:	46bd      	mov	sp, r7
 80002fe:	bd90      	pop	{r4, r7, pc}
 8000300:	20000228 	.word	0x20000228
 8000304:	20001ca4 	.word	0x20001ca4
 8000308:	08003058 	.word	0x08003058
 800030c:	20002cac 	.word	0x20002cac
 8000310:	08003060 	.word	0x08003060
 8000314:	20002cbc 	.word	0x20002cbc
 8000318:	08003068 	.word	0x08003068
 800031c:	20000c9c 	.word	0x20000c9c
 8000320:	08003074 	.word	0x08003074
 8000324:	20002cd4 	.word	0x20002cd4
 8000328:	0800307c 	.word	0x0800307c
 800032c:	2000022c 	.word	0x2000022c
 8000330:	08003088 	.word	0x08003088
 8000334:	cccccccd 	.word	0xcccccccd
 8000338:	08003094 	.word	0x08003094
 800033c:	20000230 	.word	0x20000230
 8000340:	10624dd3 	.word	0x10624dd3
 8000344:	080030a0 	.word	0x080030a0
 8000348:	20000224 	.word	0x20000224
 800034c:	080030a8 	.word	0x080030a8
 8000350:	20002cc0 	.word	0x20002cc0
 8000354:	080030b4 	.word	0x080030b4
 8000358:	20000234 	.word	0x20000234
 800035c:	080030bc 	.word	0x080030bc
 8000360:	080030c4 	.word	0x080030c4

08000364 <load_set_INT>:
 8000364:	b580      	push	{r7, lr}
 8000366:	b082      	sub	sp, #8
 8000368:	af00      	add	r7, sp, #0
 800036a:	4603      	mov	r3, r0
 800036c:	80fb      	strh	r3, [r7, #6]
 800036e:	4b06      	ldr	r3, [pc, #24]	; (8000388 <load_set_INT+0x24>)
 8000370:	681b      	ldr	r3, [r3, #0]
 8000372:	2b00      	cmp	r3, #0
 8000374:	d005      	beq.n	8000382 <load_set_INT+0x1e>
 8000376:	88fb      	ldrh	r3, [r7, #6]
 8000378:	2011      	movs	r0, #17
 800037a:	2103      	movs	r1, #3
 800037c:	461a      	mov	r2, r3
 800037e:	f001 fcdd 	bl	8001d3c <modbus_write_single_register>
 8000382:	3708      	adds	r7, #8
 8000384:	46bd      	mov	sp, r7
 8000386:	bd80      	pop	{r7, pc}
 8000388:	20000008 	.word	0x20000008

0800038c <load_set_PROP>:
 800038c:	b580      	push	{r7, lr}
 800038e:	b082      	sub	sp, #8
 8000390:	af00      	add	r7, sp, #0
 8000392:	4603      	mov	r3, r0
 8000394:	80fb      	strh	r3, [r7, #6]
 8000396:	4b06      	ldr	r3, [pc, #24]	; (80003b0 <load_set_PROP+0x24>)
 8000398:	681b      	ldr	r3, [r3, #0]
 800039a:	2b00      	cmp	r3, #0
 800039c:	d005      	beq.n	80003aa <load_set_PROP+0x1e>
 800039e:	88fb      	ldrh	r3, [r7, #6]
 80003a0:	2011      	movs	r0, #17
 80003a2:	2104      	movs	r1, #4
 80003a4:	461a      	mov	r2, r3
 80003a6:	f001 fcc9 	bl	8001d3c <modbus_write_single_register>
 80003aa:	3708      	adds	r7, #8
 80003ac:	46bd      	mov	sp, r7
 80003ae:	bd80      	pop	{r7, pc}
 80003b0:	20000008 	.word	0x20000008

080003b4 <load_set_mode>:
 80003b4:	b580      	push	{r7, lr}
 80003b6:	b082      	sub	sp, #8
 80003b8:	af00      	add	r7, sp, #0
 80003ba:	4603      	mov	r3, r0
 80003bc:	80fb      	strh	r3, [r7, #6]
 80003be:	4b06      	ldr	r3, [pc, #24]	; (80003d8 <load_set_mode+0x24>)
 80003c0:	681b      	ldr	r3, [r3, #0]
 80003c2:	2b00      	cmp	r3, #0
 80003c4:	d005      	beq.n	80003d2 <load_set_mode+0x1e>
 80003c6:	88fb      	ldrh	r3, [r7, #6]
 80003c8:	2011      	movs	r0, #17
 80003ca:	2102      	movs	r1, #2
 80003cc:	461a      	mov	r2, r3
 80003ce:	f001 fcb5 	bl	8001d3c <modbus_write_single_register>
 80003d2:	3708      	adds	r7, #8
 80003d4:	46bd      	mov	sp, r7
 80003d6:	bd80      	pop	{r7, pc}
 80003d8:	20000008 	.word	0x20000008

080003dc <load_set_curr>:
 80003dc:	b580      	push	{r7, lr}
 80003de:	b082      	sub	sp, #8
 80003e0:	af00      	add	r7, sp, #0
 80003e2:	4603      	mov	r3, r0
 80003e4:	80fb      	strh	r3, [r7, #6]
 80003e6:	4b06      	ldr	r3, [pc, #24]	; (8000400 <load_set_curr+0x24>)
 80003e8:	681b      	ldr	r3, [r3, #0]
 80003ea:	2b00      	cmp	r3, #0
 80003ec:	d005      	beq.n	80003fa <load_set_curr+0x1e>
 80003ee:	88fb      	ldrh	r3, [r7, #6]
 80003f0:	2011      	movs	r0, #17
 80003f2:	2100      	movs	r1, #0
 80003f4:	461a      	mov	r2, r3
 80003f6:	f001 fca1 	bl	8001d3c <modbus_write_single_register>
 80003fa:	3708      	adds	r7, #8
 80003fc:	46bd      	mov	sp, r7
 80003fe:	bd80      	pop	{r7, pc}
 8000400:	20000008 	.word	0x20000008

08000404 <rev_bit>:
 8000404:	b480      	push	{r7}
 8000406:	b085      	sub	sp, #20
 8000408:	af00      	add	r7, sp, #0
 800040a:	4603      	mov	r3, r0
 800040c:	71fb      	strb	r3, [r7, #7]
 800040e:	79fb      	ldrb	r3, [r7, #7]
 8000410:	011b      	lsls	r3, r3, #4
 8000412:	b2da      	uxtb	r2, r3
 8000414:	79fb      	ldrb	r3, [r7, #7]
 8000416:	091b      	lsrs	r3, r3, #4
 8000418:	b2db      	uxtb	r3, r3
 800041a:	b2db      	uxtb	r3, r3
 800041c:	4313      	orrs	r3, r2
 800041e:	b2db      	uxtb	r3, r3
 8000420:	73fb      	strb	r3, [r7, #15]
 8000422:	7bfb      	ldrb	r3, [r7, #15]
 8000424:	f003 0333 	and.w	r3, r3, #51	; 0x33
 8000428:	009b      	lsls	r3, r3, #2
 800042a:	b2da      	uxtb	r2, r3
 800042c:	7bfb      	ldrb	r3, [r7, #15]
 800042e:	f003 03cc 	and.w	r3, r3, #204	; 0xcc
 8000432:	109b      	asrs	r3, r3, #2
 8000434:	b2db      	uxtb	r3, r3
 8000436:	4313      	orrs	r3, r2
 8000438:	b2db      	uxtb	r3, r3
 800043a:	73fb      	strb	r3, [r7, #15]
 800043c:	7bfb      	ldrb	r3, [r7, #15]
 800043e:	f003 0355 	and.w	r3, r3, #85	; 0x55
 8000442:	005b      	lsls	r3, r3, #1
 8000444:	b2da      	uxtb	r2, r3
 8000446:	7bfb      	ldrb	r3, [r7, #15]
 8000448:	f003 03aa 	and.w	r3, r3, #170	; 0xaa
 800044c:	105b      	asrs	r3, r3, #1
 800044e:	b2db      	uxtb	r3, r3
 8000450:	4313      	orrs	r3, r2
 8000452:	b2db      	uxtb	r3, r3
 8000454:	73fb      	strb	r3, [r7, #15]
 8000456:	7bfb      	ldrb	r3, [r7, #15]
 8000458:	4618      	mov	r0, r3
 800045a:	3714      	adds	r7, #20
 800045c:	46bd      	mov	sp, r7
 800045e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000462:	4770      	bx	lr

08000464 <main>:
 8000464:	b580      	push	{r7, lr}
 8000466:	b0c8      	sub	sp, #288	; 0x120
 8000468:	af00      	add	r7, sp, #0
 800046a:	2300      	movs	r3, #0
 800046c:	f887 311f 	strb.w	r3, [r7, #287]	; 0x11f
 8000470:	2300      	movs	r3, #0
 8000472:	f8c7 3118 	str.w	r3, [r7, #280]	; 0x118
 8000476:	2300      	movs	r3, #0
 8000478:	f8c7 3114 	str.w	r3, [r7, #276]	; 0x114
 800047c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000480:	f8a7 3112 	strh.w	r3, [r7, #274]	; 0x112
 8000484:	2300      	movs	r3, #0
 8000486:	f8a7 3110 	strh.w	r3, [r7, #272]	; 0x110
 800048a:	2364      	movs	r3, #100	; 0x64
 800048c:	f8a7 310e 	strh.w	r3, [r7, #270]	; 0x10e
 8000490:	2300      	movs	r3, #0
 8000492:	f8c7 3108 	str.w	r3, [r7, #264]	; 0x108
 8000496:	f000 f9e9 	bl	800086c <system_init>
 800049a:	f000 facf 	bl	8000a3c <uart_init>
 800049e:	4b2a      	ldr	r3, [pc, #168]	; (8000548 <main+0xe4>)
 80004a0:	4a2a      	ldr	r2, [pc, #168]	; (800054c <main+0xe8>)
 80004a2:	601a      	str	r2, [r3, #0]
 80004a4:	f001 fa50 	bl	8001948 <dac_init>
 80004a8:	f001 fad8 	bl	8001a5c <modbus_init>
 80004ac:	f001 fe92 	bl	80021d4 <spi_master_init>
 80004b0:	4827      	ldr	r0, [pc, #156]	; (8000550 <main+0xec>)
 80004b2:	f000 fe6f 	bl	8001194 <xprintf>
 80004b6:	4b27      	ldr	r3, [pc, #156]	; (8000554 <main+0xf0>)
 80004b8:	4a26      	ldr	r2, [pc, #152]	; (8000554 <main+0xf0>)
 80004ba:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80004bc:	f042 0202 	orr.w	r2, r2, #2
 80004c0:	631a      	str	r2, [r3, #48]	; 0x30
 80004c2:	4b25      	ldr	r3, [pc, #148]	; (8000558 <main+0xf4>)
 80004c4:	881b      	ldrh	r3, [r3, #0]
 80004c6:	f8a7 3106 	strh.w	r3, [r7, #262]	; 0x106
 80004ca:	4b23      	ldr	r3, [pc, #140]	; (8000558 <main+0xf4>)
 80004cc:	881b      	ldrh	r3, [r3, #0]
 80004ce:	b21a      	sxth	r2, r3
 80004d0:	f240 53dc 	movw	r3, #1500	; 0x5dc
 80004d4:	429a      	cmp	r2, r3
 80004d6:	dd04      	ble.n	80004e2 <main+0x7e>
 80004d8:	4b1f      	ldr	r3, [pc, #124]	; (8000558 <main+0xf4>)
 80004da:	f240 52dc 	movw	r2, #1500	; 0x5dc
 80004de:	801a      	strh	r2, [r3, #0]
 80004e0:	bf00      	nop
 80004e2:	4b1d      	ldr	r3, [pc, #116]	; (8000558 <main+0xf4>)
 80004e4:	881b      	ldrh	r3, [r3, #0]
 80004e6:	b21b      	sxth	r3, r3
 80004e8:	2b00      	cmp	r3, #0
 80004ea:	da02      	bge.n	80004f2 <main+0x8e>
 80004ec:	4b1a      	ldr	r3, [pc, #104]	; (8000558 <main+0xf4>)
 80004ee:	2200      	movs	r2, #0
 80004f0:	801a      	strh	r2, [r3, #0]
 80004f2:	4b19      	ldr	r3, [pc, #100]	; (8000558 <main+0xf4>)
 80004f4:	881b      	ldrh	r3, [r3, #0]
 80004f6:	b21a      	sxth	r2, r3
 80004f8:	4613      	mov	r3, r2
 80004fa:	009b      	lsls	r3, r3, #2
 80004fc:	4413      	add	r3, r2
 80004fe:	005b      	lsls	r3, r3, #1
 8000500:	f8c7 3100 	str.w	r3, [r7, #256]	; 0x100
 8000504:	2064      	movs	r0, #100	; 0x64
 8000506:	f000 fa29 	bl	800095c <sleep>
 800050a:	4814      	ldr	r0, [pc, #80]	; (800055c <main+0xf8>)
 800050c:	f8d7 1100 	ldr.w	r1, [r7, #256]	; 0x100
 8000510:	f000 fe40 	bl	8001194 <xprintf>
 8000514:	f8d7 3100 	ldr.w	r3, [r7, #256]	; 0x100
 8000518:	4618      	mov	r0, r3
 800051a:	2104      	movs	r1, #4
 800051c:	2200      	movs	r2, #0
 800051e:	f7ff fe33 	bl	8000188 <display_out>
 8000522:	2000      	movs	r0, #0
 8000524:	2104      	movs	r1, #4
 8000526:	2201      	movs	r2, #1
 8000528:	f7ff fe2e 	bl	8000188 <display_out>
 800052c:	2001      	movs	r0, #1
 800052e:	f7ff ff41 	bl	80003b4 <load_set_mode>
 8000532:	200a      	movs	r0, #10
 8000534:	f000 fa12 	bl	800095c <sleep>
 8000538:	f8d7 3100 	ldr.w	r3, [r7, #256]	; 0x100
 800053c:	b29b      	uxth	r3, r3
 800053e:	4618      	mov	r0, r3
 8000540:	f7ff ff4c 	bl	80003dc <load_set_curr>
 8000544:	e7c1      	b.n	80004ca <main+0x66>
 8000546:	bf00      	nop
 8000548:	20000a4c 	.word	0x20000a4c
 800054c:	08000b21 	.word	0x08000b21
 8000550:	080030c8 	.word	0x080030c8
 8000554:	40023800 	.word	0x40023800
 8000558:	20000c90 	.word	0x20000c90
 800055c:	080030d0 	.word	0x080030d0

08000560 <NVIC_SetPriorityGrouping>:
 8000560:	b480      	push	{r7}
 8000562:	b085      	sub	sp, #20
 8000564:	af00      	add	r7, sp, #0
 8000566:	6078      	str	r0, [r7, #4]
 8000568:	687b      	ldr	r3, [r7, #4]
 800056a:	f003 0307 	and.w	r3, r3, #7
 800056e:	60fb      	str	r3, [r7, #12]
 8000570:	4b0c      	ldr	r3, [pc, #48]	; (80005a4 <NVIC_SetPriorityGrouping+0x44>)
 8000572:	68db      	ldr	r3, [r3, #12]
 8000574:	60bb      	str	r3, [r7, #8]
 8000576:	68ba      	ldr	r2, [r7, #8]
 8000578:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800057c:	4013      	ands	r3, r2
 800057e:	60bb      	str	r3, [r7, #8]
 8000580:	68fb      	ldr	r3, [r7, #12]
 8000582:	021a      	lsls	r2, r3, #8
 8000584:	68bb      	ldr	r3, [r7, #8]
 8000586:	4313      	orrs	r3, r2
 8000588:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 800058c:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000590:	60bb      	str	r3, [r7, #8]
 8000592:	4b04      	ldr	r3, [pc, #16]	; (80005a4 <NVIC_SetPriorityGrouping+0x44>)
 8000594:	68ba      	ldr	r2, [r7, #8]
 8000596:	60da      	str	r2, [r3, #12]
 8000598:	3714      	adds	r7, #20
 800059a:	46bd      	mov	sp, r7
 800059c:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005a0:	4770      	bx	lr
 80005a2:	bf00      	nop
 80005a4:	e000ed00 	.word	0xe000ed00

080005a8 <NVIC_SetPriority>:
 80005a8:	b480      	push	{r7}
 80005aa:	b083      	sub	sp, #12
 80005ac:	af00      	add	r7, sp, #0
 80005ae:	4603      	mov	r3, r0
 80005b0:	6039      	str	r1, [r7, #0]
 80005b2:	71fb      	strb	r3, [r7, #7]
 80005b4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80005b8:	2b00      	cmp	r3, #0
 80005ba:	da0b      	bge.n	80005d4 <NVIC_SetPriority+0x2c>
 80005bc:	490d      	ldr	r1, [pc, #52]	; (80005f4 <NVIC_SetPriority+0x4c>)
 80005be:	79fb      	ldrb	r3, [r7, #7]
 80005c0:	f003 030f 	and.w	r3, r3, #15
 80005c4:	3b04      	subs	r3, #4
 80005c6:	683a      	ldr	r2, [r7, #0]
 80005c8:	b2d2      	uxtb	r2, r2
 80005ca:	0112      	lsls	r2, r2, #4
 80005cc:	b2d2      	uxtb	r2, r2
 80005ce:	440b      	add	r3, r1
 80005d0:	761a      	strb	r2, [r3, #24]
 80005d2:	e009      	b.n	80005e8 <NVIC_SetPriority+0x40>
 80005d4:	4908      	ldr	r1, [pc, #32]	; (80005f8 <NVIC_SetPriority+0x50>)
 80005d6:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80005da:	683a      	ldr	r2, [r7, #0]
 80005dc:	b2d2      	uxtb	r2, r2
 80005de:	0112      	lsls	r2, r2, #4
 80005e0:	b2d2      	uxtb	r2, r2
 80005e2:	440b      	add	r3, r1
 80005e4:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80005e8:	370c      	adds	r7, #12
 80005ea:	46bd      	mov	sp, r7
 80005ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005f0:	4770      	bx	lr
 80005f2:	bf00      	nop
 80005f4:	e000ed00 	.word	0xe000ed00
 80005f8:	e000e100 	.word	0xe000e100

080005fc <clock_PLL>:
 80005fc:	b480      	push	{r7}
 80005fe:	af00      	add	r7, sp, #0
 8000600:	4b5b      	ldr	r3, [pc, #364]	; (8000770 <clock_PLL+0x174>)
 8000602:	4a5b      	ldr	r2, [pc, #364]	; (8000770 <clock_PLL+0x174>)
 8000604:	6812      	ldr	r2, [r2, #0]
 8000606:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800060a:	601a      	str	r2, [r3, #0]
 800060c:	bf00      	nop
 800060e:	4b58      	ldr	r3, [pc, #352]	; (8000770 <clock_PLL+0x174>)
 8000610:	681b      	ldr	r3, [r3, #0]
 8000612:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000616:	2b00      	cmp	r3, #0
 8000618:	d0f9      	beq.n	800060e <clock_PLL+0x12>
 800061a:	4b55      	ldr	r3, [pc, #340]	; (8000770 <clock_PLL+0x174>)
 800061c:	4a54      	ldr	r2, [pc, #336]	; (8000770 <clock_PLL+0x174>)
 800061e:	6812      	ldr	r2, [r2, #0]
 8000620:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8000624:	601a      	str	r2, [r3, #0]
 8000626:	4a52      	ldr	r2, [pc, #328]	; (8000770 <clock_PLL+0x174>)
 8000628:	4b51      	ldr	r3, [pc, #324]	; (8000770 <clock_PLL+0x174>)
 800062a:	6859      	ldr	r1, [r3, #4]
 800062c:	4b51      	ldr	r3, [pc, #324]	; (8000774 <clock_PLL+0x178>)
 800062e:	400b      	ands	r3, r1
 8000630:	6053      	str	r3, [r2, #4]
 8000632:	4b4f      	ldr	r3, [pc, #316]	; (8000770 <clock_PLL+0x174>)
 8000634:	4a4e      	ldr	r2, [pc, #312]	; (8000770 <clock_PLL+0x174>)
 8000636:	6852      	ldr	r2, [r2, #4]
 8000638:	f442 42a8 	orr.w	r2, r2, #21504	; 0x5400
 800063c:	605a      	str	r2, [r3, #4]
 800063e:	4b4c      	ldr	r3, [pc, #304]	; (8000770 <clock_PLL+0x174>)
 8000640:	4a4b      	ldr	r2, [pc, #300]	; (8000770 <clock_PLL+0x174>)
 8000642:	6852      	ldr	r2, [r2, #4]
 8000644:	f042 0208 	orr.w	r2, r2, #8
 8000648:	605a      	str	r2, [r3, #4]
 800064a:	4b49      	ldr	r3, [pc, #292]	; (8000770 <clock_PLL+0x174>)
 800064c:	4a48      	ldr	r2, [pc, #288]	; (8000770 <clock_PLL+0x174>)
 800064e:	6852      	ldr	r2, [r2, #4]
 8000650:	605a      	str	r2, [r3, #4]
 8000652:	4b47      	ldr	r3, [pc, #284]	; (8000770 <clock_PLL+0x174>)
 8000654:	4a46      	ldr	r2, [pc, #280]	; (8000770 <clock_PLL+0x174>)
 8000656:	6852      	ldr	r2, [r2, #4]
 8000658:	f042 62e0 	orr.w	r2, r2, #117440512	; 0x7000000
 800065c:	605a      	str	r2, [r3, #4]
 800065e:	4b44      	ldr	r3, [pc, #272]	; (8000770 <clock_PLL+0x174>)
 8000660:	4a43      	ldr	r2, [pc, #268]	; (8000770 <clock_PLL+0x174>)
 8000662:	6852      	ldr	r2, [r2, #4]
 8000664:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 8000668:	605a      	str	r2, [r3, #4]
 800066a:	4b41      	ldr	r3, [pc, #260]	; (8000770 <clock_PLL+0x174>)
 800066c:	4a40      	ldr	r2, [pc, #256]	; (8000770 <clock_PLL+0x174>)
 800066e:	6812      	ldr	r2, [r2, #0]
 8000670:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8000674:	601a      	str	r2, [r3, #0]
 8000676:	bf00      	nop
 8000678:	4b3d      	ldr	r3, [pc, #244]	; (8000770 <clock_PLL+0x174>)
 800067a:	681b      	ldr	r3, [r3, #0]
 800067c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000680:	2b00      	cmp	r3, #0
 8000682:	d0f9      	beq.n	8000678 <clock_PLL+0x7c>
 8000684:	4b3c      	ldr	r3, [pc, #240]	; (8000778 <clock_PLL+0x17c>)
 8000686:	4a3c      	ldr	r2, [pc, #240]	; (8000778 <clock_PLL+0x17c>)
 8000688:	6812      	ldr	r2, [r2, #0]
 800068a:	f022 020f 	bic.w	r2, r2, #15
 800068e:	601a      	str	r2, [r3, #0]
 8000690:	4a39      	ldr	r2, [pc, #228]	; (8000778 <clock_PLL+0x17c>)
 8000692:	4b39      	ldr	r3, [pc, #228]	; (8000778 <clock_PLL+0x17c>)
 8000694:	681b      	ldr	r3, [r3, #0]
 8000696:	f443 7382 	orr.w	r3, r3, #260	; 0x104
 800069a:	f043 0301 	orr.w	r3, r3, #1
 800069e:	6013      	str	r3, [r2, #0]
 80006a0:	4a33      	ldr	r2, [pc, #204]	; (8000770 <clock_PLL+0x174>)
 80006a2:	4b33      	ldr	r3, [pc, #204]	; (8000770 <clock_PLL+0x174>)
 80006a4:	689b      	ldr	r3, [r3, #8]
 80006a6:	f423 437c 	bic.w	r3, r3, #64512	; 0xfc00
 80006aa:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80006ae:	6093      	str	r3, [r2, #8]
 80006b0:	4b2f      	ldr	r3, [pc, #188]	; (8000770 <clock_PLL+0x174>)
 80006b2:	4a2f      	ldr	r2, [pc, #188]	; (8000770 <clock_PLL+0x174>)
 80006b4:	6892      	ldr	r2, [r2, #8]
 80006b6:	f442 4214 	orr.w	r2, r2, #37888	; 0x9400
 80006ba:	609a      	str	r2, [r3, #8]
 80006bc:	4b2c      	ldr	r3, [pc, #176]	; (8000770 <clock_PLL+0x174>)
 80006be:	4a2c      	ldr	r2, [pc, #176]	; (8000770 <clock_PLL+0x174>)
 80006c0:	6892      	ldr	r2, [r2, #8]
 80006c2:	f022 0203 	bic.w	r2, r2, #3
 80006c6:	609a      	str	r2, [r3, #8]
 80006c8:	4b29      	ldr	r3, [pc, #164]	; (8000770 <clock_PLL+0x174>)
 80006ca:	4a29      	ldr	r2, [pc, #164]	; (8000770 <clock_PLL+0x174>)
 80006cc:	6892      	ldr	r2, [r2, #8]
 80006ce:	f042 0202 	orr.w	r2, r2, #2
 80006d2:	609a      	str	r2, [r3, #8]
 80006d4:	bf00      	nop
 80006d6:	4b26      	ldr	r3, [pc, #152]	; (8000770 <clock_PLL+0x174>)
 80006d8:	689b      	ldr	r3, [r3, #8]
 80006da:	f003 0308 	and.w	r3, r3, #8
 80006de:	2b00      	cmp	r3, #0
 80006e0:	d0f9      	beq.n	80006d6 <clock_PLL+0xda>
 80006e2:	4b23      	ldr	r3, [pc, #140]	; (8000770 <clock_PLL+0x174>)
 80006e4:	4a22      	ldr	r2, [pc, #136]	; (8000770 <clock_PLL+0x174>)
 80006e6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80006e8:	f042 0205 	orr.w	r2, r2, #5
 80006ec:	631a      	str	r2, [r3, #48]	; 0x30
 80006ee:	4b23      	ldr	r3, [pc, #140]	; (800077c <clock_PLL+0x180>)
 80006f0:	4a22      	ldr	r2, [pc, #136]	; (800077c <clock_PLL+0x180>)
 80006f2:	6812      	ldr	r2, [r2, #0]
 80006f4:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 80006f8:	601a      	str	r2, [r3, #0]
 80006fa:	4b20      	ldr	r3, [pc, #128]	; (800077c <clock_PLL+0x180>)
 80006fc:	4a1f      	ldr	r2, [pc, #124]	; (800077c <clock_PLL+0x180>)
 80006fe:	6812      	ldr	r2, [r2, #0]
 8000700:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8000704:	601a      	str	r2, [r3, #0]
 8000706:	4b1e      	ldr	r3, [pc, #120]	; (8000780 <clock_PLL+0x184>)
 8000708:	4a1d      	ldr	r2, [pc, #116]	; (8000780 <clock_PLL+0x184>)
 800070a:	6812      	ldr	r2, [r2, #0]
 800070c:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 8000710:	601a      	str	r2, [r3, #0]
 8000712:	4b1b      	ldr	r3, [pc, #108]	; (8000780 <clock_PLL+0x184>)
 8000714:	4a1a      	ldr	r2, [pc, #104]	; (8000780 <clock_PLL+0x184>)
 8000716:	6812      	ldr	r2, [r2, #0]
 8000718:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 800071c:	601a      	str	r2, [r3, #0]
 800071e:	4b17      	ldr	r3, [pc, #92]	; (800077c <clock_PLL+0x180>)
 8000720:	4a16      	ldr	r2, [pc, #88]	; (800077c <clock_PLL+0x180>)
 8000722:	6892      	ldr	r2, [r2, #8]
 8000724:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 8000728:	609a      	str	r2, [r3, #8]
 800072a:	4b15      	ldr	r3, [pc, #84]	; (8000780 <clock_PLL+0x184>)
 800072c:	4a14      	ldr	r2, [pc, #80]	; (8000780 <clock_PLL+0x184>)
 800072e:	6892      	ldr	r2, [r2, #8]
 8000730:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 8000734:	609a      	str	r2, [r3, #8]
 8000736:	4b0e      	ldr	r3, [pc, #56]	; (8000770 <clock_PLL+0x174>)
 8000738:	4a0d      	ldr	r2, [pc, #52]	; (8000770 <clock_PLL+0x174>)
 800073a:	6892      	ldr	r2, [r2, #8]
 800073c:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8000740:	609a      	str	r2, [r3, #8]
 8000742:	4b0b      	ldr	r3, [pc, #44]	; (8000770 <clock_PLL+0x174>)
 8000744:	4a0a      	ldr	r2, [pc, #40]	; (8000770 <clock_PLL+0x174>)
 8000746:	6892      	ldr	r2, [r2, #8]
 8000748:	f442 02c0 	orr.w	r2, r2, #6291456	; 0x600000
 800074c:	609a      	str	r2, [r3, #8]
 800074e:	4b08      	ldr	r3, [pc, #32]	; (8000770 <clock_PLL+0x174>)
 8000750:	4a07      	ldr	r2, [pc, #28]	; (8000770 <clock_PLL+0x174>)
 8000752:	6892      	ldr	r2, [r2, #8]
 8000754:	f022 527c 	bic.w	r2, r2, #1056964608	; 0x3f000000
 8000758:	609a      	str	r2, [r3, #8]
 800075a:	4b05      	ldr	r3, [pc, #20]	; (8000770 <clock_PLL+0x174>)
 800075c:	4a04      	ldr	r2, [pc, #16]	; (8000770 <clock_PLL+0x174>)
 800075e:	6892      	ldr	r2, [r2, #8]
 8000760:	f042 5258 	orr.w	r2, r2, #905969664	; 0x36000000
 8000764:	609a      	str	r2, [r3, #8]
 8000766:	46bd      	mov	sp, r7
 8000768:	f85d 7b04 	ldr.w	r7, [sp], #4
 800076c:	4770      	bx	lr
 800076e:	bf00      	nop
 8000770:	40023800 	.word	0x40023800
 8000774:	f0fc8000 	.word	0xf0fc8000
 8000778:	40023c00 	.word	0x40023c00
 800077c:	40020000 	.word	0x40020000
 8000780:	40020800 	.word	0x40020800

08000784 <clock_HSE>:
 8000784:	b480      	push	{r7}
 8000786:	af00      	add	r7, sp, #0
 8000788:	4b2c      	ldr	r3, [pc, #176]	; (800083c <clock_HSE+0xb8>)
 800078a:	4a2c      	ldr	r2, [pc, #176]	; (800083c <clock_HSE+0xb8>)
 800078c:	6812      	ldr	r2, [r2, #0]
 800078e:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000792:	601a      	str	r2, [r3, #0]
 8000794:	bf00      	nop
 8000796:	4b29      	ldr	r3, [pc, #164]	; (800083c <clock_HSE+0xb8>)
 8000798:	681b      	ldr	r3, [r3, #0]
 800079a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800079e:	2b00      	cmp	r3, #0
 80007a0:	d0f9      	beq.n	8000796 <clock_HSE+0x12>
 80007a2:	4b26      	ldr	r3, [pc, #152]	; (800083c <clock_HSE+0xb8>)
 80007a4:	4a25      	ldr	r2, [pc, #148]	; (800083c <clock_HSE+0xb8>)
 80007a6:	6892      	ldr	r2, [r2, #8]
 80007a8:	f022 0203 	bic.w	r2, r2, #3
 80007ac:	609a      	str	r2, [r3, #8]
 80007ae:	4b23      	ldr	r3, [pc, #140]	; (800083c <clock_HSE+0xb8>)
 80007b0:	4a22      	ldr	r2, [pc, #136]	; (800083c <clock_HSE+0xb8>)
 80007b2:	6892      	ldr	r2, [r2, #8]
 80007b4:	f042 0201 	orr.w	r2, r2, #1
 80007b8:	609a      	str	r2, [r3, #8]
 80007ba:	bf00      	nop
 80007bc:	4b1f      	ldr	r3, [pc, #124]	; (800083c <clock_HSE+0xb8>)
 80007be:	689b      	ldr	r3, [r3, #8]
 80007c0:	f003 0304 	and.w	r3, r3, #4
 80007c4:	2b00      	cmp	r3, #0
 80007c6:	d0f9      	beq.n	80007bc <clock_HSE+0x38>
 80007c8:	4b1c      	ldr	r3, [pc, #112]	; (800083c <clock_HSE+0xb8>)
 80007ca:	4a1c      	ldr	r2, [pc, #112]	; (800083c <clock_HSE+0xb8>)
 80007cc:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80007ce:	f042 0205 	orr.w	r2, r2, #5
 80007d2:	631a      	str	r2, [r3, #48]	; 0x30
 80007d4:	4b1a      	ldr	r3, [pc, #104]	; (8000840 <clock_HSE+0xbc>)
 80007d6:	4a1a      	ldr	r2, [pc, #104]	; (8000840 <clock_HSE+0xbc>)
 80007d8:	6812      	ldr	r2, [r2, #0]
 80007da:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 80007de:	601a      	str	r2, [r3, #0]
 80007e0:	4b17      	ldr	r3, [pc, #92]	; (8000840 <clock_HSE+0xbc>)
 80007e2:	4a17      	ldr	r2, [pc, #92]	; (8000840 <clock_HSE+0xbc>)
 80007e4:	6812      	ldr	r2, [r2, #0]
 80007e6:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 80007ea:	601a      	str	r2, [r3, #0]
 80007ec:	4b15      	ldr	r3, [pc, #84]	; (8000844 <clock_HSE+0xc0>)
 80007ee:	4a15      	ldr	r2, [pc, #84]	; (8000844 <clock_HSE+0xc0>)
 80007f0:	6812      	ldr	r2, [r2, #0]
 80007f2:	f422 2240 	bic.w	r2, r2, #786432	; 0xc0000
 80007f6:	601a      	str	r2, [r3, #0]
 80007f8:	4b12      	ldr	r3, [pc, #72]	; (8000844 <clock_HSE+0xc0>)
 80007fa:	4a12      	ldr	r2, [pc, #72]	; (8000844 <clock_HSE+0xc0>)
 80007fc:	6812      	ldr	r2, [r2, #0]
 80007fe:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 8000802:	601a      	str	r2, [r3, #0]
 8000804:	4b0e      	ldr	r3, [pc, #56]	; (8000840 <clock_HSE+0xbc>)
 8000806:	4a0e      	ldr	r2, [pc, #56]	; (8000840 <clock_HSE+0xbc>)
 8000808:	6892      	ldr	r2, [r2, #8]
 800080a:	f442 3240 	orr.w	r2, r2, #196608	; 0x30000
 800080e:	609a      	str	r2, [r3, #8]
 8000810:	4b0c      	ldr	r3, [pc, #48]	; (8000844 <clock_HSE+0xc0>)
 8000812:	4a0c      	ldr	r2, [pc, #48]	; (8000844 <clock_HSE+0xc0>)
 8000814:	6892      	ldr	r2, [r2, #8]
 8000816:	f442 2240 	orr.w	r2, r2, #786432	; 0xc0000
 800081a:	609a      	str	r2, [r3, #8]
 800081c:	4b07      	ldr	r3, [pc, #28]	; (800083c <clock_HSE+0xb8>)
 800081e:	4a07      	ldr	r2, [pc, #28]	; (800083c <clock_HSE+0xb8>)
 8000820:	6892      	ldr	r2, [r2, #8]
 8000822:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8000826:	609a      	str	r2, [r3, #8]
 8000828:	4b04      	ldr	r3, [pc, #16]	; (800083c <clock_HSE+0xb8>)
 800082a:	4a04      	ldr	r2, [pc, #16]	; (800083c <clock_HSE+0xb8>)
 800082c:	6892      	ldr	r2, [r2, #8]
 800082e:	f442 0280 	orr.w	r2, r2, #4194304	; 0x400000
 8000832:	609a      	str	r2, [r3, #8]
 8000834:	46bd      	mov	sp, r7
 8000836:	f85d 7b04 	ldr.w	r7, [sp], #4
 800083a:	4770      	bx	lr
 800083c:	40023800 	.word	0x40023800
 8000840:	40020000 	.word	0x40020000
 8000844:	40020800 	.word	0x40020800

08000848 <systimer_init>:
 8000848:	b480      	push	{r7}
 800084a:	af00      	add	r7, sp, #0
 800084c:	4b06      	ldr	r3, [pc, #24]	; (8000868 <systimer_init+0x20>)
 800084e:	f245 2207 	movw	r2, #20999	; 0x5207
 8000852:	605a      	str	r2, [r3, #4]
 8000854:	4b04      	ldr	r3, [pc, #16]	; (8000868 <systimer_init+0x20>)
 8000856:	2200      	movs	r2, #0
 8000858:	609a      	str	r2, [r3, #8]
 800085a:	4b03      	ldr	r3, [pc, #12]	; (8000868 <systimer_init+0x20>)
 800085c:	2203      	movs	r2, #3
 800085e:	601a      	str	r2, [r3, #0]
 8000860:	46bd      	mov	sp, r7
 8000862:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000866:	4770      	bx	lr
 8000868:	e000e010 	.word	0xe000e010

0800086c <system_init>:
 800086c:	b580      	push	{r7, lr}
 800086e:	af00      	add	r7, sp, #0
 8000870:	f7ff fec4 	bl	80005fc <clock_PLL>
 8000874:	f7ff ffe8 	bl	8000848 <systimer_init>
 8000878:	4b33      	ldr	r3, [pc, #204]	; (8000948 <system_init+0xdc>)
 800087a:	4a33      	ldr	r2, [pc, #204]	; (8000948 <system_init+0xdc>)
 800087c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800087e:	f042 0201 	orr.w	r2, r2, #1
 8000882:	631a      	str	r2, [r3, #48]	; 0x30
 8000884:	4b31      	ldr	r3, [pc, #196]	; (800094c <system_init+0xe0>)
 8000886:	4a31      	ldr	r2, [pc, #196]	; (800094c <system_init+0xe0>)
 8000888:	6812      	ldr	r2, [r2, #0]
 800088a:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 800088e:	601a      	str	r2, [r3, #0]
 8000890:	4b2e      	ldr	r3, [pc, #184]	; (800094c <system_init+0xe0>)
 8000892:	4a2e      	ldr	r2, [pc, #184]	; (800094c <system_init+0xe0>)
 8000894:	6812      	ldr	r2, [r2, #0]
 8000896:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 800089a:	601a      	str	r2, [r3, #0]
 800089c:	4b2a      	ldr	r3, [pc, #168]	; (8000948 <system_init+0xdc>)
 800089e:	4a2a      	ldr	r2, [pc, #168]	; (8000948 <system_init+0xdc>)
 80008a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80008a2:	f042 0210 	orr.w	r2, r2, #16
 80008a6:	631a      	str	r2, [r3, #48]	; 0x30
 80008a8:	4b29      	ldr	r3, [pc, #164]	; (8000950 <system_init+0xe4>)
 80008aa:	4a29      	ldr	r2, [pc, #164]	; (8000950 <system_init+0xe4>)
 80008ac:	6812      	ldr	r2, [r2, #0]
 80008ae:	f422 227c 	bic.w	r2, r2, #1032192	; 0xfc000
 80008b2:	601a      	str	r2, [r3, #0]
 80008b4:	4b26      	ldr	r3, [pc, #152]	; (8000950 <system_init+0xe4>)
 80008b6:	4a26      	ldr	r2, [pc, #152]	; (8000950 <system_init+0xe4>)
 80008b8:	6812      	ldr	r2, [r2, #0]
 80008ba:	f442 22a8 	orr.w	r2, r2, #344064	; 0x54000
 80008be:	601a      	str	r2, [r3, #0]
 80008c0:	4b21      	ldr	r3, [pc, #132]	; (8000948 <system_init+0xdc>)
 80008c2:	4a21      	ldr	r2, [pc, #132]	; (8000948 <system_init+0xdc>)
 80008c4:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80008c6:	f042 0208 	orr.w	r2, r2, #8
 80008ca:	631a      	str	r2, [r3, #48]	; 0x30
 80008cc:	4a21      	ldr	r2, [pc, #132]	; (8000954 <system_init+0xe8>)
 80008ce:	4b21      	ldr	r3, [pc, #132]	; (8000954 <system_init+0xe8>)
 80008d0:	681b      	ldr	r3, [r3, #0]
 80008d2:	0c1b      	lsrs	r3, r3, #16
 80008d4:	041b      	lsls	r3, r3, #16
 80008d6:	6013      	str	r3, [r2, #0]
 80008d8:	4a1e      	ldr	r2, [pc, #120]	; (8000954 <system_init+0xe8>)
 80008da:	4b1e      	ldr	r3, [pc, #120]	; (8000954 <system_init+0xe8>)
 80008dc:	681b      	ldr	r3, [r3, #0]
 80008de:	f443 43aa 	orr.w	r3, r3, #21760	; 0x5500
 80008e2:	f043 0355 	orr.w	r3, r3, #85	; 0x55
 80008e6:	6013      	str	r3, [r2, #0]
 80008e8:	2000      	movs	r0, #0
 80008ea:	f7ff fe39 	bl	8000560 <NVIC_SetPriorityGrouping>
 80008ee:	2034      	movs	r0, #52	; 0x34
 80008f0:	2106      	movs	r1, #6
 80008f2:	f7ff fe59 	bl	80005a8 <NVIC_SetPriority>
 80008f6:	2027      	movs	r0, #39	; 0x27
 80008f8:	2105      	movs	r1, #5
 80008fa:	f7ff fe55 	bl	80005a8 <NVIC_SetPriority>
 80008fe:	201f      	movs	r0, #31
 8000900:	2104      	movs	r1, #4
 8000902:	f7ff fe51 	bl	80005a8 <NVIC_SetPriority>
 8000906:	2020      	movs	r0, #32
 8000908:	2104      	movs	r1, #4
 800090a:	f7ff fe4d 	bl	80005a8 <NVIC_SetPriority>
 800090e:	200f      	movs	r0, #15
 8000910:	2103      	movs	r1, #3
 8000912:	f7ff fe49 	bl	80005a8 <NVIC_SetPriority>
 8000916:	2023      	movs	r0, #35	; 0x23
 8000918:	2103      	movs	r1, #3
 800091a:	f7ff fe45 	bl	80005a8 <NVIC_SetPriority>
 800091e:	201d      	movs	r0, #29
 8000920:	2102      	movs	r1, #2
 8000922:	f7ff fe41 	bl	80005a8 <NVIC_SetPriority>
 8000926:	f04f 30ff 	mov.w	r0, #4294967295
 800092a:	2101      	movs	r1, #1
 800092c:	f7ff fe3c 	bl	80005a8 <NVIC_SetPriority>
 8000930:	2012      	movs	r0, #18
 8000932:	2100      	movs	r1, #0
 8000934:	f7ff fe38 	bl	80005a8 <NVIC_SetPriority>
 8000938:	4b07      	ldr	r3, [pc, #28]	; (8000958 <system_init+0xec>)
 800093a:	f245 5255 	movw	r2, #21845	; 0x5555
 800093e:	601a      	str	r2, [r3, #0]
 8000940:	4b05      	ldr	r3, [pc, #20]	; (8000958 <system_init+0xec>)
 8000942:	220a      	movs	r2, #10
 8000944:	609a      	str	r2, [r3, #8]
 8000946:	bd80      	pop	{r7, pc}
 8000948:	40023800 	.word	0x40023800
 800094c:	40020000 	.word	0x40020000
 8000950:	40021000 	.word	0x40021000
 8000954:	40020c00 	.word	0x40020c00
 8000958:	40003000 	.word	0x40003000

0800095c <sleep>:
 800095c:	b480      	push	{r7}
 800095e:	b085      	sub	sp, #20
 8000960:	af00      	add	r7, sp, #0
 8000962:	6078      	str	r0, [r7, #4]
 8000964:	4b07      	ldr	r3, [pc, #28]	; (8000984 <sleep+0x28>)
 8000966:	681a      	ldr	r2, [r3, #0]
 8000968:	687b      	ldr	r3, [r7, #4]
 800096a:	4413      	add	r3, r2
 800096c:	60fb      	str	r3, [r7, #12]
 800096e:	bf00      	nop
 8000970:	4b04      	ldr	r3, [pc, #16]	; (8000984 <sleep+0x28>)
 8000972:	681a      	ldr	r2, [r3, #0]
 8000974:	68fb      	ldr	r3, [r7, #12]
 8000976:	429a      	cmp	r2, r3
 8000978:	d3fa      	bcc.n	8000970 <sleep+0x14>
 800097a:	3714      	adds	r7, #20
 800097c:	46bd      	mov	sp, r7
 800097e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000982:	4770      	bx	lr
 8000984:	20000238 	.word	0x20000238

08000988 <SysTick_Handler>:
 8000988:	b480      	push	{r7}
 800098a:	af00      	add	r7, sp, #0
 800098c:	4b04      	ldr	r3, [pc, #16]	; (80009a0 <SysTick_Handler+0x18>)
 800098e:	681b      	ldr	r3, [r3, #0]
 8000990:	1c5a      	adds	r2, r3, #1
 8000992:	4b03      	ldr	r3, [pc, #12]	; (80009a0 <SysTick_Handler+0x18>)
 8000994:	601a      	str	r2, [r3, #0]
 8000996:	46bd      	mov	sp, r7
 8000998:	f85d 7b04 	ldr.w	r7, [sp], #4
 800099c:	4770      	bx	lr
 800099e:	bf00      	nop
 80009a0:	20000238 	.word	0x20000238

080009a4 <handler_reset>:
 80009a4:	b580      	push	{r7, lr}
 80009a6:	b082      	sub	sp, #8
 80009a8:	af00      	add	r7, sp, #0
 80009aa:	4b11      	ldr	r3, [pc, #68]	; (80009f0 <handler_reset+0x4c>)
 80009ac:	607b      	str	r3, [r7, #4]
 80009ae:	4b11      	ldr	r3, [pc, #68]	; (80009f4 <handler_reset+0x50>)
 80009b0:	603b      	str	r3, [r7, #0]
 80009b2:	e007      	b.n	80009c4 <handler_reset+0x20>
 80009b4:	683b      	ldr	r3, [r7, #0]
 80009b6:	1d1a      	adds	r2, r3, #4
 80009b8:	603a      	str	r2, [r7, #0]
 80009ba:	687a      	ldr	r2, [r7, #4]
 80009bc:	1d11      	adds	r1, r2, #4
 80009be:	6079      	str	r1, [r7, #4]
 80009c0:	6812      	ldr	r2, [r2, #0]
 80009c2:	601a      	str	r2, [r3, #0]
 80009c4:	683a      	ldr	r2, [r7, #0]
 80009c6:	4b0c      	ldr	r3, [pc, #48]	; (80009f8 <handler_reset+0x54>)
 80009c8:	429a      	cmp	r2, r3
 80009ca:	d3f3      	bcc.n	80009b4 <handler_reset+0x10>
 80009cc:	4b0b      	ldr	r3, [pc, #44]	; (80009fc <handler_reset+0x58>)
 80009ce:	603b      	str	r3, [r7, #0]
 80009d0:	e004      	b.n	80009dc <handler_reset+0x38>
 80009d2:	683b      	ldr	r3, [r7, #0]
 80009d4:	1d1a      	adds	r2, r3, #4
 80009d6:	603a      	str	r2, [r7, #0]
 80009d8:	2200      	movs	r2, #0
 80009da:	601a      	str	r2, [r3, #0]
 80009dc:	683a      	ldr	r2, [r7, #0]
 80009de:	4b08      	ldr	r3, [pc, #32]	; (8000a00 <handler_reset+0x5c>)
 80009e0:	429a      	cmp	r2, r3
 80009e2:	d3f6      	bcc.n	80009d2 <handler_reset+0x2e>
 80009e4:	f7ff fd3e 	bl	8000464 <main>
 80009e8:	3708      	adds	r7, #8
 80009ea:	46bd      	mov	sp, r7
 80009ec:	bd80      	pop	{r7, pc}
 80009ee:	bf00      	nop
 80009f0:	08003b84 	.word	0x08003b84
 80009f4:	20000000 	.word	0x20000000
 80009f8:	20000218 	.word	0x20000218
 80009fc:	20000218 	.word	0x20000218
 8000a00:	20002cd8 	.word	0x20002cd8

08000a04 <default_handler>:
 8000a04:	b480      	push	{r7}
 8000a06:	af00      	add	r7, sp, #0
 8000a08:	e7fe      	b.n	8000a08 <default_handler+0x4>
 8000a0a:	bf00      	nop

08000a0c <NVIC_EnableIRQ>:
 8000a0c:	b480      	push	{r7}
 8000a0e:	b083      	sub	sp, #12
 8000a10:	af00      	add	r7, sp, #0
 8000a12:	4603      	mov	r3, r0
 8000a14:	71fb      	strb	r3, [r7, #7]
 8000a16:	4b08      	ldr	r3, [pc, #32]	; (8000a38 <NVIC_EnableIRQ+0x2c>)
 8000a18:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8000a1c:	0952      	lsrs	r2, r2, #5
 8000a1e:	79f9      	ldrb	r1, [r7, #7]
 8000a20:	f001 011f 	and.w	r1, r1, #31
 8000a24:	2001      	movs	r0, #1
 8000a26:	fa00 f101 	lsl.w	r1, r0, r1
 8000a2a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8000a2e:	370c      	adds	r7, #12
 8000a30:	46bd      	mov	sp, r7
 8000a32:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a36:	4770      	bx	lr
 8000a38:	e000e100 	.word	0xe000e100

08000a3c <uart_init>:
 8000a3c:	b580      	push	{r7, lr}
 8000a3e:	af00      	add	r7, sp, #0
 8000a40:	4b34      	ldr	r3, [pc, #208]	; (8000b14 <uart_init+0xd8>)
 8000a42:	4a34      	ldr	r2, [pc, #208]	; (8000b14 <uart_init+0xd8>)
 8000a44:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8000a46:	f442 2200 	orr.w	r2, r2, #524288	; 0x80000
 8000a4a:	641a      	str	r2, [r3, #64]	; 0x40
 8000a4c:	4b32      	ldr	r3, [pc, #200]	; (8000b18 <uart_init+0xdc>)
 8000a4e:	4a32      	ldr	r2, [pc, #200]	; (8000b18 <uart_init+0xdc>)
 8000a50:	8992      	ldrh	r2, [r2, #12]
 8000a52:	b292      	uxth	r2, r2
 8000a54:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8000a58:	b292      	uxth	r2, r2
 8000a5a:	819a      	strh	r2, [r3, #12]
 8000a5c:	4b2e      	ldr	r3, [pc, #184]	; (8000b18 <uart_init+0xdc>)
 8000a5e:	4a2e      	ldr	r2, [pc, #184]	; (8000b18 <uart_init+0xdc>)
 8000a60:	8992      	ldrh	r2, [r2, #12]
 8000a62:	b292      	uxth	r2, r2
 8000a64:	f042 0204 	orr.w	r2, r2, #4
 8000a68:	b292      	uxth	r2, r2
 8000a6a:	819a      	strh	r2, [r3, #12]
 8000a6c:	4b2a      	ldr	r3, [pc, #168]	; (8000b18 <uart_init+0xdc>)
 8000a6e:	4a2a      	ldr	r2, [pc, #168]	; (8000b18 <uart_init+0xdc>)
 8000a70:	8992      	ldrh	r2, [r2, #12]
 8000a72:	b292      	uxth	r2, r2
 8000a74:	f042 0220 	orr.w	r2, r2, #32
 8000a78:	b292      	uxth	r2, r2
 8000a7a:	819a      	strh	r2, [r3, #12]
 8000a7c:	4b26      	ldr	r3, [pc, #152]	; (8000b18 <uart_init+0xdc>)
 8000a7e:	4a26      	ldr	r2, [pc, #152]	; (8000b18 <uart_init+0xdc>)
 8000a80:	8992      	ldrh	r2, [r2, #12]
 8000a82:	b292      	uxth	r2, r2
 8000a84:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000a88:	b292      	uxth	r2, r2
 8000a8a:	819a      	strh	r2, [r3, #12]
 8000a8c:	2034      	movs	r0, #52	; 0x34
 8000a8e:	f7ff ffbd 	bl	8000a0c <NVIC_EnableIRQ>
 8000a92:	4b21      	ldr	r3, [pc, #132]	; (8000b18 <uart_init+0xdc>)
 8000a94:	891b      	ldrh	r3, [r3, #8]
 8000a96:	4b20      	ldr	r3, [pc, #128]	; (8000b18 <uart_init+0xdc>)
 8000a98:	2200      	movs	r2, #0
 8000a9a:	811a      	strh	r2, [r3, #8]
 8000a9c:	4a1e      	ldr	r2, [pc, #120]	; (8000b18 <uart_init+0xdc>)
 8000a9e:	4b1e      	ldr	r3, [pc, #120]	; (8000b18 <uart_init+0xdc>)
 8000aa0:	891b      	ldrh	r3, [r3, #8]
 8000aa2:	b29b      	uxth	r3, r3
 8000aa4:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8000aa8:	f043 0301 	orr.w	r3, r3, #1
 8000aac:	b29b      	uxth	r3, r3
 8000aae:	8113      	strh	r3, [r2, #8]
 8000ab0:	4b18      	ldr	r3, [pc, #96]	; (8000b14 <uart_init+0xd8>)
 8000ab2:	4a18      	ldr	r2, [pc, #96]	; (8000b14 <uart_init+0xd8>)
 8000ab4:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000ab6:	f042 0204 	orr.w	r2, r2, #4
 8000aba:	631a      	str	r2, [r3, #48]	; 0x30
 8000abc:	4b17      	ldr	r3, [pc, #92]	; (8000b1c <uart_init+0xe0>)
 8000abe:	4a17      	ldr	r2, [pc, #92]	; (8000b1c <uart_init+0xe0>)
 8000ac0:	6812      	ldr	r2, [r2, #0]
 8000ac2:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8000ac6:	601a      	str	r2, [r3, #0]
 8000ac8:	4b14      	ldr	r3, [pc, #80]	; (8000b1c <uart_init+0xe0>)
 8000aca:	4a14      	ldr	r2, [pc, #80]	; (8000b1c <uart_init+0xe0>)
 8000acc:	6812      	ldr	r2, [r2, #0]
 8000ace:	f442 0220 	orr.w	r2, r2, #10485760	; 0xa00000
 8000ad2:	601a      	str	r2, [r3, #0]
 8000ad4:	4b11      	ldr	r3, [pc, #68]	; (8000b1c <uart_init+0xe0>)
 8000ad6:	4a11      	ldr	r2, [pc, #68]	; (8000b1c <uart_init+0xe0>)
 8000ad8:	6892      	ldr	r2, [r2, #8]
 8000ada:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 8000ade:	609a      	str	r2, [r3, #8]
 8000ae0:	4b0e      	ldr	r3, [pc, #56]	; (8000b1c <uart_init+0xe0>)
 8000ae2:	4a0e      	ldr	r2, [pc, #56]	; (8000b1c <uart_init+0xe0>)
 8000ae4:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000ae6:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8000aea:	625a      	str	r2, [r3, #36]	; 0x24
 8000aec:	4b0b      	ldr	r3, [pc, #44]	; (8000b1c <uart_init+0xe0>)
 8000aee:	4a0b      	ldr	r2, [pc, #44]	; (8000b1c <uart_init+0xe0>)
 8000af0:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000af2:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8000af6:	625a      	str	r2, [r3, #36]	; 0x24
 8000af8:	4b08      	ldr	r3, [pc, #32]	; (8000b1c <uart_init+0xe0>)
 8000afa:	4a08      	ldr	r2, [pc, #32]	; (8000b1c <uart_init+0xe0>)
 8000afc:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000afe:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 8000b02:	625a      	str	r2, [r3, #36]	; 0x24
 8000b04:	4b05      	ldr	r3, [pc, #20]	; (8000b1c <uart_init+0xe0>)
 8000b06:	4a05      	ldr	r2, [pc, #20]	; (8000b1c <uart_init+0xe0>)
 8000b08:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000b0a:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8000b0e:	625a      	str	r2, [r3, #36]	; 0x24
 8000b10:	bd80      	pop	{r7, pc}
 8000b12:	bf00      	nop
 8000b14:	40023800 	.word	0x40023800
 8000b18:	40004c00 	.word	0x40004c00
 8000b1c:	40020800 	.word	0x40020800

08000b20 <uart_putch>:
 8000b20:	b480      	push	{r7}
 8000b22:	b083      	sub	sp, #12
 8000b24:	af00      	add	r7, sp, #0
 8000b26:	4603      	mov	r3, r0
 8000b28:	71fb      	strb	r3, [r7, #7]
 8000b2a:	4b13      	ldr	r3, [pc, #76]	; (8000b78 <uart_putch+0x58>)
 8000b2c:	681a      	ldr	r2, [r3, #0]
 8000b2e:	4b13      	ldr	r3, [pc, #76]	; (8000b7c <uart_putch+0x5c>)
 8000b30:	681b      	ldr	r3, [r3, #0]
 8000b32:	429a      	cmp	r2, r3
 8000b34:	d107      	bne.n	8000b46 <uart_putch+0x26>
 8000b36:	4b12      	ldr	r3, [pc, #72]	; (8000b80 <uart_putch+0x60>)
 8000b38:	4a11      	ldr	r2, [pc, #68]	; (8000b80 <uart_putch+0x60>)
 8000b3a:	8992      	ldrh	r2, [r2, #12]
 8000b3c:	b292      	uxth	r2, r2
 8000b3e:	f042 0208 	orr.w	r2, r2, #8
 8000b42:	b292      	uxth	r2, r2
 8000b44:	819a      	strh	r2, [r3, #12]
 8000b46:	4b0c      	ldr	r3, [pc, #48]	; (8000b78 <uart_putch+0x58>)
 8000b48:	681b      	ldr	r3, [r3, #0]
 8000b4a:	4a0e      	ldr	r2, [pc, #56]	; (8000b84 <uart_putch+0x64>)
 8000b4c:	79f9      	ldrb	r1, [r7, #7]
 8000b4e:	54d1      	strb	r1, [r2, r3]
 8000b50:	4b09      	ldr	r3, [pc, #36]	; (8000b78 <uart_putch+0x58>)
 8000b52:	681b      	ldr	r3, [r3, #0]
 8000b54:	3301      	adds	r3, #1
 8000b56:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000b5a:	4b07      	ldr	r3, [pc, #28]	; (8000b78 <uart_putch+0x58>)
 8000b5c:	601a      	str	r2, [r3, #0]
 8000b5e:	4b08      	ldr	r3, [pc, #32]	; (8000b80 <uart_putch+0x60>)
 8000b60:	4a07      	ldr	r2, [pc, #28]	; (8000b80 <uart_putch+0x60>)
 8000b62:	8992      	ldrh	r2, [r2, #12]
 8000b64:	b292      	uxth	r2, r2
 8000b66:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000b6a:	b292      	uxth	r2, r2
 8000b6c:	819a      	strh	r2, [r3, #12]
 8000b6e:	370c      	adds	r7, #12
 8000b70:	46bd      	mov	sp, r7
 8000b72:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b76:	4770      	bx	lr
 8000b78:	20000640 	.word	0x20000640
 8000b7c:	2000063c 	.word	0x2000063c
 8000b80:	40004c00 	.word	0x40004c00
 8000b84:	2000023c 	.word	0x2000023c

08000b88 <uart_send>:
 8000b88:	b480      	push	{r7}
 8000b8a:	b085      	sub	sp, #20
 8000b8c:	af00      	add	r7, sp, #0
 8000b8e:	6078      	str	r0, [r7, #4]
 8000b90:	6039      	str	r1, [r7, #0]
 8000b92:	4b20      	ldr	r3, [pc, #128]	; (8000c14 <uart_send+0x8c>)
 8000b94:	681a      	ldr	r2, [r3, #0]
 8000b96:	4b20      	ldr	r3, [pc, #128]	; (8000c18 <uart_send+0x90>)
 8000b98:	681b      	ldr	r3, [r3, #0]
 8000b9a:	429a      	cmp	r2, r3
 8000b9c:	d107      	bne.n	8000bae <uart_send+0x26>
 8000b9e:	4b1f      	ldr	r3, [pc, #124]	; (8000c1c <uart_send+0x94>)
 8000ba0:	4a1e      	ldr	r2, [pc, #120]	; (8000c1c <uart_send+0x94>)
 8000ba2:	8992      	ldrh	r2, [r2, #12]
 8000ba4:	b292      	uxth	r2, r2
 8000ba6:	f042 0208 	orr.w	r2, r2, #8
 8000baa:	b292      	uxth	r2, r2
 8000bac:	819a      	strh	r2, [r3, #12]
 8000bae:	2300      	movs	r3, #0
 8000bb0:	60fb      	str	r3, [r7, #12]
 8000bb2:	e01b      	b.n	8000bec <uart_send+0x64>
 8000bb4:	4b17      	ldr	r3, [pc, #92]	; (8000c14 <uart_send+0x8c>)
 8000bb6:	681b      	ldr	r3, [r3, #0]
 8000bb8:	68fa      	ldr	r2, [r7, #12]
 8000bba:	6879      	ldr	r1, [r7, #4]
 8000bbc:	440a      	add	r2, r1
 8000bbe:	7811      	ldrb	r1, [r2, #0]
 8000bc0:	4a17      	ldr	r2, [pc, #92]	; (8000c20 <uart_send+0x98>)
 8000bc2:	54d1      	strb	r1, [r2, r3]
 8000bc4:	4b13      	ldr	r3, [pc, #76]	; (8000c14 <uart_send+0x8c>)
 8000bc6:	681b      	ldr	r3, [r3, #0]
 8000bc8:	3301      	adds	r3, #1
 8000bca:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000bce:	4b11      	ldr	r3, [pc, #68]	; (8000c14 <uart_send+0x8c>)
 8000bd0:	601a      	str	r2, [r3, #0]
 8000bd2:	4b10      	ldr	r3, [pc, #64]	; (8000c14 <uart_send+0x8c>)
 8000bd4:	681a      	ldr	r2, [r3, #0]
 8000bd6:	4b10      	ldr	r3, [pc, #64]	; (8000c18 <uart_send+0x90>)
 8000bd8:	681b      	ldr	r3, [r3, #0]
 8000bda:	429a      	cmp	r2, r3
 8000bdc:	d103      	bne.n	8000be6 <uart_send+0x5e>
 8000bde:	68fb      	ldr	r3, [r7, #12]
 8000be0:	3301      	adds	r3, #1
 8000be2:	60fb      	str	r3, [r7, #12]
 8000be4:	e006      	b.n	8000bf4 <uart_send+0x6c>
 8000be6:	68fb      	ldr	r3, [r7, #12]
 8000be8:	3301      	adds	r3, #1
 8000bea:	60fb      	str	r3, [r7, #12]
 8000bec:	68fa      	ldr	r2, [r7, #12]
 8000bee:	683b      	ldr	r3, [r7, #0]
 8000bf0:	429a      	cmp	r2, r3
 8000bf2:	dbdf      	blt.n	8000bb4 <uart_send+0x2c>
 8000bf4:	4b09      	ldr	r3, [pc, #36]	; (8000c1c <uart_send+0x94>)
 8000bf6:	4a09      	ldr	r2, [pc, #36]	; (8000c1c <uart_send+0x94>)
 8000bf8:	8992      	ldrh	r2, [r2, #12]
 8000bfa:	b292      	uxth	r2, r2
 8000bfc:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000c00:	b292      	uxth	r2, r2
 8000c02:	819a      	strh	r2, [r3, #12]
 8000c04:	68fb      	ldr	r3, [r7, #12]
 8000c06:	4618      	mov	r0, r3
 8000c08:	3714      	adds	r7, #20
 8000c0a:	46bd      	mov	sp, r7
 8000c0c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c10:	4770      	bx	lr
 8000c12:	bf00      	nop
 8000c14:	20000640 	.word	0x20000640
 8000c18:	2000063c 	.word	0x2000063c
 8000c1c:	40004c00 	.word	0x40004c00
 8000c20:	2000023c 	.word	0x2000023c

08000c24 <uart_send_str>:
 8000c24:	b480      	push	{r7}
 8000c26:	b085      	sub	sp, #20
 8000c28:	af00      	add	r7, sp, #0
 8000c2a:	6078      	str	r0, [r7, #4]
 8000c2c:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000c30:	60bb      	str	r3, [r7, #8]
 8000c32:	4b25      	ldr	r3, [pc, #148]	; (8000cc8 <uart_send_str+0xa4>)
 8000c34:	681a      	ldr	r2, [r3, #0]
 8000c36:	4b25      	ldr	r3, [pc, #148]	; (8000ccc <uart_send_str+0xa8>)
 8000c38:	681b      	ldr	r3, [r3, #0]
 8000c3a:	1ad3      	subs	r3, r2, r3
 8000c3c:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c40:	68ba      	ldr	r2, [r7, #8]
 8000c42:	1ad3      	subs	r3, r2, r3
 8000c44:	60bb      	str	r3, [r7, #8]
 8000c46:	4b20      	ldr	r3, [pc, #128]	; (8000cc8 <uart_send_str+0xa4>)
 8000c48:	681a      	ldr	r2, [r3, #0]
 8000c4a:	4b20      	ldr	r3, [pc, #128]	; (8000ccc <uart_send_str+0xa8>)
 8000c4c:	681b      	ldr	r3, [r3, #0]
 8000c4e:	429a      	cmp	r2, r3
 8000c50:	d107      	bne.n	8000c62 <uart_send_str+0x3e>
 8000c52:	4b1f      	ldr	r3, [pc, #124]	; (8000cd0 <uart_send_str+0xac>)
 8000c54:	4a1e      	ldr	r2, [pc, #120]	; (8000cd0 <uart_send_str+0xac>)
 8000c56:	8992      	ldrh	r2, [r2, #12]
 8000c58:	b292      	uxth	r2, r2
 8000c5a:	f042 0208 	orr.w	r2, r2, #8
 8000c5e:	b292      	uxth	r2, r2
 8000c60:	819a      	strh	r2, [r3, #12]
 8000c62:	2300      	movs	r3, #0
 8000c64:	60fb      	str	r3, [r7, #12]
 8000c66:	e01b      	b.n	8000ca0 <uart_send_str+0x7c>
 8000c68:	68fb      	ldr	r3, [r7, #12]
 8000c6a:	687a      	ldr	r2, [r7, #4]
 8000c6c:	4413      	add	r3, r2
 8000c6e:	781b      	ldrb	r3, [r3, #0]
 8000c70:	2b00      	cmp	r3, #0
 8000c72:	d103      	bne.n	8000c7c <uart_send_str+0x58>
 8000c74:	68fb      	ldr	r3, [r7, #12]
 8000c76:	3301      	adds	r3, #1
 8000c78:	60fb      	str	r3, [r7, #12]
 8000c7a:	e015      	b.n	8000ca8 <uart_send_str+0x84>
 8000c7c:	4b12      	ldr	r3, [pc, #72]	; (8000cc8 <uart_send_str+0xa4>)
 8000c7e:	681b      	ldr	r3, [r3, #0]
 8000c80:	68fa      	ldr	r2, [r7, #12]
 8000c82:	6879      	ldr	r1, [r7, #4]
 8000c84:	440a      	add	r2, r1
 8000c86:	7811      	ldrb	r1, [r2, #0]
 8000c88:	4a12      	ldr	r2, [pc, #72]	; (8000cd4 <uart_send_str+0xb0>)
 8000c8a:	54d1      	strb	r1, [r2, r3]
 8000c8c:	4b0e      	ldr	r3, [pc, #56]	; (8000cc8 <uart_send_str+0xa4>)
 8000c8e:	681b      	ldr	r3, [r3, #0]
 8000c90:	3301      	adds	r3, #1
 8000c92:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000c96:	4b0c      	ldr	r3, [pc, #48]	; (8000cc8 <uart_send_str+0xa4>)
 8000c98:	601a      	str	r2, [r3, #0]
 8000c9a:	68fb      	ldr	r3, [r7, #12]
 8000c9c:	3301      	adds	r3, #1
 8000c9e:	60fb      	str	r3, [r7, #12]
 8000ca0:	68fa      	ldr	r2, [r7, #12]
 8000ca2:	68bb      	ldr	r3, [r7, #8]
 8000ca4:	429a      	cmp	r2, r3
 8000ca6:	dbdf      	blt.n	8000c68 <uart_send_str+0x44>
 8000ca8:	4b09      	ldr	r3, [pc, #36]	; (8000cd0 <uart_send_str+0xac>)
 8000caa:	4a09      	ldr	r2, [pc, #36]	; (8000cd0 <uart_send_str+0xac>)
 8000cac:	8992      	ldrh	r2, [r2, #12]
 8000cae:	b292      	uxth	r2, r2
 8000cb0:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8000cb4:	b292      	uxth	r2, r2
 8000cb6:	819a      	strh	r2, [r3, #12]
 8000cb8:	68fb      	ldr	r3, [r7, #12]
 8000cba:	4618      	mov	r0, r3
 8000cbc:	3714      	adds	r7, #20
 8000cbe:	46bd      	mov	sp, r7
 8000cc0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000cc4:	4770      	bx	lr
 8000cc6:	bf00      	nop
 8000cc8:	20000640 	.word	0x20000640
 8000ccc:	2000063c 	.word	0x2000063c
 8000cd0:	40004c00 	.word	0x40004c00
 8000cd4:	2000023c 	.word	0x2000023c

08000cd8 <uart_read>:
 8000cd8:	b480      	push	{r7}
 8000cda:	b085      	sub	sp, #20
 8000cdc:	af00      	add	r7, sp, #0
 8000cde:	6078      	str	r0, [r7, #4]
 8000ce0:	6039      	str	r1, [r7, #0]
 8000ce2:	4b19      	ldr	r3, [pc, #100]	; (8000d48 <uart_read+0x70>)
 8000ce4:	681a      	ldr	r2, [r3, #0]
 8000ce6:	4b19      	ldr	r3, [pc, #100]	; (8000d4c <uart_read+0x74>)
 8000ce8:	681b      	ldr	r3, [r3, #0]
 8000cea:	429a      	cmp	r2, r3
 8000cec:	d101      	bne.n	8000cf2 <uart_read+0x1a>
 8000cee:	2300      	movs	r3, #0
 8000cf0:	e023      	b.n	8000d3a <uart_read+0x62>
 8000cf2:	2300      	movs	r3, #0
 8000cf4:	60fb      	str	r3, [r7, #12]
 8000cf6:	e01b      	b.n	8000d30 <uart_read+0x58>
 8000cf8:	68fb      	ldr	r3, [r7, #12]
 8000cfa:	687a      	ldr	r2, [r7, #4]
 8000cfc:	4413      	add	r3, r2
 8000cfe:	4a12      	ldr	r2, [pc, #72]	; (8000d48 <uart_read+0x70>)
 8000d00:	6812      	ldr	r2, [r2, #0]
 8000d02:	4913      	ldr	r1, [pc, #76]	; (8000d50 <uart_read+0x78>)
 8000d04:	5c8a      	ldrb	r2, [r1, r2]
 8000d06:	701a      	strb	r2, [r3, #0]
 8000d08:	4b0f      	ldr	r3, [pc, #60]	; (8000d48 <uart_read+0x70>)
 8000d0a:	681b      	ldr	r3, [r3, #0]
 8000d0c:	3301      	adds	r3, #1
 8000d0e:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000d12:	4b0d      	ldr	r3, [pc, #52]	; (8000d48 <uart_read+0x70>)
 8000d14:	601a      	str	r2, [r3, #0]
 8000d16:	4b0c      	ldr	r3, [pc, #48]	; (8000d48 <uart_read+0x70>)
 8000d18:	681a      	ldr	r2, [r3, #0]
 8000d1a:	4b0c      	ldr	r3, [pc, #48]	; (8000d4c <uart_read+0x74>)
 8000d1c:	681b      	ldr	r3, [r3, #0]
 8000d1e:	429a      	cmp	r2, r3
 8000d20:	d103      	bne.n	8000d2a <uart_read+0x52>
 8000d22:	68fb      	ldr	r3, [r7, #12]
 8000d24:	3301      	adds	r3, #1
 8000d26:	60fb      	str	r3, [r7, #12]
 8000d28:	e006      	b.n	8000d38 <uart_read+0x60>
 8000d2a:	68fb      	ldr	r3, [r7, #12]
 8000d2c:	3301      	adds	r3, #1
 8000d2e:	60fb      	str	r3, [r7, #12]
 8000d30:	68fa      	ldr	r2, [r7, #12]
 8000d32:	683b      	ldr	r3, [r7, #0]
 8000d34:	429a      	cmp	r2, r3
 8000d36:	dbdf      	blt.n	8000cf8 <uart_read+0x20>
 8000d38:	68fb      	ldr	r3, [r7, #12]
 8000d3a:	4618      	mov	r0, r3
 8000d3c:	3714      	adds	r7, #20
 8000d3e:	46bd      	mov	sp, r7
 8000d40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d44:	4770      	bx	lr
 8000d46:	bf00      	nop
 8000d48:	20000a48 	.word	0x20000a48
 8000d4c:	20000a44 	.word	0x20000a44
 8000d50:	20000644 	.word	0x20000644

08000d54 <UART4_IRQHandler>:
 8000d54:	b480      	push	{r7}
 8000d56:	af00      	add	r7, sp, #0
 8000d58:	4b1e      	ldr	r3, [pc, #120]	; (8000dd4 <UART4_IRQHandler+0x80>)
 8000d5a:	881b      	ldrh	r3, [r3, #0]
 8000d5c:	b29b      	uxth	r3, r3
 8000d5e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000d62:	2b00      	cmp	r3, #0
 8000d64:	d01b      	beq.n	8000d9e <UART4_IRQHandler+0x4a>
 8000d66:	4b1c      	ldr	r3, [pc, #112]	; (8000dd8 <UART4_IRQHandler+0x84>)
 8000d68:	681a      	ldr	r2, [r3, #0]
 8000d6a:	4b1c      	ldr	r3, [pc, #112]	; (8000ddc <UART4_IRQHandler+0x88>)
 8000d6c:	681b      	ldr	r3, [r3, #0]
 8000d6e:	429a      	cmp	r2, r3
 8000d70:	d108      	bne.n	8000d84 <UART4_IRQHandler+0x30>
 8000d72:	4b18      	ldr	r3, [pc, #96]	; (8000dd4 <UART4_IRQHandler+0x80>)
 8000d74:	4a17      	ldr	r2, [pc, #92]	; (8000dd4 <UART4_IRQHandler+0x80>)
 8000d76:	8992      	ldrh	r2, [r2, #12]
 8000d78:	b292      	uxth	r2, r2
 8000d7a:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8000d7e:	b292      	uxth	r2, r2
 8000d80:	819a      	strh	r2, [r3, #12]
 8000d82:	e00c      	b.n	8000d9e <UART4_IRQHandler+0x4a>
 8000d84:	4b13      	ldr	r3, [pc, #76]	; (8000dd4 <UART4_IRQHandler+0x80>)
 8000d86:	4a14      	ldr	r2, [pc, #80]	; (8000dd8 <UART4_IRQHandler+0x84>)
 8000d88:	6812      	ldr	r2, [r2, #0]
 8000d8a:	4915      	ldr	r1, [pc, #84]	; (8000de0 <UART4_IRQHandler+0x8c>)
 8000d8c:	5c8a      	ldrb	r2, [r1, r2]
 8000d8e:	809a      	strh	r2, [r3, #4]
 8000d90:	4b11      	ldr	r3, [pc, #68]	; (8000dd8 <UART4_IRQHandler+0x84>)
 8000d92:	681b      	ldr	r3, [r3, #0]
 8000d94:	3301      	adds	r3, #1
 8000d96:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000d9a:	4b0f      	ldr	r3, [pc, #60]	; (8000dd8 <UART4_IRQHandler+0x84>)
 8000d9c:	601a      	str	r2, [r3, #0]
 8000d9e:	4b0d      	ldr	r3, [pc, #52]	; (8000dd4 <UART4_IRQHandler+0x80>)
 8000da0:	881b      	ldrh	r3, [r3, #0]
 8000da2:	b29b      	uxth	r3, r3
 8000da4:	f003 0320 	and.w	r3, r3, #32
 8000da8:	2b00      	cmp	r3, #0
 8000daa:	d00e      	beq.n	8000dca <UART4_IRQHandler+0x76>
 8000dac:	4b0d      	ldr	r3, [pc, #52]	; (8000de4 <UART4_IRQHandler+0x90>)
 8000dae:	681b      	ldr	r3, [r3, #0]
 8000db0:	4a08      	ldr	r2, [pc, #32]	; (8000dd4 <UART4_IRQHandler+0x80>)
 8000db2:	8892      	ldrh	r2, [r2, #4]
 8000db4:	b292      	uxth	r2, r2
 8000db6:	b2d1      	uxtb	r1, r2
 8000db8:	4a0b      	ldr	r2, [pc, #44]	; (8000de8 <UART4_IRQHandler+0x94>)
 8000dba:	54d1      	strb	r1, [r2, r3]
 8000dbc:	4b09      	ldr	r3, [pc, #36]	; (8000de4 <UART4_IRQHandler+0x90>)
 8000dbe:	681b      	ldr	r3, [r3, #0]
 8000dc0:	3301      	adds	r3, #1
 8000dc2:	f3c3 0209 	ubfx	r2, r3, #0, #10
 8000dc6:	4b07      	ldr	r3, [pc, #28]	; (8000de4 <UART4_IRQHandler+0x90>)
 8000dc8:	601a      	str	r2, [r3, #0]
 8000dca:	46bd      	mov	sp, r7
 8000dcc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dd0:	4770      	bx	lr
 8000dd2:	bf00      	nop
 8000dd4:	40004c00 	.word	0x40004c00
 8000dd8:	2000063c 	.word	0x2000063c
 8000ddc:	20000640 	.word	0x20000640
 8000de0:	2000023c 	.word	0x2000023c
 8000de4:	20000a44 	.word	0x20000a44
 8000de8:	20000644 	.word	0x20000644

08000dec <xputc>:
 8000dec:	b580      	push	{r7, lr}
 8000dee:	b082      	sub	sp, #8
 8000df0:	af00      	add	r7, sp, #0
 8000df2:	4603      	mov	r3, r0
 8000df4:	71fb      	strb	r3, [r7, #7]
 8000df6:	79fb      	ldrb	r3, [r7, #7]
 8000df8:	2b0a      	cmp	r3, #10
 8000dfa:	d102      	bne.n	8000e02 <xputc+0x16>
 8000dfc:	200d      	movs	r0, #13
 8000dfe:	f7ff fff5 	bl	8000dec <xputc>
 8000e02:	4b0c      	ldr	r3, [pc, #48]	; (8000e34 <xputc+0x48>)
 8000e04:	681b      	ldr	r3, [r3, #0]
 8000e06:	2b00      	cmp	r3, #0
 8000e08:	d007      	beq.n	8000e1a <xputc+0x2e>
 8000e0a:	4b0a      	ldr	r3, [pc, #40]	; (8000e34 <xputc+0x48>)
 8000e0c:	681b      	ldr	r3, [r3, #0]
 8000e0e:	1c59      	adds	r1, r3, #1
 8000e10:	4a08      	ldr	r2, [pc, #32]	; (8000e34 <xputc+0x48>)
 8000e12:	6011      	str	r1, [r2, #0]
 8000e14:	79fa      	ldrb	r2, [r7, #7]
 8000e16:	701a      	strb	r2, [r3, #0]
 8000e18:	e008      	b.n	8000e2c <xputc+0x40>
 8000e1a:	4b07      	ldr	r3, [pc, #28]	; (8000e38 <xputc+0x4c>)
 8000e1c:	681b      	ldr	r3, [r3, #0]
 8000e1e:	2b00      	cmp	r3, #0
 8000e20:	d004      	beq.n	8000e2c <xputc+0x40>
 8000e22:	4b05      	ldr	r3, [pc, #20]	; (8000e38 <xputc+0x4c>)
 8000e24:	681b      	ldr	r3, [r3, #0]
 8000e26:	79fa      	ldrb	r2, [r7, #7]
 8000e28:	4610      	mov	r0, r2
 8000e2a:	4798      	blx	r3
 8000e2c:	3708      	adds	r7, #8
 8000e2e:	46bd      	mov	sp, r7
 8000e30:	bd80      	pop	{r7, pc}
 8000e32:	bf00      	nop
 8000e34:	20000a50 	.word	0x20000a50
 8000e38:	20000a4c 	.word	0x20000a4c

08000e3c <xputs>:
 8000e3c:	b580      	push	{r7, lr}
 8000e3e:	b082      	sub	sp, #8
 8000e40:	af00      	add	r7, sp, #0
 8000e42:	6078      	str	r0, [r7, #4]
 8000e44:	e006      	b.n	8000e54 <xputs+0x18>
 8000e46:	687b      	ldr	r3, [r7, #4]
 8000e48:	1c5a      	adds	r2, r3, #1
 8000e4a:	607a      	str	r2, [r7, #4]
 8000e4c:	781b      	ldrb	r3, [r3, #0]
 8000e4e:	4618      	mov	r0, r3
 8000e50:	f7ff ffcc 	bl	8000dec <xputc>
 8000e54:	687b      	ldr	r3, [r7, #4]
 8000e56:	781b      	ldrb	r3, [r3, #0]
 8000e58:	2b00      	cmp	r3, #0
 8000e5a:	d1f4      	bne.n	8000e46 <xputs+0xa>
 8000e5c:	3708      	adds	r7, #8
 8000e5e:	46bd      	mov	sp, r7
 8000e60:	bd80      	pop	{r7, pc}
 8000e62:	bf00      	nop

08000e64 <xfputs>:
 8000e64:	b580      	push	{r7, lr}
 8000e66:	b084      	sub	sp, #16
 8000e68:	af00      	add	r7, sp, #0
 8000e6a:	6078      	str	r0, [r7, #4]
 8000e6c:	6039      	str	r1, [r7, #0]
 8000e6e:	4b0c      	ldr	r3, [pc, #48]	; (8000ea0 <xfputs+0x3c>)
 8000e70:	681b      	ldr	r3, [r3, #0]
 8000e72:	60fb      	str	r3, [r7, #12]
 8000e74:	4b0a      	ldr	r3, [pc, #40]	; (8000ea0 <xfputs+0x3c>)
 8000e76:	687a      	ldr	r2, [r7, #4]
 8000e78:	601a      	str	r2, [r3, #0]
 8000e7a:	e006      	b.n	8000e8a <xfputs+0x26>
 8000e7c:	683b      	ldr	r3, [r7, #0]
 8000e7e:	1c5a      	adds	r2, r3, #1
 8000e80:	603a      	str	r2, [r7, #0]
 8000e82:	781b      	ldrb	r3, [r3, #0]
 8000e84:	4618      	mov	r0, r3
 8000e86:	f7ff ffb1 	bl	8000dec <xputc>
 8000e8a:	683b      	ldr	r3, [r7, #0]
 8000e8c:	781b      	ldrb	r3, [r3, #0]
 8000e8e:	2b00      	cmp	r3, #0
 8000e90:	d1f4      	bne.n	8000e7c <xfputs+0x18>
 8000e92:	4b03      	ldr	r3, [pc, #12]	; (8000ea0 <xfputs+0x3c>)
 8000e94:	68fa      	ldr	r2, [r7, #12]
 8000e96:	601a      	str	r2, [r3, #0]
 8000e98:	3710      	adds	r7, #16
 8000e9a:	46bd      	mov	sp, r7
 8000e9c:	bd80      	pop	{r7, pc}
 8000e9e:	bf00      	nop
 8000ea0:	20000a4c 	.word	0x20000a4c

08000ea4 <xvprintf>:
 8000ea4:	b580      	push	{r7, lr}
 8000ea6:	b08e      	sub	sp, #56	; 0x38
 8000ea8:	af00      	add	r7, sp, #0
 8000eaa:	6078      	str	r0, [r7, #4]
 8000eac:	6039      	str	r1, [r7, #0]
 8000eae:	687b      	ldr	r3, [r7, #4]
 8000eb0:	1c5a      	adds	r2, r3, #1
 8000eb2:	607a      	str	r2, [r7, #4]
 8000eb4:	781b      	ldrb	r3, [r3, #0]
 8000eb6:	77fb      	strb	r3, [r7, #31]
 8000eb8:	7ffb      	ldrb	r3, [r7, #31]
 8000eba:	2b00      	cmp	r3, #0
 8000ebc:	d100      	bne.n	8000ec0 <xvprintf+0x1c>
 8000ebe:	e166      	b.n	800118e <xvprintf+0x2ea>
 8000ec0:	7ffb      	ldrb	r3, [r7, #31]
 8000ec2:	2b25      	cmp	r3, #37	; 0x25
 8000ec4:	d004      	beq.n	8000ed0 <xvprintf+0x2c>
 8000ec6:	7ffb      	ldrb	r3, [r7, #31]
 8000ec8:	4618      	mov	r0, r3
 8000eca:	f7ff ff8f 	bl	8000dec <xputc>
 8000ece:	e15d      	b.n	800118c <xvprintf+0x2e8>
 8000ed0:	2300      	movs	r3, #0
 8000ed2:	627b      	str	r3, [r7, #36]	; 0x24
 8000ed4:	687b      	ldr	r3, [r7, #4]
 8000ed6:	1c5a      	adds	r2, r3, #1
 8000ed8:	607a      	str	r2, [r7, #4]
 8000eda:	781b      	ldrb	r3, [r3, #0]
 8000edc:	77fb      	strb	r3, [r7, #31]
 8000ede:	7ffb      	ldrb	r3, [r7, #31]
 8000ee0:	2b30      	cmp	r3, #48	; 0x30
 8000ee2:	d107      	bne.n	8000ef4 <xvprintf+0x50>
 8000ee4:	2301      	movs	r3, #1
 8000ee6:	627b      	str	r3, [r7, #36]	; 0x24
 8000ee8:	687b      	ldr	r3, [r7, #4]
 8000eea:	1c5a      	adds	r2, r3, #1
 8000eec:	607a      	str	r2, [r7, #4]
 8000eee:	781b      	ldrb	r3, [r3, #0]
 8000ef0:	77fb      	strb	r3, [r7, #31]
 8000ef2:	e009      	b.n	8000f08 <xvprintf+0x64>
 8000ef4:	7ffb      	ldrb	r3, [r7, #31]
 8000ef6:	2b2d      	cmp	r3, #45	; 0x2d
 8000ef8:	d106      	bne.n	8000f08 <xvprintf+0x64>
 8000efa:	2302      	movs	r3, #2
 8000efc:	627b      	str	r3, [r7, #36]	; 0x24
 8000efe:	687b      	ldr	r3, [r7, #4]
 8000f00:	1c5a      	adds	r2, r3, #1
 8000f02:	607a      	str	r2, [r7, #4]
 8000f04:	781b      	ldrb	r3, [r3, #0]
 8000f06:	77fb      	strb	r3, [r7, #31]
 8000f08:	2300      	movs	r3, #0
 8000f0a:	62bb      	str	r3, [r7, #40]	; 0x28
 8000f0c:	e00e      	b.n	8000f2c <xvprintf+0x88>
 8000f0e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000f10:	4613      	mov	r3, r2
 8000f12:	009b      	lsls	r3, r3, #2
 8000f14:	4413      	add	r3, r2
 8000f16:	005b      	lsls	r3, r3, #1
 8000f18:	461a      	mov	r2, r3
 8000f1a:	7ffb      	ldrb	r3, [r7, #31]
 8000f1c:	4413      	add	r3, r2
 8000f1e:	3b30      	subs	r3, #48	; 0x30
 8000f20:	62bb      	str	r3, [r7, #40]	; 0x28
 8000f22:	687b      	ldr	r3, [r7, #4]
 8000f24:	1c5a      	adds	r2, r3, #1
 8000f26:	607a      	str	r2, [r7, #4]
 8000f28:	781b      	ldrb	r3, [r3, #0]
 8000f2a:	77fb      	strb	r3, [r7, #31]
 8000f2c:	7ffb      	ldrb	r3, [r7, #31]
 8000f2e:	2b2f      	cmp	r3, #47	; 0x2f
 8000f30:	d902      	bls.n	8000f38 <xvprintf+0x94>
 8000f32:	7ffb      	ldrb	r3, [r7, #31]
 8000f34:	2b39      	cmp	r3, #57	; 0x39
 8000f36:	d9ea      	bls.n	8000f0e <xvprintf+0x6a>
 8000f38:	7ffb      	ldrb	r3, [r7, #31]
 8000f3a:	2b6c      	cmp	r3, #108	; 0x6c
 8000f3c:	d002      	beq.n	8000f44 <xvprintf+0xa0>
 8000f3e:	7ffb      	ldrb	r3, [r7, #31]
 8000f40:	2b4c      	cmp	r3, #76	; 0x4c
 8000f42:	d108      	bne.n	8000f56 <xvprintf+0xb2>
 8000f44:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000f46:	f043 0304 	orr.w	r3, r3, #4
 8000f4a:	627b      	str	r3, [r7, #36]	; 0x24
 8000f4c:	687b      	ldr	r3, [r7, #4]
 8000f4e:	1c5a      	adds	r2, r3, #1
 8000f50:	607a      	str	r2, [r7, #4]
 8000f52:	781b      	ldrb	r3, [r3, #0]
 8000f54:	77fb      	strb	r3, [r7, #31]
 8000f56:	7ffb      	ldrb	r3, [r7, #31]
 8000f58:	2b00      	cmp	r3, #0
 8000f5a:	d100      	bne.n	8000f5e <xvprintf+0xba>
 8000f5c:	e117      	b.n	800118e <xvprintf+0x2ea>
 8000f5e:	7ffb      	ldrb	r3, [r7, #31]
 8000f60:	77bb      	strb	r3, [r7, #30]
 8000f62:	7fbb      	ldrb	r3, [r7, #30]
 8000f64:	2b60      	cmp	r3, #96	; 0x60
 8000f66:	d902      	bls.n	8000f6e <xvprintf+0xca>
 8000f68:	7fbb      	ldrb	r3, [r7, #30]
 8000f6a:	3b20      	subs	r3, #32
 8000f6c:	77bb      	strb	r3, [r7, #30]
 8000f6e:	7fbb      	ldrb	r3, [r7, #30]
 8000f70:	3b42      	subs	r3, #66	; 0x42
 8000f72:	2b16      	cmp	r3, #22
 8000f74:	d873      	bhi.n	800105e <xvprintf+0x1ba>
 8000f76:	a101      	add	r1, pc, #4	; (adr r1, 8000f7c <xvprintf+0xd8>)
 8000f78:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 8000f7c:	08001047 	.word	0x08001047
 8000f80:	08001035 	.word	0x08001035
 8000f84:	08001053 	.word	0x08001053
 8000f88:	0800105f 	.word	0x0800105f
 8000f8c:	0800105f 	.word	0x0800105f
 8000f90:	0800105f 	.word	0x0800105f
 8000f94:	0800105f 	.word	0x0800105f
 8000f98:	0800105f 	.word	0x0800105f
 8000f9c:	0800105f 	.word	0x0800105f
 8000fa0:	0800105f 	.word	0x0800105f
 8000fa4:	0800105f 	.word	0x0800105f
 8000fa8:	0800105f 	.word	0x0800105f
 8000fac:	0800105f 	.word	0x0800105f
 8000fb0:	0800104d 	.word	0x0800104d
 8000fb4:	0800105f 	.word	0x0800105f
 8000fb8:	0800105f 	.word	0x0800105f
 8000fbc:	0800105f 	.word	0x0800105f
 8000fc0:	08000fd9 	.word	0x08000fd9
 8000fc4:	0800105f 	.word	0x0800105f
 8000fc8:	08001053 	.word	0x08001053
 8000fcc:	0800105f 	.word	0x0800105f
 8000fd0:	0800105f 	.word	0x0800105f
 8000fd4:	08001059 	.word	0x08001059
 8000fd8:	683b      	ldr	r3, [r7, #0]
 8000fda:	1d1a      	adds	r2, r3, #4
 8000fdc:	603a      	str	r2, [r7, #0]
 8000fde:	681b      	ldr	r3, [r3, #0]
 8000fe0:	61bb      	str	r3, [r7, #24]
 8000fe2:	2300      	movs	r3, #0
 8000fe4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000fe6:	e002      	b.n	8000fee <xvprintf+0x14a>
 8000fe8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000fea:	3301      	adds	r3, #1
 8000fec:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000fee:	69ba      	ldr	r2, [r7, #24]
 8000ff0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000ff2:	4413      	add	r3, r2
 8000ff4:	781b      	ldrb	r3, [r3, #0]
 8000ff6:	2b00      	cmp	r3, #0
 8000ff8:	d1f6      	bne.n	8000fe8 <xvprintf+0x144>
 8000ffa:	e002      	b.n	8001002 <xvprintf+0x15e>
 8000ffc:	2020      	movs	r0, #32
 8000ffe:	f7ff fef5 	bl	8000dec <xputc>
 8001002:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001004:	f003 0302 	and.w	r3, r3, #2
 8001008:	2b00      	cmp	r3, #0
 800100a:	d105      	bne.n	8001018 <xvprintf+0x174>
 800100c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800100e:	1c5a      	adds	r2, r3, #1
 8001010:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001012:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001014:	4293      	cmp	r3, r2
 8001016:	d3f1      	bcc.n	8000ffc <xvprintf+0x158>
 8001018:	69b8      	ldr	r0, [r7, #24]
 800101a:	f7ff ff0f 	bl	8000e3c <xputs>
 800101e:	e002      	b.n	8001026 <xvprintf+0x182>
 8001020:	2020      	movs	r0, #32
 8001022:	f7ff fee3 	bl	8000dec <xputc>
 8001026:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001028:	1c5a      	adds	r2, r3, #1
 800102a:	62fa      	str	r2, [r7, #44]	; 0x2c
 800102c:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800102e:	4293      	cmp	r3, r2
 8001030:	d3f6      	bcc.n	8001020 <xvprintf+0x17c>
 8001032:	e0ab      	b.n	800118c <xvprintf+0x2e8>
 8001034:	683b      	ldr	r3, [r7, #0]
 8001036:	1d1a      	adds	r2, r3, #4
 8001038:	603a      	str	r2, [r7, #0]
 800103a:	681b      	ldr	r3, [r3, #0]
 800103c:	b2db      	uxtb	r3, r3
 800103e:	4618      	mov	r0, r3
 8001040:	f7ff fed4 	bl	8000dec <xputc>
 8001044:	e0a2      	b.n	800118c <xvprintf+0x2e8>
 8001046:	2302      	movs	r3, #2
 8001048:	637b      	str	r3, [r7, #52]	; 0x34
 800104a:	e00d      	b.n	8001068 <xvprintf+0x1c4>
 800104c:	2308      	movs	r3, #8
 800104e:	637b      	str	r3, [r7, #52]	; 0x34
 8001050:	e00a      	b.n	8001068 <xvprintf+0x1c4>
 8001052:	230a      	movs	r3, #10
 8001054:	637b      	str	r3, [r7, #52]	; 0x34
 8001056:	e007      	b.n	8001068 <xvprintf+0x1c4>
 8001058:	2310      	movs	r3, #16
 800105a:	637b      	str	r3, [r7, #52]	; 0x34
 800105c:	e004      	b.n	8001068 <xvprintf+0x1c4>
 800105e:	7ffb      	ldrb	r3, [r7, #31]
 8001060:	4618      	mov	r0, r3
 8001062:	f7ff fec3 	bl	8000dec <xputc>
 8001066:	e091      	b.n	800118c <xvprintf+0x2e8>
 8001068:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800106a:	f003 0304 	and.w	r3, r3, #4
 800106e:	2b00      	cmp	r3, #0
 8001070:	d004      	beq.n	800107c <xvprintf+0x1d8>
 8001072:	683b      	ldr	r3, [r7, #0]
 8001074:	1d1a      	adds	r2, r3, #4
 8001076:	603a      	str	r2, [r7, #0]
 8001078:	681b      	ldr	r3, [r3, #0]
 800107a:	e00b      	b.n	8001094 <xvprintf+0x1f0>
 800107c:	7fbb      	ldrb	r3, [r7, #30]
 800107e:	2b44      	cmp	r3, #68	; 0x44
 8001080:	d104      	bne.n	800108c <xvprintf+0x1e8>
 8001082:	683b      	ldr	r3, [r7, #0]
 8001084:	1d1a      	adds	r2, r3, #4
 8001086:	603a      	str	r2, [r7, #0]
 8001088:	681b      	ldr	r3, [r3, #0]
 800108a:	e003      	b.n	8001094 <xvprintf+0x1f0>
 800108c:	683b      	ldr	r3, [r7, #0]
 800108e:	1d1a      	adds	r2, r3, #4
 8001090:	603a      	str	r2, [r7, #0]
 8001092:	681b      	ldr	r3, [r3, #0]
 8001094:	623b      	str	r3, [r7, #32]
 8001096:	7fbb      	ldrb	r3, [r7, #30]
 8001098:	2b44      	cmp	r3, #68	; 0x44
 800109a:	d109      	bne.n	80010b0 <xvprintf+0x20c>
 800109c:	6a3b      	ldr	r3, [r7, #32]
 800109e:	2b00      	cmp	r3, #0
 80010a0:	da06      	bge.n	80010b0 <xvprintf+0x20c>
 80010a2:	6a3b      	ldr	r3, [r7, #32]
 80010a4:	425b      	negs	r3, r3
 80010a6:	623b      	str	r3, [r7, #32]
 80010a8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80010aa:	f043 0308 	orr.w	r3, r3, #8
 80010ae:	627b      	str	r3, [r7, #36]	; 0x24
 80010b0:	2300      	movs	r3, #0
 80010b2:	633b      	str	r3, [r7, #48]	; 0x30
 80010b4:	6a3b      	ldr	r3, [r7, #32]
 80010b6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80010b8:	fbb3 f2f2 	udiv	r2, r3, r2
 80010bc:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80010be:	fb01 f202 	mul.w	r2, r1, r2
 80010c2:	1a9b      	subs	r3, r3, r2
 80010c4:	77bb      	strb	r3, [r7, #30]
 80010c6:	6a3a      	ldr	r2, [r7, #32]
 80010c8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80010ca:	fbb2 f3f3 	udiv	r3, r2, r3
 80010ce:	623b      	str	r3, [r7, #32]
 80010d0:	7fbb      	ldrb	r3, [r7, #30]
 80010d2:	2b09      	cmp	r3, #9
 80010d4:	d908      	bls.n	80010e8 <xvprintf+0x244>
 80010d6:	7ffb      	ldrb	r3, [r7, #31]
 80010d8:	2b78      	cmp	r3, #120	; 0x78
 80010da:	d101      	bne.n	80010e0 <xvprintf+0x23c>
 80010dc:	2327      	movs	r3, #39	; 0x27
 80010de:	e000      	b.n	80010e2 <xvprintf+0x23e>
 80010e0:	2307      	movs	r3, #7
 80010e2:	7fba      	ldrb	r2, [r7, #30]
 80010e4:	4413      	add	r3, r2
 80010e6:	77bb      	strb	r3, [r7, #30]
 80010e8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80010ea:	1c5a      	adds	r2, r3, #1
 80010ec:	633a      	str	r2, [r7, #48]	; 0x30
 80010ee:	7fba      	ldrb	r2, [r7, #30]
 80010f0:	3230      	adds	r2, #48	; 0x30
 80010f2:	b2d2      	uxtb	r2, r2
 80010f4:	f107 0138 	add.w	r1, r7, #56	; 0x38
 80010f8:	440b      	add	r3, r1
 80010fa:	f803 2c30 	strb.w	r2, [r3, #-48]
 80010fe:	6a3b      	ldr	r3, [r7, #32]
 8001100:	2b00      	cmp	r3, #0
 8001102:	d002      	beq.n	800110a <xvprintf+0x266>
 8001104:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001106:	2b0f      	cmp	r3, #15
 8001108:	d9d4      	bls.n	80010b4 <xvprintf+0x210>
 800110a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800110c:	f003 0308 	and.w	r3, r3, #8
 8001110:	2b00      	cmp	r3, #0
 8001112:	d008      	beq.n	8001126 <xvprintf+0x282>
 8001114:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001116:	1c5a      	adds	r2, r3, #1
 8001118:	633a      	str	r2, [r7, #48]	; 0x30
 800111a:	f107 0238 	add.w	r2, r7, #56	; 0x38
 800111e:	4413      	add	r3, r2
 8001120:	222d      	movs	r2, #45	; 0x2d
 8001122:	f803 2c30 	strb.w	r2, [r3, #-48]
 8001126:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001128:	62fb      	str	r3, [r7, #44]	; 0x2c
 800112a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800112c:	f003 0301 	and.w	r3, r3, #1
 8001130:	2b00      	cmp	r3, #0
 8001132:	d001      	beq.n	8001138 <xvprintf+0x294>
 8001134:	2330      	movs	r3, #48	; 0x30
 8001136:	e000      	b.n	800113a <xvprintf+0x296>
 8001138:	2320      	movs	r3, #32
 800113a:	77bb      	strb	r3, [r7, #30]
 800113c:	e003      	b.n	8001146 <xvprintf+0x2a2>
 800113e:	7fbb      	ldrb	r3, [r7, #30]
 8001140:	4618      	mov	r0, r3
 8001142:	f7ff fe53 	bl	8000dec <xputc>
 8001146:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001148:	f003 0302 	and.w	r3, r3, #2
 800114c:	2b00      	cmp	r3, #0
 800114e:	d105      	bne.n	800115c <xvprintf+0x2b8>
 8001150:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001152:	1c5a      	adds	r2, r3, #1
 8001154:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001156:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001158:	4293      	cmp	r3, r2
 800115a:	d3f0      	bcc.n	800113e <xvprintf+0x29a>
 800115c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800115e:	3b01      	subs	r3, #1
 8001160:	633b      	str	r3, [r7, #48]	; 0x30
 8001162:	f107 0208 	add.w	r2, r7, #8
 8001166:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001168:	4413      	add	r3, r2
 800116a:	781b      	ldrb	r3, [r3, #0]
 800116c:	4618      	mov	r0, r3
 800116e:	f7ff fe3d 	bl	8000dec <xputc>
 8001172:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001174:	2b00      	cmp	r3, #0
 8001176:	d1f1      	bne.n	800115c <xvprintf+0x2b8>
 8001178:	e002      	b.n	8001180 <xvprintf+0x2dc>
 800117a:	2020      	movs	r0, #32
 800117c:	f7ff fe36 	bl	8000dec <xputc>
 8001180:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001182:	1c5a      	adds	r2, r3, #1
 8001184:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001186:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001188:	4293      	cmp	r3, r2
 800118a:	d3f6      	bcc.n	800117a <xvprintf+0x2d6>
 800118c:	e68f      	b.n	8000eae <xvprintf+0xa>
 800118e:	3738      	adds	r7, #56	; 0x38
 8001190:	46bd      	mov	sp, r7
 8001192:	bd80      	pop	{r7, pc}

08001194 <xprintf>:
 8001194:	b40f      	push	{r0, r1, r2, r3}
 8001196:	b580      	push	{r7, lr}
 8001198:	b082      	sub	sp, #8
 800119a:	af00      	add	r7, sp, #0
 800119c:	f107 0314 	add.w	r3, r7, #20
 80011a0:	607b      	str	r3, [r7, #4]
 80011a2:	6938      	ldr	r0, [r7, #16]
 80011a4:	6879      	ldr	r1, [r7, #4]
 80011a6:	f7ff fe7d 	bl	8000ea4 <xvprintf>
 80011aa:	3708      	adds	r7, #8
 80011ac:	46bd      	mov	sp, r7
 80011ae:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80011b2:	b004      	add	sp, #16
 80011b4:	4770      	bx	lr
 80011b6:	bf00      	nop

080011b8 <xsprintf>:
 80011b8:	b40e      	push	{r1, r2, r3}
 80011ba:	b580      	push	{r7, lr}
 80011bc:	b085      	sub	sp, #20
 80011be:	af00      	add	r7, sp, #0
 80011c0:	6078      	str	r0, [r7, #4]
 80011c2:	4b0b      	ldr	r3, [pc, #44]	; (80011f0 <xsprintf+0x38>)
 80011c4:	687a      	ldr	r2, [r7, #4]
 80011c6:	601a      	str	r2, [r3, #0]
 80011c8:	f107 0320 	add.w	r3, r7, #32
 80011cc:	60fb      	str	r3, [r7, #12]
 80011ce:	69f8      	ldr	r0, [r7, #28]
 80011d0:	68f9      	ldr	r1, [r7, #12]
 80011d2:	f7ff fe67 	bl	8000ea4 <xvprintf>
 80011d6:	4b06      	ldr	r3, [pc, #24]	; (80011f0 <xsprintf+0x38>)
 80011d8:	681b      	ldr	r3, [r3, #0]
 80011da:	2200      	movs	r2, #0
 80011dc:	701a      	strb	r2, [r3, #0]
 80011de:	4b04      	ldr	r3, [pc, #16]	; (80011f0 <xsprintf+0x38>)
 80011e0:	2200      	movs	r2, #0
 80011e2:	601a      	str	r2, [r3, #0]
 80011e4:	3714      	adds	r7, #20
 80011e6:	46bd      	mov	sp, r7
 80011e8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80011ec:	b003      	add	sp, #12
 80011ee:	4770      	bx	lr
 80011f0:	20000a50 	.word	0x20000a50

080011f4 <xfprintf>:
 80011f4:	b40e      	push	{r1, r2, r3}
 80011f6:	b580      	push	{r7, lr}
 80011f8:	b085      	sub	sp, #20
 80011fa:	af00      	add	r7, sp, #0
 80011fc:	6078      	str	r0, [r7, #4]
 80011fe:	4b0b      	ldr	r3, [pc, #44]	; (800122c <xfprintf+0x38>)
 8001200:	681b      	ldr	r3, [r3, #0]
 8001202:	60fb      	str	r3, [r7, #12]
 8001204:	4b09      	ldr	r3, [pc, #36]	; (800122c <xfprintf+0x38>)
 8001206:	687a      	ldr	r2, [r7, #4]
 8001208:	601a      	str	r2, [r3, #0]
 800120a:	f107 0320 	add.w	r3, r7, #32
 800120e:	60bb      	str	r3, [r7, #8]
 8001210:	69f8      	ldr	r0, [r7, #28]
 8001212:	68b9      	ldr	r1, [r7, #8]
 8001214:	f7ff fe46 	bl	8000ea4 <xvprintf>
 8001218:	4b04      	ldr	r3, [pc, #16]	; (800122c <xfprintf+0x38>)
 800121a:	68fa      	ldr	r2, [r7, #12]
 800121c:	601a      	str	r2, [r3, #0]
 800121e:	3714      	adds	r7, #20
 8001220:	46bd      	mov	sp, r7
 8001222:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001226:	b003      	add	sp, #12
 8001228:	4770      	bx	lr
 800122a:	bf00      	nop
 800122c:	20000a4c 	.word	0x20000a4c

08001230 <put_dump>:
 8001230:	b580      	push	{r7, lr}
 8001232:	b088      	sub	sp, #32
 8001234:	af00      	add	r7, sp, #0
 8001236:	60f8      	str	r0, [r7, #12]
 8001238:	60b9      	str	r1, [r7, #8]
 800123a:	607a      	str	r2, [r7, #4]
 800123c:	603b      	str	r3, [r7, #0]
 800123e:	4835      	ldr	r0, [pc, #212]	; (8001314 <put_dump+0xe4>)
 8001240:	68b9      	ldr	r1, [r7, #8]
 8001242:	f7ff ffa7 	bl	8001194 <xprintf>
 8001246:	683b      	ldr	r3, [r7, #0]
 8001248:	2b02      	cmp	r3, #2
 800124a:	d03a      	beq.n	80012c2 <put_dump+0x92>
 800124c:	2b04      	cmp	r3, #4
 800124e:	d049      	beq.n	80012e4 <put_dump+0xb4>
 8001250:	2b01      	cmp	r3, #1
 8001252:	d158      	bne.n	8001306 <put_dump+0xd6>
 8001254:	68fb      	ldr	r3, [r7, #12]
 8001256:	613b      	str	r3, [r7, #16]
 8001258:	2300      	movs	r3, #0
 800125a:	61fb      	str	r3, [r7, #28]
 800125c:	e00a      	b.n	8001274 <put_dump+0x44>
 800125e:	69fb      	ldr	r3, [r7, #28]
 8001260:	693a      	ldr	r2, [r7, #16]
 8001262:	4413      	add	r3, r2
 8001264:	781b      	ldrb	r3, [r3, #0]
 8001266:	482c      	ldr	r0, [pc, #176]	; (8001318 <put_dump+0xe8>)
 8001268:	4619      	mov	r1, r3
 800126a:	f7ff ff93 	bl	8001194 <xprintf>
 800126e:	69fb      	ldr	r3, [r7, #28]
 8001270:	3301      	adds	r3, #1
 8001272:	61fb      	str	r3, [r7, #28]
 8001274:	69fa      	ldr	r2, [r7, #28]
 8001276:	687b      	ldr	r3, [r7, #4]
 8001278:	429a      	cmp	r2, r3
 800127a:	dbf0      	blt.n	800125e <put_dump+0x2e>
 800127c:	2020      	movs	r0, #32
 800127e:	f7ff fdb5 	bl	8000dec <xputc>
 8001282:	2300      	movs	r3, #0
 8001284:	61fb      	str	r3, [r7, #28]
 8001286:	e017      	b.n	80012b8 <put_dump+0x88>
 8001288:	69fb      	ldr	r3, [r7, #28]
 800128a:	693a      	ldr	r2, [r7, #16]
 800128c:	4413      	add	r3, r2
 800128e:	781b      	ldrb	r3, [r3, #0]
 8001290:	2b1f      	cmp	r3, #31
 8001292:	d90a      	bls.n	80012aa <put_dump+0x7a>
 8001294:	69fb      	ldr	r3, [r7, #28]
 8001296:	693a      	ldr	r2, [r7, #16]
 8001298:	4413      	add	r3, r2
 800129a:	781b      	ldrb	r3, [r3, #0]
 800129c:	2b7e      	cmp	r3, #126	; 0x7e
 800129e:	d804      	bhi.n	80012aa <put_dump+0x7a>
 80012a0:	69fb      	ldr	r3, [r7, #28]
 80012a2:	693a      	ldr	r2, [r7, #16]
 80012a4:	4413      	add	r3, r2
 80012a6:	781b      	ldrb	r3, [r3, #0]
 80012a8:	e000      	b.n	80012ac <put_dump+0x7c>
 80012aa:	232e      	movs	r3, #46	; 0x2e
 80012ac:	4618      	mov	r0, r3
 80012ae:	f7ff fd9d 	bl	8000dec <xputc>
 80012b2:	69fb      	ldr	r3, [r7, #28]
 80012b4:	3301      	adds	r3, #1
 80012b6:	61fb      	str	r3, [r7, #28]
 80012b8:	69fa      	ldr	r2, [r7, #28]
 80012ba:	687b      	ldr	r3, [r7, #4]
 80012bc:	429a      	cmp	r2, r3
 80012be:	dbe3      	blt.n	8001288 <put_dump+0x58>
 80012c0:	e021      	b.n	8001306 <put_dump+0xd6>
 80012c2:	68fb      	ldr	r3, [r7, #12]
 80012c4:	61bb      	str	r3, [r7, #24]
 80012c6:	69bb      	ldr	r3, [r7, #24]
 80012c8:	1c9a      	adds	r2, r3, #2
 80012ca:	61ba      	str	r2, [r7, #24]
 80012cc:	881b      	ldrh	r3, [r3, #0]
 80012ce:	4813      	ldr	r0, [pc, #76]	; (800131c <put_dump+0xec>)
 80012d0:	4619      	mov	r1, r3
 80012d2:	f7ff ff5f 	bl	8001194 <xprintf>
 80012d6:	687b      	ldr	r3, [r7, #4]
 80012d8:	3b01      	subs	r3, #1
 80012da:	607b      	str	r3, [r7, #4]
 80012dc:	687b      	ldr	r3, [r7, #4]
 80012de:	2b00      	cmp	r3, #0
 80012e0:	d1f1      	bne.n	80012c6 <put_dump+0x96>
 80012e2:	e010      	b.n	8001306 <put_dump+0xd6>
 80012e4:	68fb      	ldr	r3, [r7, #12]
 80012e6:	617b      	str	r3, [r7, #20]
 80012e8:	697b      	ldr	r3, [r7, #20]
 80012ea:	1d1a      	adds	r2, r3, #4
 80012ec:	617a      	str	r2, [r7, #20]
 80012ee:	681b      	ldr	r3, [r3, #0]
 80012f0:	480b      	ldr	r0, [pc, #44]	; (8001320 <put_dump+0xf0>)
 80012f2:	4619      	mov	r1, r3
 80012f4:	f7ff ff4e 	bl	8001194 <xprintf>
 80012f8:	687b      	ldr	r3, [r7, #4]
 80012fa:	3b01      	subs	r3, #1
 80012fc:	607b      	str	r3, [r7, #4]
 80012fe:	687b      	ldr	r3, [r7, #4]
 8001300:	2b00      	cmp	r3, #0
 8001302:	d1f1      	bne.n	80012e8 <put_dump+0xb8>
 8001304:	bf00      	nop
 8001306:	200a      	movs	r0, #10
 8001308:	f7ff fd70 	bl	8000dec <xputc>
 800130c:	3720      	adds	r7, #32
 800130e:	46bd      	mov	sp, r7
 8001310:	bd80      	pop	{r7, pc}
 8001312:	bf00      	nop
 8001314:	080030dc 	.word	0x080030dc
 8001318:	080030e4 	.word	0x080030e4
 800131c:	080030ec 	.word	0x080030ec
 8001320:	080030f4 	.word	0x080030f4

08001324 <xgets>:
 8001324:	b580      	push	{r7, lr}
 8001326:	b084      	sub	sp, #16
 8001328:	af00      	add	r7, sp, #0
 800132a:	6078      	str	r0, [r7, #4]
 800132c:	6039      	str	r1, [r7, #0]
 800132e:	4b25      	ldr	r3, [pc, #148]	; (80013c4 <xgets+0xa0>)
 8001330:	681b      	ldr	r3, [r3, #0]
 8001332:	2b00      	cmp	r3, #0
 8001334:	d101      	bne.n	800133a <xgets+0x16>
 8001336:	2300      	movs	r3, #0
 8001338:	e03f      	b.n	80013ba <xgets+0x96>
 800133a:	2300      	movs	r3, #0
 800133c:	60fb      	str	r3, [r7, #12]
 800133e:	4b21      	ldr	r3, [pc, #132]	; (80013c4 <xgets+0xa0>)
 8001340:	681b      	ldr	r3, [r3, #0]
 8001342:	4798      	blx	r3
 8001344:	4603      	mov	r3, r0
 8001346:	60bb      	str	r3, [r7, #8]
 8001348:	68bb      	ldr	r3, [r7, #8]
 800134a:	2b00      	cmp	r3, #0
 800134c:	d101      	bne.n	8001352 <xgets+0x2e>
 800134e:	2300      	movs	r3, #0
 8001350:	e033      	b.n	80013ba <xgets+0x96>
 8001352:	68bb      	ldr	r3, [r7, #8]
 8001354:	2b0d      	cmp	r3, #13
 8001356:	d10a      	bne.n	800136e <xgets+0x4a>
 8001358:	bf00      	nop
 800135a:	68fb      	ldr	r3, [r7, #12]
 800135c:	687a      	ldr	r2, [r7, #4]
 800135e:	4413      	add	r3, r2
 8001360:	2200      	movs	r2, #0
 8001362:	701a      	strb	r2, [r3, #0]
 8001364:	200a      	movs	r0, #10
 8001366:	f7ff fd41 	bl	8000dec <xputc>
 800136a:	2301      	movs	r3, #1
 800136c:	e025      	b.n	80013ba <xgets+0x96>
 800136e:	68bb      	ldr	r3, [r7, #8]
 8001370:	2b08      	cmp	r3, #8
 8001372:	d10b      	bne.n	800138c <xgets+0x68>
 8001374:	68fb      	ldr	r3, [r7, #12]
 8001376:	2b00      	cmp	r3, #0
 8001378:	d008      	beq.n	800138c <xgets+0x68>
 800137a:	68fb      	ldr	r3, [r7, #12]
 800137c:	3b01      	subs	r3, #1
 800137e:	60fb      	str	r3, [r7, #12]
 8001380:	68bb      	ldr	r3, [r7, #8]
 8001382:	b2db      	uxtb	r3, r3
 8001384:	4618      	mov	r0, r3
 8001386:	f7ff fd31 	bl	8000dec <xputc>
 800138a:	e015      	b.n	80013b8 <xgets+0x94>
 800138c:	68bb      	ldr	r3, [r7, #8]
 800138e:	2b1f      	cmp	r3, #31
 8001390:	dd12      	ble.n	80013b8 <xgets+0x94>
 8001392:	683b      	ldr	r3, [r7, #0]
 8001394:	1e5a      	subs	r2, r3, #1
 8001396:	68fb      	ldr	r3, [r7, #12]
 8001398:	429a      	cmp	r2, r3
 800139a:	dd0d      	ble.n	80013b8 <xgets+0x94>
 800139c:	68fb      	ldr	r3, [r7, #12]
 800139e:	1c5a      	adds	r2, r3, #1
 80013a0:	60fa      	str	r2, [r7, #12]
 80013a2:	687a      	ldr	r2, [r7, #4]
 80013a4:	4413      	add	r3, r2
 80013a6:	68ba      	ldr	r2, [r7, #8]
 80013a8:	b2d2      	uxtb	r2, r2
 80013aa:	701a      	strb	r2, [r3, #0]
 80013ac:	68bb      	ldr	r3, [r7, #8]
 80013ae:	b2db      	uxtb	r3, r3
 80013b0:	4618      	mov	r0, r3
 80013b2:	f7ff fd1b 	bl	8000dec <xputc>
 80013b6:	e7c2      	b.n	800133e <xgets+0x1a>
 80013b8:	e7c1      	b.n	800133e <xgets+0x1a>
 80013ba:	4618      	mov	r0, r3
 80013bc:	3710      	adds	r7, #16
 80013be:	46bd      	mov	sp, r7
 80013c0:	bd80      	pop	{r7, pc}
 80013c2:	bf00      	nop
 80013c4:	20000a54 	.word	0x20000a54

080013c8 <xfgets>:
 80013c8:	b580      	push	{r7, lr}
 80013ca:	b086      	sub	sp, #24
 80013cc:	af00      	add	r7, sp, #0
 80013ce:	60f8      	str	r0, [r7, #12]
 80013d0:	60b9      	str	r1, [r7, #8]
 80013d2:	607a      	str	r2, [r7, #4]
 80013d4:	4b09      	ldr	r3, [pc, #36]	; (80013fc <xfgets+0x34>)
 80013d6:	681b      	ldr	r3, [r3, #0]
 80013d8:	617b      	str	r3, [r7, #20]
 80013da:	4b08      	ldr	r3, [pc, #32]	; (80013fc <xfgets+0x34>)
 80013dc:	68fa      	ldr	r2, [r7, #12]
 80013de:	601a      	str	r2, [r3, #0]
 80013e0:	68b8      	ldr	r0, [r7, #8]
 80013e2:	6879      	ldr	r1, [r7, #4]
 80013e4:	f7ff ff9e 	bl	8001324 <xgets>
 80013e8:	6138      	str	r0, [r7, #16]
 80013ea:	4b04      	ldr	r3, [pc, #16]	; (80013fc <xfgets+0x34>)
 80013ec:	697a      	ldr	r2, [r7, #20]
 80013ee:	601a      	str	r2, [r3, #0]
 80013f0:	693b      	ldr	r3, [r7, #16]
 80013f2:	4618      	mov	r0, r3
 80013f4:	3718      	adds	r7, #24
 80013f6:	46bd      	mov	sp, r7
 80013f8:	bd80      	pop	{r7, pc}
 80013fa:	bf00      	nop
 80013fc:	20000a54 	.word	0x20000a54

08001400 <xatoi>:
 8001400:	b480      	push	{r7}
 8001402:	b085      	sub	sp, #20
 8001404:	af00      	add	r7, sp, #0
 8001406:	6078      	str	r0, [r7, #4]
 8001408:	6039      	str	r1, [r7, #0]
 800140a:	2300      	movs	r3, #0
 800140c:	727b      	strb	r3, [r7, #9]
 800140e:	683b      	ldr	r3, [r7, #0]
 8001410:	2200      	movs	r2, #0
 8001412:	601a      	str	r2, [r3, #0]
 8001414:	e004      	b.n	8001420 <xatoi+0x20>
 8001416:	687b      	ldr	r3, [r7, #4]
 8001418:	681b      	ldr	r3, [r3, #0]
 800141a:	1c5a      	adds	r2, r3, #1
 800141c:	687b      	ldr	r3, [r7, #4]
 800141e:	601a      	str	r2, [r3, #0]
 8001420:	687b      	ldr	r3, [r7, #4]
 8001422:	681b      	ldr	r3, [r3, #0]
 8001424:	781b      	ldrb	r3, [r3, #0]
 8001426:	72fb      	strb	r3, [r7, #11]
 8001428:	7afb      	ldrb	r3, [r7, #11]
 800142a:	2b20      	cmp	r3, #32
 800142c:	d0f3      	beq.n	8001416 <xatoi+0x16>
 800142e:	7afb      	ldrb	r3, [r7, #11]
 8001430:	2b2d      	cmp	r3, #45	; 0x2d
 8001432:	d10a      	bne.n	800144a <xatoi+0x4a>
 8001434:	2301      	movs	r3, #1
 8001436:	727b      	strb	r3, [r7, #9]
 8001438:	687b      	ldr	r3, [r7, #4]
 800143a:	681b      	ldr	r3, [r3, #0]
 800143c:	1c5a      	adds	r2, r3, #1
 800143e:	687b      	ldr	r3, [r7, #4]
 8001440:	601a      	str	r2, [r3, #0]
 8001442:	687b      	ldr	r3, [r7, #4]
 8001444:	681b      	ldr	r3, [r3, #0]
 8001446:	781b      	ldrb	r3, [r3, #0]
 8001448:	72fb      	strb	r3, [r7, #11]
 800144a:	7afb      	ldrb	r3, [r7, #11]
 800144c:	2b30      	cmp	r3, #48	; 0x30
 800144e:	d136      	bne.n	80014be <xatoi+0xbe>
 8001450:	687b      	ldr	r3, [r7, #4]
 8001452:	681b      	ldr	r3, [r3, #0]
 8001454:	1c5a      	adds	r2, r3, #1
 8001456:	687b      	ldr	r3, [r7, #4]
 8001458:	601a      	str	r2, [r3, #0]
 800145a:	687b      	ldr	r3, [r7, #4]
 800145c:	681b      	ldr	r3, [r3, #0]
 800145e:	781b      	ldrb	r3, [r3, #0]
 8001460:	72fb      	strb	r3, [r7, #11]
 8001462:	7afb      	ldrb	r3, [r7, #11]
 8001464:	2b62      	cmp	r3, #98	; 0x62
 8001466:	d00d      	beq.n	8001484 <xatoi+0x84>
 8001468:	2b78      	cmp	r3, #120	; 0x78
 800146a:	d117      	bne.n	800149c <xatoi+0x9c>
 800146c:	2310      	movs	r3, #16
 800146e:	72bb      	strb	r3, [r7, #10]
 8001470:	687b      	ldr	r3, [r7, #4]
 8001472:	681b      	ldr	r3, [r3, #0]
 8001474:	1c5a      	adds	r2, r3, #1
 8001476:	687b      	ldr	r3, [r7, #4]
 8001478:	601a      	str	r2, [r3, #0]
 800147a:	687b      	ldr	r3, [r7, #4]
 800147c:	681b      	ldr	r3, [r3, #0]
 800147e:	781b      	ldrb	r3, [r3, #0]
 8001480:	72fb      	strb	r3, [r7, #11]
 8001482:	e01b      	b.n	80014bc <xatoi+0xbc>
 8001484:	2302      	movs	r3, #2
 8001486:	72bb      	strb	r3, [r7, #10]
 8001488:	687b      	ldr	r3, [r7, #4]
 800148a:	681b      	ldr	r3, [r3, #0]
 800148c:	1c5a      	adds	r2, r3, #1
 800148e:	687b      	ldr	r3, [r7, #4]
 8001490:	601a      	str	r2, [r3, #0]
 8001492:	687b      	ldr	r3, [r7, #4]
 8001494:	681b      	ldr	r3, [r3, #0]
 8001496:	781b      	ldrb	r3, [r3, #0]
 8001498:	72fb      	strb	r3, [r7, #11]
 800149a:	e00f      	b.n	80014bc <xatoi+0xbc>
 800149c:	7afb      	ldrb	r3, [r7, #11]
 800149e:	2b20      	cmp	r3, #32
 80014a0:	d801      	bhi.n	80014a6 <xatoi+0xa6>
 80014a2:	2301      	movs	r3, #1
 80014a4:	e04f      	b.n	8001546 <xatoi+0x146>
 80014a6:	7afb      	ldrb	r3, [r7, #11]
 80014a8:	2b2f      	cmp	r3, #47	; 0x2f
 80014aa:	d902      	bls.n	80014b2 <xatoi+0xb2>
 80014ac:	7afb      	ldrb	r3, [r7, #11]
 80014ae:	2b39      	cmp	r3, #57	; 0x39
 80014b0:	d901      	bls.n	80014b6 <xatoi+0xb6>
 80014b2:	2300      	movs	r3, #0
 80014b4:	e047      	b.n	8001546 <xatoi+0x146>
 80014b6:	2308      	movs	r3, #8
 80014b8:	72bb      	strb	r3, [r7, #10]
 80014ba:	e00a      	b.n	80014d2 <xatoi+0xd2>
 80014bc:	e009      	b.n	80014d2 <xatoi+0xd2>
 80014be:	7afb      	ldrb	r3, [r7, #11]
 80014c0:	2b2f      	cmp	r3, #47	; 0x2f
 80014c2:	d902      	bls.n	80014ca <xatoi+0xca>
 80014c4:	7afb      	ldrb	r3, [r7, #11]
 80014c6:	2b39      	cmp	r3, #57	; 0x39
 80014c8:	d901      	bls.n	80014ce <xatoi+0xce>
 80014ca:	2300      	movs	r3, #0
 80014cc:	e03b      	b.n	8001546 <xatoi+0x146>
 80014ce:	230a      	movs	r3, #10
 80014d0:	72bb      	strb	r3, [r7, #10]
 80014d2:	2300      	movs	r3, #0
 80014d4:	60fb      	str	r3, [r7, #12]
 80014d6:	e029      	b.n	800152c <xatoi+0x12c>
 80014d8:	7afb      	ldrb	r3, [r7, #11]
 80014da:	2b60      	cmp	r3, #96	; 0x60
 80014dc:	d902      	bls.n	80014e4 <xatoi+0xe4>
 80014de:	7afb      	ldrb	r3, [r7, #11]
 80014e0:	3b20      	subs	r3, #32
 80014e2:	72fb      	strb	r3, [r7, #11]
 80014e4:	7afb      	ldrb	r3, [r7, #11]
 80014e6:	3b30      	subs	r3, #48	; 0x30
 80014e8:	72fb      	strb	r3, [r7, #11]
 80014ea:	7afb      	ldrb	r3, [r7, #11]
 80014ec:	2b10      	cmp	r3, #16
 80014ee:	d907      	bls.n	8001500 <xatoi+0x100>
 80014f0:	7afb      	ldrb	r3, [r7, #11]
 80014f2:	3b07      	subs	r3, #7
 80014f4:	72fb      	strb	r3, [r7, #11]
 80014f6:	7afb      	ldrb	r3, [r7, #11]
 80014f8:	2b09      	cmp	r3, #9
 80014fa:	d801      	bhi.n	8001500 <xatoi+0x100>
 80014fc:	2300      	movs	r3, #0
 80014fe:	e022      	b.n	8001546 <xatoi+0x146>
 8001500:	7afa      	ldrb	r2, [r7, #11]
 8001502:	7abb      	ldrb	r3, [r7, #10]
 8001504:	429a      	cmp	r2, r3
 8001506:	d301      	bcc.n	800150c <xatoi+0x10c>
 8001508:	2300      	movs	r3, #0
 800150a:	e01c      	b.n	8001546 <xatoi+0x146>
 800150c:	7abb      	ldrb	r3, [r7, #10]
 800150e:	68fa      	ldr	r2, [r7, #12]
 8001510:	fb02 f203 	mul.w	r2, r2, r3
 8001514:	7afb      	ldrb	r3, [r7, #11]
 8001516:	4413      	add	r3, r2
 8001518:	60fb      	str	r3, [r7, #12]
 800151a:	687b      	ldr	r3, [r7, #4]
 800151c:	681b      	ldr	r3, [r3, #0]
 800151e:	1c5a      	adds	r2, r3, #1
 8001520:	687b      	ldr	r3, [r7, #4]
 8001522:	601a      	str	r2, [r3, #0]
 8001524:	687b      	ldr	r3, [r7, #4]
 8001526:	681b      	ldr	r3, [r3, #0]
 8001528:	781b      	ldrb	r3, [r3, #0]
 800152a:	72fb      	strb	r3, [r7, #11]
 800152c:	7afb      	ldrb	r3, [r7, #11]
 800152e:	2b20      	cmp	r3, #32
 8001530:	d8d2      	bhi.n	80014d8 <xatoi+0xd8>
 8001532:	7a7b      	ldrb	r3, [r7, #9]
 8001534:	2b00      	cmp	r3, #0
 8001536:	d002      	beq.n	800153e <xatoi+0x13e>
 8001538:	68fb      	ldr	r3, [r7, #12]
 800153a:	425b      	negs	r3, r3
 800153c:	60fb      	str	r3, [r7, #12]
 800153e:	68fa      	ldr	r2, [r7, #12]
 8001540:	683b      	ldr	r3, [r7, #0]
 8001542:	601a      	str	r2, [r3, #0]
 8001544:	2301      	movs	r3, #1
 8001546:	4618      	mov	r0, r3
 8001548:	3714      	adds	r7, #20
 800154a:	46bd      	mov	sp, r7
 800154c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001550:	4770      	bx	lr
 8001552:	bf00      	nop

08001554 <NVIC_EnableIRQ>:
 8001554:	b480      	push	{r7}
 8001556:	b083      	sub	sp, #12
 8001558:	af00      	add	r7, sp, #0
 800155a:	4603      	mov	r3, r0
 800155c:	71fb      	strb	r3, [r7, #7]
 800155e:	4b08      	ldr	r3, [pc, #32]	; (8001580 <NVIC_EnableIRQ+0x2c>)
 8001560:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8001564:	0952      	lsrs	r2, r2, #5
 8001566:	79f9      	ldrb	r1, [r7, #7]
 8001568:	f001 011f 	and.w	r1, r1, #31
 800156c:	2001      	movs	r0, #1
 800156e:	fa00 f101 	lsl.w	r1, r0, r1
 8001572:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8001576:	370c      	adds	r7, #12
 8001578:	46bd      	mov	sp, r7
 800157a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800157e:	4770      	bx	lr
 8001580:	e000e100 	.word	0xe000e100

08001584 <adc_common_init>:
 8001584:	b480      	push	{r7}
 8001586:	af00      	add	r7, sp, #0
 8001588:	4b07      	ldr	r3, [pc, #28]	; (80015a8 <adc_common_init+0x24>)
 800158a:	4a07      	ldr	r2, [pc, #28]	; (80015a8 <adc_common_init+0x24>)
 800158c:	6852      	ldr	r2, [r2, #4]
 800158e:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8001592:	605a      	str	r2, [r3, #4]
 8001594:	4b04      	ldr	r3, [pc, #16]	; (80015a8 <adc_common_init+0x24>)
 8001596:	4a04      	ldr	r2, [pc, #16]	; (80015a8 <adc_common_init+0x24>)
 8001598:	6852      	ldr	r2, [r2, #4]
 800159a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800159e:	605a      	str	r2, [r3, #4]
 80015a0:	46bd      	mov	sp, r7
 80015a2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80015a6:	4770      	bx	lr
 80015a8:	40012300 	.word	0x40012300

080015ac <adc1_init>:
 80015ac:	b480      	push	{r7}
 80015ae:	af00      	add	r7, sp, #0
 80015b0:	4b29      	ldr	r3, [pc, #164]	; (8001658 <adc1_init+0xac>)
 80015b2:	4a29      	ldr	r2, [pc, #164]	; (8001658 <adc1_init+0xac>)
 80015b4:	6c52      	ldr	r2, [r2, #68]	; 0x44
 80015b6:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80015ba:	645a      	str	r2, [r3, #68]	; 0x44
 80015bc:	4b26      	ldr	r3, [pc, #152]	; (8001658 <adc1_init+0xac>)
 80015be:	4a26      	ldr	r2, [pc, #152]	; (8001658 <adc1_init+0xac>)
 80015c0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80015c2:	f042 0201 	orr.w	r2, r2, #1
 80015c6:	631a      	str	r2, [r3, #48]	; 0x30
 80015c8:	4b24      	ldr	r3, [pc, #144]	; (800165c <adc1_init+0xb0>)
 80015ca:	4a24      	ldr	r2, [pc, #144]	; (800165c <adc1_init+0xb0>)
 80015cc:	6812      	ldr	r2, [r2, #0]
 80015ce:	f022 0203 	bic.w	r2, r2, #3
 80015d2:	601a      	str	r2, [r3, #0]
 80015d4:	4b21      	ldr	r3, [pc, #132]	; (800165c <adc1_init+0xb0>)
 80015d6:	4a21      	ldr	r2, [pc, #132]	; (800165c <adc1_init+0xb0>)
 80015d8:	6812      	ldr	r2, [r2, #0]
 80015da:	f042 0203 	orr.w	r2, r2, #3
 80015de:	601a      	str	r2, [r3, #0]
 80015e0:	4b1f      	ldr	r3, [pc, #124]	; (8001660 <adc1_init+0xb4>)
 80015e2:	4a1f      	ldr	r2, [pc, #124]	; (8001660 <adc1_init+0xb4>)
 80015e4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80015e6:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80015ea:	62da      	str	r2, [r3, #44]	; 0x2c
 80015ec:	4b1c      	ldr	r3, [pc, #112]	; (8001660 <adc1_init+0xb4>)
 80015ee:	4a1c      	ldr	r2, [pc, #112]	; (8001660 <adc1_init+0xb4>)
 80015f0:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80015f2:	62da      	str	r2, [r3, #44]	; 0x2c
 80015f4:	4b1a      	ldr	r3, [pc, #104]	; (8001660 <adc1_init+0xb4>)
 80015f6:	4a1a      	ldr	r2, [pc, #104]	; (8001660 <adc1_init+0xb4>)
 80015f8:	6852      	ldr	r2, [r2, #4]
 80015fa:	f042 0220 	orr.w	r2, r2, #32
 80015fe:	605a      	str	r2, [r3, #4]
 8001600:	4b17      	ldr	r3, [pc, #92]	; (8001660 <adc1_init+0xb4>)
 8001602:	4a17      	ldr	r2, [pc, #92]	; (8001660 <adc1_init+0xb4>)
 8001604:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001606:	f022 021f 	bic.w	r2, r2, #31
 800160a:	635a      	str	r2, [r3, #52]	; 0x34
 800160c:	4b14      	ldr	r3, [pc, #80]	; (8001660 <adc1_init+0xb4>)
 800160e:	4a14      	ldr	r2, [pc, #80]	; (8001660 <adc1_init+0xb4>)
 8001610:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001612:	635a      	str	r2, [r3, #52]	; 0x34
 8001614:	4b12      	ldr	r3, [pc, #72]	; (8001660 <adc1_init+0xb4>)
 8001616:	4a12      	ldr	r2, [pc, #72]	; (8001660 <adc1_init+0xb4>)
 8001618:	6892      	ldr	r2, [r2, #8]
 800161a:	f022 5240 	bic.w	r2, r2, #805306368	; 0x30000000
 800161e:	609a      	str	r2, [r3, #8]
 8001620:	4b0f      	ldr	r3, [pc, #60]	; (8001660 <adc1_init+0xb4>)
 8001622:	4a0f      	ldr	r2, [pc, #60]	; (8001660 <adc1_init+0xb4>)
 8001624:	6892      	ldr	r2, [r2, #8]
 8001626:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 800162a:	609a      	str	r2, [r3, #8]
 800162c:	4b0c      	ldr	r3, [pc, #48]	; (8001660 <adc1_init+0xb4>)
 800162e:	4a0c      	ldr	r2, [pc, #48]	; (8001660 <adc1_init+0xb4>)
 8001630:	6892      	ldr	r2, [r2, #8]
 8001632:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 8001636:	609a      	str	r2, [r3, #8]
 8001638:	4b09      	ldr	r3, [pc, #36]	; (8001660 <adc1_init+0xb4>)
 800163a:	4a09      	ldr	r2, [pc, #36]	; (8001660 <adc1_init+0xb4>)
 800163c:	6892      	ldr	r2, [r2, #8]
 800163e:	f042 62a0 	orr.w	r2, r2, #83886080	; 0x5000000
 8001642:	609a      	str	r2, [r3, #8]
 8001644:	4b06      	ldr	r3, [pc, #24]	; (8001660 <adc1_init+0xb4>)
 8001646:	4a06      	ldr	r2, [pc, #24]	; (8001660 <adc1_init+0xb4>)
 8001648:	6892      	ldr	r2, [r2, #8]
 800164a:	f042 0201 	orr.w	r2, r2, #1
 800164e:	609a      	str	r2, [r3, #8]
 8001650:	46bd      	mov	sp, r7
 8001652:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001656:	4770      	bx	lr
 8001658:	40023800 	.word	0x40023800
 800165c:	40020000 	.word	0x40020000
 8001660:	40012000 	.word	0x40012000

08001664 <adc2_init>:
 8001664:	b480      	push	{r7}
 8001666:	af00      	add	r7, sp, #0
 8001668:	4b1b      	ldr	r3, [pc, #108]	; (80016d8 <adc2_init+0x74>)
 800166a:	4a1b      	ldr	r2, [pc, #108]	; (80016d8 <adc2_init+0x74>)
 800166c:	6c52      	ldr	r2, [r2, #68]	; 0x44
 800166e:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8001672:	645a      	str	r2, [r3, #68]	; 0x44
 8001674:	4b18      	ldr	r3, [pc, #96]	; (80016d8 <adc2_init+0x74>)
 8001676:	4a18      	ldr	r2, [pc, #96]	; (80016d8 <adc2_init+0x74>)
 8001678:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800167a:	f042 0201 	orr.w	r2, r2, #1
 800167e:	631a      	str	r2, [r3, #48]	; 0x30
 8001680:	4b16      	ldr	r3, [pc, #88]	; (80016dc <adc2_init+0x78>)
 8001682:	4a16      	ldr	r2, [pc, #88]	; (80016dc <adc2_init+0x78>)
 8001684:	6812      	ldr	r2, [r2, #0]
 8001686:	f022 020c 	bic.w	r2, r2, #12
 800168a:	601a      	str	r2, [r3, #0]
 800168c:	4b13      	ldr	r3, [pc, #76]	; (80016dc <adc2_init+0x78>)
 800168e:	4a13      	ldr	r2, [pc, #76]	; (80016dc <adc2_init+0x78>)
 8001690:	6812      	ldr	r2, [r2, #0]
 8001692:	f042 020c 	orr.w	r2, r2, #12
 8001696:	601a      	str	r2, [r3, #0]
 8001698:	4b11      	ldr	r3, [pc, #68]	; (80016e0 <adc2_init+0x7c>)
 800169a:	4a11      	ldr	r2, [pc, #68]	; (80016e0 <adc2_init+0x7c>)
 800169c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800169e:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80016a2:	62da      	str	r2, [r3, #44]	; 0x2c
 80016a4:	4b0e      	ldr	r3, [pc, #56]	; (80016e0 <adc2_init+0x7c>)
 80016a6:	4a0e      	ldr	r2, [pc, #56]	; (80016e0 <adc2_init+0x7c>)
 80016a8:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80016aa:	62da      	str	r2, [r3, #44]	; 0x2c
 80016ac:	4b0c      	ldr	r3, [pc, #48]	; (80016e0 <adc2_init+0x7c>)
 80016ae:	4a0c      	ldr	r2, [pc, #48]	; (80016e0 <adc2_init+0x7c>)
 80016b0:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80016b2:	f022 021f 	bic.w	r2, r2, #31
 80016b6:	635a      	str	r2, [r3, #52]	; 0x34
 80016b8:	4b09      	ldr	r3, [pc, #36]	; (80016e0 <adc2_init+0x7c>)
 80016ba:	4a09      	ldr	r2, [pc, #36]	; (80016e0 <adc2_init+0x7c>)
 80016bc:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80016be:	f042 0201 	orr.w	r2, r2, #1
 80016c2:	635a      	str	r2, [r3, #52]	; 0x34
 80016c4:	4b06      	ldr	r3, [pc, #24]	; (80016e0 <adc2_init+0x7c>)
 80016c6:	4a06      	ldr	r2, [pc, #24]	; (80016e0 <adc2_init+0x7c>)
 80016c8:	6892      	ldr	r2, [r2, #8]
 80016ca:	f042 0201 	orr.w	r2, r2, #1
 80016ce:	609a      	str	r2, [r3, #8]
 80016d0:	46bd      	mov	sp, r7
 80016d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80016d6:	4770      	bx	lr
 80016d8:	40023800 	.word	0x40023800
 80016dc:	40020000 	.word	0x40020000
 80016e0:	40012100 	.word	0x40012100

080016e4 <adc3_init>:
 80016e4:	b480      	push	{r7}
 80016e6:	af00      	add	r7, sp, #0
 80016e8:	4b1b      	ldr	r3, [pc, #108]	; (8001758 <adc3_init+0x74>)
 80016ea:	4a1b      	ldr	r2, [pc, #108]	; (8001758 <adc3_init+0x74>)
 80016ec:	6c52      	ldr	r2, [r2, #68]	; 0x44
 80016ee:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80016f2:	645a      	str	r2, [r3, #68]	; 0x44
 80016f4:	4b18      	ldr	r3, [pc, #96]	; (8001758 <adc3_init+0x74>)
 80016f6:	4a18      	ldr	r2, [pc, #96]	; (8001758 <adc3_init+0x74>)
 80016f8:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80016fa:	f042 0201 	orr.w	r2, r2, #1
 80016fe:	631a      	str	r2, [r3, #48]	; 0x30
 8001700:	4b16      	ldr	r3, [pc, #88]	; (800175c <adc3_init+0x78>)
 8001702:	4a16      	ldr	r2, [pc, #88]	; (800175c <adc3_init+0x78>)
 8001704:	6812      	ldr	r2, [r2, #0]
 8001706:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 800170a:	601a      	str	r2, [r3, #0]
 800170c:	4b13      	ldr	r3, [pc, #76]	; (800175c <adc3_init+0x78>)
 800170e:	4a13      	ldr	r2, [pc, #76]	; (800175c <adc3_init+0x78>)
 8001710:	6812      	ldr	r2, [r2, #0]
 8001712:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 8001716:	601a      	str	r2, [r3, #0]
 8001718:	4b11      	ldr	r3, [pc, #68]	; (8001760 <adc3_init+0x7c>)
 800171a:	4a11      	ldr	r2, [pc, #68]	; (8001760 <adc3_init+0x7c>)
 800171c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800171e:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8001722:	62da      	str	r2, [r3, #44]	; 0x2c
 8001724:	4b0e      	ldr	r3, [pc, #56]	; (8001760 <adc3_init+0x7c>)
 8001726:	4a0e      	ldr	r2, [pc, #56]	; (8001760 <adc3_init+0x7c>)
 8001728:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800172a:	62da      	str	r2, [r3, #44]	; 0x2c
 800172c:	4b0c      	ldr	r3, [pc, #48]	; (8001760 <adc3_init+0x7c>)
 800172e:	4a0c      	ldr	r2, [pc, #48]	; (8001760 <adc3_init+0x7c>)
 8001730:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001732:	f022 021f 	bic.w	r2, r2, #31
 8001736:	635a      	str	r2, [r3, #52]	; 0x34
 8001738:	4b09      	ldr	r3, [pc, #36]	; (8001760 <adc3_init+0x7c>)
 800173a:	4a09      	ldr	r2, [pc, #36]	; (8001760 <adc3_init+0x7c>)
 800173c:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800173e:	f042 0203 	orr.w	r2, r2, #3
 8001742:	635a      	str	r2, [r3, #52]	; 0x34
 8001744:	4b06      	ldr	r3, [pc, #24]	; (8001760 <adc3_init+0x7c>)
 8001746:	4a06      	ldr	r2, [pc, #24]	; (8001760 <adc3_init+0x7c>)
 8001748:	6892      	ldr	r2, [r2, #8]
 800174a:	f042 0201 	orr.w	r2, r2, #1
 800174e:	609a      	str	r2, [r3, #8]
 8001750:	46bd      	mov	sp, r7
 8001752:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001756:	4770      	bx	lr
 8001758:	40023800 	.word	0x40023800
 800175c:	40020000 	.word	0x40020000
 8001760:	40012200 	.word	0x40012200

08001764 <adc_set_trigger>:
 8001764:	b480      	push	{r7}
 8001766:	af00      	add	r7, sp, #0
 8001768:	4b2d      	ldr	r3, [pc, #180]	; (8001820 <adc_set_trigger+0xbc>)
 800176a:	4a2d      	ldr	r2, [pc, #180]	; (8001820 <adc_set_trigger+0xbc>)
 800176c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800176e:	f042 0201 	orr.w	r2, r2, #1
 8001772:	641a      	str	r2, [r3, #64]	; 0x40
 8001774:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001778:	2229      	movs	r2, #41	; 0x29
 800177a:	851a      	strh	r2, [r3, #40]	; 0x28
 800177c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001780:	2203      	movs	r2, #3
 8001782:	62da      	str	r2, [r3, #44]	; 0x2c
 8001784:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001788:	2202      	movs	r2, #2
 800178a:	641a      	str	r2, [r3, #64]	; 0x40
 800178c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001790:	2200      	movs	r2, #0
 8001792:	839a      	strh	r2, [r3, #28]
 8001794:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001798:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800179c:	8b92      	ldrh	r2, [r2, #28]
 800179e:	b292      	uxth	r2, r2
 80017a0:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 80017a4:	b292      	uxth	r2, r2
 80017a6:	839a      	strh	r2, [r3, #28]
 80017a8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80017ac:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80017b0:	8c12      	ldrh	r2, [r2, #32]
 80017b2:	b292      	uxth	r2, r2
 80017b4:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 80017b8:	b292      	uxth	r2, r2
 80017ba:	841a      	strh	r2, [r3, #32]
 80017bc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80017c0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80017c4:	8812      	ldrh	r2, [r2, #0]
 80017c6:	b292      	uxth	r2, r2
 80017c8:	f042 0201 	orr.w	r2, r2, #1
 80017cc:	b292      	uxth	r2, r2
 80017ce:	801a      	strh	r2, [r3, #0]
 80017d0:	4b13      	ldr	r3, [pc, #76]	; (8001820 <adc_set_trigger+0xbc>)
 80017d2:	4a13      	ldr	r2, [pc, #76]	; (8001820 <adc_set_trigger+0xbc>)
 80017d4:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80017d6:	f042 0202 	orr.w	r2, r2, #2
 80017da:	631a      	str	r2, [r3, #48]	; 0x30
 80017dc:	4b11      	ldr	r3, [pc, #68]	; (8001824 <adc_set_trigger+0xc0>)
 80017de:	4a11      	ldr	r2, [pc, #68]	; (8001824 <adc_set_trigger+0xc0>)
 80017e0:	6812      	ldr	r2, [r2, #0]
 80017e2:	f422 0240 	bic.w	r2, r2, #12582912	; 0xc00000
 80017e6:	601a      	str	r2, [r3, #0]
 80017e8:	4b0e      	ldr	r3, [pc, #56]	; (8001824 <adc_set_trigger+0xc0>)
 80017ea:	4a0e      	ldr	r2, [pc, #56]	; (8001824 <adc_set_trigger+0xc0>)
 80017ec:	6812      	ldr	r2, [r2, #0]
 80017ee:	f442 0200 	orr.w	r2, r2, #8388608	; 0x800000
 80017f2:	601a      	str	r2, [r3, #0]
 80017f4:	4b0b      	ldr	r3, [pc, #44]	; (8001824 <adc_set_trigger+0xc0>)
 80017f6:	4a0b      	ldr	r2, [pc, #44]	; (8001824 <adc_set_trigger+0xc0>)
 80017f8:	6892      	ldr	r2, [r2, #8]
 80017fa:	f442 0240 	orr.w	r2, r2, #12582912	; 0xc00000
 80017fe:	609a      	str	r2, [r3, #8]
 8001800:	4b08      	ldr	r3, [pc, #32]	; (8001824 <adc_set_trigger+0xc0>)
 8001802:	4a08      	ldr	r2, [pc, #32]	; (8001824 <adc_set_trigger+0xc0>)
 8001804:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001806:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 800180a:	625a      	str	r2, [r3, #36]	; 0x24
 800180c:	4b05      	ldr	r3, [pc, #20]	; (8001824 <adc_set_trigger+0xc0>)
 800180e:	4a05      	ldr	r2, [pc, #20]	; (8001824 <adc_set_trigger+0xc0>)
 8001810:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001812:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8001816:	625a      	str	r2, [r3, #36]	; 0x24
 8001818:	46bd      	mov	sp, r7
 800181a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800181e:	4770      	bx	lr
 8001820:	40023800 	.word	0x40023800
 8001824:	40020400 	.word	0x40020400

08001828 <adc_init>:
 8001828:	b580      	push	{r7, lr}
 800182a:	af00      	add	r7, sp, #0
 800182c:	f7ff feaa 	bl	8001584 <adc_common_init>
 8001830:	f7ff febc 	bl	80015ac <adc1_init>
 8001834:	f7ff ff16 	bl	8001664 <adc2_init>
 8001838:	f7ff ff54 	bl	80016e4 <adc3_init>
 800183c:	f7ff ff92 	bl	8001764 <adc_set_trigger>
 8001840:	4b07      	ldr	r3, [pc, #28]	; (8001860 <adc_init+0x38>)
 8001842:	4a07      	ldr	r2, [pc, #28]	; (8001860 <adc_init+0x38>)
 8001844:	6852      	ldr	r2, [r2, #4]
 8001846:	f022 021f 	bic.w	r2, r2, #31
 800184a:	605a      	str	r2, [r3, #4]
 800184c:	4b04      	ldr	r3, [pc, #16]	; (8001860 <adc_init+0x38>)
 800184e:	4a04      	ldr	r2, [pc, #16]	; (8001860 <adc_init+0x38>)
 8001850:	6852      	ldr	r2, [r2, #4]
 8001852:	f042 0216 	orr.w	r2, r2, #22
 8001856:	605a      	str	r2, [r3, #4]
 8001858:	2012      	movs	r0, #18
 800185a:	f7ff fe7b 	bl	8001554 <NVIC_EnableIRQ>
 800185e:	bd80      	pop	{r7, pc}
 8001860:	40012300 	.word	0x40012300

08001864 <TIM2_IRQHandler>:
 8001864:	b480      	push	{r7}
 8001866:	af00      	add	r7, sp, #0
 8001868:	46bd      	mov	sp, r7
 800186a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800186e:	4770      	bx	lr

08001870 <offset_pwm_init>:
 8001870:	b480      	push	{r7}
 8001872:	af00      	add	r7, sp, #0
 8001874:	4b31      	ldr	r3, [pc, #196]	; (800193c <offset_pwm_init+0xcc>)
 8001876:	4a31      	ldr	r2, [pc, #196]	; (800193c <offset_pwm_init+0xcc>)
 8001878:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800187a:	f042 0204 	orr.w	r2, r2, #4
 800187e:	641a      	str	r2, [r3, #64]	; 0x40
 8001880:	4b2f      	ldr	r3, [pc, #188]	; (8001940 <offset_pwm_init+0xd0>)
 8001882:	2203      	movs	r2, #3
 8001884:	851a      	strh	r2, [r3, #40]	; 0x28
 8001886:	4b2e      	ldr	r3, [pc, #184]	; (8001940 <offset_pwm_init+0xd0>)
 8001888:	2263      	movs	r2, #99	; 0x63
 800188a:	62da      	str	r2, [r3, #44]	; 0x2c
 800188c:	4b2c      	ldr	r3, [pc, #176]	; (8001940 <offset_pwm_init+0xd0>)
 800188e:	2232      	movs	r2, #50	; 0x32
 8001890:	635a      	str	r2, [r3, #52]	; 0x34
 8001892:	4b2b      	ldr	r3, [pc, #172]	; (8001940 <offset_pwm_init+0xd0>)
 8001894:	2232      	movs	r2, #50	; 0x32
 8001896:	639a      	str	r2, [r3, #56]	; 0x38
 8001898:	4b29      	ldr	r3, [pc, #164]	; (8001940 <offset_pwm_init+0xd0>)
 800189a:	2200      	movs	r2, #0
 800189c:	831a      	strh	r2, [r3, #24]
 800189e:	4a28      	ldr	r2, [pc, #160]	; (8001940 <offset_pwm_init+0xd0>)
 80018a0:	4b27      	ldr	r3, [pc, #156]	; (8001940 <offset_pwm_init+0xd0>)
 80018a2:	8b1b      	ldrh	r3, [r3, #24]
 80018a4:	b29b      	uxth	r3, r3
 80018a6:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 80018aa:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 80018ae:	b29b      	uxth	r3, r3
 80018b0:	8313      	strh	r3, [r2, #24]
 80018b2:	4b23      	ldr	r3, [pc, #140]	; (8001940 <offset_pwm_init+0xd0>)
 80018b4:	4a22      	ldr	r2, [pc, #136]	; (8001940 <offset_pwm_init+0xd0>)
 80018b6:	8c12      	ldrh	r2, [r2, #32]
 80018b8:	b292      	uxth	r2, r2
 80018ba:	f042 0211 	orr.w	r2, r2, #17
 80018be:	b292      	uxth	r2, r2
 80018c0:	841a      	strh	r2, [r3, #32]
 80018c2:	4b1f      	ldr	r3, [pc, #124]	; (8001940 <offset_pwm_init+0xd0>)
 80018c4:	4a1e      	ldr	r2, [pc, #120]	; (8001940 <offset_pwm_init+0xd0>)
 80018c6:	8812      	ldrh	r2, [r2, #0]
 80018c8:	b292      	uxth	r2, r2
 80018ca:	f042 0201 	orr.w	r2, r2, #1
 80018ce:	b292      	uxth	r2, r2
 80018d0:	801a      	strh	r2, [r3, #0]
 80018d2:	4b1a      	ldr	r3, [pc, #104]	; (800193c <offset_pwm_init+0xcc>)
 80018d4:	4a19      	ldr	r2, [pc, #100]	; (800193c <offset_pwm_init+0xcc>)
 80018d6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80018d8:	f042 0208 	orr.w	r2, r2, #8
 80018dc:	631a      	str	r2, [r3, #48]	; 0x30
 80018de:	4b19      	ldr	r3, [pc, #100]	; (8001944 <offset_pwm_init+0xd4>)
 80018e0:	4a18      	ldr	r2, [pc, #96]	; (8001944 <offset_pwm_init+0xd4>)
 80018e2:	6812      	ldr	r2, [r2, #0]
 80018e4:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80018e8:	601a      	str	r2, [r3, #0]
 80018ea:	4b16      	ldr	r3, [pc, #88]	; (8001944 <offset_pwm_init+0xd4>)
 80018ec:	4a15      	ldr	r2, [pc, #84]	; (8001944 <offset_pwm_init+0xd4>)
 80018ee:	6812      	ldr	r2, [r2, #0]
 80018f0:	f042 6220 	orr.w	r2, r2, #167772160	; 0xa000000
 80018f4:	601a      	str	r2, [r3, #0]
 80018f6:	4b13      	ldr	r3, [pc, #76]	; (8001944 <offset_pwm_init+0xd4>)
 80018f8:	4a12      	ldr	r2, [pc, #72]	; (8001944 <offset_pwm_init+0xd4>)
 80018fa:	6892      	ldr	r2, [r2, #8]
 80018fc:	f042 6270 	orr.w	r2, r2, #251658240	; 0xf000000
 8001900:	609a      	str	r2, [r3, #8]
 8001902:	4b10      	ldr	r3, [pc, #64]	; (8001944 <offset_pwm_init+0xd4>)
 8001904:	4a0f      	ldr	r2, [pc, #60]	; (8001944 <offset_pwm_init+0xd4>)
 8001906:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001908:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 800190c:	625a      	str	r2, [r3, #36]	; 0x24
 800190e:	4b0d      	ldr	r3, [pc, #52]	; (8001944 <offset_pwm_init+0xd4>)
 8001910:	4a0c      	ldr	r2, [pc, #48]	; (8001944 <offset_pwm_init+0xd4>)
 8001912:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001914:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8001918:	625a      	str	r2, [r3, #36]	; 0x24
 800191a:	4b0a      	ldr	r3, [pc, #40]	; (8001944 <offset_pwm_init+0xd4>)
 800191c:	4a09      	ldr	r2, [pc, #36]	; (8001944 <offset_pwm_init+0xd4>)
 800191e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001920:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8001924:	625a      	str	r2, [r3, #36]	; 0x24
 8001926:	4b07      	ldr	r3, [pc, #28]	; (8001944 <offset_pwm_init+0xd4>)
 8001928:	4a06      	ldr	r2, [pc, #24]	; (8001944 <offset_pwm_init+0xd4>)
 800192a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800192c:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8001930:	625a      	str	r2, [r3, #36]	; 0x24
 8001932:	46bd      	mov	sp, r7
 8001934:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001938:	4770      	bx	lr
 800193a:	bf00      	nop
 800193c:	40023800 	.word	0x40023800
 8001940:	40000800 	.word	0x40000800
 8001944:	40020c00 	.word	0x40020c00

08001948 <dac_init>:
 8001948:	b580      	push	{r7, lr}
 800194a:	af00      	add	r7, sp, #0
 800194c:	4b16      	ldr	r3, [pc, #88]	; (80019a8 <dac_init+0x60>)
 800194e:	4a16      	ldr	r2, [pc, #88]	; (80019a8 <dac_init+0x60>)
 8001950:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001952:	f042 5200 	orr.w	r2, r2, #536870912	; 0x20000000
 8001956:	641a      	str	r2, [r3, #64]	; 0x40
 8001958:	4b14      	ldr	r3, [pc, #80]	; (80019ac <dac_init+0x64>)
 800195a:	4a14      	ldr	r2, [pc, #80]	; (80019ac <dac_init+0x64>)
 800195c:	6812      	ldr	r2, [r2, #0]
 800195e:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8001962:	601a      	str	r2, [r3, #0]
 8001964:	4b11      	ldr	r3, [pc, #68]	; (80019ac <dac_init+0x64>)
 8001966:	4a11      	ldr	r2, [pc, #68]	; (80019ac <dac_init+0x64>)
 8001968:	6812      	ldr	r2, [r2, #0]
 800196a:	f442 7240 	orr.w	r2, r2, #768	; 0x300
 800196e:	601a      	str	r2, [r3, #0]
 8001970:	4b0e      	ldr	r3, [pc, #56]	; (80019ac <dac_init+0x64>)
 8001972:	4a0e      	ldr	r2, [pc, #56]	; (80019ac <dac_init+0x64>)
 8001974:	6812      	ldr	r2, [r2, #0]
 8001976:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 800197a:	601a      	str	r2, [r3, #0]
 800197c:	4b0b      	ldr	r3, [pc, #44]	; (80019ac <dac_init+0x64>)
 800197e:	4a0b      	ldr	r2, [pc, #44]	; (80019ac <dac_init+0x64>)
 8001980:	6812      	ldr	r2, [r2, #0]
 8001982:	f442 6240 	orr.w	r2, r2, #3072	; 0xc00
 8001986:	601a      	str	r2, [r3, #0]
 8001988:	4b09      	ldr	r3, [pc, #36]	; (80019b0 <dac_init+0x68>)
 800198a:	4a09      	ldr	r2, [pc, #36]	; (80019b0 <dac_init+0x68>)
 800198c:	6812      	ldr	r2, [r2, #0]
 800198e:	f042 0201 	orr.w	r2, r2, #1
 8001992:	601a      	str	r2, [r3, #0]
 8001994:	4b06      	ldr	r3, [pc, #24]	; (80019b0 <dac_init+0x68>)
 8001996:	4a06      	ldr	r2, [pc, #24]	; (80019b0 <dac_init+0x68>)
 8001998:	6812      	ldr	r2, [r2, #0]
 800199a:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800199e:	601a      	str	r2, [r3, #0]
 80019a0:	f7ff ff66 	bl	8001870 <offset_pwm_init>
 80019a4:	bd80      	pop	{r7, pc}
 80019a6:	bf00      	nop
 80019a8:	40023800 	.word	0x40023800
 80019ac:	40020000 	.word	0x40020000
 80019b0:	40007400 	.word	0x40007400

080019b4 <dac_offset_set>:
 80019b4:	b480      	push	{r7}
 80019b6:	b083      	sub	sp, #12
 80019b8:	af00      	add	r7, sp, #0
 80019ba:	4603      	mov	r3, r0
 80019bc:	80fb      	strh	r3, [r7, #6]
 80019be:	4b04      	ldr	r3, [pc, #16]	; (80019d0 <dac_offset_set+0x1c>)
 80019c0:	88fa      	ldrh	r2, [r7, #6]
 80019c2:	635a      	str	r2, [r3, #52]	; 0x34
 80019c4:	370c      	adds	r7, #12
 80019c6:	46bd      	mov	sp, r7
 80019c8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80019cc:	4770      	bx	lr
 80019ce:	bf00      	nop
 80019d0:	40000800 	.word	0x40000800

080019d4 <NVIC_EnableIRQ>:
 80019d4:	b480      	push	{r7}
 80019d6:	b083      	sub	sp, #12
 80019d8:	af00      	add	r7, sp, #0
 80019da:	4603      	mov	r3, r0
 80019dc:	71fb      	strb	r3, [r7, #7]
 80019de:	4b08      	ldr	r3, [pc, #32]	; (8001a00 <NVIC_EnableIRQ+0x2c>)
 80019e0:	f997 2007 	ldrsb.w	r2, [r7, #7]
 80019e4:	0952      	lsrs	r2, r2, #5
 80019e6:	79f9      	ldrb	r1, [r7, #7]
 80019e8:	f001 011f 	and.w	r1, r1, #31
 80019ec:	2001      	movs	r0, #1
 80019ee:	fa00 f101 	lsl.w	r1, r0, r1
 80019f2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80019f6:	370c      	adds	r7, #12
 80019f8:	46bd      	mov	sp, r7
 80019fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80019fe:	4770      	bx	lr
 8001a00:	e000e100 	.word	0xe000e100

08001a04 <start_trans>:
 8001a04:	b480      	push	{r7}
 8001a06:	b085      	sub	sp, #20
 8001a08:	af00      	add	r7, sp, #0
 8001a0a:	6078      	str	r0, [r7, #4]
 8001a0c:	687a      	ldr	r2, [r7, #4]
 8001a0e:	4b0f      	ldr	r3, [pc, #60]	; (8001a4c <start_trans+0x48>)
 8001a10:	601a      	str	r2, [r3, #0]
 8001a12:	4b0f      	ldr	r3, [pc, #60]	; (8001a50 <start_trans+0x4c>)
 8001a14:	2200      	movs	r2, #0
 8001a16:	601a      	str	r2, [r3, #0]
 8001a18:	2300      	movs	r3, #0
 8001a1a:	60fb      	str	r3, [r7, #12]
 8001a1c:	4b0d      	ldr	r3, [pc, #52]	; (8001a54 <start_trans+0x50>)
 8001a1e:	4a0d      	ldr	r2, [pc, #52]	; (8001a54 <start_trans+0x50>)
 8001a20:	8992      	ldrh	r2, [r2, #12]
 8001a22:	b292      	uxth	r2, r2
 8001a24:	f042 0208 	orr.w	r2, r2, #8
 8001a28:	b292      	uxth	r2, r2
 8001a2a:	819a      	strh	r2, [r3, #12]
 8001a2c:	4b09      	ldr	r3, [pc, #36]	; (8001a54 <start_trans+0x50>)
 8001a2e:	4a09      	ldr	r2, [pc, #36]	; (8001a54 <start_trans+0x50>)
 8001a30:	8992      	ldrh	r2, [r2, #12]
 8001a32:	b292      	uxth	r2, r2
 8001a34:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8001a38:	b292      	uxth	r2, r2
 8001a3a:	819a      	strh	r2, [r3, #12]
 8001a3c:	4b06      	ldr	r3, [pc, #24]	; (8001a58 <start_trans+0x54>)
 8001a3e:	2200      	movs	r2, #0
 8001a40:	601a      	str	r2, [r3, #0]
 8001a42:	3714      	adds	r7, #20
 8001a44:	46bd      	mov	sp, r7
 8001a46:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a4a:	4770      	bx	lr
 8001a4c:	20000c78 	.word	0x20000c78
 8001a50:	20000c74 	.word	0x20000c74
 8001a54:	40004800 	.word	0x40004800
 8001a58:	20000008 	.word	0x20000008

08001a5c <modbus_init>:
 8001a5c:	b580      	push	{r7, lr}
 8001a5e:	af00      	add	r7, sp, #0
 8001a60:	4b3e      	ldr	r3, [pc, #248]	; (8001b5c <modbus_init+0x100>)
 8001a62:	4a3e      	ldr	r2, [pc, #248]	; (8001b5c <modbus_init+0x100>)
 8001a64:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8001a66:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8001a6a:	641a      	str	r2, [r3, #64]	; 0x40
 8001a6c:	4b3c      	ldr	r3, [pc, #240]	; (8001b60 <modbus_init+0x104>)
 8001a6e:	2200      	movs	r2, #0
 8001a70:	819a      	strh	r2, [r3, #12]
 8001a72:	4b3b      	ldr	r3, [pc, #236]	; (8001b60 <modbus_init+0x104>)
 8001a74:	4a3a      	ldr	r2, [pc, #232]	; (8001b60 <modbus_init+0x104>)
 8001a76:	8992      	ldrh	r2, [r2, #12]
 8001a78:	b292      	uxth	r2, r2
 8001a7a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001a7e:	b292      	uxth	r2, r2
 8001a80:	819a      	strh	r2, [r3, #12]
 8001a82:	4b37      	ldr	r3, [pc, #220]	; (8001b60 <modbus_init+0x104>)
 8001a84:	4a36      	ldr	r2, [pc, #216]	; (8001b60 <modbus_init+0x104>)
 8001a86:	8992      	ldrh	r2, [r2, #12]
 8001a88:	b292      	uxth	r2, r2
 8001a8a:	f042 0204 	orr.w	r2, r2, #4
 8001a8e:	b292      	uxth	r2, r2
 8001a90:	819a      	strh	r2, [r3, #12]
 8001a92:	4b33      	ldr	r3, [pc, #204]	; (8001b60 <modbus_init+0x104>)
 8001a94:	4a32      	ldr	r2, [pc, #200]	; (8001b60 <modbus_init+0x104>)
 8001a96:	8992      	ldrh	r2, [r2, #12]
 8001a98:	b292      	uxth	r2, r2
 8001a9a:	f042 0220 	orr.w	r2, r2, #32
 8001a9e:	b292      	uxth	r2, r2
 8001aa0:	819a      	strh	r2, [r3, #12]
 8001aa2:	4b2f      	ldr	r3, [pc, #188]	; (8001b60 <modbus_init+0x104>)
 8001aa4:	4a2e      	ldr	r2, [pc, #184]	; (8001b60 <modbus_init+0x104>)
 8001aa6:	8992      	ldrh	r2, [r2, #12]
 8001aa8:	b292      	uxth	r2, r2
 8001aaa:	f042 0210 	orr.w	r2, r2, #16
 8001aae:	b292      	uxth	r2, r2
 8001ab0:	819a      	strh	r2, [r3, #12]
 8001ab2:	2027      	movs	r0, #39	; 0x27
 8001ab4:	f7ff ff8e 	bl	80019d4 <NVIC_EnableIRQ>
 8001ab8:	4b29      	ldr	r3, [pc, #164]	; (8001b60 <modbus_init+0x104>)
 8001aba:	891b      	ldrh	r3, [r3, #8]
 8001abc:	4b28      	ldr	r3, [pc, #160]	; (8001b60 <modbus_init+0x104>)
 8001abe:	2200      	movs	r2, #0
 8001ac0:	811a      	strh	r2, [r3, #8]
 8001ac2:	4a27      	ldr	r2, [pc, #156]	; (8001b60 <modbus_init+0x104>)
 8001ac4:	4b26      	ldr	r3, [pc, #152]	; (8001b60 <modbus_init+0x104>)
 8001ac6:	891b      	ldrh	r3, [r3, #8]
 8001ac8:	b29b      	uxth	r3, r3
 8001aca:	f443 73b6 	orr.w	r3, r3, #364	; 0x16c
 8001ace:	f043 0301 	orr.w	r3, r3, #1
 8001ad2:	b29b      	uxth	r3, r3
 8001ad4:	8113      	strh	r3, [r2, #8]
 8001ad6:	4b21      	ldr	r3, [pc, #132]	; (8001b5c <modbus_init+0x100>)
 8001ad8:	4a20      	ldr	r2, [pc, #128]	; (8001b5c <modbus_init+0x100>)
 8001ada:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001adc:	f042 0208 	orr.w	r2, r2, #8
 8001ae0:	631a      	str	r2, [r3, #48]	; 0x30
 8001ae2:	4b20      	ldr	r3, [pc, #128]	; (8001b64 <modbus_init+0x108>)
 8001ae4:	4a1f      	ldr	r2, [pc, #124]	; (8001b64 <modbus_init+0x108>)
 8001ae6:	6812      	ldr	r2, [r2, #0]
 8001ae8:	f422 1240 	bic.w	r2, r2, #3145728	; 0x300000
 8001aec:	601a      	str	r2, [r3, #0]
 8001aee:	4b1d      	ldr	r3, [pc, #116]	; (8001b64 <modbus_init+0x108>)
 8001af0:	4a1c      	ldr	r2, [pc, #112]	; (8001b64 <modbus_init+0x108>)
 8001af2:	6812      	ldr	r2, [r2, #0]
 8001af4:	f442 1280 	orr.w	r2, r2, #1048576	; 0x100000
 8001af8:	601a      	str	r2, [r3, #0]
 8001afa:	4b1a      	ldr	r3, [pc, #104]	; (8001b64 <modbus_init+0x108>)
 8001afc:	4a19      	ldr	r2, [pc, #100]	; (8001b64 <modbus_init+0x108>)
 8001afe:	6812      	ldr	r2, [r2, #0]
 8001b00:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8001b04:	601a      	str	r2, [r3, #0]
 8001b06:	4b17      	ldr	r3, [pc, #92]	; (8001b64 <modbus_init+0x108>)
 8001b08:	4a16      	ldr	r2, [pc, #88]	; (8001b64 <modbus_init+0x108>)
 8001b0a:	6812      	ldr	r2, [r2, #0]
 8001b0c:	f442 2220 	orr.w	r2, r2, #655360	; 0xa0000
 8001b10:	601a      	str	r2, [r3, #0]
 8001b12:	4b14      	ldr	r3, [pc, #80]	; (8001b64 <modbus_init+0x108>)
 8001b14:	4a13      	ldr	r2, [pc, #76]	; (8001b64 <modbus_init+0x108>)
 8001b16:	6892      	ldr	r2, [r2, #8]
 8001b18:	f442 2270 	orr.w	r2, r2, #983040	; 0xf0000
 8001b1c:	609a      	str	r2, [r3, #8]
 8001b1e:	4b11      	ldr	r3, [pc, #68]	; (8001b64 <modbus_init+0x108>)
 8001b20:	4a10      	ldr	r2, [pc, #64]	; (8001b64 <modbus_init+0x108>)
 8001b22:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001b24:	f022 020f 	bic.w	r2, r2, #15
 8001b28:	625a      	str	r2, [r3, #36]	; 0x24
 8001b2a:	4b0e      	ldr	r3, [pc, #56]	; (8001b64 <modbus_init+0x108>)
 8001b2c:	4a0d      	ldr	r2, [pc, #52]	; (8001b64 <modbus_init+0x108>)
 8001b2e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001b30:	f042 0207 	orr.w	r2, r2, #7
 8001b34:	625a      	str	r2, [r3, #36]	; 0x24
 8001b36:	4b0b      	ldr	r3, [pc, #44]	; (8001b64 <modbus_init+0x108>)
 8001b38:	4a0a      	ldr	r2, [pc, #40]	; (8001b64 <modbus_init+0x108>)
 8001b3a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001b3c:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8001b40:	625a      	str	r2, [r3, #36]	; 0x24
 8001b42:	4b08      	ldr	r3, [pc, #32]	; (8001b64 <modbus_init+0x108>)
 8001b44:	4a07      	ldr	r2, [pc, #28]	; (8001b64 <modbus_init+0x108>)
 8001b46:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8001b48:	f042 0270 	orr.w	r2, r2, #112	; 0x70
 8001b4c:	625a      	str	r2, [r3, #36]	; 0x24
 8001b4e:	4b05      	ldr	r3, [pc, #20]	; (8001b64 <modbus_init+0x108>)
 8001b50:	4a04      	ldr	r2, [pc, #16]	; (8001b64 <modbus_init+0x108>)
 8001b52:	6952      	ldr	r2, [r2, #20]
 8001b54:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001b58:	615a      	str	r2, [r3, #20]
 8001b5a:	bd80      	pop	{r7, pc}
 8001b5c:	40023800 	.word	0x40023800
 8001b60:	40004800 	.word	0x40004800
 8001b64:	40020c00 	.word	0x40020c00

08001b68 <USART3_IRQHandler>:
 8001b68:	b580      	push	{r7, lr}
 8001b6a:	b082      	sub	sp, #8
 8001b6c:	af00      	add	r7, sp, #0
 8001b6e:	4b40      	ldr	r3, [pc, #256]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001b70:	881b      	ldrh	r3, [r3, #0]
 8001b72:	b29b      	uxth	r3, r3
 8001b74:	f003 0310 	and.w	r3, r3, #16
 8001b78:	2b00      	cmp	r3, #0
 8001b7a:	d00c      	beq.n	8001b96 <USART3_IRQHandler+0x2e>
 8001b7c:	4b3c      	ldr	r3, [pc, #240]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001b7e:	889b      	ldrh	r3, [r3, #4]
 8001b80:	b29b      	uxth	r3, r3
 8001b82:	71fb      	strb	r3, [r7, #7]
 8001b84:	f000 f930 	bl	8001de8 <proc_ADU>
 8001b88:	4b3a      	ldr	r3, [pc, #232]	; (8001c74 <USART3_IRQHandler+0x10c>)
 8001b8a:	681a      	ldr	r2, [r3, #0]
 8001b8c:	4b3a      	ldr	r3, [pc, #232]	; (8001c78 <USART3_IRQHandler+0x110>)
 8001b8e:	601a      	str	r2, [r3, #0]
 8001b90:	4b38      	ldr	r3, [pc, #224]	; (8001c74 <USART3_IRQHandler+0x10c>)
 8001b92:	2200      	movs	r2, #0
 8001b94:	601a      	str	r2, [r3, #0]
 8001b96:	4b36      	ldr	r3, [pc, #216]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001b98:	881b      	ldrh	r3, [r3, #0]
 8001b9a:	b29b      	uxth	r3, r3
 8001b9c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001ba0:	2b00      	cmp	r3, #0
 8001ba2:	d02f      	beq.n	8001c04 <USART3_IRQHandler+0x9c>
 8001ba4:	4b35      	ldr	r3, [pc, #212]	; (8001c7c <USART3_IRQHandler+0x114>)
 8001ba6:	681b      	ldr	r3, [r3, #0]
 8001ba8:	2b00      	cmp	r3, #0
 8001baa:	d110      	bne.n	8001bce <USART3_IRQHandler+0x66>
 8001bac:	4b30      	ldr	r3, [pc, #192]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001bae:	4a30      	ldr	r2, [pc, #192]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001bb0:	8992      	ldrh	r2, [r2, #12]
 8001bb2:	b292      	uxth	r2, r2
 8001bb4:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8001bb8:	b292      	uxth	r2, r2
 8001bba:	819a      	strh	r2, [r3, #12]
 8001bbc:	4b2c      	ldr	r3, [pc, #176]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001bbe:	4a2c      	ldr	r2, [pc, #176]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001bc0:	8992      	ldrh	r2, [r2, #12]
 8001bc2:	b292      	uxth	r2, r2
 8001bc4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001bc8:	b292      	uxth	r2, r2
 8001bca:	819a      	strh	r2, [r3, #12]
 8001bcc:	e01a      	b.n	8001c04 <USART3_IRQHandler+0x9c>
 8001bce:	4b2c      	ldr	r3, [pc, #176]	; (8001c80 <USART3_IRQHandler+0x118>)
 8001bd0:	681b      	ldr	r3, [r3, #0]
 8001bd2:	2b01      	cmp	r3, #1
 8001bd4:	d105      	bne.n	8001be2 <USART3_IRQHandler+0x7a>
 8001bd6:	4b2b      	ldr	r3, [pc, #172]	; (8001c84 <USART3_IRQHandler+0x11c>)
 8001bd8:	4a2a      	ldr	r2, [pc, #168]	; (8001c84 <USART3_IRQHandler+0x11c>)
 8001bda:	6952      	ldr	r2, [r2, #20]
 8001bdc:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001be0:	615a      	str	r2, [r3, #20]
 8001be2:	4b23      	ldr	r3, [pc, #140]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001be4:	4a26      	ldr	r2, [pc, #152]	; (8001c80 <USART3_IRQHandler+0x118>)
 8001be6:	6812      	ldr	r2, [r2, #0]
 8001be8:	4927      	ldr	r1, [pc, #156]	; (8001c88 <USART3_IRQHandler+0x120>)
 8001bea:	5c8a      	ldrb	r2, [r1, r2]
 8001bec:	809a      	strh	r2, [r3, #4]
 8001bee:	4b24      	ldr	r3, [pc, #144]	; (8001c80 <USART3_IRQHandler+0x118>)
 8001bf0:	681b      	ldr	r3, [r3, #0]
 8001bf2:	3301      	adds	r3, #1
 8001bf4:	b2da      	uxtb	r2, r3
 8001bf6:	4b22      	ldr	r3, [pc, #136]	; (8001c80 <USART3_IRQHandler+0x118>)
 8001bf8:	601a      	str	r2, [r3, #0]
 8001bfa:	4b20      	ldr	r3, [pc, #128]	; (8001c7c <USART3_IRQHandler+0x114>)
 8001bfc:	681b      	ldr	r3, [r3, #0]
 8001bfe:	1e5a      	subs	r2, r3, #1
 8001c00:	4b1e      	ldr	r3, [pc, #120]	; (8001c7c <USART3_IRQHandler+0x114>)
 8001c02:	601a      	str	r2, [r3, #0]
 8001c04:	4b1a      	ldr	r3, [pc, #104]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c06:	881b      	ldrh	r3, [r3, #0]
 8001c08:	b29b      	uxth	r3, r3
 8001c0a:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8001c0e:	2b00      	cmp	r3, #0
 8001c10:	d015      	beq.n	8001c3e <USART3_IRQHandler+0xd6>
 8001c12:	4b17      	ldr	r3, [pc, #92]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c14:	4a16      	ldr	r2, [pc, #88]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c16:	8812      	ldrh	r2, [r2, #0]
 8001c18:	b292      	uxth	r2, r2
 8001c1a:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8001c1e:	b292      	uxth	r2, r2
 8001c20:	801a      	strh	r2, [r3, #0]
 8001c22:	4b13      	ldr	r3, [pc, #76]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c24:	4a12      	ldr	r2, [pc, #72]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c26:	8992      	ldrh	r2, [r2, #12]
 8001c28:	b292      	uxth	r2, r2
 8001c2a:	f022 02c8 	bic.w	r2, r2, #200	; 0xc8
 8001c2e:	b292      	uxth	r2, r2
 8001c30:	819a      	strh	r2, [r3, #12]
 8001c32:	4b14      	ldr	r3, [pc, #80]	; (8001c84 <USART3_IRQHandler+0x11c>)
 8001c34:	4a13      	ldr	r2, [pc, #76]	; (8001c84 <USART3_IRQHandler+0x11c>)
 8001c36:	6952      	ldr	r2, [r2, #20]
 8001c38:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8001c3c:	615a      	str	r2, [r3, #20]
 8001c3e:	4b0c      	ldr	r3, [pc, #48]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c40:	881b      	ldrh	r3, [r3, #0]
 8001c42:	b29b      	uxth	r3, r3
 8001c44:	f003 0320 	and.w	r3, r3, #32
 8001c48:	2b00      	cmp	r3, #0
 8001c4a:	d00d      	beq.n	8001c68 <USART3_IRQHandler+0x100>
 8001c4c:	4b09      	ldr	r3, [pc, #36]	; (8001c74 <USART3_IRQHandler+0x10c>)
 8001c4e:	681b      	ldr	r3, [r3, #0]
 8001c50:	4a07      	ldr	r2, [pc, #28]	; (8001c70 <USART3_IRQHandler+0x108>)
 8001c52:	8892      	ldrh	r2, [r2, #4]
 8001c54:	b292      	uxth	r2, r2
 8001c56:	b2d1      	uxtb	r1, r2
 8001c58:	4a0c      	ldr	r2, [pc, #48]	; (8001c8c <USART3_IRQHandler+0x124>)
 8001c5a:	54d1      	strb	r1, [r2, r3]
 8001c5c:	4b05      	ldr	r3, [pc, #20]	; (8001c74 <USART3_IRQHandler+0x10c>)
 8001c5e:	681b      	ldr	r3, [r3, #0]
 8001c60:	3301      	adds	r3, #1
 8001c62:	b2da      	uxtb	r2, r3
 8001c64:	4b03      	ldr	r3, [pc, #12]	; (8001c74 <USART3_IRQHandler+0x10c>)
 8001c66:	601a      	str	r2, [r3, #0]
 8001c68:	3708      	adds	r7, #8
 8001c6a:	46bd      	mov	sp, r7
 8001c6c:	bd80      	pop	{r7, pc}
 8001c6e:	bf00      	nop
 8001c70:	40004800 	.word	0x40004800
 8001c74:	20000b6c 	.word	0x20000b6c
 8001c78:	20000b70 	.word	0x20000b70
 8001c7c:	20000c78 	.word	0x20000c78
 8001c80:	20000c74 	.word	0x20000c74
 8001c84:	40020c00 	.word	0x40020c00
 8001c88:	20000b74 	.word	0x20000b74
 8001c8c:	20000a6c 	.word	0x20000a6c

08001c90 <modbus_read_holding_registers>:
 8001c90:	b580      	push	{r7, lr}
 8001c92:	b084      	sub	sp, #16
 8001c94:	af00      	add	r7, sp, #0
 8001c96:	4613      	mov	r3, r2
 8001c98:	4602      	mov	r2, r0
 8001c9a:	71fa      	strb	r2, [r7, #7]
 8001c9c:	460a      	mov	r2, r1
 8001c9e:	80ba      	strh	r2, [r7, #4]
 8001ca0:	807b      	strh	r3, [r7, #2]
 8001ca2:	2300      	movs	r3, #0
 8001ca4:	60fb      	str	r3, [r7, #12]
 8001ca6:	68fb      	ldr	r3, [r7, #12]
 8001ca8:	1c5a      	adds	r2, r3, #1
 8001caa:	60fa      	str	r2, [r7, #12]
 8001cac:	4a22      	ldr	r2, [pc, #136]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001cae:	79f9      	ldrb	r1, [r7, #7]
 8001cb0:	54d1      	strb	r1, [r2, r3]
 8001cb2:	68fb      	ldr	r3, [r7, #12]
 8001cb4:	1c5a      	adds	r2, r3, #1
 8001cb6:	60fa      	str	r2, [r7, #12]
 8001cb8:	4a1f      	ldr	r2, [pc, #124]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001cba:	2103      	movs	r1, #3
 8001cbc:	54d1      	strb	r1, [r2, r3]
 8001cbe:	68fb      	ldr	r3, [r7, #12]
 8001cc0:	1c5a      	adds	r2, r3, #1
 8001cc2:	60fa      	str	r2, [r7, #12]
 8001cc4:	88ba      	ldrh	r2, [r7, #4]
 8001cc6:	0a12      	lsrs	r2, r2, #8
 8001cc8:	b292      	uxth	r2, r2
 8001cca:	b2d1      	uxtb	r1, r2
 8001ccc:	4a1a      	ldr	r2, [pc, #104]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001cce:	54d1      	strb	r1, [r2, r3]
 8001cd0:	68fb      	ldr	r3, [r7, #12]
 8001cd2:	1c5a      	adds	r2, r3, #1
 8001cd4:	60fa      	str	r2, [r7, #12]
 8001cd6:	88ba      	ldrh	r2, [r7, #4]
 8001cd8:	b2d1      	uxtb	r1, r2
 8001cda:	4a17      	ldr	r2, [pc, #92]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001cdc:	54d1      	strb	r1, [r2, r3]
 8001cde:	68fb      	ldr	r3, [r7, #12]
 8001ce0:	1c5a      	adds	r2, r3, #1
 8001ce2:	60fa      	str	r2, [r7, #12]
 8001ce4:	887a      	ldrh	r2, [r7, #2]
 8001ce6:	0a12      	lsrs	r2, r2, #8
 8001ce8:	b292      	uxth	r2, r2
 8001cea:	b2d1      	uxtb	r1, r2
 8001cec:	4a12      	ldr	r2, [pc, #72]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001cee:	54d1      	strb	r1, [r2, r3]
 8001cf0:	68fb      	ldr	r3, [r7, #12]
 8001cf2:	1c5a      	adds	r2, r3, #1
 8001cf4:	60fa      	str	r2, [r7, #12]
 8001cf6:	887a      	ldrh	r2, [r7, #2]
 8001cf8:	b2d1      	uxtb	r1, r2
 8001cfa:	4a0f      	ldr	r2, [pc, #60]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001cfc:	54d1      	strb	r1, [r2, r3]
 8001cfe:	480e      	ldr	r0, [pc, #56]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001d00:	68f9      	ldr	r1, [r7, #12]
 8001d02:	f000 f8f7 	bl	8001ef4 <crc16>
 8001d06:	4603      	mov	r3, r0
 8001d08:	817b      	strh	r3, [r7, #10]
 8001d0a:	68fb      	ldr	r3, [r7, #12]
 8001d0c:	1c5a      	adds	r2, r3, #1
 8001d0e:	60fa      	str	r2, [r7, #12]
 8001d10:	897a      	ldrh	r2, [r7, #10]
 8001d12:	b2d1      	uxtb	r1, r2
 8001d14:	4a08      	ldr	r2, [pc, #32]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001d16:	54d1      	strb	r1, [r2, r3]
 8001d18:	68fb      	ldr	r3, [r7, #12]
 8001d1a:	1c5a      	adds	r2, r3, #1
 8001d1c:	60fa      	str	r2, [r7, #12]
 8001d1e:	897a      	ldrh	r2, [r7, #10]
 8001d20:	0a12      	lsrs	r2, r2, #8
 8001d22:	b292      	uxth	r2, r2
 8001d24:	b2d1      	uxtb	r1, r2
 8001d26:	4a04      	ldr	r2, [pc, #16]	; (8001d38 <modbus_read_holding_registers+0xa8>)
 8001d28:	54d1      	strb	r1, [r2, r3]
 8001d2a:	68f8      	ldr	r0, [r7, #12]
 8001d2c:	f7ff fe6a 	bl	8001a04 <start_trans>
 8001d30:	3710      	adds	r7, #16
 8001d32:	46bd      	mov	sp, r7
 8001d34:	bd80      	pop	{r7, pc}
 8001d36:	bf00      	nop
 8001d38:	20000b74 	.word	0x20000b74

08001d3c <modbus_write_single_register>:
 8001d3c:	b580      	push	{r7, lr}
 8001d3e:	b084      	sub	sp, #16
 8001d40:	af00      	add	r7, sp, #0
 8001d42:	4613      	mov	r3, r2
 8001d44:	4602      	mov	r2, r0
 8001d46:	71fa      	strb	r2, [r7, #7]
 8001d48:	460a      	mov	r2, r1
 8001d4a:	80ba      	strh	r2, [r7, #4]
 8001d4c:	807b      	strh	r3, [r7, #2]
 8001d4e:	2300      	movs	r3, #0
 8001d50:	60fb      	str	r3, [r7, #12]
 8001d52:	68fb      	ldr	r3, [r7, #12]
 8001d54:	1c5a      	adds	r2, r3, #1
 8001d56:	60fa      	str	r2, [r7, #12]
 8001d58:	4a22      	ldr	r2, [pc, #136]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001d5a:	79f9      	ldrb	r1, [r7, #7]
 8001d5c:	54d1      	strb	r1, [r2, r3]
 8001d5e:	68fb      	ldr	r3, [r7, #12]
 8001d60:	1c5a      	adds	r2, r3, #1
 8001d62:	60fa      	str	r2, [r7, #12]
 8001d64:	4a1f      	ldr	r2, [pc, #124]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001d66:	2106      	movs	r1, #6
 8001d68:	54d1      	strb	r1, [r2, r3]
 8001d6a:	68fb      	ldr	r3, [r7, #12]
 8001d6c:	1c5a      	adds	r2, r3, #1
 8001d6e:	60fa      	str	r2, [r7, #12]
 8001d70:	88ba      	ldrh	r2, [r7, #4]
 8001d72:	0a12      	lsrs	r2, r2, #8
 8001d74:	b292      	uxth	r2, r2
 8001d76:	b2d1      	uxtb	r1, r2
 8001d78:	4a1a      	ldr	r2, [pc, #104]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001d7a:	54d1      	strb	r1, [r2, r3]
 8001d7c:	68fb      	ldr	r3, [r7, #12]
 8001d7e:	1c5a      	adds	r2, r3, #1
 8001d80:	60fa      	str	r2, [r7, #12]
 8001d82:	88ba      	ldrh	r2, [r7, #4]
 8001d84:	b2d1      	uxtb	r1, r2
 8001d86:	4a17      	ldr	r2, [pc, #92]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001d88:	54d1      	strb	r1, [r2, r3]
 8001d8a:	68fb      	ldr	r3, [r7, #12]
 8001d8c:	1c5a      	adds	r2, r3, #1
 8001d8e:	60fa      	str	r2, [r7, #12]
 8001d90:	887a      	ldrh	r2, [r7, #2]
 8001d92:	0a12      	lsrs	r2, r2, #8
 8001d94:	b292      	uxth	r2, r2
 8001d96:	b2d1      	uxtb	r1, r2
 8001d98:	4a12      	ldr	r2, [pc, #72]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001d9a:	54d1      	strb	r1, [r2, r3]
 8001d9c:	68fb      	ldr	r3, [r7, #12]
 8001d9e:	1c5a      	adds	r2, r3, #1
 8001da0:	60fa      	str	r2, [r7, #12]
 8001da2:	887a      	ldrh	r2, [r7, #2]
 8001da4:	b2d1      	uxtb	r1, r2
 8001da6:	4a0f      	ldr	r2, [pc, #60]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001da8:	54d1      	strb	r1, [r2, r3]
 8001daa:	480e      	ldr	r0, [pc, #56]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001dac:	68f9      	ldr	r1, [r7, #12]
 8001dae:	f000 f8a1 	bl	8001ef4 <crc16>
 8001db2:	4603      	mov	r3, r0
 8001db4:	817b      	strh	r3, [r7, #10]
 8001db6:	68fb      	ldr	r3, [r7, #12]
 8001db8:	1c5a      	adds	r2, r3, #1
 8001dba:	60fa      	str	r2, [r7, #12]
 8001dbc:	897a      	ldrh	r2, [r7, #10]
 8001dbe:	b2d1      	uxtb	r1, r2
 8001dc0:	4a08      	ldr	r2, [pc, #32]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001dc2:	54d1      	strb	r1, [r2, r3]
 8001dc4:	68fb      	ldr	r3, [r7, #12]
 8001dc6:	1c5a      	adds	r2, r3, #1
 8001dc8:	60fa      	str	r2, [r7, #12]
 8001dca:	897a      	ldrh	r2, [r7, #10]
 8001dcc:	0a12      	lsrs	r2, r2, #8
 8001dce:	b292      	uxth	r2, r2
 8001dd0:	b2d1      	uxtb	r1, r2
 8001dd2:	4a04      	ldr	r2, [pc, #16]	; (8001de4 <modbus_write_single_register+0xa8>)
 8001dd4:	54d1      	strb	r1, [r2, r3]
 8001dd6:	68f8      	ldr	r0, [r7, #12]
 8001dd8:	f7ff fe14 	bl	8001a04 <start_trans>
 8001ddc:	3710      	adds	r7, #16
 8001dde:	46bd      	mov	sp, r7
 8001de0:	bd80      	pop	{r7, pc}
 8001de2:	bf00      	nop
 8001de4:	20000b74 	.word	0x20000b74

08001de8 <proc_ADU>:
 8001de8:	b580      	push	{r7, lr}
 8001dea:	b086      	sub	sp, #24
 8001dec:	af00      	add	r7, sp, #0
 8001dee:	2300      	movs	r3, #0
 8001df0:	613b      	str	r3, [r7, #16]
 8001df2:	2300      	movs	r3, #0
 8001df4:	60fb      	str	r3, [r7, #12]
 8001df6:	4b3a      	ldr	r3, [pc, #232]	; (8001ee0 <proc_ADU+0xf8>)
 8001df8:	681b      	ldr	r3, [r3, #0]
 8001dfa:	483a      	ldr	r0, [pc, #232]	; (8001ee4 <proc_ADU+0xfc>)
 8001dfc:	4619      	mov	r1, r3
 8001dfe:	f000 f879 	bl	8001ef4 <crc16>
 8001e02:	4603      	mov	r3, r0
 8001e04:	817b      	strh	r3, [r7, #10]
 8001e06:	897b      	ldrh	r3, [r7, #10]
 8001e08:	2b00      	cmp	r3, #0
 8001e0a:	d006      	beq.n	8001e1a <proc_ADU+0x32>
 8001e0c:	4b36      	ldr	r3, [pc, #216]	; (8001ee8 <proc_ADU+0x100>)
 8001e0e:	2201      	movs	r2, #1
 8001e10:	601a      	str	r2, [r3, #0]
 8001e12:	4b36      	ldr	r3, [pc, #216]	; (8001eec <proc_ADU+0x104>)
 8001e14:	2201      	movs	r2, #1
 8001e16:	601a      	str	r2, [r3, #0]
 8001e18:	e05e      	b.n	8001ed8 <proc_ADU+0xf0>
 8001e1a:	4b34      	ldr	r3, [pc, #208]	; (8001eec <proc_ADU+0x104>)
 8001e1c:	2200      	movs	r2, #0
 8001e1e:	601a      	str	r2, [r3, #0]
 8001e20:	693b      	ldr	r3, [r7, #16]
 8001e22:	1c5a      	adds	r2, r3, #1
 8001e24:	613a      	str	r2, [r7, #16]
 8001e26:	4a2f      	ldr	r2, [pc, #188]	; (8001ee4 <proc_ADU+0xfc>)
 8001e28:	5cd3      	ldrb	r3, [r2, r3]
 8001e2a:	727b      	strb	r3, [r7, #9]
 8001e2c:	693b      	ldr	r3, [r7, #16]
 8001e2e:	1c5a      	adds	r2, r3, #1
 8001e30:	613a      	str	r2, [r7, #16]
 8001e32:	4a2c      	ldr	r2, [pc, #176]	; (8001ee4 <proc_ADU+0xfc>)
 8001e34:	5cd3      	ldrb	r3, [r2, r3]
 8001e36:	723b      	strb	r3, [r7, #8]
 8001e38:	693b      	ldr	r3, [r7, #16]
 8001e3a:	1c5a      	adds	r2, r3, #1
 8001e3c:	613a      	str	r2, [r7, #16]
 8001e3e:	4a29      	ldr	r2, [pc, #164]	; (8001ee4 <proc_ADU+0xfc>)
 8001e40:	5cd3      	ldrb	r3, [r2, r3]
 8001e42:	607b      	str	r3, [r7, #4]
 8001e44:	687b      	ldr	r3, [r7, #4]
 8001e46:	085b      	lsrs	r3, r3, #1
 8001e48:	60fb      	str	r3, [r7, #12]
 8001e4a:	7a3b      	ldrb	r3, [r7, #8]
 8001e4c:	b25b      	sxtb	r3, r3
 8001e4e:	2b00      	cmp	r3, #0
 8001e50:	da06      	bge.n	8001e60 <proc_ADU+0x78>
 8001e52:	4b25      	ldr	r3, [pc, #148]	; (8001ee8 <proc_ADU+0x100>)
 8001e54:	2201      	movs	r2, #1
 8001e56:	601a      	str	r2, [r3, #0]
 8001e58:	4b24      	ldr	r3, [pc, #144]	; (8001eec <proc_ADU+0x104>)
 8001e5a:	2201      	movs	r2, #1
 8001e5c:	601a      	str	r2, [r3, #0]
 8001e5e:	e03b      	b.n	8001ed8 <proc_ADU+0xf0>
 8001e60:	7a3b      	ldrb	r3, [r7, #8]
 8001e62:	2b03      	cmp	r3, #3
 8001e64:	d002      	beq.n	8001e6c <proc_ADU+0x84>
 8001e66:	2b06      	cmp	r3, #6
 8001e68:	d032      	beq.n	8001ed0 <proc_ADU+0xe8>
 8001e6a:	e035      	b.n	8001ed8 <proc_ADU+0xf0>
 8001e6c:	68fb      	ldr	r3, [r7, #12]
 8001e6e:	2b08      	cmp	r3, #8
 8001e70:	dd06      	ble.n	8001e80 <proc_ADU+0x98>
 8001e72:	4b1d      	ldr	r3, [pc, #116]	; (8001ee8 <proc_ADU+0x100>)
 8001e74:	2201      	movs	r2, #1
 8001e76:	601a      	str	r2, [r3, #0]
 8001e78:	4b1c      	ldr	r3, [pc, #112]	; (8001eec <proc_ADU+0x104>)
 8001e7a:	2201      	movs	r2, #1
 8001e7c:	601a      	str	r2, [r3, #0]
 8001e7e:	e02b      	b.n	8001ed8 <proc_ADU+0xf0>
 8001e80:	2300      	movs	r3, #0
 8001e82:	617b      	str	r3, [r7, #20]
 8001e84:	e01f      	b.n	8001ec6 <proc_ADU+0xde>
 8001e86:	693b      	ldr	r3, [r7, #16]
 8001e88:	1c5a      	adds	r2, r3, #1
 8001e8a:	613a      	str	r2, [r7, #16]
 8001e8c:	4a15      	ldr	r2, [pc, #84]	; (8001ee4 <proc_ADU+0xfc>)
 8001e8e:	5cd3      	ldrb	r3, [r2, r3]
 8001e90:	021b      	lsls	r3, r3, #8
 8001e92:	b299      	uxth	r1, r3
 8001e94:	4b16      	ldr	r3, [pc, #88]	; (8001ef0 <proc_ADU+0x108>)
 8001e96:	697a      	ldr	r2, [r7, #20]
 8001e98:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 8001e9c:	4b14      	ldr	r3, [pc, #80]	; (8001ef0 <proc_ADU+0x108>)
 8001e9e:	697a      	ldr	r2, [r7, #20]
 8001ea0:	f833 2012 	ldrh.w	r2, [r3, r2, lsl #1]
 8001ea4:	693b      	ldr	r3, [r7, #16]
 8001ea6:	1c59      	adds	r1, r3, #1
 8001ea8:	6139      	str	r1, [r7, #16]
 8001eaa:	490e      	ldr	r1, [pc, #56]	; (8001ee4 <proc_ADU+0xfc>)
 8001eac:	5ccb      	ldrb	r3, [r1, r3]
 8001eae:	4313      	orrs	r3, r2
 8001eb0:	b299      	uxth	r1, r3
 8001eb2:	4b0f      	ldr	r3, [pc, #60]	; (8001ef0 <proc_ADU+0x108>)
 8001eb4:	697a      	ldr	r2, [r7, #20]
 8001eb6:	f823 1012 	strh.w	r1, [r3, r2, lsl #1]
 8001eba:	4b0b      	ldr	r3, [pc, #44]	; (8001ee8 <proc_ADU+0x100>)
 8001ebc:	2201      	movs	r2, #1
 8001ebe:	601a      	str	r2, [r3, #0]
 8001ec0:	697b      	ldr	r3, [r7, #20]
 8001ec2:	3301      	adds	r3, #1
 8001ec4:	617b      	str	r3, [r7, #20]
 8001ec6:	697a      	ldr	r2, [r7, #20]
 8001ec8:	68fb      	ldr	r3, [r7, #12]
 8001eca:	429a      	cmp	r2, r3
 8001ecc:	dbdb      	blt.n	8001e86 <proc_ADU+0x9e>
 8001ece:	e003      	b.n	8001ed8 <proc_ADU+0xf0>
 8001ed0:	4b05      	ldr	r3, [pc, #20]	; (8001ee8 <proc_ADU+0x100>)
 8001ed2:	2201      	movs	r2, #1
 8001ed4:	601a      	str	r2, [r3, #0]
 8001ed6:	bf00      	nop
 8001ed8:	3718      	adds	r7, #24
 8001eda:	46bd      	mov	sp, r7
 8001edc:	bd80      	pop	{r7, pc}
 8001ede:	bf00      	nop
 8001ee0:	20000b6c 	.word	0x20000b6c
 8001ee4:	20000a6c 	.word	0x20000a6c
 8001ee8:	20000008 	.word	0x20000008
 8001eec:	20000a68 	.word	0x20000a68
 8001ef0:	20000a58 	.word	0x20000a58

08001ef4 <crc16>:
 8001ef4:	b480      	push	{r7}
 8001ef6:	b087      	sub	sp, #28
 8001ef8:	af00      	add	r7, sp, #0
 8001efa:	6078      	str	r0, [r7, #4]
 8001efc:	6039      	str	r1, [r7, #0]
 8001efe:	23ff      	movs	r3, #255	; 0xff
 8001f00:	75fb      	strb	r3, [r7, #23]
 8001f02:	23ff      	movs	r3, #255	; 0xff
 8001f04:	75bb      	strb	r3, [r7, #22]
 8001f06:	2300      	movs	r3, #0
 8001f08:	613b      	str	r3, [r7, #16]
 8001f0a:	e016      	b.n	8001f3a <crc16+0x46>
 8001f0c:	693b      	ldr	r3, [r7, #16]
 8001f0e:	687a      	ldr	r2, [r7, #4]
 8001f10:	4413      	add	r3, r2
 8001f12:	781a      	ldrb	r2, [r3, #0]
 8001f14:	7dfb      	ldrb	r3, [r7, #23]
 8001f16:	4053      	eors	r3, r2
 8001f18:	b2db      	uxtb	r3, r3
 8001f1a:	60fb      	str	r3, [r7, #12]
 8001f1c:	4a10      	ldr	r2, [pc, #64]	; (8001f60 <crc16+0x6c>)
 8001f1e:	68fb      	ldr	r3, [r7, #12]
 8001f20:	4413      	add	r3, r2
 8001f22:	781a      	ldrb	r2, [r3, #0]
 8001f24:	7dbb      	ldrb	r3, [r7, #22]
 8001f26:	4053      	eors	r3, r2
 8001f28:	75fb      	strb	r3, [r7, #23]
 8001f2a:	4a0e      	ldr	r2, [pc, #56]	; (8001f64 <crc16+0x70>)
 8001f2c:	68fb      	ldr	r3, [r7, #12]
 8001f2e:	4413      	add	r3, r2
 8001f30:	781b      	ldrb	r3, [r3, #0]
 8001f32:	75bb      	strb	r3, [r7, #22]
 8001f34:	693b      	ldr	r3, [r7, #16]
 8001f36:	3301      	adds	r3, #1
 8001f38:	613b      	str	r3, [r7, #16]
 8001f3a:	693a      	ldr	r2, [r7, #16]
 8001f3c:	683b      	ldr	r3, [r7, #0]
 8001f3e:	429a      	cmp	r2, r3
 8001f40:	dbe4      	blt.n	8001f0c <crc16+0x18>
 8001f42:	7dbb      	ldrb	r3, [r7, #22]
 8001f44:	021b      	lsls	r3, r3, #8
 8001f46:	b29a      	uxth	r2, r3
 8001f48:	7dfb      	ldrb	r3, [r7, #23]
 8001f4a:	b29b      	uxth	r3, r3
 8001f4c:	4313      	orrs	r3, r2
 8001f4e:	b29b      	uxth	r3, r3
 8001f50:	b29b      	uxth	r3, r3
 8001f52:	4618      	mov	r0, r3
 8001f54:	371c      	adds	r7, #28
 8001f56:	46bd      	mov	sp, r7
 8001f58:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f5c:	4770      	bx	lr
 8001f5e:	bf00      	nop
 8001f60:	2000000c 	.word	0x2000000c
 8001f64:	2000010c 	.word	0x2000010c

08001f68 <NVIC_EnableIRQ>:
 8001f68:	b480      	push	{r7}
 8001f6a:	b083      	sub	sp, #12
 8001f6c:	af00      	add	r7, sp, #0
 8001f6e:	4603      	mov	r3, r0
 8001f70:	71fb      	strb	r3, [r7, #7]
 8001f72:	4b08      	ldr	r3, [pc, #32]	; (8001f94 <NVIC_EnableIRQ+0x2c>)
 8001f74:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8001f78:	0952      	lsrs	r2, r2, #5
 8001f7a:	79f9      	ldrb	r1, [r7, #7]
 8001f7c:	f001 011f 	and.w	r1, r1, #31
 8001f80:	2001      	movs	r0, #1
 8001f82:	fa00 f101 	lsl.w	r1, r0, r1
 8001f86:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8001f8a:	370c      	adds	r7, #12
 8001f8c:	46bd      	mov	sp, r7
 8001f8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f92:	4770      	bx	lr
 8001f94:	e000e100 	.word	0xe000e100

08001f98 <init_spi_dma>:
 8001f98:	b580      	push	{r7, lr}
 8001f9a:	af00      	add	r7, sp, #0
 8001f9c:	4b33      	ldr	r3, [pc, #204]	; (800206c <init_spi_dma+0xd4>)
 8001f9e:	4a33      	ldr	r2, [pc, #204]	; (800206c <init_spi_dma+0xd4>)
 8001fa0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8001fa2:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8001fa6:	631a      	str	r2, [r3, #48]	; 0x30
 8001fa8:	4b31      	ldr	r3, [pc, #196]	; (8002070 <init_spi_dma+0xd8>)
 8001faa:	4a32      	ldr	r2, [pc, #200]	; (8002074 <init_spi_dma+0xdc>)
 8001fac:	609a      	str	r2, [r3, #8]
 8001fae:	4b30      	ldr	r3, [pc, #192]	; (8002070 <init_spi_dma+0xd8>)
 8001fb0:	4a31      	ldr	r2, [pc, #196]	; (8002078 <init_spi_dma+0xe0>)
 8001fb2:	60da      	str	r2, [r3, #12]
 8001fb4:	4b2e      	ldr	r3, [pc, #184]	; (8002070 <init_spi_dma+0xd8>)
 8001fb6:	2208      	movs	r2, #8
 8001fb8:	605a      	str	r2, [r3, #4]
 8001fba:	4b2d      	ldr	r3, [pc, #180]	; (8002070 <init_spi_dma+0xd8>)
 8001fbc:	4a2c      	ldr	r2, [pc, #176]	; (8002070 <init_spi_dma+0xd8>)
 8001fbe:	6812      	ldr	r2, [r2, #0]
 8001fc0:	f022 6260 	bic.w	r2, r2, #234881024	; 0xe000000
 8001fc4:	601a      	str	r2, [r3, #0]
 8001fc6:	4b2a      	ldr	r3, [pc, #168]	; (8002070 <init_spi_dma+0xd8>)
 8001fc8:	4a29      	ldr	r2, [pc, #164]	; (8002070 <init_spi_dma+0xd8>)
 8001fca:	6812      	ldr	r2, [r2, #0]
 8001fcc:	f022 0220 	bic.w	r2, r2, #32
 8001fd0:	601a      	str	r2, [r3, #0]
 8001fd2:	4b27      	ldr	r3, [pc, #156]	; (8002070 <init_spi_dma+0xd8>)
 8001fd4:	4a26      	ldr	r2, [pc, #152]	; (8002070 <init_spi_dma+0xd8>)
 8001fd6:	6812      	ldr	r2, [r2, #0]
 8001fd8:	f422 3240 	bic.w	r2, r2, #196608	; 0x30000
 8001fdc:	601a      	str	r2, [r3, #0]
 8001fde:	4b24      	ldr	r3, [pc, #144]	; (8002070 <init_spi_dma+0xd8>)
 8001fe0:	4a23      	ldr	r2, [pc, #140]	; (8002070 <init_spi_dma+0xd8>)
 8001fe2:	6812      	ldr	r2, [r2, #0]
 8001fe4:	f022 02c0 	bic.w	r2, r2, #192	; 0xc0
 8001fe8:	601a      	str	r2, [r3, #0]
 8001fea:	4b21      	ldr	r3, [pc, #132]	; (8002070 <init_spi_dma+0xd8>)
 8001fec:	4a20      	ldr	r2, [pc, #128]	; (8002070 <init_spi_dma+0xd8>)
 8001fee:	6812      	ldr	r2, [r2, #0]
 8001ff0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001ff4:	601a      	str	r2, [r3, #0]
 8001ff6:	4b1e      	ldr	r3, [pc, #120]	; (8002070 <init_spi_dma+0xd8>)
 8001ff8:	4a1d      	ldr	r2, [pc, #116]	; (8002070 <init_spi_dma+0xd8>)
 8001ffa:	6812      	ldr	r2, [r2, #0]
 8001ffc:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002000:	601a      	str	r2, [r3, #0]
 8002002:	4b1b      	ldr	r3, [pc, #108]	; (8002070 <init_spi_dma+0xd8>)
 8002004:	4a1a      	ldr	r2, [pc, #104]	; (8002070 <init_spi_dma+0xd8>)
 8002006:	6812      	ldr	r2, [r2, #0]
 8002008:	f022 72c0 	bic.w	r2, r2, #25165824	; 0x1800000
 800200c:	601a      	str	r2, [r3, #0]
 800200e:	4b18      	ldr	r3, [pc, #96]	; (8002070 <init_spi_dma+0xd8>)
 8002010:	4a17      	ldr	r2, [pc, #92]	; (8002070 <init_spi_dma+0xd8>)
 8002012:	6812      	ldr	r2, [r2, #0]
 8002014:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8002018:	601a      	str	r2, [r3, #0]
 800201a:	4b15      	ldr	r3, [pc, #84]	; (8002070 <init_spi_dma+0xd8>)
 800201c:	4a14      	ldr	r2, [pc, #80]	; (8002070 <init_spi_dma+0xd8>)
 800201e:	6812      	ldr	r2, [r2, #0]
 8002020:	f422 42c0 	bic.w	r2, r2, #24576	; 0x6000
 8002024:	601a      	str	r2, [r3, #0]
 8002026:	4b12      	ldr	r3, [pc, #72]	; (8002070 <init_spi_dma+0xd8>)
 8002028:	4a11      	ldr	r2, [pc, #68]	; (8002070 <init_spi_dma+0xd8>)
 800202a:	6812      	ldr	r2, [r2, #0]
 800202c:	f422 52c0 	bic.w	r2, r2, #6144	; 0x1800
 8002030:	601a      	str	r2, [r3, #0]
 8002032:	4b0f      	ldr	r3, [pc, #60]	; (8002070 <init_spi_dma+0xd8>)
 8002034:	4a0e      	ldr	r2, [pc, #56]	; (8002070 <init_spi_dma+0xd8>)
 8002036:	6812      	ldr	r2, [r2, #0]
 8002038:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800203c:	601a      	str	r2, [r3, #0]
 800203e:	4b0c      	ldr	r3, [pc, #48]	; (8002070 <init_spi_dma+0xd8>)
 8002040:	4a0b      	ldr	r2, [pc, #44]	; (8002070 <init_spi_dma+0xd8>)
 8002042:	6812      	ldr	r2, [r2, #0]
 8002044:	f042 0210 	orr.w	r2, r2, #16
 8002048:	601a      	str	r2, [r3, #0]
 800204a:	200f      	movs	r0, #15
 800204c:	f7ff ff8c 	bl	8001f68 <NVIC_EnableIRQ>
 8002050:	4b0a      	ldr	r3, [pc, #40]	; (800207c <init_spi_dma+0xe4>)
 8002052:	4a0a      	ldr	r2, [pc, #40]	; (800207c <init_spi_dma+0xe4>)
 8002054:	68d2      	ldr	r2, [r2, #12]
 8002056:	f042 0220 	orr.w	r2, r2, #32
 800205a:	60da      	str	r2, [r3, #12]
 800205c:	4b04      	ldr	r3, [pc, #16]	; (8002070 <init_spi_dma+0xd8>)
 800205e:	4a04      	ldr	r2, [pc, #16]	; (8002070 <init_spi_dma+0xd8>)
 8002060:	6812      	ldr	r2, [r2, #0]
 8002062:	f042 0201 	orr.w	r2, r2, #1
 8002066:	601a      	str	r2, [r3, #0]
 8002068:	bd80      	pop	{r7, pc}
 800206a:	bf00      	nop
 800206c:	40023800 	.word	0x40023800
 8002070:	40026070 	.word	0x40026070
 8002074:	4000380c 	.word	0x4000380c
 8002078:	20000c7c 	.word	0x20000c7c
 800207c:	40026000 	.word	0x40026000

08002080 <coll_pwm_set>:
 8002080:	b480      	push	{r7}
 8002082:	b083      	sub	sp, #12
 8002084:	af00      	add	r7, sp, #0
 8002086:	4603      	mov	r3, r0
 8002088:	80fb      	strh	r3, [r7, #6]
 800208a:	88fb      	ldrh	r3, [r7, #6]
 800208c:	2bc8      	cmp	r3, #200	; 0xc8
 800208e:	d902      	bls.n	8002096 <coll_pwm_set+0x16>
 8002090:	23c8      	movs	r3, #200	; 0xc8
 8002092:	80fb      	strh	r3, [r7, #6]
 8002094:	bf00      	nop
 8002096:	4b04      	ldr	r3, [pc, #16]	; (80020a8 <coll_pwm_set+0x28>)
 8002098:	88fa      	ldrh	r2, [r7, #6]
 800209a:	641a      	str	r2, [r3, #64]	; 0x40
 800209c:	370c      	adds	r7, #12
 800209e:	46bd      	mov	sp, r7
 80020a0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020a4:	4770      	bx	lr
 80020a6:	bf00      	nop
 80020a8:	40000400 	.word	0x40000400

080020ac <ind_pwm_init>:
 80020ac:	b580      	push	{r7, lr}
 80020ae:	af00      	add	r7, sp, #0
 80020b0:	4b45      	ldr	r3, [pc, #276]	; (80021c8 <ind_pwm_init+0x11c>)
 80020b2:	4a45      	ldr	r2, [pc, #276]	; (80021c8 <ind_pwm_init+0x11c>)
 80020b4:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80020b6:	f042 0202 	orr.w	r2, r2, #2
 80020ba:	641a      	str	r2, [r3, #64]	; 0x40
 80020bc:	4b43      	ldr	r3, [pc, #268]	; (80021cc <ind_pwm_init+0x120>)
 80020be:	f240 12a3 	movw	r2, #419	; 0x1a3
 80020c2:	851a      	strh	r2, [r3, #40]	; 0x28
 80020c4:	4b41      	ldr	r3, [pc, #260]	; (80021cc <ind_pwm_init+0x120>)
 80020c6:	2263      	movs	r2, #99	; 0x63
 80020c8:	62da      	str	r2, [r3, #44]	; 0x2c
 80020ca:	4b40      	ldr	r3, [pc, #256]	; (80021cc <ind_pwm_init+0x120>)
 80020cc:	225a      	movs	r2, #90	; 0x5a
 80020ce:	63da      	str	r2, [r3, #60]	; 0x3c
 80020d0:	4b3e      	ldr	r3, [pc, #248]	; (80021cc <ind_pwm_init+0x120>)
 80020d2:	2264      	movs	r2, #100	; 0x64
 80020d4:	641a      	str	r2, [r3, #64]	; 0x40
 80020d6:	4b3d      	ldr	r3, [pc, #244]	; (80021cc <ind_pwm_init+0x120>)
 80020d8:	4a3c      	ldr	r2, [pc, #240]	; (80021cc <ind_pwm_init+0x120>)
 80020da:	8992      	ldrh	r2, [r2, #12]
 80020dc:	b292      	uxth	r2, r2
 80020de:	f042 0201 	orr.w	r2, r2, #1
 80020e2:	b292      	uxth	r2, r2
 80020e4:	819a      	strh	r2, [r3, #12]
 80020e6:	201d      	movs	r0, #29
 80020e8:	f7ff ff3e 	bl	8001f68 <NVIC_EnableIRQ>
 80020ec:	4b37      	ldr	r3, [pc, #220]	; (80021cc <ind_pwm_init+0x120>)
 80020ee:	2200      	movs	r2, #0
 80020f0:	839a      	strh	r2, [r3, #28]
 80020f2:	4b36      	ldr	r3, [pc, #216]	; (80021cc <ind_pwm_init+0x120>)
 80020f4:	4a35      	ldr	r2, [pc, #212]	; (80021cc <ind_pwm_init+0x120>)
 80020f6:	8b92      	ldrh	r2, [r2, #28]
 80020f8:	b292      	uxth	r2, r2
 80020fa:	f042 0268 	orr.w	r2, r2, #104	; 0x68
 80020fe:	b292      	uxth	r2, r2
 8002100:	839a      	strh	r2, [r3, #28]
 8002102:	4b32      	ldr	r3, [pc, #200]	; (80021cc <ind_pwm_init+0x120>)
 8002104:	4a31      	ldr	r2, [pc, #196]	; (80021cc <ind_pwm_init+0x120>)
 8002106:	8c12      	ldrh	r2, [r2, #32]
 8002108:	b292      	uxth	r2, r2
 800210a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800210e:	b292      	uxth	r2, r2
 8002110:	841a      	strh	r2, [r3, #32]
 8002112:	4b2e      	ldr	r3, [pc, #184]	; (80021cc <ind_pwm_init+0x120>)
 8002114:	4a2d      	ldr	r2, [pc, #180]	; (80021cc <ind_pwm_init+0x120>)
 8002116:	8b92      	ldrh	r2, [r2, #28]
 8002118:	b292      	uxth	r2, r2
 800211a:	f442 42d0 	orr.w	r2, r2, #26624	; 0x6800
 800211e:	b292      	uxth	r2, r2
 8002120:	839a      	strh	r2, [r3, #28]
 8002122:	4b2a      	ldr	r3, [pc, #168]	; (80021cc <ind_pwm_init+0x120>)
 8002124:	4a29      	ldr	r2, [pc, #164]	; (80021cc <ind_pwm_init+0x120>)
 8002126:	8c12      	ldrh	r2, [r2, #32]
 8002128:	b292      	uxth	r2, r2
 800212a:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 800212e:	b292      	uxth	r2, r2
 8002130:	841a      	strh	r2, [r3, #32]
 8002132:	4b26      	ldr	r3, [pc, #152]	; (80021cc <ind_pwm_init+0x120>)
 8002134:	4a25      	ldr	r2, [pc, #148]	; (80021cc <ind_pwm_init+0x120>)
 8002136:	8812      	ldrh	r2, [r2, #0]
 8002138:	b292      	uxth	r2, r2
 800213a:	f042 0201 	orr.w	r2, r2, #1
 800213e:	b292      	uxth	r2, r2
 8002140:	801a      	strh	r2, [r3, #0]
 8002142:	4b21      	ldr	r3, [pc, #132]	; (80021c8 <ind_pwm_init+0x11c>)
 8002144:	4a20      	ldr	r2, [pc, #128]	; (80021c8 <ind_pwm_init+0x11c>)
 8002146:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002148:	f042 0202 	orr.w	r2, r2, #2
 800214c:	631a      	str	r2, [r3, #48]	; 0x30
 800214e:	4b20      	ldr	r3, [pc, #128]	; (80021d0 <ind_pwm_init+0x124>)
 8002150:	4a1f      	ldr	r2, [pc, #124]	; (80021d0 <ind_pwm_init+0x124>)
 8002152:	6812      	ldr	r2, [r2, #0]
 8002154:	f022 0203 	bic.w	r2, r2, #3
 8002158:	601a      	str	r2, [r3, #0]
 800215a:	4b1d      	ldr	r3, [pc, #116]	; (80021d0 <ind_pwm_init+0x124>)
 800215c:	4a1c      	ldr	r2, [pc, #112]	; (80021d0 <ind_pwm_init+0x124>)
 800215e:	6812      	ldr	r2, [r2, #0]
 8002160:	f042 0202 	orr.w	r2, r2, #2
 8002164:	601a      	str	r2, [r3, #0]
 8002166:	4b1a      	ldr	r3, [pc, #104]	; (80021d0 <ind_pwm_init+0x124>)
 8002168:	4a19      	ldr	r2, [pc, #100]	; (80021d0 <ind_pwm_init+0x124>)
 800216a:	6892      	ldr	r2, [r2, #8]
 800216c:	f042 0203 	orr.w	r2, r2, #3
 8002170:	609a      	str	r2, [r3, #8]
 8002172:	4b17      	ldr	r3, [pc, #92]	; (80021d0 <ind_pwm_init+0x124>)
 8002174:	4a16      	ldr	r2, [pc, #88]	; (80021d0 <ind_pwm_init+0x124>)
 8002176:	6a12      	ldr	r2, [r2, #32]
 8002178:	f022 020f 	bic.w	r2, r2, #15
 800217c:	621a      	str	r2, [r3, #32]
 800217e:	4b14      	ldr	r3, [pc, #80]	; (80021d0 <ind_pwm_init+0x124>)
 8002180:	4a13      	ldr	r2, [pc, #76]	; (80021d0 <ind_pwm_init+0x124>)
 8002182:	6a12      	ldr	r2, [r2, #32]
 8002184:	f042 0202 	orr.w	r2, r2, #2
 8002188:	621a      	str	r2, [r3, #32]
 800218a:	4b11      	ldr	r3, [pc, #68]	; (80021d0 <ind_pwm_init+0x124>)
 800218c:	4a10      	ldr	r2, [pc, #64]	; (80021d0 <ind_pwm_init+0x124>)
 800218e:	6812      	ldr	r2, [r2, #0]
 8002190:	f022 020c 	bic.w	r2, r2, #12
 8002194:	601a      	str	r2, [r3, #0]
 8002196:	4b0e      	ldr	r3, [pc, #56]	; (80021d0 <ind_pwm_init+0x124>)
 8002198:	4a0d      	ldr	r2, [pc, #52]	; (80021d0 <ind_pwm_init+0x124>)
 800219a:	6812      	ldr	r2, [r2, #0]
 800219c:	f042 0208 	orr.w	r2, r2, #8
 80021a0:	601a      	str	r2, [r3, #0]
 80021a2:	4b0b      	ldr	r3, [pc, #44]	; (80021d0 <ind_pwm_init+0x124>)
 80021a4:	4a0a      	ldr	r2, [pc, #40]	; (80021d0 <ind_pwm_init+0x124>)
 80021a6:	6892      	ldr	r2, [r2, #8]
 80021a8:	f042 020c 	orr.w	r2, r2, #12
 80021ac:	609a      	str	r2, [r3, #8]
 80021ae:	4b08      	ldr	r3, [pc, #32]	; (80021d0 <ind_pwm_init+0x124>)
 80021b0:	4a07      	ldr	r2, [pc, #28]	; (80021d0 <ind_pwm_init+0x124>)
 80021b2:	6a12      	ldr	r2, [r2, #32]
 80021b4:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 80021b8:	621a      	str	r2, [r3, #32]
 80021ba:	4b05      	ldr	r3, [pc, #20]	; (80021d0 <ind_pwm_init+0x124>)
 80021bc:	4a04      	ldr	r2, [pc, #16]	; (80021d0 <ind_pwm_init+0x124>)
 80021be:	6a12      	ldr	r2, [r2, #32]
 80021c0:	f042 0220 	orr.w	r2, r2, #32
 80021c4:	621a      	str	r2, [r3, #32]
 80021c6:	bd80      	pop	{r7, pc}
 80021c8:	40023800 	.word	0x40023800
 80021cc:	40000400 	.word	0x40000400
 80021d0:	40020400 	.word	0x40020400

080021d4 <spi_master_init>:
 80021d4:	b580      	push	{r7, lr}
 80021d6:	af00      	add	r7, sp, #0
 80021d8:	4b57      	ldr	r3, [pc, #348]	; (8002338 <spi_master_init+0x164>)
 80021da:	4a57      	ldr	r2, [pc, #348]	; (8002338 <spi_master_init+0x164>)
 80021dc:	6c12      	ldr	r2, [r2, #64]	; 0x40
 80021de:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 80021e2:	641a      	str	r2, [r3, #64]	; 0x40
 80021e4:	4b54      	ldr	r3, [pc, #336]	; (8002338 <spi_master_init+0x164>)
 80021e6:	4a54      	ldr	r2, [pc, #336]	; (8002338 <spi_master_init+0x164>)
 80021e8:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80021ea:	f042 0202 	orr.w	r2, r2, #2
 80021ee:	631a      	str	r2, [r3, #48]	; 0x30
 80021f0:	4a52      	ldr	r2, [pc, #328]	; (800233c <spi_master_init+0x168>)
 80021f2:	4b52      	ldr	r3, [pc, #328]	; (800233c <spi_master_init+0x168>)
 80021f4:	681b      	ldr	r3, [r3, #0]
 80021f6:	f023 4343 	bic.w	r3, r3, #3271557120	; 0xc3000000
 80021fa:	f423 1340 	bic.w	r3, r3, #3145728	; 0x300000
 80021fe:	6013      	str	r3, [r2, #0]
 8002200:	4a4e      	ldr	r2, [pc, #312]	; (800233c <spi_master_init+0x168>)
 8002202:	4b4e      	ldr	r3, [pc, #312]	; (800233c <spi_master_init+0x168>)
 8002204:	681b      	ldr	r3, [r3, #0]
 8002206:	f043 4302 	orr.w	r3, r3, #2181038080	; 0x82000000
 800220a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800220e:	6013      	str	r3, [r2, #0]
 8002210:	4a4a      	ldr	r2, [pc, #296]	; (800233c <spi_master_init+0x168>)
 8002212:	4b4a      	ldr	r3, [pc, #296]	; (800233c <spi_master_init+0x168>)
 8002214:	689b      	ldr	r3, [r3, #8]
 8002216:	f043 4343 	orr.w	r3, r3, #3271557120	; 0xc3000000
 800221a:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 800221e:	6093      	str	r3, [r2, #8]
 8002220:	4b46      	ldr	r3, [pc, #280]	; (800233c <spi_master_init+0x168>)
 8002222:	4a46      	ldr	r2, [pc, #280]	; (800233c <spi_master_init+0x168>)
 8002224:	6812      	ldr	r2, [r2, #0]
 8002226:	f022 7240 	bic.w	r2, r2, #50331648	; 0x3000000
 800222a:	601a      	str	r2, [r3, #0]
 800222c:	4b43      	ldr	r3, [pc, #268]	; (800233c <spi_master_init+0x168>)
 800222e:	4a43      	ldr	r2, [pc, #268]	; (800233c <spi_master_init+0x168>)
 8002230:	6812      	ldr	r2, [r2, #0]
 8002232:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002236:	601a      	str	r2, [r3, #0]
 8002238:	4b40      	ldr	r3, [pc, #256]	; (800233c <spi_master_init+0x168>)
 800223a:	4a40      	ldr	r2, [pc, #256]	; (800233c <spi_master_init+0x168>)
 800223c:	6952      	ldr	r2, [r2, #20]
 800223e:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8002242:	615a      	str	r2, [r3, #20]
 8002244:	4b3d      	ldr	r3, [pc, #244]	; (800233c <spi_master_init+0x168>)
 8002246:	4a3d      	ldr	r2, [pc, #244]	; (800233c <spi_master_init+0x168>)
 8002248:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800224a:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 800224e:	625a      	str	r2, [r3, #36]	; 0x24
 8002250:	4b3a      	ldr	r3, [pc, #232]	; (800233c <spi_master_init+0x168>)
 8002252:	4a3a      	ldr	r2, [pc, #232]	; (800233c <spi_master_init+0x168>)
 8002254:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002256:	f442 62a0 	orr.w	r2, r2, #1280	; 0x500
 800225a:	625a      	str	r2, [r3, #36]	; 0x24
 800225c:	4b37      	ldr	r3, [pc, #220]	; (800233c <spi_master_init+0x168>)
 800225e:	4a37      	ldr	r2, [pc, #220]	; (800233c <spi_master_init+0x168>)
 8002260:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002262:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 8002266:	625a      	str	r2, [r3, #36]	; 0x24
 8002268:	4b34      	ldr	r3, [pc, #208]	; (800233c <spi_master_init+0x168>)
 800226a:	4a34      	ldr	r2, [pc, #208]	; (800233c <spi_master_init+0x168>)
 800226c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800226e:	f042 42a0 	orr.w	r2, r2, #1342177280	; 0x50000000
 8002272:	625a      	str	r2, [r3, #36]	; 0x24
 8002274:	4b31      	ldr	r3, [pc, #196]	; (800233c <spi_master_init+0x168>)
 8002276:	4a31      	ldr	r2, [pc, #196]	; (800233c <spi_master_init+0x168>)
 8002278:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800227a:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 800227e:	625a      	str	r2, [r3, #36]	; 0x24
 8002280:	4b2e      	ldr	r3, [pc, #184]	; (800233c <spi_master_init+0x168>)
 8002282:	4a2e      	ldr	r2, [pc, #184]	; (800233c <spi_master_init+0x168>)
 8002284:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8002286:	f442 22a0 	orr.w	r2, r2, #327680	; 0x50000
 800228a:	625a      	str	r2, [r3, #36]	; 0x24
 800228c:	4b2c      	ldr	r3, [pc, #176]	; (8002340 <spi_master_init+0x16c>)
 800228e:	4a2c      	ldr	r2, [pc, #176]	; (8002340 <spi_master_init+0x16c>)
 8002290:	8812      	ldrh	r2, [r2, #0]
 8002292:	b292      	uxth	r2, r2
 8002294:	f022 0238 	bic.w	r2, r2, #56	; 0x38
 8002298:	b292      	uxth	r2, r2
 800229a:	801a      	strh	r2, [r3, #0]
 800229c:	4b28      	ldr	r3, [pc, #160]	; (8002340 <spi_master_init+0x16c>)
 800229e:	4a28      	ldr	r2, [pc, #160]	; (8002340 <spi_master_init+0x16c>)
 80022a0:	8812      	ldrh	r2, [r2, #0]
 80022a2:	b292      	uxth	r2, r2
 80022a4:	f042 0220 	orr.w	r2, r2, #32
 80022a8:	b292      	uxth	r2, r2
 80022aa:	801a      	strh	r2, [r3, #0]
 80022ac:	4b24      	ldr	r3, [pc, #144]	; (8002340 <spi_master_init+0x16c>)
 80022ae:	4a24      	ldr	r2, [pc, #144]	; (8002340 <spi_master_init+0x16c>)
 80022b0:	8812      	ldrh	r2, [r2, #0]
 80022b2:	b292      	uxth	r2, r2
 80022b4:	f022 0203 	bic.w	r2, r2, #3
 80022b8:	b292      	uxth	r2, r2
 80022ba:	801a      	strh	r2, [r3, #0]
 80022bc:	4b20      	ldr	r3, [pc, #128]	; (8002340 <spi_master_init+0x16c>)
 80022be:	4a20      	ldr	r2, [pc, #128]	; (8002340 <spi_master_init+0x16c>)
 80022c0:	8812      	ldrh	r2, [r2, #0]
 80022c2:	b292      	uxth	r2, r2
 80022c4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80022c8:	b292      	uxth	r2, r2
 80022ca:	801a      	strh	r2, [r3, #0]
 80022cc:	4b1c      	ldr	r3, [pc, #112]	; (8002340 <spi_master_init+0x16c>)
 80022ce:	4a1c      	ldr	r2, [pc, #112]	; (8002340 <spi_master_init+0x16c>)
 80022d0:	8812      	ldrh	r2, [r2, #0]
 80022d2:	b292      	uxth	r2, r2
 80022d4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80022d8:	b292      	uxth	r2, r2
 80022da:	801a      	strh	r2, [r3, #0]
 80022dc:	4b18      	ldr	r3, [pc, #96]	; (8002340 <spi_master_init+0x16c>)
 80022de:	4a18      	ldr	r2, [pc, #96]	; (8002340 <spi_master_init+0x16c>)
 80022e0:	8812      	ldrh	r2, [r2, #0]
 80022e2:	b292      	uxth	r2, r2
 80022e4:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 80022e8:	b292      	uxth	r2, r2
 80022ea:	801a      	strh	r2, [r3, #0]
 80022ec:	4b14      	ldr	r3, [pc, #80]	; (8002340 <spi_master_init+0x16c>)
 80022ee:	4a14      	ldr	r2, [pc, #80]	; (8002340 <spi_master_init+0x16c>)
 80022f0:	8892      	ldrh	r2, [r2, #4]
 80022f2:	b292      	uxth	r2, r2
 80022f4:	f042 0204 	orr.w	r2, r2, #4
 80022f8:	b292      	uxth	r2, r2
 80022fa:	809a      	strh	r2, [r3, #4]
 80022fc:	4b10      	ldr	r3, [pc, #64]	; (8002340 <spi_master_init+0x16c>)
 80022fe:	4a10      	ldr	r2, [pc, #64]	; (8002340 <spi_master_init+0x16c>)
 8002300:	8812      	ldrh	r2, [r2, #0]
 8002302:	b292      	uxth	r2, r2
 8002304:	f042 0204 	orr.w	r2, r2, #4
 8002308:	b292      	uxth	r2, r2
 800230a:	801a      	strh	r2, [r3, #0]
 800230c:	f7ff fe44 	bl	8001f98 <init_spi_dma>
 8002310:	4b0b      	ldr	r3, [pc, #44]	; (8002340 <spi_master_init+0x16c>)
 8002312:	4a0b      	ldr	r2, [pc, #44]	; (8002340 <spi_master_init+0x16c>)
 8002314:	8892      	ldrh	r2, [r2, #4]
 8002316:	b292      	uxth	r2, r2
 8002318:	f042 0202 	orr.w	r2, r2, #2
 800231c:	b292      	uxth	r2, r2
 800231e:	809a      	strh	r2, [r3, #4]
 8002320:	4b07      	ldr	r3, [pc, #28]	; (8002340 <spi_master_init+0x16c>)
 8002322:	4a07      	ldr	r2, [pc, #28]	; (8002340 <spi_master_init+0x16c>)
 8002324:	8812      	ldrh	r2, [r2, #0]
 8002326:	b292      	uxth	r2, r2
 8002328:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800232c:	b292      	uxth	r2, r2
 800232e:	801a      	strh	r2, [r3, #0]
 8002330:	f7ff febc 	bl	80020ac <ind_pwm_init>
 8002334:	bd80      	pop	{r7, pc}
 8002336:	bf00      	nop
 8002338:	40023800 	.word	0x40023800
 800233c:	40020400 	.word	0x40020400
 8002340:	40003800 	.word	0x40003800

08002344 <spi_slave_init>:
 8002344:	b580      	push	{r7, lr}
 8002346:	af00      	add	r7, sp, #0
 8002348:	4b21      	ldr	r3, [pc, #132]	; (80023d0 <spi_slave_init+0x8c>)
 800234a:	4a21      	ldr	r2, [pc, #132]	; (80023d0 <spi_slave_init+0x8c>)
 800234c:	8812      	ldrh	r2, [r2, #0]
 800234e:	b292      	uxth	r2, r2
 8002350:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8002354:	b292      	uxth	r2, r2
 8002356:	801a      	strh	r2, [r3, #0]
 8002358:	4b1d      	ldr	r3, [pc, #116]	; (80023d0 <spi_slave_init+0x8c>)
 800235a:	4a1d      	ldr	r2, [pc, #116]	; (80023d0 <spi_slave_init+0x8c>)
 800235c:	8812      	ldrh	r2, [r2, #0]
 800235e:	b292      	uxth	r2, r2
 8002360:	f022 0203 	bic.w	r2, r2, #3
 8002364:	b292      	uxth	r2, r2
 8002366:	801a      	strh	r2, [r3, #0]
 8002368:	4b19      	ldr	r3, [pc, #100]	; (80023d0 <spi_slave_init+0x8c>)
 800236a:	4a19      	ldr	r2, [pc, #100]	; (80023d0 <spi_slave_init+0x8c>)
 800236c:	8812      	ldrh	r2, [r2, #0]
 800236e:	b292      	uxth	r2, r2
 8002370:	f042 0201 	orr.w	r2, r2, #1
 8002374:	b292      	uxth	r2, r2
 8002376:	801a      	strh	r2, [r3, #0]
 8002378:	4b15      	ldr	r3, [pc, #84]	; (80023d0 <spi_slave_init+0x8c>)
 800237a:	4a15      	ldr	r2, [pc, #84]	; (80023d0 <spi_slave_init+0x8c>)
 800237c:	8812      	ldrh	r2, [r2, #0]
 800237e:	b292      	uxth	r2, r2
 8002380:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002384:	b292      	uxth	r2, r2
 8002386:	801a      	strh	r2, [r3, #0]
 8002388:	4b11      	ldr	r3, [pc, #68]	; (80023d0 <spi_slave_init+0x8c>)
 800238a:	4a11      	ldr	r2, [pc, #68]	; (80023d0 <spi_slave_init+0x8c>)
 800238c:	8812      	ldrh	r2, [r2, #0]
 800238e:	b292      	uxth	r2, r2
 8002390:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8002394:	b292      	uxth	r2, r2
 8002396:	801a      	strh	r2, [r3, #0]
 8002398:	4b0d      	ldr	r3, [pc, #52]	; (80023d0 <spi_slave_init+0x8c>)
 800239a:	4a0d      	ldr	r2, [pc, #52]	; (80023d0 <spi_slave_init+0x8c>)
 800239c:	8892      	ldrh	r2, [r2, #4]
 800239e:	b292      	uxth	r2, r2
 80023a0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80023a4:	b292      	uxth	r2, r2
 80023a6:	809a      	strh	r2, [r3, #4]
 80023a8:	4b09      	ldr	r3, [pc, #36]	; (80023d0 <spi_slave_init+0x8c>)
 80023aa:	4a09      	ldr	r2, [pc, #36]	; (80023d0 <spi_slave_init+0x8c>)
 80023ac:	8812      	ldrh	r2, [r2, #0]
 80023ae:	b292      	uxth	r2, r2
 80023b0:	f022 0204 	bic.w	r2, r2, #4
 80023b4:	b292      	uxth	r2, r2
 80023b6:	801a      	strh	r2, [r3, #0]
 80023b8:	2023      	movs	r0, #35	; 0x23
 80023ba:	f7ff fdd5 	bl	8001f68 <NVIC_EnableIRQ>
 80023be:	4b04      	ldr	r3, [pc, #16]	; (80023d0 <spi_slave_init+0x8c>)
 80023c0:	4a03      	ldr	r2, [pc, #12]	; (80023d0 <spi_slave_init+0x8c>)
 80023c2:	8812      	ldrh	r2, [r2, #0]
 80023c4:	b292      	uxth	r2, r2
 80023c6:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80023ca:	b292      	uxth	r2, r2
 80023cc:	801a      	strh	r2, [r3, #0]
 80023ce:	bd80      	pop	{r7, pc}
 80023d0:	40013000 	.word	0x40013000

080023d4 <spi_write_read>:
 80023d4:	b480      	push	{r7}
 80023d6:	b087      	sub	sp, #28
 80023d8:	af00      	add	r7, sp, #0
 80023da:	60f8      	str	r0, [r7, #12]
 80023dc:	60b9      	str	r1, [r7, #8]
 80023de:	4613      	mov	r3, r2
 80023e0:	80fb      	strh	r3, [r7, #6]
 80023e2:	2300      	movs	r3, #0
 80023e4:	617b      	str	r3, [r7, #20]
 80023e6:	4a2a      	ldr	r2, [pc, #168]	; (8002490 <spi_write_read+0xbc>)
 80023e8:	697b      	ldr	r3, [r7, #20]
 80023ea:	1c59      	adds	r1, r3, #1
 80023ec:	6179      	str	r1, [r7, #20]
 80023ee:	68f9      	ldr	r1, [r7, #12]
 80023f0:	440b      	add	r3, r1
 80023f2:	781b      	ldrb	r3, [r3, #0]
 80023f4:	8193      	strh	r3, [r2, #12]
 80023f6:	e021      	b.n	800243c <spi_write_read+0x68>
 80023f8:	bf00      	nop
 80023fa:	4b25      	ldr	r3, [pc, #148]	; (8002490 <spi_write_read+0xbc>)
 80023fc:	891b      	ldrh	r3, [r3, #8]
 80023fe:	b29b      	uxth	r3, r3
 8002400:	f003 0302 	and.w	r3, r3, #2
 8002404:	2b00      	cmp	r3, #0
 8002406:	d0f8      	beq.n	80023fa <spi_write_read+0x26>
 8002408:	4b21      	ldr	r3, [pc, #132]	; (8002490 <spi_write_read+0xbc>)
 800240a:	697a      	ldr	r2, [r7, #20]
 800240c:	68f9      	ldr	r1, [r7, #12]
 800240e:	440a      	add	r2, r1
 8002410:	7812      	ldrb	r2, [r2, #0]
 8002412:	819a      	strh	r2, [r3, #12]
 8002414:	bf00      	nop
 8002416:	4b1e      	ldr	r3, [pc, #120]	; (8002490 <spi_write_read+0xbc>)
 8002418:	891b      	ldrh	r3, [r3, #8]
 800241a:	b29b      	uxth	r3, r3
 800241c:	f003 0301 	and.w	r3, r3, #1
 8002420:	2b00      	cmp	r3, #0
 8002422:	d0f8      	beq.n	8002416 <spi_write_read+0x42>
 8002424:	697b      	ldr	r3, [r7, #20]
 8002426:	3b01      	subs	r3, #1
 8002428:	68ba      	ldr	r2, [r7, #8]
 800242a:	4413      	add	r3, r2
 800242c:	4a18      	ldr	r2, [pc, #96]	; (8002490 <spi_write_read+0xbc>)
 800242e:	8992      	ldrh	r2, [r2, #12]
 8002430:	b292      	uxth	r2, r2
 8002432:	b2d2      	uxtb	r2, r2
 8002434:	701a      	strb	r2, [r3, #0]
 8002436:	697b      	ldr	r3, [r7, #20]
 8002438:	3301      	adds	r3, #1
 800243a:	617b      	str	r3, [r7, #20]
 800243c:	88fa      	ldrh	r2, [r7, #6]
 800243e:	697b      	ldr	r3, [r7, #20]
 8002440:	429a      	cmp	r2, r3
 8002442:	dcd9      	bgt.n	80023f8 <spi_write_read+0x24>
 8002444:	bf00      	nop
 8002446:	4b12      	ldr	r3, [pc, #72]	; (8002490 <spi_write_read+0xbc>)
 8002448:	891b      	ldrh	r3, [r3, #8]
 800244a:	b29b      	uxth	r3, r3
 800244c:	f003 0301 	and.w	r3, r3, #1
 8002450:	2b00      	cmp	r3, #0
 8002452:	d0f8      	beq.n	8002446 <spi_write_read+0x72>
 8002454:	88fb      	ldrh	r3, [r7, #6]
 8002456:	3b01      	subs	r3, #1
 8002458:	68ba      	ldr	r2, [r7, #8]
 800245a:	4413      	add	r3, r2
 800245c:	4a0c      	ldr	r2, [pc, #48]	; (8002490 <spi_write_read+0xbc>)
 800245e:	8992      	ldrh	r2, [r2, #12]
 8002460:	b292      	uxth	r2, r2
 8002462:	b2d2      	uxtb	r2, r2
 8002464:	701a      	strb	r2, [r3, #0]
 8002466:	bf00      	nop
 8002468:	4b09      	ldr	r3, [pc, #36]	; (8002490 <spi_write_read+0xbc>)
 800246a:	891b      	ldrh	r3, [r3, #8]
 800246c:	b29b      	uxth	r3, r3
 800246e:	f003 0302 	and.w	r3, r3, #2
 8002472:	2b00      	cmp	r3, #0
 8002474:	d0f8      	beq.n	8002468 <spi_write_read+0x94>
 8002476:	bf00      	nop
 8002478:	4b05      	ldr	r3, [pc, #20]	; (8002490 <spi_write_read+0xbc>)
 800247a:	891b      	ldrh	r3, [r3, #8]
 800247c:	b29b      	uxth	r3, r3
 800247e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002482:	2b00      	cmp	r3, #0
 8002484:	d1f8      	bne.n	8002478 <spi_write_read+0xa4>
 8002486:	371c      	adds	r7, #28
 8002488:	46bd      	mov	sp, r7
 800248a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800248e:	4770      	bx	lr
 8002490:	40003800 	.word	0x40003800

08002494 <SPI1_IRQHandler>:
 8002494:	b480      	push	{r7}
 8002496:	af00      	add	r7, sp, #0
 8002498:	4b0a      	ldr	r3, [pc, #40]	; (80024c4 <SPI1_IRQHandler+0x30>)
 800249a:	891b      	ldrh	r3, [r3, #8]
 800249c:	b29b      	uxth	r3, r3
 800249e:	f003 0301 	and.w	r3, r3, #1
 80024a2:	2b00      	cmp	r3, #0
 80024a4:	d008      	beq.n	80024b8 <SPI1_IRQHandler+0x24>
 80024a6:	4b08      	ldr	r3, [pc, #32]	; (80024c8 <SPI1_IRQHandler+0x34>)
 80024a8:	2201      	movs	r2, #1
 80024aa:	601a      	str	r2, [r3, #0]
 80024ac:	4b05      	ldr	r3, [pc, #20]	; (80024c4 <SPI1_IRQHandler+0x30>)
 80024ae:	899b      	ldrh	r3, [r3, #12]
 80024b0:	b29b      	uxth	r3, r3
 80024b2:	b2da      	uxtb	r2, r3
 80024b4:	4b05      	ldr	r3, [pc, #20]	; (80024cc <SPI1_IRQHandler+0x38>)
 80024b6:	701a      	strb	r2, [r3, #0]
 80024b8:	4b02      	ldr	r3, [pc, #8]	; (80024c4 <SPI1_IRQHandler+0x30>)
 80024ba:	891b      	ldrh	r3, [r3, #8]
 80024bc:	46bd      	mov	sp, r7
 80024be:	f85d 7b04 	ldr.w	r7, [sp], #4
 80024c2:	4770      	bx	lr
 80024c4:	40013000 	.word	0x40013000
 80024c8:	20000c84 	.word	0x20000c84
 80024cc:	20000c88 	.word	0x20000c88

080024d0 <check_current>:
 80024d0:	b480      	push	{r7}
 80024d2:	af00      	add	r7, sp, #0
 80024d4:	4b0e      	ldr	r3, [pc, #56]	; (8002510 <check_current+0x40>)
 80024d6:	681b      	ldr	r3, [r3, #0]
 80024d8:	129b      	asrs	r3, r3, #10
 80024da:	4a0e      	ldr	r2, [pc, #56]	; (8002514 <check_current+0x44>)
 80024dc:	fb02 f203 	mul.w	r2, r2, r3
 80024e0:	4b0d      	ldr	r3, [pc, #52]	; (8002518 <check_current+0x48>)
 80024e2:	4413      	add	r3, r2
 80024e4:	f503 5300 	add.w	r3, r3, #8192	; 0x2000
 80024e8:	139a      	asrs	r2, r3, #14
 80024ea:	4b0c      	ldr	r3, [pc, #48]	; (800251c <check_current+0x4c>)
 80024ec:	601a      	str	r2, [r3, #0]
 80024ee:	4b0b      	ldr	r3, [pc, #44]	; (800251c <check_current+0x4c>)
 80024f0:	681b      	ldr	r3, [r3, #0]
 80024f2:	2b00      	cmp	r3, #0
 80024f4:	da02      	bge.n	80024fc <check_current+0x2c>
 80024f6:	4b09      	ldr	r3, [pc, #36]	; (800251c <check_current+0x4c>)
 80024f8:	2200      	movs	r2, #0
 80024fa:	601a      	str	r2, [r3, #0]
 80024fc:	4b07      	ldr	r3, [pc, #28]	; (800251c <check_current+0x4c>)
 80024fe:	681b      	ldr	r3, [r3, #0]
 8002500:	b29a      	uxth	r2, r3
 8002502:	4b07      	ldr	r3, [pc, #28]	; (8002520 <check_current+0x50>)
 8002504:	819a      	strh	r2, [r3, #12]
 8002506:	46bd      	mov	sp, r7
 8002508:	f85d 7b04 	ldr.w	r7, [sp], #4
 800250c:	4770      	bx	lr
 800250e:	bf00      	nop
 8002510:	20001ca4 	.word	0x20001ca4
 8002514:	0001d7c4 	.word	0x0001d7c4
 8002518:	0003f74d 	.word	0x0003f74d
 800251c:	2000022c 	.word	0x2000022c
 8002520:	20000a58 	.word	0x20000a58

08002524 <set_refcurrent>:
 8002524:	b490      	push	{r4, r7}
 8002526:	b084      	sub	sp, #16
 8002528:	af00      	add	r7, sp, #0
 800252a:	6078      	str	r0, [r7, #4]
 800252c:	4b1e      	ldr	r3, [pc, #120]	; (80025a8 <set_refcurrent+0x84>)
 800252e:	681b      	ldr	r3, [r3, #0]
 8002530:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8002534:	0c9b      	lsrs	r3, r3, #18
 8002536:	1d5a      	adds	r2, r3, #5
 8002538:	4b1c      	ldr	r3, [pc, #112]	; (80025ac <set_refcurrent+0x88>)
 800253a:	fba3 1302 	umull	r1, r3, r3, r2
 800253e:	08dc      	lsrs	r4, r3, #3
 8002540:	f240 2356 	movw	r3, #598	; 0x256
 8002544:	429c      	cmp	r4, r3
 8002546:	d902      	bls.n	800254e <set_refcurrent+0x2a>
 8002548:	f240 2457 	movw	r4, #599	; 0x257
 800254c:	bf00      	nop
 800254e:	4b18      	ldr	r3, [pc, #96]	; (80025b0 <set_refcurrent+0x8c>)
 8002550:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002554:	4b17      	ldr	r3, [pc, #92]	; (80025b4 <set_refcurrent+0x90>)
 8002556:	681b      	ldr	r3, [r3, #0]
 8002558:	f1c3 0396 	rsb	r3, r3, #150	; 0x96
 800255c:	fb04 f203 	mul.w	r2, r4, r3
 8002560:	4b15      	ldr	r3, [pc, #84]	; (80025b8 <set_refcurrent+0x94>)
 8002562:	fba3 1302 	umull	r1, r3, r3, r2
 8002566:	08dc      	lsrs	r4, r3, #3
 8002568:	687b      	ldr	r3, [r7, #4]
 800256a:	42a3      	cmp	r3, r4
 800256c:	d904      	bls.n	8002578 <set_refcurrent+0x54>
 800256e:	607c      	str	r4, [r7, #4]
 8002570:	687b      	ldr	r3, [r7, #4]
 8002572:	2b00      	cmp	r3, #0
 8002574:	d000      	beq.n	8002578 <set_refcurrent+0x54>
 8002576:	bf00      	nop
 8002578:	4b10      	ldr	r3, [pc, #64]	; (80025bc <set_refcurrent+0x98>)
 800257a:	601c      	str	r4, [r3, #0]
 800257c:	4b10      	ldr	r3, [pc, #64]	; (80025c0 <set_refcurrent+0x9c>)
 800257e:	687a      	ldr	r2, [r7, #4]
 8002580:	fb02 f203 	mul.w	r2, r2, r3
 8002584:	4b0f      	ldr	r3, [pc, #60]	; (80025c4 <set_refcurrent+0xa0>)
 8002586:	4413      	add	r3, r2
 8002588:	60fb      	str	r3, [r7, #12]
 800258a:	68fb      	ldr	r3, [r7, #12]
 800258c:	2b00      	cmp	r3, #0
 800258e:	dd04      	ble.n	800259a <set_refcurrent+0x76>
 8002590:	68fb      	ldr	r3, [r7, #12]
 8002592:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
 8002596:	151b      	asrs	r3, r3, #20
 8002598:	e000      	b.n	800259c <set_refcurrent+0x78>
 800259a:	2300      	movs	r3, #0
 800259c:	4a0a      	ldr	r2, [pc, #40]	; (80025c8 <set_refcurrent+0xa4>)
 800259e:	6013      	str	r3, [r2, #0]
 80025a0:	3710      	adds	r7, #16
 80025a2:	46bd      	mov	sp, r7
 80025a4:	bc90      	pop	{r4, r7}
 80025a6:	4770      	bx	lr
 80025a8:	20000228 	.word	0x20000228
 80025ac:	cccccccd 	.word	0xcccccccd
 80025b0:	08003224 	.word	0x08003224
 80025b4:	20002cc0 	.word	0x20002cc0
 80025b8:	10624dd3 	.word	0x10624dd3
 80025bc:	20000224 	.word	0x20000224
 80025c0:	00022baa 	.word	0x00022baa
 80025c4:	ffdd90e7 	.word	0xffdd90e7
 80025c8:	20002cac 	.word	0x20002cac

080025cc <check_voltage>:
 80025cc:	b480      	push	{r7}
 80025ce:	af00      	add	r7, sp, #0
 80025d0:	4b0c      	ldr	r3, [pc, #48]	; (8002604 <check_voltage+0x38>)
 80025d2:	681b      	ldr	r3, [r3, #0]
 80025d4:	0a9b      	lsrs	r3, r3, #10
 80025d6:	4a0c      	ldr	r2, [pc, #48]	; (8002608 <check_voltage+0x3c>)
 80025d8:	fb02 f203 	mul.w	r2, r2, r3
 80025dc:	4b0b      	ldr	r3, [pc, #44]	; (800260c <check_voltage+0x40>)
 80025de:	441a      	add	r2, r3
 80025e0:	4b0b      	ldr	r3, [pc, #44]	; (8002610 <check_voltage+0x44>)
 80025e2:	681b      	ldr	r3, [r3, #0]
 80025e4:	3b02      	subs	r3, #2
 80025e6:	40da      	lsrs	r2, r3
 80025e8:	4b0a      	ldr	r3, [pc, #40]	; (8002614 <check_voltage+0x48>)
 80025ea:	601a      	str	r2, [r3, #0]
 80025ec:	4b09      	ldr	r3, [pc, #36]	; (8002614 <check_voltage+0x48>)
 80025ee:	681b      	ldr	r3, [r3, #0]
 80025f0:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 80025f4:	0c9b      	lsrs	r3, r3, #18
 80025f6:	b29a      	uxth	r2, r3
 80025f8:	4b07      	ldr	r3, [pc, #28]	; (8002618 <check_voltage+0x4c>)
 80025fa:	815a      	strh	r2, [r3, #10]
 80025fc:	46bd      	mov	sp, r7
 80025fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002602:	4770      	bx	lr
 8002604:	20000c9c 	.word	0x20000c9c
 8002608:	000537f0 	.word	0x000537f0
 800260c:	0007d396 	.word	0x0007d396
 8002610:	20002cd4 	.word	0x20002cd4
 8002614:	20000228 	.word	0x20000228
 8002618:	20000a58 	.word	0x20000a58

0800261c <update_mode>:
 800261c:	b580      	push	{r7, lr}
 800261e:	b082      	sub	sp, #8
 8002620:	af00      	add	r7, sp, #0
 8002622:	f44f 03f0 	mov.w	r3, #7864320	; 0x780000
 8002626:	607b      	str	r3, [r7, #4]
 8002628:	f44f 03a0 	mov.w	r3, #5242880	; 0x500000
 800262c:	603b      	str	r3, [r7, #0]
 800262e:	4b34      	ldr	r3, [pc, #208]	; (8002700 <update_mode+0xe4>)
 8002630:	681b      	ldr	r3, [r3, #0]
 8002632:	2b00      	cmp	r3, #0
 8002634:	d009      	beq.n	800264a <update_mode+0x2e>
 8002636:	4b33      	ldr	r3, [pc, #204]	; (8002704 <update_mode+0xe8>)
 8002638:	4a32      	ldr	r2, [pc, #200]	; (8002704 <update_mode+0xe8>)
 800263a:	6952      	ldr	r2, [r2, #20]
 800263c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002640:	615a      	str	r2, [r3, #20]
 8002642:	4b31      	ldr	r3, [pc, #196]	; (8002708 <update_mode+0xec>)
 8002644:	2200      	movs	r2, #0
 8002646:	601a      	str	r2, [r3, #0]
 8002648:	e057      	b.n	80026fa <update_mode+0xde>
 800264a:	4b30      	ldr	r3, [pc, #192]	; (800270c <update_mode+0xf0>)
 800264c:	681a      	ldr	r2, [r3, #0]
 800264e:	683b      	ldr	r3, [r7, #0]
 8002650:	429a      	cmp	r2, r3
 8002652:	d209      	bcs.n	8002668 <update_mode+0x4c>
 8002654:	4b2b      	ldr	r3, [pc, #172]	; (8002704 <update_mode+0xe8>)
 8002656:	4a2b      	ldr	r2, [pc, #172]	; (8002704 <update_mode+0xe8>)
 8002658:	6952      	ldr	r2, [r2, #20]
 800265a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800265e:	615a      	str	r2, [r3, #20]
 8002660:	4b29      	ldr	r3, [pc, #164]	; (8002708 <update_mode+0xec>)
 8002662:	2200      	movs	r2, #0
 8002664:	601a      	str	r2, [r3, #0]
 8002666:	e03e      	b.n	80026e6 <update_mode+0xca>
 8002668:	4b28      	ldr	r3, [pc, #160]	; (800270c <update_mode+0xf0>)
 800266a:	681a      	ldr	r2, [r3, #0]
 800266c:	687b      	ldr	r3, [r7, #4]
 800266e:	429a      	cmp	r2, r3
 8002670:	d939      	bls.n	80026e6 <update_mode+0xca>
 8002672:	4b24      	ldr	r3, [pc, #144]	; (8002704 <update_mode+0xe8>)
 8002674:	4a23      	ldr	r2, [pc, #140]	; (8002704 <update_mode+0xe8>)
 8002676:	6952      	ldr	r2, [r2, #20]
 8002678:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 800267c:	615a      	str	r2, [r3, #20]
 800267e:	4b24      	ldr	r3, [pc, #144]	; (8002710 <update_mode+0xf4>)
 8002680:	889b      	ldrh	r3, [r3, #4]
 8002682:	2b01      	cmp	r3, #1
 8002684:	d013      	beq.n	80026ae <update_mode+0x92>
 8002686:	2b01      	cmp	r3, #1
 8002688:	dc02      	bgt.n	8002690 <update_mode+0x74>
 800268a:	2b00      	cmp	r3, #0
 800268c:	d005      	beq.n	800269a <update_mode+0x7e>
 800268e:	e02a      	b.n	80026e6 <update_mode+0xca>
 8002690:	2b02      	cmp	r3, #2
 8002692:	d012      	beq.n	80026ba <update_mode+0x9e>
 8002694:	2b64      	cmp	r3, #100	; 0x64
 8002696:	d020      	beq.n	80026da <update_mode+0xbe>
 8002698:	e025      	b.n	80026e6 <update_mode+0xca>
 800269a:	4b1b      	ldr	r3, [pc, #108]	; (8002708 <update_mode+0xec>)
 800269c:	2200      	movs	r2, #0
 800269e:	601a      	str	r2, [r3, #0]
 80026a0:	4b18      	ldr	r3, [pc, #96]	; (8002704 <update_mode+0xe8>)
 80026a2:	4a18      	ldr	r2, [pc, #96]	; (8002704 <update_mode+0xe8>)
 80026a4:	6952      	ldr	r2, [r2, #20]
 80026a6:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80026aa:	615a      	str	r2, [r3, #20]
 80026ac:	e01b      	b.n	80026e6 <update_mode+0xca>
 80026ae:	4b18      	ldr	r3, [pc, #96]	; (8002710 <update_mode+0xf4>)
 80026b0:	881b      	ldrh	r3, [r3, #0]
 80026b2:	4618      	mov	r0, r3
 80026b4:	f7ff ff36 	bl	8002524 <set_refcurrent>
 80026b8:	e015      	b.n	80026e6 <update_mode+0xca>
 80026ba:	4b14      	ldr	r3, [pc, #80]	; (800270c <update_mode+0xf0>)
 80026bc:	681b      	ldr	r3, [r3, #0]
 80026be:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 80026c2:	0c9b      	lsrs	r3, r3, #18
 80026c4:	2264      	movs	r2, #100	; 0x64
 80026c6:	fb02 f203 	mul.w	r2, r2, r3
 80026ca:	4b11      	ldr	r3, [pc, #68]	; (8002710 <update_mode+0xf4>)
 80026cc:	885b      	ldrh	r3, [r3, #2]
 80026ce:	fbb2 f3f3 	udiv	r3, r2, r3
 80026d2:	4618      	mov	r0, r3
 80026d4:	f7ff ff26 	bl	8002524 <set_refcurrent>
 80026d8:	e005      	b.n	80026e6 <update_mode+0xca>
 80026da:	4b0d      	ldr	r3, [pc, #52]	; (8002710 <update_mode+0xf4>)
 80026dc:	881b      	ldrh	r3, [r3, #0]
 80026de:	461a      	mov	r2, r3
 80026e0:	4b09      	ldr	r3, [pc, #36]	; (8002708 <update_mode+0xec>)
 80026e2:	601a      	str	r2, [r3, #0]
 80026e4:	bf00      	nop
 80026e6:	4b0a      	ldr	r3, [pc, #40]	; (8002710 <update_mode+0xf4>)
 80026e8:	88db      	ldrh	r3, [r3, #6]
 80026ea:	461a      	mov	r2, r3
 80026ec:	4b09      	ldr	r3, [pc, #36]	; (8002714 <update_mode+0xf8>)
 80026ee:	601a      	str	r2, [r3, #0]
 80026f0:	4b07      	ldr	r3, [pc, #28]	; (8002710 <update_mode+0xf4>)
 80026f2:	891b      	ldrh	r3, [r3, #8]
 80026f4:	461a      	mov	r2, r3
 80026f6:	4b08      	ldr	r3, [pc, #32]	; (8002718 <update_mode+0xfc>)
 80026f8:	601a      	str	r2, [r3, #0]
 80026fa:	3708      	adds	r7, #8
 80026fc:	46bd      	mov	sp, r7
 80026fe:	bd80      	pop	{r7, pc}
 8002700:	20000220 	.word	0x20000220
 8002704:	40021000 	.word	0x40021000
 8002708:	20002cac 	.word	0x20002cac
 800270c:	20000228 	.word	0x20000228
 8002710:	20000a58 	.word	0x20000a58
 8002714:	2000020c 	.word	0x2000020c
 8002718:	20002cb4 	.word	0x20002cb4

0800271c <check_temp>:
 800271c:	b580      	push	{r7, lr}
 800271e:	b082      	sub	sp, #8
 8002720:	af00      	add	r7, sp, #0
 8002722:	4b23      	ldr	r3, [pc, #140]	; (80027b0 <check_temp+0x94>)
 8002724:	681b      	ldr	r3, [r3, #0]
 8002726:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 800272a:	0c9b      	lsrs	r3, r3, #18
 800272c:	1d5a      	adds	r2, r3, #5
 800272e:	4b21      	ldr	r3, [pc, #132]	; (80027b4 <check_temp+0x98>)
 8002730:	fba3 1302 	umull	r1, r3, r3, r2
 8002734:	08db      	lsrs	r3, r3, #3
 8002736:	607b      	str	r3, [r7, #4]
 8002738:	2300      	movs	r3, #0
 800273a:	603b      	str	r3, [r7, #0]
 800273c:	4b1e      	ldr	r3, [pc, #120]	; (80027b8 <check_temp+0x9c>)
 800273e:	681b      	ldr	r3, [r3, #0]
 8002740:	687a      	ldr	r2, [r7, #4]
 8002742:	fb02 f203 	mul.w	r2, r2, r3
 8002746:	4b1d      	ldr	r3, [pc, #116]	; (80027bc <check_temp+0xa0>)
 8002748:	601a      	str	r2, [r3, #0]
 800274a:	2311      	movs	r3, #17
 800274c:	4a1b      	ldr	r2, [pc, #108]	; (80027bc <check_temp+0xa0>)
 800274e:	6812      	ldr	r2, [r2, #0]
 8002750:	fb02 f303 	mul.w	r3, r2, r3
 8002754:	f503 4343 	add.w	r3, r3, #49920	; 0xc300
 8002758:	3350      	adds	r3, #80	; 0x50
 800275a:	095a      	lsrs	r2, r3, #5
 800275c:	4b18      	ldr	r3, [pc, #96]	; (80027c0 <check_temp+0xa4>)
 800275e:	fba3 1302 	umull	r1, r3, r3, r2
 8002762:	09da      	lsrs	r2, r3, #7
 8002764:	4b17      	ldr	r3, [pc, #92]	; (80027c4 <check_temp+0xa8>)
 8002766:	681b      	ldr	r3, [r3, #0]
 8002768:	441a      	add	r2, r3
 800276a:	4b17      	ldr	r3, [pc, #92]	; (80027c8 <check_temp+0xac>)
 800276c:	601a      	str	r2, [r3, #0]
 800276e:	4b16      	ldr	r3, [pc, #88]	; (80027c8 <check_temp+0xac>)
 8002770:	681b      	ldr	r3, [r3, #0]
 8002772:	2b27      	cmp	r3, #39	; 0x27
 8002774:	d806      	bhi.n	8002784 <check_temp+0x68>
 8002776:	2050      	movs	r0, #80	; 0x50
 8002778:	f7ff fc82 	bl	8002080 <coll_pwm_set>
 800277c:	4b13      	ldr	r3, [pc, #76]	; (80027cc <check_temp+0xb0>)
 800277e:	2200      	movs	r2, #0
 8002780:	601a      	str	r2, [r3, #0]
 8002782:	e00d      	b.n	80027a0 <check_temp+0x84>
 8002784:	4b10      	ldr	r3, [pc, #64]	; (80027c8 <check_temp+0xac>)
 8002786:	681b      	ldr	r3, [r3, #0]
 8002788:	2b32      	cmp	r3, #50	; 0x32
 800278a:	d909      	bls.n	80027a0 <check_temp+0x84>
 800278c:	2001      	movs	r0, #1
 800278e:	f7ff fc77 	bl	8002080 <coll_pwm_set>
 8002792:	4b0d      	ldr	r3, [pc, #52]	; (80027c8 <check_temp+0xac>)
 8002794:	681b      	ldr	r3, [r3, #0]
 8002796:	2b96      	cmp	r3, #150	; 0x96
 8002798:	d902      	bls.n	80027a0 <check_temp+0x84>
 800279a:	4b0c      	ldr	r3, [pc, #48]	; (80027cc <check_temp+0xb0>)
 800279c:	2201      	movs	r2, #1
 800279e:	601a      	str	r2, [r3, #0]
 80027a0:	4b08      	ldr	r3, [pc, #32]	; (80027c4 <check_temp+0xa8>)
 80027a2:	681b      	ldr	r3, [r3, #0]
 80027a4:	b29a      	uxth	r2, r3
 80027a6:	4b0a      	ldr	r3, [pc, #40]	; (80027d0 <check_temp+0xb4>)
 80027a8:	81da      	strh	r2, [r3, #14]
 80027aa:	3708      	adds	r7, #8
 80027ac:	46bd      	mov	sp, r7
 80027ae:	bd80      	pop	{r7, pc}
 80027b0:	20000228 	.word	0x20000228
 80027b4:	cccccccd 	.word	0xcccccccd
 80027b8:	2000022c 	.word	0x2000022c
 80027bc:	20000230 	.word	0x20000230
 80027c0:	0a7c5ac5 	.word	0x0a7c5ac5
 80027c4:	20002cc0 	.word	0x20002cc0
 80027c8:	20000234 	.word	0x20000234
 80027cc:	20000220 	.word	0x20000220
 80027d0:	20000a58 	.word	0x20000a58

080027d4 <TIM3_IRQHandler>:
 80027d4:	b480      	push	{r7}
 80027d6:	af00      	add	r7, sp, #0
 80027d8:	4b55      	ldr	r3, [pc, #340]	; (8002930 <TIM3_IRQHandler+0x15c>)
 80027da:	4a55      	ldr	r2, [pc, #340]	; (8002930 <TIM3_IRQHandler+0x15c>)
 80027dc:	8a12      	ldrh	r2, [r2, #16]
 80027de:	b292      	uxth	r2, r2
 80027e0:	f022 0201 	bic.w	r2, r2, #1
 80027e4:	b292      	uxth	r2, r2
 80027e6:	821a      	strh	r2, [r3, #16]
 80027e8:	4b52      	ldr	r3, [pc, #328]	; (8002934 <TIM3_IRQHandler+0x160>)
 80027ea:	4a52      	ldr	r2, [pc, #328]	; (8002934 <TIM3_IRQHandler+0x160>)
 80027ec:	6812      	ldr	r2, [r2, #0]
 80027ee:	f042 0201 	orr.w	r2, r2, #1
 80027f2:	601a      	str	r2, [r3, #0]
 80027f4:	4b50      	ldr	r3, [pc, #320]	; (8002938 <TIM3_IRQHandler+0x164>)
 80027f6:	691b      	ldr	r3, [r3, #16]
 80027f8:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80027fc:	2b00      	cmp	r3, #0
 80027fe:	d010      	beq.n	8002822 <TIM3_IRQHandler+0x4e>
 8002800:	4b4e      	ldr	r3, [pc, #312]	; (800293c <TIM3_IRQHandler+0x168>)
 8002802:	881b      	ldrh	r3, [r3, #0]
 8002804:	b29b      	uxth	r3, r3
 8002806:	3328      	adds	r3, #40	; 0x28
 8002808:	b29b      	uxth	r3, r3
 800280a:	b29a      	uxth	r2, r3
 800280c:	4b4b      	ldr	r3, [pc, #300]	; (800293c <TIM3_IRQHandler+0x168>)
 800280e:	801a      	strh	r2, [r3, #0]
 8002810:	4b4a      	ldr	r3, [pc, #296]	; (800293c <TIM3_IRQHandler+0x168>)
 8002812:	881b      	ldrh	r3, [r3, #0]
 8002814:	b21b      	sxth	r3, r3
 8002816:	2bc8      	cmp	r3, #200	; 0xc8
 8002818:	dd16      	ble.n	8002848 <TIM3_IRQHandler+0x74>
 800281a:	4b48      	ldr	r3, [pc, #288]	; (800293c <TIM3_IRQHandler+0x168>)
 800281c:	22c8      	movs	r2, #200	; 0xc8
 800281e:	801a      	strh	r2, [r3, #0]
 8002820:	e012      	b.n	8002848 <TIM3_IRQHandler+0x74>
 8002822:	4b46      	ldr	r3, [pc, #280]	; (800293c <TIM3_IRQHandler+0x168>)
 8002824:	881b      	ldrh	r3, [r3, #0]
 8002826:	b29b      	uxth	r3, r3
 8002828:	3b28      	subs	r3, #40	; 0x28
 800282a:	b29b      	uxth	r3, r3
 800282c:	b29a      	uxth	r2, r3
 800282e:	4b43      	ldr	r3, [pc, #268]	; (800293c <TIM3_IRQHandler+0x168>)
 8002830:	801a      	strh	r2, [r3, #0]
 8002832:	4b42      	ldr	r3, [pc, #264]	; (800293c <TIM3_IRQHandler+0x168>)
 8002834:	881b      	ldrh	r3, [r3, #0]
 8002836:	b21b      	sxth	r3, r3
 8002838:	f113 0fc8 	cmn.w	r3, #200	; 0xc8
 800283c:	da04      	bge.n	8002848 <TIM3_IRQHandler+0x74>
 800283e:	4b3f      	ldr	r3, [pc, #252]	; (800293c <TIM3_IRQHandler+0x168>)
 8002840:	f64f 7238 	movw	r2, #65336	; 0xff38
 8002844:	801a      	strh	r2, [r3, #0]
 8002846:	bf00      	nop
 8002848:	4b3b      	ldr	r3, [pc, #236]	; (8002938 <TIM3_IRQHandler+0x164>)
 800284a:	691b      	ldr	r3, [r3, #16]
 800284c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002850:	2b00      	cmp	r3, #0
 8002852:	d010      	beq.n	8002876 <TIM3_IRQHandler+0xa2>
 8002854:	4b3a      	ldr	r3, [pc, #232]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002856:	881b      	ldrh	r3, [r3, #0]
 8002858:	b29b      	uxth	r3, r3
 800285a:	3328      	adds	r3, #40	; 0x28
 800285c:	b29b      	uxth	r3, r3
 800285e:	b29a      	uxth	r2, r3
 8002860:	4b37      	ldr	r3, [pc, #220]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002862:	801a      	strh	r2, [r3, #0]
 8002864:	4b36      	ldr	r3, [pc, #216]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002866:	881b      	ldrh	r3, [r3, #0]
 8002868:	b21b      	sxth	r3, r3
 800286a:	2bc8      	cmp	r3, #200	; 0xc8
 800286c:	dd16      	ble.n	800289c <TIM3_IRQHandler+0xc8>
 800286e:	4b34      	ldr	r3, [pc, #208]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002870:	22c8      	movs	r2, #200	; 0xc8
 8002872:	801a      	strh	r2, [r3, #0]
 8002874:	e012      	b.n	800289c <TIM3_IRQHandler+0xc8>
 8002876:	4b32      	ldr	r3, [pc, #200]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002878:	881b      	ldrh	r3, [r3, #0]
 800287a:	b29b      	uxth	r3, r3
 800287c:	3b28      	subs	r3, #40	; 0x28
 800287e:	b29b      	uxth	r3, r3
 8002880:	b29a      	uxth	r2, r3
 8002882:	4b2f      	ldr	r3, [pc, #188]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002884:	801a      	strh	r2, [r3, #0]
 8002886:	4b2e      	ldr	r3, [pc, #184]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002888:	881b      	ldrh	r3, [r3, #0]
 800288a:	b21b      	sxth	r3, r3
 800288c:	f113 0fc8 	cmn.w	r3, #200	; 0xc8
 8002890:	da04      	bge.n	800289c <TIM3_IRQHandler+0xc8>
 8002892:	4b2b      	ldr	r3, [pc, #172]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002894:	f64f 7238 	movw	r2, #65336	; 0xff38
 8002898:	801a      	strh	r2, [r3, #0]
 800289a:	bf00      	nop
 800289c:	4b29      	ldr	r3, [pc, #164]	; (8002944 <TIM3_IRQHandler+0x170>)
 800289e:	881b      	ldrh	r3, [r3, #0]
 80028a0:	b21b      	sxth	r3, r3
 80028a2:	43da      	mvns	r2, r3
 80028a4:	4b26      	ldr	r3, [pc, #152]	; (8002940 <TIM3_IRQHandler+0x16c>)
 80028a6:	881b      	ldrh	r3, [r3, #0]
 80028a8:	b21b      	sxth	r3, r3
 80028aa:	401a      	ands	r2, r3
 80028ac:	4b23      	ldr	r3, [pc, #140]	; (800293c <TIM3_IRQHandler+0x168>)
 80028ae:	881b      	ldrh	r3, [r3, #0]
 80028b0:	b21b      	sxth	r3, r3
 80028b2:	4013      	ands	r3, r2
 80028b4:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 80028b8:	13db      	asrs	r3, r3, #15
 80028ba:	b29a      	uxth	r2, r3
 80028bc:	4b22      	ldr	r3, [pc, #136]	; (8002948 <TIM3_IRQHandler+0x174>)
 80028be:	801a      	strh	r2, [r3, #0]
 80028c0:	4b20      	ldr	r3, [pc, #128]	; (8002944 <TIM3_IRQHandler+0x170>)
 80028c2:	881b      	ldrh	r3, [r3, #0]
 80028c4:	b21b      	sxth	r3, r3
 80028c6:	43da      	mvns	r2, r3
 80028c8:	4b1d      	ldr	r3, [pc, #116]	; (8002940 <TIM3_IRQHandler+0x16c>)
 80028ca:	881b      	ldrh	r3, [r3, #0]
 80028cc:	b21b      	sxth	r3, r3
 80028ce:	401a      	ands	r2, r3
 80028d0:	4b1a      	ldr	r3, [pc, #104]	; (800293c <TIM3_IRQHandler+0x168>)
 80028d2:	881b      	ldrh	r3, [r3, #0]
 80028d4:	b21b      	sxth	r3, r3
 80028d6:	43db      	mvns	r3, r3
 80028d8:	4013      	ands	r3, r2
 80028da:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 80028de:	13db      	asrs	r3, r3, #15
 80028e0:	b29a      	uxth	r2, r3
 80028e2:	4b1a      	ldr	r3, [pc, #104]	; (800294c <TIM3_IRQHandler+0x178>)
 80028e4:	801a      	strh	r2, [r3, #0]
 80028e6:	4b19      	ldr	r3, [pc, #100]	; (800294c <TIM3_IRQHandler+0x178>)
 80028e8:	881a      	ldrh	r2, [r3, #0]
 80028ea:	4b17      	ldr	r3, [pc, #92]	; (8002948 <TIM3_IRQHandler+0x174>)
 80028ec:	881b      	ldrh	r3, [r3, #0]
 80028ee:	1ad3      	subs	r3, r2, r3
 80028f0:	b29a      	uxth	r2, r3
 80028f2:	4b17      	ldr	r3, [pc, #92]	; (8002950 <TIM3_IRQHandler+0x17c>)
 80028f4:	881b      	ldrh	r3, [r3, #0]
 80028f6:	b29b      	uxth	r3, r3
 80028f8:	4413      	add	r3, r2
 80028fa:	b29b      	uxth	r3, r3
 80028fc:	b29a      	uxth	r2, r3
 80028fe:	4b14      	ldr	r3, [pc, #80]	; (8002950 <TIM3_IRQHandler+0x17c>)
 8002900:	801a      	strh	r2, [r3, #0]
 8002902:	4b0f      	ldr	r3, [pc, #60]	; (8002940 <TIM3_IRQHandler+0x16c>)
 8002904:	881a      	ldrh	r2, [r3, #0]
 8002906:	4b0f      	ldr	r3, [pc, #60]	; (8002944 <TIM3_IRQHandler+0x170>)
 8002908:	801a      	strh	r2, [r3, #0]
 800290a:	4b12      	ldr	r3, [pc, #72]	; (8002954 <TIM3_IRQHandler+0x180>)
 800290c:	4a0b      	ldr	r2, [pc, #44]	; (800293c <TIM3_IRQHandler+0x168>)
 800290e:	8812      	ldrh	r2, [r2, #0]
 8002910:	b212      	sxth	r2, r2
 8002912:	32c8      	adds	r2, #200	; 0xc8
 8002914:	0092      	lsls	r2, r2, #2
 8002916:	609a      	str	r2, [r3, #8]
 8002918:	4b0e      	ldr	r3, [pc, #56]	; (8002954 <TIM3_IRQHandler+0x180>)
 800291a:	4a09      	ldr	r2, [pc, #36]	; (8002940 <TIM3_IRQHandler+0x16c>)
 800291c:	8812      	ldrh	r2, [r2, #0]
 800291e:	b212      	sxth	r2, r2
 8002920:	32c8      	adds	r2, #200	; 0xc8
 8002922:	0092      	lsls	r2, r2, #2
 8002924:	615a      	str	r2, [r3, #20]
 8002926:	46bd      	mov	sp, r7
 8002928:	f85d 7b04 	ldr.w	r7, [sp], #4
 800292c:	4770      	bx	lr
 800292e:	bf00      	nop
 8002930:	40000400 	.word	0x40000400
 8002934:	40026070 	.word	0x40026070
 8002938:	40020400 	.word	0x40020400
 800293c:	20000c8a 	.word	0x20000c8a
 8002940:	20000c8c 	.word	0x20000c8c
 8002944:	20000c8e 	.word	0x20000c8e
 8002948:	20000c94 	.word	0x20000c94
 800294c:	20000c92 	.word	0x20000c92
 8002950:	20000c90 	.word	0x20000c90
 8002954:	40007400 	.word	0x40007400

08002958 <DMA1_Stream4_IRQHandler>:
 8002958:	b480      	push	{r7}
 800295a:	af00      	add	r7, sp, #0
 800295c:	4b07      	ldr	r3, [pc, #28]	; (800297c <DMA1_Stream4_IRQHandler+0x24>)
 800295e:	4a07      	ldr	r2, [pc, #28]	; (800297c <DMA1_Stream4_IRQHandler+0x24>)
 8002960:	68d2      	ldr	r2, [r2, #12]
 8002962:	f042 0220 	orr.w	r2, r2, #32
 8002966:	60da      	str	r2, [r3, #12]
 8002968:	4b05      	ldr	r3, [pc, #20]	; (8002980 <DMA1_Stream4_IRQHandler+0x28>)
 800296a:	4a05      	ldr	r2, [pc, #20]	; (8002980 <DMA1_Stream4_IRQHandler+0x28>)
 800296c:	6812      	ldr	r2, [r2, #0]
 800296e:	f022 0201 	bic.w	r2, r2, #1
 8002972:	601a      	str	r2, [r3, #0]
 8002974:	46bd      	mov	sp, r7
 8002976:	f85d 7b04 	ldr.w	r7, [sp], #4
 800297a:	4770      	bx	lr
 800297c:	40026000 	.word	0x40026000
 8002980:	40026070 	.word	0x40026070

08002984 <reg_init>:
 8002984:	4b06      	ldr	r3, [pc, #24]	; (80029a0 <reg_init+0x1c>)
 8002986:	b410      	push	{r4}
 8002988:	2000      	movs	r0, #0
 800298a:	2432      	movs	r4, #50	; 0x32
 800298c:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8002990:	2201      	movs	r2, #1
 8002992:	80dc      	strh	r4, [r3, #6]
 8002994:	8118      	strh	r0, [r3, #8]
 8002996:	8019      	strh	r1, [r3, #0]
 8002998:	809a      	strh	r2, [r3, #4]
 800299a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800299e:	4770      	bx	lr
 80029a0:	20000a58 	.word	0x20000a58

080029a4 <ADC_IRQHandler>:
 80029a4:	492f      	ldr	r1, [pc, #188]	; (8002a64 <ADC_IRQHandler+0xc0>)
 80029a6:	4b30      	ldr	r3, [pc, #192]	; (8002a68 <ADC_IRQHandler+0xc4>)
 80029a8:	e92d 07f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl}
 80029ac:	684d      	ldr	r5, [r1, #4]
 80029ae:	4e2f      	ldr	r6, [pc, #188]	; (8002a6c <ADC_IRQHandler+0xc8>)
 80029b0:	6cd8      	ldr	r0, [r3, #76]	; 0x4c
 80029b2:	6832      	ldr	r2, [r6, #0]
 80029b4:	f8d1 a000 	ldr.w	sl, [r1]
 80029b8:	4b2d      	ldr	r3, [pc, #180]	; (8002a70 <ADC_IRQHandler+0xcc>)
 80029ba:	f8df 80c8 	ldr.w	r8, [pc, #200]	; 8002a84 <ADC_IRQHandler+0xe0>
 80029be:	f853 4cec 	ldr.w	r4, [r3, #-236]
 80029c2:	4f2c      	ldr	r7, [pc, #176]	; (8002a74 <ADC_IRQHandler+0xd0>)
 80029c4:	eb01 0685 	add.w	r6, r1, r5, lsl #2
 80029c8:	f5c0 607f 	rsb	r0, r0, #4080	; 0xff0
 80029cc:	f8d6 9008 	ldr.w	r9, [r6, #8]
 80029d0:	300f      	adds	r0, #15
 80029d2:	60b0      	str	r0, [r6, #8]
 80029d4:	4450      	add	r0, sl
 80029d6:	ebc9 0000 	rsb	r0, r9, r0
 80029da:	6008      	str	r0, [r1, #0]
 80029dc:	f8d8 004c 	ldr.w	r0, [r8, #76]	; 0x4c
 80029e0:	f853 9cf0 	ldr.w	r9, [r3, #-240]
 80029e4:	eb03 0684 	add.w	r6, r3, r4, lsl #2
 80029e8:	f5c0 6055 	rsb	r0, r0, #3408	; 0xd50
 80029ec:	3003      	adds	r0, #3
 80029ee:	f856 8ce8 	ldr.w	r8, [r6, #-232]
 80029f2:	f846 0ce8 	str.w	r0, [r6, #-232]
 80029f6:	eb00 0609 	add.w	r6, r0, r9
 80029fa:	ebc8 0606 	rsb	r6, r8, r6
 80029fe:	f843 6cf0 	str.w	r6, [r3, #-240]
 8002a02:	f8d3 6f18 	ldr.w	r6, [r3, #3864]	; 0xf18
 8002a06:	1a30      	subs	r0, r6, r0
 8002a08:	f8d3 6f1c 	ldr.w	r6, [r3, #3868]	; 0xf1c
 8002a0c:	3501      	adds	r5, #1
 8002a0e:	fb02 6200 	mla	r2, r2, r0, r6
 8002a12:	3401      	adds	r4, #1
 8002a14:	f3c5 0509 	ubfx	r5, r5, #0, #10
 8002a18:	f3c4 0409 	ubfx	r4, r4, #0, #10
 8002a1c:	42ba      	cmp	r2, r7
 8002a1e:	604d      	str	r5, [r1, #4]
 8002a20:	f843 4cec 	str.w	r4, [r3, #-236]
 8002a24:	4611      	mov	r1, r2
 8002a26:	dc19      	bgt.n	8002a5c <ADC_IRQHandler+0xb8>
 8002a28:	4c13      	ldr	r4, [pc, #76]	; (8002a78 <ADC_IRQHandler+0xd4>)
 8002a2a:	42a2      	cmp	r2, r4
 8002a2c:	da01      	bge.n	8002a32 <ADC_IRQHandler+0x8e>
 8002a2e:	4622      	mov	r2, r4
 8002a30:	4621      	mov	r1, r4
 8002a32:	f8d3 4f20 	ldr.w	r4, [r3, #3872]	; 0xf20
 8002a36:	f8b3 7f24 	ldrh.w	r7, [r3, #3876]	; 0xf24
 8002a3a:	4e10      	ldr	r6, [pc, #64]	; (8002a7c <ADC_IRQHandler+0xd8>)
 8002a3c:	4d10      	ldr	r5, [pc, #64]	; (8002a80 <ADC_IRQHandler+0xdc>)
 8002a3e:	f8c3 1f1c 	str.w	r1, [r3, #3868]	; 0xf1c
 8002a42:	fb04 2200 	mla	r2, r4, r0, r2
 8002a46:	1352      	asrs	r2, r2, #13
 8002a48:	b2b9      	uxth	r1, r7
 8002a4a:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 8002a4e:	6371      	str	r1, [r6, #52]	; 0x34
 8002a50:	60aa      	str	r2, [r5, #8]
 8002a52:	f8c3 0f28 	str.w	r0, [r3, #3880]	; 0xf28
 8002a56:	e8bd 07f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl}
 8002a5a:	4770      	bx	lr
 8002a5c:	463a      	mov	r2, r7
 8002a5e:	4639      	mov	r1, r7
 8002a60:	e7e7      	b.n	8002a32 <ADC_IRQHandler+0x8e>
 8002a62:	bf00      	nop
 8002a64:	20000c9c 	.word	0x20000c9c
 8002a68:	40012200 	.word	0x40012200
 8002a6c:	2000020c 	.word	0x2000020c
 8002a70:	20001d94 	.word	0x20001d94
 8002a74:	3b9aca00 	.word	0x3b9aca00
 8002a78:	c4653600 	.word	0xc4653600
 8002a7c:	40000800 	.word	0x40000800
 8002a80:	40007400 	.word	0x40007400
 8002a84:	40012000 	.word	0x40012000

08002a88 <NVIC_EnableIRQ>:
 8002a88:	b480      	push	{r7}
 8002a8a:	b083      	sub	sp, #12
 8002a8c:	af00      	add	r7, sp, #0
 8002a8e:	4603      	mov	r3, r0
 8002a90:	71fb      	strb	r3, [r7, #7]
 8002a92:	4b08      	ldr	r3, [pc, #32]	; (8002ab4 <NVIC_EnableIRQ+0x2c>)
 8002a94:	f997 2007 	ldrsb.w	r2, [r7, #7]
 8002a98:	0952      	lsrs	r2, r2, #5
 8002a9a:	79f9      	ldrb	r1, [r7, #7]
 8002a9c:	f001 011f 	and.w	r1, r1, #31
 8002aa0:	2001      	movs	r0, #1
 8002aa2:	fa00 f101 	lsl.w	r1, r0, r1
 8002aa6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002aaa:	370c      	adds	r7, #12
 8002aac:	46bd      	mov	sp, r7
 8002aae:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ab2:	4770      	bx	lr
 8002ab4:	e000e100 	.word	0xe000e100

08002ab8 <i2c_init>:
 8002ab8:	b580      	push	{r7, lr}
 8002aba:	af00      	add	r7, sp, #0
 8002abc:	4b39      	ldr	r3, [pc, #228]	; (8002ba4 <i2c_init+0xec>)
 8002abe:	4a39      	ldr	r2, [pc, #228]	; (8002ba4 <i2c_init+0xec>)
 8002ac0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002ac2:	f042 0202 	orr.w	r2, r2, #2
 8002ac6:	631a      	str	r2, [r3, #48]	; 0x30
 8002ac8:	4b37      	ldr	r3, [pc, #220]	; (8002ba8 <i2c_init+0xf0>)
 8002aca:	4a37      	ldr	r2, [pc, #220]	; (8002ba8 <i2c_init+0xf0>)
 8002acc:	6852      	ldr	r2, [r2, #4]
 8002ace:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 8002ad2:	605a      	str	r2, [r3, #4]
 8002ad4:	4b34      	ldr	r3, [pc, #208]	; (8002ba8 <i2c_init+0xf0>)
 8002ad6:	4a34      	ldr	r2, [pc, #208]	; (8002ba8 <i2c_init+0xf0>)
 8002ad8:	6812      	ldr	r2, [r2, #0]
 8002ada:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 8002ade:	601a      	str	r2, [r3, #0]
 8002ae0:	4b31      	ldr	r3, [pc, #196]	; (8002ba8 <i2c_init+0xf0>)
 8002ae2:	4a31      	ldr	r2, [pc, #196]	; (8002ba8 <i2c_init+0xf0>)
 8002ae4:	6812      	ldr	r2, [r2, #0]
 8002ae6:	f442 4220 	orr.w	r2, r2, #40960	; 0xa000
 8002aea:	601a      	str	r2, [r3, #0]
 8002aec:	4b2e      	ldr	r3, [pc, #184]	; (8002ba8 <i2c_init+0xf0>)
 8002aee:	4a2e      	ldr	r2, [pc, #184]	; (8002ba8 <i2c_init+0xf0>)
 8002af0:	6a12      	ldr	r2, [r2, #32]
 8002af2:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 8002af6:	621a      	str	r2, [r3, #32]
 8002af8:	4b2b      	ldr	r3, [pc, #172]	; (8002ba8 <i2c_init+0xf0>)
 8002afa:	4a2b      	ldr	r2, [pc, #172]	; (8002ba8 <i2c_init+0xf0>)
 8002afc:	6a12      	ldr	r2, [r2, #32]
 8002afe:	f042 6280 	orr.w	r2, r2, #67108864	; 0x4000000
 8002b02:	621a      	str	r2, [r3, #32]
 8002b04:	4b28      	ldr	r3, [pc, #160]	; (8002ba8 <i2c_init+0xf0>)
 8002b06:	4a28      	ldr	r2, [pc, #160]	; (8002ba8 <i2c_init+0xf0>)
 8002b08:	6a12      	ldr	r2, [r2, #32]
 8002b0a:	f022 4270 	bic.w	r2, r2, #4026531840	; 0xf0000000
 8002b0e:	621a      	str	r2, [r3, #32]
 8002b10:	4b25      	ldr	r3, [pc, #148]	; (8002ba8 <i2c_init+0xf0>)
 8002b12:	4a25      	ldr	r2, [pc, #148]	; (8002ba8 <i2c_init+0xf0>)
 8002b14:	6a12      	ldr	r2, [r2, #32]
 8002b16:	f042 4280 	orr.w	r2, r2, #1073741824	; 0x40000000
 8002b1a:	621a      	str	r2, [r3, #32]
 8002b1c:	4b21      	ldr	r3, [pc, #132]	; (8002ba4 <i2c_init+0xec>)
 8002b1e:	4a21      	ldr	r2, [pc, #132]	; (8002ba4 <i2c_init+0xec>)
 8002b20:	6c12      	ldr	r2, [r2, #64]	; 0x40
 8002b22:	f442 1200 	orr.w	r2, r2, #2097152	; 0x200000
 8002b26:	641a      	str	r2, [r3, #64]	; 0x40
 8002b28:	4b20      	ldr	r3, [pc, #128]	; (8002bac <i2c_init+0xf4>)
 8002b2a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8002b2e:	801a      	strh	r2, [r3, #0]
 8002b30:	4b1e      	ldr	r3, [pc, #120]	; (8002bac <i2c_init+0xf4>)
 8002b32:	2200      	movs	r2, #0
 8002b34:	801a      	strh	r2, [r3, #0]
 8002b36:	4b1d      	ldr	r3, [pc, #116]	; (8002bac <i2c_init+0xf4>)
 8002b38:	4a1c      	ldr	r2, [pc, #112]	; (8002bac <i2c_init+0xf4>)
 8002b3a:	8892      	ldrh	r2, [r2, #4]
 8002b3c:	b292      	uxth	r2, r2
 8002b3e:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 8002b42:	b292      	uxth	r2, r2
 8002b44:	809a      	strh	r2, [r3, #4]
 8002b46:	4b19      	ldr	r3, [pc, #100]	; (8002bac <i2c_init+0xf4>)
 8002b48:	4a18      	ldr	r2, [pc, #96]	; (8002bac <i2c_init+0xf4>)
 8002b4a:	8892      	ldrh	r2, [r2, #4]
 8002b4c:	b292      	uxth	r2, r2
 8002b4e:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 8002b52:	b292      	uxth	r2, r2
 8002b54:	809a      	strh	r2, [r3, #4]
 8002b56:	4b15      	ldr	r3, [pc, #84]	; (8002bac <i2c_init+0xf4>)
 8002b58:	22b4      	movs	r2, #180	; 0xb4
 8002b5a:	839a      	strh	r2, [r3, #28]
 8002b5c:	4b13      	ldr	r3, [pc, #76]	; (8002bac <i2c_init+0xf4>)
 8002b5e:	4a13      	ldr	r2, [pc, #76]	; (8002bac <i2c_init+0xf4>)
 8002b60:	8c12      	ldrh	r2, [r2, #32]
 8002b62:	b292      	uxth	r2, r2
 8002b64:	f022 023f 	bic.w	r2, r2, #63	; 0x3f
 8002b68:	b292      	uxth	r2, r2
 8002b6a:	841a      	strh	r2, [r3, #32]
 8002b6c:	4b0f      	ldr	r3, [pc, #60]	; (8002bac <i2c_init+0xf4>)
 8002b6e:	4a0f      	ldr	r2, [pc, #60]	; (8002bac <i2c_init+0xf4>)
 8002b70:	8c12      	ldrh	r2, [r2, #32]
 8002b72:	b292      	uxth	r2, r2
 8002b74:	f042 022a 	orr.w	r2, r2, #42	; 0x2a
 8002b78:	b292      	uxth	r2, r2
 8002b7a:	841a      	strh	r2, [r3, #32]
 8002b7c:	4b0b      	ldr	r3, [pc, #44]	; (8002bac <i2c_init+0xf4>)
 8002b7e:	4a0b      	ldr	r2, [pc, #44]	; (8002bac <i2c_init+0xf4>)
 8002b80:	8892      	ldrh	r2, [r2, #4]
 8002b82:	b292      	uxth	r2, r2
 8002b84:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8002b88:	b292      	uxth	r2, r2
 8002b8a:	809a      	strh	r2, [r3, #4]
 8002b8c:	4b07      	ldr	r3, [pc, #28]	; (8002bac <i2c_init+0xf4>)
 8002b8e:	4a07      	ldr	r2, [pc, #28]	; (8002bac <i2c_init+0xf4>)
 8002b90:	8812      	ldrh	r2, [r2, #0]
 8002b92:	b292      	uxth	r2, r2
 8002b94:	f042 0201 	orr.w	r2, r2, #1
 8002b98:	b292      	uxth	r2, r2
 8002b9a:	801a      	strh	r2, [r3, #0]
 8002b9c:	201f      	movs	r0, #31
 8002b9e:	f7ff ff73 	bl	8002a88 <NVIC_EnableIRQ>
 8002ba2:	bd80      	pop	{r7, pc}
 8002ba4:	40023800 	.word	0x40023800
 8002ba8:	40020400 	.word	0x40020400
 8002bac:	40005400 	.word	0x40005400

08002bb0 <i2c_test>:
 8002bb0:	b580      	push	{r7, lr}
 8002bb2:	b082      	sub	sp, #8
 8002bb4:	af00      	add	r7, sp, #0
 8002bb6:	4b5f      	ldr	r3, [pc, #380]	; (8002d34 <i2c_test+0x184>)
 8002bb8:	4a5e      	ldr	r2, [pc, #376]	; (8002d34 <i2c_test+0x184>)
 8002bba:	8812      	ldrh	r2, [r2, #0]
 8002bbc:	b292      	uxth	r2, r2
 8002bbe:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002bc2:	b292      	uxth	r2, r2
 8002bc4:	801a      	strh	r2, [r3, #0]
 8002bc6:	bf00      	nop
 8002bc8:	4b5a      	ldr	r3, [pc, #360]	; (8002d34 <i2c_test+0x184>)
 8002bca:	8a9b      	ldrh	r3, [r3, #20]
 8002bcc:	b29b      	uxth	r3, r3
 8002bce:	f003 0301 	and.w	r3, r3, #1
 8002bd2:	2b00      	cmp	r3, #0
 8002bd4:	d0f8      	beq.n	8002bc8 <i2c_test+0x18>
 8002bd6:	4b57      	ldr	r3, [pc, #348]	; (8002d34 <i2c_test+0x184>)
 8002bd8:	8a9b      	ldrh	r3, [r3, #20]
 8002bda:	b29b      	uxth	r3, r3
 8002bdc:	4856      	ldr	r0, [pc, #344]	; (8002d38 <i2c_test+0x188>)
 8002bde:	4619      	mov	r1, r3
 8002be0:	f7fe fad8 	bl	8001194 <xprintf>
 8002be4:	4b53      	ldr	r3, [pc, #332]	; (8002d34 <i2c_test+0x184>)
 8002be6:	2294      	movs	r2, #148	; 0x94
 8002be8:	821a      	strh	r2, [r3, #16]
 8002bea:	bf00      	nop
 8002bec:	4b51      	ldr	r3, [pc, #324]	; (8002d34 <i2c_test+0x184>)
 8002bee:	8a9b      	ldrh	r3, [r3, #20]
 8002bf0:	b29b      	uxth	r3, r3
 8002bf2:	f003 0302 	and.w	r3, r3, #2
 8002bf6:	2b00      	cmp	r3, #0
 8002bf8:	d0f8      	beq.n	8002bec <i2c_test+0x3c>
 8002bfa:	4b4e      	ldr	r3, [pc, #312]	; (8002d34 <i2c_test+0x184>)
 8002bfc:	8b1b      	ldrh	r3, [r3, #24]
 8002bfe:	80fb      	strh	r3, [r7, #6]
 8002c00:	4b4c      	ldr	r3, [pc, #304]	; (8002d34 <i2c_test+0x184>)
 8002c02:	8a9b      	ldrh	r3, [r3, #20]
 8002c04:	b29b      	uxth	r3, r3
 8002c06:	484d      	ldr	r0, [pc, #308]	; (8002d3c <i2c_test+0x18c>)
 8002c08:	4619      	mov	r1, r3
 8002c0a:	f7fe fac3 	bl	8001194 <xprintf>
 8002c0e:	4b49      	ldr	r3, [pc, #292]	; (8002d34 <i2c_test+0x184>)
 8002c10:	2200      	movs	r2, #0
 8002c12:	821a      	strh	r2, [r3, #16]
 8002c14:	bf00      	nop
 8002c16:	4b47      	ldr	r3, [pc, #284]	; (8002d34 <i2c_test+0x184>)
 8002c18:	8a9b      	ldrh	r3, [r3, #20]
 8002c1a:	b29b      	uxth	r3, r3
 8002c1c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002c20:	2b00      	cmp	r3, #0
 8002c22:	d0f8      	beq.n	8002c16 <i2c_test+0x66>
 8002c24:	4b43      	ldr	r3, [pc, #268]	; (8002d34 <i2c_test+0x184>)
 8002c26:	8a9b      	ldrh	r3, [r3, #20]
 8002c28:	b29b      	uxth	r3, r3
 8002c2a:	4845      	ldr	r0, [pc, #276]	; (8002d40 <i2c_test+0x190>)
 8002c2c:	4619      	mov	r1, r3
 8002c2e:	f7fe fab1 	bl	8001194 <xprintf>
 8002c32:	4b40      	ldr	r3, [pc, #256]	; (8002d34 <i2c_test+0x184>)
 8002c34:	4a3f      	ldr	r2, [pc, #252]	; (8002d34 <i2c_test+0x184>)
 8002c36:	8812      	ldrh	r2, [r2, #0]
 8002c38:	b292      	uxth	r2, r2
 8002c3a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002c3e:	b292      	uxth	r2, r2
 8002c40:	801a      	strh	r2, [r3, #0]
 8002c42:	bf00      	nop
 8002c44:	4b3b      	ldr	r3, [pc, #236]	; (8002d34 <i2c_test+0x184>)
 8002c46:	8a9b      	ldrh	r3, [r3, #20]
 8002c48:	b29b      	uxth	r3, r3
 8002c4a:	f003 0301 	and.w	r3, r3, #1
 8002c4e:	2b00      	cmp	r3, #0
 8002c50:	d0f8      	beq.n	8002c44 <i2c_test+0x94>
 8002c52:	4b38      	ldr	r3, [pc, #224]	; (8002d34 <i2c_test+0x184>)
 8002c54:	8a9b      	ldrh	r3, [r3, #20]
 8002c56:	b29b      	uxth	r3, r3
 8002c58:	4837      	ldr	r0, [pc, #220]	; (8002d38 <i2c_test+0x188>)
 8002c5a:	4619      	mov	r1, r3
 8002c5c:	f7fe fa9a 	bl	8001194 <xprintf>
 8002c60:	4b34      	ldr	r3, [pc, #208]	; (8002d34 <i2c_test+0x184>)
 8002c62:	2295      	movs	r2, #149	; 0x95
 8002c64:	821a      	strh	r2, [r3, #16]
 8002c66:	bf00      	nop
 8002c68:	4b32      	ldr	r3, [pc, #200]	; (8002d34 <i2c_test+0x184>)
 8002c6a:	8a9b      	ldrh	r3, [r3, #20]
 8002c6c:	b29b      	uxth	r3, r3
 8002c6e:	f003 0302 	and.w	r3, r3, #2
 8002c72:	2b00      	cmp	r3, #0
 8002c74:	d0f8      	beq.n	8002c68 <i2c_test+0xb8>
 8002c76:	4b2f      	ldr	r3, [pc, #188]	; (8002d34 <i2c_test+0x184>)
 8002c78:	8a9b      	ldrh	r3, [r3, #20]
 8002c7a:	b29b      	uxth	r3, r3
 8002c7c:	482f      	ldr	r0, [pc, #188]	; (8002d3c <i2c_test+0x18c>)
 8002c7e:	4619      	mov	r1, r3
 8002c80:	f7fe fa88 	bl	8001194 <xprintf>
 8002c84:	4b2b      	ldr	r3, [pc, #172]	; (8002d34 <i2c_test+0x184>)
 8002c86:	4a2b      	ldr	r2, [pc, #172]	; (8002d34 <i2c_test+0x184>)
 8002c88:	8812      	ldrh	r2, [r2, #0]
 8002c8a:	b292      	uxth	r2, r2
 8002c8c:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8002c90:	b292      	uxth	r2, r2
 8002c92:	801a      	strh	r2, [r3, #0]
 8002c94:	4b27      	ldr	r3, [pc, #156]	; (8002d34 <i2c_test+0x184>)
 8002c96:	4a27      	ldr	r2, [pc, #156]	; (8002d34 <i2c_test+0x184>)
 8002c98:	8812      	ldrh	r2, [r2, #0]
 8002c9a:	b292      	uxth	r2, r2
 8002c9c:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8002ca0:	b292      	uxth	r2, r2
 8002ca2:	801a      	strh	r2, [r3, #0]
 8002ca4:	4b23      	ldr	r3, [pc, #140]	; (8002d34 <i2c_test+0x184>)
 8002ca6:	8b1b      	ldrh	r3, [r3, #24]
 8002ca8:	80fb      	strh	r3, [r7, #6]
 8002caa:	bf00      	nop
 8002cac:	4b21      	ldr	r3, [pc, #132]	; (8002d34 <i2c_test+0x184>)
 8002cae:	8a9b      	ldrh	r3, [r3, #20]
 8002cb0:	b29b      	uxth	r3, r3
 8002cb2:	f003 0304 	and.w	r3, r3, #4
 8002cb6:	2b00      	cmp	r3, #0
 8002cb8:	d0f8      	beq.n	8002cac <i2c_test+0xfc>
 8002cba:	4b1e      	ldr	r3, [pc, #120]	; (8002d34 <i2c_test+0x184>)
 8002cbc:	8a9b      	ldrh	r3, [r3, #20]
 8002cbe:	b29b      	uxth	r3, r3
 8002cc0:	4820      	ldr	r0, [pc, #128]	; (8002d44 <i2c_test+0x194>)
 8002cc2:	4619      	mov	r1, r3
 8002cc4:	f7fe fa66 	bl	8001194 <xprintf>
 8002cc8:	4b1a      	ldr	r3, [pc, #104]	; (8002d34 <i2c_test+0x184>)
 8002cca:	4a1a      	ldr	r2, [pc, #104]	; (8002d34 <i2c_test+0x184>)
 8002ccc:	8812      	ldrh	r2, [r2, #0]
 8002cce:	b292      	uxth	r2, r2
 8002cd0:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8002cd4:	b292      	uxth	r2, r2
 8002cd6:	801a      	strh	r2, [r3, #0]
 8002cd8:	bf00      	nop
 8002cda:	4b16      	ldr	r3, [pc, #88]	; (8002d34 <i2c_test+0x184>)
 8002cdc:	8a9b      	ldrh	r3, [r3, #20]
 8002cde:	b29b      	uxth	r3, r3
 8002ce0:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8002ce4:	2b00      	cmp	r3, #0
 8002ce6:	d0f8      	beq.n	8002cda <i2c_test+0x12a>
 8002ce8:	4b12      	ldr	r3, [pc, #72]	; (8002d34 <i2c_test+0x184>)
 8002cea:	8a1b      	ldrh	r3, [r3, #16]
 8002cec:	b29b      	uxth	r3, r3
 8002cee:	b2da      	uxtb	r2, r3
 8002cf0:	4b15      	ldr	r3, [pc, #84]	; (8002d48 <i2c_test+0x198>)
 8002cf2:	701a      	strb	r2, [r3, #0]
 8002cf4:	bf00      	nop
 8002cf6:	4b0f      	ldr	r3, [pc, #60]	; (8002d34 <i2c_test+0x184>)
 8002cf8:	8a9b      	ldrh	r3, [r3, #20]
 8002cfa:	b29b      	uxth	r3, r3
 8002cfc:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8002d00:	2b00      	cmp	r3, #0
 8002d02:	d0f8      	beq.n	8002cf6 <i2c_test+0x146>
 8002d04:	4b0b      	ldr	r3, [pc, #44]	; (8002d34 <i2c_test+0x184>)
 8002d06:	8a1b      	ldrh	r3, [r3, #16]
 8002d08:	b29b      	uxth	r3, r3
 8002d0a:	b2da      	uxtb	r2, r3
 8002d0c:	4b0e      	ldr	r3, [pc, #56]	; (8002d48 <i2c_test+0x198>)
 8002d0e:	705a      	strb	r2, [r3, #1]
 8002d10:	bf00      	nop
 8002d12:	4b08      	ldr	r3, [pc, #32]	; (8002d34 <i2c_test+0x184>)
 8002d14:	8b1b      	ldrh	r3, [r3, #24]
 8002d16:	b29b      	uxth	r3, r3
 8002d18:	f003 0302 	and.w	r3, r3, #2
 8002d1c:	2b00      	cmp	r3, #0
 8002d1e:	d1f8      	bne.n	8002d12 <i2c_test+0x162>
 8002d20:	4b04      	ldr	r3, [pc, #16]	; (8002d34 <i2c_test+0x184>)
 8002d22:	8a9b      	ldrh	r3, [r3, #20]
 8002d24:	b29b      	uxth	r3, r3
 8002d26:	4809      	ldr	r0, [pc, #36]	; (8002d4c <i2c_test+0x19c>)
 8002d28:	4619      	mov	r1, r3
 8002d2a:	f7fe fa33 	bl	8001194 <xprintf>
 8002d2e:	3708      	adds	r7, #8
 8002d30:	46bd      	mov	sp, r7
 8002d32:	bd80      	pop	{r7, pc}
 8002d34:	40005400 	.word	0x40005400
 8002d38:	0800319c 	.word	0x0800319c
 8002d3c:	080031bc 	.word	0x080031bc
 8002d40:	080031dc 	.word	0x080031dc
 8002d44:	08003200 	.word	0x08003200
 8002d48:	20002cc4 	.word	0x20002cc4
 8002d4c:	08003214 	.word	0x08003214

08002d50 <I2C1_EV_IRQHandler>:
 8002d50:	b580      	push	{r7, lr}
 8002d52:	af00      	add	r7, sp, #0
 8002d54:	4b01      	ldr	r3, [pc, #4]	; (8002d5c <I2C1_EV_IRQHandler+0xc>)
 8002d56:	681b      	ldr	r3, [r3, #0]
 8002d58:	4798      	blx	r3
 8002d5a:	bd80      	pop	{r7, pc}
 8002d5c:	20002ccc 	.word	0x20002ccc

08002d60 <I2C1_ER_IRQHandler>:
 8002d60:	b480      	push	{r7}
 8002d62:	b083      	sub	sp, #12
 8002d64:	af00      	add	r7, sp, #0
 8002d66:	4b08      	ldr	r3, [pc, #32]	; (8002d88 <I2C1_ER_IRQHandler+0x28>)
 8002d68:	8a9b      	ldrh	r3, [r3, #20]
 8002d6a:	80fb      	strh	r3, [r7, #6]
 8002d6c:	4a06      	ldr	r2, [pc, #24]	; (8002d88 <I2C1_ER_IRQHandler+0x28>)
 8002d6e:	4b06      	ldr	r3, [pc, #24]	; (8002d88 <I2C1_ER_IRQHandler+0x28>)
 8002d70:	8a9b      	ldrh	r3, [r3, #20]
 8002d72:	b299      	uxth	r1, r3
 8002d74:	f242 03ff 	movw	r3, #8447	; 0x20ff
 8002d78:	400b      	ands	r3, r1
 8002d7a:	b29b      	uxth	r3, r3
 8002d7c:	8293      	strh	r3, [r2, #20]
 8002d7e:	370c      	adds	r7, #12
 8002d80:	46bd      	mov	sp, r7
 8002d82:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d86:	4770      	bx	lr
 8002d88:	40005400 	.word	0x40005400

08002d8c <btf_conf>:
 8002d8c:	b480      	push	{r7}
 8002d8e:	af00      	add	r7, sp, #0
 8002d90:	4b10      	ldr	r3, [pc, #64]	; (8002dd4 <btf_conf+0x48>)
 8002d92:	8a9b      	ldrh	r3, [r3, #20]
 8002d94:	b29b      	uxth	r3, r3
 8002d96:	f003 0304 	and.w	r3, r3, #4
 8002d9a:	2b00      	cmp	r3, #0
 8002d9c:	d016      	beq.n	8002dcc <btf_conf+0x40>
 8002d9e:	4b0d      	ldr	r3, [pc, #52]	; (8002dd4 <btf_conf+0x48>)
 8002da0:	4a0c      	ldr	r2, [pc, #48]	; (8002dd4 <btf_conf+0x48>)
 8002da2:	8812      	ldrh	r2, [r2, #0]
 8002da4:	b292      	uxth	r2, r2
 8002da6:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8002daa:	b292      	uxth	r2, r2
 8002dac:	801a      	strh	r2, [r3, #0]
 8002dae:	4b09      	ldr	r3, [pc, #36]	; (8002dd4 <btf_conf+0x48>)
 8002db0:	8a1b      	ldrh	r3, [r3, #16]
 8002db2:	b29b      	uxth	r3, r3
 8002db4:	b2da      	uxtb	r2, r3
 8002db6:	4b08      	ldr	r3, [pc, #32]	; (8002dd8 <btf_conf+0x4c>)
 8002db8:	701a      	strb	r2, [r3, #0]
 8002dba:	4b06      	ldr	r3, [pc, #24]	; (8002dd4 <btf_conf+0x48>)
 8002dbc:	8a1b      	ldrh	r3, [r3, #16]
 8002dbe:	b29b      	uxth	r3, r3
 8002dc0:	b2da      	uxtb	r2, r3
 8002dc2:	4b05      	ldr	r3, [pc, #20]	; (8002dd8 <btf_conf+0x4c>)
 8002dc4:	705a      	strb	r2, [r3, #1]
 8002dc6:	4b05      	ldr	r3, [pc, #20]	; (8002ddc <btf_conf+0x50>)
 8002dc8:	2200      	movs	r2, #0
 8002dca:	601a      	str	r2, [r3, #0]
 8002dcc:	46bd      	mov	sp, r7
 8002dce:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002dd2:	4770      	bx	lr
 8002dd4:	40005400 	.word	0x40005400
 8002dd8:	20002cc4 	.word	0x20002cc4
 8002ddc:	20002cd0 	.word	0x20002cd0

08002de0 <raddr_conf>:
 8002de0:	b480      	push	{r7}
 8002de2:	af00      	add	r7, sp, #0
 8002de4:	4b0f      	ldr	r3, [pc, #60]	; (8002e24 <raddr_conf+0x44>)
 8002de6:	8a9b      	ldrh	r3, [r3, #20]
 8002de8:	b29b      	uxth	r3, r3
 8002dea:	f003 0302 	and.w	r3, r3, #2
 8002dee:	2b00      	cmp	r3, #0
 8002df0:	d014      	beq.n	8002e1c <raddr_conf+0x3c>
 8002df2:	4b0c      	ldr	r3, [pc, #48]	; (8002e24 <raddr_conf+0x44>)
 8002df4:	4a0b      	ldr	r2, [pc, #44]	; (8002e24 <raddr_conf+0x44>)
 8002df6:	8812      	ldrh	r2, [r2, #0]
 8002df8:	b292      	uxth	r2, r2
 8002dfa:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8002dfe:	b292      	uxth	r2, r2
 8002e00:	801a      	strh	r2, [r3, #0]
 8002e02:	4b08      	ldr	r3, [pc, #32]	; (8002e24 <raddr_conf+0x44>)
 8002e04:	4a07      	ldr	r2, [pc, #28]	; (8002e24 <raddr_conf+0x44>)
 8002e06:	8812      	ldrh	r2, [r2, #0]
 8002e08:	b292      	uxth	r2, r2
 8002e0a:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8002e0e:	b292      	uxth	r2, r2
 8002e10:	801a      	strh	r2, [r3, #0]
 8002e12:	4b04      	ldr	r3, [pc, #16]	; (8002e24 <raddr_conf+0x44>)
 8002e14:	8b1b      	ldrh	r3, [r3, #24]
 8002e16:	4b04      	ldr	r3, [pc, #16]	; (8002e28 <raddr_conf+0x48>)
 8002e18:	4a04      	ldr	r2, [pc, #16]	; (8002e2c <raddr_conf+0x4c>)
 8002e1a:	601a      	str	r2, [r3, #0]
 8002e1c:	46bd      	mov	sp, r7
 8002e1e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e22:	4770      	bx	lr
 8002e24:	40005400 	.word	0x40005400
 8002e28:	20002ccc 	.word	0x20002ccc
 8002e2c:	08002d8d 	.word	0x08002d8d

08002e30 <rsb_conf>:
 8002e30:	b480      	push	{r7}
 8002e32:	af00      	add	r7, sp, #0
 8002e34:	4b0a      	ldr	r3, [pc, #40]	; (8002e60 <rsb_conf+0x30>)
 8002e36:	8a9b      	ldrh	r3, [r3, #20]
 8002e38:	b29b      	uxth	r3, r3
 8002e3a:	f003 0301 	and.w	r3, r3, #1
 8002e3e:	2b00      	cmp	r3, #0
 8002e40:	d009      	beq.n	8002e56 <rsb_conf+0x26>
 8002e42:	4b07      	ldr	r3, [pc, #28]	; (8002e60 <rsb_conf+0x30>)
 8002e44:	4a07      	ldr	r2, [pc, #28]	; (8002e64 <rsb_conf+0x34>)
 8002e46:	7812      	ldrb	r2, [r2, #0]
 8002e48:	f042 0201 	orr.w	r2, r2, #1
 8002e4c:	b2d2      	uxtb	r2, r2
 8002e4e:	821a      	strh	r2, [r3, #16]
 8002e50:	4b05      	ldr	r3, [pc, #20]	; (8002e68 <rsb_conf+0x38>)
 8002e52:	4a06      	ldr	r2, [pc, #24]	; (8002e6c <rsb_conf+0x3c>)
 8002e54:	601a      	str	r2, [r3, #0]
 8002e56:	46bd      	mov	sp, r7
 8002e58:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e5c:	4770      	bx	lr
 8002e5e:	bf00      	nop
 8002e60:	40005400 	.word	0x40005400
 8002e64:	20000214 	.word	0x20000214
 8002e68:	20002ccc 	.word	0x20002ccc
 8002e6c:	08002de1 	.word	0x08002de1

08002e70 <pntr_tx_end>:
 8002e70:	b480      	push	{r7}
 8002e72:	af00      	add	r7, sp, #0
 8002e74:	4b0a      	ldr	r3, [pc, #40]	; (8002ea0 <pntr_tx_end+0x30>)
 8002e76:	8a9b      	ldrh	r3, [r3, #20]
 8002e78:	b29b      	uxth	r3, r3
 8002e7a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002e7e:	2b00      	cmp	r3, #0
 8002e80:	d00a      	beq.n	8002e98 <pntr_tx_end+0x28>
 8002e82:	4b07      	ldr	r3, [pc, #28]	; (8002ea0 <pntr_tx_end+0x30>)
 8002e84:	4a06      	ldr	r2, [pc, #24]	; (8002ea0 <pntr_tx_end+0x30>)
 8002e86:	8812      	ldrh	r2, [r2, #0]
 8002e88:	b292      	uxth	r2, r2
 8002e8a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002e8e:	b292      	uxth	r2, r2
 8002e90:	801a      	strh	r2, [r3, #0]
 8002e92:	4b04      	ldr	r3, [pc, #16]	; (8002ea4 <pntr_tx_end+0x34>)
 8002e94:	4a04      	ldr	r2, [pc, #16]	; (8002ea8 <pntr_tx_end+0x38>)
 8002e96:	601a      	str	r2, [r3, #0]
 8002e98:	46bd      	mov	sp, r7
 8002e9a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e9e:	4770      	bx	lr
 8002ea0:	40005400 	.word	0x40005400
 8002ea4:	20002ccc 	.word	0x20002ccc
 8002ea8:	08002e31 	.word	0x08002e31

08002eac <wadr_conf>:
 8002eac:	b480      	push	{r7}
 8002eae:	af00      	add	r7, sp, #0
 8002eb0:	4b09      	ldr	r3, [pc, #36]	; (8002ed8 <wadr_conf+0x2c>)
 8002eb2:	8a9b      	ldrh	r3, [r3, #20]
 8002eb4:	b29b      	uxth	r3, r3
 8002eb6:	f003 0302 	and.w	r3, r3, #2
 8002eba:	2b00      	cmp	r3, #0
 8002ebc:	d007      	beq.n	8002ece <wadr_conf+0x22>
 8002ebe:	4b06      	ldr	r3, [pc, #24]	; (8002ed8 <wadr_conf+0x2c>)
 8002ec0:	8b1b      	ldrh	r3, [r3, #24]
 8002ec2:	4b05      	ldr	r3, [pc, #20]	; (8002ed8 <wadr_conf+0x2c>)
 8002ec4:	2200      	movs	r2, #0
 8002ec6:	821a      	strh	r2, [r3, #16]
 8002ec8:	4b04      	ldr	r3, [pc, #16]	; (8002edc <wadr_conf+0x30>)
 8002eca:	4a05      	ldr	r2, [pc, #20]	; (8002ee0 <wadr_conf+0x34>)
 8002ecc:	601a      	str	r2, [r3, #0]
 8002ece:	46bd      	mov	sp, r7
 8002ed0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ed4:	4770      	bx	lr
 8002ed6:	bf00      	nop
 8002ed8:	40005400 	.word	0x40005400
 8002edc:	20002ccc 	.word	0x20002ccc
 8002ee0:	08002e71 	.word	0x08002e71

08002ee4 <sb_conf>:
 8002ee4:	b480      	push	{r7}
 8002ee6:	af00      	add	r7, sp, #0
 8002ee8:	4b08      	ldr	r3, [pc, #32]	; (8002f0c <sb_conf+0x28>)
 8002eea:	8a9b      	ldrh	r3, [r3, #20]
 8002eec:	b29b      	uxth	r3, r3
 8002eee:	f003 0301 	and.w	r3, r3, #1
 8002ef2:	2b00      	cmp	r3, #0
 8002ef4:	d006      	beq.n	8002f04 <sb_conf+0x20>
 8002ef6:	4b05      	ldr	r3, [pc, #20]	; (8002f0c <sb_conf+0x28>)
 8002ef8:	4a05      	ldr	r2, [pc, #20]	; (8002f10 <sb_conf+0x2c>)
 8002efa:	7812      	ldrb	r2, [r2, #0]
 8002efc:	821a      	strh	r2, [r3, #16]
 8002efe:	4b05      	ldr	r3, [pc, #20]	; (8002f14 <sb_conf+0x30>)
 8002f00:	4a05      	ldr	r2, [pc, #20]	; (8002f18 <sb_conf+0x34>)
 8002f02:	601a      	str	r2, [r3, #0]
 8002f04:	46bd      	mov	sp, r7
 8002f06:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f0a:	4770      	bx	lr
 8002f0c:	40005400 	.word	0x40005400
 8002f10:	20000214 	.word	0x20000214
 8002f14:	20002ccc 	.word	0x20002ccc
 8002f18:	08002ead 	.word	0x08002ead

08002f1c <i2c_start>:
 8002f1c:	b480      	push	{r7}
 8002f1e:	b083      	sub	sp, #12
 8002f20:	af00      	add	r7, sp, #0
 8002f22:	4603      	mov	r3, r0
 8002f24:	71fb      	strb	r3, [r7, #7]
 8002f26:	4b0c      	ldr	r3, [pc, #48]	; (8002f58 <i2c_start+0x3c>)
 8002f28:	79fa      	ldrb	r2, [r7, #7]
 8002f2a:	701a      	strb	r2, [r3, #0]
 8002f2c:	4b0b      	ldr	r3, [pc, #44]	; (8002f5c <i2c_start+0x40>)
 8002f2e:	4a0c      	ldr	r2, [pc, #48]	; (8002f60 <i2c_start+0x44>)
 8002f30:	601a      	str	r2, [r3, #0]
 8002f32:	4b0c      	ldr	r3, [pc, #48]	; (8002f64 <i2c_start+0x48>)
 8002f34:	4a0b      	ldr	r2, [pc, #44]	; (8002f64 <i2c_start+0x48>)
 8002f36:	8812      	ldrh	r2, [r2, #0]
 8002f38:	b292      	uxth	r2, r2
 8002f3a:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8002f3e:	b292      	uxth	r2, r2
 8002f40:	801a      	strh	r2, [r3, #0]
 8002f42:	4b09      	ldr	r3, [pc, #36]	; (8002f68 <i2c_start+0x4c>)
 8002f44:	681b      	ldr	r3, [r3, #0]
 8002f46:	1c5a      	adds	r2, r3, #1
 8002f48:	4b07      	ldr	r3, [pc, #28]	; (8002f68 <i2c_start+0x4c>)
 8002f4a:	601a      	str	r2, [r3, #0]
 8002f4c:	370c      	adds	r7, #12
 8002f4e:	46bd      	mov	sp, r7
 8002f50:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f54:	4770      	bx	lr
 8002f56:	bf00      	nop
 8002f58:	20000214 	.word	0x20000214
 8002f5c:	20002ccc 	.word	0x20002ccc
 8002f60:	08002ee5 	.word	0x08002ee5
 8002f64:	40005400 	.word	0x40005400
 8002f68:	20002cd0 	.word	0x20002cd0

08002f6c <update_attenuator>:
 8002f6c:	b480      	push	{r7}
 8002f6e:	b083      	sub	sp, #12
 8002f70:	af00      	add	r7, sp, #0
 8002f72:	4b22      	ldr	r3, [pc, #136]	; (8002ffc <update_attenuator+0x90>)
 8002f74:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8002f76:	f5c3 637f 	rsb	r3, r3, #4080	; 0xff0
 8002f7a:	330f      	adds	r3, #15
 8002f7c:	607b      	str	r3, [r7, #4]
 8002f7e:	687a      	ldr	r2, [r7, #4]
 8002f80:	f240 53db 	movw	r3, #1499	; 0x5db
 8002f84:	429a      	cmp	r2, r3
 8002f86:	d807      	bhi.n	8002f98 <update_attenuator+0x2c>
 8002f88:	4b1d      	ldr	r3, [pc, #116]	; (8003000 <update_attenuator+0x94>)
 8002f8a:	681b      	ldr	r3, [r3, #0]
 8002f8c:	1c59      	adds	r1, r3, #1
 8002f8e:	4a1c      	ldr	r2, [pc, #112]	; (8003000 <update_attenuator+0x94>)
 8002f90:	6011      	str	r1, [r2, #0]
 8002f92:	2b00      	cmp	r3, #0
 8002f94:	d000      	beq.n	8002f98 <update_attenuator+0x2c>
 8002f96:	bf00      	nop
 8002f98:	687b      	ldr	r3, [r7, #4]
 8002f9a:	f5b3 6f7a 	cmp.w	r3, #4000	; 0xfa0
 8002f9e:	d907      	bls.n	8002fb0 <update_attenuator+0x44>
 8002fa0:	4b17      	ldr	r3, [pc, #92]	; (8003000 <update_attenuator+0x94>)
 8002fa2:	681b      	ldr	r3, [r3, #0]
 8002fa4:	1e59      	subs	r1, r3, #1
 8002fa6:	4a16      	ldr	r2, [pc, #88]	; (8003000 <update_attenuator+0x94>)
 8002fa8:	6011      	str	r1, [r2, #0]
 8002faa:	2b00      	cmp	r3, #0
 8002fac:	d000      	beq.n	8002fb0 <update_attenuator+0x44>
 8002fae:	bf00      	nop
 8002fb0:	4b13      	ldr	r3, [pc, #76]	; (8003000 <update_attenuator+0x94>)
 8002fb2:	681b      	ldr	r3, [r3, #0]
 8002fb4:	2b0a      	cmp	r3, #10
 8002fb6:	dd03      	ble.n	8002fc0 <update_attenuator+0x54>
 8002fb8:	4b11      	ldr	r3, [pc, #68]	; (8003000 <update_attenuator+0x94>)
 8002fba:	220a      	movs	r2, #10
 8002fbc:	601a      	str	r2, [r3, #0]
 8002fbe:	bf00      	nop
 8002fc0:	4b0f      	ldr	r3, [pc, #60]	; (8003000 <update_attenuator+0x94>)
 8002fc2:	681b      	ldr	r3, [r3, #0]
 8002fc4:	2b00      	cmp	r3, #0
 8002fc6:	da02      	bge.n	8002fce <update_attenuator+0x62>
 8002fc8:	4b0d      	ldr	r3, [pc, #52]	; (8003000 <update_attenuator+0x94>)
 8002fca:	2200      	movs	r2, #0
 8002fcc:	601a      	str	r2, [r3, #0]
 8002fce:	4b0d      	ldr	r3, [pc, #52]	; (8003004 <update_attenuator+0x98>)
 8002fd0:	695b      	ldr	r3, [r3, #20]
 8002fd2:	b29b      	uxth	r3, r3
 8002fd4:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 8002fd8:	807b      	strh	r3, [r7, #2]
 8002fda:	4b09      	ldr	r3, [pc, #36]	; (8003000 <update_attenuator+0x94>)
 8002fdc:	681b      	ldr	r3, [r3, #0]
 8002fde:	b29b      	uxth	r3, r3
 8002fe0:	b2db      	uxtb	r3, r3
 8002fe2:	b29a      	uxth	r2, r3
 8002fe4:	887b      	ldrh	r3, [r7, #2]
 8002fe6:	4313      	orrs	r3, r2
 8002fe8:	b29b      	uxth	r3, r3
 8002fea:	807b      	strh	r3, [r7, #2]
 8002fec:	4b05      	ldr	r3, [pc, #20]	; (8003004 <update_attenuator+0x98>)
 8002fee:	887a      	ldrh	r2, [r7, #2]
 8002ff0:	615a      	str	r2, [r3, #20]
 8002ff2:	370c      	adds	r7, #12
 8002ff4:	46bd      	mov	sp, r7
 8002ff6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ffa:	4770      	bx	lr
 8002ffc:	40012200 	.word	0x40012200
 8003000:	20002cd4 	.word	0x20002cd4
 8003004:	40020c00 	.word	0x40020c00

08003008 <set_attenuator>:
 8003008:	b480      	push	{r7}
 800300a:	b085      	sub	sp, #20
 800300c:	af00      	add	r7, sp, #0
 800300e:	4603      	mov	r3, r0
 8003010:	80fb      	strh	r3, [r7, #6]
 8003012:	4b0b      	ldr	r3, [pc, #44]	; (8003040 <set_attenuator+0x38>)
 8003014:	695b      	ldr	r3, [r3, #20]
 8003016:	b29b      	uxth	r3, r3
 8003018:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
 800301c:	81fb      	strh	r3, [r7, #14]
 800301e:	88fb      	ldrh	r3, [r7, #6]
 8003020:	b2db      	uxtb	r3, r3
 8003022:	b29a      	uxth	r2, r3
 8003024:	89fb      	ldrh	r3, [r7, #14]
 8003026:	4313      	orrs	r3, r2
 8003028:	81fb      	strh	r3, [r7, #14]
 800302a:	4b05      	ldr	r3, [pc, #20]	; (8003040 <set_attenuator+0x38>)
 800302c:	89fa      	ldrh	r2, [r7, #14]
 800302e:	615a      	str	r2, [r3, #20]
 8003030:	88fa      	ldrh	r2, [r7, #6]
 8003032:	4b04      	ldr	r3, [pc, #16]	; (8003044 <set_attenuator+0x3c>)
 8003034:	601a      	str	r2, [r3, #0]
 8003036:	3714      	adds	r7, #20
 8003038:	46bd      	mov	sp, r7
 800303a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800303e:	4770      	bx	lr
 8003040:	40020c00 	.word	0x40020c00
 8003044:	20002cd4 	.word	0x20002cd4

08003048 <seg7_tbl>:
 8003048:	b6b31477 34e7e6d4 c7f5f6f7 e1e39763     w......4....c...
 8003058:	253d6349 000a0d64 253d7249 000a0d64     Ic=%d...Ir=%d...
 8003068:	6f727265 64253d72 00000a0d 253d6456     error=%d....Vd=%
 8003078:	000a0d64 7474614b 0d64253d 0000000a     d...Katt=%d.....
 8003088:	253d6449 0d416d64 0000000a 253d6456     Id=%dmA.....Vd=%
 8003098:	64252e64 000a0d56 64253d50 000a0d57     d.%dV...P=%dW...
 80030a8:	78616d49 6d64253d 000a0d41 253d6354     Imax=%dmA...Tc=%
 80030b8:	000a0d64 253d6a54 000a0d64 00000a0a     d...Tj=%d.......
 80030c8:	6c6c6568 000a0d6f 64253d49 0a416d20     hello...I=%d mA.
 80030d8:	00000000 6c383025 00002058 32302520     ....%08lX .. %02
 80030e8:	00000058 34302520 00000058 38302520     X... %04X... %08
 80030f8:	0000584c                                LX..

080030fc <cos_table>:
 80030fc:	000007d0 000007bd 00000784 00000727     ............'...
 800310c:	000006ab 00000614 00000567 000004ab     ........g.......
 800311c:	000003e8 00000325 00000269 000001bc     ....%...i.......
 800312c:	00000125 000000a9 0000004c 00000013     %.......L.......
 800313c:	00000000 00000013 0000004c 000000a9     ........L.......
 800314c:	00000125 000001bc 00000269 00000325     %.......i...%...
 800315c:	000003e8 000004ab 00000567 00000614     ........g.......
 800316c:	000006ab 00000727 00000784 000007bd     ....'...........

0800317c <kc>:
 800317c:	0001d7c4                                ....

08003180 <kr>:
 8003180:	00022baa                                .+..

08003184 <kv>:
 8003184:	000537f0                                .7..

08003188 <ac>:
 8003188:	0003f74d                                M...

0800318c <ar>:
 800318c:	ffdd90e7                                ....

08003190 <av>:
 8003190:	0007d396                                ....

08003194 <temp_sens_addr>:
 8003194:	00000094                                ....

08003198 <Rt>:
 8003198:	00000011 76276577 65732065 5320646e     ....we've send S
 80031a8:	54524154 206f7420 76616c73 75253a65     TART to slave:%u
 80031b8:	0000000a 76276577 65732065 6120646e     ....we've send a
 80031c8:	65726464 6f742073 616c7320 253a6576     ddres to slave:%
 80031d8:	00000a75 76276577 72772065 20657469     u...we've write 
 80031e8:	6e696f70 20726574 73206f74 6576616c     pointer to slave
 80031f8:	0a75253a 00000000 76276577 61682065     :%u.....we've ha
 8003208:	42206576 253a4654 00000a75 20737562     ve BTF:%u...bus 
 8003218:	66207369 3a656572 000a7525              is free:%u..

08003224 <apl602_imax>:
 8003224:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003234:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003244:	0000c350 0000c350 0000c350 0000c350     P...P...P...P...
 8003254:	0000c350 0000c350 0000c350 0000af3e     P...P...P...>...
 8003264:	0000a33e 000098af 00008f53 000086fa     >.......S.......
 8003274:	00007f7c 000078bb 0000729d 00006d0c     |....x...r...m..
 8003284:	000067f6 0000634c 00005f02 00005b0d     .g..Lc..._...[..
 8003294:	00005763 000053fd 000050d4 00004de2     cW...S...P...M..
 80032a4:	00004b21 0000488c 00004621 000043db     !K...H..!F...C..
 80032b4:	000041b7 00003fb2 00003dca 00003bfc     .A...?...=...;..
 80032c4:	00003a47 000038a8 0000371e 000035a8     G:...8...7...5..
 80032d4:	00003443 000032f0 000031ac 00003076     C4...2...1..v0..
 80032e4:	00002f4f 00002e34 00002d25 00002c21     O/..4...%-..!,..
 80032f4:	00002b28 00002a39 00002954 00002877     (+..9*..T)..w(..
 8003304:	000027a3 000026d6 00002611 00002554     .'...&...&..T%..
 8003314:	0000249d 000023ec 00002341 0000229d     .$...#..A#..."..
 8003324:	000021fd 00002163 000020ce 0000203e     .!..c!... ..> ..
 8003334:	00001fb2 00001f2b 00001ea7 00001e28     ....+.......(...
 8003344:	00001dac 00001d34 00001cc0 00001c4f     ....4.......O...
 8003354:	00001be1 00001b76 00001b0e 00001aa9     ....v...........
 8003364:	00001a46 000019e6 00001989 0000192e     F...............
 8003374:	000018d5 0000187f 0000182b 000017d9     ........+.......
 8003384:	00001788 0000173a 000016ee 000016a3     ....:...........
 8003394:	0000165a 00001613 000015ce 0000158a     Z...............
 80033a4:	00001547 00001506 000014c7 00001489     G...............
 80033b4:	0000144c 00001410 000013d6 0000139d     L...............
 80033c4:	00001365 0000132e 000012f8 000012c4     e...............
 80033d4:	00001290 0000125e 0000122c 000011fc     ....^...,.......
 80033e4:	000011cc 0000119d 00001170 00001143     ........p...C...
 80033f4:	00001116 000010eb 000010c1 00001097     ................
 8003404:	0000106e 00001045 0000101e 00000ff7     n...E...........
 8003414:	00000fd1 00000fab 00000f86 00000f62     ............b...
 8003424:	00000f3e 00000f1b 00000ef9 00000ed7     >...............
 8003434:	00000eb5 00000e94 00000e74 00000e54     ........t...T...
 8003444:	00000e35 00000e16 00000df8 00000dda     5...............
 8003454:	00000dbd 00000da0 00000d83 00000d67     ............g...
 8003464:	00000d4b 00000d30 00000d15 00000cfb     K...0...........
 8003474:	00000ce1 00000cc7 00000cbb 00000c96     ................
 8003484:	00000c71 00000c4d 00000c2a 00000c07     q...M...*.......
 8003494:	00000be4 00000bc3 00000ba2 00000b81     ................
 80034a4:	00000b61 00000b42 00000b23 00000b05     a...B...#.......
 80034b4:	00000ae7 00000aca 00000aad 00000a90     ................
 80034c4:	00000a74 00000a59 00000a3e 00000a23     t...Y...>...#...
 80034d4:	00000a09 000009ef 000009d6 000009bd     ................
 80034e4:	000009a4 0000098c 00000974 0000095d     ........t...]...
 80034f4:	00000946 0000092f 00000918 00000902     F.../...........
 8003504:	000008ec 000008d7 000008c2 000008ad     ................
 8003514:	00000899 00000884 00000870 0000085d     ........p...]...
 8003524:	00000849 00000836 00000823 00000811     I...6...#.......
 8003534:	000007ff 000007ec 000007db 000007c9     ................
 8003544:	000007b8 000007a7 00000796 00000785     ................
 8003554:	00000775 00000765 00000755 00000745     u...e...U...E...
 8003564:	00000735 00000726 00000717 00000708     5...&...........
 8003574:	000006f9 000006eb 000006dc 000006ce     ................
 8003584:	000006c0 000006b2 000006a4 00000697     ................
 8003594:	0000068a 0000067c 0000066f 00000663     ....|...o...c...
 80035a4:	00000656 00000649 0000063d 00000631     V...I...=...1...
 80035b4:	00000625 00000619 0000060d 00000601     %...............
 80035c4:	000005f6 000005ea 000005df 000005d4     ................
 80035d4:	000005c9 000005be 000005b3 000005a9     ................
 80035e4:	0000059e 00000594 0000058a 0000057f     ................
 80035f4:	00000575 0000056b 00000562 00000558     u...k...b...X...
 8003604:	0000054e 00000545 0000053b 00000532     N...E...;...2...
 8003614:	00000529 00000520 00000517 0000050e     )... ...........
 8003624:	00000505 000004fc 000004f4 000004eb     ................
 8003634:	000004e3 000004db 000004d2 000004ca     ................
 8003644:	000004c2 000004ba 000004b2 000004aa     ................
 8003654:	000004a3 0000049b 00000493 0000048c     ................
 8003664:	00000484 0000047d 00000476 0000046e     ....}...v...n...
 8003674:	00000467 00000460 00000459 00000452     g...`...Y...R...
 8003684:	0000044b 00000444 0000043e 00000437     K...D...>...7...
 8003694:	00000430 0000042a 00000423 0000041d     0...*...#.......
 80036a4:	00000417 00000410 0000040a 00000404     ................
 80036b4:	000003fe 000003f8 000003f2 000003ec     ................
 80036c4:	000003e6 000003e0 000003da 000003cb     ................
 80036d4:	000003c0 000003b6 000003ac 000003a2     ................
 80036e4:	00000399 0000038f 00000386 0000037c     ............|...
 80036f4:	00000373 0000036a 00000361 00000358     s...j...a...X...
 8003704:	0000034f 00000347 0000033e 00000336     O...G...>...6...
 8003714:	0000032e 00000325 0000031d 00000315     ....%...........
 8003724:	0000030e 00000306 000002fe 000002f7     ................
 8003734:	000002ef 000002e8 000002e1 000002d9     ................
 8003744:	000002d2 000002cb 000002c5 000002be     ................
 8003754:	000002b7 000002b0 000002aa 000002a3     ................
 8003764:	0000029d 00000297 00000290 0000028a     ................
 8003774:	00000284 0000027e 00000278 00000272     ....~...x...r...
 8003784:	0000026d 00000267 00000261 0000025c     m...g...a...\...
 8003794:	00000256 00000251 0000024b 00000246     V...Q...K...F...
 80037a4:	00000241 0000023b 00000236 00000231     A...;...6...1...
 80037b4:	0000022c 00000227 00000222 0000021e     ,...'...".......
 80037c4:	00000219 00000214 0000020f 0000020b     ................
 80037d4:	00000206 00000202 000001fd 000001f9     ................
 80037e4:	000001f4 000001f0 000001ec 000001e8     ................
 80037f4:	000001e3 000001df 000001db 000001d7     ................
 8003804:	000001d3 000001cf 000001cb 000001c8     ................
 8003814:	000001c4 000001c0 000001bc 000001b9     ................
 8003824:	000001b5 000001b1 000001ae 000001aa     ................
 8003834:	000001a7 000001a3 000001a0 0000019c     ................
 8003844:	00000199 00000196 00000192 0000018f     ................
 8003854:	0000018c 00000189 00000186 00000183     ................
 8003864:	0000017f 0000017c 00000179 00000176     ....|...y...v...
 8003874:	00000173 00000171 0000016e 0000016b     s...q...n...k...
 8003884:	00000168 00000165 00000162 00000160     h...e...b...`...
 8003894:	0000015d 0000015a 00000158 00000155     ]...Z...X...U...
 80038a4:	00000152 00000150 0000014d 0000014b     R...P...M...K...
 80038b4:	00000148 00000146 00000143 00000141     H...F...C...A...
 80038c4:	0000013e 0000013c 0000013a 00000137     >...<...:...7...
 80038d4:	00000135 00000133 00000130 0000012e     5...3...0.......
 80038e4:	0000012c 0000012a 00000128 00000125     ,...*...(...%...
 80038f4:	00000123 00000121 0000011f 0000011d     #...!...........
 8003904:	0000011b 00000119 00000117 00000115     ................
 8003914:	00000113 00000111 0000010f 0000010d     ................
 8003924:	0000010b 00000109 00000107 00000105     ................
 8003934:	00000104 00000102 00000100 000000fe     ................
 8003944:	000000fc 000000fb 000000f9 000000f7     ................
 8003954:	000000f5 000000f4 000000f2 000000f0     ................
 8003964:	000000ef 000000ed 000000ec 000000ea     ................
 8003974:	000000e8 000000e7 000000e5 000000e4     ................
 8003984:	000000e2 000000e1 000000df 000000de     ................
 8003994:	000000dc 000000db 000000d9 000000d8     ................
 80039a4:	000000d6 000000d5 000000d3 000000d2     ................
 80039b4:	000000d1 000000cf 000000ce 000000cd     ................
 80039c4:	000000cb 000000ca 000000c9 000000c7     ................
 80039d4:	000000c6 000000c5 000000c3 000000c2     ................
 80039e4:	000000c1 000000c0 000000be 000000bd     ................
 80039f4:	000000bc 000000bb 000000ba 000000b9     ................
 8003a04:	000000b7 000000b6 000000b5 000000b4     ................
 8003a14:	000000b3 000000b2 000000b1 000000af     ................
 8003a24:	000000ae 000000ad 000000ac 000000ab     ................
 8003a34:	000000aa 000000a9 000000a8 000000a7     ................
 8003a44:	000000a6 000000a5 000000a4 000000a3     ................
 8003a54:	000000a2 000000a1 000000a0 0000009f     ................
 8003a64:	0000009e 0000009d 0000009c 0000009b     ................
 8003a74:	0000009a 00000099 00000098 00000098     ................
 8003a84:	00000097 00000096 00000095 00000094     ................
 8003a94:	00000093 00000092 00000091 00000091     ................
 8003aa4:	00000090 0000008f 0000008e 0000008d     ................
 8003ab4:	0000008c 0000008c 0000008b 0000008a     ................
 8003ac4:	00000089 00000088 00000088 00000087     ................
 8003ad4:	00000086 00000085 00000084 00000084     ................
 8003ae4:	00000083 00000082 00000081 00000081     ................
 8003af4:	00000080 0000007f 0000007f 0000007e     ............~...
 8003b04:	0000007d 0000007c 0000007c 0000007b     }...|...|...{...
 8003b14:	0000007a 0000007a 00000079 00000078     z...z...y...x...
 8003b24:	00000078 00000077 00000076 00000076     x...w...v...v...
 8003b34:	00000075 00000074 00000074 00000073     u...t...t...s...
 8003b44:	00000073 00000072 00000071 00000071     s...r...q...q...
 8003b54:	00000070 0000006f 0000006f 0000006e     p...o...o...n...
 8003b64:	0000006e 0000006d 0000006c 0000006c     n...m...l...l...
 8003b74:	0000006b 0000006b 0000006a 00000000     k...k...j.......
