
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 99 01 00 08 f9 01 00 08 f9 01 00 08     . . ............
 8000010:	f9 01 00 08 f9 01 00 08 f9 01 00 08 00 00 00 00     ................
	...
 800002c:	f9 01 00 08 f9 01 00 08 00 00 00 00 f9 01 00 08     ................
 800003c:	59 04 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     Y...............
 800004c:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 800005c:	f9 01 00 08 f9 01 00 08 f9 01 00 08 75 04 00 08     ............u...
 800006c:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 800007c:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 800008c:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 800009c:	f9 01 00 08 f9 01 00 08 e9 04 00 08 f9 01 00 08     ................
 80000ac:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 80000bc:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 80000cc:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................
 80000dc:	f9 01 00 08 f9 01 00 08 f9 01 00 08 f9 01 00 08     ................

080000ec <led_init>:
 80000ec:	b480      	push	{r7}
 80000ee:	af00      	add	r7, sp, #0
 80000f0:	4a04      	ldr	r2, [pc, #16]	; (8000104 <led_init+0x18>)
 80000f2:	4b04      	ldr	r3, [pc, #16]	; (8000104 <led_init+0x18>)
 80000f4:	685b      	ldr	r3, [r3, #4]
 80000f6:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 80000fa:	6053      	str	r3, [r2, #4]
 80000fc:	46bd      	mov	sp, r7
 80000fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000102:	4770      	bx	lr
 8000104:	40011000 	.word	0x40011000

08000108 <led_on>:
 8000108:	b480      	push	{r7}
 800010a:	af00      	add	r7, sp, #0
 800010c:	4a04      	ldr	r2, [pc, #16]	; (8000120 <led_on+0x18>)
 800010e:	4b04      	ldr	r3, [pc, #16]	; (8000120 <led_on+0x18>)
 8000110:	68db      	ldr	r3, [r3, #12]
 8000112:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8000116:	60d3      	str	r3, [r2, #12]
 8000118:	46bd      	mov	sp, r7
 800011a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800011e:	4770      	bx	lr
 8000120:	40011000 	.word	0x40011000

08000124 <led_off>:
 8000124:	b480      	push	{r7}
 8000126:	af00      	add	r7, sp, #0
 8000128:	4a04      	ldr	r2, [pc, #16]	; (800013c <led_off+0x18>)
 800012a:	4b04      	ldr	r3, [pc, #16]	; (800013c <led_off+0x18>)
 800012c:	68db      	ldr	r3, [r3, #12]
 800012e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000132:	60d3      	str	r3, [r2, #12]
 8000134:	46bd      	mov	sp, r7
 8000136:	f85d 7b04 	ldr.w	r7, [sp], #4
 800013a:	4770      	bx	lr
 800013c:	40011000 	.word	0x40011000

08000140 <led_tog>:
 8000140:	b480      	push	{r7}
 8000142:	af00      	add	r7, sp, #0
 8000144:	4a04      	ldr	r2, [pc, #16]	; (8000158 <led_tog+0x18>)
 8000146:	4b04      	ldr	r3, [pc, #16]	; (8000158 <led_tog+0x18>)
 8000148:	68db      	ldr	r3, [r3, #12]
 800014a:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 800014e:	60d3      	str	r3, [r2, #12]
 8000150:	46bd      	mov	sp, r7
 8000152:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000156:	4770      	bx	lr
 8000158:	40011000 	.word	0x40011000

0800015c <sleep>:
 800015c:	b480      	push	{r7}
 800015e:	b085      	sub	sp, #20
 8000160:	af00      	add	r7, sp, #0
 8000162:	6078      	str	r0, [r7, #4]
 8000164:	4b07      	ldr	r3, [pc, #28]	; (8000184 <sleep+0x28>)
 8000166:	681b      	ldr	r3, [r3, #0]
 8000168:	60fb      	str	r3, [r7, #12]
 800016a:	bf00      	nop
 800016c:	68fa      	ldr	r2, [r7, #12]
 800016e:	687b      	ldr	r3, [r7, #4]
 8000170:	441a      	add	r2, r3
 8000172:	4b04      	ldr	r3, [pc, #16]	; (8000184 <sleep+0x28>)
 8000174:	681b      	ldr	r3, [r3, #0]
 8000176:	429a      	cmp	r2, r3
 8000178:	d8f8      	bhi.n	800016c <sleep+0x10>
 800017a:	3714      	adds	r7, #20
 800017c:	46bd      	mov	sp, r7
 800017e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000182:	4770      	bx	lr
 8000184:	20000808 	.word	0x20000808

08000188 <main>:
 8000188:	b580      	push	{r7, lr}
 800018a:	b0a0      	sub	sp, #128	; 0x80
 800018c:	af00      	add	r7, sp, #0
 800018e:	f000 f84f 	bl	8000230 <system_init>
 8000192:	f7ff ffab 	bl	80000ec <led_init>
 8000196:	e7fe      	b.n	8000196 <main+0xe>

08000198 <handler_reset>:
 8000198:	b580      	push	{r7, lr}
 800019a:	b082      	sub	sp, #8
 800019c:	af00      	add	r7, sp, #0
 800019e:	4b11      	ldr	r3, [pc, #68]	; (80001e4 <handler_reset+0x4c>)
 80001a0:	607b      	str	r3, [r7, #4]
 80001a2:	4b11      	ldr	r3, [pc, #68]	; (80001e8 <handler_reset+0x50>)
 80001a4:	603b      	str	r3, [r7, #0]
 80001a6:	e007      	b.n	80001b8 <handler_reset+0x20>
 80001a8:	683b      	ldr	r3, [r7, #0]
 80001aa:	1d1a      	adds	r2, r3, #4
 80001ac:	603a      	str	r2, [r7, #0]
 80001ae:	687a      	ldr	r2, [r7, #4]
 80001b0:	1d11      	adds	r1, r2, #4
 80001b2:	6079      	str	r1, [r7, #4]
 80001b4:	6812      	ldr	r2, [r2, #0]
 80001b6:	601a      	str	r2, [r3, #0]
 80001b8:	683b      	ldr	r3, [r7, #0]
 80001ba:	4a0c      	ldr	r2, [pc, #48]	; (80001ec <handler_reset+0x54>)
 80001bc:	4293      	cmp	r3, r2
 80001be:	d3f3      	bcc.n	80001a8 <handler_reset+0x10>
 80001c0:	4b0b      	ldr	r3, [pc, #44]	; (80001f0 <handler_reset+0x58>)
 80001c2:	603b      	str	r3, [r7, #0]
 80001c4:	e004      	b.n	80001d0 <handler_reset+0x38>
 80001c6:	683b      	ldr	r3, [r7, #0]
 80001c8:	1d1a      	adds	r2, r3, #4
 80001ca:	603a      	str	r2, [r7, #0]
 80001cc:	2200      	movs	r2, #0
 80001ce:	601a      	str	r2, [r3, #0]
 80001d0:	683b      	ldr	r3, [r7, #0]
 80001d2:	4a08      	ldr	r2, [pc, #32]	; (80001f4 <handler_reset+0x5c>)
 80001d4:	4293      	cmp	r3, r2
 80001d6:	d3f6      	bcc.n	80001c6 <handler_reset+0x2e>
 80001d8:	f7ff ffd6 	bl	8000188 <main>
 80001dc:	3708      	adds	r7, #8
 80001de:	46bd      	mov	sp, r7
 80001e0:	bd80      	pop	{r7, pc}
 80001e2:	bf00      	nop
 80001e4:	08000544 	.word	0x08000544
 80001e8:	20000000 	.word	0x20000000
 80001ec:	20000808 	.word	0x20000808
 80001f0:	20000808 	.word	0x20000808
 80001f4:	20000814 	.word	0x20000814

080001f8 <default_handler>:
 80001f8:	b480      	push	{r7}
 80001fa:	af00      	add	r7, sp, #0
 80001fc:	e7fe      	b.n	80001fc <default_handler+0x4>
 80001fe:	bf00      	nop

08000200 <NVIC_EnableIRQ>:
 8000200:	b480      	push	{r7}
 8000202:	b083      	sub	sp, #12
 8000204:	af00      	add	r7, sp, #0
 8000206:	4603      	mov	r3, r0
 8000208:	71fb      	strb	r3, [r7, #7]
 800020a:	4908      	ldr	r1, [pc, #32]	; (800022c <NVIC_EnableIRQ+0x2c>)
 800020c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000210:	095b      	lsrs	r3, r3, #5
 8000212:	79fa      	ldrb	r2, [r7, #7]
 8000214:	f002 021f 	and.w	r2, r2, #31
 8000218:	2001      	movs	r0, #1
 800021a:	fa00 f202 	lsl.w	r2, r0, r2
 800021e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000222:	370c      	adds	r7, #12
 8000224:	46bd      	mov	sp, r7
 8000226:	f85d 7b04 	ldr.w	r7, [sp], #4
 800022a:	4770      	bx	lr
 800022c:	e000e100 	.word	0xe000e100

08000230 <system_init>:
 8000230:	b580      	push	{r7, lr}
 8000232:	af00      	add	r7, sp, #0
 8000234:	4a81      	ldr	r2, [pc, #516]	; (800043c <system_init+0x20c>)
 8000236:	4b81      	ldr	r3, [pc, #516]	; (800043c <system_init+0x20c>)
 8000238:	681b      	ldr	r3, [r3, #0]
 800023a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800023e:	6013      	str	r3, [r2, #0]
 8000240:	bf00      	nop
 8000242:	4b7e      	ldr	r3, [pc, #504]	; (800043c <system_init+0x20c>)
 8000244:	681b      	ldr	r3, [r3, #0]
 8000246:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800024a:	2b00      	cmp	r3, #0
 800024c:	d0f9      	beq.n	8000242 <system_init+0x12>
 800024e:	4a7b      	ldr	r2, [pc, #492]	; (800043c <system_init+0x20c>)
 8000250:	4b7a      	ldr	r3, [pc, #488]	; (800043c <system_init+0x20c>)
 8000252:	685b      	ldr	r3, [r3, #4]
 8000254:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000258:	6053      	str	r3, [r2, #4]
 800025a:	4a78      	ldr	r2, [pc, #480]	; (800043c <system_init+0x20c>)
 800025c:	4b77      	ldr	r3, [pc, #476]	; (800043c <system_init+0x20c>)
 800025e:	685b      	ldr	r3, [r3, #4]
 8000260:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000264:	6053      	str	r3, [r2, #4]
 8000266:	4a75      	ldr	r2, [pc, #468]	; (800043c <system_init+0x20c>)
 8000268:	4b74      	ldr	r3, [pc, #464]	; (800043c <system_init+0x20c>)
 800026a:	685b      	ldr	r3, [r3, #4]
 800026c:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 8000270:	6053      	str	r3, [r2, #4]
 8000272:	4a72      	ldr	r2, [pc, #456]	; (800043c <system_init+0x20c>)
 8000274:	4b71      	ldr	r3, [pc, #452]	; (800043c <system_init+0x20c>)
 8000276:	685b      	ldr	r3, [r3, #4]
 8000278:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 800027c:	6053      	str	r3, [r2, #4]
 800027e:	4a6f      	ldr	r2, [pc, #444]	; (800043c <system_init+0x20c>)
 8000280:	4b6e      	ldr	r3, [pc, #440]	; (800043c <system_init+0x20c>)
 8000282:	681b      	ldr	r3, [r3, #0]
 8000284:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000288:	6013      	str	r3, [r2, #0]
 800028a:	bf00      	nop
 800028c:	4b6b      	ldr	r3, [pc, #428]	; (800043c <system_init+0x20c>)
 800028e:	681b      	ldr	r3, [r3, #0]
 8000290:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000294:	2b00      	cmp	r3, #0
 8000296:	d0f9      	beq.n	800028c <system_init+0x5c>
 8000298:	4a69      	ldr	r2, [pc, #420]	; (8000440 <system_init+0x210>)
 800029a:	4b69      	ldr	r3, [pc, #420]	; (8000440 <system_init+0x210>)
 800029c:	681b      	ldr	r3, [r3, #0]
 800029e:	f043 0310 	orr.w	r3, r3, #16
 80002a2:	6013      	str	r3, [r2, #0]
 80002a4:	4a66      	ldr	r2, [pc, #408]	; (8000440 <system_init+0x210>)
 80002a6:	4b66      	ldr	r3, [pc, #408]	; (8000440 <system_init+0x210>)
 80002a8:	681b      	ldr	r3, [r3, #0]
 80002aa:	f023 0303 	bic.w	r3, r3, #3
 80002ae:	6013      	str	r3, [r2, #0]
 80002b0:	4a63      	ldr	r2, [pc, #396]	; (8000440 <system_init+0x210>)
 80002b2:	4b63      	ldr	r3, [pc, #396]	; (8000440 <system_init+0x210>)
 80002b4:	681b      	ldr	r3, [r3, #0]
 80002b6:	f043 0302 	orr.w	r3, r3, #2
 80002ba:	6013      	str	r3, [r2, #0]
 80002bc:	4a5f      	ldr	r2, [pc, #380]	; (800043c <system_init+0x20c>)
 80002be:	4b5f      	ldr	r3, [pc, #380]	; (800043c <system_init+0x20c>)
 80002c0:	685b      	ldr	r3, [r3, #4]
 80002c2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80002c6:	6053      	str	r3, [r2, #4]
 80002c8:	4a5c      	ldr	r2, [pc, #368]	; (800043c <system_init+0x20c>)
 80002ca:	4b5c      	ldr	r3, [pc, #368]	; (800043c <system_init+0x20c>)
 80002cc:	685b      	ldr	r3, [r3, #4]
 80002ce:	f023 0303 	bic.w	r3, r3, #3
 80002d2:	6053      	str	r3, [r2, #4]
 80002d4:	4a59      	ldr	r2, [pc, #356]	; (800043c <system_init+0x20c>)
 80002d6:	4b59      	ldr	r3, [pc, #356]	; (800043c <system_init+0x20c>)
 80002d8:	685b      	ldr	r3, [r3, #4]
 80002da:	f043 0302 	orr.w	r3, r3, #2
 80002de:	6053      	str	r3, [r2, #4]
 80002e0:	bf00      	nop
 80002e2:	4b56      	ldr	r3, [pc, #344]	; (800043c <system_init+0x20c>)
 80002e4:	685b      	ldr	r3, [r3, #4]
 80002e6:	f003 030c 	and.w	r3, r3, #12
 80002ea:	2b08      	cmp	r3, #8
 80002ec:	d1f9      	bne.n	80002e2 <system_init+0xb2>
 80002ee:	4a53      	ldr	r2, [pc, #332]	; (800043c <system_init+0x20c>)
 80002f0:	4b52      	ldr	r3, [pc, #328]	; (800043c <system_init+0x20c>)
 80002f2:	699b      	ldr	r3, [r3, #24]
 80002f4:	f043 0305 	orr.w	r3, r3, #5
 80002f8:	6193      	str	r3, [r2, #24]
 80002fa:	4a50      	ldr	r2, [pc, #320]	; (800043c <system_init+0x20c>)
 80002fc:	4b4f      	ldr	r3, [pc, #316]	; (800043c <system_init+0x20c>)
 80002fe:	69db      	ldr	r3, [r3, #28]
 8000300:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 8000304:	61d3      	str	r3, [r2, #28]
 8000306:	4a4d      	ldr	r2, [pc, #308]	; (800043c <system_init+0x20c>)
 8000308:	4b4c      	ldr	r3, [pc, #304]	; (800043c <system_init+0x20c>)
 800030a:	699b      	ldr	r3, [r3, #24]
 800030c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8000310:	6193      	str	r3, [r2, #24]
 8000312:	4a4a      	ldr	r2, [pc, #296]	; (800043c <system_init+0x20c>)
 8000314:	4b49      	ldr	r3, [pc, #292]	; (800043c <system_init+0x20c>)
 8000316:	69db      	ldr	r3, [r3, #28]
 8000318:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800031c:	61d3      	str	r3, [r2, #28]
 800031e:	4a47      	ldr	r2, [pc, #284]	; (800043c <system_init+0x20c>)
 8000320:	4b46      	ldr	r3, [pc, #280]	; (800043c <system_init+0x20c>)
 8000322:	699b      	ldr	r3, [r3, #24]
 8000324:	f443 6301 	orr.w	r3, r3, #2064	; 0x810
 8000328:	f043 030d 	orr.w	r3, r3, #13
 800032c:	6193      	str	r3, [r2, #24]
 800032e:	4a45      	ldr	r2, [pc, #276]	; (8000444 <system_init+0x214>)
 8000330:	4b44      	ldr	r3, [pc, #272]	; (8000444 <system_init+0x214>)
 8000332:	685b      	ldr	r3, [r3, #4]
 8000334:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
 8000338:	f023 030f 	bic.w	r3, r3, #15
 800033c:	6053      	str	r3, [r2, #4]
 800033e:	4a41      	ldr	r2, [pc, #260]	; (8000444 <system_init+0x214>)
 8000340:	4b40      	ldr	r3, [pc, #256]	; (8000444 <system_init+0x214>)
 8000342:	685b      	ldr	r3, [r3, #4]
 8000344:	f443 633b 	orr.w	r3, r3, #2992	; 0xbb0
 8000348:	f043 030b 	orr.w	r3, r3, #11
 800034c:	6053      	str	r3, [r2, #4]
 800034e:	4a3e      	ldr	r2, [pc, #248]	; (8000448 <system_init+0x218>)
 8000350:	4b3d      	ldr	r3, [pc, #244]	; (8000448 <system_init+0x218>)
 8000352:	685b      	ldr	r3, [r3, #4]
 8000354:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8000358:	6053      	str	r3, [r2, #4]
 800035a:	4a3b      	ldr	r2, [pc, #236]	; (8000448 <system_init+0x218>)
 800035c:	4b3a      	ldr	r3, [pc, #232]	; (8000448 <system_init+0x218>)
 800035e:	685b      	ldr	r3, [r3, #4]
 8000360:	f043 433b 	orr.w	r3, r3, #3137339392	; 0xbb000000
 8000364:	f443 0330 	orr.w	r3, r3, #11534336	; 0xb00000
 8000368:	6053      	str	r3, [r2, #4]
 800036a:	4b38      	ldr	r3, [pc, #224]	; (800044c <system_init+0x21c>)
 800036c:	2245      	movs	r2, #69	; 0x45
 800036e:	851a      	strh	r2, [r3, #40]	; 0x28
 8000370:	4b36      	ldr	r3, [pc, #216]	; (800044c <system_init+0x21c>)
 8000372:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000376:	859a      	strh	r2, [r3, #44]	; 0x2c
 8000378:	4b34      	ldr	r3, [pc, #208]	; (800044c <system_init+0x21c>)
 800037a:	f44f 7200 	mov.w	r2, #512	; 0x200
 800037e:	869a      	strh	r2, [r3, #52]	; 0x34
 8000380:	4b32      	ldr	r3, [pc, #200]	; (800044c <system_init+0x21c>)
 8000382:	2200      	movs	r2, #0
 8000384:	801a      	strh	r2, [r3, #0]
 8000386:	4a31      	ldr	r2, [pc, #196]	; (800044c <system_init+0x21c>)
 8000388:	4b30      	ldr	r3, [pc, #192]	; (800044c <system_init+0x21c>)
 800038a:	881b      	ldrh	r3, [r3, #0]
 800038c:	b29b      	uxth	r3, r3
 800038e:	f443 7321 	orr.w	r3, r3, #644	; 0x284
 8000392:	b29b      	uxth	r3, r3
 8000394:	8013      	strh	r3, [r2, #0]
 8000396:	4b2d      	ldr	r3, [pc, #180]	; (800044c <system_init+0x21c>)
 8000398:	2200      	movs	r2, #0
 800039a:	831a      	strh	r2, [r3, #24]
 800039c:	4a2b      	ldr	r2, [pc, #172]	; (800044c <system_init+0x21c>)
 800039e:	4b2b      	ldr	r3, [pc, #172]	; (800044c <system_init+0x21c>)
 80003a0:	8b1b      	ldrh	r3, [r3, #24]
 80003a2:	b29b      	uxth	r3, r3
 80003a4:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 80003a8:	b29b      	uxth	r3, r3
 80003aa:	8313      	strh	r3, [r2, #24]
 80003ac:	4b27      	ldr	r3, [pc, #156]	; (800044c <system_init+0x21c>)
 80003ae:	2200      	movs	r2, #0
 80003b0:	841a      	strh	r2, [r3, #32]
 80003b2:	4a26      	ldr	r2, [pc, #152]	; (800044c <system_init+0x21c>)
 80003b4:	4b25      	ldr	r3, [pc, #148]	; (800044c <system_init+0x21c>)
 80003b6:	8c1b      	ldrh	r3, [r3, #32]
 80003b8:	b29b      	uxth	r3, r3
 80003ba:	f043 0305 	orr.w	r3, r3, #5
 80003be:	b29b      	uxth	r3, r3
 80003c0:	8413      	strh	r3, [r2, #32]
 80003c2:	4b22      	ldr	r3, [pc, #136]	; (800044c <system_init+0x21c>)
 80003c4:	2200      	movs	r2, #0
 80003c6:	f8a3 2044 	strh.w	r2, [r3, #68]	; 0x44
 80003ca:	4a20      	ldr	r2, [pc, #128]	; (800044c <system_init+0x21c>)
 80003cc:	4b1f      	ldr	r3, [pc, #124]	; (800044c <system_init+0x21c>)
 80003ce:	f8b3 3044 	ldrh.w	r3, [r3, #68]	; 0x44
 80003d2:	b29b      	uxth	r3, r3
 80003d4:	f463 43fe 	orn	r3, r3, #32512	; 0x7f00
 80003d8:	b29b      	uxth	r3, r3
 80003da:	f8a2 3044 	strh.w	r3, [r2, #68]	; 0x44
 80003de:	4a1b      	ldr	r2, [pc, #108]	; (800044c <system_init+0x21c>)
 80003e0:	4b1a      	ldr	r3, [pc, #104]	; (800044c <system_init+0x21c>)
 80003e2:	899b      	ldrh	r3, [r3, #12]
 80003e4:	b29b      	uxth	r3, r3
 80003e6:	f043 0301 	orr.w	r3, r3, #1
 80003ea:	b29b      	uxth	r3, r3
 80003ec:	8193      	strh	r3, [r2, #12]
 80003ee:	2019      	movs	r0, #25
 80003f0:	f7ff ff06 	bl	8000200 <NVIC_EnableIRQ>
 80003f4:	4a15      	ldr	r2, [pc, #84]	; (800044c <system_init+0x21c>)
 80003f6:	4b15      	ldr	r3, [pc, #84]	; (800044c <system_init+0x21c>)
 80003f8:	881b      	ldrh	r3, [r3, #0]
 80003fa:	b29b      	uxth	r3, r3
 80003fc:	f043 0301 	orr.w	r3, r3, #1
 8000400:	b29b      	uxth	r3, r3
 8000402:	8013      	strh	r3, [r2, #0]
 8000404:	4a12      	ldr	r2, [pc, #72]	; (8000450 <system_init+0x220>)
 8000406:	4b12      	ldr	r3, [pc, #72]	; (8000450 <system_init+0x220>)
 8000408:	681b      	ldr	r3, [r3, #0]
 800040a:	f043 0310 	orr.w	r3, r3, #16
 800040e:	6013      	str	r3, [r2, #0]
 8000410:	4a0f      	ldr	r2, [pc, #60]	; (8000450 <system_init+0x220>)
 8000412:	4b0f      	ldr	r3, [pc, #60]	; (8000450 <system_init+0x220>)
 8000414:	689b      	ldr	r3, [r3, #8]
 8000416:	f043 0310 	orr.w	r3, r3, #16
 800041a:	6093      	str	r3, [r2, #8]
 800041c:	4a0d      	ldr	r2, [pc, #52]	; (8000454 <system_init+0x224>)
 800041e:	4b0d      	ldr	r3, [pc, #52]	; (8000454 <system_init+0x224>)
 8000420:	68db      	ldr	r3, [r3, #12]
 8000422:	f023 0301 	bic.w	r3, r3, #1
 8000426:	60d3      	str	r3, [r2, #12]
 8000428:	4a0a      	ldr	r2, [pc, #40]	; (8000454 <system_init+0x224>)
 800042a:	4b0a      	ldr	r3, [pc, #40]	; (8000454 <system_init+0x224>)
 800042c:	68db      	ldr	r3, [r3, #12]
 800042e:	f043 0301 	orr.w	r3, r3, #1
 8000432:	60d3      	str	r3, [r2, #12]
 8000434:	200a      	movs	r0, #10
 8000436:	f7ff fee3 	bl	8000200 <NVIC_EnableIRQ>
 800043a:	bd80      	pop	{r7, pc}
 800043c:	40021000 	.word	0x40021000
 8000440:	40022000 	.word	0x40022000
 8000444:	40010800 	.word	0x40010800
 8000448:	40010c00 	.word	0x40010c00
 800044c:	40012c00 	.word	0x40012c00
 8000450:	40010400 	.word	0x40010400
 8000454:	40010000 	.word	0x40010000

08000458 <SysTick_Handler>:
 8000458:	b480      	push	{r7}
 800045a:	af00      	add	r7, sp, #0
 800045c:	4b04      	ldr	r3, [pc, #16]	; (8000470 <SysTick_Handler+0x18>)
 800045e:	681b      	ldr	r3, [r3, #0]
 8000460:	3301      	adds	r3, #1
 8000462:	4a03      	ldr	r2, [pc, #12]	; (8000470 <SysTick_Handler+0x18>)
 8000464:	6013      	str	r3, [r2, #0]
 8000466:	46bd      	mov	sp, r7
 8000468:	f85d 7b04 	ldr.w	r7, [sp], #4
 800046c:	4770      	bx	lr
 800046e:	bf00      	nop
 8000470:	20000808 	.word	0x20000808

08000474 <EXTI4_IRQHandler>:
 8000474:	b480      	push	{r7}
 8000476:	af00      	add	r7, sp, #0
 8000478:	4b17      	ldr	r3, [pc, #92]	; (80004d8 <EXTI4_IRQHandler+0x64>)
 800047a:	695b      	ldr	r3, [r3, #20]
 800047c:	f003 0310 	and.w	r3, r3, #16
 8000480:	2b00      	cmp	r3, #0
 8000482:	d023      	beq.n	80004cc <EXTI4_IRQHandler+0x58>
 8000484:	4a14      	ldr	r2, [pc, #80]	; (80004d8 <EXTI4_IRQHandler+0x64>)
 8000486:	4b14      	ldr	r3, [pc, #80]	; (80004d8 <EXTI4_IRQHandler+0x64>)
 8000488:	695b      	ldr	r3, [r3, #20]
 800048a:	f043 0310 	orr.w	r3, r3, #16
 800048e:	6153      	str	r3, [r2, #20]
 8000490:	4b12      	ldr	r3, [pc, #72]	; (80004dc <EXTI4_IRQHandler+0x68>)
 8000492:	681b      	ldr	r3, [r3, #0]
 8000494:	f083 0301 	eor.w	r3, r3, #1
 8000498:	4a10      	ldr	r2, [pc, #64]	; (80004dc <EXTI4_IRQHandler+0x68>)
 800049a:	6013      	str	r3, [r2, #0]
 800049c:	4b10      	ldr	r3, [pc, #64]	; (80004e0 <EXTI4_IRQHandler+0x6c>)
 800049e:	681b      	ldr	r3, [r3, #0]
 80004a0:	2b64      	cmp	r3, #100	; 0x64
 80004a2:	d104      	bne.n	80004ae <EXTI4_IRQHandler+0x3a>
 80004a4:	4b0f      	ldr	r3, [pc, #60]	; (80004e4 <EXTI4_IRQHandler+0x70>)
 80004a6:	f04f 32ff 	mov.w	r2, #4294967295
 80004aa:	601a      	str	r2, [r3, #0]
 80004ac:	bf00      	nop
 80004ae:	4b0c      	ldr	r3, [pc, #48]	; (80004e0 <EXTI4_IRQHandler+0x6c>)
 80004b0:	681b      	ldr	r3, [r3, #0]
 80004b2:	2b00      	cmp	r3, #0
 80004b4:	d103      	bne.n	80004be <EXTI4_IRQHandler+0x4a>
 80004b6:	4b0b      	ldr	r3, [pc, #44]	; (80004e4 <EXTI4_IRQHandler+0x70>)
 80004b8:	2201      	movs	r2, #1
 80004ba:	601a      	str	r2, [r3, #0]
 80004bc:	bf00      	nop
 80004be:	4b08      	ldr	r3, [pc, #32]	; (80004e0 <EXTI4_IRQHandler+0x6c>)
 80004c0:	681b      	ldr	r3, [r3, #0]
 80004c2:	4a08      	ldr	r2, [pc, #32]	; (80004e4 <EXTI4_IRQHandler+0x70>)
 80004c4:	6812      	ldr	r2, [r2, #0]
 80004c6:	4413      	add	r3, r2
 80004c8:	4a05      	ldr	r2, [pc, #20]	; (80004e0 <EXTI4_IRQHandler+0x6c>)
 80004ca:	6013      	str	r3, [r2, #0]
 80004cc:	4618      	mov	r0, r3
 80004ce:	46bd      	mov	sp, r7
 80004d0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004d4:	4770      	bx	lr
 80004d6:	bf00      	nop
 80004d8:	40010400 	.word	0x40010400
 80004dc:	2000080c 	.word	0x2000080c
 80004e0:	20000800 	.word	0x20000800
 80004e4:	20000804 	.word	0x20000804

080004e8 <TIM1_UP_IRQHandler>:
 80004e8:	b580      	push	{r7, lr}
 80004ea:	af00      	add	r7, sp, #0
 80004ec:	4a11      	ldr	r2, [pc, #68]	; (8000534 <TIM1_UP_IRQHandler+0x4c>)
 80004ee:	4b12      	ldr	r3, [pc, #72]	; (8000538 <TIM1_UP_IRQHandler+0x50>)
 80004f0:	681b      	ldr	r3, [r3, #0]
 80004f2:	4912      	ldr	r1, [pc, #72]	; (800053c <TIM1_UP_IRQHandler+0x54>)
 80004f4:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
 80004f8:	8693      	strh	r3, [r2, #52]	; 0x34
 80004fa:	4b0f      	ldr	r3, [pc, #60]	; (8000538 <TIM1_UP_IRQHandler+0x50>)
 80004fc:	681b      	ldr	r3, [r3, #0]
 80004fe:	461a      	mov	r2, r3
 8000500:	4b0f      	ldr	r3, [pc, #60]	; (8000540 <TIM1_UP_IRQHandler+0x58>)
 8000502:	681b      	ldr	r3, [r3, #0]
 8000504:	4413      	add	r3, r2
 8000506:	f3c3 0309 	ubfx	r3, r3, #0, #10
 800050a:	4a0b      	ldr	r2, [pc, #44]	; (8000538 <TIM1_UP_IRQHandler+0x50>)
 800050c:	6013      	str	r3, [r2, #0]
 800050e:	4a09      	ldr	r2, [pc, #36]	; (8000534 <TIM1_UP_IRQHandler+0x4c>)
 8000510:	4b08      	ldr	r3, [pc, #32]	; (8000534 <TIM1_UP_IRQHandler+0x4c>)
 8000512:	8a1b      	ldrh	r3, [r3, #16]
 8000514:	b29b      	uxth	r3, r3
 8000516:	f023 0301 	bic.w	r3, r3, #1
 800051a:	b29b      	uxth	r3, r3
 800051c:	8213      	strh	r3, [r2, #16]
 800051e:	4b06      	ldr	r3, [pc, #24]	; (8000538 <TIM1_UP_IRQHandler+0x50>)
 8000520:	681b      	ldr	r3, [r3, #0]
 8000522:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8000526:	dd02      	ble.n	800052e <TIM1_UP_IRQHandler+0x46>
 8000528:	f7ff fdee 	bl	8000108 <led_on>
 800052c:	e001      	b.n	8000532 <TIM1_UP_IRQHandler+0x4a>
 800052e:	f7ff fdf9 	bl	8000124 <led_off>
 8000532:	bd80      	pop	{r7, pc}
 8000534:	40012c00 	.word	0x40012c00
 8000538:	20000810 	.word	0x20000810
 800053c:	20000000 	.word	0x20000000
 8000540:	20000800 	.word	0x20000800
