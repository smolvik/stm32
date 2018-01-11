
test.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <table_interrupt_vector>:
 8000000:	00 20 00 20 31 16 00 08 91 16 00 08 91 16 00 08     . . 1...........
 8000010:	91 16 00 08 91 16 00 08 91 16 00 08 00 00 00 00     ................
	...
 800002c:	91 16 00 08 91 16 00 08 00 00 00 00 91 16 00 08     ................
 800003c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 800004c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 800005c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 800006c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 800007c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 800008c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 800009c:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 80000ac:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 80000bc:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................
 80000cc:	91 16 00 08 91 16 00 08 91 16 00 08 71 0e 00 08     ............q...
 80000dc:	91 16 00 08 91 16 00 08 91 16 00 08 91 16 00 08     ................

080000ec <usb_reset>:
 80000ec:	b590      	push	{r4, r7, lr}
 80000ee:	b085      	sub	sp, #20
 80000f0:	af00      	add	r7, sp, #0
 80000f2:	4ba6      	ldr	r3, [pc, #664]	; (800038c <usb_reset+0x2a0>)
 80000f4:	2200      	movs	r2, #0
 80000f6:	601a      	str	r2, [r3, #0]
 80000f8:	4aa4      	ldr	r2, [pc, #656]	; (800038c <usb_reset+0x2a0>)
 80000fa:	4ba4      	ldr	r3, [pc, #656]	; (800038c <usb_reset+0x2a0>)
 80000fc:	681b      	ldr	r3, [r3, #0]
 80000fe:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000102:	6013      	str	r3, [r2, #0]
 8000104:	4ba2      	ldr	r3, [pc, #648]	; (8000390 <usb_reset+0x2a4>)
 8000106:	2200      	movs	r2, #0
 8000108:	601a      	str	r2, [r3, #0]
 800010a:	4aa2      	ldr	r2, [pc, #648]	; (8000394 <usb_reset+0x2a8>)
 800010c:	4ba1      	ldr	r3, [pc, #644]	; (8000394 <usb_reset+0x2a8>)
 800010e:	681b      	ldr	r3, [r3, #0]
 8000110:	b21b      	sxth	r3, r3
 8000112:	f423 43ec 	bic.w	r3, r3, #30208	; 0x7600
 8000116:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800011a:	b21b      	sxth	r3, r3
 800011c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000120:	b21b      	sxth	r3, r3
 8000122:	b29b      	uxth	r3, r3
 8000124:	6013      	str	r3, [r2, #0]
 8000126:	499b      	ldr	r1, [pc, #620]	; (8000394 <usb_reset+0x2a8>)
 8000128:	4b9a      	ldr	r3, [pc, #616]	; (8000394 <usb_reset+0x2a8>)
 800012a:	681b      	ldr	r3, [r3, #0]
 800012c:	b21a      	sxth	r2, r3
 800012e:	f640 630f 	movw	r3, #3599	; 0xe0f
 8000132:	4013      	ands	r3, r2
 8000134:	b21a      	sxth	r2, r3
 8000136:	4b98      	ldr	r3, [pc, #608]	; (8000398 <usb_reset+0x2ac>)
 8000138:	4313      	orrs	r3, r2
 800013a:	b21b      	sxth	r3, r3
 800013c:	b29b      	uxth	r3, r3
 800013e:	600b      	str	r3, [r1, #0]
 8000140:	4b94      	ldr	r3, [pc, #592]	; (8000394 <usb_reset+0x2a8>)
 8000142:	681b      	ldr	r3, [r3, #0]
 8000144:	b29b      	uxth	r3, r3
 8000146:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 800014a:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 800014e:	b29c      	uxth	r4, r3
 8000150:	f084 0310 	eor.w	r3, r4, #16
 8000154:	b29c      	uxth	r4, r3
 8000156:	4a8f      	ldr	r2, [pc, #572]	; (8000394 <usb_reset+0x2a8>)
 8000158:	4b8f      	ldr	r3, [pc, #572]	; (8000398 <usb_reset+0x2ac>)
 800015a:	4323      	orrs	r3, r4
 800015c:	b29b      	uxth	r3, r3
 800015e:	6013      	str	r3, [r2, #0]
 8000160:	4b8c      	ldr	r3, [pc, #560]	; (8000394 <usb_reset+0x2a8>)
 8000162:	681b      	ldr	r3, [r3, #0]
 8000164:	b29b      	uxth	r3, r3
 8000166:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 800016a:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800016e:	b29c      	uxth	r4, r3
 8000170:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000174:	b29c      	uxth	r4, r3
 8000176:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 800017a:	b29c      	uxth	r4, r3
 800017c:	4a85      	ldr	r2, [pc, #532]	; (8000394 <usb_reset+0x2a8>)
 800017e:	4b86      	ldr	r3, [pc, #536]	; (8000398 <usb_reset+0x2ac>)
 8000180:	4323      	orrs	r3, r4
 8000182:	b29b      	uxth	r3, r3
 8000184:	6013      	str	r3, [r2, #0]
 8000186:	4b82      	ldr	r3, [pc, #520]	; (8000390 <usb_reset+0x2a4>)
 8000188:	681b      	ldr	r3, [r3, #0]
 800018a:	b29b      	uxth	r3, r3
 800018c:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 8000190:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 8000194:	005b      	lsls	r3, r3, #1
 8000196:	461a      	mov	r2, r3
 8000198:	2340      	movs	r3, #64	; 0x40
 800019a:	6013      	str	r3, [r2, #0]
 800019c:	4b7c      	ldr	r3, [pc, #496]	; (8000390 <usb_reset+0x2a4>)
 800019e:	681b      	ldr	r3, [r3, #0]
 80001a0:	b29b      	uxth	r3, r3
 80001a2:	461a      	mov	r2, r3
 80001a4:	4b7d      	ldr	r3, [pc, #500]	; (800039c <usb_reset+0x2b0>)
 80001a6:	4413      	add	r3, r2
 80001a8:	005b      	lsls	r3, r3, #1
 80001aa:	461a      	mov	r2, r3
 80001ac:	2340      	movs	r3, #64	; 0x40
 80001ae:	6013      	str	r3, [r2, #0]
 80001b0:	4b77      	ldr	r3, [pc, #476]	; (8000390 <usb_reset+0x2a4>)
 80001b2:	681b      	ldr	r3, [r3, #0]
 80001b4:	b29b      	uxth	r3, r3
 80001b6:	461a      	mov	r2, r3
 80001b8:	4b79      	ldr	r3, [pc, #484]	; (80003a0 <usb_reset+0x2b4>)
 80001ba:	4413      	add	r3, r2
 80001bc:	005b      	lsls	r3, r3, #1
 80001be:	461a      	mov	r2, r3
 80001c0:	2380      	movs	r3, #128	; 0x80
 80001c2:	6013      	str	r3, [r2, #0]
 80001c4:	4b72      	ldr	r3, [pc, #456]	; (8000390 <usb_reset+0x2a4>)
 80001c6:	681b      	ldr	r3, [r3, #0]
 80001c8:	b29b      	uxth	r3, r3
 80001ca:	461a      	mov	r2, r3
 80001cc:	4b75      	ldr	r3, [pc, #468]	; (80003a4 <usb_reset+0x2b8>)
 80001ce:	4413      	add	r3, r2
 80001d0:	005b      	lsls	r3, r3, #1
 80001d2:	60fb      	str	r3, [r7, #12]
 80001d4:	2302      	movs	r3, #2
 80001d6:	817b      	strh	r3, [r7, #10]
 80001d8:	897b      	ldrh	r3, [r7, #10]
 80001da:	3b01      	subs	r3, #1
 80001dc:	817b      	strh	r3, [r7, #10]
 80001de:	897b      	ldrh	r3, [r7, #10]
 80001e0:	029b      	lsls	r3, r3, #10
 80001e2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80001e6:	461a      	mov	r2, r3
 80001e8:	68fb      	ldr	r3, [r7, #12]
 80001ea:	601a      	str	r2, [r3, #0]
 80001ec:	4a6e      	ldr	r2, [pc, #440]	; (80003a8 <usb_reset+0x2bc>)
 80001ee:	4b6e      	ldr	r3, [pc, #440]	; (80003a8 <usb_reset+0x2bc>)
 80001f0:	681b      	ldr	r3, [r3, #0]
 80001f2:	b29b      	uxth	r3, r3
 80001f4:	4619      	mov	r1, r3
 80001f6:	f648 138f 	movw	r3, #35215	; 0x898f
 80001fa:	400b      	ands	r3, r1
 80001fc:	6013      	str	r3, [r2, #0]
 80001fe:	4b6a      	ldr	r3, [pc, #424]	; (80003a8 <usb_reset+0x2bc>)
 8000200:	681b      	ldr	r3, [r3, #0]
 8000202:	b29b      	uxth	r3, r3
 8000204:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000208:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 800020c:	b29c      	uxth	r4, r3
 800020e:	f084 0320 	eor.w	r3, r4, #32
 8000212:	b29c      	uxth	r4, r3
 8000214:	4a64      	ldr	r2, [pc, #400]	; (80003a8 <usb_reset+0x2bc>)
 8000216:	4b60      	ldr	r3, [pc, #384]	; (8000398 <usb_reset+0x2ac>)
 8000218:	4323      	orrs	r3, r4
 800021a:	b29b      	uxth	r3, r3
 800021c:	6013      	str	r3, [r2, #0]
 800021e:	4b62      	ldr	r3, [pc, #392]	; (80003a8 <usb_reset+0x2bc>)
 8000220:	681b      	ldr	r3, [r3, #0]
 8000222:	b29b      	uxth	r3, r3
 8000224:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000228:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800022c:	b29c      	uxth	r4, r3
 800022e:	4a5e      	ldr	r2, [pc, #376]	; (80003a8 <usb_reset+0x2bc>)
 8000230:	4b59      	ldr	r3, [pc, #356]	; (8000398 <usb_reset+0x2ac>)
 8000232:	4323      	orrs	r3, r4
 8000234:	b29b      	uxth	r3, r3
 8000236:	6013      	str	r3, [r2, #0]
 8000238:	4b55      	ldr	r3, [pc, #340]	; (8000390 <usb_reset+0x2a4>)
 800023a:	681b      	ldr	r3, [r3, #0]
 800023c:	b29b      	uxth	r3, r3
 800023e:	461a      	mov	r2, r3
 8000240:	4b5a      	ldr	r3, [pc, #360]	; (80003ac <usb_reset+0x2c0>)
 8000242:	4413      	add	r3, r2
 8000244:	005b      	lsls	r3, r3, #1
 8000246:	461a      	mov	r2, r3
 8000248:	23c0      	movs	r3, #192	; 0xc0
 800024a:	6013      	str	r3, [r2, #0]
 800024c:	4b50      	ldr	r3, [pc, #320]	; (8000390 <usb_reset+0x2a4>)
 800024e:	681b      	ldr	r3, [r3, #0]
 8000250:	b29b      	uxth	r3, r3
 8000252:	461a      	mov	r2, r3
 8000254:	4b56      	ldr	r3, [pc, #344]	; (80003b0 <usb_reset+0x2c4>)
 8000256:	4413      	add	r3, r2
 8000258:	005b      	lsls	r3, r3, #1
 800025a:	461a      	mov	r2, r3
 800025c:	2340      	movs	r3, #64	; 0x40
 800025e:	6013      	str	r3, [r2, #0]
 8000260:	4b51      	ldr	r3, [pc, #324]	; (80003a8 <usb_reset+0x2bc>)
 8000262:	681b      	ldr	r3, [r3, #0]
 8000264:	b29b      	uxth	r3, r3
 8000266:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800026a:	2b00      	cmp	r3, #0
 800026c:	d00c      	beq.n	8000288 <usb_reset+0x19c>
 800026e:	4a4e      	ldr	r2, [pc, #312]	; (80003a8 <usb_reset+0x2bc>)
 8000270:	4b4d      	ldr	r3, [pc, #308]	; (80003a8 <usb_reset+0x2bc>)
 8000272:	681b      	ldr	r3, [r3, #0]
 8000274:	b29b      	uxth	r3, r3
 8000276:	4619      	mov	r1, r3
 8000278:	f640 730f 	movw	r3, #3855	; 0xf0f
 800027c:	400b      	ands	r3, r1
 800027e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000282:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 8000286:	6013      	str	r3, [r2, #0]
 8000288:	4b47      	ldr	r3, [pc, #284]	; (80003a8 <usb_reset+0x2bc>)
 800028a:	681b      	ldr	r3, [r3, #0]
 800028c:	b29b      	uxth	r3, r3
 800028e:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000292:	2b00      	cmp	r3, #0
 8000294:	d00c      	beq.n	80002b0 <usb_reset+0x1c4>
 8000296:	4a44      	ldr	r2, [pc, #272]	; (80003a8 <usb_reset+0x2bc>)
 8000298:	4b43      	ldr	r3, [pc, #268]	; (80003a8 <usb_reset+0x2bc>)
 800029a:	681b      	ldr	r3, [r3, #0]
 800029c:	b29b      	uxth	r3, r3
 800029e:	4619      	mov	r1, r3
 80002a0:	f640 730f 	movw	r3, #3855	; 0xf0f
 80002a4:	400b      	ands	r3, r1
 80002a6:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80002aa:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80002ae:	6013      	str	r3, [r2, #0]
 80002b0:	4a40      	ldr	r2, [pc, #256]	; (80003b4 <usb_reset+0x2c8>)
 80002b2:	4b40      	ldr	r3, [pc, #256]	; (80003b4 <usb_reset+0x2c8>)
 80002b4:	681b      	ldr	r3, [r3, #0]
 80002b6:	b21b      	sxth	r3, r3
 80002b8:	f423 43ec 	bic.w	r3, r3, #30208	; 0x7600
 80002bc:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80002c0:	b21b      	sxth	r3, r3
 80002c2:	f443 63c0 	orr.w	r3, r3, #1536	; 0x600
 80002c6:	b21b      	sxth	r3, r3
 80002c8:	b29b      	uxth	r3, r3
 80002ca:	6013      	str	r3, [r2, #0]
 80002cc:	4b39      	ldr	r3, [pc, #228]	; (80003b4 <usb_reset+0x2c8>)
 80002ce:	681b      	ldr	r3, [r3, #0]
 80002d0:	b29b      	uxth	r3, r3
 80002d2:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80002d6:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80002da:	b29c      	uxth	r4, r3
 80002dc:	4a35      	ldr	r2, [pc, #212]	; (80003b4 <usb_reset+0x2c8>)
 80002de:	4b2e      	ldr	r3, [pc, #184]	; (8000398 <usb_reset+0x2ac>)
 80002e0:	4323      	orrs	r3, r4
 80002e2:	b29b      	uxth	r3, r3
 80002e4:	6013      	str	r3, [r2, #0]
 80002e6:	4b33      	ldr	r3, [pc, #204]	; (80003b4 <usb_reset+0x2c8>)
 80002e8:	681b      	ldr	r3, [r3, #0]
 80002ea:	b29b      	uxth	r3, r3
 80002ec:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 80002f0:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80002f4:	b29c      	uxth	r4, r3
 80002f6:	f084 0320 	eor.w	r3, r4, #32
 80002fa:	b29c      	uxth	r4, r3
 80002fc:	4a2d      	ldr	r2, [pc, #180]	; (80003b4 <usb_reset+0x2c8>)
 80002fe:	4b26      	ldr	r3, [pc, #152]	; (8000398 <usb_reset+0x2ac>)
 8000300:	4323      	orrs	r3, r4
 8000302:	b29b      	uxth	r3, r3
 8000304:	6013      	str	r3, [r2, #0]
 8000306:	4b22      	ldr	r3, [pc, #136]	; (8000390 <usb_reset+0x2a4>)
 8000308:	681b      	ldr	r3, [r3, #0]
 800030a:	b29b      	uxth	r3, r3
 800030c:	461a      	mov	r2, r3
 800030e:	4b2a      	ldr	r3, [pc, #168]	; (80003b8 <usb_reset+0x2cc>)
 8000310:	4413      	add	r3, r2
 8000312:	005b      	lsls	r3, r3, #1
 8000314:	461a      	mov	r2, r3
 8000316:	f44f 7380 	mov.w	r3, #256	; 0x100
 800031a:	6013      	str	r3, [r2, #0]
 800031c:	4b1c      	ldr	r3, [pc, #112]	; (8000390 <usb_reset+0x2a4>)
 800031e:	681b      	ldr	r3, [r3, #0]
 8000320:	b29b      	uxth	r3, r3
 8000322:	461a      	mov	r2, r3
 8000324:	4b25      	ldr	r3, [pc, #148]	; (80003bc <usb_reset+0x2d0>)
 8000326:	4413      	add	r3, r2
 8000328:	005b      	lsls	r3, r3, #1
 800032a:	461a      	mov	r2, r3
 800032c:	2310      	movs	r3, #16
 800032e:	6013      	str	r3, [r2, #0]
 8000330:	4b20      	ldr	r3, [pc, #128]	; (80003b4 <usb_reset+0x2c8>)
 8000332:	681b      	ldr	r3, [r3, #0]
 8000334:	b29b      	uxth	r3, r3
 8000336:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800033a:	2b00      	cmp	r3, #0
 800033c:	d00c      	beq.n	8000358 <usb_reset+0x26c>
 800033e:	4a1d      	ldr	r2, [pc, #116]	; (80003b4 <usb_reset+0x2c8>)
 8000340:	4b1c      	ldr	r3, [pc, #112]	; (80003b4 <usb_reset+0x2c8>)
 8000342:	681b      	ldr	r3, [r3, #0]
 8000344:	b29b      	uxth	r3, r3
 8000346:	4619      	mov	r1, r3
 8000348:	f640 730f 	movw	r3, #3855	; 0xf0f
 800034c:	400b      	ands	r3, r1
 800034e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000352:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 8000356:	6013      	str	r3, [r2, #0]
 8000358:	4b16      	ldr	r3, [pc, #88]	; (80003b4 <usb_reset+0x2c8>)
 800035a:	681b      	ldr	r3, [r3, #0]
 800035c:	b29b      	uxth	r3, r3
 800035e:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8000362:	2b00      	cmp	r3, #0
 8000364:	d00c      	beq.n	8000380 <usb_reset+0x294>
 8000366:	4a13      	ldr	r2, [pc, #76]	; (80003b4 <usb_reset+0x2c8>)
 8000368:	4b12      	ldr	r3, [pc, #72]	; (80003b4 <usb_reset+0x2c8>)
 800036a:	681b      	ldr	r3, [r3, #0]
 800036c:	b29b      	uxth	r3, r3
 800036e:	4619      	mov	r1, r3
 8000370:	f640 730f 	movw	r3, #3855	; 0xf0f
 8000374:	400b      	ands	r3, r1
 8000376:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 800037a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800037e:	6013      	str	r3, [r2, #0]
 8000380:	4a0f      	ldr	r2, [pc, #60]	; (80003c0 <usb_reset+0x2d4>)
 8000382:	4b0f      	ldr	r3, [pc, #60]	; (80003c0 <usb_reset+0x2d4>)
 8000384:	681b      	ldr	r3, [r3, #0]
 8000386:	b29b      	uxth	r3, r3
 8000388:	4619      	mov	r1, r3
 800038a:	e01b      	b.n	80003c4 <usb_reset+0x2d8>
 800038c:	40005c4c 	.word	0x40005c4c
 8000390:	40005c50 	.word	0x40005c50
 8000394:	40005c00 	.word	0x40005c00
 8000398:	ffff8080 	.word	0xffff8080
 800039c:	20003002 	.word	0x20003002
 80003a0:	20003004 	.word	0x20003004
 80003a4:	20003006 	.word	0x20003006
 80003a8:	40005c04 	.word	0x40005c04
 80003ac:	20003008 	.word	0x20003008
 80003b0:	2000300a 	.word	0x2000300a
 80003b4:	40005c08 	.word	0x40005c08
 80003b8:	20003010 	.word	0x20003010
 80003bc:	20003012 	.word	0x20003012
 80003c0:	40005c0c 	.word	0x40005c0c
 80003c4:	f648 138f 	movw	r3, #35215	; 0x898f
 80003c8:	400b      	ands	r3, r1
 80003ca:	6013      	str	r3, [r2, #0]
 80003cc:	4b44      	ldr	r3, [pc, #272]	; (80004e0 <usb_reset+0x3f4>)
 80003ce:	681b      	ldr	r3, [r3, #0]
 80003d0:	b29b      	uxth	r3, r3
 80003d2:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80003d6:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80003da:	b29c      	uxth	r4, r3
 80003dc:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80003e0:	b29c      	uxth	r4, r3
 80003e2:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80003e6:	b29c      	uxth	r4, r3
 80003e8:	4a3d      	ldr	r2, [pc, #244]	; (80004e0 <usb_reset+0x3f4>)
 80003ea:	4b3e      	ldr	r3, [pc, #248]	; (80004e4 <usb_reset+0x3f8>)
 80003ec:	4323      	orrs	r3, r4
 80003ee:	b29b      	uxth	r3, r3
 80003f0:	6013      	str	r3, [r2, #0]
 80003f2:	4b3b      	ldr	r3, [pc, #236]	; (80004e0 <usb_reset+0x3f4>)
 80003f4:	681b      	ldr	r3, [r3, #0]
 80003f6:	b29b      	uxth	r3, r3
 80003f8:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 80003fc:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000400:	b29c      	uxth	r4, r3
 8000402:	4a37      	ldr	r2, [pc, #220]	; (80004e0 <usb_reset+0x3f4>)
 8000404:	4b37      	ldr	r3, [pc, #220]	; (80004e4 <usb_reset+0x3f8>)
 8000406:	4323      	orrs	r3, r4
 8000408:	b29b      	uxth	r3, r3
 800040a:	6013      	str	r3, [r2, #0]
 800040c:	4b36      	ldr	r3, [pc, #216]	; (80004e8 <usb_reset+0x3fc>)
 800040e:	681b      	ldr	r3, [r3, #0]
 8000410:	b29b      	uxth	r3, r3
 8000412:	461a      	mov	r2, r3
 8000414:	4b35      	ldr	r3, [pc, #212]	; (80004ec <usb_reset+0x400>)
 8000416:	4413      	add	r3, r2
 8000418:	005b      	lsls	r3, r3, #1
 800041a:	461a      	mov	r2, r3
 800041c:	f44f 7388 	mov.w	r3, #272	; 0x110
 8000420:	6013      	str	r3, [r2, #0]
 8000422:	4b31      	ldr	r3, [pc, #196]	; (80004e8 <usb_reset+0x3fc>)
 8000424:	681b      	ldr	r3, [r3, #0]
 8000426:	b29b      	uxth	r3, r3
 8000428:	461a      	mov	r2, r3
 800042a:	4b31      	ldr	r3, [pc, #196]	; (80004f0 <usb_reset+0x404>)
 800042c:	4413      	add	r3, r2
 800042e:	005b      	lsls	r3, r3, #1
 8000430:	607b      	str	r3, [r7, #4]
 8000432:	2302      	movs	r3, #2
 8000434:	807b      	strh	r3, [r7, #2]
 8000436:	887b      	ldrh	r3, [r7, #2]
 8000438:	3b01      	subs	r3, #1
 800043a:	807b      	strh	r3, [r7, #2]
 800043c:	887b      	ldrh	r3, [r7, #2]
 800043e:	029b      	lsls	r3, r3, #10
 8000440:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000444:	461a      	mov	r2, r3
 8000446:	687b      	ldr	r3, [r7, #4]
 8000448:	601a      	str	r2, [r3, #0]
 800044a:	4b27      	ldr	r3, [pc, #156]	; (80004e8 <usb_reset+0x3fc>)
 800044c:	681a      	ldr	r2, [r3, #0]
 800044e:	b293      	uxth	r3, r2
 8000450:	4619      	mov	r1, r3
 8000452:	4b27      	ldr	r3, [pc, #156]	; (80004f0 <usb_reset+0x404>)
 8000454:	440b      	add	r3, r1
 8000456:	005b      	lsls	r3, r3, #1
 8000458:	4619      	mov	r1, r3
 800045a:	b293      	uxth	r3, r2
 800045c:	461a      	mov	r2, r3
 800045e:	4b24      	ldr	r3, [pc, #144]	; (80004f0 <usb_reset+0x404>)
 8000460:	4413      	add	r3, r2
 8000462:	005b      	lsls	r3, r3, #1
 8000464:	681b      	ldr	r3, [r3, #0]
 8000466:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 800046a:	f023 0303 	bic.w	r3, r3, #3
 800046e:	600b      	str	r3, [r1, #0]
 8000470:	4b1b      	ldr	r3, [pc, #108]	; (80004e0 <usb_reset+0x3f4>)
 8000472:	681b      	ldr	r3, [r3, #0]
 8000474:	b29b      	uxth	r3, r3
 8000476:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800047a:	2b00      	cmp	r3, #0
 800047c:	d00c      	beq.n	8000498 <usb_reset+0x3ac>
 800047e:	4a18      	ldr	r2, [pc, #96]	; (80004e0 <usb_reset+0x3f4>)
 8000480:	4b17      	ldr	r3, [pc, #92]	; (80004e0 <usb_reset+0x3f4>)
 8000482:	681b      	ldr	r3, [r3, #0]
 8000484:	b29b      	uxth	r3, r3
 8000486:	4619      	mov	r1, r3
 8000488:	f640 730f 	movw	r3, #3855	; 0xf0f
 800048c:	400b      	ands	r3, r1
 800048e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000492:	f043 03c0 	orr.w	r3, r3, #192	; 0xc0
 8000496:	6013      	str	r3, [r2, #0]
 8000498:	4b11      	ldr	r3, [pc, #68]	; (80004e0 <usb_reset+0x3f4>)
 800049a:	681b      	ldr	r3, [r3, #0]
 800049c:	b29b      	uxth	r3, r3
 800049e:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 80004a2:	2b00      	cmp	r3, #0
 80004a4:	d00c      	beq.n	80004c0 <usb_reset+0x3d4>
 80004a6:	4a0e      	ldr	r2, [pc, #56]	; (80004e0 <usb_reset+0x3f4>)
 80004a8:	4b0d      	ldr	r3, [pc, #52]	; (80004e0 <usb_reset+0x3f4>)
 80004aa:	681b      	ldr	r3, [r3, #0]
 80004ac:	b29b      	uxth	r3, r3
 80004ae:	4619      	mov	r1, r3
 80004b0:	f640 730f 	movw	r3, #3855	; 0xf0f
 80004b4:	400b      	ands	r3, r1
 80004b6:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80004ba:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80004be:	6013      	str	r3, [r2, #0]
 80004c0:	4b0c      	ldr	r3, [pc, #48]	; (80004f4 <usb_reset+0x408>)
 80004c2:	4a0d      	ldr	r2, [pc, #52]	; (80004f8 <usb_reset+0x40c>)
 80004c4:	601a      	str	r2, [r3, #0]
 80004c6:	4b0d      	ldr	r3, [pc, #52]	; (80004fc <usb_reset+0x410>)
 80004c8:	4a0d      	ldr	r2, [pc, #52]	; (8000500 <usb_reset+0x414>)
 80004ca:	601a      	str	r2, [r3, #0]
 80004cc:	f001 f806 	bl	80014dc <led_off>
 80004d0:	4b0c      	ldr	r3, [pc, #48]	; (8000504 <usb_reset+0x418>)
 80004d2:	2201      	movs	r2, #1
 80004d4:	601a      	str	r2, [r3, #0]
 80004d6:	bf00      	nop
 80004d8:	3714      	adds	r7, #20
 80004da:	46bd      	mov	sp, r7
 80004dc:	bd90      	pop	{r4, r7, pc}
 80004de:	bf00      	nop
 80004e0:	40005c0c 	.word	0x40005c0c
 80004e4:	ffff8080 	.word	0xffff8080
 80004e8:	40005c50 	.word	0x40005c50
 80004ec:	2000301c 	.word	0x2000301c
 80004f0:	2000301e 	.word	0x2000301e
 80004f4:	2000001c 	.word	0x2000001c
 80004f8:	08000509 	.word	0x08000509
 80004fc:	20000020 	.word	0x20000020
 8000500:	08000551 	.word	0x08000551
 8000504:	20000044 	.word	0x20000044

08000508 <null_proc>:
 8000508:	b480      	push	{r7}
 800050a:	af00      	add	r7, sp, #0
 800050c:	bf00      	nop
 800050e:	46bd      	mov	sp, r7
 8000510:	bc80      	pop	{r7}
 8000512:	4770      	bx	lr

08000514 <enable_TX_proc>:
 8000514:	b490      	push	{r4, r7}
 8000516:	af00      	add	r7, sp, #0
 8000518:	4b0b      	ldr	r3, [pc, #44]	; (8000548 <enable_TX_proc+0x34>)
 800051a:	681b      	ldr	r3, [r3, #0]
 800051c:	b29b      	uxth	r3, r3
 800051e:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000522:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000526:	b29c      	uxth	r4, r3
 8000528:	f084 0310 	eor.w	r3, r4, #16
 800052c:	b29c      	uxth	r4, r3
 800052e:	f084 0320 	eor.w	r3, r4, #32
 8000532:	b29c      	uxth	r4, r3
 8000534:	4a04      	ldr	r2, [pc, #16]	; (8000548 <enable_TX_proc+0x34>)
 8000536:	4b05      	ldr	r3, [pc, #20]	; (800054c <enable_TX_proc+0x38>)
 8000538:	4323      	orrs	r3, r4
 800053a:	b29b      	uxth	r3, r3
 800053c:	6013      	str	r3, [r2, #0]
 800053e:	bf00      	nop
 8000540:	46bd      	mov	sp, r7
 8000542:	bc90      	pop	{r4, r7}
 8000544:	4770      	bx	lr
 8000546:	bf00      	nop
 8000548:	40005c00 	.word	0x40005c00
 800054c:	ffff8080 	.word	0xffff8080

08000550 <enable_RX_proc>:
 8000550:	b490      	push	{r4, r7}
 8000552:	af00      	add	r7, sp, #0
 8000554:	4b0b      	ldr	r3, [pc, #44]	; (8000584 <enable_RX_proc+0x34>)
 8000556:	681b      	ldr	r3, [r3, #0]
 8000558:	b29b      	uxth	r3, r3
 800055a:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 800055e:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000562:	b29c      	uxth	r4, r3
 8000564:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000568:	b29c      	uxth	r4, r3
 800056a:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 800056e:	b29c      	uxth	r4, r3
 8000570:	4a04      	ldr	r2, [pc, #16]	; (8000584 <enable_RX_proc+0x34>)
 8000572:	4b05      	ldr	r3, [pc, #20]	; (8000588 <enable_RX_proc+0x38>)
 8000574:	4323      	orrs	r3, r4
 8000576:	b29b      	uxth	r3, r3
 8000578:	6013      	str	r3, [r2, #0]
 800057a:	bf00      	nop
 800057c:	46bd      	mov	sp, r7
 800057e:	bc90      	pop	{r4, r7}
 8000580:	4770      	bx	lr
 8000582:	bf00      	nop
 8000584:	40005c00 	.word	0x40005c00
 8000588:	ffff8080 	.word	0xffff8080

0800058c <plan_ZeroLength_IN_proc>:
 800058c:	b490      	push	{r4, r7}
 800058e:	af00      	add	r7, sp, #0
 8000590:	4b10      	ldr	r3, [pc, #64]	; (80005d4 <plan_ZeroLength_IN_proc+0x48>)
 8000592:	681b      	ldr	r3, [r3, #0]
 8000594:	b29b      	uxth	r3, r3
 8000596:	461a      	mov	r2, r3
 8000598:	4b0f      	ldr	r3, [pc, #60]	; (80005d8 <plan_ZeroLength_IN_proc+0x4c>)
 800059a:	4413      	add	r3, r2
 800059c:	005b      	lsls	r3, r3, #1
 800059e:	461a      	mov	r2, r3
 80005a0:	2300      	movs	r3, #0
 80005a2:	6013      	str	r3, [r2, #0]
 80005a4:	4b0d      	ldr	r3, [pc, #52]	; (80005dc <plan_ZeroLength_IN_proc+0x50>)
 80005a6:	681b      	ldr	r3, [r3, #0]
 80005a8:	b29b      	uxth	r3, r3
 80005aa:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 80005ae:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80005b2:	b29c      	uxth	r4, r3
 80005b4:	f084 0310 	eor.w	r3, r4, #16
 80005b8:	b29c      	uxth	r4, r3
 80005ba:	f084 0320 	eor.w	r3, r4, #32
 80005be:	b29c      	uxth	r4, r3
 80005c0:	4a06      	ldr	r2, [pc, #24]	; (80005dc <plan_ZeroLength_IN_proc+0x50>)
 80005c2:	4b07      	ldr	r3, [pc, #28]	; (80005e0 <plan_ZeroLength_IN_proc+0x54>)
 80005c4:	4323      	orrs	r3, r4
 80005c6:	b29b      	uxth	r3, r3
 80005c8:	6013      	str	r3, [r2, #0]
 80005ca:	bf00      	nop
 80005cc:	46bd      	mov	sp, r7
 80005ce:	bc90      	pop	{r4, r7}
 80005d0:	4770      	bx	lr
 80005d2:	bf00      	nop
 80005d4:	40005c50 	.word	0x40005c50
 80005d8:	20003002 	.word	0x20003002
 80005dc:	40005c00 	.word	0x40005c00
 80005e0:	ffff8080 	.word	0xffff8080

080005e4 <plan_ZeroLength_OUT_proc>:
 80005e4:	b490      	push	{r4, r7}
 80005e6:	af00      	add	r7, sp, #0
 80005e8:	4b0e      	ldr	r3, [pc, #56]	; (8000624 <plan_ZeroLength_OUT_proc+0x40>)
 80005ea:	681b      	ldr	r3, [r3, #0]
 80005ec:	b29b      	uxth	r3, r3
 80005ee:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80005f2:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80005f6:	b29c      	uxth	r4, r3
 80005f8:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80005fc:	b29c      	uxth	r4, r3
 80005fe:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000602:	b29c      	uxth	r4, r3
 8000604:	4a07      	ldr	r2, [pc, #28]	; (8000624 <plan_ZeroLength_OUT_proc+0x40>)
 8000606:	4b08      	ldr	r3, [pc, #32]	; (8000628 <plan_ZeroLength_OUT_proc+0x44>)
 8000608:	4323      	orrs	r3, r4
 800060a:	b29b      	uxth	r3, r3
 800060c:	6013      	str	r3, [r2, #0]
 800060e:	4b07      	ldr	r3, [pc, #28]	; (800062c <plan_ZeroLength_OUT_proc+0x48>)
 8000610:	4a07      	ldr	r2, [pc, #28]	; (8000630 <plan_ZeroLength_OUT_proc+0x4c>)
 8000612:	601a      	str	r2, [r3, #0]
 8000614:	4b07      	ldr	r3, [pc, #28]	; (8000634 <plan_ZeroLength_OUT_proc+0x50>)
 8000616:	4a08      	ldr	r2, [pc, #32]	; (8000638 <plan_ZeroLength_OUT_proc+0x54>)
 8000618:	601a      	str	r2, [r3, #0]
 800061a:	bf00      	nop
 800061c:	46bd      	mov	sp, r7
 800061e:	bc90      	pop	{r4, r7}
 8000620:	4770      	bx	lr
 8000622:	bf00      	nop
 8000624:	40005c00 	.word	0x40005c00
 8000628:	ffff8080 	.word	0xffff8080
 800062c:	2000001c 	.word	0x2000001c
 8000630:	08000509 	.word	0x08000509
 8000634:	20000020 	.word	0x20000020
 8000638:	08000551 	.word	0x08000551

0800063c <input0_for_setaddr_proc>:
 800063c:	b490      	push	{r4, r7}
 800063e:	af00      	add	r7, sp, #0
 8000640:	4a25      	ldr	r2, [pc, #148]	; (80006d8 <input0_for_setaddr_proc+0x9c>)
 8000642:	4b25      	ldr	r3, [pc, #148]	; (80006d8 <input0_for_setaddr_proc+0x9c>)
 8000644:	681b      	ldr	r3, [r3, #0]
 8000646:	4925      	ldr	r1, [pc, #148]	; (80006dc <input0_for_setaddr_proc+0xa0>)
 8000648:	8809      	ldrh	r1, [r1, #0]
 800064a:	430b      	orrs	r3, r1
 800064c:	6013      	str	r3, [r2, #0]
 800064e:	4b24      	ldr	r3, [pc, #144]	; (80006e0 <input0_for_setaddr_proc+0xa4>)
 8000650:	2204      	movs	r2, #4
 8000652:	601a      	str	r2, [r3, #0]
 8000654:	4a23      	ldr	r2, [pc, #140]	; (80006e4 <input0_for_setaddr_proc+0xa8>)
 8000656:	4b23      	ldr	r3, [pc, #140]	; (80006e4 <input0_for_setaddr_proc+0xa8>)
 8000658:	681b      	ldr	r3, [r3, #0]
 800065a:	b29b      	uxth	r3, r3
 800065c:	4619      	mov	r1, r3
 800065e:	f640 730e 	movw	r3, #3854	; 0xf0e
 8000662:	400b      	ands	r3, r1
 8000664:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000668:	f043 0381 	orr.w	r3, r3, #129	; 0x81
 800066c:	6013      	str	r3, [r2, #0]
 800066e:	4a1e      	ldr	r2, [pc, #120]	; (80006e8 <input0_for_setaddr_proc+0xac>)
 8000670:	4b1d      	ldr	r3, [pc, #116]	; (80006e8 <input0_for_setaddr_proc+0xac>)
 8000672:	681b      	ldr	r3, [r3, #0]
 8000674:	b29b      	uxth	r3, r3
 8000676:	4619      	mov	r1, r3
 8000678:	f640 730d 	movw	r3, #3853	; 0xf0d
 800067c:	400b      	ands	r3, r1
 800067e:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000682:	f043 0382 	orr.w	r3, r3, #130	; 0x82
 8000686:	6013      	str	r3, [r2, #0]
 8000688:	4a18      	ldr	r2, [pc, #96]	; (80006ec <input0_for_setaddr_proc+0xb0>)
 800068a:	4b18      	ldr	r3, [pc, #96]	; (80006ec <input0_for_setaddr_proc+0xb0>)
 800068c:	681b      	ldr	r3, [r3, #0]
 800068e:	b29b      	uxth	r3, r3
 8000690:	4619      	mov	r1, r3
 8000692:	f640 730c 	movw	r3, #3852	; 0xf0c
 8000696:	400b      	ands	r3, r1
 8000698:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800069c:	f043 0383 	orr.w	r3, r3, #131	; 0x83
 80006a0:	6013      	str	r3, [r2, #0]
 80006a2:	4b13      	ldr	r3, [pc, #76]	; (80006f0 <input0_for_setaddr_proc+0xb4>)
 80006a4:	681b      	ldr	r3, [r3, #0]
 80006a6:	b29b      	uxth	r3, r3
 80006a8:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80006ac:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80006b0:	b29c      	uxth	r4, r3
 80006b2:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80006b6:	b29c      	uxth	r4, r3
 80006b8:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80006bc:	b29c      	uxth	r4, r3
 80006be:	4a0c      	ldr	r2, [pc, #48]	; (80006f0 <input0_for_setaddr_proc+0xb4>)
 80006c0:	4b0c      	ldr	r3, [pc, #48]	; (80006f4 <input0_for_setaddr_proc+0xb8>)
 80006c2:	4323      	orrs	r3, r4
 80006c4:	b29b      	uxth	r3, r3
 80006c6:	6013      	str	r3, [r2, #0]
 80006c8:	4b0b      	ldr	r3, [pc, #44]	; (80006f8 <input0_for_setaddr_proc+0xbc>)
 80006ca:	4a0c      	ldr	r2, [pc, #48]	; (80006fc <input0_for_setaddr_proc+0xc0>)
 80006cc:	601a      	str	r2, [r3, #0]
 80006ce:	bf00      	nop
 80006d0:	46bd      	mov	sp, r7
 80006d2:	bc90      	pop	{r4, r7}
 80006d4:	4770      	bx	lr
 80006d6:	bf00      	nop
 80006d8:	40005c4c 	.word	0x40005c4c
 80006dc:	20000024 	.word	0x20000024
 80006e0:	20000044 	.word	0x20000044
 80006e4:	40005c04 	.word	0x40005c04
 80006e8:	40005c08 	.word	0x40005c08
 80006ec:	40005c0c 	.word	0x40005c0c
 80006f0:	40005c00 	.word	0x40005c00
 80006f4:	ffff8080 	.word	0xffff8080
 80006f8:	2000001c 	.word	0x2000001c
 80006fc:	08000509 	.word	0x08000509

08000700 <input0_for_setconfig_proc>:
 8000700:	b598      	push	{r3, r4, r7, lr}
 8000702:	af00      	add	r7, sp, #0
 8000704:	4b0e      	ldr	r3, [pc, #56]	; (8000740 <input0_for_setconfig_proc+0x40>)
 8000706:	2205      	movs	r2, #5
 8000708:	601a      	str	r2, [r3, #0]
 800070a:	f000 fed9 	bl	80014c0 <led_on>
 800070e:	4b0d      	ldr	r3, [pc, #52]	; (8000744 <input0_for_setconfig_proc+0x44>)
 8000710:	681b      	ldr	r3, [r3, #0]
 8000712:	b29b      	uxth	r3, r3
 8000714:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000718:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800071c:	b29c      	uxth	r4, r3
 800071e:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000722:	b29c      	uxth	r4, r3
 8000724:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000728:	b29c      	uxth	r4, r3
 800072a:	4a06      	ldr	r2, [pc, #24]	; (8000744 <input0_for_setconfig_proc+0x44>)
 800072c:	4b06      	ldr	r3, [pc, #24]	; (8000748 <input0_for_setconfig_proc+0x48>)
 800072e:	4323      	orrs	r3, r4
 8000730:	b29b      	uxth	r3, r3
 8000732:	6013      	str	r3, [r2, #0]
 8000734:	4b05      	ldr	r3, [pc, #20]	; (800074c <input0_for_setconfig_proc+0x4c>)
 8000736:	4a06      	ldr	r2, [pc, #24]	; (8000750 <input0_for_setconfig_proc+0x50>)
 8000738:	601a      	str	r2, [r3, #0]
 800073a:	bf00      	nop
 800073c:	bd98      	pop	{r3, r4, r7, pc}
 800073e:	bf00      	nop
 8000740:	20000044 	.word	0x20000044
 8000744:	40005c00 	.word	0x40005c00
 8000748:	ffff8080 	.word	0xffff8080
 800074c:	2000001c 	.word	0x2000001c
 8000750:	08000509 	.word	0x08000509

08000754 <input0_for_setcontrolline_proc>:
 8000754:	b490      	push	{r4, r7}
 8000756:	af00      	add	r7, sp, #0
 8000758:	4b0c      	ldr	r3, [pc, #48]	; (800078c <input0_for_setcontrolline_proc+0x38>)
 800075a:	681b      	ldr	r3, [r3, #0]
 800075c:	b29b      	uxth	r3, r3
 800075e:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000762:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000766:	b29c      	uxth	r4, r3
 8000768:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 800076c:	b29c      	uxth	r4, r3
 800076e:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000772:	b29c      	uxth	r4, r3
 8000774:	4a05      	ldr	r2, [pc, #20]	; (800078c <input0_for_setcontrolline_proc+0x38>)
 8000776:	4b06      	ldr	r3, [pc, #24]	; (8000790 <input0_for_setcontrolline_proc+0x3c>)
 8000778:	4323      	orrs	r3, r4
 800077a:	b29b      	uxth	r3, r3
 800077c:	6013      	str	r3, [r2, #0]
 800077e:	4b05      	ldr	r3, [pc, #20]	; (8000794 <input0_for_setcontrolline_proc+0x40>)
 8000780:	4a05      	ldr	r2, [pc, #20]	; (8000798 <input0_for_setcontrolline_proc+0x44>)
 8000782:	601a      	str	r2, [r3, #0]
 8000784:	bf00      	nop
 8000786:	46bd      	mov	sp, r7
 8000788:	bc90      	pop	{r4, r7}
 800078a:	4770      	bx	lr
 800078c:	40005c00 	.word	0x40005c00
 8000790:	ffff8080 	.word	0xffff8080
 8000794:	2000001c 	.word	0x2000001c
 8000798:	08000509 	.word	0x08000509

0800079c <output0_for_setlinecoding_proc>:
 800079c:	b590      	push	{r4, r7, lr}
 800079e:	b083      	sub	sp, #12
 80007a0:	af00      	add	r7, sp, #0
 80007a2:	4b18      	ldr	r3, [pc, #96]	; (8000804 <output0_for_setlinecoding_proc+0x68>)
 80007a4:	681b      	ldr	r3, [r3, #0]
 80007a6:	b29b      	uxth	r3, r3
 80007a8:	461a      	mov	r2, r3
 80007aa:	4b17      	ldr	r3, [pc, #92]	; (8000808 <output0_for_setlinecoding_proc+0x6c>)
 80007ac:	4413      	add	r3, r2
 80007ae:	005b      	lsls	r3, r3, #1
 80007b0:	681b      	ldr	r3, [r3, #0]
 80007b2:	b29b      	uxth	r3, r3
 80007b4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 80007b8:	607b      	str	r3, [r7, #4]
 80007ba:	2207      	movs	r2, #7
 80007bc:	2180      	movs	r1, #128	; 0x80
 80007be:	4813      	ldr	r0, [pc, #76]	; (800080c <output0_for_setlinecoding_proc+0x70>)
 80007c0:	f000 feea 	bl	8001598 <pma_to_user_copy>
 80007c4:	f7ff fee2 	bl	800058c <plan_ZeroLength_IN_proc>
 80007c8:	4b11      	ldr	r3, [pc, #68]	; (8000810 <output0_for_setlinecoding_proc+0x74>)
 80007ca:	4a12      	ldr	r2, [pc, #72]	; (8000814 <output0_for_setlinecoding_proc+0x78>)
 80007cc:	601a      	str	r2, [r3, #0]
 80007ce:	4b12      	ldr	r3, [pc, #72]	; (8000818 <output0_for_setlinecoding_proc+0x7c>)
 80007d0:	681b      	ldr	r3, [r3, #0]
 80007d2:	b29b      	uxth	r3, r3
 80007d4:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80007d8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80007dc:	b29c      	uxth	r4, r3
 80007de:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 80007e2:	b29c      	uxth	r4, r3
 80007e4:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 80007e8:	b29c      	uxth	r4, r3
 80007ea:	4a0b      	ldr	r2, [pc, #44]	; (8000818 <output0_for_setlinecoding_proc+0x7c>)
 80007ec:	4b0b      	ldr	r3, [pc, #44]	; (800081c <output0_for_setlinecoding_proc+0x80>)
 80007ee:	4323      	orrs	r3, r4
 80007f0:	b29b      	uxth	r3, r3
 80007f2:	6013      	str	r3, [r2, #0]
 80007f4:	4b0a      	ldr	r3, [pc, #40]	; (8000820 <output0_for_setlinecoding_proc+0x84>)
 80007f6:	4a0b      	ldr	r2, [pc, #44]	; (8000824 <output0_for_setlinecoding_proc+0x88>)
 80007f8:	601a      	str	r2, [r3, #0]
 80007fa:	bf00      	nop
 80007fc:	370c      	adds	r7, #12
 80007fe:	46bd      	mov	sp, r7
 8000800:	bd90      	pop	{r4, r7, pc}
 8000802:	bf00      	nop
 8000804:	40005c50 	.word	0x40005c50
 8000808:	20003006 	.word	0x20003006
 800080c:	20000034 	.word	0x20000034
 8000810:	2000001c 	.word	0x2000001c
 8000814:	08000509 	.word	0x08000509
 8000818:	40005c00 	.word	0x40005c00
 800081c:	ffff8080 	.word	0xffff8080
 8000820:	20000020 	.word	0x20000020
 8000824:	08000551 	.word	0x08000551

08000828 <plan_Data_IN_proc>:
 8000828:	b590      	push	{r4, r7, lr}
 800082a:	b083      	sub	sp, #12
 800082c:	af00      	add	r7, sp, #0
 800082e:	4b24      	ldr	r3, [pc, #144]	; (80008c0 <plan_Data_IN_proc+0x98>)
 8000830:	681b      	ldr	r3, [r3, #0]
 8000832:	2b40      	cmp	r3, #64	; 0x40
 8000834:	bf28      	it	cs
 8000836:	2340      	movcs	r3, #64	; 0x40
 8000838:	607b      	str	r3, [r7, #4]
 800083a:	4b21      	ldr	r3, [pc, #132]	; (80008c0 <plan_Data_IN_proc+0x98>)
 800083c:	681a      	ldr	r2, [r3, #0]
 800083e:	687b      	ldr	r3, [r7, #4]
 8000840:	1ad3      	subs	r3, r2, r3
 8000842:	603b      	str	r3, [r7, #0]
 8000844:	687b      	ldr	r3, [r7, #4]
 8000846:	2b00      	cmp	r3, #0
 8000848:	d023      	beq.n	8000892 <plan_Data_IN_proc+0x6a>
 800084a:	4b1e      	ldr	r3, [pc, #120]	; (80008c4 <plan_Data_IN_proc+0x9c>)
 800084c:	681b      	ldr	r3, [r3, #0]
 800084e:	687a      	ldr	r2, [r7, #4]
 8000850:	2140      	movs	r1, #64	; 0x40
 8000852:	4618      	mov	r0, r3
 8000854:	f000 fe50 	bl	80014f8 <user_to_pma_copy>
 8000858:	4b1b      	ldr	r3, [pc, #108]	; (80008c8 <plan_Data_IN_proc+0xa0>)
 800085a:	681b      	ldr	r3, [r3, #0]
 800085c:	b29b      	uxth	r3, r3
 800085e:	461a      	mov	r2, r3
 8000860:	4b1a      	ldr	r3, [pc, #104]	; (80008cc <plan_Data_IN_proc+0xa4>)
 8000862:	4413      	add	r3, r2
 8000864:	005b      	lsls	r3, r3, #1
 8000866:	461a      	mov	r2, r3
 8000868:	687b      	ldr	r3, [r7, #4]
 800086a:	6013      	str	r3, [r2, #0]
 800086c:	4b18      	ldr	r3, [pc, #96]	; (80008d0 <plan_Data_IN_proc+0xa8>)
 800086e:	681b      	ldr	r3, [r3, #0]
 8000870:	b29b      	uxth	r3, r3
 8000872:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8000876:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 800087a:	b29c      	uxth	r4, r3
 800087c:	f084 0310 	eor.w	r3, r4, #16
 8000880:	b29c      	uxth	r4, r3
 8000882:	f084 0320 	eor.w	r3, r4, #32
 8000886:	b29c      	uxth	r4, r3
 8000888:	4a11      	ldr	r2, [pc, #68]	; (80008d0 <plan_Data_IN_proc+0xa8>)
 800088a:	4b12      	ldr	r3, [pc, #72]	; (80008d4 <plan_Data_IN_proc+0xac>)
 800088c:	4323      	orrs	r3, r4
 800088e:	b29b      	uxth	r3, r3
 8000890:	6013      	str	r3, [r2, #0]
 8000892:	683b      	ldr	r3, [r7, #0]
 8000894:	2b00      	cmp	r3, #0
 8000896:	d00c      	beq.n	80008b2 <plan_Data_IN_proc+0x8a>
 8000898:	4a09      	ldr	r2, [pc, #36]	; (80008c0 <plan_Data_IN_proc+0x98>)
 800089a:	683b      	ldr	r3, [r7, #0]
 800089c:	6013      	str	r3, [r2, #0]
 800089e:	4b09      	ldr	r3, [pc, #36]	; (80008c4 <plan_Data_IN_proc+0x9c>)
 80008a0:	681a      	ldr	r2, [r3, #0]
 80008a2:	687b      	ldr	r3, [r7, #4]
 80008a4:	4413      	add	r3, r2
 80008a6:	4a07      	ldr	r2, [pc, #28]	; (80008c4 <plan_Data_IN_proc+0x9c>)
 80008a8:	6013      	str	r3, [r2, #0]
 80008aa:	4b0b      	ldr	r3, [pc, #44]	; (80008d8 <plan_Data_IN_proc+0xb0>)
 80008ac:	4a0b      	ldr	r2, [pc, #44]	; (80008dc <plan_Data_IN_proc+0xb4>)
 80008ae:	601a      	str	r2, [r3, #0]
 80008b0:	e002      	b.n	80008b8 <plan_Data_IN_proc+0x90>
 80008b2:	4b09      	ldr	r3, [pc, #36]	; (80008d8 <plan_Data_IN_proc+0xb0>)
 80008b4:	4a0a      	ldr	r2, [pc, #40]	; (80008e0 <plan_Data_IN_proc+0xb8>)
 80008b6:	601a      	str	r2, [r3, #0]
 80008b8:	bf00      	nop
 80008ba:	370c      	adds	r7, #12
 80008bc:	46bd      	mov	sp, r7
 80008be:	bd90      	pop	{r4, r7, pc}
 80008c0:	2000003c 	.word	0x2000003c
 80008c4:	20000040 	.word	0x20000040
 80008c8:	40005c50 	.word	0x40005c50
 80008cc:	20003002 	.word	0x20003002
 80008d0:	40005c00 	.word	0x40005c00
 80008d4:	ffff8080 	.word	0xffff8080
 80008d8:	2000001c 	.word	0x2000001c
 80008dc:	08000829 	.word	0x08000829
 80008e0:	080005e5 	.word	0x080005e5

080008e4 <string_descriptor_proc>:
 80008e4:	b580      	push	{r7, lr}
 80008e6:	b082      	sub	sp, #8
 80008e8:	af00      	add	r7, sp, #0
 80008ea:	4b1c      	ldr	r3, [pc, #112]	; (800095c <string_descriptor_proc+0x78>)
 80008ec:	789b      	ldrb	r3, [r3, #2]
 80008ee:	607b      	str	r3, [r7, #4]
 80008f0:	687b      	ldr	r3, [r7, #4]
 80008f2:	2b03      	cmp	r3, #3
 80008f4:	d82e      	bhi.n	8000954 <string_descriptor_proc+0x70>
 80008f6:	a201      	add	r2, pc, #4	; (adr r2, 80008fc <string_descriptor_proc+0x18>)
 80008f8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80008fc:	0800090d 	.word	0x0800090d
 8000900:	0800091f 	.word	0x0800091f
 8000904:	08000931 	.word	0x08000931
 8000908:	08000943 	.word	0x08000943
 800090c:	4b14      	ldr	r3, [pc, #80]	; (8000960 <string_descriptor_proc+0x7c>)
 800090e:	2204      	movs	r2, #4
 8000910:	601a      	str	r2, [r3, #0]
 8000912:	4b14      	ldr	r3, [pc, #80]	; (8000964 <string_descriptor_proc+0x80>)
 8000914:	4a14      	ldr	r2, [pc, #80]	; (8000968 <string_descriptor_proc+0x84>)
 8000916:	601a      	str	r2, [r3, #0]
 8000918:	f7ff ff86 	bl	8000828 <plan_Data_IN_proc>
 800091c:	e01a      	b.n	8000954 <string_descriptor_proc+0x70>
 800091e:	4b10      	ldr	r3, [pc, #64]	; (8000960 <string_descriptor_proc+0x7c>)
 8000920:	2226      	movs	r2, #38	; 0x26
 8000922:	601a      	str	r2, [r3, #0]
 8000924:	4b0f      	ldr	r3, [pc, #60]	; (8000964 <string_descriptor_proc+0x80>)
 8000926:	4a11      	ldr	r2, [pc, #68]	; (800096c <string_descriptor_proc+0x88>)
 8000928:	601a      	str	r2, [r3, #0]
 800092a:	f7ff ff7d 	bl	8000828 <plan_Data_IN_proc>
 800092e:	e011      	b.n	8000954 <string_descriptor_proc+0x70>
 8000930:	4b0b      	ldr	r3, [pc, #44]	; (8000960 <string_descriptor_proc+0x7c>)
 8000932:	2232      	movs	r2, #50	; 0x32
 8000934:	601a      	str	r2, [r3, #0]
 8000936:	4b0b      	ldr	r3, [pc, #44]	; (8000964 <string_descriptor_proc+0x80>)
 8000938:	4a0d      	ldr	r2, [pc, #52]	; (8000970 <string_descriptor_proc+0x8c>)
 800093a:	601a      	str	r2, [r3, #0]
 800093c:	f7ff ff74 	bl	8000828 <plan_Data_IN_proc>
 8000940:	e008      	b.n	8000954 <string_descriptor_proc+0x70>
 8000942:	4b07      	ldr	r3, [pc, #28]	; (8000960 <string_descriptor_proc+0x7c>)
 8000944:	221a      	movs	r2, #26
 8000946:	601a      	str	r2, [r3, #0]
 8000948:	4b06      	ldr	r3, [pc, #24]	; (8000964 <string_descriptor_proc+0x80>)
 800094a:	4a0a      	ldr	r2, [pc, #40]	; (8000974 <string_descriptor_proc+0x90>)
 800094c:	601a      	str	r2, [r3, #0]
 800094e:	f7ff ff6b 	bl	8000828 <plan_Data_IN_proc>
 8000952:	bf00      	nop
 8000954:	bf00      	nop
 8000956:	3708      	adds	r7, #8
 8000958:	46bd      	mov	sp, r7
 800095a:	bd80      	pop	{r7, pc}
 800095c:	2000002c 	.word	0x2000002c
 8000960:	2000003c 	.word	0x2000003c
 8000964:	20000040 	.word	0x20000040
 8000968:	080016f0 	.word	0x080016f0
 800096c:	080016f4 	.word	0x080016f4
 8000970:	0800171c 	.word	0x0800171c
 8000974:	20000000 	.word	0x20000000

08000978 <get_descriptor_proc>:
 8000978:	b580      	push	{r7, lr}
 800097a:	b082      	sub	sp, #8
 800097c:	af00      	add	r7, sp, #0
 800097e:	4b25      	ldr	r3, [pc, #148]	; (8000a14 <get_descriptor_proc+0x9c>)
 8000980:	78db      	ldrb	r3, [r3, #3]
 8000982:	607b      	str	r3, [r7, #4]
 8000984:	4b23      	ldr	r3, [pc, #140]	; (8000a14 <get_descriptor_proc+0x9c>)
 8000986:	799b      	ldrb	r3, [r3, #6]
 8000988:	461a      	mov	r2, r3
 800098a:	4b22      	ldr	r3, [pc, #136]	; (8000a14 <get_descriptor_proc+0x9c>)
 800098c:	79db      	ldrb	r3, [r3, #7]
 800098e:	021b      	lsls	r3, r3, #8
 8000990:	4313      	orrs	r3, r2
 8000992:	603b      	str	r3, [r7, #0]
 8000994:	687b      	ldr	r3, [r7, #4]
 8000996:	3b01      	subs	r3, #1
 8000998:	2b05      	cmp	r3, #5
 800099a:	d836      	bhi.n	8000a0a <get_descriptor_proc+0x92>
 800099c:	a201      	add	r2, pc, #4	; (adr r2, 80009a4 <get_descriptor_proc+0x2c>)
 800099e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80009a2:	bf00      	nop
 80009a4:	080009bd 	.word	0x080009bd
 80009a8:	080009e7 	.word	0x080009e7
 80009ac:	080009ff 	.word	0x080009ff
 80009b0:	08000a0b 	.word	0x08000a0b
 80009b4:	08000a0b 	.word	0x08000a0b
 80009b8:	080009d5 	.word	0x080009d5
 80009bc:	4a16      	ldr	r2, [pc, #88]	; (8000a18 <get_descriptor_proc+0xa0>)
 80009be:	683b      	ldr	r3, [r7, #0]
 80009c0:	6013      	str	r3, [r2, #0]
 80009c2:	4b16      	ldr	r3, [pc, #88]	; (8000a1c <get_descriptor_proc+0xa4>)
 80009c4:	4a16      	ldr	r2, [pc, #88]	; (8000a20 <get_descriptor_proc+0xa8>)
 80009c6:	601a      	str	r2, [r3, #0]
 80009c8:	f7ff ff2e 	bl	8000828 <plan_Data_IN_proc>
 80009cc:	4815      	ldr	r0, [pc, #84]	; (8000a24 <get_descriptor_proc+0xac>)
 80009ce:	f000 f9bb 	bl	8000d48 <uart_send_str>
 80009d2:	e01a      	b.n	8000a0a <get_descriptor_proc+0x92>
 80009d4:	f7ff fdda 	bl	800058c <plan_ZeroLength_IN_proc>
 80009d8:	4b13      	ldr	r3, [pc, #76]	; (8000a28 <get_descriptor_proc+0xb0>)
 80009da:	4a14      	ldr	r2, [pc, #80]	; (8000a2c <get_descriptor_proc+0xb4>)
 80009dc:	601a      	str	r2, [r3, #0]
 80009de:	4814      	ldr	r0, [pc, #80]	; (8000a30 <get_descriptor_proc+0xb8>)
 80009e0:	f000 f9b2 	bl	8000d48 <uart_send_str>
 80009e4:	e011      	b.n	8000a0a <get_descriptor_proc+0x92>
 80009e6:	4a0c      	ldr	r2, [pc, #48]	; (8000a18 <get_descriptor_proc+0xa0>)
 80009e8:	683b      	ldr	r3, [r7, #0]
 80009ea:	6013      	str	r3, [r2, #0]
 80009ec:	4b0b      	ldr	r3, [pc, #44]	; (8000a1c <get_descriptor_proc+0xa4>)
 80009ee:	4a11      	ldr	r2, [pc, #68]	; (8000a34 <get_descriptor_proc+0xbc>)
 80009f0:	601a      	str	r2, [r3, #0]
 80009f2:	f7ff ff19 	bl	8000828 <plan_Data_IN_proc>
 80009f6:	4810      	ldr	r0, [pc, #64]	; (8000a38 <get_descriptor_proc+0xc0>)
 80009f8:	f000 f9a6 	bl	8000d48 <uart_send_str>
 80009fc:	e005      	b.n	8000a0a <get_descriptor_proc+0x92>
 80009fe:	f7ff ff71 	bl	80008e4 <string_descriptor_proc>
 8000a02:	480e      	ldr	r0, [pc, #56]	; (8000a3c <get_descriptor_proc+0xc4>)
 8000a04:	f000 f9a0 	bl	8000d48 <uart_send_str>
 8000a08:	bf00      	nop
 8000a0a:	bf00      	nop
 8000a0c:	3708      	adds	r7, #8
 8000a0e:	46bd      	mov	sp, r7
 8000a10:	bd80      	pop	{r7, pc}
 8000a12:	bf00      	nop
 8000a14:	2000002c 	.word	0x2000002c
 8000a18:	2000003c 	.word	0x2000003c
 8000a1c:	20000040 	.word	0x20000040
 8000a20:	08001698 	.word	0x08001698
 8000a24:	08001750 	.word	0x08001750
 8000a28:	2000001c 	.word	0x2000001c
 8000a2c:	080005e5 	.word	0x080005e5
 8000a30:	0800175c 	.word	0x0800175c
 8000a34:	080016ac 	.word	0x080016ac
 8000a38:	08001768 	.word	0x08001768
 8000a3c:	08001778 	.word	0x08001778

08000a40 <setup0_proc>:
 8000a40:	b590      	push	{r4, r7, lr}
 8000a42:	b083      	sub	sp, #12
 8000a44:	af00      	add	r7, sp, #0
 8000a46:	4b59      	ldr	r3, [pc, #356]	; (8000bac <setup0_proc+0x16c>)
 8000a48:	681b      	ldr	r3, [r3, #0]
 8000a4a:	b29b      	uxth	r3, r3
 8000a4c:	461a      	mov	r2, r3
 8000a4e:	4b58      	ldr	r3, [pc, #352]	; (8000bb0 <setup0_proc+0x170>)
 8000a50:	4413      	add	r3, r2
 8000a52:	005b      	lsls	r3, r3, #1
 8000a54:	681b      	ldr	r3, [r3, #0]
 8000a56:	b29b      	uxth	r3, r3
 8000a58:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000a5c:	607b      	str	r3, [r7, #4]
 8000a5e:	2208      	movs	r2, #8
 8000a60:	2180      	movs	r1, #128	; 0x80
 8000a62:	4854      	ldr	r0, [pc, #336]	; (8000bb4 <setup0_proc+0x174>)
 8000a64:	f000 fd98 	bl	8001598 <pma_to_user_copy>
 8000a68:	4b52      	ldr	r3, [pc, #328]	; (8000bb4 <setup0_proc+0x174>)
 8000a6a:	785b      	ldrb	r3, [r3, #1]
 8000a6c:	603b      	str	r3, [r7, #0]
 8000a6e:	683b      	ldr	r3, [r7, #0]
 8000a70:	3b05      	subs	r3, #5
 8000a72:	2b1d      	cmp	r3, #29
 8000a74:	f200 8096 	bhi.w	8000ba4 <setup0_proc+0x164>
 8000a78:	a201      	add	r2, pc, #4	; (adr r2, 8000a80 <setup0_proc+0x40>)
 8000a7a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000a7e:	bf00      	nop
 8000a80:	08000b7d 	.word	0x08000b7d
 8000a84:	08000b99 	.word	0x08000b99
 8000a88:	08000ba5 	.word	0x08000ba5
 8000a8c:	08000ba5 	.word	0x08000ba5
 8000a90:	08000b61 	.word	0x08000b61
 8000a94:	08000ba5 	.word	0x08000ba5
 8000a98:	08000ba5 	.word	0x08000ba5
 8000a9c:	08000ba5 	.word	0x08000ba5
 8000aa0:	08000ba5 	.word	0x08000ba5
 8000aa4:	08000ba5 	.word	0x08000ba5
 8000aa8:	08000ba5 	.word	0x08000ba5
 8000aac:	08000ba5 	.word	0x08000ba5
 8000ab0:	08000ba5 	.word	0x08000ba5
 8000ab4:	08000ba5 	.word	0x08000ba5
 8000ab8:	08000ba5 	.word	0x08000ba5
 8000abc:	08000ba5 	.word	0x08000ba5
 8000ac0:	08000ba5 	.word	0x08000ba5
 8000ac4:	08000ba5 	.word	0x08000ba5
 8000ac8:	08000ba5 	.word	0x08000ba5
 8000acc:	08000ba5 	.word	0x08000ba5
 8000ad0:	08000ba5 	.word	0x08000ba5
 8000ad4:	08000ba5 	.word	0x08000ba5
 8000ad8:	08000ba5 	.word	0x08000ba5
 8000adc:	08000ba5 	.word	0x08000ba5
 8000ae0:	08000ba5 	.word	0x08000ba5
 8000ae4:	08000ba5 	.word	0x08000ba5
 8000ae8:	08000ba5 	.word	0x08000ba5
 8000aec:	08000b15 	.word	0x08000b15
 8000af0:	08000b49 	.word	0x08000b49
 8000af4:	08000af9 	.word	0x08000af9
 8000af8:	f7ff fd48 	bl	800058c <plan_ZeroLength_IN_proc>
 8000afc:	4b2e      	ldr	r3, [pc, #184]	; (8000bb8 <setup0_proc+0x178>)
 8000afe:	4a2f      	ldr	r2, [pc, #188]	; (8000bbc <setup0_proc+0x17c>)
 8000b00:	601a      	str	r2, [r3, #0]
 8000b02:	4b2c      	ldr	r3, [pc, #176]	; (8000bb4 <setup0_proc+0x174>)
 8000b04:	789b      	ldrb	r3, [r3, #2]
 8000b06:	b29a      	uxth	r2, r3
 8000b08:	4b2d      	ldr	r3, [pc, #180]	; (8000bc0 <setup0_proc+0x180>)
 8000b0a:	801a      	strh	r2, [r3, #0]
 8000b0c:	482d      	ldr	r0, [pc, #180]	; (8000bc4 <setup0_proc+0x184>)
 8000b0e:	f000 f91b 	bl	8000d48 <uart_send_str>
 8000b12:	e047      	b.n	8000ba4 <setup0_proc+0x164>
 8000b14:	4b2c      	ldr	r3, [pc, #176]	; (8000bc8 <setup0_proc+0x188>)
 8000b16:	4a2d      	ldr	r2, [pc, #180]	; (8000bcc <setup0_proc+0x18c>)
 8000b18:	601a      	str	r2, [r3, #0]
 8000b1a:	4b2d      	ldr	r3, [pc, #180]	; (8000bd0 <setup0_proc+0x190>)
 8000b1c:	681b      	ldr	r3, [r3, #0]
 8000b1e:	b29b      	uxth	r3, r3
 8000b20:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8000b24:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8000b28:	b29c      	uxth	r4, r3
 8000b2a:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8000b2e:	b29c      	uxth	r4, r3
 8000b30:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8000b34:	b29c      	uxth	r4, r3
 8000b36:	4a26      	ldr	r2, [pc, #152]	; (8000bd0 <setup0_proc+0x190>)
 8000b38:	4b26      	ldr	r3, [pc, #152]	; (8000bd4 <setup0_proc+0x194>)
 8000b3a:	4323      	orrs	r3, r4
 8000b3c:	b29b      	uxth	r3, r3
 8000b3e:	6013      	str	r3, [r2, #0]
 8000b40:	4825      	ldr	r0, [pc, #148]	; (8000bd8 <setup0_proc+0x198>)
 8000b42:	f000 f901 	bl	8000d48 <uart_send_str>
 8000b46:	e02d      	b.n	8000ba4 <setup0_proc+0x164>
 8000b48:	4b24      	ldr	r3, [pc, #144]	; (8000bdc <setup0_proc+0x19c>)
 8000b4a:	2207      	movs	r2, #7
 8000b4c:	601a      	str	r2, [r3, #0]
 8000b4e:	4b24      	ldr	r3, [pc, #144]	; (8000be0 <setup0_proc+0x1a0>)
 8000b50:	4a24      	ldr	r2, [pc, #144]	; (8000be4 <setup0_proc+0x1a4>)
 8000b52:	601a      	str	r2, [r3, #0]
 8000b54:	f7ff fe68 	bl	8000828 <plan_Data_IN_proc>
 8000b58:	4823      	ldr	r0, [pc, #140]	; (8000be8 <setup0_proc+0x1a8>)
 8000b5a:	f000 f8f5 	bl	8000d48 <uart_send_str>
 8000b5e:	e021      	b.n	8000ba4 <setup0_proc+0x164>
 8000b60:	4b14      	ldr	r3, [pc, #80]	; (8000bb4 <setup0_proc+0x174>)
 8000b62:	789b      	ldrb	r3, [r3, #2]
 8000b64:	b29a      	uxth	r2, r3
 8000b66:	4b21      	ldr	r3, [pc, #132]	; (8000bec <setup0_proc+0x1ac>)
 8000b68:	801a      	strh	r2, [r3, #0]
 8000b6a:	f7ff fd0f 	bl	800058c <plan_ZeroLength_IN_proc>
 8000b6e:	4b12      	ldr	r3, [pc, #72]	; (8000bb8 <setup0_proc+0x178>)
 8000b70:	4a1f      	ldr	r2, [pc, #124]	; (8000bf0 <setup0_proc+0x1b0>)
 8000b72:	601a      	str	r2, [r3, #0]
 8000b74:	481f      	ldr	r0, [pc, #124]	; (8000bf4 <setup0_proc+0x1b4>)
 8000b76:	f000 f8e7 	bl	8000d48 <uart_send_str>
 8000b7a:	e013      	b.n	8000ba4 <setup0_proc+0x164>
 8000b7c:	4b0d      	ldr	r3, [pc, #52]	; (8000bb4 <setup0_proc+0x174>)
 8000b7e:	789b      	ldrb	r3, [r3, #2]
 8000b80:	b29a      	uxth	r2, r3
 8000b82:	4b1d      	ldr	r3, [pc, #116]	; (8000bf8 <setup0_proc+0x1b8>)
 8000b84:	801a      	strh	r2, [r3, #0]
 8000b86:	f7ff fd01 	bl	800058c <plan_ZeroLength_IN_proc>
 8000b8a:	4b0b      	ldr	r3, [pc, #44]	; (8000bb8 <setup0_proc+0x178>)
 8000b8c:	4a1b      	ldr	r2, [pc, #108]	; (8000bfc <setup0_proc+0x1bc>)
 8000b8e:	601a      	str	r2, [r3, #0]
 8000b90:	481b      	ldr	r0, [pc, #108]	; (8000c00 <setup0_proc+0x1c0>)
 8000b92:	f000 f8d9 	bl	8000d48 <uart_send_str>
 8000b96:	e005      	b.n	8000ba4 <setup0_proc+0x164>
 8000b98:	481a      	ldr	r0, [pc, #104]	; (8000c04 <setup0_proc+0x1c4>)
 8000b9a:	f000 f8d5 	bl	8000d48 <uart_send_str>
 8000b9e:	f7ff feeb 	bl	8000978 <get_descriptor_proc>
 8000ba2:	bf00      	nop
 8000ba4:	bf00      	nop
 8000ba6:	370c      	adds	r7, #12
 8000ba8:	46bd      	mov	sp, r7
 8000baa:	bd90      	pop	{r4, r7, pc}
 8000bac:	40005c50 	.word	0x40005c50
 8000bb0:	20003006 	.word	0x20003006
 8000bb4:	2000002c 	.word	0x2000002c
 8000bb8:	2000001c 	.word	0x2000001c
 8000bbc:	08000755 	.word	0x08000755
 8000bc0:	20000028 	.word	0x20000028
 8000bc4:	08001784 	.word	0x08001784
 8000bc8:	20000020 	.word	0x20000020
 8000bcc:	0800079d 	.word	0x0800079d
 8000bd0:	40005c00 	.word	0x40005c00
 8000bd4:	ffff8080 	.word	0xffff8080
 8000bd8:	080017a0 	.word	0x080017a0
 8000bdc:	2000003c 	.word	0x2000003c
 8000be0:	20000040 	.word	0x20000040
 8000be4:	20000034 	.word	0x20000034
 8000be8:	080017b4 	.word	0x080017b4
 8000bec:	20000026 	.word	0x20000026
 8000bf0:	08000701 	.word	0x08000701
 8000bf4:	080017c8 	.word	0x080017c8
 8000bf8:	20000024 	.word	0x20000024
 8000bfc:	0800063d 	.word	0x0800063d
 8000c00:	080017dc 	.word	0x080017dc
 8000c04:	080017ec 	.word	0x080017ec

08000c08 <NVIC_EnableIRQ>:
 8000c08:	b480      	push	{r7}
 8000c0a:	b083      	sub	sp, #12
 8000c0c:	af00      	add	r7, sp, #0
 8000c0e:	4603      	mov	r3, r0
 8000c10:	71fb      	strb	r3, [r7, #7]
 8000c12:	4908      	ldr	r1, [pc, #32]	; (8000c34 <NVIC_EnableIRQ+0x2c>)
 8000c14:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000c18:	095b      	lsrs	r3, r3, #5
 8000c1a:	79fa      	ldrb	r2, [r7, #7]
 8000c1c:	f002 021f 	and.w	r2, r2, #31
 8000c20:	2001      	movs	r0, #1
 8000c22:	fa00 f202 	lsl.w	r2, r0, r2
 8000c26:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000c2a:	bf00      	nop
 8000c2c:	370c      	adds	r7, #12
 8000c2e:	46bd      	mov	sp, r7
 8000c30:	bc80      	pop	{r7}
 8000c32:	4770      	bx	lr
 8000c34:	e000e100 	.word	0xe000e100

08000c38 <uart_init>:
 8000c38:	b580      	push	{r7, lr}
 8000c3a:	af00      	add	r7, sp, #0
 8000c3c:	4a1a      	ldr	r2, [pc, #104]	; (8000ca8 <uart_init+0x70>)
 8000c3e:	4b1a      	ldr	r3, [pc, #104]	; (8000ca8 <uart_init+0x70>)
 8000c40:	681b      	ldr	r3, [r3, #0]
 8000c42:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000c46:	6013      	str	r3, [r2, #0]
 8000c48:	4a17      	ldr	r2, [pc, #92]	; (8000ca8 <uart_init+0x70>)
 8000c4a:	4b17      	ldr	r3, [pc, #92]	; (8000ca8 <uart_init+0x70>)
 8000c4c:	681b      	ldr	r3, [r3, #0]
 8000c4e:	f443 6330 	orr.w	r3, r3, #2816	; 0xb00
 8000c52:	6013      	str	r3, [r2, #0]
 8000c54:	4a15      	ldr	r2, [pc, #84]	; (8000cac <uart_init+0x74>)
 8000c56:	4b15      	ldr	r3, [pc, #84]	; (8000cac <uart_init+0x74>)
 8000c58:	899b      	ldrh	r3, [r3, #12]
 8000c5a:	b29b      	uxth	r3, r3
 8000c5c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000c60:	b29b      	uxth	r3, r3
 8000c62:	8193      	strh	r3, [r2, #12]
 8000c64:	4a11      	ldr	r2, [pc, #68]	; (8000cac <uart_init+0x74>)
 8000c66:	4b11      	ldr	r3, [pc, #68]	; (8000cac <uart_init+0x74>)
 8000c68:	899b      	ldrh	r3, [r3, #12]
 8000c6a:	b29b      	uxth	r3, r3
 8000c6c:	f043 0304 	orr.w	r3, r3, #4
 8000c70:	b29b      	uxth	r3, r3
 8000c72:	8193      	strh	r3, [r2, #12]
 8000c74:	4a0d      	ldr	r2, [pc, #52]	; (8000cac <uart_init+0x74>)
 8000c76:	4b0d      	ldr	r3, [pc, #52]	; (8000cac <uart_init+0x74>)
 8000c78:	899b      	ldrh	r3, [r3, #12]
 8000c7a:	b29b      	uxth	r3, r3
 8000c7c:	f043 0320 	orr.w	r3, r3, #32
 8000c80:	b29b      	uxth	r3, r3
 8000c82:	8193      	strh	r3, [r2, #12]
 8000c84:	4a09      	ldr	r2, [pc, #36]	; (8000cac <uart_init+0x74>)
 8000c86:	4b09      	ldr	r3, [pc, #36]	; (8000cac <uart_init+0x74>)
 8000c88:	899b      	ldrh	r3, [r3, #12]
 8000c8a:	b29b      	uxth	r3, r3
 8000c8c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000c90:	b29b      	uxth	r3, r3
 8000c92:	8193      	strh	r3, [r2, #12]
 8000c94:	2026      	movs	r0, #38	; 0x26
 8000c96:	f7ff ffb7 	bl	8000c08 <NVIC_EnableIRQ>
 8000c9a:	4b04      	ldr	r3, [pc, #16]	; (8000cac <uart_init+0x74>)
 8000c9c:	f44f 729c 	mov.w	r2, #312	; 0x138
 8000ca0:	811a      	strh	r2, [r3, #8]
 8000ca2:	bf00      	nop
 8000ca4:	bd80      	pop	{r7, pc}
 8000ca6:	bf00      	nop
 8000ca8:	40010800 	.word	0x40010800
 8000cac:	40004400 	.word	0x40004400

08000cb0 <uart_send>:
 8000cb0:	b480      	push	{r7}
 8000cb2:	b085      	sub	sp, #20
 8000cb4:	af00      	add	r7, sp, #0
 8000cb6:	6078      	str	r0, [r7, #4]
 8000cb8:	6039      	str	r1, [r7, #0]
 8000cba:	4b1f      	ldr	r3, [pc, #124]	; (8000d38 <uart_send+0x88>)
 8000cbc:	681a      	ldr	r2, [r3, #0]
 8000cbe:	4b1f      	ldr	r3, [pc, #124]	; (8000d3c <uart_send+0x8c>)
 8000cc0:	681b      	ldr	r3, [r3, #0]
 8000cc2:	429a      	cmp	r2, r3
 8000cc4:	d107      	bne.n	8000cd6 <uart_send+0x26>
 8000cc6:	4a1e      	ldr	r2, [pc, #120]	; (8000d40 <uart_send+0x90>)
 8000cc8:	4b1d      	ldr	r3, [pc, #116]	; (8000d40 <uart_send+0x90>)
 8000cca:	899b      	ldrh	r3, [r3, #12]
 8000ccc:	b29b      	uxth	r3, r3
 8000cce:	f043 0308 	orr.w	r3, r3, #8
 8000cd2:	b29b      	uxth	r3, r3
 8000cd4:	8193      	strh	r3, [r2, #12]
 8000cd6:	2300      	movs	r3, #0
 8000cd8:	60fb      	str	r3, [r7, #12]
 8000cda:	e01b      	b.n	8000d14 <uart_send+0x64>
 8000cdc:	4b16      	ldr	r3, [pc, #88]	; (8000d38 <uart_send+0x88>)
 8000cde:	681b      	ldr	r3, [r3, #0]
 8000ce0:	68fa      	ldr	r2, [r7, #12]
 8000ce2:	6879      	ldr	r1, [r7, #4]
 8000ce4:	440a      	add	r2, r1
 8000ce6:	7811      	ldrb	r1, [r2, #0]
 8000ce8:	4a16      	ldr	r2, [pc, #88]	; (8000d44 <uart_send+0x94>)
 8000cea:	54d1      	strb	r1, [r2, r3]
 8000cec:	4b12      	ldr	r3, [pc, #72]	; (8000d38 <uart_send+0x88>)
 8000cee:	681b      	ldr	r3, [r3, #0]
 8000cf0:	3301      	adds	r3, #1
 8000cf2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000cf6:	4a10      	ldr	r2, [pc, #64]	; (8000d38 <uart_send+0x88>)
 8000cf8:	6013      	str	r3, [r2, #0]
 8000cfa:	4b0f      	ldr	r3, [pc, #60]	; (8000d38 <uart_send+0x88>)
 8000cfc:	681a      	ldr	r2, [r3, #0]
 8000cfe:	4b0f      	ldr	r3, [pc, #60]	; (8000d3c <uart_send+0x8c>)
 8000d00:	681b      	ldr	r3, [r3, #0]
 8000d02:	429a      	cmp	r2, r3
 8000d04:	d103      	bne.n	8000d0e <uart_send+0x5e>
 8000d06:	68fb      	ldr	r3, [r7, #12]
 8000d08:	3301      	adds	r3, #1
 8000d0a:	60fb      	str	r3, [r7, #12]
 8000d0c:	e006      	b.n	8000d1c <uart_send+0x6c>
 8000d0e:	68fb      	ldr	r3, [r7, #12]
 8000d10:	3301      	adds	r3, #1
 8000d12:	60fb      	str	r3, [r7, #12]
 8000d14:	68fa      	ldr	r2, [r7, #12]
 8000d16:	683b      	ldr	r3, [r7, #0]
 8000d18:	429a      	cmp	r2, r3
 8000d1a:	dbdf      	blt.n	8000cdc <uart_send+0x2c>
 8000d1c:	4a08      	ldr	r2, [pc, #32]	; (8000d40 <uart_send+0x90>)
 8000d1e:	4b08      	ldr	r3, [pc, #32]	; (8000d40 <uart_send+0x90>)
 8000d20:	899b      	ldrh	r3, [r3, #12]
 8000d22:	b29b      	uxth	r3, r3
 8000d24:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000d28:	b29b      	uxth	r3, r3
 8000d2a:	8193      	strh	r3, [r2, #12]
 8000d2c:	68fb      	ldr	r3, [r7, #12]
 8000d2e:	4618      	mov	r0, r3
 8000d30:	3714      	adds	r7, #20
 8000d32:	46bd      	mov	sp, r7
 8000d34:	bc80      	pop	{r7}
 8000d36:	4770      	bx	lr
 8000d38:	2000044c 	.word	0x2000044c
 8000d3c:	20000448 	.word	0x20000448
 8000d40:	40004400 	.word	0x40004400
 8000d44:	20000048 	.word	0x20000048

08000d48 <uart_send_str>:
 8000d48:	b480      	push	{r7}
 8000d4a:	b085      	sub	sp, #20
 8000d4c:	af00      	add	r7, sp, #0
 8000d4e:	6078      	str	r0, [r7, #4]
 8000d50:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000d54:	60bb      	str	r3, [r7, #8]
 8000d56:	4b24      	ldr	r3, [pc, #144]	; (8000de8 <uart_send_str+0xa0>)
 8000d58:	681a      	ldr	r2, [r3, #0]
 8000d5a:	4b24      	ldr	r3, [pc, #144]	; (8000dec <uart_send_str+0xa4>)
 8000d5c:	681b      	ldr	r3, [r3, #0]
 8000d5e:	1ad3      	subs	r3, r2, r3
 8000d60:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000d64:	68ba      	ldr	r2, [r7, #8]
 8000d66:	1ad3      	subs	r3, r2, r3
 8000d68:	60bb      	str	r3, [r7, #8]
 8000d6a:	4b1f      	ldr	r3, [pc, #124]	; (8000de8 <uart_send_str+0xa0>)
 8000d6c:	681a      	ldr	r2, [r3, #0]
 8000d6e:	4b1f      	ldr	r3, [pc, #124]	; (8000dec <uart_send_str+0xa4>)
 8000d70:	681b      	ldr	r3, [r3, #0]
 8000d72:	429a      	cmp	r2, r3
 8000d74:	d107      	bne.n	8000d86 <uart_send_str+0x3e>
 8000d76:	4a1e      	ldr	r2, [pc, #120]	; (8000df0 <uart_send_str+0xa8>)
 8000d78:	4b1d      	ldr	r3, [pc, #116]	; (8000df0 <uart_send_str+0xa8>)
 8000d7a:	899b      	ldrh	r3, [r3, #12]
 8000d7c:	b29b      	uxth	r3, r3
 8000d7e:	f043 0308 	orr.w	r3, r3, #8
 8000d82:	b29b      	uxth	r3, r3
 8000d84:	8193      	strh	r3, [r2, #12]
 8000d86:	2300      	movs	r3, #0
 8000d88:	60fb      	str	r3, [r7, #12]
 8000d8a:	e01b      	b.n	8000dc4 <uart_send_str+0x7c>
 8000d8c:	68fb      	ldr	r3, [r7, #12]
 8000d8e:	687a      	ldr	r2, [r7, #4]
 8000d90:	4413      	add	r3, r2
 8000d92:	781b      	ldrb	r3, [r3, #0]
 8000d94:	2b00      	cmp	r3, #0
 8000d96:	d103      	bne.n	8000da0 <uart_send_str+0x58>
 8000d98:	68fb      	ldr	r3, [r7, #12]
 8000d9a:	3301      	adds	r3, #1
 8000d9c:	60fb      	str	r3, [r7, #12]
 8000d9e:	e015      	b.n	8000dcc <uart_send_str+0x84>
 8000da0:	4b11      	ldr	r3, [pc, #68]	; (8000de8 <uart_send_str+0xa0>)
 8000da2:	681b      	ldr	r3, [r3, #0]
 8000da4:	68fa      	ldr	r2, [r7, #12]
 8000da6:	6879      	ldr	r1, [r7, #4]
 8000da8:	440a      	add	r2, r1
 8000daa:	7811      	ldrb	r1, [r2, #0]
 8000dac:	4a11      	ldr	r2, [pc, #68]	; (8000df4 <uart_send_str+0xac>)
 8000dae:	54d1      	strb	r1, [r2, r3]
 8000db0:	4b0d      	ldr	r3, [pc, #52]	; (8000de8 <uart_send_str+0xa0>)
 8000db2:	681b      	ldr	r3, [r3, #0]
 8000db4:	3301      	adds	r3, #1
 8000db6:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000dba:	4a0b      	ldr	r2, [pc, #44]	; (8000de8 <uart_send_str+0xa0>)
 8000dbc:	6013      	str	r3, [r2, #0]
 8000dbe:	68fb      	ldr	r3, [r7, #12]
 8000dc0:	3301      	adds	r3, #1
 8000dc2:	60fb      	str	r3, [r7, #12]
 8000dc4:	68fa      	ldr	r2, [r7, #12]
 8000dc6:	68bb      	ldr	r3, [r7, #8]
 8000dc8:	429a      	cmp	r2, r3
 8000dca:	dbdf      	blt.n	8000d8c <uart_send_str+0x44>
 8000dcc:	4a08      	ldr	r2, [pc, #32]	; (8000df0 <uart_send_str+0xa8>)
 8000dce:	4b08      	ldr	r3, [pc, #32]	; (8000df0 <uart_send_str+0xa8>)
 8000dd0:	899b      	ldrh	r3, [r3, #12]
 8000dd2:	b29b      	uxth	r3, r3
 8000dd4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8000dd8:	b29b      	uxth	r3, r3
 8000dda:	8193      	strh	r3, [r2, #12]
 8000ddc:	68fb      	ldr	r3, [r7, #12]
 8000dde:	4618      	mov	r0, r3
 8000de0:	3714      	adds	r7, #20
 8000de2:	46bd      	mov	sp, r7
 8000de4:	bc80      	pop	{r7}
 8000de6:	4770      	bx	lr
 8000de8:	2000044c 	.word	0x2000044c
 8000dec:	20000448 	.word	0x20000448
 8000df0:	40004400 	.word	0x40004400
 8000df4:	20000048 	.word	0x20000048

08000df8 <uart_read>:
 8000df8:	b480      	push	{r7}
 8000dfa:	b085      	sub	sp, #20
 8000dfc:	af00      	add	r7, sp, #0
 8000dfe:	6078      	str	r0, [r7, #4]
 8000e00:	6039      	str	r1, [r7, #0]
 8000e02:	4b18      	ldr	r3, [pc, #96]	; (8000e64 <uart_read+0x6c>)
 8000e04:	681a      	ldr	r2, [r3, #0]
 8000e06:	4b18      	ldr	r3, [pc, #96]	; (8000e68 <uart_read+0x70>)
 8000e08:	681b      	ldr	r3, [r3, #0]
 8000e0a:	429a      	cmp	r2, r3
 8000e0c:	d101      	bne.n	8000e12 <uart_read+0x1a>
 8000e0e:	2300      	movs	r3, #0
 8000e10:	e023      	b.n	8000e5a <uart_read+0x62>
 8000e12:	2300      	movs	r3, #0
 8000e14:	60fb      	str	r3, [r7, #12]
 8000e16:	e01b      	b.n	8000e50 <uart_read+0x58>
 8000e18:	68fb      	ldr	r3, [r7, #12]
 8000e1a:	687a      	ldr	r2, [r7, #4]
 8000e1c:	4413      	add	r3, r2
 8000e1e:	4a11      	ldr	r2, [pc, #68]	; (8000e64 <uart_read+0x6c>)
 8000e20:	6812      	ldr	r2, [r2, #0]
 8000e22:	4912      	ldr	r1, [pc, #72]	; (8000e6c <uart_read+0x74>)
 8000e24:	5c8a      	ldrb	r2, [r1, r2]
 8000e26:	701a      	strb	r2, [r3, #0]
 8000e28:	4b0e      	ldr	r3, [pc, #56]	; (8000e64 <uart_read+0x6c>)
 8000e2a:	681b      	ldr	r3, [r3, #0]
 8000e2c:	3301      	adds	r3, #1
 8000e2e:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000e32:	4a0c      	ldr	r2, [pc, #48]	; (8000e64 <uart_read+0x6c>)
 8000e34:	6013      	str	r3, [r2, #0]
 8000e36:	4b0b      	ldr	r3, [pc, #44]	; (8000e64 <uart_read+0x6c>)
 8000e38:	681a      	ldr	r2, [r3, #0]
 8000e3a:	4b0b      	ldr	r3, [pc, #44]	; (8000e68 <uart_read+0x70>)
 8000e3c:	681b      	ldr	r3, [r3, #0]
 8000e3e:	429a      	cmp	r2, r3
 8000e40:	d103      	bne.n	8000e4a <uart_read+0x52>
 8000e42:	68fb      	ldr	r3, [r7, #12]
 8000e44:	3301      	adds	r3, #1
 8000e46:	60fb      	str	r3, [r7, #12]
 8000e48:	e006      	b.n	8000e58 <uart_read+0x60>
 8000e4a:	68fb      	ldr	r3, [r7, #12]
 8000e4c:	3301      	adds	r3, #1
 8000e4e:	60fb      	str	r3, [r7, #12]
 8000e50:	68fa      	ldr	r2, [r7, #12]
 8000e52:	683b      	ldr	r3, [r7, #0]
 8000e54:	429a      	cmp	r2, r3
 8000e56:	dbdf      	blt.n	8000e18 <uart_read+0x20>
 8000e58:	68fb      	ldr	r3, [r7, #12]
 8000e5a:	4618      	mov	r0, r3
 8000e5c:	3714      	adds	r7, #20
 8000e5e:	46bd      	mov	sp, r7
 8000e60:	bc80      	pop	{r7}
 8000e62:	4770      	bx	lr
 8000e64:	20000854 	.word	0x20000854
 8000e68:	20000850 	.word	0x20000850
 8000e6c:	20000450 	.word	0x20000450

08000e70 <USART2_IRQHandler>:
 8000e70:	b480      	push	{r7}
 8000e72:	af00      	add	r7, sp, #0
 8000e74:	4b1e      	ldr	r3, [pc, #120]	; (8000ef0 <USART2_IRQHandler+0x80>)
 8000e76:	881b      	ldrh	r3, [r3, #0]
 8000e78:	b29b      	uxth	r3, r3
 8000e7a:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8000e7e:	2b00      	cmp	r3, #0
 8000e80:	d01c      	beq.n	8000ebc <USART2_IRQHandler+0x4c>
 8000e82:	4b1c      	ldr	r3, [pc, #112]	; (8000ef4 <USART2_IRQHandler+0x84>)
 8000e84:	681a      	ldr	r2, [r3, #0]
 8000e86:	4b1c      	ldr	r3, [pc, #112]	; (8000ef8 <USART2_IRQHandler+0x88>)
 8000e88:	681b      	ldr	r3, [r3, #0]
 8000e8a:	429a      	cmp	r2, r3
 8000e8c:	d108      	bne.n	8000ea0 <USART2_IRQHandler+0x30>
 8000e8e:	4a18      	ldr	r2, [pc, #96]	; (8000ef0 <USART2_IRQHandler+0x80>)
 8000e90:	4b17      	ldr	r3, [pc, #92]	; (8000ef0 <USART2_IRQHandler+0x80>)
 8000e92:	899b      	ldrh	r3, [r3, #12]
 8000e94:	b29b      	uxth	r3, r3
 8000e96:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8000e9a:	b29b      	uxth	r3, r3
 8000e9c:	8193      	strh	r3, [r2, #12]
 8000e9e:	e00d      	b.n	8000ebc <USART2_IRQHandler+0x4c>
 8000ea0:	4a13      	ldr	r2, [pc, #76]	; (8000ef0 <USART2_IRQHandler+0x80>)
 8000ea2:	4b14      	ldr	r3, [pc, #80]	; (8000ef4 <USART2_IRQHandler+0x84>)
 8000ea4:	681b      	ldr	r3, [r3, #0]
 8000ea6:	4915      	ldr	r1, [pc, #84]	; (8000efc <USART2_IRQHandler+0x8c>)
 8000ea8:	5ccb      	ldrb	r3, [r1, r3]
 8000eaa:	b29b      	uxth	r3, r3
 8000eac:	8093      	strh	r3, [r2, #4]
 8000eae:	4b11      	ldr	r3, [pc, #68]	; (8000ef4 <USART2_IRQHandler+0x84>)
 8000eb0:	681b      	ldr	r3, [r3, #0]
 8000eb2:	3301      	adds	r3, #1
 8000eb4:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000eb8:	4a0e      	ldr	r2, [pc, #56]	; (8000ef4 <USART2_IRQHandler+0x84>)
 8000eba:	6013      	str	r3, [r2, #0]
 8000ebc:	4b0c      	ldr	r3, [pc, #48]	; (8000ef0 <USART2_IRQHandler+0x80>)
 8000ebe:	881b      	ldrh	r3, [r3, #0]
 8000ec0:	b29b      	uxth	r3, r3
 8000ec2:	f003 0320 	and.w	r3, r3, #32
 8000ec6:	2b00      	cmp	r3, #0
 8000ec8:	d00e      	beq.n	8000ee8 <USART2_IRQHandler+0x78>
 8000eca:	4b0d      	ldr	r3, [pc, #52]	; (8000f00 <USART2_IRQHandler+0x90>)
 8000ecc:	681b      	ldr	r3, [r3, #0]
 8000ece:	4a08      	ldr	r2, [pc, #32]	; (8000ef0 <USART2_IRQHandler+0x80>)
 8000ed0:	8892      	ldrh	r2, [r2, #4]
 8000ed2:	b292      	uxth	r2, r2
 8000ed4:	b2d1      	uxtb	r1, r2
 8000ed6:	4a0b      	ldr	r2, [pc, #44]	; (8000f04 <USART2_IRQHandler+0x94>)
 8000ed8:	54d1      	strb	r1, [r2, r3]
 8000eda:	4b09      	ldr	r3, [pc, #36]	; (8000f00 <USART2_IRQHandler+0x90>)
 8000edc:	681b      	ldr	r3, [r3, #0]
 8000ede:	3301      	adds	r3, #1
 8000ee0:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000ee4:	4a06      	ldr	r2, [pc, #24]	; (8000f00 <USART2_IRQHandler+0x90>)
 8000ee6:	6013      	str	r3, [r2, #0]
 8000ee8:	bf00      	nop
 8000eea:	46bd      	mov	sp, r7
 8000eec:	bc80      	pop	{r7}
 8000eee:	4770      	bx	lr
 8000ef0:	40004400 	.word	0x40004400
 8000ef4:	20000448 	.word	0x20000448
 8000ef8:	2000044c 	.word	0x2000044c
 8000efc:	20000048 	.word	0x20000048
 8000f00:	20000850 	.word	0x20000850
 8000f04:	20000450 	.word	0x20000450

08000f08 <usb_init>:
 8000f08:	b480      	push	{r7}
 8000f0a:	b083      	sub	sp, #12
 8000f0c:	af00      	add	r7, sp, #0
 8000f0e:	4a1c      	ldr	r2, [pc, #112]	; (8000f80 <usb_init+0x78>)
 8000f10:	4b1b      	ldr	r3, [pc, #108]	; (8000f80 <usb_init+0x78>)
 8000f12:	685b      	ldr	r3, [r3, #4]
 8000f14:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
 8000f18:	6053      	str	r3, [r2, #4]
 8000f1a:	4a19      	ldr	r2, [pc, #100]	; (8000f80 <usb_init+0x78>)
 8000f1c:	4b18      	ldr	r3, [pc, #96]	; (8000f80 <usb_init+0x78>)
 8000f1e:	685b      	ldr	r3, [r3, #4]
 8000f20:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000f24:	6053      	str	r3, [r2, #4]
 8000f26:	4a16      	ldr	r2, [pc, #88]	; (8000f80 <usb_init+0x78>)
 8000f28:	4b15      	ldr	r3, [pc, #84]	; (8000f80 <usb_init+0x78>)
 8000f2a:	68db      	ldr	r3, [r3, #12]
 8000f2c:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8000f30:	60d3      	str	r3, [r2, #12]
 8000f32:	4a14      	ldr	r2, [pc, #80]	; (8000f84 <usb_init+0x7c>)
 8000f34:	4b13      	ldr	r3, [pc, #76]	; (8000f84 <usb_init+0x7c>)
 8000f36:	681b      	ldr	r3, [r3, #0]
 8000f38:	f023 0302 	bic.w	r3, r3, #2
 8000f3c:	6013      	str	r3, [r2, #0]
 8000f3e:	2300      	movs	r3, #0
 8000f40:	607b      	str	r3, [r7, #4]
 8000f42:	e002      	b.n	8000f4a <usb_init+0x42>
 8000f44:	687b      	ldr	r3, [r7, #4]
 8000f46:	3301      	adds	r3, #1
 8000f48:	607b      	str	r3, [r7, #4]
 8000f4a:	687b      	ldr	r3, [r7, #4]
 8000f4c:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 8000f50:	dbf8      	blt.n	8000f44 <usb_init+0x3c>
 8000f52:	4a0c      	ldr	r2, [pc, #48]	; (8000f84 <usb_init+0x7c>)
 8000f54:	4b0b      	ldr	r3, [pc, #44]	; (8000f84 <usb_init+0x7c>)
 8000f56:	681b      	ldr	r3, [r3, #0]
 8000f58:	f023 0301 	bic.w	r3, r3, #1
 8000f5c:	6013      	str	r3, [r2, #0]
 8000f5e:	4a09      	ldr	r2, [pc, #36]	; (8000f84 <usb_init+0x7c>)
 8000f60:	4b08      	ldr	r3, [pc, #32]	; (8000f84 <usb_init+0x7c>)
 8000f62:	681b      	ldr	r3, [r3, #0]
 8000f64:	f443 4365 	orr.w	r3, r3, #58624	; 0xe500
 8000f68:	6013      	str	r3, [r2, #0]
 8000f6a:	4b07      	ldr	r3, [pc, #28]	; (8000f88 <usb_init+0x80>)
 8000f6c:	2200      	movs	r2, #0
 8000f6e:	601a      	str	r2, [r3, #0]
 8000f70:	4b06      	ldr	r3, [pc, #24]	; (8000f8c <usb_init+0x84>)
 8000f72:	2200      	movs	r2, #0
 8000f74:	601a      	str	r2, [r3, #0]
 8000f76:	bf00      	nop
 8000f78:	370c      	adds	r7, #12
 8000f7a:	46bd      	mov	sp, r7
 8000f7c:	bc80      	pop	{r7}
 8000f7e:	4770      	bx	lr
 8000f80:	40010800 	.word	0x40010800
 8000f84:	40005c40 	.word	0x40005c40
 8000f88:	40005c44 	.word	0x40005c44
 8000f8c:	20000044 	.word	0x20000044

08000f90 <usb_read>:
 8000f90:	b590      	push	{r4, r7, lr}
 8000f92:	b085      	sub	sp, #20
 8000f94:	af00      	add	r7, sp, #0
 8000f96:	6078      	str	r0, [r7, #4]
 8000f98:	6039      	str	r1, [r7, #0]
 8000f9a:	4b24      	ldr	r3, [pc, #144]	; (800102c <usb_read+0x9c>)
 8000f9c:	681b      	ldr	r3, [r3, #0]
 8000f9e:	b29b      	uxth	r3, r3
 8000fa0:	461a      	mov	r2, r3
 8000fa2:	4b23      	ldr	r3, [pc, #140]	; (8001030 <usb_read+0xa0>)
 8000fa4:	4413      	add	r3, r2
 8000fa6:	005b      	lsls	r3, r3, #1
 8000fa8:	681b      	ldr	r3, [r3, #0]
 8000faa:	b29b      	uxth	r3, r3
 8000fac:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8000fb0:	60fb      	str	r3, [r7, #12]
 8000fb2:	68fb      	ldr	r3, [r7, #12]
 8000fb4:	2b00      	cmp	r3, #0
 8000fb6:	d101      	bne.n	8000fbc <usb_read+0x2c>
 8000fb8:	2300      	movs	r3, #0
 8000fba:	e033      	b.n	8001024 <usb_read+0x94>
 8000fbc:	68fa      	ldr	r2, [r7, #12]
 8000fbe:	683b      	ldr	r3, [r7, #0]
 8000fc0:	4293      	cmp	r3, r2
 8000fc2:	bf28      	it	cs
 8000fc4:	4613      	movcs	r3, r2
 8000fc6:	60bb      	str	r3, [r7, #8]
 8000fc8:	68bb      	ldr	r3, [r7, #8]
 8000fca:	461a      	mov	r2, r3
 8000fcc:	f44f 7188 	mov.w	r1, #272	; 0x110
 8000fd0:	6878      	ldr	r0, [r7, #4]
 8000fd2:	f000 fae1 	bl	8001598 <pma_to_user_copy>
 8000fd6:	4b15      	ldr	r3, [pc, #84]	; (800102c <usb_read+0x9c>)
 8000fd8:	681a      	ldr	r2, [r3, #0]
 8000fda:	b293      	uxth	r3, r2
 8000fdc:	4619      	mov	r1, r3
 8000fde:	4b14      	ldr	r3, [pc, #80]	; (8001030 <usb_read+0xa0>)
 8000fe0:	440b      	add	r3, r1
 8000fe2:	005b      	lsls	r3, r3, #1
 8000fe4:	4619      	mov	r1, r3
 8000fe6:	b293      	uxth	r3, r2
 8000fe8:	461a      	mov	r2, r3
 8000fea:	4b11      	ldr	r3, [pc, #68]	; (8001030 <usb_read+0xa0>)
 8000fec:	4413      	add	r3, r2
 8000fee:	005b      	lsls	r3, r3, #1
 8000ff0:	681b      	ldr	r3, [r3, #0]
 8000ff2:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8000ff6:	f023 0303 	bic.w	r3, r3, #3
 8000ffa:	600b      	str	r3, [r1, #0]
 8000ffc:	4b0d      	ldr	r3, [pc, #52]	; (8001034 <usb_read+0xa4>)
 8000ffe:	681b      	ldr	r3, [r3, #0]
 8001000:	b29b      	uxth	r3, r3
 8001002:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8001006:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800100a:	b29c      	uxth	r4, r3
 800100c:	f484 5380 	eor.w	r3, r4, #4096	; 0x1000
 8001010:	b29c      	uxth	r4, r3
 8001012:	f484 5300 	eor.w	r3, r4, #8192	; 0x2000
 8001016:	b29c      	uxth	r4, r3
 8001018:	4a06      	ldr	r2, [pc, #24]	; (8001034 <usb_read+0xa4>)
 800101a:	4b07      	ldr	r3, [pc, #28]	; (8001038 <usb_read+0xa8>)
 800101c:	4323      	orrs	r3, r4
 800101e:	b29b      	uxth	r3, r3
 8001020:	6013      	str	r3, [r2, #0]
 8001022:	68bb      	ldr	r3, [r7, #8]
 8001024:	4618      	mov	r0, r3
 8001026:	3714      	adds	r7, #20
 8001028:	46bd      	mov	sp, r7
 800102a:	bd90      	pop	{r4, r7, pc}
 800102c:	40005c50 	.word	0x40005c50
 8001030:	2000301e 	.word	0x2000301e
 8001034:	40005c0c 	.word	0x40005c0c
 8001038:	ffff8080 	.word	0xffff8080

0800103c <usb_write>:
 800103c:	b590      	push	{r4, r7, lr}
 800103e:	b085      	sub	sp, #20
 8001040:	af00      	add	r7, sp, #0
 8001042:	6078      	str	r0, [r7, #4]
 8001044:	6039      	str	r1, [r7, #0]
 8001046:	4b1b      	ldr	r3, [pc, #108]	; (80010b4 <usb_write+0x78>)
 8001048:	681b      	ldr	r3, [r3, #0]
 800104a:	b29b      	uxth	r3, r3
 800104c:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8001050:	2b30      	cmp	r3, #48	; 0x30
 8001052:	d101      	bne.n	8001058 <usb_write+0x1c>
 8001054:	2300      	movs	r3, #0
 8001056:	e028      	b.n	80010aa <usb_write+0x6e>
 8001058:	683b      	ldr	r3, [r7, #0]
 800105a:	2b40      	cmp	r3, #64	; 0x40
 800105c:	bf28      	it	cs
 800105e:	2340      	movcs	r3, #64	; 0x40
 8001060:	60fb      	str	r3, [r7, #12]
 8001062:	68fb      	ldr	r3, [r7, #12]
 8001064:	461a      	mov	r2, r3
 8001066:	21c0      	movs	r1, #192	; 0xc0
 8001068:	6878      	ldr	r0, [r7, #4]
 800106a:	f000 fa45 	bl	80014f8 <user_to_pma_copy>
 800106e:	4b12      	ldr	r3, [pc, #72]	; (80010b8 <usb_write+0x7c>)
 8001070:	681b      	ldr	r3, [r3, #0]
 8001072:	b29b      	uxth	r3, r3
 8001074:	461a      	mov	r2, r3
 8001076:	4b11      	ldr	r3, [pc, #68]	; (80010bc <usb_write+0x80>)
 8001078:	4413      	add	r3, r2
 800107a:	005b      	lsls	r3, r3, #1
 800107c:	461a      	mov	r2, r3
 800107e:	68fb      	ldr	r3, [r7, #12]
 8001080:	6013      	str	r3, [r2, #0]
 8001082:	4b0c      	ldr	r3, [pc, #48]	; (80010b4 <usb_write+0x78>)
 8001084:	681b      	ldr	r3, [r3, #0]
 8001086:	b29b      	uxth	r3, r3
 8001088:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 800108c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001090:	b29c      	uxth	r4, r3
 8001092:	f084 0310 	eor.w	r3, r4, #16
 8001096:	b29c      	uxth	r4, r3
 8001098:	f084 0320 	eor.w	r3, r4, #32
 800109c:	b29c      	uxth	r4, r3
 800109e:	4a05      	ldr	r2, [pc, #20]	; (80010b4 <usb_write+0x78>)
 80010a0:	4b07      	ldr	r3, [pc, #28]	; (80010c0 <usb_write+0x84>)
 80010a2:	4323      	orrs	r3, r4
 80010a4:	b29b      	uxth	r3, r3
 80010a6:	6013      	str	r3, [r2, #0]
 80010a8:	68fb      	ldr	r3, [r7, #12]
 80010aa:	4618      	mov	r0, r3
 80010ac:	3714      	adds	r7, #20
 80010ae:	46bd      	mov	sp, r7
 80010b0:	bd90      	pop	{r4, r7, pc}
 80010b2:	bf00      	nop
 80010b4:	40005c04 	.word	0x40005c04
 80010b8:	40005c50 	.word	0x40005c50
 80010bc:	2000300a 	.word	0x2000300a
 80010c0:	ffff8080 	.word	0xffff8080

080010c4 <plan_notification_to_host>:
 80010c4:	b590      	push	{r4, r7, lr}
 80010c6:	b085      	sub	sp, #20
 80010c8:	af00      	add	r7, sp, #0
 80010ca:	4a17      	ldr	r2, [pc, #92]	; (8001128 <plan_notification_to_host+0x64>)
 80010cc:	1d3b      	adds	r3, r7, #4
 80010ce:	6810      	ldr	r0, [r2, #0]
 80010d0:	6851      	ldr	r1, [r2, #4]
 80010d2:	c303      	stmia	r3!, {r0, r1}
 80010d4:	8912      	ldrh	r2, [r2, #8]
 80010d6:	801a      	strh	r2, [r3, #0]
 80010d8:	4b14      	ldr	r3, [pc, #80]	; (800112c <plan_notification_to_host+0x68>)
 80010da:	681b      	ldr	r3, [r3, #0]
 80010dc:	b29b      	uxth	r3, r3
 80010de:	461a      	mov	r2, r3
 80010e0:	4b13      	ldr	r3, [pc, #76]	; (8001130 <plan_notification_to_host+0x6c>)
 80010e2:	4413      	add	r3, r2
 80010e4:	005b      	lsls	r3, r3, #1
 80010e6:	461a      	mov	r2, r3
 80010e8:	230a      	movs	r3, #10
 80010ea:	6013      	str	r3, [r2, #0]
 80010ec:	1d3b      	adds	r3, r7, #4
 80010ee:	220a      	movs	r2, #10
 80010f0:	f44f 7180 	mov.w	r1, #256	; 0x100
 80010f4:	4618      	mov	r0, r3
 80010f6:	f000 f9ff 	bl	80014f8 <user_to_pma_copy>
 80010fa:	4b0e      	ldr	r3, [pc, #56]	; (8001134 <plan_notification_to_host+0x70>)
 80010fc:	681b      	ldr	r3, [r3, #0]
 80010fe:	b29b      	uxth	r3, r3
 8001100:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8001104:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001108:	b29c      	uxth	r4, r3
 800110a:	f084 0310 	eor.w	r3, r4, #16
 800110e:	b29c      	uxth	r4, r3
 8001110:	f084 0320 	eor.w	r3, r4, #32
 8001114:	b29c      	uxth	r4, r3
 8001116:	4a07      	ldr	r2, [pc, #28]	; (8001134 <plan_notification_to_host+0x70>)
 8001118:	4b07      	ldr	r3, [pc, #28]	; (8001138 <plan_notification_to_host+0x74>)
 800111a:	4323      	orrs	r3, r4
 800111c:	b29b      	uxth	r3, r3
 800111e:	6013      	str	r3, [r2, #0]
 8001120:	bf00      	nop
 8001122:	3714      	adds	r7, #20
 8001124:	46bd      	mov	sp, r7
 8001126:	bd90      	pop	{r4, r7, pc}
 8001128:	080017fc 	.word	0x080017fc
 800112c:	40005c50 	.word	0x40005c50
 8001130:	20003012 	.word	0x20003012
 8001134:	40005c08 	.word	0x40005c08
 8001138:	ffff8080 	.word	0xffff8080

0800113c <usb_update>:
 800113c:	b580      	push	{r7, lr}
 800113e:	b082      	sub	sp, #8
 8001140:	af00      	add	r7, sp, #0
 8001142:	2300      	movs	r3, #0
 8001144:	80bb      	strh	r3, [r7, #4]
 8001146:	2300      	movs	r3, #0
 8001148:	807b      	strh	r3, [r7, #2]
 800114a:	2300      	movs	r3, #0
 800114c:	707b      	strb	r3, [r7, #1]
 800114e:	4b6e      	ldr	r3, [pc, #440]	; (8001308 <usb_update+0x1cc>)
 8001150:	681b      	ldr	r3, [r3, #0]
 8001152:	b29b      	uxth	r3, r3
 8001154:	807b      	strh	r3, [r7, #2]
 8001156:	887b      	ldrh	r3, [r7, #2]
 8001158:	b29b      	uxth	r3, r3
 800115a:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 800115e:	2b00      	cmp	r3, #0
 8001160:	d008      	beq.n	8001174 <usb_update+0x38>
 8001162:	4b69      	ldr	r3, [pc, #420]	; (8001308 <usb_update+0x1cc>)
 8001164:	f64f 32ff 	movw	r2, #64511	; 0xfbff
 8001168:	601a      	str	r2, [r3, #0]
 800116a:	f7fe ffbf 	bl	80000ec <usb_reset>
 800116e:	4867      	ldr	r0, [pc, #412]	; (800130c <usb_update+0x1d0>)
 8001170:	f7ff fdea 	bl	8000d48 <uart_send_str>
 8001174:	887b      	ldrh	r3, [r7, #2]
 8001176:	b29b      	uxth	r3, r3
 8001178:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800117c:	2b00      	cmp	r3, #0
 800117e:	d005      	beq.n	800118c <usb_update+0x50>
 8001180:	4b61      	ldr	r3, [pc, #388]	; (8001308 <usb_update+0x1cc>)
 8001182:	f24f 72ff 	movw	r2, #63487	; 0xf7ff
 8001186:	601a      	str	r2, [r3, #0]
 8001188:	f000 f9a8 	bl	80014dc <led_off>
 800118c:	887b      	ldrh	r3, [r7, #2]
 800118e:	b29b      	uxth	r3, r3
 8001190:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8001194:	2b00      	cmp	r3, #0
 8001196:	d003      	beq.n	80011a0 <usb_update+0x64>
 8001198:	4b5b      	ldr	r3, [pc, #364]	; (8001308 <usb_update+0x1cc>)
 800119a:	f64b 72ff 	movw	r2, #49151	; 0xbfff
 800119e:	601a      	str	r2, [r3, #0]
 80011a0:	887b      	ldrh	r3, [r7, #2]
 80011a2:	b29b      	uxth	r3, r3
 80011a4:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 80011a8:	2b00      	cmp	r3, #0
 80011aa:	d003      	beq.n	80011b4 <usb_update+0x78>
 80011ac:	4b56      	ldr	r3, [pc, #344]	; (8001308 <usb_update+0x1cc>)
 80011ae:	f64d 72ff 	movw	r2, #57343	; 0xdfff
 80011b2:	601a      	str	r2, [r3, #0]
 80011b4:	887b      	ldrh	r3, [r7, #2]
 80011b6:	b29b      	uxth	r3, r3
 80011b8:	b21b      	sxth	r3, r3
 80011ba:	2b00      	cmp	r3, #0
 80011bc:	f280 80a0 	bge.w	8001300 <usb_update+0x1c4>
 80011c0:	887b      	ldrh	r3, [r7, #2]
 80011c2:	b29b      	uxth	r3, r3
 80011c4:	b2db      	uxtb	r3, r3
 80011c6:	f003 030f 	and.w	r3, r3, #15
 80011ca:	b2db      	uxtb	r3, r3
 80011cc:	707b      	strb	r3, [r7, #1]
 80011ce:	787b      	ldrb	r3, [r7, #1]
 80011d0:	b2db      	uxtb	r3, r3
 80011d2:	2b00      	cmp	r3, #0
 80011d4:	d140      	bne.n	8001258 <usb_update+0x11c>
 80011d6:	4b4e      	ldr	r3, [pc, #312]	; (8001310 <usb_update+0x1d4>)
 80011d8:	681b      	ldr	r3, [r3, #0]
 80011da:	80fb      	strh	r3, [r7, #6]
 80011dc:	887b      	ldrh	r3, [r7, #2]
 80011de:	b29b      	uxth	r3, r3
 80011e0:	f003 0310 	and.w	r3, r3, #16
 80011e4:	2b00      	cmp	r3, #0
 80011e6:	d10f      	bne.n	8001208 <usb_update+0xcc>
 80011e8:	4a49      	ldr	r2, [pc, #292]	; (8001310 <usb_update+0x1d4>)
 80011ea:	4b49      	ldr	r3, [pc, #292]	; (8001310 <usb_update+0x1d4>)
 80011ec:	681b      	ldr	r3, [r3, #0]
 80011ee:	b29b      	uxth	r3, r3
 80011f0:	4619      	mov	r1, r3
 80011f2:	f648 730f 	movw	r3, #36623	; 0x8f0f
 80011f6:	400b      	ands	r3, r1
 80011f8:	6013      	str	r3, [r2, #0]
 80011fa:	4846      	ldr	r0, [pc, #280]	; (8001314 <usb_update+0x1d8>)
 80011fc:	f7ff fda4 	bl	8000d48 <uart_send_str>
 8001200:	4b45      	ldr	r3, [pc, #276]	; (8001318 <usb_update+0x1dc>)
 8001202:	681b      	ldr	r3, [r3, #0]
 8001204:	4798      	blx	r3
 8001206:	e07b      	b.n	8001300 <usb_update+0x1c4>
 8001208:	88fb      	ldrh	r3, [r7, #6]
 800120a:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800120e:	2b00      	cmp	r3, #0
 8001210:	d00e      	beq.n	8001230 <usb_update+0xf4>
 8001212:	4a3f      	ldr	r2, [pc, #252]	; (8001310 <usb_update+0x1d4>)
 8001214:	4b3e      	ldr	r3, [pc, #248]	; (8001310 <usb_update+0x1d4>)
 8001216:	681b      	ldr	r3, [r3, #0]
 8001218:	b29b      	uxth	r3, r3
 800121a:	4619      	mov	r1, r3
 800121c:	f640 738f 	movw	r3, #3983	; 0xf8f
 8001220:	400b      	ands	r3, r1
 8001222:	6013      	str	r3, [r2, #0]
 8001224:	483d      	ldr	r0, [pc, #244]	; (800131c <usb_update+0x1e0>)
 8001226:	f7ff fd8f 	bl	8000d48 <uart_send_str>
 800122a:	f7ff fc09 	bl	8000a40 <setup0_proc>
 800122e:	e067      	b.n	8001300 <usb_update+0x1c4>
 8001230:	f9b7 3006 	ldrsh.w	r3, [r7, #6]
 8001234:	2b00      	cmp	r3, #0
 8001236:	da63      	bge.n	8001300 <usb_update+0x1c4>
 8001238:	4a35      	ldr	r2, [pc, #212]	; (8001310 <usb_update+0x1d4>)
 800123a:	4b35      	ldr	r3, [pc, #212]	; (8001310 <usb_update+0x1d4>)
 800123c:	681b      	ldr	r3, [r3, #0]
 800123e:	b29b      	uxth	r3, r3
 8001240:	4619      	mov	r1, r3
 8001242:	f640 738f 	movw	r3, #3983	; 0xf8f
 8001246:	400b      	ands	r3, r1
 8001248:	6013      	str	r3, [r2, #0]
 800124a:	4835      	ldr	r0, [pc, #212]	; (8001320 <usb_update+0x1e4>)
 800124c:	f7ff fd7c 	bl	8000d48 <uart_send_str>
 8001250:	4b34      	ldr	r3, [pc, #208]	; (8001324 <usb_update+0x1e8>)
 8001252:	681b      	ldr	r3, [r3, #0]
 8001254:	4798      	blx	r3
 8001256:	e053      	b.n	8001300 <usb_update+0x1c4>
 8001258:	787b      	ldrb	r3, [r7, #1]
 800125a:	b2db      	uxtb	r3, r3
 800125c:	009b      	lsls	r3, r3, #2
 800125e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001262:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001266:	681b      	ldr	r3, [r3, #0]
 8001268:	b29b      	uxth	r3, r3
 800126a:	80bb      	strh	r3, [r7, #4]
 800126c:	88bb      	ldrh	r3, [r7, #4]
 800126e:	b29b      	uxth	r3, r3
 8001270:	b21b      	sxth	r3, r3
 8001272:	2b00      	cmp	r3, #0
 8001274:	da1b      	bge.n	80012ae <usb_update+0x172>
 8001276:	787b      	ldrb	r3, [r7, #1]
 8001278:	b2db      	uxtb	r3, r3
 800127a:	009b      	lsls	r3, r3, #2
 800127c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8001280:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8001284:	787a      	ldrb	r2, [r7, #1]
 8001286:	b2d2      	uxtb	r2, r2
 8001288:	0092      	lsls	r2, r2, #2
 800128a:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800128e:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8001292:	6812      	ldr	r2, [r2, #0]
 8001294:	b292      	uxth	r2, r2
 8001296:	4611      	mov	r1, r2
 8001298:	f640 728f 	movw	r2, #3983	; 0xf8f
 800129c:	400a      	ands	r2, r1
 800129e:	601a      	str	r2, [r3, #0]
 80012a0:	787b      	ldrb	r3, [r7, #1]
 80012a2:	b2db      	uxtb	r3, r3
 80012a4:	2b03      	cmp	r3, #3
 80012a6:	d102      	bne.n	80012ae <usb_update+0x172>
 80012a8:	481f      	ldr	r0, [pc, #124]	; (8001328 <usb_update+0x1ec>)
 80012aa:	f7ff fd4d 	bl	8000d48 <uart_send_str>
 80012ae:	88bb      	ldrh	r3, [r7, #4]
 80012b0:	b29b      	uxth	r3, r3
 80012b2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80012b6:	2b00      	cmp	r3, #0
 80012b8:	d022      	beq.n	8001300 <usb_update+0x1c4>
 80012ba:	787b      	ldrb	r3, [r7, #1]
 80012bc:	b2db      	uxtb	r3, r3
 80012be:	009b      	lsls	r3, r3, #2
 80012c0:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80012c4:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 80012c8:	787a      	ldrb	r2, [r7, #1]
 80012ca:	b2d2      	uxtb	r2, r2
 80012cc:	0092      	lsls	r2, r2, #2
 80012ce:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 80012d2:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80012d6:	6812      	ldr	r2, [r2, #0]
 80012d8:	b292      	uxth	r2, r2
 80012da:	4611      	mov	r1, r2
 80012dc:	f648 720f 	movw	r2, #36623	; 0x8f0f
 80012e0:	400a      	ands	r2, r1
 80012e2:	601a      	str	r2, [r3, #0]
 80012e4:	787b      	ldrb	r3, [r7, #1]
 80012e6:	b2db      	uxtb	r3, r3
 80012e8:	2b01      	cmp	r3, #1
 80012ea:	d102      	bne.n	80012f2 <usb_update+0x1b6>
 80012ec:	480f      	ldr	r0, [pc, #60]	; (800132c <usb_update+0x1f0>)
 80012ee:	f7ff fd2b 	bl	8000d48 <uart_send_str>
 80012f2:	787b      	ldrb	r3, [r7, #1]
 80012f4:	b2db      	uxtb	r3, r3
 80012f6:	2b02      	cmp	r3, #2
 80012f8:	d102      	bne.n	8001300 <usb_update+0x1c4>
 80012fa:	480d      	ldr	r0, [pc, #52]	; (8001330 <usb_update+0x1f4>)
 80012fc:	f7ff fd24 	bl	8000d48 <uart_send_str>
 8001300:	bf00      	nop
 8001302:	3708      	adds	r7, #8
 8001304:	46bd      	mov	sp, r7
 8001306:	bd80      	pop	{r7, pc}
 8001308:	40005c44 	.word	0x40005c44
 800130c:	08001808 	.word	0x08001808
 8001310:	40005c00 	.word	0x40005c00
 8001314:	08001810 	.word	0x08001810
 8001318:	2000001c 	.word	0x2000001c
 800131c:	0800181c 	.word	0x0800181c
 8001320:	08001828 	.word	0x08001828
 8001324:	20000020 	.word	0x20000020
 8001328:	08001834 	.word	0x08001834
 800132c:	08001840 	.word	0x08001840
 8001330:	0800184c 	.word	0x0800184c

08001334 <system_init>:
 8001334:	b480      	push	{r7}
 8001336:	af00      	add	r7, sp, #0
 8001338:	4a3c      	ldr	r2, [pc, #240]	; (800142c <system_init+0xf8>)
 800133a:	4b3c      	ldr	r3, [pc, #240]	; (800142c <system_init+0xf8>)
 800133c:	681b      	ldr	r3, [r3, #0]
 800133e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001342:	6013      	str	r3, [r2, #0]
 8001344:	bf00      	nop
 8001346:	4b39      	ldr	r3, [pc, #228]	; (800142c <system_init+0xf8>)
 8001348:	681b      	ldr	r3, [r3, #0]
 800134a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800134e:	2b00      	cmp	r3, #0
 8001350:	d0f9      	beq.n	8001346 <system_init+0x12>
 8001352:	4a36      	ldr	r2, [pc, #216]	; (800142c <system_init+0xf8>)
 8001354:	4b35      	ldr	r3, [pc, #212]	; (800142c <system_init+0xf8>)
 8001356:	685b      	ldr	r3, [r3, #4]
 8001358:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
 800135c:	6053      	str	r3, [r2, #4]
 800135e:	4a33      	ldr	r2, [pc, #204]	; (800142c <system_init+0xf8>)
 8001360:	4b32      	ldr	r3, [pc, #200]	; (800142c <system_init+0xf8>)
 8001362:	685b      	ldr	r3, [r3, #4]
 8001364:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001368:	6053      	str	r3, [r2, #4]
 800136a:	4a30      	ldr	r2, [pc, #192]	; (800142c <system_init+0xf8>)
 800136c:	4b2f      	ldr	r3, [pc, #188]	; (800142c <system_init+0xf8>)
 800136e:	685b      	ldr	r3, [r3, #4]
 8001370:	f443 13e0 	orr.w	r3, r3, #1835008	; 0x1c0000
 8001374:	6053      	str	r3, [r2, #4]
 8001376:	4a2d      	ldr	r2, [pc, #180]	; (800142c <system_init+0xf8>)
 8001378:	4b2c      	ldr	r3, [pc, #176]	; (800142c <system_init+0xf8>)
 800137a:	685b      	ldr	r3, [r3, #4]
 800137c:	f423 0380 	bic.w	r3, r3, #4194304	; 0x400000
 8001380:	6053      	str	r3, [r2, #4]
 8001382:	4a2a      	ldr	r2, [pc, #168]	; (800142c <system_init+0xf8>)
 8001384:	4b29      	ldr	r3, [pc, #164]	; (800142c <system_init+0xf8>)
 8001386:	681b      	ldr	r3, [r3, #0]
 8001388:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800138c:	6013      	str	r3, [r2, #0]
 800138e:	bf00      	nop
 8001390:	4b26      	ldr	r3, [pc, #152]	; (800142c <system_init+0xf8>)
 8001392:	681b      	ldr	r3, [r3, #0]
 8001394:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8001398:	2b00      	cmp	r3, #0
 800139a:	d0f9      	beq.n	8001390 <system_init+0x5c>
 800139c:	4a24      	ldr	r2, [pc, #144]	; (8001430 <system_init+0xfc>)
 800139e:	4b24      	ldr	r3, [pc, #144]	; (8001430 <system_init+0xfc>)
 80013a0:	681b      	ldr	r3, [r3, #0]
 80013a2:	f043 0310 	orr.w	r3, r3, #16
 80013a6:	6013      	str	r3, [r2, #0]
 80013a8:	4a21      	ldr	r2, [pc, #132]	; (8001430 <system_init+0xfc>)
 80013aa:	4b21      	ldr	r3, [pc, #132]	; (8001430 <system_init+0xfc>)
 80013ac:	681b      	ldr	r3, [r3, #0]
 80013ae:	f023 0303 	bic.w	r3, r3, #3
 80013b2:	6013      	str	r3, [r2, #0]
 80013b4:	4a1e      	ldr	r2, [pc, #120]	; (8001430 <system_init+0xfc>)
 80013b6:	4b1e      	ldr	r3, [pc, #120]	; (8001430 <system_init+0xfc>)
 80013b8:	681b      	ldr	r3, [r3, #0]
 80013ba:	f043 0302 	orr.w	r3, r3, #2
 80013be:	6013      	str	r3, [r2, #0]
 80013c0:	4a1a      	ldr	r2, [pc, #104]	; (800142c <system_init+0xf8>)
 80013c2:	4b1a      	ldr	r3, [pc, #104]	; (800142c <system_init+0xf8>)
 80013c4:	685b      	ldr	r3, [r3, #4]
 80013c6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80013ca:	6053      	str	r3, [r2, #4]
 80013cc:	4a17      	ldr	r2, [pc, #92]	; (800142c <system_init+0xf8>)
 80013ce:	4b17      	ldr	r3, [pc, #92]	; (800142c <system_init+0xf8>)
 80013d0:	685b      	ldr	r3, [r3, #4]
 80013d2:	f023 0303 	bic.w	r3, r3, #3
 80013d6:	6053      	str	r3, [r2, #4]
 80013d8:	4a14      	ldr	r2, [pc, #80]	; (800142c <system_init+0xf8>)
 80013da:	4b14      	ldr	r3, [pc, #80]	; (800142c <system_init+0xf8>)
 80013dc:	685b      	ldr	r3, [r3, #4]
 80013de:	f043 0302 	orr.w	r3, r3, #2
 80013e2:	6053      	str	r3, [r2, #4]
 80013e4:	bf00      	nop
 80013e6:	4b11      	ldr	r3, [pc, #68]	; (800142c <system_init+0xf8>)
 80013e8:	685b      	ldr	r3, [r3, #4]
 80013ea:	f003 030c 	and.w	r3, r3, #12
 80013ee:	2b08      	cmp	r3, #8
 80013f0:	d1f9      	bne.n	80013e6 <system_init+0xb2>
 80013f2:	4a0e      	ldr	r2, [pc, #56]	; (800142c <system_init+0xf8>)
 80013f4:	4b0d      	ldr	r3, [pc, #52]	; (800142c <system_init+0xf8>)
 80013f6:	699b      	ldr	r3, [r3, #24]
 80013f8:	f043 0305 	orr.w	r3, r3, #5
 80013fc:	6193      	str	r3, [r2, #24]
 80013fe:	4a0b      	ldr	r2, [pc, #44]	; (800142c <system_init+0xf8>)
 8001400:	4b0a      	ldr	r3, [pc, #40]	; (800142c <system_init+0xf8>)
 8001402:	69db      	ldr	r3, [r3, #28]
 8001404:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 8001408:	61d3      	str	r3, [r2, #28]
 800140a:	4a08      	ldr	r2, [pc, #32]	; (800142c <system_init+0xf8>)
 800140c:	4b07      	ldr	r3, [pc, #28]	; (800142c <system_init+0xf8>)
 800140e:	69db      	ldr	r3, [r3, #28]
 8001410:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8001414:	61d3      	str	r3, [r2, #28]
 8001416:	4a05      	ldr	r2, [pc, #20]	; (800142c <system_init+0xf8>)
 8001418:	4b04      	ldr	r3, [pc, #16]	; (800142c <system_init+0xf8>)
 800141a:	699b      	ldr	r3, [r3, #24]
 800141c:	f043 0310 	orr.w	r3, r3, #16
 8001420:	6193      	str	r3, [r2, #24]
 8001422:	bf00      	nop
 8001424:	46bd      	mov	sp, r7
 8001426:	bc80      	pop	{r7}
 8001428:	4770      	bx	lr
 800142a:	bf00      	nop
 800142c:	40021000 	.word	0x40021000
 8001430:	40022000 	.word	0x40022000

08001434 <main>:
 8001434:	b580      	push	{r7, lr}
 8001436:	b0a2      	sub	sp, #136	; 0x88
 8001438:	af00      	add	r7, sp, #0
 800143a:	f7ff ff7b 	bl	8001334 <system_init>
 800143e:	f7ff fbfb 	bl	8000c38 <uart_init>
 8001442:	f7ff fd61 	bl	8000f08 <usb_init>
 8001446:	f7fe fe51 	bl	80000ec <usb_reset>
 800144a:	f000 f82b 	bl	80014a4 <led_init>
 800144e:	4811      	ldr	r0, [pc, #68]	; (8001494 <main+0x60>)
 8001450:	f7ff fc7a 	bl	8000d48 <uart_send_str>
 8001454:	4810      	ldr	r0, [pc, #64]	; (8001498 <main+0x64>)
 8001456:	f7ff fc77 	bl	8000d48 <uart_send_str>
 800145a:	4810      	ldr	r0, [pc, #64]	; (800149c <main+0x68>)
 800145c:	f7ff fc74 	bl	8000d48 <uart_send_str>
 8001460:	f7ff fe6c 	bl	800113c <usb_update>
 8001464:	4b0e      	ldr	r3, [pc, #56]	; (80014a0 <main+0x6c>)
 8001466:	681b      	ldr	r3, [r3, #0]
 8001468:	2b05      	cmp	r3, #5
 800146a:	d1f9      	bne.n	8001460 <main+0x2c>
 800146c:	1d3b      	adds	r3, r7, #4
 800146e:	2180      	movs	r1, #128	; 0x80
 8001470:	4618      	mov	r0, r3
 8001472:	f7ff fd8d 	bl	8000f90 <usb_read>
 8001476:	f8c7 0084 	str.w	r0, [r7, #132]	; 0x84
 800147a:	f8d7 3084 	ldr.w	r3, [r7, #132]	; 0x84
 800147e:	2b00      	cmp	r3, #0
 8001480:	ddee      	ble.n	8001460 <main+0x2c>
 8001482:	f8d7 2084 	ldr.w	r2, [r7, #132]	; 0x84
 8001486:	1d3b      	adds	r3, r7, #4
 8001488:	4611      	mov	r1, r2
 800148a:	4618      	mov	r0, r3
 800148c:	f7ff fdd6 	bl	800103c <usb_write>
 8001490:	e7e6      	b.n	8001460 <main+0x2c>
 8001492:	bf00      	nop
 8001494:	08001858 	.word	0x08001858
 8001498:	08001860 	.word	0x08001860
 800149c:	08001868 	.word	0x08001868
 80014a0:	20000044 	.word	0x20000044

080014a4 <led_init>:
 80014a4:	b480      	push	{r7}
 80014a6:	af00      	add	r7, sp, #0
 80014a8:	4a04      	ldr	r2, [pc, #16]	; (80014bc <led_init+0x18>)
 80014aa:	4b04      	ldr	r3, [pc, #16]	; (80014bc <led_init+0x18>)
 80014ac:	685b      	ldr	r3, [r3, #4]
 80014ae:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 80014b2:	6053      	str	r3, [r2, #4]
 80014b4:	bf00      	nop
 80014b6:	46bd      	mov	sp, r7
 80014b8:	bc80      	pop	{r7}
 80014ba:	4770      	bx	lr
 80014bc:	40011000 	.word	0x40011000

080014c0 <led_on>:
 80014c0:	b480      	push	{r7}
 80014c2:	af00      	add	r7, sp, #0
 80014c4:	4a04      	ldr	r2, [pc, #16]	; (80014d8 <led_on+0x18>)
 80014c6:	4b04      	ldr	r3, [pc, #16]	; (80014d8 <led_on+0x18>)
 80014c8:	68db      	ldr	r3, [r3, #12]
 80014ca:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 80014ce:	60d3      	str	r3, [r2, #12]
 80014d0:	bf00      	nop
 80014d2:	46bd      	mov	sp, r7
 80014d4:	bc80      	pop	{r7}
 80014d6:	4770      	bx	lr
 80014d8:	40011000 	.word	0x40011000

080014dc <led_off>:
 80014dc:	b480      	push	{r7}
 80014de:	af00      	add	r7, sp, #0
 80014e0:	4a04      	ldr	r2, [pc, #16]	; (80014f4 <led_off+0x18>)
 80014e2:	4b04      	ldr	r3, [pc, #16]	; (80014f4 <led_off+0x18>)
 80014e4:	68db      	ldr	r3, [r3, #12]
 80014e6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80014ea:	60d3      	str	r3, [r2, #12]
 80014ec:	bf00      	nop
 80014ee:	46bd      	mov	sp, r7
 80014f0:	bc80      	pop	{r7}
 80014f2:	4770      	bx	lr
 80014f4:	40011000 	.word	0x40011000

080014f8 <user_to_pma_copy>:
 80014f8:	b480      	push	{r7}
 80014fa:	b08b      	sub	sp, #44	; 0x2c
 80014fc:	af00      	add	r7, sp, #0
 80014fe:	60f8      	str	r0, [r7, #12]
 8001500:	60b9      	str	r1, [r7, #8]
 8001502:	607a      	str	r2, [r7, #4]
 8001504:	68bb      	ldr	r3, [r7, #8]
 8001506:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 800150a:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 800150e:	005b      	lsls	r3, r3, #1
 8001510:	61fb      	str	r3, [r7, #28]
 8001512:	687b      	ldr	r3, [r7, #4]
 8001514:	f003 0301 	and.w	r3, r3, #1
 8001518:	61bb      	str	r3, [r7, #24]
 800151a:	687b      	ldr	r3, [r7, #4]
 800151c:	085b      	lsrs	r3, r3, #1
 800151e:	617b      	str	r3, [r7, #20]
 8001520:	2300      	movs	r3, #0
 8001522:	623b      	str	r3, [r7, #32]
 8001524:	2300      	movs	r3, #0
 8001526:	627b      	str	r3, [r7, #36]	; 0x24
 8001528:	e020      	b.n	800156c <user_to_pma_copy+0x74>
 800152a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800152c:	009b      	lsls	r3, r3, #2
 800152e:	69fa      	ldr	r2, [r7, #28]
 8001530:	441a      	add	r2, r3
 8001532:	6a3b      	ldr	r3, [r7, #32]
 8001534:	1c59      	adds	r1, r3, #1
 8001536:	6239      	str	r1, [r7, #32]
 8001538:	68f9      	ldr	r1, [r7, #12]
 800153a:	440b      	add	r3, r1
 800153c:	781b      	ldrb	r3, [r3, #0]
 800153e:	6013      	str	r3, [r2, #0]
 8001540:	6a3b      	ldr	r3, [r7, #32]
 8001542:	1c5a      	adds	r2, r3, #1
 8001544:	623a      	str	r2, [r7, #32]
 8001546:	68fa      	ldr	r2, [r7, #12]
 8001548:	4413      	add	r3, r2
 800154a:	781b      	ldrb	r3, [r3, #0]
 800154c:	0218      	lsls	r0, r3, #8
 800154e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001550:	009b      	lsls	r3, r3, #2
 8001552:	69fa      	ldr	r2, [r7, #28]
 8001554:	4413      	add	r3, r2
 8001556:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001558:	0092      	lsls	r2, r2, #2
 800155a:	69f9      	ldr	r1, [r7, #28]
 800155c:	440a      	add	r2, r1
 800155e:	6812      	ldr	r2, [r2, #0]
 8001560:	4601      	mov	r1, r0
 8001562:	430a      	orrs	r2, r1
 8001564:	601a      	str	r2, [r3, #0]
 8001566:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001568:	3301      	adds	r3, #1
 800156a:	627b      	str	r3, [r7, #36]	; 0x24
 800156c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800156e:	697b      	ldr	r3, [r7, #20]
 8001570:	429a      	cmp	r2, r3
 8001572:	d3da      	bcc.n	800152a <user_to_pma_copy+0x32>
 8001574:	69bb      	ldr	r3, [r7, #24]
 8001576:	2b00      	cmp	r3, #0
 8001578:	d008      	beq.n	800158c <user_to_pma_copy+0x94>
 800157a:	697b      	ldr	r3, [r7, #20]
 800157c:	009b      	lsls	r3, r3, #2
 800157e:	69fa      	ldr	r2, [r7, #28]
 8001580:	4413      	add	r3, r2
 8001582:	68f9      	ldr	r1, [r7, #12]
 8001584:	6a3a      	ldr	r2, [r7, #32]
 8001586:	440a      	add	r2, r1
 8001588:	7812      	ldrb	r2, [r2, #0]
 800158a:	601a      	str	r2, [r3, #0]
 800158c:	bf00      	nop
 800158e:	372c      	adds	r7, #44	; 0x2c
 8001590:	46bd      	mov	sp, r7
 8001592:	bc80      	pop	{r7}
 8001594:	4770      	bx	lr
 8001596:	bf00      	nop

08001598 <pma_to_user_copy>:
 8001598:	b480      	push	{r7}
 800159a:	b08b      	sub	sp, #44	; 0x2c
 800159c:	af00      	add	r7, sp, #0
 800159e:	60f8      	str	r0, [r7, #12]
 80015a0:	60b9      	str	r1, [r7, #8]
 80015a2:	607a      	str	r2, [r7, #4]
 80015a4:	68bb      	ldr	r3, [r7, #8]
 80015a6:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
 80015aa:	f503 5340 	add.w	r3, r3, #12288	; 0x3000
 80015ae:	005b      	lsls	r3, r3, #1
 80015b0:	61fb      	str	r3, [r7, #28]
 80015b2:	687b      	ldr	r3, [r7, #4]
 80015b4:	f003 0301 	and.w	r3, r3, #1
 80015b8:	61bb      	str	r3, [r7, #24]
 80015ba:	687b      	ldr	r3, [r7, #4]
 80015bc:	085b      	lsrs	r3, r3, #1
 80015be:	617b      	str	r3, [r7, #20]
 80015c0:	2300      	movs	r3, #0
 80015c2:	623b      	str	r3, [r7, #32]
 80015c4:	2300      	movs	r3, #0
 80015c6:	627b      	str	r3, [r7, #36]	; 0x24
 80015c8:	e01b      	b.n	8001602 <pma_to_user_copy+0x6a>
 80015ca:	6a3b      	ldr	r3, [r7, #32]
 80015cc:	1c5a      	adds	r2, r3, #1
 80015ce:	623a      	str	r2, [r7, #32]
 80015d0:	68fa      	ldr	r2, [r7, #12]
 80015d2:	4413      	add	r3, r2
 80015d4:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80015d6:	0092      	lsls	r2, r2, #2
 80015d8:	69f9      	ldr	r1, [r7, #28]
 80015da:	440a      	add	r2, r1
 80015dc:	6812      	ldr	r2, [r2, #0]
 80015de:	b2d2      	uxtb	r2, r2
 80015e0:	701a      	strb	r2, [r3, #0]
 80015e2:	6a3b      	ldr	r3, [r7, #32]
 80015e4:	1c5a      	adds	r2, r3, #1
 80015e6:	623a      	str	r2, [r7, #32]
 80015e8:	68fa      	ldr	r2, [r7, #12]
 80015ea:	4413      	add	r3, r2
 80015ec:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80015ee:	0092      	lsls	r2, r2, #2
 80015f0:	69f9      	ldr	r1, [r7, #28]
 80015f2:	440a      	add	r2, r1
 80015f4:	6812      	ldr	r2, [r2, #0]
 80015f6:	0a12      	lsrs	r2, r2, #8
 80015f8:	b2d2      	uxtb	r2, r2
 80015fa:	701a      	strb	r2, [r3, #0]
 80015fc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80015fe:	3301      	adds	r3, #1
 8001600:	627b      	str	r3, [r7, #36]	; 0x24
 8001602:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001604:	697b      	ldr	r3, [r7, #20]
 8001606:	429a      	cmp	r2, r3
 8001608:	d3df      	bcc.n	80015ca <pma_to_user_copy+0x32>
 800160a:	69bb      	ldr	r3, [r7, #24]
 800160c:	2b00      	cmp	r3, #0
 800160e:	d009      	beq.n	8001624 <pma_to_user_copy+0x8c>
 8001610:	68fa      	ldr	r2, [r7, #12]
 8001612:	6a3b      	ldr	r3, [r7, #32]
 8001614:	4413      	add	r3, r2
 8001616:	697a      	ldr	r2, [r7, #20]
 8001618:	0092      	lsls	r2, r2, #2
 800161a:	69f9      	ldr	r1, [r7, #28]
 800161c:	440a      	add	r2, r1
 800161e:	6812      	ldr	r2, [r2, #0]
 8001620:	b2d2      	uxtb	r2, r2
 8001622:	701a      	strb	r2, [r3, #0]
 8001624:	bf00      	nop
 8001626:	372c      	adds	r7, #44	; 0x2c
 8001628:	46bd      	mov	sp, r7
 800162a:	bc80      	pop	{r7}
 800162c:	4770      	bx	lr
 800162e:	bf00      	nop

08001630 <handler_reset>:
 8001630:	b580      	push	{r7, lr}
 8001632:	b082      	sub	sp, #8
 8001634:	af00      	add	r7, sp, #0
 8001636:	4b11      	ldr	r3, [pc, #68]	; (800167c <handler_reset+0x4c>)
 8001638:	607b      	str	r3, [r7, #4]
 800163a:	4b11      	ldr	r3, [pc, #68]	; (8001680 <handler_reset+0x50>)
 800163c:	603b      	str	r3, [r7, #0]
 800163e:	e007      	b.n	8001650 <handler_reset+0x20>
 8001640:	683b      	ldr	r3, [r7, #0]
 8001642:	1d1a      	adds	r2, r3, #4
 8001644:	603a      	str	r2, [r7, #0]
 8001646:	687a      	ldr	r2, [r7, #4]
 8001648:	1d11      	adds	r1, r2, #4
 800164a:	6079      	str	r1, [r7, #4]
 800164c:	6812      	ldr	r2, [r2, #0]
 800164e:	601a      	str	r2, [r3, #0]
 8001650:	683b      	ldr	r3, [r7, #0]
 8001652:	4a0c      	ldr	r2, [pc, #48]	; (8001684 <handler_reset+0x54>)
 8001654:	4293      	cmp	r3, r2
 8001656:	d3f3      	bcc.n	8001640 <handler_reset+0x10>
 8001658:	4b0b      	ldr	r3, [pc, #44]	; (8001688 <handler_reset+0x58>)
 800165a:	603b      	str	r3, [r7, #0]
 800165c:	e004      	b.n	8001668 <handler_reset+0x38>
 800165e:	683b      	ldr	r3, [r7, #0]
 8001660:	1d1a      	adds	r2, r3, #4
 8001662:	603a      	str	r2, [r7, #0]
 8001664:	2200      	movs	r2, #0
 8001666:	601a      	str	r2, [r3, #0]
 8001668:	683b      	ldr	r3, [r7, #0]
 800166a:	4a08      	ldr	r2, [pc, #32]	; (800168c <handler_reset+0x5c>)
 800166c:	4293      	cmp	r3, r2
 800166e:	d3f6      	bcc.n	800165e <handler_reset+0x2e>
 8001670:	f7ff fee0 	bl	8001434 <main>
 8001674:	bf00      	nop
 8001676:	3708      	adds	r7, #8
 8001678:	46bd      	mov	sp, r7
 800167a:	bd80      	pop	{r7, pc}
 800167c:	08001878 	.word	0x08001878
 8001680:	20000000 	.word	0x20000000
 8001684:	20000024 	.word	0x20000024
 8001688:	20000024 	.word	0x20000024
 800168c:	20000858 	.word	0x20000858

08001690 <default_handler>:
 8001690:	b480      	push	{r7}
 8001692:	af00      	add	r7, sp, #0
 8001694:	e7fe      	b.n	8001694 <default_handler+0x4>
 8001696:	bf00      	nop

08001698 <Virtual_Com_Port_DeviceDescriptor>:
 8001698:	0112 0200 0002 4000 0483 5740 0200 0201     .......@..@W....
 80016a8:	0103 0000                                   ....

080016ac <Virtual_Com_Port_ConfigDescriptor>:
 80016ac:	0209 0043 0102 c000 0932 0004 0100 0202     ..C.....2.......
 80016bc:	0001 2405 1000 0501 0124 0100 2404 0202     ...$....$....$..
 80016cc:	2405 0006 0701 8205 1003 ff00 0409 0001     .$..............
 80016dc:	0a02 0000 0700 0305 4002 0000 0507 0281     .........@......
 80016ec:	0040 0000                                   @...

080016f0 <Virtual_Com_Port_StringLangID>:
 80016f0:	0304 0409                                   ....

080016f4 <Virtual_Com_Port_StringVendor>:
 80016f4:	0326 0053 0054 004d 0069 0063 0072 006f     &.S.T.M.i.c.r.o.
 8001704:	0065 006c 0065 0063 0074 0072 006f 006e     e.l.e.c.t.r.o.n.
 8001714:	0069 0063 0073 0000                         i.c.s...

0800171c <Virtual_Com_Port_StringProduct>:
 800171c:	0332 0053 0054 004d 0033 0032 0020 0056     2.S.T.M.3.2. .V.
 800172c:	0069 0072 0074 0075 0061 006c 0020 0043     i.r.t.u.a.l. .C.
 800173c:	004f 004d 0020 0050 006f 0072 0074 0020     O.M. .P.o.r.t. .
 800174c:	0020 0000 4544 4956 4543 0a0d 0000 0000      ...DEVICE......
 800175c:	5551 4c41 4649 4549 0d52 000a 4f43 464e     QUALIFIER...CONF
 800176c:	4749 5255 5441 4f49 0d4e 000a 5453 4952     IGURATION...STRI
 800177c:	474e 0a0d 0000 0000 4553 5f54 4f43 544e     NG......SET_CONT
 800178c:	4f52 5f4c 494c 454e 535f 4154 4554 0a0d     ROL_LINE_STATE..
 800179c:	0000 0000 4553 5f54 494c 454e 435f 444f     ....SET_LINE_COD
 80017ac:	4e49 0d47 000a 0000 4547 5f54 494c 454e     ING.....GET_LINE
 80017bc:	435f 444f 4e49 0d47 000a 0000 4553 5f54     _CODING.....SET_
 80017cc:	4f43 464e 4749 5255 5441 4f49 0d4e 000a     CONFIGURATION...
 80017dc:	4553 5f54 4441 5244 5345 0d53 000a 0000     SET_ADDRESS.....
 80017ec:	4547 5f54 4544 4353 4952 5450 524f 003a     GET_DESCRIPTOR:.
 80017fc:	20a1 0000 0000 0002 0000 0000 4552 4553     . ..........RESE
 800180c:	0d54 000a 7065 3a30 6e69 0a0d 0000 0000     T...ep0:in......
 800181c:	7065 3a30 6573 7574 3a70 0000 7065 3a30     ep0:setup:..ep0:
 800182c:	756f 0d74 000a 0000 7065 3a33 756f 0d74     out.....ep3:out.
 800183c:	000a 0000 7065 3a31 6e69 0a0d 0000 0000     ....ep1:in......
 800184c:	7065 3a32 6e69 0a0d 0000 0000 6568 6c6c     ep2:in......hell
 800185c:	0d6f 000a 6568 6c6c 206f 0000 7266 6d6f     o...hello ..from
 800186c:	7320 6f6d 766c 6b69 0a0d 0000                smolvik....
