
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 b5 18 00 08 15 19 00 08 15 19 00 08     . . ............
 8000010:	15 19 00 08 15 19 00 08 15 19 00 08 00 00 00 00     ................
	...
 800002c:	15 19 00 08 15 19 00 08 00 00 00 00 15 19 00 08     ................
 800003c:	21 10 00 08 15 19 00 08 15 19 00 08 15 19 00 08     !...............
 800004c:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 800005c:	15 19 00 08 15 19 00 08 15 19 00 08 3d 10 00 08     ............=...
 800006c:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 800007c:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 800008c:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 800009c:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 80000ac:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 80000bc:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................
 80000cc:	15 19 00 08 15 19 00 08 dd 0a 00 08 a9 0d 00 08     ................
 80000dc:	15 19 00 08 15 19 00 08 15 19 00 08 15 19 00 08     ................

080000ec <strstr>:
 80000ec:	b4b0      	push	{r4, r5, r7}
 80000ee:	b083      	sub	sp, #12
 80000f0:	af00      	add	r7, sp, #0
 80000f2:	6078      	str	r0, [r7, #4]
 80000f4:	6039      	str	r1, [r7, #0]
 80000f6:	687c      	ldr	r4, [r7, #4]
 80000f8:	683d      	ldr	r5, [r7, #0]
 80000fa:	782b      	ldrb	r3, [r5, #0]
 80000fc:	2b00      	cmp	r3, #0
 80000fe:	d101      	bne.n	8000104 <strstr+0x18>
 8000100:	687b      	ldr	r3, [r7, #4]
 8000102:	e011      	b.n	8000128 <strstr+0x3c>
 8000104:	782a      	ldrb	r2, [r5, #0]
 8000106:	7823      	ldrb	r3, [r4, #0]
 8000108:	429a      	cmp	r2, r3
 800010a:	d102      	bne.n	8000112 <strstr+0x26>
 800010c:	3501      	adds	r5, #1
 800010e:	3401      	adds	r4, #1
 8000110:	e7f3      	b.n	80000fa <strstr+0xe>
 8000112:	683d      	ldr	r5, [r7, #0]
 8000114:	7823      	ldrb	r3, [r4, #0]
 8000116:	2b00      	cmp	r3, #0
 8000118:	d101      	bne.n	800011e <strstr+0x32>
 800011a:	2300      	movs	r3, #0
 800011c:	e004      	b.n	8000128 <strstr+0x3c>
 800011e:	687b      	ldr	r3, [r7, #4]
 8000120:	3301      	adds	r3, #1
 8000122:	607b      	str	r3, [r7, #4]
 8000124:	687c      	ldr	r4, [r7, #4]
 8000126:	e7e8      	b.n	80000fa <strstr+0xe>
 8000128:	4618      	mov	r0, r3
 800012a:	370c      	adds	r7, #12
 800012c:	46bd      	mov	sp, r7
 800012e:	bcb0      	pop	{r4, r5, r7}
 8000130:	4770      	bx	lr
 8000132:	bf00      	nop

08000134 <strncmp>:
 8000134:	b480      	push	{r7}
 8000136:	b087      	sub	sp, #28
 8000138:	af00      	add	r7, sp, #0
 800013a:	60f8      	str	r0, [r7, #12]
 800013c:	60b9      	str	r1, [r7, #8]
 800013e:	607a      	str	r2, [r7, #4]
 8000140:	2300      	movs	r3, #0
 8000142:	617b      	str	r3, [r7, #20]
 8000144:	bf00      	nop
 8000146:	687b      	ldr	r3, [r7, #4]
 8000148:	1e5a      	subs	r2, r3, #1
 800014a:	607a      	str	r2, [r7, #4]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d011      	beq.n	8000174 <strncmp+0x40>
 8000150:	68fb      	ldr	r3, [r7, #12]
 8000152:	781b      	ldrb	r3, [r3, #0]
 8000154:	4619      	mov	r1, r3
 8000156:	68bb      	ldr	r3, [r7, #8]
 8000158:	1c5a      	adds	r2, r3, #1
 800015a:	60ba      	str	r2, [r7, #8]
 800015c:	781b      	ldrb	r3, [r3, #0]
 800015e:	1acb      	subs	r3, r1, r3
 8000160:	617b      	str	r3, [r7, #20]
 8000162:	697b      	ldr	r3, [r7, #20]
 8000164:	2b00      	cmp	r3, #0
 8000166:	d105      	bne.n	8000174 <strncmp+0x40>
 8000168:	68fb      	ldr	r3, [r7, #12]
 800016a:	1c5a      	adds	r2, r3, #1
 800016c:	60fa      	str	r2, [r7, #12]
 800016e:	781b      	ldrb	r3, [r3, #0]
 8000170:	2b00      	cmp	r3, #0
 8000172:	d1e8      	bne.n	8000146 <strncmp+0x12>
 8000174:	697b      	ldr	r3, [r7, #20]
 8000176:	4618      	mov	r0, r3
 8000178:	371c      	adds	r7, #28
 800017a:	46bd      	mov	sp, r7
 800017c:	bc80      	pop	{r7}
 800017e:	4770      	bx	lr

08000180 <strlen>:
 8000180:	b490      	push	{r4, r7}
 8000182:	b082      	sub	sp, #8
 8000184:	af00      	add	r7, sp, #0
 8000186:	6078      	str	r0, [r7, #4]
 8000188:	687c      	ldr	r4, [r7, #4]
 800018a:	e000      	b.n	800018e <strlen+0xe>
 800018c:	3401      	adds	r4, #1
 800018e:	7823      	ldrb	r3, [r4, #0]
 8000190:	2b00      	cmp	r3, #0
 8000192:	d1fb      	bne.n	800018c <strlen+0xc>
 8000194:	4622      	mov	r2, r4
 8000196:	687b      	ldr	r3, [r7, #4]
 8000198:	1ad3      	subs	r3, r2, r3
 800019a:	4618      	mov	r0, r3
 800019c:	3708      	adds	r7, #8
 800019e:	46bd      	mov	sp, r7
 80001a0:	bc90      	pop	{r4, r7}
 80001a2:	4770      	bx	lr

080001a4 <atoi>:
 80001a4:	b480      	push	{r7}
 80001a6:	b085      	sub	sp, #20
 80001a8:	af00      	add	r7, sp, #0
 80001aa:	6078      	str	r0, [r7, #4]
 80001ac:	2300      	movs	r3, #0
 80001ae:	60bb      	str	r3, [r7, #8]
 80001b0:	2300      	movs	r3, #0
 80001b2:	60fb      	str	r3, [r7, #12]
 80001b4:	687b      	ldr	r3, [r7, #4]
 80001b6:	2b00      	cmp	r3, #0
 80001b8:	d010      	beq.n	80001dc <atoi+0x38>
 80001ba:	bf00      	nop
 80001bc:	687b      	ldr	r3, [r7, #4]
 80001be:	781b      	ldrb	r3, [r3, #0]
 80001c0:	2b20      	cmp	r3, #32
 80001c2:	d003      	beq.n	80001cc <atoi+0x28>
 80001c4:	687b      	ldr	r3, [r7, #4]
 80001c6:	781b      	ldrb	r3, [r3, #0]
 80001c8:	2b09      	cmp	r3, #9
 80001ca:	d109      	bne.n	80001e0 <atoi+0x3c>
 80001cc:	687b      	ldr	r3, [r7, #4]
 80001ce:	3301      	adds	r3, #1
 80001d0:	607b      	str	r3, [r7, #4]
 80001d2:	687b      	ldr	r3, [r7, #4]
 80001d4:	781b      	ldrb	r3, [r3, #0]
 80001d6:	2b00      	cmp	r3, #0
 80001d8:	d1f0      	bne.n	80001bc <atoi+0x18>
 80001da:	e001      	b.n	80001e0 <atoi+0x3c>
 80001dc:	2300      	movs	r3, #0
 80001de:	e032      	b.n	8000246 <atoi+0xa2>
 80001e0:	687b      	ldr	r3, [r7, #4]
 80001e2:	781b      	ldrb	r3, [r3, #0]
 80001e4:	2b2d      	cmp	r3, #45	; 0x2d
 80001e6:	d105      	bne.n	80001f4 <atoi+0x50>
 80001e8:	687b      	ldr	r3, [r7, #4]
 80001ea:	1c5a      	adds	r2, r3, #1
 80001ec:	607a      	str	r2, [r7, #4]
 80001ee:	781b      	ldrb	r3, [r3, #0]
 80001f0:	2b00      	cmp	r3, #0
 80001f2:	d10a      	bne.n	800020a <atoi+0x66>
 80001f4:	687b      	ldr	r3, [r7, #4]
 80001f6:	781b      	ldrb	r3, [r3, #0]
 80001f8:	2b2b      	cmp	r3, #43	; 0x2b
 80001fa:	d104      	bne.n	8000206 <atoi+0x62>
 80001fc:	687b      	ldr	r3, [r7, #4]
 80001fe:	1c5a      	adds	r2, r3, #1
 8000200:	607a      	str	r2, [r7, #4]
 8000202:	781b      	ldrb	r3, [r3, #0]
 8000204:	2b00      	cmp	r3, #0
 8000206:	2301      	movs	r3, #1
 8000208:	e001      	b.n	800020e <atoi+0x6a>
 800020a:	f04f 33ff 	mov.w	r3, #4294967295
 800020e:	60bb      	str	r3, [r7, #8]
 8000210:	e00d      	b.n	800022e <atoi+0x8a>
 8000212:	68fa      	ldr	r2, [r7, #12]
 8000214:	4613      	mov	r3, r2
 8000216:	009b      	lsls	r3, r3, #2
 8000218:	4413      	add	r3, r2
 800021a:	005b      	lsls	r3, r3, #1
 800021c:	60fb      	str	r3, [r7, #12]
 800021e:	687b      	ldr	r3, [r7, #4]
 8000220:	1c5a      	adds	r2, r3, #1
 8000222:	607a      	str	r2, [r7, #4]
 8000224:	781b      	ldrb	r3, [r3, #0]
 8000226:	3b30      	subs	r3, #48	; 0x30
 8000228:	68fa      	ldr	r2, [r7, #12]
 800022a:	4413      	add	r3, r2
 800022c:	60fb      	str	r3, [r7, #12]
 800022e:	687b      	ldr	r3, [r7, #4]
 8000230:	781b      	ldrb	r3, [r3, #0]
 8000232:	2b2f      	cmp	r3, #47	; 0x2f
 8000234:	d903      	bls.n	800023e <atoi+0x9a>
 8000236:	687b      	ldr	r3, [r7, #4]
 8000238:	781b      	ldrb	r3, [r3, #0]
 800023a:	2b39      	cmp	r3, #57	; 0x39
 800023c:	d9e9      	bls.n	8000212 <atoi+0x6e>
 800023e:	68bb      	ldr	r3, [r7, #8]
 8000240:	68fa      	ldr	r2, [r7, #12]
 8000242:	fb02 f303 	mul.w	r3, r2, r3
 8000246:	4618      	mov	r0, r3
 8000248:	3714      	adds	r7, #20
 800024a:	46bd      	mov	sp, r7
 800024c:	bc80      	pop	{r7}
 800024e:	4770      	bx	lr

08000250 <xputc>:
 8000250:	b580      	push	{r7, lr}
 8000252:	b082      	sub	sp, #8
 8000254:	af00      	add	r7, sp, #0
 8000256:	4603      	mov	r3, r0
 8000258:	71fb      	strb	r3, [r7, #7]
 800025a:	79fb      	ldrb	r3, [r7, #7]
 800025c:	2b0a      	cmp	r3, #10
 800025e:	d102      	bne.n	8000266 <xputc+0x16>
 8000260:	200d      	movs	r0, #13
 8000262:	f7ff fff5 	bl	8000250 <xputc>
 8000266:	4b0c      	ldr	r3, [pc, #48]	; (8000298 <xputc+0x48>)
 8000268:	681b      	ldr	r3, [r3, #0]
 800026a:	2b00      	cmp	r3, #0
 800026c:	d007      	beq.n	800027e <xputc+0x2e>
 800026e:	4b0a      	ldr	r3, [pc, #40]	; (8000298 <xputc+0x48>)
 8000270:	681b      	ldr	r3, [r3, #0]
 8000272:	1c5a      	adds	r2, r3, #1
 8000274:	4908      	ldr	r1, [pc, #32]	; (8000298 <xputc+0x48>)
 8000276:	600a      	str	r2, [r1, #0]
 8000278:	79fa      	ldrb	r2, [r7, #7]
 800027a:	701a      	strb	r2, [r3, #0]
 800027c:	e008      	b.n	8000290 <xputc+0x40>
 800027e:	4b07      	ldr	r3, [pc, #28]	; (800029c <xputc+0x4c>)
 8000280:	681b      	ldr	r3, [r3, #0]
 8000282:	2b00      	cmp	r3, #0
 8000284:	d004      	beq.n	8000290 <xputc+0x40>
 8000286:	4b05      	ldr	r3, [pc, #20]	; (800029c <xputc+0x4c>)
 8000288:	681b      	ldr	r3, [r3, #0]
 800028a:	79fa      	ldrb	r2, [r7, #7]
 800028c:	4610      	mov	r0, r2
 800028e:	4798      	blx	r3
 8000290:	3708      	adds	r7, #8
 8000292:	46bd      	mov	sp, r7
 8000294:	bd80      	pop	{r7, pc}
 8000296:	bf00      	nop
 8000298:	20000010 	.word	0x20000010
 800029c:	2000000c 	.word	0x2000000c

080002a0 <xputs>:
 80002a0:	b580      	push	{r7, lr}
 80002a2:	b082      	sub	sp, #8
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	6078      	str	r0, [r7, #4]
 80002a8:	e006      	b.n	80002b8 <xputs+0x18>
 80002aa:	687b      	ldr	r3, [r7, #4]
 80002ac:	1c5a      	adds	r2, r3, #1
 80002ae:	607a      	str	r2, [r7, #4]
 80002b0:	781b      	ldrb	r3, [r3, #0]
 80002b2:	4618      	mov	r0, r3
 80002b4:	f7ff ffcc 	bl	8000250 <xputc>
 80002b8:	687b      	ldr	r3, [r7, #4]
 80002ba:	781b      	ldrb	r3, [r3, #0]
 80002bc:	2b00      	cmp	r3, #0
 80002be:	d1f4      	bne.n	80002aa <xputs+0xa>
 80002c0:	bf00      	nop
 80002c2:	3708      	adds	r7, #8
 80002c4:	46bd      	mov	sp, r7
 80002c6:	bd80      	pop	{r7, pc}

080002c8 <xfputs>:
 80002c8:	b580      	push	{r7, lr}
 80002ca:	b084      	sub	sp, #16
 80002cc:	af00      	add	r7, sp, #0
 80002ce:	6078      	str	r0, [r7, #4]
 80002d0:	6039      	str	r1, [r7, #0]
 80002d2:	4b0c      	ldr	r3, [pc, #48]	; (8000304 <xfputs+0x3c>)
 80002d4:	681b      	ldr	r3, [r3, #0]
 80002d6:	60fb      	str	r3, [r7, #12]
 80002d8:	4a0a      	ldr	r2, [pc, #40]	; (8000304 <xfputs+0x3c>)
 80002da:	687b      	ldr	r3, [r7, #4]
 80002dc:	6013      	str	r3, [r2, #0]
 80002de:	e006      	b.n	80002ee <xfputs+0x26>
 80002e0:	683b      	ldr	r3, [r7, #0]
 80002e2:	1c5a      	adds	r2, r3, #1
 80002e4:	603a      	str	r2, [r7, #0]
 80002e6:	781b      	ldrb	r3, [r3, #0]
 80002e8:	4618      	mov	r0, r3
 80002ea:	f7ff ffb1 	bl	8000250 <xputc>
 80002ee:	683b      	ldr	r3, [r7, #0]
 80002f0:	781b      	ldrb	r3, [r3, #0]
 80002f2:	2b00      	cmp	r3, #0
 80002f4:	d1f4      	bne.n	80002e0 <xfputs+0x18>
 80002f6:	4a03      	ldr	r2, [pc, #12]	; (8000304 <xfputs+0x3c>)
 80002f8:	68fb      	ldr	r3, [r7, #12]
 80002fa:	6013      	str	r3, [r2, #0]
 80002fc:	bf00      	nop
 80002fe:	3710      	adds	r7, #16
 8000300:	46bd      	mov	sp, r7
 8000302:	bd80      	pop	{r7, pc}
 8000304:	2000000c 	.word	0x2000000c

08000308 <xvprintf>:
 8000308:	b580      	push	{r7, lr}
 800030a:	b08e      	sub	sp, #56	; 0x38
 800030c:	af00      	add	r7, sp, #0
 800030e:	6078      	str	r0, [r7, #4]
 8000310:	6039      	str	r1, [r7, #0]
 8000312:	687b      	ldr	r3, [r7, #4]
 8000314:	1c5a      	adds	r2, r3, #1
 8000316:	607a      	str	r2, [r7, #4]
 8000318:	781b      	ldrb	r3, [r3, #0]
 800031a:	77fb      	strb	r3, [r7, #31]
 800031c:	7ffb      	ldrb	r3, [r7, #31]
 800031e:	2b00      	cmp	r3, #0
 8000320:	f000 8167 	beq.w	80005f2 <xvprintf+0x2ea>
 8000324:	7ffb      	ldrb	r3, [r7, #31]
 8000326:	2b25      	cmp	r3, #37	; 0x25
 8000328:	d004      	beq.n	8000334 <xvprintf+0x2c>
 800032a:	7ffb      	ldrb	r3, [r7, #31]
 800032c:	4618      	mov	r0, r3
 800032e:	f7ff ff8f 	bl	8000250 <xputc>
 8000332:	e15d      	b.n	80005f0 <xvprintf+0x2e8>
 8000334:	2300      	movs	r3, #0
 8000336:	627b      	str	r3, [r7, #36]	; 0x24
 8000338:	687b      	ldr	r3, [r7, #4]
 800033a:	1c5a      	adds	r2, r3, #1
 800033c:	607a      	str	r2, [r7, #4]
 800033e:	781b      	ldrb	r3, [r3, #0]
 8000340:	77fb      	strb	r3, [r7, #31]
 8000342:	7ffb      	ldrb	r3, [r7, #31]
 8000344:	2b30      	cmp	r3, #48	; 0x30
 8000346:	d107      	bne.n	8000358 <xvprintf+0x50>
 8000348:	2301      	movs	r3, #1
 800034a:	627b      	str	r3, [r7, #36]	; 0x24
 800034c:	687b      	ldr	r3, [r7, #4]
 800034e:	1c5a      	adds	r2, r3, #1
 8000350:	607a      	str	r2, [r7, #4]
 8000352:	781b      	ldrb	r3, [r3, #0]
 8000354:	77fb      	strb	r3, [r7, #31]
 8000356:	e009      	b.n	800036c <xvprintf+0x64>
 8000358:	7ffb      	ldrb	r3, [r7, #31]
 800035a:	2b2d      	cmp	r3, #45	; 0x2d
 800035c:	d106      	bne.n	800036c <xvprintf+0x64>
 800035e:	2302      	movs	r3, #2
 8000360:	627b      	str	r3, [r7, #36]	; 0x24
 8000362:	687b      	ldr	r3, [r7, #4]
 8000364:	1c5a      	adds	r2, r3, #1
 8000366:	607a      	str	r2, [r7, #4]
 8000368:	781b      	ldrb	r3, [r3, #0]
 800036a:	77fb      	strb	r3, [r7, #31]
 800036c:	2300      	movs	r3, #0
 800036e:	62bb      	str	r3, [r7, #40]	; 0x28
 8000370:	e00e      	b.n	8000390 <xvprintf+0x88>
 8000372:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000374:	4613      	mov	r3, r2
 8000376:	009b      	lsls	r3, r3, #2
 8000378:	4413      	add	r3, r2
 800037a:	005b      	lsls	r3, r3, #1
 800037c:	461a      	mov	r2, r3
 800037e:	7ffb      	ldrb	r3, [r7, #31]
 8000380:	4413      	add	r3, r2
 8000382:	3b30      	subs	r3, #48	; 0x30
 8000384:	62bb      	str	r3, [r7, #40]	; 0x28
 8000386:	687b      	ldr	r3, [r7, #4]
 8000388:	1c5a      	adds	r2, r3, #1
 800038a:	607a      	str	r2, [r7, #4]
 800038c:	781b      	ldrb	r3, [r3, #0]
 800038e:	77fb      	strb	r3, [r7, #31]
 8000390:	7ffb      	ldrb	r3, [r7, #31]
 8000392:	2b2f      	cmp	r3, #47	; 0x2f
 8000394:	d902      	bls.n	800039c <xvprintf+0x94>
 8000396:	7ffb      	ldrb	r3, [r7, #31]
 8000398:	2b39      	cmp	r3, #57	; 0x39
 800039a:	d9ea      	bls.n	8000372 <xvprintf+0x6a>
 800039c:	7ffb      	ldrb	r3, [r7, #31]
 800039e:	2b6c      	cmp	r3, #108	; 0x6c
 80003a0:	d002      	beq.n	80003a8 <xvprintf+0xa0>
 80003a2:	7ffb      	ldrb	r3, [r7, #31]
 80003a4:	2b4c      	cmp	r3, #76	; 0x4c
 80003a6:	d108      	bne.n	80003ba <xvprintf+0xb2>
 80003a8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80003aa:	f043 0304 	orr.w	r3, r3, #4
 80003ae:	627b      	str	r3, [r7, #36]	; 0x24
 80003b0:	687b      	ldr	r3, [r7, #4]
 80003b2:	1c5a      	adds	r2, r3, #1
 80003b4:	607a      	str	r2, [r7, #4]
 80003b6:	781b      	ldrb	r3, [r3, #0]
 80003b8:	77fb      	strb	r3, [r7, #31]
 80003ba:	7ffb      	ldrb	r3, [r7, #31]
 80003bc:	2b00      	cmp	r3, #0
 80003be:	f000 811a 	beq.w	80005f6 <xvprintf+0x2ee>
 80003c2:	7ffb      	ldrb	r3, [r7, #31]
 80003c4:	77bb      	strb	r3, [r7, #30]
 80003c6:	7fbb      	ldrb	r3, [r7, #30]
 80003c8:	2b60      	cmp	r3, #96	; 0x60
 80003ca:	d902      	bls.n	80003d2 <xvprintf+0xca>
 80003cc:	7fbb      	ldrb	r3, [r7, #30]
 80003ce:	3b20      	subs	r3, #32
 80003d0:	77bb      	strb	r3, [r7, #30]
 80003d2:	7fbb      	ldrb	r3, [r7, #30]
 80003d4:	3b42      	subs	r3, #66	; 0x42
 80003d6:	2b16      	cmp	r3, #22
 80003d8:	d873      	bhi.n	80004c2 <xvprintf+0x1ba>
 80003da:	a201      	add	r2, pc, #4	; (adr r2, 80003e0 <xvprintf+0xd8>)
 80003dc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80003e0:	080004ab 	.word	0x080004ab
 80003e4:	08000499 	.word	0x08000499
 80003e8:	080004b7 	.word	0x080004b7
 80003ec:	080004c3 	.word	0x080004c3
 80003f0:	080004c3 	.word	0x080004c3
 80003f4:	080004c3 	.word	0x080004c3
 80003f8:	080004c3 	.word	0x080004c3
 80003fc:	080004c3 	.word	0x080004c3
 8000400:	080004c3 	.word	0x080004c3
 8000404:	080004c3 	.word	0x080004c3
 8000408:	080004c3 	.word	0x080004c3
 800040c:	080004c3 	.word	0x080004c3
 8000410:	080004c3 	.word	0x080004c3
 8000414:	080004b1 	.word	0x080004b1
 8000418:	080004c3 	.word	0x080004c3
 800041c:	080004c3 	.word	0x080004c3
 8000420:	080004c3 	.word	0x080004c3
 8000424:	0800043d 	.word	0x0800043d
 8000428:	080004c3 	.word	0x080004c3
 800042c:	080004b7 	.word	0x080004b7
 8000430:	080004c3 	.word	0x080004c3
 8000434:	080004c3 	.word	0x080004c3
 8000438:	080004bd 	.word	0x080004bd
 800043c:	683b      	ldr	r3, [r7, #0]
 800043e:	1d1a      	adds	r2, r3, #4
 8000440:	603a      	str	r2, [r7, #0]
 8000442:	681b      	ldr	r3, [r3, #0]
 8000444:	61bb      	str	r3, [r7, #24]
 8000446:	2300      	movs	r3, #0
 8000448:	62fb      	str	r3, [r7, #44]	; 0x2c
 800044a:	e002      	b.n	8000452 <xvprintf+0x14a>
 800044c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800044e:	3301      	adds	r3, #1
 8000450:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000452:	69ba      	ldr	r2, [r7, #24]
 8000454:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000456:	4413      	add	r3, r2
 8000458:	781b      	ldrb	r3, [r3, #0]
 800045a:	2b00      	cmp	r3, #0
 800045c:	d1f6      	bne.n	800044c <xvprintf+0x144>
 800045e:	e002      	b.n	8000466 <xvprintf+0x15e>
 8000460:	2020      	movs	r0, #32
 8000462:	f7ff fef5 	bl	8000250 <xputc>
 8000466:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000468:	f003 0302 	and.w	r3, r3, #2
 800046c:	2b00      	cmp	r3, #0
 800046e:	d105      	bne.n	800047c <xvprintf+0x174>
 8000470:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000472:	1c5a      	adds	r2, r3, #1
 8000474:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000476:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000478:	4293      	cmp	r3, r2
 800047a:	d3f1      	bcc.n	8000460 <xvprintf+0x158>
 800047c:	69b8      	ldr	r0, [r7, #24]
 800047e:	f7ff ff0f 	bl	80002a0 <xputs>
 8000482:	e002      	b.n	800048a <xvprintf+0x182>
 8000484:	2020      	movs	r0, #32
 8000486:	f7ff fee3 	bl	8000250 <xputc>
 800048a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800048c:	1c5a      	adds	r2, r3, #1
 800048e:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000490:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000492:	4293      	cmp	r3, r2
 8000494:	d3f6      	bcc.n	8000484 <xvprintf+0x17c>
 8000496:	e0ab      	b.n	80005f0 <xvprintf+0x2e8>
 8000498:	683b      	ldr	r3, [r7, #0]
 800049a:	1d1a      	adds	r2, r3, #4
 800049c:	603a      	str	r2, [r7, #0]
 800049e:	681b      	ldr	r3, [r3, #0]
 80004a0:	b2db      	uxtb	r3, r3
 80004a2:	4618      	mov	r0, r3
 80004a4:	f7ff fed4 	bl	8000250 <xputc>
 80004a8:	e0a2      	b.n	80005f0 <xvprintf+0x2e8>
 80004aa:	2302      	movs	r3, #2
 80004ac:	637b      	str	r3, [r7, #52]	; 0x34
 80004ae:	e00d      	b.n	80004cc <xvprintf+0x1c4>
 80004b0:	2308      	movs	r3, #8
 80004b2:	637b      	str	r3, [r7, #52]	; 0x34
 80004b4:	e00a      	b.n	80004cc <xvprintf+0x1c4>
 80004b6:	230a      	movs	r3, #10
 80004b8:	637b      	str	r3, [r7, #52]	; 0x34
 80004ba:	e007      	b.n	80004cc <xvprintf+0x1c4>
 80004bc:	2310      	movs	r3, #16
 80004be:	637b      	str	r3, [r7, #52]	; 0x34
 80004c0:	e004      	b.n	80004cc <xvprintf+0x1c4>
 80004c2:	7ffb      	ldrb	r3, [r7, #31]
 80004c4:	4618      	mov	r0, r3
 80004c6:	f7ff fec3 	bl	8000250 <xputc>
 80004ca:	e091      	b.n	80005f0 <xvprintf+0x2e8>
 80004cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80004ce:	f003 0304 	and.w	r3, r3, #4
 80004d2:	2b00      	cmp	r3, #0
 80004d4:	d004      	beq.n	80004e0 <xvprintf+0x1d8>
 80004d6:	683b      	ldr	r3, [r7, #0]
 80004d8:	1d1a      	adds	r2, r3, #4
 80004da:	603a      	str	r2, [r7, #0]
 80004dc:	681b      	ldr	r3, [r3, #0]
 80004de:	e00b      	b.n	80004f8 <xvprintf+0x1f0>
 80004e0:	7fbb      	ldrb	r3, [r7, #30]
 80004e2:	2b44      	cmp	r3, #68	; 0x44
 80004e4:	d104      	bne.n	80004f0 <xvprintf+0x1e8>
 80004e6:	683b      	ldr	r3, [r7, #0]
 80004e8:	1d1a      	adds	r2, r3, #4
 80004ea:	603a      	str	r2, [r7, #0]
 80004ec:	681b      	ldr	r3, [r3, #0]
 80004ee:	e003      	b.n	80004f8 <xvprintf+0x1f0>
 80004f0:	683b      	ldr	r3, [r7, #0]
 80004f2:	1d1a      	adds	r2, r3, #4
 80004f4:	603a      	str	r2, [r7, #0]
 80004f6:	681b      	ldr	r3, [r3, #0]
 80004f8:	623b      	str	r3, [r7, #32]
 80004fa:	7fbb      	ldrb	r3, [r7, #30]
 80004fc:	2b44      	cmp	r3, #68	; 0x44
 80004fe:	d109      	bne.n	8000514 <xvprintf+0x20c>
 8000500:	6a3b      	ldr	r3, [r7, #32]
 8000502:	2b00      	cmp	r3, #0
 8000504:	da06      	bge.n	8000514 <xvprintf+0x20c>
 8000506:	6a3b      	ldr	r3, [r7, #32]
 8000508:	425b      	negs	r3, r3
 800050a:	623b      	str	r3, [r7, #32]
 800050c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800050e:	f043 0308 	orr.w	r3, r3, #8
 8000512:	627b      	str	r3, [r7, #36]	; 0x24
 8000514:	2300      	movs	r3, #0
 8000516:	633b      	str	r3, [r7, #48]	; 0x30
 8000518:	6a3b      	ldr	r3, [r7, #32]
 800051a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800051c:	fbb3 f2f2 	udiv	r2, r3, r2
 8000520:	6b79      	ldr	r1, [r7, #52]	; 0x34
 8000522:	fb01 f202 	mul.w	r2, r1, r2
 8000526:	1a9b      	subs	r3, r3, r2
 8000528:	77bb      	strb	r3, [r7, #30]
 800052a:	6a3a      	ldr	r2, [r7, #32]
 800052c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800052e:	fbb2 f3f3 	udiv	r3, r2, r3
 8000532:	623b      	str	r3, [r7, #32]
 8000534:	7fbb      	ldrb	r3, [r7, #30]
 8000536:	2b09      	cmp	r3, #9
 8000538:	d908      	bls.n	800054c <xvprintf+0x244>
 800053a:	7ffb      	ldrb	r3, [r7, #31]
 800053c:	2b78      	cmp	r3, #120	; 0x78
 800053e:	d101      	bne.n	8000544 <xvprintf+0x23c>
 8000540:	2227      	movs	r2, #39	; 0x27
 8000542:	e000      	b.n	8000546 <xvprintf+0x23e>
 8000544:	2207      	movs	r2, #7
 8000546:	7fbb      	ldrb	r3, [r7, #30]
 8000548:	4413      	add	r3, r2
 800054a:	77bb      	strb	r3, [r7, #30]
 800054c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800054e:	1c5a      	adds	r2, r3, #1
 8000550:	633a      	str	r2, [r7, #48]	; 0x30
 8000552:	7fba      	ldrb	r2, [r7, #30]
 8000554:	3230      	adds	r2, #48	; 0x30
 8000556:	b2d2      	uxtb	r2, r2
 8000558:	f107 0138 	add.w	r1, r7, #56	; 0x38
 800055c:	440b      	add	r3, r1
 800055e:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000562:	6a3b      	ldr	r3, [r7, #32]
 8000564:	2b00      	cmp	r3, #0
 8000566:	d002      	beq.n	800056e <xvprintf+0x266>
 8000568:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800056a:	2b0f      	cmp	r3, #15
 800056c:	d9d4      	bls.n	8000518 <xvprintf+0x210>
 800056e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000570:	f003 0308 	and.w	r3, r3, #8
 8000574:	2b00      	cmp	r3, #0
 8000576:	d008      	beq.n	800058a <xvprintf+0x282>
 8000578:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800057a:	1c5a      	adds	r2, r3, #1
 800057c:	633a      	str	r2, [r7, #48]	; 0x30
 800057e:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000582:	4413      	add	r3, r2
 8000584:	222d      	movs	r2, #45	; 0x2d
 8000586:	f803 2c30 	strb.w	r2, [r3, #-48]
 800058a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800058c:	62fb      	str	r3, [r7, #44]	; 0x2c
 800058e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000590:	f003 0301 	and.w	r3, r3, #1
 8000594:	2b00      	cmp	r3, #0
 8000596:	d001      	beq.n	800059c <xvprintf+0x294>
 8000598:	2330      	movs	r3, #48	; 0x30
 800059a:	e000      	b.n	800059e <xvprintf+0x296>
 800059c:	2320      	movs	r3, #32
 800059e:	77bb      	strb	r3, [r7, #30]
 80005a0:	e003      	b.n	80005aa <xvprintf+0x2a2>
 80005a2:	7fbb      	ldrb	r3, [r7, #30]
 80005a4:	4618      	mov	r0, r3
 80005a6:	f7ff fe53 	bl	8000250 <xputc>
 80005aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80005ac:	f003 0302 	and.w	r3, r3, #2
 80005b0:	2b00      	cmp	r3, #0
 80005b2:	d105      	bne.n	80005c0 <xvprintf+0x2b8>
 80005b4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80005b6:	1c5a      	adds	r2, r3, #1
 80005b8:	62fa      	str	r2, [r7, #44]	; 0x2c
 80005ba:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80005bc:	4293      	cmp	r3, r2
 80005be:	d3f0      	bcc.n	80005a2 <xvprintf+0x29a>
 80005c0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80005c2:	3b01      	subs	r3, #1
 80005c4:	633b      	str	r3, [r7, #48]	; 0x30
 80005c6:	f107 0208 	add.w	r2, r7, #8
 80005ca:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80005cc:	4413      	add	r3, r2
 80005ce:	781b      	ldrb	r3, [r3, #0]
 80005d0:	4618      	mov	r0, r3
 80005d2:	f7ff fe3d 	bl	8000250 <xputc>
 80005d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80005d8:	2b00      	cmp	r3, #0
 80005da:	d1f1      	bne.n	80005c0 <xvprintf+0x2b8>
 80005dc:	e002      	b.n	80005e4 <xvprintf+0x2dc>
 80005de:	2020      	movs	r0, #32
 80005e0:	f7ff fe36 	bl	8000250 <xputc>
 80005e4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80005e6:	1c5a      	adds	r2, r3, #1
 80005e8:	62fa      	str	r2, [r7, #44]	; 0x2c
 80005ea:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80005ec:	4293      	cmp	r3, r2
 80005ee:	d3f6      	bcc.n	80005de <xvprintf+0x2d6>
 80005f0:	e68f      	b.n	8000312 <xvprintf+0xa>
 80005f2:	bf00      	nop
 80005f4:	e000      	b.n	80005f8 <xvprintf+0x2f0>
 80005f6:	bf00      	nop
 80005f8:	bf00      	nop
 80005fa:	3738      	adds	r7, #56	; 0x38
 80005fc:	46bd      	mov	sp, r7
 80005fe:	bd80      	pop	{r7, pc}

08000600 <xprintf>:
 8000600:	b40f      	push	{r0, r1, r2, r3}
 8000602:	b580      	push	{r7, lr}
 8000604:	b082      	sub	sp, #8
 8000606:	af00      	add	r7, sp, #0
 8000608:	f107 0314 	add.w	r3, r7, #20
 800060c:	607b      	str	r3, [r7, #4]
 800060e:	6879      	ldr	r1, [r7, #4]
 8000610:	6938      	ldr	r0, [r7, #16]
 8000612:	f7ff fe79 	bl	8000308 <xvprintf>
 8000616:	bf00      	nop
 8000618:	3708      	adds	r7, #8
 800061a:	46bd      	mov	sp, r7
 800061c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000620:	b004      	add	sp, #16
 8000622:	4770      	bx	lr

08000624 <xsprintf>:
 8000624:	b40e      	push	{r1, r2, r3}
 8000626:	b580      	push	{r7, lr}
 8000628:	b085      	sub	sp, #20
 800062a:	af00      	add	r7, sp, #0
 800062c:	6078      	str	r0, [r7, #4]
 800062e:	4a0c      	ldr	r2, [pc, #48]	; (8000660 <xsprintf+0x3c>)
 8000630:	687b      	ldr	r3, [r7, #4]
 8000632:	6013      	str	r3, [r2, #0]
 8000634:	f107 0320 	add.w	r3, r7, #32
 8000638:	60fb      	str	r3, [r7, #12]
 800063a:	68f9      	ldr	r1, [r7, #12]
 800063c:	69f8      	ldr	r0, [r7, #28]
 800063e:	f7ff fe63 	bl	8000308 <xvprintf>
 8000642:	4b07      	ldr	r3, [pc, #28]	; (8000660 <xsprintf+0x3c>)
 8000644:	681b      	ldr	r3, [r3, #0]
 8000646:	2200      	movs	r2, #0
 8000648:	701a      	strb	r2, [r3, #0]
 800064a:	4b05      	ldr	r3, [pc, #20]	; (8000660 <xsprintf+0x3c>)
 800064c:	2200      	movs	r2, #0
 800064e:	601a      	str	r2, [r3, #0]
 8000650:	bf00      	nop
 8000652:	3714      	adds	r7, #20
 8000654:	46bd      	mov	sp, r7
 8000656:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800065a:	b003      	add	sp, #12
 800065c:	4770      	bx	lr
 800065e:	bf00      	nop
 8000660:	20000010 	.word	0x20000010

08000664 <xfprintf>:
 8000664:	b40e      	push	{r1, r2, r3}
 8000666:	b580      	push	{r7, lr}
 8000668:	b085      	sub	sp, #20
 800066a:	af00      	add	r7, sp, #0
 800066c:	6078      	str	r0, [r7, #4]
 800066e:	4b0b      	ldr	r3, [pc, #44]	; (800069c <xfprintf+0x38>)
 8000670:	681b      	ldr	r3, [r3, #0]
 8000672:	60fb      	str	r3, [r7, #12]
 8000674:	4a09      	ldr	r2, [pc, #36]	; (800069c <xfprintf+0x38>)
 8000676:	687b      	ldr	r3, [r7, #4]
 8000678:	6013      	str	r3, [r2, #0]
 800067a:	f107 0320 	add.w	r3, r7, #32
 800067e:	60bb      	str	r3, [r7, #8]
 8000680:	68b9      	ldr	r1, [r7, #8]
 8000682:	69f8      	ldr	r0, [r7, #28]
 8000684:	f7ff fe40 	bl	8000308 <xvprintf>
 8000688:	4a04      	ldr	r2, [pc, #16]	; (800069c <xfprintf+0x38>)
 800068a:	68fb      	ldr	r3, [r7, #12]
 800068c:	6013      	str	r3, [r2, #0]
 800068e:	bf00      	nop
 8000690:	3714      	adds	r7, #20
 8000692:	46bd      	mov	sp, r7
 8000694:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000698:	b003      	add	sp, #12
 800069a:	4770      	bx	lr
 800069c:	2000000c 	.word	0x2000000c

080006a0 <put_dump>:
 80006a0:	b580      	push	{r7, lr}
 80006a2:	b088      	sub	sp, #32
 80006a4:	af00      	add	r7, sp, #0
 80006a6:	60f8      	str	r0, [r7, #12]
 80006a8:	60b9      	str	r1, [r7, #8]
 80006aa:	607a      	str	r2, [r7, #4]
 80006ac:	603b      	str	r3, [r7, #0]
 80006ae:	68b9      	ldr	r1, [r7, #8]
 80006b0:	4834      	ldr	r0, [pc, #208]	; (8000784 <put_dump+0xe4>)
 80006b2:	f7ff ffa5 	bl	8000600 <xprintf>
 80006b6:	683b      	ldr	r3, [r7, #0]
 80006b8:	2b02      	cmp	r3, #2
 80006ba:	d03a      	beq.n	8000732 <put_dump+0x92>
 80006bc:	2b04      	cmp	r3, #4
 80006be:	d049      	beq.n	8000754 <put_dump+0xb4>
 80006c0:	2b01      	cmp	r3, #1
 80006c2:	d158      	bne.n	8000776 <put_dump+0xd6>
 80006c4:	68fb      	ldr	r3, [r7, #12]
 80006c6:	613b      	str	r3, [r7, #16]
 80006c8:	2300      	movs	r3, #0
 80006ca:	61fb      	str	r3, [r7, #28]
 80006cc:	e00a      	b.n	80006e4 <put_dump+0x44>
 80006ce:	69fb      	ldr	r3, [r7, #28]
 80006d0:	693a      	ldr	r2, [r7, #16]
 80006d2:	4413      	add	r3, r2
 80006d4:	781b      	ldrb	r3, [r3, #0]
 80006d6:	4619      	mov	r1, r3
 80006d8:	482b      	ldr	r0, [pc, #172]	; (8000788 <put_dump+0xe8>)
 80006da:	f7ff ff91 	bl	8000600 <xprintf>
 80006de:	69fb      	ldr	r3, [r7, #28]
 80006e0:	3301      	adds	r3, #1
 80006e2:	61fb      	str	r3, [r7, #28]
 80006e4:	69fa      	ldr	r2, [r7, #28]
 80006e6:	687b      	ldr	r3, [r7, #4]
 80006e8:	429a      	cmp	r2, r3
 80006ea:	dbf0      	blt.n	80006ce <put_dump+0x2e>
 80006ec:	2020      	movs	r0, #32
 80006ee:	f7ff fdaf 	bl	8000250 <xputc>
 80006f2:	2300      	movs	r3, #0
 80006f4:	61fb      	str	r3, [r7, #28]
 80006f6:	e017      	b.n	8000728 <put_dump+0x88>
 80006f8:	69fb      	ldr	r3, [r7, #28]
 80006fa:	693a      	ldr	r2, [r7, #16]
 80006fc:	4413      	add	r3, r2
 80006fe:	781b      	ldrb	r3, [r3, #0]
 8000700:	2b1f      	cmp	r3, #31
 8000702:	d90a      	bls.n	800071a <put_dump+0x7a>
 8000704:	69fb      	ldr	r3, [r7, #28]
 8000706:	693a      	ldr	r2, [r7, #16]
 8000708:	4413      	add	r3, r2
 800070a:	781b      	ldrb	r3, [r3, #0]
 800070c:	2b7e      	cmp	r3, #126	; 0x7e
 800070e:	d804      	bhi.n	800071a <put_dump+0x7a>
 8000710:	69fb      	ldr	r3, [r7, #28]
 8000712:	693a      	ldr	r2, [r7, #16]
 8000714:	4413      	add	r3, r2
 8000716:	781b      	ldrb	r3, [r3, #0]
 8000718:	e000      	b.n	800071c <put_dump+0x7c>
 800071a:	232e      	movs	r3, #46	; 0x2e
 800071c:	4618      	mov	r0, r3
 800071e:	f7ff fd97 	bl	8000250 <xputc>
 8000722:	69fb      	ldr	r3, [r7, #28]
 8000724:	3301      	adds	r3, #1
 8000726:	61fb      	str	r3, [r7, #28]
 8000728:	69fa      	ldr	r2, [r7, #28]
 800072a:	687b      	ldr	r3, [r7, #4]
 800072c:	429a      	cmp	r2, r3
 800072e:	dbe3      	blt.n	80006f8 <put_dump+0x58>
 8000730:	e021      	b.n	8000776 <put_dump+0xd6>
 8000732:	68fb      	ldr	r3, [r7, #12]
 8000734:	61bb      	str	r3, [r7, #24]
 8000736:	69bb      	ldr	r3, [r7, #24]
 8000738:	1c9a      	adds	r2, r3, #2
 800073a:	61ba      	str	r2, [r7, #24]
 800073c:	881b      	ldrh	r3, [r3, #0]
 800073e:	4619      	mov	r1, r3
 8000740:	4812      	ldr	r0, [pc, #72]	; (800078c <put_dump+0xec>)
 8000742:	f7ff ff5d 	bl	8000600 <xprintf>
 8000746:	687b      	ldr	r3, [r7, #4]
 8000748:	3b01      	subs	r3, #1
 800074a:	607b      	str	r3, [r7, #4]
 800074c:	687b      	ldr	r3, [r7, #4]
 800074e:	2b00      	cmp	r3, #0
 8000750:	d1f1      	bne.n	8000736 <put_dump+0x96>
 8000752:	e010      	b.n	8000776 <put_dump+0xd6>
 8000754:	68fb      	ldr	r3, [r7, #12]
 8000756:	617b      	str	r3, [r7, #20]
 8000758:	697b      	ldr	r3, [r7, #20]
 800075a:	1d1a      	adds	r2, r3, #4
 800075c:	617a      	str	r2, [r7, #20]
 800075e:	681b      	ldr	r3, [r3, #0]
 8000760:	4619      	mov	r1, r3
 8000762:	480b      	ldr	r0, [pc, #44]	; (8000790 <put_dump+0xf0>)
 8000764:	f7ff ff4c 	bl	8000600 <xprintf>
 8000768:	687b      	ldr	r3, [r7, #4]
 800076a:	3b01      	subs	r3, #1
 800076c:	607b      	str	r3, [r7, #4]
 800076e:	687b      	ldr	r3, [r7, #4]
 8000770:	2b00      	cmp	r3, #0
 8000772:	d1f1      	bne.n	8000758 <put_dump+0xb8>
 8000774:	bf00      	nop
 8000776:	200a      	movs	r0, #10
 8000778:	f7ff fd6a 	bl	8000250 <xputc>
 800077c:	bf00      	nop
 800077e:	3720      	adds	r7, #32
 8000780:	46bd      	mov	sp, r7
 8000782:	bd80      	pop	{r7, pc}
 8000784:	0800191c 	.word	0x0800191c
 8000788:	08001924 	.word	0x08001924
 800078c:	0800192c 	.word	0x0800192c
 8000790:	08001934 	.word	0x08001934

08000794 <xgets>:
 8000794:	b580      	push	{r7, lr}
 8000796:	b084      	sub	sp, #16
 8000798:	af00      	add	r7, sp, #0
 800079a:	6078      	str	r0, [r7, #4]
 800079c:	6039      	str	r1, [r7, #0]
 800079e:	4b24      	ldr	r3, [pc, #144]	; (8000830 <xgets+0x9c>)
 80007a0:	681b      	ldr	r3, [r3, #0]
 80007a2:	2b00      	cmp	r3, #0
 80007a4:	d101      	bne.n	80007aa <xgets+0x16>
 80007a6:	2300      	movs	r3, #0
 80007a8:	e03e      	b.n	8000828 <xgets+0x94>
 80007aa:	2300      	movs	r3, #0
 80007ac:	60fb      	str	r3, [r7, #12]
 80007ae:	4b20      	ldr	r3, [pc, #128]	; (8000830 <xgets+0x9c>)
 80007b0:	681b      	ldr	r3, [r3, #0]
 80007b2:	4798      	blx	r3
 80007b4:	4603      	mov	r3, r0
 80007b6:	60bb      	str	r3, [r7, #8]
 80007b8:	68bb      	ldr	r3, [r7, #8]
 80007ba:	2b00      	cmp	r3, #0
 80007bc:	d101      	bne.n	80007c2 <xgets+0x2e>
 80007be:	2300      	movs	r3, #0
 80007c0:	e032      	b.n	8000828 <xgets+0x94>
 80007c2:	68bb      	ldr	r3, [r7, #8]
 80007c4:	2b0d      	cmp	r3, #13
 80007c6:	d025      	beq.n	8000814 <xgets+0x80>
 80007c8:	68bb      	ldr	r3, [r7, #8]
 80007ca:	2b08      	cmp	r3, #8
 80007cc:	d10b      	bne.n	80007e6 <xgets+0x52>
 80007ce:	68fb      	ldr	r3, [r7, #12]
 80007d0:	2b00      	cmp	r3, #0
 80007d2:	d008      	beq.n	80007e6 <xgets+0x52>
 80007d4:	68fb      	ldr	r3, [r7, #12]
 80007d6:	3b01      	subs	r3, #1
 80007d8:	60fb      	str	r3, [r7, #12]
 80007da:	68bb      	ldr	r3, [r7, #8]
 80007dc:	b2db      	uxtb	r3, r3
 80007de:	4618      	mov	r0, r3
 80007e0:	f7ff fd36 	bl	8000250 <xputc>
 80007e4:	e015      	b.n	8000812 <xgets+0x7e>
 80007e6:	68bb      	ldr	r3, [r7, #8]
 80007e8:	2b1f      	cmp	r3, #31
 80007ea:	dde0      	ble.n	80007ae <xgets+0x1a>
 80007ec:	683b      	ldr	r3, [r7, #0]
 80007ee:	1e5a      	subs	r2, r3, #1
 80007f0:	68fb      	ldr	r3, [r7, #12]
 80007f2:	429a      	cmp	r2, r3
 80007f4:	dddb      	ble.n	80007ae <xgets+0x1a>
 80007f6:	68fb      	ldr	r3, [r7, #12]
 80007f8:	1c5a      	adds	r2, r3, #1
 80007fa:	60fa      	str	r2, [r7, #12]
 80007fc:	461a      	mov	r2, r3
 80007fe:	687b      	ldr	r3, [r7, #4]
 8000800:	4413      	add	r3, r2
 8000802:	68ba      	ldr	r2, [r7, #8]
 8000804:	b2d2      	uxtb	r2, r2
 8000806:	701a      	strb	r2, [r3, #0]
 8000808:	68bb      	ldr	r3, [r7, #8]
 800080a:	b2db      	uxtb	r3, r3
 800080c:	4618      	mov	r0, r3
 800080e:	f7ff fd1f 	bl	8000250 <xputc>
 8000812:	e7cc      	b.n	80007ae <xgets+0x1a>
 8000814:	bf00      	nop
 8000816:	68fb      	ldr	r3, [r7, #12]
 8000818:	687a      	ldr	r2, [r7, #4]
 800081a:	4413      	add	r3, r2
 800081c:	2200      	movs	r2, #0
 800081e:	701a      	strb	r2, [r3, #0]
 8000820:	200a      	movs	r0, #10
 8000822:	f7ff fd15 	bl	8000250 <xputc>
 8000826:	2301      	movs	r3, #1
 8000828:	4618      	mov	r0, r3
 800082a:	3710      	adds	r7, #16
 800082c:	46bd      	mov	sp, r7
 800082e:	bd80      	pop	{r7, pc}
 8000830:	20000014 	.word	0x20000014

08000834 <xfgets>:
 8000834:	b580      	push	{r7, lr}
 8000836:	b086      	sub	sp, #24
 8000838:	af00      	add	r7, sp, #0
 800083a:	60f8      	str	r0, [r7, #12]
 800083c:	60b9      	str	r1, [r7, #8]
 800083e:	607a      	str	r2, [r7, #4]
 8000840:	4b09      	ldr	r3, [pc, #36]	; (8000868 <xfgets+0x34>)
 8000842:	681b      	ldr	r3, [r3, #0]
 8000844:	617b      	str	r3, [r7, #20]
 8000846:	4a08      	ldr	r2, [pc, #32]	; (8000868 <xfgets+0x34>)
 8000848:	68fb      	ldr	r3, [r7, #12]
 800084a:	6013      	str	r3, [r2, #0]
 800084c:	6879      	ldr	r1, [r7, #4]
 800084e:	68b8      	ldr	r0, [r7, #8]
 8000850:	f7ff ffa0 	bl	8000794 <xgets>
 8000854:	6138      	str	r0, [r7, #16]
 8000856:	4a04      	ldr	r2, [pc, #16]	; (8000868 <xfgets+0x34>)
 8000858:	697b      	ldr	r3, [r7, #20]
 800085a:	6013      	str	r3, [r2, #0]
 800085c:	693b      	ldr	r3, [r7, #16]
 800085e:	4618      	mov	r0, r3
 8000860:	3718      	adds	r7, #24
 8000862:	46bd      	mov	sp, r7
 8000864:	bd80      	pop	{r7, pc}
 8000866:	bf00      	nop
 8000868:	20000014 	.word	0x20000014

0800086c <xatoi>:
 800086c:	b480      	push	{r7}
 800086e:	b085      	sub	sp, #20
 8000870:	af00      	add	r7, sp, #0
 8000872:	6078      	str	r0, [r7, #4]
 8000874:	6039      	str	r1, [r7, #0]
 8000876:	2300      	movs	r3, #0
 8000878:	727b      	strb	r3, [r7, #9]
 800087a:	683b      	ldr	r3, [r7, #0]
 800087c:	2200      	movs	r2, #0
 800087e:	601a      	str	r2, [r3, #0]
 8000880:	e004      	b.n	800088c <xatoi+0x20>
 8000882:	687b      	ldr	r3, [r7, #4]
 8000884:	681b      	ldr	r3, [r3, #0]
 8000886:	1c5a      	adds	r2, r3, #1
 8000888:	687b      	ldr	r3, [r7, #4]
 800088a:	601a      	str	r2, [r3, #0]
 800088c:	687b      	ldr	r3, [r7, #4]
 800088e:	681b      	ldr	r3, [r3, #0]
 8000890:	781b      	ldrb	r3, [r3, #0]
 8000892:	72fb      	strb	r3, [r7, #11]
 8000894:	7afb      	ldrb	r3, [r7, #11]
 8000896:	2b20      	cmp	r3, #32
 8000898:	d0f3      	beq.n	8000882 <xatoi+0x16>
 800089a:	7afb      	ldrb	r3, [r7, #11]
 800089c:	2b2d      	cmp	r3, #45	; 0x2d
 800089e:	d10a      	bne.n	80008b6 <xatoi+0x4a>
 80008a0:	2301      	movs	r3, #1
 80008a2:	727b      	strb	r3, [r7, #9]
 80008a4:	687b      	ldr	r3, [r7, #4]
 80008a6:	681b      	ldr	r3, [r3, #0]
 80008a8:	1c5a      	adds	r2, r3, #1
 80008aa:	687b      	ldr	r3, [r7, #4]
 80008ac:	601a      	str	r2, [r3, #0]
 80008ae:	687b      	ldr	r3, [r7, #4]
 80008b0:	681b      	ldr	r3, [r3, #0]
 80008b2:	781b      	ldrb	r3, [r3, #0]
 80008b4:	72fb      	strb	r3, [r7, #11]
 80008b6:	7afb      	ldrb	r3, [r7, #11]
 80008b8:	2b30      	cmp	r3, #48	; 0x30
 80008ba:	d135      	bne.n	8000928 <xatoi+0xbc>
 80008bc:	687b      	ldr	r3, [r7, #4]
 80008be:	681b      	ldr	r3, [r3, #0]
 80008c0:	1c5a      	adds	r2, r3, #1
 80008c2:	687b      	ldr	r3, [r7, #4]
 80008c4:	601a      	str	r2, [r3, #0]
 80008c6:	687b      	ldr	r3, [r7, #4]
 80008c8:	681b      	ldr	r3, [r3, #0]
 80008ca:	781b      	ldrb	r3, [r3, #0]
 80008cc:	72fb      	strb	r3, [r7, #11]
 80008ce:	7afb      	ldrb	r3, [r7, #11]
 80008d0:	2b62      	cmp	r3, #98	; 0x62
 80008d2:	d00d      	beq.n	80008f0 <xatoi+0x84>
 80008d4:	2b78      	cmp	r3, #120	; 0x78
 80008d6:	d117      	bne.n	8000908 <xatoi+0x9c>
 80008d8:	2310      	movs	r3, #16
 80008da:	72bb      	strb	r3, [r7, #10]
 80008dc:	687b      	ldr	r3, [r7, #4]
 80008de:	681b      	ldr	r3, [r3, #0]
 80008e0:	1c5a      	adds	r2, r3, #1
 80008e2:	687b      	ldr	r3, [r7, #4]
 80008e4:	601a      	str	r2, [r3, #0]
 80008e6:	687b      	ldr	r3, [r7, #4]
 80008e8:	681b      	ldr	r3, [r3, #0]
 80008ea:	781b      	ldrb	r3, [r3, #0]
 80008ec:	72fb      	strb	r3, [r7, #11]
 80008ee:	e025      	b.n	800093c <xatoi+0xd0>
 80008f0:	2302      	movs	r3, #2
 80008f2:	72bb      	strb	r3, [r7, #10]
 80008f4:	687b      	ldr	r3, [r7, #4]
 80008f6:	681b      	ldr	r3, [r3, #0]
 80008f8:	1c5a      	adds	r2, r3, #1
 80008fa:	687b      	ldr	r3, [r7, #4]
 80008fc:	601a      	str	r2, [r3, #0]
 80008fe:	687b      	ldr	r3, [r7, #4]
 8000900:	681b      	ldr	r3, [r3, #0]
 8000902:	781b      	ldrb	r3, [r3, #0]
 8000904:	72fb      	strb	r3, [r7, #11]
 8000906:	e019      	b.n	800093c <xatoi+0xd0>
 8000908:	7afb      	ldrb	r3, [r7, #11]
 800090a:	2b20      	cmp	r3, #32
 800090c:	d801      	bhi.n	8000912 <xatoi+0xa6>
 800090e:	2301      	movs	r3, #1
 8000910:	e04e      	b.n	80009b0 <xatoi+0x144>
 8000912:	7afb      	ldrb	r3, [r7, #11]
 8000914:	2b2f      	cmp	r3, #47	; 0x2f
 8000916:	d902      	bls.n	800091e <xatoi+0xb2>
 8000918:	7afb      	ldrb	r3, [r7, #11]
 800091a:	2b39      	cmp	r3, #57	; 0x39
 800091c:	d901      	bls.n	8000922 <xatoi+0xb6>
 800091e:	2300      	movs	r3, #0
 8000920:	e046      	b.n	80009b0 <xatoi+0x144>
 8000922:	2308      	movs	r3, #8
 8000924:	72bb      	strb	r3, [r7, #10]
 8000926:	e009      	b.n	800093c <xatoi+0xd0>
 8000928:	7afb      	ldrb	r3, [r7, #11]
 800092a:	2b2f      	cmp	r3, #47	; 0x2f
 800092c:	d902      	bls.n	8000934 <xatoi+0xc8>
 800092e:	7afb      	ldrb	r3, [r7, #11]
 8000930:	2b39      	cmp	r3, #57	; 0x39
 8000932:	d901      	bls.n	8000938 <xatoi+0xcc>
 8000934:	2300      	movs	r3, #0
 8000936:	e03b      	b.n	80009b0 <xatoi+0x144>
 8000938:	230a      	movs	r3, #10
 800093a:	72bb      	strb	r3, [r7, #10]
 800093c:	2300      	movs	r3, #0
 800093e:	60fb      	str	r3, [r7, #12]
 8000940:	e029      	b.n	8000996 <xatoi+0x12a>
 8000942:	7afb      	ldrb	r3, [r7, #11]
 8000944:	2b60      	cmp	r3, #96	; 0x60
 8000946:	d902      	bls.n	800094e <xatoi+0xe2>
 8000948:	7afb      	ldrb	r3, [r7, #11]
 800094a:	3b20      	subs	r3, #32
 800094c:	72fb      	strb	r3, [r7, #11]
 800094e:	7afb      	ldrb	r3, [r7, #11]
 8000950:	3b30      	subs	r3, #48	; 0x30
 8000952:	72fb      	strb	r3, [r7, #11]
 8000954:	7afb      	ldrb	r3, [r7, #11]
 8000956:	2b10      	cmp	r3, #16
 8000958:	d907      	bls.n	800096a <xatoi+0xfe>
 800095a:	7afb      	ldrb	r3, [r7, #11]
 800095c:	3b07      	subs	r3, #7
 800095e:	72fb      	strb	r3, [r7, #11]
 8000960:	7afb      	ldrb	r3, [r7, #11]
 8000962:	2b09      	cmp	r3, #9
 8000964:	d801      	bhi.n	800096a <xatoi+0xfe>
 8000966:	2300      	movs	r3, #0
 8000968:	e022      	b.n	80009b0 <xatoi+0x144>
 800096a:	7afa      	ldrb	r2, [r7, #11]
 800096c:	7abb      	ldrb	r3, [r7, #10]
 800096e:	429a      	cmp	r2, r3
 8000970:	d301      	bcc.n	8000976 <xatoi+0x10a>
 8000972:	2300      	movs	r3, #0
 8000974:	e01c      	b.n	80009b0 <xatoi+0x144>
 8000976:	7abb      	ldrb	r3, [r7, #10]
 8000978:	68fa      	ldr	r2, [r7, #12]
 800097a:	fb02 f203 	mul.w	r2, r2, r3
 800097e:	7afb      	ldrb	r3, [r7, #11]
 8000980:	4413      	add	r3, r2
 8000982:	60fb      	str	r3, [r7, #12]
 8000984:	687b      	ldr	r3, [r7, #4]
 8000986:	681b      	ldr	r3, [r3, #0]
 8000988:	1c5a      	adds	r2, r3, #1
 800098a:	687b      	ldr	r3, [r7, #4]
 800098c:	601a      	str	r2, [r3, #0]
 800098e:	687b      	ldr	r3, [r7, #4]
 8000990:	681b      	ldr	r3, [r3, #0]
 8000992:	781b      	ldrb	r3, [r3, #0]
 8000994:	72fb      	strb	r3, [r7, #11]
 8000996:	7afb      	ldrb	r3, [r7, #11]
 8000998:	2b20      	cmp	r3, #32
 800099a:	d8d2      	bhi.n	8000942 <xatoi+0xd6>
 800099c:	7a7b      	ldrb	r3, [r7, #9]
 800099e:	2b00      	cmp	r3, #0
 80009a0:	d002      	beq.n	80009a8 <xatoi+0x13c>
 80009a2:	68fb      	ldr	r3, [r7, #12]
 80009a4:	425b      	negs	r3, r3
 80009a6:	60fb      	str	r3, [r7, #12]
 80009a8:	68fa      	ldr	r2, [r7, #12]
 80009aa:	683b      	ldr	r3, [r7, #0]
 80009ac:	601a      	str	r2, [r3, #0]
 80009ae:	2301      	movs	r3, #1
 80009b0:	4618      	mov	r0, r3
 80009b2:	3714      	adds	r7, #20
 80009b4:	46bd      	mov	sp, r7
 80009b6:	bc80      	pop	{r7}
 80009b8:	4770      	bx	lr
 80009ba:	bf00      	nop

080009bc <NVIC_EnableIRQ>:
 80009bc:	b480      	push	{r7}
 80009be:	b083      	sub	sp, #12
 80009c0:	af00      	add	r7, sp, #0
 80009c2:	4603      	mov	r3, r0
 80009c4:	71fb      	strb	r3, [r7, #7]
 80009c6:	4908      	ldr	r1, [pc, #32]	; (80009e8 <NVIC_EnableIRQ+0x2c>)
 80009c8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80009cc:	095b      	lsrs	r3, r3, #5
 80009ce:	79fa      	ldrb	r2, [r7, #7]
 80009d0:	f002 021f 	and.w	r2, r2, #31
 80009d4:	2001      	movs	r0, #1
 80009d6:	fa00 f202 	lsl.w	r2, r0, r2
 80009da:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80009de:	bf00      	nop
 80009e0:	370c      	adds	r7, #12
 80009e2:	46bd      	mov	sp, r7
 80009e4:	bc80      	pop	{r7}
 80009e6:	4770      	bx	lr
 80009e8:	e000e100 	.word	0xe000e100

080009ec <dbg_init>:
 80009ec:	b580      	push	{r7, lr}
 80009ee:	af00      	add	r7, sp, #0
 80009f0:	4a1a      	ldr	r2, [pc, #104]	; (8000a5c <dbg_init+0x70>)
 80009f2:	4b1a      	ldr	r3, [pc, #104]	; (8000a5c <dbg_init+0x70>)
 80009f4:	685b      	ldr	r3, [r3, #4]
 80009f6:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80009fa:	6053      	str	r3, [r2, #4]
 80009fc:	4a17      	ldr	r2, [pc, #92]	; (8000a5c <dbg_init+0x70>)
 80009fe:	4b17      	ldr	r3, [pc, #92]	; (8000a5c <dbg_init+0x70>)
 8000a00:	685b      	ldr	r3, [r3, #4]
 8000a02:	f043 03b0 	orr.w	r3, r3, #176	; 0xb0
 8000a06:	6053      	str	r3, [r2, #4]
 8000a08:	4a15      	ldr	r2, [pc, #84]	; (8000a60 <dbg_init+0x74>)
 8000a0a:	4b15      	ldr	r3, [pc, #84]	; (8000a60 <dbg_init+0x74>)
 8000a0c:	899b      	ldrh	r3, [r3, #12]
 8000a0e:	b29b      	uxth	r3, r3
 8000a10:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000a14:	b29b      	uxth	r3, r3
 8000a16:	8193      	strh	r3, [r2, #12]
 8000a18:	4a11      	ldr	r2, [pc, #68]	; (8000a60 <dbg_init+0x74>)
 8000a1a:	4b11      	ldr	r3, [pc, #68]	; (8000a60 <dbg_init+0x74>)
 8000a1c:	899b      	ldrh	r3, [r3, #12]
 8000a1e:	b29b      	uxth	r3, r3
 8000a20:	f043 0304 	orr.w	r3, r3, #4
 8000a24:	b29b      	uxth	r3, r3
 8000a26:	8193      	strh	r3, [r2, #12]
 8000a28:	4a0d      	ldr	r2, [pc, #52]	; (8000a60 <dbg_init+0x74>)
 8000a2a:	4b0d      	ldr	r3, [pc, #52]	; (8000a60 <dbg_init+0x74>)
 8000a2c:	899b      	ldrh	r3, [r3, #12]
 8000a2e:	b29b      	uxth	r3, r3
 8000a30:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000a34:	b29b      	uxth	r3, r3
 8000a36:	8193      	strh	r3, [r2, #12]
 8000a38:	2025      	movs	r0, #37	; 0x25
 8000a3a:	f7ff ffbf 	bl	80009bc <NVIC_EnableIRQ>
 8000a3e:	4b08      	ldr	r3, [pc, #32]	; (8000a60 <dbg_init+0x74>)
 8000a40:	f240 2271 	movw	r2, #625	; 0x271
 8000a44:	811a      	strh	r2, [r3, #8]
 8000a46:	4b07      	ldr	r3, [pc, #28]	; (8000a64 <dbg_init+0x78>)
 8000a48:	2200      	movs	r2, #0
 8000a4a:	601a      	str	r2, [r3, #0]
 8000a4c:	4b06      	ldr	r3, [pc, #24]	; (8000a68 <dbg_init+0x7c>)
 8000a4e:	2200      	movs	r2, #0
 8000a50:	601a      	str	r2, [r3, #0]
 8000a52:	4b06      	ldr	r3, [pc, #24]	; (8000a6c <dbg_init+0x80>)
 8000a54:	4a06      	ldr	r2, [pc, #24]	; (8000a70 <dbg_init+0x84>)
 8000a56:	601a      	str	r2, [r3, #0]
 8000a58:	bf00      	nop
 8000a5a:	bd80      	pop	{r7, pc}
 8000a5c:	40010800 	.word	0x40010800
 8000a60:	40013800 	.word	0x40013800
 8000a64:	20000098 	.word	0x20000098
 8000a68:	2000009c 	.word	0x2000009c
 8000a6c:	2000000c 	.word	0x2000000c
 8000a70:	08000a75 	.word	0x08000a75

08000a74 <uart1_putch>:
 8000a74:	b480      	push	{r7}
 8000a76:	b083      	sub	sp, #12
 8000a78:	af00      	add	r7, sp, #0
 8000a7a:	4603      	mov	r3, r0
 8000a7c:	71fb      	strb	r3, [r7, #7]
 8000a7e:	4b13      	ldr	r3, [pc, #76]	; (8000acc <uart1_putch+0x58>)
 8000a80:	681a      	ldr	r2, [r3, #0]
 8000a82:	4b13      	ldr	r3, [pc, #76]	; (8000ad0 <uart1_putch+0x5c>)
 8000a84:	681b      	ldr	r3, [r3, #0]
 8000a86:	429a      	cmp	r2, r3
 8000a88:	d107      	bne.n	8000a9a <uart1_putch+0x26>
 8000a8a:	4a12      	ldr	r2, [pc, #72]	; (8000ad4 <uart1_putch+0x60>)
 8000a8c:	4b11      	ldr	r3, [pc, #68]	; (8000ad4 <uart1_putch+0x60>)
 8000a8e:	899b      	ldrh	r3, [r3, #12]
 8000a90:	b29b      	uxth	r3, r3
 8000a92:	f043 0308 	orr.w	r3, r3, #8
 8000a96:	b29b      	uxth	r3, r3
 8000a98:	8193      	strh	r3, [r2, #12]
 8000a9a:	4b0c      	ldr	r3, [pc, #48]	; (8000acc <uart1_putch+0x58>)
 8000a9c:	681b      	ldr	r3, [r3, #0]
 8000a9e:	490e      	ldr	r1, [pc, #56]	; (8000ad8 <uart1_putch+0x64>)
 8000aa0:	79fa      	ldrb	r2, [r7, #7]
 8000aa2:	54ca      	strb	r2, [r1, r3]
 8000aa4:	4b09      	ldr	r3, [pc, #36]	; (8000acc <uart1_putch+0x58>)
 8000aa6:	681b      	ldr	r3, [r3, #0]
 8000aa8:	3301      	adds	r3, #1
 8000aaa:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000aae:	4a07      	ldr	r2, [pc, #28]	; (8000acc <uart1_putch+0x58>)
 8000ab0:	6013      	str	r3, [r2, #0]
 8000ab2:	4a08      	ldr	r2, [pc, #32]	; (8000ad4 <uart1_putch+0x60>)
 8000ab4:	4b07      	ldr	r3, [pc, #28]	; (8000ad4 <uart1_putch+0x60>)
 8000ab6:	899b      	ldrh	r3, [r3, #12]
 8000ab8:	b29b      	uxth	r3, r3
 8000aba:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000abe:	b29b      	uxth	r3, r3
 8000ac0:	8193      	strh	r3, [r2, #12]
 8000ac2:	bf00      	nop
 8000ac4:	370c      	adds	r7, #12
 8000ac6:	46bd      	mov	sp, r7
 8000ac8:	bc80      	pop	{r7}
 8000aca:	4770      	bx	lr
 8000acc:	2000009c 	.word	0x2000009c
 8000ad0:	20000098 	.word	0x20000098
 8000ad4:	40013800 	.word	0x40013800
 8000ad8:	20000018 	.word	0x20000018

08000adc <USART1_IRQHandler>:
 8000adc:	b480      	push	{r7}
 8000ade:	af00      	add	r7, sp, #0
 8000ae0:	4b13      	ldr	r3, [pc, #76]	; (8000b30 <USART1_IRQHandler+0x54>)
 8000ae2:	881b      	ldrh	r3, [r3, #0]
 8000ae4:	b29b      	uxth	r3, r3
 8000ae6:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000aea:	2b00      	cmp	r3, #0
 8000aec:	d01c      	beq.n	8000b28 <USART1_IRQHandler+0x4c>
 8000aee:	4b11      	ldr	r3, [pc, #68]	; (8000b34 <USART1_IRQHandler+0x58>)
 8000af0:	681a      	ldr	r2, [r3, #0]
 8000af2:	4b11      	ldr	r3, [pc, #68]	; (8000b38 <USART1_IRQHandler+0x5c>)
 8000af4:	681b      	ldr	r3, [r3, #0]
 8000af6:	429a      	cmp	r2, r3
 8000af8:	d108      	bne.n	8000b0c <USART1_IRQHandler+0x30>
 8000afa:	4a0d      	ldr	r2, [pc, #52]	; (8000b30 <USART1_IRQHandler+0x54>)
 8000afc:	4b0c      	ldr	r3, [pc, #48]	; (8000b30 <USART1_IRQHandler+0x54>)
 8000afe:	899b      	ldrh	r3, [r3, #12]
 8000b00:	b29b      	uxth	r3, r3
 8000b02:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000b06:	b29b      	uxth	r3, r3
 8000b08:	8193      	strh	r3, [r2, #12]
 8000b0a:	e00d      	b.n	8000b28 <USART1_IRQHandler+0x4c>
 8000b0c:	4a08      	ldr	r2, [pc, #32]	; (8000b30 <USART1_IRQHandler+0x54>)
 8000b0e:	4b09      	ldr	r3, [pc, #36]	; (8000b34 <USART1_IRQHandler+0x58>)
 8000b10:	681b      	ldr	r3, [r3, #0]
 8000b12:	490a      	ldr	r1, [pc, #40]	; (8000b3c <USART1_IRQHandler+0x60>)
 8000b14:	5ccb      	ldrb	r3, [r1, r3]
 8000b16:	b29b      	uxth	r3, r3
 8000b18:	8093      	strh	r3, [r2, #4]
 8000b1a:	4b06      	ldr	r3, [pc, #24]	; (8000b34 <USART1_IRQHandler+0x58>)
 8000b1c:	681b      	ldr	r3, [r3, #0]
 8000b1e:	3301      	adds	r3, #1
 8000b20:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000b24:	4a03      	ldr	r2, [pc, #12]	; (8000b34 <USART1_IRQHandler+0x58>)
 8000b26:	6013      	str	r3, [r2, #0]
 8000b28:	bf00      	nop
 8000b2a:	46bd      	mov	sp, r7
 8000b2c:	bc80      	pop	{r7}
 8000b2e:	4770      	bx	lr
 8000b30:	40013800 	.word	0x40013800
 8000b34:	20000098 	.word	0x20000098
 8000b38:	2000009c 	.word	0x2000009c
 8000b3c:	20000018 	.word	0x20000018

08000b40 <NVIC_EnableIRQ>:
 8000b40:	b480      	push	{r7}
 8000b42:	b083      	sub	sp, #12
 8000b44:	af00      	add	r7, sp, #0
 8000b46:	4603      	mov	r3, r0
 8000b48:	71fb      	strb	r3, [r7, #7]
 8000b4a:	4908      	ldr	r1, [pc, #32]	; (8000b6c <NVIC_EnableIRQ+0x2c>)
 8000b4c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000b50:	095b      	lsrs	r3, r3, #5
 8000b52:	79fa      	ldrb	r2, [r7, #7]
 8000b54:	f002 021f 	and.w	r2, r2, #31
 8000b58:	2001      	movs	r0, #1
 8000b5a:	fa00 f202 	lsl.w	r2, r0, r2
 8000b5e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000b62:	bf00      	nop
 8000b64:	370c      	adds	r7, #12
 8000b66:	46bd      	mov	sp, r7
 8000b68:	bc80      	pop	{r7}
 8000b6a:	4770      	bx	lr
 8000b6c:	e000e100 	.word	0xe000e100

08000b70 <uart_init>:
 8000b70:	b580      	push	{r7, lr}
 8000b72:	af00      	add	r7, sp, #0
 8000b74:	4a1a      	ldr	r2, [pc, #104]	; (8000be0 <uart_init+0x70>)
 8000b76:	4b1a      	ldr	r3, [pc, #104]	; (8000be0 <uart_init+0x70>)
 8000b78:	681b      	ldr	r3, [r3, #0]
 8000b7a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000b7e:	6013      	str	r3, [r2, #0]
 8000b80:	4a17      	ldr	r2, [pc, #92]	; (8000be0 <uart_init+0x70>)
 8000b82:	4b17      	ldr	r3, [pc, #92]	; (8000be0 <uart_init+0x70>)
 8000b84:	681b      	ldr	r3, [r3, #0]
 8000b86:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 8000b8a:	6013      	str	r3, [r2, #0]
 8000b8c:	4a15      	ldr	r2, [pc, #84]	; (8000be4 <uart_init+0x74>)
 8000b8e:	4b15      	ldr	r3, [pc, #84]	; (8000be4 <uart_init+0x74>)
 8000b90:	899b      	ldrh	r3, [r3, #12]
 8000b92:	b29b      	uxth	r3, r3
 8000b94:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000b98:	b29b      	uxth	r3, r3
 8000b9a:	8193      	strh	r3, [r2, #12]
 8000b9c:	4a11      	ldr	r2, [pc, #68]	; (8000be4 <uart_init+0x74>)
 8000b9e:	4b11      	ldr	r3, [pc, #68]	; (8000be4 <uart_init+0x74>)
 8000ba0:	899b      	ldrh	r3, [r3, #12]
 8000ba2:	b29b      	uxth	r3, r3
 8000ba4:	f043 0304 	orr.w	r3, r3, #4
 8000ba8:	b29b      	uxth	r3, r3
 8000baa:	8193      	strh	r3, [r2, #12]
 8000bac:	4a0d      	ldr	r2, [pc, #52]	; (8000be4 <uart_init+0x74>)
 8000bae:	4b0d      	ldr	r3, [pc, #52]	; (8000be4 <uart_init+0x74>)
 8000bb0:	899b      	ldrh	r3, [r3, #12]
 8000bb2:	b29b      	uxth	r3, r3
 8000bb4:	f043 0320 	orr.w	r3, r3, #32
 8000bb8:	b29b      	uxth	r3, r3
 8000bba:	8193      	strh	r3, [r2, #12]
 8000bbc:	4a09      	ldr	r2, [pc, #36]	; (8000be4 <uart_init+0x74>)
 8000bbe:	4b09      	ldr	r3, [pc, #36]	; (8000be4 <uart_init+0x74>)
 8000bc0:	899b      	ldrh	r3, [r3, #12]
 8000bc2:	b29b      	uxth	r3, r3
 8000bc4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000bc8:	b29b      	uxth	r3, r3
 8000bca:	8193      	strh	r3, [r2, #12]
 8000bcc:	2026      	movs	r0, #38	; 0x26
 8000bce:	f7ff ffb7 	bl	8000b40 <NVIC_EnableIRQ>
 8000bd2:	4b04      	ldr	r3, [pc, #16]	; (8000be4 <uart_init+0x74>)
 8000bd4:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000bd8:	811a      	strh	r2, [r3, #8]
 8000bda:	bf00      	nop
 8000bdc:	bd80      	pop	{r7, pc}
 8000bde:	bf00      	nop
 8000be0:	40010800 	.word	0x40010800
 8000be4:	40004400 	.word	0x40004400

08000be8 <uart_send>:
 8000be8:	b480      	push	{r7}
 8000bea:	b085      	sub	sp, #20
 8000bec:	af00      	add	r7, sp, #0
 8000bee:	6078      	str	r0, [r7, #4]
 8000bf0:	6039      	str	r1, [r7, #0]
 8000bf2:	4b1f      	ldr	r3, [pc, #124]	; (8000c70 <uart_send+0x88>)
 8000bf4:	681a      	ldr	r2, [r3, #0]
 8000bf6:	4b1f      	ldr	r3, [pc, #124]	; (8000c74 <uart_send+0x8c>)
 8000bf8:	681b      	ldr	r3, [r3, #0]
 8000bfa:	429a      	cmp	r2, r3
 8000bfc:	d107      	bne.n	8000c0e <uart_send+0x26>
 8000bfe:	4a1e      	ldr	r2, [pc, #120]	; (8000c78 <uart_send+0x90>)
 8000c00:	4b1d      	ldr	r3, [pc, #116]	; (8000c78 <uart_send+0x90>)
 8000c02:	899b      	ldrh	r3, [r3, #12]
 8000c04:	b29b      	uxth	r3, r3
 8000c06:	f043 0308 	orr.w	r3, r3, #8
 8000c0a:	b29b      	uxth	r3, r3
 8000c0c:	8193      	strh	r3, [r2, #12]
 8000c0e:	2300      	movs	r3, #0
 8000c10:	60fb      	str	r3, [r7, #12]
 8000c12:	e01b      	b.n	8000c4c <uart_send+0x64>
 8000c14:	4b16      	ldr	r3, [pc, #88]	; (8000c70 <uart_send+0x88>)
 8000c16:	681b      	ldr	r3, [r3, #0]
 8000c18:	68fa      	ldr	r2, [r7, #12]
 8000c1a:	6879      	ldr	r1, [r7, #4]
 8000c1c:	440a      	add	r2, r1
 8000c1e:	7811      	ldrb	r1, [r2, #0]
 8000c20:	4a16      	ldr	r2, [pc, #88]	; (8000c7c <uart_send+0x94>)
 8000c22:	54d1      	strb	r1, [r2, r3]
 8000c24:	4b12      	ldr	r3, [pc, #72]	; (8000c70 <uart_send+0x88>)
 8000c26:	681b      	ldr	r3, [r3, #0]
 8000c28:	3301      	adds	r3, #1
 8000c2a:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c2e:	4a10      	ldr	r2, [pc, #64]	; (8000c70 <uart_send+0x88>)
 8000c30:	6013      	str	r3, [r2, #0]
 8000c32:	4b0f      	ldr	r3, [pc, #60]	; (8000c70 <uart_send+0x88>)
 8000c34:	681a      	ldr	r2, [r3, #0]
 8000c36:	4b0f      	ldr	r3, [pc, #60]	; (8000c74 <uart_send+0x8c>)
 8000c38:	681b      	ldr	r3, [r3, #0]
 8000c3a:	429a      	cmp	r2, r3
 8000c3c:	d103      	bne.n	8000c46 <uart_send+0x5e>
 8000c3e:	68fb      	ldr	r3, [r7, #12]
 8000c40:	3301      	adds	r3, #1
 8000c42:	60fb      	str	r3, [r7, #12]
 8000c44:	e006      	b.n	8000c54 <uart_send+0x6c>
 8000c46:	68fb      	ldr	r3, [r7, #12]
 8000c48:	3301      	adds	r3, #1
 8000c4a:	60fb      	str	r3, [r7, #12]
 8000c4c:	68fa      	ldr	r2, [r7, #12]
 8000c4e:	683b      	ldr	r3, [r7, #0]
 8000c50:	429a      	cmp	r2, r3
 8000c52:	dbdf      	blt.n	8000c14 <uart_send+0x2c>
 8000c54:	4a08      	ldr	r2, [pc, #32]	; (8000c78 <uart_send+0x90>)
 8000c56:	4b08      	ldr	r3, [pc, #32]	; (8000c78 <uart_send+0x90>)
 8000c58:	899b      	ldrh	r3, [r3, #12]
 8000c5a:	b29b      	uxth	r3, r3
 8000c5c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000c60:	b29b      	uxth	r3, r3
 8000c62:	8193      	strh	r3, [r2, #12]
 8000c64:	68fb      	ldr	r3, [r7, #12]
 8000c66:	4618      	mov	r0, r3
 8000c68:	3714      	adds	r7, #20
 8000c6a:	46bd      	mov	sp, r7
 8000c6c:	bc80      	pop	{r7}
 8000c6e:	4770      	bx	lr
 8000c70:	200004a4 	.word	0x200004a4
 8000c74:	200004a0 	.word	0x200004a0
 8000c78:	40004400 	.word	0x40004400
 8000c7c:	200000a0 	.word	0x200000a0

08000c80 <uart_send_str>:
 8000c80:	b480      	push	{r7}
 8000c82:	b085      	sub	sp, #20
 8000c84:	af00      	add	r7, sp, #0
 8000c86:	6078      	str	r0, [r7, #4]
 8000c88:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000c8c:	60bb      	str	r3, [r7, #8]
 8000c8e:	4b24      	ldr	r3, [pc, #144]	; (8000d20 <uart_send_str+0xa0>)
 8000c90:	681a      	ldr	r2, [r3, #0]
 8000c92:	4b24      	ldr	r3, [pc, #144]	; (8000d24 <uart_send_str+0xa4>)
 8000c94:	681b      	ldr	r3, [r3, #0]
 8000c96:	1ad3      	subs	r3, r2, r3
 8000c98:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000c9c:	68ba      	ldr	r2, [r7, #8]
 8000c9e:	1ad3      	subs	r3, r2, r3
 8000ca0:	60bb      	str	r3, [r7, #8]
 8000ca2:	4b1f      	ldr	r3, [pc, #124]	; (8000d20 <uart_send_str+0xa0>)
 8000ca4:	681a      	ldr	r2, [r3, #0]
 8000ca6:	4b1f      	ldr	r3, [pc, #124]	; (8000d24 <uart_send_str+0xa4>)
 8000ca8:	681b      	ldr	r3, [r3, #0]
 8000caa:	429a      	cmp	r2, r3
 8000cac:	d107      	bne.n	8000cbe <uart_send_str+0x3e>
 8000cae:	4a1e      	ldr	r2, [pc, #120]	; (8000d28 <uart_send_str+0xa8>)
 8000cb0:	4b1d      	ldr	r3, [pc, #116]	; (8000d28 <uart_send_str+0xa8>)
 8000cb2:	899b      	ldrh	r3, [r3, #12]
 8000cb4:	b29b      	uxth	r3, r3
 8000cb6:	f043 0308 	orr.w	r3, r3, #8
 8000cba:	b29b      	uxth	r3, r3
 8000cbc:	8193      	strh	r3, [r2, #12]
 8000cbe:	2300      	movs	r3, #0
 8000cc0:	60fb      	str	r3, [r7, #12]
 8000cc2:	e01b      	b.n	8000cfc <uart_send_str+0x7c>
 8000cc4:	68fb      	ldr	r3, [r7, #12]
 8000cc6:	687a      	ldr	r2, [r7, #4]
 8000cc8:	4413      	add	r3, r2
 8000cca:	781b      	ldrb	r3, [r3, #0]
 8000ccc:	2b00      	cmp	r3, #0
 8000cce:	d103      	bne.n	8000cd8 <uart_send_str+0x58>
 8000cd0:	68fb      	ldr	r3, [r7, #12]
 8000cd2:	3301      	adds	r3, #1
 8000cd4:	60fb      	str	r3, [r7, #12]
 8000cd6:	e015      	b.n	8000d04 <uart_send_str+0x84>
 8000cd8:	4b11      	ldr	r3, [pc, #68]	; (8000d20 <uart_send_str+0xa0>)
 8000cda:	681b      	ldr	r3, [r3, #0]
 8000cdc:	68fa      	ldr	r2, [r7, #12]
 8000cde:	6879      	ldr	r1, [r7, #4]
 8000ce0:	440a      	add	r2, r1
 8000ce2:	7811      	ldrb	r1, [r2, #0]
 8000ce4:	4a11      	ldr	r2, [pc, #68]	; (8000d2c <uart_send_str+0xac>)
 8000ce6:	54d1      	strb	r1, [r2, r3]
 8000ce8:	4b0d      	ldr	r3, [pc, #52]	; (8000d20 <uart_send_str+0xa0>)
 8000cea:	681b      	ldr	r3, [r3, #0]
 8000cec:	3301      	adds	r3, #1
 8000cee:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000cf2:	4a0b      	ldr	r2, [pc, #44]	; (8000d20 <uart_send_str+0xa0>)
 8000cf4:	6013      	str	r3, [r2, #0]
 8000cf6:	68fb      	ldr	r3, [r7, #12]
 8000cf8:	3301      	adds	r3, #1
 8000cfa:	60fb      	str	r3, [r7, #12]
 8000cfc:	68fa      	ldr	r2, [r7, #12]
 8000cfe:	68bb      	ldr	r3, [r7, #8]
 8000d00:	429a      	cmp	r2, r3
 8000d02:	dbdf      	blt.n	8000cc4 <uart_send_str+0x44>
 8000d04:	4a08      	ldr	r2, [pc, #32]	; (8000d28 <uart_send_str+0xa8>)
 8000d06:	4b08      	ldr	r3, [pc, #32]	; (8000d28 <uart_send_str+0xa8>)
 8000d08:	899b      	ldrh	r3, [r3, #12]
 8000d0a:	b29b      	uxth	r3, r3
 8000d0c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000d10:	b29b      	uxth	r3, r3
 8000d12:	8193      	strh	r3, [r2, #12]
 8000d14:	68fb      	ldr	r3, [r7, #12]
 8000d16:	4618      	mov	r0, r3
 8000d18:	3714      	adds	r7, #20
 8000d1a:	46bd      	mov	sp, r7
 8000d1c:	bc80      	pop	{r7}
 8000d1e:	4770      	bx	lr
 8000d20:	200004a4 	.word	0x200004a4
 8000d24:	200004a0 	.word	0x200004a0
 8000d28:	40004400 	.word	0x40004400
 8000d2c:	200000a0 	.word	0x200000a0

08000d30 <uart_read>:
 8000d30:	b480      	push	{r7}
 8000d32:	b085      	sub	sp, #20
 8000d34:	af00      	add	r7, sp, #0
 8000d36:	6078      	str	r0, [r7, #4]
 8000d38:	6039      	str	r1, [r7, #0]
 8000d3a:	4b18      	ldr	r3, [pc, #96]	; (8000d9c <uart_read+0x6c>)
 8000d3c:	681a      	ldr	r2, [r3, #0]
 8000d3e:	4b18      	ldr	r3, [pc, #96]	; (8000da0 <uart_read+0x70>)
 8000d40:	681b      	ldr	r3, [r3, #0]
 8000d42:	429a      	cmp	r2, r3
 8000d44:	d101      	bne.n	8000d4a <uart_read+0x1a>
 8000d46:	2300      	movs	r3, #0
 8000d48:	e023      	b.n	8000d92 <uart_read+0x62>
 8000d4a:	2300      	movs	r3, #0
 8000d4c:	60fb      	str	r3, [r7, #12]
 8000d4e:	e01b      	b.n	8000d88 <uart_read+0x58>
 8000d50:	68fb      	ldr	r3, [r7, #12]
 8000d52:	687a      	ldr	r2, [r7, #4]
 8000d54:	4413      	add	r3, r2
 8000d56:	4a11      	ldr	r2, [pc, #68]	; (8000d9c <uart_read+0x6c>)
 8000d58:	6812      	ldr	r2, [r2, #0]
 8000d5a:	4912      	ldr	r1, [pc, #72]	; (8000da4 <uart_read+0x74>)
 8000d5c:	5c8a      	ldrb	r2, [r1, r2]
 8000d5e:	701a      	strb	r2, [r3, #0]
 8000d60:	4b0e      	ldr	r3, [pc, #56]	; (8000d9c <uart_read+0x6c>)
 8000d62:	681b      	ldr	r3, [r3, #0]
 8000d64:	3301      	adds	r3, #1
 8000d66:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000d6a:	4a0c      	ldr	r2, [pc, #48]	; (8000d9c <uart_read+0x6c>)
 8000d6c:	6013      	str	r3, [r2, #0]
 8000d6e:	4b0b      	ldr	r3, [pc, #44]	; (8000d9c <uart_read+0x6c>)
 8000d70:	681a      	ldr	r2, [r3, #0]
 8000d72:	4b0b      	ldr	r3, [pc, #44]	; (8000da0 <uart_read+0x70>)
 8000d74:	681b      	ldr	r3, [r3, #0]
 8000d76:	429a      	cmp	r2, r3
 8000d78:	d103      	bne.n	8000d82 <uart_read+0x52>
 8000d7a:	68fb      	ldr	r3, [r7, #12]
 8000d7c:	3301      	adds	r3, #1
 8000d7e:	60fb      	str	r3, [r7, #12]
 8000d80:	e006      	b.n	8000d90 <uart_read+0x60>
 8000d82:	68fb      	ldr	r3, [r7, #12]
 8000d84:	3301      	adds	r3, #1
 8000d86:	60fb      	str	r3, [r7, #12]
 8000d88:	68fa      	ldr	r2, [r7, #12]
 8000d8a:	683b      	ldr	r3, [r7, #0]
 8000d8c:	429a      	cmp	r2, r3
 8000d8e:	dbdf      	blt.n	8000d50 <uart_read+0x20>
 8000d90:	68fb      	ldr	r3, [r7, #12]
 8000d92:	4618      	mov	r0, r3
 8000d94:	3714      	adds	r7, #20
 8000d96:	46bd      	mov	sp, r7
 8000d98:	bc80      	pop	{r7}
 8000d9a:	4770      	bx	lr
 8000d9c:	200008ac 	.word	0x200008ac
 8000da0:	200008a8 	.word	0x200008a8
 8000da4:	200004a8 	.word	0x200004a8

08000da8 <USART2_IRQHandler>:
 8000da8:	b480      	push	{r7}
 8000daa:	af00      	add	r7, sp, #0
 8000dac:	4b1e      	ldr	r3, [pc, #120]	; (8000e28 <USART2_IRQHandler+0x80>)
 8000dae:	881b      	ldrh	r3, [r3, #0]
 8000db0:	b29b      	uxth	r3, r3
 8000db2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000db6:	2b00      	cmp	r3, #0
 8000db8:	d01c      	beq.n	8000df4 <USART2_IRQHandler+0x4c>
 8000dba:	4b1c      	ldr	r3, [pc, #112]	; (8000e2c <USART2_IRQHandler+0x84>)
 8000dbc:	681a      	ldr	r2, [r3, #0]
 8000dbe:	4b1c      	ldr	r3, [pc, #112]	; (8000e30 <USART2_IRQHandler+0x88>)
 8000dc0:	681b      	ldr	r3, [r3, #0]
 8000dc2:	429a      	cmp	r2, r3
 8000dc4:	d108      	bne.n	8000dd8 <USART2_IRQHandler+0x30>
 8000dc6:	4a18      	ldr	r2, [pc, #96]	; (8000e28 <USART2_IRQHandler+0x80>)
 8000dc8:	4b17      	ldr	r3, [pc, #92]	; (8000e28 <USART2_IRQHandler+0x80>)
 8000dca:	899b      	ldrh	r3, [r3, #12]
 8000dcc:	b29b      	uxth	r3, r3
 8000dce:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000dd2:	b29b      	uxth	r3, r3
 8000dd4:	8193      	strh	r3, [r2, #12]
 8000dd6:	e00d      	b.n	8000df4 <USART2_IRQHandler+0x4c>
 8000dd8:	4a13      	ldr	r2, [pc, #76]	; (8000e28 <USART2_IRQHandler+0x80>)
 8000dda:	4b14      	ldr	r3, [pc, #80]	; (8000e2c <USART2_IRQHandler+0x84>)
 8000ddc:	681b      	ldr	r3, [r3, #0]
 8000dde:	4915      	ldr	r1, [pc, #84]	; (8000e34 <USART2_IRQHandler+0x8c>)
 8000de0:	5ccb      	ldrb	r3, [r1, r3]
 8000de2:	b29b      	uxth	r3, r3
 8000de4:	8093      	strh	r3, [r2, #4]
 8000de6:	4b11      	ldr	r3, [pc, #68]	; (8000e2c <USART2_IRQHandler+0x84>)
 8000de8:	681b      	ldr	r3, [r3, #0]
 8000dea:	3301      	adds	r3, #1
 8000dec:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000df0:	4a0e      	ldr	r2, [pc, #56]	; (8000e2c <USART2_IRQHandler+0x84>)
 8000df2:	6013      	str	r3, [r2, #0]
 8000df4:	4b0c      	ldr	r3, [pc, #48]	; (8000e28 <USART2_IRQHandler+0x80>)
 8000df6:	881b      	ldrh	r3, [r3, #0]
 8000df8:	b29b      	uxth	r3, r3
 8000dfa:	f003 0320 	and.w	r3, r3, #32
 8000dfe:	2b00      	cmp	r3, #0
 8000e00:	d00e      	beq.n	8000e20 <USART2_IRQHandler+0x78>
 8000e02:	4b0d      	ldr	r3, [pc, #52]	; (8000e38 <USART2_IRQHandler+0x90>)
 8000e04:	681b      	ldr	r3, [r3, #0]
 8000e06:	4a08      	ldr	r2, [pc, #32]	; (8000e28 <USART2_IRQHandler+0x80>)
 8000e08:	8892      	ldrh	r2, [r2, #4]
 8000e0a:	b292      	uxth	r2, r2
 8000e0c:	b2d1      	uxtb	r1, r2
 8000e0e:	4a0b      	ldr	r2, [pc, #44]	; (8000e3c <USART2_IRQHandler+0x94>)
 8000e10:	54d1      	strb	r1, [r2, r3]
 8000e12:	4b09      	ldr	r3, [pc, #36]	; (8000e38 <USART2_IRQHandler+0x90>)
 8000e14:	681b      	ldr	r3, [r3, #0]
 8000e16:	3301      	adds	r3, #1
 8000e18:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000e1c:	4a06      	ldr	r2, [pc, #24]	; (8000e38 <USART2_IRQHandler+0x90>)
 8000e1e:	6013      	str	r3, [r2, #0]
 8000e20:	bf00      	nop
 8000e22:	46bd      	mov	sp, r7
 8000e24:	bc80      	pop	{r7}
 8000e26:	4770      	bx	lr
 8000e28:	40004400 	.word	0x40004400
 8000e2c:	200004a0 	.word	0x200004a0
 8000e30:	200004a4 	.word	0x200004a4
 8000e34:	200000a0 	.word	0x200000a0
 8000e38:	200008a8 	.word	0x200008a8
 8000e3c:	200004a8 	.word	0x200004a8

08000e40 <NVIC_EnableIRQ>:
 8000e40:	b480      	push	{r7}
 8000e42:	b083      	sub	sp, #12
 8000e44:	af00      	add	r7, sp, #0
 8000e46:	4603      	mov	r3, r0
 8000e48:	71fb      	strb	r3, [r7, #7]
 8000e4a:	4908      	ldr	r1, [pc, #32]	; (8000e6c <NVIC_EnableIRQ+0x2c>)
 8000e4c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e50:	095b      	lsrs	r3, r3, #5
 8000e52:	79fa      	ldrb	r2, [r7, #7]
 8000e54:	f002 021f 	and.w	r2, r2, #31
 8000e58:	2001      	movs	r0, #1
 8000e5a:	fa00 f202 	lsl.w	r2, r0, r2
 8000e5e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000e62:	bf00      	nop
 8000e64:	370c      	adds	r7, #12
 8000e66:	46bd      	mov	sp, r7
 8000e68:	bc80      	pop	{r7}
 8000e6a:	4770      	bx	lr
 8000e6c:	e000e100 	.word	0xe000e100

08000e70 <system_init>:
 8000e70:	b580      	push	{r7, lr}
 8000e72:	af00      	add	r7, sp, #0
 8000e74:	4a56      	ldr	r2, [pc, #344]	; (8000fd0 <system_init+0x160>)
 8000e76:	4b56      	ldr	r3, [pc, #344]	; (8000fd0 <system_init+0x160>)
 8000e78:	681b      	ldr	r3, [r3, #0]
 8000e7a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000e7e:	6013      	str	r3, [r2, #0]
 8000e80:	bf00      	nop
 8000e82:	4b53      	ldr	r3, [pc, #332]	; (8000fd0 <system_init+0x160>)
 8000e84:	681b      	ldr	r3, [r3, #0]
 8000e86:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000e8a:	2b00      	cmp	r3, #0
 8000e8c:	d0f9      	beq.n	8000e82 <system_init+0x12>
 8000e8e:	4a50      	ldr	r2, [pc, #320]	; (8000fd0 <system_init+0x160>)
 8000e90:	4b4f      	ldr	r3, [pc, #316]	; (8000fd0 <system_init+0x160>)
 8000e92:	685b      	ldr	r3, [r3, #4]
 8000e94:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000e98:	6053      	str	r3, [r2, #4]
 8000e9a:	4a4d      	ldr	r2, [pc, #308]	; (8000fd0 <system_init+0x160>)
 8000e9c:	4b4c      	ldr	r3, [pc, #304]	; (8000fd0 <system_init+0x160>)
 8000e9e:	685b      	ldr	r3, [r3, #4]
 8000ea0:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000ea4:	6053      	str	r3, [r2, #4]
 8000ea6:	4a4a      	ldr	r2, [pc, #296]	; (8000fd0 <system_init+0x160>)
 8000ea8:	4b49      	ldr	r3, [pc, #292]	; (8000fd0 <system_init+0x160>)
 8000eaa:	685b      	ldr	r3, [r3, #4]
 8000eac:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 8000eb0:	6053      	str	r3, [r2, #4]
 8000eb2:	4a47      	ldr	r2, [pc, #284]	; (8000fd0 <system_init+0x160>)
 8000eb4:	4b46      	ldr	r3, [pc, #280]	; (8000fd0 <system_init+0x160>)
 8000eb6:	685b      	ldr	r3, [r3, #4]
 8000eb8:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 8000ebc:	6053      	str	r3, [r2, #4]
 8000ebe:	4a44      	ldr	r2, [pc, #272]	; (8000fd0 <system_init+0x160>)
 8000ec0:	4b43      	ldr	r3, [pc, #268]	; (8000fd0 <system_init+0x160>)
 8000ec2:	681b      	ldr	r3, [r3, #0]
 8000ec4:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000ec8:	6013      	str	r3, [r2, #0]
 8000eca:	bf00      	nop
 8000ecc:	4b40      	ldr	r3, [pc, #256]	; (8000fd0 <system_init+0x160>)
 8000ece:	681b      	ldr	r3, [r3, #0]
 8000ed0:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000ed4:	2b00      	cmp	r3, #0
 8000ed6:	d0f9      	beq.n	8000ecc <system_init+0x5c>
 8000ed8:	4a3e      	ldr	r2, [pc, #248]	; (8000fd4 <system_init+0x164>)
 8000eda:	4b3e      	ldr	r3, [pc, #248]	; (8000fd4 <system_init+0x164>)
 8000edc:	681b      	ldr	r3, [r3, #0]
 8000ede:	f043 0310 	orr.w	r3, r3, #16
 8000ee2:	6013      	str	r3, [r2, #0]
 8000ee4:	4a3b      	ldr	r2, [pc, #236]	; (8000fd4 <system_init+0x164>)
 8000ee6:	4b3b      	ldr	r3, [pc, #236]	; (8000fd4 <system_init+0x164>)
 8000ee8:	681b      	ldr	r3, [r3, #0]
 8000eea:	f023 0303 	bic.w	r3, r3, #3
 8000eee:	6013      	str	r3, [r2, #0]
 8000ef0:	4a38      	ldr	r2, [pc, #224]	; (8000fd4 <system_init+0x164>)
 8000ef2:	4b38      	ldr	r3, [pc, #224]	; (8000fd4 <system_init+0x164>)
 8000ef4:	681b      	ldr	r3, [r3, #0]
 8000ef6:	f043 0302 	orr.w	r3, r3, #2
 8000efa:	6013      	str	r3, [r2, #0]
 8000efc:	4a34      	ldr	r2, [pc, #208]	; (8000fd0 <system_init+0x160>)
 8000efe:	4b34      	ldr	r3, [pc, #208]	; (8000fd0 <system_init+0x160>)
 8000f00:	685b      	ldr	r3, [r3, #4]
 8000f02:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000f06:	6053      	str	r3, [r2, #4]
 8000f08:	4a31      	ldr	r2, [pc, #196]	; (8000fd0 <system_init+0x160>)
 8000f0a:	4b31      	ldr	r3, [pc, #196]	; (8000fd0 <system_init+0x160>)
 8000f0c:	685b      	ldr	r3, [r3, #4]
 8000f0e:	f023 0303 	bic.w	r3, r3, #3
 8000f12:	6053      	str	r3, [r2, #4]
 8000f14:	4a2e      	ldr	r2, [pc, #184]	; (8000fd0 <system_init+0x160>)
 8000f16:	4b2e      	ldr	r3, [pc, #184]	; (8000fd0 <system_init+0x160>)
 8000f18:	685b      	ldr	r3, [r3, #4]
 8000f1a:	f043 0302 	orr.w	r3, r3, #2
 8000f1e:	6053      	str	r3, [r2, #4]
 8000f20:	bf00      	nop
 8000f22:	4b2b      	ldr	r3, [pc, #172]	; (8000fd0 <system_init+0x160>)
 8000f24:	685b      	ldr	r3, [r3, #4]
 8000f26:	f003 030c 	and.w	r3, r3, #12
 8000f2a:	2b08      	cmp	r3, #8
 8000f2c:	d1f9      	bne.n	8000f22 <system_init+0xb2>
 8000f2e:	4a28      	ldr	r2, [pc, #160]	; (8000fd0 <system_init+0x160>)
 8000f30:	4b27      	ldr	r3, [pc, #156]	; (8000fd0 <system_init+0x160>)
 8000f32:	699b      	ldr	r3, [r3, #24]
 8000f34:	f043 0305 	orr.w	r3, r3, #5
 8000f38:	6193      	str	r3, [r2, #24]
 8000f3a:	4a25      	ldr	r2, [pc, #148]	; (8000fd0 <system_init+0x160>)
 8000f3c:	4b24      	ldr	r3, [pc, #144]	; (8000fd0 <system_init+0x160>)
 8000f3e:	69db      	ldr	r3, [r3, #28]
 8000f40:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 8000f44:	61d3      	str	r3, [r2, #28]
 8000f46:	4a22      	ldr	r2, [pc, #136]	; (8000fd0 <system_init+0x160>)
 8000f48:	4b21      	ldr	r3, [pc, #132]	; (8000fd0 <system_init+0x160>)
 8000f4a:	699b      	ldr	r3, [r3, #24]
 8000f4c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000f50:	6193      	str	r3, [r2, #24]
 8000f52:	4a1f      	ldr	r2, [pc, #124]	; (8000fd0 <system_init+0x160>)
 8000f54:	4b1e      	ldr	r3, [pc, #120]	; (8000fd0 <system_init+0x160>)
 8000f56:	69db      	ldr	r3, [r3, #28]
 8000f58:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000f5c:	61d3      	str	r3, [r2, #28]
 8000f5e:	4a1c      	ldr	r2, [pc, #112]	; (8000fd0 <system_init+0x160>)
 8000f60:	4b1b      	ldr	r3, [pc, #108]	; (8000fd0 <system_init+0x160>)
 8000f62:	699b      	ldr	r3, [r3, #24]
 8000f64:	f043 0318 	orr.w	r3, r3, #24
 8000f68:	6193      	str	r3, [r2, #24]
 8000f6a:	4a1b      	ldr	r2, [pc, #108]	; (8000fd8 <system_init+0x168>)
 8000f6c:	4b1a      	ldr	r3, [pc, #104]	; (8000fd8 <system_init+0x168>)
 8000f6e:	681b      	ldr	r3, [r3, #0]
 8000f70:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8000f74:	6013      	str	r3, [r2, #0]
 8000f76:	4a18      	ldr	r2, [pc, #96]	; (8000fd8 <system_init+0x168>)
 8000f78:	4b17      	ldr	r3, [pc, #92]	; (8000fd8 <system_init+0x168>)
 8000f7a:	681b      	ldr	r3, [r3, #0]
 8000f7c:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8000f80:	6013      	str	r3, [r2, #0]
 8000f82:	4b16      	ldr	r3, [pc, #88]	; (8000fdc <system_init+0x16c>)
 8000f84:	f242 3227 	movw	r2, #8999	; 0x2327
 8000f88:	605a      	str	r2, [r3, #4]
 8000f8a:	4b14      	ldr	r3, [pc, #80]	; (8000fdc <system_init+0x16c>)
 8000f8c:	2200      	movs	r2, #0
 8000f8e:	609a      	str	r2, [r3, #8]
 8000f90:	4b12      	ldr	r3, [pc, #72]	; (8000fdc <system_init+0x16c>)
 8000f92:	2203      	movs	r2, #3
 8000f94:	601a      	str	r2, [r3, #0]
 8000f96:	4a12      	ldr	r2, [pc, #72]	; (8000fe0 <system_init+0x170>)
 8000f98:	4b11      	ldr	r3, [pc, #68]	; (8000fe0 <system_init+0x170>)
 8000f9a:	681b      	ldr	r3, [r3, #0]
 8000f9c:	f043 0310 	orr.w	r3, r3, #16
 8000fa0:	6013      	str	r3, [r2, #0]
 8000fa2:	4a0f      	ldr	r2, [pc, #60]	; (8000fe0 <system_init+0x170>)
 8000fa4:	4b0e      	ldr	r3, [pc, #56]	; (8000fe0 <system_init+0x170>)
 8000fa6:	689b      	ldr	r3, [r3, #8]
 8000fa8:	f043 0310 	orr.w	r3, r3, #16
 8000fac:	6093      	str	r3, [r2, #8]
 8000fae:	4a0d      	ldr	r2, [pc, #52]	; (8000fe4 <system_init+0x174>)
 8000fb0:	4b0c      	ldr	r3, [pc, #48]	; (8000fe4 <system_init+0x174>)
 8000fb2:	68db      	ldr	r3, [r3, #12]
 8000fb4:	f023 0301 	bic.w	r3, r3, #1
 8000fb8:	60d3      	str	r3, [r2, #12]
 8000fba:	4a0a      	ldr	r2, [pc, #40]	; (8000fe4 <system_init+0x174>)
 8000fbc:	4b09      	ldr	r3, [pc, #36]	; (8000fe4 <system_init+0x174>)
 8000fbe:	68db      	ldr	r3, [r3, #12]
 8000fc0:	f043 0301 	orr.w	r3, r3, #1
 8000fc4:	60d3      	str	r3, [r2, #12]
 8000fc6:	200a      	movs	r0, #10
 8000fc8:	f7ff ff3a 	bl	8000e40 <NVIC_EnableIRQ>
 8000fcc:	bf00      	nop
 8000fce:	bd80      	pop	{r7, pc}
 8000fd0:	40021000 	.word	0x40021000
 8000fd4:	40022000 	.word	0x40022000
 8000fd8:	40010c00 	.word	0x40010c00
 8000fdc:	e000e010 	.word	0xe000e010
 8000fe0:	40010400 	.word	0x40010400
 8000fe4:	40010000 	.word	0x40010000

08000fe8 <system_PB5_on>:
 8000fe8:	b480      	push	{r7}
 8000fea:	af00      	add	r7, sp, #0
 8000fec:	4a04      	ldr	r2, [pc, #16]	; (8001000 <system_PB5_on+0x18>)
 8000fee:	4b04      	ldr	r3, [pc, #16]	; (8001000 <system_PB5_on+0x18>)
 8000ff0:	68db      	ldr	r3, [r3, #12]
 8000ff2:	f043 0320 	orr.w	r3, r3, #32
 8000ff6:	60d3      	str	r3, [r2, #12]
 8000ff8:	bf00      	nop
 8000ffa:	46bd      	mov	sp, r7
 8000ffc:	bc80      	pop	{r7}
 8000ffe:	4770      	bx	lr
 8001000:	40010c00 	.word	0x40010c00

08001004 <system_PB5_off>:
 8001004:	b480      	push	{r7}
 8001006:	af00      	add	r7, sp, #0
 8001008:	4a04      	ldr	r2, [pc, #16]	; (800101c <system_PB5_off+0x18>)
 800100a:	4b04      	ldr	r3, [pc, #16]	; (800101c <system_PB5_off+0x18>)
 800100c:	68db      	ldr	r3, [r3, #12]
 800100e:	f023 0320 	bic.w	r3, r3, #32
 8001012:	60d3      	str	r3, [r2, #12]
 8001014:	bf00      	nop
 8001016:	46bd      	mov	sp, r7
 8001018:	bc80      	pop	{r7}
 800101a:	4770      	bx	lr
 800101c:	40010c00 	.word	0x40010c00

08001020 <SysTick_Handler>:
 8001020:	b480      	push	{r7}
 8001022:	af00      	add	r7, sp, #0
 8001024:	4b04      	ldr	r3, [pc, #16]	; (8001038 <SysTick_Handler+0x18>)
 8001026:	681b      	ldr	r3, [r3, #0]
 8001028:	3301      	adds	r3, #1
 800102a:	4a03      	ldr	r2, [pc, #12]	; (8001038 <SysTick_Handler+0x18>)
 800102c:	6013      	str	r3, [r2, #0]
 800102e:	bf00      	nop
 8001030:	46bd      	mov	sp, r7
 8001032:	bc80      	pop	{r7}
 8001034:	4770      	bx	lr
 8001036:	bf00      	nop
 8001038:	200008b0 	.word	0x200008b0

0800103c <EXTI4_IRQHandler>:
 800103c:	b480      	push	{r7}
 800103e:	af00      	add	r7, sp, #0
 8001040:	4b0b      	ldr	r3, [pc, #44]	; (8001070 <EXTI4_IRQHandler+0x34>)
 8001042:	695b      	ldr	r3, [r3, #20]
 8001044:	f003 0310 	and.w	r3, r3, #16
 8001048:	2b00      	cmp	r3, #0
 800104a:	d00b      	beq.n	8001064 <EXTI4_IRQHandler+0x28>
 800104c:	4a08      	ldr	r2, [pc, #32]	; (8001070 <EXTI4_IRQHandler+0x34>)
 800104e:	4b08      	ldr	r3, [pc, #32]	; (8001070 <EXTI4_IRQHandler+0x34>)
 8001050:	695b      	ldr	r3, [r3, #20]
 8001052:	f043 0310 	orr.w	r3, r3, #16
 8001056:	6153      	str	r3, [r2, #20]
 8001058:	4b06      	ldr	r3, [pc, #24]	; (8001074 <EXTI4_IRQHandler+0x38>)
 800105a:	681b      	ldr	r3, [r3, #0]
 800105c:	f083 0301 	eor.w	r3, r3, #1
 8001060:	4a04      	ldr	r2, [pc, #16]	; (8001074 <EXTI4_IRQHandler+0x38>)
 8001062:	6013      	str	r3, [r2, #0]
 8001064:	bf00      	nop
 8001066:	4618      	mov	r0, r3
 8001068:	46bd      	mov	sp, r7
 800106a:	bc80      	pop	{r7}
 800106c:	4770      	bx	lr
 800106e:	bf00      	nop
 8001070:	40010400 	.word	0x40010400
 8001074:	200008b4 	.word	0x200008b4

08001078 <null_resp>:
 8001078:	b480      	push	{r7}
 800107a:	b083      	sub	sp, #12
 800107c:	af00      	add	r7, sp, #0
 800107e:	6078      	str	r0, [r7, #4]
 8001080:	bf00      	nop
 8001082:	370c      	adds	r7, #12
 8001084:	46bd      	mov	sp, r7
 8001086:	bc80      	pop	{r7}
 8001088:	4770      	bx	lr
 800108a:	bf00      	nop

0800108c <null_ok>:
 800108c:	b480      	push	{r7}
 800108e:	af00      	add	r7, sp, #0
 8001090:	bf00      	nop
 8001092:	46bd      	mov	sp, r7
 8001094:	bc80      	pop	{r7}
 8001096:	4770      	bx	lr

08001098 <null_error>:
 8001098:	b480      	push	{r7}
 800109a:	af00      	add	r7, sp, #0
 800109c:	bf00      	nop
 800109e:	46bd      	mov	sp, r7
 80010a0:	bc80      	pop	{r7}
 80010a2:	4770      	bx	lr

080010a4 <sim900_update>:
 80010a4:	b580      	push	{r7, lr}
 80010a6:	b082      	sub	sp, #8
 80010a8:	af00      	add	r7, sp, #0
 80010aa:	2300      	movs	r3, #0
 80010ac:	607b      	str	r3, [r7, #4]
 80010ae:	4b2f      	ldr	r3, [pc, #188]	; (800116c <sim900_update+0xc8>)
 80010b0:	681b      	ldr	r3, [r3, #0]
 80010b2:	2b00      	cmp	r3, #0
 80010b4:	d146      	bne.n	8001144 <sim900_update+0xa0>
 80010b6:	1cfb      	adds	r3, r7, #3
 80010b8:	2101      	movs	r1, #1
 80010ba:	4618      	mov	r0, r3
 80010bc:	f7ff fe38 	bl	8000d30 <uart_read>
 80010c0:	4603      	mov	r3, r0
 80010c2:	2b01      	cmp	r3, #1
 80010c4:	d13e      	bne.n	8001144 <sim900_update+0xa0>
 80010c6:	4b2a      	ldr	r3, [pc, #168]	; (8001170 <sim900_update+0xcc>)
 80010c8:	781b      	ldrb	r3, [r3, #0]
 80010ca:	2b0d      	cmp	r3, #13
 80010cc:	d12e      	bne.n	800112c <sim900_update+0x88>
 80010ce:	78fb      	ldrb	r3, [r7, #3]
 80010d0:	2b0a      	cmp	r3, #10
 80010d2:	d12b      	bne.n	800112c <sim900_update+0x88>
 80010d4:	4b27      	ldr	r3, [pc, #156]	; (8001174 <sim900_update+0xd0>)
 80010d6:	681b      	ldr	r3, [r3, #0]
 80010d8:	4a27      	ldr	r2, [pc, #156]	; (8001178 <sim900_update+0xd4>)
 80010da:	2100      	movs	r1, #0
 80010dc:	54d1      	strb	r1, [r2, r3]
 80010de:	4b25      	ldr	r3, [pc, #148]	; (8001174 <sim900_update+0xd0>)
 80010e0:	681b      	ldr	r3, [r3, #0]
 80010e2:	3b01      	subs	r3, #1
 80010e4:	607b      	str	r3, [r7, #4]
 80010e6:	4b23      	ldr	r3, [pc, #140]	; (8001174 <sim900_update+0xd0>)
 80010e8:	2200      	movs	r2, #0
 80010ea:	601a      	str	r2, [r3, #0]
 80010ec:	687b      	ldr	r3, [r7, #4]
 80010ee:	2b00      	cmp	r3, #0
 80010f0:	dd24      	ble.n	800113c <sim900_update+0x98>
 80010f2:	2202      	movs	r2, #2
 80010f4:	4921      	ldr	r1, [pc, #132]	; (800117c <sim900_update+0xd8>)
 80010f6:	4820      	ldr	r0, [pc, #128]	; (8001178 <sim900_update+0xd4>)
 80010f8:	f7ff f81c 	bl	8000134 <strncmp>
 80010fc:	4603      	mov	r3, r0
 80010fe:	2b00      	cmp	r3, #0
 8001100:	d103      	bne.n	800110a <sim900_update+0x66>
 8001102:	4b1f      	ldr	r3, [pc, #124]	; (8001180 <sim900_update+0xdc>)
 8001104:	681b      	ldr	r3, [r3, #0]
 8001106:	4798      	blx	r3
 8001108:	e018      	b.n	800113c <sim900_update+0x98>
 800110a:	2205      	movs	r2, #5
 800110c:	491d      	ldr	r1, [pc, #116]	; (8001184 <sim900_update+0xe0>)
 800110e:	481a      	ldr	r0, [pc, #104]	; (8001178 <sim900_update+0xd4>)
 8001110:	f7ff f810 	bl	8000134 <strncmp>
 8001114:	4603      	mov	r3, r0
 8001116:	2b00      	cmp	r3, #0
 8001118:	d103      	bne.n	8001122 <sim900_update+0x7e>
 800111a:	4b1b      	ldr	r3, [pc, #108]	; (8001188 <sim900_update+0xe4>)
 800111c:	681b      	ldr	r3, [r3, #0]
 800111e:	4798      	blx	r3
 8001120:	e00c      	b.n	800113c <sim900_update+0x98>
 8001122:	4b1a      	ldr	r3, [pc, #104]	; (800118c <sim900_update+0xe8>)
 8001124:	681b      	ldr	r3, [r3, #0]
 8001126:	6878      	ldr	r0, [r7, #4]
 8001128:	4798      	blx	r3
 800112a:	e007      	b.n	800113c <sim900_update+0x98>
 800112c:	4b11      	ldr	r3, [pc, #68]	; (8001174 <sim900_update+0xd0>)
 800112e:	681b      	ldr	r3, [r3, #0]
 8001130:	1c5a      	adds	r2, r3, #1
 8001132:	4910      	ldr	r1, [pc, #64]	; (8001174 <sim900_update+0xd0>)
 8001134:	600a      	str	r2, [r1, #0]
 8001136:	78f9      	ldrb	r1, [r7, #3]
 8001138:	4a0f      	ldr	r2, [pc, #60]	; (8001178 <sim900_update+0xd4>)
 800113a:	54d1      	strb	r1, [r2, r3]
 800113c:	78fa      	ldrb	r2, [r7, #3]
 800113e:	4b0c      	ldr	r3, [pc, #48]	; (8001170 <sim900_update+0xcc>)
 8001140:	701a      	strb	r2, [r3, #0]
 8001142:	e00e      	b.n	8001162 <sim900_update+0xbe>
 8001144:	4b12      	ldr	r3, [pc, #72]	; (8001190 <sim900_update+0xec>)
 8001146:	681a      	ldr	r2, [r3, #0]
 8001148:	4b08      	ldr	r3, [pc, #32]	; (800116c <sim900_update+0xc8>)
 800114a:	681b      	ldr	r3, [r3, #0]
 800114c:	441a      	add	r2, r3
 800114e:	4b11      	ldr	r3, [pc, #68]	; (8001194 <sim900_update+0xf0>)
 8001150:	681b      	ldr	r3, [r3, #0]
 8001152:	1ad2      	subs	r2, r2, r3
 8001154:	4b05      	ldr	r3, [pc, #20]	; (800116c <sim900_update+0xc8>)
 8001156:	681b      	ldr	r3, [r3, #0]
 8001158:	429a      	cmp	r2, r3
 800115a:	d302      	bcc.n	8001162 <sim900_update+0xbe>
 800115c:	4b03      	ldr	r3, [pc, #12]	; (800116c <sim900_update+0xc8>)
 800115e:	2200      	movs	r2, #0
 8001160:	601a      	str	r2, [r3, #0]
 8001162:	687b      	ldr	r3, [r7, #4]
 8001164:	4618      	mov	r0, r3
 8001166:	3708      	adds	r7, #8
 8001168:	46bd      	mov	sp, r7
 800116a:	bd80      	pop	{r7, pc}
 800116c:	200008d0 	.word	0x200008d0
 8001170:	200010e0 	.word	0x200010e0
 8001174:	200010e4 	.word	0x200010e4
 8001178:	200008e0 	.word	0x200008e0
 800117c:	0800193c 	.word	0x0800193c
 8001180:	20000004 	.word	0x20000004
 8001184:	08001940 	.word	0x08001940
 8001188:	20000008 	.word	0x20000008
 800118c:	20000000 	.word	0x20000000
 8001190:	200008b0 	.word	0x200008b0
 8001194:	200008d4 	.word	0x200008d4

08001198 <print_response>:
 8001198:	b580      	push	{r7, lr}
 800119a:	b084      	sub	sp, #16
 800119c:	af00      	add	r7, sp, #0
 800119e:	6078      	str	r0, [r7, #4]
 80011a0:	2300      	movs	r3, #0
 80011a2:	60fb      	str	r3, [r7, #12]
 80011a4:	e00a      	b.n	80011bc <print_response+0x24>
 80011a6:	4a0b      	ldr	r2, [pc, #44]	; (80011d4 <print_response+0x3c>)
 80011a8:	68fb      	ldr	r3, [r7, #12]
 80011aa:	4413      	add	r3, r2
 80011ac:	781b      	ldrb	r3, [r3, #0]
 80011ae:	4619      	mov	r1, r3
 80011b0:	4809      	ldr	r0, [pc, #36]	; (80011d8 <print_response+0x40>)
 80011b2:	f7ff fa25 	bl	8000600 <xprintf>
 80011b6:	68fb      	ldr	r3, [r7, #12]
 80011b8:	3301      	adds	r3, #1
 80011ba:	60fb      	str	r3, [r7, #12]
 80011bc:	68fa      	ldr	r2, [r7, #12]
 80011be:	687b      	ldr	r3, [r7, #4]
 80011c0:	429a      	cmp	r2, r3
 80011c2:	dbf0      	blt.n	80011a6 <print_response+0xe>
 80011c4:	4805      	ldr	r0, [pc, #20]	; (80011dc <print_response+0x44>)
 80011c6:	f7ff fa1b 	bl	8000600 <xprintf>
 80011ca:	bf00      	nop
 80011cc:	3710      	adds	r7, #16
 80011ce:	46bd      	mov	sp, r7
 80011d0:	bd80      	pop	{r7, pc}
 80011d2:	bf00      	nop
 80011d4:	200008e0 	.word	0x200008e0
 80011d8:	08001948 	.word	0x08001948
 80011dc:	0800194c 	.word	0x0800194c

080011e0 <print_response_hex>:
 80011e0:	b580      	push	{r7, lr}
 80011e2:	b084      	sub	sp, #16
 80011e4:	af00      	add	r7, sp, #0
 80011e6:	6078      	str	r0, [r7, #4]
 80011e8:	2300      	movs	r3, #0
 80011ea:	60fb      	str	r3, [r7, #12]
 80011ec:	e00a      	b.n	8001204 <print_response_hex+0x24>
 80011ee:	4a0b      	ldr	r2, [pc, #44]	; (800121c <print_response_hex+0x3c>)
 80011f0:	68fb      	ldr	r3, [r7, #12]
 80011f2:	4413      	add	r3, r2
 80011f4:	781b      	ldrb	r3, [r3, #0]
 80011f6:	4619      	mov	r1, r3
 80011f8:	4809      	ldr	r0, [pc, #36]	; (8001220 <print_response_hex+0x40>)
 80011fa:	f7ff fa01 	bl	8000600 <xprintf>
 80011fe:	68fb      	ldr	r3, [r7, #12]
 8001200:	3301      	adds	r3, #1
 8001202:	60fb      	str	r3, [r7, #12]
 8001204:	68fa      	ldr	r2, [r7, #12]
 8001206:	687b      	ldr	r3, [r7, #4]
 8001208:	429a      	cmp	r2, r3
 800120a:	dbf0      	blt.n	80011ee <print_response_hex+0xe>
 800120c:	4805      	ldr	r0, [pc, #20]	; (8001224 <print_response_hex+0x44>)
 800120e:	f7ff f9f7 	bl	8000600 <xprintf>
 8001212:	bf00      	nop
 8001214:	3710      	adds	r7, #16
 8001216:	46bd      	mov	sp, r7
 8001218:	bd80      	pop	{r7, pc}
 800121a:	bf00      	nop
 800121c:	200008e0 	.word	0x200008e0
 8001220:	08001950 	.word	0x08001950
 8001224:	0800194c 	.word	0x0800194c

08001228 <itsok>:
 8001228:	b580      	push	{r7, lr}
 800122a:	af00      	add	r7, sp, #0
 800122c:	4802      	ldr	r0, [pc, #8]	; (8001238 <itsok+0x10>)
 800122e:	f7ff f9e7 	bl	8000600 <xprintf>
 8001232:	bf00      	nop
 8001234:	bd80      	pop	{r7, pc}
 8001236:	bf00      	nop
 8001238:	08001958 	.word	0x08001958

0800123c <itserror>:
 800123c:	b580      	push	{r7, lr}
 800123e:	af00      	add	r7, sp, #0
 8001240:	4803      	ldr	r0, [pc, #12]	; (8001250 <itserror+0x14>)
 8001242:	f7ff f9dd 	bl	8000600 <xprintf>
 8001246:	4b03      	ldr	r3, [pc, #12]	; (8001254 <itserror+0x18>)
 8001248:	2201      	movs	r2, #1
 800124a:	601a      	str	r2, [r3, #0]
 800124c:	bf00      	nop
 800124e:	bd80      	pop	{r7, pc}
 8001250:	0800195c 	.word	0x0800195c
 8001254:	200008dc 	.word	0x200008dc

08001258 <sim900_command>:
 8001258:	b580      	push	{r7, lr}
 800125a:	b082      	sub	sp, #8
 800125c:	af00      	add	r7, sp, #0
 800125e:	6078      	str	r0, [r7, #4]
 8001260:	6878      	ldr	r0, [r7, #4]
 8001262:	f7fe ff8d 	bl	8000180 <strlen>
 8001266:	4603      	mov	r3, r0
 8001268:	4619      	mov	r1, r3
 800126a:	6878      	ldr	r0, [r7, #4]
 800126c:	f7ff fcbc 	bl	8000be8 <uart_send>
 8001270:	bf00      	nop
 8001272:	3708      	adds	r7, #8
 8001274:	46bd      	mov	sp, r7
 8001276:	bd80      	pop	{r7, pc}

08001278 <theend>:
 8001278:	b580      	push	{r7, lr}
 800127a:	af00      	add	r7, sp, #0
 800127c:	4808      	ldr	r0, [pc, #32]	; (80012a0 <theend+0x28>)
 800127e:	f7ff f9bf 	bl	8000600 <xprintf>
 8001282:	4b08      	ldr	r3, [pc, #32]	; (80012a4 <theend+0x2c>)
 8001284:	2201      	movs	r2, #1
 8001286:	601a      	str	r2, [r3, #0]
 8001288:	4b07      	ldr	r3, [pc, #28]	; (80012a8 <theend+0x30>)
 800128a:	4a08      	ldr	r2, [pc, #32]	; (80012ac <theend+0x34>)
 800128c:	601a      	str	r2, [r3, #0]
 800128e:	4b08      	ldr	r3, [pc, #32]	; (80012b0 <theend+0x38>)
 8001290:	4a06      	ldr	r2, [pc, #24]	; (80012ac <theend+0x34>)
 8001292:	601a      	str	r2, [r3, #0]
 8001294:	4b07      	ldr	r3, [pc, #28]	; (80012b4 <theend+0x3c>)
 8001296:	2201      	movs	r2, #1
 8001298:	601a      	str	r2, [r3, #0]
 800129a:	bf00      	nop
 800129c:	bd80      	pop	{r7, pc}
 800129e:	bf00      	nop
 80012a0:	08001964 	.word	0x08001964
 80012a4:	200008d8 	.word	0x200008d8
 80012a8:	20000004 	.word	0x20000004
 80012ac:	0800123d 	.word	0x0800123d
 80012b0:	20000008 	.word	0x20000008
 80012b4:	200008dc 	.word	0x200008dc

080012b8 <httpread_ok>:
 80012b8:	b580      	push	{r7, lr}
 80012ba:	af00      	add	r7, sp, #0
 80012bc:	4808      	ldr	r0, [pc, #32]	; (80012e0 <httpread_ok+0x28>)
 80012be:	f7ff f99f 	bl	8000600 <xprintf>
 80012c2:	4808      	ldr	r0, [pc, #32]	; (80012e4 <httpread_ok+0x2c>)
 80012c4:	f7ff ffc8 	bl	8001258 <sim900_command>
 80012c8:	4b07      	ldr	r3, [pc, #28]	; (80012e8 <httpread_ok+0x30>)
 80012ca:	4a08      	ldr	r2, [pc, #32]	; (80012ec <httpread_ok+0x34>)
 80012cc:	601a      	str	r2, [r3, #0]
 80012ce:	4b08      	ldr	r3, [pc, #32]	; (80012f0 <httpread_ok+0x38>)
 80012d0:	4a08      	ldr	r2, [pc, #32]	; (80012f4 <httpread_ok+0x3c>)
 80012d2:	601a      	str	r2, [r3, #0]
 80012d4:	4b08      	ldr	r3, [pc, #32]	; (80012f8 <httpread_ok+0x40>)
 80012d6:	4a09      	ldr	r2, [pc, #36]	; (80012fc <httpread_ok+0x44>)
 80012d8:	601a      	str	r2, [r3, #0]
 80012da:	bf00      	nop
 80012dc:	bd80      	pop	{r7, pc}
 80012de:	bf00      	nop
 80012e0:	08001958 	.word	0x08001958
 80012e4:	08001978 	.word	0x08001978
 80012e8:	20000000 	.word	0x20000000
 80012ec:	08001199 	.word	0x08001199
 80012f0:	20000004 	.word	0x20000004
 80012f4:	08001279 	.word	0x08001279
 80012f8:	20000008 	.word	0x20000008
 80012fc:	0800123d 	.word	0x0800123d

08001300 <httpread_response>:
 8001300:	b580      	push	{r7, lr}
 8001302:	b086      	sub	sp, #24
 8001304:	af00      	add	r7, sp, #0
 8001306:	6078      	str	r0, [r7, #4]
 8001308:	2300      	movs	r3, #0
 800130a:	617b      	str	r3, [r7, #20]
 800130c:	2300      	movs	r3, #0
 800130e:	613b      	str	r3, [r7, #16]
 8001310:	4b12      	ldr	r3, [pc, #72]	; (800135c <httpread_response+0x5c>)
 8001312:	60fb      	str	r3, [r7, #12]
 8001314:	6878      	ldr	r0, [r7, #4]
 8001316:	f7ff ff3f 	bl	8001198 <print_response>
 800131a:	2204      	movs	r2, #4
 800131c:	4910      	ldr	r1, [pc, #64]	; (8001360 <httpread_response+0x60>)
 800131e:	68f8      	ldr	r0, [r7, #12]
 8001320:	f7fe ff08 	bl	8000134 <strncmp>
 8001324:	4603      	mov	r3, r0
 8001326:	2b00      	cmp	r3, #0
 8001328:	d103      	bne.n	8001332 <httpread_response+0x32>
 800132a:	4b0e      	ldr	r3, [pc, #56]	; (8001364 <httpread_response+0x64>)
 800132c:	2201      	movs	r2, #1
 800132e:	601a      	str	r2, [r3, #0]
 8001330:	e00a      	b.n	8001348 <httpread_response+0x48>
 8001332:	2205      	movs	r2, #5
 8001334:	490c      	ldr	r1, [pc, #48]	; (8001368 <httpread_response+0x68>)
 8001336:	68f8      	ldr	r0, [r7, #12]
 8001338:	f7fe fefc 	bl	8000134 <strncmp>
 800133c:	4603      	mov	r3, r0
 800133e:	2b00      	cmp	r3, #0
 8001340:	d102      	bne.n	8001348 <httpread_response+0x48>
 8001342:	4b08      	ldr	r3, [pc, #32]	; (8001364 <httpread_response+0x64>)
 8001344:	2200      	movs	r2, #0
 8001346:	601a      	str	r2, [r3, #0]
 8001348:	4b06      	ldr	r3, [pc, #24]	; (8001364 <httpread_response+0x64>)
 800134a:	681b      	ldr	r3, [r3, #0]
 800134c:	4619      	mov	r1, r3
 800134e:	4807      	ldr	r0, [pc, #28]	; (800136c <httpread_response+0x6c>)
 8001350:	f7ff f956 	bl	8000600 <xprintf>
 8001354:	bf00      	nop
 8001356:	3718      	adds	r7, #24
 8001358:	46bd      	mov	sp, r7
 800135a:	bd80      	pop	{r7, pc}
 800135c:	200008e0 	.word	0x200008e0
 8001360:	08001988 	.word	0x08001988
 8001364:	200008cc 	.word	0x200008cc
 8001368:	08001990 	.word	0x08001990
 800136c:	08001998 	.word	0x08001998

08001370 <httpaction_response>:
 8001370:	b580      	push	{r7, lr}
 8001372:	b086      	sub	sp, #24
 8001374:	af00      	add	r7, sp, #0
 8001376:	6078      	str	r0, [r7, #4]
 8001378:	4b15      	ldr	r3, [pc, #84]	; (80013d0 <httpaction_response+0x60>)
 800137a:	617b      	str	r3, [r7, #20]
 800137c:	6978      	ldr	r0, [r7, #20]
 800137e:	f7fe ff11 	bl	80001a4 <atoi>
 8001382:	6138      	str	r0, [r7, #16]
 8001384:	697b      	ldr	r3, [r7, #20]
 8001386:	3302      	adds	r3, #2
 8001388:	4618      	mov	r0, r3
 800138a:	f7fe ff0b 	bl	80001a4 <atoi>
 800138e:	60f8      	str	r0, [r7, #12]
 8001390:	697b      	ldr	r3, [r7, #20]
 8001392:	3306      	adds	r3, #6
 8001394:	4618      	mov	r0, r3
 8001396:	f7fe ff05 	bl	80001a4 <atoi>
 800139a:	60b8      	str	r0, [r7, #8]
 800139c:	6878      	ldr	r0, [r7, #4]
 800139e:	f7ff fefb 	bl	8001198 <print_response>
 80013a2:	68bb      	ldr	r3, [r7, #8]
 80013a4:	68fa      	ldr	r2, [r7, #12]
 80013a6:	6939      	ldr	r1, [r7, #16]
 80013a8:	480a      	ldr	r0, [pc, #40]	; (80013d4 <httpaction_response+0x64>)
 80013aa:	f7ff f929 	bl	8000600 <xprintf>
 80013ae:	480a      	ldr	r0, [pc, #40]	; (80013d8 <httpaction_response+0x68>)
 80013b0:	f7ff ff52 	bl	8001258 <sim900_command>
 80013b4:	4b09      	ldr	r3, [pc, #36]	; (80013dc <httpaction_response+0x6c>)
 80013b6:	4a0a      	ldr	r2, [pc, #40]	; (80013e0 <httpaction_response+0x70>)
 80013b8:	601a      	str	r2, [r3, #0]
 80013ba:	4b0a      	ldr	r3, [pc, #40]	; (80013e4 <httpaction_response+0x74>)
 80013bc:	4a0a      	ldr	r2, [pc, #40]	; (80013e8 <httpaction_response+0x78>)
 80013be:	601a      	str	r2, [r3, #0]
 80013c0:	4b0a      	ldr	r3, [pc, #40]	; (80013ec <httpaction_response+0x7c>)
 80013c2:	4a0b      	ldr	r2, [pc, #44]	; (80013f0 <httpaction_response+0x80>)
 80013c4:	601a      	str	r2, [r3, #0]
 80013c6:	bf00      	nop
 80013c8:	3718      	adds	r7, #24
 80013ca:	46bd      	mov	sp, r7
 80013cc:	bd80      	pop	{r7, pc}
 80013ce:	bf00      	nop
 80013d0:	200008ec 	.word	0x200008ec
 80013d4:	080019a4 	.word	0x080019a4
 80013d8:	080019b0 	.word	0x080019b0
 80013dc:	20000000 	.word	0x20000000
 80013e0:	08001301 	.word	0x08001301
 80013e4:	20000004 	.word	0x20000004
 80013e8:	080012b9 	.word	0x080012b9
 80013ec:	20000008 	.word	0x20000008
 80013f0:	0800123d 	.word	0x0800123d

080013f4 <httpactionok>:
 80013f4:	b580      	push	{r7, lr}
 80013f6:	af00      	add	r7, sp, #0
 80013f8:	4806      	ldr	r0, [pc, #24]	; (8001414 <httpactionok+0x20>)
 80013fa:	f7ff f901 	bl	8000600 <xprintf>
 80013fe:	4b06      	ldr	r3, [pc, #24]	; (8001418 <httpactionok+0x24>)
 8001400:	4a06      	ldr	r2, [pc, #24]	; (800141c <httpactionok+0x28>)
 8001402:	601a      	str	r2, [r3, #0]
 8001404:	4b06      	ldr	r3, [pc, #24]	; (8001420 <httpactionok+0x2c>)
 8001406:	4a07      	ldr	r2, [pc, #28]	; (8001424 <httpactionok+0x30>)
 8001408:	601a      	str	r2, [r3, #0]
 800140a:	4b07      	ldr	r3, [pc, #28]	; (8001428 <httpactionok+0x34>)
 800140c:	4a05      	ldr	r2, [pc, #20]	; (8001424 <httpactionok+0x30>)
 800140e:	601a      	str	r2, [r3, #0]
 8001410:	bf00      	nop
 8001412:	bd80      	pop	{r7, pc}
 8001414:	08001958 	.word	0x08001958
 8001418:	20000000 	.word	0x20000000
 800141c:	08001371 	.word	0x08001371
 8001420:	20000004 	.word	0x20000004
 8001424:	0800123d 	.word	0x0800123d
 8001428:	20000008 	.word	0x20000008

0800142c <httpparaurlok>:
 800142c:	b580      	push	{r7, lr}
 800142e:	af00      	add	r7, sp, #0
 8001430:	4808      	ldr	r0, [pc, #32]	; (8001454 <httpparaurlok+0x28>)
 8001432:	f7ff f8e5 	bl	8000600 <xprintf>
 8001436:	4808      	ldr	r0, [pc, #32]	; (8001458 <httpparaurlok+0x2c>)
 8001438:	f7ff ff0e 	bl	8001258 <sim900_command>
 800143c:	4b07      	ldr	r3, [pc, #28]	; (800145c <httpparaurlok+0x30>)
 800143e:	4a08      	ldr	r2, [pc, #32]	; (8001460 <httpparaurlok+0x34>)
 8001440:	601a      	str	r2, [r3, #0]
 8001442:	4b08      	ldr	r3, [pc, #32]	; (8001464 <httpparaurlok+0x38>)
 8001444:	4a08      	ldr	r2, [pc, #32]	; (8001468 <httpparaurlok+0x3c>)
 8001446:	601a      	str	r2, [r3, #0]
 8001448:	4b08      	ldr	r3, [pc, #32]	; (800146c <httpparaurlok+0x40>)
 800144a:	4a09      	ldr	r2, [pc, #36]	; (8001470 <httpparaurlok+0x44>)
 800144c:	601a      	str	r2, [r3, #0]
 800144e:	bf00      	nop
 8001450:	bd80      	pop	{r7, pc}
 8001452:	bf00      	nop
 8001454:	08001958 	.word	0x08001958
 8001458:	080019c0 	.word	0x080019c0
 800145c:	20000000 	.word	0x20000000
 8001460:	08001199 	.word	0x08001199
 8001464:	20000004 	.word	0x20000004
 8001468:	080013f5 	.word	0x080013f5
 800146c:	20000008 	.word	0x20000008
 8001470:	0800123d 	.word	0x0800123d

08001474 <httpparacidok>:
 8001474:	b580      	push	{r7, lr}
 8001476:	af00      	add	r7, sp, #0
 8001478:	480c      	ldr	r0, [pc, #48]	; (80014ac <httpparacidok+0x38>)
 800147a:	f7ff f8c1 	bl	8000600 <xprintf>
 800147e:	4b0c      	ldr	r3, [pc, #48]	; (80014b0 <httpparacidok+0x3c>)
 8001480:	681b      	ldr	r3, [r3, #0]
 8001482:	2b00      	cmp	r3, #0
 8001484:	d003      	beq.n	800148e <httpparacidok+0x1a>
 8001486:	480b      	ldr	r0, [pc, #44]	; (80014b4 <httpparacidok+0x40>)
 8001488:	f7ff fee6 	bl	8001258 <sim900_command>
 800148c:	e002      	b.n	8001494 <httpparacidok+0x20>
 800148e:	480a      	ldr	r0, [pc, #40]	; (80014b8 <httpparacidok+0x44>)
 8001490:	f7ff fee2 	bl	8001258 <sim900_command>
 8001494:	4b09      	ldr	r3, [pc, #36]	; (80014bc <httpparacidok+0x48>)
 8001496:	4a0a      	ldr	r2, [pc, #40]	; (80014c0 <httpparacidok+0x4c>)
 8001498:	601a      	str	r2, [r3, #0]
 800149a:	4b0a      	ldr	r3, [pc, #40]	; (80014c4 <httpparacidok+0x50>)
 800149c:	4a0a      	ldr	r2, [pc, #40]	; (80014c8 <httpparacidok+0x54>)
 800149e:	601a      	str	r2, [r3, #0]
 80014a0:	4b0a      	ldr	r3, [pc, #40]	; (80014cc <httpparacidok+0x58>)
 80014a2:	4a0b      	ldr	r2, [pc, #44]	; (80014d0 <httpparacidok+0x5c>)
 80014a4:	601a      	str	r2, [r3, #0]
 80014a6:	bf00      	nop
 80014a8:	bd80      	pop	{r7, pc}
 80014aa:	bf00      	nop
 80014ac:	08001958 	.word	0x08001958
 80014b0:	200008b4 	.word	0x200008b4
 80014b4:	080019d4 	.word	0x080019d4
 80014b8:	08001a1c 	.word	0x08001a1c
 80014bc:	20000000 	.word	0x20000000
 80014c0:	08001199 	.word	0x08001199
 80014c4:	20000004 	.word	0x20000004
 80014c8:	0800142d 	.word	0x0800142d
 80014cc:	20000008 	.word	0x20000008
 80014d0:	0800123d 	.word	0x0800123d

080014d4 <httpinitok>:
 80014d4:	b580      	push	{r7, lr}
 80014d6:	af00      	add	r7, sp, #0
 80014d8:	4808      	ldr	r0, [pc, #32]	; (80014fc <httpinitok+0x28>)
 80014da:	f7ff f891 	bl	8000600 <xprintf>
 80014de:	4808      	ldr	r0, [pc, #32]	; (8001500 <httpinitok+0x2c>)
 80014e0:	f7ff feba 	bl	8001258 <sim900_command>
 80014e4:	4b07      	ldr	r3, [pc, #28]	; (8001504 <httpinitok+0x30>)
 80014e6:	4a08      	ldr	r2, [pc, #32]	; (8001508 <httpinitok+0x34>)
 80014e8:	601a      	str	r2, [r3, #0]
 80014ea:	4b08      	ldr	r3, [pc, #32]	; (800150c <httpinitok+0x38>)
 80014ec:	4a08      	ldr	r2, [pc, #32]	; (8001510 <httpinitok+0x3c>)
 80014ee:	601a      	str	r2, [r3, #0]
 80014f0:	4b08      	ldr	r3, [pc, #32]	; (8001514 <httpinitok+0x40>)
 80014f2:	4a09      	ldr	r2, [pc, #36]	; (8001518 <httpinitok+0x44>)
 80014f4:	601a      	str	r2, [r3, #0]
 80014f6:	bf00      	nop
 80014f8:	bd80      	pop	{r7, pc}
 80014fa:	bf00      	nop
 80014fc:	08001958 	.word	0x08001958
 8001500:	08001a64 	.word	0x08001a64
 8001504:	20000000 	.word	0x20000000
 8001508:	08001199 	.word	0x08001199
 800150c:	20000004 	.word	0x20000004
 8001510:	08001475 	.word	0x08001475
 8001514:	20000008 	.word	0x20000008
 8001518:	0800123d 	.word	0x0800123d

0800151c <sim900_http_get>:
 800151c:	b580      	push	{r7, lr}
 800151e:	af00      	add	r7, sp, #0
 8001520:	4808      	ldr	r0, [pc, #32]	; (8001544 <sim900_http_get+0x28>)
 8001522:	f7ff fe99 	bl	8001258 <sim900_command>
 8001526:	4b08      	ldr	r3, [pc, #32]	; (8001548 <sim900_http_get+0x2c>)
 8001528:	4a08      	ldr	r2, [pc, #32]	; (800154c <sim900_http_get+0x30>)
 800152a:	601a      	str	r2, [r3, #0]
 800152c:	4b08      	ldr	r3, [pc, #32]	; (8001550 <sim900_http_get+0x34>)
 800152e:	4a09      	ldr	r2, [pc, #36]	; (8001554 <sim900_http_get+0x38>)
 8001530:	601a      	str	r2, [r3, #0]
 8001532:	4b09      	ldr	r3, [pc, #36]	; (8001558 <sim900_http_get+0x3c>)
 8001534:	4a09      	ldr	r2, [pc, #36]	; (800155c <sim900_http_get+0x40>)
 8001536:	601a      	str	r2, [r3, #0]
 8001538:	4b09      	ldr	r3, [pc, #36]	; (8001560 <sim900_http_get+0x44>)
 800153a:	2200      	movs	r2, #0
 800153c:	601a      	str	r2, [r3, #0]
 800153e:	bf00      	nop
 8001540:	bd80      	pop	{r7, pc}
 8001542:	bf00      	nop
 8001544:	08001a7c 	.word	0x08001a7c
 8001548:	20000000 	.word	0x20000000
 800154c:	08001199 	.word	0x08001199
 8001550:	20000004 	.word	0x20000004
 8001554:	080014d5 	.word	0x080014d5
 8001558:	20000008 	.word	0x20000008
 800155c:	0800123d 	.word	0x0800123d
 8001560:	200008d8 	.word	0x200008d8

08001564 <sapbrok>:
 8001564:	b580      	push	{r7, lr}
 8001566:	af00      	add	r7, sp, #0
 8001568:	4b08      	ldr	r3, [pc, #32]	; (800158c <sapbrok+0x28>)
 800156a:	2201      	movs	r2, #1
 800156c:	601a      	str	r2, [r3, #0]
 800156e:	4808      	ldr	r0, [pc, #32]	; (8001590 <sapbrok+0x2c>)
 8001570:	f7ff f846 	bl	8000600 <xprintf>
 8001574:	4b07      	ldr	r3, [pc, #28]	; (8001594 <sapbrok+0x30>)
 8001576:	4a08      	ldr	r2, [pc, #32]	; (8001598 <sapbrok+0x34>)
 8001578:	601a      	str	r2, [r3, #0]
 800157a:	4b08      	ldr	r3, [pc, #32]	; (800159c <sapbrok+0x38>)
 800157c:	4a08      	ldr	r2, [pc, #32]	; (80015a0 <sapbrok+0x3c>)
 800157e:	601a      	str	r2, [r3, #0]
 8001580:	4b08      	ldr	r3, [pc, #32]	; (80015a4 <sapbrok+0x40>)
 8001582:	4a09      	ldr	r2, [pc, #36]	; (80015a8 <sapbrok+0x44>)
 8001584:	601a      	str	r2, [r3, #0]
 8001586:	bf00      	nop
 8001588:	bd80      	pop	{r7, pc}
 800158a:	bf00      	nop
 800158c:	200008d8 	.word	0x200008d8
 8001590:	08001a8c 	.word	0x08001a8c
 8001594:	20000000 	.word	0x20000000
 8001598:	08001199 	.word	0x08001199
 800159c:	20000004 	.word	0x20000004
 80015a0:	08001229 	.word	0x08001229
 80015a4:	20000008 	.word	0x20000008
 80015a8:	0800123d 	.word	0x0800123d

080015ac <cgattok>:
 80015ac:	b580      	push	{r7, lr}
 80015ae:	af00      	add	r7, sp, #0
 80015b0:	4808      	ldr	r0, [pc, #32]	; (80015d4 <cgattok+0x28>)
 80015b2:	f7ff f825 	bl	8000600 <xprintf>
 80015b6:	4808      	ldr	r0, [pc, #32]	; (80015d8 <cgattok+0x2c>)
 80015b8:	f7ff fe4e 	bl	8001258 <sim900_command>
 80015bc:	4b07      	ldr	r3, [pc, #28]	; (80015dc <cgattok+0x30>)
 80015be:	4a08      	ldr	r2, [pc, #32]	; (80015e0 <cgattok+0x34>)
 80015c0:	601a      	str	r2, [r3, #0]
 80015c2:	4b08      	ldr	r3, [pc, #32]	; (80015e4 <cgattok+0x38>)
 80015c4:	4a08      	ldr	r2, [pc, #32]	; (80015e8 <cgattok+0x3c>)
 80015c6:	601a      	str	r2, [r3, #0]
 80015c8:	4b08      	ldr	r3, [pc, #32]	; (80015ec <cgattok+0x40>)
 80015ca:	4a09      	ldr	r2, [pc, #36]	; (80015f0 <cgattok+0x44>)
 80015cc:	601a      	str	r2, [r3, #0]
 80015ce:	bf00      	nop
 80015d0:	bd80      	pop	{r7, pc}
 80015d2:	bf00      	nop
 80015d4:	08001958 	.word	0x08001958
 80015d8:	08001ab8 	.word	0x08001ab8
 80015dc:	20000000 	.word	0x20000000
 80015e0:	08001199 	.word	0x08001199
 80015e4:	20000004 	.word	0x20000004
 80015e8:	08001565 	.word	0x08001565
 80015ec:	20000008 	.word	0x20000008
 80015f0:	0800123d 	.word	0x0800123d

080015f4 <cgattresp>:
 80015f4:	b580      	push	{r7, lr}
 80015f6:	b084      	sub	sp, #16
 80015f8:	af00      	add	r7, sp, #0
 80015fa:	6078      	str	r0, [r7, #4]
 80015fc:	480f      	ldr	r0, [pc, #60]	; (800163c <cgattresp+0x48>)
 80015fe:	f7fe fdd1 	bl	80001a4 <atoi>
 8001602:	60f8      	str	r0, [r7, #12]
 8001604:	6878      	ldr	r0, [r7, #4]
 8001606:	f7ff fdc7 	bl	8001198 <print_response>
 800160a:	68fb      	ldr	r3, [r7, #12]
 800160c:	2b01      	cmp	r3, #1
 800160e:	d103      	bne.n	8001618 <cgattresp+0x24>
 8001610:	4b0b      	ldr	r3, [pc, #44]	; (8001640 <cgattresp+0x4c>)
 8001612:	4a0c      	ldr	r2, [pc, #48]	; (8001644 <cgattresp+0x50>)
 8001614:	601a      	str	r2, [r3, #0]
 8001616:	e00c      	b.n	8001632 <cgattresp+0x3e>
 8001618:	4b09      	ldr	r3, [pc, #36]	; (8001640 <cgattresp+0x4c>)
 800161a:	4a0b      	ldr	r2, [pc, #44]	; (8001648 <cgattresp+0x54>)
 800161c:	601a      	str	r2, [r3, #0]
 800161e:	4b0b      	ldr	r3, [pc, #44]	; (800164c <cgattresp+0x58>)
 8001620:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 8001624:	601a      	str	r2, [r3, #0]
 8001626:	4b0a      	ldr	r3, [pc, #40]	; (8001650 <cgattresp+0x5c>)
 8001628:	681b      	ldr	r3, [r3, #0]
 800162a:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
 800162e:	4a09      	ldr	r2, [pc, #36]	; (8001654 <cgattresp+0x60>)
 8001630:	6013      	str	r3, [r2, #0]
 8001632:	bf00      	nop
 8001634:	3710      	adds	r7, #16
 8001636:	46bd      	mov	sp, r7
 8001638:	bd80      	pop	{r7, pc}
 800163a:	bf00      	nop
 800163c:	200008e7 	.word	0x200008e7
 8001640:	20000004 	.word	0x20000004
 8001644:	080015ad 	.word	0x080015ad
 8001648:	08001659 	.word	0x08001659
 800164c:	200008d0 	.word	0x200008d0
 8001650:	200008b0 	.word	0x200008b0
 8001654:	200008d4 	.word	0x200008d4

08001658 <cpinok>:
 8001658:	b580      	push	{r7, lr}
 800165a:	af00      	add	r7, sp, #0
 800165c:	4808      	ldr	r0, [pc, #32]	; (8001680 <cpinok+0x28>)
 800165e:	f7fe ffcf 	bl	8000600 <xprintf>
 8001662:	4808      	ldr	r0, [pc, #32]	; (8001684 <cpinok+0x2c>)
 8001664:	f7ff fdf8 	bl	8001258 <sim900_command>
 8001668:	4b07      	ldr	r3, [pc, #28]	; (8001688 <cpinok+0x30>)
 800166a:	4a08      	ldr	r2, [pc, #32]	; (800168c <cpinok+0x34>)
 800166c:	601a      	str	r2, [r3, #0]
 800166e:	4b08      	ldr	r3, [pc, #32]	; (8001690 <cpinok+0x38>)
 8001670:	4a08      	ldr	r2, [pc, #32]	; (8001694 <cpinok+0x3c>)
 8001672:	601a      	str	r2, [r3, #0]
 8001674:	4b08      	ldr	r3, [pc, #32]	; (8001698 <cpinok+0x40>)
 8001676:	4a09      	ldr	r2, [pc, #36]	; (800169c <cpinok+0x44>)
 8001678:	601a      	str	r2, [r3, #0]
 800167a:	bf00      	nop
 800167c:	bd80      	pop	{r7, pc}
 800167e:	bf00      	nop
 8001680:	08001958 	.word	0x08001958
 8001684:	08001ac8 	.word	0x08001ac8
 8001688:	20000000 	.word	0x20000000
 800168c:	080015f5 	.word	0x080015f5
 8001690:	20000004 	.word	0x20000004
 8001694:	08001229 	.word	0x08001229
 8001698:	20000008 	.word	0x20000008
 800169c:	0800123d 	.word	0x0800123d

080016a0 <check_cpin>:
 80016a0:	b580      	push	{r7, lr}
 80016a2:	b082      	sub	sp, #8
 80016a4:	af00      	add	r7, sp, #0
 80016a6:	6078      	str	r0, [r7, #4]
 80016a8:	6878      	ldr	r0, [r7, #4]
 80016aa:	f7ff fd75 	bl	8001198 <print_response>
 80016ae:	491c      	ldr	r1, [pc, #112]	; (8001720 <check_cpin+0x80>)
 80016b0:	481c      	ldr	r0, [pc, #112]	; (8001724 <check_cpin+0x84>)
 80016b2:	f7fe fd1b 	bl	80000ec <strstr>
 80016b6:	4603      	mov	r3, r0
 80016b8:	2b00      	cmp	r3, #0
 80016ba:	d02d      	beq.n	8001718 <check_cpin+0x78>
 80016bc:	491a      	ldr	r1, [pc, #104]	; (8001728 <check_cpin+0x88>)
 80016be:	481b      	ldr	r0, [pc, #108]	; (800172c <check_cpin+0x8c>)
 80016c0:	f7fe fd14 	bl	80000ec <strstr>
 80016c4:	4603      	mov	r3, r0
 80016c6:	2b00      	cmp	r3, #0
 80016c8:	d00c      	beq.n	80016e4 <check_cpin+0x44>
 80016ca:	4819      	ldr	r0, [pc, #100]	; (8001730 <check_cpin+0x90>)
 80016cc:	f7ff fdc4 	bl	8001258 <sim900_command>
 80016d0:	4b18      	ldr	r3, [pc, #96]	; (8001734 <check_cpin+0x94>)
 80016d2:	4a19      	ldr	r2, [pc, #100]	; (8001738 <check_cpin+0x98>)
 80016d4:	601a      	str	r2, [r3, #0]
 80016d6:	4b19      	ldr	r3, [pc, #100]	; (800173c <check_cpin+0x9c>)
 80016d8:	4a19      	ldr	r2, [pc, #100]	; (8001740 <check_cpin+0xa0>)
 80016da:	601a      	str	r2, [r3, #0]
 80016dc:	4b19      	ldr	r3, [pc, #100]	; (8001744 <check_cpin+0xa4>)
 80016de:	4a1a      	ldr	r2, [pc, #104]	; (8001748 <check_cpin+0xa8>)
 80016e0:	601a      	str	r2, [r3, #0]
 80016e2:	e019      	b.n	8001718 <check_cpin+0x78>
 80016e4:	4919      	ldr	r1, [pc, #100]	; (800174c <check_cpin+0xac>)
 80016e6:	4811      	ldr	r0, [pc, #68]	; (800172c <check_cpin+0x8c>)
 80016e8:	f7fe fd00 	bl	80000ec <strstr>
 80016ec:	4603      	mov	r3, r0
 80016ee:	2b00      	cmp	r3, #0
 80016f0:	d00c      	beq.n	800170c <check_cpin+0x6c>
 80016f2:	4817      	ldr	r0, [pc, #92]	; (8001750 <check_cpin+0xb0>)
 80016f4:	f7ff fdb0 	bl	8001258 <sim900_command>
 80016f8:	4b0e      	ldr	r3, [pc, #56]	; (8001734 <check_cpin+0x94>)
 80016fa:	4a16      	ldr	r2, [pc, #88]	; (8001754 <check_cpin+0xb4>)
 80016fc:	601a      	str	r2, [r3, #0]
 80016fe:	4b0f      	ldr	r3, [pc, #60]	; (800173c <check_cpin+0x9c>)
 8001700:	4a15      	ldr	r2, [pc, #84]	; (8001758 <check_cpin+0xb8>)
 8001702:	601a      	str	r2, [r3, #0]
 8001704:	4b0f      	ldr	r3, [pc, #60]	; (8001744 <check_cpin+0xa4>)
 8001706:	4a10      	ldr	r2, [pc, #64]	; (8001748 <check_cpin+0xa8>)
 8001708:	601a      	str	r2, [r3, #0]
 800170a:	e005      	b.n	8001718 <check_cpin+0x78>
 800170c:	4813      	ldr	r0, [pc, #76]	; (800175c <check_cpin+0xbc>)
 800170e:	f7fe ff77 	bl	8000600 <xprintf>
 8001712:	4b13      	ldr	r3, [pc, #76]	; (8001760 <check_cpin+0xc0>)
 8001714:	2201      	movs	r2, #1
 8001716:	601a      	str	r2, [r3, #0]
 8001718:	bf00      	nop
 800171a:	3708      	adds	r7, #8
 800171c:	46bd      	mov	sp, r7
 800171e:	bd80      	pop	{r7, pc}
 8001720:	08001ad4 	.word	0x08001ad4
 8001724:	200008e0 	.word	0x200008e0
 8001728:	08001adc 	.word	0x08001adc
 800172c:	200008e6 	.word	0x200008e6
 8001730:	08001ac8 	.word	0x08001ac8
 8001734:	20000000 	.word	0x20000000
 8001738:	080015f5 	.word	0x080015f5
 800173c:	20000004 	.word	0x20000004
 8001740:	08001229 	.word	0x08001229
 8001744:	20000008 	.word	0x20000008
 8001748:	0800123d 	.word	0x0800123d
 800174c:	08001ae4 	.word	0x08001ae4
 8001750:	08001aec 	.word	0x08001aec
 8001754:	08001199 	.word	0x08001199
 8001758:	08001659 	.word	0x08001659
 800175c:	08001afc 	.word	0x08001afc
 8001760:	200008dc 	.word	0x200008dc

08001764 <sim900_init>:
 8001764:	b480      	push	{r7}
 8001766:	af00      	add	r7, sp, #0
 8001768:	4b07      	ldr	r3, [pc, #28]	; (8001788 <sim900_init+0x24>)
 800176a:	2200      	movs	r2, #0
 800176c:	601a      	str	r2, [r3, #0]
 800176e:	4b07      	ldr	r3, [pc, #28]	; (800178c <sim900_init+0x28>)
 8001770:	4a07      	ldr	r2, [pc, #28]	; (8001790 <sim900_init+0x2c>)
 8001772:	601a      	str	r2, [r3, #0]
 8001774:	4b07      	ldr	r3, [pc, #28]	; (8001794 <sim900_init+0x30>)
 8001776:	4a08      	ldr	r2, [pc, #32]	; (8001798 <sim900_init+0x34>)
 8001778:	601a      	str	r2, [r3, #0]
 800177a:	4b08      	ldr	r3, [pc, #32]	; (800179c <sim900_init+0x38>)
 800177c:	4a08      	ldr	r2, [pc, #32]	; (80017a0 <sim900_init+0x3c>)
 800177e:	601a      	str	r2, [r3, #0]
 8001780:	bf00      	nop
 8001782:	46bd      	mov	sp, r7
 8001784:	bc80      	pop	{r7}
 8001786:	4770      	bx	lr
 8001788:	200008d8 	.word	0x200008d8
 800178c:	20000000 	.word	0x20000000
 8001790:	080016a1 	.word	0x080016a1
 8001794:	20000004 	.word	0x20000004
 8001798:	08001229 	.word	0x08001229
 800179c:	20000008 	.word	0x20000008
 80017a0:	0800123d 	.word	0x0800123d

080017a4 <sleep>:
 80017a4:	b480      	push	{r7}
 80017a6:	b085      	sub	sp, #20
 80017a8:	af00      	add	r7, sp, #0
 80017aa:	6078      	str	r0, [r7, #4]
 80017ac:	4b07      	ldr	r3, [pc, #28]	; (80017cc <sleep+0x28>)
 80017ae:	681b      	ldr	r3, [r3, #0]
 80017b0:	60fb      	str	r3, [r7, #12]
 80017b2:	bf00      	nop
 80017b4:	68fa      	ldr	r2, [r7, #12]
 80017b6:	687b      	ldr	r3, [r7, #4]
 80017b8:	441a      	add	r2, r3
 80017ba:	4b04      	ldr	r3, [pc, #16]	; (80017cc <sleep+0x28>)
 80017bc:	681b      	ldr	r3, [r3, #0]
 80017be:	429a      	cmp	r2, r3
 80017c0:	d8f8      	bhi.n	80017b4 <sleep+0x10>
 80017c2:	bf00      	nop
 80017c4:	3714      	adds	r7, #20
 80017c6:	46bd      	mov	sp, r7
 80017c8:	bc80      	pop	{r7}
 80017ca:	4770      	bx	lr
 80017cc:	200008b0 	.word	0x200008b0

080017d0 <main>:
 80017d0:	b580      	push	{r7, lr}
 80017d2:	b0a0      	sub	sp, #128	; 0x80
 80017d4:	af00      	add	r7, sp, #0
 80017d6:	f7ff fb4b 	bl	8000e70 <system_init>
 80017da:	f7ff f9c9 	bl	8000b70 <uart_init>
 80017de:	f000 f831 	bl	8001844 <led_init>
 80017e2:	f7ff f903 	bl	80009ec <dbg_init>
 80017e6:	f7ff fbff 	bl	8000fe8 <system_PB5_on>
 80017ea:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80017ee:	f7ff ffd9 	bl	80017a4 <sleep>
 80017f2:	f7ff fc07 	bl	8001004 <system_PB5_off>
 80017f6:	f000 f841 	bl	800187c <led_off>
 80017fa:	f7ff ffb3 	bl	8001764 <sim900_init>
 80017fe:	4b0e      	ldr	r3, [pc, #56]	; (8001838 <main+0x68>)
 8001800:	681b      	ldr	r3, [r3, #0]
 8001802:	2b00      	cmp	r3, #0
 8001804:	d00f      	beq.n	8001826 <main+0x56>
 8001806:	4b0c      	ldr	r3, [pc, #48]	; (8001838 <main+0x68>)
 8001808:	2200      	movs	r2, #0
 800180a:	601a      	str	r2, [r3, #0]
 800180c:	4b0b      	ldr	r3, [pc, #44]	; (800183c <main+0x6c>)
 800180e:	681b      	ldr	r3, [r3, #0]
 8001810:	2b00      	cmp	r3, #0
 8001812:	d002      	beq.n	800181a <main+0x4a>
 8001814:	f000 f824 	bl	8001860 <led_on>
 8001818:	e001      	b.n	800181e <main+0x4e>
 800181a:	f000 f82f 	bl	800187c <led_off>
 800181e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001822:	f7ff ffbf 	bl	80017a4 <sleep>
 8001826:	4b06      	ldr	r3, [pc, #24]	; (8001840 <main+0x70>)
 8001828:	681b      	ldr	r3, [r3, #0]
 800182a:	2b00      	cmp	r3, #0
 800182c:	d001      	beq.n	8001832 <main+0x62>
 800182e:	f7ff fe75 	bl	800151c <sim900_http_get>
 8001832:	f7ff fc37 	bl	80010a4 <sim900_update>
 8001836:	e7e2      	b.n	80017fe <main+0x2e>
 8001838:	200008dc 	.word	0x200008dc
 800183c:	200008cc 	.word	0x200008cc
 8001840:	200008d8 	.word	0x200008d8

08001844 <led_init>:
 8001844:	b480      	push	{r7}
 8001846:	af00      	add	r7, sp, #0
 8001848:	4a04      	ldr	r2, [pc, #16]	; (800185c <led_init+0x18>)
 800184a:	4b04      	ldr	r3, [pc, #16]	; (800185c <led_init+0x18>)
 800184c:	685b      	ldr	r3, [r3, #4]
 800184e:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8001852:	6053      	str	r3, [r2, #4]
 8001854:	bf00      	nop
 8001856:	46bd      	mov	sp, r7
 8001858:	bc80      	pop	{r7}
 800185a:	4770      	bx	lr
 800185c:	40011000 	.word	0x40011000

08001860 <led_on>:
 8001860:	b480      	push	{r7}
 8001862:	af00      	add	r7, sp, #0
 8001864:	4a04      	ldr	r2, [pc, #16]	; (8001878 <led_on+0x18>)
 8001866:	4b04      	ldr	r3, [pc, #16]	; (8001878 <led_on+0x18>)
 8001868:	68db      	ldr	r3, [r3, #12]
 800186a:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 800186e:	60d3      	str	r3, [r2, #12]
 8001870:	bf00      	nop
 8001872:	46bd      	mov	sp, r7
 8001874:	bc80      	pop	{r7}
 8001876:	4770      	bx	lr
 8001878:	40011000 	.word	0x40011000

0800187c <led_off>:
 800187c:	b480      	push	{r7}
 800187e:	af00      	add	r7, sp, #0
 8001880:	4a04      	ldr	r2, [pc, #16]	; (8001894 <led_off+0x18>)
 8001882:	4b04      	ldr	r3, [pc, #16]	; (8001894 <led_off+0x18>)
 8001884:	68db      	ldr	r3, [r3, #12]
 8001886:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800188a:	60d3      	str	r3, [r2, #12]
 800188c:	bf00      	nop
 800188e:	46bd      	mov	sp, r7
 8001890:	bc80      	pop	{r7}
 8001892:	4770      	bx	lr
 8001894:	40011000 	.word	0x40011000

08001898 <led_tog>:
 8001898:	b480      	push	{r7}
 800189a:	af00      	add	r7, sp, #0
 800189c:	4a04      	ldr	r2, [pc, #16]	; (80018b0 <led_tog+0x18>)
 800189e:	4b04      	ldr	r3, [pc, #16]	; (80018b0 <led_tog+0x18>)
 80018a0:	68db      	ldr	r3, [r3, #12]
 80018a2:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 80018a6:	60d3      	str	r3, [r2, #12]
 80018a8:	bf00      	nop
 80018aa:	46bd      	mov	sp, r7
 80018ac:	bc80      	pop	{r7}
 80018ae:	4770      	bx	lr
 80018b0:	40011000 	.word	0x40011000

080018b4 <handler_reset>:
 80018b4:	b580      	push	{r7, lr}
 80018b6:	b082      	sub	sp, #8
 80018b8:	af00      	add	r7, sp, #0
 80018ba:	4b11      	ldr	r3, [pc, #68]	; (8001900 <handler_reset+0x4c>)
 80018bc:	607b      	str	r3, [r7, #4]
 80018be:	4b11      	ldr	r3, [pc, #68]	; (8001904 <handler_reset+0x50>)
 80018c0:	603b      	str	r3, [r7, #0]
 80018c2:	e007      	b.n	80018d4 <handler_reset+0x20>
 80018c4:	683b      	ldr	r3, [r7, #0]
 80018c6:	1d1a      	adds	r2, r3, #4
 80018c8:	603a      	str	r2, [r7, #0]
 80018ca:	687a      	ldr	r2, [r7, #4]
 80018cc:	1d11      	adds	r1, r2, #4
 80018ce:	6079      	str	r1, [r7, #4]
 80018d0:	6812      	ldr	r2, [r2, #0]
 80018d2:	601a      	str	r2, [r3, #0]
 80018d4:	683b      	ldr	r3, [r7, #0]
 80018d6:	4a0c      	ldr	r2, [pc, #48]	; (8001908 <handler_reset+0x54>)
 80018d8:	4293      	cmp	r3, r2
 80018da:	d3f3      	bcc.n	80018c4 <handler_reset+0x10>
 80018dc:	4b0b      	ldr	r3, [pc, #44]	; (800190c <handler_reset+0x58>)
 80018de:	603b      	str	r3, [r7, #0]
 80018e0:	e004      	b.n	80018ec <handler_reset+0x38>
 80018e2:	683b      	ldr	r3, [r7, #0]
 80018e4:	1d1a      	adds	r2, r3, #4
 80018e6:	603a      	str	r2, [r7, #0]
 80018e8:	2200      	movs	r2, #0
 80018ea:	601a      	str	r2, [r3, #0]
 80018ec:	683b      	ldr	r3, [r7, #0]
 80018ee:	4a08      	ldr	r2, [pc, #32]	; (8001910 <handler_reset+0x5c>)
 80018f0:	4293      	cmp	r3, r2
 80018f2:	d3f6      	bcc.n	80018e2 <handler_reset+0x2e>
 80018f4:	f7ff ff6c 	bl	80017d0 <main>
 80018f8:	bf00      	nop
 80018fa:	3708      	adds	r7, #8
 80018fc:	46bd      	mov	sp, r7
 80018fe:	bd80      	pop	{r7, pc}
 8001900:	08001b1c 	.word	0x08001b1c
 8001904:	20000000 	.word	0x20000000
 8001908:	2000000c 	.word	0x2000000c
 800190c:	2000000c 	.word	0x2000000c
 8001910:	200010e8 	.word	0x200010e8

08001914 <default_handler>:
 8001914:	b480      	push	{r7}
 8001916:	af00      	add	r7, sp, #0
 8001918:	e7fe      	b.n	8001918 <default_handler+0x4>
 800191a:	bf00      	nop
 800191c:	6c383025 	.word	0x6c383025
 8001920:	00002058 	.word	0x00002058
 8001924:	32302520 	.word	0x32302520
 8001928:	00000058 	.word	0x00000058
 800192c:	34302520 	.word	0x34302520
 8001930:	00000058 	.word	0x00000058
 8001934:	38302520 	.word	0x38302520
 8001938:	0000584c 	.word	0x0000584c
 800193c:	00004b4f 	.word	0x00004b4f
 8001940:	4f525245 	.word	0x4f525245
 8001944:	00000052 	.word	0x00000052
 8001948:	00006325 	.word	0x00006325
 800194c:	0000000a 	.word	0x0000000a
 8001950:	5d78255b 	.word	0x5d78255b
 8001954:	00000000 	.word	0x00000000
 8001958:	000a4b4f 	.word	0x000a4b4f
 800195c:	4f525245 	.word	0x4f525245
 8001960:	00000a52 	.word	0x00000a52
 8001964:	202e4b4f 	.word	0x202e4b4f
 8001968:	73277449 	.word	0x73277449
 800196c:	6c6c6120 	.word	0x6c6c6120
 8001970:	6c6f6620 	.word	0x6c6f6620
 8001974:	000a736b 	.word	0x000a736b
 8001978:	482b5441 	.word	0x482b5441
 800197c:	54505454 	.word	0x54505454
 8001980:	0d4d5245 	.word	0x0d4d5245
 8001984:	00000000 	.word	0x00000000
 8001988:	65757274 	.word	0x65757274
 800198c:	00000000 	.word	0x00000000
 8001990:	736c6166 	.word	0x736c6166
 8001994:	00000065 	.word	0x00000065
 8001998:	20676572 	.word	0x20676572
 800199c:	7525203d 	.word	0x7525203d
 80019a0:	0000000a 	.word	0x0000000a
 80019a4:	252c7525 	.word	0x252c7525
 80019a8:	75252c75 	.word	0x75252c75
 80019ac:	0000000a 	.word	0x0000000a
 80019b0:	482b5441 	.word	0x482b5441
 80019b4:	52505454 	.word	0x52505454
 80019b8:	0d444145 	.word	0x0d444145
 80019bc:	00000000 	.word	0x00000000
 80019c0:	482b5441 	.word	0x482b5441
 80019c4:	41505454 	.word	0x41505454
 80019c8:	4f495443 	.word	0x4f495443
 80019cc:	0d303d4e 	.word	0x0d303d4e
 80019d0:	00000000 	.word	0x00000000
 80019d4:	482b5441 	.word	0x482b5441
 80019d8:	50505454 	.word	0x50505454
 80019dc:	3d415241 	.word	0x3d415241
 80019e0:	4c525522 	.word	0x4c525522
 80019e4:	68222c22 	.word	0x68222c22
 80019e8:	3a707474 	.word	0x3a707474
 80019ec:	72742f2f 	.word	0x72742f2f
 80019f0:	63656a61 	.word	0x63656a61
 80019f4:	79726f74 	.word	0x79726f74
 80019f8:	7169612e 	.word	0x7169612e
 80019fc:	2f75722e 	.word	0x2f75722e
 8001a00:	2d696763 	.word	0x2d696763
 8001a04:	2f6e6962 	.word	0x2f6e6962
 8001a08:	72647075 	.word	0x72647075
 8001a0c:	623f6765 	.word	0x623f6765
 8001a10:	3d317469 	.word	0x3d317469
 8001a14:	65757274 	.word	0x65757274
 8001a18:	00000d22 	.word	0x00000d22
 8001a1c:	482b5441 	.word	0x482b5441
 8001a20:	50505454 	.word	0x50505454
 8001a24:	3d415241 	.word	0x3d415241
 8001a28:	4c525522 	.word	0x4c525522
 8001a2c:	68222c22 	.word	0x68222c22
 8001a30:	3a707474 	.word	0x3a707474
 8001a34:	72742f2f 	.word	0x72742f2f
 8001a38:	63656a61 	.word	0x63656a61
 8001a3c:	79726f74 	.word	0x79726f74
 8001a40:	7169612e 	.word	0x7169612e
 8001a44:	2f75722e 	.word	0x2f75722e
 8001a48:	2d696763 	.word	0x2d696763
 8001a4c:	2f6e6962 	.word	0x2f6e6962
 8001a50:	72647075 	.word	0x72647075
 8001a54:	623f6765 	.word	0x623f6765
 8001a58:	3d317469 	.word	0x3d317469
 8001a5c:	736c6166 	.word	0x736c6166
 8001a60:	000d2265 	.word	0x000d2265
 8001a64:	482b5441 	.word	0x482b5441
 8001a68:	50505454 	.word	0x50505454
 8001a6c:	3d415241 	.word	0x3d415241
 8001a70:	44494322 	.word	0x44494322
 8001a74:	0d312c22 	.word	0x0d312c22
 8001a78:	00000000 	.word	0x00000000
 8001a7c:	482b5441 	.word	0x482b5441
 8001a80:	49505454 	.word	0x49505454
 8001a84:	0d54494e 	.word	0x0d54494e
 8001a88:	00000000 	.word	0x00000000
 8001a8c:	6d3a4b4f 	.word	0x6d3a4b4f
 8001a90:	6d65646f 	.word	0x6d65646f
 8001a94:	20736920 	.word	0x20736920
 8001a98:	64616572 	.word	0x64616572
 8001a9c:	6f662079 	.word	0x6f662079
 8001aa0:	61642072 	.word	0x61642072
 8001aa4:	74206174 	.word	0x74206174
 8001aa8:	736e6172 	.word	0x736e6172
 8001aac:	7474696d 	.word	0x7474696d
 8001ab0:	0a676e69 	.word	0x0a676e69
 8001ab4:	00000000 	.word	0x00000000
 8001ab8:	532b5441 	.word	0x532b5441
 8001abc:	52425041 	.word	0x52425041
 8001ac0:	312c313d 	.word	0x312c313d
 8001ac4:	0000000d 	.word	0x0000000d
 8001ac8:	432b5441 	.word	0x432b5441
 8001acc:	54544147 	.word	0x54544147
 8001ad0:	00000d3f 	.word	0x00000d3f
 8001ad4:	4950432b 	.word	0x4950432b
 8001ad8:	00003a4e 	.word	0x00003a4e
 8001adc:	44414552 	.word	0x44414552
 8001ae0:	00000059 	.word	0x00000059
 8001ae4:	204d4953 	.word	0x204d4953
 8001ae8:	004e4950 	.word	0x004e4950
 8001aec:	432b5441 	.word	0x432b5441
 8001af0:	3d4e4950 	.word	0x3d4e4950
 8001af4:	36393730 	.word	0x36393730
 8001af8:	0000000d 	.word	0x0000000d
 8001afc:	4f525245 	.word	0x4f525245
 8001b00:	69733a52 	.word	0x69733a52
 8001b04:	6163206d 	.word	0x6163206d
 8001b08:	69206472 	.word	0x69206472
 8001b0c:	746e2773 	.word	0x746e2773
 8001b10:	736e6920 	.word	0x736e6920
 8001b14:	65747265 	.word	0x65747265
 8001b18:	00000a64 	.word	0x00000a64
