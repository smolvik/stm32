
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 05 03 00 08 65 03 00 08 65 03 00 08     . . ....e...e...
 8000010:	65 03 00 08 65 03 00 08 65 03 00 08 00 00 00 00     e...e...e.......
	...
 800002c:	65 03 00 08 65 03 00 08 00 00 00 00 65 03 00 08     e...e.......e...
 800003c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 800004c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 800005c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 800006c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 800007c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 800008c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 800009c:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 80000ac:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 80000bc:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 80000cc:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...
 80000dc:	65 03 00 08 65 03 00 08 65 03 00 08 65 03 00 08     e...e...e...e...

080000ec <system_init>:
 80000ec:	b580      	push	{r7, lr}
 80000ee:	af00      	add	r7, sp, #0
 80000f0:	4a33      	ldr	r2, [pc, #204]	; (80001c0 <system_init+0xd4>)
 80000f2:	4b33      	ldr	r3, [pc, #204]	; (80001c0 <system_init+0xd4>)
 80000f4:	681b      	ldr	r3, [r3, #0]
 80000f6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80000fa:	6013      	str	r3, [r2, #0]
 80000fc:	bf00      	nop
 80000fe:	4b30      	ldr	r3, [pc, #192]	; (80001c0 <system_init+0xd4>)
 8000100:	681b      	ldr	r3, [r3, #0]
 8000102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000106:	2b00      	cmp	r3, #0
 8000108:	d0f9      	beq.n	80000fe <system_init+0x12>
 800010a:	4a2d      	ldr	r2, [pc, #180]	; (80001c0 <system_init+0xd4>)
 800010c:	4b2c      	ldr	r3, [pc, #176]	; (80001c0 <system_init+0xd4>)
 800010e:	685b      	ldr	r3, [r3, #4]
 8000110:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000114:	6053      	str	r3, [r2, #4]
 8000116:	4a2a      	ldr	r2, [pc, #168]	; (80001c0 <system_init+0xd4>)
 8000118:	4b29      	ldr	r3, [pc, #164]	; (80001c0 <system_init+0xd4>)
 800011a:	685b      	ldr	r3, [r3, #4]
 800011c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000120:	6053      	str	r3, [r2, #4]
 8000122:	4a27      	ldr	r2, [pc, #156]	; (80001c0 <system_init+0xd4>)
 8000124:	4b26      	ldr	r3, [pc, #152]	; (80001c0 <system_init+0xd4>)
 8000126:	685b      	ldr	r3, [r3, #4]
 8000128:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800012c:	6053      	str	r3, [r2, #4]
 800012e:	4a24      	ldr	r2, [pc, #144]	; (80001c0 <system_init+0xd4>)
 8000130:	4b23      	ldr	r3, [pc, #140]	; (80001c0 <system_init+0xd4>)
 8000132:	681b      	ldr	r3, [r3, #0]
 8000134:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000138:	6013      	str	r3, [r2, #0]
 800013a:	bf00      	nop
 800013c:	4b20      	ldr	r3, [pc, #128]	; (80001c0 <system_init+0xd4>)
 800013e:	681b      	ldr	r3, [r3, #0]
 8000140:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000144:	2b00      	cmp	r3, #0
 8000146:	d0f9      	beq.n	800013c <system_init+0x50>
 8000148:	4a1e      	ldr	r2, [pc, #120]	; (80001c4 <system_init+0xd8>)
 800014a:	4b1e      	ldr	r3, [pc, #120]	; (80001c4 <system_init+0xd8>)
 800014c:	681b      	ldr	r3, [r3, #0]
 800014e:	f043 0310 	orr.w	r3, r3, #16
 8000152:	6013      	str	r3, [r2, #0]
 8000154:	4a1b      	ldr	r2, [pc, #108]	; (80001c4 <system_init+0xd8>)
 8000156:	4b1b      	ldr	r3, [pc, #108]	; (80001c4 <system_init+0xd8>)
 8000158:	681b      	ldr	r3, [r3, #0]
 800015a:	f023 0303 	bic.w	r3, r3, #3
 800015e:	6013      	str	r3, [r2, #0]
 8000160:	4a18      	ldr	r2, [pc, #96]	; (80001c4 <system_init+0xd8>)
 8000162:	4b18      	ldr	r3, [pc, #96]	; (80001c4 <system_init+0xd8>)
 8000164:	681b      	ldr	r3, [r3, #0]
 8000166:	f043 0302 	orr.w	r3, r3, #2
 800016a:	6013      	str	r3, [r2, #0]
 800016c:	4a14      	ldr	r2, [pc, #80]	; (80001c0 <system_init+0xd4>)
 800016e:	4b14      	ldr	r3, [pc, #80]	; (80001c0 <system_init+0xd4>)
 8000170:	685b      	ldr	r3, [r3, #4]
 8000172:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000176:	6053      	str	r3, [r2, #4]
 8000178:	4a11      	ldr	r2, [pc, #68]	; (80001c0 <system_init+0xd4>)
 800017a:	4b11      	ldr	r3, [pc, #68]	; (80001c0 <system_init+0xd4>)
 800017c:	685b      	ldr	r3, [r3, #4]
 800017e:	f023 0303 	bic.w	r3, r3, #3
 8000182:	6053      	str	r3, [r2, #4]
 8000184:	4a0e      	ldr	r2, [pc, #56]	; (80001c0 <system_init+0xd4>)
 8000186:	4b0e      	ldr	r3, [pc, #56]	; (80001c0 <system_init+0xd4>)
 8000188:	685b      	ldr	r3, [r3, #4]
 800018a:	f043 0302 	orr.w	r3, r3, #2
 800018e:	6053      	str	r3, [r2, #4]
 8000190:	bf00      	nop
 8000192:	4b0b      	ldr	r3, [pc, #44]	; (80001c0 <system_init+0xd4>)
 8000194:	685b      	ldr	r3, [r3, #4]
 8000196:	f003 030c 	and.w	r3, r3, #12
 800019a:	2b08      	cmp	r3, #8
 800019c:	d1f9      	bne.n	8000192 <system_init+0xa6>
 800019e:	4a08      	ldr	r2, [pc, #32]	; (80001c0 <system_init+0xd4>)
 80001a0:	4b07      	ldr	r3, [pc, #28]	; (80001c0 <system_init+0xd4>)
 80001a2:	699b      	ldr	r3, [r3, #24]
 80001a4:	f043 0305 	orr.w	r3, r3, #5
 80001a8:	6193      	str	r3, [r2, #24]
 80001aa:	4a05      	ldr	r2, [pc, #20]	; (80001c0 <system_init+0xd4>)
 80001ac:	4b04      	ldr	r3, [pc, #16]	; (80001c0 <system_init+0xd4>)
 80001ae:	69db      	ldr	r3, [r3, #28]
 80001b0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80001b4:	61d3      	str	r3, [r2, #28]
 80001b6:	f000 f807 	bl	80001c8 <gpio_init>
 80001ba:	f000 f819 	bl	80001f0 <uart_init>
 80001be:	bd80      	pop	{r7, pc}
 80001c0:	40021000 	.word	0x40021000
 80001c4:	40022000 	.word	0x40022000

080001c8 <gpio_init>:
 80001c8:	b480      	push	{r7}
 80001ca:	af00      	add	r7, sp, #0
 80001cc:	4a07      	ldr	r2, [pc, #28]	; (80001ec <gpio_init+0x24>)
 80001ce:	4b07      	ldr	r3, [pc, #28]	; (80001ec <gpio_init+0x24>)
 80001d0:	681b      	ldr	r3, [r3, #0]
 80001d2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80001d6:	6013      	str	r3, [r2, #0]
 80001d8:	4a04      	ldr	r2, [pc, #16]	; (80001ec <gpio_init+0x24>)
 80001da:	4b04      	ldr	r3, [pc, #16]	; (80001ec <gpio_init+0x24>)
 80001dc:	681b      	ldr	r3, [r3, #0]
 80001de:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 80001e2:	6013      	str	r3, [r2, #0]
 80001e4:	46bd      	mov	sp, r7
 80001e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80001ea:	4770      	bx	lr
 80001ec:	40010800 	.word	0x40010800

080001f0 <uart_init>:
 80001f0:	b480      	push	{r7}
 80001f2:	af00      	add	r7, sp, #0
 80001f4:	4a0b      	ldr	r2, [pc, #44]	; (8000224 <uart_init+0x34>)
 80001f6:	4b0b      	ldr	r3, [pc, #44]	; (8000224 <uart_init+0x34>)
 80001f8:	899b      	ldrh	r3, [r3, #12]
 80001fa:	b29b      	uxth	r3, r3
 80001fc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000200:	b29b      	uxth	r3, r3
 8000202:	8193      	strh	r3, [r2, #12]
 8000204:	4a07      	ldr	r2, [pc, #28]	; (8000224 <uart_init+0x34>)
 8000206:	4b07      	ldr	r3, [pc, #28]	; (8000224 <uart_init+0x34>)
 8000208:	899b      	ldrh	r3, [r3, #12]
 800020a:	b29b      	uxth	r3, r3
 800020c:	f043 0304 	orr.w	r3, r3, #4
 8000210:	b29b      	uxth	r3, r3
 8000212:	8193      	strh	r3, [r2, #12]
 8000214:	4b03      	ldr	r3, [pc, #12]	; (8000224 <uart_init+0x34>)
 8000216:	f640 62a6 	movw	r2, #3750	; 0xea6
 800021a:	811a      	strh	r2, [r3, #8]
 800021c:	46bd      	mov	sp, r7
 800021e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000222:	4770      	bx	lr
 8000224:	40004400 	.word	0x40004400

08000228 <uart_send>:
 8000228:	b480      	push	{r7}
 800022a:	b085      	sub	sp, #20
 800022c:	af00      	add	r7, sp, #0
 800022e:	6078      	str	r0, [r7, #4]
 8000230:	6039      	str	r1, [r7, #0]
 8000232:	4a17      	ldr	r2, [pc, #92]	; (8000290 <uart_send+0x68>)
 8000234:	4b16      	ldr	r3, [pc, #88]	; (8000290 <uart_send+0x68>)
 8000236:	899b      	ldrh	r3, [r3, #12]
 8000238:	b29b      	uxth	r3, r3
 800023a:	f043 0308 	orr.w	r3, r3, #8
 800023e:	b29b      	uxth	r3, r3
 8000240:	8193      	strh	r3, [r2, #12]
 8000242:	2300      	movs	r3, #0
 8000244:	60fb      	str	r3, [r7, #12]
 8000246:	e011      	b.n	800026c <uart_send+0x44>
 8000248:	4911      	ldr	r1, [pc, #68]	; (8000290 <uart_send+0x68>)
 800024a:	68fb      	ldr	r3, [r7, #12]
 800024c:	687a      	ldr	r2, [r7, #4]
 800024e:	4413      	add	r3, r2
 8000250:	781b      	ldrb	r3, [r3, #0]
 8000252:	b29b      	uxth	r3, r3
 8000254:	808b      	strh	r3, [r1, #4]
 8000256:	bf00      	nop
 8000258:	4b0d      	ldr	r3, [pc, #52]	; (8000290 <uart_send+0x68>)
 800025a:	881b      	ldrh	r3, [r3, #0]
 800025c:	b29b      	uxth	r3, r3
 800025e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000262:	2b00      	cmp	r3, #0
 8000264:	d0f8      	beq.n	8000258 <uart_send+0x30>
 8000266:	68fb      	ldr	r3, [r7, #12]
 8000268:	3301      	adds	r3, #1
 800026a:	60fb      	str	r3, [r7, #12]
 800026c:	68fa      	ldr	r2, [r7, #12]
 800026e:	683b      	ldr	r3, [r7, #0]
 8000270:	429a      	cmp	r2, r3
 8000272:	dbe9      	blt.n	8000248 <uart_send+0x20>
 8000274:	bf00      	nop
 8000276:	4b06      	ldr	r3, [pc, #24]	; (8000290 <uart_send+0x68>)
 8000278:	881b      	ldrh	r3, [r3, #0]
 800027a:	b29b      	uxth	r3, r3
 800027c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8000280:	2b00      	cmp	r3, #0
 8000282:	d0f8      	beq.n	8000276 <uart_send+0x4e>
 8000284:	4618      	mov	r0, r3
 8000286:	3714      	adds	r7, #20
 8000288:	46bd      	mov	sp, r7
 800028a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800028e:	4770      	bx	lr
 8000290:	40004400 	.word	0x40004400

08000294 <main>:
 8000294:	b580      	push	{r7, lr}
 8000296:	b0a2      	sub	sp, #136	; 0x88
 8000298:	af00      	add	r7, sp, #0
 800029a:	2300      	movs	r3, #0
 800029c:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80002a0:	f7ff ff24 	bl	80000ec <system_init>
 80002a4:	4a14      	ldr	r2, [pc, #80]	; (80002f8 <main+0x64>)
 80002a6:	4b14      	ldr	r3, [pc, #80]	; (80002f8 <main+0x64>)
 80002a8:	68db      	ldr	r3, [r3, #12]
 80002aa:	f043 0310 	orr.w	r3, r3, #16
 80002ae:	60d3      	str	r3, [r2, #12]
 80002b0:	4a11      	ldr	r2, [pc, #68]	; (80002f8 <main+0x64>)
 80002b2:	4b11      	ldr	r3, [pc, #68]	; (80002f8 <main+0x64>)
 80002b4:	68db      	ldr	r3, [r3, #12]
 80002b6:	f023 0310 	bic.w	r3, r3, #16
 80002ba:	60d3      	str	r3, [r2, #12]
 80002bc:	480f      	ldr	r0, [pc, #60]	; (80002fc <main+0x68>)
 80002be:	2107      	movs	r1, #7
 80002c0:	f7ff ffb2 	bl	8000228 <uart_send>
 80002c4:	4b0e      	ldr	r3, [pc, #56]	; (8000300 <main+0x6c>)
 80002c6:	881b      	ldrh	r3, [r3, #0]
 80002c8:	b29b      	uxth	r3, r3
 80002ca:	f003 0320 	and.w	r3, r3, #32
 80002ce:	2b00      	cmp	r3, #0
 80002d0:	d011      	beq.n	80002f6 <main+0x62>
 80002d2:	4b0b      	ldr	r3, [pc, #44]	; (8000300 <main+0x6c>)
 80002d4:	889b      	ldrh	r3, [r3, #4]
 80002d6:	b29b      	uxth	r3, r3
 80002d8:	f887 3083 	strb.w	r3, [r7, #131]	; 0x83
 80002dc:	bf00      	nop
 80002de:	4b08      	ldr	r3, [pc, #32]	; (8000300 <main+0x6c>)
 80002e0:	881b      	ldrh	r3, [r3, #0]
 80002e2:	b29b      	uxth	r3, r3
 80002e4:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80002e8:	2b00      	cmp	r3, #0
 80002ea:	d0f8      	beq.n	80002de <main+0x4a>
 80002ec:	4b04      	ldr	r3, [pc, #16]	; (8000300 <main+0x6c>)
 80002ee:	f897 2083 	ldrb.w	r2, [r7, #131]	; 0x83
 80002f2:	b292      	uxth	r2, r2
 80002f4:	809a      	strh	r2, [r3, #4]
 80002f6:	e7e5      	b.n	80002c4 <main+0x30>
 80002f8:	40010800 	.word	0x40010800
 80002fc:	0800036c 	.word	0x0800036c
 8000300:	40004400 	.word	0x40004400

08000304 <handler_reset>:
 8000304:	b580      	push	{r7, lr}
 8000306:	b082      	sub	sp, #8
 8000308:	af00      	add	r7, sp, #0
 800030a:	4b11      	ldr	r3, [pc, #68]	; (8000350 <handler_reset+0x4c>)
 800030c:	607b      	str	r3, [r7, #4]
 800030e:	4b11      	ldr	r3, [pc, #68]	; (8000354 <handler_reset+0x50>)
 8000310:	603b      	str	r3, [r7, #0]
 8000312:	e007      	b.n	8000324 <handler_reset+0x20>
 8000314:	683b      	ldr	r3, [r7, #0]
 8000316:	1d1a      	adds	r2, r3, #4
 8000318:	603a      	str	r2, [r7, #0]
 800031a:	687a      	ldr	r2, [r7, #4]
 800031c:	1d11      	adds	r1, r2, #4
 800031e:	6079      	str	r1, [r7, #4]
 8000320:	6812      	ldr	r2, [r2, #0]
 8000322:	601a      	str	r2, [r3, #0]
 8000324:	683b      	ldr	r3, [r7, #0]
 8000326:	4a0c      	ldr	r2, [pc, #48]	; (8000358 <handler_reset+0x54>)
 8000328:	4293      	cmp	r3, r2
 800032a:	d3f3      	bcc.n	8000314 <handler_reset+0x10>
 800032c:	4b0b      	ldr	r3, [pc, #44]	; (800035c <handler_reset+0x58>)
 800032e:	603b      	str	r3, [r7, #0]
 8000330:	e004      	b.n	800033c <handler_reset+0x38>
 8000332:	683b      	ldr	r3, [r7, #0]
 8000334:	1d1a      	adds	r2, r3, #4
 8000336:	603a      	str	r2, [r7, #0]
 8000338:	2200      	movs	r2, #0
 800033a:	601a      	str	r2, [r3, #0]
 800033c:	683b      	ldr	r3, [r7, #0]
 800033e:	4a08      	ldr	r2, [pc, #32]	; (8000360 <handler_reset+0x5c>)
 8000340:	4293      	cmp	r3, r2
 8000342:	d3f6      	bcc.n	8000332 <handler_reset+0x2e>
 8000344:	f7ff ffa6 	bl	8000294 <main>
 8000348:	3708      	adds	r7, #8
 800034a:	46bd      	mov	sp, r7
 800034c:	bd80      	pop	{r7, pc}
 800034e:	bf00      	nop
 8000350:	080003f4 	.word	0x080003f4
 8000354:	20000000 	.word	0x20000000
 8000358:	20000004 	.word	0x20000004
 800035c:	20000004 	.word	0x20000004
 8000360:	20000004 	.word	0x20000004

08000364 <default_handler>:
 8000364:	b480      	push	{r7}
 8000366:	af00      	add	r7, sp, #0
 8000368:	e7fe      	b.n	8000368 <default_handler+0x4>
 800036a:	bf00      	nop
 800036c:	6c6c6568 	.word	0x6c6c6568
 8000370:	000a0d6f 	.word	0x000a0d6f

08000374 <cos_table>:
 8000374:	000007d0 000007aa 00000738 0000067f     ........8.......
 8000384:	00000586 00000457 000002fd 00000186     ....W...........
 8000394:	00000000 fffffe7a fffffd03 fffffba9     ....z...........
 80003a4:	fffffa7a fffff981 fffff8c8 fffff856     z...........V...
 80003b4:	fffff830 fffff856 fffff8c8 fffff981     0...V...........
 80003c4:	fffffa7a fffffba9 fffffd03 fffffe7a     z...........z...
 80003d4:	00000000 00000186 000002fd 00000457     ............W...
 80003e4:	00000586 0000067f 00000738 000007aa     ........8.......
