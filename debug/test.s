
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 29 02 00 08 89 02 00 08 89 02 00 08     . . )...........
 8000010:	89 02 00 08 89 02 00 08 89 02 00 08 00 00 00 00     ................
	...
 800002c:	89 02 00 08 89 02 00 08 00 00 00 00 89 02 00 08     ................
 800003c:	9d 03 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 800004c:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 800005c:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 800006c:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 800007c:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 800008c:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 800009c:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 80000ac:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 80000bc:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................
 80000cc:	89 02 00 08 89 02 00 08 89 02 00 08 91 06 00 08     ................
 80000dc:	89 02 00 08 89 02 00 08 89 02 00 08 89 02 00 08     ................

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
 80001c0:	20000000 	.word	0x20000000

080001c4 <main>:
 80001c4:	b580      	push	{r7, lr}
 80001c6:	b0a2      	sub	sp, #136	; 0x88
 80001c8:	af00      	add	r7, sp, #0
 80001ca:	2300      	movs	r3, #0
 80001cc:	f887 3083 	strb.w	r3, [r7, #131]	; 0x83
 80001d0:	2300      	movs	r3, #0
 80001d2:	f8c7 3084 	str.w	r3, [r7, #132]	; 0x84
 80001d6:	f000 f85b 	bl	8000290 <system_init>
 80001da:	f000 f905 	bl	80003e8 <uart_init>
 80001de:	f7ff ff85 	bl	80000ec <led_init>
 80001e2:	4b0c      	ldr	r3, [pc, #48]	; (8000214 <main+0x50>)
 80001e4:	4a0c      	ldr	r2, [pc, #48]	; (8000218 <main+0x54>)
 80001e6:	601a      	str	r2, [r3, #0]
 80001e8:	480c      	ldr	r0, [pc, #48]	; (800021c <main+0x58>)
 80001ea:	f000 fc71 	bl	8000ad0 <xprintf>
 80001ee:	20e0      	movs	r0, #224	; 0xe0
 80001f0:	f7ff ff9a 	bl	8000128 <led_set>
 80001f4:	2064      	movs	r0, #100	; 0x64
 80001f6:	f7ff ffcf 	bl	8000198 <sleep>
 80001fa:	4809      	ldr	r0, [pc, #36]	; (8000220 <main+0x5c>)
 80001fc:	f000 fc68 	bl	8000ad0 <xprintf>
 8000200:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 8000204:	1c5a      	adds	r2, r3, #1
 8000206:	f8c7 2084 	str.w	r2, [r7, #132]	; 0x84
 800020a:	4806      	ldr	r0, [pc, #24]	; (8000224 <main+0x60>)
 800020c:	4619      	mov	r1, r3
 800020e:	f000 fc5f 	bl	8000ad0 <xprintf>
 8000212:	e7ef      	b.n	80001f4 <main+0x30>
 8000214:	20000814 	.word	0x20000814
 8000218:	0800045d 	.word	0x0800045d
 800021c:	08000e90 	.word	0x08000e90
 8000220:	08000e98 	.word	0x08000e98
 8000224:	08000eac 	.word	0x08000eac

08000228 <handler_reset>:
 8000228:	b580      	push	{r7, lr}
 800022a:	b082      	sub	sp, #8
 800022c:	af00      	add	r7, sp, #0
 800022e:	4b11      	ldr	r3, [pc, #68]	; (8000274 <handler_reset+0x4c>)
 8000230:	607b      	str	r3, [r7, #4]
 8000232:	4b11      	ldr	r3, [pc, #68]	; (8000278 <handler_reset+0x50>)
 8000234:	603b      	str	r3, [r7, #0]
 8000236:	e007      	b.n	8000248 <handler_reset+0x20>
 8000238:	683b      	ldr	r3, [r7, #0]
 800023a:	1d1a      	adds	r2, r3, #4
 800023c:	603a      	str	r2, [r7, #0]
 800023e:	687a      	ldr	r2, [r7, #4]
 8000240:	1d11      	adds	r1, r2, #4
 8000242:	6079      	str	r1, [r7, #4]
 8000244:	6812      	ldr	r2, [r2, #0]
 8000246:	601a      	str	r2, [r3, #0]
 8000248:	683b      	ldr	r3, [r7, #0]
 800024a:	4a0c      	ldr	r2, [pc, #48]	; (800027c <handler_reset+0x54>)
 800024c:	4293      	cmp	r3, r2
 800024e:	d3f3      	bcc.n	8000238 <handler_reset+0x10>
 8000250:	4b0b      	ldr	r3, [pc, #44]	; (8000280 <handler_reset+0x58>)
 8000252:	603b      	str	r3, [r7, #0]
 8000254:	e004      	b.n	8000260 <handler_reset+0x38>
 8000256:	683b      	ldr	r3, [r7, #0]
 8000258:	1d1a      	adds	r2, r3, #4
 800025a:	603a      	str	r2, [r7, #0]
 800025c:	2200      	movs	r2, #0
 800025e:	601a      	str	r2, [r3, #0]
 8000260:	683b      	ldr	r3, [r7, #0]
 8000262:	4a08      	ldr	r2, [pc, #32]	; (8000284 <handler_reset+0x5c>)
 8000264:	4293      	cmp	r3, r2
 8000266:	d3f6      	bcc.n	8000256 <handler_reset+0x2e>
 8000268:	f7ff ffac 	bl	80001c4 <main>
 800026c:	3708      	adds	r7, #8
 800026e:	46bd      	mov	sp, r7
 8000270:	bd80      	pop	{r7, pc}
 8000272:	bf00      	nop
 8000274:	08000ed8 	.word	0x08000ed8
 8000278:	20000000 	.word	0x20000000
 800027c:	20000000 	.word	0x20000000
 8000280:	20000000 	.word	0x20000000
 8000284:	20000820 	.word	0x20000820

08000288 <default_handler>:
 8000288:	b480      	push	{r7}
 800028a:	af00      	add	r7, sp, #0
 800028c:	e7fe      	b.n	800028c <default_handler+0x4>
 800028e:	bf00      	nop

08000290 <system_init>:
 8000290:	b480      	push	{r7}
 8000292:	af00      	add	r7, sp, #0
 8000294:	4a3e      	ldr	r2, [pc, #248]	; (8000390 <system_init+0x100>)
 8000296:	4b3e      	ldr	r3, [pc, #248]	; (8000390 <system_init+0x100>)
 8000298:	681b      	ldr	r3, [r3, #0]
 800029a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800029e:	6013      	str	r3, [r2, #0]
 80002a0:	bf00      	nop
 80002a2:	4b3b      	ldr	r3, [pc, #236]	; (8000390 <system_init+0x100>)
 80002a4:	681b      	ldr	r3, [r3, #0]
 80002a6:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80002aa:	2b00      	cmp	r3, #0
 80002ac:	d0f9      	beq.n	80002a2 <system_init+0x12>
 80002ae:	4a38      	ldr	r2, [pc, #224]	; (8000390 <system_init+0x100>)
 80002b0:	4b37      	ldr	r3, [pc, #220]	; (8000390 <system_init+0x100>)
 80002b2:	685b      	ldr	r3, [r3, #4]
 80002b4:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 80002b8:	6053      	str	r3, [r2, #4]
 80002ba:	4a35      	ldr	r2, [pc, #212]	; (8000390 <system_init+0x100>)
 80002bc:	4b34      	ldr	r3, [pc, #208]	; (8000390 <system_init+0x100>)
 80002be:	685b      	ldr	r3, [r3, #4]
 80002c0:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80002c4:	6053      	str	r3, [r2, #4]
 80002c6:	4a32      	ldr	r2, [pc, #200]	; (8000390 <system_init+0x100>)
 80002c8:	4b31      	ldr	r3, [pc, #196]	; (8000390 <system_init+0x100>)
 80002ca:	685b      	ldr	r3, [r3, #4]
 80002cc:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 80002d0:	6053      	str	r3, [r2, #4]
 80002d2:	4a2f      	ldr	r2, [pc, #188]	; (8000390 <system_init+0x100>)
 80002d4:	4b2e      	ldr	r3, [pc, #184]	; (8000390 <system_init+0x100>)
 80002d6:	685b      	ldr	r3, [r3, #4]
 80002d8:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 80002dc:	6053      	str	r3, [r2, #4]
 80002de:	4a2c      	ldr	r2, [pc, #176]	; (8000390 <system_init+0x100>)
 80002e0:	4b2b      	ldr	r3, [pc, #172]	; (8000390 <system_init+0x100>)
 80002e2:	681b      	ldr	r3, [r3, #0]
 80002e4:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80002e8:	6013      	str	r3, [r2, #0]
 80002ea:	bf00      	nop
 80002ec:	4b28      	ldr	r3, [pc, #160]	; (8000390 <system_init+0x100>)
 80002ee:	681b      	ldr	r3, [r3, #0]
 80002f0:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80002f4:	2b00      	cmp	r3, #0
 80002f6:	d0f9      	beq.n	80002ec <system_init+0x5c>
 80002f8:	4a26      	ldr	r2, [pc, #152]	; (8000394 <system_init+0x104>)
 80002fa:	4b26      	ldr	r3, [pc, #152]	; (8000394 <system_init+0x104>)
 80002fc:	681b      	ldr	r3, [r3, #0]
 80002fe:	f043 0310 	orr.w	r3, r3, #16
 8000302:	6013      	str	r3, [r2, #0]
 8000304:	4a23      	ldr	r2, [pc, #140]	; (8000394 <system_init+0x104>)
 8000306:	4b23      	ldr	r3, [pc, #140]	; (8000394 <system_init+0x104>)
 8000308:	681b      	ldr	r3, [r3, #0]
 800030a:	f023 0303 	bic.w	r3, r3, #3
 800030e:	6013      	str	r3, [r2, #0]
 8000310:	4a20      	ldr	r2, [pc, #128]	; (8000394 <system_init+0x104>)
 8000312:	4b20      	ldr	r3, [pc, #128]	; (8000394 <system_init+0x104>)
 8000314:	681b      	ldr	r3, [r3, #0]
 8000316:	f043 0302 	orr.w	r3, r3, #2
 800031a:	6013      	str	r3, [r2, #0]
 800031c:	4a1c      	ldr	r2, [pc, #112]	; (8000390 <system_init+0x100>)
 800031e:	4b1c      	ldr	r3, [pc, #112]	; (8000390 <system_init+0x100>)
 8000320:	685b      	ldr	r3, [r3, #4]
 8000322:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000326:	6053      	str	r3, [r2, #4]
 8000328:	4a19      	ldr	r2, [pc, #100]	; (8000390 <system_init+0x100>)
 800032a:	4b19      	ldr	r3, [pc, #100]	; (8000390 <system_init+0x100>)
 800032c:	685b      	ldr	r3, [r3, #4]
 800032e:	f023 0303 	bic.w	r3, r3, #3
 8000332:	6053      	str	r3, [r2, #4]
 8000334:	4a16      	ldr	r2, [pc, #88]	; (8000390 <system_init+0x100>)
 8000336:	4b16      	ldr	r3, [pc, #88]	; (8000390 <system_init+0x100>)
 8000338:	685b      	ldr	r3, [r3, #4]
 800033a:	f043 0302 	orr.w	r3, r3, #2
 800033e:	6053      	str	r3, [r2, #4]
 8000340:	bf00      	nop
 8000342:	4b13      	ldr	r3, [pc, #76]	; (8000390 <system_init+0x100>)
 8000344:	685b      	ldr	r3, [r3, #4]
 8000346:	f003 030c 	and.w	r3, r3, #12
 800034a:	2b08      	cmp	r3, #8
 800034c:	d1f9      	bne.n	8000342 <system_init+0xb2>
 800034e:	4a10      	ldr	r2, [pc, #64]	; (8000390 <system_init+0x100>)
 8000350:	4b0f      	ldr	r3, [pc, #60]	; (8000390 <system_init+0x100>)
 8000352:	699b      	ldr	r3, [r3, #24]
 8000354:	f043 0305 	orr.w	r3, r3, #5
 8000358:	6193      	str	r3, [r2, #24]
 800035a:	4a0d      	ldr	r2, [pc, #52]	; (8000390 <system_init+0x100>)
 800035c:	4b0c      	ldr	r3, [pc, #48]	; (8000390 <system_init+0x100>)
 800035e:	69db      	ldr	r3, [r3, #28]
 8000360:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000364:	61d3      	str	r3, [r2, #28]
 8000366:	4a0a      	ldr	r2, [pc, #40]	; (8000390 <system_init+0x100>)
 8000368:	4b09      	ldr	r3, [pc, #36]	; (8000390 <system_init+0x100>)
 800036a:	699b      	ldr	r3, [r3, #24]
 800036c:	f043 0318 	orr.w	r3, r3, #24
 8000370:	6193      	str	r3, [r2, #24]
 8000372:	4b09      	ldr	r3, [pc, #36]	; (8000398 <system_init+0x108>)
 8000374:	f242 3227 	movw	r2, #8999	; 0x2327
 8000378:	605a      	str	r2, [r3, #4]
 800037a:	4b07      	ldr	r3, [pc, #28]	; (8000398 <system_init+0x108>)
 800037c:	2200      	movs	r2, #0
 800037e:	609a      	str	r2, [r3, #8]
 8000380:	4b05      	ldr	r3, [pc, #20]	; (8000398 <system_init+0x108>)
 8000382:	2203      	movs	r2, #3
 8000384:	601a      	str	r2, [r3, #0]
 8000386:	46bd      	mov	sp, r7
 8000388:	f85d 7b04 	ldr.w	r7, [sp], #4
 800038c:	4770      	bx	lr
 800038e:	bf00      	nop
 8000390:	40021000 	.word	0x40021000
 8000394:	40022000 	.word	0x40022000
 8000398:	e000e010 	.word	0xe000e010

0800039c <SysTick_Handler>:
 800039c:	b480      	push	{r7}
 800039e:	af00      	add	r7, sp, #0
 80003a0:	4b04      	ldr	r3, [pc, #16]	; (80003b4 <SysTick_Handler+0x18>)
 80003a2:	681b      	ldr	r3, [r3, #0]
 80003a4:	3301      	adds	r3, #1
 80003a6:	4a03      	ldr	r2, [pc, #12]	; (80003b4 <SysTick_Handler+0x18>)
 80003a8:	6013      	str	r3, [r2, #0]
 80003aa:	46bd      	mov	sp, r7
 80003ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003b0:	4770      	bx	lr
 80003b2:	bf00      	nop
 80003b4:	20000000 	.word	0x20000000

080003b8 <NVIC_EnableIRQ>:
 80003b8:	b480      	push	{r7}
 80003ba:	b083      	sub	sp, #12
 80003bc:	af00      	add	r7, sp, #0
 80003be:	4603      	mov	r3, r0
 80003c0:	71fb      	strb	r3, [r7, #7]
 80003c2:	4908      	ldr	r1, [pc, #32]	; (80003e4 <NVIC_EnableIRQ+0x2c>)
 80003c4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80003c8:	095b      	lsrs	r3, r3, #5
 80003ca:	79fa      	ldrb	r2, [r7, #7]
 80003cc:	f002 021f 	and.w	r2, r2, #31
 80003d0:	2001      	movs	r0, #1
 80003d2:	fa00 f202 	lsl.w	r2, r0, r2
 80003d6:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80003da:	370c      	adds	r7, #12
 80003dc:	46bd      	mov	sp, r7
 80003de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003e2:	4770      	bx	lr
 80003e4:	e000e100 	.word	0xe000e100

080003e8 <uart_init>:
 80003e8:	b580      	push	{r7, lr}
 80003ea:	af00      	add	r7, sp, #0
 80003ec:	4a19      	ldr	r2, [pc, #100]	; (8000454 <uart_init+0x6c>)
 80003ee:	4b19      	ldr	r3, [pc, #100]	; (8000454 <uart_init+0x6c>)
 80003f0:	681b      	ldr	r3, [r3, #0]
 80003f2:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 80003f6:	6013      	str	r3, [r2, #0]
 80003f8:	4a16      	ldr	r2, [pc, #88]	; (8000454 <uart_init+0x6c>)
 80003fa:	4b16      	ldr	r3, [pc, #88]	; (8000454 <uart_init+0x6c>)
 80003fc:	681b      	ldr	r3, [r3, #0]
 80003fe:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 8000402:	6013      	str	r3, [r2, #0]
 8000404:	4a14      	ldr	r2, [pc, #80]	; (8000458 <uart_init+0x70>)
 8000406:	4b14      	ldr	r3, [pc, #80]	; (8000458 <uart_init+0x70>)
 8000408:	899b      	ldrh	r3, [r3, #12]
 800040a:	b29b      	uxth	r3, r3
 800040c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000410:	b29b      	uxth	r3, r3
 8000412:	8193      	strh	r3, [r2, #12]
 8000414:	4a10      	ldr	r2, [pc, #64]	; (8000458 <uart_init+0x70>)
 8000416:	4b10      	ldr	r3, [pc, #64]	; (8000458 <uart_init+0x70>)
 8000418:	899b      	ldrh	r3, [r3, #12]
 800041a:	b29b      	uxth	r3, r3
 800041c:	f043 0304 	orr.w	r3, r3, #4
 8000420:	b29b      	uxth	r3, r3
 8000422:	8193      	strh	r3, [r2, #12]
 8000424:	4a0c      	ldr	r2, [pc, #48]	; (8000458 <uart_init+0x70>)
 8000426:	4b0c      	ldr	r3, [pc, #48]	; (8000458 <uart_init+0x70>)
 8000428:	899b      	ldrh	r3, [r3, #12]
 800042a:	b29b      	uxth	r3, r3
 800042c:	f043 0320 	orr.w	r3, r3, #32
 8000430:	b29b      	uxth	r3, r3
 8000432:	8193      	strh	r3, [r2, #12]
 8000434:	4a08      	ldr	r2, [pc, #32]	; (8000458 <uart_init+0x70>)
 8000436:	4b08      	ldr	r3, [pc, #32]	; (8000458 <uart_init+0x70>)
 8000438:	899b      	ldrh	r3, [r3, #12]
 800043a:	b29b      	uxth	r3, r3
 800043c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000440:	b29b      	uxth	r3, r3
 8000442:	8193      	strh	r3, [r2, #12]
 8000444:	2026      	movs	r0, #38	; 0x26
 8000446:	f7ff ffb7 	bl	80003b8 <NVIC_EnableIRQ>
 800044a:	4b03      	ldr	r3, [pc, #12]	; (8000458 <uart_init+0x70>)
 800044c:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000450:	811a      	strh	r2, [r3, #8]
 8000452:	bd80      	pop	{r7, pc}
 8000454:	40010800 	.word	0x40010800
 8000458:	40004400 	.word	0x40004400

0800045c <uart_putch>:
 800045c:	b480      	push	{r7}
 800045e:	b083      	sub	sp, #12
 8000460:	af00      	add	r7, sp, #0
 8000462:	4603      	mov	r3, r0
 8000464:	71fb      	strb	r3, [r7, #7]
 8000466:	4b13      	ldr	r3, [pc, #76]	; (80004b4 <uart_putch+0x58>)
 8000468:	681a      	ldr	r2, [r3, #0]
 800046a:	4b13      	ldr	r3, [pc, #76]	; (80004b8 <uart_putch+0x5c>)
 800046c:	681b      	ldr	r3, [r3, #0]
 800046e:	429a      	cmp	r2, r3
 8000470:	d107      	bne.n	8000482 <uart_putch+0x26>
 8000472:	4a12      	ldr	r2, [pc, #72]	; (80004bc <uart_putch+0x60>)
 8000474:	4b11      	ldr	r3, [pc, #68]	; (80004bc <uart_putch+0x60>)
 8000476:	899b      	ldrh	r3, [r3, #12]
 8000478:	b29b      	uxth	r3, r3
 800047a:	f043 0308 	orr.w	r3, r3, #8
 800047e:	b29b      	uxth	r3, r3
 8000480:	8193      	strh	r3, [r2, #12]
 8000482:	4b0c      	ldr	r3, [pc, #48]	; (80004b4 <uart_putch+0x58>)
 8000484:	681b      	ldr	r3, [r3, #0]
 8000486:	490e      	ldr	r1, [pc, #56]	; (80004c0 <uart_putch+0x64>)
 8000488:	79fa      	ldrb	r2, [r7, #7]
 800048a:	54ca      	strb	r2, [r1, r3]
 800048c:	4b09      	ldr	r3, [pc, #36]	; (80004b4 <uart_putch+0x58>)
 800048e:	681b      	ldr	r3, [r3, #0]
 8000490:	3301      	adds	r3, #1
 8000492:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000496:	4a07      	ldr	r2, [pc, #28]	; (80004b4 <uart_putch+0x58>)
 8000498:	6013      	str	r3, [r2, #0]
 800049a:	4a08      	ldr	r2, [pc, #32]	; (80004bc <uart_putch+0x60>)
 800049c:	4b07      	ldr	r3, [pc, #28]	; (80004bc <uart_putch+0x60>)
 800049e:	899b      	ldrh	r3, [r3, #12]
 80004a0:	b29b      	uxth	r3, r3
 80004a2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80004a6:	b29b      	uxth	r3, r3
 80004a8:	8193      	strh	r3, [r2, #12]
 80004aa:	370c      	adds	r7, #12
 80004ac:	46bd      	mov	sp, r7
 80004ae:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004b2:	4770      	bx	lr
 80004b4:	20000408 	.word	0x20000408
 80004b8:	20000404 	.word	0x20000404
 80004bc:	40004400 	.word	0x40004400
 80004c0:	20000004 	.word	0x20000004

080004c4 <uart_send>:
 80004c4:	b480      	push	{r7}
 80004c6:	b085      	sub	sp, #20
 80004c8:	af00      	add	r7, sp, #0
 80004ca:	6078      	str	r0, [r7, #4]
 80004cc:	6039      	str	r1, [r7, #0]
 80004ce:	4b20      	ldr	r3, [pc, #128]	; (8000550 <uart_send+0x8c>)
 80004d0:	681a      	ldr	r2, [r3, #0]
 80004d2:	4b20      	ldr	r3, [pc, #128]	; (8000554 <uart_send+0x90>)
 80004d4:	681b      	ldr	r3, [r3, #0]
 80004d6:	429a      	cmp	r2, r3
 80004d8:	d107      	bne.n	80004ea <uart_send+0x26>
 80004da:	4a1f      	ldr	r2, [pc, #124]	; (8000558 <uart_send+0x94>)
 80004dc:	4b1e      	ldr	r3, [pc, #120]	; (8000558 <uart_send+0x94>)
 80004de:	899b      	ldrh	r3, [r3, #12]
 80004e0:	b29b      	uxth	r3, r3
 80004e2:	f043 0308 	orr.w	r3, r3, #8
 80004e6:	b29b      	uxth	r3, r3
 80004e8:	8193      	strh	r3, [r2, #12]
 80004ea:	2300      	movs	r3, #0
 80004ec:	60fb      	str	r3, [r7, #12]
 80004ee:	e01b      	b.n	8000528 <uart_send+0x64>
 80004f0:	4b17      	ldr	r3, [pc, #92]	; (8000550 <uart_send+0x8c>)
 80004f2:	681b      	ldr	r3, [r3, #0]
 80004f4:	68fa      	ldr	r2, [r7, #12]
 80004f6:	6879      	ldr	r1, [r7, #4]
 80004f8:	440a      	add	r2, r1
 80004fa:	7811      	ldrb	r1, [r2, #0]
 80004fc:	4a17      	ldr	r2, [pc, #92]	; (800055c <uart_send+0x98>)
 80004fe:	54d1      	strb	r1, [r2, r3]
 8000500:	4b13      	ldr	r3, [pc, #76]	; (8000550 <uart_send+0x8c>)
 8000502:	681b      	ldr	r3, [r3, #0]
 8000504:	3301      	adds	r3, #1
 8000506:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800050a:	4a11      	ldr	r2, [pc, #68]	; (8000550 <uart_send+0x8c>)
 800050c:	6013      	str	r3, [r2, #0]
 800050e:	4b10      	ldr	r3, [pc, #64]	; (8000550 <uart_send+0x8c>)
 8000510:	681a      	ldr	r2, [r3, #0]
 8000512:	4b10      	ldr	r3, [pc, #64]	; (8000554 <uart_send+0x90>)
 8000514:	681b      	ldr	r3, [r3, #0]
 8000516:	429a      	cmp	r2, r3
 8000518:	d103      	bne.n	8000522 <uart_send+0x5e>
 800051a:	68fb      	ldr	r3, [r7, #12]
 800051c:	3301      	adds	r3, #1
 800051e:	60fb      	str	r3, [r7, #12]
 8000520:	e006      	b.n	8000530 <uart_send+0x6c>
 8000522:	68fb      	ldr	r3, [r7, #12]
 8000524:	3301      	adds	r3, #1
 8000526:	60fb      	str	r3, [r7, #12]
 8000528:	68fa      	ldr	r2, [r7, #12]
 800052a:	683b      	ldr	r3, [r7, #0]
 800052c:	429a      	cmp	r2, r3
 800052e:	dbdf      	blt.n	80004f0 <uart_send+0x2c>
 8000530:	4a09      	ldr	r2, [pc, #36]	; (8000558 <uart_send+0x94>)
 8000532:	4b09      	ldr	r3, [pc, #36]	; (8000558 <uart_send+0x94>)
 8000534:	899b      	ldrh	r3, [r3, #12]
 8000536:	b29b      	uxth	r3, r3
 8000538:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800053c:	b29b      	uxth	r3, r3
 800053e:	8193      	strh	r3, [r2, #12]
 8000540:	68fb      	ldr	r3, [r7, #12]
 8000542:	4618      	mov	r0, r3
 8000544:	3714      	adds	r7, #20
 8000546:	46bd      	mov	sp, r7
 8000548:	f85d 7b04 	ldr.w	r7, [sp], #4
 800054c:	4770      	bx	lr
 800054e:	bf00      	nop
 8000550:	20000408 	.word	0x20000408
 8000554:	20000404 	.word	0x20000404
 8000558:	40004400 	.word	0x40004400
 800055c:	20000004 	.word	0x20000004

08000560 <uart_send_str>:
 8000560:	b480      	push	{r7}
 8000562:	b085      	sub	sp, #20
 8000564:	af00      	add	r7, sp, #0
 8000566:	6078      	str	r0, [r7, #4]
 8000568:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800056c:	60bb      	str	r3, [r7, #8]
 800056e:	4b25      	ldr	r3, [pc, #148]	; (8000604 <uart_send_str+0xa4>)
 8000570:	681a      	ldr	r2, [r3, #0]
 8000572:	4b25      	ldr	r3, [pc, #148]	; (8000608 <uart_send_str+0xa8>)
 8000574:	681b      	ldr	r3, [r3, #0]
 8000576:	1ad3      	subs	r3, r2, r3
 8000578:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800057c:	68ba      	ldr	r2, [r7, #8]
 800057e:	1ad3      	subs	r3, r2, r3
 8000580:	60bb      	str	r3, [r7, #8]
 8000582:	4b20      	ldr	r3, [pc, #128]	; (8000604 <uart_send_str+0xa4>)
 8000584:	681a      	ldr	r2, [r3, #0]
 8000586:	4b20      	ldr	r3, [pc, #128]	; (8000608 <uart_send_str+0xa8>)
 8000588:	681b      	ldr	r3, [r3, #0]
 800058a:	429a      	cmp	r2, r3
 800058c:	d107      	bne.n	800059e <uart_send_str+0x3e>
 800058e:	4a1f      	ldr	r2, [pc, #124]	; (800060c <uart_send_str+0xac>)
 8000590:	4b1e      	ldr	r3, [pc, #120]	; (800060c <uart_send_str+0xac>)
 8000592:	899b      	ldrh	r3, [r3, #12]
 8000594:	b29b      	uxth	r3, r3
 8000596:	f043 0308 	orr.w	r3, r3, #8
 800059a:	b29b      	uxth	r3, r3
 800059c:	8193      	strh	r3, [r2, #12]
 800059e:	2300      	movs	r3, #0
 80005a0:	60fb      	str	r3, [r7, #12]
 80005a2:	e01b      	b.n	80005dc <uart_send_str+0x7c>
 80005a4:	68fb      	ldr	r3, [r7, #12]
 80005a6:	687a      	ldr	r2, [r7, #4]
 80005a8:	4413      	add	r3, r2
 80005aa:	781b      	ldrb	r3, [r3, #0]
 80005ac:	2b00      	cmp	r3, #0
 80005ae:	d103      	bne.n	80005b8 <uart_send_str+0x58>
 80005b0:	68fb      	ldr	r3, [r7, #12]
 80005b2:	3301      	adds	r3, #1
 80005b4:	60fb      	str	r3, [r7, #12]
 80005b6:	e015      	b.n	80005e4 <uart_send_str+0x84>
 80005b8:	4b12      	ldr	r3, [pc, #72]	; (8000604 <uart_send_str+0xa4>)
 80005ba:	681b      	ldr	r3, [r3, #0]
 80005bc:	68fa      	ldr	r2, [r7, #12]
 80005be:	6879      	ldr	r1, [r7, #4]
 80005c0:	440a      	add	r2, r1
 80005c2:	7811      	ldrb	r1, [r2, #0]
 80005c4:	4a12      	ldr	r2, [pc, #72]	; (8000610 <uart_send_str+0xb0>)
 80005c6:	54d1      	strb	r1, [r2, r3]
 80005c8:	4b0e      	ldr	r3, [pc, #56]	; (8000604 <uart_send_str+0xa4>)
 80005ca:	681b      	ldr	r3, [r3, #0]
 80005cc:	3301      	adds	r3, #1
 80005ce:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80005d2:	4a0c      	ldr	r2, [pc, #48]	; (8000604 <uart_send_str+0xa4>)
 80005d4:	6013      	str	r3, [r2, #0]
 80005d6:	68fb      	ldr	r3, [r7, #12]
 80005d8:	3301      	adds	r3, #1
 80005da:	60fb      	str	r3, [r7, #12]
 80005dc:	68fa      	ldr	r2, [r7, #12]
 80005de:	68bb      	ldr	r3, [r7, #8]
 80005e0:	429a      	cmp	r2, r3
 80005e2:	dbdf      	blt.n	80005a4 <uart_send_str+0x44>
 80005e4:	4a09      	ldr	r2, [pc, #36]	; (800060c <uart_send_str+0xac>)
 80005e6:	4b09      	ldr	r3, [pc, #36]	; (800060c <uart_send_str+0xac>)
 80005e8:	899b      	ldrh	r3, [r3, #12]
 80005ea:	b29b      	uxth	r3, r3
 80005ec:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80005f0:	b29b      	uxth	r3, r3
 80005f2:	8193      	strh	r3, [r2, #12]
 80005f4:	68fb      	ldr	r3, [r7, #12]
 80005f6:	4618      	mov	r0, r3
 80005f8:	3714      	adds	r7, #20
 80005fa:	46bd      	mov	sp, r7
 80005fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000600:	4770      	bx	lr
 8000602:	bf00      	nop
 8000604:	20000408 	.word	0x20000408
 8000608:	20000404 	.word	0x20000404
 800060c:	40004400 	.word	0x40004400
 8000610:	20000004 	.word	0x20000004

08000614 <uart_read>:
 8000614:	b480      	push	{r7}
 8000616:	b085      	sub	sp, #20
 8000618:	af00      	add	r7, sp, #0
 800061a:	6078      	str	r0, [r7, #4]
 800061c:	6039      	str	r1, [r7, #0]
 800061e:	4b19      	ldr	r3, [pc, #100]	; (8000684 <uart_read+0x70>)
 8000620:	681a      	ldr	r2, [r3, #0]
 8000622:	4b19      	ldr	r3, [pc, #100]	; (8000688 <uart_read+0x74>)
 8000624:	681b      	ldr	r3, [r3, #0]
 8000626:	429a      	cmp	r2, r3
 8000628:	d101      	bne.n	800062e <uart_read+0x1a>
 800062a:	2300      	movs	r3, #0
 800062c:	e023      	b.n	8000676 <uart_read+0x62>
 800062e:	2300      	movs	r3, #0
 8000630:	60fb      	str	r3, [r7, #12]
 8000632:	e01b      	b.n	800066c <uart_read+0x58>
 8000634:	68fb      	ldr	r3, [r7, #12]
 8000636:	687a      	ldr	r2, [r7, #4]
 8000638:	4413      	add	r3, r2
 800063a:	4a12      	ldr	r2, [pc, #72]	; (8000684 <uart_read+0x70>)
 800063c:	6812      	ldr	r2, [r2, #0]
 800063e:	4913      	ldr	r1, [pc, #76]	; (800068c <uart_read+0x78>)
 8000640:	5c8a      	ldrb	r2, [r1, r2]
 8000642:	701a      	strb	r2, [r3, #0]
 8000644:	4b0f      	ldr	r3, [pc, #60]	; (8000684 <uart_read+0x70>)
 8000646:	681b      	ldr	r3, [r3, #0]
 8000648:	3301      	adds	r3, #1
 800064a:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800064e:	4a0d      	ldr	r2, [pc, #52]	; (8000684 <uart_read+0x70>)
 8000650:	6013      	str	r3, [r2, #0]
 8000652:	4b0c      	ldr	r3, [pc, #48]	; (8000684 <uart_read+0x70>)
 8000654:	681a      	ldr	r2, [r3, #0]
 8000656:	4b0c      	ldr	r3, [pc, #48]	; (8000688 <uart_read+0x74>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	429a      	cmp	r2, r3
 800065c:	d103      	bne.n	8000666 <uart_read+0x52>
 800065e:	68fb      	ldr	r3, [r7, #12]
 8000660:	3301      	adds	r3, #1
 8000662:	60fb      	str	r3, [r7, #12]
 8000664:	e006      	b.n	8000674 <uart_read+0x60>
 8000666:	68fb      	ldr	r3, [r7, #12]
 8000668:	3301      	adds	r3, #1
 800066a:	60fb      	str	r3, [r7, #12]
 800066c:	68fa      	ldr	r2, [r7, #12]
 800066e:	683b      	ldr	r3, [r7, #0]
 8000670:	429a      	cmp	r2, r3
 8000672:	dbdf      	blt.n	8000634 <uart_read+0x20>
 8000674:	68fb      	ldr	r3, [r7, #12]
 8000676:	4618      	mov	r0, r3
 8000678:	3714      	adds	r7, #20
 800067a:	46bd      	mov	sp, r7
 800067c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000680:	4770      	bx	lr
 8000682:	bf00      	nop
 8000684:	20000810 	.word	0x20000810
 8000688:	2000080c 	.word	0x2000080c
 800068c:	2000040c 	.word	0x2000040c

08000690 <USART2_IRQHandler>:
 8000690:	b480      	push	{r7}
 8000692:	af00      	add	r7, sp, #0
 8000694:	4b1e      	ldr	r3, [pc, #120]	; (8000710 <USART2_IRQHandler+0x80>)
 8000696:	881b      	ldrh	r3, [r3, #0]
 8000698:	b29b      	uxth	r3, r3
 800069a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800069e:	2b00      	cmp	r3, #0
 80006a0:	d01c      	beq.n	80006dc <USART2_IRQHandler+0x4c>
 80006a2:	4b1c      	ldr	r3, [pc, #112]	; (8000714 <USART2_IRQHandler+0x84>)
 80006a4:	681a      	ldr	r2, [r3, #0]
 80006a6:	4b1c      	ldr	r3, [pc, #112]	; (8000718 <USART2_IRQHandler+0x88>)
 80006a8:	681b      	ldr	r3, [r3, #0]
 80006aa:	429a      	cmp	r2, r3
 80006ac:	d108      	bne.n	80006c0 <USART2_IRQHandler+0x30>
 80006ae:	4a18      	ldr	r2, [pc, #96]	; (8000710 <USART2_IRQHandler+0x80>)
 80006b0:	4b17      	ldr	r3, [pc, #92]	; (8000710 <USART2_IRQHandler+0x80>)
 80006b2:	899b      	ldrh	r3, [r3, #12]
 80006b4:	b29b      	uxth	r3, r3
 80006b6:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80006ba:	b29b      	uxth	r3, r3
 80006bc:	8193      	strh	r3, [r2, #12]
 80006be:	e00d      	b.n	80006dc <USART2_IRQHandler+0x4c>
 80006c0:	4a13      	ldr	r2, [pc, #76]	; (8000710 <USART2_IRQHandler+0x80>)
 80006c2:	4b14      	ldr	r3, [pc, #80]	; (8000714 <USART2_IRQHandler+0x84>)
 80006c4:	681b      	ldr	r3, [r3, #0]
 80006c6:	4915      	ldr	r1, [pc, #84]	; (800071c <USART2_IRQHandler+0x8c>)
 80006c8:	5ccb      	ldrb	r3, [r1, r3]
 80006ca:	b29b      	uxth	r3, r3
 80006cc:	8093      	strh	r3, [r2, #4]
 80006ce:	4b11      	ldr	r3, [pc, #68]	; (8000714 <USART2_IRQHandler+0x84>)
 80006d0:	681b      	ldr	r3, [r3, #0]
 80006d2:	3301      	adds	r3, #1
 80006d4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80006d8:	4a0e      	ldr	r2, [pc, #56]	; (8000714 <USART2_IRQHandler+0x84>)
 80006da:	6013      	str	r3, [r2, #0]
 80006dc:	4b0c      	ldr	r3, [pc, #48]	; (8000710 <USART2_IRQHandler+0x80>)
 80006de:	881b      	ldrh	r3, [r3, #0]
 80006e0:	b29b      	uxth	r3, r3
 80006e2:	f003 0320 	and.w	r3, r3, #32
 80006e6:	2b00      	cmp	r3, #0
 80006e8:	d00e      	beq.n	8000708 <USART2_IRQHandler+0x78>
 80006ea:	4b0d      	ldr	r3, [pc, #52]	; (8000720 <USART2_IRQHandler+0x90>)
 80006ec:	681b      	ldr	r3, [r3, #0]
 80006ee:	4a08      	ldr	r2, [pc, #32]	; (8000710 <USART2_IRQHandler+0x80>)
 80006f0:	8892      	ldrh	r2, [r2, #4]
 80006f2:	b292      	uxth	r2, r2
 80006f4:	b2d1      	uxtb	r1, r2
 80006f6:	4a0b      	ldr	r2, [pc, #44]	; (8000724 <USART2_IRQHandler+0x94>)
 80006f8:	54d1      	strb	r1, [r2, r3]
 80006fa:	4b09      	ldr	r3, [pc, #36]	; (8000720 <USART2_IRQHandler+0x90>)
 80006fc:	681b      	ldr	r3, [r3, #0]
 80006fe:	3301      	adds	r3, #1
 8000700:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000704:	4a06      	ldr	r2, [pc, #24]	; (8000720 <USART2_IRQHandler+0x90>)
 8000706:	6013      	str	r3, [r2, #0]
 8000708:	46bd      	mov	sp, r7
 800070a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800070e:	4770      	bx	lr
 8000710:	40004400 	.word	0x40004400
 8000714:	20000404 	.word	0x20000404
 8000718:	20000408 	.word	0x20000408
 800071c:	20000004 	.word	0x20000004
 8000720:	2000080c 	.word	0x2000080c
 8000724:	2000040c 	.word	0x2000040c

08000728 <xputc>:
 8000728:	b580      	push	{r7, lr}
 800072a:	b082      	sub	sp, #8
 800072c:	af00      	add	r7, sp, #0
 800072e:	4603      	mov	r3, r0
 8000730:	71fb      	strb	r3, [r7, #7]
 8000732:	79fb      	ldrb	r3, [r7, #7]
 8000734:	2b0a      	cmp	r3, #10
 8000736:	d102      	bne.n	800073e <xputc+0x16>
 8000738:	200d      	movs	r0, #13
 800073a:	f7ff fff5 	bl	8000728 <xputc>
 800073e:	4b0c      	ldr	r3, [pc, #48]	; (8000770 <xputc+0x48>)
 8000740:	681b      	ldr	r3, [r3, #0]
 8000742:	2b00      	cmp	r3, #0
 8000744:	d007      	beq.n	8000756 <xputc+0x2e>
 8000746:	4b0a      	ldr	r3, [pc, #40]	; (8000770 <xputc+0x48>)
 8000748:	681b      	ldr	r3, [r3, #0]
 800074a:	1c5a      	adds	r2, r3, #1
 800074c:	4908      	ldr	r1, [pc, #32]	; (8000770 <xputc+0x48>)
 800074e:	600a      	str	r2, [r1, #0]
 8000750:	79fa      	ldrb	r2, [r7, #7]
 8000752:	701a      	strb	r2, [r3, #0]
 8000754:	e008      	b.n	8000768 <xputc+0x40>
 8000756:	4b07      	ldr	r3, [pc, #28]	; (8000774 <xputc+0x4c>)
 8000758:	681b      	ldr	r3, [r3, #0]
 800075a:	2b00      	cmp	r3, #0
 800075c:	d004      	beq.n	8000768 <xputc+0x40>
 800075e:	4b05      	ldr	r3, [pc, #20]	; (8000774 <xputc+0x4c>)
 8000760:	681b      	ldr	r3, [r3, #0]
 8000762:	79fa      	ldrb	r2, [r7, #7]
 8000764:	4610      	mov	r0, r2
 8000766:	4798      	blx	r3
 8000768:	3708      	adds	r7, #8
 800076a:	46bd      	mov	sp, r7
 800076c:	bd80      	pop	{r7, pc}
 800076e:	bf00      	nop
 8000770:	20000818 	.word	0x20000818
 8000774:	20000814 	.word	0x20000814

08000778 <xputs>:
 8000778:	b580      	push	{r7, lr}
 800077a:	b082      	sub	sp, #8
 800077c:	af00      	add	r7, sp, #0
 800077e:	6078      	str	r0, [r7, #4]
 8000780:	e006      	b.n	8000790 <xputs+0x18>
 8000782:	687b      	ldr	r3, [r7, #4]
 8000784:	1c5a      	adds	r2, r3, #1
 8000786:	607a      	str	r2, [r7, #4]
 8000788:	781b      	ldrb	r3, [r3, #0]
 800078a:	4618      	mov	r0, r3
 800078c:	f7ff ffcc 	bl	8000728 <xputc>
 8000790:	687b      	ldr	r3, [r7, #4]
 8000792:	781b      	ldrb	r3, [r3, #0]
 8000794:	2b00      	cmp	r3, #0
 8000796:	d1f4      	bne.n	8000782 <xputs+0xa>
 8000798:	3708      	adds	r7, #8
 800079a:	46bd      	mov	sp, r7
 800079c:	bd80      	pop	{r7, pc}
 800079e:	bf00      	nop

080007a0 <xfputs>:
 80007a0:	b580      	push	{r7, lr}
 80007a2:	b084      	sub	sp, #16
 80007a4:	af00      	add	r7, sp, #0
 80007a6:	6078      	str	r0, [r7, #4]
 80007a8:	6039      	str	r1, [r7, #0]
 80007aa:	4b0c      	ldr	r3, [pc, #48]	; (80007dc <xfputs+0x3c>)
 80007ac:	681b      	ldr	r3, [r3, #0]
 80007ae:	60fb      	str	r3, [r7, #12]
 80007b0:	4a0a      	ldr	r2, [pc, #40]	; (80007dc <xfputs+0x3c>)
 80007b2:	687b      	ldr	r3, [r7, #4]
 80007b4:	6013      	str	r3, [r2, #0]
 80007b6:	e006      	b.n	80007c6 <xfputs+0x26>
 80007b8:	683b      	ldr	r3, [r7, #0]
 80007ba:	1c5a      	adds	r2, r3, #1
 80007bc:	603a      	str	r2, [r7, #0]
 80007be:	781b      	ldrb	r3, [r3, #0]
 80007c0:	4618      	mov	r0, r3
 80007c2:	f7ff ffb1 	bl	8000728 <xputc>
 80007c6:	683b      	ldr	r3, [r7, #0]
 80007c8:	781b      	ldrb	r3, [r3, #0]
 80007ca:	2b00      	cmp	r3, #0
 80007cc:	d1f4      	bne.n	80007b8 <xfputs+0x18>
 80007ce:	4a03      	ldr	r2, [pc, #12]	; (80007dc <xfputs+0x3c>)
 80007d0:	68fb      	ldr	r3, [r7, #12]
 80007d2:	6013      	str	r3, [r2, #0]
 80007d4:	3710      	adds	r7, #16
 80007d6:	46bd      	mov	sp, r7
 80007d8:	bd80      	pop	{r7, pc}
 80007da:	bf00      	nop
 80007dc:	20000814 	.word	0x20000814

080007e0 <xvprintf>:
 80007e0:	b580      	push	{r7, lr}
 80007e2:	b08e      	sub	sp, #56	; 0x38
 80007e4:	af00      	add	r7, sp, #0
 80007e6:	6078      	str	r0, [r7, #4]
 80007e8:	6039      	str	r1, [r7, #0]
 80007ea:	687b      	ldr	r3, [r7, #4]
 80007ec:	1c5a      	adds	r2, r3, #1
 80007ee:	607a      	str	r2, [r7, #4]
 80007f0:	781b      	ldrb	r3, [r3, #0]
 80007f2:	77fb      	strb	r3, [r7, #31]
 80007f4:	7ffb      	ldrb	r3, [r7, #31]
 80007f6:	2b00      	cmp	r3, #0
 80007f8:	d100      	bne.n	80007fc <xvprintf+0x1c>
 80007fa:	e166      	b.n	8000aca <xvprintf+0x2ea>
 80007fc:	7ffb      	ldrb	r3, [r7, #31]
 80007fe:	2b25      	cmp	r3, #37	; 0x25
 8000800:	d004      	beq.n	800080c <xvprintf+0x2c>
 8000802:	7ffb      	ldrb	r3, [r7, #31]
 8000804:	4618      	mov	r0, r3
 8000806:	f7ff ff8f 	bl	8000728 <xputc>
 800080a:	e15d      	b.n	8000ac8 <xvprintf+0x2e8>
 800080c:	2300      	movs	r3, #0
 800080e:	627b      	str	r3, [r7, #36]	; 0x24
 8000810:	687b      	ldr	r3, [r7, #4]
 8000812:	1c5a      	adds	r2, r3, #1
 8000814:	607a      	str	r2, [r7, #4]
 8000816:	781b      	ldrb	r3, [r3, #0]
 8000818:	77fb      	strb	r3, [r7, #31]
 800081a:	7ffb      	ldrb	r3, [r7, #31]
 800081c:	2b30      	cmp	r3, #48	; 0x30
 800081e:	d107      	bne.n	8000830 <xvprintf+0x50>
 8000820:	2301      	movs	r3, #1
 8000822:	627b      	str	r3, [r7, #36]	; 0x24
 8000824:	687b      	ldr	r3, [r7, #4]
 8000826:	1c5a      	adds	r2, r3, #1
 8000828:	607a      	str	r2, [r7, #4]
 800082a:	781b      	ldrb	r3, [r3, #0]
 800082c:	77fb      	strb	r3, [r7, #31]
 800082e:	e009      	b.n	8000844 <xvprintf+0x64>
 8000830:	7ffb      	ldrb	r3, [r7, #31]
 8000832:	2b2d      	cmp	r3, #45	; 0x2d
 8000834:	d106      	bne.n	8000844 <xvprintf+0x64>
 8000836:	2302      	movs	r3, #2
 8000838:	627b      	str	r3, [r7, #36]	; 0x24
 800083a:	687b      	ldr	r3, [r7, #4]
 800083c:	1c5a      	adds	r2, r3, #1
 800083e:	607a      	str	r2, [r7, #4]
 8000840:	781b      	ldrb	r3, [r3, #0]
 8000842:	77fb      	strb	r3, [r7, #31]
 8000844:	2300      	movs	r3, #0
 8000846:	62bb      	str	r3, [r7, #40]	; 0x28
 8000848:	e00e      	b.n	8000868 <xvprintf+0x88>
 800084a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800084c:	4613      	mov	r3, r2
 800084e:	009b      	lsls	r3, r3, #2
 8000850:	4413      	add	r3, r2
 8000852:	005b      	lsls	r3, r3, #1
 8000854:	461a      	mov	r2, r3
 8000856:	7ffb      	ldrb	r3, [r7, #31]
 8000858:	4413      	add	r3, r2
 800085a:	3b30      	subs	r3, #48	; 0x30
 800085c:	62bb      	str	r3, [r7, #40]	; 0x28
 800085e:	687b      	ldr	r3, [r7, #4]
 8000860:	1c5a      	adds	r2, r3, #1
 8000862:	607a      	str	r2, [r7, #4]
 8000864:	781b      	ldrb	r3, [r3, #0]
 8000866:	77fb      	strb	r3, [r7, #31]
 8000868:	7ffb      	ldrb	r3, [r7, #31]
 800086a:	2b2f      	cmp	r3, #47	; 0x2f
 800086c:	d902      	bls.n	8000874 <xvprintf+0x94>
 800086e:	7ffb      	ldrb	r3, [r7, #31]
 8000870:	2b39      	cmp	r3, #57	; 0x39
 8000872:	d9ea      	bls.n	800084a <xvprintf+0x6a>
 8000874:	7ffb      	ldrb	r3, [r7, #31]
 8000876:	2b6c      	cmp	r3, #108	; 0x6c
 8000878:	d002      	beq.n	8000880 <xvprintf+0xa0>
 800087a:	7ffb      	ldrb	r3, [r7, #31]
 800087c:	2b4c      	cmp	r3, #76	; 0x4c
 800087e:	d108      	bne.n	8000892 <xvprintf+0xb2>
 8000880:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000882:	f043 0304 	orr.w	r3, r3, #4
 8000886:	627b      	str	r3, [r7, #36]	; 0x24
 8000888:	687b      	ldr	r3, [r7, #4]
 800088a:	1c5a      	adds	r2, r3, #1
 800088c:	607a      	str	r2, [r7, #4]
 800088e:	781b      	ldrb	r3, [r3, #0]
 8000890:	77fb      	strb	r3, [r7, #31]
 8000892:	7ffb      	ldrb	r3, [r7, #31]
 8000894:	2b00      	cmp	r3, #0
 8000896:	d100      	bne.n	800089a <xvprintf+0xba>
 8000898:	e117      	b.n	8000aca <xvprintf+0x2ea>
 800089a:	7ffb      	ldrb	r3, [r7, #31]
 800089c:	77bb      	strb	r3, [r7, #30]
 800089e:	7fbb      	ldrb	r3, [r7, #30]
 80008a0:	2b60      	cmp	r3, #96	; 0x60
 80008a2:	d902      	bls.n	80008aa <xvprintf+0xca>
 80008a4:	7fbb      	ldrb	r3, [r7, #30]
 80008a6:	3b20      	subs	r3, #32
 80008a8:	77bb      	strb	r3, [r7, #30]
 80008aa:	7fbb      	ldrb	r3, [r7, #30]
 80008ac:	3b42      	subs	r3, #66	; 0x42
 80008ae:	2b16      	cmp	r3, #22
 80008b0:	d873      	bhi.n	800099a <xvprintf+0x1ba>
 80008b2:	a201      	add	r2, pc, #4	; (adr r2, 80008b8 <xvprintf+0xd8>)
 80008b4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80008b8:	08000983 	.word	0x08000983
 80008bc:	08000971 	.word	0x08000971
 80008c0:	0800098f 	.word	0x0800098f
 80008c4:	0800099b 	.word	0x0800099b
 80008c8:	0800099b 	.word	0x0800099b
 80008cc:	0800099b 	.word	0x0800099b
 80008d0:	0800099b 	.word	0x0800099b
 80008d4:	0800099b 	.word	0x0800099b
 80008d8:	0800099b 	.word	0x0800099b
 80008dc:	0800099b 	.word	0x0800099b
 80008e0:	0800099b 	.word	0x0800099b
 80008e4:	0800099b 	.word	0x0800099b
 80008e8:	0800099b 	.word	0x0800099b
 80008ec:	08000989 	.word	0x08000989
 80008f0:	0800099b 	.word	0x0800099b
 80008f4:	0800099b 	.word	0x0800099b
 80008f8:	0800099b 	.word	0x0800099b
 80008fc:	08000915 	.word	0x08000915
 8000900:	0800099b 	.word	0x0800099b
 8000904:	0800098f 	.word	0x0800098f
 8000908:	0800099b 	.word	0x0800099b
 800090c:	0800099b 	.word	0x0800099b
 8000910:	08000995 	.word	0x08000995
 8000914:	683b      	ldr	r3, [r7, #0]
 8000916:	1d1a      	adds	r2, r3, #4
 8000918:	603a      	str	r2, [r7, #0]
 800091a:	681b      	ldr	r3, [r3, #0]
 800091c:	61bb      	str	r3, [r7, #24]
 800091e:	2300      	movs	r3, #0
 8000920:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000922:	e002      	b.n	800092a <xvprintf+0x14a>
 8000924:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000926:	3301      	adds	r3, #1
 8000928:	62fb      	str	r3, [r7, #44]	; 0x2c
 800092a:	69ba      	ldr	r2, [r7, #24]
 800092c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800092e:	4413      	add	r3, r2
 8000930:	781b      	ldrb	r3, [r3, #0]
 8000932:	2b00      	cmp	r3, #0
 8000934:	d1f6      	bne.n	8000924 <xvprintf+0x144>
 8000936:	e002      	b.n	800093e <xvprintf+0x15e>
 8000938:	2020      	movs	r0, #32
 800093a:	f7ff fef5 	bl	8000728 <xputc>
 800093e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000940:	f003 0302 	and.w	r3, r3, #2
 8000944:	2b00      	cmp	r3, #0
 8000946:	d105      	bne.n	8000954 <xvprintf+0x174>
 8000948:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800094a:	1c5a      	adds	r2, r3, #1
 800094c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800094e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000950:	4293      	cmp	r3, r2
 8000952:	d3f1      	bcc.n	8000938 <xvprintf+0x158>
 8000954:	69b8      	ldr	r0, [r7, #24]
 8000956:	f7ff ff0f 	bl	8000778 <xputs>
 800095a:	e002      	b.n	8000962 <xvprintf+0x182>
 800095c:	2020      	movs	r0, #32
 800095e:	f7ff fee3 	bl	8000728 <xputc>
 8000962:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000964:	1c5a      	adds	r2, r3, #1
 8000966:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000968:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800096a:	4293      	cmp	r3, r2
 800096c:	d3f6      	bcc.n	800095c <xvprintf+0x17c>
 800096e:	e0ab      	b.n	8000ac8 <xvprintf+0x2e8>
 8000970:	683b      	ldr	r3, [r7, #0]
 8000972:	1d1a      	adds	r2, r3, #4
 8000974:	603a      	str	r2, [r7, #0]
 8000976:	681b      	ldr	r3, [r3, #0]
 8000978:	b2db      	uxtb	r3, r3
 800097a:	4618      	mov	r0, r3
 800097c:	f7ff fed4 	bl	8000728 <xputc>
 8000980:	e0a2      	b.n	8000ac8 <xvprintf+0x2e8>
 8000982:	2302      	movs	r3, #2
 8000984:	637b      	str	r3, [r7, #52]	; 0x34
 8000986:	e00d      	b.n	80009a4 <xvprintf+0x1c4>
 8000988:	2308      	movs	r3, #8
 800098a:	637b      	str	r3, [r7, #52]	; 0x34
 800098c:	e00a      	b.n	80009a4 <xvprintf+0x1c4>
 800098e:	230a      	movs	r3, #10
 8000990:	637b      	str	r3, [r7, #52]	; 0x34
 8000992:	e007      	b.n	80009a4 <xvprintf+0x1c4>
 8000994:	2310      	movs	r3, #16
 8000996:	637b      	str	r3, [r7, #52]	; 0x34
 8000998:	e004      	b.n	80009a4 <xvprintf+0x1c4>
 800099a:	7ffb      	ldrb	r3, [r7, #31]
 800099c:	4618      	mov	r0, r3
 800099e:	f7ff fec3 	bl	8000728 <xputc>
 80009a2:	e091      	b.n	8000ac8 <xvprintf+0x2e8>
 80009a4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80009a6:	f003 0304 	and.w	r3, r3, #4
 80009aa:	2b00      	cmp	r3, #0
 80009ac:	d004      	beq.n	80009b8 <xvprintf+0x1d8>
 80009ae:	683b      	ldr	r3, [r7, #0]
 80009b0:	1d1a      	adds	r2, r3, #4
 80009b2:	603a      	str	r2, [r7, #0]
 80009b4:	681b      	ldr	r3, [r3, #0]
 80009b6:	e00b      	b.n	80009d0 <xvprintf+0x1f0>
 80009b8:	7fbb      	ldrb	r3, [r7, #30]
 80009ba:	2b44      	cmp	r3, #68	; 0x44
 80009bc:	d104      	bne.n	80009c8 <xvprintf+0x1e8>
 80009be:	683b      	ldr	r3, [r7, #0]
 80009c0:	1d1a      	adds	r2, r3, #4
 80009c2:	603a      	str	r2, [r7, #0]
 80009c4:	681b      	ldr	r3, [r3, #0]
 80009c6:	e003      	b.n	80009d0 <xvprintf+0x1f0>
 80009c8:	683b      	ldr	r3, [r7, #0]
 80009ca:	1d1a      	adds	r2, r3, #4
 80009cc:	603a      	str	r2, [r7, #0]
 80009ce:	681b      	ldr	r3, [r3, #0]
 80009d0:	623b      	str	r3, [r7, #32]
 80009d2:	7fbb      	ldrb	r3, [r7, #30]
 80009d4:	2b44      	cmp	r3, #68	; 0x44
 80009d6:	d109      	bne.n	80009ec <xvprintf+0x20c>
 80009d8:	6a3b      	ldr	r3, [r7, #32]
 80009da:	2b00      	cmp	r3, #0
 80009dc:	da06      	bge.n	80009ec <xvprintf+0x20c>
 80009de:	6a3b      	ldr	r3, [r7, #32]
 80009e0:	425b      	negs	r3, r3
 80009e2:	623b      	str	r3, [r7, #32]
 80009e4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80009e6:	f043 0308 	orr.w	r3, r3, #8
 80009ea:	627b      	str	r3, [r7, #36]	; 0x24
 80009ec:	2300      	movs	r3, #0
 80009ee:	633b      	str	r3, [r7, #48]	; 0x30
 80009f0:	6a3b      	ldr	r3, [r7, #32]
 80009f2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80009f4:	fbb3 f2f2 	udiv	r2, r3, r2
 80009f8:	6b79      	ldr	r1, [r7, #52]	; 0x34
 80009fa:	fb01 f202 	mul.w	r2, r1, r2
 80009fe:	1a9b      	subs	r3, r3, r2
 8000a00:	77bb      	strb	r3, [r7, #30]
 8000a02:	6a3a      	ldr	r2, [r7, #32]
 8000a04:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8000a06:	fbb2 f3f3 	udiv	r3, r2, r3
 8000a0a:	623b      	str	r3, [r7, #32]
 8000a0c:	7fbb      	ldrb	r3, [r7, #30]
 8000a0e:	2b09      	cmp	r3, #9
 8000a10:	d908      	bls.n	8000a24 <xvprintf+0x244>
 8000a12:	7ffb      	ldrb	r3, [r7, #31]
 8000a14:	2b78      	cmp	r3, #120	; 0x78
 8000a16:	d101      	bne.n	8000a1c <xvprintf+0x23c>
 8000a18:	2227      	movs	r2, #39	; 0x27
 8000a1a:	e000      	b.n	8000a1e <xvprintf+0x23e>
 8000a1c:	2207      	movs	r2, #7
 8000a1e:	7fbb      	ldrb	r3, [r7, #30]
 8000a20:	4413      	add	r3, r2
 8000a22:	77bb      	strb	r3, [r7, #30]
 8000a24:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000a26:	1c5a      	adds	r2, r3, #1
 8000a28:	633a      	str	r2, [r7, #48]	; 0x30
 8000a2a:	7fba      	ldrb	r2, [r7, #30]
 8000a2c:	3230      	adds	r2, #48	; 0x30
 8000a2e:	b2d2      	uxtb	r2, r2
 8000a30:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8000a34:	440b      	add	r3, r1
 8000a36:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000a3a:	6a3b      	ldr	r3, [r7, #32]
 8000a3c:	2b00      	cmp	r3, #0
 8000a3e:	d002      	beq.n	8000a46 <xvprintf+0x266>
 8000a40:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000a42:	2b0f      	cmp	r3, #15
 8000a44:	d9d4      	bls.n	80009f0 <xvprintf+0x210>
 8000a46:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000a48:	f003 0308 	and.w	r3, r3, #8
 8000a4c:	2b00      	cmp	r3, #0
 8000a4e:	d008      	beq.n	8000a62 <xvprintf+0x282>
 8000a50:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000a52:	1c5a      	adds	r2, r3, #1
 8000a54:	633a      	str	r2, [r7, #48]	; 0x30
 8000a56:	f107 0238 	add.w	r2, r7, #56	; 0x38
 8000a5a:	4413      	add	r3, r2
 8000a5c:	222d      	movs	r2, #45	; 0x2d
 8000a5e:	f803 2c30 	strb.w	r2, [r3, #-48]
 8000a62:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000a64:	62fb      	str	r3, [r7, #44]	; 0x2c
 8000a66:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000a68:	f003 0301 	and.w	r3, r3, #1
 8000a6c:	2b00      	cmp	r3, #0
 8000a6e:	d001      	beq.n	8000a74 <xvprintf+0x294>
 8000a70:	2330      	movs	r3, #48	; 0x30
 8000a72:	e000      	b.n	8000a76 <xvprintf+0x296>
 8000a74:	2320      	movs	r3, #32
 8000a76:	77bb      	strb	r3, [r7, #30]
 8000a78:	e003      	b.n	8000a82 <xvprintf+0x2a2>
 8000a7a:	7fbb      	ldrb	r3, [r7, #30]
 8000a7c:	4618      	mov	r0, r3
 8000a7e:	f7ff fe53 	bl	8000728 <xputc>
 8000a82:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8000a84:	f003 0302 	and.w	r3, r3, #2
 8000a88:	2b00      	cmp	r3, #0
 8000a8a:	d105      	bne.n	8000a98 <xvprintf+0x2b8>
 8000a8c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000a8e:	1c5a      	adds	r2, r3, #1
 8000a90:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000a92:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000a94:	4293      	cmp	r3, r2
 8000a96:	d3f0      	bcc.n	8000a7a <xvprintf+0x29a>
 8000a98:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000a9a:	3b01      	subs	r3, #1
 8000a9c:	633b      	str	r3, [r7, #48]	; 0x30
 8000a9e:	f107 0208 	add.w	r2, r7, #8
 8000aa2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000aa4:	4413      	add	r3, r2
 8000aa6:	781b      	ldrb	r3, [r3, #0]
 8000aa8:	4618      	mov	r0, r3
 8000aaa:	f7ff fe3d 	bl	8000728 <xputc>
 8000aae:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8000ab0:	2b00      	cmp	r3, #0
 8000ab2:	d1f1      	bne.n	8000a98 <xvprintf+0x2b8>
 8000ab4:	e002      	b.n	8000abc <xvprintf+0x2dc>
 8000ab6:	2020      	movs	r0, #32
 8000ab8:	f7ff fe36 	bl	8000728 <xputc>
 8000abc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8000abe:	1c5a      	adds	r2, r3, #1
 8000ac0:	62fa      	str	r2, [r7, #44]	; 0x2c
 8000ac2:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8000ac4:	4293      	cmp	r3, r2
 8000ac6:	d3f6      	bcc.n	8000ab6 <xvprintf+0x2d6>
 8000ac8:	e68f      	b.n	80007ea <xvprintf+0xa>
 8000aca:	3738      	adds	r7, #56	; 0x38
 8000acc:	46bd      	mov	sp, r7
 8000ace:	bd80      	pop	{r7, pc}

08000ad0 <xprintf>:
 8000ad0:	b40f      	push	{r0, r1, r2, r3}
 8000ad2:	b580      	push	{r7, lr}
 8000ad4:	b082      	sub	sp, #8
 8000ad6:	af00      	add	r7, sp, #0
 8000ad8:	f107 0314 	add.w	r3, r7, #20
 8000adc:	607b      	str	r3, [r7, #4]
 8000ade:	6938      	ldr	r0, [r7, #16]
 8000ae0:	6879      	ldr	r1, [r7, #4]
 8000ae2:	f7ff fe7d 	bl	80007e0 <xvprintf>
 8000ae6:	3708      	adds	r7, #8
 8000ae8:	46bd      	mov	sp, r7
 8000aea:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000aee:	b004      	add	sp, #16
 8000af0:	4770      	bx	lr
 8000af2:	bf00      	nop

08000af4 <xsprintf>:
 8000af4:	b40e      	push	{r1, r2, r3}
 8000af6:	b580      	push	{r7, lr}
 8000af8:	b085      	sub	sp, #20
 8000afa:	af00      	add	r7, sp, #0
 8000afc:	6078      	str	r0, [r7, #4]
 8000afe:	4a0b      	ldr	r2, [pc, #44]	; (8000b2c <xsprintf+0x38>)
 8000b00:	687b      	ldr	r3, [r7, #4]
 8000b02:	6013      	str	r3, [r2, #0]
 8000b04:	f107 0320 	add.w	r3, r7, #32
 8000b08:	60fb      	str	r3, [r7, #12]
 8000b0a:	69f8      	ldr	r0, [r7, #28]
 8000b0c:	68f9      	ldr	r1, [r7, #12]
 8000b0e:	f7ff fe67 	bl	80007e0 <xvprintf>
 8000b12:	4b06      	ldr	r3, [pc, #24]	; (8000b2c <xsprintf+0x38>)
 8000b14:	681b      	ldr	r3, [r3, #0]
 8000b16:	2200      	movs	r2, #0
 8000b18:	701a      	strb	r2, [r3, #0]
 8000b1a:	4b04      	ldr	r3, [pc, #16]	; (8000b2c <xsprintf+0x38>)
 8000b1c:	2200      	movs	r2, #0
 8000b1e:	601a      	str	r2, [r3, #0]
 8000b20:	3714      	adds	r7, #20
 8000b22:	46bd      	mov	sp, r7
 8000b24:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000b28:	b003      	add	sp, #12
 8000b2a:	4770      	bx	lr
 8000b2c:	20000818 	.word	0x20000818

08000b30 <xfprintf>:
 8000b30:	b40e      	push	{r1, r2, r3}
 8000b32:	b580      	push	{r7, lr}
 8000b34:	b085      	sub	sp, #20
 8000b36:	af00      	add	r7, sp, #0
 8000b38:	6078      	str	r0, [r7, #4]
 8000b3a:	4b0b      	ldr	r3, [pc, #44]	; (8000b68 <xfprintf+0x38>)
 8000b3c:	681b      	ldr	r3, [r3, #0]
 8000b3e:	60fb      	str	r3, [r7, #12]
 8000b40:	4a09      	ldr	r2, [pc, #36]	; (8000b68 <xfprintf+0x38>)
 8000b42:	687b      	ldr	r3, [r7, #4]
 8000b44:	6013      	str	r3, [r2, #0]
 8000b46:	f107 0320 	add.w	r3, r7, #32
 8000b4a:	60bb      	str	r3, [r7, #8]
 8000b4c:	69f8      	ldr	r0, [r7, #28]
 8000b4e:	68b9      	ldr	r1, [r7, #8]
 8000b50:	f7ff fe46 	bl	80007e0 <xvprintf>
 8000b54:	4a04      	ldr	r2, [pc, #16]	; (8000b68 <xfprintf+0x38>)
 8000b56:	68fb      	ldr	r3, [r7, #12]
 8000b58:	6013      	str	r3, [r2, #0]
 8000b5a:	3714      	adds	r7, #20
 8000b5c:	46bd      	mov	sp, r7
 8000b5e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8000b62:	b003      	add	sp, #12
 8000b64:	4770      	bx	lr
 8000b66:	bf00      	nop
 8000b68:	20000814 	.word	0x20000814

08000b6c <put_dump>:
 8000b6c:	b580      	push	{r7, lr}
 8000b6e:	b088      	sub	sp, #32
 8000b70:	af00      	add	r7, sp, #0
 8000b72:	60f8      	str	r0, [r7, #12]
 8000b74:	60b9      	str	r1, [r7, #8]
 8000b76:	607a      	str	r2, [r7, #4]
 8000b78:	603b      	str	r3, [r7, #0]
 8000b7a:	4835      	ldr	r0, [pc, #212]	; (8000c50 <put_dump+0xe4>)
 8000b7c:	68b9      	ldr	r1, [r7, #8]
 8000b7e:	f7ff ffa7 	bl	8000ad0 <xprintf>
 8000b82:	683b      	ldr	r3, [r7, #0]
 8000b84:	2b02      	cmp	r3, #2
 8000b86:	d03a      	beq.n	8000bfe <put_dump+0x92>
 8000b88:	2b04      	cmp	r3, #4
 8000b8a:	d049      	beq.n	8000c20 <put_dump+0xb4>
 8000b8c:	2b01      	cmp	r3, #1
 8000b8e:	d158      	bne.n	8000c42 <put_dump+0xd6>
 8000b90:	68fb      	ldr	r3, [r7, #12]
 8000b92:	613b      	str	r3, [r7, #16]
 8000b94:	2300      	movs	r3, #0
 8000b96:	61fb      	str	r3, [r7, #28]
 8000b98:	e00a      	b.n	8000bb0 <put_dump+0x44>
 8000b9a:	69fb      	ldr	r3, [r7, #28]
 8000b9c:	693a      	ldr	r2, [r7, #16]
 8000b9e:	4413      	add	r3, r2
 8000ba0:	781b      	ldrb	r3, [r3, #0]
 8000ba2:	482c      	ldr	r0, [pc, #176]	; (8000c54 <put_dump+0xe8>)
 8000ba4:	4619      	mov	r1, r3
 8000ba6:	f7ff ff93 	bl	8000ad0 <xprintf>
 8000baa:	69fb      	ldr	r3, [r7, #28]
 8000bac:	3301      	adds	r3, #1
 8000bae:	61fb      	str	r3, [r7, #28]
 8000bb0:	69fa      	ldr	r2, [r7, #28]
 8000bb2:	687b      	ldr	r3, [r7, #4]
 8000bb4:	429a      	cmp	r2, r3
 8000bb6:	dbf0      	blt.n	8000b9a <put_dump+0x2e>
 8000bb8:	2020      	movs	r0, #32
 8000bba:	f7ff fdb5 	bl	8000728 <xputc>
 8000bbe:	2300      	movs	r3, #0
 8000bc0:	61fb      	str	r3, [r7, #28]
 8000bc2:	e017      	b.n	8000bf4 <put_dump+0x88>
 8000bc4:	69fb      	ldr	r3, [r7, #28]
 8000bc6:	693a      	ldr	r2, [r7, #16]
 8000bc8:	4413      	add	r3, r2
 8000bca:	781b      	ldrb	r3, [r3, #0]
 8000bcc:	2b1f      	cmp	r3, #31
 8000bce:	d90a      	bls.n	8000be6 <put_dump+0x7a>
 8000bd0:	69fb      	ldr	r3, [r7, #28]
 8000bd2:	693a      	ldr	r2, [r7, #16]
 8000bd4:	4413      	add	r3, r2
 8000bd6:	781b      	ldrb	r3, [r3, #0]
 8000bd8:	2b7e      	cmp	r3, #126	; 0x7e
 8000bda:	d804      	bhi.n	8000be6 <put_dump+0x7a>
 8000bdc:	69fb      	ldr	r3, [r7, #28]
 8000bde:	693a      	ldr	r2, [r7, #16]
 8000be0:	4413      	add	r3, r2
 8000be2:	781b      	ldrb	r3, [r3, #0]
 8000be4:	e000      	b.n	8000be8 <put_dump+0x7c>
 8000be6:	232e      	movs	r3, #46	; 0x2e
 8000be8:	4618      	mov	r0, r3
 8000bea:	f7ff fd9d 	bl	8000728 <xputc>
 8000bee:	69fb      	ldr	r3, [r7, #28]
 8000bf0:	3301      	adds	r3, #1
 8000bf2:	61fb      	str	r3, [r7, #28]
 8000bf4:	69fa      	ldr	r2, [r7, #28]
 8000bf6:	687b      	ldr	r3, [r7, #4]
 8000bf8:	429a      	cmp	r2, r3
 8000bfa:	dbe3      	blt.n	8000bc4 <put_dump+0x58>
 8000bfc:	e021      	b.n	8000c42 <put_dump+0xd6>
 8000bfe:	68fb      	ldr	r3, [r7, #12]
 8000c00:	61bb      	str	r3, [r7, #24]
 8000c02:	69bb      	ldr	r3, [r7, #24]
 8000c04:	1c9a      	adds	r2, r3, #2
 8000c06:	61ba      	str	r2, [r7, #24]
 8000c08:	881b      	ldrh	r3, [r3, #0]
 8000c0a:	4813      	ldr	r0, [pc, #76]	; (8000c58 <put_dump+0xec>)
 8000c0c:	4619      	mov	r1, r3
 8000c0e:	f7ff ff5f 	bl	8000ad0 <xprintf>
 8000c12:	687b      	ldr	r3, [r7, #4]
 8000c14:	3b01      	subs	r3, #1
 8000c16:	607b      	str	r3, [r7, #4]
 8000c18:	687b      	ldr	r3, [r7, #4]
 8000c1a:	2b00      	cmp	r3, #0
 8000c1c:	d1f1      	bne.n	8000c02 <put_dump+0x96>
 8000c1e:	e010      	b.n	8000c42 <put_dump+0xd6>
 8000c20:	68fb      	ldr	r3, [r7, #12]
 8000c22:	617b      	str	r3, [r7, #20]
 8000c24:	697b      	ldr	r3, [r7, #20]
 8000c26:	1d1a      	adds	r2, r3, #4
 8000c28:	617a      	str	r2, [r7, #20]
 8000c2a:	681b      	ldr	r3, [r3, #0]
 8000c2c:	480b      	ldr	r0, [pc, #44]	; (8000c5c <put_dump+0xf0>)
 8000c2e:	4619      	mov	r1, r3
 8000c30:	f7ff ff4e 	bl	8000ad0 <xprintf>
 8000c34:	687b      	ldr	r3, [r7, #4]
 8000c36:	3b01      	subs	r3, #1
 8000c38:	607b      	str	r3, [r7, #4]
 8000c3a:	687b      	ldr	r3, [r7, #4]
 8000c3c:	2b00      	cmp	r3, #0
 8000c3e:	d1f1      	bne.n	8000c24 <put_dump+0xb8>
 8000c40:	bf00      	nop
 8000c42:	200a      	movs	r0, #10
 8000c44:	f7ff fd70 	bl	8000728 <xputc>
 8000c48:	3720      	adds	r7, #32
 8000c4a:	46bd      	mov	sp, r7
 8000c4c:	bd80      	pop	{r7, pc}
 8000c4e:	bf00      	nop
 8000c50:	08000eb8 	.word	0x08000eb8
 8000c54:	08000ec0 	.word	0x08000ec0
 8000c58:	08000ec8 	.word	0x08000ec8
 8000c5c:	08000ed0 	.word	0x08000ed0

08000c60 <xgets>:
 8000c60:	b580      	push	{r7, lr}
 8000c62:	b084      	sub	sp, #16
 8000c64:	af00      	add	r7, sp, #0
 8000c66:	6078      	str	r0, [r7, #4]
 8000c68:	6039      	str	r1, [r7, #0]
 8000c6a:	4b25      	ldr	r3, [pc, #148]	; (8000d00 <xgets+0xa0>)
 8000c6c:	681b      	ldr	r3, [r3, #0]
 8000c6e:	2b00      	cmp	r3, #0
 8000c70:	d101      	bne.n	8000c76 <xgets+0x16>
 8000c72:	2300      	movs	r3, #0
 8000c74:	e03f      	b.n	8000cf6 <xgets+0x96>
 8000c76:	2300      	movs	r3, #0
 8000c78:	60fb      	str	r3, [r7, #12]
 8000c7a:	4b21      	ldr	r3, [pc, #132]	; (8000d00 <xgets+0xa0>)
 8000c7c:	681b      	ldr	r3, [r3, #0]
 8000c7e:	4798      	blx	r3
 8000c80:	4603      	mov	r3, r0
 8000c82:	60bb      	str	r3, [r7, #8]
 8000c84:	68bb      	ldr	r3, [r7, #8]
 8000c86:	2b00      	cmp	r3, #0
 8000c88:	d101      	bne.n	8000c8e <xgets+0x2e>
 8000c8a:	2300      	movs	r3, #0
 8000c8c:	e033      	b.n	8000cf6 <xgets+0x96>
 8000c8e:	68bb      	ldr	r3, [r7, #8]
 8000c90:	2b0d      	cmp	r3, #13
 8000c92:	d10a      	bne.n	8000caa <xgets+0x4a>
 8000c94:	bf00      	nop
 8000c96:	68fb      	ldr	r3, [r7, #12]
 8000c98:	687a      	ldr	r2, [r7, #4]
 8000c9a:	4413      	add	r3, r2
 8000c9c:	2200      	movs	r2, #0
 8000c9e:	701a      	strb	r2, [r3, #0]
 8000ca0:	200a      	movs	r0, #10
 8000ca2:	f7ff fd41 	bl	8000728 <xputc>
 8000ca6:	2301      	movs	r3, #1
 8000ca8:	e025      	b.n	8000cf6 <xgets+0x96>
 8000caa:	68bb      	ldr	r3, [r7, #8]
 8000cac:	2b08      	cmp	r3, #8
 8000cae:	d10b      	bne.n	8000cc8 <xgets+0x68>
 8000cb0:	68fb      	ldr	r3, [r7, #12]
 8000cb2:	2b00      	cmp	r3, #0
 8000cb4:	d008      	beq.n	8000cc8 <xgets+0x68>
 8000cb6:	68fb      	ldr	r3, [r7, #12]
 8000cb8:	3b01      	subs	r3, #1
 8000cba:	60fb      	str	r3, [r7, #12]
 8000cbc:	68bb      	ldr	r3, [r7, #8]
 8000cbe:	b2db      	uxtb	r3, r3
 8000cc0:	4618      	mov	r0, r3
 8000cc2:	f7ff fd31 	bl	8000728 <xputc>
 8000cc6:	e015      	b.n	8000cf4 <xgets+0x94>
 8000cc8:	68bb      	ldr	r3, [r7, #8]
 8000cca:	2b1f      	cmp	r3, #31
 8000ccc:	dd12      	ble.n	8000cf4 <xgets+0x94>
 8000cce:	683b      	ldr	r3, [r7, #0]
 8000cd0:	1e5a      	subs	r2, r3, #1
 8000cd2:	68fb      	ldr	r3, [r7, #12]
 8000cd4:	429a      	cmp	r2, r3
 8000cd6:	dd0d      	ble.n	8000cf4 <xgets+0x94>
 8000cd8:	68fb      	ldr	r3, [r7, #12]
 8000cda:	1c5a      	adds	r2, r3, #1
 8000cdc:	60fa      	str	r2, [r7, #12]
 8000cde:	461a      	mov	r2, r3
 8000ce0:	687b      	ldr	r3, [r7, #4]
 8000ce2:	4413      	add	r3, r2
 8000ce4:	68ba      	ldr	r2, [r7, #8]
 8000ce6:	b2d2      	uxtb	r2, r2
 8000ce8:	701a      	strb	r2, [r3, #0]
 8000cea:	68bb      	ldr	r3, [r7, #8]
 8000cec:	b2db      	uxtb	r3, r3
 8000cee:	4618      	mov	r0, r3
 8000cf0:	f7ff fd1a 	bl	8000728 <xputc>
 8000cf4:	e7c1      	b.n	8000c7a <xgets+0x1a>
 8000cf6:	4618      	mov	r0, r3
 8000cf8:	3710      	adds	r7, #16
 8000cfa:	46bd      	mov	sp, r7
 8000cfc:	bd80      	pop	{r7, pc}
 8000cfe:	bf00      	nop
 8000d00:	2000081c 	.word	0x2000081c

08000d04 <xfgets>:
 8000d04:	b580      	push	{r7, lr}
 8000d06:	b086      	sub	sp, #24
 8000d08:	af00      	add	r7, sp, #0
 8000d0a:	60f8      	str	r0, [r7, #12]
 8000d0c:	60b9      	str	r1, [r7, #8]
 8000d0e:	607a      	str	r2, [r7, #4]
 8000d10:	4b09      	ldr	r3, [pc, #36]	; (8000d38 <xfgets+0x34>)
 8000d12:	681b      	ldr	r3, [r3, #0]
 8000d14:	617b      	str	r3, [r7, #20]
 8000d16:	4a08      	ldr	r2, [pc, #32]	; (8000d38 <xfgets+0x34>)
 8000d18:	68fb      	ldr	r3, [r7, #12]
 8000d1a:	6013      	str	r3, [r2, #0]
 8000d1c:	68b8      	ldr	r0, [r7, #8]
 8000d1e:	6879      	ldr	r1, [r7, #4]
 8000d20:	f7ff ff9e 	bl	8000c60 <xgets>
 8000d24:	6138      	str	r0, [r7, #16]
 8000d26:	4a04      	ldr	r2, [pc, #16]	; (8000d38 <xfgets+0x34>)
 8000d28:	697b      	ldr	r3, [r7, #20]
 8000d2a:	6013      	str	r3, [r2, #0]
 8000d2c:	693b      	ldr	r3, [r7, #16]
 8000d2e:	4618      	mov	r0, r3
 8000d30:	3718      	adds	r7, #24
 8000d32:	46bd      	mov	sp, r7
 8000d34:	bd80      	pop	{r7, pc}
 8000d36:	bf00      	nop
 8000d38:	2000081c 	.word	0x2000081c

08000d3c <xatoi>:
 8000d3c:	b480      	push	{r7}
 8000d3e:	b085      	sub	sp, #20
 8000d40:	af00      	add	r7, sp, #0
 8000d42:	6078      	str	r0, [r7, #4]
 8000d44:	6039      	str	r1, [r7, #0]
 8000d46:	2300      	movs	r3, #0
 8000d48:	727b      	strb	r3, [r7, #9]
 8000d4a:	683b      	ldr	r3, [r7, #0]
 8000d4c:	2200      	movs	r2, #0
 8000d4e:	601a      	str	r2, [r3, #0]
 8000d50:	e004      	b.n	8000d5c <xatoi+0x20>
 8000d52:	687b      	ldr	r3, [r7, #4]
 8000d54:	681b      	ldr	r3, [r3, #0]
 8000d56:	1c5a      	adds	r2, r3, #1
 8000d58:	687b      	ldr	r3, [r7, #4]
 8000d5a:	601a      	str	r2, [r3, #0]
 8000d5c:	687b      	ldr	r3, [r7, #4]
 8000d5e:	681b      	ldr	r3, [r3, #0]
 8000d60:	781b      	ldrb	r3, [r3, #0]
 8000d62:	72fb      	strb	r3, [r7, #11]
 8000d64:	7afb      	ldrb	r3, [r7, #11]
 8000d66:	2b20      	cmp	r3, #32
 8000d68:	d0f3      	beq.n	8000d52 <xatoi+0x16>
 8000d6a:	7afb      	ldrb	r3, [r7, #11]
 8000d6c:	2b2d      	cmp	r3, #45	; 0x2d
 8000d6e:	d10a      	bne.n	8000d86 <xatoi+0x4a>
 8000d70:	2301      	movs	r3, #1
 8000d72:	727b      	strb	r3, [r7, #9]
 8000d74:	687b      	ldr	r3, [r7, #4]
 8000d76:	681b      	ldr	r3, [r3, #0]
 8000d78:	1c5a      	adds	r2, r3, #1
 8000d7a:	687b      	ldr	r3, [r7, #4]
 8000d7c:	601a      	str	r2, [r3, #0]
 8000d7e:	687b      	ldr	r3, [r7, #4]
 8000d80:	681b      	ldr	r3, [r3, #0]
 8000d82:	781b      	ldrb	r3, [r3, #0]
 8000d84:	72fb      	strb	r3, [r7, #11]
 8000d86:	7afb      	ldrb	r3, [r7, #11]
 8000d88:	2b30      	cmp	r3, #48	; 0x30
 8000d8a:	d136      	bne.n	8000dfa <xatoi+0xbe>
 8000d8c:	687b      	ldr	r3, [r7, #4]
 8000d8e:	681b      	ldr	r3, [r3, #0]
 8000d90:	1c5a      	adds	r2, r3, #1
 8000d92:	687b      	ldr	r3, [r7, #4]
 8000d94:	601a      	str	r2, [r3, #0]
 8000d96:	687b      	ldr	r3, [r7, #4]
 8000d98:	681b      	ldr	r3, [r3, #0]
 8000d9a:	781b      	ldrb	r3, [r3, #0]
 8000d9c:	72fb      	strb	r3, [r7, #11]
 8000d9e:	7afb      	ldrb	r3, [r7, #11]
 8000da0:	2b62      	cmp	r3, #98	; 0x62
 8000da2:	d00d      	beq.n	8000dc0 <xatoi+0x84>
 8000da4:	2b78      	cmp	r3, #120	; 0x78
 8000da6:	d117      	bne.n	8000dd8 <xatoi+0x9c>
 8000da8:	2310      	movs	r3, #16
 8000daa:	72bb      	strb	r3, [r7, #10]
 8000dac:	687b      	ldr	r3, [r7, #4]
 8000dae:	681b      	ldr	r3, [r3, #0]
 8000db0:	1c5a      	adds	r2, r3, #1
 8000db2:	687b      	ldr	r3, [r7, #4]
 8000db4:	601a      	str	r2, [r3, #0]
 8000db6:	687b      	ldr	r3, [r7, #4]
 8000db8:	681b      	ldr	r3, [r3, #0]
 8000dba:	781b      	ldrb	r3, [r3, #0]
 8000dbc:	72fb      	strb	r3, [r7, #11]
 8000dbe:	e01b      	b.n	8000df8 <xatoi+0xbc>
 8000dc0:	2302      	movs	r3, #2
 8000dc2:	72bb      	strb	r3, [r7, #10]
 8000dc4:	687b      	ldr	r3, [r7, #4]
 8000dc6:	681b      	ldr	r3, [r3, #0]
 8000dc8:	1c5a      	adds	r2, r3, #1
 8000dca:	687b      	ldr	r3, [r7, #4]
 8000dcc:	601a      	str	r2, [r3, #0]
 8000dce:	687b      	ldr	r3, [r7, #4]
 8000dd0:	681b      	ldr	r3, [r3, #0]
 8000dd2:	781b      	ldrb	r3, [r3, #0]
 8000dd4:	72fb      	strb	r3, [r7, #11]
 8000dd6:	e00f      	b.n	8000df8 <xatoi+0xbc>
 8000dd8:	7afb      	ldrb	r3, [r7, #11]
 8000dda:	2b20      	cmp	r3, #32
 8000ddc:	d801      	bhi.n	8000de2 <xatoi+0xa6>
 8000dde:	2301      	movs	r3, #1
 8000de0:	e04f      	b.n	8000e82 <xatoi+0x146>
 8000de2:	7afb      	ldrb	r3, [r7, #11]
 8000de4:	2b2f      	cmp	r3, #47	; 0x2f
 8000de6:	d902      	bls.n	8000dee <xatoi+0xb2>
 8000de8:	7afb      	ldrb	r3, [r7, #11]
 8000dea:	2b39      	cmp	r3, #57	; 0x39
 8000dec:	d901      	bls.n	8000df2 <xatoi+0xb6>
 8000dee:	2300      	movs	r3, #0
 8000df0:	e047      	b.n	8000e82 <xatoi+0x146>
 8000df2:	2308      	movs	r3, #8
 8000df4:	72bb      	strb	r3, [r7, #10]
 8000df6:	e00a      	b.n	8000e0e <xatoi+0xd2>
 8000df8:	e009      	b.n	8000e0e <xatoi+0xd2>
 8000dfa:	7afb      	ldrb	r3, [r7, #11]
 8000dfc:	2b2f      	cmp	r3, #47	; 0x2f
 8000dfe:	d902      	bls.n	8000e06 <xatoi+0xca>
 8000e00:	7afb      	ldrb	r3, [r7, #11]
 8000e02:	2b39      	cmp	r3, #57	; 0x39
 8000e04:	d901      	bls.n	8000e0a <xatoi+0xce>
 8000e06:	2300      	movs	r3, #0
 8000e08:	e03b      	b.n	8000e82 <xatoi+0x146>
 8000e0a:	230a      	movs	r3, #10
 8000e0c:	72bb      	strb	r3, [r7, #10]
 8000e0e:	2300      	movs	r3, #0
 8000e10:	60fb      	str	r3, [r7, #12]
 8000e12:	e029      	b.n	8000e68 <xatoi+0x12c>
 8000e14:	7afb      	ldrb	r3, [r7, #11]
 8000e16:	2b60      	cmp	r3, #96	; 0x60
 8000e18:	d902      	bls.n	8000e20 <xatoi+0xe4>
 8000e1a:	7afb      	ldrb	r3, [r7, #11]
 8000e1c:	3b20      	subs	r3, #32
 8000e1e:	72fb      	strb	r3, [r7, #11]
 8000e20:	7afb      	ldrb	r3, [r7, #11]
 8000e22:	3b30      	subs	r3, #48	; 0x30
 8000e24:	72fb      	strb	r3, [r7, #11]
 8000e26:	7afb      	ldrb	r3, [r7, #11]
 8000e28:	2b10      	cmp	r3, #16
 8000e2a:	d907      	bls.n	8000e3c <xatoi+0x100>
 8000e2c:	7afb      	ldrb	r3, [r7, #11]
 8000e2e:	3b07      	subs	r3, #7
 8000e30:	72fb      	strb	r3, [r7, #11]
 8000e32:	7afb      	ldrb	r3, [r7, #11]
 8000e34:	2b09      	cmp	r3, #9
 8000e36:	d801      	bhi.n	8000e3c <xatoi+0x100>
 8000e38:	2300      	movs	r3, #0
 8000e3a:	e022      	b.n	8000e82 <xatoi+0x146>
 8000e3c:	7afa      	ldrb	r2, [r7, #11]
 8000e3e:	7abb      	ldrb	r3, [r7, #10]
 8000e40:	429a      	cmp	r2, r3
 8000e42:	d301      	bcc.n	8000e48 <xatoi+0x10c>
 8000e44:	2300      	movs	r3, #0
 8000e46:	e01c      	b.n	8000e82 <xatoi+0x146>
 8000e48:	7abb      	ldrb	r3, [r7, #10]
 8000e4a:	68fa      	ldr	r2, [r7, #12]
 8000e4c:	fb02 f203 	mul.w	r2, r2, r3
 8000e50:	7afb      	ldrb	r3, [r7, #11]
 8000e52:	4413      	add	r3, r2
 8000e54:	60fb      	str	r3, [r7, #12]
 8000e56:	687b      	ldr	r3, [r7, #4]
 8000e58:	681b      	ldr	r3, [r3, #0]
 8000e5a:	1c5a      	adds	r2, r3, #1
 8000e5c:	687b      	ldr	r3, [r7, #4]
 8000e5e:	601a      	str	r2, [r3, #0]
 8000e60:	687b      	ldr	r3, [r7, #4]
 8000e62:	681b      	ldr	r3, [r3, #0]
 8000e64:	781b      	ldrb	r3, [r3, #0]
 8000e66:	72fb      	strb	r3, [r7, #11]
 8000e68:	7afb      	ldrb	r3, [r7, #11]
 8000e6a:	2b20      	cmp	r3, #32
 8000e6c:	d8d2      	bhi.n	8000e14 <xatoi+0xd8>
 8000e6e:	7a7b      	ldrb	r3, [r7, #9]
 8000e70:	2b00      	cmp	r3, #0
 8000e72:	d002      	beq.n	8000e7a <xatoi+0x13e>
 8000e74:	68fb      	ldr	r3, [r7, #12]
 8000e76:	425b      	negs	r3, r3
 8000e78:	60fb      	str	r3, [r7, #12]
 8000e7a:	68fa      	ldr	r2, [r7, #12]
 8000e7c:	683b      	ldr	r3, [r7, #0]
 8000e7e:	601a      	str	r2, [r3, #0]
 8000e80:	2301      	movs	r3, #1
 8000e82:	4618      	mov	r0, r3
 8000e84:	3714      	adds	r7, #20
 8000e86:	46bd      	mov	sp, r7
 8000e88:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e8c:	4770      	bx	lr
 8000e8e:	bf00      	nop
 8000e90:	6c6c6568 	.word	0x6c6c6568
 8000e94:	000a0d6f 	.word	0x000a0d6f
 8000e98:	20202020 	.word	0x20202020
 8000e9c:	20202020 	.word	0x20202020
 8000ea0:	20202020 	.word	0x20202020
 8000ea4:	20202020 	.word	0x20202020
 8000ea8:	00000d20 	.word	0x00000d20
 8000eac:	6e756f63 	.word	0x6e756f63
 8000eb0:	3d726574 	.word	0x3d726574
 8000eb4:	000d7525 	.word	0x000d7525
 8000eb8:	6c383025 	.word	0x6c383025
 8000ebc:	00002058 	.word	0x00002058
 8000ec0:	32302520 	.word	0x32302520
 8000ec4:	00000058 	.word	0x00000058
 8000ec8:	34302520 	.word	0x34302520
 8000ecc:	00000058 	.word	0x00000058
 8000ed0:	38302520 	.word	0x38302520
 8000ed4:	0000584c 	.word	0x0000584c
