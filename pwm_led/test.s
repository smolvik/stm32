
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 85 03 00 08 e5 03 00 08 e5 03 00 08     . . ............
 8000010:	e5 03 00 08 e5 03 00 08 e5 03 00 08 00 00 00 00     ................
	...
 800002c:	e5 03 00 08 e5 03 00 08 00 00 00 00 e5 03 00 08     ................
 800003c:	19 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 800004c:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 800005c:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 800006c:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 800007c:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 800008c:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 800009c:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 80000ac:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 80000bc:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 80000cc:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................
 80000dc:	e5 03 00 08 e5 03 00 08 e5 03 00 08 e5 03 00 08     ................

080000ec <SystemInit>:
 80000ec:	b480      	push	{r7}
 80000ee:	af00      	add	r7, sp, #0
 80000f0:	4a82      	ldr	r2, [pc, #520]	; (80002fc <SystemInit+0x210>)
 80000f2:	4b82      	ldr	r3, [pc, #520]	; (80002fc <SystemInit+0x210>)
 80000f4:	681b      	ldr	r3, [r3, #0]
 80000f6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80000fa:	6013      	str	r3, [r2, #0]
 80000fc:	bf00      	nop
 80000fe:	4b7f      	ldr	r3, [pc, #508]	; (80002fc <SystemInit+0x210>)
 8000100:	681b      	ldr	r3, [r3, #0]
 8000102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000106:	2b00      	cmp	r3, #0
 8000108:	d0f9      	beq.n	80000fe <SystemInit+0x12>
 800010a:	4a7c      	ldr	r2, [pc, #496]	; (80002fc <SystemInit+0x210>)
 800010c:	4b7b      	ldr	r3, [pc, #492]	; (80002fc <SystemInit+0x210>)
 800010e:	685b      	ldr	r3, [r3, #4]
 8000110:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000114:	6053      	str	r3, [r2, #4]
 8000116:	4a79      	ldr	r2, [pc, #484]	; (80002fc <SystemInit+0x210>)
 8000118:	4b78      	ldr	r3, [pc, #480]	; (80002fc <SystemInit+0x210>)
 800011a:	685b      	ldr	r3, [r3, #4]
 800011c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000120:	6053      	str	r3, [r2, #4]
 8000122:	4a76      	ldr	r2, [pc, #472]	; (80002fc <SystemInit+0x210>)
 8000124:	4b75      	ldr	r3, [pc, #468]	; (80002fc <SystemInit+0x210>)
 8000126:	685b      	ldr	r3, [r3, #4]
 8000128:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800012c:	6053      	str	r3, [r2, #4]
 800012e:	4a73      	ldr	r2, [pc, #460]	; (80002fc <SystemInit+0x210>)
 8000130:	4b72      	ldr	r3, [pc, #456]	; (80002fc <SystemInit+0x210>)
 8000132:	681b      	ldr	r3, [r3, #0]
 8000134:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000138:	6013      	str	r3, [r2, #0]
 800013a:	bf00      	nop
 800013c:	4b6f      	ldr	r3, [pc, #444]	; (80002fc <SystemInit+0x210>)
 800013e:	681b      	ldr	r3, [r3, #0]
 8000140:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000144:	2b00      	cmp	r3, #0
 8000146:	d0f9      	beq.n	800013c <SystemInit+0x50>
 8000148:	4a6d      	ldr	r2, [pc, #436]	; (8000300 <SystemInit+0x214>)
 800014a:	4b6d      	ldr	r3, [pc, #436]	; (8000300 <SystemInit+0x214>)
 800014c:	681b      	ldr	r3, [r3, #0]
 800014e:	f043 0310 	orr.w	r3, r3, #16
 8000152:	6013      	str	r3, [r2, #0]
 8000154:	4a6a      	ldr	r2, [pc, #424]	; (8000300 <SystemInit+0x214>)
 8000156:	4b6a      	ldr	r3, [pc, #424]	; (8000300 <SystemInit+0x214>)
 8000158:	681b      	ldr	r3, [r3, #0]
 800015a:	f023 0303 	bic.w	r3, r3, #3
 800015e:	6013      	str	r3, [r2, #0]
 8000160:	4a67      	ldr	r2, [pc, #412]	; (8000300 <SystemInit+0x214>)
 8000162:	4b67      	ldr	r3, [pc, #412]	; (8000300 <SystemInit+0x214>)
 8000164:	681b      	ldr	r3, [r3, #0]
 8000166:	f043 0302 	orr.w	r3, r3, #2
 800016a:	6013      	str	r3, [r2, #0]
 800016c:	4a63      	ldr	r2, [pc, #396]	; (80002fc <SystemInit+0x210>)
 800016e:	4b63      	ldr	r3, [pc, #396]	; (80002fc <SystemInit+0x210>)
 8000170:	685b      	ldr	r3, [r3, #4]
 8000172:	f443 63a0 	orr.w	r3, r3, #1280	; 0x500
 8000176:	6053      	str	r3, [r2, #4]
 8000178:	4a60      	ldr	r2, [pc, #384]	; (80002fc <SystemInit+0x210>)
 800017a:	4b60      	ldr	r3, [pc, #384]	; (80002fc <SystemInit+0x210>)
 800017c:	685b      	ldr	r3, [r3, #4]
 800017e:	f023 0303 	bic.w	r3, r3, #3
 8000182:	6053      	str	r3, [r2, #4]
 8000184:	4a5d      	ldr	r2, [pc, #372]	; (80002fc <SystemInit+0x210>)
 8000186:	4b5d      	ldr	r3, [pc, #372]	; (80002fc <SystemInit+0x210>)
 8000188:	685b      	ldr	r3, [r3, #4]
 800018a:	f043 0302 	orr.w	r3, r3, #2
 800018e:	6053      	str	r3, [r2, #4]
 8000190:	bf00      	nop
 8000192:	4b5a      	ldr	r3, [pc, #360]	; (80002fc <SystemInit+0x210>)
 8000194:	685b      	ldr	r3, [r3, #4]
 8000196:	f003 030c 	and.w	r3, r3, #12
 800019a:	2b08      	cmp	r3, #8
 800019c:	d1f9      	bne.n	8000192 <SystemInit+0xa6>
 800019e:	4a57      	ldr	r2, [pc, #348]	; (80002fc <SystemInit+0x210>)
 80001a0:	4b56      	ldr	r3, [pc, #344]	; (80002fc <SystemInit+0x210>)
 80001a2:	69db      	ldr	r3, [r3, #28]
 80001a4:	f043 0301 	orr.w	r3, r3, #1
 80001a8:	61d3      	str	r3, [r2, #28]
 80001aa:	4a54      	ldr	r2, [pc, #336]	; (80002fc <SystemInit+0x210>)
 80001ac:	4b53      	ldr	r3, [pc, #332]	; (80002fc <SystemInit+0x210>)
 80001ae:	699b      	ldr	r3, [r3, #24]
 80001b0:	f043 0305 	orr.w	r3, r3, #5
 80001b4:	6193      	str	r3, [r2, #24]
 80001b6:	4b53      	ldr	r3, [pc, #332]	; (8000304 <SystemInit+0x218>)
 80001b8:	2200      	movs	r2, #0
 80001ba:	601a      	str	r2, [r3, #0]
 80001bc:	4a51      	ldr	r2, [pc, #324]	; (8000304 <SystemInit+0x218>)
 80001be:	4b51      	ldr	r3, [pc, #324]	; (8000304 <SystemInit+0x218>)
 80001c0:	681b      	ldr	r3, [r3, #0]
 80001c2:	f043 030b 	orr.w	r3, r3, #11
 80001c6:	6013      	str	r3, [r2, #0]
 80001c8:	4a4e      	ldr	r2, [pc, #312]	; (8000304 <SystemInit+0x218>)
 80001ca:	4b4e      	ldr	r3, [pc, #312]	; (8000304 <SystemInit+0x218>)
 80001cc:	681b      	ldr	r3, [r3, #0]
 80001ce:	f043 03b0 	orr.w	r3, r3, #176	; 0xb0
 80001d2:	6013      	str	r3, [r2, #0]
 80001d4:	4a4b      	ldr	r2, [pc, #300]	; (8000304 <SystemInit+0x218>)
 80001d6:	4b4b      	ldr	r3, [pc, #300]	; (8000304 <SystemInit+0x218>)
 80001d8:	681b      	ldr	r3, [r3, #0]
 80001da:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 80001de:	6013      	str	r3, [r2, #0]
 80001e0:	4a48      	ldr	r2, [pc, #288]	; (8000304 <SystemInit+0x218>)
 80001e2:	4b48      	ldr	r3, [pc, #288]	; (8000304 <SystemInit+0x218>)
 80001e4:	681b      	ldr	r3, [r3, #0]
 80001e6:	f443 4330 	orr.w	r3, r3, #45056	; 0xb000
 80001ea:	6013      	str	r3, [r2, #0]
 80001ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80001f0:	2223      	movs	r2, #35	; 0x23
 80001f2:	851a      	strh	r2, [r3, #40]	; 0x28
 80001f4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80001f8:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 80001fc:	859a      	strh	r2, [r3, #44]	; 0x2c
 80001fe:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000202:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 8000206:	869a      	strh	r2, [r3, #52]	; 0x34
 8000208:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800020c:	f44f 7296 	mov.w	r2, #300	; 0x12c
 8000210:	871a      	strh	r2, [r3, #56]	; 0x38
 8000212:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000216:	2264      	movs	r2, #100	; 0x64
 8000218:	879a      	strh	r2, [r3, #60]	; 0x3c
 800021a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800021e:	2232      	movs	r2, #50	; 0x32
 8000220:	f8a3 2040 	strh.w	r2, [r3, #64]	; 0x40
 8000224:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000228:	2200      	movs	r2, #0
 800022a:	831a      	strh	r2, [r3, #24]
 800022c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000230:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000234:	8b1b      	ldrh	r3, [r3, #24]
 8000236:	b29b      	uxth	r3, r3
 8000238:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 800023c:	b29b      	uxth	r3, r3
 800023e:	8313      	strh	r3, [r2, #24]
 8000240:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000244:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000248:	8b1b      	ldrh	r3, [r3, #24]
 800024a:	b29b      	uxth	r3, r3
 800024c:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 8000250:	b29b      	uxth	r3, r3
 8000252:	8313      	strh	r3, [r2, #24]
 8000254:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000258:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 800025c:	8b9b      	ldrh	r3, [r3, #28]
 800025e:	b29b      	uxth	r3, r3
 8000260:	f043 0368 	orr.w	r3, r3, #104	; 0x68
 8000264:	b29b      	uxth	r3, r3
 8000266:	8393      	strh	r3, [r2, #28]
 8000268:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 800026c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000270:	8b9b      	ldrh	r3, [r3, #28]
 8000272:	b29b      	uxth	r3, r3
 8000274:	f443 43d0 	orr.w	r3, r3, #26624	; 0x6800
 8000278:	b29b      	uxth	r3, r3
 800027a:	8393      	strh	r3, [r2, #28]
 800027c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000280:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000284:	8c1b      	ldrh	r3, [r3, #32]
 8000286:	b29b      	uxth	r3, r3
 8000288:	f043 0301 	orr.w	r3, r3, #1
 800028c:	b29b      	uxth	r3, r3
 800028e:	8413      	strh	r3, [r2, #32]
 8000290:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000294:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8000298:	8c1b      	ldrh	r3, [r3, #32]
 800029a:	b29b      	uxth	r3, r3
 800029c:	f043 0310 	orr.w	r3, r3, #16
 80002a0:	b29b      	uxth	r3, r3
 80002a2:	8413      	strh	r3, [r2, #32]
 80002a4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002a8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002ac:	8c1b      	ldrh	r3, [r3, #32]
 80002ae:	b29b      	uxth	r3, r3
 80002b0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80002b4:	b29b      	uxth	r3, r3
 80002b6:	8413      	strh	r3, [r2, #32]
 80002b8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002bc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002c0:	8c1b      	ldrh	r3, [r3, #32]
 80002c2:	b29b      	uxth	r3, r3
 80002c4:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 80002c8:	b29b      	uxth	r3, r3
 80002ca:	8413      	strh	r3, [r2, #32]
 80002cc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80002d0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 80002d4:	881b      	ldrh	r3, [r3, #0]
 80002d6:	b29b      	uxth	r3, r3
 80002d8:	f043 0301 	orr.w	r3, r3, #1
 80002dc:	b29b      	uxth	r3, r3
 80002de:	8013      	strh	r3, [r2, #0]
 80002e0:	4b09      	ldr	r3, [pc, #36]	; (8000308 <SystemInit+0x21c>)
 80002e2:	f242 3227 	movw	r2, #8999	; 0x2327
 80002e6:	605a      	str	r2, [r3, #4]
 80002e8:	4b07      	ldr	r3, [pc, #28]	; (8000308 <SystemInit+0x21c>)
 80002ea:	2200      	movs	r2, #0
 80002ec:	609a      	str	r2, [r3, #8]
 80002ee:	4b06      	ldr	r3, [pc, #24]	; (8000308 <SystemInit+0x21c>)
 80002f0:	2203      	movs	r2, #3
 80002f2:	601a      	str	r2, [r3, #0]
 80002f4:	46bd      	mov	sp, r7
 80002f6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002fa:	4770      	bx	lr
 80002fc:	40021000 	.word	0x40021000
 8000300:	40022000 	.word	0x40022000
 8000304:	40010800 	.word	0x40010800
 8000308:	e000e010 	.word	0xe000e010

0800030c <main>:
 800030c:	b580      	push	{r7, lr}
 800030e:	af00      	add	r7, sp, #0
 8000310:	f7ff feec 	bl	80000ec <SystemInit>
 8000314:	e7fe      	b.n	8000314 <main+0x8>
 8000316:	bf00      	nop

08000318 <SysTick_Handler>:
 8000318:	b480      	push	{r7}
 800031a:	b085      	sub	sp, #20
 800031c:	af00      	add	r7, sp, #0
 800031e:	4b16      	ldr	r3, [pc, #88]	; (8000378 <SysTick_Handler+0x60>)
 8000320:	607b      	str	r3, [r7, #4]
 8000322:	2300      	movs	r3, #0
 8000324:	60fb      	str	r3, [r7, #12]
 8000326:	e01e      	b.n	8000366 <SysTick_Handler+0x4e>
 8000328:	4a14      	ldr	r2, [pc, #80]	; (800037c <SysTick_Handler+0x64>)
 800032a:	68fb      	ldr	r3, [r7, #12]
 800032c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8000330:	60bb      	str	r3, [r7, #8]
 8000332:	68bb      	ldr	r3, [r7, #8]
 8000334:	1c5a      	adds	r2, r3, #1
 8000336:	60ba      	str	r2, [r7, #8]
 8000338:	f240 32de 	movw	r2, #990	; 0x3de
 800033c:	4293      	cmp	r3, r2
 800033e:	dd01      	ble.n	8000344 <SysTick_Handler+0x2c>
 8000340:	4b0f      	ldr	r3, [pc, #60]	; (8000380 <SysTick_Handler+0x68>)
 8000342:	60bb      	str	r3, [r7, #8]
 8000344:	68fb      	ldr	r3, [r7, #12]
 8000346:	009b      	lsls	r3, r3, #2
 8000348:	687a      	ldr	r2, [r7, #4]
 800034a:	4413      	add	r3, r2
 800034c:	68ba      	ldr	r2, [r7, #8]
 800034e:	2a00      	cmp	r2, #0
 8000350:	bfb8      	it	lt
 8000352:	4252      	neglt	r2, r2
 8000354:	601a      	str	r2, [r3, #0]
 8000356:	4909      	ldr	r1, [pc, #36]	; (800037c <SysTick_Handler+0x64>)
 8000358:	68fb      	ldr	r3, [r7, #12]
 800035a:	68ba      	ldr	r2, [r7, #8]
 800035c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000360:	68fb      	ldr	r3, [r7, #12]
 8000362:	3301      	adds	r3, #1
 8000364:	60fb      	str	r3, [r7, #12]
 8000366:	68fb      	ldr	r3, [r7, #12]
 8000368:	2b03      	cmp	r3, #3
 800036a:	dddd      	ble.n	8000328 <SysTick_Handler+0x10>
 800036c:	3714      	adds	r7, #20
 800036e:	46bd      	mov	sp, r7
 8000370:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000374:	4770      	bx	lr
 8000376:	bf00      	nop
 8000378:	40000034 	.word	0x40000034
 800037c:	20000000 	.word	0x20000000
 8000380:	fffffc22 	.word	0xfffffc22

08000384 <handler_reset>:
 8000384:	b580      	push	{r7, lr}
 8000386:	b082      	sub	sp, #8
 8000388:	af00      	add	r7, sp, #0
 800038a:	4b11      	ldr	r3, [pc, #68]	; (80003d0 <handler_reset+0x4c>)
 800038c:	607b      	str	r3, [r7, #4]
 800038e:	4b11      	ldr	r3, [pc, #68]	; (80003d4 <handler_reset+0x50>)
 8000390:	603b      	str	r3, [r7, #0]
 8000392:	e007      	b.n	80003a4 <handler_reset+0x20>
 8000394:	683b      	ldr	r3, [r7, #0]
 8000396:	1d1a      	adds	r2, r3, #4
 8000398:	603a      	str	r2, [r7, #0]
 800039a:	687a      	ldr	r2, [r7, #4]
 800039c:	1d11      	adds	r1, r2, #4
 800039e:	6079      	str	r1, [r7, #4]
 80003a0:	6812      	ldr	r2, [r2, #0]
 80003a2:	601a      	str	r2, [r3, #0]
 80003a4:	683b      	ldr	r3, [r7, #0]
 80003a6:	4a0c      	ldr	r2, [pc, #48]	; (80003d8 <handler_reset+0x54>)
 80003a8:	4293      	cmp	r3, r2
 80003aa:	d3f3      	bcc.n	8000394 <handler_reset+0x10>
 80003ac:	4b0b      	ldr	r3, [pc, #44]	; (80003dc <handler_reset+0x58>)
 80003ae:	603b      	str	r3, [r7, #0]
 80003b0:	e004      	b.n	80003bc <handler_reset+0x38>
 80003b2:	683b      	ldr	r3, [r7, #0]
 80003b4:	1d1a      	adds	r2, r3, #4
 80003b6:	603a      	str	r2, [r7, #0]
 80003b8:	2200      	movs	r2, #0
 80003ba:	601a      	str	r2, [r3, #0]
 80003bc:	683b      	ldr	r3, [r7, #0]
 80003be:	4a08      	ldr	r2, [pc, #32]	; (80003e0 <handler_reset+0x5c>)
 80003c0:	4293      	cmp	r3, r2
 80003c2:	d3f6      	bcc.n	80003b2 <handler_reset+0x2e>
 80003c4:	f7ff ffa2 	bl	800030c <main>
 80003c8:	3708      	adds	r7, #8
 80003ca:	46bd      	mov	sp, r7
 80003cc:	bd80      	pop	{r7, pc}
 80003ce:	bf00      	nop
 80003d0:	080003ec 	.word	0x080003ec
 80003d4:	20000000 	.word	0x20000000
 80003d8:	20000014 	.word	0x20000014
 80003dc:	20000014 	.word	0x20000014
 80003e0:	20000014 	.word	0x20000014

080003e4 <default_handler>:
 80003e4:	b480      	push	{r7}
 80003e6:	af00      	add	r7, sp, #0
 80003e8:	e7fe      	b.n	80003e8 <default_handler+0x4>
 80003ea:	bf00      	nop
