
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 1d 04 00 08 85 04 00 08 91 04 00 08     . . ............
 8000010:	99 04 00 08 a1 04 00 08 a9 04 00 08 00 00 00 00     ................
	...
 800002c:	b1 04 00 08 bd 04 00 08 00 00 00 00 c9 04 00 08     ................
 800003c:	d5 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     ....}...}...}...
 800004c:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 800005c:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 800006c:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 800007c:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 800008c:	7d 04 00 08 e1 04 00 08 7d 04 00 08 7d 04 00 08     }.......}...}...
 800009c:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 80000ac:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 80000bc:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 80000cc:	7d 04 00 08 7d 04 00 08 7d 04 00 08 7d 04 00 08     }...}...}...}...
 80000dc:	7d 04 00 08 7d 04 00 08 7d 04 00 08 ed 04 00 08     }...}...}.......

080000ec <NVIC_EnableIRQ>:
 80000ec:	b480      	push	{r7}
 80000ee:	b083      	sub	sp, #12
 80000f0:	af00      	add	r7, sp, #0
 80000f2:	4603      	mov	r3, r0
 80000f4:	71fb      	strb	r3, [r7, #7]
 80000f6:	4908      	ldr	r1, [pc, #32]	; (8000118 <NVIC_EnableIRQ+0x2c>)
 80000f8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80000fc:	095b      	lsrs	r3, r3, #5
 80000fe:	79fa      	ldrb	r2, [r7, #7]
 8000100:	f002 021f 	and.w	r2, r2, #31
 8000104:	2001      	movs	r0, #1
 8000106:	fa00 f202 	lsl.w	r2, r0, r2
 800010a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800010e:	370c      	adds	r7, #12
 8000110:	46bd      	mov	sp, r7
 8000112:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000116:	4770      	bx	lr
 8000118:	e000e100 	.word	0xe000e100

0800011c <Set_System>:
 800011c:	b480      	push	{r7}
 800011e:	af00      	add	r7, sp, #0
 8000120:	4a36      	ldr	r2, [pc, #216]	; (80001fc <Set_System+0xe0>)
 8000122:	4b36      	ldr	r3, [pc, #216]	; (80001fc <Set_System+0xe0>)
 8000124:	681b      	ldr	r3, [r3, #0]
 8000126:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	bf00      	nop
 800012e:	4b33      	ldr	r3, [pc, #204]	; (80001fc <Set_System+0xe0>)
 8000130:	681b      	ldr	r3, [r3, #0]
 8000132:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000136:	2b00      	cmp	r3, #0
 8000138:	d0f9      	beq.n	800012e <Set_System+0x12>
 800013a:	4a30      	ldr	r2, [pc, #192]	; (80001fc <Set_System+0xe0>)
 800013c:	4b2f      	ldr	r3, [pc, #188]	; (80001fc <Set_System+0xe0>)
 800013e:	685b      	ldr	r3, [r3, #4]
 8000140:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 8000144:	6053      	str	r3, [r2, #4]
 8000146:	4a2d      	ldr	r2, [pc, #180]	; (80001fc <Set_System+0xe0>)
 8000148:	4b2c      	ldr	r3, [pc, #176]	; (80001fc <Set_System+0xe0>)
 800014a:	685b      	ldr	r3, [r3, #4]
 800014c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000150:	6053      	str	r3, [r2, #4]
 8000152:	4a2a      	ldr	r2, [pc, #168]	; (80001fc <Set_System+0xe0>)
 8000154:	4b29      	ldr	r3, [pc, #164]	; (80001fc <Set_System+0xe0>)
 8000156:	685b      	ldr	r3, [r3, #4]
 8000158:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 800015c:	6053      	str	r3, [r2, #4]
 800015e:	4a27      	ldr	r2, [pc, #156]	; (80001fc <Set_System+0xe0>)
 8000160:	4b26      	ldr	r3, [pc, #152]	; (80001fc <Set_System+0xe0>)
 8000162:	685b      	ldr	r3, [r3, #4]
 8000164:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 8000168:	6053      	str	r3, [r2, #4]
 800016a:	4a24      	ldr	r2, [pc, #144]	; (80001fc <Set_System+0xe0>)
 800016c:	4b23      	ldr	r3, [pc, #140]	; (80001fc <Set_System+0xe0>)
 800016e:	681b      	ldr	r3, [r3, #0]
 8000170:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000174:	6013      	str	r3, [r2, #0]
 8000176:	bf00      	nop
 8000178:	4b20      	ldr	r3, [pc, #128]	; (80001fc <Set_System+0xe0>)
 800017a:	681b      	ldr	r3, [r3, #0]
 800017c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000180:	2b00      	cmp	r3, #0
 8000182:	d0f9      	beq.n	8000178 <Set_System+0x5c>
 8000184:	4a1e      	ldr	r2, [pc, #120]	; (8000200 <Set_System+0xe4>)
 8000186:	4b1e      	ldr	r3, [pc, #120]	; (8000200 <Set_System+0xe4>)
 8000188:	681b      	ldr	r3, [r3, #0]
 800018a:	f043 0310 	orr.w	r3, r3, #16
 800018e:	6013      	str	r3, [r2, #0]
 8000190:	4a1b      	ldr	r2, [pc, #108]	; (8000200 <Set_System+0xe4>)
 8000192:	4b1b      	ldr	r3, [pc, #108]	; (8000200 <Set_System+0xe4>)
 8000194:	681b      	ldr	r3, [r3, #0]
 8000196:	f023 0303 	bic.w	r3, r3, #3
 800019a:	6013      	str	r3, [r2, #0]
 800019c:	4a18      	ldr	r2, [pc, #96]	; (8000200 <Set_System+0xe4>)
 800019e:	4b18      	ldr	r3, [pc, #96]	; (8000200 <Set_System+0xe4>)
 80001a0:	681b      	ldr	r3, [r3, #0]
 80001a2:	f043 0302 	orr.w	r3, r3, #2
 80001a6:	6013      	str	r3, [r2, #0]
 80001a8:	4a14      	ldr	r2, [pc, #80]	; (80001fc <Set_System+0xe0>)
 80001aa:	4b14      	ldr	r3, [pc, #80]	; (80001fc <Set_System+0xe0>)
 80001ac:	685b      	ldr	r3, [r3, #4]
 80001ae:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80001b2:	6053      	str	r3, [r2, #4]
 80001b4:	4a11      	ldr	r2, [pc, #68]	; (80001fc <Set_System+0xe0>)
 80001b6:	4b11      	ldr	r3, [pc, #68]	; (80001fc <Set_System+0xe0>)
 80001b8:	685b      	ldr	r3, [r3, #4]
 80001ba:	f023 0303 	bic.w	r3, r3, #3
 80001be:	6053      	str	r3, [r2, #4]
 80001c0:	4a0e      	ldr	r2, [pc, #56]	; (80001fc <Set_System+0xe0>)
 80001c2:	4b0e      	ldr	r3, [pc, #56]	; (80001fc <Set_System+0xe0>)
 80001c4:	685b      	ldr	r3, [r3, #4]
 80001c6:	f043 0302 	orr.w	r3, r3, #2
 80001ca:	6053      	str	r3, [r2, #4]
 80001cc:	bf00      	nop
 80001ce:	4b0b      	ldr	r3, [pc, #44]	; (80001fc <Set_System+0xe0>)
 80001d0:	685b      	ldr	r3, [r3, #4]
 80001d2:	f003 030c 	and.w	r3, r3, #12
 80001d6:	2b08      	cmp	r3, #8
 80001d8:	d1f9      	bne.n	80001ce <Set_System+0xb2>
 80001da:	4a08      	ldr	r2, [pc, #32]	; (80001fc <Set_System+0xe0>)
 80001dc:	4b07      	ldr	r3, [pc, #28]	; (80001fc <Set_System+0xe0>)
 80001de:	699b      	ldr	r3, [r3, #24]
 80001e0:	f043 0305 	orr.w	r3, r3, #5
 80001e4:	6193      	str	r3, [r2, #24]
 80001e6:	4a05      	ldr	r2, [pc, #20]	; (80001fc <Set_System+0xe0>)
 80001e8:	4b04      	ldr	r3, [pc, #16]	; (80001fc <Set_System+0xe0>)
 80001ea:	69db      	ldr	r3, [r3, #28]
 80001ec:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 80001f0:	61d3      	str	r3, [r2, #28]
 80001f2:	46bd      	mov	sp, r7
 80001f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80001f8:	4770      	bx	lr
 80001fa:	bf00      	nop
 80001fc:	40021000 	.word	0x40021000
 8000200:	40022000 	.word	0x40022000

08000204 <Set_USBClock>:
 8000204:	b480      	push	{r7}
 8000206:	af00      	add	r7, sp, #0
 8000208:	46bd      	mov	sp, r7
 800020a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800020e:	4770      	bx	lr

08000210 <Enter_LowPowerMode>:
 8000210:	b480      	push	{r7}
 8000212:	af00      	add	r7, sp, #0
 8000214:	46bd      	mov	sp, r7
 8000216:	f85d 7b04 	ldr.w	r7, [sp], #4
 800021a:	4770      	bx	lr

0800021c <Leave_LowPowerMode>:
 800021c:	b480      	push	{r7}
 800021e:	af00      	add	r7, sp, #0
 8000220:	46bd      	mov	sp, r7
 8000222:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000226:	4770      	bx	lr

08000228 <USB_Interrupts_Config>:
 8000228:	b580      	push	{r7, lr}
 800022a:	af00      	add	r7, sp, #0
 800022c:	2014      	movs	r0, #20
 800022e:	f7ff ff5d 	bl	80000ec <NVIC_EnableIRQ>
 8000232:	bd80      	pop	{r7, pc}

08000234 <USB_Cable_Config>:
 8000234:	b480      	push	{r7}
 8000236:	b083      	sub	sp, #12
 8000238:	af00      	add	r7, sp, #0
 800023a:	4603      	mov	r3, r0
 800023c:	71fb      	strb	r3, [r7, #7]
 800023e:	79fb      	ldrb	r3, [r7, #7]
 8000240:	2b00      	cmp	r3, #0
 8000242:	d012      	beq.n	800026a <USB_Cable_Config+0x36>
 8000244:	4a11      	ldr	r2, [pc, #68]	; (800028c <USB_Cable_Config+0x58>)
 8000246:	4b11      	ldr	r3, [pc, #68]	; (800028c <USB_Cable_Config+0x58>)
 8000248:	685b      	ldr	r3, [r3, #4]
 800024a:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 800024e:	6053      	str	r3, [r2, #4]
 8000250:	4a0e      	ldr	r2, [pc, #56]	; (800028c <USB_Cable_Config+0x58>)
 8000252:	4b0e      	ldr	r3, [pc, #56]	; (800028c <USB_Cable_Config+0x58>)
 8000254:	685b      	ldr	r3, [r3, #4]
 8000256:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800025a:	6053      	str	r3, [r2, #4]
 800025c:	4a0b      	ldr	r2, [pc, #44]	; (800028c <USB_Cable_Config+0x58>)
 800025e:	4b0b      	ldr	r3, [pc, #44]	; (800028c <USB_Cable_Config+0x58>)
 8000260:	68db      	ldr	r3, [r3, #12]
 8000262:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000266:	60d3      	str	r3, [r2, #12]
 8000268:	e00b      	b.n	8000282 <USB_Cable_Config+0x4e>
 800026a:	4a08      	ldr	r2, [pc, #32]	; (800028c <USB_Cable_Config+0x58>)
 800026c:	4b07      	ldr	r3, [pc, #28]	; (800028c <USB_Cable_Config+0x58>)
 800026e:	685b      	ldr	r3, [r3, #4]
 8000270:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000274:	6053      	str	r3, [r2, #4]
 8000276:	4a05      	ldr	r2, [pc, #20]	; (800028c <USB_Cable_Config+0x58>)
 8000278:	4b04      	ldr	r3, [pc, #16]	; (800028c <USB_Cable_Config+0x58>)
 800027a:	685b      	ldr	r3, [r3, #4]
 800027c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000280:	6053      	str	r3, [r2, #4]
 8000282:	370c      	adds	r7, #12
 8000284:	46bd      	mov	sp, r7
 8000286:	f85d 7b04 	ldr.w	r7, [sp], #4
 800028a:	4770      	bx	lr
 800028c:	40010800 	.word	0x40010800

08000290 <Get_SerialNum>:
 8000290:	b580      	push	{r7, lr}
 8000292:	b084      	sub	sp, #16
 8000294:	af00      	add	r7, sp, #0
 8000296:	4b0e      	ldr	r3, [pc, #56]	; (80002d0 <Get_SerialNum+0x40>)
 8000298:	681b      	ldr	r3, [r3, #0]
 800029a:	60fb      	str	r3, [r7, #12]
 800029c:	4b0d      	ldr	r3, [pc, #52]	; (80002d4 <Get_SerialNum+0x44>)
 800029e:	681b      	ldr	r3, [r3, #0]
 80002a0:	60bb      	str	r3, [r7, #8]
 80002a2:	4b0d      	ldr	r3, [pc, #52]	; (80002d8 <Get_SerialNum+0x48>)
 80002a4:	681b      	ldr	r3, [r3, #0]
 80002a6:	607b      	str	r3, [r7, #4]
 80002a8:	68fa      	ldr	r2, [r7, #12]
 80002aa:	687b      	ldr	r3, [r7, #4]
 80002ac:	4413      	add	r3, r2
 80002ae:	60fb      	str	r3, [r7, #12]
 80002b0:	68fb      	ldr	r3, [r7, #12]
 80002b2:	2b00      	cmp	r3, #0
 80002b4:	d009      	beq.n	80002ca <Get_SerialNum+0x3a>
 80002b6:	68f8      	ldr	r0, [r7, #12]
 80002b8:	4908      	ldr	r1, [pc, #32]	; (80002dc <Get_SerialNum+0x4c>)
 80002ba:	2208      	movs	r2, #8
 80002bc:	f000 f812 	bl	80002e4 <IntToUnicode>
 80002c0:	68b8      	ldr	r0, [r7, #8]
 80002c2:	4907      	ldr	r1, [pc, #28]	; (80002e0 <Get_SerialNum+0x50>)
 80002c4:	2204      	movs	r2, #4
 80002c6:	f000 f80d 	bl	80002e4 <IntToUnicode>
 80002ca:	3710      	adds	r7, #16
 80002cc:	46bd      	mov	sp, r7
 80002ce:	bd80      	pop	{r7, pc}
 80002d0:	1ffff7e8 	.word	0x1ffff7e8
 80002d4:	1ffff7ec 	.word	0x1ffff7ec
 80002d8:	1ffff7f0 	.word	0x1ffff7f0
 80002dc:	2000000a 	.word	0x2000000a
 80002e0:	2000001a 	.word	0x2000001a

080002e4 <IntToUnicode>:
 80002e4:	b480      	push	{r7}
 80002e6:	b087      	sub	sp, #28
 80002e8:	af00      	add	r7, sp, #0
 80002ea:	60f8      	str	r0, [r7, #12]
 80002ec:	60b9      	str	r1, [r7, #8]
 80002ee:	4613      	mov	r3, r2
 80002f0:	71fb      	strb	r3, [r7, #7]
 80002f2:	2300      	movs	r3, #0
 80002f4:	75fb      	strb	r3, [r7, #23]
 80002f6:	2300      	movs	r3, #0
 80002f8:	75fb      	strb	r3, [r7, #23]
 80002fa:	e027      	b.n	800034c <IntToUnicode+0x68>
 80002fc:	68fb      	ldr	r3, [r7, #12]
 80002fe:	0f1b      	lsrs	r3, r3, #28
 8000300:	2b09      	cmp	r3, #9
 8000302:	d80b      	bhi.n	800031c <IntToUnicode+0x38>
 8000304:	7dfb      	ldrb	r3, [r7, #23]
 8000306:	005b      	lsls	r3, r3, #1
 8000308:	461a      	mov	r2, r3
 800030a:	68bb      	ldr	r3, [r7, #8]
 800030c:	4413      	add	r3, r2
 800030e:	68fa      	ldr	r2, [r7, #12]
 8000310:	0f12      	lsrs	r2, r2, #28
 8000312:	b2d2      	uxtb	r2, r2
 8000314:	3230      	adds	r2, #48	; 0x30
 8000316:	b2d2      	uxtb	r2, r2
 8000318:	701a      	strb	r2, [r3, #0]
 800031a:	e00a      	b.n	8000332 <IntToUnicode+0x4e>
 800031c:	7dfb      	ldrb	r3, [r7, #23]
 800031e:	005b      	lsls	r3, r3, #1
 8000320:	461a      	mov	r2, r3
 8000322:	68bb      	ldr	r3, [r7, #8]
 8000324:	4413      	add	r3, r2
 8000326:	68fa      	ldr	r2, [r7, #12]
 8000328:	0f12      	lsrs	r2, r2, #28
 800032a:	b2d2      	uxtb	r2, r2
 800032c:	3237      	adds	r2, #55	; 0x37
 800032e:	b2d2      	uxtb	r2, r2
 8000330:	701a      	strb	r2, [r3, #0]
 8000332:	68fb      	ldr	r3, [r7, #12]
 8000334:	011b      	lsls	r3, r3, #4
 8000336:	60fb      	str	r3, [r7, #12]
 8000338:	7dfb      	ldrb	r3, [r7, #23]
 800033a:	005b      	lsls	r3, r3, #1
 800033c:	3301      	adds	r3, #1
 800033e:	68ba      	ldr	r2, [r7, #8]
 8000340:	4413      	add	r3, r2
 8000342:	2200      	movs	r2, #0
 8000344:	701a      	strb	r2, [r3, #0]
 8000346:	7dfb      	ldrb	r3, [r7, #23]
 8000348:	3301      	adds	r3, #1
 800034a:	75fb      	strb	r3, [r7, #23]
 800034c:	7dfa      	ldrb	r2, [r7, #23]
 800034e:	79fb      	ldrb	r3, [r7, #7]
 8000350:	429a      	cmp	r2, r3
 8000352:	d3d3      	bcc.n	80002fc <IntToUnicode+0x18>
 8000354:	371c      	adds	r7, #28
 8000356:	46bd      	mov	sp, r7
 8000358:	f85d 7b04 	ldr.w	r7, [sp], #4
 800035c:	4770      	bx	lr
 800035e:	bf00      	nop

08000360 <CDC_Send_DATA>:
 8000360:	b580      	push	{r7, lr}
 8000362:	b082      	sub	sp, #8
 8000364:	af00      	add	r7, sp, #0
 8000366:	6078      	str	r0, [r7, #4]
 8000368:	460b      	mov	r3, r1
 800036a:	70fb      	strb	r3, [r7, #3]
 800036c:	78fb      	ldrb	r3, [r7, #3]
 800036e:	2b3f      	cmp	r3, #63	; 0x3f
 8000370:	d814      	bhi.n	800039c <CDC_Send_DATA+0x3c>
 8000372:	4b0d      	ldr	r3, [pc, #52]	; (80003a8 <CDC_Send_DATA+0x48>)
 8000374:	2200      	movs	r2, #0
 8000376:	601a      	str	r2, [r3, #0]
 8000378:	78fb      	ldrb	r3, [r7, #3]
 800037a:	b29b      	uxth	r3, r3
 800037c:	6878      	ldr	r0, [r7, #4]
 800037e:	21c0      	movs	r1, #192	; 0xc0
 8000380:	461a      	mov	r2, r3
 8000382:	f001 fbc9 	bl	8001b18 <UserToPMABufferCopy>
 8000386:	78fb      	ldrb	r3, [r7, #3]
 8000388:	b29b      	uxth	r3, r3
 800038a:	2001      	movs	r0, #1
 800038c:	4619      	mov	r1, r3
 800038e:	f002 faed 	bl	800296c <SetEPTxCount>
 8000392:	2001      	movs	r0, #1
 8000394:	f001 ffde 	bl	8002354 <SetEPTxValid>
 8000398:	2301      	movs	r3, #1
 800039a:	e000      	b.n	800039e <CDC_Send_DATA+0x3e>
 800039c:	2300      	movs	r3, #0
 800039e:	4618      	mov	r0, r3
 80003a0:	3708      	adds	r7, #8
 80003a2:	46bd      	mov	sp, r7
 80003a4:	bd80      	pop	{r7, pc}
 80003a6:	bf00      	nop
 80003a8:	20000000 	.word	0x20000000

080003ac <CDC_Receive_DATA>:
 80003ac:	b580      	push	{r7, lr}
 80003ae:	af00      	add	r7, sp, #0
 80003b0:	4b04      	ldr	r3, [pc, #16]	; (80003c4 <CDC_Receive_DATA+0x18>)
 80003b2:	2200      	movs	r2, #0
 80003b4:	601a      	str	r2, [r3, #0]
 80003b6:	2003      	movs	r0, #3
 80003b8:	f001 fff4 	bl	80023a4 <SetEPRxValid>
 80003bc:	2301      	movs	r3, #1
 80003be:	4618      	mov	r0, r3
 80003c0:	bd80      	pop	{r7, pc}
 80003c2:	bf00      	nop
 80003c4:	20000004 	.word	0x20000004

080003c8 <main>:
 80003c8:	b580      	push	{r7, lr}
 80003ca:	af00      	add	r7, sp, #0
 80003cc:	f7ff fea6 	bl	800011c <Set_System>
 80003d0:	f7ff ff2a 	bl	8000228 <USB_Interrupts_Config>
 80003d4:	f001 f872 	bl	80014bc <USB_Init>
 80003d8:	4b0c      	ldr	r3, [pc, #48]	; (800040c <main+0x44>)
 80003da:	681b      	ldr	r3, [r3, #0]
 80003dc:	2b05      	cmp	r3, #5
 80003de:	d113      	bne.n	8000408 <main+0x40>
 80003e0:	f7ff ffe4 	bl	80003ac <CDC_Receive_DATA>
 80003e4:	4b0a      	ldr	r3, [pc, #40]	; (8000410 <main+0x48>)
 80003e6:	681b      	ldr	r3, [r3, #0]
 80003e8:	2b00      	cmp	r3, #0
 80003ea:	d00d      	beq.n	8000408 <main+0x40>
 80003ec:	4b09      	ldr	r3, [pc, #36]	; (8000414 <main+0x4c>)
 80003ee:	681b      	ldr	r3, [r3, #0]
 80003f0:	2b01      	cmp	r3, #1
 80003f2:	d106      	bne.n	8000402 <main+0x3a>
 80003f4:	4b06      	ldr	r3, [pc, #24]	; (8000410 <main+0x48>)
 80003f6:	681b      	ldr	r3, [r3, #0]
 80003f8:	b2db      	uxtb	r3, r3
 80003fa:	4807      	ldr	r0, [pc, #28]	; (8000418 <main+0x50>)
 80003fc:	4619      	mov	r1, r3
 80003fe:	f7ff ffaf 	bl	8000360 <CDC_Send_DATA>
 8000402:	4b03      	ldr	r3, [pc, #12]	; (8000410 <main+0x48>)
 8000404:	2200      	movs	r2, #0
 8000406:	601a      	str	r2, [r3, #0]
 8000408:	e7e6      	b.n	80003d8 <main+0x10>
 800040a:	bf00      	nop
 800040c:	200001c4 	.word	0x200001c4
 8000410:	2000017c 	.word	0x2000017c
 8000414:	20000000 	.word	0x20000000
 8000418:	200000f4 	.word	0x200000f4

0800041c <handler_reset>:
 800041c:	b580      	push	{r7, lr}
 800041e:	b082      	sub	sp, #8
 8000420:	af00      	add	r7, sp, #0
 8000422:	4b11      	ldr	r3, [pc, #68]	; (8000468 <handler_reset+0x4c>)
 8000424:	607b      	str	r3, [r7, #4]
 8000426:	4b11      	ldr	r3, [pc, #68]	; (800046c <handler_reset+0x50>)
 8000428:	603b      	str	r3, [r7, #0]
 800042a:	e007      	b.n	800043c <handler_reset+0x20>
 800042c:	683b      	ldr	r3, [r7, #0]
 800042e:	1d1a      	adds	r2, r3, #4
 8000430:	603a      	str	r2, [r7, #0]
 8000432:	687a      	ldr	r2, [r7, #4]
 8000434:	1d11      	adds	r1, r2, #4
 8000436:	6079      	str	r1, [r7, #4]
 8000438:	6812      	ldr	r2, [r2, #0]
 800043a:	601a      	str	r2, [r3, #0]
 800043c:	683b      	ldr	r3, [r7, #0]
 800043e:	4a0c      	ldr	r2, [pc, #48]	; (8000470 <handler_reset+0x54>)
 8000440:	4293      	cmp	r3, r2
 8000442:	d3f3      	bcc.n	800042c <handler_reset+0x10>
 8000444:	4b0b      	ldr	r3, [pc, #44]	; (8000474 <handler_reset+0x58>)
 8000446:	603b      	str	r3, [r7, #0]
 8000448:	e004      	b.n	8000454 <handler_reset+0x38>
 800044a:	683b      	ldr	r3, [r7, #0]
 800044c:	1d1a      	adds	r2, r3, #4
 800044e:	603a      	str	r2, [r7, #0]
 8000450:	2200      	movs	r2, #0
 8000452:	601a      	str	r2, [r3, #0]
 8000454:	683b      	ldr	r3, [r7, #0]
 8000456:	4a08      	ldr	r2, [pc, #32]	; (8000478 <handler_reset+0x5c>)
 8000458:	4293      	cmp	r3, r2
 800045a:	d3f6      	bcc.n	800044a <handler_reset+0x2e>
 800045c:	f7ff ffb4 	bl	80003c8 <main>
 8000460:	3708      	adds	r7, #8
 8000462:	46bd      	mov	sp, r7
 8000464:	bd80      	pop	{r7, pc}
 8000466:	bf00      	nop
 8000468:	08003250 	.word	0x08003250
 800046c:	20000000 	.word	0x20000000
 8000470:	200000f0 	.word	0x200000f0
 8000474:	200000f0 	.word	0x200000f0
 8000478:	200001f0 	.word	0x200001f0

0800047c <default_handler>:
 800047c:	b480      	push	{r7}
 800047e:	af00      	add	r7, sp, #0
 8000480:	e7fe      	b.n	8000480 <default_handler+0x4>
 8000482:	bf00      	nop

08000484 <NMI_Handler>:
 8000484:	b480      	push	{r7}
 8000486:	af00      	add	r7, sp, #0
 8000488:	46bd      	mov	sp, r7
 800048a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800048e:	4770      	bx	lr

08000490 <HardFault_Handler>:
 8000490:	b480      	push	{r7}
 8000492:	af00      	add	r7, sp, #0
 8000494:	e7fe      	b.n	8000494 <HardFault_Handler+0x4>
 8000496:	bf00      	nop

08000498 <MemManage_Handler>:
 8000498:	b480      	push	{r7}
 800049a:	af00      	add	r7, sp, #0
 800049c:	e7fe      	b.n	800049c <MemManage_Handler+0x4>
 800049e:	bf00      	nop

080004a0 <BusFault_Handler>:
 80004a0:	b480      	push	{r7}
 80004a2:	af00      	add	r7, sp, #0
 80004a4:	e7fe      	b.n	80004a4 <BusFault_Handler+0x4>
 80004a6:	bf00      	nop

080004a8 <UsageFault_Handler>:
 80004a8:	b480      	push	{r7}
 80004aa:	af00      	add	r7, sp, #0
 80004ac:	e7fe      	b.n	80004ac <UsageFault_Handler+0x4>
 80004ae:	bf00      	nop

080004b0 <SVC_Handler>:
 80004b0:	b480      	push	{r7}
 80004b2:	af00      	add	r7, sp, #0
 80004b4:	46bd      	mov	sp, r7
 80004b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004ba:	4770      	bx	lr

080004bc <DebugMon_Handler>:
 80004bc:	b480      	push	{r7}
 80004be:	af00      	add	r7, sp, #0
 80004c0:	46bd      	mov	sp, r7
 80004c2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004c6:	4770      	bx	lr

080004c8 <PendSV_Handler>:
 80004c8:	b480      	push	{r7}
 80004ca:	af00      	add	r7, sp, #0
 80004cc:	46bd      	mov	sp, r7
 80004ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004d2:	4770      	bx	lr

080004d4 <SysTick_Handler>:
 80004d4:	b480      	push	{r7}
 80004d6:	af00      	add	r7, sp, #0
 80004d8:	46bd      	mov	sp, r7
 80004da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004de:	4770      	bx	lr

080004e0 <USB_LP_CAN1_RX0_IRQHandler>:
 80004e0:	b580      	push	{r7, lr}
 80004e2:	af00      	add	r7, sp, #0
 80004e4:	f001 fa06 	bl	80018f4 <USB_Istr>
 80004e8:	bd80      	pop	{r7, pc}
 80004ea:	bf00      	nop

080004ec <USBWakeUp_IRQHandler>:
 80004ec:	b480      	push	{r7}
 80004ee:	af00      	add	r7, sp, #0
 80004f0:	46bd      	mov	sp, r7
 80004f2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004f6:	4770      	bx	lr

080004f8 <Standard_GetConfiguration>:
 80004f8:	b580      	push	{r7, lr}
 80004fa:	b082      	sub	sp, #8
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	4603      	mov	r3, r0
 8000500:	80fb      	strh	r3, [r7, #6]
 8000502:	88fb      	ldrh	r3, [r7, #6]
 8000504:	2b00      	cmp	r3, #0
 8000506:	d105      	bne.n	8000514 <Standard_GetConfiguration+0x1c>
 8000508:	4b08      	ldr	r3, [pc, #32]	; (800052c <Standard_GetConfiguration+0x34>)
 800050a:	681b      	ldr	r3, [r3, #0]
 800050c:	2201      	movs	r2, #1
 800050e:	821a      	strh	r2, [r3, #16]
 8000510:	2300      	movs	r3, #0
 8000512:	e006      	b.n	8000522 <Standard_GetConfiguration+0x2a>
 8000514:	4b06      	ldr	r3, [pc, #24]	; (8000530 <Standard_GetConfiguration+0x38>)
 8000516:	681b      	ldr	r3, [r3, #0]
 8000518:	681b      	ldr	r3, [r3, #0]
 800051a:	4798      	blx	r3
 800051c:	4b03      	ldr	r3, [pc, #12]	; (800052c <Standard_GetConfiguration+0x34>)
 800051e:	681b      	ldr	r3, [r3, #0]
 8000520:	330a      	adds	r3, #10
 8000522:	4618      	mov	r0, r3
 8000524:	3708      	adds	r7, #8
 8000526:	46bd      	mov	sp, r7
 8000528:	bd80      	pop	{r7, pc}
 800052a:	bf00      	nop
 800052c:	20000184 	.word	0x20000184
 8000530:	200001ac 	.word	0x200001ac

08000534 <Standard_SetConfiguration>:
 8000534:	b580      	push	{r7, lr}
 8000536:	af00      	add	r7, sp, #0
 8000538:	4b0f      	ldr	r3, [pc, #60]	; (8000578 <Standard_SetConfiguration+0x44>)
 800053a:	681b      	ldr	r3, [r3, #0]
 800053c:	78da      	ldrb	r2, [r3, #3]
 800053e:	4b0f      	ldr	r3, [pc, #60]	; (800057c <Standard_SetConfiguration+0x48>)
 8000540:	785b      	ldrb	r3, [r3, #1]
 8000542:	429a      	cmp	r2, r3
 8000544:	d815      	bhi.n	8000572 <Standard_SetConfiguration+0x3e>
 8000546:	4b0c      	ldr	r3, [pc, #48]	; (8000578 <Standard_SetConfiguration+0x44>)
 8000548:	681b      	ldr	r3, [r3, #0]
 800054a:	789b      	ldrb	r3, [r3, #2]
 800054c:	2b00      	cmp	r3, #0
 800054e:	d110      	bne.n	8000572 <Standard_SetConfiguration+0x3e>
 8000550:	4b09      	ldr	r3, [pc, #36]	; (8000578 <Standard_SetConfiguration+0x44>)
 8000552:	681b      	ldr	r3, [r3, #0]
 8000554:	889b      	ldrh	r3, [r3, #4]
 8000556:	2b00      	cmp	r3, #0
 8000558:	d10b      	bne.n	8000572 <Standard_SetConfiguration+0x3e>
 800055a:	4b07      	ldr	r3, [pc, #28]	; (8000578 <Standard_SetConfiguration+0x44>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	4a06      	ldr	r2, [pc, #24]	; (8000578 <Standard_SetConfiguration+0x44>)
 8000560:	6812      	ldr	r2, [r2, #0]
 8000562:	78d2      	ldrb	r2, [r2, #3]
 8000564:	729a      	strb	r2, [r3, #10]
 8000566:	4b06      	ldr	r3, [pc, #24]	; (8000580 <Standard_SetConfiguration+0x4c>)
 8000568:	681b      	ldr	r3, [r3, #0]
 800056a:	685b      	ldr	r3, [r3, #4]
 800056c:	4798      	blx	r3
 800056e:	2300      	movs	r3, #0
 8000570:	e000      	b.n	8000574 <Standard_SetConfiguration+0x40>
 8000572:	2302      	movs	r3, #2
 8000574:	4618      	mov	r0, r3
 8000576:	bd80      	pop	{r7, pc}
 8000578:	20000184 	.word	0x20000184
 800057c:	20000064 	.word	0x20000064
 8000580:	200001ac 	.word	0x200001ac

08000584 <Standard_GetInterface>:
 8000584:	b580      	push	{r7, lr}
 8000586:	b082      	sub	sp, #8
 8000588:	af00      	add	r7, sp, #0
 800058a:	4603      	mov	r3, r0
 800058c:	80fb      	strh	r3, [r7, #6]
 800058e:	88fb      	ldrh	r3, [r7, #6]
 8000590:	2b00      	cmp	r3, #0
 8000592:	d105      	bne.n	80005a0 <Standard_GetInterface+0x1c>
 8000594:	4b08      	ldr	r3, [pc, #32]	; (80005b8 <Standard_GetInterface+0x34>)
 8000596:	681b      	ldr	r3, [r3, #0]
 8000598:	2201      	movs	r2, #1
 800059a:	821a      	strh	r2, [r3, #16]
 800059c:	2300      	movs	r3, #0
 800059e:	e006      	b.n	80005ae <Standard_GetInterface+0x2a>
 80005a0:	4b06      	ldr	r3, [pc, #24]	; (80005bc <Standard_GetInterface+0x38>)
 80005a2:	681b      	ldr	r3, [r3, #0]
 80005a4:	689b      	ldr	r3, [r3, #8]
 80005a6:	4798      	blx	r3
 80005a8:	4b03      	ldr	r3, [pc, #12]	; (80005b8 <Standard_GetInterface+0x34>)
 80005aa:	681b      	ldr	r3, [r3, #0]
 80005ac:	330c      	adds	r3, #12
 80005ae:	4618      	mov	r0, r3
 80005b0:	3708      	adds	r7, #8
 80005b2:	46bd      	mov	sp, r7
 80005b4:	bd80      	pop	{r7, pc}
 80005b6:	bf00      	nop
 80005b8:	20000184 	.word	0x20000184
 80005bc:	200001ac 	.word	0x200001ac

080005c0 <Standard_SetInterface>:
 80005c0:	b580      	push	{r7, lr}
 80005c2:	b082      	sub	sp, #8
 80005c4:	af00      	add	r7, sp, #0
 80005c6:	4b1e      	ldr	r3, [pc, #120]	; (8000640 <Standard_SetInterface+0x80>)
 80005c8:	681b      	ldr	r3, [r3, #0]
 80005ca:	699b      	ldr	r3, [r3, #24]
 80005cc:	4a1d      	ldr	r2, [pc, #116]	; (8000644 <Standard_SetInterface+0x84>)
 80005ce:	6812      	ldr	r2, [r2, #0]
 80005d0:	7951      	ldrb	r1, [r2, #5]
 80005d2:	4a1c      	ldr	r2, [pc, #112]	; (8000644 <Standard_SetInterface+0x84>)
 80005d4:	6812      	ldr	r2, [r2, #0]
 80005d6:	78d2      	ldrb	r2, [r2, #3]
 80005d8:	4608      	mov	r0, r1
 80005da:	4611      	mov	r1, r2
 80005dc:	4798      	blx	r3
 80005de:	4603      	mov	r3, r0
 80005e0:	71fb      	strb	r3, [r7, #7]
 80005e2:	4b18      	ldr	r3, [pc, #96]	; (8000644 <Standard_SetInterface+0x84>)
 80005e4:	681b      	ldr	r3, [r3, #0]
 80005e6:	7a9b      	ldrb	r3, [r3, #10]
 80005e8:	2b00      	cmp	r3, #0
 80005ea:	d023      	beq.n	8000634 <Standard_SetInterface+0x74>
 80005ec:	79fb      	ldrb	r3, [r7, #7]
 80005ee:	2b00      	cmp	r3, #0
 80005f0:	d109      	bne.n	8000606 <Standard_SetInterface+0x46>
 80005f2:	4b14      	ldr	r3, [pc, #80]	; (8000644 <Standard_SetInterface+0x84>)
 80005f4:	681b      	ldr	r3, [r3, #0]
 80005f6:	791b      	ldrb	r3, [r3, #4]
 80005f8:	2b00      	cmp	r3, #0
 80005fa:	d104      	bne.n	8000606 <Standard_SetInterface+0x46>
 80005fc:	4b11      	ldr	r3, [pc, #68]	; (8000644 <Standard_SetInterface+0x84>)
 80005fe:	681b      	ldr	r3, [r3, #0]
 8000600:	789b      	ldrb	r3, [r3, #2]
 8000602:	2b00      	cmp	r3, #0
 8000604:	d001      	beq.n	800060a <Standard_SetInterface+0x4a>
 8000606:	2302      	movs	r3, #2
 8000608:	e015      	b.n	8000636 <Standard_SetInterface+0x76>
 800060a:	79fb      	ldrb	r3, [r7, #7]
 800060c:	2b00      	cmp	r3, #0
 800060e:	d111      	bne.n	8000634 <Standard_SetInterface+0x74>
 8000610:	4b0d      	ldr	r3, [pc, #52]	; (8000648 <Standard_SetInterface+0x88>)
 8000612:	681b      	ldr	r3, [r3, #0]
 8000614:	68db      	ldr	r3, [r3, #12]
 8000616:	4798      	blx	r3
 8000618:	4b0a      	ldr	r3, [pc, #40]	; (8000644 <Standard_SetInterface+0x84>)
 800061a:	681b      	ldr	r3, [r3, #0]
 800061c:	4a09      	ldr	r2, [pc, #36]	; (8000644 <Standard_SetInterface+0x84>)
 800061e:	6812      	ldr	r2, [r2, #0]
 8000620:	7952      	ldrb	r2, [r2, #5]
 8000622:	72da      	strb	r2, [r3, #11]
 8000624:	4b07      	ldr	r3, [pc, #28]	; (8000644 <Standard_SetInterface+0x84>)
 8000626:	681b      	ldr	r3, [r3, #0]
 8000628:	4a06      	ldr	r2, [pc, #24]	; (8000644 <Standard_SetInterface+0x84>)
 800062a:	6812      	ldr	r2, [r2, #0]
 800062c:	78d2      	ldrb	r2, [r2, #3]
 800062e:	731a      	strb	r2, [r3, #12]
 8000630:	2300      	movs	r3, #0
 8000632:	e000      	b.n	8000636 <Standard_SetInterface+0x76>
 8000634:	2302      	movs	r3, #2
 8000636:	4618      	mov	r0, r3
 8000638:	3708      	adds	r7, #8
 800063a:	46bd      	mov	sp, r7
 800063c:	bd80      	pop	{r7, pc}
 800063e:	bf00      	nop
 8000640:	20000188 	.word	0x20000188
 8000644:	20000184 	.word	0x20000184
 8000648:	200001ac 	.word	0x200001ac

0800064c <Standard_GetStatus>:
 800064c:	b580      	push	{r7, lr}
 800064e:	b084      	sub	sp, #16
 8000650:	af00      	add	r7, sp, #0
 8000652:	4603      	mov	r3, r0
 8000654:	80fb      	strh	r3, [r7, #6]
 8000656:	88fb      	ldrh	r3, [r7, #6]
 8000658:	2b00      	cmp	r3, #0
 800065a:	d105      	bne.n	8000668 <Standard_GetStatus+0x1c>
 800065c:	4b46      	ldr	r3, [pc, #280]	; (8000778 <Standard_GetStatus+0x12c>)
 800065e:	681b      	ldr	r3, [r3, #0]
 8000660:	2202      	movs	r2, #2
 8000662:	821a      	strh	r2, [r3, #16]
 8000664:	2300      	movs	r3, #0
 8000666:	e083      	b.n	8000770 <Standard_GetStatus+0x124>
 8000668:	4b44      	ldr	r3, [pc, #272]	; (800077c <Standard_GetStatus+0x130>)
 800066a:	2200      	movs	r2, #0
 800066c:	801a      	strh	r2, [r3, #0]
 800066e:	4b42      	ldr	r3, [pc, #264]	; (8000778 <Standard_GetStatus+0x12c>)
 8000670:	681b      	ldr	r3, [r3, #0]
 8000672:	781b      	ldrb	r3, [r3, #0]
 8000674:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000678:	2b00      	cmp	r3, #0
 800067a:	d12c      	bne.n	80006d6 <Standard_GetStatus+0x8a>
 800067c:	4b3e      	ldr	r3, [pc, #248]	; (8000778 <Standard_GetStatus+0x12c>)
 800067e:	681b      	ldr	r3, [r3, #0]
 8000680:	7a5b      	ldrb	r3, [r3, #9]
 8000682:	737b      	strb	r3, [r7, #13]
 8000684:	7b7b      	ldrb	r3, [r7, #13]
 8000686:	f003 0320 	and.w	r3, r3, #32
 800068a:	2b00      	cmp	r3, #0
 800068c:	d007      	beq.n	800069e <Standard_GetStatus+0x52>
 800068e:	4b3b      	ldr	r3, [pc, #236]	; (800077c <Standard_GetStatus+0x130>)
 8000690:	781b      	ldrb	r3, [r3, #0]
 8000692:	f043 0302 	orr.w	r3, r3, #2
 8000696:	b2da      	uxtb	r2, r3
 8000698:	4b38      	ldr	r3, [pc, #224]	; (800077c <Standard_GetStatus+0x130>)
 800069a:	701a      	strb	r2, [r3, #0]
 800069c:	e006      	b.n	80006ac <Standard_GetStatus+0x60>
 800069e:	4b37      	ldr	r3, [pc, #220]	; (800077c <Standard_GetStatus+0x130>)
 80006a0:	781b      	ldrb	r3, [r3, #0]
 80006a2:	f023 0302 	bic.w	r3, r3, #2
 80006a6:	b2da      	uxtb	r2, r3
 80006a8:	4b34      	ldr	r3, [pc, #208]	; (800077c <Standard_GetStatus+0x130>)
 80006aa:	701a      	strb	r2, [r3, #0]
 80006ac:	7b7b      	ldrb	r3, [r7, #13]
 80006ae:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80006b2:	2b00      	cmp	r3, #0
 80006b4:	d007      	beq.n	80006c6 <Standard_GetStatus+0x7a>
 80006b6:	4b31      	ldr	r3, [pc, #196]	; (800077c <Standard_GetStatus+0x130>)
 80006b8:	781b      	ldrb	r3, [r3, #0]
 80006ba:	f043 0301 	orr.w	r3, r3, #1
 80006be:	b2da      	uxtb	r2, r3
 80006c0:	4b2e      	ldr	r3, [pc, #184]	; (800077c <Standard_GetStatus+0x130>)
 80006c2:	701a      	strb	r2, [r3, #0]
 80006c4:	e04f      	b.n	8000766 <Standard_GetStatus+0x11a>
 80006c6:	4b2d      	ldr	r3, [pc, #180]	; (800077c <Standard_GetStatus+0x130>)
 80006c8:	781b      	ldrb	r3, [r3, #0]
 80006ca:	f023 0301 	bic.w	r3, r3, #1
 80006ce:	b2da      	uxtb	r2, r3
 80006d0:	4b2a      	ldr	r3, [pc, #168]	; (800077c <Standard_GetStatus+0x130>)
 80006d2:	701a      	strb	r2, [r3, #0]
 80006d4:	e047      	b.n	8000766 <Standard_GetStatus+0x11a>
 80006d6:	4b28      	ldr	r3, [pc, #160]	; (8000778 <Standard_GetStatus+0x12c>)
 80006d8:	681b      	ldr	r3, [r3, #0]
 80006da:	781b      	ldrb	r3, [r3, #0]
 80006dc:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80006e0:	2b01      	cmp	r3, #1
 80006e2:	d101      	bne.n	80006e8 <Standard_GetStatus+0x9c>
 80006e4:	4b25      	ldr	r3, [pc, #148]	; (800077c <Standard_GetStatus+0x130>)
 80006e6:	e043      	b.n	8000770 <Standard_GetStatus+0x124>
 80006e8:	4b23      	ldr	r3, [pc, #140]	; (8000778 <Standard_GetStatus+0x12c>)
 80006ea:	681b      	ldr	r3, [r3, #0]
 80006ec:	781b      	ldrb	r3, [r3, #0]
 80006ee:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80006f2:	2b02      	cmp	r3, #2
 80006f4:	d135      	bne.n	8000762 <Standard_GetStatus+0x116>
 80006f6:	4b20      	ldr	r3, [pc, #128]	; (8000778 <Standard_GetStatus+0x12c>)
 80006f8:	681b      	ldr	r3, [r3, #0]
 80006fa:	795b      	ldrb	r3, [r3, #5]
 80006fc:	73fb      	strb	r3, [r7, #15]
 80006fe:	7bfb      	ldrb	r3, [r7, #15]
 8000700:	f003 030f 	and.w	r3, r3, #15
 8000704:	73bb      	strb	r3, [r7, #14]
 8000706:	7bfb      	ldrb	r3, [r7, #15]
 8000708:	b25b      	sxtb	r3, r3
 800070a:	2b00      	cmp	r3, #0
 800070c:	da13      	bge.n	8000736 <Standard_GetStatus+0xea>
 800070e:	7bbb      	ldrb	r3, [r7, #14]
 8000710:	009b      	lsls	r3, r3, #2
 8000712:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000716:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800071a:	681b      	ldr	r3, [r3, #0]
 800071c:	b29b      	uxth	r3, r3
 800071e:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8000722:	2b10      	cmp	r3, #16
 8000724:	d11c      	bne.n	8000760 <Standard_GetStatus+0x114>
 8000726:	4b15      	ldr	r3, [pc, #84]	; (800077c <Standard_GetStatus+0x130>)
 8000728:	781b      	ldrb	r3, [r3, #0]
 800072a:	f043 0301 	orr.w	r3, r3, #1
 800072e:	b2da      	uxtb	r2, r3
 8000730:	4b12      	ldr	r3, [pc, #72]	; (800077c <Standard_GetStatus+0x130>)
 8000732:	701a      	strb	r2, [r3, #0]
 8000734:	e017      	b.n	8000766 <Standard_GetStatus+0x11a>
 8000736:	7bbb      	ldrb	r3, [r7, #14]
 8000738:	009b      	lsls	r3, r3, #2
 800073a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800073e:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000742:	681b      	ldr	r3, [r3, #0]
 8000744:	b29b      	uxth	r3, r3
 8000746:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 800074a:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 800074e:	d107      	bne.n	8000760 <Standard_GetStatus+0x114>
 8000750:	4b0a      	ldr	r3, [pc, #40]	; (800077c <Standard_GetStatus+0x130>)
 8000752:	781b      	ldrb	r3, [r3, #0]
 8000754:	f043 0301 	orr.w	r3, r3, #1
 8000758:	b2da      	uxtb	r2, r3
 800075a:	4b08      	ldr	r3, [pc, #32]	; (800077c <Standard_GetStatus+0x130>)
 800075c:	701a      	strb	r2, [r3, #0]
 800075e:	e002      	b.n	8000766 <Standard_GetStatus+0x11a>
 8000760:	e001      	b.n	8000766 <Standard_GetStatus+0x11a>
 8000762:	2300      	movs	r3, #0
 8000764:	e004      	b.n	8000770 <Standard_GetStatus+0x124>
 8000766:	4b06      	ldr	r3, [pc, #24]	; (8000780 <Standard_GetStatus+0x134>)
 8000768:	681b      	ldr	r3, [r3, #0]
 800076a:	691b      	ldr	r3, [r3, #16]
 800076c:	4798      	blx	r3
 800076e:	4b03      	ldr	r3, [pc, #12]	; (800077c <Standard_GetStatus+0x130>)
 8000770:	4618      	mov	r0, r3
 8000772:	3710      	adds	r7, #16
 8000774:	46bd      	mov	sp, r7
 8000776:	bd80      	pop	{r7, pc}
 8000778:	20000184 	.word	0x20000184
 800077c:	20000178 	.word	0x20000178
 8000780:	200001ac 	.word	0x200001ac

08000784 <Standard_ClearFeature>:
 8000784:	b590      	push	{r4, r7, lr}
 8000786:	b087      	sub	sp, #28
 8000788:	af00      	add	r7, sp, #0
 800078a:	4b70      	ldr	r3, [pc, #448]	; (800094c <Standard_ClearFeature+0x1c8>)
 800078c:	681b      	ldr	r3, [r3, #0]
 800078e:	781b      	ldrb	r3, [r3, #0]
 8000790:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000794:	613b      	str	r3, [r7, #16]
 8000796:	693b      	ldr	r3, [r7, #16]
 8000798:	2b00      	cmp	r3, #0
 800079a:	d10a      	bne.n	80007b2 <Standard_ClearFeature+0x2e>
 800079c:	4b6b      	ldr	r3, [pc, #428]	; (800094c <Standard_ClearFeature+0x1c8>)
 800079e:	681b      	ldr	r3, [r3, #0]
 80007a0:	4a6a      	ldr	r2, [pc, #424]	; (800094c <Standard_ClearFeature+0x1c8>)
 80007a2:	6812      	ldr	r2, [r2, #0]
 80007a4:	7a52      	ldrb	r2, [r2, #9]
 80007a6:	f022 0220 	bic.w	r2, r2, #32
 80007aa:	b2d2      	uxtb	r2, r2
 80007ac:	725a      	strb	r2, [r3, #9]
 80007ae:	2300      	movs	r3, #0
 80007b0:	e0c7      	b.n	8000942 <Standard_ClearFeature+0x1be>
 80007b2:	693b      	ldr	r3, [r7, #16]
 80007b4:	2b02      	cmp	r3, #2
 80007b6:	f040 80c3 	bne.w	8000940 <Standard_ClearFeature+0x1bc>
 80007ba:	4b64      	ldr	r3, [pc, #400]	; (800094c <Standard_ClearFeature+0x1c8>)
 80007bc:	681b      	ldr	r3, [r3, #0]
 80007be:	885b      	ldrh	r3, [r3, #2]
 80007c0:	2b00      	cmp	r3, #0
 80007c2:	d104      	bne.n	80007ce <Standard_ClearFeature+0x4a>
 80007c4:	4b61      	ldr	r3, [pc, #388]	; (800094c <Standard_ClearFeature+0x1c8>)
 80007c6:	681b      	ldr	r3, [r3, #0]
 80007c8:	791b      	ldrb	r3, [r3, #4]
 80007ca:	2b00      	cmp	r3, #0
 80007cc:	d001      	beq.n	80007d2 <Standard_ClearFeature+0x4e>
 80007ce:	2302      	movs	r3, #2
 80007d0:	e0b7      	b.n	8000942 <Standard_ClearFeature+0x1be>
 80007d2:	4b5f      	ldr	r3, [pc, #380]	; (8000950 <Standard_ClearFeature+0x1cc>)
 80007d4:	60fb      	str	r3, [r7, #12]
 80007d6:	4b5d      	ldr	r3, [pc, #372]	; (800094c <Standard_ClearFeature+0x1c8>)
 80007d8:	681b      	ldr	r3, [r3, #0]
 80007da:	795b      	ldrb	r3, [r3, #5]
 80007dc:	60bb      	str	r3, [r7, #8]
 80007de:	68bb      	ldr	r3, [r7, #8]
 80007e0:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80007e4:	607b      	str	r3, [r7, #4]
 80007e6:	687b      	ldr	r3, [r7, #4]
 80007e8:	603b      	str	r3, [r7, #0]
 80007ea:	4b58      	ldr	r3, [pc, #352]	; (800094c <Standard_ClearFeature+0x1c8>)
 80007ec:	681b      	ldr	r3, [r3, #0]
 80007ee:	795b      	ldrb	r3, [r3, #5]
 80007f0:	b2db      	uxtb	r3, r3
 80007f2:	b25b      	sxtb	r3, r3
 80007f4:	2b00      	cmp	r3, #0
 80007f6:	da0b      	bge.n	8000810 <Standard_ClearFeature+0x8c>
 80007f8:	683b      	ldr	r3, [r7, #0]
 80007fa:	009b      	lsls	r3, r3, #2
 80007fc:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000800:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000804:	681b      	ldr	r3, [r3, #0]
 8000806:	b29b      	uxth	r3, r3
 8000808:	f003 0330 	and.w	r3, r3, #48	; 0x30
 800080c:	617b      	str	r3, [r7, #20]
 800080e:	e00a      	b.n	8000826 <Standard_ClearFeature+0xa2>
 8000810:	683b      	ldr	r3, [r7, #0]
 8000812:	009b      	lsls	r3, r3, #2
 8000814:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000818:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800081c:	681b      	ldr	r3, [r3, #0]
 800081e:	b29b      	uxth	r3, r3
 8000820:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 8000824:	617b      	str	r3, [r7, #20]
 8000826:	68fb      	ldr	r3, [r7, #12]
 8000828:	781b      	ldrb	r3, [r3, #0]
 800082a:	461a      	mov	r2, r3
 800082c:	687b      	ldr	r3, [r7, #4]
 800082e:	429a      	cmp	r2, r3
 8000830:	d907      	bls.n	8000842 <Standard_ClearFeature+0xbe>
 8000832:	697b      	ldr	r3, [r7, #20]
 8000834:	2b00      	cmp	r3, #0
 8000836:	d004      	beq.n	8000842 <Standard_ClearFeature+0xbe>
 8000838:	4b44      	ldr	r3, [pc, #272]	; (800094c <Standard_ClearFeature+0x1c8>)
 800083a:	681b      	ldr	r3, [r3, #0]
 800083c:	7a9b      	ldrb	r3, [r3, #10]
 800083e:	2b00      	cmp	r3, #0
 8000840:	d101      	bne.n	8000846 <Standard_ClearFeature+0xc2>
 8000842:	2302      	movs	r3, #2
 8000844:	e07d      	b.n	8000942 <Standard_ClearFeature+0x1be>
 8000846:	68bb      	ldr	r3, [r7, #8]
 8000848:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800084c:	2b00      	cmp	r3, #0
 800084e:	d017      	beq.n	8000880 <Standard_ClearFeature+0xfc>
 8000850:	683b      	ldr	r3, [r7, #0]
 8000852:	009b      	lsls	r3, r3, #2
 8000854:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000858:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800085c:	681b      	ldr	r3, [r3, #0]
 800085e:	b29b      	uxth	r3, r3
 8000860:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8000864:	2b10      	cmp	r3, #16
 8000866:	d165      	bne.n	8000934 <Standard_ClearFeature+0x1b0>
 8000868:	683b      	ldr	r3, [r7, #0]
 800086a:	b2db      	uxtb	r3, r3
 800086c:	4618      	mov	r0, r3
 800086e:	f001 ff97 	bl	80027a0 <ClearDTOG_TX>
 8000872:	683b      	ldr	r3, [r7, #0]
 8000874:	b2db      	uxtb	r3, r3
 8000876:	4618      	mov	r0, r3
 8000878:	2130      	movs	r1, #48	; 0x30
 800087a:	f001 fca3 	bl	80021c4 <SetEPTxStatus>
 800087e:	e059      	b.n	8000934 <Standard_ClearFeature+0x1b0>
 8000880:	683b      	ldr	r3, [r7, #0]
 8000882:	009b      	lsls	r3, r3, #2
 8000884:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000888:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800088c:	681b      	ldr	r3, [r3, #0]
 800088e:	b29b      	uxth	r3, r3
 8000890:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 8000894:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8000898:	d14c      	bne.n	8000934 <Standard_ClearFeature+0x1b0>
 800089a:	683b      	ldr	r3, [r7, #0]
 800089c:	2b00      	cmp	r3, #0
 800089e:	d127      	bne.n	80008f0 <Standard_ClearFeature+0x16c>
 80008a0:	683b      	ldr	r3, [r7, #0]
 80008a2:	b2da      	uxtb	r2, r3
 80008a4:	4b2b      	ldr	r3, [pc, #172]	; (8000954 <Standard_ClearFeature+0x1d0>)
 80008a6:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 80008aa:	b29b      	uxth	r3, r3
 80008ac:	4610      	mov	r0, r2
 80008ae:	4619      	mov	r1, r3
 80008b0:	f002 f8ac 	bl	8002a0c <SetEPRxCount>
 80008b4:	683b      	ldr	r3, [r7, #0]
 80008b6:	009b      	lsls	r3, r3, #2
 80008b8:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80008bc:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80008c0:	681b      	ldr	r3, [r3, #0]
 80008c2:	b29b      	uxth	r3, r3
 80008c4:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80008c8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80008cc:	b29c      	uxth	r4, r3
 80008ce:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80008d2:	b29c      	uxth	r4, r3
 80008d4:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80008d8:	b29c      	uxth	r4, r3
 80008da:	683b      	ldr	r3, [r7, #0]
 80008dc:	009b      	lsls	r3, r3, #2
 80008de:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80008e2:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80008e6:	4a1c      	ldr	r2, [pc, #112]	; (8000958 <Standard_ClearFeature+0x1d4>)
 80008e8:	4322      	orrs	r2, r4
 80008ea:	b292      	uxth	r2, r2
 80008ec:	601a      	str	r2, [r3, #0]
 80008ee:	e021      	b.n	8000934 <Standard_ClearFeature+0x1b0>
 80008f0:	683b      	ldr	r3, [r7, #0]
 80008f2:	b2db      	uxtb	r3, r3
 80008f4:	4618      	mov	r0, r3
 80008f6:	f001 ff25 	bl	8002744 <ClearDTOG_RX>
 80008fa:	683b      	ldr	r3, [r7, #0]
 80008fc:	009b      	lsls	r3, r3, #2
 80008fe:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000902:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000906:	681b      	ldr	r3, [r3, #0]
 8000908:	b29b      	uxth	r3, r3
 800090a:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 800090e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000912:	b29c      	uxth	r4, r3
 8000914:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000918:	b29c      	uxth	r4, r3
 800091a:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 800091e:	b29c      	uxth	r4, r3
 8000920:	683b      	ldr	r3, [r7, #0]
 8000922:	009b      	lsls	r3, r3, #2
 8000924:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000928:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800092c:	4a0a      	ldr	r2, [pc, #40]	; (8000958 <Standard_ClearFeature+0x1d4>)
 800092e:	4322      	orrs	r2, r4
 8000930:	b292      	uxth	r2, r2
 8000932:	601a      	str	r2, [r3, #0]
 8000934:	4b09      	ldr	r3, [pc, #36]	; (800095c <Standard_ClearFeature+0x1d8>)
 8000936:	681b      	ldr	r3, [r3, #0]
 8000938:	695b      	ldr	r3, [r3, #20]
 800093a:	4798      	blx	r3
 800093c:	2300      	movs	r3, #0
 800093e:	e000      	b.n	8000942 <Standard_ClearFeature+0x1be>
 8000940:	2302      	movs	r3, #2
 8000942:	4618      	mov	r0, r3
 8000944:	371c      	adds	r7, #28
 8000946:	46bd      	mov	sp, r7
 8000948:	bd90      	pop	{r4, r7, pc}
 800094a:	bf00      	nop
 800094c:	20000184 	.word	0x20000184
 8000950:	20000064 	.word	0x20000064
 8000954:	20000068 	.word	0x20000068
 8000958:	ffff8080 	.word	0xffff8080
 800095c:	200001ac 	.word	0x200001ac

08000960 <Standard_SetEndPointFeature>:
 8000960:	b590      	push	{r4, r7, lr}
 8000962:	b085      	sub	sp, #20
 8000964:	af00      	add	r7, sp, #0
 8000966:	4b40      	ldr	r3, [pc, #256]	; (8000a68 <Standard_SetEndPointFeature+0x108>)
 8000968:	681b      	ldr	r3, [r3, #0]
 800096a:	795b      	ldrb	r3, [r3, #5]
 800096c:	60bb      	str	r3, [r7, #8]
 800096e:	68bb      	ldr	r3, [r7, #8]
 8000970:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000974:	607b      	str	r3, [r7, #4]
 8000976:	687b      	ldr	r3, [r7, #4]
 8000978:	603b      	str	r3, [r7, #0]
 800097a:	4b3b      	ldr	r3, [pc, #236]	; (8000a68 <Standard_SetEndPointFeature+0x108>)
 800097c:	681b      	ldr	r3, [r3, #0]
 800097e:	795b      	ldrb	r3, [r3, #5]
 8000980:	b2db      	uxtb	r3, r3
 8000982:	b25b      	sxtb	r3, r3
 8000984:	2b00      	cmp	r3, #0
 8000986:	da0b      	bge.n	80009a0 <Standard_SetEndPointFeature+0x40>
 8000988:	683b      	ldr	r3, [r7, #0]
 800098a:	009b      	lsls	r3, r3, #2
 800098c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000990:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000994:	681b      	ldr	r3, [r3, #0]
 8000996:	b29b      	uxth	r3, r3
 8000998:	f003 0330 	and.w	r3, r3, #48	; 0x30
 800099c:	60fb      	str	r3, [r7, #12]
 800099e:	e00a      	b.n	80009b6 <Standard_SetEndPointFeature+0x56>
 80009a0:	683b      	ldr	r3, [r7, #0]
 80009a2:	009b      	lsls	r3, r3, #2
 80009a4:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80009a8:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80009ac:	681b      	ldr	r3, [r3, #0]
 80009ae:	b29b      	uxth	r3, r3
 80009b0:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 80009b4:	60fb      	str	r3, [r7, #12]
 80009b6:	4b2d      	ldr	r3, [pc, #180]	; (8000a6c <Standard_SetEndPointFeature+0x10c>)
 80009b8:	781b      	ldrb	r3, [r3, #0]
 80009ba:	461a      	mov	r2, r3
 80009bc:	683b      	ldr	r3, [r7, #0]
 80009be:	429a      	cmp	r2, r3
 80009c0:	d90c      	bls.n	80009dc <Standard_SetEndPointFeature+0x7c>
 80009c2:	4b29      	ldr	r3, [pc, #164]	; (8000a68 <Standard_SetEndPointFeature+0x108>)
 80009c4:	681b      	ldr	r3, [r3, #0]
 80009c6:	885b      	ldrh	r3, [r3, #2]
 80009c8:	2b00      	cmp	r3, #0
 80009ca:	d107      	bne.n	80009dc <Standard_SetEndPointFeature+0x7c>
 80009cc:	68fb      	ldr	r3, [r7, #12]
 80009ce:	2b00      	cmp	r3, #0
 80009d0:	d004      	beq.n	80009dc <Standard_SetEndPointFeature+0x7c>
 80009d2:	4b25      	ldr	r3, [pc, #148]	; (8000a68 <Standard_SetEndPointFeature+0x108>)
 80009d4:	681b      	ldr	r3, [r3, #0]
 80009d6:	7a9b      	ldrb	r3, [r3, #10]
 80009d8:	2b00      	cmp	r3, #0
 80009da:	d101      	bne.n	80009e0 <Standard_SetEndPointFeature+0x80>
 80009dc:	2302      	movs	r3, #2
 80009de:	e03e      	b.n	8000a5e <Standard_SetEndPointFeature+0xfe>
 80009e0:	68bb      	ldr	r3, [r7, #8]
 80009e2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80009e6:	2b00      	cmp	r3, #0
 80009e8:	d01a      	beq.n	8000a20 <Standard_SetEndPointFeature+0xc0>
 80009ea:	683b      	ldr	r3, [r7, #0]
 80009ec:	009b      	lsls	r3, r3, #2
 80009ee:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80009f2:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80009f6:	681b      	ldr	r3, [r3, #0]
 80009f8:	b29b      	uxth	r3, r3
 80009fa:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 80009fe:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000a02:	b29c      	uxth	r4, r3
 8000a04:	f084 0310 	eor.w	r3, r4, #16
 8000a08:	b29c      	uxth	r4, r3
 8000a0a:	683b      	ldr	r3, [r7, #0]
 8000a0c:	009b      	lsls	r3, r3, #2
 8000a0e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000a12:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000a16:	4a16      	ldr	r2, [pc, #88]	; (8000a70 <Standard_SetEndPointFeature+0x110>)
 8000a18:	4322      	orrs	r2, r4
 8000a1a:	b292      	uxth	r2, r2
 8000a1c:	601a      	str	r2, [r3, #0]
 8000a1e:	e019      	b.n	8000a54 <Standard_SetEndPointFeature+0xf4>
 8000a20:	683b      	ldr	r3, [r7, #0]
 8000a22:	009b      	lsls	r3, r3, #2
 8000a24:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000a28:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000a2c:	681b      	ldr	r3, [r3, #0]
 8000a2e:	b29b      	uxth	r3, r3
 8000a30:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000a34:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000a38:	b29c      	uxth	r4, r3
 8000a3a:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000a3e:	b29c      	uxth	r4, r3
 8000a40:	683b      	ldr	r3, [r7, #0]
 8000a42:	009b      	lsls	r3, r3, #2
 8000a44:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000a48:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000a4c:	4a08      	ldr	r2, [pc, #32]	; (8000a70 <Standard_SetEndPointFeature+0x110>)
 8000a4e:	4322      	orrs	r2, r4
 8000a50:	b292      	uxth	r2, r2
 8000a52:	601a      	str	r2, [r3, #0]
 8000a54:	4b07      	ldr	r3, [pc, #28]	; (8000a74 <Standard_SetEndPointFeature+0x114>)
 8000a56:	681b      	ldr	r3, [r3, #0]
 8000a58:	699b      	ldr	r3, [r3, #24]
 8000a5a:	4798      	blx	r3
 8000a5c:	2300      	movs	r3, #0
 8000a5e:	4618      	mov	r0, r3
 8000a60:	3714      	adds	r7, #20
 8000a62:	46bd      	mov	sp, r7
 8000a64:	bd90      	pop	{r4, r7, pc}
 8000a66:	bf00      	nop
 8000a68:	20000184 	.word	0x20000184
 8000a6c:	20000064 	.word	0x20000064
 8000a70:	ffff8080 	.word	0xffff8080
 8000a74:	200001ac 	.word	0x200001ac

08000a78 <Standard_SetDeviceFeature>:
 8000a78:	b580      	push	{r7, lr}
 8000a7a:	af00      	add	r7, sp, #0
 8000a7c:	4b07      	ldr	r3, [pc, #28]	; (8000a9c <Standard_SetDeviceFeature+0x24>)
 8000a7e:	681b      	ldr	r3, [r3, #0]
 8000a80:	4a06      	ldr	r2, [pc, #24]	; (8000a9c <Standard_SetDeviceFeature+0x24>)
 8000a82:	6812      	ldr	r2, [r2, #0]
 8000a84:	7a52      	ldrb	r2, [r2, #9]
 8000a86:	f042 0220 	orr.w	r2, r2, #32
 8000a8a:	b2d2      	uxtb	r2, r2
 8000a8c:	725a      	strb	r2, [r3, #9]
 8000a8e:	4b04      	ldr	r3, [pc, #16]	; (8000aa0 <Standard_SetDeviceFeature+0x28>)
 8000a90:	681b      	ldr	r3, [r3, #0]
 8000a92:	69db      	ldr	r3, [r3, #28]
 8000a94:	4798      	blx	r3
 8000a96:	2300      	movs	r3, #0
 8000a98:	4618      	mov	r0, r3
 8000a9a:	bd80      	pop	{r7, pc}
 8000a9c:	20000184 	.word	0x20000184
 8000aa0:	200001ac 	.word	0x200001ac

08000aa4 <Standard_GetDescriptorData>:
 8000aa4:	b480      	push	{r7}
 8000aa6:	b085      	sub	sp, #20
 8000aa8:	af00      	add	r7, sp, #0
 8000aaa:	4603      	mov	r3, r0
 8000aac:	6039      	str	r1, [r7, #0]
 8000aae:	80fb      	strh	r3, [r7, #6]
 8000ab0:	4b0d      	ldr	r3, [pc, #52]	; (8000ae8 <Standard_GetDescriptorData+0x44>)
 8000ab2:	681b      	ldr	r3, [r3, #0]
 8000ab4:	8a5b      	ldrh	r3, [r3, #18]
 8000ab6:	60fb      	str	r3, [r7, #12]
 8000ab8:	88fb      	ldrh	r3, [r7, #6]
 8000aba:	2b00      	cmp	r3, #0
 8000abc:	d10a      	bne.n	8000ad4 <Standard_GetDescriptorData+0x30>
 8000abe:	4b0a      	ldr	r3, [pc, #40]	; (8000ae8 <Standard_GetDescriptorData+0x44>)
 8000ac0:	681b      	ldr	r3, [r3, #0]
 8000ac2:	683a      	ldr	r2, [r7, #0]
 8000ac4:	8891      	ldrh	r1, [r2, #4]
 8000ac6:	68fa      	ldr	r2, [r7, #12]
 8000ac8:	b292      	uxth	r2, r2
 8000aca:	1a8a      	subs	r2, r1, r2
 8000acc:	b292      	uxth	r2, r2
 8000ace:	821a      	strh	r2, [r3, #16]
 8000ad0:	2300      	movs	r3, #0
 8000ad2:	e003      	b.n	8000adc <Standard_GetDescriptorData+0x38>
 8000ad4:	683b      	ldr	r3, [r7, #0]
 8000ad6:	681a      	ldr	r2, [r3, #0]
 8000ad8:	68fb      	ldr	r3, [r7, #12]
 8000ada:	4413      	add	r3, r2
 8000adc:	4618      	mov	r0, r3
 8000ade:	3714      	adds	r7, #20
 8000ae0:	46bd      	mov	sp, r7
 8000ae2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ae6:	4770      	bx	lr
 8000ae8:	20000184 	.word	0x20000184

08000aec <DataStageOut>:
 8000aec:	b580      	push	{r7, lr}
 8000aee:	b084      	sub	sp, #16
 8000af0:	af00      	add	r7, sp, #0
 8000af2:	4b3a      	ldr	r3, [pc, #232]	; (8000bdc <DataStageOut+0xf0>)
 8000af4:	681b      	ldr	r3, [r3, #0]
 8000af6:	3310      	adds	r3, #16
 8000af8:	60bb      	str	r3, [r7, #8]
 8000afa:	68bb      	ldr	r3, [r7, #8]
 8000afc:	881b      	ldrh	r3, [r3, #0]
 8000afe:	607b      	str	r3, [r7, #4]
 8000b00:	68bb      	ldr	r3, [r7, #8]
 8000b02:	689b      	ldr	r3, [r3, #8]
 8000b04:	2b00      	cmp	r3, #0
 8000b06:	d02e      	beq.n	8000b66 <DataStageOut+0x7a>
 8000b08:	687b      	ldr	r3, [r7, #4]
 8000b0a:	2b00      	cmp	r3, #0
 8000b0c:	d02b      	beq.n	8000b66 <DataStageOut+0x7a>
 8000b0e:	68bb      	ldr	r3, [r7, #8]
 8000b10:	889b      	ldrh	r3, [r3, #4]
 8000b12:	60fb      	str	r3, [r7, #12]
 8000b14:	68fa      	ldr	r2, [r7, #12]
 8000b16:	687b      	ldr	r3, [r7, #4]
 8000b18:	429a      	cmp	r2, r3
 8000b1a:	d901      	bls.n	8000b20 <DataStageOut+0x34>
 8000b1c:	687b      	ldr	r3, [r7, #4]
 8000b1e:	60fb      	str	r3, [r7, #12]
 8000b20:	68bb      	ldr	r3, [r7, #8]
 8000b22:	689b      	ldr	r3, [r3, #8]
 8000b24:	68fa      	ldr	r2, [r7, #12]
 8000b26:	b292      	uxth	r2, r2
 8000b28:	4610      	mov	r0, r2
 8000b2a:	4798      	blx	r3
 8000b2c:	6038      	str	r0, [r7, #0]
 8000b2e:	68bb      	ldr	r3, [r7, #8]
 8000b30:	881a      	ldrh	r2, [r3, #0]
 8000b32:	68fb      	ldr	r3, [r7, #12]
 8000b34:	b29b      	uxth	r3, r3
 8000b36:	1ad3      	subs	r3, r2, r3
 8000b38:	b29a      	uxth	r2, r3
 8000b3a:	68bb      	ldr	r3, [r7, #8]
 8000b3c:	801a      	strh	r2, [r3, #0]
 8000b3e:	68bb      	ldr	r3, [r7, #8]
 8000b40:	885a      	ldrh	r2, [r3, #2]
 8000b42:	68fb      	ldr	r3, [r7, #12]
 8000b44:	b29b      	uxth	r3, r3
 8000b46:	4413      	add	r3, r2
 8000b48:	b29a      	uxth	r2, r3
 8000b4a:	68bb      	ldr	r3, [r7, #8]
 8000b4c:	805a      	strh	r2, [r3, #2]
 8000b4e:	2000      	movs	r0, #0
 8000b50:	f001 fef0 	bl	8002934 <GetEPRxAddr>
 8000b54:	4603      	mov	r3, r0
 8000b56:	461a      	mov	r2, r3
 8000b58:	68fb      	ldr	r3, [r7, #12]
 8000b5a:	b29b      	uxth	r3, r3
 8000b5c:	6838      	ldr	r0, [r7, #0]
 8000b5e:	4611      	mov	r1, r2
 8000b60:	461a      	mov	r2, r3
 8000b62:	f001 f813 	bl	8001b8c <PMAToUserBufferCopy>
 8000b66:	68bb      	ldr	r3, [r7, #8]
 8000b68:	881b      	ldrh	r3, [r3, #0]
 8000b6a:	2b00      	cmp	r3, #0
 8000b6c:	d00a      	beq.n	8000b84 <DataStageOut+0x98>
 8000b6e:	4b1c      	ldr	r3, [pc, #112]	; (8000be0 <DataStageOut+0xf4>)
 8000b70:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 8000b74:	801a      	strh	r2, [r3, #0]
 8000b76:	2000      	movs	r0, #0
 8000b78:	2100      	movs	r1, #0
 8000b7a:	f001 fef7 	bl	800296c <SetEPTxCount>
 8000b7e:	4b19      	ldr	r3, [pc, #100]	; (8000be4 <DataStageOut+0xf8>)
 8000b80:	2230      	movs	r2, #48	; 0x30
 8000b82:	801a      	strh	r2, [r3, #0]
 8000b84:	68bb      	ldr	r3, [r7, #8]
 8000b86:	881a      	ldrh	r2, [r3, #0]
 8000b88:	68bb      	ldr	r3, [r7, #8]
 8000b8a:	889b      	ldrh	r3, [r3, #4]
 8000b8c:	429a      	cmp	r2, r3
 8000b8e:	d304      	bcc.n	8000b9a <DataStageOut+0xae>
 8000b90:	4b12      	ldr	r3, [pc, #72]	; (8000bdc <DataStageOut+0xf0>)
 8000b92:	681b      	ldr	r3, [r3, #0]
 8000b94:	2203      	movs	r2, #3
 8000b96:	721a      	strb	r2, [r3, #8]
 8000b98:	e01d      	b.n	8000bd6 <DataStageOut+0xea>
 8000b9a:	68bb      	ldr	r3, [r7, #8]
 8000b9c:	881b      	ldrh	r3, [r3, #0]
 8000b9e:	2b00      	cmp	r3, #0
 8000ba0:	d004      	beq.n	8000bac <DataStageOut+0xc0>
 8000ba2:	4b0e      	ldr	r3, [pc, #56]	; (8000bdc <DataStageOut+0xf0>)
 8000ba4:	681b      	ldr	r3, [r3, #0]
 8000ba6:	2205      	movs	r2, #5
 8000ba8:	721a      	strb	r2, [r3, #8]
 8000baa:	e014      	b.n	8000bd6 <DataStageOut+0xea>
 8000bac:	68bb      	ldr	r3, [r7, #8]
 8000bae:	881b      	ldrh	r3, [r3, #0]
 8000bb0:	2b00      	cmp	r3, #0
 8000bb2:	d110      	bne.n	8000bd6 <DataStageOut+0xea>
 8000bb4:	4b09      	ldr	r3, [pc, #36]	; (8000bdc <DataStageOut+0xf0>)
 8000bb6:	681b      	ldr	r3, [r3, #0]
 8000bb8:	2206      	movs	r2, #6
 8000bba:	721a      	strb	r2, [r3, #8]
 8000bbc:	4b0a      	ldr	r3, [pc, #40]	; (8000be8 <DataStageOut+0xfc>)
 8000bbe:	681b      	ldr	r3, [r3, #0]
 8000bc0:	b29b      	uxth	r3, r3
 8000bc2:	461a      	mov	r2, r3
 8000bc4:	4b09      	ldr	r3, [pc, #36]	; (8000bec <DataStageOut+0x100>)
 8000bc6:	4413      	add	r3, r2
 8000bc8:	005b      	lsls	r3, r3, #1
 8000bca:	461a      	mov	r2, r3
 8000bcc:	2300      	movs	r3, #0
 8000bce:	6013      	str	r3, [r2, #0]
 8000bd0:	4b04      	ldr	r3, [pc, #16]	; (8000be4 <DataStageOut+0xf8>)
 8000bd2:	2230      	movs	r2, #48	; 0x30
 8000bd4:	801a      	strh	r2, [r3, #0]
 8000bd6:	3710      	adds	r7, #16
 8000bd8:	46bd      	mov	sp, r7
 8000bda:	bd80      	pop	{r7, pc}
 8000bdc:	20000184 	.word	0x20000184
 8000be0:	200001b0 	.word	0x200001b0
 8000be4:	200001b2 	.word	0x200001b2
 8000be8:	40005c50 	.word	0x40005c50
 8000bec:	20003002 	.word	0x20003002

08000bf0 <DataStageIn>:
 8000bf0:	b580      	push	{r7, lr}
 8000bf2:	b086      	sub	sp, #24
 8000bf4:	af00      	add	r7, sp, #0
 8000bf6:	4b3b      	ldr	r3, [pc, #236]	; (8000ce4 <DataStageIn+0xf4>)
 8000bf8:	681b      	ldr	r3, [r3, #0]
 8000bfa:	3310      	adds	r3, #16
 8000bfc:	60fb      	str	r3, [r7, #12]
 8000bfe:	68fb      	ldr	r3, [r7, #12]
 8000c00:	881b      	ldrh	r3, [r3, #0]
 8000c02:	60bb      	str	r3, [r7, #8]
 8000c04:	4b37      	ldr	r3, [pc, #220]	; (8000ce4 <DataStageIn+0xf4>)
 8000c06:	681b      	ldr	r3, [r3, #0]
 8000c08:	7a1b      	ldrb	r3, [r3, #8]
 8000c0a:	617b      	str	r3, [r7, #20]
 8000c0c:	68bb      	ldr	r3, [r7, #8]
 8000c0e:	2b00      	cmp	r3, #0
 8000c10:	d11f      	bne.n	8000c52 <DataStageIn+0x62>
 8000c12:	697b      	ldr	r3, [r7, #20]
 8000c14:	2b04      	cmp	r3, #4
 8000c16:	d11c      	bne.n	8000c52 <DataStageIn+0x62>
 8000c18:	4b33      	ldr	r3, [pc, #204]	; (8000ce8 <DataStageIn+0xf8>)
 8000c1a:	781b      	ldrb	r3, [r3, #0]
 8000c1c:	2b01      	cmp	r3, #1
 8000c1e:	d112      	bne.n	8000c46 <DataStageIn+0x56>
 8000c20:	4b32      	ldr	r3, [pc, #200]	; (8000cec <DataStageIn+0xfc>)
 8000c22:	681b      	ldr	r3, [r3, #0]
 8000c24:	b29b      	uxth	r3, r3
 8000c26:	461a      	mov	r2, r3
 8000c28:	4b31      	ldr	r3, [pc, #196]	; (8000cf0 <DataStageIn+0x100>)
 8000c2a:	4413      	add	r3, r2
 8000c2c:	005b      	lsls	r3, r3, #1
 8000c2e:	461a      	mov	r2, r3
 8000c30:	2300      	movs	r3, #0
 8000c32:	6013      	str	r3, [r2, #0]
 8000c34:	4b2f      	ldr	r3, [pc, #188]	; (8000cf4 <DataStageIn+0x104>)
 8000c36:	2230      	movs	r2, #48	; 0x30
 8000c38:	801a      	strh	r2, [r3, #0]
 8000c3a:	2304      	movs	r3, #4
 8000c3c:	617b      	str	r3, [r7, #20]
 8000c3e:	4b2a      	ldr	r3, [pc, #168]	; (8000ce8 <DataStageIn+0xf8>)
 8000c40:	2200      	movs	r2, #0
 8000c42:	701a      	strb	r2, [r3, #0]
 8000c44:	e046      	b.n	8000cd4 <DataStageIn+0xe4>
 8000c46:	2307      	movs	r3, #7
 8000c48:	617b      	str	r3, [r7, #20]
 8000c4a:	4b2a      	ldr	r3, [pc, #168]	; (8000cf4 <DataStageIn+0x104>)
 8000c4c:	2210      	movs	r2, #16
 8000c4e:	801a      	strh	r2, [r3, #0]
 8000c50:	e040      	b.n	8000cd4 <DataStageIn+0xe4>
 8000c52:	68fb      	ldr	r3, [r7, #12]
 8000c54:	889b      	ldrh	r3, [r3, #4]
 8000c56:	613b      	str	r3, [r7, #16]
 8000c58:	68ba      	ldr	r2, [r7, #8]
 8000c5a:	693b      	ldr	r3, [r7, #16]
 8000c5c:	429a      	cmp	r2, r3
 8000c5e:	d801      	bhi.n	8000c64 <DataStageIn+0x74>
 8000c60:	2304      	movs	r3, #4
 8000c62:	e000      	b.n	8000c66 <DataStageIn+0x76>
 8000c64:	2302      	movs	r3, #2
 8000c66:	617b      	str	r3, [r7, #20]
 8000c68:	693a      	ldr	r2, [r7, #16]
 8000c6a:	68bb      	ldr	r3, [r7, #8]
 8000c6c:	429a      	cmp	r2, r3
 8000c6e:	d901      	bls.n	8000c74 <DataStageIn+0x84>
 8000c70:	68bb      	ldr	r3, [r7, #8]
 8000c72:	613b      	str	r3, [r7, #16]
 8000c74:	68fb      	ldr	r3, [r7, #12]
 8000c76:	689b      	ldr	r3, [r3, #8]
 8000c78:	693a      	ldr	r2, [r7, #16]
 8000c7a:	b292      	uxth	r2, r2
 8000c7c:	4610      	mov	r0, r2
 8000c7e:	4798      	blx	r3
 8000c80:	6078      	str	r0, [r7, #4]
 8000c82:	2000      	movs	r0, #0
 8000c84:	f001 fe3a 	bl	80028fc <GetEPTxAddr>
 8000c88:	4603      	mov	r3, r0
 8000c8a:	461a      	mov	r2, r3
 8000c8c:	693b      	ldr	r3, [r7, #16]
 8000c8e:	b29b      	uxth	r3, r3
 8000c90:	6878      	ldr	r0, [r7, #4]
 8000c92:	4611      	mov	r1, r2
 8000c94:	461a      	mov	r2, r3
 8000c96:	f000 ff3f 	bl	8001b18 <UserToPMABufferCopy>
 8000c9a:	693b      	ldr	r3, [r7, #16]
 8000c9c:	b29b      	uxth	r3, r3
 8000c9e:	2000      	movs	r0, #0
 8000ca0:	4619      	mov	r1, r3
 8000ca2:	f001 fe63 	bl	800296c <SetEPTxCount>
 8000ca6:	68fb      	ldr	r3, [r7, #12]
 8000ca8:	881a      	ldrh	r2, [r3, #0]
 8000caa:	693b      	ldr	r3, [r7, #16]
 8000cac:	b29b      	uxth	r3, r3
 8000cae:	1ad3      	subs	r3, r2, r3
 8000cb0:	b29a      	uxth	r2, r3
 8000cb2:	68fb      	ldr	r3, [r7, #12]
 8000cb4:	801a      	strh	r2, [r3, #0]
 8000cb6:	68fb      	ldr	r3, [r7, #12]
 8000cb8:	885a      	ldrh	r2, [r3, #2]
 8000cba:	693b      	ldr	r3, [r7, #16]
 8000cbc:	b29b      	uxth	r3, r3
 8000cbe:	4413      	add	r3, r2
 8000cc0:	b29a      	uxth	r2, r3
 8000cc2:	68fb      	ldr	r3, [r7, #12]
 8000cc4:	805a      	strh	r2, [r3, #2]
 8000cc6:	4b0b      	ldr	r3, [pc, #44]	; (8000cf4 <DataStageIn+0x104>)
 8000cc8:	2230      	movs	r2, #48	; 0x30
 8000cca:	801a      	strh	r2, [r3, #0]
 8000ccc:	4b0a      	ldr	r3, [pc, #40]	; (8000cf8 <DataStageIn+0x108>)
 8000cce:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 8000cd2:	801a      	strh	r2, [r3, #0]
 8000cd4:	4b03      	ldr	r3, [pc, #12]	; (8000ce4 <DataStageIn+0xf4>)
 8000cd6:	681b      	ldr	r3, [r3, #0]
 8000cd8:	697a      	ldr	r2, [r7, #20]
 8000cda:	b2d2      	uxtb	r2, r2
 8000cdc:	721a      	strb	r2, [r3, #8]
 8000cde:	3718      	adds	r7, #24
 8000ce0:	46bd      	mov	sp, r7
 8000ce2:	bd80      	pop	{r7, pc}
 8000ce4:	20000184 	.word	0x20000184
 8000ce8:	2000017a 	.word	0x2000017a
 8000cec:	40005c50 	.word	0x40005c50
 8000cf0:	20003002 	.word	0x20003002
 8000cf4:	200001b2 	.word	0x200001b2
 8000cf8:	200001b0 	.word	0x200001b0

08000cfc <NoData_Setup0>:
 8000cfc:	b580      	push	{r7, lr}
 8000cfe:	b084      	sub	sp, #16
 8000d00:	af00      	add	r7, sp, #0
 8000d02:	2302      	movs	r3, #2
 8000d04:	73fb      	strb	r3, [r7, #15]
 8000d06:	4b5d      	ldr	r3, [pc, #372]	; (8000e7c <NoData_Setup0+0x180>)
 8000d08:	681b      	ldr	r3, [r3, #0]
 8000d0a:	785b      	ldrb	r3, [r3, #1]
 8000d0c:	607b      	str	r3, [r7, #4]
 8000d0e:	4b5b      	ldr	r3, [pc, #364]	; (8000e7c <NoData_Setup0+0x180>)
 8000d10:	681b      	ldr	r3, [r3, #0]
 8000d12:	781b      	ldrb	r3, [r3, #0]
 8000d14:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000d18:	2b00      	cmp	r3, #0
 8000d1a:	d157      	bne.n	8000dcc <NoData_Setup0+0xd0>
 8000d1c:	687b      	ldr	r3, [r7, #4]
 8000d1e:	2b09      	cmp	r3, #9
 8000d20:	d104      	bne.n	8000d2c <NoData_Setup0+0x30>
 8000d22:	f7ff fc07 	bl	8000534 <Standard_SetConfiguration>
 8000d26:	4603      	mov	r3, r0
 8000d28:	73fb      	strb	r3, [r7, #15]
 8000d2a:	e077      	b.n	8000e1c <NoData_Setup0+0x120>
 8000d2c:	687b      	ldr	r3, [r7, #4]
 8000d2e:	2b05      	cmp	r3, #5
 8000d30:	d11b      	bne.n	8000d6a <NoData_Setup0+0x6e>
 8000d32:	4b52      	ldr	r3, [pc, #328]	; (8000e7c <NoData_Setup0+0x180>)
 8000d34:	681b      	ldr	r3, [r3, #0]
 8000d36:	78db      	ldrb	r3, [r3, #3]
 8000d38:	b2db      	uxtb	r3, r3
 8000d3a:	b25b      	sxtb	r3, r3
 8000d3c:	2b00      	cmp	r3, #0
 8000d3e:	db0e      	blt.n	8000d5e <NoData_Setup0+0x62>
 8000d40:	4b4e      	ldr	r3, [pc, #312]	; (8000e7c <NoData_Setup0+0x180>)
 8000d42:	681b      	ldr	r3, [r3, #0]
 8000d44:	789b      	ldrb	r3, [r3, #2]
 8000d46:	2b00      	cmp	r3, #0
 8000d48:	d109      	bne.n	8000d5e <NoData_Setup0+0x62>
 8000d4a:	4b4c      	ldr	r3, [pc, #304]	; (8000e7c <NoData_Setup0+0x180>)
 8000d4c:	681b      	ldr	r3, [r3, #0]
 8000d4e:	889b      	ldrh	r3, [r3, #4]
 8000d50:	2b00      	cmp	r3, #0
 8000d52:	d104      	bne.n	8000d5e <NoData_Setup0+0x62>
 8000d54:	4b49      	ldr	r3, [pc, #292]	; (8000e7c <NoData_Setup0+0x180>)
 8000d56:	681b      	ldr	r3, [r3, #0]
 8000d58:	7a9b      	ldrb	r3, [r3, #10]
 8000d5a:	2b00      	cmp	r3, #0
 8000d5c:	d002      	beq.n	8000d64 <NoData_Setup0+0x68>
 8000d5e:	2308      	movs	r3, #8
 8000d60:	60bb      	str	r3, [r7, #8]
 8000d62:	e082      	b.n	8000e6a <NoData_Setup0+0x16e>
 8000d64:	2300      	movs	r3, #0
 8000d66:	73fb      	strb	r3, [r7, #15]
 8000d68:	e058      	b.n	8000e1c <NoData_Setup0+0x120>
 8000d6a:	687b      	ldr	r3, [r7, #4]
 8000d6c:	2b03      	cmp	r3, #3
 8000d6e:	d111      	bne.n	8000d94 <NoData_Setup0+0x98>
 8000d70:	4b42      	ldr	r3, [pc, #264]	; (8000e7c <NoData_Setup0+0x180>)
 8000d72:	681b      	ldr	r3, [r3, #0]
 8000d74:	78db      	ldrb	r3, [r3, #3]
 8000d76:	2b01      	cmp	r3, #1
 8000d78:	d109      	bne.n	8000d8e <NoData_Setup0+0x92>
 8000d7a:	4b40      	ldr	r3, [pc, #256]	; (8000e7c <NoData_Setup0+0x180>)
 8000d7c:	681b      	ldr	r3, [r3, #0]
 8000d7e:	889b      	ldrh	r3, [r3, #4]
 8000d80:	2b00      	cmp	r3, #0
 8000d82:	d104      	bne.n	8000d8e <NoData_Setup0+0x92>
 8000d84:	f7ff fe78 	bl	8000a78 <Standard_SetDeviceFeature>
 8000d88:	4603      	mov	r3, r0
 8000d8a:	73fb      	strb	r3, [r7, #15]
 8000d8c:	e046      	b.n	8000e1c <NoData_Setup0+0x120>
 8000d8e:	2302      	movs	r3, #2
 8000d90:	73fb      	strb	r3, [r7, #15]
 8000d92:	e043      	b.n	8000e1c <NoData_Setup0+0x120>
 8000d94:	687b      	ldr	r3, [r7, #4]
 8000d96:	2b01      	cmp	r3, #1
 8000d98:	d140      	bne.n	8000e1c <NoData_Setup0+0x120>
 8000d9a:	4b38      	ldr	r3, [pc, #224]	; (8000e7c <NoData_Setup0+0x180>)
 8000d9c:	681b      	ldr	r3, [r3, #0]
 8000d9e:	78db      	ldrb	r3, [r3, #3]
 8000da0:	2b01      	cmp	r3, #1
 8000da2:	d110      	bne.n	8000dc6 <NoData_Setup0+0xca>
 8000da4:	4b35      	ldr	r3, [pc, #212]	; (8000e7c <NoData_Setup0+0x180>)
 8000da6:	681b      	ldr	r3, [r3, #0]
 8000da8:	889b      	ldrh	r3, [r3, #4]
 8000daa:	2b00      	cmp	r3, #0
 8000dac:	d10b      	bne.n	8000dc6 <NoData_Setup0+0xca>
 8000dae:	4b33      	ldr	r3, [pc, #204]	; (8000e7c <NoData_Setup0+0x180>)
 8000db0:	681b      	ldr	r3, [r3, #0]
 8000db2:	7a5b      	ldrb	r3, [r3, #9]
 8000db4:	f003 0320 	and.w	r3, r3, #32
 8000db8:	2b00      	cmp	r3, #0
 8000dba:	d004      	beq.n	8000dc6 <NoData_Setup0+0xca>
 8000dbc:	f7ff fce2 	bl	8000784 <Standard_ClearFeature>
 8000dc0:	4603      	mov	r3, r0
 8000dc2:	73fb      	strb	r3, [r7, #15]
 8000dc4:	e02a      	b.n	8000e1c <NoData_Setup0+0x120>
 8000dc6:	2302      	movs	r3, #2
 8000dc8:	73fb      	strb	r3, [r7, #15]
 8000dca:	e027      	b.n	8000e1c <NoData_Setup0+0x120>
 8000dcc:	4b2b      	ldr	r3, [pc, #172]	; (8000e7c <NoData_Setup0+0x180>)
 8000dce:	681b      	ldr	r3, [r3, #0]
 8000dd0:	781b      	ldrb	r3, [r3, #0]
 8000dd2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000dd6:	2b01      	cmp	r3, #1
 8000dd8:	d107      	bne.n	8000dea <NoData_Setup0+0xee>
 8000dda:	687b      	ldr	r3, [r7, #4]
 8000ddc:	2b0b      	cmp	r3, #11
 8000dde:	d11d      	bne.n	8000e1c <NoData_Setup0+0x120>
 8000de0:	f7ff fbee 	bl	80005c0 <Standard_SetInterface>
 8000de4:	4603      	mov	r3, r0
 8000de6:	73fb      	strb	r3, [r7, #15]
 8000de8:	e018      	b.n	8000e1c <NoData_Setup0+0x120>
 8000dea:	4b24      	ldr	r3, [pc, #144]	; (8000e7c <NoData_Setup0+0x180>)
 8000dec:	681b      	ldr	r3, [r3, #0]
 8000dee:	781b      	ldrb	r3, [r3, #0]
 8000df0:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000df4:	2b02      	cmp	r3, #2
 8000df6:	d10f      	bne.n	8000e18 <NoData_Setup0+0x11c>
 8000df8:	687b      	ldr	r3, [r7, #4]
 8000dfa:	2b01      	cmp	r3, #1
 8000dfc:	d104      	bne.n	8000e08 <NoData_Setup0+0x10c>
 8000dfe:	f7ff fcc1 	bl	8000784 <Standard_ClearFeature>
 8000e02:	4603      	mov	r3, r0
 8000e04:	73fb      	strb	r3, [r7, #15]
 8000e06:	e009      	b.n	8000e1c <NoData_Setup0+0x120>
 8000e08:	687b      	ldr	r3, [r7, #4]
 8000e0a:	2b03      	cmp	r3, #3
 8000e0c:	d106      	bne.n	8000e1c <NoData_Setup0+0x120>
 8000e0e:	f7ff fda7 	bl	8000960 <Standard_SetEndPointFeature>
 8000e12:	4603      	mov	r3, r0
 8000e14:	73fb      	strb	r3, [r7, #15]
 8000e16:	e001      	b.n	8000e1c <NoData_Setup0+0x120>
 8000e18:	2302      	movs	r3, #2
 8000e1a:	73fb      	strb	r3, [r7, #15]
 8000e1c:	7bfb      	ldrb	r3, [r7, #15]
 8000e1e:	2b00      	cmp	r3, #0
 8000e20:	d00e      	beq.n	8000e40 <NoData_Setup0+0x144>
 8000e22:	4b17      	ldr	r3, [pc, #92]	; (8000e80 <NoData_Setup0+0x184>)
 8000e24:	681b      	ldr	r3, [r3, #0]
 8000e26:	695b      	ldr	r3, [r3, #20]
 8000e28:	687a      	ldr	r2, [r7, #4]
 8000e2a:	b2d2      	uxtb	r2, r2
 8000e2c:	4610      	mov	r0, r2
 8000e2e:	4798      	blx	r3
 8000e30:	4603      	mov	r3, r0
 8000e32:	73fb      	strb	r3, [r7, #15]
 8000e34:	7bfb      	ldrb	r3, [r7, #15]
 8000e36:	2b03      	cmp	r3, #3
 8000e38:	d102      	bne.n	8000e40 <NoData_Setup0+0x144>
 8000e3a:	2309      	movs	r3, #9
 8000e3c:	60bb      	str	r3, [r7, #8]
 8000e3e:	e014      	b.n	8000e6a <NoData_Setup0+0x16e>
 8000e40:	7bfb      	ldrb	r3, [r7, #15]
 8000e42:	2b00      	cmp	r3, #0
 8000e44:	d002      	beq.n	8000e4c <NoData_Setup0+0x150>
 8000e46:	2308      	movs	r3, #8
 8000e48:	60bb      	str	r3, [r7, #8]
 8000e4a:	e00e      	b.n	8000e6a <NoData_Setup0+0x16e>
 8000e4c:	2306      	movs	r3, #6
 8000e4e:	60bb      	str	r3, [r7, #8]
 8000e50:	4b0c      	ldr	r3, [pc, #48]	; (8000e84 <NoData_Setup0+0x188>)
 8000e52:	681b      	ldr	r3, [r3, #0]
 8000e54:	b29b      	uxth	r3, r3
 8000e56:	461a      	mov	r2, r3
 8000e58:	4b0b      	ldr	r3, [pc, #44]	; (8000e88 <NoData_Setup0+0x18c>)
 8000e5a:	4413      	add	r3, r2
 8000e5c:	005b      	lsls	r3, r3, #1
 8000e5e:	461a      	mov	r2, r3
 8000e60:	2300      	movs	r3, #0
 8000e62:	6013      	str	r3, [r2, #0]
 8000e64:	4b09      	ldr	r3, [pc, #36]	; (8000e8c <NoData_Setup0+0x190>)
 8000e66:	2230      	movs	r2, #48	; 0x30
 8000e68:	801a      	strh	r2, [r3, #0]
 8000e6a:	4b04      	ldr	r3, [pc, #16]	; (8000e7c <NoData_Setup0+0x180>)
 8000e6c:	681b      	ldr	r3, [r3, #0]
 8000e6e:	68ba      	ldr	r2, [r7, #8]
 8000e70:	b2d2      	uxtb	r2, r2
 8000e72:	721a      	strb	r2, [r3, #8]
 8000e74:	bf00      	nop
 8000e76:	3710      	adds	r7, #16
 8000e78:	46bd      	mov	sp, r7
 8000e7a:	bd80      	pop	{r7, pc}
 8000e7c:	20000184 	.word	0x20000184
 8000e80:	20000188 	.word	0x20000188
 8000e84:	40005c50 	.word	0x40005c50
 8000e88:	20003002 	.word	0x20003002
 8000e8c:	200001b2 	.word	0x200001b2

08000e90 <Data_Setup0>:
 8000e90:	b580      	push	{r7, lr}
 8000e92:	b08a      	sub	sp, #40	; 0x28
 8000e94:	af00      	add	r7, sp, #0
 8000e96:	4b93      	ldr	r3, [pc, #588]	; (80010e4 <Data_Setup0+0x254>)
 8000e98:	681b      	ldr	r3, [r3, #0]
 8000e9a:	785b      	ldrb	r3, [r3, #1]
 8000e9c:	61bb      	str	r3, [r7, #24]
 8000e9e:	2300      	movs	r3, #0
 8000ea0:	627b      	str	r3, [r7, #36]	; 0x24
 8000ea2:	2300      	movs	r3, #0
 8000ea4:	617b      	str	r3, [r7, #20]
 8000ea6:	69bb      	ldr	r3, [r7, #24]
 8000ea8:	2b06      	cmp	r3, #6
 8000eaa:	d123      	bne.n	8000ef4 <Data_Setup0+0x64>
 8000eac:	4b8d      	ldr	r3, [pc, #564]	; (80010e4 <Data_Setup0+0x254>)
 8000eae:	681b      	ldr	r3, [r3, #0]
 8000eb0:	781b      	ldrb	r3, [r3, #0]
 8000eb2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000eb6:	2b00      	cmp	r3, #0
 8000eb8:	d11b      	bne.n	8000ef2 <Data_Setup0+0x62>
 8000eba:	4b8a      	ldr	r3, [pc, #552]	; (80010e4 <Data_Setup0+0x254>)
 8000ebc:	681b      	ldr	r3, [r3, #0]
 8000ebe:	789b      	ldrb	r3, [r3, #2]
 8000ec0:	74fb      	strb	r3, [r7, #19]
 8000ec2:	7cfb      	ldrb	r3, [r7, #19]
 8000ec4:	2b01      	cmp	r3, #1
 8000ec6:	d104      	bne.n	8000ed2 <Data_Setup0+0x42>
 8000ec8:	4b87      	ldr	r3, [pc, #540]	; (80010e8 <Data_Setup0+0x258>)
 8000eca:	681b      	ldr	r3, [r3, #0]
 8000ecc:	69db      	ldr	r3, [r3, #28]
 8000ece:	627b      	str	r3, [r7, #36]	; 0x24
 8000ed0:	e00f      	b.n	8000ef2 <Data_Setup0+0x62>
 8000ed2:	7cfb      	ldrb	r3, [r7, #19]
 8000ed4:	2b02      	cmp	r3, #2
 8000ed6:	d104      	bne.n	8000ee2 <Data_Setup0+0x52>
 8000ed8:	4b83      	ldr	r3, [pc, #524]	; (80010e8 <Data_Setup0+0x258>)
 8000eda:	681b      	ldr	r3, [r3, #0]
 8000edc:	6a1b      	ldr	r3, [r3, #32]
 8000ede:	627b      	str	r3, [r7, #36]	; 0x24
 8000ee0:	e007      	b.n	8000ef2 <Data_Setup0+0x62>
 8000ee2:	7cfb      	ldrb	r3, [r7, #19]
 8000ee4:	2b03      	cmp	r3, #3
 8000ee6:	d104      	bne.n	8000ef2 <Data_Setup0+0x62>
 8000ee8:	4b7f      	ldr	r3, [pc, #508]	; (80010e8 <Data_Setup0+0x258>)
 8000eea:	681b      	ldr	r3, [r3, #0]
 8000eec:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000eee:	627b      	str	r3, [r7, #36]	; 0x24
 8000ef0:	e0b6      	b.n	8001060 <Data_Setup0+0x1d0>
 8000ef2:	e0b5      	b.n	8001060 <Data_Setup0+0x1d0>
 8000ef4:	69bb      	ldr	r3, [r7, #24]
 8000ef6:	2b00      	cmp	r3, #0
 8000ef8:	d179      	bne.n	8000fee <Data_Setup0+0x15e>
 8000efa:	4b7a      	ldr	r3, [pc, #488]	; (80010e4 <Data_Setup0+0x254>)
 8000efc:	681b      	ldr	r3, [r3, #0]
 8000efe:	885b      	ldrh	r3, [r3, #2]
 8000f00:	2b00      	cmp	r3, #0
 8000f02:	d174      	bne.n	8000fee <Data_Setup0+0x15e>
 8000f04:	4b77      	ldr	r3, [pc, #476]	; (80010e4 <Data_Setup0+0x254>)
 8000f06:	681b      	ldr	r3, [r3, #0]
 8000f08:	88db      	ldrh	r3, [r3, #6]
 8000f0a:	2b02      	cmp	r3, #2
 8000f0c:	d16f      	bne.n	8000fee <Data_Setup0+0x15e>
 8000f0e:	4b75      	ldr	r3, [pc, #468]	; (80010e4 <Data_Setup0+0x254>)
 8000f10:	681b      	ldr	r3, [r3, #0]
 8000f12:	791b      	ldrb	r3, [r3, #4]
 8000f14:	2b00      	cmp	r3, #0
 8000f16:	d16a      	bne.n	8000fee <Data_Setup0+0x15e>
 8000f18:	4b72      	ldr	r3, [pc, #456]	; (80010e4 <Data_Setup0+0x254>)
 8000f1a:	681b      	ldr	r3, [r3, #0]
 8000f1c:	781b      	ldrb	r3, [r3, #0]
 8000f1e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000f22:	2b00      	cmp	r3, #0
 8000f24:	d107      	bne.n	8000f36 <Data_Setup0+0xa6>
 8000f26:	4b6f      	ldr	r3, [pc, #444]	; (80010e4 <Data_Setup0+0x254>)
 8000f28:	681b      	ldr	r3, [r3, #0]
 8000f2a:	889b      	ldrh	r3, [r3, #4]
 8000f2c:	2b00      	cmp	r3, #0
 8000f2e:	d102      	bne.n	8000f36 <Data_Setup0+0xa6>
 8000f30:	4b6e      	ldr	r3, [pc, #440]	; (80010ec <Data_Setup0+0x25c>)
 8000f32:	627b      	str	r3, [r7, #36]	; 0x24
 8000f34:	e05a      	b.n	8000fec <Data_Setup0+0x15c>
 8000f36:	4b6b      	ldr	r3, [pc, #428]	; (80010e4 <Data_Setup0+0x254>)
 8000f38:	681b      	ldr	r3, [r3, #0]
 8000f3a:	781b      	ldrb	r3, [r3, #0]
 8000f3c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000f40:	2b01      	cmp	r3, #1
 8000f42:	d113      	bne.n	8000f6c <Data_Setup0+0xdc>
 8000f44:	4b68      	ldr	r3, [pc, #416]	; (80010e8 <Data_Setup0+0x258>)
 8000f46:	681b      	ldr	r3, [r3, #0]
 8000f48:	699b      	ldr	r3, [r3, #24]
 8000f4a:	4a66      	ldr	r2, [pc, #408]	; (80010e4 <Data_Setup0+0x254>)
 8000f4c:	6812      	ldr	r2, [r2, #0]
 8000f4e:	7952      	ldrb	r2, [r2, #5]
 8000f50:	4610      	mov	r0, r2
 8000f52:	2100      	movs	r1, #0
 8000f54:	4798      	blx	r3
 8000f56:	4603      	mov	r3, r0
 8000f58:	2b00      	cmp	r3, #0
 8000f5a:	d147      	bne.n	8000fec <Data_Setup0+0x15c>
 8000f5c:	4b61      	ldr	r3, [pc, #388]	; (80010e4 <Data_Setup0+0x254>)
 8000f5e:	681b      	ldr	r3, [r3, #0]
 8000f60:	7a9b      	ldrb	r3, [r3, #10]
 8000f62:	2b00      	cmp	r3, #0
 8000f64:	d042      	beq.n	8000fec <Data_Setup0+0x15c>
 8000f66:	4b61      	ldr	r3, [pc, #388]	; (80010ec <Data_Setup0+0x25c>)
 8000f68:	627b      	str	r3, [r7, #36]	; 0x24
 8000f6a:	e079      	b.n	8001060 <Data_Setup0+0x1d0>
 8000f6c:	4b5d      	ldr	r3, [pc, #372]	; (80010e4 <Data_Setup0+0x254>)
 8000f6e:	681b      	ldr	r3, [r3, #0]
 8000f70:	781b      	ldrb	r3, [r3, #0]
 8000f72:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000f76:	2b02      	cmp	r3, #2
 8000f78:	d138      	bne.n	8000fec <Data_Setup0+0x15c>
 8000f7a:	4b5a      	ldr	r3, [pc, #360]	; (80010e4 <Data_Setup0+0x254>)
 8000f7c:	681b      	ldr	r3, [r3, #0]
 8000f7e:	795b      	ldrb	r3, [r3, #5]
 8000f80:	f003 030f 	and.w	r3, r3, #15
 8000f84:	60fb      	str	r3, [r7, #12]
 8000f86:	4b57      	ldr	r3, [pc, #348]	; (80010e4 <Data_Setup0+0x254>)
 8000f88:	681b      	ldr	r3, [r3, #0]
 8000f8a:	795b      	ldrb	r3, [r3, #5]
 8000f8c:	f003 0370 	and.w	r3, r3, #112	; 0x70
 8000f90:	60bb      	str	r3, [r7, #8]
 8000f92:	4b54      	ldr	r3, [pc, #336]	; (80010e4 <Data_Setup0+0x254>)
 8000f94:	681b      	ldr	r3, [r3, #0]
 8000f96:	795b      	ldrb	r3, [r3, #5]
 8000f98:	b2db      	uxtb	r3, r3
 8000f9a:	b25b      	sxtb	r3, r3
 8000f9c:	2b00      	cmp	r3, #0
 8000f9e:	da0b      	bge.n	8000fb8 <Data_Setup0+0x128>
 8000fa0:	68fb      	ldr	r3, [r7, #12]
 8000fa2:	009b      	lsls	r3, r3, #2
 8000fa4:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000fa8:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000fac:	681b      	ldr	r3, [r3, #0]
 8000fae:	b29b      	uxth	r3, r3
 8000fb0:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8000fb4:	61fb      	str	r3, [r7, #28]
 8000fb6:	e00a      	b.n	8000fce <Data_Setup0+0x13e>
 8000fb8:	68fb      	ldr	r3, [r7, #12]
 8000fba:	009b      	lsls	r3, r3, #2
 8000fbc:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000fc0:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8000fc4:	681b      	ldr	r3, [r3, #0]
 8000fc6:	b29b      	uxth	r3, r3
 8000fc8:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 8000fcc:	61fb      	str	r3, [r7, #28]
 8000fce:	4b48      	ldr	r3, [pc, #288]	; (80010f0 <Data_Setup0+0x260>)
 8000fd0:	781b      	ldrb	r3, [r3, #0]
 8000fd2:	461a      	mov	r2, r3
 8000fd4:	68fb      	ldr	r3, [r7, #12]
 8000fd6:	429a      	cmp	r2, r3
 8000fd8:	d908      	bls.n	8000fec <Data_Setup0+0x15c>
 8000fda:	68bb      	ldr	r3, [r7, #8]
 8000fdc:	2b00      	cmp	r3, #0
 8000fde:	d105      	bne.n	8000fec <Data_Setup0+0x15c>
 8000fe0:	69fb      	ldr	r3, [r7, #28]
 8000fe2:	2b00      	cmp	r3, #0
 8000fe4:	d002      	beq.n	8000fec <Data_Setup0+0x15c>
 8000fe6:	4b41      	ldr	r3, [pc, #260]	; (80010ec <Data_Setup0+0x25c>)
 8000fe8:	627b      	str	r3, [r7, #36]	; 0x24
 8000fea:	e039      	b.n	8001060 <Data_Setup0+0x1d0>
 8000fec:	e038      	b.n	8001060 <Data_Setup0+0x1d0>
 8000fee:	69bb      	ldr	r3, [r7, #24]
 8000ff0:	2b08      	cmp	r3, #8
 8000ff2:	d109      	bne.n	8001008 <Data_Setup0+0x178>
 8000ff4:	4b3b      	ldr	r3, [pc, #236]	; (80010e4 <Data_Setup0+0x254>)
 8000ff6:	681b      	ldr	r3, [r3, #0]
 8000ff8:	781b      	ldrb	r3, [r3, #0]
 8000ffa:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8000ffe:	2b00      	cmp	r3, #0
 8001000:	d12e      	bne.n	8001060 <Data_Setup0+0x1d0>
 8001002:	4b3c      	ldr	r3, [pc, #240]	; (80010f4 <Data_Setup0+0x264>)
 8001004:	627b      	str	r3, [r7, #36]	; 0x24
 8001006:	e02b      	b.n	8001060 <Data_Setup0+0x1d0>
 8001008:	69bb      	ldr	r3, [r7, #24]
 800100a:	2b0a      	cmp	r3, #10
 800100c:	d128      	bne.n	8001060 <Data_Setup0+0x1d0>
 800100e:	4b35      	ldr	r3, [pc, #212]	; (80010e4 <Data_Setup0+0x254>)
 8001010:	681b      	ldr	r3, [r3, #0]
 8001012:	781b      	ldrb	r3, [r3, #0]
 8001014:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8001018:	2b01      	cmp	r3, #1
 800101a:	d121      	bne.n	8001060 <Data_Setup0+0x1d0>
 800101c:	4b31      	ldr	r3, [pc, #196]	; (80010e4 <Data_Setup0+0x254>)
 800101e:	681b      	ldr	r3, [r3, #0]
 8001020:	7a9b      	ldrb	r3, [r3, #10]
 8001022:	2b00      	cmp	r3, #0
 8001024:	d01c      	beq.n	8001060 <Data_Setup0+0x1d0>
 8001026:	4b2f      	ldr	r3, [pc, #188]	; (80010e4 <Data_Setup0+0x254>)
 8001028:	681b      	ldr	r3, [r3, #0]
 800102a:	885b      	ldrh	r3, [r3, #2]
 800102c:	2b00      	cmp	r3, #0
 800102e:	d117      	bne.n	8001060 <Data_Setup0+0x1d0>
 8001030:	4b2c      	ldr	r3, [pc, #176]	; (80010e4 <Data_Setup0+0x254>)
 8001032:	681b      	ldr	r3, [r3, #0]
 8001034:	791b      	ldrb	r3, [r3, #4]
 8001036:	2b00      	cmp	r3, #0
 8001038:	d112      	bne.n	8001060 <Data_Setup0+0x1d0>
 800103a:	4b2a      	ldr	r3, [pc, #168]	; (80010e4 <Data_Setup0+0x254>)
 800103c:	681b      	ldr	r3, [r3, #0]
 800103e:	88db      	ldrh	r3, [r3, #6]
 8001040:	2b01      	cmp	r3, #1
 8001042:	d10d      	bne.n	8001060 <Data_Setup0+0x1d0>
 8001044:	4b28      	ldr	r3, [pc, #160]	; (80010e8 <Data_Setup0+0x258>)
 8001046:	681b      	ldr	r3, [r3, #0]
 8001048:	699b      	ldr	r3, [r3, #24]
 800104a:	4a26      	ldr	r2, [pc, #152]	; (80010e4 <Data_Setup0+0x254>)
 800104c:	6812      	ldr	r2, [r2, #0]
 800104e:	7952      	ldrb	r2, [r2, #5]
 8001050:	4610      	mov	r0, r2
 8001052:	2100      	movs	r1, #0
 8001054:	4798      	blx	r3
 8001056:	4603      	mov	r3, r0
 8001058:	2b00      	cmp	r3, #0
 800105a:	d101      	bne.n	8001060 <Data_Setup0+0x1d0>
 800105c:	4b26      	ldr	r3, [pc, #152]	; (80010f8 <Data_Setup0+0x268>)
 800105e:	627b      	str	r3, [r7, #36]	; 0x24
 8001060:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001062:	2b00      	cmp	r3, #0
 8001064:	d00f      	beq.n	8001086 <Data_Setup0+0x1f6>
 8001066:	4b1f      	ldr	r3, [pc, #124]	; (80010e4 <Data_Setup0+0x254>)
 8001068:	681b      	ldr	r3, [r3, #0]
 800106a:	697a      	ldr	r2, [r7, #20]
 800106c:	b292      	uxth	r2, r2
 800106e:	825a      	strh	r2, [r3, #18]
 8001070:	4b1c      	ldr	r3, [pc, #112]	; (80010e4 <Data_Setup0+0x254>)
 8001072:	681b      	ldr	r3, [r3, #0]
 8001074:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001076:	619a      	str	r2, [r3, #24]
 8001078:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800107a:	2000      	movs	r0, #0
 800107c:	4798      	blx	r3
 800107e:	2300      	movs	r3, #0
 8001080:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
 8001084:	e013      	b.n	80010ae <Data_Setup0+0x21e>
 8001086:	4b18      	ldr	r3, [pc, #96]	; (80010e8 <Data_Setup0+0x258>)
 8001088:	681b      	ldr	r3, [r3, #0]
 800108a:	691b      	ldr	r3, [r3, #16]
 800108c:	4a15      	ldr	r2, [pc, #84]	; (80010e4 <Data_Setup0+0x254>)
 800108e:	6812      	ldr	r2, [r2, #0]
 8001090:	7852      	ldrb	r2, [r2, #1]
 8001092:	4610      	mov	r0, r2
 8001094:	4798      	blx	r3
 8001096:	4603      	mov	r3, r0
 8001098:	f887 3023 	strb.w	r3, [r7, #35]	; 0x23
 800109c:	f897 3023 	ldrb.w	r3, [r7, #35]	; 0x23
 80010a0:	2b03      	cmp	r3, #3
 80010a2:	d104      	bne.n	80010ae <Data_Setup0+0x21e>
 80010a4:	4b0f      	ldr	r3, [pc, #60]	; (80010e4 <Data_Setup0+0x254>)
 80010a6:	681b      	ldr	r3, [r3, #0]
 80010a8:	2209      	movs	r2, #9
 80010aa:	721a      	strb	r2, [r3, #8]
 80010ac:	e079      	b.n	80011a2 <Data_Setup0+0x312>
 80010ae:	4b0d      	ldr	r3, [pc, #52]	; (80010e4 <Data_Setup0+0x254>)
 80010b0:	681b      	ldr	r3, [r3, #0]
 80010b2:	8a1b      	ldrh	r3, [r3, #16]
 80010b4:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80010b8:	4293      	cmp	r3, r2
 80010ba:	d104      	bne.n	80010c6 <Data_Setup0+0x236>
 80010bc:	4b09      	ldr	r3, [pc, #36]	; (80010e4 <Data_Setup0+0x254>)
 80010be:	681b      	ldr	r3, [r3, #0]
 80010c0:	2209      	movs	r2, #9
 80010c2:	721a      	strb	r2, [r3, #8]
 80010c4:	e06d      	b.n	80011a2 <Data_Setup0+0x312>
 80010c6:	f897 3023 	ldrb.w	r3, [r7, #35]	; 0x23
 80010ca:	2b02      	cmp	r3, #2
 80010cc:	d004      	beq.n	80010d8 <Data_Setup0+0x248>
 80010ce:	4b05      	ldr	r3, [pc, #20]	; (80010e4 <Data_Setup0+0x254>)
 80010d0:	681b      	ldr	r3, [r3, #0]
 80010d2:	8a1b      	ldrh	r3, [r3, #16]
 80010d4:	2b00      	cmp	r3, #0
 80010d6:	d111      	bne.n	80010fc <Data_Setup0+0x26c>
 80010d8:	4b02      	ldr	r3, [pc, #8]	; (80010e4 <Data_Setup0+0x254>)
 80010da:	681b      	ldr	r3, [r3, #0]
 80010dc:	2208      	movs	r2, #8
 80010de:	721a      	strb	r2, [r3, #8]
 80010e0:	e05f      	b.n	80011a2 <Data_Setup0+0x312>
 80010e2:	bf00      	nop
 80010e4:	20000184 	.word	0x20000184
 80010e8:	20000188 	.word	0x20000188
 80010ec:	0800064d 	.word	0x0800064d
 80010f0:	20000064 	.word	0x20000064
 80010f4:	080004f9 	.word	0x080004f9
 80010f8:	08000585 	.word	0x08000585
 80010fc:	4b2a      	ldr	r3, [pc, #168]	; (80011a8 <Data_Setup0+0x318>)
 80010fe:	681b      	ldr	r3, [r3, #0]
 8001100:	781b      	ldrb	r3, [r3, #0]
 8001102:	b2db      	uxtb	r3, r3
 8001104:	b25b      	sxtb	r3, r3
 8001106:	2b00      	cmp	r3, #0
 8001108:	da42      	bge.n	8001190 <Data_Setup0+0x300>
 800110a:	4b27      	ldr	r3, [pc, #156]	; (80011a8 <Data_Setup0+0x318>)
 800110c:	681b      	ldr	r3, [r3, #0]
 800110e:	88db      	ldrh	r3, [r3, #6]
 8001110:	607b      	str	r3, [r7, #4]
 8001112:	4b25      	ldr	r3, [pc, #148]	; (80011a8 <Data_Setup0+0x318>)
 8001114:	681b      	ldr	r3, [r3, #0]
 8001116:	8a1b      	ldrh	r3, [r3, #16]
 8001118:	461a      	mov	r2, r3
 800111a:	687b      	ldr	r3, [r7, #4]
 800111c:	429a      	cmp	r2, r3
 800111e:	d905      	bls.n	800112c <Data_Setup0+0x29c>
 8001120:	4b21      	ldr	r3, [pc, #132]	; (80011a8 <Data_Setup0+0x318>)
 8001122:	681b      	ldr	r3, [r3, #0]
 8001124:	687a      	ldr	r2, [r7, #4]
 8001126:	b292      	uxth	r2, r2
 8001128:	821a      	strh	r2, [r3, #16]
 800112a:	e026      	b.n	800117a <Data_Setup0+0x2ea>
 800112c:	4b1e      	ldr	r3, [pc, #120]	; (80011a8 <Data_Setup0+0x318>)
 800112e:	681b      	ldr	r3, [r3, #0]
 8001130:	8a1a      	ldrh	r2, [r3, #16]
 8001132:	4b1d      	ldr	r3, [pc, #116]	; (80011a8 <Data_Setup0+0x318>)
 8001134:	681b      	ldr	r3, [r3, #0]
 8001136:	88db      	ldrh	r3, [r3, #6]
 8001138:	429a      	cmp	r2, r3
 800113a:	d21e      	bcs.n	800117a <Data_Setup0+0x2ea>
 800113c:	4b1a      	ldr	r3, [pc, #104]	; (80011a8 <Data_Setup0+0x318>)
 800113e:	681b      	ldr	r3, [r3, #0]
 8001140:	8a1a      	ldrh	r2, [r3, #16]
 8001142:	4b1a      	ldr	r3, [pc, #104]	; (80011ac <Data_Setup0+0x31c>)
 8001144:	681b      	ldr	r3, [r3, #0]
 8001146:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 800114a:	b29b      	uxth	r3, r3
 800114c:	429a      	cmp	r2, r3
 800114e:	d203      	bcs.n	8001158 <Data_Setup0+0x2c8>
 8001150:	4b17      	ldr	r3, [pc, #92]	; (80011b0 <Data_Setup0+0x320>)
 8001152:	2200      	movs	r2, #0
 8001154:	701a      	strb	r2, [r3, #0]
 8001156:	e010      	b.n	800117a <Data_Setup0+0x2ea>
 8001158:	4b13      	ldr	r3, [pc, #76]	; (80011a8 <Data_Setup0+0x318>)
 800115a:	681b      	ldr	r3, [r3, #0]
 800115c:	8a1b      	ldrh	r3, [r3, #16]
 800115e:	4a13      	ldr	r2, [pc, #76]	; (80011ac <Data_Setup0+0x31c>)
 8001160:	6812      	ldr	r2, [r2, #0]
 8001162:	f892 202c 	ldrb.w	r2, [r2, #44]	; 0x2c
 8001166:	fb93 f1f2 	sdiv	r1, r3, r2
 800116a:	fb02 f201 	mul.w	r2, r2, r1
 800116e:	1a9b      	subs	r3, r3, r2
 8001170:	2b00      	cmp	r3, #0
 8001172:	d102      	bne.n	800117a <Data_Setup0+0x2ea>
 8001174:	4b0e      	ldr	r3, [pc, #56]	; (80011b0 <Data_Setup0+0x320>)
 8001176:	2201      	movs	r2, #1
 8001178:	701a      	strb	r2, [r3, #0]
 800117a:	4b0b      	ldr	r3, [pc, #44]	; (80011a8 <Data_Setup0+0x318>)
 800117c:	681b      	ldr	r3, [r3, #0]
 800117e:	4a0b      	ldr	r2, [pc, #44]	; (80011ac <Data_Setup0+0x31c>)
 8001180:	6812      	ldr	r2, [r2, #0]
 8001182:	f892 202c 	ldrb.w	r2, [r2, #44]	; 0x2c
 8001186:	b292      	uxth	r2, r2
 8001188:	829a      	strh	r2, [r3, #20]
 800118a:	f7ff fd31 	bl	8000bf0 <DataStageIn>
 800118e:	e007      	b.n	80011a0 <Data_Setup0+0x310>
 8001190:	4b05      	ldr	r3, [pc, #20]	; (80011a8 <Data_Setup0+0x318>)
 8001192:	681b      	ldr	r3, [r3, #0]
 8001194:	2203      	movs	r2, #3
 8001196:	721a      	strb	r2, [r3, #8]
 8001198:	4b06      	ldr	r3, [pc, #24]	; (80011b4 <Data_Setup0+0x324>)
 800119a:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 800119e:	801a      	strh	r2, [r3, #0]
 80011a0:	bf00      	nop
 80011a2:	3728      	adds	r7, #40	; 0x28
 80011a4:	46bd      	mov	sp, r7
 80011a6:	bd80      	pop	{r7, pc}
 80011a8:	20000184 	.word	0x20000184
 80011ac:	20000188 	.word	0x20000188
 80011b0:	2000017a 	.word	0x2000017a
 80011b4:	200001b0 	.word	0x200001b0

080011b8 <Setup0_Process>:
 80011b8:	b590      	push	{r4, r7, lr}
 80011ba:	b083      	sub	sp, #12
 80011bc:	af00      	add	r7, sp, #0
 80011be:	2301      	movs	r3, #1
 80011c0:	80fb      	strh	r3, [r7, #6]
 80011c2:	4b30      	ldr	r3, [pc, #192]	; (8001284 <Setup0_Process+0xcc>)
 80011c4:	681b      	ldr	r3, [r3, #0]
 80011c6:	b29b      	uxth	r3, r3
 80011c8:	461a      	mov	r2, r3
 80011ca:	4b2f      	ldr	r3, [pc, #188]	; (8001288 <Setup0_Process+0xd0>)
 80011cc:	4413      	add	r3, r2
 80011ce:	005b      	lsls	r3, r3, #1
 80011d0:	681b      	ldr	r3, [r3, #0]
 80011d2:	b29b      	uxth	r3, r3
 80011d4:	005b      	lsls	r3, r3, #1
 80011d6:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80011da:	f503 43c0 	add.w	r3, r3, #24576	; 0x6000
 80011de:	603b      	str	r3, [r7, #0]
 80011e0:	4b2a      	ldr	r3, [pc, #168]	; (800128c <Setup0_Process+0xd4>)
 80011e2:	681b      	ldr	r3, [r3, #0]
 80011e4:	7a1b      	ldrb	r3, [r3, #8]
 80011e6:	2b09      	cmp	r3, #9
 80011e8:	d037      	beq.n	800125a <Setup0_Process+0xa2>
 80011ea:	4b28      	ldr	r3, [pc, #160]	; (800128c <Setup0_Process+0xd4>)
 80011ec:	681a      	ldr	r2, [r3, #0]
 80011ee:	683b      	ldr	r3, [r7, #0]
 80011f0:	1c59      	adds	r1, r3, #1
 80011f2:	6039      	str	r1, [r7, #0]
 80011f4:	781b      	ldrb	r3, [r3, #0]
 80011f6:	7013      	strb	r3, [r2, #0]
 80011f8:	4b24      	ldr	r3, [pc, #144]	; (800128c <Setup0_Process+0xd4>)
 80011fa:	681a      	ldr	r2, [r3, #0]
 80011fc:	683b      	ldr	r3, [r7, #0]
 80011fe:	1c59      	adds	r1, r3, #1
 8001200:	6039      	str	r1, [r7, #0]
 8001202:	781b      	ldrb	r3, [r3, #0]
 8001204:	7053      	strb	r3, [r2, #1]
 8001206:	683a      	ldr	r2, [r7, #0]
 8001208:	88fb      	ldrh	r3, [r7, #6]
 800120a:	005b      	lsls	r3, r3, #1
 800120c:	4413      	add	r3, r2
 800120e:	603b      	str	r3, [r7, #0]
 8001210:	4b1e      	ldr	r3, [pc, #120]	; (800128c <Setup0_Process+0xd4>)
 8001212:	681c      	ldr	r4, [r3, #0]
 8001214:	683b      	ldr	r3, [r7, #0]
 8001216:	1c9a      	adds	r2, r3, #2
 8001218:	603a      	str	r2, [r7, #0]
 800121a:	881b      	ldrh	r3, [r3, #0]
 800121c:	4618      	mov	r0, r3
 800121e:	f001 ff3d 	bl	800309c <ByteSwap>
 8001222:	4603      	mov	r3, r0
 8001224:	8063      	strh	r3, [r4, #2]
 8001226:	683a      	ldr	r2, [r7, #0]
 8001228:	88fb      	ldrh	r3, [r7, #6]
 800122a:	005b      	lsls	r3, r3, #1
 800122c:	4413      	add	r3, r2
 800122e:	603b      	str	r3, [r7, #0]
 8001230:	4b16      	ldr	r3, [pc, #88]	; (800128c <Setup0_Process+0xd4>)
 8001232:	681c      	ldr	r4, [r3, #0]
 8001234:	683b      	ldr	r3, [r7, #0]
 8001236:	1c9a      	adds	r2, r3, #2
 8001238:	603a      	str	r2, [r7, #0]
 800123a:	881b      	ldrh	r3, [r3, #0]
 800123c:	4618      	mov	r0, r3
 800123e:	f001 ff2d 	bl	800309c <ByteSwap>
 8001242:	4603      	mov	r3, r0
 8001244:	80a3      	strh	r3, [r4, #4]
 8001246:	683a      	ldr	r2, [r7, #0]
 8001248:	88fb      	ldrh	r3, [r7, #6]
 800124a:	005b      	lsls	r3, r3, #1
 800124c:	4413      	add	r3, r2
 800124e:	603b      	str	r3, [r7, #0]
 8001250:	4b0e      	ldr	r3, [pc, #56]	; (800128c <Setup0_Process+0xd4>)
 8001252:	681b      	ldr	r3, [r3, #0]
 8001254:	683a      	ldr	r2, [r7, #0]
 8001256:	8812      	ldrh	r2, [r2, #0]
 8001258:	80da      	strh	r2, [r3, #6]
 800125a:	4b0c      	ldr	r3, [pc, #48]	; (800128c <Setup0_Process+0xd4>)
 800125c:	681b      	ldr	r3, [r3, #0]
 800125e:	2201      	movs	r2, #1
 8001260:	721a      	strb	r2, [r3, #8]
 8001262:	4b0a      	ldr	r3, [pc, #40]	; (800128c <Setup0_Process+0xd4>)
 8001264:	681b      	ldr	r3, [r3, #0]
 8001266:	88db      	ldrh	r3, [r3, #6]
 8001268:	2b00      	cmp	r3, #0
 800126a:	d102      	bne.n	8001272 <Setup0_Process+0xba>
 800126c:	f7ff fd46 	bl	8000cfc <NoData_Setup0>
 8001270:	e001      	b.n	8001276 <Setup0_Process+0xbe>
 8001272:	f7ff fe0d 	bl	8000e90 <Data_Setup0>
 8001276:	f000 f88d 	bl	8001394 <Post0_Process>
 800127a:	4603      	mov	r3, r0
 800127c:	4618      	mov	r0, r3
 800127e:	370c      	adds	r7, #12
 8001280:	46bd      	mov	sp, r7
 8001282:	bd90      	pop	{r4, r7, pc}
 8001284:	40005c50 	.word	0x40005c50
 8001288:	20003004 	.word	0x20003004
 800128c:	20000184 	.word	0x20000184

08001290 <In0_Process>:
 8001290:	b580      	push	{r7, lr}
 8001292:	b082      	sub	sp, #8
 8001294:	af00      	add	r7, sp, #0
 8001296:	4b1f      	ldr	r3, [pc, #124]	; (8001314 <In0_Process+0x84>)
 8001298:	681b      	ldr	r3, [r3, #0]
 800129a:	7a1b      	ldrb	r3, [r3, #8]
 800129c:	607b      	str	r3, [r7, #4]
 800129e:	687b      	ldr	r3, [r7, #4]
 80012a0:	2b02      	cmp	r3, #2
 80012a2:	d002      	beq.n	80012aa <In0_Process+0x1a>
 80012a4:	687b      	ldr	r3, [r7, #4]
 80012a6:	2b04      	cmp	r3, #4
 80012a8:	d106      	bne.n	80012b8 <In0_Process+0x28>
 80012aa:	f7ff fca1 	bl	8000bf0 <DataStageIn>
 80012ae:	4b19      	ldr	r3, [pc, #100]	; (8001314 <In0_Process+0x84>)
 80012b0:	681b      	ldr	r3, [r3, #0]
 80012b2:	7a1b      	ldrb	r3, [r3, #8]
 80012b4:	607b      	str	r3, [r7, #4]
 80012b6:	e021      	b.n	80012fc <In0_Process+0x6c>
 80012b8:	687b      	ldr	r3, [r7, #4]
 80012ba:	2b06      	cmp	r3, #6
 80012bc:	d11c      	bne.n	80012f8 <In0_Process+0x68>
 80012be:	4b15      	ldr	r3, [pc, #84]	; (8001314 <In0_Process+0x84>)
 80012c0:	681b      	ldr	r3, [r3, #0]
 80012c2:	785b      	ldrb	r3, [r3, #1]
 80012c4:	2b05      	cmp	r3, #5
 80012c6:	d110      	bne.n	80012ea <In0_Process+0x5a>
 80012c8:	4b12      	ldr	r3, [pc, #72]	; (8001314 <In0_Process+0x84>)
 80012ca:	681b      	ldr	r3, [r3, #0]
 80012cc:	781b      	ldrb	r3, [r3, #0]
 80012ce:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80012d2:	2b00      	cmp	r3, #0
 80012d4:	d109      	bne.n	80012ea <In0_Process+0x5a>
 80012d6:	4b0f      	ldr	r3, [pc, #60]	; (8001314 <In0_Process+0x84>)
 80012d8:	681b      	ldr	r3, [r3, #0]
 80012da:	78db      	ldrb	r3, [r3, #3]
 80012dc:	4618      	mov	r0, r3
 80012de:	f000 f881 	bl	80013e4 <SetDeviceAddress>
 80012e2:	4b0d      	ldr	r3, [pc, #52]	; (8001318 <In0_Process+0x88>)
 80012e4:	681b      	ldr	r3, [r3, #0]
 80012e6:	6a1b      	ldr	r3, [r3, #32]
 80012e8:	4798      	blx	r3
 80012ea:	4b0c      	ldr	r3, [pc, #48]	; (800131c <In0_Process+0x8c>)
 80012ec:	681b      	ldr	r3, [r3, #0]
 80012ee:	689b      	ldr	r3, [r3, #8]
 80012f0:	4798      	blx	r3
 80012f2:	2308      	movs	r3, #8
 80012f4:	607b      	str	r3, [r7, #4]
 80012f6:	e001      	b.n	80012fc <In0_Process+0x6c>
 80012f8:	2308      	movs	r3, #8
 80012fa:	607b      	str	r3, [r7, #4]
 80012fc:	4b05      	ldr	r3, [pc, #20]	; (8001314 <In0_Process+0x84>)
 80012fe:	681b      	ldr	r3, [r3, #0]
 8001300:	687a      	ldr	r2, [r7, #4]
 8001302:	b2d2      	uxtb	r2, r2
 8001304:	721a      	strb	r2, [r3, #8]
 8001306:	f000 f845 	bl	8001394 <Post0_Process>
 800130a:	4603      	mov	r3, r0
 800130c:	4618      	mov	r0, r3
 800130e:	3708      	adds	r7, #8
 8001310:	46bd      	mov	sp, r7
 8001312:	bd80      	pop	{r7, pc}
 8001314:	20000184 	.word	0x20000184
 8001318:	200001ac 	.word	0x200001ac
 800131c:	20000188 	.word	0x20000188

08001320 <Out0_Process>:
 8001320:	b580      	push	{r7, lr}
 8001322:	b082      	sub	sp, #8
 8001324:	af00      	add	r7, sp, #0
 8001326:	4b19      	ldr	r3, [pc, #100]	; (800138c <Out0_Process+0x6c>)
 8001328:	681b      	ldr	r3, [r3, #0]
 800132a:	7a1b      	ldrb	r3, [r3, #8]
 800132c:	607b      	str	r3, [r7, #4]
 800132e:	687b      	ldr	r3, [r7, #4]
 8001330:	2b02      	cmp	r3, #2
 8001332:	d002      	beq.n	800133a <Out0_Process+0x1a>
 8001334:	687b      	ldr	r3, [r7, #4]
 8001336:	2b04      	cmp	r3, #4
 8001338:	d102      	bne.n	8001340 <Out0_Process+0x20>
 800133a:	2308      	movs	r3, #8
 800133c:	607b      	str	r3, [r7, #4]
 800133e:	e018      	b.n	8001372 <Out0_Process+0x52>
 8001340:	687b      	ldr	r3, [r7, #4]
 8001342:	2b03      	cmp	r3, #3
 8001344:	d002      	beq.n	800134c <Out0_Process+0x2c>
 8001346:	687b      	ldr	r3, [r7, #4]
 8001348:	2b05      	cmp	r3, #5
 800134a:	d106      	bne.n	800135a <Out0_Process+0x3a>
 800134c:	f7ff fbce 	bl	8000aec <DataStageOut>
 8001350:	4b0e      	ldr	r3, [pc, #56]	; (800138c <Out0_Process+0x6c>)
 8001352:	681b      	ldr	r3, [r3, #0]
 8001354:	7a1b      	ldrb	r3, [r3, #8]
 8001356:	607b      	str	r3, [r7, #4]
 8001358:	e00b      	b.n	8001372 <Out0_Process+0x52>
 800135a:	687b      	ldr	r3, [r7, #4]
 800135c:	2b07      	cmp	r3, #7
 800135e:	d106      	bne.n	800136e <Out0_Process+0x4e>
 8001360:	4b0b      	ldr	r3, [pc, #44]	; (8001390 <Out0_Process+0x70>)
 8001362:	681b      	ldr	r3, [r3, #0]
 8001364:	68db      	ldr	r3, [r3, #12]
 8001366:	4798      	blx	r3
 8001368:	2308      	movs	r3, #8
 800136a:	607b      	str	r3, [r7, #4]
 800136c:	e001      	b.n	8001372 <Out0_Process+0x52>
 800136e:	2308      	movs	r3, #8
 8001370:	607b      	str	r3, [r7, #4]
 8001372:	4b06      	ldr	r3, [pc, #24]	; (800138c <Out0_Process+0x6c>)
 8001374:	681b      	ldr	r3, [r3, #0]
 8001376:	687a      	ldr	r2, [r7, #4]
 8001378:	b2d2      	uxtb	r2, r2
 800137a:	721a      	strb	r2, [r3, #8]
 800137c:	f000 f80a 	bl	8001394 <Post0_Process>
 8001380:	4603      	mov	r3, r0
 8001382:	4618      	mov	r0, r3
 8001384:	3708      	adds	r7, #8
 8001386:	46bd      	mov	sp, r7
 8001388:	bd80      	pop	{r7, pc}
 800138a:	bf00      	nop
 800138c:	20000184 	.word	0x20000184
 8001390:	20000188 	.word	0x20000188

08001394 <Post0_Process>:
 8001394:	b580      	push	{r7, lr}
 8001396:	af00      	add	r7, sp, #0
 8001398:	4b0e      	ldr	r3, [pc, #56]	; (80013d4 <Post0_Process+0x40>)
 800139a:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 800139e:	b29b      	uxth	r3, r3
 80013a0:	2000      	movs	r0, #0
 80013a2:	4619      	mov	r1, r3
 80013a4:	f001 fb32 	bl	8002a0c <SetEPRxCount>
 80013a8:	4b0b      	ldr	r3, [pc, #44]	; (80013d8 <Post0_Process+0x44>)
 80013aa:	681b      	ldr	r3, [r3, #0]
 80013ac:	7a1b      	ldrb	r3, [r3, #8]
 80013ae:	2b08      	cmp	r3, #8
 80013b0:	d106      	bne.n	80013c0 <Post0_Process+0x2c>
 80013b2:	4b0a      	ldr	r3, [pc, #40]	; (80013dc <Post0_Process+0x48>)
 80013b4:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80013b8:	801a      	strh	r2, [r3, #0]
 80013ba:	4b09      	ldr	r3, [pc, #36]	; (80013e0 <Post0_Process+0x4c>)
 80013bc:	2210      	movs	r2, #16
 80013be:	801a      	strh	r2, [r3, #0]
 80013c0:	4b05      	ldr	r3, [pc, #20]	; (80013d8 <Post0_Process+0x44>)
 80013c2:	681b      	ldr	r3, [r3, #0]
 80013c4:	7a1b      	ldrb	r3, [r3, #8]
 80013c6:	2b09      	cmp	r3, #9
 80013c8:	bf0c      	ite	eq
 80013ca:	2301      	moveq	r3, #1
 80013cc:	2300      	movne	r3, #0
 80013ce:	b2db      	uxtb	r3, r3
 80013d0:	4618      	mov	r0, r3
 80013d2:	bd80      	pop	{r7, pc}
 80013d4:	20000068 	.word	0x20000068
 80013d8:	20000184 	.word	0x20000184
 80013dc:	200001b0 	.word	0x200001b0
 80013e0:	200001b2 	.word	0x200001b2

080013e4 <SetDeviceAddress>:
 80013e4:	b480      	push	{r7}
 80013e6:	b085      	sub	sp, #20
 80013e8:	af00      	add	r7, sp, #0
 80013ea:	4603      	mov	r3, r0
 80013ec:	71fb      	strb	r3, [r7, #7]
 80013ee:	4b1a      	ldr	r3, [pc, #104]	; (8001458 <SetDeviceAddress+0x74>)
 80013f0:	781b      	ldrb	r3, [r3, #0]
 80013f2:	60bb      	str	r3, [r7, #8]
 80013f4:	2300      	movs	r3, #0
 80013f6:	60fb      	str	r3, [r7, #12]
 80013f8:	e01e      	b.n	8001438 <SetDeviceAddress+0x54>
 80013fa:	68fb      	ldr	r3, [r7, #12]
 80013fc:	b2db      	uxtb	r3, r3
 80013fe:	009b      	lsls	r3, r3, #2
 8001400:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001404:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001408:	68fa      	ldr	r2, [r7, #12]
 800140a:	b2d2      	uxtb	r2, r2
 800140c:	0092      	lsls	r2, r2, #2
 800140e:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001412:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8001416:	6812      	ldr	r2, [r2, #0]
 8001418:	b292      	uxth	r2, r2
 800141a:	4611      	mov	r1, r2
 800141c:	f640 720f 	movw	r2, #3855	; 0xf0f
 8001420:	400a      	ands	r2, r1
 8001422:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8001426:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800142a:	68f9      	ldr	r1, [r7, #12]
 800142c:	b2c9      	uxtb	r1, r1
 800142e:	430a      	orrs	r2, r1
 8001430:	601a      	str	r2, [r3, #0]
 8001432:	68fb      	ldr	r3, [r7, #12]
 8001434:	3301      	adds	r3, #1
 8001436:	60fb      	str	r3, [r7, #12]
 8001438:	68fa      	ldr	r2, [r7, #12]
 800143a:	68bb      	ldr	r3, [r7, #8]
 800143c:	429a      	cmp	r2, r3
 800143e:	d3dc      	bcc.n	80013fa <SetDeviceAddress+0x16>
 8001440:	4a06      	ldr	r2, [pc, #24]	; (800145c <SetDeviceAddress+0x78>)
 8001442:	79fb      	ldrb	r3, [r7, #7]
 8001444:	f063 037f 	orn	r3, r3, #127	; 0x7f
 8001448:	b2db      	uxtb	r3, r3
 800144a:	6013      	str	r3, [r2, #0]
 800144c:	3714      	adds	r7, #20
 800144e:	46bd      	mov	sp, r7
 8001450:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001454:	4770      	bx	lr
 8001456:	bf00      	nop
 8001458:	20000064 	.word	0x20000064
 800145c:	40005c4c 	.word	0x40005c4c

08001460 <NOP_Process>:
 8001460:	b480      	push	{r7}
 8001462:	af00      	add	r7, sp, #0
 8001464:	46bd      	mov	sp, r7
 8001466:	f85d 7b04 	ldr.w	r7, [sp], #4
 800146a:	4770      	bx	lr

0800146c <EP1_IN_Callback>:
 800146c:	b480      	push	{r7}
 800146e:	af00      	add	r7, sp, #0
 8001470:	4b03      	ldr	r3, [pc, #12]	; (8001480 <EP1_IN_Callback+0x14>)
 8001472:	2201      	movs	r2, #1
 8001474:	601a      	str	r2, [r3, #0]
 8001476:	46bd      	mov	sp, r7
 8001478:	f85d 7b04 	ldr.w	r7, [sp], #4
 800147c:	4770      	bx	lr
 800147e:	bf00      	nop
 8001480:	20000000 	.word	0x20000000

08001484 <EP3_OUT_Callback>:
 8001484:	b580      	push	{r7, lr}
 8001486:	af00      	add	r7, sp, #0
 8001488:	4b09      	ldr	r3, [pc, #36]	; (80014b0 <EP3_OUT_Callback+0x2c>)
 800148a:	2201      	movs	r2, #1
 800148c:	601a      	str	r2, [r3, #0]
 800148e:	2003      	movs	r0, #3
 8001490:	f001 fb1c 	bl	8002acc <GetEPRxCount>
 8001494:	4603      	mov	r3, r0
 8001496:	461a      	mov	r2, r3
 8001498:	4b06      	ldr	r3, [pc, #24]	; (80014b4 <EP3_OUT_Callback+0x30>)
 800149a:	601a      	str	r2, [r3, #0]
 800149c:	4b05      	ldr	r3, [pc, #20]	; (80014b4 <EP3_OUT_Callback+0x30>)
 800149e:	681b      	ldr	r3, [r3, #0]
 80014a0:	b29b      	uxth	r3, r3
 80014a2:	4805      	ldr	r0, [pc, #20]	; (80014b8 <EP3_OUT_Callback+0x34>)
 80014a4:	f44f 7188 	mov.w	r1, #272	; 0x110
 80014a8:	461a      	mov	r2, r3
 80014aa:	f000 fb6f 	bl	8001b8c <PMAToUserBufferCopy>
 80014ae:	bd80      	pop	{r7, pc}
 80014b0:	20000004 	.word	0x20000004
 80014b4:	2000017c 	.word	0x2000017c
 80014b8:	200000f4 	.word	0x200000f4

080014bc <USB_Init>:
 80014bc:	b580      	push	{r7, lr}
 80014be:	af00      	add	r7, sp, #0
 80014c0:	4b08      	ldr	r3, [pc, #32]	; (80014e4 <USB_Init+0x28>)
 80014c2:	4a09      	ldr	r2, [pc, #36]	; (80014e8 <USB_Init+0x2c>)
 80014c4:	601a      	str	r2, [r3, #0]
 80014c6:	4b07      	ldr	r3, [pc, #28]	; (80014e4 <USB_Init+0x28>)
 80014c8:	681b      	ldr	r3, [r3, #0]
 80014ca:	2202      	movs	r2, #2
 80014cc:	721a      	strb	r2, [r3, #8]
 80014ce:	4b07      	ldr	r3, [pc, #28]	; (80014ec <USB_Init+0x30>)
 80014d0:	4a07      	ldr	r2, [pc, #28]	; (80014f0 <USB_Init+0x34>)
 80014d2:	601a      	str	r2, [r3, #0]
 80014d4:	4b07      	ldr	r3, [pc, #28]	; (80014f4 <USB_Init+0x38>)
 80014d6:	4a08      	ldr	r2, [pc, #32]	; (80014f8 <USB_Init+0x3c>)
 80014d8:	601a      	str	r2, [r3, #0]
 80014da:	4b04      	ldr	r3, [pc, #16]	; (80014ec <USB_Init+0x30>)
 80014dc:	681b      	ldr	r3, [r3, #0]
 80014de:	681b      	ldr	r3, [r3, #0]
 80014e0:	4798      	blx	r3
 80014e2:	bd80      	pop	{r7, pc}
 80014e4:	20000184 	.word	0x20000184
 80014e8:	20000190 	.word	0x20000190
 80014ec:	20000188 	.word	0x20000188
 80014f0:	20000068 	.word	0x20000068
 80014f4:	200001ac 	.word	0x200001ac
 80014f8:	20000098 	.word	0x20000098

080014fc <CTR_LP>:
 80014fc:	b590      	push	{r4, r7, lr}
 80014fe:	b083      	sub	sp, #12
 8001500:	af00      	add	r7, sp, #0
 8001502:	2300      	movs	r3, #0
 8001504:	80fb      	strh	r3, [r7, #6]
 8001506:	e165      	b.n	80017d4 <CTR_LP+0x2d8>
 8001508:	4b85      	ldr	r3, [pc, #532]	; (8001720 <CTR_LP+0x224>)
 800150a:	881b      	ldrh	r3, [r3, #0]
 800150c:	b29b      	uxth	r3, r3
 800150e:	b2db      	uxtb	r3, r3
 8001510:	f003 030f 	and.w	r3, r3, #15
 8001514:	b2da      	uxtb	r2, r3
 8001516:	4b83      	ldr	r3, [pc, #524]	; (8001724 <CTR_LP+0x228>)
 8001518:	701a      	strb	r2, [r3, #0]
 800151a:	4b82      	ldr	r3, [pc, #520]	; (8001724 <CTR_LP+0x228>)
 800151c:	781b      	ldrb	r3, [r3, #0]
 800151e:	2b00      	cmp	r3, #0
 8001520:	f040 810a 	bne.w	8001738 <CTR_LP+0x23c>
 8001524:	4b80      	ldr	r3, [pc, #512]	; (8001728 <CTR_LP+0x22c>)
 8001526:	681b      	ldr	r3, [r3, #0]
 8001528:	b29a      	uxth	r2, r3
 800152a:	4b80      	ldr	r3, [pc, #512]	; (800172c <CTR_LP+0x230>)
 800152c:	801a      	strh	r2, [r3, #0]
 800152e:	4b7f      	ldr	r3, [pc, #508]	; (800172c <CTR_LP+0x230>)
 8001530:	881b      	ldrh	r3, [r3, #0]
 8001532:	b29b      	uxth	r3, r3
 8001534:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8001538:	b29a      	uxth	r2, r3
 800153a:	4b7d      	ldr	r3, [pc, #500]	; (8001730 <CTR_LP+0x234>)
 800153c:	801a      	strh	r2, [r3, #0]
 800153e:	4b7b      	ldr	r3, [pc, #492]	; (800172c <CTR_LP+0x230>)
 8001540:	881b      	ldrh	r3, [r3, #0]
 8001542:	b29b      	uxth	r3, r3
 8001544:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 8001548:	b29a      	uxth	r2, r3
 800154a:	4b78      	ldr	r3, [pc, #480]	; (800172c <CTR_LP+0x230>)
 800154c:	801a      	strh	r2, [r3, #0]
 800154e:	4b76      	ldr	r3, [pc, #472]	; (8001728 <CTR_LP+0x22c>)
 8001550:	681b      	ldr	r3, [r3, #0]
 8001552:	b29b      	uxth	r3, r3
 8001554:	f64b 74bf 	movw	r4, #49087	; 0xbfbf
 8001558:	401c      	ands	r4, r3
 800155a:	f484 5400 	eor.w	r4, r4, #8192	; 0x2000
 800155e:	f084 0420 	eor.w	r4, r4, #32
 8001562:	4971      	ldr	r1, [pc, #452]	; (8001728 <CTR_LP+0x22c>)
 8001564:	b2a2      	uxth	r2, r4
 8001566:	4b73      	ldr	r3, [pc, #460]	; (8001734 <CTR_LP+0x238>)
 8001568:	4313      	orrs	r3, r2
 800156a:	b29b      	uxth	r3, r3
 800156c:	600b      	str	r3, [r1, #0]
 800156e:	4b6c      	ldr	r3, [pc, #432]	; (8001720 <CTR_LP+0x224>)
 8001570:	881b      	ldrh	r3, [r3, #0]
 8001572:	b29b      	uxth	r3, r3
 8001574:	f003 0310 	and.w	r3, r3, #16
 8001578:	2b00      	cmp	r3, #0
 800157a:	d13f      	bne.n	80015fc <CTR_LP+0x100>
 800157c:	4a6a      	ldr	r2, [pc, #424]	; (8001728 <CTR_LP+0x22c>)
 800157e:	4b6a      	ldr	r3, [pc, #424]	; (8001728 <CTR_LP+0x22c>)
 8001580:	681b      	ldr	r3, [r3, #0]
 8001582:	b29b      	uxth	r3, r3
 8001584:	4619      	mov	r1, r3
 8001586:	f648 730f 	movw	r3, #36623	; 0x8f0f
 800158a:	400b      	ands	r3, r1
 800158c:	6013      	str	r3, [r2, #0]
 800158e:	f7ff fe7f 	bl	8001290 <In0_Process>
 8001592:	4b65      	ldr	r3, [pc, #404]	; (8001728 <CTR_LP+0x22c>)
 8001594:	681b      	ldr	r3, [r3, #0]
 8001596:	b29b      	uxth	r3, r3
 8001598:	f64b 74bf 	movw	r4, #49087	; 0xbfbf
 800159c:	401c      	ands	r4, r3
 800159e:	4b63      	ldr	r3, [pc, #396]	; (800172c <CTR_LP+0x230>)
 80015a0:	881b      	ldrh	r3, [r3, #0]
 80015a2:	b29b      	uxth	r3, r3
 80015a4:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 80015a8:	b29b      	uxth	r3, r3
 80015aa:	2b00      	cmp	r3, #0
 80015ac:	d001      	beq.n	80015b2 <CTR_LP+0xb6>
 80015ae:	f484 5480 	eor.w	r4, r4, #4096	; 0x1000
 80015b2:	4b5e      	ldr	r3, [pc, #376]	; (800172c <CTR_LP+0x230>)
 80015b4:	881b      	ldrh	r3, [r3, #0]
 80015b6:	b29b      	uxth	r3, r3
 80015b8:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 80015bc:	b29b      	uxth	r3, r3
 80015be:	2b00      	cmp	r3, #0
 80015c0:	d001      	beq.n	80015c6 <CTR_LP+0xca>
 80015c2:	f484 5400 	eor.w	r4, r4, #8192	; 0x2000
 80015c6:	4b5a      	ldr	r3, [pc, #360]	; (8001730 <CTR_LP+0x234>)
 80015c8:	881b      	ldrh	r3, [r3, #0]
 80015ca:	b29b      	uxth	r3, r3
 80015cc:	f003 0310 	and.w	r3, r3, #16
 80015d0:	b29b      	uxth	r3, r3
 80015d2:	2b00      	cmp	r3, #0
 80015d4:	d001      	beq.n	80015da <CTR_LP+0xde>
 80015d6:	f084 0410 	eor.w	r4, r4, #16
 80015da:	4b55      	ldr	r3, [pc, #340]	; (8001730 <CTR_LP+0x234>)
 80015dc:	881b      	ldrh	r3, [r3, #0]
 80015de:	b29b      	uxth	r3, r3
 80015e0:	f003 0320 	and.w	r3, r3, #32
 80015e4:	b29b      	uxth	r3, r3
 80015e6:	2b00      	cmp	r3, #0
 80015e8:	d001      	beq.n	80015ee <CTR_LP+0xf2>
 80015ea:	f084 0420 	eor.w	r4, r4, #32
 80015ee:	494e      	ldr	r1, [pc, #312]	; (8001728 <CTR_LP+0x22c>)
 80015f0:	b2a2      	uxth	r2, r4
 80015f2:	4b50      	ldr	r3, [pc, #320]	; (8001734 <CTR_LP+0x238>)
 80015f4:	4313      	orrs	r3, r2
 80015f6:	b29b      	uxth	r3, r3
 80015f8:	600b      	str	r3, [r1, #0]
 80015fa:	e0f6      	b.n	80017ea <CTR_LP+0x2ee>
 80015fc:	4b4a      	ldr	r3, [pc, #296]	; (8001728 <CTR_LP+0x22c>)
 80015fe:	681b      	ldr	r3, [r3, #0]
 8001600:	b29b      	uxth	r3, r3
 8001602:	80fb      	strh	r3, [r7, #6]
 8001604:	88fb      	ldrh	r3, [r7, #6]
 8001606:	b29b      	uxth	r3, r3
 8001608:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800160c:	2b00      	cmp	r3, #0
 800160e:	d03f      	beq.n	8001690 <CTR_LP+0x194>
 8001610:	4a45      	ldr	r2, [pc, #276]	; (8001728 <CTR_LP+0x22c>)
 8001612:	4b45      	ldr	r3, [pc, #276]	; (8001728 <CTR_LP+0x22c>)
 8001614:	681b      	ldr	r3, [r3, #0]
 8001616:	b29b      	uxth	r3, r3
 8001618:	4619      	mov	r1, r3
 800161a:	f640 738f 	movw	r3, #3983	; 0xf8f
 800161e:	400b      	ands	r3, r1
 8001620:	6013      	str	r3, [r2, #0]
 8001622:	f7ff fdc9 	bl	80011b8 <Setup0_Process>
 8001626:	4b40      	ldr	r3, [pc, #256]	; (8001728 <CTR_LP+0x22c>)
 8001628:	681b      	ldr	r3, [r3, #0]
 800162a:	b29b      	uxth	r3, r3
 800162c:	f64b 74bf 	movw	r4, #49087	; 0xbfbf
 8001630:	401c      	ands	r4, r3
 8001632:	4b3e      	ldr	r3, [pc, #248]	; (800172c <CTR_LP+0x230>)
 8001634:	881b      	ldrh	r3, [r3, #0]
 8001636:	b29b      	uxth	r3, r3
 8001638:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 800163c:	b29b      	uxth	r3, r3
 800163e:	2b00      	cmp	r3, #0
 8001640:	d001      	beq.n	8001646 <CTR_LP+0x14a>
 8001642:	f484 5480 	eor.w	r4, r4, #4096	; 0x1000
 8001646:	4b39      	ldr	r3, [pc, #228]	; (800172c <CTR_LP+0x230>)
 8001648:	881b      	ldrh	r3, [r3, #0]
 800164a:	b29b      	uxth	r3, r3
 800164c:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8001650:	b29b      	uxth	r3, r3
 8001652:	2b00      	cmp	r3, #0
 8001654:	d001      	beq.n	800165a <CTR_LP+0x15e>
 8001656:	f484 5400 	eor.w	r4, r4, #8192	; 0x2000
 800165a:	4b35      	ldr	r3, [pc, #212]	; (8001730 <CTR_LP+0x234>)
 800165c:	881b      	ldrh	r3, [r3, #0]
 800165e:	b29b      	uxth	r3, r3
 8001660:	f003 0310 	and.w	r3, r3, #16
 8001664:	b29b      	uxth	r3, r3
 8001666:	2b00      	cmp	r3, #0
 8001668:	d001      	beq.n	800166e <CTR_LP+0x172>
 800166a:	f084 0410 	eor.w	r4, r4, #16
 800166e:	4b30      	ldr	r3, [pc, #192]	; (8001730 <CTR_LP+0x234>)
 8001670:	881b      	ldrh	r3, [r3, #0]
 8001672:	b29b      	uxth	r3, r3
 8001674:	f003 0320 	and.w	r3, r3, #32
 8001678:	b29b      	uxth	r3, r3
 800167a:	2b00      	cmp	r3, #0
 800167c:	d001      	beq.n	8001682 <CTR_LP+0x186>
 800167e:	f084 0420 	eor.w	r4, r4, #32
 8001682:	4929      	ldr	r1, [pc, #164]	; (8001728 <CTR_LP+0x22c>)
 8001684:	b2a2      	uxth	r2, r4
 8001686:	4b2b      	ldr	r3, [pc, #172]	; (8001734 <CTR_LP+0x238>)
 8001688:	4313      	orrs	r3, r2
 800168a:	b29b      	uxth	r3, r3
 800168c:	600b      	str	r3, [r1, #0]
 800168e:	e0ac      	b.n	80017ea <CTR_LP+0x2ee>
 8001690:	88fb      	ldrh	r3, [r7, #6]
 8001692:	b29b      	uxth	r3, r3
 8001694:	b29b      	uxth	r3, r3
 8001696:	b21b      	sxth	r3, r3
 8001698:	2b00      	cmp	r3, #0
 800169a:	f280 809b 	bge.w	80017d4 <CTR_LP+0x2d8>
 800169e:	4a22      	ldr	r2, [pc, #136]	; (8001728 <CTR_LP+0x22c>)
 80016a0:	4b21      	ldr	r3, [pc, #132]	; (8001728 <CTR_LP+0x22c>)
 80016a2:	681b      	ldr	r3, [r3, #0]
 80016a4:	b29b      	uxth	r3, r3
 80016a6:	4619      	mov	r1, r3
 80016a8:	f640 738f 	movw	r3, #3983	; 0xf8f
 80016ac:	400b      	ands	r3, r1
 80016ae:	6013      	str	r3, [r2, #0]
 80016b0:	f7ff fe36 	bl	8001320 <Out0_Process>
 80016b4:	4b1c      	ldr	r3, [pc, #112]	; (8001728 <CTR_LP+0x22c>)
 80016b6:	681b      	ldr	r3, [r3, #0]
 80016b8:	b29b      	uxth	r3, r3
 80016ba:	f64b 74bf 	movw	r4, #49087	; 0xbfbf
 80016be:	401c      	ands	r4, r3
 80016c0:	4b1a      	ldr	r3, [pc, #104]	; (800172c <CTR_LP+0x230>)
 80016c2:	881b      	ldrh	r3, [r3, #0]
 80016c4:	b29b      	uxth	r3, r3
 80016c6:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 80016ca:	b29b      	uxth	r3, r3
 80016cc:	2b00      	cmp	r3, #0
 80016ce:	d001      	beq.n	80016d4 <CTR_LP+0x1d8>
 80016d0:	f484 5480 	eor.w	r4, r4, #4096	; 0x1000
 80016d4:	4b15      	ldr	r3, [pc, #84]	; (800172c <CTR_LP+0x230>)
 80016d6:	881b      	ldrh	r3, [r3, #0]
 80016d8:	b29b      	uxth	r3, r3
 80016da:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 80016de:	b29b      	uxth	r3, r3
 80016e0:	2b00      	cmp	r3, #0
 80016e2:	d001      	beq.n	80016e8 <CTR_LP+0x1ec>
 80016e4:	f484 5400 	eor.w	r4, r4, #8192	; 0x2000
 80016e8:	4b11      	ldr	r3, [pc, #68]	; (8001730 <CTR_LP+0x234>)
 80016ea:	881b      	ldrh	r3, [r3, #0]
 80016ec:	b29b      	uxth	r3, r3
 80016ee:	f003 0310 	and.w	r3, r3, #16
 80016f2:	b29b      	uxth	r3, r3
 80016f4:	2b00      	cmp	r3, #0
 80016f6:	d001      	beq.n	80016fc <CTR_LP+0x200>
 80016f8:	f084 0410 	eor.w	r4, r4, #16
 80016fc:	4b0c      	ldr	r3, [pc, #48]	; (8001730 <CTR_LP+0x234>)
 80016fe:	881b      	ldrh	r3, [r3, #0]
 8001700:	b29b      	uxth	r3, r3
 8001702:	f003 0320 	and.w	r3, r3, #32
 8001706:	b29b      	uxth	r3, r3
 8001708:	2b00      	cmp	r3, #0
 800170a:	d001      	beq.n	8001710 <CTR_LP+0x214>
 800170c:	f084 0420 	eor.w	r4, r4, #32
 8001710:	4905      	ldr	r1, [pc, #20]	; (8001728 <CTR_LP+0x22c>)
 8001712:	b2a2      	uxth	r2, r4
 8001714:	4b07      	ldr	r3, [pc, #28]	; (8001734 <CTR_LP+0x238>)
 8001716:	4313      	orrs	r3, r2
 8001718:	b29b      	uxth	r3, r3
 800171a:	600b      	str	r3, [r1, #0]
 800171c:	e065      	b.n	80017ea <CTR_LP+0x2ee>
 800171e:	bf00      	nop
 8001720:	200001b4 	.word	0x200001b4
 8001724:	20000180 	.word	0x20000180
 8001728:	40005c00 	.word	0x40005c00
 800172c:	200001b0 	.word	0x200001b0
 8001730:	200001b2 	.word	0x200001b2
 8001734:	ffff8080 	.word	0xffff8080
 8001738:	4b2d      	ldr	r3, [pc, #180]	; (80017f0 <CTR_LP+0x2f4>)
 800173a:	781b      	ldrb	r3, [r3, #0]
 800173c:	009b      	lsls	r3, r3, #2
 800173e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001742:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001746:	681b      	ldr	r3, [r3, #0]
 8001748:	b29b      	uxth	r3, r3
 800174a:	80fb      	strh	r3, [r7, #6]
 800174c:	88fb      	ldrh	r3, [r7, #6]
 800174e:	b29b      	uxth	r3, r3
 8001750:	b29b      	uxth	r3, r3
 8001752:	b21b      	sxth	r3, r3
 8001754:	2b00      	cmp	r3, #0
 8001756:	da1b      	bge.n	8001790 <CTR_LP+0x294>
 8001758:	4b25      	ldr	r3, [pc, #148]	; (80017f0 <CTR_LP+0x2f4>)
 800175a:	781b      	ldrb	r3, [r3, #0]
 800175c:	009b      	lsls	r3, r3, #2
 800175e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001762:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001766:	4a22      	ldr	r2, [pc, #136]	; (80017f0 <CTR_LP+0x2f4>)
 8001768:	7812      	ldrb	r2, [r2, #0]
 800176a:	0092      	lsls	r2, r2, #2
 800176c:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001770:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8001774:	6812      	ldr	r2, [r2, #0]
 8001776:	b292      	uxth	r2, r2
 8001778:	4611      	mov	r1, r2
 800177a:	f640 728f 	movw	r2, #3983	; 0xf8f
 800177e:	400a      	ands	r2, r1
 8001780:	601a      	str	r2, [r3, #0]
 8001782:	4b1b      	ldr	r3, [pc, #108]	; (80017f0 <CTR_LP+0x2f4>)
 8001784:	781b      	ldrb	r3, [r3, #0]
 8001786:	3b01      	subs	r3, #1
 8001788:	4a1a      	ldr	r2, [pc, #104]	; (80017f4 <CTR_LP+0x2f8>)
 800178a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800178e:	4798      	blx	r3
 8001790:	88fb      	ldrh	r3, [r7, #6]
 8001792:	b29b      	uxth	r3, r3
 8001794:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001798:	2b00      	cmp	r3, #0
 800179a:	d01b      	beq.n	80017d4 <CTR_LP+0x2d8>
 800179c:	4b14      	ldr	r3, [pc, #80]	; (80017f0 <CTR_LP+0x2f4>)
 800179e:	781b      	ldrb	r3, [r3, #0]
 80017a0:	009b      	lsls	r3, r3, #2
 80017a2:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80017a6:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80017aa:	4a11      	ldr	r2, [pc, #68]	; (80017f0 <CTR_LP+0x2f4>)
 80017ac:	7812      	ldrb	r2, [r2, #0]
 80017ae:	0092      	lsls	r2, r2, #2
 80017b0:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 80017b4:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80017b8:	6812      	ldr	r2, [r2, #0]
 80017ba:	b292      	uxth	r2, r2
 80017bc:	4611      	mov	r1, r2
 80017be:	f648 720f 	movw	r2, #36623	; 0x8f0f
 80017c2:	400a      	ands	r2, r1
 80017c4:	601a      	str	r2, [r3, #0]
 80017c6:	4b0a      	ldr	r3, [pc, #40]	; (80017f0 <CTR_LP+0x2f4>)
 80017c8:	781b      	ldrb	r3, [r3, #0]
 80017ca:	3b01      	subs	r3, #1
 80017cc:	4a0a      	ldr	r2, [pc, #40]	; (80017f8 <CTR_LP+0x2fc>)
 80017ce:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80017d2:	4798      	blx	r3
 80017d4:	4b09      	ldr	r3, [pc, #36]	; (80017fc <CTR_LP+0x300>)
 80017d6:	681b      	ldr	r3, [r3, #0]
 80017d8:	b29a      	uxth	r2, r3
 80017da:	4b09      	ldr	r3, [pc, #36]	; (8001800 <CTR_LP+0x304>)
 80017dc:	4611      	mov	r1, r2
 80017de:	8019      	strh	r1, [r3, #0]
 80017e0:	b293      	uxth	r3, r2
 80017e2:	b21b      	sxth	r3, r3
 80017e4:	2b00      	cmp	r3, #0
 80017e6:	f6ff ae8f 	blt.w	8001508 <CTR_LP+0xc>
 80017ea:	370c      	adds	r7, #12
 80017ec:	46bd      	mov	sp, r7
 80017ee:	bd90      	pop	{r4, r7, pc}
 80017f0:	20000180 	.word	0x20000180
 80017f4:	20000040 	.word	0x20000040
 80017f8:	20000024 	.word	0x20000024
 80017fc:	40005c44 	.word	0x40005c44
 8001800:	200001b4 	.word	0x200001b4

08001804 <CTR_HP>:
 8001804:	b580      	push	{r7, lr}
 8001806:	b082      	sub	sp, #8
 8001808:	af00      	add	r7, sp, #0
 800180a:	2300      	movs	r3, #0
 800180c:	607b      	str	r3, [r7, #4]
 800180e:	e059      	b.n	80018c4 <CTR_HP+0xc0>
 8001810:	4b33      	ldr	r3, [pc, #204]	; (80018e0 <CTR_HP+0xdc>)
 8001812:	f647 72ff 	movw	r2, #32767	; 0x7fff
 8001816:	601a      	str	r2, [r3, #0]
 8001818:	4b32      	ldr	r3, [pc, #200]	; (80018e4 <CTR_HP+0xe0>)
 800181a:	881b      	ldrh	r3, [r3, #0]
 800181c:	b29b      	uxth	r3, r3
 800181e:	b2db      	uxtb	r3, r3
 8001820:	f003 030f 	and.w	r3, r3, #15
 8001824:	b2da      	uxtb	r2, r3
 8001826:	4b30      	ldr	r3, [pc, #192]	; (80018e8 <CTR_HP+0xe4>)
 8001828:	701a      	strb	r2, [r3, #0]
 800182a:	4b2f      	ldr	r3, [pc, #188]	; (80018e8 <CTR_HP+0xe4>)
 800182c:	781b      	ldrb	r3, [r3, #0]
 800182e:	009b      	lsls	r3, r3, #2
 8001830:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001834:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001838:	681b      	ldr	r3, [r3, #0]
 800183a:	b29b      	uxth	r3, r3
 800183c:	607b      	str	r3, [r7, #4]
 800183e:	687b      	ldr	r3, [r7, #4]
 8001840:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 8001844:	2b00      	cmp	r3, #0
 8001846:	d01c      	beq.n	8001882 <CTR_HP+0x7e>
 8001848:	4b27      	ldr	r3, [pc, #156]	; (80018e8 <CTR_HP+0xe4>)
 800184a:	781b      	ldrb	r3, [r3, #0]
 800184c:	009b      	lsls	r3, r3, #2
 800184e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001852:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001856:	4a24      	ldr	r2, [pc, #144]	; (80018e8 <CTR_HP+0xe4>)
 8001858:	7812      	ldrb	r2, [r2, #0]
 800185a:	0092      	lsls	r2, r2, #2
 800185c:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8001860:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8001864:	6812      	ldr	r2, [r2, #0]
 8001866:	b292      	uxth	r2, r2
 8001868:	4611      	mov	r1, r2
 800186a:	f640 728f 	movw	r2, #3983	; 0xf8f
 800186e:	400a      	ands	r2, r1
 8001870:	601a      	str	r2, [r3, #0]
 8001872:	4b1d      	ldr	r3, [pc, #116]	; (80018e8 <CTR_HP+0xe4>)
 8001874:	781b      	ldrb	r3, [r3, #0]
 8001876:	3b01      	subs	r3, #1
 8001878:	4a1c      	ldr	r2, [pc, #112]	; (80018ec <CTR_HP+0xe8>)
 800187a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800187e:	4798      	blx	r3
 8001880:	e020      	b.n	80018c4 <CTR_HP+0xc0>
 8001882:	687b      	ldr	r3, [r7, #4]
 8001884:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8001888:	2b00      	cmp	r3, #0
 800188a:	d01b      	beq.n	80018c4 <CTR_HP+0xc0>
 800188c:	4b16      	ldr	r3, [pc, #88]	; (80018e8 <CTR_HP+0xe4>)
 800188e:	781b      	ldrb	r3, [r3, #0]
 8001890:	009b      	lsls	r3, r3, #2
 8001892:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001896:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800189a:	4a13      	ldr	r2, [pc, #76]	; (80018e8 <CTR_HP+0xe4>)
 800189c:	7812      	ldrb	r2, [r2, #0]
 800189e:	0092      	lsls	r2, r2, #2
 80018a0:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 80018a4:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80018a8:	6812      	ldr	r2, [r2, #0]
 80018aa:	b292      	uxth	r2, r2
 80018ac:	4611      	mov	r1, r2
 80018ae:	f648 720f 	movw	r2, #36623	; 0x8f0f
 80018b2:	400a      	ands	r2, r1
 80018b4:	601a      	str	r2, [r3, #0]
 80018b6:	4b0c      	ldr	r3, [pc, #48]	; (80018e8 <CTR_HP+0xe4>)
 80018b8:	781b      	ldrb	r3, [r3, #0]
 80018ba:	3b01      	subs	r3, #1
 80018bc:	4a0c      	ldr	r2, [pc, #48]	; (80018f0 <CTR_HP+0xec>)
 80018be:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80018c2:	4798      	blx	r3
 80018c4:	4b06      	ldr	r3, [pc, #24]	; (80018e0 <CTR_HP+0xdc>)
 80018c6:	681b      	ldr	r3, [r3, #0]
 80018c8:	b29a      	uxth	r2, r3
 80018ca:	4b06      	ldr	r3, [pc, #24]	; (80018e4 <CTR_HP+0xe0>)
 80018cc:	4611      	mov	r1, r2
 80018ce:	8019      	strh	r1, [r3, #0]
 80018d0:	b293      	uxth	r3, r2
 80018d2:	b21b      	sxth	r3, r3
 80018d4:	2b00      	cmp	r3, #0
 80018d6:	db9b      	blt.n	8001810 <CTR_HP+0xc>
 80018d8:	3708      	adds	r7, #8
 80018da:	46bd      	mov	sp, r7
 80018dc:	bd80      	pop	{r7, pc}
 80018de:	bf00      	nop
 80018e0:	40005c44 	.word	0x40005c44
 80018e4:	200001b4 	.word	0x200001b4
 80018e8:	20000180 	.word	0x20000180
 80018ec:	20000040 	.word	0x20000040
 80018f0:	20000024 	.word	0x20000024

080018f4 <USB_Istr>:
 80018f4:	b580      	push	{r7, lr}
 80018f6:	b08a      	sub	sp, #40	; 0x28
 80018f8:	af00      	add	r7, sp, #0
 80018fa:	2300      	movs	r3, #0
 80018fc:	627b      	str	r3, [r7, #36]	; 0x24
 80018fe:	4b7c      	ldr	r3, [pc, #496]	; (8001af0 <USB_Istr+0x1fc>)
 8001900:	681b      	ldr	r3, [r3, #0]
 8001902:	b29a      	uxth	r2, r3
 8001904:	4b7b      	ldr	r3, [pc, #492]	; (8001af4 <USB_Istr+0x200>)
 8001906:	801a      	strh	r2, [r3, #0]
 8001908:	4b7a      	ldr	r3, [pc, #488]	; (8001af4 <USB_Istr+0x200>)
 800190a:	881b      	ldrh	r3, [r3, #0]
 800190c:	b29b      	uxth	r3, r3
 800190e:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8001912:	4a79      	ldr	r2, [pc, #484]	; (8001af8 <USB_Istr+0x204>)
 8001914:	8812      	ldrh	r2, [r2, #0]
 8001916:	4013      	ands	r3, r2
 8001918:	2b00      	cmp	r3, #0
 800191a:	d00a      	beq.n	8001932 <USB_Istr+0x3e>
 800191c:	4b74      	ldr	r3, [pc, #464]	; (8001af0 <USB_Istr+0x1fc>)
 800191e:	f64f 52ff 	movw	r2, #65023	; 0xfdff
 8001922:	601a      	str	r2, [r3, #0]
 8001924:	4b75      	ldr	r3, [pc, #468]	; (8001afc <USB_Istr+0x208>)
 8001926:	781b      	ldrb	r3, [r3, #0]
 8001928:	b2db      	uxtb	r3, r3
 800192a:	3301      	adds	r3, #1
 800192c:	b2da      	uxtb	r2, r3
 800192e:	4b73      	ldr	r3, [pc, #460]	; (8001afc <USB_Istr+0x208>)
 8001930:	701a      	strb	r2, [r3, #0]
 8001932:	4b70      	ldr	r3, [pc, #448]	; (8001af4 <USB_Istr+0x200>)
 8001934:	881b      	ldrh	r3, [r3, #0]
 8001936:	b29b      	uxth	r3, r3
 8001938:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 800193c:	4a6e      	ldr	r2, [pc, #440]	; (8001af8 <USB_Istr+0x204>)
 800193e:	8812      	ldrh	r2, [r2, #0]
 8001940:	4013      	ands	r3, r2
 8001942:	2b00      	cmp	r3, #0
 8001944:	d001      	beq.n	800194a <USB_Istr+0x56>
 8001946:	f7ff fdd9 	bl	80014fc <CTR_LP>
 800194a:	4b6a      	ldr	r3, [pc, #424]	; (8001af4 <USB_Istr+0x200>)
 800194c:	881b      	ldrh	r3, [r3, #0]
 800194e:	b29b      	uxth	r3, r3
 8001950:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001954:	4a68      	ldr	r2, [pc, #416]	; (8001af8 <USB_Istr+0x204>)
 8001956:	8812      	ldrh	r2, [r2, #0]
 8001958:	4013      	ands	r3, r2
 800195a:	2b00      	cmp	r3, #0
 800195c:	d006      	beq.n	800196c <USB_Istr+0x78>
 800195e:	4b64      	ldr	r3, [pc, #400]	; (8001af0 <USB_Istr+0x1fc>)
 8001960:	f64f 32ff 	movw	r2, #64511	; 0xfbff
 8001964:	601a      	str	r2, [r3, #0]
 8001966:	4b66      	ldr	r3, [pc, #408]	; (8001b00 <USB_Istr+0x20c>)
 8001968:	685b      	ldr	r3, [r3, #4]
 800196a:	4798      	blx	r3
 800196c:	4b61      	ldr	r3, [pc, #388]	; (8001af4 <USB_Istr+0x200>)
 800196e:	881b      	ldrh	r3, [r3, #0]
 8001970:	b29b      	uxth	r3, r3
 8001972:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8001976:	4a60      	ldr	r2, [pc, #384]	; (8001af8 <USB_Istr+0x204>)
 8001978:	8812      	ldrh	r2, [r2, #0]
 800197a:	4013      	ands	r3, r2
 800197c:	2b00      	cmp	r3, #0
 800197e:	d003      	beq.n	8001988 <USB_Istr+0x94>
 8001980:	4b5b      	ldr	r3, [pc, #364]	; (8001af0 <USB_Istr+0x1fc>)
 8001982:	f64d 72ff 	movw	r2, #57343	; 0xdfff
 8001986:	601a      	str	r2, [r3, #0]
 8001988:	4b5a      	ldr	r3, [pc, #360]	; (8001af4 <USB_Istr+0x200>)
 800198a:	881b      	ldrh	r3, [r3, #0]
 800198c:	b29b      	uxth	r3, r3
 800198e:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8001992:	4a59      	ldr	r2, [pc, #356]	; (8001af8 <USB_Istr+0x204>)
 8001994:	8812      	ldrh	r2, [r2, #0]
 8001996:	4013      	ands	r3, r2
 8001998:	2b00      	cmp	r3, #0
 800199a:	d006      	beq.n	80019aa <USB_Istr+0xb6>
 800199c:	4b54      	ldr	r3, [pc, #336]	; (8001af0 <USB_Istr+0x1fc>)
 800199e:	f64e 72ff 	movw	r2, #61439	; 0xefff
 80019a2:	601a      	str	r2, [r3, #0]
 80019a4:	2000      	movs	r0, #0
 80019a6:	f000 fb1f 	bl	8001fe8 <Resume>
 80019aa:	4b52      	ldr	r3, [pc, #328]	; (8001af4 <USB_Istr+0x200>)
 80019ac:	881b      	ldrh	r3, [r3, #0]
 80019ae:	b29b      	uxth	r3, r3
 80019b0:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80019b4:	4a50      	ldr	r2, [pc, #320]	; (8001af8 <USB_Istr+0x204>)
 80019b6:	8812      	ldrh	r2, [r2, #0]
 80019b8:	4013      	ands	r3, r2
 80019ba:	2b00      	cmp	r3, #0
 80019bc:	d00e      	beq.n	80019dc <USB_Istr+0xe8>
 80019be:	4b51      	ldr	r3, [pc, #324]	; (8001b04 <USB_Istr+0x210>)
 80019c0:	781b      	ldrb	r3, [r3, #0]
 80019c2:	b2db      	uxtb	r3, r3
 80019c4:	2b00      	cmp	r3, #0
 80019c6:	d002      	beq.n	80019ce <USB_Istr+0xda>
 80019c8:	f000 fb02 	bl	8001fd0 <Suspend>
 80019cc:	e002      	b.n	80019d4 <USB_Istr+0xe0>
 80019ce:	2002      	movs	r0, #2
 80019d0:	f000 fb0a 	bl	8001fe8 <Resume>
 80019d4:	4b46      	ldr	r3, [pc, #280]	; (8001af0 <USB_Istr+0x1fc>)
 80019d6:	f24f 72ff 	movw	r2, #63487	; 0xf7ff
 80019da:	601a      	str	r2, [r3, #0]
 80019dc:	4b45      	ldr	r3, [pc, #276]	; (8001af4 <USB_Istr+0x200>)
 80019de:	881b      	ldrh	r3, [r3, #0]
 80019e0:	b29b      	uxth	r3, r3
 80019e2:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80019e6:	4a44      	ldr	r2, [pc, #272]	; (8001af8 <USB_Istr+0x204>)
 80019e8:	8812      	ldrh	r2, [r2, #0]
 80019ea:	4013      	ands	r3, r2
 80019ec:	2b00      	cmp	r3, #0
 80019ee:	d07c      	beq.n	8001aea <USB_Istr+0x1f6>
 80019f0:	4b3f      	ldr	r3, [pc, #252]	; (8001af0 <USB_Istr+0x1fc>)
 80019f2:	f64f 62ff 	movw	r2, #65279	; 0xfeff
 80019f6:	601a      	str	r2, [r3, #0]
 80019f8:	4b43      	ldr	r3, [pc, #268]	; (8001b08 <USB_Istr+0x214>)
 80019fa:	681b      	ldr	r3, [r3, #0]
 80019fc:	b29b      	uxth	r3, r3
 80019fe:	b21b      	sxth	r3, r3
 8001a00:	2b00      	cmp	r3, #0
 8001a02:	da6c      	bge.n	8001ade <USB_Istr+0x1ea>
 8001a04:	4b41      	ldr	r3, [pc, #260]	; (8001b0c <USB_Istr+0x218>)
 8001a06:	681b      	ldr	r3, [r3, #0]
 8001a08:	3301      	adds	r3, #1
 8001a0a:	4a40      	ldr	r2, [pc, #256]	; (8001b0c <USB_Istr+0x218>)
 8001a0c:	6013      	str	r3, [r2, #0]
 8001a0e:	4b3f      	ldr	r3, [pc, #252]	; (8001b0c <USB_Istr+0x218>)
 8001a10:	681b      	ldr	r3, [r3, #0]
 8001a12:	2b03      	cmp	r3, #3
 8001a14:	d966      	bls.n	8001ae4 <USB_Istr+0x1f0>
 8001a16:	4b3e      	ldr	r3, [pc, #248]	; (8001b10 <USB_Istr+0x21c>)
 8001a18:	681b      	ldr	r3, [r3, #0]
 8001a1a:	b29b      	uxth	r3, r3
 8001a1c:	f003 0308 	and.w	r3, r3, #8
 8001a20:	2b00      	cmp	r3, #0
 8001a22:	d15f      	bne.n	8001ae4 <USB_Istr+0x1f0>
 8001a24:	4b3a      	ldr	r3, [pc, #232]	; (8001b10 <USB_Istr+0x21c>)
 8001a26:	681b      	ldr	r3, [r3, #0]
 8001a28:	b29b      	uxth	r3, r3
 8001a2a:	461a      	mov	r2, r3
 8001a2c:	4b39      	ldr	r3, [pc, #228]	; (8001b14 <USB_Istr+0x220>)
 8001a2e:	601a      	str	r2, [r3, #0]
 8001a30:	2300      	movs	r3, #0
 8001a32:	627b      	str	r3, [r7, #36]	; 0x24
 8001a34:	e012      	b.n	8001a5c <USB_Istr+0x168>
 8001a36:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001a38:	009b      	lsls	r3, r3, #2
 8001a3a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001a3e:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001a42:	681b      	ldr	r3, [r3, #0]
 8001a44:	b29b      	uxth	r3, r3
 8001a46:	461a      	mov	r2, r3
 8001a48:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001a4a:	009b      	lsls	r3, r3, #2
 8001a4c:	f107 0128 	add.w	r1, r7, #40	; 0x28
 8001a50:	440b      	add	r3, r1
 8001a52:	f843 2c24 	str.w	r2, [r3, #-36]
 8001a56:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001a58:	3301      	adds	r3, #1
 8001a5a:	627b      	str	r3, [r7, #36]	; 0x24
 8001a5c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001a5e:	2b07      	cmp	r3, #7
 8001a60:	d9e9      	bls.n	8001a36 <USB_Istr+0x142>
 8001a62:	4b2c      	ldr	r3, [pc, #176]	; (8001b14 <USB_Istr+0x220>)
 8001a64:	681b      	ldr	r3, [r3, #0]
 8001a66:	f043 0301 	orr.w	r3, r3, #1
 8001a6a:	4a2a      	ldr	r2, [pc, #168]	; (8001b14 <USB_Istr+0x220>)
 8001a6c:	6013      	str	r3, [r2, #0]
 8001a6e:	4b28      	ldr	r3, [pc, #160]	; (8001b10 <USB_Istr+0x21c>)
 8001a70:	4a28      	ldr	r2, [pc, #160]	; (8001b14 <USB_Istr+0x220>)
 8001a72:	6812      	ldr	r2, [r2, #0]
 8001a74:	b292      	uxth	r2, r2
 8001a76:	601a      	str	r2, [r3, #0]
 8001a78:	4b26      	ldr	r3, [pc, #152]	; (8001b14 <USB_Istr+0x220>)
 8001a7a:	681b      	ldr	r3, [r3, #0]
 8001a7c:	f023 0301 	bic.w	r3, r3, #1
 8001a80:	4a24      	ldr	r2, [pc, #144]	; (8001b14 <USB_Istr+0x220>)
 8001a82:	6013      	str	r3, [r2, #0]
 8001a84:	4b22      	ldr	r3, [pc, #136]	; (8001b10 <USB_Istr+0x21c>)
 8001a86:	4a23      	ldr	r2, [pc, #140]	; (8001b14 <USB_Istr+0x220>)
 8001a88:	6812      	ldr	r2, [r2, #0]
 8001a8a:	b292      	uxth	r2, r2
 8001a8c:	601a      	str	r2, [r3, #0]
 8001a8e:	bf00      	nop
 8001a90:	4b17      	ldr	r3, [pc, #92]	; (8001af0 <USB_Istr+0x1fc>)
 8001a92:	681b      	ldr	r3, [r3, #0]
 8001a94:	b29b      	uxth	r3, r3
 8001a96:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001a9a:	2b00      	cmp	r3, #0
 8001a9c:	d0f8      	beq.n	8001a90 <USB_Istr+0x19c>
 8001a9e:	4b14      	ldr	r3, [pc, #80]	; (8001af0 <USB_Istr+0x1fc>)
 8001aa0:	f64f 32ff 	movw	r2, #64511	; 0xfbff
 8001aa4:	601a      	str	r2, [r3, #0]
 8001aa6:	2300      	movs	r3, #0
 8001aa8:	627b      	str	r3, [r7, #36]	; 0x24
 8001aaa:	e011      	b.n	8001ad0 <USB_Istr+0x1dc>
 8001aac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001aae:	009b      	lsls	r3, r3, #2
 8001ab0:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001ab4:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001ab8:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001aba:	0092      	lsls	r2, r2, #2
 8001abc:	f107 0128 	add.w	r1, r7, #40	; 0x28
 8001ac0:	440a      	add	r2, r1
 8001ac2:	f852 2c24 	ldr.w	r2, [r2, #-36]
 8001ac6:	b292      	uxth	r2, r2
 8001ac8:	601a      	str	r2, [r3, #0]
 8001aca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001acc:	3301      	adds	r3, #1
 8001ace:	627b      	str	r3, [r7, #36]	; 0x24
 8001ad0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001ad2:	2b07      	cmp	r3, #7
 8001ad4:	d9ea      	bls.n	8001aac <USB_Istr+0x1b8>
 8001ad6:	4b0d      	ldr	r3, [pc, #52]	; (8001b0c <USB_Istr+0x218>)
 8001ad8:	2200      	movs	r2, #0
 8001ada:	601a      	str	r2, [r3, #0]
 8001adc:	e002      	b.n	8001ae4 <USB_Istr+0x1f0>
 8001ade:	4b0b      	ldr	r3, [pc, #44]	; (8001b0c <USB_Istr+0x218>)
 8001ae0:	2200      	movs	r2, #0
 8001ae2:	601a      	str	r2, [r3, #0]
 8001ae4:	2007      	movs	r0, #7
 8001ae6:	f000 fa7f 	bl	8001fe8 <Resume>
 8001aea:	3728      	adds	r7, #40	; 0x28
 8001aec:	46bd      	mov	sp, r7
 8001aee:	bd80      	pop	{r7, pc}
 8001af0:	40005c44 	.word	0x40005c44
 8001af4:	200001b4 	.word	0x200001b4
 8001af8:	2000018e 	.word	0x2000018e
 8001afc:	200001b6 	.word	0x200001b6
 8001b00:	20000068 	.word	0x20000068
 8001b04:	200000ec 	.word	0x200000ec
 8001b08:	40005c48 	.word	0x40005c48
 8001b0c:	200001b8 	.word	0x200001b8
 8001b10:	40005c40 	.word	0x40005c40
 8001b14:	200001bc 	.word	0x200001bc

08001b18 <UserToPMABufferCopy>:
 8001b18:	b480      	push	{r7}
 8001b1a:	b089      	sub	sp, #36	; 0x24
 8001b1c:	af00      	add	r7, sp, #0
 8001b1e:	6078      	str	r0, [r7, #4]
 8001b20:	460b      	mov	r3, r1
 8001b22:	807b      	strh	r3, [r7, #2]
 8001b24:	4613      	mov	r3, r2
 8001b26:	803b      	strh	r3, [r7, #0]
 8001b28:	883b      	ldrh	r3, [r7, #0]
 8001b2a:	3301      	adds	r3, #1
 8001b2c:	105b      	asrs	r3, r3, #1
 8001b2e:	617b      	str	r3, [r7, #20]
 8001b30:	887b      	ldrh	r3, [r7, #2]
 8001b32:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8001b36:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8001b3a:	005b      	lsls	r3, r3, #1
 8001b3c:	61bb      	str	r3, [r7, #24]
 8001b3e:	697b      	ldr	r3, [r7, #20]
 8001b40:	61fb      	str	r3, [r7, #28]
 8001b42:	e01b      	b.n	8001b7c <UserToPMABufferCopy+0x64>
 8001b44:	687b      	ldr	r3, [r7, #4]
 8001b46:	781b      	ldrb	r3, [r3, #0]
 8001b48:	613b      	str	r3, [r7, #16]
 8001b4a:	687b      	ldr	r3, [r7, #4]
 8001b4c:	3301      	adds	r3, #1
 8001b4e:	607b      	str	r3, [r7, #4]
 8001b50:	687b      	ldr	r3, [r7, #4]
 8001b52:	781b      	ldrb	r3, [r3, #0]
 8001b54:	021b      	lsls	r3, r3, #8
 8001b56:	461a      	mov	r2, r3
 8001b58:	693b      	ldr	r3, [r7, #16]
 8001b5a:	4313      	orrs	r3, r2
 8001b5c:	60fb      	str	r3, [r7, #12]
 8001b5e:	69bb      	ldr	r3, [r7, #24]
 8001b60:	1c9a      	adds	r2, r3, #2
 8001b62:	61ba      	str	r2, [r7, #24]
 8001b64:	68fa      	ldr	r2, [r7, #12]
 8001b66:	b292      	uxth	r2, r2
 8001b68:	801a      	strh	r2, [r3, #0]
 8001b6a:	69bb      	ldr	r3, [r7, #24]
 8001b6c:	3302      	adds	r3, #2
 8001b6e:	61bb      	str	r3, [r7, #24]
 8001b70:	687b      	ldr	r3, [r7, #4]
 8001b72:	3301      	adds	r3, #1
 8001b74:	607b      	str	r3, [r7, #4]
 8001b76:	69fb      	ldr	r3, [r7, #28]
 8001b78:	3b01      	subs	r3, #1
 8001b7a:	61fb      	str	r3, [r7, #28]
 8001b7c:	69fb      	ldr	r3, [r7, #28]
 8001b7e:	2b00      	cmp	r3, #0
 8001b80:	d1e0      	bne.n	8001b44 <UserToPMABufferCopy+0x2c>
 8001b82:	3724      	adds	r7, #36	; 0x24
 8001b84:	46bd      	mov	sp, r7
 8001b86:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001b8a:	4770      	bx	lr

08001b8c <PMAToUserBufferCopy>:
 8001b8c:	b480      	push	{r7}
 8001b8e:	b087      	sub	sp, #28
 8001b90:	af00      	add	r7, sp, #0
 8001b92:	6078      	str	r0, [r7, #4]
 8001b94:	460b      	mov	r3, r1
 8001b96:	807b      	strh	r3, [r7, #2]
 8001b98:	4613      	mov	r3, r2
 8001b9a:	803b      	strh	r3, [r7, #0]
 8001b9c:	883b      	ldrh	r3, [r7, #0]
 8001b9e:	3301      	adds	r3, #1
 8001ba0:	105b      	asrs	r3, r3, #1
 8001ba2:	60fb      	str	r3, [r7, #12]
 8001ba4:	887b      	ldrh	r3, [r7, #2]
 8001ba6:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8001baa:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8001bae:	005b      	lsls	r3, r3, #1
 8001bb0:	613b      	str	r3, [r7, #16]
 8001bb2:	68fb      	ldr	r3, [r7, #12]
 8001bb4:	617b      	str	r3, [r7, #20]
 8001bb6:	e00e      	b.n	8001bd6 <PMAToUserBufferCopy+0x4a>
 8001bb8:	687b      	ldr	r3, [r7, #4]
 8001bba:	1c5a      	adds	r2, r3, #1
 8001bbc:	607a      	str	r2, [r7, #4]
 8001bbe:	693a      	ldr	r2, [r7, #16]
 8001bc0:	1d11      	adds	r1, r2, #4
 8001bc2:	6139      	str	r1, [r7, #16]
 8001bc4:	6812      	ldr	r2, [r2, #0]
 8001bc6:	b292      	uxth	r2, r2
 8001bc8:	801a      	strh	r2, [r3, #0]
 8001bca:	687b      	ldr	r3, [r7, #4]
 8001bcc:	3301      	adds	r3, #1
 8001bce:	607b      	str	r3, [r7, #4]
 8001bd0:	697b      	ldr	r3, [r7, #20]
 8001bd2:	3b01      	subs	r3, #1
 8001bd4:	617b      	str	r3, [r7, #20]
 8001bd6:	697b      	ldr	r3, [r7, #20]
 8001bd8:	2b00      	cmp	r3, #0
 8001bda:	d1ed      	bne.n	8001bb8 <PMAToUserBufferCopy+0x2c>
 8001bdc:	371c      	adds	r7, #28
 8001bde:	46bd      	mov	sp, r7
 8001be0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001be4:	4770      	bx	lr
 8001be6:	bf00      	nop

08001be8 <Virtual_Com_Port_init>:
 8001be8:	b580      	push	{r7, lr}
 8001bea:	af00      	add	r7, sp, #0
 8001bec:	f7fe fb50 	bl	8000290 <Get_SerialNum>
 8001bf0:	4b05      	ldr	r3, [pc, #20]	; (8001c08 <Virtual_Com_Port_init+0x20>)
 8001bf2:	681b      	ldr	r3, [r3, #0]
 8001bf4:	2200      	movs	r2, #0
 8001bf6:	729a      	strb	r2, [r3, #10]
 8001bf8:	f000 f9ac 	bl	8001f54 <PowerOn>
 8001bfc:	f001 fa66 	bl	80030cc <USB_SIL_Init>
 8001c00:	4b02      	ldr	r3, [pc, #8]	; (8001c0c <Virtual_Com_Port_init+0x24>)
 8001c02:	2200      	movs	r2, #0
 8001c04:	601a      	str	r2, [r3, #0]
 8001c06:	bd80      	pop	{r7, pc}
 8001c08:	20000184 	.word	0x20000184
 8001c0c:	200001c4 	.word	0x200001c4

08001c10 <Virtual_Com_Port_Reset>:
 8001c10:	b580      	push	{r7, lr}
 8001c12:	af00      	add	r7, sp, #0
 8001c14:	4b36      	ldr	r3, [pc, #216]	; (8001cf0 <Virtual_Com_Port_Reset+0xe0>)
 8001c16:	681b      	ldr	r3, [r3, #0]
 8001c18:	2200      	movs	r2, #0
 8001c1a:	729a      	strb	r2, [r3, #10]
 8001c1c:	4b34      	ldr	r3, [pc, #208]	; (8001cf0 <Virtual_Com_Port_Reset+0xe0>)
 8001c1e:	681b      	ldr	r3, [r3, #0]
 8001c20:	4a34      	ldr	r2, [pc, #208]	; (8001cf4 <Virtual_Com_Port_Reset+0xe4>)
 8001c22:	79d2      	ldrb	r2, [r2, #7]
 8001c24:	725a      	strb	r2, [r3, #9]
 8001c26:	4b32      	ldr	r3, [pc, #200]	; (8001cf0 <Virtual_Com_Port_Reset+0xe0>)
 8001c28:	681b      	ldr	r3, [r3, #0]
 8001c2a:	2200      	movs	r2, #0
 8001c2c:	72da      	strb	r2, [r3, #11]
 8001c2e:	2000      	movs	r0, #0
 8001c30:	f000 fa44 	bl	80020bc <SetBTABLE>
 8001c34:	2000      	movs	r0, #0
 8001c36:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001c3a:	f000 fa87 	bl	800214c <SetEPType>
 8001c3e:	2000      	movs	r0, #0
 8001c40:	2110      	movs	r1, #16
 8001c42:	f000 fabf 	bl	80021c4 <SetEPTxStatus>
 8001c46:	2000      	movs	r0, #0
 8001c48:	2140      	movs	r1, #64	; 0x40
 8001c4a:	f000 fe35 	bl	80028b8 <SetEPRxAddr>
 8001c4e:	2000      	movs	r0, #0
 8001c50:	2180      	movs	r1, #128	; 0x80
 8001c52:	f000 fe0f 	bl	8002874 <SetEPTxAddr>
 8001c56:	2000      	movs	r0, #0
 8001c58:	f000 fc1c 	bl	8002494 <Clear_Status_Out>
 8001c5c:	4b26      	ldr	r3, [pc, #152]	; (8001cf8 <Virtual_Com_Port_Reset+0xe8>)
 8001c5e:	f893 302c 	ldrb.w	r3, [r3, #44]	; 0x2c
 8001c62:	b29b      	uxth	r3, r3
 8001c64:	2000      	movs	r0, #0
 8001c66:	4619      	mov	r1, r3
 8001c68:	f000 fed0 	bl	8002a0c <SetEPRxCount>
 8001c6c:	2000      	movs	r0, #0
 8001c6e:	f000 fb99 	bl	80023a4 <SetEPRxValid>
 8001c72:	2001      	movs	r0, #1
 8001c74:	2100      	movs	r1, #0
 8001c76:	f000 fa69 	bl	800214c <SetEPType>
 8001c7a:	2001      	movs	r0, #1
 8001c7c:	21c0      	movs	r1, #192	; 0xc0
 8001c7e:	f000 fdf9 	bl	8002874 <SetEPTxAddr>
 8001c82:	2001      	movs	r0, #1
 8001c84:	2120      	movs	r1, #32
 8001c86:	f000 fa9d 	bl	80021c4 <SetEPTxStatus>
 8001c8a:	2001      	movs	r0, #1
 8001c8c:	2100      	movs	r1, #0
 8001c8e:	f000 fad1 	bl	8002234 <SetEPRxStatus>
 8001c92:	2002      	movs	r0, #2
 8001c94:	f44f 61c0 	mov.w	r1, #1536	; 0x600
 8001c98:	f000 fa58 	bl	800214c <SetEPType>
 8001c9c:	2002      	movs	r0, #2
 8001c9e:	f44f 7180 	mov.w	r1, #256	; 0x100
 8001ca2:	f000 fde7 	bl	8002874 <SetEPTxAddr>
 8001ca6:	2002      	movs	r0, #2
 8001ca8:	2100      	movs	r1, #0
 8001caa:	f000 fac3 	bl	8002234 <SetEPRxStatus>
 8001cae:	2002      	movs	r0, #2
 8001cb0:	2120      	movs	r1, #32
 8001cb2:	f000 fa87 	bl	80021c4 <SetEPTxStatus>
 8001cb6:	2003      	movs	r0, #3
 8001cb8:	2100      	movs	r1, #0
 8001cba:	f000 fa47 	bl	800214c <SetEPType>
 8001cbe:	2003      	movs	r0, #3
 8001cc0:	f44f 7188 	mov.w	r1, #272	; 0x110
 8001cc4:	f000 fdf8 	bl	80028b8 <SetEPRxAddr>
 8001cc8:	2003      	movs	r0, #3
 8001cca:	2140      	movs	r1, #64	; 0x40
 8001ccc:	f000 fe9e 	bl	8002a0c <SetEPRxCount>
 8001cd0:	2003      	movs	r0, #3
 8001cd2:	f44f 5140 	mov.w	r1, #12288	; 0x3000
 8001cd6:	f000 faad 	bl	8002234 <SetEPRxStatus>
 8001cda:	2003      	movs	r0, #3
 8001cdc:	2100      	movs	r1, #0
 8001cde:	f000 fa71 	bl	80021c4 <SetEPTxStatus>
 8001ce2:	2000      	movs	r0, #0
 8001ce4:	f7ff fb7e 	bl	80013e4 <SetDeviceAddress>
 8001ce8:	4b04      	ldr	r3, [pc, #16]	; (8001cfc <Virtual_Com_Port_Reset+0xec>)
 8001cea:	2201      	movs	r2, #1
 8001cec:	601a      	str	r2, [r3, #0]
 8001cee:	bd80      	pop	{r7, pc}
 8001cf0:	20000184 	.word	0x20000184
 8001cf4:	080031ac 	.word	0x080031ac
 8001cf8:	20000068 	.word	0x20000068
 8001cfc:	200001c4 	.word	0x200001c4

08001d00 <Virtual_Com_Port_SetConfiguration>:
 8001d00:	b480      	push	{r7}
 8001d02:	b083      	sub	sp, #12
 8001d04:	af00      	add	r7, sp, #0
 8001d06:	4b07      	ldr	r3, [pc, #28]	; (8001d24 <Virtual_Com_Port_SetConfiguration+0x24>)
 8001d08:	607b      	str	r3, [r7, #4]
 8001d0a:	687b      	ldr	r3, [r7, #4]
 8001d0c:	7a9b      	ldrb	r3, [r3, #10]
 8001d0e:	2b00      	cmp	r3, #0
 8001d10:	d002      	beq.n	8001d18 <Virtual_Com_Port_SetConfiguration+0x18>
 8001d12:	4b05      	ldr	r3, [pc, #20]	; (8001d28 <Virtual_Com_Port_SetConfiguration+0x28>)
 8001d14:	2205      	movs	r2, #5
 8001d16:	601a      	str	r2, [r3, #0]
 8001d18:	370c      	adds	r7, #12
 8001d1a:	46bd      	mov	sp, r7
 8001d1c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d20:	4770      	bx	lr
 8001d22:	bf00      	nop
 8001d24:	20000190 	.word	0x20000190
 8001d28:	200001c4 	.word	0x200001c4

08001d2c <Virtual_Com_Port_SetDeviceAddress>:
 8001d2c:	b480      	push	{r7}
 8001d2e:	af00      	add	r7, sp, #0
 8001d30:	4b03      	ldr	r3, [pc, #12]	; (8001d40 <Virtual_Com_Port_SetDeviceAddress+0x14>)
 8001d32:	2204      	movs	r2, #4
 8001d34:	601a      	str	r2, [r3, #0]
 8001d36:	46bd      	mov	sp, r7
 8001d38:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d3c:	4770      	bx	lr
 8001d3e:	bf00      	nop
 8001d40:	200001c4 	.word	0x200001c4

08001d44 <Virtual_Com_Port_Status_In>:
 8001d44:	b480      	push	{r7}
 8001d46:	af00      	add	r7, sp, #0
 8001d48:	4b05      	ldr	r3, [pc, #20]	; (8001d60 <Virtual_Com_Port_Status_In+0x1c>)
 8001d4a:	781b      	ldrb	r3, [r3, #0]
 8001d4c:	2b20      	cmp	r3, #32
 8001d4e:	d102      	bne.n	8001d56 <Virtual_Com_Port_Status_In+0x12>
 8001d50:	4b03      	ldr	r3, [pc, #12]	; (8001d60 <Virtual_Com_Port_Status_In+0x1c>)
 8001d52:	2200      	movs	r2, #0
 8001d54:	701a      	strb	r2, [r3, #0]
 8001d56:	46bd      	mov	sp, r7
 8001d58:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d5c:	4770      	bx	lr
 8001d5e:	bf00      	nop
 8001d60:	200001c0 	.word	0x200001c0

08001d64 <Virtual_Com_Port_Status_Out>:
 8001d64:	b480      	push	{r7}
 8001d66:	af00      	add	r7, sp, #0
 8001d68:	46bd      	mov	sp, r7
 8001d6a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d6e:	4770      	bx	lr

08001d70 <Virtual_Com_Port_Data_Setup>:
 8001d70:	b580      	push	{r7, lr}
 8001d72:	b084      	sub	sp, #16
 8001d74:	af00      	add	r7, sp, #0
 8001d76:	4603      	mov	r3, r0
 8001d78:	71fb      	strb	r3, [r7, #7]
 8001d7a:	2300      	movs	r3, #0
 8001d7c:	60fb      	str	r3, [r7, #12]
 8001d7e:	79fb      	ldrb	r3, [r7, #7]
 8001d80:	2b21      	cmp	r3, #33	; 0x21
 8001d82:	d109      	bne.n	8001d98 <Virtual_Com_Port_Data_Setup+0x28>
 8001d84:	4b16      	ldr	r3, [pc, #88]	; (8001de0 <Virtual_Com_Port_Data_Setup+0x70>)
 8001d86:	681b      	ldr	r3, [r3, #0]
 8001d88:	781b      	ldrb	r3, [r3, #0]
 8001d8a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8001d8e:	2b21      	cmp	r3, #33	; 0x21
 8001d90:	d111      	bne.n	8001db6 <Virtual_Com_Port_Data_Setup+0x46>
 8001d92:	4b14      	ldr	r3, [pc, #80]	; (8001de4 <Virtual_Com_Port_Data_Setup+0x74>)
 8001d94:	60fb      	str	r3, [r7, #12]
 8001d96:	e00e      	b.n	8001db6 <Virtual_Com_Port_Data_Setup+0x46>
 8001d98:	79fb      	ldrb	r3, [r7, #7]
 8001d9a:	2b20      	cmp	r3, #32
 8001d9c:	d10b      	bne.n	8001db6 <Virtual_Com_Port_Data_Setup+0x46>
 8001d9e:	4b10      	ldr	r3, [pc, #64]	; (8001de0 <Virtual_Com_Port_Data_Setup+0x70>)
 8001da0:	681b      	ldr	r3, [r3, #0]
 8001da2:	781b      	ldrb	r3, [r3, #0]
 8001da4:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8001da8:	2b21      	cmp	r3, #33	; 0x21
 8001daa:	d101      	bne.n	8001db0 <Virtual_Com_Port_Data_Setup+0x40>
 8001dac:	4b0e      	ldr	r3, [pc, #56]	; (8001de8 <Virtual_Com_Port_Data_Setup+0x78>)
 8001dae:	60fb      	str	r3, [r7, #12]
 8001db0:	4b0e      	ldr	r3, [pc, #56]	; (8001dec <Virtual_Com_Port_Data_Setup+0x7c>)
 8001db2:	2220      	movs	r2, #32
 8001db4:	701a      	strb	r2, [r3, #0]
 8001db6:	68fb      	ldr	r3, [r7, #12]
 8001db8:	2b00      	cmp	r3, #0
 8001dba:	d101      	bne.n	8001dc0 <Virtual_Com_Port_Data_Setup+0x50>
 8001dbc:	2302      	movs	r3, #2
 8001dbe:	e00b      	b.n	8001dd8 <Virtual_Com_Port_Data_Setup+0x68>
 8001dc0:	4b07      	ldr	r3, [pc, #28]	; (8001de0 <Virtual_Com_Port_Data_Setup+0x70>)
 8001dc2:	681b      	ldr	r3, [r3, #0]
 8001dc4:	68fa      	ldr	r2, [r7, #12]
 8001dc6:	619a      	str	r2, [r3, #24]
 8001dc8:	4b05      	ldr	r3, [pc, #20]	; (8001de0 <Virtual_Com_Port_Data_Setup+0x70>)
 8001dca:	681b      	ldr	r3, [r3, #0]
 8001dcc:	2200      	movs	r2, #0
 8001dce:	825a      	strh	r2, [r3, #18]
 8001dd0:	68fb      	ldr	r3, [r7, #12]
 8001dd2:	2000      	movs	r0, #0
 8001dd4:	4798      	blx	r3
 8001dd6:	2300      	movs	r3, #0
 8001dd8:	4618      	mov	r0, r3
 8001dda:	3710      	adds	r7, #16
 8001ddc:	46bd      	mov	sp, r7
 8001dde:	bd80      	pop	{r7, pc}
 8001de0:	20000184 	.word	0x20000184
 8001de4:	08001eed 	.word	0x08001eed
 8001de8:	08001f21 	.word	0x08001f21
 8001dec:	200001c0 	.word	0x200001c0

08001df0 <Virtual_Com_Port_NoData_Setup>:
 8001df0:	b480      	push	{r7}
 8001df2:	b083      	sub	sp, #12
 8001df4:	af00      	add	r7, sp, #0
 8001df6:	4603      	mov	r3, r0
 8001df8:	71fb      	strb	r3, [r7, #7]
 8001dfa:	4b0c      	ldr	r3, [pc, #48]	; (8001e2c <Virtual_Com_Port_NoData_Setup+0x3c>)
 8001dfc:	681b      	ldr	r3, [r3, #0]
 8001dfe:	781b      	ldrb	r3, [r3, #0]
 8001e00:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8001e04:	2b21      	cmp	r3, #33	; 0x21
 8001e06:	d109      	bne.n	8001e1c <Virtual_Com_Port_NoData_Setup+0x2c>
 8001e08:	79fb      	ldrb	r3, [r7, #7]
 8001e0a:	2b02      	cmp	r3, #2
 8001e0c:	d101      	bne.n	8001e12 <Virtual_Com_Port_NoData_Setup+0x22>
 8001e0e:	2300      	movs	r3, #0
 8001e10:	e005      	b.n	8001e1e <Virtual_Com_Port_NoData_Setup+0x2e>
 8001e12:	79fb      	ldrb	r3, [r7, #7]
 8001e14:	2b22      	cmp	r3, #34	; 0x22
 8001e16:	d101      	bne.n	8001e1c <Virtual_Com_Port_NoData_Setup+0x2c>
 8001e18:	2300      	movs	r3, #0
 8001e1a:	e000      	b.n	8001e1e <Virtual_Com_Port_NoData_Setup+0x2e>
 8001e1c:	2302      	movs	r3, #2
 8001e1e:	4618      	mov	r0, r3
 8001e20:	370c      	adds	r7, #12
 8001e22:	46bd      	mov	sp, r7
 8001e24:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001e28:	4770      	bx	lr
 8001e2a:	bf00      	nop
 8001e2c:	20000184 	.word	0x20000184

08001e30 <Virtual_Com_Port_GetDeviceDescriptor>:
 8001e30:	b580      	push	{r7, lr}
 8001e32:	b082      	sub	sp, #8
 8001e34:	af00      	add	r7, sp, #0
 8001e36:	4603      	mov	r3, r0
 8001e38:	80fb      	strh	r3, [r7, #6]
 8001e3a:	88fb      	ldrh	r3, [r7, #6]
 8001e3c:	4618      	mov	r0, r3
 8001e3e:	4904      	ldr	r1, [pc, #16]	; (8001e50 <Virtual_Com_Port_GetDeviceDescriptor+0x20>)
 8001e40:	f7fe fe30 	bl	8000aa4 <Standard_GetDescriptorData>
 8001e44:	4603      	mov	r3, r0
 8001e46:	4618      	mov	r0, r3
 8001e48:	3708      	adds	r7, #8
 8001e4a:	46bd      	mov	sp, r7
 8001e4c:	bd80      	pop	{r7, pc}
 8001e4e:	bf00      	nop
 8001e50:	200000bc 	.word	0x200000bc

08001e54 <Virtual_Com_Port_GetConfigDescriptor>:
 8001e54:	b580      	push	{r7, lr}
 8001e56:	b082      	sub	sp, #8
 8001e58:	af00      	add	r7, sp, #0
 8001e5a:	4603      	mov	r3, r0
 8001e5c:	80fb      	strh	r3, [r7, #6]
 8001e5e:	88fb      	ldrh	r3, [r7, #6]
 8001e60:	4618      	mov	r0, r3
 8001e62:	4904      	ldr	r1, [pc, #16]	; (8001e74 <Virtual_Com_Port_GetConfigDescriptor+0x20>)
 8001e64:	f7fe fe1e 	bl	8000aa4 <Standard_GetDescriptorData>
 8001e68:	4603      	mov	r3, r0
 8001e6a:	4618      	mov	r0, r3
 8001e6c:	3708      	adds	r7, #8
 8001e6e:	46bd      	mov	sp, r7
 8001e70:	bd80      	pop	{r7, pc}
 8001e72:	bf00      	nop
 8001e74:	200000c4 	.word	0x200000c4

08001e78 <Virtual_Com_Port_GetStringDescriptor>:
 8001e78:	b580      	push	{r7, lr}
 8001e7a:	b084      	sub	sp, #16
 8001e7c:	af00      	add	r7, sp, #0
 8001e7e:	4603      	mov	r3, r0
 8001e80:	80fb      	strh	r3, [r7, #6]
 8001e82:	4b0b      	ldr	r3, [pc, #44]	; (8001eb0 <Virtual_Com_Port_GetStringDescriptor+0x38>)
 8001e84:	681b      	ldr	r3, [r3, #0]
 8001e86:	78db      	ldrb	r3, [r3, #3]
 8001e88:	73fb      	strb	r3, [r7, #15]
 8001e8a:	7bfb      	ldrb	r3, [r7, #15]
 8001e8c:	2b04      	cmp	r3, #4
 8001e8e:	d901      	bls.n	8001e94 <Virtual_Com_Port_GetStringDescriptor+0x1c>
 8001e90:	2300      	movs	r3, #0
 8001e92:	e009      	b.n	8001ea8 <Virtual_Com_Port_GetStringDescriptor+0x30>
 8001e94:	7bfb      	ldrb	r3, [r7, #15]
 8001e96:	00db      	lsls	r3, r3, #3
 8001e98:	4a06      	ldr	r2, [pc, #24]	; (8001eb4 <Virtual_Com_Port_GetStringDescriptor+0x3c>)
 8001e9a:	4413      	add	r3, r2
 8001e9c:	88fa      	ldrh	r2, [r7, #6]
 8001e9e:	4610      	mov	r0, r2
 8001ea0:	4619      	mov	r1, r3
 8001ea2:	f7fe fdff 	bl	8000aa4 <Standard_GetDescriptorData>
 8001ea6:	4603      	mov	r3, r0
 8001ea8:	4618      	mov	r0, r3
 8001eaa:	3710      	adds	r7, #16
 8001eac:	46bd      	mov	sp, r7
 8001eae:	bd80      	pop	{r7, pc}
 8001eb0:	20000184 	.word	0x20000184
 8001eb4:	200000cc 	.word	0x200000cc

08001eb8 <Virtual_Com_Port_Get_Interface_Setting>:
 8001eb8:	b480      	push	{r7}
 8001eba:	b083      	sub	sp, #12
 8001ebc:	af00      	add	r7, sp, #0
 8001ebe:	4603      	mov	r3, r0
 8001ec0:	460a      	mov	r2, r1
 8001ec2:	71fb      	strb	r3, [r7, #7]
 8001ec4:	4613      	mov	r3, r2
 8001ec6:	71bb      	strb	r3, [r7, #6]
 8001ec8:	79bb      	ldrb	r3, [r7, #6]
 8001eca:	2b00      	cmp	r3, #0
 8001ecc:	d001      	beq.n	8001ed2 <Virtual_Com_Port_Get_Interface_Setting+0x1a>
 8001ece:	2302      	movs	r3, #2
 8001ed0:	e005      	b.n	8001ede <Virtual_Com_Port_Get_Interface_Setting+0x26>
 8001ed2:	79fb      	ldrb	r3, [r7, #7]
 8001ed4:	2b01      	cmp	r3, #1
 8001ed6:	d901      	bls.n	8001edc <Virtual_Com_Port_Get_Interface_Setting+0x24>
 8001ed8:	2302      	movs	r3, #2
 8001eda:	e000      	b.n	8001ede <Virtual_Com_Port_Get_Interface_Setting+0x26>
 8001edc:	2300      	movs	r3, #0
 8001ede:	4618      	mov	r0, r3
 8001ee0:	370c      	adds	r7, #12
 8001ee2:	46bd      	mov	sp, r7
 8001ee4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ee8:	4770      	bx	lr
 8001eea:	bf00      	nop

08001eec <Virtual_Com_Port_GetLineCoding>:
 8001eec:	b480      	push	{r7}
 8001eee:	b083      	sub	sp, #12
 8001ef0:	af00      	add	r7, sp, #0
 8001ef2:	4603      	mov	r3, r0
 8001ef4:	80fb      	strh	r3, [r7, #6]
 8001ef6:	88fb      	ldrh	r3, [r7, #6]
 8001ef8:	2b00      	cmp	r3, #0
 8001efa:	d105      	bne.n	8001f08 <Virtual_Com_Port_GetLineCoding+0x1c>
 8001efc:	4b06      	ldr	r3, [pc, #24]	; (8001f18 <Virtual_Com_Port_GetLineCoding+0x2c>)
 8001efe:	681b      	ldr	r3, [r3, #0]
 8001f00:	2208      	movs	r2, #8
 8001f02:	821a      	strh	r2, [r3, #16]
 8001f04:	2300      	movs	r3, #0
 8001f06:	e000      	b.n	8001f0a <Virtual_Com_Port_GetLineCoding+0x1e>
 8001f08:	4b04      	ldr	r3, [pc, #16]	; (8001f1c <Virtual_Com_Port_GetLineCoding+0x30>)
 8001f0a:	4618      	mov	r0, r3
 8001f0c:	370c      	adds	r7, #12
 8001f0e:	46bd      	mov	sp, r7
 8001f10:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f14:	4770      	bx	lr
 8001f16:	bf00      	nop
 8001f18:	20000184 	.word	0x20000184
 8001f1c:	2000005c 	.word	0x2000005c

08001f20 <Virtual_Com_Port_SetLineCoding>:
 8001f20:	b480      	push	{r7}
 8001f22:	b083      	sub	sp, #12
 8001f24:	af00      	add	r7, sp, #0
 8001f26:	4603      	mov	r3, r0
 8001f28:	80fb      	strh	r3, [r7, #6]
 8001f2a:	88fb      	ldrh	r3, [r7, #6]
 8001f2c:	2b00      	cmp	r3, #0
 8001f2e:	d105      	bne.n	8001f3c <Virtual_Com_Port_SetLineCoding+0x1c>
 8001f30:	4b06      	ldr	r3, [pc, #24]	; (8001f4c <Virtual_Com_Port_SetLineCoding+0x2c>)
 8001f32:	681b      	ldr	r3, [r3, #0]
 8001f34:	2208      	movs	r2, #8
 8001f36:	821a      	strh	r2, [r3, #16]
 8001f38:	2300      	movs	r3, #0
 8001f3a:	e000      	b.n	8001f3e <Virtual_Com_Port_SetLineCoding+0x1e>
 8001f3c:	4b04      	ldr	r3, [pc, #16]	; (8001f50 <Virtual_Com_Port_SetLineCoding+0x30>)
 8001f3e:	4618      	mov	r0, r3
 8001f40:	370c      	adds	r7, #12
 8001f42:	46bd      	mov	sp, r7
 8001f44:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001f48:	4770      	bx	lr
 8001f4a:	bf00      	nop
 8001f4c:	20000184 	.word	0x20000184
 8001f50:	2000005c 	.word	0x2000005c

08001f54 <PowerOn>:
 8001f54:	b580      	push	{r7, lr}
 8001f56:	b082      	sub	sp, #8
 8001f58:	af00      	add	r7, sp, #0
 8001f5a:	2001      	movs	r0, #1
 8001f5c:	f7fe f96a 	bl	8000234 <USB_Cable_Config>
 8001f60:	2301      	movs	r3, #1
 8001f62:	80fb      	strh	r3, [r7, #6]
 8001f64:	4a0c      	ldr	r2, [pc, #48]	; (8001f98 <PowerOn+0x44>)
 8001f66:	88fb      	ldrh	r3, [r7, #6]
 8001f68:	6013      	str	r3, [r2, #0]
 8001f6a:	4b0c      	ldr	r3, [pc, #48]	; (8001f9c <PowerOn+0x48>)
 8001f6c:	2200      	movs	r2, #0
 8001f6e:	801a      	strh	r2, [r3, #0]
 8001f70:	4b09      	ldr	r3, [pc, #36]	; (8001f98 <PowerOn+0x44>)
 8001f72:	4a0a      	ldr	r2, [pc, #40]	; (8001f9c <PowerOn+0x48>)
 8001f74:	8812      	ldrh	r2, [r2, #0]
 8001f76:	601a      	str	r2, [r3, #0]
 8001f78:	4b09      	ldr	r3, [pc, #36]	; (8001fa0 <PowerOn+0x4c>)
 8001f7a:	2200      	movs	r2, #0
 8001f7c:	601a      	str	r2, [r3, #0]
 8001f7e:	4b07      	ldr	r3, [pc, #28]	; (8001f9c <PowerOn+0x48>)
 8001f80:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001f84:	801a      	strh	r2, [r3, #0]
 8001f86:	4b04      	ldr	r3, [pc, #16]	; (8001f98 <PowerOn+0x44>)
 8001f88:	4a04      	ldr	r2, [pc, #16]	; (8001f9c <PowerOn+0x48>)
 8001f8a:	8812      	ldrh	r2, [r2, #0]
 8001f8c:	601a      	str	r2, [r3, #0]
 8001f8e:	2300      	movs	r3, #0
 8001f90:	4618      	mov	r0, r3
 8001f92:	3708      	adds	r7, #8
 8001f94:	46bd      	mov	sp, r7
 8001f96:	bd80      	pop	{r7, pc}
 8001f98:	40005c40 	.word	0x40005c40
 8001f9c:	2000018e 	.word	0x2000018e
 8001fa0:	40005c44 	.word	0x40005c44

08001fa4 <PowerOff>:
 8001fa4:	b580      	push	{r7, lr}
 8001fa6:	af00      	add	r7, sp, #0
 8001fa8:	4b07      	ldr	r3, [pc, #28]	; (8001fc8 <PowerOff+0x24>)
 8001faa:	2201      	movs	r2, #1
 8001fac:	601a      	str	r2, [r3, #0]
 8001fae:	4b07      	ldr	r3, [pc, #28]	; (8001fcc <PowerOff+0x28>)
 8001fb0:	2200      	movs	r2, #0
 8001fb2:	601a      	str	r2, [r3, #0]
 8001fb4:	2000      	movs	r0, #0
 8001fb6:	f7fe f93d 	bl	8000234 <USB_Cable_Config>
 8001fba:	4b03      	ldr	r3, [pc, #12]	; (8001fc8 <PowerOff+0x24>)
 8001fbc:	2203      	movs	r2, #3
 8001fbe:	601a      	str	r2, [r3, #0]
 8001fc0:	2300      	movs	r3, #0
 8001fc2:	4618      	mov	r0, r3
 8001fc4:	bd80      	pop	{r7, pc}
 8001fc6:	bf00      	nop
 8001fc8:	40005c40 	.word	0x40005c40
 8001fcc:	40005c44 	.word	0x40005c44

08001fd0 <Suspend>:
 8001fd0:	b480      	push	{r7}
 8001fd2:	af00      	add	r7, sp, #0
 8001fd4:	46bd      	mov	sp, r7
 8001fd6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001fda:	4770      	bx	lr

08001fdc <Resume_Init>:
 8001fdc:	b480      	push	{r7}
 8001fde:	af00      	add	r7, sp, #0
 8001fe0:	46bd      	mov	sp, r7
 8001fe2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001fe6:	4770      	bx	lr

08001fe8 <Resume>:
 8001fe8:	b480      	push	{r7}
 8001fea:	b083      	sub	sp, #12
 8001fec:	af00      	add	r7, sp, #0
 8001fee:	4603      	mov	r3, r0
 8001ff0:	71fb      	strb	r3, [r7, #7]
 8001ff2:	370c      	adds	r7, #12
 8001ff4:	46bd      	mov	sp, r7
 8001ff6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ffa:	4770      	bx	lr

08001ffc <SetCNTR>:
 8001ffc:	b480      	push	{r7}
 8001ffe:	b083      	sub	sp, #12
 8002000:	af00      	add	r7, sp, #0
 8002002:	4603      	mov	r3, r0
 8002004:	80fb      	strh	r3, [r7, #6]
 8002006:	4a04      	ldr	r2, [pc, #16]	; (8002018 <SetCNTR+0x1c>)
 8002008:	88fb      	ldrh	r3, [r7, #6]
 800200a:	6013      	str	r3, [r2, #0]
 800200c:	370c      	adds	r7, #12
 800200e:	46bd      	mov	sp, r7
 8002010:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002014:	4770      	bx	lr
 8002016:	bf00      	nop
 8002018:	40005c40 	.word	0x40005c40

0800201c <GetCNTR>:
 800201c:	b480      	push	{r7}
 800201e:	af00      	add	r7, sp, #0
 8002020:	4b03      	ldr	r3, [pc, #12]	; (8002030 <GetCNTR+0x14>)
 8002022:	681b      	ldr	r3, [r3, #0]
 8002024:	b29b      	uxth	r3, r3
 8002026:	4618      	mov	r0, r3
 8002028:	46bd      	mov	sp, r7
 800202a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800202e:	4770      	bx	lr
 8002030:	40005c40 	.word	0x40005c40

08002034 <SetISTR>:
 8002034:	b480      	push	{r7}
 8002036:	b083      	sub	sp, #12
 8002038:	af00      	add	r7, sp, #0
 800203a:	4603      	mov	r3, r0
 800203c:	80fb      	strh	r3, [r7, #6]
 800203e:	4a04      	ldr	r2, [pc, #16]	; (8002050 <SetISTR+0x1c>)
 8002040:	88fb      	ldrh	r3, [r7, #6]
 8002042:	6013      	str	r3, [r2, #0]
 8002044:	370c      	adds	r7, #12
 8002046:	46bd      	mov	sp, r7
 8002048:	f85d 7b04 	ldr.w	r7, [sp], #4
 800204c:	4770      	bx	lr
 800204e:	bf00      	nop
 8002050:	40005c44 	.word	0x40005c44

08002054 <GetISTR>:
 8002054:	b480      	push	{r7}
 8002056:	af00      	add	r7, sp, #0
 8002058:	4b03      	ldr	r3, [pc, #12]	; (8002068 <GetISTR+0x14>)
 800205a:	681b      	ldr	r3, [r3, #0]
 800205c:	b29b      	uxth	r3, r3
 800205e:	4618      	mov	r0, r3
 8002060:	46bd      	mov	sp, r7
 8002062:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002066:	4770      	bx	lr
 8002068:	40005c44 	.word	0x40005c44

0800206c <GetFNR>:
 800206c:	b480      	push	{r7}
 800206e:	af00      	add	r7, sp, #0
 8002070:	4b03      	ldr	r3, [pc, #12]	; (8002080 <GetFNR+0x14>)
 8002072:	681b      	ldr	r3, [r3, #0]
 8002074:	b29b      	uxth	r3, r3
 8002076:	4618      	mov	r0, r3
 8002078:	46bd      	mov	sp, r7
 800207a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800207e:	4770      	bx	lr
 8002080:	40005c48 	.word	0x40005c48

08002084 <SetDADDR>:
 8002084:	b480      	push	{r7}
 8002086:	b083      	sub	sp, #12
 8002088:	af00      	add	r7, sp, #0
 800208a:	4603      	mov	r3, r0
 800208c:	80fb      	strh	r3, [r7, #6]
 800208e:	4a04      	ldr	r2, [pc, #16]	; (80020a0 <SetDADDR+0x1c>)
 8002090:	88fb      	ldrh	r3, [r7, #6]
 8002092:	6013      	str	r3, [r2, #0]
 8002094:	370c      	adds	r7, #12
 8002096:	46bd      	mov	sp, r7
 8002098:	f85d 7b04 	ldr.w	r7, [sp], #4
 800209c:	4770      	bx	lr
 800209e:	bf00      	nop
 80020a0:	40005c4c 	.word	0x40005c4c

080020a4 <GetDADDR>:
 80020a4:	b480      	push	{r7}
 80020a6:	af00      	add	r7, sp, #0
 80020a8:	4b03      	ldr	r3, [pc, #12]	; (80020b8 <GetDADDR+0x14>)
 80020aa:	681b      	ldr	r3, [r3, #0]
 80020ac:	b29b      	uxth	r3, r3
 80020ae:	4618      	mov	r0, r3
 80020b0:	46bd      	mov	sp, r7
 80020b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020b6:	4770      	bx	lr
 80020b8:	40005c4c 	.word	0x40005c4c

080020bc <SetBTABLE>:
 80020bc:	b480      	push	{r7}
 80020be:	b083      	sub	sp, #12
 80020c0:	af00      	add	r7, sp, #0
 80020c2:	4603      	mov	r3, r0
 80020c4:	80fb      	strh	r3, [r7, #6]
 80020c6:	4905      	ldr	r1, [pc, #20]	; (80020dc <SetBTABLE+0x20>)
 80020c8:	88fa      	ldrh	r2, [r7, #6]
 80020ca:	f64f 73f8 	movw	r3, #65528	; 0xfff8
 80020ce:	4013      	ands	r3, r2
 80020d0:	600b      	str	r3, [r1, #0]
 80020d2:	370c      	adds	r7, #12
 80020d4:	46bd      	mov	sp, r7
 80020d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020da:	4770      	bx	lr
 80020dc:	40005c50 	.word	0x40005c50

080020e0 <GetBTABLE>:
 80020e0:	b480      	push	{r7}
 80020e2:	af00      	add	r7, sp, #0
 80020e4:	4b03      	ldr	r3, [pc, #12]	; (80020f4 <GetBTABLE+0x14>)
 80020e6:	681b      	ldr	r3, [r3, #0]
 80020e8:	b29b      	uxth	r3, r3
 80020ea:	4618      	mov	r0, r3
 80020ec:	46bd      	mov	sp, r7
 80020ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020f2:	4770      	bx	lr
 80020f4:	40005c50 	.word	0x40005c50

080020f8 <SetENDPOINT>:
 80020f8:	b480      	push	{r7}
 80020fa:	b083      	sub	sp, #12
 80020fc:	af00      	add	r7, sp, #0
 80020fe:	4603      	mov	r3, r0
 8002100:	460a      	mov	r2, r1
 8002102:	71fb      	strb	r3, [r7, #7]
 8002104:	4613      	mov	r3, r2
 8002106:	80bb      	strh	r3, [r7, #4]
 8002108:	79fb      	ldrb	r3, [r7, #7]
 800210a:	009b      	lsls	r3, r3, #2
 800210c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002110:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002114:	88ba      	ldrh	r2, [r7, #4]
 8002116:	601a      	str	r2, [r3, #0]
 8002118:	370c      	adds	r7, #12
 800211a:	46bd      	mov	sp, r7
 800211c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002120:	4770      	bx	lr
 8002122:	bf00      	nop

08002124 <GetENDPOINT>:
 8002124:	b480      	push	{r7}
 8002126:	b083      	sub	sp, #12
 8002128:	af00      	add	r7, sp, #0
 800212a:	4603      	mov	r3, r0
 800212c:	71fb      	strb	r3, [r7, #7]
 800212e:	79fb      	ldrb	r3, [r7, #7]
 8002130:	009b      	lsls	r3, r3, #2
 8002132:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002136:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800213a:	681b      	ldr	r3, [r3, #0]
 800213c:	b29b      	uxth	r3, r3
 800213e:	4618      	mov	r0, r3
 8002140:	370c      	adds	r7, #12
 8002142:	46bd      	mov	sp, r7
 8002144:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002148:	4770      	bx	lr
 800214a:	bf00      	nop

0800214c <SetEPType>:
 800214c:	b480      	push	{r7}
 800214e:	b083      	sub	sp, #12
 8002150:	af00      	add	r7, sp, #0
 8002152:	4603      	mov	r3, r0
 8002154:	460a      	mov	r2, r1
 8002156:	71fb      	strb	r3, [r7, #7]
 8002158:	4613      	mov	r3, r2
 800215a:	80bb      	strh	r3, [r7, #4]
 800215c:	79fb      	ldrb	r3, [r7, #7]
 800215e:	009b      	lsls	r3, r3, #2
 8002160:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002164:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002168:	79fa      	ldrb	r2, [r7, #7]
 800216a:	0092      	lsls	r2, r2, #2
 800216c:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8002170:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8002174:	6812      	ldr	r2, [r2, #0]
 8002176:	b292      	uxth	r2, r2
 8002178:	f422 42ec 	bic.w	r2, r2, #30208	; 0x7600
 800217c:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 8002180:	b291      	uxth	r1, r2
 8002182:	88ba      	ldrh	r2, [r7, #4]
 8002184:	430a      	orrs	r2, r1
 8002186:	b292      	uxth	r2, r2
 8002188:	b292      	uxth	r2, r2
 800218a:	601a      	str	r2, [r3, #0]
 800218c:	370c      	adds	r7, #12
 800218e:	46bd      	mov	sp, r7
 8002190:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002194:	4770      	bx	lr
 8002196:	bf00      	nop

08002198 <GetEPType>:
 8002198:	b480      	push	{r7}
 800219a:	b083      	sub	sp, #12
 800219c:	af00      	add	r7, sp, #0
 800219e:	4603      	mov	r3, r0
 80021a0:	71fb      	strb	r3, [r7, #7]
 80021a2:	79fb      	ldrb	r3, [r7, #7]
 80021a4:	009b      	lsls	r3, r3, #2
 80021a6:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80021aa:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80021ae:	681b      	ldr	r3, [r3, #0]
 80021b0:	b29b      	uxth	r3, r3
 80021b2:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
 80021b6:	b29b      	uxth	r3, r3
 80021b8:	4618      	mov	r0, r3
 80021ba:	370c      	adds	r7, #12
 80021bc:	46bd      	mov	sp, r7
 80021be:	f85d 7b04 	ldr.w	r7, [sp], #4
 80021c2:	4770      	bx	lr

080021c4 <SetEPTxStatus>:
 80021c4:	b490      	push	{r4, r7}
 80021c6:	b082      	sub	sp, #8
 80021c8:	af00      	add	r7, sp, #0
 80021ca:	4603      	mov	r3, r0
 80021cc:	460a      	mov	r2, r1
 80021ce:	71fb      	strb	r3, [r7, #7]
 80021d0:	4613      	mov	r3, r2
 80021d2:	80bb      	strh	r3, [r7, #4]
 80021d4:	79fb      	ldrb	r3, [r7, #7]
 80021d6:	009b      	lsls	r3, r3, #2
 80021d8:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80021dc:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80021e0:	681b      	ldr	r3, [r3, #0]
 80021e2:	b29b      	uxth	r3, r3
 80021e4:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 80021e8:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80021ec:	b29c      	uxth	r4, r3
 80021ee:	88bb      	ldrh	r3, [r7, #4]
 80021f0:	f003 0310 	and.w	r3, r3, #16
 80021f4:	b29b      	uxth	r3, r3
 80021f6:	2b00      	cmp	r3, #0
 80021f8:	d002      	beq.n	8002200 <SetEPTxStatus+0x3c>
 80021fa:	f084 0310 	eor.w	r3, r4, #16
 80021fe:	b29c      	uxth	r4, r3
 8002200:	88bb      	ldrh	r3, [r7, #4]
 8002202:	f003 0320 	and.w	r3, r3, #32
 8002206:	b29b      	uxth	r3, r3
 8002208:	2b00      	cmp	r3, #0
 800220a:	d002      	beq.n	8002212 <SetEPTxStatus+0x4e>
 800220c:	f084 0320 	eor.w	r3, r4, #32
 8002210:	b29c      	uxth	r4, r3
 8002212:	79fb      	ldrb	r3, [r7, #7]
 8002214:	009b      	lsls	r3, r3, #2
 8002216:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800221a:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800221e:	4a04      	ldr	r2, [pc, #16]	; (8002230 <SetEPTxStatus+0x6c>)
 8002220:	4322      	orrs	r2, r4
 8002222:	b292      	uxth	r2, r2
 8002224:	601a      	str	r2, [r3, #0]
 8002226:	3708      	adds	r7, #8
 8002228:	46bd      	mov	sp, r7
 800222a:	bc90      	pop	{r4, r7}
 800222c:	4770      	bx	lr
 800222e:	bf00      	nop
 8002230:	ffff8080 	.word	0xffff8080

08002234 <SetEPRxStatus>:
 8002234:	b490      	push	{r4, r7}
 8002236:	b082      	sub	sp, #8
 8002238:	af00      	add	r7, sp, #0
 800223a:	4603      	mov	r3, r0
 800223c:	460a      	mov	r2, r1
 800223e:	71fb      	strb	r3, [r7, #7]
 8002240:	4613      	mov	r3, r2
 8002242:	80bb      	strh	r3, [r7, #4]
 8002244:	79fb      	ldrb	r3, [r7, #7]
 8002246:	009b      	lsls	r3, r3, #2
 8002248:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800224c:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002250:	681b      	ldr	r3, [r3, #0]
 8002252:	b29b      	uxth	r3, r3
 8002254:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8002258:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800225c:	b29c      	uxth	r4, r3
 800225e:	88bb      	ldrh	r3, [r7, #4]
 8002260:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8002264:	b29b      	uxth	r3, r3
 8002266:	2b00      	cmp	r3, #0
 8002268:	d002      	beq.n	8002270 <SetEPRxStatus+0x3c>
 800226a:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 800226e:	b29c      	uxth	r4, r3
 8002270:	88bb      	ldrh	r3, [r7, #4]
 8002272:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8002276:	b29b      	uxth	r3, r3
 8002278:	2b00      	cmp	r3, #0
 800227a:	d002      	beq.n	8002282 <SetEPRxStatus+0x4e>
 800227c:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8002280:	b29c      	uxth	r4, r3
 8002282:	79fb      	ldrb	r3, [r7, #7]
 8002284:	009b      	lsls	r3, r3, #2
 8002286:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800228a:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800228e:	4a04      	ldr	r2, [pc, #16]	; (80022a0 <SetEPRxStatus+0x6c>)
 8002290:	4322      	orrs	r2, r4
 8002292:	b292      	uxth	r2, r2
 8002294:	601a      	str	r2, [r3, #0]
 8002296:	3708      	adds	r7, #8
 8002298:	46bd      	mov	sp, r7
 800229a:	bc90      	pop	{r4, r7}
 800229c:	4770      	bx	lr
 800229e:	bf00      	nop
 80022a0:	ffff8080 	.word	0xffff8080

080022a4 <SetDouBleBuffEPStall>:
 80022a4:	b580      	push	{r7, lr}
 80022a6:	b084      	sub	sp, #16
 80022a8:	af00      	add	r7, sp, #0
 80022aa:	4603      	mov	r3, r0
 80022ac:	460a      	mov	r2, r1
 80022ae:	71fb      	strb	r3, [r7, #7]
 80022b0:	4613      	mov	r3, r2
 80022b2:	71bb      	strb	r3, [r7, #6]
 80022b4:	79fb      	ldrb	r3, [r7, #7]
 80022b6:	4618      	mov	r0, r3
 80022b8:	f7ff ff34 	bl	8002124 <GetENDPOINT>
 80022bc:	4603      	mov	r3, r0
 80022be:	81fb      	strh	r3, [r7, #14]
 80022c0:	79bb      	ldrb	r3, [r7, #6]
 80022c2:	2b01      	cmp	r3, #1
 80022c4:	d10a      	bne.n	80022dc <SetDouBleBuffEPStall+0x38>
 80022c6:	79fb      	ldrb	r3, [r7, #7]
 80022c8:	009b      	lsls	r3, r3, #2
 80022ca:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80022ce:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80022d2:	89fa      	ldrh	r2, [r7, #14]
 80022d4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80022d8:	601a      	str	r2, [r3, #0]
 80022da:	e00c      	b.n	80022f6 <SetDouBleBuffEPStall+0x52>
 80022dc:	79bb      	ldrb	r3, [r7, #6]
 80022de:	2b02      	cmp	r3, #2
 80022e0:	d109      	bne.n	80022f6 <SetDouBleBuffEPStall+0x52>
 80022e2:	79fb      	ldrb	r3, [r7, #7]
 80022e4:	009b      	lsls	r3, r3, #2
 80022e6:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80022ea:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80022ee:	89fa      	ldrh	r2, [r7, #14]
 80022f0:	f022 0210 	bic.w	r2, r2, #16
 80022f4:	601a      	str	r2, [r3, #0]
 80022f6:	3710      	adds	r7, #16
 80022f8:	46bd      	mov	sp, r7
 80022fa:	bd80      	pop	{r7, pc}

080022fc <GetEPTxStatus>:
 80022fc:	b480      	push	{r7}
 80022fe:	b083      	sub	sp, #12
 8002300:	af00      	add	r7, sp, #0
 8002302:	4603      	mov	r3, r0
 8002304:	71fb      	strb	r3, [r7, #7]
 8002306:	79fb      	ldrb	r3, [r7, #7]
 8002308:	009b      	lsls	r3, r3, #2
 800230a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800230e:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002312:	681b      	ldr	r3, [r3, #0]
 8002314:	b29b      	uxth	r3, r3
 8002316:	f003 0330 	and.w	r3, r3, #48	; 0x30
 800231a:	b29b      	uxth	r3, r3
 800231c:	4618      	mov	r0, r3
 800231e:	370c      	adds	r7, #12
 8002320:	46bd      	mov	sp, r7
 8002322:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002326:	4770      	bx	lr

08002328 <GetEPRxStatus>:
 8002328:	b480      	push	{r7}
 800232a:	b083      	sub	sp, #12
 800232c:	af00      	add	r7, sp, #0
 800232e:	4603      	mov	r3, r0
 8002330:	71fb      	strb	r3, [r7, #7]
 8002332:	79fb      	ldrb	r3, [r7, #7]
 8002334:	009b      	lsls	r3, r3, #2
 8002336:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800233a:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800233e:	681b      	ldr	r3, [r3, #0]
 8002340:	b29b      	uxth	r3, r3
 8002342:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 8002346:	b29b      	uxth	r3, r3
 8002348:	4618      	mov	r0, r3
 800234a:	370c      	adds	r7, #12
 800234c:	46bd      	mov	sp, r7
 800234e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002352:	4770      	bx	lr

08002354 <SetEPTxValid>:
 8002354:	b490      	push	{r4, r7}
 8002356:	b082      	sub	sp, #8
 8002358:	af00      	add	r7, sp, #0
 800235a:	4603      	mov	r3, r0
 800235c:	71fb      	strb	r3, [r7, #7]
 800235e:	79fb      	ldrb	r3, [r7, #7]
 8002360:	009b      	lsls	r3, r3, #2
 8002362:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002366:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800236a:	681b      	ldr	r3, [r3, #0]
 800236c:	b29b      	uxth	r3, r3
 800236e:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8002372:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002376:	b29c      	uxth	r4, r3
 8002378:	f084 0310 	eor.w	r3, r4, #16
 800237c:	b29c      	uxth	r4, r3
 800237e:	f084 0320 	eor.w	r3, r4, #32
 8002382:	b29c      	uxth	r4, r3
 8002384:	79fb      	ldrb	r3, [r7, #7]
 8002386:	009b      	lsls	r3, r3, #2
 8002388:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800238c:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002390:	4a03      	ldr	r2, [pc, #12]	; (80023a0 <SetEPTxValid+0x4c>)
 8002392:	4322      	orrs	r2, r4
 8002394:	b292      	uxth	r2, r2
 8002396:	601a      	str	r2, [r3, #0]
 8002398:	3708      	adds	r7, #8
 800239a:	46bd      	mov	sp, r7
 800239c:	bc90      	pop	{r4, r7}
 800239e:	4770      	bx	lr
 80023a0:	ffff8080 	.word	0xffff8080

080023a4 <SetEPRxValid>:
 80023a4:	b490      	push	{r4, r7}
 80023a6:	b082      	sub	sp, #8
 80023a8:	af00      	add	r7, sp, #0
 80023aa:	4603      	mov	r3, r0
 80023ac:	71fb      	strb	r3, [r7, #7]
 80023ae:	79fb      	ldrb	r3, [r7, #7]
 80023b0:	009b      	lsls	r3, r3, #2
 80023b2:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80023b6:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80023ba:	681b      	ldr	r3, [r3, #0]
 80023bc:	b29b      	uxth	r3, r3
 80023be:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80023c2:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80023c6:	b29c      	uxth	r4, r3
 80023c8:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80023cc:	b29c      	uxth	r4, r3
 80023ce:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80023d2:	b29c      	uxth	r4, r3
 80023d4:	79fb      	ldrb	r3, [r7, #7]
 80023d6:	009b      	lsls	r3, r3, #2
 80023d8:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80023dc:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80023e0:	4a03      	ldr	r2, [pc, #12]	; (80023f0 <SetEPRxValid+0x4c>)
 80023e2:	4322      	orrs	r2, r4
 80023e4:	b292      	uxth	r2, r2
 80023e6:	601a      	str	r2, [r3, #0]
 80023e8:	3708      	adds	r7, #8
 80023ea:	46bd      	mov	sp, r7
 80023ec:	bc90      	pop	{r4, r7}
 80023ee:	4770      	bx	lr
 80023f0:	ffff8080 	.word	0xffff8080

080023f4 <SetEP_KIND>:
 80023f4:	b480      	push	{r7}
 80023f6:	b083      	sub	sp, #12
 80023f8:	af00      	add	r7, sp, #0
 80023fa:	4603      	mov	r3, r0
 80023fc:	71fb      	strb	r3, [r7, #7]
 80023fe:	79fb      	ldrb	r3, [r7, #7]
 8002400:	009b      	lsls	r3, r3, #2
 8002402:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 8002406:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800240a:	79fb      	ldrb	r3, [r7, #7]
 800240c:	009b      	lsls	r3, r3, #2
 800240e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002412:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002416:	681b      	ldr	r3, [r3, #0]
 8002418:	b29b      	uxth	r3, r3
 800241a:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 800241e:	051b      	lsls	r3, r3, #20
 8002420:	0d1b      	lsrs	r3, r3, #20
 8002422:	b29b      	uxth	r3, r3
 8002424:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 8002428:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 800242c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
 8002430:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002434:	b29b      	uxth	r3, r3
 8002436:	b29b      	uxth	r3, r3
 8002438:	6013      	str	r3, [r2, #0]
 800243a:	370c      	adds	r7, #12
 800243c:	46bd      	mov	sp, r7
 800243e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002442:	4770      	bx	lr

08002444 <ClearEP_KIND>:
 8002444:	b480      	push	{r7}
 8002446:	b083      	sub	sp, #12
 8002448:	af00      	add	r7, sp, #0
 800244a:	4603      	mov	r3, r0
 800244c:	71fb      	strb	r3, [r7, #7]
 800244e:	79fb      	ldrb	r3, [r7, #7]
 8002450:	009b      	lsls	r3, r3, #2
 8002452:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 8002456:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800245a:	79fb      	ldrb	r3, [r7, #7]
 800245c:	009b      	lsls	r3, r3, #2
 800245e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002462:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002466:	681b      	ldr	r3, [r3, #0]
 8002468:	b29b      	uxth	r3, r3
 800246a:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 800246e:	051b      	lsls	r3, r3, #20
 8002470:	0d1b      	lsrs	r3, r3, #20
 8002472:	b29b      	uxth	r3, r3
 8002474:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 8002478:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 800247c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002480:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002484:	b29b      	uxth	r3, r3
 8002486:	b29b      	uxth	r3, r3
 8002488:	6013      	str	r3, [r2, #0]
 800248a:	370c      	adds	r7, #12
 800248c:	46bd      	mov	sp, r7
 800248e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002492:	4770      	bx	lr

08002494 <Clear_Status_Out>:
 8002494:	b480      	push	{r7}
 8002496:	b083      	sub	sp, #12
 8002498:	af00      	add	r7, sp, #0
 800249a:	4603      	mov	r3, r0
 800249c:	71fb      	strb	r3, [r7, #7]
 800249e:	79fb      	ldrb	r3, [r7, #7]
 80024a0:	009b      	lsls	r3, r3, #2
 80024a2:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 80024a6:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80024aa:	79fb      	ldrb	r3, [r7, #7]
 80024ac:	009b      	lsls	r3, r3, #2
 80024ae:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80024b2:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80024b6:	681b      	ldr	r3, [r3, #0]
 80024b8:	b29b      	uxth	r3, r3
 80024ba:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 80024be:	051b      	lsls	r3, r3, #20
 80024c0:	0d1b      	lsrs	r3, r3, #20
 80024c2:	b29b      	uxth	r3, r3
 80024c4:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 80024c8:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 80024cc:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80024d0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80024d4:	b29b      	uxth	r3, r3
 80024d6:	b29b      	uxth	r3, r3
 80024d8:	6013      	str	r3, [r2, #0]
 80024da:	370c      	adds	r7, #12
 80024dc:	46bd      	mov	sp, r7
 80024de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80024e2:	4770      	bx	lr

080024e4 <Set_Status_Out>:
 80024e4:	b480      	push	{r7}
 80024e6:	b083      	sub	sp, #12
 80024e8:	af00      	add	r7, sp, #0
 80024ea:	4603      	mov	r3, r0
 80024ec:	71fb      	strb	r3, [r7, #7]
 80024ee:	79fb      	ldrb	r3, [r7, #7]
 80024f0:	009b      	lsls	r3, r3, #2
 80024f2:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 80024f6:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80024fa:	79fb      	ldrb	r3, [r7, #7]
 80024fc:	009b      	lsls	r3, r3, #2
 80024fe:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002502:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002506:	681b      	ldr	r3, [r3, #0]
 8002508:	b29b      	uxth	r3, r3
 800250a:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 800250e:	051b      	lsls	r3, r3, #20
 8002510:	0d1b      	lsrs	r3, r3, #20
 8002512:	b29b      	uxth	r3, r3
 8002514:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 8002518:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 800251c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
 8002520:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002524:	b29b      	uxth	r3, r3
 8002526:	b29b      	uxth	r3, r3
 8002528:	6013      	str	r3, [r2, #0]
 800252a:	370c      	adds	r7, #12
 800252c:	46bd      	mov	sp, r7
 800252e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002532:	4770      	bx	lr

08002534 <SetEPDoubleBuff>:
 8002534:	b480      	push	{r7}
 8002536:	b083      	sub	sp, #12
 8002538:	af00      	add	r7, sp, #0
 800253a:	4603      	mov	r3, r0
 800253c:	71fb      	strb	r3, [r7, #7]
 800253e:	79fb      	ldrb	r3, [r7, #7]
 8002540:	009b      	lsls	r3, r3, #2
 8002542:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 8002546:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800254a:	79fb      	ldrb	r3, [r7, #7]
 800254c:	009b      	lsls	r3, r3, #2
 800254e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002552:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002556:	681b      	ldr	r3, [r3, #0]
 8002558:	b29b      	uxth	r3, r3
 800255a:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 800255e:	051b      	lsls	r3, r3, #20
 8002560:	0d1b      	lsrs	r3, r3, #20
 8002562:	b29b      	uxth	r3, r3
 8002564:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 8002568:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 800256c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
 8002570:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002574:	b29b      	uxth	r3, r3
 8002576:	b29b      	uxth	r3, r3
 8002578:	6013      	str	r3, [r2, #0]
 800257a:	370c      	adds	r7, #12
 800257c:	46bd      	mov	sp, r7
 800257e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002582:	4770      	bx	lr

08002584 <ClearEPDoubleBuff>:
 8002584:	b480      	push	{r7}
 8002586:	b083      	sub	sp, #12
 8002588:	af00      	add	r7, sp, #0
 800258a:	4603      	mov	r3, r0
 800258c:	71fb      	strb	r3, [r7, #7]
 800258e:	79fb      	ldrb	r3, [r7, #7]
 8002590:	009b      	lsls	r3, r3, #2
 8002592:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 8002596:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800259a:	79fb      	ldrb	r3, [r7, #7]
 800259c:	009b      	lsls	r3, r3, #2
 800259e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80025a2:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80025a6:	681b      	ldr	r3, [r3, #0]
 80025a8:	b29b      	uxth	r3, r3
 80025aa:	f423 73f8 	bic.w	r3, r3, #496	; 0x1f0
 80025ae:	051b      	lsls	r3, r3, #20
 80025b0:	0d1b      	lsrs	r3, r3, #20
 80025b2:	b29b      	uxth	r3, r3
 80025b4:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
 80025b8:	f443 037f 	orr.w	r3, r3, #16711680	; 0xff0000
 80025bc:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80025c0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80025c4:	b29b      	uxth	r3, r3
 80025c6:	b29b      	uxth	r3, r3
 80025c8:	6013      	str	r3, [r2, #0]
 80025ca:	370c      	adds	r7, #12
 80025cc:	46bd      	mov	sp, r7
 80025ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80025d2:	4770      	bx	lr

080025d4 <GetTxStallStatus>:
 80025d4:	b480      	push	{r7}
 80025d6:	b083      	sub	sp, #12
 80025d8:	af00      	add	r7, sp, #0
 80025da:	4603      	mov	r3, r0
 80025dc:	71fb      	strb	r3, [r7, #7]
 80025de:	79fb      	ldrb	r3, [r7, #7]
 80025e0:	009b      	lsls	r3, r3, #2
 80025e2:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80025e6:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80025ea:	681b      	ldr	r3, [r3, #0]
 80025ec:	b29b      	uxth	r3, r3
 80025ee:	f003 0330 	and.w	r3, r3, #48	; 0x30
 80025f2:	2b10      	cmp	r3, #16
 80025f4:	bf0c      	ite	eq
 80025f6:	2301      	moveq	r3, #1
 80025f8:	2300      	movne	r3, #0
 80025fa:	b2db      	uxtb	r3, r3
 80025fc:	b29b      	uxth	r3, r3
 80025fe:	4618      	mov	r0, r3
 8002600:	370c      	adds	r7, #12
 8002602:	46bd      	mov	sp, r7
 8002604:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002608:	4770      	bx	lr
 800260a:	bf00      	nop

0800260c <GetRxStallStatus>:
 800260c:	b480      	push	{r7}
 800260e:	b083      	sub	sp, #12
 8002610:	af00      	add	r7, sp, #0
 8002612:	4603      	mov	r3, r0
 8002614:	71fb      	strb	r3, [r7, #7]
 8002616:	79fb      	ldrb	r3, [r7, #7]
 8002618:	009b      	lsls	r3, r3, #2
 800261a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800261e:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002622:	681b      	ldr	r3, [r3, #0]
 8002624:	b29b      	uxth	r3, r3
 8002626:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 800262a:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 800262e:	bf0c      	ite	eq
 8002630:	2301      	moveq	r3, #1
 8002632:	2300      	movne	r3, #0
 8002634:	b2db      	uxtb	r3, r3
 8002636:	b29b      	uxth	r3, r3
 8002638:	4618      	mov	r0, r3
 800263a:	370c      	adds	r7, #12
 800263c:	46bd      	mov	sp, r7
 800263e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002642:	4770      	bx	lr

08002644 <ClearEP_CTR_RX>:
 8002644:	b480      	push	{r7}
 8002646:	b083      	sub	sp, #12
 8002648:	af00      	add	r7, sp, #0
 800264a:	4603      	mov	r3, r0
 800264c:	71fb      	strb	r3, [r7, #7]
 800264e:	79fb      	ldrb	r3, [r7, #7]
 8002650:	009b      	lsls	r3, r3, #2
 8002652:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002656:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800265a:	79fa      	ldrb	r2, [r7, #7]
 800265c:	0092      	lsls	r2, r2, #2
 800265e:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8002662:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8002666:	6812      	ldr	r2, [r2, #0]
 8002668:	b292      	uxth	r2, r2
 800266a:	4611      	mov	r1, r2
 800266c:	f640 728f 	movw	r2, #3983	; 0xf8f
 8002670:	400a      	ands	r2, r1
 8002672:	601a      	str	r2, [r3, #0]
 8002674:	370c      	adds	r7, #12
 8002676:	46bd      	mov	sp, r7
 8002678:	f85d 7b04 	ldr.w	r7, [sp], #4
 800267c:	4770      	bx	lr
 800267e:	bf00      	nop

08002680 <ClearEP_CTR_TX>:
 8002680:	b480      	push	{r7}
 8002682:	b083      	sub	sp, #12
 8002684:	af00      	add	r7, sp, #0
 8002686:	4603      	mov	r3, r0
 8002688:	71fb      	strb	r3, [r7, #7]
 800268a:	79fb      	ldrb	r3, [r7, #7]
 800268c:	009b      	lsls	r3, r3, #2
 800268e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002692:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002696:	79fa      	ldrb	r2, [r7, #7]
 8002698:	0092      	lsls	r2, r2, #2
 800269a:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800269e:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80026a2:	6812      	ldr	r2, [r2, #0]
 80026a4:	b292      	uxth	r2, r2
 80026a6:	4611      	mov	r1, r2
 80026a8:	f648 720f 	movw	r2, #36623	; 0x8f0f
 80026ac:	400a      	ands	r2, r1
 80026ae:	601a      	str	r2, [r3, #0]
 80026b0:	370c      	adds	r7, #12
 80026b2:	46bd      	mov	sp, r7
 80026b4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026b8:	4770      	bx	lr
 80026ba:	bf00      	nop

080026bc <ToggleDTOG_RX>:
 80026bc:	b480      	push	{r7}
 80026be:	b083      	sub	sp, #12
 80026c0:	af00      	add	r7, sp, #0
 80026c2:	4603      	mov	r3, r0
 80026c4:	71fb      	strb	r3, [r7, #7]
 80026c6:	79fb      	ldrb	r3, [r7, #7]
 80026c8:	009b      	lsls	r3, r3, #2
 80026ca:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80026ce:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80026d2:	79fa      	ldrb	r2, [r7, #7]
 80026d4:	0092      	lsls	r2, r2, #2
 80026d6:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 80026da:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80026de:	6812      	ldr	r2, [r2, #0]
 80026e0:	b292      	uxth	r2, r2
 80026e2:	4611      	mov	r1, r2
 80026e4:	f640 720f 	movw	r2, #3855	; 0xf0f
 80026e8:	400a      	ands	r2, r1
 80026ea:	f442 4240 	orr.w	r2, r2, #49152	; 0xc000
 80026ee:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80026f2:	601a      	str	r2, [r3, #0]
 80026f4:	370c      	adds	r7, #12
 80026f6:	46bd      	mov	sp, r7
 80026f8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026fc:	4770      	bx	lr
 80026fe:	bf00      	nop

08002700 <ToggleDTOG_TX>:
 8002700:	b480      	push	{r7}
 8002702:	b083      	sub	sp, #12
 8002704:	af00      	add	r7, sp, #0
 8002706:	4603      	mov	r3, r0
 8002708:	71fb      	strb	r3, [r7, #7]
 800270a:	79fb      	ldrb	r3, [r7, #7]
 800270c:	009b      	lsls	r3, r3, #2
 800270e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002712:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002716:	79fa      	ldrb	r2, [r7, #7]
 8002718:	0092      	lsls	r2, r2, #2
 800271a:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800271e:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8002722:	6812      	ldr	r2, [r2, #0]
 8002724:	b292      	uxth	r2, r2
 8002726:	4611      	mov	r1, r2
 8002728:	f640 720f 	movw	r2, #3855	; 0xf0f
 800272c:	400a      	ands	r2, r1
 800272e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8002732:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 8002736:	601a      	str	r2, [r3, #0]
 8002738:	370c      	adds	r7, #12
 800273a:	46bd      	mov	sp, r7
 800273c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002740:	4770      	bx	lr
 8002742:	bf00      	nop

08002744 <ClearDTOG_RX>:
 8002744:	b480      	push	{r7}
 8002746:	b083      	sub	sp, #12
 8002748:	af00      	add	r7, sp, #0
 800274a:	4603      	mov	r3, r0
 800274c:	71fb      	strb	r3, [r7, #7]
 800274e:	79fb      	ldrb	r3, [r7, #7]
 8002750:	009b      	lsls	r3, r3, #2
 8002752:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002756:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800275a:	681b      	ldr	r3, [r3, #0]
 800275c:	b29b      	uxth	r3, r3
 800275e:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8002762:	2b00      	cmp	r3, #0
 8002764:	d016      	beq.n	8002794 <ClearDTOG_RX+0x50>
 8002766:	79fb      	ldrb	r3, [r7, #7]
 8002768:	009b      	lsls	r3, r3, #2
 800276a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800276e:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002772:	79fa      	ldrb	r2, [r7, #7]
 8002774:	0092      	lsls	r2, r2, #2
 8002776:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800277a:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800277e:	6812      	ldr	r2, [r2, #0]
 8002780:	b292      	uxth	r2, r2
 8002782:	4611      	mov	r1, r2
 8002784:	f640 720f 	movw	r2, #3855	; 0xf0f
 8002788:	400a      	ands	r2, r1
 800278a:	f442 4240 	orr.w	r2, r2, #49152	; 0xc000
 800278e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002792:	601a      	str	r2, [r3, #0]
 8002794:	370c      	adds	r7, #12
 8002796:	46bd      	mov	sp, r7
 8002798:	f85d 7b04 	ldr.w	r7, [sp], #4
 800279c:	4770      	bx	lr
 800279e:	bf00      	nop

080027a0 <ClearDTOG_TX>:
 80027a0:	b480      	push	{r7}
 80027a2:	b083      	sub	sp, #12
 80027a4:	af00      	add	r7, sp, #0
 80027a6:	4603      	mov	r3, r0
 80027a8:	71fb      	strb	r3, [r7, #7]
 80027aa:	79fb      	ldrb	r3, [r7, #7]
 80027ac:	009b      	lsls	r3, r3, #2
 80027ae:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80027b2:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80027b6:	681b      	ldr	r3, [r3, #0]
 80027b8:	b29b      	uxth	r3, r3
 80027ba:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80027be:	2b00      	cmp	r3, #0
 80027c0:	d016      	beq.n	80027f0 <ClearDTOG_TX+0x50>
 80027c2:	79fb      	ldrb	r3, [r7, #7]
 80027c4:	009b      	lsls	r3, r3, #2
 80027c6:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80027ca:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80027ce:	79fa      	ldrb	r2, [r7, #7]
 80027d0:	0092      	lsls	r2, r2, #2
 80027d2:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 80027d6:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80027da:	6812      	ldr	r2, [r2, #0]
 80027dc:	b292      	uxth	r2, r2
 80027de:	4611      	mov	r1, r2
 80027e0:	f640 720f 	movw	r2, #3855	; 0xf0f
 80027e4:	400a      	ands	r2, r1
 80027e6:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 80027ea:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 80027ee:	601a      	str	r2, [r3, #0]
 80027f0:	370c      	adds	r7, #12
 80027f2:	46bd      	mov	sp, r7
 80027f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027f8:	4770      	bx	lr
 80027fa:	bf00      	nop

080027fc <SetEPAddress>:
 80027fc:	b480      	push	{r7}
 80027fe:	b083      	sub	sp, #12
 8002800:	af00      	add	r7, sp, #0
 8002802:	4603      	mov	r3, r0
 8002804:	460a      	mov	r2, r1
 8002806:	71fb      	strb	r3, [r7, #7]
 8002808:	4613      	mov	r3, r2
 800280a:	71bb      	strb	r3, [r7, #6]
 800280c:	79fb      	ldrb	r3, [r7, #7]
 800280e:	009b      	lsls	r3, r3, #2
 8002810:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8002814:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8002818:	79fa      	ldrb	r2, [r7, #7]
 800281a:	0092      	lsls	r2, r2, #2
 800281c:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8002820:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8002824:	6812      	ldr	r2, [r2, #0]
 8002826:	b292      	uxth	r2, r2
 8002828:	4611      	mov	r1, r2
 800282a:	f640 720f 	movw	r2, #3855	; 0xf0f
 800282e:	400a      	ands	r2, r1
 8002830:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8002834:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002838:	79b9      	ldrb	r1, [r7, #6]
 800283a:	430a      	orrs	r2, r1
 800283c:	601a      	str	r2, [r3, #0]
 800283e:	370c      	adds	r7, #12
 8002840:	46bd      	mov	sp, r7
 8002842:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002846:	4770      	bx	lr

08002848 <GetEPAddress>:
 8002848:	b480      	push	{r7}
 800284a:	b083      	sub	sp, #12
 800284c:	af00      	add	r7, sp, #0
 800284e:	4603      	mov	r3, r0
 8002850:	71fb      	strb	r3, [r7, #7]
 8002852:	79fb      	ldrb	r3, [r7, #7]
 8002854:	009b      	lsls	r3, r3, #2
 8002856:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800285a:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800285e:	681b      	ldr	r3, [r3, #0]
 8002860:	b2db      	uxtb	r3, r3
 8002862:	f003 030f 	and.w	r3, r3, #15
 8002866:	b2db      	uxtb	r3, r3
 8002868:	4618      	mov	r0, r3
 800286a:	370c      	adds	r7, #12
 800286c:	46bd      	mov	sp, r7
 800286e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002872:	4770      	bx	lr

08002874 <SetEPTxAddr>:
 8002874:	b480      	push	{r7}
 8002876:	b083      	sub	sp, #12
 8002878:	af00      	add	r7, sp, #0
 800287a:	4603      	mov	r3, r0
 800287c:	460a      	mov	r2, r1
 800287e:	71fb      	strb	r3, [r7, #7]
 8002880:	4613      	mov	r3, r2
 8002882:	80bb      	strh	r3, [r7, #4]
 8002884:	4b0b      	ldr	r3, [pc, #44]	; (80028b4 <SetEPTxAddr+0x40>)
 8002886:	681b      	ldr	r3, [r3, #0]
 8002888:	b29b      	uxth	r3, r3
 800288a:	461a      	mov	r2, r3
 800288c:	79fb      	ldrb	r3, [r7, #7]
 800288e:	00db      	lsls	r3, r3, #3
 8002890:	4413      	add	r3, r2
 8002892:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8002896:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 800289a:	005b      	lsls	r3, r3, #1
 800289c:	461a      	mov	r2, r3
 800289e:	88bb      	ldrh	r3, [r7, #4]
 80028a0:	085b      	lsrs	r3, r3, #1
 80028a2:	b29b      	uxth	r3, r3
 80028a4:	005b      	lsls	r3, r3, #1
 80028a6:	6013      	str	r3, [r2, #0]
 80028a8:	370c      	adds	r7, #12
 80028aa:	46bd      	mov	sp, r7
 80028ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80028b0:	4770      	bx	lr
 80028b2:	bf00      	nop
 80028b4:	40005c50 	.word	0x40005c50

080028b8 <SetEPRxAddr>:
 80028b8:	b480      	push	{r7}
 80028ba:	b083      	sub	sp, #12
 80028bc:	af00      	add	r7, sp, #0
 80028be:	4603      	mov	r3, r0
 80028c0:	460a      	mov	r2, r1
 80028c2:	71fb      	strb	r3, [r7, #7]
 80028c4:	4613      	mov	r3, r2
 80028c6:	80bb      	strh	r3, [r7, #4]
 80028c8:	4b0a      	ldr	r3, [pc, #40]	; (80028f4 <SetEPRxAddr+0x3c>)
 80028ca:	681b      	ldr	r3, [r3, #0]
 80028cc:	b29b      	uxth	r3, r3
 80028ce:	461a      	mov	r2, r3
 80028d0:	79fb      	ldrb	r3, [r7, #7]
 80028d2:	00db      	lsls	r3, r3, #3
 80028d4:	441a      	add	r2, r3
 80028d6:	4b08      	ldr	r3, [pc, #32]	; (80028f8 <SetEPRxAddr+0x40>)
 80028d8:	4413      	add	r3, r2
 80028da:	005b      	lsls	r3, r3, #1
 80028dc:	461a      	mov	r2, r3
 80028de:	88bb      	ldrh	r3, [r7, #4]
 80028e0:	085b      	lsrs	r3, r3, #1
 80028e2:	b29b      	uxth	r3, r3
 80028e4:	005b      	lsls	r3, r3, #1
 80028e6:	6013      	str	r3, [r2, #0]
 80028e8:	370c      	adds	r7, #12
 80028ea:	46bd      	mov	sp, r7
 80028ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80028f0:	4770      	bx	lr
 80028f2:	bf00      	nop
 80028f4:	40005c50 	.word	0x40005c50
 80028f8:	20003004 	.word	0x20003004

080028fc <GetEPTxAddr>:
 80028fc:	b480      	push	{r7}
 80028fe:	b083      	sub	sp, #12
 8002900:	af00      	add	r7, sp, #0
 8002902:	4603      	mov	r3, r0
 8002904:	71fb      	strb	r3, [r7, #7]
 8002906:	4b0a      	ldr	r3, [pc, #40]	; (8002930 <GetEPTxAddr+0x34>)
 8002908:	681b      	ldr	r3, [r3, #0]
 800290a:	b29b      	uxth	r3, r3
 800290c:	461a      	mov	r2, r3
 800290e:	79fb      	ldrb	r3, [r7, #7]
 8002910:	00db      	lsls	r3, r3, #3
 8002912:	4413      	add	r3, r2
 8002914:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8002918:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 800291c:	005b      	lsls	r3, r3, #1
 800291e:	681b      	ldr	r3, [r3, #0]
 8002920:	b29b      	uxth	r3, r3
 8002922:	4618      	mov	r0, r3
 8002924:	370c      	adds	r7, #12
 8002926:	46bd      	mov	sp, r7
 8002928:	f85d 7b04 	ldr.w	r7, [sp], #4
 800292c:	4770      	bx	lr
 800292e:	bf00      	nop
 8002930:	40005c50 	.word	0x40005c50

08002934 <GetEPRxAddr>:
 8002934:	b480      	push	{r7}
 8002936:	b083      	sub	sp, #12
 8002938:	af00      	add	r7, sp, #0
 800293a:	4603      	mov	r3, r0
 800293c:	71fb      	strb	r3, [r7, #7]
 800293e:	4b09      	ldr	r3, [pc, #36]	; (8002964 <GetEPRxAddr+0x30>)
 8002940:	681b      	ldr	r3, [r3, #0]
 8002942:	b29b      	uxth	r3, r3
 8002944:	461a      	mov	r2, r3
 8002946:	79fb      	ldrb	r3, [r7, #7]
 8002948:	00db      	lsls	r3, r3, #3
 800294a:	441a      	add	r2, r3
 800294c:	4b06      	ldr	r3, [pc, #24]	; (8002968 <GetEPRxAddr+0x34>)
 800294e:	4413      	add	r3, r2
 8002950:	005b      	lsls	r3, r3, #1
 8002952:	681b      	ldr	r3, [r3, #0]
 8002954:	b29b      	uxth	r3, r3
 8002956:	4618      	mov	r0, r3
 8002958:	370c      	adds	r7, #12
 800295a:	46bd      	mov	sp, r7
 800295c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002960:	4770      	bx	lr
 8002962:	bf00      	nop
 8002964:	40005c50 	.word	0x40005c50
 8002968:	20003004 	.word	0x20003004

0800296c <SetEPTxCount>:
 800296c:	b480      	push	{r7}
 800296e:	b083      	sub	sp, #12
 8002970:	af00      	add	r7, sp, #0
 8002972:	4603      	mov	r3, r0
 8002974:	460a      	mov	r2, r1
 8002976:	71fb      	strb	r3, [r7, #7]
 8002978:	4613      	mov	r3, r2
 800297a:	80bb      	strh	r3, [r7, #4]
 800297c:	4b08      	ldr	r3, [pc, #32]	; (80029a0 <SetEPTxCount+0x34>)
 800297e:	681b      	ldr	r3, [r3, #0]
 8002980:	b29b      	uxth	r3, r3
 8002982:	461a      	mov	r2, r3
 8002984:	79fb      	ldrb	r3, [r7, #7]
 8002986:	00db      	lsls	r3, r3, #3
 8002988:	441a      	add	r2, r3
 800298a:	4b06      	ldr	r3, [pc, #24]	; (80029a4 <SetEPTxCount+0x38>)
 800298c:	4413      	add	r3, r2
 800298e:	005b      	lsls	r3, r3, #1
 8002990:	461a      	mov	r2, r3
 8002992:	88bb      	ldrh	r3, [r7, #4]
 8002994:	6013      	str	r3, [r2, #0]
 8002996:	370c      	adds	r7, #12
 8002998:	46bd      	mov	sp, r7
 800299a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800299e:	4770      	bx	lr
 80029a0:	40005c50 	.word	0x40005c50
 80029a4:	20003002 	.word	0x20003002

080029a8 <SetEPCountRxReg>:
 80029a8:	b480      	push	{r7}
 80029aa:	b085      	sub	sp, #20
 80029ac:	af00      	add	r7, sp, #0
 80029ae:	6078      	str	r0, [r7, #4]
 80029b0:	460b      	mov	r3, r1
 80029b2:	807b      	strh	r3, [r7, #2]
 80029b4:	887b      	ldrh	r3, [r7, #2]
 80029b6:	2b3e      	cmp	r3, #62	; 0x3e
 80029b8:	d912      	bls.n	80029e0 <SetEPCountRxReg+0x38>
 80029ba:	887b      	ldrh	r3, [r7, #2]
 80029bc:	095b      	lsrs	r3, r3, #5
 80029be:	81fb      	strh	r3, [r7, #14]
 80029c0:	887b      	ldrh	r3, [r7, #2]
 80029c2:	f003 031f 	and.w	r3, r3, #31
 80029c6:	2b00      	cmp	r3, #0
 80029c8:	d102      	bne.n	80029d0 <SetEPCountRxReg+0x28>
 80029ca:	89fb      	ldrh	r3, [r7, #14]
 80029cc:	3b01      	subs	r3, #1
 80029ce:	81fb      	strh	r3, [r7, #14]
 80029d0:	89fb      	ldrh	r3, [r7, #14]
 80029d2:	029b      	lsls	r3, r3, #10
 80029d4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80029d8:	461a      	mov	r2, r3
 80029da:	687b      	ldr	r3, [r7, #4]
 80029dc:	601a      	str	r2, [r3, #0]
 80029de:	e00f      	b.n	8002a00 <SetEPCountRxReg+0x58>
 80029e0:	887b      	ldrh	r3, [r7, #2]
 80029e2:	085b      	lsrs	r3, r3, #1
 80029e4:	81fb      	strh	r3, [r7, #14]
 80029e6:	887b      	ldrh	r3, [r7, #2]
 80029e8:	f003 0301 	and.w	r3, r3, #1
 80029ec:	2b00      	cmp	r3, #0
 80029ee:	d002      	beq.n	80029f6 <SetEPCountRxReg+0x4e>
 80029f0:	89fb      	ldrh	r3, [r7, #14]
 80029f2:	3301      	adds	r3, #1
 80029f4:	81fb      	strh	r3, [r7, #14]
 80029f6:	89fb      	ldrh	r3, [r7, #14]
 80029f8:	029b      	lsls	r3, r3, #10
 80029fa:	461a      	mov	r2, r3
 80029fc:	687b      	ldr	r3, [r7, #4]
 80029fe:	601a      	str	r2, [r3, #0]
 8002a00:	3714      	adds	r7, #20
 8002a02:	46bd      	mov	sp, r7
 8002a04:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002a08:	4770      	bx	lr
 8002a0a:	bf00      	nop

08002a0c <SetEPRxCount>:
 8002a0c:	b480      	push	{r7}
 8002a0e:	b085      	sub	sp, #20
 8002a10:	af00      	add	r7, sp, #0
 8002a12:	4603      	mov	r3, r0
 8002a14:	460a      	mov	r2, r1
 8002a16:	71fb      	strb	r3, [r7, #7]
 8002a18:	4613      	mov	r3, r2
 8002a1a:	80bb      	strh	r3, [r7, #4]
 8002a1c:	4b1a      	ldr	r3, [pc, #104]	; (8002a88 <SetEPRxCount+0x7c>)
 8002a1e:	681b      	ldr	r3, [r3, #0]
 8002a20:	b29b      	uxth	r3, r3
 8002a22:	461a      	mov	r2, r3
 8002a24:	79fb      	ldrb	r3, [r7, #7]
 8002a26:	00db      	lsls	r3, r3, #3
 8002a28:	441a      	add	r2, r3
 8002a2a:	4b18      	ldr	r3, [pc, #96]	; (8002a8c <SetEPRxCount+0x80>)
 8002a2c:	4413      	add	r3, r2
 8002a2e:	005b      	lsls	r3, r3, #1
 8002a30:	60bb      	str	r3, [r7, #8]
 8002a32:	88bb      	ldrh	r3, [r7, #4]
 8002a34:	2b3e      	cmp	r3, #62	; 0x3e
 8002a36:	d912      	bls.n	8002a5e <SetEPRxCount+0x52>
 8002a38:	88bb      	ldrh	r3, [r7, #4]
 8002a3a:	095b      	lsrs	r3, r3, #5
 8002a3c:	81fb      	strh	r3, [r7, #14]
 8002a3e:	88bb      	ldrh	r3, [r7, #4]
 8002a40:	f003 031f 	and.w	r3, r3, #31
 8002a44:	2b00      	cmp	r3, #0
 8002a46:	d102      	bne.n	8002a4e <SetEPRxCount+0x42>
 8002a48:	89fb      	ldrh	r3, [r7, #14]
 8002a4a:	3b01      	subs	r3, #1
 8002a4c:	81fb      	strh	r3, [r7, #14]
 8002a4e:	89fb      	ldrh	r3, [r7, #14]
 8002a50:	029b      	lsls	r3, r3, #10
 8002a52:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002a56:	461a      	mov	r2, r3
 8002a58:	68bb      	ldr	r3, [r7, #8]
 8002a5a:	601a      	str	r2, [r3, #0]
 8002a5c:	e00f      	b.n	8002a7e <SetEPRxCount+0x72>
 8002a5e:	88bb      	ldrh	r3, [r7, #4]
 8002a60:	085b      	lsrs	r3, r3, #1
 8002a62:	81fb      	strh	r3, [r7, #14]
 8002a64:	88bb      	ldrh	r3, [r7, #4]
 8002a66:	f003 0301 	and.w	r3, r3, #1
 8002a6a:	2b00      	cmp	r3, #0
 8002a6c:	d002      	beq.n	8002a74 <SetEPRxCount+0x68>
 8002a6e:	89fb      	ldrh	r3, [r7, #14]
 8002a70:	3301      	adds	r3, #1
 8002a72:	81fb      	strh	r3, [r7, #14]
 8002a74:	89fb      	ldrh	r3, [r7, #14]
 8002a76:	029b      	lsls	r3, r3, #10
 8002a78:	461a      	mov	r2, r3
 8002a7a:	68bb      	ldr	r3, [r7, #8]
 8002a7c:	601a      	str	r2, [r3, #0]
 8002a7e:	3714      	adds	r7, #20
 8002a80:	46bd      	mov	sp, r7
 8002a82:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002a86:	4770      	bx	lr
 8002a88:	40005c50 	.word	0x40005c50
 8002a8c:	20003006 	.word	0x20003006

08002a90 <GetEPTxCount>:
 8002a90:	b480      	push	{r7}
 8002a92:	b083      	sub	sp, #12
 8002a94:	af00      	add	r7, sp, #0
 8002a96:	4603      	mov	r3, r0
 8002a98:	71fb      	strb	r3, [r7, #7]
 8002a9a:	4b0a      	ldr	r3, [pc, #40]	; (8002ac4 <GetEPTxCount+0x34>)
 8002a9c:	681b      	ldr	r3, [r3, #0]
 8002a9e:	b29b      	uxth	r3, r3
 8002aa0:	461a      	mov	r2, r3
 8002aa2:	79fb      	ldrb	r3, [r7, #7]
 8002aa4:	00db      	lsls	r3, r3, #3
 8002aa6:	441a      	add	r2, r3
 8002aa8:	4b07      	ldr	r3, [pc, #28]	; (8002ac8 <GetEPTxCount+0x38>)
 8002aaa:	4413      	add	r3, r2
 8002aac:	005b      	lsls	r3, r3, #1
 8002aae:	681b      	ldr	r3, [r3, #0]
 8002ab0:	b29b      	uxth	r3, r3
 8002ab2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8002ab6:	b29b      	uxth	r3, r3
 8002ab8:	4618      	mov	r0, r3
 8002aba:	370c      	adds	r7, #12
 8002abc:	46bd      	mov	sp, r7
 8002abe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ac2:	4770      	bx	lr
 8002ac4:	40005c50 	.word	0x40005c50
 8002ac8:	20003002 	.word	0x20003002

08002acc <GetEPRxCount>:
 8002acc:	b480      	push	{r7}
 8002ace:	b083      	sub	sp, #12
 8002ad0:	af00      	add	r7, sp, #0
 8002ad2:	4603      	mov	r3, r0
 8002ad4:	71fb      	strb	r3, [r7, #7]
 8002ad6:	4b0a      	ldr	r3, [pc, #40]	; (8002b00 <GetEPRxCount+0x34>)
 8002ad8:	681b      	ldr	r3, [r3, #0]
 8002ada:	b29b      	uxth	r3, r3
 8002adc:	461a      	mov	r2, r3
 8002ade:	79fb      	ldrb	r3, [r7, #7]
 8002ae0:	00db      	lsls	r3, r3, #3
 8002ae2:	441a      	add	r2, r3
 8002ae4:	4b07      	ldr	r3, [pc, #28]	; (8002b04 <GetEPRxCount+0x38>)
 8002ae6:	4413      	add	r3, r2
 8002ae8:	005b      	lsls	r3, r3, #1
 8002aea:	681b      	ldr	r3, [r3, #0]
 8002aec:	b29b      	uxth	r3, r3
 8002aee:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8002af2:	b29b      	uxth	r3, r3
 8002af4:	4618      	mov	r0, r3
 8002af6:	370c      	adds	r7, #12
 8002af8:	46bd      	mov	sp, r7
 8002afa:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002afe:	4770      	bx	lr
 8002b00:	40005c50 	.word	0x40005c50
 8002b04:	20003006 	.word	0x20003006

08002b08 <SetEPDblBuffAddr>:
 8002b08:	b480      	push	{r7}
 8002b0a:	b083      	sub	sp, #12
 8002b0c:	af00      	add	r7, sp, #0
 8002b0e:	4603      	mov	r3, r0
 8002b10:	71fb      	strb	r3, [r7, #7]
 8002b12:	460b      	mov	r3, r1
 8002b14:	80bb      	strh	r3, [r7, #4]
 8002b16:	4613      	mov	r3, r2
 8002b18:	807b      	strh	r3, [r7, #2]
 8002b1a:	4b13      	ldr	r3, [pc, #76]	; (8002b68 <SetEPDblBuffAddr+0x60>)
 8002b1c:	681b      	ldr	r3, [r3, #0]
 8002b1e:	b29b      	uxth	r3, r3
 8002b20:	461a      	mov	r2, r3
 8002b22:	79fb      	ldrb	r3, [r7, #7]
 8002b24:	00db      	lsls	r3, r3, #3
 8002b26:	4413      	add	r3, r2
 8002b28:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8002b2c:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8002b30:	005b      	lsls	r3, r3, #1
 8002b32:	461a      	mov	r2, r3
 8002b34:	88bb      	ldrh	r3, [r7, #4]
 8002b36:	085b      	lsrs	r3, r3, #1
 8002b38:	b29b      	uxth	r3, r3
 8002b3a:	005b      	lsls	r3, r3, #1
 8002b3c:	6013      	str	r3, [r2, #0]
 8002b3e:	4b0a      	ldr	r3, [pc, #40]	; (8002b68 <SetEPDblBuffAddr+0x60>)
 8002b40:	681b      	ldr	r3, [r3, #0]
 8002b42:	b29b      	uxth	r3, r3
 8002b44:	461a      	mov	r2, r3
 8002b46:	79fb      	ldrb	r3, [r7, #7]
 8002b48:	00db      	lsls	r3, r3, #3
 8002b4a:	441a      	add	r2, r3
 8002b4c:	4b07      	ldr	r3, [pc, #28]	; (8002b6c <SetEPDblBuffAddr+0x64>)
 8002b4e:	4413      	add	r3, r2
 8002b50:	005b      	lsls	r3, r3, #1
 8002b52:	461a      	mov	r2, r3
 8002b54:	887b      	ldrh	r3, [r7, #2]
 8002b56:	085b      	lsrs	r3, r3, #1
 8002b58:	b29b      	uxth	r3, r3
 8002b5a:	005b      	lsls	r3, r3, #1
 8002b5c:	6013      	str	r3, [r2, #0]
 8002b5e:	370c      	adds	r7, #12
 8002b60:	46bd      	mov	sp, r7
 8002b62:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b66:	4770      	bx	lr
 8002b68:	40005c50 	.word	0x40005c50
 8002b6c:	20003004 	.word	0x20003004

08002b70 <SetEPDblBuf0Addr>:
 8002b70:	b480      	push	{r7}
 8002b72:	b083      	sub	sp, #12
 8002b74:	af00      	add	r7, sp, #0
 8002b76:	4603      	mov	r3, r0
 8002b78:	460a      	mov	r2, r1
 8002b7a:	71fb      	strb	r3, [r7, #7]
 8002b7c:	4613      	mov	r3, r2
 8002b7e:	80bb      	strh	r3, [r7, #4]
 8002b80:	4b0b      	ldr	r3, [pc, #44]	; (8002bb0 <SetEPDblBuf0Addr+0x40>)
 8002b82:	681b      	ldr	r3, [r3, #0]
 8002b84:	b29b      	uxth	r3, r3
 8002b86:	461a      	mov	r2, r3
 8002b88:	79fb      	ldrb	r3, [r7, #7]
 8002b8a:	00db      	lsls	r3, r3, #3
 8002b8c:	4413      	add	r3, r2
 8002b8e:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8002b92:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8002b96:	005b      	lsls	r3, r3, #1
 8002b98:	461a      	mov	r2, r3
 8002b9a:	88bb      	ldrh	r3, [r7, #4]
 8002b9c:	085b      	lsrs	r3, r3, #1
 8002b9e:	b29b      	uxth	r3, r3
 8002ba0:	005b      	lsls	r3, r3, #1
 8002ba2:	6013      	str	r3, [r2, #0]
 8002ba4:	370c      	adds	r7, #12
 8002ba6:	46bd      	mov	sp, r7
 8002ba8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002bac:	4770      	bx	lr
 8002bae:	bf00      	nop
 8002bb0:	40005c50 	.word	0x40005c50

08002bb4 <SetEPDblBuf1Addr>:
 8002bb4:	b480      	push	{r7}
 8002bb6:	b083      	sub	sp, #12
 8002bb8:	af00      	add	r7, sp, #0
 8002bba:	4603      	mov	r3, r0
 8002bbc:	460a      	mov	r2, r1
 8002bbe:	71fb      	strb	r3, [r7, #7]
 8002bc0:	4613      	mov	r3, r2
 8002bc2:	80bb      	strh	r3, [r7, #4]
 8002bc4:	4b0a      	ldr	r3, [pc, #40]	; (8002bf0 <SetEPDblBuf1Addr+0x3c>)
 8002bc6:	681b      	ldr	r3, [r3, #0]
 8002bc8:	b29b      	uxth	r3, r3
 8002bca:	461a      	mov	r2, r3
 8002bcc:	79fb      	ldrb	r3, [r7, #7]
 8002bce:	00db      	lsls	r3, r3, #3
 8002bd0:	441a      	add	r2, r3
 8002bd2:	4b08      	ldr	r3, [pc, #32]	; (8002bf4 <SetEPDblBuf1Addr+0x40>)
 8002bd4:	4413      	add	r3, r2
 8002bd6:	005b      	lsls	r3, r3, #1
 8002bd8:	461a      	mov	r2, r3
 8002bda:	88bb      	ldrh	r3, [r7, #4]
 8002bdc:	085b      	lsrs	r3, r3, #1
 8002bde:	b29b      	uxth	r3, r3
 8002be0:	005b      	lsls	r3, r3, #1
 8002be2:	6013      	str	r3, [r2, #0]
 8002be4:	370c      	adds	r7, #12
 8002be6:	46bd      	mov	sp, r7
 8002be8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002bec:	4770      	bx	lr
 8002bee:	bf00      	nop
 8002bf0:	40005c50 	.word	0x40005c50
 8002bf4:	20003004 	.word	0x20003004

08002bf8 <GetEPDblBuf0Addr>:
 8002bf8:	b480      	push	{r7}
 8002bfa:	b083      	sub	sp, #12
 8002bfc:	af00      	add	r7, sp, #0
 8002bfe:	4603      	mov	r3, r0
 8002c00:	71fb      	strb	r3, [r7, #7]
 8002c02:	4b0a      	ldr	r3, [pc, #40]	; (8002c2c <GetEPDblBuf0Addr+0x34>)
 8002c04:	681b      	ldr	r3, [r3, #0]
 8002c06:	b29b      	uxth	r3, r3
 8002c08:	461a      	mov	r2, r3
 8002c0a:	79fb      	ldrb	r3, [r7, #7]
 8002c0c:	00db      	lsls	r3, r3, #3
 8002c0e:	4413      	add	r3, r2
 8002c10:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8002c14:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8002c18:	005b      	lsls	r3, r3, #1
 8002c1a:	681b      	ldr	r3, [r3, #0]
 8002c1c:	b29b      	uxth	r3, r3
 8002c1e:	4618      	mov	r0, r3
 8002c20:	370c      	adds	r7, #12
 8002c22:	46bd      	mov	sp, r7
 8002c24:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002c28:	4770      	bx	lr
 8002c2a:	bf00      	nop
 8002c2c:	40005c50 	.word	0x40005c50

08002c30 <GetEPDblBuf1Addr>:
 8002c30:	b480      	push	{r7}
 8002c32:	b083      	sub	sp, #12
 8002c34:	af00      	add	r7, sp, #0
 8002c36:	4603      	mov	r3, r0
 8002c38:	71fb      	strb	r3, [r7, #7]
 8002c3a:	4b09      	ldr	r3, [pc, #36]	; (8002c60 <GetEPDblBuf1Addr+0x30>)
 8002c3c:	681b      	ldr	r3, [r3, #0]
 8002c3e:	b29b      	uxth	r3, r3
 8002c40:	461a      	mov	r2, r3
 8002c42:	79fb      	ldrb	r3, [r7, #7]
 8002c44:	00db      	lsls	r3, r3, #3
 8002c46:	441a      	add	r2, r3
 8002c48:	4b06      	ldr	r3, [pc, #24]	; (8002c64 <GetEPDblBuf1Addr+0x34>)
 8002c4a:	4413      	add	r3, r2
 8002c4c:	005b      	lsls	r3, r3, #1
 8002c4e:	681b      	ldr	r3, [r3, #0]
 8002c50:	b29b      	uxth	r3, r3
 8002c52:	4618      	mov	r0, r3
 8002c54:	370c      	adds	r7, #12
 8002c56:	46bd      	mov	sp, r7
 8002c58:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002c5c:	4770      	bx	lr
 8002c5e:	bf00      	nop
 8002c60:	40005c50 	.word	0x40005c50
 8002c64:	20003004 	.word	0x20003004

08002c68 <SetEPDblBuffCount>:
 8002c68:	b480      	push	{r7}
 8002c6a:	b087      	sub	sp, #28
 8002c6c:	af00      	add	r7, sp, #0
 8002c6e:	4603      	mov	r3, r0
 8002c70:	71fb      	strb	r3, [r7, #7]
 8002c72:	460b      	mov	r3, r1
 8002c74:	71bb      	strb	r3, [r7, #6]
 8002c76:	4613      	mov	r3, r2
 8002c78:	80bb      	strh	r3, [r7, #4]
 8002c7a:	79bb      	ldrb	r3, [r7, #6]
 8002c7c:	2b01      	cmp	r3, #1
 8002c7e:	d131      	bne.n	8002ce4 <SetEPDblBuffCount+0x7c>
 8002c80:	4b45      	ldr	r3, [pc, #276]	; (8002d98 <SetEPDblBuffCount+0x130>)
 8002c82:	681b      	ldr	r3, [r3, #0]
 8002c84:	b29b      	uxth	r3, r3
 8002c86:	461a      	mov	r2, r3
 8002c88:	79fb      	ldrb	r3, [r7, #7]
 8002c8a:	00db      	lsls	r3, r3, #3
 8002c8c:	441a      	add	r2, r3
 8002c8e:	4b43      	ldr	r3, [pc, #268]	; (8002d9c <SetEPDblBuffCount+0x134>)
 8002c90:	4413      	add	r3, r2
 8002c92:	005b      	lsls	r3, r3, #1
 8002c94:	613b      	str	r3, [r7, #16]
 8002c96:	88bb      	ldrh	r3, [r7, #4]
 8002c98:	2b3e      	cmp	r3, #62	; 0x3e
 8002c9a:	d912      	bls.n	8002cc2 <SetEPDblBuffCount+0x5a>
 8002c9c:	88bb      	ldrh	r3, [r7, #4]
 8002c9e:	095b      	lsrs	r3, r3, #5
 8002ca0:	82fb      	strh	r3, [r7, #22]
 8002ca2:	88bb      	ldrh	r3, [r7, #4]
 8002ca4:	f003 031f 	and.w	r3, r3, #31
 8002ca8:	2b00      	cmp	r3, #0
 8002caa:	d102      	bne.n	8002cb2 <SetEPDblBuffCount+0x4a>
 8002cac:	8afb      	ldrh	r3, [r7, #22]
 8002cae:	3b01      	subs	r3, #1
 8002cb0:	82fb      	strh	r3, [r7, #22]
 8002cb2:	8afb      	ldrh	r3, [r7, #22]
 8002cb4:	029b      	lsls	r3, r3, #10
 8002cb6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002cba:	461a      	mov	r2, r3
 8002cbc:	693b      	ldr	r3, [r7, #16]
 8002cbe:	601a      	str	r2, [r3, #0]
 8002cc0:	e020      	b.n	8002d04 <SetEPDblBuffCount+0x9c>
 8002cc2:	88bb      	ldrh	r3, [r7, #4]
 8002cc4:	085b      	lsrs	r3, r3, #1
 8002cc6:	82fb      	strh	r3, [r7, #22]
 8002cc8:	88bb      	ldrh	r3, [r7, #4]
 8002cca:	f003 0301 	and.w	r3, r3, #1
 8002cce:	2b00      	cmp	r3, #0
 8002cd0:	d002      	beq.n	8002cd8 <SetEPDblBuffCount+0x70>
 8002cd2:	8afb      	ldrh	r3, [r7, #22]
 8002cd4:	3301      	adds	r3, #1
 8002cd6:	82fb      	strh	r3, [r7, #22]
 8002cd8:	8afb      	ldrh	r3, [r7, #22]
 8002cda:	029b      	lsls	r3, r3, #10
 8002cdc:	461a      	mov	r2, r3
 8002cde:	693b      	ldr	r3, [r7, #16]
 8002ce0:	601a      	str	r2, [r3, #0]
 8002ce2:	e00f      	b.n	8002d04 <SetEPDblBuffCount+0x9c>
 8002ce4:	79bb      	ldrb	r3, [r7, #6]
 8002ce6:	2b02      	cmp	r3, #2
 8002ce8:	d10c      	bne.n	8002d04 <SetEPDblBuffCount+0x9c>
 8002cea:	4b2b      	ldr	r3, [pc, #172]	; (8002d98 <SetEPDblBuffCount+0x130>)
 8002cec:	681b      	ldr	r3, [r3, #0]
 8002cee:	b29b      	uxth	r3, r3
 8002cf0:	461a      	mov	r2, r3
 8002cf2:	79fb      	ldrb	r3, [r7, #7]
 8002cf4:	00db      	lsls	r3, r3, #3
 8002cf6:	441a      	add	r2, r3
 8002cf8:	4b28      	ldr	r3, [pc, #160]	; (8002d9c <SetEPDblBuffCount+0x134>)
 8002cfa:	4413      	add	r3, r2
 8002cfc:	005b      	lsls	r3, r3, #1
 8002cfe:	461a      	mov	r2, r3
 8002d00:	88bb      	ldrh	r3, [r7, #4]
 8002d02:	6013      	str	r3, [r2, #0]
 8002d04:	79bb      	ldrb	r3, [r7, #6]
 8002d06:	2b01      	cmp	r3, #1
 8002d08:	d131      	bne.n	8002d6e <SetEPDblBuffCount+0x106>
 8002d0a:	4b23      	ldr	r3, [pc, #140]	; (8002d98 <SetEPDblBuffCount+0x130>)
 8002d0c:	681b      	ldr	r3, [r3, #0]
 8002d0e:	b29b      	uxth	r3, r3
 8002d10:	461a      	mov	r2, r3
 8002d12:	79fb      	ldrb	r3, [r7, #7]
 8002d14:	00db      	lsls	r3, r3, #3
 8002d16:	441a      	add	r2, r3
 8002d18:	4b21      	ldr	r3, [pc, #132]	; (8002da0 <SetEPDblBuffCount+0x138>)
 8002d1a:	4413      	add	r3, r2
 8002d1c:	005b      	lsls	r3, r3, #1
 8002d1e:	60fb      	str	r3, [r7, #12]
 8002d20:	88bb      	ldrh	r3, [r7, #4]
 8002d22:	2b3e      	cmp	r3, #62	; 0x3e
 8002d24:	d912      	bls.n	8002d4c <SetEPDblBuffCount+0xe4>
 8002d26:	88bb      	ldrh	r3, [r7, #4]
 8002d28:	095b      	lsrs	r3, r3, #5
 8002d2a:	82bb      	strh	r3, [r7, #20]
 8002d2c:	88bb      	ldrh	r3, [r7, #4]
 8002d2e:	f003 031f 	and.w	r3, r3, #31
 8002d32:	2b00      	cmp	r3, #0
 8002d34:	d102      	bne.n	8002d3c <SetEPDblBuffCount+0xd4>
 8002d36:	8abb      	ldrh	r3, [r7, #20]
 8002d38:	3b01      	subs	r3, #1
 8002d3a:	82bb      	strh	r3, [r7, #20]
 8002d3c:	8abb      	ldrh	r3, [r7, #20]
 8002d3e:	029b      	lsls	r3, r3, #10
 8002d40:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002d44:	461a      	mov	r2, r3
 8002d46:	68fb      	ldr	r3, [r7, #12]
 8002d48:	601a      	str	r2, [r3, #0]
 8002d4a:	e020      	b.n	8002d8e <SetEPDblBuffCount+0x126>
 8002d4c:	88bb      	ldrh	r3, [r7, #4]
 8002d4e:	085b      	lsrs	r3, r3, #1
 8002d50:	82bb      	strh	r3, [r7, #20]
 8002d52:	88bb      	ldrh	r3, [r7, #4]
 8002d54:	f003 0301 	and.w	r3, r3, #1
 8002d58:	2b00      	cmp	r3, #0
 8002d5a:	d002      	beq.n	8002d62 <SetEPDblBuffCount+0xfa>
 8002d5c:	8abb      	ldrh	r3, [r7, #20]
 8002d5e:	3301      	adds	r3, #1
 8002d60:	82bb      	strh	r3, [r7, #20]
 8002d62:	8abb      	ldrh	r3, [r7, #20]
 8002d64:	029b      	lsls	r3, r3, #10
 8002d66:	461a      	mov	r2, r3
 8002d68:	68fb      	ldr	r3, [r7, #12]
 8002d6a:	601a      	str	r2, [r3, #0]
 8002d6c:	e00f      	b.n	8002d8e <SetEPDblBuffCount+0x126>
 8002d6e:	79bb      	ldrb	r3, [r7, #6]
 8002d70:	2b02      	cmp	r3, #2
 8002d72:	d10c      	bne.n	8002d8e <SetEPDblBuffCount+0x126>
 8002d74:	4b08      	ldr	r3, [pc, #32]	; (8002d98 <SetEPDblBuffCount+0x130>)
 8002d76:	681b      	ldr	r3, [r3, #0]
 8002d78:	b29b      	uxth	r3, r3
 8002d7a:	461a      	mov	r2, r3
 8002d7c:	79fb      	ldrb	r3, [r7, #7]
 8002d7e:	00db      	lsls	r3, r3, #3
 8002d80:	441a      	add	r2, r3
 8002d82:	4b07      	ldr	r3, [pc, #28]	; (8002da0 <SetEPDblBuffCount+0x138>)
 8002d84:	4413      	add	r3, r2
 8002d86:	005b      	lsls	r3, r3, #1
 8002d88:	461a      	mov	r2, r3
 8002d8a:	88bb      	ldrh	r3, [r7, #4]
 8002d8c:	6013      	str	r3, [r2, #0]
 8002d8e:	371c      	adds	r7, #28
 8002d90:	46bd      	mov	sp, r7
 8002d92:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d96:	4770      	bx	lr
 8002d98:	40005c50 	.word	0x40005c50
 8002d9c:	20003002 	.word	0x20003002
 8002da0:	20003006 	.word	0x20003006

08002da4 <SetEPDblBuf0Count>:
 8002da4:	b480      	push	{r7}
 8002da6:	b085      	sub	sp, #20
 8002da8:	af00      	add	r7, sp, #0
 8002daa:	4603      	mov	r3, r0
 8002dac:	71fb      	strb	r3, [r7, #7]
 8002dae:	460b      	mov	r3, r1
 8002db0:	71bb      	strb	r3, [r7, #6]
 8002db2:	4613      	mov	r3, r2
 8002db4:	80bb      	strh	r3, [r7, #4]
 8002db6:	79bb      	ldrb	r3, [r7, #6]
 8002db8:	2b01      	cmp	r3, #1
 8002dba:	d131      	bne.n	8002e20 <SetEPDblBuf0Count+0x7c>
 8002dbc:	4b23      	ldr	r3, [pc, #140]	; (8002e4c <SetEPDblBuf0Count+0xa8>)
 8002dbe:	681b      	ldr	r3, [r3, #0]
 8002dc0:	b29b      	uxth	r3, r3
 8002dc2:	461a      	mov	r2, r3
 8002dc4:	79fb      	ldrb	r3, [r7, #7]
 8002dc6:	00db      	lsls	r3, r3, #3
 8002dc8:	441a      	add	r2, r3
 8002dca:	4b21      	ldr	r3, [pc, #132]	; (8002e50 <SetEPDblBuf0Count+0xac>)
 8002dcc:	4413      	add	r3, r2
 8002dce:	005b      	lsls	r3, r3, #1
 8002dd0:	60bb      	str	r3, [r7, #8]
 8002dd2:	88bb      	ldrh	r3, [r7, #4]
 8002dd4:	2b3e      	cmp	r3, #62	; 0x3e
 8002dd6:	d912      	bls.n	8002dfe <SetEPDblBuf0Count+0x5a>
 8002dd8:	88bb      	ldrh	r3, [r7, #4]
 8002dda:	095b      	lsrs	r3, r3, #5
 8002ddc:	81fb      	strh	r3, [r7, #14]
 8002dde:	88bb      	ldrh	r3, [r7, #4]
 8002de0:	f003 031f 	and.w	r3, r3, #31
 8002de4:	2b00      	cmp	r3, #0
 8002de6:	d102      	bne.n	8002dee <SetEPDblBuf0Count+0x4a>
 8002de8:	89fb      	ldrh	r3, [r7, #14]
 8002dea:	3b01      	subs	r3, #1
 8002dec:	81fb      	strh	r3, [r7, #14]
 8002dee:	89fb      	ldrh	r3, [r7, #14]
 8002df0:	029b      	lsls	r3, r3, #10
 8002df2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002df6:	461a      	mov	r2, r3
 8002df8:	68bb      	ldr	r3, [r7, #8]
 8002dfa:	601a      	str	r2, [r3, #0]
 8002dfc:	e020      	b.n	8002e40 <SetEPDblBuf0Count+0x9c>
 8002dfe:	88bb      	ldrh	r3, [r7, #4]
 8002e00:	085b      	lsrs	r3, r3, #1
 8002e02:	81fb      	strh	r3, [r7, #14]
 8002e04:	88bb      	ldrh	r3, [r7, #4]
 8002e06:	f003 0301 	and.w	r3, r3, #1
 8002e0a:	2b00      	cmp	r3, #0
 8002e0c:	d002      	beq.n	8002e14 <SetEPDblBuf0Count+0x70>
 8002e0e:	89fb      	ldrh	r3, [r7, #14]
 8002e10:	3301      	adds	r3, #1
 8002e12:	81fb      	strh	r3, [r7, #14]
 8002e14:	89fb      	ldrh	r3, [r7, #14]
 8002e16:	029b      	lsls	r3, r3, #10
 8002e18:	461a      	mov	r2, r3
 8002e1a:	68bb      	ldr	r3, [r7, #8]
 8002e1c:	601a      	str	r2, [r3, #0]
 8002e1e:	e00f      	b.n	8002e40 <SetEPDblBuf0Count+0x9c>
 8002e20:	79bb      	ldrb	r3, [r7, #6]
 8002e22:	2b02      	cmp	r3, #2
 8002e24:	d10c      	bne.n	8002e40 <SetEPDblBuf0Count+0x9c>
 8002e26:	4b09      	ldr	r3, [pc, #36]	; (8002e4c <SetEPDblBuf0Count+0xa8>)
 8002e28:	681b      	ldr	r3, [r3, #0]
 8002e2a:	b29b      	uxth	r3, r3
 8002e2c:	461a      	mov	r2, r3
 8002e2e:	79fb      	ldrb	r3, [r7, #7]
 8002e30:	00db      	lsls	r3, r3, #3
 8002e32:	441a      	add	r2, r3
 8002e34:	4b06      	ldr	r3, [pc, #24]	; (8002e50 <SetEPDblBuf0Count+0xac>)
 8002e36:	4413      	add	r3, r2
 8002e38:	005b      	lsls	r3, r3, #1
 8002e3a:	461a      	mov	r2, r3
 8002e3c:	88bb      	ldrh	r3, [r7, #4]
 8002e3e:	6013      	str	r3, [r2, #0]
 8002e40:	3714      	adds	r7, #20
 8002e42:	46bd      	mov	sp, r7
 8002e44:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e48:	4770      	bx	lr
 8002e4a:	bf00      	nop
 8002e4c:	40005c50 	.word	0x40005c50
 8002e50:	20003002 	.word	0x20003002

08002e54 <SetEPDblBuf1Count>:
 8002e54:	b480      	push	{r7}
 8002e56:	b085      	sub	sp, #20
 8002e58:	af00      	add	r7, sp, #0
 8002e5a:	4603      	mov	r3, r0
 8002e5c:	71fb      	strb	r3, [r7, #7]
 8002e5e:	460b      	mov	r3, r1
 8002e60:	71bb      	strb	r3, [r7, #6]
 8002e62:	4613      	mov	r3, r2
 8002e64:	80bb      	strh	r3, [r7, #4]
 8002e66:	79bb      	ldrb	r3, [r7, #6]
 8002e68:	2b01      	cmp	r3, #1
 8002e6a:	d131      	bne.n	8002ed0 <SetEPDblBuf1Count+0x7c>
 8002e6c:	4b23      	ldr	r3, [pc, #140]	; (8002efc <SetEPDblBuf1Count+0xa8>)
 8002e6e:	681b      	ldr	r3, [r3, #0]
 8002e70:	b29b      	uxth	r3, r3
 8002e72:	461a      	mov	r2, r3
 8002e74:	79fb      	ldrb	r3, [r7, #7]
 8002e76:	00db      	lsls	r3, r3, #3
 8002e78:	441a      	add	r2, r3
 8002e7a:	4b21      	ldr	r3, [pc, #132]	; (8002f00 <SetEPDblBuf1Count+0xac>)
 8002e7c:	4413      	add	r3, r2
 8002e7e:	005b      	lsls	r3, r3, #1
 8002e80:	60bb      	str	r3, [r7, #8]
 8002e82:	88bb      	ldrh	r3, [r7, #4]
 8002e84:	2b3e      	cmp	r3, #62	; 0x3e
 8002e86:	d912      	bls.n	8002eae <SetEPDblBuf1Count+0x5a>
 8002e88:	88bb      	ldrh	r3, [r7, #4]
 8002e8a:	095b      	lsrs	r3, r3, #5
 8002e8c:	81fb      	strh	r3, [r7, #14]
 8002e8e:	88bb      	ldrh	r3, [r7, #4]
 8002e90:	f003 031f 	and.w	r3, r3, #31
 8002e94:	2b00      	cmp	r3, #0
 8002e96:	d102      	bne.n	8002e9e <SetEPDblBuf1Count+0x4a>
 8002e98:	89fb      	ldrh	r3, [r7, #14]
 8002e9a:	3b01      	subs	r3, #1
 8002e9c:	81fb      	strh	r3, [r7, #14]
 8002e9e:	89fb      	ldrh	r3, [r7, #14]
 8002ea0:	029b      	lsls	r3, r3, #10
 8002ea2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002ea6:	461a      	mov	r2, r3
 8002ea8:	68bb      	ldr	r3, [r7, #8]
 8002eaa:	601a      	str	r2, [r3, #0]
 8002eac:	e020      	b.n	8002ef0 <SetEPDblBuf1Count+0x9c>
 8002eae:	88bb      	ldrh	r3, [r7, #4]
 8002eb0:	085b      	lsrs	r3, r3, #1
 8002eb2:	81fb      	strh	r3, [r7, #14]
 8002eb4:	88bb      	ldrh	r3, [r7, #4]
 8002eb6:	f003 0301 	and.w	r3, r3, #1
 8002eba:	2b00      	cmp	r3, #0
 8002ebc:	d002      	beq.n	8002ec4 <SetEPDblBuf1Count+0x70>
 8002ebe:	89fb      	ldrh	r3, [r7, #14]
 8002ec0:	3301      	adds	r3, #1
 8002ec2:	81fb      	strh	r3, [r7, #14]
 8002ec4:	89fb      	ldrh	r3, [r7, #14]
 8002ec6:	029b      	lsls	r3, r3, #10
 8002ec8:	461a      	mov	r2, r3
 8002eca:	68bb      	ldr	r3, [r7, #8]
 8002ecc:	601a      	str	r2, [r3, #0]
 8002ece:	e00f      	b.n	8002ef0 <SetEPDblBuf1Count+0x9c>
 8002ed0:	79bb      	ldrb	r3, [r7, #6]
 8002ed2:	2b02      	cmp	r3, #2
 8002ed4:	d10c      	bne.n	8002ef0 <SetEPDblBuf1Count+0x9c>
 8002ed6:	4b09      	ldr	r3, [pc, #36]	; (8002efc <SetEPDblBuf1Count+0xa8>)
 8002ed8:	681b      	ldr	r3, [r3, #0]
 8002eda:	b29b      	uxth	r3, r3
 8002edc:	461a      	mov	r2, r3
 8002ede:	79fb      	ldrb	r3, [r7, #7]
 8002ee0:	00db      	lsls	r3, r3, #3
 8002ee2:	441a      	add	r2, r3
 8002ee4:	4b06      	ldr	r3, [pc, #24]	; (8002f00 <SetEPDblBuf1Count+0xac>)
 8002ee6:	4413      	add	r3, r2
 8002ee8:	005b      	lsls	r3, r3, #1
 8002eea:	461a      	mov	r2, r3
 8002eec:	88bb      	ldrh	r3, [r7, #4]
 8002eee:	6013      	str	r3, [r2, #0]
 8002ef0:	3714      	adds	r7, #20
 8002ef2:	46bd      	mov	sp, r7
 8002ef4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ef8:	4770      	bx	lr
 8002efa:	bf00      	nop
 8002efc:	40005c50 	.word	0x40005c50
 8002f00:	20003006 	.word	0x20003006

08002f04 <GetEPDblBuf0Count>:
 8002f04:	b480      	push	{r7}
 8002f06:	b083      	sub	sp, #12
 8002f08:	af00      	add	r7, sp, #0
 8002f0a:	4603      	mov	r3, r0
 8002f0c:	71fb      	strb	r3, [r7, #7]
 8002f0e:	4b0a      	ldr	r3, [pc, #40]	; (8002f38 <GetEPDblBuf0Count+0x34>)
 8002f10:	681b      	ldr	r3, [r3, #0]
 8002f12:	b29b      	uxth	r3, r3
 8002f14:	461a      	mov	r2, r3
 8002f16:	79fb      	ldrb	r3, [r7, #7]
 8002f18:	00db      	lsls	r3, r3, #3
 8002f1a:	441a      	add	r2, r3
 8002f1c:	4b07      	ldr	r3, [pc, #28]	; (8002f3c <GetEPDblBuf0Count+0x38>)
 8002f1e:	4413      	add	r3, r2
 8002f20:	005b      	lsls	r3, r3, #1
 8002f22:	681b      	ldr	r3, [r3, #0]
 8002f24:	b29b      	uxth	r3, r3
 8002f26:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8002f2a:	b29b      	uxth	r3, r3
 8002f2c:	4618      	mov	r0, r3
 8002f2e:	370c      	adds	r7, #12
 8002f30:	46bd      	mov	sp, r7
 8002f32:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f36:	4770      	bx	lr
 8002f38:	40005c50 	.word	0x40005c50
 8002f3c:	20003002 	.word	0x20003002

08002f40 <GetEPDblBuf1Count>:
 8002f40:	b480      	push	{r7}
 8002f42:	b083      	sub	sp, #12
 8002f44:	af00      	add	r7, sp, #0
 8002f46:	4603      	mov	r3, r0
 8002f48:	71fb      	strb	r3, [r7, #7]
 8002f4a:	4b0a      	ldr	r3, [pc, #40]	; (8002f74 <GetEPDblBuf1Count+0x34>)
 8002f4c:	681b      	ldr	r3, [r3, #0]
 8002f4e:	b29b      	uxth	r3, r3
 8002f50:	461a      	mov	r2, r3
 8002f52:	79fb      	ldrb	r3, [r7, #7]
 8002f54:	00db      	lsls	r3, r3, #3
 8002f56:	441a      	add	r2, r3
 8002f58:	4b07      	ldr	r3, [pc, #28]	; (8002f78 <GetEPDblBuf1Count+0x38>)
 8002f5a:	4413      	add	r3, r2
 8002f5c:	005b      	lsls	r3, r3, #1
 8002f5e:	681b      	ldr	r3, [r3, #0]
 8002f60:	b29b      	uxth	r3, r3
 8002f62:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8002f66:	b29b      	uxth	r3, r3
 8002f68:	4618      	mov	r0, r3
 8002f6a:	370c      	adds	r7, #12
 8002f6c:	46bd      	mov	sp, r7
 8002f6e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f72:	4770      	bx	lr
 8002f74:	40005c50 	.word	0x40005c50
 8002f78:	20003006 	.word	0x20003006

08002f7c <GetEPDblBufDir>:
 8002f7c:	b480      	push	{r7}
 8002f7e:	b083      	sub	sp, #12
 8002f80:	af00      	add	r7, sp, #0
 8002f82:	4603      	mov	r3, r0
 8002f84:	71fb      	strb	r3, [r7, #7]
 8002f86:	4b15      	ldr	r3, [pc, #84]	; (8002fdc <GetEPDblBufDir+0x60>)
 8002f88:	681b      	ldr	r3, [r3, #0]
 8002f8a:	b29b      	uxth	r3, r3
 8002f8c:	461a      	mov	r2, r3
 8002f8e:	79fb      	ldrb	r3, [r7, #7]
 8002f90:	00db      	lsls	r3, r3, #3
 8002f92:	441a      	add	r2, r3
 8002f94:	4b12      	ldr	r3, [pc, #72]	; (8002fe0 <GetEPDblBufDir+0x64>)
 8002f96:	4413      	add	r3, r2
 8002f98:	005b      	lsls	r3, r3, #1
 8002f9a:	681b      	ldr	r3, [r3, #0]
 8002f9c:	b29b      	uxth	r3, r3
 8002f9e:	f403 437c 	and.w	r3, r3, #64512	; 0xfc00
 8002fa2:	2b00      	cmp	r3, #0
 8002fa4:	d001      	beq.n	8002faa <GetEPDblBufDir+0x2e>
 8002fa6:	2301      	movs	r3, #1
 8002fa8:	e012      	b.n	8002fd0 <GetEPDblBufDir+0x54>
 8002faa:	4b0c      	ldr	r3, [pc, #48]	; (8002fdc <GetEPDblBufDir+0x60>)
 8002fac:	681b      	ldr	r3, [r3, #0]
 8002fae:	b29b      	uxth	r3, r3
 8002fb0:	461a      	mov	r2, r3
 8002fb2:	79fb      	ldrb	r3, [r7, #7]
 8002fb4:	00db      	lsls	r3, r3, #3
 8002fb6:	441a      	add	r2, r3
 8002fb8:	4b0a      	ldr	r3, [pc, #40]	; (8002fe4 <GetEPDblBufDir+0x68>)
 8002fba:	4413      	add	r3, r2
 8002fbc:	005b      	lsls	r3, r3, #1
 8002fbe:	681b      	ldr	r3, [r3, #0]
 8002fc0:	b29b      	uxth	r3, r3
 8002fc2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8002fc6:	2b00      	cmp	r3, #0
 8002fc8:	d001      	beq.n	8002fce <GetEPDblBufDir+0x52>
 8002fca:	2302      	movs	r3, #2
 8002fcc:	e000      	b.n	8002fd0 <GetEPDblBufDir+0x54>
 8002fce:	2300      	movs	r3, #0
 8002fd0:	4618      	mov	r0, r3
 8002fd2:	370c      	adds	r7, #12
 8002fd4:	46bd      	mov	sp, r7
 8002fd6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002fda:	4770      	bx	lr
 8002fdc:	40005c50 	.word	0x40005c50
 8002fe0:	20003006 	.word	0x20003006
 8002fe4:	20003002 	.word	0x20003002

08002fe8 <FreeUserBuffer>:
 8002fe8:	b480      	push	{r7}
 8002fea:	b083      	sub	sp, #12
 8002fec:	af00      	add	r7, sp, #0
 8002fee:	4603      	mov	r3, r0
 8002ff0:	460a      	mov	r2, r1
 8002ff2:	71fb      	strb	r3, [r7, #7]
 8002ff4:	4613      	mov	r3, r2
 8002ff6:	71bb      	strb	r3, [r7, #6]
 8002ff8:	79bb      	ldrb	r3, [r7, #6]
 8002ffa:	2b01      	cmp	r3, #1
 8002ffc:	d117      	bne.n	800302e <FreeUserBuffer+0x46>
 8002ffe:	79fb      	ldrb	r3, [r7, #7]
 8003000:	009b      	lsls	r3, r3, #2
 8003002:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8003006:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 800300a:	79fa      	ldrb	r2, [r7, #7]
 800300c:	0092      	lsls	r2, r2, #2
 800300e:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8003012:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8003016:	6812      	ldr	r2, [r2, #0]
 8003018:	b292      	uxth	r2, r2
 800301a:	4611      	mov	r1, r2
 800301c:	f640 720f 	movw	r2, #3855	; 0xf0f
 8003020:	400a      	ands	r2, r1
 8003022:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8003026:	f042 02c0 	orr.w	r2, r2, #192	; 0xc0
 800302a:	601a      	str	r2, [r3, #0]
 800302c:	e019      	b.n	8003062 <FreeUserBuffer+0x7a>
 800302e:	79bb      	ldrb	r3, [r7, #6]
 8003030:	2b02      	cmp	r3, #2
 8003032:	d116      	bne.n	8003062 <FreeUserBuffer+0x7a>
 8003034:	79fb      	ldrb	r3, [r7, #7]
 8003036:	009b      	lsls	r3, r3, #2
 8003038:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800303c:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8003040:	79fa      	ldrb	r2, [r7, #7]
 8003042:	0092      	lsls	r2, r2, #2
 8003044:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8003048:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800304c:	6812      	ldr	r2, [r2, #0]
 800304e:	b292      	uxth	r2, r2
 8003050:	4611      	mov	r1, r2
 8003052:	f640 720f 	movw	r2, #3855	; 0xf0f
 8003056:	400a      	ands	r2, r1
 8003058:	f442 4240 	orr.w	r2, r2, #49152	; 0xc000
 800305c:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8003060:	601a      	str	r2, [r3, #0]
 8003062:	370c      	adds	r7, #12
 8003064:	46bd      	mov	sp, r7
 8003066:	f85d 7b04 	ldr.w	r7, [sp], #4
 800306a:	4770      	bx	lr

0800306c <ToWord>:
 800306c:	b480      	push	{r7}
 800306e:	b085      	sub	sp, #20
 8003070:	af00      	add	r7, sp, #0
 8003072:	4603      	mov	r3, r0
 8003074:	460a      	mov	r2, r1
 8003076:	71fb      	strb	r3, [r7, #7]
 8003078:	4613      	mov	r3, r2
 800307a:	71bb      	strb	r3, [r7, #6]
 800307c:	79bb      	ldrb	r3, [r7, #6]
 800307e:	b29a      	uxth	r2, r3
 8003080:	79fb      	ldrb	r3, [r7, #7]
 8003082:	021b      	lsls	r3, r3, #8
 8003084:	b29b      	uxth	r3, r3
 8003086:	4313      	orrs	r3, r2
 8003088:	b29b      	uxth	r3, r3
 800308a:	81fb      	strh	r3, [r7, #14]
 800308c:	89fb      	ldrh	r3, [r7, #14]
 800308e:	4618      	mov	r0, r3
 8003090:	3714      	adds	r7, #20
 8003092:	46bd      	mov	sp, r7
 8003094:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003098:	4770      	bx	lr
 800309a:	bf00      	nop

0800309c <ByteSwap>:
 800309c:	b480      	push	{r7}
 800309e:	b085      	sub	sp, #20
 80030a0:	af00      	add	r7, sp, #0
 80030a2:	4603      	mov	r3, r0
 80030a4:	80fb      	strh	r3, [r7, #6]
 80030a6:	88fb      	ldrh	r3, [r7, #6]
 80030a8:	73fb      	strb	r3, [r7, #15]
 80030aa:	88fb      	ldrh	r3, [r7, #6]
 80030ac:	0a1b      	lsrs	r3, r3, #8
 80030ae:	b29b      	uxth	r3, r3
 80030b0:	b29a      	uxth	r2, r3
 80030b2:	7bfb      	ldrb	r3, [r7, #15]
 80030b4:	021b      	lsls	r3, r3, #8
 80030b6:	b29b      	uxth	r3, r3
 80030b8:	4313      	orrs	r3, r2
 80030ba:	b29b      	uxth	r3, r3
 80030bc:	81bb      	strh	r3, [r7, #12]
 80030be:	89bb      	ldrh	r3, [r7, #12]
 80030c0:	4618      	mov	r0, r3
 80030c2:	3714      	adds	r7, #20
 80030c4:	46bd      	mov	sp, r7
 80030c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030ca:	4770      	bx	lr

080030cc <USB_SIL_Init>:
 80030cc:	b480      	push	{r7}
 80030ce:	af00      	add	r7, sp, #0
 80030d0:	4b08      	ldr	r3, [pc, #32]	; (80030f4 <USB_SIL_Init+0x28>)
 80030d2:	2200      	movs	r2, #0
 80030d4:	601a      	str	r2, [r3, #0]
 80030d6:	4b08      	ldr	r3, [pc, #32]	; (80030f8 <USB_SIL_Init+0x2c>)
 80030d8:	f44f 423f 	mov.w	r2, #48896	; 0xbf00
 80030dc:	801a      	strh	r2, [r3, #0]
 80030de:	4b07      	ldr	r3, [pc, #28]	; (80030fc <USB_SIL_Init+0x30>)
 80030e0:	4a05      	ldr	r2, [pc, #20]	; (80030f8 <USB_SIL_Init+0x2c>)
 80030e2:	8812      	ldrh	r2, [r2, #0]
 80030e4:	601a      	str	r2, [r3, #0]
 80030e6:	2300      	movs	r3, #0
 80030e8:	4618      	mov	r0, r3
 80030ea:	46bd      	mov	sp, r7
 80030ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030f0:	4770      	bx	lr
 80030f2:	bf00      	nop
 80030f4:	40005c44 	.word	0x40005c44
 80030f8:	2000018e 	.word	0x2000018e
 80030fc:	40005c40 	.word	0x40005c40

08003100 <USB_SIL_Write>:
 8003100:	b580      	push	{r7, lr}
 8003102:	b084      	sub	sp, #16
 8003104:	af00      	add	r7, sp, #0
 8003106:	4603      	mov	r3, r0
 8003108:	60b9      	str	r1, [r7, #8]
 800310a:	607a      	str	r2, [r7, #4]
 800310c:	73fb      	strb	r3, [r7, #15]
 800310e:	7bfb      	ldrb	r3, [r7, #15]
 8003110:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8003114:	b2db      	uxtb	r3, r3
 8003116:	4618      	mov	r0, r3
 8003118:	f7ff fbf0 	bl	80028fc <GetEPTxAddr>
 800311c:	4603      	mov	r3, r0
 800311e:	461a      	mov	r2, r3
 8003120:	687b      	ldr	r3, [r7, #4]
 8003122:	b29b      	uxth	r3, r3
 8003124:	68b8      	ldr	r0, [r7, #8]
 8003126:	4611      	mov	r1, r2
 8003128:	461a      	mov	r2, r3
 800312a:	f7fe fcf5 	bl	8001b18 <UserToPMABufferCopy>
 800312e:	7bfb      	ldrb	r3, [r7, #15]
 8003130:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8003134:	b2da      	uxtb	r2, r3
 8003136:	687b      	ldr	r3, [r7, #4]
 8003138:	b29b      	uxth	r3, r3
 800313a:	4610      	mov	r0, r2
 800313c:	4619      	mov	r1, r3
 800313e:	f7ff fc15 	bl	800296c <SetEPTxCount>
 8003142:	2300      	movs	r3, #0
 8003144:	4618      	mov	r0, r3
 8003146:	3710      	adds	r7, #16
 8003148:	46bd      	mov	sp, r7
 800314a:	bd80      	pop	{r7, pc}

0800314c <USB_SIL_Read>:
 800314c:	b580      	push	{r7, lr}
 800314e:	b084      	sub	sp, #16
 8003150:	af00      	add	r7, sp, #0
 8003152:	4603      	mov	r3, r0
 8003154:	6039      	str	r1, [r7, #0]
 8003156:	71fb      	strb	r3, [r7, #7]
 8003158:	2300      	movs	r3, #0
 800315a:	60fb      	str	r3, [r7, #12]
 800315c:	79fb      	ldrb	r3, [r7, #7]
 800315e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8003162:	b2db      	uxtb	r3, r3
 8003164:	4618      	mov	r0, r3
 8003166:	f7ff fcb1 	bl	8002acc <GetEPRxCount>
 800316a:	4603      	mov	r3, r0
 800316c:	60fb      	str	r3, [r7, #12]
 800316e:	79fb      	ldrb	r3, [r7, #7]
 8003170:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8003174:	b2db      	uxtb	r3, r3
 8003176:	4618      	mov	r0, r3
 8003178:	f7ff fbdc 	bl	8002934 <GetEPRxAddr>
 800317c:	4603      	mov	r3, r0
 800317e:	461a      	mov	r2, r3
 8003180:	68fb      	ldr	r3, [r7, #12]
 8003182:	b29b      	uxth	r3, r3
 8003184:	6838      	ldr	r0, [r7, #0]
 8003186:	4611      	mov	r1, r2
 8003188:	461a      	mov	r2, r3
 800318a:	f7fe fcff 	bl	8001b8c <PMAToUserBufferCopy>
 800318e:	68fb      	ldr	r3, [r7, #12]
 8003190:	4618      	mov	r0, r3
 8003192:	3710      	adds	r7, #16
 8003194:	46bd      	mov	sp, r7
 8003196:	bd80      	pop	{r7, pc}

08003198 <Virtual_Com_Port_DeviceDescriptor>:
 8003198:	0112 0200 0002 4000 0483 5740 0200 0201     .......@..@W....
 80031a8:	0103 0000                                   ....

080031ac <Virtual_Com_Port_ConfigDescriptor>:
 80031ac:	0209 0043 0102 c000 0932 0004 0100 0202     ..C.....2.......
 80031bc:	0001 2405 1000 0501 0124 0100 2404 0202     ...$....$....$..
 80031cc:	2405 0006 0701 8205 0803 ff00 0409 0001     .$..............
 80031dc:	0a02 0000 0700 0305 4002 0000 0507 0281     .........@......
 80031ec:	0040 0000                                   @...

080031f0 <Virtual_Com_Port_StringLangID>:
 80031f0:	0304 0409                                   ....

080031f4 <Virtual_Com_Port_StringVendor>:
 80031f4:	0326 0053 0054 004d 0069 0063 0072 006f     &.S.T.M.i.c.r.o.
 8003204:	0065 006c 0065 0063 0074 0072 006f 006e     e.l.e.c.t.r.o.n.
 8003214:	0069 0063 0073 0000                         i.c.s...

0800321c <Virtual_Com_Port_StringProduct>:
 800321c:	0332 0053 0054 004d 0033 0032 0020 0056     2.S.T.M.3.2. .V.
 800322c:	0069 0072 0074 0075 0061 006c 0020 0043     i.r.t.u.a.l. .C.
 800323c:	004f 004d 0020 0050 006f 0072 0074 0020     O.M. .P.o.r.t. .
 800324c:	0020 0000                                    ...
