
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 25 03 00 08 85 03 00 08 85 03 00 08     . . %...........
 8000010:	85 03 00 08 85 03 00 08 85 03 00 08 00 00 00 00     ................
	...
 800002c:	85 03 00 08 85 03 00 08 00 00 00 00 85 03 00 08     ................
 800003c:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 800004c:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 800005c:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 800006c:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 800007c:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 800008c:	85 03 00 08 09 13 00 08 85 03 00 08 85 03 00 08     ................
 800009c:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 80000ac:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 80000bc:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................
 80000cc:	85 03 00 08 85 03 00 08 85 03 00 08 65 06 00 08     ............e...
 80000dc:	85 03 00 08 85 03 00 08 85 03 00 08 85 03 00 08     ................

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

08000198 <system_init>:
 8000198:	b480      	push	{r7}
 800019a:	af00      	add	r7, sp, #0
 800019c:	4a3c      	ldr	r2, [pc, #240]	; (8000290 <system_init+0xf8>)
 800019e:	4b3c      	ldr	r3, [pc, #240]	; (8000290 <system_init+0xf8>)
 80001a0:	681b      	ldr	r3, [r3, #0]
 80001a2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80001a6:	6013      	str	r3, [r2, #0]
 80001a8:	bf00      	nop
 80001aa:	4b39      	ldr	r3, [pc, #228]	; (8000290 <system_init+0xf8>)
 80001ac:	681b      	ldr	r3, [r3, #0]
 80001ae:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80001b2:	2b00      	cmp	r3, #0
 80001b4:	d0f9      	beq.n	80001aa <system_init+0x12>
 80001b6:	4a36      	ldr	r2, [pc, #216]	; (8000290 <system_init+0xf8>)
 80001b8:	4b35      	ldr	r3, [pc, #212]	; (8000290 <system_init+0xf8>)
 80001ba:	685b      	ldr	r3, [r3, #4]
 80001bc:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 80001c0:	6053      	str	r3, [r2, #4]
 80001c2:	4a33      	ldr	r2, [pc, #204]	; (8000290 <system_init+0xf8>)
 80001c4:	4b32      	ldr	r3, [pc, #200]	; (8000290 <system_init+0xf8>)
 80001c6:	685b      	ldr	r3, [r3, #4]
 80001c8:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80001cc:	6053      	str	r3, [r2, #4]
 80001ce:	4a30      	ldr	r2, [pc, #192]	; (8000290 <system_init+0xf8>)
 80001d0:	4b2f      	ldr	r3, [pc, #188]	; (8000290 <system_init+0xf8>)
 80001d2:	685b      	ldr	r3, [r3, #4]
 80001d4:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 80001d8:	6053      	str	r3, [r2, #4]
 80001da:	4a2d      	ldr	r2, [pc, #180]	; (8000290 <system_init+0xf8>)
 80001dc:	4b2c      	ldr	r3, [pc, #176]	; (8000290 <system_init+0xf8>)
 80001de:	685b      	ldr	r3, [r3, #4]
 80001e0:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 80001e4:	6053      	str	r3, [r2, #4]
 80001e6:	4a2a      	ldr	r2, [pc, #168]	; (8000290 <system_init+0xf8>)
 80001e8:	4b29      	ldr	r3, [pc, #164]	; (8000290 <system_init+0xf8>)
 80001ea:	681b      	ldr	r3, [r3, #0]
 80001ec:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80001f0:	6013      	str	r3, [r2, #0]
 80001f2:	bf00      	nop
 80001f4:	4b26      	ldr	r3, [pc, #152]	; (8000290 <system_init+0xf8>)
 80001f6:	681b      	ldr	r3, [r3, #0]
 80001f8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80001fc:	2b00      	cmp	r3, #0
 80001fe:	d0f9      	beq.n	80001f4 <system_init+0x5c>
 8000200:	4a24      	ldr	r2, [pc, #144]	; (8000294 <system_init+0xfc>)
 8000202:	4b24      	ldr	r3, [pc, #144]	; (8000294 <system_init+0xfc>)
 8000204:	681b      	ldr	r3, [r3, #0]
 8000206:	f043 0310 	orr.w	r3, r3, #16
 800020a:	6013      	str	r3, [r2, #0]
 800020c:	4a21      	ldr	r2, [pc, #132]	; (8000294 <system_init+0xfc>)
 800020e:	4b21      	ldr	r3, [pc, #132]	; (8000294 <system_init+0xfc>)
 8000210:	681b      	ldr	r3, [r3, #0]
 8000212:	f023 0303 	bic.w	r3, r3, #3
 8000216:	6013      	str	r3, [r2, #0]
 8000218:	4a1e      	ldr	r2, [pc, #120]	; (8000294 <system_init+0xfc>)
 800021a:	4b1e      	ldr	r3, [pc, #120]	; (8000294 <system_init+0xfc>)
 800021c:	681b      	ldr	r3, [r3, #0]
 800021e:	f043 0302 	orr.w	r3, r3, #2
 8000222:	6013      	str	r3, [r2, #0]
 8000224:	4a1a      	ldr	r2, [pc, #104]	; (8000290 <system_init+0xf8>)
 8000226:	4b1a      	ldr	r3, [pc, #104]	; (8000290 <system_init+0xf8>)
 8000228:	685b      	ldr	r3, [r3, #4]
 800022a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800022e:	6053      	str	r3, [r2, #4]
 8000230:	4a17      	ldr	r2, [pc, #92]	; (8000290 <system_init+0xf8>)
 8000232:	4b17      	ldr	r3, [pc, #92]	; (8000290 <system_init+0xf8>)
 8000234:	685b      	ldr	r3, [r3, #4]
 8000236:	f023 0303 	bic.w	r3, r3, #3
 800023a:	6053      	str	r3, [r2, #4]
 800023c:	4a14      	ldr	r2, [pc, #80]	; (8000290 <system_init+0xf8>)
 800023e:	4b14      	ldr	r3, [pc, #80]	; (8000290 <system_init+0xf8>)
 8000240:	685b      	ldr	r3, [r3, #4]
 8000242:	f043 0302 	orr.w	r3, r3, #2
 8000246:	6053      	str	r3, [r2, #4]
 8000248:	bf00      	nop
 800024a:	4b11      	ldr	r3, [pc, #68]	; (8000290 <system_init+0xf8>)
 800024c:	685b      	ldr	r3, [r3, #4]
 800024e:	f003 030c 	and.w	r3, r3, #12
 8000252:	2b08      	cmp	r3, #8
 8000254:	d1f9      	bne.n	800024a <system_init+0xb2>
 8000256:	4a0e      	ldr	r2, [pc, #56]	; (8000290 <system_init+0xf8>)
 8000258:	4b0d      	ldr	r3, [pc, #52]	; (8000290 <system_init+0xf8>)
 800025a:	699b      	ldr	r3, [r3, #24]
 800025c:	f043 0305 	orr.w	r3, r3, #5
 8000260:	6193      	str	r3, [r2, #24]
 8000262:	4a0b      	ldr	r2, [pc, #44]	; (8000290 <system_init+0xf8>)
 8000264:	4b0a      	ldr	r3, [pc, #40]	; (8000290 <system_init+0xf8>)
 8000266:	69db      	ldr	r3, [r3, #28]
 8000268:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 800026c:	61d3      	str	r3, [r2, #28]
 800026e:	4a08      	ldr	r2, [pc, #32]	; (8000290 <system_init+0xf8>)
 8000270:	4b07      	ldr	r3, [pc, #28]	; (8000290 <system_init+0xf8>)
 8000272:	69db      	ldr	r3, [r3, #28]
 8000274:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000278:	61d3      	str	r3, [r2, #28]
 800027a:	4a05      	ldr	r2, [pc, #20]	; (8000290 <system_init+0xf8>)
 800027c:	4b04      	ldr	r3, [pc, #16]	; (8000290 <system_init+0xf8>)
 800027e:	699b      	ldr	r3, [r3, #24]
 8000280:	f043 0318 	orr.w	r3, r3, #24
 8000284:	6193      	str	r3, [r2, #24]
 8000286:	46bd      	mov	sp, r7
 8000288:	f85d 7b04 	ldr.w	r7, [sp], #4
 800028c:	4770      	bx	lr
 800028e:	bf00      	nop
 8000290:	40021000 	.word	0x40021000
 8000294:	40022000 	.word	0x40022000

08000298 <main>:
 8000298:	b580      	push	{r7, lr}
 800029a:	b0a2      	sub	sp, #136	; 0x88
 800029c:	af00      	add	r7, sp, #0
 800029e:	2300      	movs	r3, #0
 80002a0:	f887 3087 	strb.w	r3, [r7, #135]	; 0x87
 80002a4:	f7ff ff78 	bl	8000198 <system_init>
 80002a8:	f000 f888 	bl	80003bc <uart_init>
 80002ac:	f000 fadc 	bl	8000868 <usb_init>
 80002b0:	f000 fb20 	bl	80008f4 <usb_reset>
 80002b4:	f7ff ff1a 	bl	80000ec <led_init>
 80002b8:	4b13      	ldr	r3, [pc, #76]	; (8000308 <main+0x70>)
 80002ba:	4a14      	ldr	r2, [pc, #80]	; (800030c <main+0x74>)
 80002bc:	601a      	str	r2, [r3, #0]
 80002be:	4814      	ldr	r0, [pc, #80]	; (8000310 <main+0x78>)
 80002c0:	f001 fada 	bl	8001878 <xprintf>
 80002c4:	20e0      	movs	r0, #224	; 0xe0
 80002c6:	f7ff ff2f 	bl	8000128 <led_set>
 80002ca:	4b12      	ldr	r3, [pc, #72]	; (8000314 <main+0x7c>)
 80002cc:	681b      	ldr	r3, [r3, #0]
 80002ce:	2b05      	cmp	r3, #5
 80002d0:	d118      	bne.n	8000304 <main+0x6c>
 80002d2:	4b11      	ldr	r3, [pc, #68]	; (8000318 <main+0x80>)
 80002d4:	781b      	ldrb	r3, [r3, #0]
 80002d6:	4618      	mov	r0, r3
 80002d8:	f7ff ff26 	bl	8000128 <led_set>
 80002dc:	4b0f      	ldr	r3, [pc, #60]	; (800031c <main+0x84>)
 80002de:	689b      	ldr	r3, [r3, #8]
 80002e0:	b2db      	uxtb	r3, r3
 80002e2:	f003 0303 	and.w	r3, r3, #3
 80002e6:	b2da      	uxtb	r2, r3
 80002e8:	4b0d      	ldr	r3, [pc, #52]	; (8000320 <main+0x88>)
 80002ea:	701a      	strb	r2, [r3, #0]
 80002ec:	4b0c      	ldr	r3, [pc, #48]	; (8000320 <main+0x88>)
 80002ee:	781b      	ldrb	r3, [r3, #0]
 80002f0:	f897 2087 	ldrb.w	r2, [r7, #135]	; 0x87
 80002f4:	429a      	cmp	r2, r3
 80002f6:	d005      	beq.n	8000304 <main+0x6c>
 80002f8:	4b09      	ldr	r3, [pc, #36]	; (8000320 <main+0x88>)
 80002fa:	781b      	ldrb	r3, [r3, #0]
 80002fc:	f887 3087 	strb.w	r3, [r7, #135]	; 0x87
 8000300:	f000 ffd2 	bl	80012a8 <write_buttons_state_to_host>
 8000304:	e7e1      	b.n	80002ca <main+0x32>
 8000306:	bf00      	nop
 8000308:	20000838 	.word	0x20000838
 800030c:	08000431 	.word	0x08000431
 8000310:	08001c38 	.word	0x08001c38
 8000314:	20000830 	.word	0x20000830
 8000318:	20000825 	.word	0x20000825
 800031c:	40010c00 	.word	0x40010c00
 8000320:	20000824 	.word	0x20000824

08000324 <handler_reset>:
 8000324:	b580      	push	{r7, lr}
 8000326:	b082      	sub	sp, #8
 8000328:	af00      	add	r7, sp, #0
 800032a:	4b11      	ldr	r3, [pc, #68]	; (8000370 <handler_reset+0x4c>)
 800032c:	607b      	str	r3, [r7, #4]
 800032e:	4b11      	ldr	r3, [pc, #68]	; (8000374 <handler_reset+0x50>)
 8000330:	603b      	str	r3, [r7, #0]
 8000332:	e007      	b.n	8000344 <handler_reset+0x20>
 8000334:	683b      	ldr	r3, [r7, #0]
 8000336:	1d1a      	adds	r2, r3, #4
 8000338:	603a      	str	r2, [r7, #0]
 800033a:	687a      	ldr	r2, [r7, #4]
 800033c:	1d11      	adds	r1, r2, #4
 800033e:	6079      	str	r1, [r7, #4]
 8000340:	6812      	ldr	r2, [r2, #0]
 8000342:	601a      	str	r2, [r3, #0]
 8000344:	683b      	ldr	r3, [r7, #0]
 8000346:	4a0c      	ldr	r2, [pc, #48]	; (8000378 <handler_reset+0x54>)
 8000348:	4293      	cmp	r3, r2
 800034a:	d3f3      	bcc.n	8000334 <handler_reset+0x10>
 800034c:	4b0b      	ldr	r3, [pc, #44]	; (800037c <handler_reset+0x58>)
 800034e:	603b      	str	r3, [r7, #0]
 8000350:	e004      	b.n	800035c <handler_reset+0x38>
 8000352:	683b      	ldr	r3, [r7, #0]
 8000354:	1d1a      	adds	r2, r3, #4
 8000356:	603a      	str	r2, [r7, #0]
 8000358:	2200      	movs	r2, #0
 800035a:	601a      	str	r2, [r3, #0]
 800035c:	683b      	ldr	r3, [r7, #0]
 800035e:	4a08      	ldr	r2, [pc, #32]	; (8000380 <handler_reset+0x5c>)
 8000360:	4293      	cmp	r3, r2
 8000362:	d3f6      	bcc.n	8000352 <handler_reset+0x2e>
 8000364:	f7ff ff98 	bl	8000298 <main>
 8000368:	3708      	adds	r7, #8
 800036a:	46bd      	mov	sp, r7
 800036c:	bd80      	pop	{r7, pc}
 800036e:	bf00      	nop
 8000370:	08001e4c 	.word	0x08001e4c
 8000374:	20000000 	.word	0x20000000
 8000378:	20000008 	.word	0x20000008
 800037c:	20000008 	.word	0x20000008
 8000380:	20000844 	.word	0x20000844

08000384 <default_handler>:
 8000384:	b480      	push	{r7}
 8000386:	af00      	add	r7, sp, #0
 8000388:	e7fe      	b.n	8000388 <default_handler+0x4>
 800038a:	bf00      	nop

0800038c <NVIC_EnableIRQ>:
 800038c:	b480      	push	{r7}
 800038e:	b083      	sub	sp, #12
 8000390:	af00      	add	r7, sp, #0
 8000392:	4603      	mov	r3, r0
 8000394:	71fb      	strb	r3, [r7, #7]
 8000396:	4908      	ldr	r1, [pc, #32]	; (80003b8 <NVIC_EnableIRQ+0x2c>)
 8000398:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800039c:	095b      	lsrs	r3, r3, #5
 800039e:	79fa      	ldrb	r2, [r7, #7]
 80003a0:	f002 021f 	and.w	r2, r2, #31
 80003a4:	2001      	movs	r0, #1
 80003a6:	fa00 f202 	lsl.w	r2, r0, r2
 80003aa:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80003ae:	370c      	adds	r7, #12
 80003b0:	46bd      	mov	sp, r7
 80003b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003b6:	4770      	bx	lr
 80003b8:	e000e100 	.word	0xe000e100

080003bc <uart_init>:
 80003bc:	b580      	push	{r7, lr}
 80003be:	af00      	add	r7, sp, #0
 80003c0:	4a19      	ldr	r2, [pc, #100]	; (8000428 <uart_init+0x6c>)
 80003c2:	4b19      	ldr	r3, [pc, #100]	; (8000428 <uart_init+0x6c>)
 80003c4:	681b      	ldr	r3, [r3, #0]
 80003c6:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80003ca:	6013      	str	r3, [r2, #0]
 80003cc:	4a16      	ldr	r2, [pc, #88]	; (8000428 <uart_init+0x6c>)
 80003ce:	4b16      	ldr	r3, [pc, #88]	; (8000428 <uart_init+0x6c>)
 80003d0:	681b      	ldr	r3, [r3, #0]
 80003d2:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 80003d6:	6013      	str	r3, [r2, #0]
 80003d8:	4a14      	ldr	r2, [pc, #80]	; (800042c <uart_init+0x70>)
 80003da:	4b14      	ldr	r3, [pc, #80]	; (800042c <uart_init+0x70>)
 80003dc:	899b      	ldrh	r3, [r3, #12]
 80003de:	b29b      	uxth	r3, r3
 80003e0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80003e4:	b29b      	uxth	r3, r3
 80003e6:	8193      	strh	r3, [r2, #12]
 80003e8:	4a10      	ldr	r2, [pc, #64]	; (800042c <uart_init+0x70>)
 80003ea:	4b10      	ldr	r3, [pc, #64]	; (800042c <uart_init+0x70>)
 80003ec:	899b      	ldrh	r3, [r3, #12]
 80003ee:	b29b      	uxth	r3, r3
 80003f0:	f043 0304 	orr.w	r3, r3, #4
 80003f4:	b29b      	uxth	r3, r3
 80003f6:	8193      	strh	r3, [r2, #12]
 80003f8:	4a0c      	ldr	r2, [pc, #48]	; (800042c <uart_init+0x70>)
 80003fa:	4b0c      	ldr	r3, [pc, #48]	; (800042c <uart_init+0x70>)
 80003fc:	899b      	ldrh	r3, [r3, #12]
 80003fe:	b29b      	uxth	r3, r3
 8000400:	f043 0320 	orr.w	r3, r3, #32
 8000404:	b29b      	uxth	r3, r3
 8000406:	8193      	strh	r3, [r2, #12]
 8000408:	4a08      	ldr	r2, [pc, #32]	; (800042c <uart_init+0x70>)
 800040a:	4b08      	ldr	r3, [pc, #32]	; (800042c <uart_init+0x70>)
 800040c:	899b      	ldrh	r3, [r3, #12]
 800040e:	b29b      	uxth	r3, r3
 8000410:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000414:	b29b      	uxth	r3, r3
 8000416:	8193      	strh	r3, [r2, #12]
 8000418:	2026      	movs	r0, #38	; 0x26
 800041a:	f7ff ffb7 	bl	800038c <NVIC_EnableIRQ>
 800041e:	4b03      	ldr	r3, [pc, #12]	; (800042c <uart_init+0x70>)
 8000420:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000424:	811a      	strh	r2, [r3, #8]
 8000426:	bd80      	pop	{r7, pc}
 8000428:	40010800 	.word	0x40010800
 800042c:	40004400 	.word	0x40004400

08000430 <uart_putch>:
 8000430:	b480      	push	{r7}
 8000432:	b083      	sub	sp, #12
 8000434:	af00      	add	r7, sp, #0
 8000436:	4603      	mov	r3, r0
 8000438:	71fb      	strb	r3, [r7, #7]
 800043a:	4b13      	ldr	r3, [pc, #76]	; (8000488 <uart_putch+0x58>)
 800043c:	681a      	ldr	r2, [r3, #0]
 800043e:	4b13      	ldr	r3, [pc, #76]	; (800048c <uart_putch+0x5c>)
 8000440:	681b      	ldr	r3, [r3, #0]
 8000442:	429a      	cmp	r2, r3
 8000444:	d107      	bne.n	8000456 <uart_putch+0x26>
 8000446:	4a12      	ldr	r2, [pc, #72]	; (8000490 <uart_putch+0x60>)
 8000448:	4b11      	ldr	r3, [pc, #68]	; (8000490 <uart_putch+0x60>)
 800044a:	899b      	ldrh	r3, [r3, #12]
 800044c:	b29b      	uxth	r3, r3
 800044e:	f043 0308 	orr.w	r3, r3, #8
 8000452:	b29b      	uxth	r3, r3
 8000454:	8193      	strh	r3, [r2, #12]
 8000456:	4b0c      	ldr	r3, [pc, #48]	; (8000488 <uart_putch+0x58>)
 8000458:	681b      	ldr	r3, [r3, #0]
 800045a:	490e      	ldr	r1, [pc, #56]	; (8000494 <uart_putch+0x64>)
 800045c:	79fa      	ldrb	r2, [r7, #7]
 800045e:	54ca      	strb	r2, [r1, r3]
 8000460:	4b09      	ldr	r3, [pc, #36]	; (8000488 <uart_putch+0x58>)
 8000462:	681b      	ldr	r3, [r3, #0]
 8000464:	3301      	adds	r3, #1
 8000466:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800046a:	4a07      	ldr	r2, [pc, #28]	; (8000488 <uart_putch+0x58>)
 800046c:	6013      	str	r3, [r2, #0]
 800046e:	4a08      	ldr	r2, [pc, #32]	; (8000490 <uart_putch+0x60>)
 8000470:	4b07      	ldr	r3, [pc, #28]	; (8000490 <uart_putch+0x60>)
 8000472:	899b      	ldrh	r3, [r3, #12]
 8000474:	b29b      	uxth	r3, r3
 8000476:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800047a:	b29b      	uxth	r3, r3
 800047c:	8193      	strh	r3, [r2, #12]
 800047e:	370c      	adds	r7, #12
 8000480:	46bd      	mov	sp, r7
 8000482:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000486:	4770      	bx	lr
 8000488:	2000040c 	.word	0x2000040c
 800048c:	20000408 	.word	0x20000408
 8000490:	40004400 	.word	0x40004400
 8000494:	20000008 	.word	0x20000008

08000498 <uart_send>:
 8000498:	b480      	push	{r7}
 800049a:	b085      	sub	sp, #20
 800049c:	af00      	add	r7, sp, #0
 800049e:	6078      	str	r0, [r7, #4]
 80004a0:	6039      	str	r1, [r7, #0]
 80004a2:	4b20      	ldr	r3, [pc, #128]	; (8000524 <uart_send+0x8c>)
 80004a4:	681a      	ldr	r2, [r3, #0]
 80004a6:	4b20      	ldr	r3, [pc, #128]	; (8000528 <uart_send+0x90>)
 80004a8:	681b      	ldr	r3, [r3, #0]
 80004aa:	429a      	cmp	r2, r3
 80004ac:	d107      	bne.n	80004be <uart_send+0x26>
 80004ae:	4a1f      	ldr	r2, [pc, #124]	; (800052c <uart_send+0x94>)
 80004b0:	4b1e      	ldr	r3, [pc, #120]	; (800052c <uart_send+0x94>)
 80004b2:	899b      	ldrh	r3, [r3, #12]
 80004b4:	b29b      	uxth	r3, r3
 80004b6:	f043 0308 	orr.w	r3, r3, #8
 80004ba:	b29b      	uxth	r3, r3
 80004bc:	8193      	strh	r3, [r2, #12]
 80004be:	2300      	movs	r3, #0
 80004c0:	60fb      	str	r3, [r7, #12]
 80004c2:	e01b      	b.n	80004fc <uart_send+0x64>
 80004c4:	4b17      	ldr	r3, [pc, #92]	; (8000524 <uart_send+0x8c>)
 80004c6:	681b      	ldr	r3, [r3, #0]
 80004c8:	68fa      	ldr	r2, [r7, #12]
 80004ca:	6879      	ldr	r1, [r7, #4]
 80004cc:	440a      	add	r2, r1
 80004ce:	7811      	ldrb	r1, [r2, #0]
 80004d0:	4a17      	ldr	r2, [pc, #92]	; (8000530 <uart_send+0x98>)
 80004d2:	54d1      	strb	r1, [r2, r3]
 80004d4:	4b13      	ldr	r3, [pc, #76]	; (8000524 <uart_send+0x8c>)
 80004d6:	681b      	ldr	r3, [r3, #0]
 80004d8:	3301      	adds	r3, #1
 80004da:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80004de:	4a11      	ldr	r2, [pc, #68]	; (8000524 <uart_send+0x8c>)
 80004e0:	6013      	str	r3, [r2, #0]
 80004e2:	4b10      	ldr	r3, [pc, #64]	; (8000524 <uart_send+0x8c>)
 80004e4:	681a      	ldr	r2, [r3, #0]
 80004e6:	4b10      	ldr	r3, [pc, #64]	; (8000528 <uart_send+0x90>)
 80004e8:	681b      	ldr	r3, [r3, #0]
 80004ea:	429a      	cmp	r2, r3
 80004ec:	d103      	bne.n	80004f6 <uart_send+0x5e>
 80004ee:	68fb      	ldr	r3, [r7, #12]
 80004f0:	3301      	adds	r3, #1
 80004f2:	60fb      	str	r3, [r7, #12]
 80004f4:	e006      	b.n	8000504 <uart_send+0x6c>
 80004f6:	68fb      	ldr	r3, [r7, #12]
 80004f8:	3301      	adds	r3, #1
 80004fa:	60fb      	str	r3, [r7, #12]
 80004fc:	68fa      	ldr	r2, [r7, #12]
 80004fe:	683b      	ldr	r3, [r7, #0]
 8000500:	429a      	cmp	r2, r3
 8000502:	dbdf      	blt.n	80004c4 <uart_send+0x2c>
 8000504:	4a09      	ldr	r2, [pc, #36]	; (800052c <uart_send+0x94>)
 8000506:	4b09      	ldr	r3, [pc, #36]	; (800052c <uart_send+0x94>)
 8000508:	899b      	ldrh	r3, [r3, #12]
 800050a:	b29b      	uxth	r3, r3
 800050c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000510:	b29b      	uxth	r3, r3
 8000512:	8193      	strh	r3, [r2, #12]
 8000514:	68fb      	ldr	r3, [r7, #12]
 8000516:	4618      	mov	r0, r3
 8000518:	3714      	adds	r7, #20
 800051a:	46bd      	mov	sp, r7
 800051c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000520:	4770      	bx	lr
 8000522:	bf00      	nop
 8000524:	2000040c 	.word	0x2000040c
 8000528:	20000408 	.word	0x20000408
 800052c:	40004400 	.word	0x40004400
 8000530:	20000008 	.word	0x20000008

08000534 <uart_send_str>:
 8000534:	b480      	push	{r7}
 8000536:	b085      	sub	sp, #20
 8000538:	af00      	add	r7, sp, #0
 800053a:	6078      	str	r0, [r7, #4]
 800053c:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000540:	60bb      	str	r3, [r7, #8]
 8000542:	4b25      	ldr	r3, [pc, #148]	; (80005d8 <uart_send_str+0xa4>)
 8000544:	681a      	ldr	r2, [r3, #0]
 8000546:	4b25      	ldr	r3, [pc, #148]	; (80005dc <uart_send_str+0xa8>)
 8000548:	681b      	ldr	r3, [r3, #0]
 800054a:	1ad3      	subs	r3, r2, r3
 800054c:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000550:	68ba      	ldr	r2, [r7, #8]
 8000552:	1ad3      	subs	r3, r2, r3
 8000554:	60bb      	str	r3, [r7, #8]
 8000556:	4b20      	ldr	r3, [pc, #128]	; (80005d8 <uart_send_str+0xa4>)
 8000558:	681a      	ldr	r2, [r3, #0]
 800055a:	4b20      	ldr	r3, [pc, #128]	; (80005dc <uart_send_str+0xa8>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	429a      	cmp	r2, r3
 8000560:	d107      	bne.n	8000572 <uart_send_str+0x3e>
 8000562:	4a1f      	ldr	r2, [pc, #124]	; (80005e0 <uart_send_str+0xac>)
 8000564:	4b1e      	ldr	r3, [pc, #120]	; (80005e0 <uart_send_str+0xac>)
 8000566:	899b      	ldrh	r3, [r3, #12]
 8000568:	b29b      	uxth	r3, r3
 800056a:	f043 0308 	orr.w	r3, r3, #8
 800056e:	b29b      	uxth	r3, r3
 8000570:	8193      	strh	r3, [r2, #12]
 8000572:	2300      	movs	r3, #0
 8000574:	60fb      	str	r3, [r7, #12]
 8000576:	e01b      	b.n	80005b0 <uart_send_str+0x7c>
 8000578:	68fb      	ldr	r3, [r7, #12]
 800057a:	687a      	ldr	r2, [r7, #4]
 800057c:	4413      	add	r3, r2
 800057e:	781b      	ldrb	r3, [r3, #0]
 8000580:	2b00      	cmp	r3, #0
 8000582:	d103      	bne.n	800058c <uart_send_str+0x58>
 8000584:	68fb      	ldr	r3, [r7, #12]
 8000586:	3301      	adds	r3, #1
 8000588:	60fb      	str	r3, [r7, #12]
 800058a:	e015      	b.n	80005b8 <uart_send_str+0x84>
 800058c:	4b12      	ldr	r3, [pc, #72]	; (80005d8 <uart_send_str+0xa4>)
 800058e:	681b      	ldr	r3, [r3, #0]
 8000590:	68fa      	ldr	r2, [r7, #12]
 8000592:	6879      	ldr	r1, [r7, #4]
 8000594:	440a      	add	r2, r1
 8000596:	7811      	ldrb	r1, [r2, #0]
 8000598:	4a12      	ldr	r2, [pc, #72]	; (80005e4 <uart_send_str+0xb0>)
 800059a:	54d1      	strb	r1, [r2, r3]
 800059c:	4b0e      	ldr	r3, [pc, #56]	; (80005d8 <uart_send_str+0xa4>)
 800059e:	681b      	ldr	r3, [r3, #0]
 80005a0:	3301      	adds	r3, #1
 80005a2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80005a6:	4a0c      	ldr	r2, [pc, #48]	; (80005d8 <uart_send_str+0xa4>)
 80005a8:	6013      	str	r3, [r2, #0]
 80005aa:	68fb      	ldr	r3, [r7, #12]
 80005ac:	3301      	adds	r3, #1
 80005ae:	60fb      	str	r3, [r7, #12]
 80005b0:	68fa      	ldr	r2, [r7, #12]
 80005b2:	68bb      	ldr	r3, [r7, #8]
 80005b4:	429a      	cmp	r2, r3
 80005b6:	dbdf      	blt.n	8000578 <uart_send_str+0x44>
 80005b8:	4a09      	ldr	r2, [pc, #36]	; (80005e0 <uart_send_str+0xac>)
 80005ba:	4b09      	ldr	r3, [pc, #36]	; (80005e0 <uart_send_str+0xac>)
 80005bc:	899b      	ldrh	r3, [r3, #12]
 80005be:	b29b      	uxth	r3, r3
 80005c0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80005c4:	b29b      	uxth	r3, r3
 80005c6:	8193      	strh	r3, [r2, #12]
 80005c8:	68fb      	ldr	r3, [r7, #12]
 80005ca:	4618      	mov	r0, r3
 80005cc:	3714      	adds	r7, #20
 80005ce:	46bd      	mov	sp, r7
 80005d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005d4:	4770      	bx	lr
 80005d6:	bf00      	nop
 80005d8:	2000040c 	.word	0x2000040c
 80005dc:	20000408 	.word	0x20000408
 80005e0:	40004400 	.word	0x40004400
 80005e4:	20000008 	.word	0x20000008

080005e8 <uart_read>:
 80005e8:	b480      	push	{r7}
 80005ea:	b085      	sub	sp, #20
 80005ec:	af00      	add	r7, sp, #0
 80005ee:	6078      	str	r0, [r7, #4]
 80005f0:	6039      	str	r1, [r7, #0]
 80005f2:	4b19      	ldr	r3, [pc, #100]	; (8000658 <uart_read+0x70>)
 80005f4:	681a      	ldr	r2, [r3, #0]
 80005f6:	4b19      	ldr	r3, [pc, #100]	; (800065c <uart_read+0x74>)
 80005f8:	681b      	ldr	r3, [r3, #0]
 80005fa:	429a      	cmp	r2, r3
 80005fc:	d101      	bne.n	8000602 <uart_read+0x1a>
 80005fe:	2300      	movs	r3, #0
 8000600:	e023      	b.n	800064a <uart_read+0x62>
 8000602:	2300      	movs	r3, #0
 8000604:	60fb      	str	r3, [r7, #12]
 8000606:	e01b      	b.n	8000640 <uart_read+0x58>
 8000608:	68fb      	ldr	r3, [r7, #12]
 800060a:	687a      	ldr	r2, [r7, #4]
 800060c:	4413      	add	r3, r2
 800060e:	4a12      	ldr	r2, [pc, #72]	; (8000658 <uart_read+0x70>)
 8000610:	6812      	ldr	r2, [r2, #0]
 8000612:	4913      	ldr	r1, [pc, #76]	; (8000660 <uart_read+0x78>)
 8000614:	5c8a      	ldrb	r2, [r1, r2]
 8000616:	701a      	strb	r2, [r3, #0]
 8000618:	4b0f      	ldr	r3, [pc, #60]	; (8000658 <uart_read+0x70>)
 800061a:	681b      	ldr	r3, [r3, #0]
 800061c:	3301      	adds	r3, #1
 800061e:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000622:	4a0d      	ldr	r2, [pc, #52]	; (8000658 <uart_read+0x70>)
 8000624:	6013      	str	r3, [r2, #0]
 8000626:	4b0c      	ldr	r3, [pc, #48]	; (8000658 <uart_read+0x70>)
 8000628:	681a      	ldr	r2, [r3, #0]
 800062a:	4b0c      	ldr	r3, [pc, #48]	; (800065c <uart_read+0x74>)
 800062c:	681b      	ldr	r3, [r3, #0]
 800062e:	429a      	cmp	r2, r3
 8000630:	d103      	bne.n	800063a <uart_read+0x52>
 8000632:	68fb      	ldr	r3, [r7, #12]
 8000634:	3301      	adds	r3, #1
 8000636:	60fb      	str	r3, [r7, #12]
 8000638:	e006      	b.n	8000648 <uart_read+0x60>
 800063a:	68fb      	ldr	r3, [r7, #12]
 800063c:	3301      	adds	r3, #1
 800063e:	60fb      	str	r3, [r7, #12]
 8000640:	68fa      	ldr	r2, [r7, #12]
 8000642:	683b      	ldr	r3, [r7, #0]
 8000644:	429a      	cmp	r2, r3
 8000646:	dbdf      	blt.n	8000608 <uart_read+0x20>
 8000648:	68fb      	ldr	r3, [r7, #12]
 800064a:	4618      	mov	r0, r3
 800064c:	3714      	adds	r7, #20
 800064e:	46bd      	mov	sp, r7
 8000650:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000654:	4770      	bx	lr
 8000656:	bf00      	nop
 8000658:	20000814 	.word	0x20000814
 800065c:	20000810 	.word	0x20000810
 8000660:	20000410 	.word	0x20000410

08000664 <USART2_IRQHandler>:
 8000664:	b480      	push	{r7}
 8000666:	af00      	add	r7, sp, #0
 8000668:	4b1e      	ldr	r3, [pc, #120]	; (80006e4 <USART2_IRQHandler+0x80>)
 800066a:	881b      	ldrh	r3, [r3, #0]
 800066c:	b29b      	uxth	r3, r3
 800066e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000672:	2b00      	cmp	r3, #0
 8000674:	d01c      	beq.n	80006b0 <USART2_IRQHandler+0x4c>
 8000676:	4b1c      	ldr	r3, [pc, #112]	; (80006e8 <USART2_IRQHandler+0x84>)
 8000678:	681a      	ldr	r2, [r3, #0]
 800067a:	4b1c      	ldr	r3, [pc, #112]	; (80006ec <USART2_IRQHandler+0x88>)
 800067c:	681b      	ldr	r3, [r3, #0]
 800067e:	429a      	cmp	r2, r3
 8000680:	d108      	bne.n	8000694 <USART2_IRQHandler+0x30>
 8000682:	4a18      	ldr	r2, [pc, #96]	; (80006e4 <USART2_IRQHandler+0x80>)
 8000684:	4b17      	ldr	r3, [pc, #92]	; (80006e4 <USART2_IRQHandler+0x80>)
 8000686:	899b      	ldrh	r3, [r3, #12]
 8000688:	b29b      	uxth	r3, r3
 800068a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800068e:	b29b      	uxth	r3, r3
 8000690:	8193      	strh	r3, [r2, #12]
 8000692:	e00d      	b.n	80006b0 <USART2_IRQHandler+0x4c>
 8000694:	4a13      	ldr	r2, [pc, #76]	; (80006e4 <USART2_IRQHandler+0x80>)
 8000696:	4b14      	ldr	r3, [pc, #80]	; (80006e8 <USART2_IRQHandler+0x84>)
 8000698:	681b      	ldr	r3, [r3, #0]
 800069a:	4915      	ldr	r1, [pc, #84]	; (80006f0 <USART2_IRQHandler+0x8c>)
 800069c:	5ccb      	ldrb	r3, [r1, r3]
 800069e:	b29b      	uxth	r3, r3
 80006a0:	8093      	strh	r3, [r2, #4]
 80006a2:	4b11      	ldr	r3, [pc, #68]	; (80006e8 <USART2_IRQHandler+0x84>)
 80006a4:	681b      	ldr	r3, [r3, #0]
 80006a6:	3301      	adds	r3, #1
 80006a8:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80006ac:	4a0e      	ldr	r2, [pc, #56]	; (80006e8 <USART2_IRQHandler+0x84>)
 80006ae:	6013      	str	r3, [r2, #0]
 80006b0:	4b0c      	ldr	r3, [pc, #48]	; (80006e4 <USART2_IRQHandler+0x80>)
 80006b2:	881b      	ldrh	r3, [r3, #0]
 80006b4:	b29b      	uxth	r3, r3
 80006b6:	f003 0320 	and.w	r3, r3, #32
 80006ba:	2b00      	cmp	r3, #0
 80006bc:	d00e      	beq.n	80006dc <USART2_IRQHandler+0x78>
 80006be:	4b0d      	ldr	r3, [pc, #52]	; (80006f4 <USART2_IRQHandler+0x90>)
 80006c0:	681b      	ldr	r3, [r3, #0]
 80006c2:	4a08      	ldr	r2, [pc, #32]	; (80006e4 <USART2_IRQHandler+0x80>)
 80006c4:	8892      	ldrh	r2, [r2, #4]
 80006c6:	b292      	uxth	r2, r2
 80006c8:	b2d1      	uxtb	r1, r2
 80006ca:	4a0b      	ldr	r2, [pc, #44]	; (80006f8 <USART2_IRQHandler+0x94>)
 80006cc:	54d1      	strb	r1, [r2, r3]
 80006ce:	4b09      	ldr	r3, [pc, #36]	; (80006f4 <USART2_IRQHandler+0x90>)
 80006d0:	681b      	ldr	r3, [r3, #0]
 80006d2:	3301      	adds	r3, #1
 80006d4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80006d8:	4a06      	ldr	r2, [pc, #24]	; (80006f4 <USART2_IRQHandler+0x90>)
 80006da:	6013      	str	r3, [r2, #0]
 80006dc:	46bd      	mov	sp, r7
 80006de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006e2:	4770      	bx	lr
 80006e4:	40004400 	.word	0x40004400
 80006e8:	20000408 	.word	0x20000408
 80006ec:	2000040c 	.word	0x2000040c
 80006f0:	20000008 	.word	0x20000008
 80006f4:	20000810 	.word	0x20000810
 80006f8:	20000410 	.word	0x20000410

080006fc <NVIC_EnableIRQ>:
 80006fc:	b480      	push	{r7}
 80006fe:	b083      	sub	sp, #12
 8000700:	af00      	add	r7, sp, #0
 8000702:	4603      	mov	r3, r0
 8000704:	71fb      	strb	r3, [r7, #7]
 8000706:	4908      	ldr	r1, [pc, #32]	; (8000728 <NVIC_EnableIRQ+0x2c>)
 8000708:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800070c:	095b      	lsrs	r3, r3, #5
 800070e:	79fa      	ldrb	r2, [r7, #7]
 8000710:	f002 021f 	and.w	r2, r2, #31
 8000714:	2001      	movs	r0, #1
 8000716:	fa00 f202 	lsl.w	r2, r0, r2
 800071a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800071e:	370c      	adds	r7, #12
 8000720:	46bd      	mov	sp, r7
 8000722:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000726:	4770      	bx	lr
 8000728:	e000e100 	.word	0xe000e100

0800072c <user_to_pma_copy>:
 800072c:	b480      	push	{r7}
 800072e:	b08b      	sub	sp, #44	; 0x2c
 8000730:	af00      	add	r7, sp, #0
 8000732:	60f8      	str	r0, [r7, #12]
 8000734:	60b9      	str	r1, [r7, #8]
 8000736:	607a      	str	r2, [r7, #4]
 8000738:	68bb      	ldr	r3, [r7, #8]
 800073a:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 800073e:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8000742:	005b      	lsls	r3, r3, #1
 8000744:	61fb      	str	r3, [r7, #28]
 8000746:	687b      	ldr	r3, [r7, #4]
 8000748:	f003 0301 	and.w	r3, r3, #1
 800074c:	61bb      	str	r3, [r7, #24]
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	085b      	lsrs	r3, r3, #1
 8000752:	617b      	str	r3, [r7, #20]
 8000754:	2300      	movs	r3, #0
 8000756:	623b      	str	r3, [r7, #32]
 8000758:	2300      	movs	r3, #0
 800075a:	627b      	str	r3, [r7, #36]	; 0x24
 800075c:	e020      	b.n	80007a0 <user_to_pma_copy+0x74>
 800075e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000760:	009b      	lsls	r3, r3, #2
 8000762:	69fa      	ldr	r2, [r7, #28]
 8000764:	441a      	add	r2, r3
 8000766:	6a3b      	ldr	r3, [r7, #32]
 8000768:	1c59      	adds	r1, r3, #1
 800076a:	6239      	str	r1, [r7, #32]
 800076c:	68f9      	ldr	r1, [r7, #12]
 800076e:	440b      	add	r3, r1
 8000770:	781b      	ldrb	r3, [r3, #0]
 8000772:	6013      	str	r3, [r2, #0]
 8000774:	6a3b      	ldr	r3, [r7, #32]
 8000776:	1c5a      	adds	r2, r3, #1
 8000778:	623a      	str	r2, [r7, #32]
 800077a:	68fa      	ldr	r2, [r7, #12]
 800077c:	4413      	add	r3, r2
 800077e:	781b      	ldrb	r3, [r3, #0]
 8000780:	0218      	lsls	r0, r3, #8
 8000782:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000784:	009b      	lsls	r3, r3, #2
 8000786:	69fa      	ldr	r2, [r7, #28]
 8000788:	4413      	add	r3, r2
 800078a:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800078c:	0092      	lsls	r2, r2, #2
 800078e:	69f9      	ldr	r1, [r7, #28]
 8000790:	440a      	add	r2, r1
 8000792:	6812      	ldr	r2, [r2, #0]
 8000794:	4601      	mov	r1, r0
 8000796:	430a      	orrs	r2, r1
 8000798:	601a      	str	r2, [r3, #0]
 800079a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800079c:	3301      	adds	r3, #1
 800079e:	627b      	str	r3, [r7, #36]	; 0x24
 80007a0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80007a2:	697b      	ldr	r3, [r7, #20]
 80007a4:	429a      	cmp	r2, r3
 80007a6:	d3da      	bcc.n	800075e <user_to_pma_copy+0x32>
 80007a8:	69bb      	ldr	r3, [r7, #24]
 80007aa:	2b00      	cmp	r3, #0
 80007ac:	d008      	beq.n	80007c0 <user_to_pma_copy+0x94>
 80007ae:	697b      	ldr	r3, [r7, #20]
 80007b0:	009b      	lsls	r3, r3, #2
 80007b2:	69fa      	ldr	r2, [r7, #28]
 80007b4:	4413      	add	r3, r2
 80007b6:	68f9      	ldr	r1, [r7, #12]
 80007b8:	6a3a      	ldr	r2, [r7, #32]
 80007ba:	440a      	add	r2, r1
 80007bc:	7812      	ldrb	r2, [r2, #0]
 80007be:	601a      	str	r2, [r3, #0]
 80007c0:	372c      	adds	r7, #44	; 0x2c
 80007c2:	46bd      	mov	sp, r7
 80007c4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007c8:	4770      	bx	lr
 80007ca:	bf00      	nop

080007cc <pma_to_user_copy>:
 80007cc:	b480      	push	{r7}
 80007ce:	b08b      	sub	sp, #44	; 0x2c
 80007d0:	af00      	add	r7, sp, #0
 80007d2:	60f8      	str	r0, [r7, #12]
 80007d4:	60b9      	str	r1, [r7, #8]
 80007d6:	607a      	str	r2, [r7, #4]
 80007d8:	68bb      	ldr	r3, [r7, #8]
 80007da:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 80007de:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 80007e2:	005b      	lsls	r3, r3, #1
 80007e4:	61fb      	str	r3, [r7, #28]
 80007e6:	687b      	ldr	r3, [r7, #4]
 80007e8:	f003 0301 	and.w	r3, r3, #1
 80007ec:	61bb      	str	r3, [r7, #24]
 80007ee:	687b      	ldr	r3, [r7, #4]
 80007f0:	085b      	lsrs	r3, r3, #1
 80007f2:	617b      	str	r3, [r7, #20]
 80007f4:	2300      	movs	r3, #0
 80007f6:	623b      	str	r3, [r7, #32]
 80007f8:	2300      	movs	r3, #0
 80007fa:	627b      	str	r3, [r7, #36]	; 0x24
 80007fc:	e01d      	b.n	800083a <pma_to_user_copy+0x6e>
 80007fe:	6a3b      	ldr	r3, [r7, #32]
 8000800:	1c5a      	adds	r2, r3, #1
 8000802:	623a      	str	r2, [r7, #32]
 8000804:	68fa      	ldr	r2, [r7, #12]
 8000806:	4413      	add	r3, r2
 8000808:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800080a:	0092      	lsls	r2, r2, #2
 800080c:	69f9      	ldr	r1, [r7, #28]
 800080e:	440a      	add	r2, r1
 8000810:	6812      	ldr	r2, [r2, #0]
 8000812:	b2d2      	uxtb	r2, r2
 8000814:	701a      	strb	r2, [r3, #0]
 8000816:	6a3b      	ldr	r3, [r7, #32]
 8000818:	1c5a      	adds	r2, r3, #1
 800081a:	623a      	str	r2, [r7, #32]
 800081c:	68fa      	ldr	r2, [r7, #12]
 800081e:	4413      	add	r3, r2
 8000820:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8000822:	0092      	lsls	r2, r2, #2
 8000824:	69f9      	ldr	r1, [r7, #28]
 8000826:	440a      	add	r2, r1
 8000828:	6812      	ldr	r2, [r2, #0]
 800082a:	f402 427f 	and.w	r2, r2, #65280	; 0xff00
 800082e:	0a12      	lsrs	r2, r2, #8
 8000830:	b2d2      	uxtb	r2, r2
 8000832:	701a      	strb	r2, [r3, #0]
 8000834:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000836:	3301      	adds	r3, #1
 8000838:	627b      	str	r3, [r7, #36]	; 0x24
 800083a:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800083c:	697b      	ldr	r3, [r7, #20]
 800083e:	429a      	cmp	r2, r3
 8000840:	d3dd      	bcc.n	80007fe <pma_to_user_copy+0x32>
 8000842:	69bb      	ldr	r3, [r7, #24]
 8000844:	2b00      	cmp	r3, #0
 8000846:	d009      	beq.n	800085c <pma_to_user_copy+0x90>
 8000848:	68fa      	ldr	r2, [r7, #12]
 800084a:	6a3b      	ldr	r3, [r7, #32]
 800084c:	4413      	add	r3, r2
 800084e:	697a      	ldr	r2, [r7, #20]
 8000850:	0092      	lsls	r2, r2, #2
 8000852:	69f9      	ldr	r1, [r7, #28]
 8000854:	440a      	add	r2, r1
 8000856:	6812      	ldr	r2, [r2, #0]
 8000858:	b2d2      	uxtb	r2, r2
 800085a:	701a      	strb	r2, [r3, #0]
 800085c:	372c      	adds	r7, #44	; 0x2c
 800085e:	46bd      	mov	sp, r7
 8000860:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000864:	4770      	bx	lr
 8000866:	bf00      	nop

08000868 <usb_init>:
 8000868:	b580      	push	{r7, lr}
 800086a:	b082      	sub	sp, #8
 800086c:	af00      	add	r7, sp, #0
 800086e:	4a1d      	ldr	r2, [pc, #116]	; (80008e4 <usb_init+0x7c>)
 8000870:	4b1c      	ldr	r3, [pc, #112]	; (80008e4 <usb_init+0x7c>)
 8000872:	685b      	ldr	r3, [r3, #4]
 8000874:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000878:	6053      	str	r3, [r2, #4]
 800087a:	4a1a      	ldr	r2, [pc, #104]	; (80008e4 <usb_init+0x7c>)
 800087c:	4b19      	ldr	r3, [pc, #100]	; (80008e4 <usb_init+0x7c>)
 800087e:	685b      	ldr	r3, [r3, #4]
 8000880:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000884:	6053      	str	r3, [r2, #4]
 8000886:	4a17      	ldr	r2, [pc, #92]	; (80008e4 <usb_init+0x7c>)
 8000888:	4b16      	ldr	r3, [pc, #88]	; (80008e4 <usb_init+0x7c>)
 800088a:	68db      	ldr	r3, [r3, #12]
 800088c:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000890:	60d3      	str	r3, [r2, #12]
 8000892:	4a15      	ldr	r2, [pc, #84]	; (80008e8 <usb_init+0x80>)
 8000894:	4b14      	ldr	r3, [pc, #80]	; (80008e8 <usb_init+0x80>)
 8000896:	681b      	ldr	r3, [r3, #0]
 8000898:	f023 0302 	bic.w	r3, r3, #2
 800089c:	6013      	str	r3, [r2, #0]
 800089e:	2300      	movs	r3, #0
 80008a0:	607b      	str	r3, [r7, #4]
 80008a2:	e002      	b.n	80008aa <usb_init+0x42>
 80008a4:	687b      	ldr	r3, [r7, #4]
 80008a6:	3301      	adds	r3, #1
 80008a8:	607b      	str	r3, [r7, #4]
 80008aa:	687b      	ldr	r3, [r7, #4]
 80008ac:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 80008b0:	dbf8      	blt.n	80008a4 <usb_init+0x3c>
 80008b2:	4a0d      	ldr	r2, [pc, #52]	; (80008e8 <usb_init+0x80>)
 80008b4:	4b0c      	ldr	r3, [pc, #48]	; (80008e8 <usb_init+0x80>)
 80008b6:	681b      	ldr	r3, [r3, #0]
 80008b8:	f023 0301 	bic.w	r3, r3, #1
 80008bc:	6013      	str	r3, [r2, #0]
 80008be:	4a0a      	ldr	r2, [pc, #40]	; (80008e8 <usb_init+0x80>)
 80008c0:	4b09      	ldr	r3, [pc, #36]	; (80008e8 <usb_init+0x80>)
 80008c2:	681b      	ldr	r3, [r3, #0]
 80008c4:	f443 4365 	orr.w	r3, r3, #58624	; 0xe500
 80008c8:	6013      	str	r3, [r2, #0]
 80008ca:	4b08      	ldr	r3, [pc, #32]	; (80008ec <usb_init+0x84>)
 80008cc:	2200      	movs	r2, #0
 80008ce:	601a      	str	r2, [r3, #0]
 80008d0:	4b07      	ldr	r3, [pc, #28]	; (80008f0 <usb_init+0x88>)
 80008d2:	2200      	movs	r2, #0
 80008d4:	601a      	str	r2, [r3, #0]
 80008d6:	2014      	movs	r0, #20
 80008d8:	f7ff ff10 	bl	80006fc <NVIC_EnableIRQ>
 80008dc:	3708      	adds	r7, #8
 80008de:	46bd      	mov	sp, r7
 80008e0:	bd80      	pop	{r7, pc}
 80008e2:	bf00      	nop
 80008e4:	40010800 	.word	0x40010800
 80008e8:	40005c40 	.word	0x40005c40
 80008ec:	40005c44 	.word	0x40005c44
 80008f0:	20000830 	.word	0x20000830

080008f4 <usb_reset>:
 80008f4:	b590      	push	{r4, r7, lr}
 80008f6:	b083      	sub	sp, #12
 80008f8:	af00      	add	r7, sp, #0
 80008fa:	4b7c      	ldr	r3, [pc, #496]	; (8000aec <usb_reset+0x1f8>)
 80008fc:	2200      	movs	r2, #0
 80008fe:	601a      	str	r2, [r3, #0]
 8000900:	4a7a      	ldr	r2, [pc, #488]	; (8000aec <usb_reset+0x1f8>)
 8000902:	4b7a      	ldr	r3, [pc, #488]	; (8000aec <usb_reset+0x1f8>)
 8000904:	681b      	ldr	r3, [r3, #0]
 8000906:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800090a:	6013      	str	r3, [r2, #0]
 800090c:	4b78      	ldr	r3, [pc, #480]	; (8000af0 <usb_reset+0x1fc>)
 800090e:	2200      	movs	r2, #0
 8000910:	601a      	str	r2, [r3, #0]
 8000912:	4a78      	ldr	r2, [pc, #480]	; (8000af4 <usb_reset+0x200>)
 8000914:	4b77      	ldr	r3, [pc, #476]	; (8000af4 <usb_reset+0x200>)
 8000916:	681b      	ldr	r3, [r3, #0]
 8000918:	b29b      	uxth	r3, r3
 800091a:	f423 43ec 	bic.w	r3, r3, #30208	; 0x7600
 800091e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000922:	b29b      	uxth	r3, r3
 8000924:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000928:	b29b      	uxth	r3, r3
 800092a:	b29b      	uxth	r3, r3
 800092c:	6013      	str	r3, [r2, #0]
 800092e:	4a71      	ldr	r2, [pc, #452]	; (8000af4 <usb_reset+0x200>)
 8000930:	4b70      	ldr	r3, [pc, #448]	; (8000af4 <usb_reset+0x200>)
 8000932:	681b      	ldr	r3, [r3, #0]
 8000934:	b29b      	uxth	r3, r3
 8000936:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 800093a:	051b      	lsls	r3, r3, #20
 800093c:	0d1b      	lsrs	r3, r3, #20
 800093e:	b29b      	uxth	r3, r3
 8000940:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 8000944:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 8000948:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800094c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000950:	b29b      	uxth	r3, r3
 8000952:	b29b      	uxth	r3, r3
 8000954:	6013      	str	r3, [r2, #0]
 8000956:	4b67      	ldr	r3, [pc, #412]	; (8000af4 <usb_reset+0x200>)
 8000958:	681b      	ldr	r3, [r3, #0]
 800095a:	b29b      	uxth	r3, r3
 800095c:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000960:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000964:	b29c      	uxth	r4, r3
 8000966:	f084 0310 	eor.w	r3, r4, #16
 800096a:	b29c      	uxth	r4, r3
 800096c:	4a61      	ldr	r2, [pc, #388]	; (8000af4 <usb_reset+0x200>)
 800096e:	4b62      	ldr	r3, [pc, #392]	; (8000af8 <usb_reset+0x204>)
 8000970:	4323      	orrs	r3, r4
 8000972:	b29b      	uxth	r3, r3
 8000974:	6013      	str	r3, [r2, #0]
 8000976:	4b5f      	ldr	r3, [pc, #380]	; (8000af4 <usb_reset+0x200>)
 8000978:	681b      	ldr	r3, [r3, #0]
 800097a:	b29b      	uxth	r3, r3
 800097c:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000980:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000984:	b29c      	uxth	r4, r3
 8000986:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 800098a:	b29c      	uxth	r4, r3
 800098c:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000990:	b29c      	uxth	r4, r3
 8000992:	4a58      	ldr	r2, [pc, #352]	; (8000af4 <usb_reset+0x200>)
 8000994:	4b58      	ldr	r3, [pc, #352]	; (8000af8 <usb_reset+0x204>)
 8000996:	4323      	orrs	r3, r4
 8000998:	b29b      	uxth	r3, r3
 800099a:	6013      	str	r3, [r2, #0]
 800099c:	4b54      	ldr	r3, [pc, #336]	; (8000af0 <usb_reset+0x1fc>)
 800099e:	681b      	ldr	r3, [r3, #0]
 80009a0:	b29b      	uxth	r3, r3
 80009a2:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 80009a6:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 80009aa:	005b      	lsls	r3, r3, #1
 80009ac:	461a      	mov	r2, r3
 80009ae:	2340      	movs	r3, #64	; 0x40
 80009b0:	6013      	str	r3, [r2, #0]
 80009b2:	4b4f      	ldr	r3, [pc, #316]	; (8000af0 <usb_reset+0x1fc>)
 80009b4:	681b      	ldr	r3, [r3, #0]
 80009b6:	b29b      	uxth	r3, r3
 80009b8:	461a      	mov	r2, r3
 80009ba:	4b50      	ldr	r3, [pc, #320]	; (8000afc <usb_reset+0x208>)
 80009bc:	4413      	add	r3, r2
 80009be:	005b      	lsls	r3, r3, #1
 80009c0:	461a      	mov	r2, r3
 80009c2:	2340      	movs	r3, #64	; 0x40
 80009c4:	6013      	str	r3, [r2, #0]
 80009c6:	4b4a      	ldr	r3, [pc, #296]	; (8000af0 <usb_reset+0x1fc>)
 80009c8:	681b      	ldr	r3, [r3, #0]
 80009ca:	b29b      	uxth	r3, r3
 80009cc:	461a      	mov	r2, r3
 80009ce:	4b4c      	ldr	r3, [pc, #304]	; (8000b00 <usb_reset+0x20c>)
 80009d0:	4413      	add	r3, r2
 80009d2:	005b      	lsls	r3, r3, #1
 80009d4:	461a      	mov	r2, r3
 80009d6:	2380      	movs	r3, #128	; 0x80
 80009d8:	6013      	str	r3, [r2, #0]
 80009da:	4b45      	ldr	r3, [pc, #276]	; (8000af0 <usb_reset+0x1fc>)
 80009dc:	681b      	ldr	r3, [r3, #0]
 80009de:	b29b      	uxth	r3, r3
 80009e0:	461a      	mov	r2, r3
 80009e2:	4b48      	ldr	r3, [pc, #288]	; (8000b04 <usb_reset+0x210>)
 80009e4:	4413      	add	r3, r2
 80009e6:	005b      	lsls	r3, r3, #1
 80009e8:	607b      	str	r3, [r7, #4]
 80009ea:	2302      	movs	r3, #2
 80009ec:	807b      	strh	r3, [r7, #2]
 80009ee:	887b      	ldrh	r3, [r7, #2]
 80009f0:	3b01      	subs	r3, #1
 80009f2:	807b      	strh	r3, [r7, #2]
 80009f4:	887b      	ldrh	r3, [r7, #2]
 80009f6:	029b      	lsls	r3, r3, #10
 80009f8:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80009fc:	461a      	mov	r2, r3
 80009fe:	687b      	ldr	r3, [r7, #4]
 8000a00:	601a      	str	r2, [r3, #0]
 8000a02:	4a41      	ldr	r2, [pc, #260]	; (8000b08 <usb_reset+0x214>)
 8000a04:	4b40      	ldr	r3, [pc, #256]	; (8000b08 <usb_reset+0x214>)
 8000a06:	681b      	ldr	r3, [r3, #0]
 8000a08:	b29b      	uxth	r3, r3
 8000a0a:	f423 43ec 	bic.w	r3, r3, #30208	; 0x7600
 8000a0e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000a12:	b29b      	uxth	r3, r3
 8000a14:	f443 63c0 	orr.w	r3, r3, #1536	; 0x600
 8000a18:	b29b      	uxth	r3, r3
 8000a1a:	b29b      	uxth	r3, r3
 8000a1c:	6013      	str	r3, [r2, #0]
 8000a1e:	4b3a      	ldr	r3, [pc, #232]	; (8000b08 <usb_reset+0x214>)
 8000a20:	681b      	ldr	r3, [r3, #0]
 8000a22:	b29b      	uxth	r3, r3
 8000a24:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000a28:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000a2c:	b29c      	uxth	r4, r3
 8000a2e:	4a36      	ldr	r2, [pc, #216]	; (8000b08 <usb_reset+0x214>)
 8000a30:	4b31      	ldr	r3, [pc, #196]	; (8000af8 <usb_reset+0x204>)
 8000a32:	4323      	orrs	r3, r4
 8000a34:	b29b      	uxth	r3, r3
 8000a36:	6013      	str	r3, [r2, #0]
 8000a38:	4b33      	ldr	r3, [pc, #204]	; (8000b08 <usb_reset+0x214>)
 8000a3a:	681b      	ldr	r3, [r3, #0]
 8000a3c:	b29b      	uxth	r3, r3
 8000a3e:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000a42:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000a46:	b29c      	uxth	r4, r3
 8000a48:	f084 0320 	eor.w	r3, r4, #32
 8000a4c:	b29c      	uxth	r4, r3
 8000a4e:	4a2e      	ldr	r2, [pc, #184]	; (8000b08 <usb_reset+0x214>)
 8000a50:	4b29      	ldr	r3, [pc, #164]	; (8000af8 <usb_reset+0x204>)
 8000a52:	4323      	orrs	r3, r4
 8000a54:	b29b      	uxth	r3, r3
 8000a56:	6013      	str	r3, [r2, #0]
 8000a58:	4b25      	ldr	r3, [pc, #148]	; (8000af0 <usb_reset+0x1fc>)
 8000a5a:	681b      	ldr	r3, [r3, #0]
 8000a5c:	b29b      	uxth	r3, r3
 8000a5e:	461a      	mov	r2, r3
 8000a60:	4b2a      	ldr	r3, [pc, #168]	; (8000b0c <usb_reset+0x218>)
 8000a62:	4413      	add	r3, r2
 8000a64:	005b      	lsls	r3, r3, #1
 8000a66:	461a      	mov	r2, r3
 8000a68:	23c0      	movs	r3, #192	; 0xc0
 8000a6a:	6013      	str	r3, [r2, #0]
 8000a6c:	4b20      	ldr	r3, [pc, #128]	; (8000af0 <usb_reset+0x1fc>)
 8000a6e:	681b      	ldr	r3, [r3, #0]
 8000a70:	b29b      	uxth	r3, r3
 8000a72:	461a      	mov	r2, r3
 8000a74:	4b26      	ldr	r3, [pc, #152]	; (8000b10 <usb_reset+0x21c>)
 8000a76:	4413      	add	r3, r2
 8000a78:	005b      	lsls	r3, r3, #1
 8000a7a:	461a      	mov	r2, r3
 8000a7c:	2340      	movs	r3, #64	; 0x40
 8000a7e:	6013      	str	r3, [r2, #0]
 8000a80:	4b21      	ldr	r3, [pc, #132]	; (8000b08 <usb_reset+0x214>)
 8000a82:	681b      	ldr	r3, [r3, #0]
 8000a84:	b29b      	uxth	r3, r3
 8000a86:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000a8a:	2b00      	cmp	r3, #0
 8000a8c:	d00c      	beq.n	8000aa8 <usb_reset+0x1b4>
 8000a8e:	4a1e      	ldr	r2, [pc, #120]	; (8000b08 <usb_reset+0x214>)
 8000a90:	4b1d      	ldr	r3, [pc, #116]	; (8000b08 <usb_reset+0x214>)
 8000a92:	681b      	ldr	r3, [r3, #0]
 8000a94:	b29b      	uxth	r3, r3
 8000a96:	4619      	mov	r1, r3
 8000a98:	f640 730f 	movw	r3, #3855	; 0xf0f
 8000a9c:	400b      	ands	r3, r1
 8000a9e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000aa2:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 8000aa6:	6013      	str	r3, [r2, #0]
 8000aa8:	4b17      	ldr	r3, [pc, #92]	; (8000b08 <usb_reset+0x214>)
 8000aaa:	681b      	ldr	r3, [r3, #0]
 8000aac:	b29b      	uxth	r3, r3
 8000aae:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000ab2:	2b00      	cmp	r3, #0
 8000ab4:	d00c      	beq.n	8000ad0 <usb_reset+0x1dc>
 8000ab6:	4a14      	ldr	r2, [pc, #80]	; (8000b08 <usb_reset+0x214>)
 8000ab8:	4b13      	ldr	r3, [pc, #76]	; (8000b08 <usb_reset+0x214>)
 8000aba:	681b      	ldr	r3, [r3, #0]
 8000abc:	b29b      	uxth	r3, r3
 8000abe:	4619      	mov	r1, r3
 8000ac0:	f640 730f 	movw	r3, #3855	; 0xf0f
 8000ac4:	400b      	ands	r3, r1
 8000ac6:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 8000aca:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000ace:	6013      	str	r3, [r2, #0]
 8000ad0:	4b10      	ldr	r3, [pc, #64]	; (8000b14 <usb_reset+0x220>)
 8000ad2:	4a11      	ldr	r2, [pc, #68]	; (8000b18 <usb_reset+0x224>)
 8000ad4:	601a      	str	r2, [r3, #0]
 8000ad6:	4b11      	ldr	r3, [pc, #68]	; (8000b1c <usb_reset+0x228>)
 8000ad8:	4a11      	ldr	r2, [pc, #68]	; (8000b20 <usb_reset+0x22c>)
 8000ada:	601a      	str	r2, [r3, #0]
 8000adc:	f7ff fb4e 	bl	800017c <led_off>
 8000ae0:	4b10      	ldr	r3, [pc, #64]	; (8000b24 <usb_reset+0x230>)
 8000ae2:	2201      	movs	r2, #1
 8000ae4:	601a      	str	r2, [r3, #0]
 8000ae6:	370c      	adds	r7, #12
 8000ae8:	46bd      	mov	sp, r7
 8000aea:	bd90      	pop	{r4, r7, pc}
 8000aec:	40005c4c 	.word	0x40005c4c
 8000af0:	40005c50 	.word	0x40005c50
 8000af4:	40005c00 	.word	0x40005c00
 8000af8:	ffff8080 	.word	0xffff8080
 8000afc:	20003002 	.word	0x20003002
 8000b00:	20003004 	.word	0x20003004
 8000b04:	20003006 	.word	0x20003006
 8000b08:	40005c04 	.word	0x40005c04
 8000b0c:	20003008 	.word	0x20003008
 8000b10:	2000300a 	.word	0x2000300a
 8000b14:	20000000 	.word	0x20000000
 8000b18:	08000b29 	.word	0x08000b29
 8000b1c:	20000004 	.word	0x20000004
 8000b20:	08000b71 	.word	0x08000b71
 8000b24:	20000830 	.word	0x20000830

08000b28 <null_proc>:
 8000b28:	b480      	push	{r7}
 8000b2a:	af00      	add	r7, sp, #0
 8000b2c:	bf00      	nop
 8000b2e:	46bd      	mov	sp, r7
 8000b30:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b34:	4770      	bx	lr
 8000b36:	bf00      	nop

08000b38 <enable_TX_proc>:
 8000b38:	b490      	push	{r4, r7}
 8000b3a:	af00      	add	r7, sp, #0
 8000b3c:	4b0a      	ldr	r3, [pc, #40]	; (8000b68 <enable_TX_proc+0x30>)
 8000b3e:	681b      	ldr	r3, [r3, #0]
 8000b40:	b29b      	uxth	r3, r3
 8000b42:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000b46:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000b4a:	b29c      	uxth	r4, r3
 8000b4c:	f084 0310 	eor.w	r3, r4, #16
 8000b50:	b29c      	uxth	r4, r3
 8000b52:	f084 0320 	eor.w	r3, r4, #32
 8000b56:	b29c      	uxth	r4, r3
 8000b58:	4a03      	ldr	r2, [pc, #12]	; (8000b68 <enable_TX_proc+0x30>)
 8000b5a:	4b04      	ldr	r3, [pc, #16]	; (8000b6c <enable_TX_proc+0x34>)
 8000b5c:	4323      	orrs	r3, r4
 8000b5e:	b29b      	uxth	r3, r3
 8000b60:	6013      	str	r3, [r2, #0]
 8000b62:	46bd      	mov	sp, r7
 8000b64:	bc90      	pop	{r4, r7}
 8000b66:	4770      	bx	lr
 8000b68:	40005c00 	.word	0x40005c00
 8000b6c:	ffff8080 	.word	0xffff8080

08000b70 <enable_RX_proc>:
 8000b70:	b490      	push	{r4, r7}
 8000b72:	af00      	add	r7, sp, #0
 8000b74:	4b0a      	ldr	r3, [pc, #40]	; (8000ba0 <enable_RX_proc+0x30>)
 8000b76:	681b      	ldr	r3, [r3, #0]
 8000b78:	b29b      	uxth	r3, r3
 8000b7a:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000b7e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000b82:	b29c      	uxth	r4, r3
 8000b84:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000b88:	b29c      	uxth	r4, r3
 8000b8a:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000b8e:	b29c      	uxth	r4, r3
 8000b90:	4a03      	ldr	r2, [pc, #12]	; (8000ba0 <enable_RX_proc+0x30>)
 8000b92:	4b04      	ldr	r3, [pc, #16]	; (8000ba4 <enable_RX_proc+0x34>)
 8000b94:	4323      	orrs	r3, r4
 8000b96:	b29b      	uxth	r3, r3
 8000b98:	6013      	str	r3, [r2, #0]
 8000b9a:	46bd      	mov	sp, r7
 8000b9c:	bc90      	pop	{r4, r7}
 8000b9e:	4770      	bx	lr
 8000ba0:	40005c00 	.word	0x40005c00
 8000ba4:	ffff8080 	.word	0xffff8080

08000ba8 <plan_ZeroLength_IN_proc>:
 8000ba8:	b490      	push	{r4, r7}
 8000baa:	af00      	add	r7, sp, #0
 8000bac:	4b0f      	ldr	r3, [pc, #60]	; (8000bec <plan_ZeroLength_IN_proc+0x44>)
 8000bae:	681b      	ldr	r3, [r3, #0]
 8000bb0:	b29b      	uxth	r3, r3
 8000bb2:	461a      	mov	r2, r3
 8000bb4:	4b0e      	ldr	r3, [pc, #56]	; (8000bf0 <plan_ZeroLength_IN_proc+0x48>)
 8000bb6:	4413      	add	r3, r2
 8000bb8:	005b      	lsls	r3, r3, #1
 8000bba:	461a      	mov	r2, r3
 8000bbc:	2300      	movs	r3, #0
 8000bbe:	6013      	str	r3, [r2, #0]
 8000bc0:	4b0c      	ldr	r3, [pc, #48]	; (8000bf4 <plan_ZeroLength_IN_proc+0x4c>)
 8000bc2:	681b      	ldr	r3, [r3, #0]
 8000bc4:	b29b      	uxth	r3, r3
 8000bc6:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000bca:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000bce:	b29c      	uxth	r4, r3
 8000bd0:	f084 0310 	eor.w	r3, r4, #16
 8000bd4:	b29c      	uxth	r4, r3
 8000bd6:	f084 0320 	eor.w	r3, r4, #32
 8000bda:	b29c      	uxth	r4, r3
 8000bdc:	4a05      	ldr	r2, [pc, #20]	; (8000bf4 <plan_ZeroLength_IN_proc+0x4c>)
 8000bde:	4b06      	ldr	r3, [pc, #24]	; (8000bf8 <plan_ZeroLength_IN_proc+0x50>)
 8000be0:	4323      	orrs	r3, r4
 8000be2:	b29b      	uxth	r3, r3
 8000be4:	6013      	str	r3, [r2, #0]
 8000be6:	46bd      	mov	sp, r7
 8000be8:	bc90      	pop	{r4, r7}
 8000bea:	4770      	bx	lr
 8000bec:	40005c50 	.word	0x40005c50
 8000bf0:	20003002 	.word	0x20003002
 8000bf4:	40005c00 	.word	0x40005c00
 8000bf8:	ffff8080 	.word	0xffff8080

08000bfc <plan_ZeroLength_OUT_proc>:
 8000bfc:	b490      	push	{r4, r7}
 8000bfe:	af00      	add	r7, sp, #0
 8000c00:	4b0d      	ldr	r3, [pc, #52]	; (8000c38 <plan_ZeroLength_OUT_proc+0x3c>)
 8000c02:	681b      	ldr	r3, [r3, #0]
 8000c04:	b29b      	uxth	r3, r3
 8000c06:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000c0a:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000c0e:	b29c      	uxth	r4, r3
 8000c10:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000c14:	b29c      	uxth	r4, r3
 8000c16:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000c1a:	b29c      	uxth	r4, r3
 8000c1c:	4a06      	ldr	r2, [pc, #24]	; (8000c38 <plan_ZeroLength_OUT_proc+0x3c>)
 8000c1e:	4b07      	ldr	r3, [pc, #28]	; (8000c3c <plan_ZeroLength_OUT_proc+0x40>)
 8000c20:	4323      	orrs	r3, r4
 8000c22:	b29b      	uxth	r3, r3
 8000c24:	6013      	str	r3, [r2, #0]
 8000c26:	4b06      	ldr	r3, [pc, #24]	; (8000c40 <plan_ZeroLength_OUT_proc+0x44>)
 8000c28:	4a06      	ldr	r2, [pc, #24]	; (8000c44 <plan_ZeroLength_OUT_proc+0x48>)
 8000c2a:	601a      	str	r2, [r3, #0]
 8000c2c:	4b06      	ldr	r3, [pc, #24]	; (8000c48 <plan_ZeroLength_OUT_proc+0x4c>)
 8000c2e:	4a07      	ldr	r2, [pc, #28]	; (8000c4c <plan_ZeroLength_OUT_proc+0x50>)
 8000c30:	601a      	str	r2, [r3, #0]
 8000c32:	46bd      	mov	sp, r7
 8000c34:	bc90      	pop	{r4, r7}
 8000c36:	4770      	bx	lr
 8000c38:	40005c00 	.word	0x40005c00
 8000c3c:	ffff8080 	.word	0xffff8080
 8000c40:	20000000 	.word	0x20000000
 8000c44:	08000b29 	.word	0x08000b29
 8000c48:	20000004 	.word	0x20000004
 8000c4c:	08000b71 	.word	0x08000b71

08000c50 <input0_for_setaddr_proc>:
 8000c50:	b490      	push	{r4, r7}
 8000c52:	af00      	add	r7, sp, #0
 8000c54:	4a17      	ldr	r2, [pc, #92]	; (8000cb4 <input0_for_setaddr_proc+0x64>)
 8000c56:	4b17      	ldr	r3, [pc, #92]	; (8000cb4 <input0_for_setaddr_proc+0x64>)
 8000c58:	681b      	ldr	r3, [r3, #0]
 8000c5a:	4917      	ldr	r1, [pc, #92]	; (8000cb8 <input0_for_setaddr_proc+0x68>)
 8000c5c:	8809      	ldrh	r1, [r1, #0]
 8000c5e:	430b      	orrs	r3, r1
 8000c60:	6013      	str	r3, [r2, #0]
 8000c62:	4b16      	ldr	r3, [pc, #88]	; (8000cbc <input0_for_setaddr_proc+0x6c>)
 8000c64:	2204      	movs	r2, #4
 8000c66:	601a      	str	r2, [r3, #0]
 8000c68:	4a15      	ldr	r2, [pc, #84]	; (8000cc0 <input0_for_setaddr_proc+0x70>)
 8000c6a:	4b15      	ldr	r3, [pc, #84]	; (8000cc0 <input0_for_setaddr_proc+0x70>)
 8000c6c:	681b      	ldr	r3, [r3, #0]
 8000c6e:	b29b      	uxth	r3, r3
 8000c70:	4619      	mov	r1, r3
 8000c72:	f640 730e 	movw	r3, #3854	; 0xf0e
 8000c76:	400b      	ands	r3, r1
 8000c78:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000c7c:	f043 0381 	orr.w	r3, r3, #129	; 0x81
 8000c80:	6013      	str	r3, [r2, #0]
 8000c82:	4b10      	ldr	r3, [pc, #64]	; (8000cc4 <input0_for_setaddr_proc+0x74>)
 8000c84:	681b      	ldr	r3, [r3, #0]
 8000c86:	b29b      	uxth	r3, r3
 8000c88:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000c8c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000c90:	b29c      	uxth	r4, r3
 8000c92:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000c96:	b29c      	uxth	r4, r3
 8000c98:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000c9c:	b29c      	uxth	r4, r3
 8000c9e:	4a09      	ldr	r2, [pc, #36]	; (8000cc4 <input0_for_setaddr_proc+0x74>)
 8000ca0:	4b09      	ldr	r3, [pc, #36]	; (8000cc8 <input0_for_setaddr_proc+0x78>)
 8000ca2:	4323      	orrs	r3, r4
 8000ca4:	b29b      	uxth	r3, r3
 8000ca6:	6013      	str	r3, [r2, #0]
 8000ca8:	4b08      	ldr	r3, [pc, #32]	; (8000ccc <input0_for_setaddr_proc+0x7c>)
 8000caa:	4a09      	ldr	r2, [pc, #36]	; (8000cd0 <input0_for_setaddr_proc+0x80>)
 8000cac:	601a      	str	r2, [r3, #0]
 8000cae:	46bd      	mov	sp, r7
 8000cb0:	bc90      	pop	{r4, r7}
 8000cb2:	4770      	bx	lr
 8000cb4:	40005c4c 	.word	0x40005c4c
 8000cb8:	20000818 	.word	0x20000818
 8000cbc:	20000830 	.word	0x20000830
 8000cc0:	40005c04 	.word	0x40005c04
 8000cc4:	40005c00 	.word	0x40005c00
 8000cc8:	ffff8080 	.word	0xffff8080
 8000ccc:	20000000 	.word	0x20000000
 8000cd0:	08000b29 	.word	0x08000b29

08000cd4 <input0_for_setconfig_proc>:
 8000cd4:	b598      	push	{r3, r4, r7, lr}
 8000cd6:	af00      	add	r7, sp, #0
 8000cd8:	4b0d      	ldr	r3, [pc, #52]	; (8000d10 <input0_for_setconfig_proc+0x3c>)
 8000cda:	2205      	movs	r2, #5
 8000cdc:	601a      	str	r2, [r3, #0]
 8000cde:	f7ff fa3f 	bl	8000160 <led_on>
 8000ce2:	4b0c      	ldr	r3, [pc, #48]	; (8000d14 <input0_for_setconfig_proc+0x40>)
 8000ce4:	681b      	ldr	r3, [r3, #0]
 8000ce6:	b29b      	uxth	r3, r3
 8000ce8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000cec:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000cf0:	b29c      	uxth	r4, r3
 8000cf2:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000cf6:	b29c      	uxth	r4, r3
 8000cf8:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000cfc:	b29c      	uxth	r4, r3
 8000cfe:	4a05      	ldr	r2, [pc, #20]	; (8000d14 <input0_for_setconfig_proc+0x40>)
 8000d00:	4b05      	ldr	r3, [pc, #20]	; (8000d18 <input0_for_setconfig_proc+0x44>)
 8000d02:	4323      	orrs	r3, r4
 8000d04:	b29b      	uxth	r3, r3
 8000d06:	6013      	str	r3, [r2, #0]
 8000d08:	4b04      	ldr	r3, [pc, #16]	; (8000d1c <input0_for_setconfig_proc+0x48>)
 8000d0a:	4a05      	ldr	r2, [pc, #20]	; (8000d20 <input0_for_setconfig_proc+0x4c>)
 8000d0c:	601a      	str	r2, [r3, #0]
 8000d0e:	bd98      	pop	{r3, r4, r7, pc}
 8000d10:	20000830 	.word	0x20000830
 8000d14:	40005c00 	.word	0x40005c00
 8000d18:	ffff8080 	.word	0xffff8080
 8000d1c:	20000000 	.word	0x20000000
 8000d20:	08000b29 	.word	0x08000b29

08000d24 <plan_Data_IN_proc>:
 8000d24:	b590      	push	{r4, r7, lr}
 8000d26:	b083      	sub	sp, #12
 8000d28:	af00      	add	r7, sp, #0
 8000d2a:	4b24      	ldr	r3, [pc, #144]	; (8000dbc <plan_Data_IN_proc+0x98>)
 8000d2c:	681b      	ldr	r3, [r3, #0]
 8000d2e:	2b40      	cmp	r3, #64	; 0x40
 8000d30:	bf28      	it	cs
 8000d32:	2340      	movcs	r3, #64	; 0x40
 8000d34:	607b      	str	r3, [r7, #4]
 8000d36:	4b21      	ldr	r3, [pc, #132]	; (8000dbc <plan_Data_IN_proc+0x98>)
 8000d38:	681a      	ldr	r2, [r3, #0]
 8000d3a:	687b      	ldr	r3, [r7, #4]
 8000d3c:	1ad3      	subs	r3, r2, r3
 8000d3e:	603b      	str	r3, [r7, #0]
 8000d40:	687b      	ldr	r3, [r7, #4]
 8000d42:	2b00      	cmp	r3, #0
 8000d44:	d023      	beq.n	8000d8e <plan_Data_IN_proc+0x6a>
 8000d46:	4b1e      	ldr	r3, [pc, #120]	; (8000dc0 <plan_Data_IN_proc+0x9c>)
 8000d48:	681b      	ldr	r3, [r3, #0]
 8000d4a:	4618      	mov	r0, r3
 8000d4c:	2140      	movs	r1, #64	; 0x40
 8000d4e:	687a      	ldr	r2, [r7, #4]
 8000d50:	f7ff fcec 	bl	800072c <user_to_pma_copy>
 8000d54:	4b1b      	ldr	r3, [pc, #108]	; (8000dc4 <plan_Data_IN_proc+0xa0>)
 8000d56:	681b      	ldr	r3, [r3, #0]
 8000d58:	b29b      	uxth	r3, r3
 8000d5a:	461a      	mov	r2, r3
 8000d5c:	4b1a      	ldr	r3, [pc, #104]	; (8000dc8 <plan_Data_IN_proc+0xa4>)
 8000d5e:	4413      	add	r3, r2
 8000d60:	005b      	lsls	r3, r3, #1
 8000d62:	461a      	mov	r2, r3
 8000d64:	687b      	ldr	r3, [r7, #4]
 8000d66:	6013      	str	r3, [r2, #0]
 8000d68:	4b18      	ldr	r3, [pc, #96]	; (8000dcc <plan_Data_IN_proc+0xa8>)
 8000d6a:	681b      	ldr	r3, [r3, #0]
 8000d6c:	b29b      	uxth	r3, r3
 8000d6e:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000d72:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000d76:	b29c      	uxth	r4, r3
 8000d78:	f084 0310 	eor.w	r3, r4, #16
 8000d7c:	b29c      	uxth	r4, r3
 8000d7e:	f084 0320 	eor.w	r3, r4, #32
 8000d82:	b29c      	uxth	r4, r3
 8000d84:	4a11      	ldr	r2, [pc, #68]	; (8000dcc <plan_Data_IN_proc+0xa8>)
 8000d86:	4b12      	ldr	r3, [pc, #72]	; (8000dd0 <plan_Data_IN_proc+0xac>)
 8000d88:	4323      	orrs	r3, r4
 8000d8a:	b29b      	uxth	r3, r3
 8000d8c:	6013      	str	r3, [r2, #0]
 8000d8e:	683b      	ldr	r3, [r7, #0]
 8000d90:	2b00      	cmp	r3, #0
 8000d92:	d00c      	beq.n	8000dae <plan_Data_IN_proc+0x8a>
 8000d94:	4a09      	ldr	r2, [pc, #36]	; (8000dbc <plan_Data_IN_proc+0x98>)
 8000d96:	683b      	ldr	r3, [r7, #0]
 8000d98:	6013      	str	r3, [r2, #0]
 8000d9a:	4b09      	ldr	r3, [pc, #36]	; (8000dc0 <plan_Data_IN_proc+0x9c>)
 8000d9c:	681a      	ldr	r2, [r3, #0]
 8000d9e:	687b      	ldr	r3, [r7, #4]
 8000da0:	4413      	add	r3, r2
 8000da2:	4a07      	ldr	r2, [pc, #28]	; (8000dc0 <plan_Data_IN_proc+0x9c>)
 8000da4:	6013      	str	r3, [r2, #0]
 8000da6:	4b0b      	ldr	r3, [pc, #44]	; (8000dd4 <plan_Data_IN_proc+0xb0>)
 8000da8:	4a0b      	ldr	r2, [pc, #44]	; (8000dd8 <plan_Data_IN_proc+0xb4>)
 8000daa:	601a      	str	r2, [r3, #0]
 8000dac:	e002      	b.n	8000db4 <plan_Data_IN_proc+0x90>
 8000dae:	4b09      	ldr	r3, [pc, #36]	; (8000dd4 <plan_Data_IN_proc+0xb0>)
 8000db0:	4a0a      	ldr	r2, [pc, #40]	; (8000ddc <plan_Data_IN_proc+0xb8>)
 8000db2:	601a      	str	r2, [r3, #0]
 8000db4:	370c      	adds	r7, #12
 8000db6:	46bd      	mov	sp, r7
 8000db8:	bd90      	pop	{r4, r7, pc}
 8000dba:	bf00      	nop
 8000dbc:	20000828 	.word	0x20000828
 8000dc0:	2000082c 	.word	0x2000082c
 8000dc4:	40005c50 	.word	0x40005c50
 8000dc8:	20003002 	.word	0x20003002
 8000dcc:	40005c00 	.word	0x40005c00
 8000dd0:	ffff8080 	.word	0xffff8080
 8000dd4:	20000000 	.word	0x20000000
 8000dd8:	08000d25 	.word	0x08000d25
 8000ddc:	08000bfd 	.word	0x08000bfd

08000de0 <string_descriptor_proc>:
 8000de0:	b580      	push	{r7, lr}
 8000de2:	b082      	sub	sp, #8
 8000de4:	af00      	add	r7, sp, #0
 8000de6:	4b0a      	ldr	r3, [pc, #40]	; (8000e10 <string_descriptor_proc+0x30>)
 8000de8:	789b      	ldrb	r3, [r3, #2]
 8000dea:	607b      	str	r3, [r7, #4]
 8000dec:	4a09      	ldr	r2, [pc, #36]	; (8000e14 <string_descriptor_proc+0x34>)
 8000dee:	687b      	ldr	r3, [r7, #4]
 8000df0:	4413      	add	r3, r2
 8000df2:	781b      	ldrb	r3, [r3, #0]
 8000df4:	461a      	mov	r2, r3
 8000df6:	4b08      	ldr	r3, [pc, #32]	; (8000e18 <string_descriptor_proc+0x38>)
 8000df8:	601a      	str	r2, [r3, #0]
 8000dfa:	687b      	ldr	r3, [r7, #4]
 8000dfc:	4a05      	ldr	r2, [pc, #20]	; (8000e14 <string_descriptor_proc+0x34>)
 8000dfe:	4413      	add	r3, r2
 8000e00:	4a06      	ldr	r2, [pc, #24]	; (8000e1c <string_descriptor_proc+0x3c>)
 8000e02:	6013      	str	r3, [r2, #0]
 8000e04:	f7ff ff8e 	bl	8000d24 <plan_Data_IN_proc>
 8000e08:	3708      	adds	r7, #8
 8000e0a:	46bd      	mov	sp, r7
 8000e0c:	bd80      	pop	{r7, pc}
 8000e0e:	bf00      	nop
 8000e10:	2000081c 	.word	0x2000081c
 8000e14:	08001ca4 	.word	0x08001ca4
 8000e18:	20000828 	.word	0x20000828
 8000e1c:	2000082c 	.word	0x2000082c

08000e20 <get_descriptor_proc>:
 8000e20:	b580      	push	{r7, lr}
 8000e22:	b082      	sub	sp, #8
 8000e24:	af00      	add	r7, sp, #0
 8000e26:	4b48      	ldr	r3, [pc, #288]	; (8000f48 <get_descriptor_proc+0x128>)
 8000e28:	78db      	ldrb	r3, [r3, #3]
 8000e2a:	607b      	str	r3, [r7, #4]
 8000e2c:	4b46      	ldr	r3, [pc, #280]	; (8000f48 <get_descriptor_proc+0x128>)
 8000e2e:	799b      	ldrb	r3, [r3, #6]
 8000e30:	461a      	mov	r2, r3
 8000e32:	4b45      	ldr	r3, [pc, #276]	; (8000f48 <get_descriptor_proc+0x128>)
 8000e34:	79db      	ldrb	r3, [r3, #7]
 8000e36:	021b      	lsls	r3, r3, #8
 8000e38:	4313      	orrs	r3, r2
 8000e3a:	603b      	str	r3, [r7, #0]
 8000e3c:	687b      	ldr	r3, [r7, #4]
 8000e3e:	3b01      	subs	r3, #1
 8000e40:	2b21      	cmp	r3, #33	; 0x21
 8000e42:	d87a      	bhi.n	8000f3a <get_descriptor_proc+0x11a>
 8000e44:	a201      	add	r2, pc, #4	; (adr r2, 8000e4c <get_descriptor_proc+0x2c>)
 8000e46:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000e4a:	bf00      	nop
 8000e4c:	08000ed5 	.word	0x08000ed5
 8000e50:	08000eff 	.word	0x08000eff
 8000e54:	08000f2f 	.word	0x08000f2f
 8000e58:	08000f3b 	.word	0x08000f3b
 8000e5c:	08000f3b 	.word	0x08000f3b
 8000e60:	08000eed 	.word	0x08000eed
 8000e64:	08000f3b 	.word	0x08000f3b
 8000e68:	08000f3b 	.word	0x08000f3b
 8000e6c:	08000f3b 	.word	0x08000f3b
 8000e70:	08000f3b 	.word	0x08000f3b
 8000e74:	08000f3b 	.word	0x08000f3b
 8000e78:	08000f3b 	.word	0x08000f3b
 8000e7c:	08000f3b 	.word	0x08000f3b
 8000e80:	08000f3b 	.word	0x08000f3b
 8000e84:	08000f3b 	.word	0x08000f3b
 8000e88:	08000f3b 	.word	0x08000f3b
 8000e8c:	08000f3b 	.word	0x08000f3b
 8000e90:	08000f3b 	.word	0x08000f3b
 8000e94:	08000f3b 	.word	0x08000f3b
 8000e98:	08000f3b 	.word	0x08000f3b
 8000e9c:	08000f3b 	.word	0x08000f3b
 8000ea0:	08000f3b 	.word	0x08000f3b
 8000ea4:	08000f3b 	.word	0x08000f3b
 8000ea8:	08000f3b 	.word	0x08000f3b
 8000eac:	08000f3b 	.word	0x08000f3b
 8000eb0:	08000f3b 	.word	0x08000f3b
 8000eb4:	08000f3b 	.word	0x08000f3b
 8000eb8:	08000f3b 	.word	0x08000f3b
 8000ebc:	08000f3b 	.word	0x08000f3b
 8000ec0:	08000f3b 	.word	0x08000f3b
 8000ec4:	08000f3b 	.word	0x08000f3b
 8000ec8:	08000f3b 	.word	0x08000f3b
 8000ecc:	08000f3b 	.word	0x08000f3b
 8000ed0:	08000f17 	.word	0x08000f17
 8000ed4:	4a1d      	ldr	r2, [pc, #116]	; (8000f4c <get_descriptor_proc+0x12c>)
 8000ed6:	683b      	ldr	r3, [r7, #0]
 8000ed8:	6013      	str	r3, [r2, #0]
 8000eda:	4b1d      	ldr	r3, [pc, #116]	; (8000f50 <get_descriptor_proc+0x130>)
 8000edc:	4a1d      	ldr	r2, [pc, #116]	; (8000f54 <get_descriptor_proc+0x134>)
 8000ede:	601a      	str	r2, [r3, #0]
 8000ee0:	f7ff ff20 	bl	8000d24 <plan_Data_IN_proc>
 8000ee4:	481c      	ldr	r0, [pc, #112]	; (8000f58 <get_descriptor_proc+0x138>)
 8000ee6:	f7ff fb25 	bl	8000534 <uart_send_str>
 8000eea:	e02a      	b.n	8000f42 <get_descriptor_proc+0x122>
 8000eec:	f7ff fe5c 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 8000ef0:	4b1a      	ldr	r3, [pc, #104]	; (8000f5c <get_descriptor_proc+0x13c>)
 8000ef2:	4a1b      	ldr	r2, [pc, #108]	; (8000f60 <get_descriptor_proc+0x140>)
 8000ef4:	601a      	str	r2, [r3, #0]
 8000ef6:	481b      	ldr	r0, [pc, #108]	; (8000f64 <get_descriptor_proc+0x144>)
 8000ef8:	f7ff fb1c 	bl	8000534 <uart_send_str>
 8000efc:	e021      	b.n	8000f42 <get_descriptor_proc+0x122>
 8000efe:	4a13      	ldr	r2, [pc, #76]	; (8000f4c <get_descriptor_proc+0x12c>)
 8000f00:	683b      	ldr	r3, [r7, #0]
 8000f02:	6013      	str	r3, [r2, #0]
 8000f04:	4b12      	ldr	r3, [pc, #72]	; (8000f50 <get_descriptor_proc+0x130>)
 8000f06:	4a18      	ldr	r2, [pc, #96]	; (8000f68 <get_descriptor_proc+0x148>)
 8000f08:	601a      	str	r2, [r3, #0]
 8000f0a:	f7ff ff0b 	bl	8000d24 <plan_Data_IN_proc>
 8000f0e:	4817      	ldr	r0, [pc, #92]	; (8000f6c <get_descriptor_proc+0x14c>)
 8000f10:	f7ff fb10 	bl	8000534 <uart_send_str>
 8000f14:	e015      	b.n	8000f42 <get_descriptor_proc+0x122>
 8000f16:	4a0d      	ldr	r2, [pc, #52]	; (8000f4c <get_descriptor_proc+0x12c>)
 8000f18:	683b      	ldr	r3, [r7, #0]
 8000f1a:	6013      	str	r3, [r2, #0]
 8000f1c:	4b0c      	ldr	r3, [pc, #48]	; (8000f50 <get_descriptor_proc+0x130>)
 8000f1e:	4a14      	ldr	r2, [pc, #80]	; (8000f70 <get_descriptor_proc+0x150>)
 8000f20:	601a      	str	r2, [r3, #0]
 8000f22:	f7ff feff 	bl	8000d24 <plan_Data_IN_proc>
 8000f26:	4813      	ldr	r0, [pc, #76]	; (8000f74 <get_descriptor_proc+0x154>)
 8000f28:	f7ff fb04 	bl	8000534 <uart_send_str>
 8000f2c:	e009      	b.n	8000f42 <get_descriptor_proc+0x122>
 8000f2e:	f7ff ff57 	bl	8000de0 <string_descriptor_proc>
 8000f32:	4811      	ldr	r0, [pc, #68]	; (8000f78 <get_descriptor_proc+0x158>)
 8000f34:	f7ff fafe 	bl	8000534 <uart_send_str>
 8000f38:	e003      	b.n	8000f42 <get_descriptor_proc+0x122>
 8000f3a:	4810      	ldr	r0, [pc, #64]	; (8000f7c <get_descriptor_proc+0x15c>)
 8000f3c:	6879      	ldr	r1, [r7, #4]
 8000f3e:	f000 fc9b 	bl	8001878 <xprintf>
 8000f42:	3708      	adds	r7, #8
 8000f44:	46bd      	mov	sp, r7
 8000f46:	bd80      	pop	{r7, pc}
 8000f48:	2000081c 	.word	0x2000081c
 8000f4c:	20000828 	.word	0x20000828
 8000f50:	2000082c 	.word	0x2000082c
 8000f54:	08001c6c 	.word	0x08001c6c
 8000f58:	08001d08 	.word	0x08001d08
 8000f5c:	20000000 	.word	0x20000000
 8000f60:	08000bfd 	.word	0x08000bfd
 8000f64:	08001d14 	.word	0x08001d14
 8000f68:	08001c80 	.word	0x08001c80
 8000f6c:	08001d20 	.word	0x08001d20
 8000f70:	08001c40 	.word	0x08001c40
 8000f74:	08001d30 	.word	0x08001d30
 8000f78:	08001d3c 	.word	0x08001d3c
 8000f7c:	08001d48 	.word	0x08001d48

08000f80 <get_interface_proc>:
 8000f80:	b580      	push	{r7, lr}
 8000f82:	af00      	add	r7, sp, #0
 8000f84:	4b04      	ldr	r3, [pc, #16]	; (8000f98 <get_interface_proc+0x18>)
 8000f86:	2201      	movs	r2, #1
 8000f88:	601a      	str	r2, [r3, #0]
 8000f8a:	4b04      	ldr	r3, [pc, #16]	; (8000f9c <get_interface_proc+0x1c>)
 8000f8c:	4a04      	ldr	r2, [pc, #16]	; (8000fa0 <get_interface_proc+0x20>)
 8000f8e:	601a      	str	r2, [r3, #0]
 8000f90:	f7ff fec8 	bl	8000d24 <plan_Data_IN_proc>
 8000f94:	bd80      	pop	{r7, pc}
 8000f96:	bf00      	nop
 8000f98:	20000828 	.word	0x20000828
 8000f9c:	2000082c 	.word	0x2000082c
 8000fa0:	20000834 	.word	0x20000834

08000fa4 <standart_request_proc>:
 8000fa4:	b590      	push	{r4, r7, lr}
 8000fa6:	b083      	sub	sp, #12
 8000fa8:	af00      	add	r7, sp, #0
 8000faa:	4b37      	ldr	r3, [pc, #220]	; (8001088 <standart_request_proc+0xe4>)
 8000fac:	785b      	ldrb	r3, [r3, #1]
 8000fae:	71fb      	strb	r3, [r7, #7]
 8000fb0:	79fb      	ldrb	r3, [r7, #7]
 8000fb2:	3b01      	subs	r3, #1
 8000fb4:	2b09      	cmp	r3, #9
 8000fb6:	d84b      	bhi.n	8001050 <standart_request_proc+0xac>
 8000fb8:	a201      	add	r2, pc, #4	; (adr r2, 8000fc0 <standart_request_proc+0x1c>)
 8000fba:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000fbe:	bf00      	nop
 8000fc0:	08001039 	.word	0x08001039
 8000fc4:	08001051 	.word	0x08001051
 8000fc8:	08001045 	.word	0x08001045
 8000fcc:	08001051 	.word	0x08001051
 8000fd0:	08001005 	.word	0x08001005
 8000fd4:	08001021 	.word	0x08001021
 8000fd8:	08001051 	.word	0x08001051
 8000fdc:	08001051 	.word	0x08001051
 8000fe0:	08000fe9 	.word	0x08000fe9
 8000fe4:	0800102d 	.word	0x0800102d
 8000fe8:	4b27      	ldr	r3, [pc, #156]	; (8001088 <standart_request_proc+0xe4>)
 8000fea:	789b      	ldrb	r3, [r3, #2]
 8000fec:	b29a      	uxth	r2, r3
 8000fee:	4b27      	ldr	r3, [pc, #156]	; (800108c <standart_request_proc+0xe8>)
 8000ff0:	801a      	strh	r2, [r3, #0]
 8000ff2:	f7ff fdd9 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 8000ff6:	4b26      	ldr	r3, [pc, #152]	; (8001090 <standart_request_proc+0xec>)
 8000ff8:	4a26      	ldr	r2, [pc, #152]	; (8001094 <standart_request_proc+0xf0>)
 8000ffa:	601a      	str	r2, [r3, #0]
 8000ffc:	4826      	ldr	r0, [pc, #152]	; (8001098 <standart_request_proc+0xf4>)
 8000ffe:	f7ff fa99 	bl	8000534 <uart_send_str>
 8001002:	e03d      	b.n	8001080 <standart_request_proc+0xdc>
 8001004:	4b20      	ldr	r3, [pc, #128]	; (8001088 <standart_request_proc+0xe4>)
 8001006:	789b      	ldrb	r3, [r3, #2]
 8001008:	b29a      	uxth	r2, r3
 800100a:	4b24      	ldr	r3, [pc, #144]	; (800109c <standart_request_proc+0xf8>)
 800100c:	801a      	strh	r2, [r3, #0]
 800100e:	f7ff fdcb 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 8001012:	4b1f      	ldr	r3, [pc, #124]	; (8001090 <standart_request_proc+0xec>)
 8001014:	4a22      	ldr	r2, [pc, #136]	; (80010a0 <standart_request_proc+0xfc>)
 8001016:	601a      	str	r2, [r3, #0]
 8001018:	4822      	ldr	r0, [pc, #136]	; (80010a4 <standart_request_proc+0x100>)
 800101a:	f7ff fa8b 	bl	8000534 <uart_send_str>
 800101e:	e02f      	b.n	8001080 <standart_request_proc+0xdc>
 8001020:	4821      	ldr	r0, [pc, #132]	; (80010a8 <standart_request_proc+0x104>)
 8001022:	f7ff fa87 	bl	8000534 <uart_send_str>
 8001026:	f7ff fefb 	bl	8000e20 <get_descriptor_proc>
 800102a:	e029      	b.n	8001080 <standart_request_proc+0xdc>
 800102c:	481f      	ldr	r0, [pc, #124]	; (80010ac <standart_request_proc+0x108>)
 800102e:	f7ff fa81 	bl	8000534 <uart_send_str>
 8001032:	f7ff ffa5 	bl	8000f80 <get_interface_proc>
 8001036:	e023      	b.n	8001080 <standart_request_proc+0xdc>
 8001038:	481d      	ldr	r0, [pc, #116]	; (80010b0 <standart_request_proc+0x10c>)
 800103a:	f7ff fa7b 	bl	8000534 <uart_send_str>
 800103e:	f7ff fdb3 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 8001042:	e01d      	b.n	8001080 <standart_request_proc+0xdc>
 8001044:	481a      	ldr	r0, [pc, #104]	; (80010b0 <standart_request_proc+0x10c>)
 8001046:	f7ff fa75 	bl	8000534 <uart_send_str>
 800104a:	f7ff fdad 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 800104e:	e017      	b.n	8001080 <standart_request_proc+0xdc>
 8001050:	4b18      	ldr	r3, [pc, #96]	; (80010b4 <standart_request_proc+0x110>)
 8001052:	681b      	ldr	r3, [r3, #0]
 8001054:	b29b      	uxth	r3, r3
 8001056:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 800105a:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800105e:	b29c      	uxth	r4, r3
 8001060:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8001064:	b29c      	uxth	r4, r3
 8001066:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 800106a:	b29c      	uxth	r4, r3
 800106c:	4a11      	ldr	r2, [pc, #68]	; (80010b4 <standart_request_proc+0x110>)
 800106e:	4b12      	ldr	r3, [pc, #72]	; (80010b8 <standart_request_proc+0x114>)
 8001070:	4323      	orrs	r3, r4
 8001072:	b29b      	uxth	r3, r3
 8001074:	6013      	str	r3, [r2, #0]
 8001076:	79fb      	ldrb	r3, [r7, #7]
 8001078:	4810      	ldr	r0, [pc, #64]	; (80010bc <standart_request_proc+0x118>)
 800107a:	4619      	mov	r1, r3
 800107c:	f000 fbfc 	bl	8001878 <xprintf>
 8001080:	370c      	adds	r7, #12
 8001082:	46bd      	mov	sp, r7
 8001084:	bd90      	pop	{r4, r7, pc}
 8001086:	bf00      	nop
 8001088:	2000081c 	.word	0x2000081c
 800108c:	2000081a 	.word	0x2000081a
 8001090:	20000000 	.word	0x20000000
 8001094:	08000cd5 	.word	0x08000cd5
 8001098:	08001d50 	.word	0x08001d50
 800109c:	20000818 	.word	0x20000818
 80010a0:	08000c51 	.word	0x08000c51
 80010a4:	08001d64 	.word	0x08001d64
 80010a8:	08001d74 	.word	0x08001d74
 80010ac:	08001d84 	.word	0x08001d84
 80010b0:	08001d94 	.word	0x08001d94
 80010b4:	40005c00 	.word	0x40005c00
 80010b8:	ffff8080 	.word	0xffff8080
 80010bc:	08001d48 	.word	0x08001d48

080010c0 <output0_for_setreport_proc>:
 80010c0:	b590      	push	{r4, r7, lr}
 80010c2:	b083      	sub	sp, #12
 80010c4:	af00      	add	r7, sp, #0
 80010c6:	4b17      	ldr	r3, [pc, #92]	; (8001124 <output0_for_setreport_proc+0x64>)
 80010c8:	681b      	ldr	r3, [r3, #0]
 80010ca:	b29b      	uxth	r3, r3
 80010cc:	461a      	mov	r2, r3
 80010ce:	4b16      	ldr	r3, [pc, #88]	; (8001128 <output0_for_setreport_proc+0x68>)
 80010d0:	4413      	add	r3, r2
 80010d2:	005b      	lsls	r3, r3, #1
 80010d4:	681b      	ldr	r3, [r3, #0]
 80010d6:	b29b      	uxth	r3, r3
 80010d8:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80010dc:	607b      	str	r3, [r7, #4]
 80010de:	4813      	ldr	r0, [pc, #76]	; (800112c <output0_for_setreport_proc+0x6c>)
 80010e0:	2180      	movs	r1, #128	; 0x80
 80010e2:	2201      	movs	r2, #1
 80010e4:	f7ff fb72 	bl	80007cc <pma_to_user_copy>
 80010e8:	f7ff fd5e 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 80010ec:	4b10      	ldr	r3, [pc, #64]	; (8001130 <output0_for_setreport_proc+0x70>)
 80010ee:	4a11      	ldr	r2, [pc, #68]	; (8001134 <output0_for_setreport_proc+0x74>)
 80010f0:	601a      	str	r2, [r3, #0]
 80010f2:	4b11      	ldr	r3, [pc, #68]	; (8001138 <output0_for_setreport_proc+0x78>)
 80010f4:	681b      	ldr	r3, [r3, #0]
 80010f6:	b29b      	uxth	r3, r3
 80010f8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80010fc:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001100:	b29c      	uxth	r4, r3
 8001102:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8001106:	b29c      	uxth	r4, r3
 8001108:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 800110c:	b29c      	uxth	r4, r3
 800110e:	4a0a      	ldr	r2, [pc, #40]	; (8001138 <output0_for_setreport_proc+0x78>)
 8001110:	4b0a      	ldr	r3, [pc, #40]	; (800113c <output0_for_setreport_proc+0x7c>)
 8001112:	4323      	orrs	r3, r4
 8001114:	b29b      	uxth	r3, r3
 8001116:	6013      	str	r3, [r2, #0]
 8001118:	4b09      	ldr	r3, [pc, #36]	; (8001140 <output0_for_setreport_proc+0x80>)
 800111a:	4a0a      	ldr	r2, [pc, #40]	; (8001144 <output0_for_setreport_proc+0x84>)
 800111c:	601a      	str	r2, [r3, #0]
 800111e:	370c      	adds	r7, #12
 8001120:	46bd      	mov	sp, r7
 8001122:	bd90      	pop	{r4, r7, pc}
 8001124:	40005c50 	.word	0x40005c50
 8001128:	20003006 	.word	0x20003006
 800112c:	20000825 	.word	0x20000825
 8001130:	20000000 	.word	0x20000000
 8001134:	08000b29 	.word	0x08000b29
 8001138:	40005c00 	.word	0x40005c00
 800113c:	ffff8080 	.word	0xffff8080
 8001140:	20000004 	.word	0x20000004
 8001144:	08000b71 	.word	0x08000b71

08001148 <hid_class_request_proc>:
 8001148:	b590      	push	{r4, r7, lr}
 800114a:	b083      	sub	sp, #12
 800114c:	af00      	add	r7, sp, #0
 800114e:	4b2e      	ldr	r3, [pc, #184]	; (8001208 <hid_class_request_proc+0xc0>)
 8001150:	785b      	ldrb	r3, [r3, #1]
 8001152:	71fb      	strb	r3, [r7, #7]
 8001154:	4b2c      	ldr	r3, [pc, #176]	; (8001208 <hid_class_request_proc+0xc0>)
 8001156:	799b      	ldrb	r3, [r3, #6]
 8001158:	b29a      	uxth	r2, r3
 800115a:	4b2b      	ldr	r3, [pc, #172]	; (8001208 <hid_class_request_proc+0xc0>)
 800115c:	79db      	ldrb	r3, [r3, #7]
 800115e:	021b      	lsls	r3, r3, #8
 8001160:	b29b      	uxth	r3, r3
 8001162:	4313      	orrs	r3, r2
 8001164:	b29b      	uxth	r3, r3
 8001166:	80bb      	strh	r3, [r7, #4]
 8001168:	79fb      	ldrb	r3, [r7, #7]
 800116a:	2b09      	cmp	r3, #9
 800116c:	d016      	beq.n	800119c <hid_class_request_proc+0x54>
 800116e:	2b0a      	cmp	r3, #10
 8001170:	d002      	beq.n	8001178 <hid_class_request_proc+0x30>
 8001172:	2b01      	cmp	r3, #1
 8001174:	d006      	beq.n	8001184 <hid_class_request_proc+0x3c>
 8001176:	e02b      	b.n	80011d0 <hid_class_request_proc+0x88>
 8001178:	f7ff fd16 	bl	8000ba8 <plan_ZeroLength_IN_proc>
 800117c:	4823      	ldr	r0, [pc, #140]	; (800120c <hid_class_request_proc+0xc4>)
 800117e:	f7ff f9d9 	bl	8000534 <uart_send_str>
 8001182:	e03d      	b.n	8001200 <hid_class_request_proc+0xb8>
 8001184:	4b22      	ldr	r3, [pc, #136]	; (8001210 <hid_class_request_proc+0xc8>)
 8001186:	2201      	movs	r2, #1
 8001188:	601a      	str	r2, [r3, #0]
 800118a:	4b22      	ldr	r3, [pc, #136]	; (8001214 <hid_class_request_proc+0xcc>)
 800118c:	4a22      	ldr	r2, [pc, #136]	; (8001218 <hid_class_request_proc+0xd0>)
 800118e:	601a      	str	r2, [r3, #0]
 8001190:	f7ff fdc8 	bl	8000d24 <plan_Data_IN_proc>
 8001194:	4821      	ldr	r0, [pc, #132]	; (800121c <hid_class_request_proc+0xd4>)
 8001196:	f7ff f9cd 	bl	8000534 <uart_send_str>
 800119a:	e031      	b.n	8001200 <hid_class_request_proc+0xb8>
 800119c:	4b20      	ldr	r3, [pc, #128]	; (8001220 <hid_class_request_proc+0xd8>)
 800119e:	4a21      	ldr	r2, [pc, #132]	; (8001224 <hid_class_request_proc+0xdc>)
 80011a0:	601a      	str	r2, [r3, #0]
 80011a2:	4b21      	ldr	r3, [pc, #132]	; (8001228 <hid_class_request_proc+0xe0>)
 80011a4:	681b      	ldr	r3, [r3, #0]
 80011a6:	b29b      	uxth	r3, r3
 80011a8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80011ac:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80011b0:	b29c      	uxth	r4, r3
 80011b2:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80011b6:	b29c      	uxth	r4, r3
 80011b8:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80011bc:	b29c      	uxth	r4, r3
 80011be:	4a1a      	ldr	r2, [pc, #104]	; (8001228 <hid_class_request_proc+0xe0>)
 80011c0:	4b1a      	ldr	r3, [pc, #104]	; (800122c <hid_class_request_proc+0xe4>)
 80011c2:	4323      	orrs	r3, r4
 80011c4:	b29b      	uxth	r3, r3
 80011c6:	6013      	str	r3, [r2, #0]
 80011c8:	4819      	ldr	r0, [pc, #100]	; (8001230 <hid_class_request_proc+0xe8>)
 80011ca:	f7ff f9b3 	bl	8000534 <uart_send_str>
 80011ce:	e017      	b.n	8001200 <hid_class_request_proc+0xb8>
 80011d0:	4b15      	ldr	r3, [pc, #84]	; (8001228 <hid_class_request_proc+0xe0>)
 80011d2:	681b      	ldr	r3, [r3, #0]
 80011d4:	b29b      	uxth	r3, r3
 80011d6:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80011da:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80011de:	b29c      	uxth	r4, r3
 80011e0:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80011e4:	b29c      	uxth	r4, r3
 80011e6:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80011ea:	b29c      	uxth	r4, r3
 80011ec:	4a0e      	ldr	r2, [pc, #56]	; (8001228 <hid_class_request_proc+0xe0>)
 80011ee:	4b0f      	ldr	r3, [pc, #60]	; (800122c <hid_class_request_proc+0xe4>)
 80011f0:	4323      	orrs	r3, r4
 80011f2:	b29b      	uxth	r3, r3
 80011f4:	6013      	str	r3, [r2, #0]
 80011f6:	79fb      	ldrb	r3, [r7, #7]
 80011f8:	480e      	ldr	r0, [pc, #56]	; (8001234 <hid_class_request_proc+0xec>)
 80011fa:	4619      	mov	r1, r3
 80011fc:	f000 fb3c 	bl	8001878 <xprintf>
 8001200:	370c      	adds	r7, #12
 8001202:	46bd      	mov	sp, r7
 8001204:	bd90      	pop	{r4, r7, pc}
 8001206:	bf00      	nop
 8001208:	2000081c 	.word	0x2000081c
 800120c:	08001da4 	.word	0x08001da4
 8001210:	20000828 	.word	0x20000828
 8001214:	2000082c 	.word	0x2000082c
 8001218:	20000824 	.word	0x20000824
 800121c:	08001db0 	.word	0x08001db0
 8001220:	20000004 	.word	0x20000004
 8001224:	080010c1 	.word	0x080010c1
 8001228:	40005c00 	.word	0x40005c00
 800122c:	ffff8080 	.word	0xffff8080
 8001230:	08001dc0 	.word	0x08001dc0
 8001234:	08001d48 	.word	0x08001d48

08001238 <setup0_proc>:
 8001238:	b580      	push	{r7, lr}
 800123a:	b082      	sub	sp, #8
 800123c:	af00      	add	r7, sp, #0
 800123e:	4b15      	ldr	r3, [pc, #84]	; (8001294 <setup0_proc+0x5c>)
 8001240:	681b      	ldr	r3, [r3, #0]
 8001242:	b29b      	uxth	r3, r3
 8001244:	461a      	mov	r2, r3
 8001246:	4b14      	ldr	r3, [pc, #80]	; (8001298 <setup0_proc+0x60>)
 8001248:	4413      	add	r3, r2
 800124a:	005b      	lsls	r3, r3, #1
 800124c:	681b      	ldr	r3, [r3, #0]
 800124e:	b29b      	uxth	r3, r3
 8001250:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8001254:	607b      	str	r3, [r7, #4]
 8001256:	4811      	ldr	r0, [pc, #68]	; (800129c <setup0_proc+0x64>)
 8001258:	2180      	movs	r1, #128	; 0x80
 800125a:	2208      	movs	r2, #8
 800125c:	f7ff fab6 	bl	80007cc <pma_to_user_copy>
 8001260:	4b0e      	ldr	r3, [pc, #56]	; (800129c <setup0_proc+0x64>)
 8001262:	781b      	ldrb	r3, [r3, #0]
 8001264:	70fb      	strb	r3, [r7, #3]
 8001266:	78fb      	ldrb	r3, [r7, #3]
 8001268:	f003 0360 	and.w	r3, r3, #96	; 0x60
 800126c:	2b00      	cmp	r3, #0
 800126e:	d002      	beq.n	8001276 <setup0_proc+0x3e>
 8001270:	2b20      	cmp	r3, #32
 8001272:	d006      	beq.n	8001282 <setup0_proc+0x4a>
 8001274:	e00b      	b.n	800128e <setup0_proc+0x56>
 8001276:	480a      	ldr	r0, [pc, #40]	; (80012a0 <setup0_proc+0x68>)
 8001278:	f7ff f95c 	bl	8000534 <uart_send_str>
 800127c:	f7ff fe92 	bl	8000fa4 <standart_request_proc>
 8001280:	e005      	b.n	800128e <setup0_proc+0x56>
 8001282:	4808      	ldr	r0, [pc, #32]	; (80012a4 <setup0_proc+0x6c>)
 8001284:	f7ff f956 	bl	8000534 <uart_send_str>
 8001288:	f7ff ff5e 	bl	8001148 <hid_class_request_proc>
 800128c:	bf00      	nop
 800128e:	3708      	adds	r7, #8
 8001290:	46bd      	mov	sp, r7
 8001292:	bd80      	pop	{r7, pc}
 8001294:	40005c50 	.word	0x40005c50
 8001298:	20003006 	.word	0x20003006
 800129c:	2000081c 	.word	0x2000081c
 80012a0:	08001dd0 	.word	0x08001dd0
 80012a4:	08001de4 	.word	0x08001de4

080012a8 <write_buttons_state_to_host>:
 80012a8:	b598      	push	{r3, r4, r7, lr}
 80012aa:	af00      	add	r7, sp, #0
 80012ac:	4811      	ldr	r0, [pc, #68]	; (80012f4 <write_buttons_state_to_host+0x4c>)
 80012ae:	21c0      	movs	r1, #192	; 0xc0
 80012b0:	2201      	movs	r2, #1
 80012b2:	f7ff fa3b 	bl	800072c <user_to_pma_copy>
 80012b6:	4b10      	ldr	r3, [pc, #64]	; (80012f8 <write_buttons_state_to_host+0x50>)
 80012b8:	681b      	ldr	r3, [r3, #0]
 80012ba:	b29b      	uxth	r3, r3
 80012bc:	461a      	mov	r2, r3
 80012be:	4b0f      	ldr	r3, [pc, #60]	; (80012fc <write_buttons_state_to_host+0x54>)
 80012c0:	4413      	add	r3, r2
 80012c2:	005b      	lsls	r3, r3, #1
 80012c4:	461a      	mov	r2, r3
 80012c6:	2301      	movs	r3, #1
 80012c8:	6013      	str	r3, [r2, #0]
 80012ca:	4b0d      	ldr	r3, [pc, #52]	; (8001300 <write_buttons_state_to_host+0x58>)
 80012cc:	681b      	ldr	r3, [r3, #0]
 80012ce:	b29b      	uxth	r3, r3
 80012d0:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 80012d4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80012d8:	b29c      	uxth	r4, r3
 80012da:	f084 0310 	eor.w	r3, r4, #16
 80012de:	b29c      	uxth	r4, r3
 80012e0:	f084 0320 	eor.w	r3, r4, #32
 80012e4:	b29c      	uxth	r4, r3
 80012e6:	4a06      	ldr	r2, [pc, #24]	; (8001300 <write_buttons_state_to_host+0x58>)
 80012e8:	4b06      	ldr	r3, [pc, #24]	; (8001304 <write_buttons_state_to_host+0x5c>)
 80012ea:	4323      	orrs	r3, r4
 80012ec:	b29b      	uxth	r3, r3
 80012ee:	6013      	str	r3, [r2, #0]
 80012f0:	bd98      	pop	{r3, r4, r7, pc}
 80012f2:	bf00      	nop
 80012f4:	20000824 	.word	0x20000824
 80012f8:	40005c50 	.word	0x40005c50
 80012fc:	2000300a 	.word	0x2000300a
 8001300:	40005c04 	.word	0x40005c04
 8001304:	ffff8080 	.word	0xffff8080

08001308 <USB_LP_CAN1_RX0_IRQHandler>:
 8001308:	b580      	push	{r7, lr}
 800130a:	b082      	sub	sp, #8
 800130c:	af00      	add	r7, sp, #0
 800130e:	2300      	movs	r3, #0
 8001310:	80fb      	strh	r3, [r7, #6]
 8001312:	2300      	movs	r3, #0
 8001314:	80bb      	strh	r3, [r7, #4]
 8001316:	2300      	movs	r3, #0
 8001318:	70fb      	strb	r3, [r7, #3]
 800131a:	4b64      	ldr	r3, [pc, #400]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 800131c:	681b      	ldr	r3, [r3, #0]
 800131e:	80bb      	strh	r3, [r7, #4]
 8001320:	88bb      	ldrh	r3, [r7, #4]
 8001322:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001326:	2b00      	cmp	r3, #0
 8001328:	d008      	beq.n	800133c <USB_LP_CAN1_RX0_IRQHandler+0x34>
 800132a:	4b60      	ldr	r3, [pc, #384]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 800132c:	f64f 32ff 	movw	r2, #64511	; 0xfbff
 8001330:	601a      	str	r2, [r3, #0]
 8001332:	f7ff fadf 	bl	80008f4 <usb_reset>
 8001336:	485e      	ldr	r0, [pc, #376]	; (80014b0 <USB_LP_CAN1_RX0_IRQHandler+0x1a8>)
 8001338:	f7ff f8fc 	bl	8000534 <uart_send_str>
 800133c:	88bb      	ldrh	r3, [r7, #4]
 800133e:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8001342:	2b00      	cmp	r3, #0
 8001344:	d003      	beq.n	800134e <USB_LP_CAN1_RX0_IRQHandler+0x46>
 8001346:	4b59      	ldr	r3, [pc, #356]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 8001348:	f64f 62ff 	movw	r2, #65279	; 0xfeff
 800134c:	601a      	str	r2, [r3, #0]
 800134e:	88bb      	ldrh	r3, [r7, #4]
 8001350:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 8001354:	2b00      	cmp	r3, #0
 8001356:	d005      	beq.n	8001364 <USB_LP_CAN1_RX0_IRQHandler+0x5c>
 8001358:	4b54      	ldr	r3, [pc, #336]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 800135a:	f24f 72ff 	movw	r2, #63487	; 0xf7ff
 800135e:	601a      	str	r2, [r3, #0]
 8001360:	f7fe ff0c 	bl	800017c <led_off>
 8001364:	88bb      	ldrh	r3, [r7, #4]
 8001366:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 800136a:	2b00      	cmp	r3, #0
 800136c:	d003      	beq.n	8001376 <USB_LP_CAN1_RX0_IRQHandler+0x6e>
 800136e:	4b4f      	ldr	r3, [pc, #316]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 8001370:	f64b 72ff 	movw	r2, #49151	; 0xbfff
 8001374:	601a      	str	r2, [r3, #0]
 8001376:	88bb      	ldrh	r3, [r7, #4]
 8001378:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 800137c:	2b00      	cmp	r3, #0
 800137e:	d003      	beq.n	8001388 <USB_LP_CAN1_RX0_IRQHandler+0x80>
 8001380:	4b4a      	ldr	r3, [pc, #296]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 8001382:	f64d 72ff 	movw	r2, #57343	; 0xdfff
 8001386:	601a      	str	r2, [r3, #0]
 8001388:	e084      	b.n	8001494 <USB_LP_CAN1_RX0_IRQHandler+0x18c>
 800138a:	88bb      	ldrh	r3, [r7, #4]
 800138c:	b2db      	uxtb	r3, r3
 800138e:	f003 030f 	and.w	r3, r3, #15
 8001392:	70fb      	strb	r3, [r7, #3]
 8001394:	78fb      	ldrb	r3, [r7, #3]
 8001396:	2b00      	cmp	r3, #0
 8001398:	d13f      	bne.n	800141a <USB_LP_CAN1_RX0_IRQHandler+0x112>
 800139a:	4b46      	ldr	r3, [pc, #280]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 800139c:	681b      	ldr	r3, [r3, #0]
 800139e:	803b      	strh	r3, [r7, #0]
 80013a0:	88bb      	ldrh	r3, [r7, #4]
 80013a2:	f003 0310 	and.w	r3, r3, #16
 80013a6:	2b00      	cmp	r3, #0
 80013a8:	d10f      	bne.n	80013ca <USB_LP_CAN1_RX0_IRQHandler+0xc2>
 80013aa:	4a42      	ldr	r2, [pc, #264]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 80013ac:	4b41      	ldr	r3, [pc, #260]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 80013ae:	681b      	ldr	r3, [r3, #0]
 80013b0:	b29b      	uxth	r3, r3
 80013b2:	4619      	mov	r1, r3
 80013b4:	f648 730f 	movw	r3, #36623	; 0x8f0f
 80013b8:	400b      	ands	r3, r1
 80013ba:	6013      	str	r3, [r2, #0]
 80013bc:	483e      	ldr	r0, [pc, #248]	; (80014b8 <USB_LP_CAN1_RX0_IRQHandler+0x1b0>)
 80013be:	f7ff f8b9 	bl	8000534 <uart_send_str>
 80013c2:	4b3e      	ldr	r3, [pc, #248]	; (80014bc <USB_LP_CAN1_RX0_IRQHandler+0x1b4>)
 80013c4:	681b      	ldr	r3, [r3, #0]
 80013c6:	4798      	blx	r3
 80013c8:	e026      	b.n	8001418 <USB_LP_CAN1_RX0_IRQHandler+0x110>
 80013ca:	883b      	ldrh	r3, [r7, #0]
 80013cc:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80013d0:	2b00      	cmp	r3, #0
 80013d2:	d00e      	beq.n	80013f2 <USB_LP_CAN1_RX0_IRQHandler+0xea>
 80013d4:	4a37      	ldr	r2, [pc, #220]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 80013d6:	4b37      	ldr	r3, [pc, #220]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 80013d8:	681b      	ldr	r3, [r3, #0]
 80013da:	b29b      	uxth	r3, r3
 80013dc:	4619      	mov	r1, r3
 80013de:	f640 738f 	movw	r3, #3983	; 0xf8f
 80013e2:	400b      	ands	r3, r1
 80013e4:	6013      	str	r3, [r2, #0]
 80013e6:	4836      	ldr	r0, [pc, #216]	; (80014c0 <USB_LP_CAN1_RX0_IRQHandler+0x1b8>)
 80013e8:	f7ff f8a4 	bl	8000534 <uart_send_str>
 80013ec:	f7ff ff24 	bl	8001238 <setup0_proc>
 80013f0:	e012      	b.n	8001418 <USB_LP_CAN1_RX0_IRQHandler+0x110>
 80013f2:	883b      	ldrh	r3, [r7, #0]
 80013f4:	b21b      	sxth	r3, r3
 80013f6:	2b00      	cmp	r3, #0
 80013f8:	da0e      	bge.n	8001418 <USB_LP_CAN1_RX0_IRQHandler+0x110>
 80013fa:	4a2e      	ldr	r2, [pc, #184]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 80013fc:	4b2d      	ldr	r3, [pc, #180]	; (80014b4 <USB_LP_CAN1_RX0_IRQHandler+0x1ac>)
 80013fe:	681b      	ldr	r3, [r3, #0]
 8001400:	b29b      	uxth	r3, r3
 8001402:	4619      	mov	r1, r3
 8001404:	f640 738f 	movw	r3, #3983	; 0xf8f
 8001408:	400b      	ands	r3, r1
 800140a:	6013      	str	r3, [r2, #0]
 800140c:	482d      	ldr	r0, [pc, #180]	; (80014c4 <USB_LP_CAN1_RX0_IRQHandler+0x1bc>)
 800140e:	f7ff f891 	bl	8000534 <uart_send_str>
 8001412:	4b2d      	ldr	r3, [pc, #180]	; (80014c8 <USB_LP_CAN1_RX0_IRQHandler+0x1c0>)
 8001414:	681b      	ldr	r3, [r3, #0]
 8001416:	4798      	blx	r3
 8001418:	e03c      	b.n	8001494 <USB_LP_CAN1_RX0_IRQHandler+0x18c>
 800141a:	78fb      	ldrb	r3, [r7, #3]
 800141c:	009b      	lsls	r3, r3, #2
 800141e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001422:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001426:	681b      	ldr	r3, [r3, #0]
 8001428:	80fb      	strh	r3, [r7, #6]
 800142a:	88fb      	ldrh	r3, [r7, #6]
 800142c:	b21b      	sxth	r3, r3
 800142e:	2b00      	cmp	r3, #0
 8001430:	da12      	bge.n	8001458 <USB_LP_CAN1_RX0_IRQHandler+0x150>
 8001432:	78fb      	ldrb	r3, [r7, #3]
 8001434:	009b      	lsls	r3, r3, #2
 8001436:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800143a:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800143e:	78fa      	ldrb	r2, [r7, #3]
 8001440:	0092      	lsls	r2, r2, #2
 8001442:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001446:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800144a:	6812      	ldr	r2, [r2, #0]
 800144c:	b292      	uxth	r2, r2
 800144e:	4611      	mov	r1, r2
 8001450:	f640 728f 	movw	r2, #3983	; 0xf8f
 8001454:	400a      	ands	r2, r1
 8001456:	601a      	str	r2, [r3, #0]
 8001458:	88fb      	ldrh	r3, [r7, #6]
 800145a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800145e:	2b00      	cmp	r3, #0
 8001460:	d018      	beq.n	8001494 <USB_LP_CAN1_RX0_IRQHandler+0x18c>
 8001462:	78fb      	ldrb	r3, [r7, #3]
 8001464:	009b      	lsls	r3, r3, #2
 8001466:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800146a:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800146e:	78fa      	ldrb	r2, [r7, #3]
 8001470:	0092      	lsls	r2, r2, #2
 8001472:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001476:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800147a:	6812      	ldr	r2, [r2, #0]
 800147c:	b292      	uxth	r2, r2
 800147e:	4611      	mov	r1, r2
 8001480:	f648 720f 	movw	r2, #36623	; 0x8f0f
 8001484:	400a      	ands	r2, r1
 8001486:	601a      	str	r2, [r3, #0]
 8001488:	78fb      	ldrb	r3, [r7, #3]
 800148a:	2b01      	cmp	r3, #1
 800148c:	d102      	bne.n	8001494 <USB_LP_CAN1_RX0_IRQHandler+0x18c>
 800148e:	480f      	ldr	r0, [pc, #60]	; (80014cc <USB_LP_CAN1_RX0_IRQHandler+0x1c4>)
 8001490:	f7ff f850 	bl	8000534 <uart_send_str>
 8001494:	4b05      	ldr	r3, [pc, #20]	; (80014ac <USB_LP_CAN1_RX0_IRQHandler+0x1a4>)
 8001496:	681b      	ldr	r3, [r3, #0]
 8001498:	80bb      	strh	r3, [r7, #4]
 800149a:	88bb      	ldrh	r3, [r7, #4]
 800149c:	b21b      	sxth	r3, r3
 800149e:	2b00      	cmp	r3, #0
 80014a0:	f6ff af73 	blt.w	800138a <USB_LP_CAN1_RX0_IRQHandler+0x82>
 80014a4:	3708      	adds	r7, #8
 80014a6:	46bd      	mov	sp, r7
 80014a8:	bd80      	pop	{r7, pc}
 80014aa:	bf00      	nop
 80014ac:	40005c44 	.word	0x40005c44
 80014b0:	08001df4 	.word	0x08001df4
 80014b4:	40005c00 	.word	0x40005c00
 80014b8:	08001dfc 	.word	0x08001dfc
 80014bc:	20000000 	.word	0x20000000
 80014c0:	08001e08 	.word	0x08001e08
 80014c4:	08001e14 	.word	0x08001e14
 80014c8:	20000004 	.word	0x20000004
 80014cc:	08001e20 	.word	0x08001e20

080014d0 <xputc>:
 80014d0:	b580      	push	{r7, lr}
 80014d2:	b082      	sub	sp, #8
 80014d4:	af00      	add	r7, sp, #0
 80014d6:	4603      	mov	r3, r0
 80014d8:	71fb      	strb	r3, [r7, #7]
 80014da:	79fb      	ldrb	r3, [r7, #7]
 80014dc:	2b0a      	cmp	r3, #10
 80014de:	d102      	bne.n	80014e6 <xputc+0x16>
 80014e0:	200d      	movs	r0, #13
 80014e2:	f7ff fff5 	bl	80014d0 <xputc>
 80014e6:	4b0c      	ldr	r3, [pc, #48]	; (8001518 <xputc+0x48>)
 80014e8:	681b      	ldr	r3, [r3, #0]
 80014ea:	2b00      	cmp	r3, #0
 80014ec:	d007      	beq.n	80014fe <xputc+0x2e>
 80014ee:	4b0a      	ldr	r3, [pc, #40]	; (8001518 <xputc+0x48>)
 80014f0:	681b      	ldr	r3, [r3, #0]
 80014f2:	1c5a      	adds	r2, r3, #1
 80014f4:	4908      	ldr	r1, [pc, #32]	; (8001518 <xputc+0x48>)
 80014f6:	600a      	str	r2, [r1, #0]
 80014f8:	79fa      	ldrb	r2, [r7, #7]
 80014fa:	701a      	strb	r2, [r3, #0]
 80014fc:	e008      	b.n	8001510 <xputc+0x40>
 80014fe:	4b07      	ldr	r3, [pc, #28]	; (800151c <xputc+0x4c>)
 8001500:	681b      	ldr	r3, [r3, #0]
 8001502:	2b00      	cmp	r3, #0
 8001504:	d004      	beq.n	8001510 <xputc+0x40>
 8001506:	4b05      	ldr	r3, [pc, #20]	; (800151c <xputc+0x4c>)
 8001508:	681b      	ldr	r3, [r3, #0]
 800150a:	79fa      	ldrb	r2, [r7, #7]
 800150c:	4610      	mov	r0, r2
 800150e:	4798      	blx	r3
 8001510:	3708      	adds	r7, #8
 8001512:	46bd      	mov	sp, r7
 8001514:	bd80      	pop	{r7, pc}
 8001516:	bf00      	nop
 8001518:	2000083c 	.word	0x2000083c
 800151c:	20000838 	.word	0x20000838

08001520 <xputs>:
 8001520:	b580      	push	{r7, lr}
 8001522:	b082      	sub	sp, #8
 8001524:	af00      	add	r7, sp, #0
 8001526:	6078      	str	r0, [r7, #4]
 8001528:	e006      	b.n	8001538 <xputs+0x18>
 800152a:	687b      	ldr	r3, [r7, #4]
 800152c:	1c5a      	adds	r2, r3, #1
 800152e:	607a      	str	r2, [r7, #4]
 8001530:	781b      	ldrb	r3, [r3, #0]
 8001532:	4618      	mov	r0, r3
 8001534:	f7ff ffcc 	bl	80014d0 <xputc>
 8001538:	687b      	ldr	r3, [r7, #4]
 800153a:	781b      	ldrb	r3, [r3, #0]
 800153c:	2b00      	cmp	r3, #0
 800153e:	d1f4      	bne.n	800152a <xputs+0xa>
 8001540:	3708      	adds	r7, #8
 8001542:	46bd      	mov	sp, r7
 8001544:	bd80      	pop	{r7, pc}
 8001546:	bf00      	nop

08001548 <xfputs>:
 8001548:	b580      	push	{r7, lr}
 800154a:	b084      	sub	sp, #16
 800154c:	af00      	add	r7, sp, #0
 800154e:	6078      	str	r0, [r7, #4]
 8001550:	6039      	str	r1, [r7, #0]
 8001552:	4b0c      	ldr	r3, [pc, #48]	; (8001584 <xfputs+0x3c>)
 8001554:	681b      	ldr	r3, [r3, #0]
 8001556:	60fb      	str	r3, [r7, #12]
 8001558:	4a0a      	ldr	r2, [pc, #40]	; (8001584 <xfputs+0x3c>)
 800155a:	687b      	ldr	r3, [r7, #4]
 800155c:	6013      	str	r3, [r2, #0]
 800155e:	e006      	b.n	800156e <xfputs+0x26>
 8001560:	683b      	ldr	r3, [r7, #0]
 8001562:	1c5a      	adds	r2, r3, #1
 8001564:	603a      	str	r2, [r7, #0]
 8001566:	781b      	ldrb	r3, [r3, #0]
 8001568:	4618      	mov	r0, r3
 800156a:	f7ff ffb1 	bl	80014d0 <xputc>
 800156e:	683b      	ldr	r3, [r7, #0]
 8001570:	781b      	ldrb	r3, [r3, #0]
 8001572:	2b00      	cmp	r3, #0
 8001574:	d1f4      	bne.n	8001560 <xfputs+0x18>
 8001576:	4a03      	ldr	r2, [pc, #12]	; (8001584 <xfputs+0x3c>)
 8001578:	68fb      	ldr	r3, [r7, #12]
 800157a:	6013      	str	r3, [r2, #0]
 800157c:	3710      	adds	r7, #16
 800157e:	46bd      	mov	sp, r7
 8001580:	bd80      	pop	{r7, pc}
 8001582:	bf00      	nop
 8001584:	20000838 	.word	0x20000838

08001588 <xvprintf>:
 8001588:	b580      	push	{r7, lr}
 800158a:	b08e      	sub	sp, #56	; 0x38
 800158c:	af00      	add	r7, sp, #0
 800158e:	6078      	str	r0, [r7, #4]
 8001590:	6039      	str	r1, [r7, #0]
 8001592:	687b      	ldr	r3, [r7, #4]
 8001594:	1c5a      	adds	r2, r3, #1
 8001596:	607a      	str	r2, [r7, #4]
 8001598:	781b      	ldrb	r3, [r3, #0]
 800159a:	77fb      	strb	r3, [r7, #31]
 800159c:	7ffb      	ldrb	r3, [r7, #31]
 800159e:	2b00      	cmp	r3, #0
 80015a0:	d100      	bne.n	80015a4 <xvprintf+0x1c>
 80015a2:	e166      	b.n	8001872 <xvprintf+0x2ea>
 80015a4:	7ffb      	ldrb	r3, [r7, #31]
 80015a6:	2b25      	cmp	r3, #37	; 0x25
 80015a8:	d004      	beq.n	80015b4 <xvprintf+0x2c>
 80015aa:	7ffb      	ldrb	r3, [r7, #31]
 80015ac:	4618      	mov	r0, r3
 80015ae:	f7ff ff8f 	bl	80014d0 <xputc>
 80015b2:	e15d      	b.n	8001870 <xvprintf+0x2e8>
 80015b4:	2300      	movs	r3, #0
 80015b6:	627b      	str	r3, [r7, #36]	; 0x24
 80015b8:	687b      	ldr	r3, [r7, #4]
 80015ba:	1c5a      	adds	r2, r3, #1
 80015bc:	607a      	str	r2, [r7, #4]
 80015be:	781b      	ldrb	r3, [r3, #0]
 80015c0:	77fb      	strb	r3, [r7, #31]
 80015c2:	7ffb      	ldrb	r3, [r7, #31]
 80015c4:	2b30      	cmp	r3, #48	; 0x30
 80015c6:	d107      	bne.n	80015d8 <xvprintf+0x50>
 80015c8:	2301      	movs	r3, #1
 80015ca:	627b      	str	r3, [r7, #36]	; 0x24
 80015cc:	687b      	ldr	r3, [r7, #4]
 80015ce:	1c5a      	adds	r2, r3, #1
 80015d0:	607a      	str	r2, [r7, #4]
 80015d2:	781b      	ldrb	r3, [r3, #0]
 80015d4:	77fb      	strb	r3, [r7, #31]
 80015d6:	e009      	b.n	80015ec <xvprintf+0x64>
 80015d8:	7ffb      	ldrb	r3, [r7, #31]
 80015da:	2b2d      	cmp	r3, #45	; 0x2d
 80015dc:	d106      	bne.n	80015ec <xvprintf+0x64>
 80015de:	2302      	movs	r3, #2
 80015e0:	627b      	str	r3, [r7, #36]	; 0x24
 80015e2:	687b      	ldr	r3, [r7, #4]
 80015e4:	1c5a      	adds	r2, r3, #1
 80015e6:	607a      	str	r2, [r7, #4]
 80015e8:	781b      	ldrb	r3, [r3, #0]
 80015ea:	77fb      	strb	r3, [r7, #31]
 80015ec:	2300      	movs	r3, #0
 80015ee:	62bb      	str	r3, [r7, #40]	; 0x28
 80015f0:	e00e      	b.n	8001610 <xvprintf+0x88>
 80015f2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80015f4:	4613      	mov	r3, r2
 80015f6:	009b      	lsls	r3, r3, #2
 80015f8:	4413      	add	r3, r2
 80015fa:	005b      	lsls	r3, r3, #1
 80015fc:	461a      	mov	r2, r3
 80015fe:	7ffb      	ldrb	r3, [r7, #31]
 8001600:	4413      	add	r3, r2
 8001602:	3b30      	subs	r3, #48	; 0x30
 8001604:	62bb      	str	r3, [r7, #40]	; 0x28
 8001606:	687b      	ldr	r3, [r7, #4]
 8001608:	1c5a      	adds	r2, r3, #1
 800160a:	607a      	str	r2, [r7, #4]
 800160c:	781b      	ldrb	r3, [r3, #0]
 800160e:	77fb      	strb	r3, [r7, #31]
 8001610:	7ffb      	ldrb	r3, [r7, #31]
 8001612:	2b2f      	cmp	r3, #47	; 0x2f
 8001614:	d902      	bls.n	800161c <xvprintf+0x94>
 8001616:	7ffb      	ldrb	r3, [r7, #31]
 8001618:	2b39      	cmp	r3, #57	; 0x39
 800161a:	d9ea      	bls.n	80015f2 <xvprintf+0x6a>
 800161c:	7ffb      	ldrb	r3, [r7, #31]
 800161e:	2b6c      	cmp	r3, #108	; 0x6c
 8001620:	d002      	beq.n	8001628 <xvprintf+0xa0>
 8001622:	7ffb      	ldrb	r3, [r7, #31]
 8001624:	2b4c      	cmp	r3, #76	; 0x4c
 8001626:	d108      	bne.n	800163a <xvprintf+0xb2>
 8001628:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800162a:	f043 0304 	orr.w	r3, r3, #4
 800162e:	627b      	str	r3, [r7, #36]	; 0x24
 8001630:	687b      	ldr	r3, [r7, #4]
 8001632:	1c5a      	adds	r2, r3, #1
 8001634:	607a      	str	r2, [r7, #4]
 8001636:	781b      	ldrb	r3, [r3, #0]
 8001638:	77fb      	strb	r3, [r7, #31]
 800163a:	7ffb      	ldrb	r3, [r7, #31]
 800163c:	2b00      	cmp	r3, #0
 800163e:	d100      	bne.n	8001642 <xvprintf+0xba>
 8001640:	e117      	b.n	8001872 <xvprintf+0x2ea>
 8001642:	7ffb      	ldrb	r3, [r7, #31]
 8001644:	77bb      	strb	r3, [r7, #30]
 8001646:	7fbb      	ldrb	r3, [r7, #30]
 8001648:	2b60      	cmp	r3, #96	; 0x60
 800164a:	d902      	bls.n	8001652 <xvprintf+0xca>
 800164c:	7fbb      	ldrb	r3, [r7, #30]
 800164e:	3b20      	subs	r3, #32
 8001650:	77bb      	strb	r3, [r7, #30]
 8001652:	7fbb      	ldrb	r3, [r7, #30]
 8001654:	3b42      	subs	r3, #66	; 0x42
 8001656:	2b16      	cmp	r3, #22
 8001658:	d873      	bhi.n	8001742 <xvprintf+0x1ba>
 800165a:	a201      	add	r2, pc, #4	; (adr r2, 8001660 <xvprintf+0xd8>)
 800165c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001660:	0800172b 	.word	0x0800172b
 8001664:	08001719 	.word	0x08001719
 8001668:	08001737 	.word	0x08001737
 800166c:	08001743 	.word	0x08001743
 8001670:	08001743 	.word	0x08001743
 8001674:	08001743 	.word	0x08001743
 8001678:	08001743 	.word	0x08001743
 800167c:	08001743 	.word	0x08001743
 8001680:	08001743 	.word	0x08001743
 8001684:	08001743 	.word	0x08001743
 8001688:	08001743 	.word	0x08001743
 800168c:	08001743 	.word	0x08001743
 8001690:	08001743 	.word	0x08001743
 8001694:	08001731 	.word	0x08001731
 8001698:	08001743 	.word	0x08001743
 800169c:	08001743 	.word	0x08001743
 80016a0:	08001743 	.word	0x08001743
 80016a4:	080016bd 	.word	0x080016bd
 80016a8:	08001743 	.word	0x08001743
 80016ac:	08001737 	.word	0x08001737
 80016b0:	08001743 	.word	0x08001743
 80016b4:	08001743 	.word	0x08001743
 80016b8:	0800173d 	.word	0x0800173d
 80016bc:	683b      	ldr	r3, [r7, #0]
 80016be:	1d1a      	adds	r2, r3, #4
 80016c0:	603a      	str	r2, [r7, #0]
 80016c2:	681b      	ldr	r3, [r3, #0]
 80016c4:	61bb      	str	r3, [r7, #24]
 80016c6:	2300      	movs	r3, #0
 80016c8:	62fb      	str	r3, [r7, #44]	; 0x2c
 80016ca:	e002      	b.n	80016d2 <xvprintf+0x14a>
 80016cc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80016ce:	3301      	adds	r3, #1
 80016d0:	62fb      	str	r3, [r7, #44]	; 0x2c
 80016d2:	69ba      	ldr	r2, [r7, #24]
 80016d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80016d6:	4413      	add	r3, r2
 80016d8:	781b      	ldrb	r3, [r3, #0]
 80016da:	2b00      	cmp	r3, #0
 80016dc:	d1f6      	bne.n	80016cc <xvprintf+0x144>
 80016de:	e002      	b.n	80016e6 <xvprintf+0x15e>
 80016e0:	2020      	movs	r0, #32
 80016e2:	f7ff fef5 	bl	80014d0 <xputc>
 80016e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80016e8:	f003 0302 	and.w	r3, r3, #2
 80016ec:	2b00      	cmp	r3, #0
 80016ee:	d105      	bne.n	80016fc <xvprintf+0x174>
 80016f0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80016f2:	1c5a      	adds	r2, r3, #1
 80016f4:	62fa      	str	r2, [r7, #44]	; 0x2c
 80016f6:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80016f8:	4293      	cmp	r3, r2
 80016fa:	d3f1      	bcc.n	80016e0 <xvprintf+0x158>
 80016fc:	69b8      	ldr	r0, [r7, #24]
 80016fe:	f7ff ff0f 	bl	8001520 <xputs>
 8001702:	e002      	b.n	800170a <xvprintf+0x182>
 8001704:	2020      	movs	r0, #32
 8001706:	f7ff fee3 	bl	80014d0 <xputc>
 800170a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800170c:	1c5a      	adds	r2, r3, #1
 800170e:	62fa      	str	r2, [r7, #44]	; 0x2c
 8001710:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001712:	4293      	cmp	r3, r2
 8001714:	d3f6      	bcc.n	8001704 <xvprintf+0x17c>
 8001716:	e0ab      	b.n	8001870 <xvprintf+0x2e8>
 8001718:	683b      	ldr	r3, [r7, #0]
 800171a:	1d1a      	adds	r2, r3, #4
 800171c:	603a      	str	r2, [r7, #0]
 800171e:	681b      	ldr	r3, [r3, #0]
 8001720:	b2db      	uxtb	r3, r3
 8001722:	4618      	mov	r0, r3
 8001724:	f7ff fed4 	bl	80014d0 <xputc>
 8001728:	e0a2      	b.n	8001870 <xvprintf+0x2e8>
 800172a:	2302      	movs	r3, #2
 800172c:	637b      	str	r3, [r7, #52]	; 0x34
 800172e:	e00d      	b.n	800174c <xvprintf+0x1c4>
 8001730:	2308      	movs	r3, #8
 8001732:	637b      	str	r3, [r7, #52]	; 0x34
 8001734:	e00a      	b.n	800174c <xvprintf+0x1c4>
 8001736:	230a      	movs	r3, #10
 8001738:	637b      	str	r3, [r7, #52]	; 0x34
 800173a:	e007      	b.n	800174c <xvprintf+0x1c4>
 800173c:	2310      	movs	r3, #16
 800173e:	637b      	str	r3, [r7, #52]	; 0x34
 8001740:	e004      	b.n	800174c <xvprintf+0x1c4>
 8001742:	7ffb      	ldrb	r3, [r7, #31]
 8001744:	4618      	mov	r0, r3
 8001746:	f7ff fec3 	bl	80014d0 <xputc>
 800174a:	e091      	b.n	8001870 <xvprintf+0x2e8>
 800174c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800174e:	f003 0304 	and.w	r3, r3, #4
 8001752:	2b00      	cmp	r3, #0
 8001754:	d004      	beq.n	8001760 <xvprintf+0x1d8>
 8001756:	683b      	ldr	r3, [r7, #0]
 8001758:	1d1a      	adds	r2, r3, #4
 800175a:	603a      	str	r2, [r7, #0]
 800175c:	681b      	ldr	r3, [r3, #0]
 800175e:	e00b      	b.n	8001778 <xvprintf+0x1f0>
 8001760:	7fbb      	ldrb	r3, [r7, #30]
 8001762:	2b44      	cmp	r3, #68	; 0x44
 8001764:	d104      	bne.n	8001770 <xvprintf+0x1e8>
 8001766:	683b      	ldr	r3, [r7, #0]
 8001768:	1d1a      	adds	r2, r3, #4
 800176a:	603a      	str	r2, [r7, #0]
 800176c:	681b      	ldr	r3, [r3, #0]
 800176e:	e003      	b.n	8001778 <xvprintf+0x1f0>
 8001770:	683b      	ldr	r3, [r7, #0]
 8001772:	1d1a      	adds	r2, r3, #4
 8001774:	603a      	str	r2, [r7, #0]
 8001776:	681b      	ldr	r3, [r3, #0]
 8001778:	623b      	str	r3, [r7, #32]
 800177a:	7fbb      	ldrb	r3, [r7, #30]
 800177c:	2b44      	cmp	r3, #68	; 0x44
 800177e:	d109      	bne.n	8001794 <xvprintf+0x20c>
 8001780:	6a3b      	ldr	r3, [r7, #32]
 8001782:	2b00      	cmp	r3, #0
 8001784:	da06      	bge.n	8001794 <xvprintf+0x20c>
 8001786:	6a3b      	ldr	r3, [r7, #32]
 8001788:	425b      	negs	r3, r3
 800178a:	623b      	str	r3, [r7, #32]
 800178c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800178e:	f043 0308 	orr.w	r3, r3, #8
 8001792:	627b      	str	r3, [r7, #36]	; 0x24
 8001794:	2300      	movs	r3, #0
 8001796:	633b      	str	r3, [r7, #48]	; 0x30
 8001798:	6a3b      	ldr	r3, [r7, #32]
 800179a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800179c:	fbb3 f2f2 	udiv	r2, r3, r2
 80017a0:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80017a2:	fb01 f202 	mul.w	r2, r1, r2
 80017a6:	1a9b      	subs	r3, r3, r2
 80017a8:	77bb      	strb	r3, [r7, #30]
 80017aa:	6a3a      	ldr	r2, [r7, #32]
 80017ac:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80017ae:	fbb2 f3f3 	udiv	r3, r2, r3
 80017b2:	623b      	str	r3, [r7, #32]
 80017b4:	7fbb      	ldrb	r3, [r7, #30]
 80017b6:	2b09      	cmp	r3, #9
 80017b8:	d908      	bls.n	80017cc <xvprintf+0x244>
 80017ba:	7ffb      	ldrb	r3, [r7, #31]
 80017bc:	2b78      	cmp	r3, #120	; 0x78
 80017be:	d101      	bne.n	80017c4 <xvprintf+0x23c>
 80017c0:	2227      	movs	r2, #39	; 0x27
 80017c2:	e000      	b.n	80017c6 <xvprintf+0x23e>
 80017c4:	2207      	movs	r2, #7
 80017c6:	7fbb      	ldrb	r3, [r7, #30]
 80017c8:	4413      	add	r3, r2
 80017ca:	77bb      	strb	r3, [r7, #30]
 80017cc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80017ce:	1c5a      	adds	r2, r3, #1
 80017d0:	633a      	str	r2, [r7, #48]	; 0x30
 80017d2:	7fba      	ldrb	r2, [r7, #30]
 80017d4:	3230      	adds	r2, #48	; 0x30
 80017d6:	b2d2      	uxtb	r2, r2
 80017d8:	f107 0138 	add.w	r1, r7, #56	; 0x38
 80017dc:	440b      	add	r3, r1
 80017de:	f803 2c30 	strb.w	r2, [r3, #-48]
 80017e2:	6a3b      	ldr	r3, [r7, #32]
 80017e4:	2b00      	cmp	r3, #0
 80017e6:	d002      	beq.n	80017ee <xvprintf+0x266>
 80017e8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80017ea:	2b0f      	cmp	r3, #15
 80017ec:	d9d4      	bls.n	8001798 <xvprintf+0x210>
 80017ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80017f0:	f003 0308 	and.w	r3, r3, #8
 80017f4:	2b00      	cmp	r3, #0
 80017f6:	d008      	beq.n	800180a <xvprintf+0x282>
 80017f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80017fa:	1c5a      	adds	r2, r3, #1
 80017fc:	633a      	str	r2, [r7, #48]	; 0x30
 80017fe:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8001802:	4413      	add	r3, r2
 8001804:	222d      	movs	r2, #45	; 0x2d
 8001806:	f803 2c30 	strb.w	r2, [r3, #-48]
 800180a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800180c:	62fb      	str	r3, [r7, #44]	; 0x2c
 800180e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001810:	f003 0301 	and.w	r3, r3, #1
 8001814:	2b00      	cmp	r3, #0
 8001816:	d001      	beq.n	800181c <xvprintf+0x294>
 8001818:	2330      	movs	r3, #48	; 0x30
 800181a:	e000      	b.n	800181e <xvprintf+0x296>
 800181c:	2320      	movs	r3, #32
 800181e:	77bb      	strb	r3, [r7, #30]
 8001820:	e003      	b.n	800182a <xvprintf+0x2a2>
 8001822:	7fbb      	ldrb	r3, [r7, #30]
 8001824:	4618      	mov	r0, r3
 8001826:	f7ff fe53 	bl	80014d0 <xputc>
 800182a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800182c:	f003 0302 	and.w	r3, r3, #2
 8001830:	2b00      	cmp	r3, #0
 8001832:	d105      	bne.n	8001840 <xvprintf+0x2b8>
 8001834:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001836:	1c5a      	adds	r2, r3, #1
 8001838:	62fa      	str	r2, [r7, #44]	; 0x2c
 800183a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800183c:	4293      	cmp	r3, r2
 800183e:	d3f0      	bcc.n	8001822 <xvprintf+0x29a>
 8001840:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001842:	3b01      	subs	r3, #1
 8001844:	633b      	str	r3, [r7, #48]	; 0x30
 8001846:	f107 0208 	add.w	r2, r7, #8
 800184a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800184c:	4413      	add	r3, r2
 800184e:	781b      	ldrb	r3, [r3, #0]
 8001850:	4618      	mov	r0, r3
 8001852:	f7ff fe3d 	bl	80014d0 <xputc>
 8001856:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001858:	2b00      	cmp	r3, #0
 800185a:	d1f1      	bne.n	8001840 <xvprintf+0x2b8>
 800185c:	e002      	b.n	8001864 <xvprintf+0x2dc>
 800185e:	2020      	movs	r0, #32
 8001860:	f7ff fe36 	bl	80014d0 <xputc>
 8001864:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001866:	1c5a      	adds	r2, r3, #1
 8001868:	62fa      	str	r2, [r7, #44]	; 0x2c
 800186a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800186c:	4293      	cmp	r3, r2
 800186e:	d3f6      	bcc.n	800185e <xvprintf+0x2d6>
 8001870:	e68f      	b.n	8001592 <xvprintf+0xa>
 8001872:	3738      	adds	r7, #56	; 0x38
 8001874:	46bd      	mov	sp, r7
 8001876:	bd80      	pop	{r7, pc}

08001878 <xprintf>:
 8001878:	b40f      	push	{r0, r1, r2, r3}
 800187a:	b580      	push	{r7, lr}
 800187c:	b082      	sub	sp, #8
 800187e:	af00      	add	r7, sp, #0
 8001880:	f107 0314 	add.w	r3, r7, #20
 8001884:	607b      	str	r3, [r7, #4]
 8001886:	6938      	ldr	r0, [r7, #16]
 8001888:	6879      	ldr	r1, [r7, #4]
 800188a:	f7ff fe7d 	bl	8001588 <xvprintf>
 800188e:	3708      	adds	r7, #8
 8001890:	46bd      	mov	sp, r7
 8001892:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001896:	b004      	add	sp, #16
 8001898:	4770      	bx	lr
 800189a:	bf00      	nop

0800189c <xsprintf>:
 800189c:	b40e      	push	{r1, r2, r3}
 800189e:	b580      	push	{r7, lr}
 80018a0:	b085      	sub	sp, #20
 80018a2:	af00      	add	r7, sp, #0
 80018a4:	6078      	str	r0, [r7, #4]
 80018a6:	4a0b      	ldr	r2, [pc, #44]	; (80018d4 <xsprintf+0x38>)
 80018a8:	687b      	ldr	r3, [r7, #4]
 80018aa:	6013      	str	r3, [r2, #0]
 80018ac:	f107 0320 	add.w	r3, r7, #32
 80018b0:	60fb      	str	r3, [r7, #12]
 80018b2:	69f8      	ldr	r0, [r7, #28]
 80018b4:	68f9      	ldr	r1, [r7, #12]
 80018b6:	f7ff fe67 	bl	8001588 <xvprintf>
 80018ba:	4b06      	ldr	r3, [pc, #24]	; (80018d4 <xsprintf+0x38>)
 80018bc:	681b      	ldr	r3, [r3, #0]
 80018be:	2200      	movs	r2, #0
 80018c0:	701a      	strb	r2, [r3, #0]
 80018c2:	4b04      	ldr	r3, [pc, #16]	; (80018d4 <xsprintf+0x38>)
 80018c4:	2200      	movs	r2, #0
 80018c6:	601a      	str	r2, [r3, #0]
 80018c8:	3714      	adds	r7, #20
 80018ca:	46bd      	mov	sp, r7
 80018cc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80018d0:	b003      	add	sp, #12
 80018d2:	4770      	bx	lr
 80018d4:	2000083c 	.word	0x2000083c

080018d8 <xfprintf>:
 80018d8:	b40e      	push	{r1, r2, r3}
 80018da:	b580      	push	{r7, lr}
 80018dc:	b085      	sub	sp, #20
 80018de:	af00      	add	r7, sp, #0
 80018e0:	6078      	str	r0, [r7, #4]
 80018e2:	4b0b      	ldr	r3, [pc, #44]	; (8001910 <xfprintf+0x38>)
 80018e4:	681b      	ldr	r3, [r3, #0]
 80018e6:	60fb      	str	r3, [r7, #12]
 80018e8:	4a09      	ldr	r2, [pc, #36]	; (8001910 <xfprintf+0x38>)
 80018ea:	687b      	ldr	r3, [r7, #4]
 80018ec:	6013      	str	r3, [r2, #0]
 80018ee:	f107 0320 	add.w	r3, r7, #32
 80018f2:	60bb      	str	r3, [r7, #8]
 80018f4:	69f8      	ldr	r0, [r7, #28]
 80018f6:	68b9      	ldr	r1, [r7, #8]
 80018f8:	f7ff fe46 	bl	8001588 <xvprintf>
 80018fc:	4a04      	ldr	r2, [pc, #16]	; (8001910 <xfprintf+0x38>)
 80018fe:	68fb      	ldr	r3, [r7, #12]
 8001900:	6013      	str	r3, [r2, #0]
 8001902:	3714      	adds	r7, #20
 8001904:	46bd      	mov	sp, r7
 8001906:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800190a:	b003      	add	sp, #12
 800190c:	4770      	bx	lr
 800190e:	bf00      	nop
 8001910:	20000838 	.word	0x20000838

08001914 <put_dump>:
 8001914:	b580      	push	{r7, lr}
 8001916:	b088      	sub	sp, #32
 8001918:	af00      	add	r7, sp, #0
 800191a:	60f8      	str	r0, [r7, #12]
 800191c:	60b9      	str	r1, [r7, #8]
 800191e:	607a      	str	r2, [r7, #4]
 8001920:	603b      	str	r3, [r7, #0]
 8001922:	4835      	ldr	r0, [pc, #212]	; (80019f8 <put_dump+0xe4>)
 8001924:	68b9      	ldr	r1, [r7, #8]
 8001926:	f7ff ffa7 	bl	8001878 <xprintf>
 800192a:	683b      	ldr	r3, [r7, #0]
 800192c:	2b02      	cmp	r3, #2
 800192e:	d03a      	beq.n	80019a6 <put_dump+0x92>
 8001930:	2b04      	cmp	r3, #4
 8001932:	d049      	beq.n	80019c8 <put_dump+0xb4>
 8001934:	2b01      	cmp	r3, #1
 8001936:	d158      	bne.n	80019ea <put_dump+0xd6>
 8001938:	68fb      	ldr	r3, [r7, #12]
 800193a:	613b      	str	r3, [r7, #16]
 800193c:	2300      	movs	r3, #0
 800193e:	61fb      	str	r3, [r7, #28]
 8001940:	e00a      	b.n	8001958 <put_dump+0x44>
 8001942:	69fb      	ldr	r3, [r7, #28]
 8001944:	693a      	ldr	r2, [r7, #16]
 8001946:	4413      	add	r3, r2
 8001948:	781b      	ldrb	r3, [r3, #0]
 800194a:	482c      	ldr	r0, [pc, #176]	; (80019fc <put_dump+0xe8>)
 800194c:	4619      	mov	r1, r3
 800194e:	f7ff ff93 	bl	8001878 <xprintf>
 8001952:	69fb      	ldr	r3, [r7, #28]
 8001954:	3301      	adds	r3, #1
 8001956:	61fb      	str	r3, [r7, #28]
 8001958:	69fa      	ldr	r2, [r7, #28]
 800195a:	687b      	ldr	r3, [r7, #4]
 800195c:	429a      	cmp	r2, r3
 800195e:	dbf0      	blt.n	8001942 <put_dump+0x2e>
 8001960:	2020      	movs	r0, #32
 8001962:	f7ff fdb5 	bl	80014d0 <xputc>
 8001966:	2300      	movs	r3, #0
 8001968:	61fb      	str	r3, [r7, #28]
 800196a:	e017      	b.n	800199c <put_dump+0x88>
 800196c:	69fb      	ldr	r3, [r7, #28]
 800196e:	693a      	ldr	r2, [r7, #16]
 8001970:	4413      	add	r3, r2
 8001972:	781b      	ldrb	r3, [r3, #0]
 8001974:	2b1f      	cmp	r3, #31
 8001976:	d90a      	bls.n	800198e <put_dump+0x7a>
 8001978:	69fb      	ldr	r3, [r7, #28]
 800197a:	693a      	ldr	r2, [r7, #16]
 800197c:	4413      	add	r3, r2
 800197e:	781b      	ldrb	r3, [r3, #0]
 8001980:	2b7e      	cmp	r3, #126	; 0x7e
 8001982:	d804      	bhi.n	800198e <put_dump+0x7a>
 8001984:	69fb      	ldr	r3, [r7, #28]
 8001986:	693a      	ldr	r2, [r7, #16]
 8001988:	4413      	add	r3, r2
 800198a:	781b      	ldrb	r3, [r3, #0]
 800198c:	e000      	b.n	8001990 <put_dump+0x7c>
 800198e:	232e      	movs	r3, #46	; 0x2e
 8001990:	4618      	mov	r0, r3
 8001992:	f7ff fd9d 	bl	80014d0 <xputc>
 8001996:	69fb      	ldr	r3, [r7, #28]
 8001998:	3301      	adds	r3, #1
 800199a:	61fb      	str	r3, [r7, #28]
 800199c:	69fa      	ldr	r2, [r7, #28]
 800199e:	687b      	ldr	r3, [r7, #4]
 80019a0:	429a      	cmp	r2, r3
 80019a2:	dbe3      	blt.n	800196c <put_dump+0x58>
 80019a4:	e021      	b.n	80019ea <put_dump+0xd6>
 80019a6:	68fb      	ldr	r3, [r7, #12]
 80019a8:	61bb      	str	r3, [r7, #24]
 80019aa:	69bb      	ldr	r3, [r7, #24]
 80019ac:	1c9a      	adds	r2, r3, #2
 80019ae:	61ba      	str	r2, [r7, #24]
 80019b0:	881b      	ldrh	r3, [r3, #0]
 80019b2:	4813      	ldr	r0, [pc, #76]	; (8001a00 <put_dump+0xec>)
 80019b4:	4619      	mov	r1, r3
 80019b6:	f7ff ff5f 	bl	8001878 <xprintf>
 80019ba:	687b      	ldr	r3, [r7, #4]
 80019bc:	3b01      	subs	r3, #1
 80019be:	607b      	str	r3, [r7, #4]
 80019c0:	687b      	ldr	r3, [r7, #4]
 80019c2:	2b00      	cmp	r3, #0
 80019c4:	d1f1      	bne.n	80019aa <put_dump+0x96>
 80019c6:	e010      	b.n	80019ea <put_dump+0xd6>
 80019c8:	68fb      	ldr	r3, [r7, #12]
 80019ca:	617b      	str	r3, [r7, #20]
 80019cc:	697b      	ldr	r3, [r7, #20]
 80019ce:	1d1a      	adds	r2, r3, #4
 80019d0:	617a      	str	r2, [r7, #20]
 80019d2:	681b      	ldr	r3, [r3, #0]
 80019d4:	480b      	ldr	r0, [pc, #44]	; (8001a04 <put_dump+0xf0>)
 80019d6:	4619      	mov	r1, r3
 80019d8:	f7ff ff4e 	bl	8001878 <xprintf>
 80019dc:	687b      	ldr	r3, [r7, #4]
 80019de:	3b01      	subs	r3, #1
 80019e0:	607b      	str	r3, [r7, #4]
 80019e2:	687b      	ldr	r3, [r7, #4]
 80019e4:	2b00      	cmp	r3, #0
 80019e6:	d1f1      	bne.n	80019cc <put_dump+0xb8>
 80019e8:	bf00      	nop
 80019ea:	200a      	movs	r0, #10
 80019ec:	f7ff fd70 	bl	80014d0 <xputc>
 80019f0:	3720      	adds	r7, #32
 80019f2:	46bd      	mov	sp, r7
 80019f4:	bd80      	pop	{r7, pc}
 80019f6:	bf00      	nop
 80019f8:	08001e2c 	.word	0x08001e2c
 80019fc:	08001e34 	.word	0x08001e34
 8001a00:	08001e3c 	.word	0x08001e3c
 8001a04:	08001e44 	.word	0x08001e44

08001a08 <xgets>:
 8001a08:	b580      	push	{r7, lr}
 8001a0a:	b084      	sub	sp, #16
 8001a0c:	af00      	add	r7, sp, #0
 8001a0e:	6078      	str	r0, [r7, #4]
 8001a10:	6039      	str	r1, [r7, #0]
 8001a12:	4b25      	ldr	r3, [pc, #148]	; (8001aa8 <xgets+0xa0>)
 8001a14:	681b      	ldr	r3, [r3, #0]
 8001a16:	2b00      	cmp	r3, #0
 8001a18:	d101      	bne.n	8001a1e <xgets+0x16>
 8001a1a:	2300      	movs	r3, #0
 8001a1c:	e03f      	b.n	8001a9e <xgets+0x96>
 8001a1e:	2300      	movs	r3, #0
 8001a20:	60fb      	str	r3, [r7, #12]
 8001a22:	4b21      	ldr	r3, [pc, #132]	; (8001aa8 <xgets+0xa0>)
 8001a24:	681b      	ldr	r3, [r3, #0]
 8001a26:	4798      	blx	r3
 8001a28:	4603      	mov	r3, r0
 8001a2a:	60bb      	str	r3, [r7, #8]
 8001a2c:	68bb      	ldr	r3, [r7, #8]
 8001a2e:	2b00      	cmp	r3, #0
 8001a30:	d101      	bne.n	8001a36 <xgets+0x2e>
 8001a32:	2300      	movs	r3, #0
 8001a34:	e033      	b.n	8001a9e <xgets+0x96>
 8001a36:	68bb      	ldr	r3, [r7, #8]
 8001a38:	2b0d      	cmp	r3, #13
 8001a3a:	d10a      	bne.n	8001a52 <xgets+0x4a>
 8001a3c:	bf00      	nop
 8001a3e:	68fb      	ldr	r3, [r7, #12]
 8001a40:	687a      	ldr	r2, [r7, #4]
 8001a42:	4413      	add	r3, r2
 8001a44:	2200      	movs	r2, #0
 8001a46:	701a      	strb	r2, [r3, #0]
 8001a48:	200a      	movs	r0, #10
 8001a4a:	f7ff fd41 	bl	80014d0 <xputc>
 8001a4e:	2301      	movs	r3, #1
 8001a50:	e025      	b.n	8001a9e <xgets+0x96>
 8001a52:	68bb      	ldr	r3, [r7, #8]
 8001a54:	2b08      	cmp	r3, #8
 8001a56:	d10b      	bne.n	8001a70 <xgets+0x68>
 8001a58:	68fb      	ldr	r3, [r7, #12]
 8001a5a:	2b00      	cmp	r3, #0
 8001a5c:	d008      	beq.n	8001a70 <xgets+0x68>
 8001a5e:	68fb      	ldr	r3, [r7, #12]
 8001a60:	3b01      	subs	r3, #1
 8001a62:	60fb      	str	r3, [r7, #12]
 8001a64:	68bb      	ldr	r3, [r7, #8]
 8001a66:	b2db      	uxtb	r3, r3
 8001a68:	4618      	mov	r0, r3
 8001a6a:	f7ff fd31 	bl	80014d0 <xputc>
 8001a6e:	e015      	b.n	8001a9c <xgets+0x94>
 8001a70:	68bb      	ldr	r3, [r7, #8]
 8001a72:	2b1f      	cmp	r3, #31
 8001a74:	dd12      	ble.n	8001a9c <xgets+0x94>
 8001a76:	683b      	ldr	r3, [r7, #0]
 8001a78:	1e5a      	subs	r2, r3, #1
 8001a7a:	68fb      	ldr	r3, [r7, #12]
 8001a7c:	429a      	cmp	r2, r3
 8001a7e:	dd0d      	ble.n	8001a9c <xgets+0x94>
 8001a80:	68fb      	ldr	r3, [r7, #12]
 8001a82:	1c5a      	adds	r2, r3, #1
 8001a84:	60fa      	str	r2, [r7, #12]
 8001a86:	461a      	mov	r2, r3
 8001a88:	687b      	ldr	r3, [r7, #4]
 8001a8a:	4413      	add	r3, r2
 8001a8c:	68ba      	ldr	r2, [r7, #8]
 8001a8e:	b2d2      	uxtb	r2, r2
 8001a90:	701a      	strb	r2, [r3, #0]
 8001a92:	68bb      	ldr	r3, [r7, #8]
 8001a94:	b2db      	uxtb	r3, r3
 8001a96:	4618      	mov	r0, r3
 8001a98:	f7ff fd1a 	bl	80014d0 <xputc>
 8001a9c:	e7c1      	b.n	8001a22 <xgets+0x1a>
 8001a9e:	4618      	mov	r0, r3
 8001aa0:	3710      	adds	r7, #16
 8001aa2:	46bd      	mov	sp, r7
 8001aa4:	bd80      	pop	{r7, pc}
 8001aa6:	bf00      	nop
 8001aa8:	20000840 	.word	0x20000840

08001aac <xfgets>:
 8001aac:	b580      	push	{r7, lr}
 8001aae:	b086      	sub	sp, #24
 8001ab0:	af00      	add	r7, sp, #0
 8001ab2:	60f8      	str	r0, [r7, #12]
 8001ab4:	60b9      	str	r1, [r7, #8]
 8001ab6:	607a      	str	r2, [r7, #4]
 8001ab8:	4b09      	ldr	r3, [pc, #36]	; (8001ae0 <xfgets+0x34>)
 8001aba:	681b      	ldr	r3, [r3, #0]
 8001abc:	617b      	str	r3, [r7, #20]
 8001abe:	4a08      	ldr	r2, [pc, #32]	; (8001ae0 <xfgets+0x34>)
 8001ac0:	68fb      	ldr	r3, [r7, #12]
 8001ac2:	6013      	str	r3, [r2, #0]
 8001ac4:	68b8      	ldr	r0, [r7, #8]
 8001ac6:	6879      	ldr	r1, [r7, #4]
 8001ac8:	f7ff ff9e 	bl	8001a08 <xgets>
 8001acc:	6138      	str	r0, [r7, #16]
 8001ace:	4a04      	ldr	r2, [pc, #16]	; (8001ae0 <xfgets+0x34>)
 8001ad0:	697b      	ldr	r3, [r7, #20]
 8001ad2:	6013      	str	r3, [r2, #0]
 8001ad4:	693b      	ldr	r3, [r7, #16]
 8001ad6:	4618      	mov	r0, r3
 8001ad8:	3718      	adds	r7, #24
 8001ada:	46bd      	mov	sp, r7
 8001adc:	bd80      	pop	{r7, pc}
 8001ade:	bf00      	nop
 8001ae0:	20000840 	.word	0x20000840

08001ae4 <xatoi>:
 8001ae4:	b480      	push	{r7}
 8001ae6:	b085      	sub	sp, #20
 8001ae8:	af00      	add	r7, sp, #0
 8001aea:	6078      	str	r0, [r7, #4]
 8001aec:	6039      	str	r1, [r7, #0]
 8001aee:	2300      	movs	r3, #0
 8001af0:	727b      	strb	r3, [r7, #9]
 8001af2:	683b      	ldr	r3, [r7, #0]
 8001af4:	2200      	movs	r2, #0
 8001af6:	601a      	str	r2, [r3, #0]
 8001af8:	e004      	b.n	8001b04 <xatoi+0x20>
 8001afa:	687b      	ldr	r3, [r7, #4]
 8001afc:	681b      	ldr	r3, [r3, #0]
 8001afe:	1c5a      	adds	r2, r3, #1
 8001b00:	687b      	ldr	r3, [r7, #4]
 8001b02:	601a      	str	r2, [r3, #0]
 8001b04:	687b      	ldr	r3, [r7, #4]
 8001b06:	681b      	ldr	r3, [r3, #0]
 8001b08:	781b      	ldrb	r3, [r3, #0]
 8001b0a:	72fb      	strb	r3, [r7, #11]
 8001b0c:	7afb      	ldrb	r3, [r7, #11]
 8001b0e:	2b20      	cmp	r3, #32
 8001b10:	d0f3      	beq.n	8001afa <xatoi+0x16>
 8001b12:	7afb      	ldrb	r3, [r7, #11]
 8001b14:	2b2d      	cmp	r3, #45	; 0x2d
 8001b16:	d10a      	bne.n	8001b2e <xatoi+0x4a>
 8001b18:	2301      	movs	r3, #1
 8001b1a:	727b      	strb	r3, [r7, #9]
 8001b1c:	687b      	ldr	r3, [r7, #4]
 8001b1e:	681b      	ldr	r3, [r3, #0]
 8001b20:	1c5a      	adds	r2, r3, #1
 8001b22:	687b      	ldr	r3, [r7, #4]
 8001b24:	601a      	str	r2, [r3, #0]
 8001b26:	687b      	ldr	r3, [r7, #4]
 8001b28:	681b      	ldr	r3, [r3, #0]
 8001b2a:	781b      	ldrb	r3, [r3, #0]
 8001b2c:	72fb      	strb	r3, [r7, #11]
 8001b2e:	7afb      	ldrb	r3, [r7, #11]
 8001b30:	2b30      	cmp	r3, #48	; 0x30
 8001b32:	d136      	bne.n	8001ba2 <xatoi+0xbe>
 8001b34:	687b      	ldr	r3, [r7, #4]
 8001b36:	681b      	ldr	r3, [r3, #0]
 8001b38:	1c5a      	adds	r2, r3, #1
 8001b3a:	687b      	ldr	r3, [r7, #4]
 8001b3c:	601a      	str	r2, [r3, #0]
 8001b3e:	687b      	ldr	r3, [r7, #4]
 8001b40:	681b      	ldr	r3, [r3, #0]
 8001b42:	781b      	ldrb	r3, [r3, #0]
 8001b44:	72fb      	strb	r3, [r7, #11]
 8001b46:	7afb      	ldrb	r3, [r7, #11]
 8001b48:	2b62      	cmp	r3, #98	; 0x62
 8001b4a:	d00d      	beq.n	8001b68 <xatoi+0x84>
 8001b4c:	2b78      	cmp	r3, #120	; 0x78
 8001b4e:	d117      	bne.n	8001b80 <xatoi+0x9c>
 8001b50:	2310      	movs	r3, #16
 8001b52:	72bb      	strb	r3, [r7, #10]
 8001b54:	687b      	ldr	r3, [r7, #4]
 8001b56:	681b      	ldr	r3, [r3, #0]
 8001b58:	1c5a      	adds	r2, r3, #1
 8001b5a:	687b      	ldr	r3, [r7, #4]
 8001b5c:	601a      	str	r2, [r3, #0]
 8001b5e:	687b      	ldr	r3, [r7, #4]
 8001b60:	681b      	ldr	r3, [r3, #0]
 8001b62:	781b      	ldrb	r3, [r3, #0]
 8001b64:	72fb      	strb	r3, [r7, #11]
 8001b66:	e01b      	b.n	8001ba0 <xatoi+0xbc>
 8001b68:	2302      	movs	r3, #2
 8001b6a:	72bb      	strb	r3, [r7, #10]
 8001b6c:	687b      	ldr	r3, [r7, #4]
 8001b6e:	681b      	ldr	r3, [r3, #0]
 8001b70:	1c5a      	adds	r2, r3, #1
 8001b72:	687b      	ldr	r3, [r7, #4]
 8001b74:	601a      	str	r2, [r3, #0]
 8001b76:	687b      	ldr	r3, [r7, #4]
 8001b78:	681b      	ldr	r3, [r3, #0]
 8001b7a:	781b      	ldrb	r3, [r3, #0]
 8001b7c:	72fb      	strb	r3, [r7, #11]
 8001b7e:	e00f      	b.n	8001ba0 <xatoi+0xbc>
 8001b80:	7afb      	ldrb	r3, [r7, #11]
 8001b82:	2b20      	cmp	r3, #32
 8001b84:	d801      	bhi.n	8001b8a <xatoi+0xa6>
 8001b86:	2301      	movs	r3, #1
 8001b88:	e04f      	b.n	8001c2a <xatoi+0x146>
 8001b8a:	7afb      	ldrb	r3, [r7, #11]
 8001b8c:	2b2f      	cmp	r3, #47	; 0x2f
 8001b8e:	d902      	bls.n	8001b96 <xatoi+0xb2>
 8001b90:	7afb      	ldrb	r3, [r7, #11]
 8001b92:	2b39      	cmp	r3, #57	; 0x39
 8001b94:	d901      	bls.n	8001b9a <xatoi+0xb6>
 8001b96:	2300      	movs	r3, #0
 8001b98:	e047      	b.n	8001c2a <xatoi+0x146>
 8001b9a:	2308      	movs	r3, #8
 8001b9c:	72bb      	strb	r3, [r7, #10]
 8001b9e:	e00a      	b.n	8001bb6 <xatoi+0xd2>
 8001ba0:	e009      	b.n	8001bb6 <xatoi+0xd2>
 8001ba2:	7afb      	ldrb	r3, [r7, #11]
 8001ba4:	2b2f      	cmp	r3, #47	; 0x2f
 8001ba6:	d902      	bls.n	8001bae <xatoi+0xca>
 8001ba8:	7afb      	ldrb	r3, [r7, #11]
 8001baa:	2b39      	cmp	r3, #57	; 0x39
 8001bac:	d901      	bls.n	8001bb2 <xatoi+0xce>
 8001bae:	2300      	movs	r3, #0
 8001bb0:	e03b      	b.n	8001c2a <xatoi+0x146>
 8001bb2:	230a      	movs	r3, #10
 8001bb4:	72bb      	strb	r3, [r7, #10]
 8001bb6:	2300      	movs	r3, #0
 8001bb8:	60fb      	str	r3, [r7, #12]
 8001bba:	e029      	b.n	8001c10 <xatoi+0x12c>
 8001bbc:	7afb      	ldrb	r3, [r7, #11]
 8001bbe:	2b60      	cmp	r3, #96	; 0x60
 8001bc0:	d902      	bls.n	8001bc8 <xatoi+0xe4>
 8001bc2:	7afb      	ldrb	r3, [r7, #11]
 8001bc4:	3b20      	subs	r3, #32
 8001bc6:	72fb      	strb	r3, [r7, #11]
 8001bc8:	7afb      	ldrb	r3, [r7, #11]
 8001bca:	3b30      	subs	r3, #48	; 0x30
 8001bcc:	72fb      	strb	r3, [r7, #11]
 8001bce:	7afb      	ldrb	r3, [r7, #11]
 8001bd0:	2b10      	cmp	r3, #16
 8001bd2:	d907      	bls.n	8001be4 <xatoi+0x100>
 8001bd4:	7afb      	ldrb	r3, [r7, #11]
 8001bd6:	3b07      	subs	r3, #7
 8001bd8:	72fb      	strb	r3, [r7, #11]
 8001bda:	7afb      	ldrb	r3, [r7, #11]
 8001bdc:	2b09      	cmp	r3, #9
 8001bde:	d801      	bhi.n	8001be4 <xatoi+0x100>
 8001be0:	2300      	movs	r3, #0
 8001be2:	e022      	b.n	8001c2a <xatoi+0x146>
 8001be4:	7afa      	ldrb	r2, [r7, #11]
 8001be6:	7abb      	ldrb	r3, [r7, #10]
 8001be8:	429a      	cmp	r2, r3
 8001bea:	d301      	bcc.n	8001bf0 <xatoi+0x10c>
 8001bec:	2300      	movs	r3, #0
 8001bee:	e01c      	b.n	8001c2a <xatoi+0x146>
 8001bf0:	7abb      	ldrb	r3, [r7, #10]
 8001bf2:	68fa      	ldr	r2, [r7, #12]
 8001bf4:	fb02 f203 	mul.w	r2, r2, r3
 8001bf8:	7afb      	ldrb	r3, [r7, #11]
 8001bfa:	4413      	add	r3, r2
 8001bfc:	60fb      	str	r3, [r7, #12]
 8001bfe:	687b      	ldr	r3, [r7, #4]
 8001c00:	681b      	ldr	r3, [r3, #0]
 8001c02:	1c5a      	adds	r2, r3, #1
 8001c04:	687b      	ldr	r3, [r7, #4]
 8001c06:	601a      	str	r2, [r3, #0]
 8001c08:	687b      	ldr	r3, [r7, #4]
 8001c0a:	681b      	ldr	r3, [r3, #0]
 8001c0c:	781b      	ldrb	r3, [r3, #0]
 8001c0e:	72fb      	strb	r3, [r7, #11]
 8001c10:	7afb      	ldrb	r3, [r7, #11]
 8001c12:	2b20      	cmp	r3, #32
 8001c14:	d8d2      	bhi.n	8001bbc <xatoi+0xd8>
 8001c16:	7a7b      	ldrb	r3, [r7, #9]
 8001c18:	2b00      	cmp	r3, #0
 8001c1a:	d002      	beq.n	8001c22 <xatoi+0x13e>
 8001c1c:	68fb      	ldr	r3, [r7, #12]
 8001c1e:	425b      	negs	r3, r3
 8001c20:	60fb      	str	r3, [r7, #12]
 8001c22:	68fa      	ldr	r2, [r7, #12]
 8001c24:	683b      	ldr	r3, [r7, #0]
 8001c26:	601a      	str	r2, [r3, #0]
 8001c28:	2301      	movs	r3, #1
 8001c2a:	4618      	mov	r0, r3
 8001c2c:	3714      	adds	r7, #20
 8001c2e:	46bd      	mov	sp, r7
 8001c30:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001c34:	4770      	bx	lr
 8001c36:	bf00      	nop
 8001c38:	6c6c6568 	.word	0x6c6c6568
 8001c3c:	000a0d6f 	.word	0x000a0d6f

08001c40 <HID_ReportDescriptor>:
 8001c40:	09ff0006 0501a101 29011909 25001503     ...........)...%
 8001c50:	75039501 95028101 81057501 09080501     ...u.....u......
 8001c60:	2500154b 75089501 c0029101              K..%...u....

08001c6c <USB_DeviceDescriptor>:
 8001c6c:	01100112 40000000 1301c251 20040100     .......@Q...... 
 8001c7c:	00000142                                B...

08001c80 <USB_ConfigDescriptor>:
 8001c80:	00220209 80000101 00040932 00030100     ..".....2.......
 8001c90:	21095c00 01000100 07002c22 04038105     .\.!....",......
 8001ca0:	00002000                                . ..

08001ca4 <USB_StringDescriptor>:
 8001ca4:	04090304 004b031c 00690065 0020006c     ......K.e.i.l. .
 8001cb4:	006f0053 00740066 00610077 00650072     S.o.f.t.w.a.r.e.
 8001cc4:	004b0322 00690065 0020006c 0043004d     ".K.e.i.l. .M.C.
 8001cd4:	00320042 00340031 00200030 00490048     B.2.1.4.0. .H.I.
 8001ce4:	031a0044 00450044 004f004d 00300030     D...D.E.M.O.0.0.
 8001cf4:	00300030 00300030 00300030 00480308     0.0.0.0.0.0...H.
 8001d04:	00440049 49564544 0a0d4543 00000000     I.D.DEVICE......
 8001d14:	4c415551 45494649 000a0d52 464e4f43     QUALIFIER...CONF
 8001d24:	52554749 4f495441 000a0d4e 4f504552     IGURATION...REPO
 8001d34:	0a0d5452 00000000 49525453 0a0d474e     RT......STRING..
 8001d44:	00000000 78323025 00000a0d 5f544553     ....%02x....SET_
 8001d54:	464e4f43 52554749 4f495441 000a0d4e     CONFIGURATION...
 8001d64:	5f544553 52444441 0d535345 0000000a     SET_ADDRESS.....
 8001d74:	5f544547 43534544 54504952 003a524f     GET_DESCRIPTOR:.
 8001d84:	5f544547 45544e49 43414652 000a0d45     GET_INTERFACE...
 8001d94:	41454c43 45465f52 52555441 000a0d45     CLEAR_FEATURE...
 8001da4:	5f544553 454c4449 00000a0d 5f544547     SET_IDLE....GET_
 8001db4:	4f504552 0a0d5452 00000000 5f544553     REPORT......SET_
 8001dc4:	4f504552 0a0d5452 00000000 4e415453     REPORT......STAN
 8001dd4:	44524144 5145525f 54534555 0000003a     DARD_REQUEST:...
 8001de4:	53414c43 45525f53 53455551 00003a54     CLASS_REQUEST:..
 8001df4:	45534552 000a0d54 3a307065 0a0d6e69     RESET...ep0:in..
 8001e04:	00000000 3a307065 75746573 00003a70     ....ep0:setup:..
 8001e14:	3a307065 0d74756f 0000000a 3a317065     ep0:out.....ep1:
 8001e24:	0a0d6e69 00000000 6c383025 00002058     in......%08lX ..
 8001e34:	32302520 00000058 34302520 00000058      %02X... %04X...
 8001e44:	38302520 0000584c                        %08LX..
