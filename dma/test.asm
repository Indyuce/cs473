
build-release/dma.elf:     format de fichier elf32-or1k


Déassemblage de la section .vectors :

00000000 <_error>:
   0:	de ad 13 00 	l.sh -21760(r13),r2
   4:	15 00 00 00 	l.nop 0x0
   8:	00 00 00 22 	l.j 90 <_exception_handler>
   c:	15 00 00 00 	l.nop 0x0
  10:	00 00 00 20 	l.j 90 <_exception_handler>
  14:	15 00 00 00 	l.nop 0x0
  18:	00 00 00 1e 	l.j 90 <_exception_handler>
  1c:	15 00 00 00 	l.nop 0x0
  20:	00 00 00 1c 	l.j 90 <_exception_handler>
  24:	15 00 00 00 	l.nop 0x0
  28:	00 00 00 1a 	l.j 90 <_exception_handler>
  2c:	15 00 00 00 	l.nop 0x0
  30:	00 00 00 18 	l.j 90 <_exception_handler>
  34:	15 00 00 00 	l.nop 0x0
  38:	00 00 00 16 	l.j 90 <_exception_handler>
  3c:	15 00 00 00 	l.nop 0x0
  40:	00 00 00 14 	l.j 90 <_exception_handler>
  44:	15 00 00 00 	l.nop 0x0
  48:	00 00 00 12 	l.j 90 <_exception_handler>
  4c:	15 00 00 00 	l.nop 0x0
  50:	00 00 00 10 	l.j 90 <_exception_handler>
  54:	15 00 00 00 	l.nop 0x0
  58:	00 00 00 0e 	l.j 90 <_exception_handler>
  5c:	15 00 00 00 	l.nop 0x0
  60:	00 00 00 0c 	l.j 90 <_exception_handler>
  64:	15 00 00 00 	l.nop 0x0
  68:	00 00 00 0a 	l.j 90 <_exception_handler>
  6c:	15 00 00 00 	l.nop 0x0

00000070 <_start>:
  70:	b4 20 50 05 	l.mfspr r1,r0,0x5005
  74:	15 00 00 00 	l.nop 0x0
  78:	15 00 00 00 	l.nop 0x0
  7c:	e0 60 00 05 	l.xor r3,r0,r0
  80:	04 00 00 5d 	l.jal 1f4 <main>
  84:	e0 80 00 05 	l.xor r4,r0,r0

00000088 <_loop_end>:
  88:	00 00 00 00 	l.j 88 <_loop_end>
  8c:	15 00 00 00 	l.nop 0x0

00000090 <_exception_handler>:
  90:	9c 21 ff 84 	l.addi r1,r1,-124
  94:	d4 01 10 00 	l.sw 0(r1),r2
  98:	d4 01 18 04 	l.sw 4(r1),r3
  9c:	9c 60 02 00 	l.addi r3,r0,512
  a0:	c3 e0 18 00 	l.mtspr r0,r3,0xf800
  a4:	d4 01 20 08 	l.sw 8(r1),r4
  a8:	d4 01 28 0c 	l.sw 12(r1),r5
  ac:	d4 01 30 10 	l.sw 16(r1),r6
  b0:	d4 01 38 14 	l.sw 20(r1),r7
  b4:	d4 01 40 18 	l.sw 24(r1),r8
  b8:	d4 01 48 1c 	l.sw 28(r1),r9
  bc:	d4 01 50 20 	l.sw 32(r1),r10
  c0:	d4 01 58 24 	l.sw 36(r1),r11
  c4:	d4 01 60 28 	l.sw 40(r1),r12
  c8:	d4 01 68 2c 	l.sw 44(r1),r13
  cc:	d4 01 70 30 	l.sw 48(r1),r14
  d0:	d4 01 78 34 	l.sw 52(r1),r15
  d4:	d4 01 80 38 	l.sw 56(r1),r16
  d8:	d4 01 88 3c 	l.sw 60(r1),r17
  dc:	d4 01 90 40 	l.sw 64(r1),r18
  e0:	d4 01 98 44 	l.sw 68(r1),r19
  e4:	d4 01 a0 48 	l.sw 72(r1),r20
  e8:	d4 01 a8 4c 	l.sw 76(r1),r21
  ec:	d4 01 b0 50 	l.sw 80(r1),r22
  f0:	d4 01 b8 54 	l.sw 84(r1),r23
  f4:	d4 01 c0 58 	l.sw 88(r1),r24
  f8:	d4 01 c8 5c 	l.sw 92(r1),r25
  fc:	d4 01 d0 60 	l.sw 96(r1),r26
 100:	d4 01 d8 64 	l.sw 100(r1),r27
 104:	d4 01 e0 68 	l.sw 104(r1),r28
 108:	d4 01 e8 6c 	l.sw 108(r1),r29
 10c:	d4 01 f0 70 	l.sw 112(r1),r30
 110:	d4 01 f8 74 	l.sw 116(r1),r31
 114:	b7 e0 00 12 	l.mfspr r31,r0,0x12
 118:	bb ff 00 02 	l.slli r31,r31,0x2
 11c:	1b c0 00 00 	l.movhi r30,0x0
 120:	ab de 01 bc 	l.ori r30,r30,0x1bc
 124:	e3 de f8 00 	l.add r30,r30,r31
 128:	87 fe 00 00 	l.lwz r31,0(r30)
 12c:	48 00 f8 00 	l.jalr r31
 130:	15 00 00 00 	l.nop 0x0
 134:	84 41 00 00 	l.lwz r2,0(r1)
 138:	84 61 00 04 	l.lwz r3,4(r1)
 13c:	84 81 00 08 	l.lwz r4,8(r1)
 140:	84 a1 00 0c 	l.lwz r5,12(r1)
 144:	84 c1 00 10 	l.lwz r6,16(r1)
 148:	84 e1 00 14 	l.lwz r7,20(r1)
 14c:	85 01 00 18 	l.lwz r8,24(r1)
 150:	85 21 00 1c 	l.lwz r9,28(r1)
 154:	85 41 00 20 	l.lwz r10,32(r1)
 158:	85 61 00 24 	l.lwz r11,36(r1)
 15c:	85 81 00 28 	l.lwz r12,40(r1)
 160:	85 a1 00 2c 	l.lwz r13,44(r1)
 164:	85 c1 00 30 	l.lwz r14,48(r1)
 168:	85 e1 00 34 	l.lwz r15,52(r1)
 16c:	86 01 00 38 	l.lwz r16,56(r1)
 170:	86 21 00 3c 	l.lwz r17,60(r1)
 174:	86 41 00 40 	l.lwz r18,64(r1)
 178:	86 61 00 44 	l.lwz r19,68(r1)
 17c:	86 81 00 48 	l.lwz r20,72(r1)
 180:	86 a1 00 4c 	l.lwz r21,76(r1)
 184:	86 c1 00 50 	l.lwz r22,80(r1)
 188:	86 e1 00 54 	l.lwz r23,84(r1)
 18c:	87 01 00 58 	l.lwz r24,88(r1)
 190:	87 21 00 5c 	l.lwz r25,92(r1)
 194:	87 41 00 60 	l.lwz r26,96(r1)
 198:	87 61 00 64 	l.lwz r27,100(r1)
 19c:	87 81 00 68 	l.lwz r28,104(r1)
 1a0:	87 a1 00 6c 	l.lwz r29,108(r1)
 1a4:	87 c1 00 70 	l.lwz r30,112(r1)
 1a8:	87 e1 00 74 	l.lwz r31,116(r1)
 1ac:	9c 21 00 7c 	l.addi r1,r1,124
 1b0:	c3 e0 00 00 	l.mtspr r0,r0,0xf800
 1b4:	24 00 00 00 	l.rfe
 1b8:	15 00 00 00 	l.nop 0x0

000001bc <_vectors>:
 1bc:	00 00 00 70 	l.j 37c <main+0x188>
 1c0:	00 00 05 08 	l.j 15e0 <_vsnprintf+0x49c>
 1c4:	00 00 05 14 	l.j 1614 <_vsnprintf+0x4d0>
 1c8:	00 00 05 20 	l.j 1648 <_vsnprintf+0x504>
 1cc:	00 00 05 2c 	l.j 167c <_vsnprintf+0x538>
 1d0:	00 00 05 38 	l.j 16b0 <_vsnprintf+0x56c>
 1d4:	00 00 05 48 	l.j 16f4 <_vsnprintf+0x5b0>
 1d8:	00 00 05 54 	l.j 1728 <_vsnprintf+0x5e4>
 1dc:	00 00 05 60 	l.j 175c <_vsnprintf+0x618>
 1e0:	00 00 05 6c 	l.j 1790 <_vsnprintf+0x64c>
 1e4:	00 00 05 78 	l.j 17c4 <_vsnprintf+0x680>
 1e8:	00 00 05 84 	l.j 17f8 <_vsnprintf+0x6b4>
 1ec:	00 00 06 38 	l.j 1acc <sprintf_+0x24>
 1f0:	00 00 05 90 	l.j 1830 <_vsnprintf+0x6ec>

Déassemblage de la section .text :

000001f4 <main>:
     1f4:	9c 21 ff e4 	l.addi r1,r1,-28
     1f8:	d4 01 80 04 	l.sw 4(r1),r16
     1fc:	d4 01 90 08 	l.sw 8(r1),r18
     200:	d4 01 a0 0c 	l.sw 12(r1),r20
     204:	d4 01 b0 10 	l.sw 16(r1),r22
     208:	d4 01 c0 14 	l.sw 20(r1),r24
     20c:	d4 01 48 18 	l.sw 24(r1),r9
     210:	04 00 01 3b 	l.jal 6fc <perf_init>
     214:	15 00 00 00 	l.nop 0x0
     218:	aa 20 00 01 	l.ori r17,r0,0x1
     21c:	aa 60 08 10 	l.ori r19,r0,0x810
     220:	c3 f1 98 00 	l.mtspr r17,r19,0xf800
     224:	aa 20 00 02 	l.ori r17,r0,0x2
     228:	aa 60 10 00 	l.ori r19,r0,0x1000
     22c:	c3 f1 98 00 	l.mtspr r17,r19,0xf800
     230:	aa 60 00 03 	l.ori r19,r0,0x3
     234:	c3 f3 88 00 	l.mtspr r19,r17,0xf800
     238:	aa 20 00 04 	l.ori r17,r0,0x4
     23c:	1a 60 00 40 	l.movhi r19,0x40
     240:	c3 f1 98 00 	l.mtspr r17,r19,0xf800
     244:	04 00 07 41 	l.jal 1f48 <vga_clear>
     248:	15 00 00 00 	l.nop 0x0
     24c:	18 60 00 00 	l.movhi r3,0x0
     250:	04 00 06 0a 	l.jal 1a78 <printf_>
     254:	9c 63 2a dc 	l.addi r3,r3,10972
     258:	1a 20 c0 02 	l.movhi r17,0xc002
     25c:	aa 31 00 02 	l.ori r17,r17,0x2
     260:	c0 00 88 06 	l.mtspr r0,r17,0x6
     264:	1a 00 c0 00 	l.movhi r16,0xc000
     268:	aa 30 01 00 	l.ori r17,r16,0x100
     26c:	c0 00 88 05 	l.mtspr r0,r17,0x5
     270:	b6 20 00 11 	l.mfspr r17,r0,0x11
     274:	aa 31 00 10 	l.ori r17,r17,0x10
     278:	c0 00 88 11 	l.mtspr r0,r17,0x11
     27c:	b6 20 00 11 	l.mfspr r17,r0,0x11
     280:	aa 31 00 08 	l.ori r17,r17,0x8
     284:	c0 00 88 11 	l.mtspr r0,r17,0x11
     288:	aa 60 02 00 	l.ori r19,r0,0x200
     28c:	72 f3 00 01 	l.nios_rrr r23,r19,r0,0x1
     290:	1a 20 50 00 	l.movhi r17,0x5000
     294:	aa b1 00 20 	l.ori r21,r17,0x20
     298:	d4 15 b8 00 	l.sw 0(r21),r23
     29c:	72 73 00 01 	l.nios_rrr r19,r19,r0,0x1
     2a0:	1b 00 00 00 	l.movhi r24,0x0
     2a4:	aa b1 00 24 	l.ori r21,r17,0x24
     2a8:	d4 15 98 00 	l.sw 0(r21),r19
     2ac:	9e 58 4e 28 	l.addi r18,r24,20008
     2b0:	72 72 00 01 	l.nios_rrr r19,r18,r0,0x1
     2b4:	aa 31 00 2c 	l.ori r17,r17,0x2c
     2b8:	d4 11 98 00 	l.sw 0(r17),r19
     2bc:	18 a0 00 08 	l.movhi r5,0x8
     2c0:	18 80 00 00 	l.movhi r4,0x0
     2c4:	04 00 06 c2 	l.jal 1dcc <memset>
     2c8:	e0 72 90 04 	l.or r3,r18,r18
     2cc:	e2 30 80 04 	l.or r17,r16,r16
     2d0:	aa a0 00 af 	l.ori r21,r0,0xaf
     2d4:	e2 90 80 04 	l.or r20,r16,r16
     2d8:	aa 70 04 00 	l.ori r19,r16,0x400
     2dc:	d4 11 a8 00 	l.sw 0(r17),r21
     2e0:	9e 31 00 04 	l.addi r17,r17,4
     2e4:	e4 31 98 00 	l.sfne r17,r19
     2e8:	13 ff ff fd 	l.bf 2dc <main+0xe8>
     2ec:	15 00 00 00 	l.nop 0x0
     2f0:	aa 34 02 00 	l.ori r17,r20,0x200
     2f4:	18 60 00 00 	l.movhi r3,0x0
     2f8:	86 31 00 00 	l.lwz r17,0(r17)
     2fc:	9c 63 2a f8 	l.addi r3,r3,11000
     300:	04 00 05 de 	l.jal 1a78 <printf_>
     304:	d4 01 88 00 	l.sw 0(r1),r17
     308:	72 72 00 01 	l.nios_rrr r19,r18,r0,0x1
     30c:	1a 00 50 00 	l.movhi r16,0x5000
     310:	aa 30 00 40 	l.ori r17,r16,0x40
     314:	d4 11 98 00 	l.sw 0(r17),r19
     318:	72 94 00 01 	l.nios_rrr r20,r20,r0,0x1
     31c:	1a c0 00 00 	l.movhi r22,0x0
     320:	aa 30 00 44 	l.ori r17,r16,0x44
     324:	d4 11 a0 00 	l.sw 0(r17),r20
     328:	9e d6 2b 0f 	l.addi r22,r22,11023
     32c:	aa 90 00 4c 	l.ori r20,r16,0x4c
     330:	86 34 00 00 	l.lwz r17,0(r20)
     334:	e0 76 b0 04 	l.or r3,r22,r22
     338:	04 00 05 d0 	l.jal 1a78 <printf_>
     33c:	d4 01 88 00 	l.sw 0(r1),r17
     340:	aa 20 01 00 	l.ori r17,r0,0x100
     344:	72 71 00 01 	l.nios_rrr r19,r17,r0,0x1
     348:	aa 10 00 48 	l.ori r16,r16,0x48
     34c:	d4 10 98 00 	l.sw 0(r16),r19
     350:	aa 60 00 ff 	l.ori r19,r0,0xff
     354:	72 73 00 01 	l.nios_rrr r19,r19,r0,0x1
     358:	d4 14 98 00 	l.sw 0(r20),r19
     35c:	72 31 00 01 	l.nios_rrr r17,r17,r0,0x1
     360:	d4 14 88 00 	l.sw 0(r20),r17
     364:	86 34 00 00 	l.lwz r17,0(r20)
     368:	e0 76 b0 04 	l.or r3,r22,r22
     36c:	04 00 05 c3 	l.jal 1a78 <printf_>
     370:	d4 01 88 00 	l.sw 0(r1),r17
     374:	aa 60 00 01 	l.ori r19,r0,0x1
     378:	86 34 00 00 	l.lwz r17,0(r20)
     37c:	72 31 00 01 	l.nios_rrr r17,r17,r0,0x1
     380:	e4 11 98 00 	l.sfeq r17,r19
     384:	13 ff ff fd 	l.bf 378 <main+0x184>
     388:	96 38 4e 28 	l.lhz r17,20008(r24)
     38c:	18 60 00 00 	l.movhi r3,0x0
     390:	d4 01 88 00 	l.sw 0(r1),r17
     394:	04 00 05 b9 	l.jal 1a78 <printf_>
     398:	9c 63 2b 26 	l.addi r3,r3,11046
     39c:	aa 20 02 00 	l.ori r17,r0,0x200
     3a0:	c3 e0 88 00 	l.mtspr r0,r17,0xf800
     3a4:	1a 20 00 02 	l.movhi r17,0x2
     3a8:	1b e0 00 18 	l.movhi r31,0x18
     3ac:	aa 31 00 40 	l.ori r17,r17,0x40
     3b0:	70 11 fb 21 	l.nios_crc r0,r17,r31,0x21
     3b4:	1a 20 50 00 	l.movhi r17,0x5000
     3b8:	1a e0 c0 00 	l.movhi r23,0xc000
     3bc:	ab b1 00 4c 	l.ori r29,r17,0x4c
     3c0:	a9 f1 00 40 	l.ori r15,r17,0x40
     3c4:	a9 91 00 44 	l.ori r12,r17,0x44
     3c8:	e3 72 90 04 	l.or r27,r18,r18
     3cc:	1a a0 e8 00 	l.movhi r21,0xe800
     3d0:	19 a0 00 30 	l.movhi r13,0x30
     3d4:	aa f7 04 00 	l.ori r23,r23,0x400
     3d8:	aa 31 00 48 	l.ori r17,r17,0x48
     3dc:	a9 60 01 00 	l.ori r11,r0,0x100
     3e0:	a9 00 02 ff 	l.ori r8,r0,0x2ff
     3e4:	a8 e0 00 01 	l.ori r7,r0,0x1
     3e8:	18 c0 18 00 	l.movhi r6,0x1800
     3ec:	1b 20 e0 00 	l.movhi r25,0xe000
     3f0:	1a 60 c0 00 	l.movhi r19,0xc000
     3f4:	70 99 a8 20 	l.nios_rrr r4,r25,r21,0x20
     3f8:	e0 b3 98 04 	l.or r5,r19,r19
     3fc:	9e 73 00 04 	l.addi r19,r19,4
     400:	d4 05 20 00 	l.sw 0(r5),r4
     404:	e4 33 b8 00 	l.sfne r19,r23
     408:	13 ff ff fb 	l.bf 3f4 <main+0x200>
     40c:	e3 39 68 00 	l.add r25,r25,r13
     410:	1b 20 00 00 	l.movhi r25,0x0
     414:	86 7d 00 00 	l.lwz r19,0(r29)
     418:	a6 73 00 01 	l.andi r19,r19,0x1
     41c:	e4 33 c8 00 	l.sfne r19,r25
     420:	13 ff ff fd 	l.bf 414 <main+0x220>
     424:	15 00 00 00 	l.nop 0x0
     428:	d4 0f d8 00 	l.sw 0(r15),r27
     42c:	d4 0c b8 00 	l.sw 0(r12),r23
     430:	d4 11 58 00 	l.sw 0(r17),r11
     434:	d4 1d 40 00 	l.sw 0(r29),r8
     438:	86 7d 00 00 	l.lwz r19,0(r29)
     43c:	e4 b3 38 00 	l.sfleu r19,r7
     440:	13 ff ff fe 	l.bf 438 <main+0x244>
     444:	15 00 00 00 	l.nop 0x0
     448:	e2 b5 f8 00 	l.add r21,r21,r31
     44c:	e4 15 30 00 	l.sfeq r21,r6
     450:	0f ff ff e7 	l.bnf 3ec <main+0x1f8>
     454:	9f 7b 01 00 	l.addi r27,r27,256
     458:	1a 20 20 00 	l.movhi r17,0x2000
     45c:	c0 00 88 05 	l.mtspr r0,r17,0x5
     460:	86 52 00 00 	l.lwz r18,0(r18)
     464:	1a 20 00 00 	l.movhi r17,0x0
     468:	c3 e0 88 00 	l.mtspr r0,r17,0xf800
     46c:	18 60 00 00 	l.movhi r3,0x0
     470:	04 00 05 82 	l.jal 1a78 <printf_>
     474:	9c 63 2b 45 	l.addi r3,r3,11077
     478:	18 80 00 00 	l.movhi r4,0x0
     47c:	9c 84 2b 4b 	l.addi r4,r4,11083
     480:	04 00 01 1b 	l.jal 8ec <perf_print_cycles>
     484:	a8 60 00 02 	l.ori r3,r0,0x2
     488:	18 80 00 00 	l.movhi r4,0x0
     48c:	9c 84 2b 55 	l.addi r4,r4,11093
     490:	04 00 01 17 	l.jal 8ec <perf_print_cycles>
     494:	a8 60 00 03 	l.ori r3,r0,0x3
     498:	18 80 00 00 	l.movhi r4,0x0
     49c:	9c 84 2b 5f 	l.addi r4,r4,11103
     4a0:	04 00 01 13 	l.jal 8ec <perf_print_cycles>
     4a4:	18 60 00 00 	l.movhi r3,0x0
     4a8:	18 80 00 00 	l.movhi r4,0x0
     4ac:	9c 84 2b 6a 	l.addi r4,r4,11114
     4b0:	04 00 01 0f 	l.jal 8ec <perf_print_cycles>
     4b4:	a8 60 00 01 	l.ori r3,r0,0x1
     4b8:	18 80 00 00 	l.movhi r4,0x0
     4bc:	9c 84 2b 78 	l.addi r4,r4,11128
     4c0:	04 00 01 0b 	l.jal 8ec <perf_print_cycles>
     4c4:	a8 60 00 08 	l.ori r3,r0,0x8
     4c8:	19 60 00 00 	l.movhi r11,0x0
     4cc:	86 01 00 04 	l.lwz r16,4(r1)
     4d0:	86 41 00 08 	l.lwz r18,8(r1)
     4d4:	86 81 00 0c 	l.lwz r20,12(r1)
     4d8:	86 c1 00 10 	l.lwz r22,16(r1)
     4dc:	87 01 00 14 	l.lwz r24,20(r1)
     4e0:	85 21 00 18 	l.lwz r9,24(r1)
     4e4:	44 00 48 00 	l.jr r9
     4e8:	9c 21 00 1c 	l.addi r1,r1,28

000004ec <assert_die>:
     4ec:	18 60 00 00 	l.movhi r3,0x0
     4f0:	9c 21 ff fc 	l.addi r1,r1,-4
     4f4:	d4 01 48 00 	l.sw 0(r1),r9
     4f8:	04 00 01 50 	l.jal a38 <puts>
     4fc:	9c 63 2b 80 	l.addi r3,r3,11136
     500:	00 00 00 00 	l.j 500 <assert_die+0x14>
     504:	15 00 00 00 	l.nop 0x0

00000508 <bus_error_handler>:
     508:	18 60 00 00 	l.movhi r3,0x0
     50c:	00 00 01 4b 	l.j a38 <puts>
     510:	9c 63 2b 86 	l.addi r3,r3,11142

00000514 <data_page_fault_handler>:
     514:	18 60 00 00 	l.movhi r3,0x0
     518:	00 00 01 48 	l.j a38 <puts>
     51c:	9c 63 2b 91 	l.addi r3,r3,11153

00000520 <instruction_page_fault_handler>:
     520:	18 60 00 00 	l.movhi r3,0x0
     524:	00 00 01 45 	l.j a38 <puts>
     528:	9c 63 2b a1 	l.addi r3,r3,11169

0000052c <tick_timer_handler>:
     52c:	18 60 00 00 	l.movhi r3,0x0
     530:	00 00 01 42 	l.j a38 <puts>
     534:	9c 63 2b ae 	l.addi r3,r3,11182

00000538 <allignment_exception_handler>:
     538:	21 00 00 0f 	l.trap 0xf
     53c:	18 60 00 00 	l.movhi r3,0x0
     540:	00 00 01 3e 	l.j a38 <puts>
     544:	9c 63 2b b3 	l.addi r3,r3,11187

00000548 <illegal_instruction_handler>:
     548:	18 60 00 00 	l.movhi r3,0x0
     54c:	00 00 01 3b 	l.j a38 <puts>
     550:	9c 63 2b ba 	l.addi r3,r3,11194

00000554 <external_interrupt_handler>:
     554:	18 60 00 00 	l.movhi r3,0x0
     558:	00 00 01 38 	l.j a38 <puts>
     55c:	9c 63 2b c0 	l.addi r3,r3,11200

00000560 <dtlb_miss_handler>:
     560:	18 60 00 00 	l.movhi r3,0x0
     564:	00 00 01 35 	l.j a38 <puts>
     568:	9c 63 2b c5 	l.addi r3,r3,11205

0000056c <itlb_miss_handler>:
     56c:	18 60 00 00 	l.movhi r3,0x0
     570:	00 00 01 32 	l.j a38 <puts>
     574:	9c 63 2b ca 	l.addi r3,r3,11210

00000578 <range_exception_handler>:
     578:	18 60 00 00 	l.movhi r3,0x0
     57c:	00 00 01 2f 	l.j a38 <puts>
     580:	9c 63 2b cf 	l.addi r3,r3,11215

00000584 <system_call_handler>:
     584:	18 60 00 00 	l.movhi r3,0x0
     588:	00 00 01 2c 	l.j a38 <puts>
     58c:	9c 63 2b d6 	l.addi r3,r3,11222

00000590 <trap_handler>:
     590:	18 60 00 00 	l.movhi r3,0x0
     594:	9c 21 ff ec 	l.addi r1,r1,-20
     598:	d4 01 80 04 	l.sw 4(r1),r16
     59c:	d4 01 90 08 	l.sw 8(r1),r18
     5a0:	d4 01 a0 0c 	l.sw 12(r1),r20
     5a4:	d4 01 48 10 	l.sw 16(r1),r9
     5a8:	04 00 01 24 	l.jal a38 <puts>
     5ac:	9c 63 2b de 	l.addi r3,r3,11230
     5b0:	b6 20 00 20 	l.mfspr r17,r0,0x20
     5b4:	18 60 00 00 	l.movhi r3,0x0
     5b8:	d4 01 88 00 	l.sw 0(r1),r17
     5bc:	04 00 05 2f 	l.jal 1a78 <printf_>
     5c0:	9c 63 2b e4 	l.addi r3,r3,11236
     5c4:	b6 20 00 30 	l.mfspr r17,r0,0x30
     5c8:	18 60 00 00 	l.movhi r3,0x0
     5cc:	d4 01 88 00 	l.sw 0(r1),r17
     5d0:	04 00 05 2a 	l.jal 1a78 <printf_>
     5d4:	9c 63 2b f3 	l.addi r3,r3,11251
     5d8:	b6 20 00 40 	l.mfspr r17,r0,0x40
     5dc:	18 60 00 00 	l.movhi r3,0x0
     5e0:	d4 01 88 00 	l.sw 0(r1),r17
     5e4:	04 00 05 25 	l.jal 1a78 <printf_>
     5e8:	9c 63 2c 02 	l.addi r3,r3,11266
     5ec:	b6 20 00 50 	l.mfspr r17,r0,0x50
     5f0:	18 60 00 00 	l.movhi r3,0x0
     5f4:	d4 01 88 00 	l.sw 0(r1),r17
     5f8:	9c 63 2c 11 	l.addi r3,r3,11281
     5fc:	04 00 05 1f 	l.jal 1a78 <printf_>
     600:	1a 40 00 00 	l.movhi r18,0x0
     604:	1a 00 00 00 	l.movhi r16,0x0
     608:	9e 52 2c 09 	l.addi r18,r18,11273
     60c:	aa 80 01 00 	l.ori r20,r0,0x100
     610:	b6 30 31 00 	l.mfspr r17,r16,0x3100
     614:	d4 01 88 00 	l.sw 0(r1),r17
     618:	04 00 05 18 	l.jal 1a78 <printf_>
     61c:	e0 72 90 04 	l.or r3,r18,r18
     620:	9e 10 00 01 	l.addi r16,r16,1
     624:	e4 30 a0 00 	l.sfne r16,r20
     628:	13 ff ff fa 	l.bf 610 <trap_handler+0x80>
     62c:	15 00 00 00 	l.nop 0x0
     630:	00 00 00 00 	l.j 630 <trap_handler+0xa0>
     634:	15 00 00 00 	l.nop 0x0

00000638 <break_point_handler>:
     638:	18 60 00 00 	l.movhi r3,0x0
     63c:	00 00 00 ff 	l.j a38 <puts>
     640:	9c 63 2c 27 	l.addi r3,r3,11303

00000644 <perf_cpu_freq>:
     644:	1a 60 00 ff 	l.movhi r19,0xff
     648:	aa 73 ff ff 	l.ori r19,r19,0xffff
     64c:	b6 20 00 09 	l.mfspr r17,r0,0x9
     650:	1a e0 00 00 	l.movhi r23,0x0
     654:	e2 b1 98 03 	l.and r21,r17,r19
     658:	e4 15 b8 00 	l.sfeq r21,r23
     65c:	13 ff ff fc 	l.bf 64c <perf_cpu_freq+0x8>
     660:	aa e0 00 02 	l.ori r23,r0,0x2
     664:	aa 60 00 1c 	l.ori r19,r0,0x1c
     668:	e2 b1 98 48 	l.srl r21,r17,r19
     66c:	e2 75 b8 08 	l.sll r19,r21,r23
     670:	e2 73 a8 00 	l.add r19,r19,r21
     674:	aa a0 00 18 	l.ori r21,r0,0x18
     678:	e2 b1 a8 48 	l.srl r21,r17,r21
     67c:	e2 73 98 00 	l.add r19,r19,r19
     680:	a6 b5 00 0f 	l.andi r21,r21,0xf
     684:	e2 b5 98 00 	l.add r21,r21,r19
     688:	e2 75 b8 08 	l.sll r19,r21,r23
     68c:	e2 73 a8 00 	l.add r19,r19,r21
     690:	aa a0 00 14 	l.ori r21,r0,0x14
     694:	e2 b1 a8 48 	l.srl r21,r17,r21
     698:	e2 73 98 00 	l.add r19,r19,r19
     69c:	a6 b5 00 0f 	l.andi r21,r21,0xf
     6a0:	e2 b5 98 00 	l.add r21,r21,r19
     6a4:	e2 75 b8 08 	l.sll r19,r21,r23
     6a8:	e2 73 a8 00 	l.add r19,r19,r21
     6ac:	aa a0 00 10 	l.ori r21,r0,0x10
     6b0:	e2 b1 a8 48 	l.srl r21,r17,r21
     6b4:	e2 73 98 00 	l.add r19,r19,r19
     6b8:	a6 b5 00 0f 	l.andi r21,r21,0xf
     6bc:	e2 b5 98 00 	l.add r21,r21,r19
     6c0:	e2 75 b8 08 	l.sll r19,r21,r23
     6c4:	e2 73 a8 00 	l.add r19,r19,r21
     6c8:	e2 b3 98 00 	l.add r21,r19,r19
     6cc:	aa 60 00 0c 	l.ori r19,r0,0xc
     6d0:	e2 71 98 48 	l.srl r19,r17,r19
     6d4:	a6 73 00 0f 	l.andi r19,r19,0xf
     6d8:	e2 73 a8 00 	l.add r19,r19,r21
     6dc:	e1 73 b8 08 	l.sll r11,r19,r23
     6e0:	e1 6b 98 00 	l.add r11,r11,r19
     6e4:	aa 60 00 08 	l.ori r19,r0,0x8
     6e8:	e2 31 98 48 	l.srl r17,r17,r19
     6ec:	a6 31 00 0f 	l.andi r17,r17,0xf
     6f0:	e1 6b 58 00 	l.add r11,r11,r11
     6f4:	44 00 48 00 	l.jr r9
     6f8:	e1 71 58 00 	l.add r11,r17,r11

000006fc <perf_init>:
     6fc:	9c 21 ff fc 	l.addi r1,r1,-4
     700:	d4 01 48 00 	l.sw 0(r1),r9
     704:	07 ff ff d0 	l.jal 644 <perf_cpu_freq>
     708:	15 00 00 00 	l.nop 0x0
     70c:	1a 20 00 08 	l.movhi r17,0x8
     710:	d5 31 5e 28 	l.sw 20008(r17),r11
     714:	85 21 00 00 	l.lwz r9,0(r1)
     718:	44 00 48 00 	l.jr r9
     71c:	9c 21 00 04 	l.addi r1,r1,4

00000720 <perf_cycles_to_time>:
     720:	9c 21 ff d0 	l.addi r1,r1,-48
     724:	d4 01 b0 14 	l.sw 20(r1),r22
     728:	1a 60 00 00 	l.movhi r19,0x0
     72c:	1a c0 00 08 	l.movhi r22,0x8
     730:	d4 01 80 08 	l.sw 8(r1),r16
     734:	d4 01 90 0c 	l.sw 12(r1),r18
     738:	d4 01 a0 10 	l.sw 16(r1),r20
     73c:	86 36 4e 28 	l.lwz r17,20008(r22)
     740:	d4 01 70 04 	l.sw 4(r1),r14
     744:	d4 01 c0 18 	l.sw 24(r1),r24
     748:	d4 01 d0 1c 	l.sw 28(r1),r26
     74c:	d4 01 e0 20 	l.sw 32(r1),r28
     750:	d4 01 f0 24 	l.sw 36(r1),r30
     754:	d4 01 10 28 	l.sw 40(r1),r2
     758:	d4 01 48 2c 	l.sw 44(r1),r9
     75c:	e4 31 98 00 	l.sfne r17,r19
     760:	e2 03 18 04 	l.or r16,r3,r3
     764:	e2 84 20 04 	l.or r20,r4,r4
     768:	10 00 00 0c 	l.bf 798 <perf_cycles_to_time+0x78>
     76c:	e2 45 28 04 	l.or r18,r5,r5
     770:	1a 20 00 00 	l.movhi r17,0x0
     774:	9e 31 2c 64 	l.addi r17,r17,11364
     778:	18 60 00 00 	l.movhi r3,0x0
     77c:	d4 01 88 00 	l.sw 0(r1),r17
     780:	1a 20 00 00 	l.movhi r17,0x0
     784:	86 31 4e 24 	l.lwz r17,20004(r17)
     788:	48 00 88 00 	l.jalr r17
     78c:	9c 63 2c 2d 	l.addi r3,r3,11309
     790:	07 ff ff 57 	l.jal 4ec <assert_die>
     794:	15 00 00 00 	l.nop 0x0
     798:	e0 74 a0 04 	l.or r3,r20,r20
     79c:	e0 92 90 04 	l.or r4,r18,r18
     7a0:	18 a0 00 00 	l.movhi r5,0x0
     7a4:	04 00 06 01 	l.jal 1fa8 <__udivdi3>
     7a8:	84 d6 4e 28 	l.lwz r6,20008(r22)
     7ac:	e2 8b 58 04 	l.or r20,r11,r11
     7b0:	18 a0 00 00 	l.movhi r5,0x0
     7b4:	a8 c0 03 e8 	l.ori r6,r0,0x3e8
     7b8:	e0 74 a0 04 	l.or r3,r20,r20
     7bc:	e0 8c 60 04 	l.or r4,r12,r12
     7c0:	04 00 07 69 	l.jal 2564 <__umoddi3>
     7c4:	e2 4c 60 04 	l.or r18,r12,r12
     7c8:	18 a0 00 00 	l.movhi r5,0x0
     7cc:	a8 c0 03 e8 	l.ori r6,r0,0x3e8
     7d0:	e0 74 a0 04 	l.or r3,r20,r20
     7d4:	e0 92 90 04 	l.or r4,r18,r18
     7d8:	04 00 05 f4 	l.jal 1fa8 <__udivdi3>
     7dc:	e3 8c 60 04 	l.or r28,r12,r12
     7e0:	1a 20 00 00 	l.movhi r17,0x0
     7e4:	e4 34 88 00 	l.sfne r20,r17
     7e8:	e0 4b 58 04 	l.or r2,r11,r11
     7ec:	e3 4c 60 04 	l.or r26,r12,r12
     7f0:	10 00 00 06 	l.bf 808 <perf_cycles_to_time+0xe8>
     7f4:	e1 cc 60 04 	l.or r14,r12,r12
     7f8:	aa 20 ee 47 	l.ori r17,r0,0xee47
     7fc:	e4 52 88 00 	l.sfgtu r18,r17
     800:	0c 00 00 36 	l.bnf 8d8 <perf_cycles_to_time+0x1b8>
     804:	15 00 00 00 	l.nop 0x0
     808:	18 a0 00 00 	l.movhi r5,0x0
     80c:	a8 c0 00 3c 	l.ori r6,r0,0x3c
     810:	e0 62 10 04 	l.or r3,r2,r2
     814:	04 00 05 e5 	l.jal 1fa8 <__udivdi3>
     818:	e0 9a d0 04 	l.or r4,r26,r26
     81c:	18 a0 00 00 	l.movhi r5,0x0
     820:	a8 c0 00 3c 	l.ori r6,r0,0x3c
     824:	e0 62 10 04 	l.or r3,r2,r2
     828:	e0 9a d0 04 	l.or r4,r26,r26
     82c:	e3 cb 58 04 	l.or r30,r11,r11
     830:	e3 0c 60 04 	l.or r24,r12,r12
     834:	04 00 07 4c 	l.jal 2564 <__umoddi3>
     838:	e2 cc 60 04 	l.or r22,r12,r12
     83c:	1a 20 00 00 	l.movhi r17,0x0
     840:	e4 34 88 00 	l.sfne r20,r17
     844:	10 00 00 07 	l.bf 860 <perf_cycles_to_time+0x140>
     848:	e1 cc 60 04 	l.or r14,r12,r12
     84c:	1a 20 00 37 	l.movhi r17,0x37
     850:	aa 31 d8 df 	l.ori r17,r17,0xd8df
     854:	e4 52 88 00 	l.sfgtu r18,r17
     858:	0c 00 00 23 	l.bnf 8e4 <perf_cycles_to_time+0x1c4>
     85c:	15 00 00 00 	l.nop 0x0
     860:	18 a0 00 00 	l.movhi r5,0x0
     864:	a8 c0 00 3c 	l.ori r6,r0,0x3c
     868:	e0 7e f0 04 	l.or r3,r30,r30
     86c:	04 00 05 cf 	l.jal 1fa8 <__udivdi3>
     870:	e0 98 c0 04 	l.or r4,r24,r24
     874:	18 a0 00 00 	l.movhi r5,0x0
     878:	a8 c0 00 3c 	l.ori r6,r0,0x3c
     87c:	e0 7e f0 04 	l.or r3,r30,r30
     880:	e0 98 c0 04 	l.or r4,r24,r24
     884:	04 00 07 38 	l.jal 2564 <__umoddi3>
     888:	e2 4c 60 04 	l.or r18,r12,r12
     88c:	e2 cc 60 04 	l.or r22,r12,r12
     890:	d4 10 90 00 	l.sw 0(r16),r18
     894:	d4 10 b0 04 	l.sw 4(r16),r22
     898:	d4 10 70 08 	l.sw 8(r16),r14
     89c:	d4 10 e0 0c 	l.sw 12(r16),r28
     8a0:	e1 70 80 04 	l.or r11,r16,r16
     8a4:	85 c1 00 04 	l.lwz r14,4(r1)
     8a8:	86 01 00 08 	l.lwz r16,8(r1)
     8ac:	86 41 00 0c 	l.lwz r18,12(r1)
     8b0:	86 81 00 10 	l.lwz r20,16(r1)
     8b4:	86 c1 00 14 	l.lwz r22,20(r1)
     8b8:	87 01 00 18 	l.lwz r24,24(r1)
     8bc:	87 41 00 1c 	l.lwz r26,28(r1)
     8c0:	87 81 00 20 	l.lwz r28,32(r1)
     8c4:	87 c1 00 24 	l.lwz r30,36(r1)
     8c8:	84 41 00 28 	l.lwz r2,40(r1)
     8cc:	85 21 00 2c 	l.lwz r9,44(r1)
     8d0:	44 00 48 00 	l.jr r9
     8d4:	9c 21 00 30 	l.addi r1,r1,48
     8d8:	1a 40 00 00 	l.movhi r18,0x0
     8dc:	03 ff ff ed 	l.j 890 <perf_cycles_to_time+0x170>
     8e0:	1a c0 00 00 	l.movhi r22,0x0
     8e4:	03 ff ff eb 	l.j 890 <perf_cycles_to_time+0x170>
     8e8:	1a 40 00 00 	l.movhi r18,0x0

000008ec <perf_print_cycles>:
     8ec:	9c 21 ff ec 	l.addi r1,r1,-20
     8f0:	1a 20 00 00 	l.movhi r17,0x0
     8f4:	e4 04 88 00 	l.sfeq r4,r17
     8f8:	0c 00 00 04 	l.bnf 908 <perf_print_cycles+0x1c>
     8fc:	d4 01 48 10 	l.sw 16(r1),r9
     900:	18 80 00 00 	l.movhi r4,0x0
     904:	9c 84 2c 9e 	l.addi r4,r4,11422
     908:	e2 23 18 00 	l.add r17,r3,r3
     90c:	9e 71 00 0b 	l.addi r19,r17,11
     910:	b6 73 f8 00 	l.mfspr r19,r19,0xf800
     914:	9e 31 00 0c 	l.addi r17,r17,12
     918:	b6 31 f8 00 	l.mfspr r17,r17,0xf800
     91c:	d4 01 18 04 	l.sw 4(r1),r3
     920:	18 60 00 00 	l.movhi r3,0x0
     924:	d4 01 88 08 	l.sw 8(r1),r17
     928:	d4 01 98 0c 	l.sw 12(r1),r19
     92c:	d4 01 20 00 	l.sw 0(r1),r4
     930:	04 00 04 52 	l.jal 1a78 <printf_>
     934:	9c 63 2c a6 	l.addi r3,r3,11430
     938:	85 21 00 10 	l.lwz r9,16(r1)
     93c:	44 00 48 00 	l.jr r9
     940:	9c 21 00 14 	l.addi r1,r1,20

00000944 <perf_print_time>:
     944:	9c 21 ff cc 	l.addi r1,r1,-52
     948:	1a 20 00 00 	l.movhi r17,0x0
     94c:	d4 01 90 2c 	l.sw 44(r1),r18
     950:	d4 01 80 28 	l.sw 40(r1),r16
     954:	d4 01 48 30 	l.sw 48(r1),r9
     958:	e4 04 88 00 	l.sfeq r4,r17
     95c:	0c 00 00 1d 	l.bnf 9d0 <perf_print_time+0x8c>
     960:	e2 43 18 04 	l.or r18,r3,r3
     964:	1a 00 00 00 	l.movhi r16,0x0
     968:	9e 10 2c 9e 	l.addi r16,r16,11422
     96c:	e0 92 90 00 	l.add r4,r18,r18
     970:	9c a4 00 0b 	l.addi r5,r4,11
     974:	b4 a5 f8 00 	l.mfspr r5,r5,0xf800
     978:	9c 84 00 0c 	l.addi r4,r4,12
     97c:	b4 84 f8 00 	l.mfspr r4,r4,0xf800
     980:	07 ff ff 68 	l.jal 720 <perf_cycles_to_time>
     984:	9c 61 00 18 	l.addi r3,r1,24
     988:	86 21 00 24 	l.lwz r17,36(r1)
     98c:	d4 01 88 14 	l.sw 20(r1),r17
     990:	86 21 00 20 	l.lwz r17,32(r1)
     994:	18 60 00 00 	l.movhi r3,0x0
     998:	d4 01 88 10 	l.sw 16(r1),r17
     99c:	86 21 00 1c 	l.lwz r17,28(r1)
     9a0:	d4 01 90 04 	l.sw 4(r1),r18
     9a4:	d4 01 88 0c 	l.sw 12(r1),r17
     9a8:	d4 01 80 00 	l.sw 0(r1),r16
     9ac:	86 21 00 18 	l.lwz r17,24(r1)
     9b0:	9c 63 2c c2 	l.addi r3,r3,11458
     9b4:	04 00 04 31 	l.jal 1a78 <printf_>
     9b8:	d4 01 88 08 	l.sw 8(r1),r17
     9bc:	85 21 00 30 	l.lwz r9,48(r1)
     9c0:	86 01 00 28 	l.lwz r16,40(r1)
     9c4:	86 41 00 2c 	l.lwz r18,44(r1)
     9c8:	44 00 48 00 	l.jr r9
     9cc:	9c 21 00 34 	l.addi r1,r1,52
     9d0:	03 ff ff e7 	l.j 96c <perf_print_time+0x28>
     9d4:	e2 04 20 04 	l.or r16,r4,r4

000009d8 <platform_init>:
     9d8:	00 00 05 09 	l.j 1dfc <uart_init>
     9dc:	18 60 50 00 	l.movhi r3,0x5000

000009e0 <_putchar>:
     9e0:	9c 21 ff f8 	l.addi r1,r1,-8
     9e4:	aa 20 00 18 	l.ori r17,r0,0x18
     9e8:	d4 01 80 00 	l.sw 0(r1),r16
     9ec:	e2 03 88 08 	l.sll r16,r3,r17
     9f0:	e2 10 88 88 	l.sra r16,r16,r17
     9f4:	e0 90 80 04 	l.or r4,r16,r16
     9f8:	d4 01 48 04 	l.sw 4(r1),r9
     9fc:	04 00 05 1f 	l.jal 1e78 <uart_putc>
     a00:	18 60 50 00 	l.movhi r3,0x5000
     a04:	e0 70 80 04 	l.or r3,r16,r16
     a08:	85 21 00 04 	l.lwz r9,4(r1)
     a0c:	86 01 00 00 	l.lwz r16,0(r1)
     a10:	00 00 05 56 	l.j 1f68 <vga_putc>
     a14:	9c 21 00 08 	l.addi r1,r1,8

00000a18 <putchar>:
     a18:	9c 21 ff fc 	l.addi r1,r1,-4
     a1c:	d4 01 48 00 	l.sw 0(r1),r9
     a20:	07 ff ff f0 	l.jal 9e0 <_putchar>
     a24:	15 00 00 00 	l.nop 0x0
     a28:	19 60 00 00 	l.movhi r11,0x0
     a2c:	85 21 00 00 	l.lwz r9,0(r1)
     a30:	44 00 48 00 	l.jr r9
     a34:	9c 21 00 04 	l.addi r1,r1,4

00000a38 <puts>:
     a38:	9c 21 ff f8 	l.addi r1,r1,-8
     a3c:	d4 01 80 00 	l.sw 0(r1),r16
     a40:	e0 83 18 04 	l.or r4,r3,r3
     a44:	e2 03 18 04 	l.or r16,r3,r3
     a48:	d4 01 48 04 	l.sw 4(r1),r9
     a4c:	04 00 05 1b 	l.jal 1eb8 <uart_puts>
     a50:	18 60 50 00 	l.movhi r3,0x5000
     a54:	a8 80 00 0a 	l.ori r4,r0,0xa
     a58:	04 00 05 08 	l.jal 1e78 <uart_putc>
     a5c:	18 60 50 00 	l.movhi r3,0x5000
     a60:	04 00 05 46 	l.jal 1f78 <vga_puts>
     a64:	e0 70 80 04 	l.or r3,r16,r16
     a68:	04 00 05 40 	l.jal 1f68 <vga_putc>
     a6c:	a8 60 00 0a 	l.ori r3,r0,0xa
     a70:	19 60 00 00 	l.movhi r11,0x0
     a74:	86 01 00 00 	l.lwz r16,0(r1)
     a78:	85 21 00 04 	l.lwz r9,4(r1)
     a7c:	44 00 48 00 	l.jr r9
     a80:	9c 21 00 08 	l.addi r1,r1,8

00000a84 <getchar>:
     a84:	00 00 05 24 	l.j 1f14 <uart_getc>
     a88:	18 60 50 00 	l.movhi r3,0x5000

00000a8c <_out_buffer>:
     a8c:	aa 20 00 18 	l.ori r17,r0,0x18
     a90:	e0 63 88 08 	l.sll r3,r3,r17
     a94:	e4 65 30 00 	l.sfgeu r5,r6
     a98:	10 00 00 04 	l.bf aa8 <_out_buffer+0x1c>
     a9c:	e0 63 88 88 	l.sra r3,r3,r17
     aa0:	e0 84 28 00 	l.add r4,r4,r5
     aa4:	d8 04 18 00 	l.sb 0(r4),r3
     aa8:	44 00 48 00 	l.jr r9
     aac:	15 00 00 00 	l.nop 0x0

00000ab0 <_out_null>:
     ab0:	44 00 48 00 	l.jr r9
     ab4:	15 00 00 00 	l.nop 0x0

00000ab8 <_ntoa_format>:
     ab8:	9c 21 ff d0 	l.addi r1,r1,-48
     abc:	d4 01 d0 1c 	l.sw 28(r1),r26
     ac0:	1b a0 00 00 	l.movhi r29,0x0
     ac4:	86 21 00 40 	l.lwz r17,64(r1)
     ac8:	a7 51 00 02 	l.andi r26,r17,0x2
     acc:	d4 01 70 04 	l.sw 4(r1),r14
     ad0:	d4 01 80 08 	l.sw 8(r1),r16
     ad4:	d4 01 a0 10 	l.sw 16(r1),r20
     ad8:	d4 01 b0 14 	l.sw 20(r1),r22
     adc:	d4 01 c0 18 	l.sw 24(r1),r24
     ae0:	d4 01 e0 20 	l.sw 32(r1),r28
     ae4:	d4 01 f0 24 	l.sw 36(r1),r30
     ae8:	d4 01 90 0c 	l.sw 12(r1),r18
     aec:	d4 01 10 28 	l.sw 40(r1),r2
     af0:	d4 01 48 2c 	l.sw 44(r1),r9
     af4:	e4 3a e8 00 	l.sfne r26,r29
     af8:	e2 83 18 04 	l.or r20,r3,r3
     afc:	e2 c4 20 04 	l.or r22,r4,r4
     b00:	e1 c5 28 04 	l.or r14,r5,r5
     b04:	e3 06 30 04 	l.or r24,r6,r6
     b08:	e3 87 38 04 	l.or r28,r7,r7
     b0c:	e2 08 40 04 	l.or r16,r8,r8
     b10:	8e e1 00 33 	l.lbz r23,51(r1)
     b14:	86 61 00 34 	l.lwz r19,52(r1)
     b18:	86 a1 00 38 	l.lwz r21,56(r1)
     b1c:	10 00 00 24 	l.bf bac <_ntoa_format+0xf4>
     b20:	87 c1 00 3c 	l.lwz r30,60(r1)
     b24:	e4 1e e8 00 	l.sfeq r30,r29
     b28:	10 00 00 0d 	l.bf b5c <_ntoa_format+0xa4>
     b2c:	a7 31 00 01 	l.andi r25,r17,0x1
     b30:	e4 19 e8 00 	l.sfeq r25,r29
     b34:	10 00 00 0b 	l.bf b60 <_ntoa_format+0xa8>
     b38:	ab 60 00 20 	l.ori r27,r0,0x20
     b3c:	e4 37 e8 00 	l.sfne r23,r29
     b40:	10 00 00 06 	l.bf b58 <_ntoa_format+0xa0>
     b44:	15 00 00 00 	l.nop 0x0
     b48:	a7 71 00 0c 	l.andi r27,r17,0xc
     b4c:	e4 1b e8 00 	l.sfeq r27,r29
     b50:	10 00 00 03 	l.bf b5c <_ntoa_format+0xa4>
     b54:	15 00 00 00 	l.nop 0x0
     b58:	9f de ff ff 	l.addi r30,r30,-1
     b5c:	ab 60 00 20 	l.ori r27,r0,0x20
     b60:	00 00 00 06 	l.j b78 <_ntoa_format+0xc0>
     b64:	ab a0 00 30 	l.ori r29,r0,0x30
     b68:	0c 00 00 07 	l.bnf b84 <_ntoa_format+0xcc>
     b6c:	e3 fc 80 00 	l.add r31,r28,r16
     b70:	d8 1f e8 00 	l.sb 0(r31),r29
     b74:	9e 10 00 01 	l.addi r16,r16,1
     b78:	e4 55 80 00 	l.sfgtu r21,r16
     b7c:	13 ff ff fb 	l.bf b68 <_ntoa_format+0xb0>
     b80:	e4 30 d8 00 	l.sfne r16,r27
     b84:	1b 60 00 00 	l.movhi r27,0x0
     b88:	e4 39 d8 00 	l.sfne r25,r27
     b8c:	0c 00 00 08 	l.bnf bac <_ntoa_format+0xf4>
     b90:	ab 20 00 20 	l.ori r25,r0,0x20
     b94:	ab 60 00 30 	l.ori r27,r0,0x30
     b98:	e4 70 f0 00 	l.sfgeu r16,r30
     b9c:	10 00 00 04 	l.bf bac <_ntoa_format+0xf4>
     ba0:	e4 30 c8 00 	l.sfne r16,r25
     ba4:	10 00 00 38 	l.bf c84 <_ntoa_format+0x1cc>
     ba8:	15 00 00 00 	l.nop 0x0
     bac:	a7 31 00 10 	l.andi r25,r17,0x10
     bb0:	1b 60 00 00 	l.movhi r27,0x0
     bb4:	e4 19 d8 00 	l.sfeq r25,r27
     bb8:	10 00 00 27 	l.bf c54 <_ntoa_format+0x19c>
     bbc:	a7 31 04 00 	l.andi r25,r17,0x400
     bc0:	e4 39 d8 00 	l.sfne r25,r27
     bc4:	10 00 00 35 	l.bf c98 <_ntoa_format+0x1e0>
     bc8:	e4 10 d8 00 	l.sfeq r16,r27
     bcc:	10 00 00 33 	l.bf c98 <_ntoa_format+0x1e0>
     bd0:	e4 10 a8 00 	l.sfeq r16,r21
     bd4:	10 00 00 04 	l.bf be4 <_ntoa_format+0x12c>
     bd8:	e4 30 f0 00 	l.sfne r16,r30
     bdc:	10 00 00 30 	l.bf c9c <_ntoa_format+0x1e4>
     be0:	aa a0 00 10 	l.ori r21,r0,0x10
     be4:	9e b0 ff ff 	l.addi r21,r16,-1
     be8:	1b 20 00 00 	l.movhi r25,0x0
     bec:	e4 15 c8 00 	l.sfeq r21,r25
     bf0:	10 00 00 29 	l.bf c94 <_ntoa_format+0x1dc>
     bf4:	ab 20 00 10 	l.ori r25,r0,0x10
     bf8:	e4 33 c8 00 	l.sfne r19,r25
     bfc:	10 00 00 86 	l.bf e14 <_ntoa_format+0x35c>
     c00:	ab 20 00 02 	l.ori r25,r0,0x2
     c04:	9e 10 ff fe 	l.addi r16,r16,-2
     c08:	a6 71 00 20 	l.andi r19,r17,0x20
     c0c:	1a a0 00 00 	l.movhi r21,0x0
     c10:	e4 33 a8 00 	l.sfne r19,r21
     c14:	10 00 00 2d 	l.bf cc8 <_ntoa_format+0x210>
     c18:	aa 60 00 20 	l.ori r19,r0,0x20
     c1c:	e4 10 98 00 	l.sfeq r16,r19
     c20:	10 00 00 2d 	l.bf cd4 <_ntoa_format+0x21c>
     c24:	e2 7c 80 00 	l.add r19,r28,r16
     c28:	aa a0 00 78 	l.ori r21,r0,0x78
     c2c:	d8 13 a8 00 	l.sb 0(r19),r21
     c30:	9e 10 00 01 	l.addi r16,r16,1
     c34:	aa 60 00 20 	l.ori r19,r0,0x20
     c38:	e4 10 98 00 	l.sfeq r16,r19
     c3c:	10 00 00 26 	l.bf cd4 <_ntoa_format+0x21c>
     c40:	15 00 00 00 	l.nop 0x0
     c44:	e2 7c 80 00 	l.add r19,r28,r16
     c48:	aa a0 00 30 	l.ori r21,r0,0x30
     c4c:	d8 13 a8 00 	l.sb 0(r19),r21
     c50:	9e 10 00 01 	l.addi r16,r16,1
     c54:	aa 60 00 20 	l.ori r19,r0,0x20
     c58:	e4 10 98 00 	l.sfeq r16,r19
     c5c:	10 00 00 1e 	l.bf cd4 <_ntoa_format+0x21c>
     c60:	1a a0 00 00 	l.movhi r21,0x0
     c64:	e4 17 a8 00 	l.sfeq r23,r21
     c68:	10 00 00 3e 	l.bf d60 <_ntoa_format+0x2a8>
     c6c:	a6 b1 00 04 	l.andi r21,r17,0x4
     c70:	e2 7c 80 00 	l.add r19,r28,r16
     c74:	aa a0 00 2d 	l.ori r21,r0,0x2d
     c78:	d8 13 a8 00 	l.sb 0(r19),r21
     c7c:	00 00 00 17 	l.j cd8 <_ntoa_format+0x220>
     c80:	9e 10 00 01 	l.addi r16,r16,1
     c84:	e3 bc 80 00 	l.add r29,r28,r16
     c88:	d8 1d d8 00 	l.sb 0(r29),r27
     c8c:	03 ff ff c3 	l.j b98 <_ntoa_format+0xe0>
     c90:	9e 10 00 01 	l.addi r16,r16,1
     c94:	1a 00 00 00 	l.movhi r16,0x0
     c98:	aa a0 00 10 	l.ori r21,r0,0x10
     c9c:	e4 33 a8 00 	l.sfne r19,r21
     ca0:	0f ff ff da 	l.bnf c08 <_ntoa_format+0x150>
     ca4:	aa a0 00 02 	l.ori r21,r0,0x2
     ca8:	e4 33 a8 00 	l.sfne r19,r21
     cac:	13 ff ff e3 	l.bf c38 <_ntoa_format+0x180>
     cb0:	aa 60 00 20 	l.ori r19,r0,0x20
     cb4:	e4 10 98 00 	l.sfeq r16,r19
     cb8:	10 00 00 07 	l.bf cd4 <_ntoa_format+0x21c>
     cbc:	e2 7c 80 00 	l.add r19,r28,r16
     cc0:	03 ff ff db 	l.j c2c <_ntoa_format+0x174>
     cc4:	aa a0 00 62 	l.ori r21,r0,0x62
     cc8:	e4 30 98 00 	l.sfne r16,r19
     ccc:	10 00 00 23 	l.bf d58 <_ntoa_format+0x2a0>
     cd0:	e2 7c 80 00 	l.add r19,r28,r16
     cd4:	aa 00 00 20 	l.ori r16,r0,0x20
     cd8:	a6 31 00 03 	l.andi r17,r17,0x3
     cdc:	1a 60 00 00 	l.movhi r19,0x0
     ce0:	e4 11 98 00 	l.sfeq r17,r19
     ce4:	10 00 00 3a 	l.bf dcc <_ntoa_format+0x314>
     ce8:	e2 50 80 04 	l.or r18,r16,r16
     cec:	e2 4e 70 04 	l.or r18,r14,r14
     cf0:	e2 50 90 00 	l.add r18,r16,r18
     cf4:	1a 20 00 00 	l.movhi r17,0x0
     cf8:	e4 30 88 00 	l.sfne r16,r17
     cfc:	e1 72 90 04 	l.or r11,r18,r18
     d00:	10 00 00 36 	l.bf dd8 <_ntoa_format+0x320>
     d04:	e0 b2 80 02 	l.sub r5,r18,r16
     d08:	e4 1a 88 00 	l.sfeq r26,r17
     d0c:	10 00 00 06 	l.bf d24 <_ntoa_format+0x26c>
     d10:	e2 12 70 02 	l.sub r16,r18,r14
     d14:	aa 40 00 20 	l.ori r18,r0,0x20
     d18:	e4 5e 80 00 	l.sfgtu r30,r16
     d1c:	10 00 00 37 	l.bf df8 <_ntoa_format+0x340>
     d20:	e1 6e 80 00 	l.add r11,r14,r16
     d24:	85 c1 00 04 	l.lwz r14,4(r1)
     d28:	86 01 00 08 	l.lwz r16,8(r1)
     d2c:	86 41 00 0c 	l.lwz r18,12(r1)
     d30:	86 81 00 10 	l.lwz r20,16(r1)
     d34:	86 c1 00 14 	l.lwz r22,20(r1)
     d38:	87 01 00 18 	l.lwz r24,24(r1)
     d3c:	87 41 00 1c 	l.lwz r26,28(r1)
     d40:	87 81 00 20 	l.lwz r28,32(r1)
     d44:	87 c1 00 24 	l.lwz r30,36(r1)
     d48:	84 41 00 28 	l.lwz r2,40(r1)
     d4c:	85 21 00 2c 	l.lwz r9,44(r1)
     d50:	44 00 48 00 	l.jr r9
     d54:	9c 21 00 30 	l.addi r1,r1,48
     d58:	03 ff ff b5 	l.j c2c <_ntoa_format+0x174>
     d5c:	aa a0 00 58 	l.ori r21,r0,0x58
     d60:	1a e0 00 00 	l.movhi r23,0x0
     d64:	e4 15 b8 00 	l.sfeq r21,r23
     d68:	10 00 00 04 	l.bf d78 <_ntoa_format+0x2c0>
     d6c:	aa a0 00 2b 	l.ori r21,r0,0x2b
     d70:	03 ff ff c2 	l.j c78 <_ntoa_format+0x1c0>
     d74:	e2 7c 80 00 	l.add r19,r28,r16
     d78:	a6 b1 00 08 	l.andi r21,r17,0x8
     d7c:	e4 15 b8 00 	l.sfeq r21,r23
     d80:	13 ff ff d6 	l.bf cd8 <_ntoa_format+0x220>
     d84:	e2 bc 80 00 	l.add r21,r28,r16
     d88:	03 ff ff bd 	l.j c7c <_ntoa_format+0x1c4>
     d8c:	d8 15 98 00 	l.sb 0(r21),r19
     d90:	d4 01 18 00 	l.sw 0(r1),r3
     d94:	e0 d8 c0 04 	l.or r6,r24,r24
     d98:	48 00 a0 00 	l.jalr r20
     d9c:	e0 96 b0 04 	l.or r4,r22,r22
     da0:	9e 52 00 01 	l.addi r18,r18,1
     da4:	84 61 00 00 	l.lwz r3,0(r1)
     da8:	e4 5e 90 00 	l.sfgtu r30,r18
     dac:	13 ff ff f9 	l.bf d90 <_ntoa_format+0x2d8>
     db0:	e0 a2 90 00 	l.add r5,r2,r18
     db4:	e4 b0 f0 00 	l.sfleu r16,r30
     db8:	10 00 00 03 	l.bf dc4 <_ntoa_format+0x30c>
     dbc:	e2 5e 80 02 	l.sub r18,r30,r16
     dc0:	1a 40 00 00 	l.movhi r18,0x0
     dc4:	03 ff ff cb 	l.j cf0 <_ntoa_format+0x238>
     dc8:	e2 52 70 00 	l.add r18,r18,r14
     dcc:	e0 4e 80 02 	l.sub r2,r14,r16
     dd0:	03 ff ff f6 	l.j da8 <_ntoa_format+0x2f0>
     dd4:	a8 60 00 20 	l.ori r3,r0,0x20
     dd8:	9e 10 ff ff 	l.addi r16,r16,-1
     ddc:	e2 3c 80 00 	l.add r17,r28,r16
     de0:	e0 d8 c0 04 	l.or r6,r24,r24
     de4:	e0 96 b0 04 	l.or r4,r22,r22
     de8:	48 00 a0 00 	l.jalr r20
     dec:	8c 71 00 00 	l.lbz r3,0(r17)
     df0:	03 ff ff c2 	l.j cf8 <_ntoa_format+0x240>
     df4:	1a 20 00 00 	l.movhi r17,0x0
     df8:	e0 d8 c0 04 	l.or r6,r24,r24
     dfc:	e0 ab 58 04 	l.or r5,r11,r11
     e00:	e0 96 b0 04 	l.or r4,r22,r22
     e04:	48 00 a0 00 	l.jalr r20
     e08:	e0 72 90 04 	l.or r3,r18,r18
     e0c:	03 ff ff c3 	l.j d18 <_ntoa_format+0x260>
     e10:	9e 10 00 01 	l.addi r16,r16,1
     e14:	e4 13 c8 00 	l.sfeq r19,r25
     e18:	0f ff ff 8b 	l.bnf c44 <_ntoa_format+0x18c>
     e1c:	e2 15 a8 04 	l.or r16,r21,r21
     e20:	03 ff ff a8 	l.j cc0 <_ntoa_format+0x208>
     e24:	e2 7c 80 00 	l.add r19,r28,r16

00000e28 <_ntoa_long>:
     e28:	9c 21 ff c8 	l.addi r1,r1,-56
     e2c:	1a 20 00 00 	l.movhi r17,0x0
     e30:	d4 01 48 34 	l.sw 52(r1),r9
     e34:	e4 27 88 00 	l.sfne r7,r17
     e38:	a5 08 00 ff 	l.andi r8,r8,0xff
     e3c:	86 e1 00 38 	l.lwz r23,56(r1)
     e40:	10 00 00 04 	l.bf e50 <_ntoa_long+0x28>
     e44:	86 a1 00 44 	l.lwz r21,68(r1)
     e48:	ae 20 ff ef 	l.xori r17,r0,-17
     e4c:	e2 b5 88 03 	l.and r21,r21,r17
     e50:	a6 35 04 00 	l.andi r17,r21,0x400
     e54:	1a 60 00 00 	l.movhi r19,0x0
     e58:	e4 11 98 00 	l.sfeq r17,r19
     e5c:	10 00 00 04 	l.bf e6c <_ntoa_long+0x44>
     e60:	e4 07 98 00 	l.sfeq r7,r19
     e64:	10 00 00 20 	l.bf ee4 <_ntoa_long+0xbc>
     e68:	15 00 00 00 	l.nop 0x0
     e6c:	a6 35 00 20 	l.andi r17,r21,0x20
     e70:	1a 60 00 00 	l.movhi r19,0x0
     e74:	e4 31 98 00 	l.sfne r17,r19
     e78:	10 00 00 03 	l.bf e84 <_ntoa_long+0x5c>
     e7c:	aa 20 00 41 	l.ori r17,r0,0x41
     e80:	aa 20 00 61 	l.ori r17,r0,0x61
     e84:	a6 31 00 ff 	l.andi r17,r17,0xff
     e88:	e3 27 38 04 	l.or r25,r7,r7
     e8c:	9f a1 00 14 	l.addi r29,r1,20
     e90:	18 e0 00 00 	l.movhi r7,0x0
     e94:	a9 e0 00 09 	l.ori r15,r0,0x9
     e98:	9e 71 ff f6 	l.addi r19,r17,-10
     e9c:	a9 a0 00 20 	l.ori r13,r0,0x20
     ea0:	e3 f9 bb 0a 	l.divu r31,r25,r23
     ea4:	e3 7f bb 06 	l.mul r27,r31,r23
     ea8:	e3 79 d8 02 	l.sub r27,r25,r27
     eac:	e4 5b 78 00 	l.sfgtu r27,r15
     eb0:	10 00 00 1c 	l.bf f20 <_ntoa_long+0xf8>
     eb4:	a6 3b 00 ff 	l.andi r17,r27,0xff
     eb8:	9e 31 00 30 	l.addi r17,r17,48
     ebc:	ab 60 00 18 	l.ori r27,r0,0x18
     ec0:	e2 31 d8 08 	l.sll r17,r17,r27
     ec4:	e2 31 d8 88 	l.sra r17,r17,r27
     ec8:	d8 1d 88 00 	l.sb 0(r29),r17
     ecc:	e4 99 b8 00 	l.sfltu r25,r23
     ed0:	10 00 00 05 	l.bf ee4 <_ntoa_long+0xbc>
     ed4:	9c e7 00 01 	l.addi r7,r7,1
     ed8:	e4 27 68 00 	l.sfne r7,r13
     edc:	10 00 00 0f 	l.bf f18 <_ntoa_long+0xf0>
     ee0:	9f bd 00 01 	l.addi r29,r29,1
     ee4:	86 21 00 40 	l.lwz r17,64(r1)
     ee8:	d8 01 40 03 	l.sb 3(r1),r8
     eec:	d4 01 88 0c 	l.sw 12(r1),r17
     ef0:	d4 01 a8 10 	l.sw 16(r1),r21
     ef4:	86 21 00 3c 	l.lwz r17,60(r1)
     ef8:	d4 01 b8 04 	l.sw 4(r1),r23
     efc:	d4 01 88 08 	l.sw 8(r1),r17
     f00:	e1 07 38 04 	l.or r8,r7,r7
     f04:	07 ff fe ed 	l.jal ab8 <_ntoa_format>
     f08:	9c e1 00 14 	l.addi r7,r1,20
     f0c:	85 21 00 34 	l.lwz r9,52(r1)
     f10:	44 00 48 00 	l.jr r9
     f14:	9c 21 00 38 	l.addi r1,r1,56
     f18:	03 ff ff e2 	l.j ea0 <_ntoa_long+0x78>
     f1c:	e3 3f f8 04 	l.or r25,r31,r31
     f20:	03 ff ff e7 	l.j ebc <_ntoa_long+0x94>
     f24:	e2 31 98 00 	l.add r17,r17,r19

00000f28 <_ntoa_long_long>:
     f28:	9c 21 ff 90 	l.addi r1,r1,-112
     f2c:	e2 27 40 04 	l.or r17,r7,r8
     f30:	1a 60 00 00 	l.movhi r19,0x0
     f34:	d4 01 70 44 	l.sw 68(r1),r14
     f38:	d4 01 90 4c 	l.sw 76(r1),r18
     f3c:	d4 01 a0 50 	l.sw 80(r1),r20
     f40:	d4 01 c0 58 	l.sw 88(r1),r24
     f44:	d4 01 f0 64 	l.sw 100(r1),r30
     f48:	d4 01 80 48 	l.sw 72(r1),r16
     f4c:	d4 01 b0 54 	l.sw 84(r1),r22
     f50:	d4 01 d0 5c 	l.sw 92(r1),r26
     f54:	d4 01 e0 60 	l.sw 96(r1),r28
     f58:	d4 01 10 68 	l.sw 104(r1),r2
     f5c:	d4 01 48 6c 	l.sw 108(r1),r9
     f60:	d4 01 18 14 	l.sw 20(r1),r3
     f64:	d4 01 20 18 	l.sw 24(r1),r4
     f68:	d4 01 28 1c 	l.sw 28(r1),r5
     f6c:	d4 01 30 20 	l.sw 32(r1),r6
     f70:	e4 31 98 00 	l.sfne r17,r19
     f74:	e3 c7 38 04 	l.or r30,r7,r7
     f78:	e1 c8 40 04 	l.or r14,r8,r8
     f7c:	87 01 00 74 	l.lwz r24,116(r1)
     f80:	86 41 00 78 	l.lwz r18,120(r1)
     f84:	10 00 00 04 	l.bf f94 <_ntoa_long_long+0x6c>
     f88:	86 81 00 84 	l.lwz r20,132(r1)
     f8c:	ae a0 ff ef 	l.xori r21,r0,-17
     f90:	e2 94 a8 03 	l.and r20,r20,r21
     f94:	a6 b4 04 00 	l.andi r21,r20,0x400
     f98:	1a 60 00 00 	l.movhi r19,0x0
     f9c:	e4 15 98 00 	l.sfeq r21,r19
     fa0:	10 00 00 04 	l.bf fb0 <_ntoa_long_long+0x88>
     fa4:	e4 11 98 00 	l.sfeq r17,r19
     fa8:	10 00 00 2e 	l.bf 1060 <_ntoa_long_long+0x138>
     fac:	18 40 00 00 	l.movhi r2,0x0
     fb0:	a6 34 00 20 	l.andi r17,r20,0x20
     fb4:	1a 60 00 00 	l.movhi r19,0x0
     fb8:	e4 31 98 00 	l.sfne r17,r19
     fbc:	10 00 00 03 	l.bf fc8 <_ntoa_long_long+0xa0>
     fc0:	aa 00 00 41 	l.ori r16,r0,0x41
     fc4:	aa 00 00 61 	l.ori r16,r0,0x61
     fc8:	a6 10 00 ff 	l.andi r16,r16,0xff
     fcc:	9e c1 00 24 	l.addi r22,r1,36
     fd0:	18 40 00 00 	l.movhi r2,0x0
     fd4:	ab 80 00 09 	l.ori r28,r0,0x9
     fd8:	9e 10 ff f6 	l.addi r16,r16,-10
     fdc:	ab 40 00 20 	l.ori r26,r0,0x20
     fe0:	e0 b8 c0 04 	l.or r5,r24,r24
     fe4:	e0 d2 90 04 	l.or r6,r18,r18
     fe8:	e0 7e f0 04 	l.or r3,r30,r30
     fec:	04 00 05 5e 	l.jal 2564 <__umoddi3>
     ff0:	e0 8e 70 04 	l.or r4,r14,r14
     ff4:	aa 60 00 18 	l.ori r19,r0,0x18
     ff8:	a6 2c 00 ff 	l.andi r17,r12,0xff
     ffc:	e1 8c 98 08 	l.sll r12,r12,r19
    1000:	e1 8c 98 88 	l.sra r12,r12,r19
    1004:	e5 4c e0 00 	l.sfgts r12,r28
    1008:	10 00 00 35 	l.bf 10dc <_ntoa_long_long+0x1b4>
    100c:	15 00 00 00 	l.nop 0x0
    1010:	9e 31 00 30 	l.addi r17,r17,48
    1014:	e2 31 98 08 	l.sll r17,r17,r19
    1018:	e2 31 98 88 	l.sra r17,r17,r19
    101c:	d8 16 88 00 	l.sb 0(r22),r17
    1020:	e0 b8 c0 04 	l.or r5,r24,r24
    1024:	e0 d2 90 04 	l.or r6,r18,r18
    1028:	e0 7e f0 04 	l.or r3,r30,r30
    102c:	04 00 03 df 	l.jal 1fa8 <__udivdi3>
    1030:	e0 8e 70 04 	l.or r4,r14,r14
    1034:	e4 58 f0 00 	l.sfgtu r24,r30
    1038:	10 00 00 0a 	l.bf 1060 <_ntoa_long_long+0x138>
    103c:	9c 42 00 01 	l.addi r2,r2,1
    1040:	e4 38 f0 00 	l.sfne r24,r30
    1044:	10 00 00 05 	l.bf 1058 <_ntoa_long_long+0x130>
    1048:	e4 22 d0 00 	l.sfne r2,r26
    104c:	e4 52 70 00 	l.sfgtu r18,r14
    1050:	10 00 00 04 	l.bf 1060 <_ntoa_long_long+0x138>
    1054:	e4 22 d0 00 	l.sfne r2,r26
    1058:	10 00 00 1e 	l.bf 10d0 <_ntoa_long_long+0x1a8>
    105c:	9e d6 00 01 	l.addi r22,r22,1
    1060:	86 21 00 80 	l.lwz r17,128(r1)
    1064:	d4 01 88 0c 	l.sw 12(r1),r17
    1068:	86 21 00 7c 	l.lwz r17,124(r1)
    106c:	d4 01 88 08 	l.sw 8(r1),r17
    1070:	8e 21 00 73 	l.lbz r17,115(r1)
    1074:	d4 01 a0 10 	l.sw 16(r1),r20
    1078:	d4 01 90 04 	l.sw 4(r1),r18
    107c:	d8 01 88 03 	l.sb 3(r1),r17
    1080:	e1 02 10 04 	l.or r8,r2,r2
    1084:	9c e1 00 24 	l.addi r7,r1,36
    1088:	84 c1 00 20 	l.lwz r6,32(r1)
    108c:	84 a1 00 1c 	l.lwz r5,28(r1)
    1090:	84 81 00 18 	l.lwz r4,24(r1)
    1094:	07 ff fe 89 	l.jal ab8 <_ntoa_format>
    1098:	84 61 00 14 	l.lwz r3,20(r1)
    109c:	85 21 00 6c 	l.lwz r9,108(r1)
    10a0:	85 c1 00 44 	l.lwz r14,68(r1)
    10a4:	86 01 00 48 	l.lwz r16,72(r1)
    10a8:	86 41 00 4c 	l.lwz r18,76(r1)
    10ac:	86 81 00 50 	l.lwz r20,80(r1)
    10b0:	86 c1 00 54 	l.lwz r22,84(r1)
    10b4:	87 01 00 58 	l.lwz r24,88(r1)
    10b8:	87 41 00 5c 	l.lwz r26,92(r1)
    10bc:	87 81 00 60 	l.lwz r28,96(r1)
    10c0:	87 c1 00 64 	l.lwz r30,100(r1)
    10c4:	84 41 00 68 	l.lwz r2,104(r1)
    10c8:	44 00 48 00 	l.jr r9
    10cc:	9c 21 00 70 	l.addi r1,r1,112
    10d0:	e3 cb 58 04 	l.or r30,r11,r11
    10d4:	03 ff ff c3 	l.j fe0 <_ntoa_long_long+0xb8>
    10d8:	e1 cc 60 04 	l.or r14,r12,r12
    10dc:	e2 31 80 00 	l.add r17,r17,r16
    10e0:	03 ff ff cd 	l.j 1014 <_ntoa_long_long+0xec>
    10e4:	aa 60 00 18 	l.ori r19,r0,0x18

000010e8 <_out_char>:
    10e8:	aa 20 00 18 	l.ori r17,r0,0x18
    10ec:	e0 63 88 08 	l.sll r3,r3,r17
    10f0:	e0 63 88 88 	l.sra r3,r3,r17
    10f4:	1a 20 00 00 	l.movhi r17,0x0
    10f8:	e4 03 88 00 	l.sfeq r3,r17
    10fc:	10 00 00 04 	l.bf 110c <_out_char+0x24>
    1100:	15 00 00 00 	l.nop 0x0
    1104:	03 ff fe 37 	l.j 9e0 <_putchar>
    1108:	15 00 00 00 	l.nop 0x0
    110c:	44 00 48 00 	l.jr r9
    1110:	15 00 00 00 	l.nop 0x0

00001114 <_out_fct>:
    1114:	aa 20 00 18 	l.ori r17,r0,0x18
    1118:	e0 63 88 08 	l.sll r3,r3,r17
    111c:	e0 63 88 88 	l.sra r3,r3,r17
    1120:	1a 20 00 00 	l.movhi r17,0x0
    1124:	e4 03 88 00 	l.sfeq r3,r17
    1128:	10 00 00 05 	l.bf 113c <_out_fct+0x28>
    112c:	15 00 00 00 	l.nop 0x0
    1130:	86 24 00 00 	l.lwz r17,0(r4)
    1134:	44 00 88 00 	l.jr r17
    1138:	84 84 00 04 	l.lwz r4,4(r4)
    113c:	44 00 48 00 	l.jr r9
    1140:	15 00 00 00 	l.nop 0x0

00001144 <_vsnprintf>:
    1144:	9c 21 ff a4 	l.addi r1,r1,-92
    1148:	1a 20 00 00 	l.movhi r17,0x0
    114c:	d4 01 80 34 	l.sw 52(r1),r16
    1150:	d4 01 a0 3c 	l.sw 60(r1),r20
    1154:	d4 01 b0 40 	l.sw 64(r1),r22
    1158:	d4 01 10 54 	l.sw 84(r1),r2
    115c:	d4 01 70 30 	l.sw 48(r1),r14
    1160:	d4 01 90 38 	l.sw 56(r1),r18
    1164:	d4 01 c0 44 	l.sw 68(r1),r24
    1168:	d4 01 d0 48 	l.sw 72(r1),r26
    116c:	d4 01 e0 4c 	l.sw 76(r1),r28
    1170:	d4 01 f0 50 	l.sw 80(r1),r30
    1174:	d4 01 48 58 	l.sw 88(r1),r9
    1178:	e4 04 88 00 	l.sfeq r4,r17
    117c:	e2 c4 20 04 	l.or r22,r4,r4
    1180:	e2 85 28 04 	l.or r20,r5,r5
    1184:	e2 06 30 04 	l.or r16,r6,r6
    1188:	0c 00 01 e6 	l.bnf 1920 <_vsnprintf+0x7dc>
    118c:	e0 47 38 04 	l.or r2,r7,r7
    1190:	1a 40 00 00 	l.movhi r18,0x0
    1194:	9e 52 0a b0 	l.addi r18,r18,2736
    1198:	1b 00 00 12 	l.movhi r24,0x12
    119c:	aa 38 08 21 	l.ori r17,r24,0x821
    11a0:	1b 80 00 00 	l.movhi r28,0x0
    11a4:	00 00 02 1a 	l.j 1a0c <_vsnprintf+0x8c8>
    11a8:	d4 01 88 20 	l.sw 32(r1),r17
    11ac:	e4 03 88 00 	l.sfeq r3,r17
    11b0:	10 00 00 09 	l.bf 11d4 <_vsnprintf+0x90>
    11b4:	9e 10 00 01 	l.addi r16,r16,1
    11b8:	e0 bc e0 04 	l.or r5,r28,r28
    11bc:	9f 5c 00 01 	l.addi r26,r28,1
    11c0:	e0 d4 a0 04 	l.or r6,r20,r20
    11c4:	48 00 90 00 	l.jalr r18
    11c8:	e0 96 b0 04 	l.or r4,r22,r22
    11cc:	00 00 02 10 	l.j 1a0c <_vsnprintf+0x8c8>
    11d0:	e3 9a d0 04 	l.or r28,r26,r26
    11d4:	1a 20 00 00 	l.movhi r17,0x0
    11d8:	ab 20 00 2b 	l.ori r25,r0,0x2b
    11dc:	ab 60 00 30 	l.ori r27,r0,0x30
    11e0:	ab a0 00 20 	l.ori r29,r0,0x20
    11e4:	ab e0 00 23 	l.ori r31,r0,0x23
    11e8:	92 b0 00 00 	l.lbs r21,0(r16)
    11ec:	e4 15 c8 00 	l.sfeq r21,r25
    11f0:	8e 70 00 00 	l.lbz r19,0(r16)
    11f4:	10 00 00 1e 	l.bf 126c <_vsnprintf+0x128>
    11f8:	9e f0 00 01 	l.addi r23,r16,1
    11fc:	e5 55 c8 00 	l.sfgts r21,r25
    1200:	10 00 00 11 	l.bf 1244 <_vsnprintf+0x100>
    1204:	a9 a0 00 2d 	l.ori r13,r0,0x2d
    1208:	e4 15 e8 00 	l.sfeq r21,r29
    120c:	10 00 00 1a 	l.bf 1274 <_vsnprintf+0x130>
    1210:	e4 15 f8 00 	l.sfeq r21,r31
    1214:	10 00 00 1a 	l.bf 127c <_vsnprintf+0x138>
    1218:	aa a0 00 18 	l.ori r21,r0,0x18
    121c:	e2 73 a8 08 	l.sll r19,r19,r21
    1220:	e2 73 a8 88 	l.sra r19,r19,r21
    1224:	9e b3 ff d0 	l.addi r21,r19,-48
    1228:	a6 b5 00 ff 	l.andi r21,r21,0xff
    122c:	ab 20 00 09 	l.ori r25,r0,0x9
    1230:	e4 b5 c8 00 	l.sfleu r21,r25
    1234:	0c 00 00 30 	l.bnf 12f4 <_vsnprintf+0x1b0>
    1238:	aa a0 00 2a 	l.ori r21,r0,0x2a
    123c:	00 00 00 19 	l.j 12a0 <_vsnprintf+0x15c>
    1240:	1b c0 00 00 	l.movhi r30,0x0
    1244:	e4 15 68 00 	l.sfeq r21,r13
    1248:	10 00 00 07 	l.bf 1264 <_vsnprintf+0x120>
    124c:	e4 35 d8 00 	l.sfne r21,r27
    1250:	13 ff ff f3 	l.bf 121c <_vsnprintf+0xd8>
    1254:	aa a0 00 18 	l.ori r21,r0,0x18
    1258:	aa 31 00 01 	l.ori r17,r17,0x1
    125c:	03 ff ff e3 	l.j 11e8 <_vsnprintf+0xa4>
    1260:	e2 17 b8 04 	l.or r16,r23,r23
    1264:	03 ff ff fe 	l.j 125c <_vsnprintf+0x118>
    1268:	aa 31 00 02 	l.ori r17,r17,0x2
    126c:	03 ff ff fc 	l.j 125c <_vsnprintf+0x118>
    1270:	aa 31 00 04 	l.ori r17,r17,0x4
    1274:	03 ff ff fa 	l.j 125c <_vsnprintf+0x118>
    1278:	aa 31 00 08 	l.ori r17,r17,0x8
    127c:	03 ff ff f8 	l.j 125c <_vsnprintf+0x118>
    1280:	aa 31 00 10 	l.ori r17,r17,0x10
    1284:	aa 60 00 02 	l.ori r19,r0,0x2
    1288:	e2 be 98 08 	l.sll r21,r30,r19
    128c:	e2 75 f0 00 	l.add r19,r21,r30
    1290:	e2 73 98 00 	l.add r19,r19,r19
    1294:	9e 73 ff d0 	l.addi r19,r19,-48
    1298:	e3 d7 98 00 	l.add r30,r23,r19
    129c:	e2 1b d8 04 	l.or r16,r27,r27
    12a0:	92 f0 00 00 	l.lbs r23,0(r16)
    12a4:	9e b7 ff d0 	l.addi r21,r23,-48
    12a8:	a6 b5 00 ff 	l.andi r21,r21,0xff
    12ac:	e4 b5 c8 00 	l.sfleu r21,r25
    12b0:	13 ff ff f5 	l.bf 1284 <_vsnprintf+0x140>
    12b4:	9f 70 00 01 	l.addi r27,r16,1
    12b8:	92 b0 00 00 	l.lbs r21,0(r16)
    12bc:	aa 60 00 2e 	l.ori r19,r0,0x2e
    12c0:	e4 35 98 00 	l.sfne r21,r19
    12c4:	10 00 00 28 	l.bf 1364 <_vsnprintf+0x220>
    12c8:	19 c0 00 00 	l.movhi r14,0x0
    12cc:	93 30 00 01 	l.lbs r25,1(r16)
    12d0:	9e b9 ff d0 	l.addi r21,r25,-48
    12d4:	a6 b5 00 ff 	l.andi r21,r21,0xff
    12d8:	ab 60 00 09 	l.ori r27,r0,0x9
    12dc:	e4 b5 d8 00 	l.sfleu r21,r27
    12e0:	9e f0 00 01 	l.addi r23,r16,1
    12e4:	0c 00 00 48 	l.bnf 1404 <_vsnprintf+0x2c0>
    12e8:	aa 31 04 00 	l.ori r17,r17,0x400
    12ec:	00 00 00 18 	l.j 134c <_vsnprintf+0x208>
    12f0:	e2 17 b8 04 	l.or r16,r23,r23
    12f4:	e4 33 a8 00 	l.sfne r19,r21
    12f8:	13 ff ff f0 	l.bf 12b8 <_vsnprintf+0x174>
    12fc:	1b c0 00 00 	l.movhi r30,0x0
    1300:	1b 20 00 00 	l.movhi r25,0x0
    1304:	86 62 00 00 	l.lwz r19,0(r2)
    1308:	e5 73 c8 00 	l.sfges r19,r25
    130c:	10 00 00 07 	l.bf 1328 <_vsnprintf+0x1e4>
    1310:	9e a2 00 04 	l.addi r21,r2,4
    1314:	aa 31 00 02 	l.ori r17,r17,0x2
    1318:	e3 c0 98 02 	l.sub r30,r0,r19
    131c:	e2 17 b8 04 	l.or r16,r23,r23
    1320:	03 ff ff e6 	l.j 12b8 <_vsnprintf+0x174>
    1324:	e0 55 a8 04 	l.or r2,r21,r21
    1328:	03 ff ff fd 	l.j 131c <_vsnprintf+0x1d8>
    132c:	e3 d3 98 04 	l.or r30,r19,r19
    1330:	aa 60 00 02 	l.ori r19,r0,0x2
    1334:	e2 ee 98 08 	l.sll r23,r14,r19
    1338:	e2 b7 70 00 	l.add r21,r23,r14
    133c:	e2 b5 a8 00 	l.add r21,r21,r21
    1340:	9e b5 ff d0 	l.addi r21,r21,-48
    1344:	e1 d9 a8 00 	l.add r14,r25,r21
    1348:	e2 1d e8 04 	l.or r16,r29,r29
    134c:	93 30 00 00 	l.lbs r25,0(r16)
    1350:	9e f9 ff d0 	l.addi r23,r25,-48
    1354:	a6 f7 00 ff 	l.andi r23,r23,0xff
    1358:	e4 b7 d8 00 	l.sfleu r23,r27
    135c:	13 ff ff f5 	l.bf 1330 <_vsnprintf+0x1ec>
    1360:	9f b0 00 01 	l.addi r29,r16,1
    1364:	92 f0 00 00 	l.lbs r23,0(r16)
    1368:	ab 60 00 6c 	l.ori r27,r0,0x6c
    136c:	e4 17 d8 00 	l.sfeq r23,r27
    1370:	10 00 00 3b 	l.bf 145c <_vsnprintf+0x318>
    1374:	9f 30 00 01 	l.addi r25,r16,1
    1378:	e5 57 d8 00 	l.sfgts r23,r27
    137c:	10 00 00 32 	l.bf 1444 <_vsnprintf+0x300>
    1380:	aa 60 00 68 	l.ori r19,r0,0x68
    1384:	e4 17 98 00 	l.sfeq r23,r19
    1388:	10 00 00 3c 	l.bf 1478 <_vsnprintf+0x334>
    138c:	aa 60 00 6a 	l.ori r19,r0,0x6a
    1390:	e4 17 98 00 	l.sfeq r23,r19
    1394:	10 00 00 41 	l.bf 1498 <_vsnprintf+0x354>
    1398:	15 00 00 00 	l.nop 0x0
    139c:	e3 30 80 04 	l.or r25,r16,r16
    13a0:	90 79 00 00 	l.lbs r3,0(r25)
    13a4:	ab 60 00 78 	l.ori r27,r0,0x78
    13a8:	e5 43 d8 00 	l.sfgts r3,r27
    13ac:	13 ff ff 83 	l.bf 11b8 <_vsnprintf+0x74>
    13b0:	9e 19 00 01 	l.addi r16,r25,1
    13b4:	aa e0 00 63 	l.ori r23,r0,0x63
    13b8:	e5 43 b8 00 	l.sfgts r3,r23
    13bc:	10 00 00 39 	l.bf 14a0 <_vsnprintf+0x35c>
    13c0:	86 61 00 20 	l.lwz r19,32(r1)
    13c4:	aa 60 00 62 	l.ori r19,r0,0x62
    13c8:	e4 03 98 00 	l.sfeq r3,r19
    13cc:	10 00 01 57 	l.bf 1928 <_vsnprintf+0x7e4>
    13d0:	e4 03 b8 00 	l.sfeq r3,r23
    13d4:	10 00 00 ac 	l.bf 1684 <_vsnprintf+0x540>
    13d8:	aa 60 00 25 	l.ori r19,r0,0x25
    13dc:	e4 03 98 00 	l.sfeq r3,r19
    13e0:	13 ff ff 76 	l.bf 11b8 <_vsnprintf+0x74>
    13e4:	aa 60 00 58 	l.ori r19,r0,0x58
    13e8:	e4 03 98 00 	l.sfeq r3,r19
    13ec:	0f ff ff 73 	l.bnf 11b8 <_vsnprintf+0x74>
    13f0:	aa 31 00 20 	l.ori r17,r17,0x20
    13f4:	aa e0 00 10 	l.ori r23,r0,0x10
    13f8:	af 20 ff f3 	l.xori r25,r0,-13
    13fc:	00 00 01 55 	l.j 1950 <_vsnprintf+0x80c>
    1400:	e2 31 c8 03 	l.and r17,r17,r25
    1404:	aa 60 00 2a 	l.ori r19,r0,0x2a
    1408:	e4 39 98 00 	l.sfne r25,r19
    140c:	10 00 00 0b 	l.bf 1438 <_vsnprintf+0x2f4>
    1410:	15 00 00 00 	l.nop 0x0
    1414:	1a 60 00 00 	l.movhi r19,0x0
    1418:	86 a2 00 00 	l.lwz r21,0(r2)
    141c:	e5 75 98 00 	l.sfges r21,r19
    1420:	10 00 00 03 	l.bf 142c <_vsnprintf+0x2e8>
    1424:	e1 d5 a8 04 	l.or r14,r21,r21
    1428:	19 c0 00 00 	l.movhi r14,0x0
    142c:	9e 10 00 02 	l.addi r16,r16,2
    1430:	03 ff ff cd 	l.j 1364 <_vsnprintf+0x220>
    1434:	9c 42 00 04 	l.addi r2,r2,4
    1438:	e2 17 b8 04 	l.or r16,r23,r23
    143c:	03 ff ff ca 	l.j 1364 <_vsnprintf+0x220>
    1440:	19 c0 00 00 	l.movhi r14,0x0
    1444:	aa 60 00 7a 	l.ori r19,r0,0x7a
    1448:	e4 17 98 00 	l.sfeq r23,r19
    144c:	0f ff ff d4 	l.bnf 139c <_vsnprintf+0x258>
    1450:	15 00 00 00 	l.nop 0x0
    1454:	03 ff ff d3 	l.j 13a0 <_vsnprintf+0x25c>
    1458:	aa 31 01 00 	l.ori r17,r17,0x100
    145c:	93 70 00 01 	l.lbs r27,1(r16)
    1460:	e4 1b b8 00 	l.sfeq r27,r23
    1464:	0f ff ff fc 	l.bnf 1454 <_vsnprintf+0x310>
    1468:	15 00 00 00 	l.nop 0x0
    146c:	aa 31 03 00 	l.ori r17,r17,0x300
    1470:	03 ff ff cc 	l.j 13a0 <_vsnprintf+0x25c>
    1474:	9f 30 00 02 	l.addi r25,r16,2
    1478:	93 70 00 01 	l.lbs r27,1(r16)
    147c:	e4 1b b8 00 	l.sfeq r27,r23
    1480:	10 00 00 04 	l.bf 1490 <_vsnprintf+0x34c>
    1484:	15 00 00 00 	l.nop 0x0
    1488:	03 ff ff c6 	l.j 13a0 <_vsnprintf+0x25c>
    148c:	aa 31 00 80 	l.ori r17,r17,0x80
    1490:	03 ff ff f8 	l.j 1470 <_vsnprintf+0x32c>
    1494:	aa 31 00 c0 	l.ori r17,r17,0xc0
    1498:	03 ff ff c2 	l.j 13a0 <_vsnprintf+0x25c>
    149c:	aa 31 02 00 	l.ori r17,r17,0x200
    14a0:	9f 23 ff 9c 	l.addi r25,r3,-100
    14a4:	a7 39 00 ff 	l.andi r25,r25,0xff
    14a8:	aa e0 00 01 	l.ori r23,r0,0x1
    14ac:	e2 f7 c8 08 	l.sll r23,r23,r25
    14b0:	e2 f7 98 03 	l.and r23,r23,r19
    14b4:	1a 60 00 00 	l.movhi r19,0x0
    14b8:	e4 37 98 00 	l.sfne r23,r19
    14bc:	10 00 00 11 	l.bf 1500 <_vsnprintf+0x3bc>
    14c0:	aa 60 00 73 	l.ori r19,r0,0x73
    14c4:	e4 03 98 00 	l.sfeq r3,r19
    14c8:	10 00 00 a9 	l.bf 176c <_vsnprintf+0x628>
    14cc:	aa 60 00 70 	l.ori r19,r0,0x70
    14d0:	e4 03 98 00 	l.sfeq r3,r19
    14d4:	0f ff ff 3a 	l.bnf 11bc <_vsnprintf+0x78>
    14d8:	e0 bc e0 04 	l.or r5,r28,r28
    14dc:	aa 31 00 21 	l.ori r17,r17,0x21
    14e0:	d4 01 88 0c 	l.sw 12(r1),r17
    14e4:	aa 20 00 08 	l.ori r17,r0,0x8
    14e8:	d4 01 88 08 	l.sw 8(r1),r17
    14ec:	aa 20 00 10 	l.ori r17,r0,0x10
    14f0:	9f 42 00 04 	l.addi r26,r2,4
    14f4:	d4 01 70 04 	l.sw 4(r1),r14
    14f8:	00 00 00 4d 	l.j 162c <_vsnprintf+0x4e8>
    14fc:	d4 01 88 00 	l.sw 0(r1),r17
    1500:	aa e0 00 6f 	l.ori r23,r0,0x6f
    1504:	e4 03 b8 00 	l.sfeq r3,r23
    1508:	0c 00 01 0a 	l.bnf 1930 <_vsnprintf+0x7ec>
    150c:	e5 43 b8 00 	l.sfgts r3,r23
    1510:	03 ff ff ba 	l.j 13f8 <_vsnprintf+0x2b4>
    1514:	aa e0 00 08 	l.ori r23,r0,0x8
    1518:	10 00 00 05 	l.bf 152c <_vsnprintf+0x3e8>
    151c:	aa e0 00 10 	l.ori r23,r0,0x10
    1520:	ae e0 ff ef 	l.xori r23,r0,-17
    1524:	e2 31 b8 03 	l.and r17,r17,r23
    1528:	aa e0 00 0a 	l.ori r23,r0,0xa
    152c:	aa 60 00 64 	l.ori r19,r0,0x64
    1530:	e4 03 98 00 	l.sfeq r3,r19
    1534:	10 00 01 07 	l.bf 1950 <_vsnprintf+0x80c>
    1538:	af 20 ff f3 	l.xori r25,r0,-13
    153c:	00 00 01 05 	l.j 1950 <_vsnprintf+0x80c>
    1540:	e2 31 c8 03 	l.and r17,r17,r25
    1544:	1a 60 00 00 	l.movhi r19,0x0
    1548:	e4 19 98 00 	l.sfeq r25,r19
    154c:	10 00 00 15 	l.bf 15a0 <_vsnprintf+0x45c>
    1550:	9f 42 00 04 	l.addi r26,r2,4
    1554:	84 e2 00 00 	l.lwz r7,0(r2)
    1558:	aa 60 00 1f 	l.ori r19,r0,0x1f
    155c:	e1 07 98 48 	l.srl r8,r7,r19
    1560:	1a 60 00 00 	l.movhi r19,0x0
    1564:	e5 67 98 00 	l.sfges r7,r19
    1568:	10 00 00 03 	l.bf 1574 <_vsnprintf+0x430>
    156c:	15 00 00 00 	l.nop 0x0
    1570:	e0 e0 38 02 	l.sub r7,r0,r7
    1574:	d4 01 88 0c 	l.sw 12(r1),r17
    1578:	d4 01 f0 08 	l.sw 8(r1),r30
    157c:	d4 01 70 04 	l.sw 4(r1),r14
    1580:	d4 01 b8 00 	l.sw 0(r1),r23
    1584:	e0 d4 a0 04 	l.or r6,r20,r20
    1588:	e0 bc e0 04 	l.or r5,r28,r28
    158c:	e0 96 b0 04 	l.or r4,r22,r22
    1590:	07 ff fe 26 	l.jal e28 <_ntoa_long>
    1594:	e0 72 90 04 	l.or r3,r18,r18
    1598:	00 00 01 1c 	l.j 1a08 <_vsnprintf+0x8c4>
    159c:	e3 8b 58 04 	l.or r28,r11,r11
    15a0:	a7 31 00 40 	l.andi r25,r17,0x40
    15a4:	e4 19 98 00 	l.sfeq r25,r19
    15a8:	84 e2 00 00 	l.lwz r7,0(r2)
    15ac:	0c 00 00 08 	l.bnf 15cc <_vsnprintf+0x488>
    15b0:	aa 60 00 18 	l.ori r19,r0,0x18
    15b4:	a7 31 00 80 	l.andi r25,r17,0x80
    15b8:	1a 60 00 00 	l.movhi r19,0x0
    15bc:	e4 19 98 00 	l.sfeq r25,r19
    15c0:	13 ff ff e7 	l.bf 155c <_vsnprintf+0x418>
    15c4:	aa 60 00 1f 	l.ori r19,r0,0x1f
    15c8:	aa 60 00 10 	l.ori r19,r0,0x10
    15cc:	e0 e7 98 08 	l.sll r7,r7,r19
    15d0:	03 ff ff e2 	l.j 1558 <_vsnprintf+0x414>
    15d4:	e0 e7 98 88 	l.sra r7,r7,r19
    15d8:	e4 19 98 00 	l.sfeq r25,r19
    15dc:	10 00 00 0c 	l.bf 160c <_vsnprintf+0x4c8>
    15e0:	a7 31 01 00 	l.andi r25,r17,0x100
    15e4:	84 e2 00 00 	l.lwz r7,0(r2)
    15e8:	85 02 00 04 	l.lwz r8,4(r2)
    15ec:	9f 42 00 08 	l.addi r26,r2,8
    15f0:	d4 01 88 14 	l.sw 20(r1),r17
    15f4:	d4 01 f0 10 	l.sw 16(r1),r30
    15f8:	d4 01 70 0c 	l.sw 12(r1),r14
    15fc:	d4 01 b8 08 	l.sw 8(r1),r23
    1600:	d4 01 00 04 	l.sw 4(r1),r0
    1604:	00 00 00 fb 	l.j 19f0 <_vsnprintf+0x8ac>
    1608:	d8 01 00 03 	l.sb 3(r1),r0
    160c:	1a 60 00 00 	l.movhi r19,0x0
    1610:	e4 19 98 00 	l.sfeq r25,r19
    1614:	10 00 00 09 	l.bf 1638 <_vsnprintf+0x4f4>
    1618:	9f 42 00 04 	l.addi r26,r2,4
    161c:	d4 01 88 0c 	l.sw 12(r1),r17
    1620:	d4 01 f0 08 	l.sw 8(r1),r30
    1624:	d4 01 70 04 	l.sw 4(r1),r14
    1628:	d4 01 b8 00 	l.sw 0(r1),r23
    162c:	19 00 00 00 	l.movhi r8,0x0
    1630:	03 ff ff d5 	l.j 1584 <_vsnprintf+0x440>
    1634:	84 e2 00 00 	l.lwz r7,0(r2)
    1638:	a7 31 00 40 	l.andi r25,r17,0x40
    163c:	1a 60 00 00 	l.movhi r19,0x0
    1640:	e4 19 98 00 	l.sfeq r25,r19
    1644:	10 00 00 09 	l.bf 1668 <_vsnprintf+0x524>
    1648:	84 e2 00 00 	l.lwz r7,0(r2)
    164c:	a4 e7 00 ff 	l.andi r7,r7,0xff
    1650:	d4 01 88 0c 	l.sw 12(r1),r17
    1654:	d4 01 f0 08 	l.sw 8(r1),r30
    1658:	d4 01 70 04 	l.sw 4(r1),r14
    165c:	d4 01 b8 00 	l.sw 0(r1),r23
    1660:	03 ff ff c9 	l.j 1584 <_vsnprintf+0x440>
    1664:	19 00 00 00 	l.movhi r8,0x0
    1668:	a7 31 00 80 	l.andi r25,r17,0x80
    166c:	1a 60 00 00 	l.movhi r19,0x0
    1670:	e4 19 98 00 	l.sfeq r25,r19
    1674:	13 ff ff f7 	l.bf 1650 <_vsnprintf+0x50c>
    1678:	15 00 00 00 	l.nop 0x0
    167c:	03 ff ff f5 	l.j 1650 <_vsnprintf+0x50c>
    1680:	a4 e7 ff ff 	l.andi r7,r7,0xffff
    1684:	a7 51 00 02 	l.andi r26,r17,0x2
    1688:	1a 20 00 00 	l.movhi r17,0x0
    168c:	e4 1a 88 00 	l.sfeq r26,r17
    1690:	0c 00 00 17 	l.bnf 16ec <_vsnprintf+0x5a8>
    1694:	a9 c0 00 01 	l.ori r14,r0,0x1
    1698:	19 c0 00 00 	l.movhi r14,0x0
    169c:	00 00 00 05 	l.j 16b0 <_vsnprintf+0x56c>
    16a0:	ab 00 00 20 	l.ori r24,r0,0x20
    16a4:	e0 96 b0 04 	l.or r4,r22,r22
    16a8:	48 00 90 00 	l.jalr r18
    16ac:	e0 78 c0 04 	l.or r3,r24,r24
    16b0:	e0 bc 70 00 	l.add r5,r28,r14
    16b4:	9d ce 00 01 	l.addi r14,r14,1
    16b8:	e4 5e 70 00 	l.sfgtu r30,r14
    16bc:	13 ff ff fa 	l.bf 16a4 <_vsnprintf+0x560>
    16c0:	e0 d4 a0 04 	l.or r6,r20,r20
    16c4:	1a 60 00 00 	l.movhi r19,0x0
    16c8:	e4 3e 98 00 	l.sfne r30,r19
    16cc:	10 00 00 03 	l.bf 16d8 <_vsnprintf+0x594>
    16d0:	9e 3e ff ff 	l.addi r17,r30,-1
    16d4:	1a 20 00 00 	l.movhi r17,0x0
    16d8:	e3 9c 88 00 	l.add r28,r28,r17
    16dc:	9e 3e 00 01 	l.addi r17,r30,1
    16e0:	10 00 00 03 	l.bf 16ec <_vsnprintf+0x5a8>
    16e4:	e1 d1 88 04 	l.or r14,r17,r17
    16e8:	a9 c0 00 02 	l.ori r14,r0,0x2
    16ec:	9e 22 00 04 	l.addi r17,r2,4
    16f0:	d4 01 88 18 	l.sw 24(r1),r17
    16f4:	e0 d4 a0 04 	l.or r6,r20,r20
    16f8:	e0 bc e0 04 	l.or r5,r28,r28
    16fc:	e0 96 b0 04 	l.or r4,r22,r22
    1700:	48 00 90 00 	l.jalr r18
    1704:	8c 62 00 03 	l.lbz r3,3(r2)
    1708:	1a 20 00 00 	l.movhi r17,0x0
    170c:	e4 3a 88 00 	l.sfne r26,r17
    1710:	0c 00 00 14 	l.bnf 1760 <_vsnprintf+0x61c>
    1714:	9f 1c 00 01 	l.addi r24,r28,1
    1718:	e3 4e 70 04 	l.or r26,r14,r14
    171c:	e0 b8 c0 04 	l.or r5,r24,r24
    1720:	00 00 00 08 	l.j 1740 <_vsnprintf+0x5fc>
    1724:	a8 40 00 20 	l.ori r2,r0,0x20
    1728:	e0 96 b0 04 	l.or r4,r22,r22
    172c:	e0 62 10 04 	l.or r3,r2,r2
    1730:	48 00 90 00 	l.jalr r18
    1734:	9f 85 00 01 	l.addi r28,r5,1
    1738:	9f 5a 00 01 	l.addi r26,r26,1
    173c:	e0 bc e0 04 	l.or r5,r28,r28
    1740:	e4 9a f0 00 	l.sfltu r26,r30
    1744:	13 ff ff f9 	l.bf 1728 <_vsnprintf+0x5e4>
    1748:	e0 d4 a0 04 	l.or r6,r20,r20
    174c:	e4 7e 70 00 	l.sfgeu r30,r14
    1750:	10 00 00 03 	l.bf 175c <_vsnprintf+0x618>
    1754:	e2 fe 70 02 	l.sub r23,r30,r14
    1758:	1a e0 00 00 	l.movhi r23,0x0
    175c:	e3 18 b8 00 	l.add r24,r24,r23
    1760:	e3 98 c0 04 	l.or r28,r24,r24
    1764:	00 00 00 aa 	l.j 1a0c <_vsnprintf+0x8c8>
    1768:	84 41 00 18 	l.lwz r2,24(r1)
    176c:	9e 62 00 04 	l.addi r19,r2,4
    1770:	d4 01 98 1c 	l.sw 28(r1),r19
    1774:	1a 60 00 00 	l.movhi r19,0x0
    1778:	e4 0e 98 00 	l.sfeq r14,r19
    177c:	ae e0 ff ff 	l.xori r23,r0,-1
    1780:	10 00 00 03 	l.bf 178c <_vsnprintf+0x648>
    1784:	87 42 00 00 	l.lwz r26,0(r2)
    1788:	e2 ee 70 04 	l.or r23,r14,r14
    178c:	e3 7a b8 00 	l.add r27,r26,r23
    1790:	e2 fa d0 04 	l.or r23,r26,r26
    1794:	93 b7 00 00 	l.lbs r29,0(r23)
    1798:	1a 60 00 00 	l.movhi r19,0x0
    179c:	e4 1d 98 00 	l.sfeq r29,r19
    17a0:	10 00 00 04 	l.bf 17b0 <_vsnprintf+0x66c>
    17a4:	e4 3b b8 00 	l.sfne r27,r23
    17a8:	10 00 00 15 	l.bf 17fc <_vsnprintf+0x6b8>
    17ac:	15 00 00 00 	l.nop 0x0
    17b0:	a6 71 04 00 	l.andi r19,r17,0x400
    17b4:	1a a0 00 00 	l.movhi r21,0x0
    17b8:	d4 01 98 18 	l.sw 24(r1),r19
    17bc:	e4 13 a8 00 	l.sfeq r19,r21
    17c0:	10 00 00 06 	l.bf 17d8 <_vsnprintf+0x694>
    17c4:	e3 17 d0 02 	l.sub r24,r23,r26
    17c8:	e4 b8 70 00 	l.sfleu r24,r14
    17cc:	10 00 00 04 	l.bf 17dc <_vsnprintf+0x698>
    17d0:	a4 51 00 02 	l.andi r2,r17,0x2
    17d4:	e3 0e 70 04 	l.or r24,r14,r14
    17d8:	a4 51 00 02 	l.andi r2,r17,0x2
    17dc:	1a 20 00 00 	l.movhi r17,0x0
    17e0:	e4 02 88 00 	l.sfeq r2,r17
    17e4:	0c 00 00 28 	l.bnf 1884 <_vsnprintf+0x740>
    17e8:	e2 3c e0 04 	l.or r17,r28,r28
    17ec:	e0 bc e0 04 	l.or r5,r28,r28
    17f0:	e3 78 e0 02 	l.sub r27,r24,r28
    17f4:	00 00 00 0e 	l.j 182c <_vsnprintf+0x6e8>
    17f8:	a8 60 00 20 	l.ori r3,r0,0x20
    17fc:	03 ff ff e6 	l.j 1794 <_vsnprintf+0x650>
    1800:	9e f7 00 01 	l.addi r23,r23,1
    1804:	9e 25 00 01 	l.addi r17,r5,1
    1808:	d4 01 d8 2c 	l.sw 44(r1),r27
    180c:	d4 01 88 28 	l.sw 40(r1),r17
    1810:	d4 01 18 24 	l.sw 36(r1),r3
    1814:	48 00 90 00 	l.jalr r18
    1818:	e0 96 b0 04 	l.or r4,r22,r22
    181c:	86 21 00 28 	l.lwz r17,40(r1)
    1820:	e0 b1 88 04 	l.or r5,r17,r17
    1824:	84 61 00 24 	l.lwz r3,36(r1)
    1828:	87 61 00 2c 	l.lwz r27,44(r1)
    182c:	e2 3b 28 00 	l.add r17,r27,r5
    1830:	e4 91 f0 00 	l.sfltu r17,r30
    1834:	13 ff ff f4 	l.bf 1804 <_vsnprintf+0x6c0>
    1838:	e0 d4 a0 04 	l.or r6,r20,r20
    183c:	e4 7e c0 00 	l.sfgeu r30,r24
    1840:	10 00 00 03 	l.bf 184c <_vsnprintf+0x708>
    1844:	e2 3e c0 02 	l.sub r17,r30,r24
    1848:	1a 20 00 00 	l.movhi r17,0x0
    184c:	9e f8 00 01 	l.addi r23,r24,1
    1850:	e3 9c 88 00 	l.add r28,r28,r17
    1854:	e3 11 b8 00 	l.add r24,r17,r23
    1858:	00 00 00 0b 	l.j 1884 <_vsnprintf+0x740>
    185c:	e2 3c e0 04 	l.or r17,r28,r28
    1860:	e1 db d8 04 	l.or r14,r27,r27
    1864:	9f 71 00 01 	l.addi r27,r17,1
    1868:	d4 01 d8 24 	l.sw 36(r1),r27
    186c:	e0 b1 88 04 	l.or r5,r17,r17
    1870:	e0 d4 a0 04 	l.or r6,r20,r20
    1874:	48 00 90 00 	l.jalr r18
    1878:	e0 96 b0 04 	l.or r4,r22,r22
    187c:	87 61 00 24 	l.lwz r27,36(r1)
    1880:	e2 3b d8 04 	l.or r17,r27,r27
    1884:	e3 71 e0 02 	l.sub r27,r17,r28
    1888:	e3 7a d8 00 	l.add r27,r26,r27
    188c:	90 7b 00 00 	l.lbs r3,0(r27)
    1890:	1a 60 00 00 	l.movhi r19,0x0
    1894:	e4 03 98 00 	l.sfeq r3,r19
    1898:	10 00 00 08 	l.bf 18b8 <_vsnprintf+0x774>
    189c:	86 a1 00 18 	l.lwz r21,24(r1)
    18a0:	e4 15 98 00 	l.sfeq r21,r19
    18a4:	13 ff ff f0 	l.bf 1864 <_vsnprintf+0x720>
    18a8:	e4 2e 98 00 	l.sfne r14,r19
    18ac:	13 ff ff ed 	l.bf 1860 <_vsnprintf+0x71c>
    18b0:	9f 6e ff ff 	l.addi r27,r14,-1
    18b4:	1a 60 00 00 	l.movhi r19,0x0
    18b8:	e4 22 98 00 	l.sfne r2,r19
    18bc:	0c 00 00 16 	l.bnf 1914 <_vsnprintf+0x7d0>
    18c0:	15 00 00 00 	l.nop 0x0
    18c4:	e0 b1 88 04 	l.or r5,r17,r17
    18c8:	e0 58 88 02 	l.sub r2,r24,r17
    18cc:	00 00 00 09 	l.j 18f0 <_vsnprintf+0x7ac>
    18d0:	ab 40 00 20 	l.ori r26,r0,0x20
    18d4:	d4 01 88 18 	l.sw 24(r1),r17
    18d8:	e0 96 b0 04 	l.or r4,r22,r22
    18dc:	e0 7a d0 04 	l.or r3,r26,r26
    18e0:	48 00 90 00 	l.jalr r18
    18e4:	9f 85 00 01 	l.addi r28,r5,1
    18e8:	e0 bc e0 04 	l.or r5,r28,r28
    18ec:	86 21 00 18 	l.lwz r17,24(r1)
    18f0:	e2 a5 10 00 	l.add r21,r5,r2
    18f4:	e4 5e a8 00 	l.sfgtu r30,r21
    18f8:	13 ff ff f7 	l.bf 18d4 <_vsnprintf+0x790>
    18fc:	e0 d4 a0 04 	l.or r6,r20,r20
    1900:	e4 7e c0 00 	l.sfgeu r30,r24
    1904:	10 00 00 03 	l.bf 1910 <_vsnprintf+0x7cc>
    1908:	e2 be c0 02 	l.sub r21,r30,r24
    190c:	1a a0 00 00 	l.movhi r21,0x0
    1910:	e2 31 a8 00 	l.add r17,r17,r21
    1914:	e3 91 88 04 	l.or r28,r17,r17
    1918:	00 00 00 3d 	l.j 1a0c <_vsnprintf+0x8c8>
    191c:	84 41 00 1c 	l.lwz r2,28(r1)
    1920:	03 ff fe 1e 	l.j 1198 <_vsnprintf+0x54>
    1924:	e2 43 18 04 	l.or r18,r3,r3
    1928:	03 ff fe b4 	l.j 13f8 <_vsnprintf+0x2b4>
    192c:	aa e0 00 02 	l.ori r23,r0,0x2
    1930:	13 ff fe fa 	l.bf 1518 <_vsnprintf+0x3d4>
    1934:	e4 03 d8 00 	l.sfeq r3,r27
    1938:	aa 60 00 69 	l.ori r19,r0,0x69
    193c:	ae e0 ff ef 	l.xori r23,r0,-17
    1940:	e4 23 98 00 	l.sfne r3,r19
    1944:	e2 31 b8 03 	l.and r17,r17,r23
    1948:	13 ff fe f9 	l.bf 152c <_vsnprintf+0x3e8>
    194c:	aa e0 00 0a 	l.ori r23,r0,0xa
    1950:	a7 31 04 00 	l.andi r25,r17,0x400
    1954:	1a 60 00 00 	l.movhi r19,0x0
    1958:	e4 19 98 00 	l.sfeq r25,r19
    195c:	10 00 00 04 	l.bf 196c <_vsnprintf+0x828>
    1960:	aa 60 00 69 	l.ori r19,r0,0x69
    1964:	af 20 ff fe 	l.xori r25,r0,-2
    1968:	e2 31 c8 03 	l.and r17,r17,r25
    196c:	e4 03 98 00 	l.sfeq r3,r19
    1970:	10 00 00 06 	l.bf 1988 <_vsnprintf+0x844>
    1974:	a7 31 02 00 	l.andi r25,r17,0x200
    1978:	aa 60 00 64 	l.ori r19,r0,0x64
    197c:	e4 23 98 00 	l.sfne r3,r19
    1980:	13 ff ff 16 	l.bf 15d8 <_vsnprintf+0x494>
    1984:	1a 60 00 00 	l.movhi r19,0x0
    1988:	1a 60 00 00 	l.movhi r19,0x0
    198c:	e4 19 98 00 	l.sfeq r25,r19
    1990:	13 ff fe ed 	l.bf 1544 <_vsnprintf+0x400>
    1994:	a7 31 01 00 	l.andi r25,r17,0x100
    1998:	87 22 00 00 	l.lwz r25,0(r2)
    199c:	e5 79 98 00 	l.sfges r25,r19
    19a0:	9f 42 00 08 	l.addi r26,r2,8
    19a4:	e0 f9 c8 04 	l.or r7,r25,r25
    19a8:	10 00 00 0a 	l.bf 19d0 <_vsnprintf+0x88c>
    19ac:	85 02 00 04 	l.lwz r8,4(r2)
    19b0:	e4 28 98 00 	l.sfne r8,r19
    19b4:	e3 60 40 02 	l.sub r27,r0,r8
    19b8:	10 00 00 03 	l.bf 19c4 <_vsnprintf+0x880>
    19bc:	ab a0 00 01 	l.ori r29,r0,0x1
    19c0:	1b a0 00 00 	l.movhi r29,0x0
    19c4:	e0 e0 c8 02 	l.sub r7,r0,r25
    19c8:	e0 e7 e8 02 	l.sub r7,r7,r29
    19cc:	e1 1b d8 04 	l.or r8,r27,r27
    19d0:	d4 01 88 14 	l.sw 20(r1),r17
    19d4:	aa 20 00 1f 	l.ori r17,r0,0x1f
    19d8:	e3 39 88 48 	l.srl r25,r25,r17
    19dc:	d4 01 f0 10 	l.sw 16(r1),r30
    19e0:	d4 01 70 0c 	l.sw 12(r1),r14
    19e4:	d4 01 b8 08 	l.sw 8(r1),r23
    19e8:	d4 01 00 04 	l.sw 4(r1),r0
    19ec:	d8 01 c8 03 	l.sb 3(r1),r25
    19f0:	e0 d4 a0 04 	l.or r6,r20,r20
    19f4:	e0 bc e0 04 	l.or r5,r28,r28
    19f8:	e0 96 b0 04 	l.or r4,r22,r22
    19fc:	07 ff fd 4b 	l.jal f28 <_ntoa_long_long>
    1a00:	e0 72 90 04 	l.or r3,r18,r18
    1a04:	e3 8b 58 04 	l.or r28,r11,r11
    1a08:	e0 5a d0 04 	l.or r2,r26,r26
    1a0c:	90 70 00 00 	l.lbs r3,0(r16)
    1a10:	1a 20 00 00 	l.movhi r17,0x0
    1a14:	e4 23 88 00 	l.sfne r3,r17
    1a18:	13 ff fd e5 	l.bf 11ac <_vsnprintf+0x68>
    1a1c:	aa 20 00 25 	l.ori r17,r0,0x25
    1a20:	e4 9c a0 00 	l.sfltu r28,r20
    1a24:	10 00 00 03 	l.bf 1a30 <_vsnprintf+0x8ec>
    1a28:	e0 bc e0 04 	l.or r5,r28,r28
    1a2c:	9c b4 ff ff 	l.addi r5,r20,-1
    1a30:	e0 d4 a0 04 	l.or r6,r20,r20
    1a34:	e0 96 b0 04 	l.or r4,r22,r22
    1a38:	48 00 90 00 	l.jalr r18
    1a3c:	18 60 00 00 	l.movhi r3,0x0
    1a40:	e1 7c e0 04 	l.or r11,r28,r28
    1a44:	85 c1 00 30 	l.lwz r14,48(r1)
    1a48:	86 01 00 34 	l.lwz r16,52(r1)
    1a4c:	86 41 00 38 	l.lwz r18,56(r1)
    1a50:	86 81 00 3c 	l.lwz r20,60(r1)
    1a54:	86 c1 00 40 	l.lwz r22,64(r1)
    1a58:	87 01 00 44 	l.lwz r24,68(r1)
    1a5c:	87 41 00 48 	l.lwz r26,72(r1)
    1a60:	87 81 00 4c 	l.lwz r28,76(r1)
    1a64:	87 c1 00 50 	l.lwz r30,80(r1)
    1a68:	84 41 00 54 	l.lwz r2,84(r1)
    1a6c:	85 21 00 58 	l.lwz r9,88(r1)
    1a70:	44 00 48 00 	l.jr r9
    1a74:	9c 21 00 5c 	l.addi r1,r1,92

00001a78 <printf_>:
    1a78:	9c 21 ff f8 	l.addi r1,r1,-8
    1a7c:	e0 c3 18 04 	l.or r6,r3,r3
    1a80:	18 60 00 00 	l.movhi r3,0x0
    1a84:	9c e1 00 08 	l.addi r7,r1,8
    1a88:	9c 81 00 03 	l.addi r4,r1,3
    1a8c:	ac a0 ff ff 	l.xori r5,r0,-1
    1a90:	d4 01 48 04 	l.sw 4(r1),r9
    1a94:	07 ff fd ac 	l.jal 1144 <_vsnprintf>
    1a98:	9c 63 10 e8 	l.addi r3,r3,4328
    1a9c:	85 21 00 04 	l.lwz r9,4(r1)
    1aa0:	44 00 48 00 	l.jr r9
    1aa4:	9c 21 00 08 	l.addi r1,r1,8

00001aa8 <sprintf_>:
    1aa8:	9c 21 ff fc 	l.addi r1,r1,-4
    1aac:	e0 c4 20 04 	l.or r6,r4,r4
    1ab0:	e0 83 18 04 	l.or r4,r3,r3
    1ab4:	18 60 00 00 	l.movhi r3,0x0
    1ab8:	9c e1 00 04 	l.addi r7,r1,4
    1abc:	ac a0 ff ff 	l.xori r5,r0,-1
    1ac0:	d4 01 48 00 	l.sw 0(r1),r9
    1ac4:	07 ff fd a0 	l.jal 1144 <_vsnprintf>
    1ac8:	9c 63 0a 8c 	l.addi r3,r3,2700
    1acc:	85 21 00 00 	l.lwz r9,0(r1)
    1ad0:	44 00 48 00 	l.jr r9
    1ad4:	9c 21 00 04 	l.addi r1,r1,4

00001ad8 <snprintf_>:
    1ad8:	9c 21 ff fc 	l.addi r1,r1,-4
    1adc:	e0 c5 28 04 	l.or r6,r5,r5
    1ae0:	e0 a4 20 04 	l.or r5,r4,r4
    1ae4:	e0 83 18 04 	l.or r4,r3,r3
    1ae8:	18 60 00 00 	l.movhi r3,0x0
    1aec:	9c e1 00 04 	l.addi r7,r1,4
    1af0:	d4 01 48 00 	l.sw 0(r1),r9
    1af4:	07 ff fd 94 	l.jal 1144 <_vsnprintf>
    1af8:	9c 63 0a 8c 	l.addi r3,r3,2700
    1afc:	85 21 00 00 	l.lwz r9,0(r1)
    1b00:	44 00 48 00 	l.jr r9
    1b04:	9c 21 00 04 	l.addi r1,r1,4

00001b08 <vprintf_>:
    1b08:	9c 21 ff f8 	l.addi r1,r1,-8
    1b0c:	e0 c3 18 04 	l.or r6,r3,r3
    1b10:	18 60 00 00 	l.movhi r3,0x0
    1b14:	e0 e4 20 04 	l.or r7,r4,r4
    1b18:	ac a0 ff ff 	l.xori r5,r0,-1
    1b1c:	9c 81 00 03 	l.addi r4,r1,3
    1b20:	d4 01 48 04 	l.sw 4(r1),r9
    1b24:	07 ff fd 88 	l.jal 1144 <_vsnprintf>
    1b28:	9c 63 10 e8 	l.addi r3,r3,4328
    1b2c:	85 21 00 04 	l.lwz r9,4(r1)
    1b30:	44 00 48 00 	l.jr r9
    1b34:	9c 21 00 08 	l.addi r1,r1,8

00001b38 <vsnprintf_>:
    1b38:	e0 e6 30 04 	l.or r7,r6,r6
    1b3c:	e0 c5 28 04 	l.or r6,r5,r5
    1b40:	e0 a4 20 04 	l.or r5,r4,r4
    1b44:	e0 83 18 04 	l.or r4,r3,r3
    1b48:	18 60 00 00 	l.movhi r3,0x0
    1b4c:	03 ff fd 7e 	l.j 1144 <_vsnprintf>
    1b50:	9c 63 0a 8c 	l.addi r3,r3,2700

00001b54 <fctprintf>:
    1b54:	9c 21 ff f4 	l.addi r1,r1,-12
    1b58:	d4 01 18 00 	l.sw 0(r1),r3
    1b5c:	18 60 00 00 	l.movhi r3,0x0
    1b60:	d4 01 20 04 	l.sw 4(r1),r4
    1b64:	e0 c5 28 04 	l.or r6,r5,r5
    1b68:	9c e1 00 0c 	l.addi r7,r1,12
    1b6c:	e0 81 08 04 	l.or r4,r1,r1
    1b70:	ac a0 ff ff 	l.xori r5,r0,-1
    1b74:	d4 01 48 08 	l.sw 8(r1),r9
    1b78:	07 ff fd 73 	l.jal 1144 <_vsnprintf>
    1b7c:	9c 63 11 14 	l.addi r3,r3,4372
    1b80:	85 21 00 08 	l.lwz r9,8(r1)
    1b84:	44 00 48 00 	l.jr r9
    1b88:	9c 21 00 0c 	l.addi r1,r1,12

00001b8c <memcpy>:
    1b8c:	1a 60 00 00 	l.movhi r19,0x0
    1b90:	e4 05 98 00 	l.sfeq r5,r19
    1b94:	10 00 00 3e 	l.bf 1c8c <memcpy+0x100>
    1b98:	e1 63 18 04 	l.or r11,r3,r3
    1b9c:	e4 03 20 00 	l.sfeq r3,r4
    1ba0:	10 00 00 3b 	l.bf 1c8c <memcpy+0x100>
    1ba4:	e4 63 20 00 	l.sfgeu r3,r4
    1ba8:	10 00 00 3f 	l.bf 1ca4 <memcpy+0x118>
    1bac:	e2 23 28 00 	l.add r17,r3,r5
    1bb0:	e2 23 20 04 	l.or r17,r3,r4
    1bb4:	a6 31 00 03 	l.andi r17,r17,0x3
    1bb8:	e4 11 98 00 	l.sfeq r17,r19
    1bbc:	10 00 00 38 	l.bf 1c9c <memcpy+0x110>
    1bc0:	e2 23 20 05 	l.xor r17,r3,r4
    1bc4:	a6 31 00 03 	l.andi r17,r17,0x3
    1bc8:	e4 31 98 00 	l.sfne r17,r19
    1bcc:	10 00 00 08 	l.bf 1bec <memcpy+0x60>
    1bd0:	e2 25 28 04 	l.or r17,r5,r5
    1bd4:	aa 20 00 03 	l.ori r17,r0,0x3
    1bd8:	e4 a5 88 00 	l.sfleu r5,r17
    1bdc:	10 00 00 2e 	l.bf 1c94 <memcpy+0x108>
    1be0:	e2 64 88 03 	l.and r19,r4,r17
    1be4:	aa 20 00 04 	l.ori r17,r0,0x4
    1be8:	e2 31 98 02 	l.sub r17,r17,r19
    1bec:	e0 a5 88 02 	l.sub r5,r5,r17
    1bf0:	1a 60 00 00 	l.movhi r19,0x0
    1bf4:	e2 e4 98 00 	l.add r23,r4,r19
    1bf8:	e2 ab 98 00 	l.add r21,r11,r19
    1bfc:	92 f7 00 00 	l.lbs r23,0(r23)
    1c00:	9e 73 00 01 	l.addi r19,r19,1
    1c04:	d8 15 b8 00 	l.sb 0(r21),r23
    1c08:	e4 31 98 00 	l.sfne r17,r19
    1c0c:	13 ff ff fb 	l.bf 1bf8 <memcpy+0x6c>
    1c10:	e2 e4 98 00 	l.add r23,r4,r19
    1c14:	e2 6b 88 00 	l.add r19,r11,r17
    1c18:	e0 84 88 00 	l.add r4,r4,r17
    1c1c:	aa 20 00 03 	l.ori r17,r0,0x3
    1c20:	e4 a5 88 00 	l.sfleu r5,r17
    1c24:	10 00 00 0e 	l.bf 1c5c <memcpy+0xd0>
    1c28:	aa 20 00 02 	l.ori r17,r0,0x2
    1c2c:	e2 a5 88 48 	l.srl r21,r5,r17
    1c30:	e2 b5 88 08 	l.sll r21,r21,r17
    1c34:	1a 20 00 00 	l.movhi r17,0x0
    1c38:	e2 e4 88 00 	l.add r23,r4,r17
    1c3c:	87 37 00 00 	l.lwz r25,0(r23)
    1c40:	e2 f3 88 00 	l.add r23,r19,r17
    1c44:	9e 31 00 04 	l.addi r17,r17,4
    1c48:	e4 31 a8 00 	l.sfne r17,r21
    1c4c:	13 ff ff fb 	l.bf 1c38 <memcpy+0xac>
    1c50:	d4 17 c8 00 	l.sw 0(r23),r25
    1c54:	e2 73 88 00 	l.add r19,r19,r17
    1c58:	e0 84 88 00 	l.add r4,r4,r17
    1c5c:	a4 a5 00 03 	l.andi r5,r5,0x3
    1c60:	1a 20 00 00 	l.movhi r17,0x0
    1c64:	e4 05 88 00 	l.sfeq r5,r17
    1c68:	10 00 00 09 	l.bf 1c8c <memcpy+0x100>
    1c6c:	e2 e4 88 00 	l.add r23,r4,r17
    1c70:	e2 b3 88 00 	l.add r21,r19,r17
    1c74:	92 f7 00 00 	l.lbs r23,0(r23)
    1c78:	9e 31 00 01 	l.addi r17,r17,1
    1c7c:	d8 15 b8 00 	l.sb 0(r21),r23
    1c80:	e4 25 88 00 	l.sfne r5,r17
    1c84:	13 ff ff fb 	l.bf 1c70 <memcpy+0xe4>
    1c88:	e2 e4 88 00 	l.add r23,r4,r17
    1c8c:	44 00 48 00 	l.jr r9
    1c90:	15 00 00 00 	l.nop 0x0
    1c94:	03 ff ff d6 	l.j 1bec <memcpy+0x60>
    1c98:	e2 25 28 04 	l.or r17,r5,r5
    1c9c:	03 ff ff e0 	l.j 1c1c <memcpy+0x90>
    1ca0:	e2 63 18 04 	l.or r19,r3,r3
    1ca4:	e0 84 28 00 	l.add r4,r4,r5
    1ca8:	e2 64 88 04 	l.or r19,r4,r17
    1cac:	a6 73 00 03 	l.andi r19,r19,0x3
    1cb0:	1a a0 00 00 	l.movhi r21,0x0
    1cb4:	e4 13 a8 00 	l.sfeq r19,r21
    1cb8:	10 00 00 1a 	l.bf 1d20 <memcpy+0x194>
    1cbc:	aa 60 00 03 	l.ori r19,r0,0x3
    1cc0:	e2 64 88 05 	l.xor r19,r4,r17
    1cc4:	a6 73 00 03 	l.andi r19,r19,0x3
    1cc8:	e4 33 a8 00 	l.sfne r19,r21
    1ccc:	10 00 00 07 	l.bf 1ce8 <memcpy+0x15c>
    1cd0:	e2 65 28 04 	l.or r19,r5,r5
    1cd4:	aa 60 00 04 	l.ori r19,r0,0x4
    1cd8:	e4 a5 98 00 	l.sfleu r5,r19
    1cdc:	10 00 00 03 	l.bf 1ce8 <memcpy+0x15c>
    1ce0:	e2 65 28 04 	l.or r19,r5,r5
    1ce4:	a6 64 00 03 	l.andi r19,r4,0x3
    1ce8:	e0 a5 98 02 	l.sub r5,r5,r19
    1cec:	ae f3 ff ff 	l.xori r23,r19,-1
    1cf0:	ae a0 ff ff 	l.xori r21,r0,-1
    1cf4:	e3 64 a8 00 	l.add r27,r4,r21
    1cf8:	e3 31 a8 00 	l.add r25,r17,r21
    1cfc:	93 7b 00 00 	l.lbs r27,0(r27)
    1d00:	9e b5 ff ff 	l.addi r21,r21,-1
    1d04:	d8 19 d8 00 	l.sb 0(r25),r27
    1d08:	e4 35 b8 00 	l.sfne r21,r23
    1d0c:	13 ff ff fb 	l.bf 1cf8 <memcpy+0x16c>
    1d10:	e3 64 a8 00 	l.add r27,r4,r21
    1d14:	e2 31 98 02 	l.sub r17,r17,r19
    1d18:	e0 84 98 02 	l.sub r4,r4,r19
    1d1c:	aa 60 00 03 	l.ori r19,r0,0x3
    1d20:	e4 a5 98 00 	l.sfleu r5,r19
    1d24:	10 00 00 13 	l.bf 1d70 <memcpy+0x1e4>
    1d28:	aa 60 00 02 	l.ori r19,r0,0x2
    1d2c:	e2 65 98 48 	l.srl r19,r5,r19
    1d30:	e2 f3 98 04 	l.or r23,r19,r19
    1d34:	ae a0 ff fc 	l.xori r21,r0,-4
    1d38:	e3 24 a8 00 	l.add r25,r4,r21
    1d3c:	87 79 00 00 	l.lwz r27,0(r25)
    1d40:	e3 31 a8 00 	l.add r25,r17,r21
    1d44:	d4 19 d8 00 	l.sw 0(r25),r27
    1d48:	9e f7 ff ff 	l.addi r23,r23,-1
    1d4c:	1b 20 00 00 	l.movhi r25,0x0
    1d50:	e4 37 c8 00 	l.sfne r23,r25
    1d54:	13 ff ff f9 	l.bf 1d38 <memcpy+0x1ac>
    1d58:	9e b5 ff fc 	l.addi r21,r21,-4
    1d5c:	e2 60 98 02 	l.sub r19,r0,r19
    1d60:	aa a0 00 02 	l.ori r21,r0,0x2
    1d64:	e2 73 a8 08 	l.sll r19,r19,r21
    1d68:	e2 31 98 00 	l.add r17,r17,r19
    1d6c:	e0 84 98 00 	l.add r4,r4,r19
    1d70:	a4 a5 00 03 	l.andi r5,r5,0x3
    1d74:	1a 60 00 00 	l.movhi r19,0x0
    1d78:	e4 05 98 00 	l.sfeq r5,r19
    1d7c:	13 ff ff c4 	l.bf 1c8c <memcpy+0x100>
    1d80:	15 00 00 00 	l.nop 0x0
    1d84:	ac a5 ff ff 	l.xori r5,r5,-1
    1d88:	ae 60 ff ff 	l.xori r19,r0,-1
    1d8c:	e2 e4 98 00 	l.add r23,r4,r19
    1d90:	e2 b1 98 00 	l.add r21,r17,r19
    1d94:	92 f7 00 00 	l.lbs r23,0(r23)
    1d98:	9e 73 ff ff 	l.addi r19,r19,-1
    1d9c:	d8 15 b8 00 	l.sb 0(r21),r23
    1da0:	e4 33 28 00 	l.sfne r19,r5
    1da4:	13 ff ff fb 	l.bf 1d90 <memcpy+0x204>
    1da8:	e2 e4 98 00 	l.add r23,r4,r19
    1dac:	03 ff ff b8 	l.j 1c8c <memcpy+0x100>
    1db0:	15 00 00 00 	l.nop 0x0

00001db4 <memmove>:
    1db4:	03 ff ff 76 	l.j 1b8c <memcpy>
    1db8:	15 00 00 00 	l.nop 0x0

00001dbc <bcopy>:
    1dbc:	e2 24 20 04 	l.or r17,r4,r4
    1dc0:	e0 83 18 04 	l.or r4,r3,r3
    1dc4:	03 ff ff 72 	l.j 1b8c <memcpy>
    1dc8:	e0 71 88 04 	l.or r3,r17,r17

00001dcc <memset>:
    1dcc:	e1 63 18 04 	l.or r11,r3,r3
    1dd0:	e0 a3 28 00 	l.add r5,r3,r5
    1dd4:	e2 23 18 04 	l.or r17,r3,r3
    1dd8:	a4 84 00 ff 	l.andi r4,r4,0xff
    1ddc:	e4 31 28 00 	l.sfne r17,r5
    1de0:	10 00 00 04 	l.bf 1df0 <memset+0x24>
    1de4:	15 00 00 00 	l.nop 0x0
    1de8:	44 00 48 00 	l.jr r9
    1dec:	15 00 00 00 	l.nop 0x0
    1df0:	d8 11 20 00 	l.sb 0(r17),r4
    1df4:	03 ff ff fa 	l.j 1ddc <memset+0x10>
    1df8:	9e 31 00 01 	l.addi r17,r17,1

00001dfc <uart_init>:
    1dfc:	ae 20 ff 83 	l.xori r17,r0,-125
    1e00:	d8 03 88 05 	l.sb 5(r3),r17
    1e04:	aa 20 00 1b 	l.ori r17,r0,0x1b
    1e08:	d8 03 88 00 	l.sb 0(r3),r17
    1e0c:	d8 03 00 01 	l.sb 1(r3),r0
    1e10:	aa 20 00 03 	l.ori r17,r0,0x3
    1e14:	d8 03 88 03 	l.sb 3(r3),r17
    1e18:	44 00 48 00 	l.jr r9
    1e1c:	15 00 00 00 	l.nop 0x0

00001e20 <uart_wait_rx>:
    1e20:	8e 23 00 05 	l.lbz r17,5(r3)
    1e24:	a6 31 00 01 	l.andi r17,r17,0x1
    1e28:	1a 60 00 00 	l.movhi r19,0x0
    1e2c:	e4 11 98 00 	l.sfeq r17,r19
    1e30:	10 00 00 04 	l.bf 1e40 <uart_wait_rx+0x20>
    1e34:	15 00 00 00 	l.nop 0x0
    1e38:	44 00 48 00 	l.jr r9
    1e3c:	15 00 00 00 	l.nop 0x0
    1e40:	15 00 00 00 	l.nop 0x0
    1e44:	03 ff ff f7 	l.j 1e20 <uart_wait_rx>
    1e48:	15 00 00 00 	l.nop 0x0

00001e4c <uart_wait_tx>:
    1e4c:	8e 23 00 05 	l.lbz r17,5(r3)
    1e50:	a6 31 00 40 	l.andi r17,r17,0x40
    1e54:	1a 60 00 00 	l.movhi r19,0x0
    1e58:	e4 11 98 00 	l.sfeq r17,r19
    1e5c:	10 00 00 04 	l.bf 1e6c <uart_wait_tx+0x20>
    1e60:	15 00 00 00 	l.nop 0x0
    1e64:	44 00 48 00 	l.jr r9
    1e68:	15 00 00 00 	l.nop 0x0
    1e6c:	15 00 00 00 	l.nop 0x0
    1e70:	03 ff ff f7 	l.j 1e4c <uart_wait_tx>
    1e74:	15 00 00 00 	l.nop 0x0

00001e78 <uart_putc>:
    1e78:	9c 21 ff f4 	l.addi r1,r1,-12
    1e7c:	d4 01 80 00 	l.sw 0(r1),r16
    1e80:	d4 01 90 04 	l.sw 4(r1),r18
    1e84:	d4 01 48 08 	l.sw 8(r1),r9
    1e88:	e2 43 18 04 	l.or r18,r3,r3
    1e8c:	07 ff ff f0 	l.jal 1e4c <uart_wait_tx>
    1e90:	e2 04 20 04 	l.or r16,r4,r4
    1e94:	aa 20 00 18 	l.ori r17,r0,0x18
    1e98:	e0 90 88 08 	l.sll r4,r16,r17
    1e9c:	e0 84 88 88 	l.sra r4,r4,r17
    1ea0:	d8 12 20 00 	l.sb 0(r18),r4
    1ea4:	86 01 00 00 	l.lwz r16,0(r1)
    1ea8:	86 41 00 04 	l.lwz r18,4(r1)
    1eac:	85 21 00 08 	l.lwz r9,8(r1)
    1eb0:	44 00 48 00 	l.jr r9
    1eb4:	9c 21 00 0c 	l.addi r1,r1,12

00001eb8 <uart_puts>:
    1eb8:	9c 21 ff f0 	l.addi r1,r1,-16
    1ebc:	d4 01 80 00 	l.sw 0(r1),r16
    1ec0:	d4 01 90 04 	l.sw 4(r1),r18
    1ec4:	d4 01 a0 08 	l.sw 8(r1),r20
    1ec8:	d4 01 48 0c 	l.sw 12(r1),r9
    1ecc:	e2 43 18 04 	l.or r18,r3,r3
    1ed0:	e2 04 20 04 	l.or r16,r4,r4
    1ed4:	92 90 00 00 	l.lbs r20,0(r16)
    1ed8:	1a 20 00 00 	l.movhi r17,0x0
    1edc:	e4 34 88 00 	l.sfne r20,r17
    1ee0:	10 00 00 07 	l.bf 1efc <uart_puts+0x44>
    1ee4:	85 21 00 0c 	l.lwz r9,12(r1)
    1ee8:	86 01 00 00 	l.lwz r16,0(r1)
    1eec:	86 41 00 04 	l.lwz r18,4(r1)
    1ef0:	86 81 00 08 	l.lwz r20,8(r1)
    1ef4:	44 00 48 00 	l.jr r9
    1ef8:	9c 21 00 10 	l.addi r1,r1,16
    1efc:	07 ff ff d4 	l.jal 1e4c <uart_wait_tx>
    1f00:	e0 72 90 04 	l.or r3,r18,r18
    1f04:	9e 10 00 01 	l.addi r16,r16,1
    1f08:	d8 12 a0 00 	l.sb 0(r18),r20
    1f0c:	03 ff ff f3 	l.j 1ed8 <uart_puts+0x20>
    1f10:	92 90 00 00 	l.lbs r20,0(r16)

00001f14 <uart_getc>:
    1f14:	9c 21 ff f8 	l.addi r1,r1,-8
    1f18:	d4 01 80 00 	l.sw 0(r1),r16
    1f1c:	d4 01 48 04 	l.sw 4(r1),r9
    1f20:	07 ff ff c0 	l.jal 1e20 <uart_wait_rx>
    1f24:	e2 03 18 04 	l.or r16,r3,r3
    1f28:	8d 70 00 00 	l.lbz r11,0(r16)
    1f2c:	aa 20 00 18 	l.ori r17,r0,0x18
    1f30:	e1 6b 88 08 	l.sll r11,r11,r17
    1f34:	e1 6b 88 88 	l.sra r11,r11,r17
    1f38:	86 01 00 00 	l.lwz r16,0(r1)
    1f3c:	85 21 00 04 	l.lwz r9,4(r1)
    1f40:	44 00 48 00 	l.jr r9
    1f44:	9c 21 00 08 	l.addi r1,r1,8

00001f48 <vga_clear>:
    1f48:	aa 20 00 03 	l.ori r17,r0,0x3
    1f4c:	70 11 01 00 	l.nios_crr r0,r17,r0,0x0
    1f50:	44 00 48 00 	l.jr r9
    1f54:	15 00 00 00 	l.nop 0x0

00001f58 <vga_textcorr>:
    1f58:	aa 20 00 06 	l.ori r17,r0,0x6
    1f5c:	70 11 19 00 	l.nios_crr r0,r17,r3,0x0
    1f60:	44 00 48 00 	l.jr r9
    1f64:	15 00 00 00 	l.nop 0x0

00001f68 <vga_putc>:
    1f68:	aa 20 00 02 	l.ori r17,r0,0x2
    1f6c:	70 11 19 00 	l.nios_crr r0,r17,r3,0x0
    1f70:	44 00 48 00 	l.jr r9
    1f74:	15 00 00 00 	l.nop 0x0

00001f78 <vga_puts>:
    1f78:	aa 60 00 02 	l.ori r19,r0,0x2
    1f7c:	92 23 00 00 	l.lbs r17,0(r3)
    1f80:	1a a0 00 00 	l.movhi r21,0x0
    1f84:	e4 31 a8 00 	l.sfne r17,r21
    1f88:	10 00 00 04 	l.bf 1f98 <vga_puts+0x20>
    1f8c:	15 00 00 00 	l.nop 0x0
    1f90:	44 00 48 00 	l.jr r9
    1f94:	15 00 00 00 	l.nop 0x0
    1f98:	9c 63 00 01 	l.addi r3,r3,1
    1f9c:	70 13 89 00 	l.nios_crr r0,r19,r17,0x0
    1fa0:	03 ff ff f8 	l.j 1f80 <vga_puts+0x8>
    1fa4:	92 23 00 00 	l.lbs r17,0(r3)

00001fa8 <__udivdi3>:
    1fa8:	1a a0 00 00 	l.movhi r21,0x0
    1fac:	e4 25 a8 00 	l.sfne r5,r21
    1fb0:	e2 64 20 04 	l.or r19,r4,r4
    1fb4:	10 00 00 4c 	l.bf 20e4 <__udivdi3+0x13c>
    1fb8:	e2 23 18 04 	l.or r17,r3,r3
    1fbc:	e4 a6 18 00 	l.sfleu r6,r3
    1fc0:	10 00 00 6c 	l.bf 2170 <__udivdi3+0x1c8>
    1fc4:	aa a0 ff ff 	l.ori r21,r0,0xffff
    1fc8:	e4 46 a8 00 	l.sfgtu r6,r21
    1fcc:	0c 00 00 b1 	l.bnf 2290 <__udivdi3+0x2e8>
    1fd0:	aa a0 00 ff 	l.ori r21,r0,0xff
    1fd4:	1a a0 00 ff 	l.movhi r21,0xff
    1fd8:	aa b5 ff ff 	l.ori r21,r21,0xffff
    1fdc:	e4 46 a8 00 	l.sfgtu r6,r21
    1fe0:	10 00 00 03 	l.bf 1fec <__udivdi3+0x44>
    1fe4:	aa e0 00 18 	l.ori r23,r0,0x18
    1fe8:	aa e0 00 10 	l.ori r23,r0,0x10
    1fec:	1a a0 00 00 	l.movhi r21,0x0
    1ff0:	e3 26 b8 48 	l.srl r25,r6,r23
    1ff4:	9e b5 2c e8 	l.addi r21,r21,11496
    1ff8:	e2 b5 c8 00 	l.add r21,r21,r25
    1ffc:	8e b5 00 00 	l.lbz r21,0(r21)
    2000:	e2 b5 b8 00 	l.add r21,r21,r23
    2004:	aa e0 00 20 	l.ori r23,r0,0x20
    2008:	e4 17 a8 00 	l.sfeq r23,r21
    200c:	10 00 00 07 	l.bf 2028 <__udivdi3+0x80>
    2010:	e3 37 a8 02 	l.sub r25,r23,r21
    2014:	e0 63 c8 08 	l.sll r3,r3,r25
    2018:	e2 a4 a8 48 	l.srl r21,r4,r21
    201c:	e0 c6 c8 08 	l.sll r6,r6,r25
    2020:	e2 35 18 04 	l.or r17,r21,r3
    2024:	e2 64 c8 08 	l.sll r19,r4,r25
    2028:	ab 60 00 10 	l.ori r27,r0,0x10
    202c:	e2 e6 d8 48 	l.srl r23,r6,r27
    2030:	e1 91 bb 0a 	l.divu r12,r17,r23
    2034:	e2 ac bb 06 	l.mul r21,r12,r23
    2038:	e2 31 a8 02 	l.sub r17,r17,r21
    203c:	e2 bb d8 04 	l.or r21,r27,r27
    2040:	e2 31 d8 08 	l.sll r17,r17,r27
    2044:	a7 26 ff ff 	l.andi r25,r6,0xffff
    2048:	e2 b3 a8 48 	l.srl r21,r19,r21
    204c:	e3 79 63 06 	l.mul r27,r25,r12
    2050:	e2 31 a8 04 	l.or r17,r17,r21
    2054:	e4 bb 88 00 	l.sfleu r27,r17
    2058:	10 00 00 0a 	l.bf 2080 <__udivdi3+0xd8>
    205c:	15 00 00 00 	l.nop 0x0
    2060:	e2 31 30 00 	l.add r17,r17,r6
    2064:	e4 46 88 00 	l.sfgtu r6,r17
    2068:	10 00 00 05 	l.bf 207c <__udivdi3+0xd4>
    206c:	9e ac ff ff 	l.addi r21,r12,-1
    2070:	e4 bb 88 00 	l.sfleu r27,r17
    2074:	0c 00 01 3a 	l.bnf 255c <__udivdi3+0x5b4>
    2078:	9d 8c ff fe 	l.addi r12,r12,-2
    207c:	e1 95 a8 04 	l.or r12,r21,r21
    2080:	e2 31 d8 02 	l.sub r17,r17,r27
    2084:	e2 b1 bb 0a 	l.divu r21,r17,r23
    2088:	e2 f5 bb 06 	l.mul r23,r21,r23
    208c:	e2 31 b8 02 	l.sub r17,r17,r23
    2090:	aa e0 00 10 	l.ori r23,r0,0x10
    2094:	e2 31 b8 08 	l.sll r17,r17,r23
    2098:	a6 73 ff ff 	l.andi r19,r19,0xffff
    209c:	e3 39 ab 06 	l.mul r25,r25,r21
    20a0:	e2 31 98 04 	l.or r17,r17,r19
    20a4:	e4 b9 88 00 	l.sfleu r25,r17
    20a8:	10 00 00 09 	l.bf 20cc <__udivdi3+0x124>
    20ac:	e2 26 88 00 	l.add r17,r6,r17
    20b0:	e4 46 88 00 	l.sfgtu r6,r17
    20b4:	10 00 00 05 	l.bf 20c8 <__udivdi3+0x120>
    20b8:	9e 75 ff ff 	l.addi r19,r21,-1
    20bc:	e4 b9 88 00 	l.sfleu r25,r17
    20c0:	0c 00 00 03 	l.bnf 20cc <__udivdi3+0x124>
    20c4:	9e b5 ff fe 	l.addi r21,r21,-2
    20c8:	e2 b3 98 04 	l.or r21,r19,r19
    20cc:	aa 20 00 10 	l.ori r17,r0,0x10
    20d0:	e1 8c 88 08 	l.sll r12,r12,r17
    20d4:	e1 8c a8 04 	l.or r12,r12,r21
    20d8:	19 60 00 00 	l.movhi r11,0x0
    20dc:	44 00 48 00 	l.jr r9
    20e0:	15 00 00 00 	l.nop 0x0
    20e4:	e4 45 18 00 	l.sfgtu r5,r3
    20e8:	0c 00 00 06 	l.bnf 2100 <__udivdi3+0x158>
    20ec:	aa 20 ff ff 	l.ori r17,r0,0xffff
    20f0:	19 80 00 00 	l.movhi r12,0x0
    20f4:	19 60 00 00 	l.movhi r11,0x0
    20f8:	44 00 48 00 	l.jr r9
    20fc:	15 00 00 00 	l.nop 0x0
    2100:	e4 45 88 00 	l.sfgtu r5,r17
    2104:	0c 00 00 74 	l.bnf 22d4 <__udivdi3+0x32c>
    2108:	aa 20 00 ff 	l.ori r17,r0,0xff
    210c:	1a 20 00 ff 	l.movhi r17,0xff
    2110:	aa 31 ff ff 	l.ori r17,r17,0xffff
    2114:	e4 45 88 00 	l.sfgtu r5,r17
    2118:	10 00 00 03 	l.bf 2124 <__udivdi3+0x17c>
    211c:	aa a0 00 18 	l.ori r21,r0,0x18
    2120:	aa a0 00 10 	l.ori r21,r0,0x10
    2124:	1a 20 00 00 	l.movhi r17,0x0
    2128:	e2 65 a8 48 	l.srl r19,r5,r21
    212c:	9e 31 2c e8 	l.addi r17,r17,11496
    2130:	e2 31 98 00 	l.add r17,r17,r19
    2134:	8e 71 00 00 	l.lbz r19,0(r17)
    2138:	e2 73 a8 00 	l.add r19,r19,r21
    213c:	aa 20 00 20 	l.ori r17,r0,0x20
    2140:	e4 31 98 00 	l.sfne r17,r19
    2144:	10 00 00 6b 	l.bf 22f0 <__udivdi3+0x348>
    2148:	e2 f1 98 02 	l.sub r23,r17,r19
    214c:	e4 85 18 00 	l.sfltu r5,r3
    2150:	10 00 00 05 	l.bf 2164 <__udivdi3+0x1bc>
    2154:	a9 80 00 01 	l.ori r12,r0,0x1
    2158:	e4 a6 20 00 	l.sfleu r6,r4
    215c:	0c 00 00 fb 	l.bnf 2548 <__udivdi3+0x5a0>
    2160:	15 00 00 00 	l.nop 0x0
    2164:	19 60 00 00 	l.movhi r11,0x0
    2168:	44 00 48 00 	l.jr r9
    216c:	15 00 00 00 	l.nop 0x0
    2170:	1a 20 00 00 	l.movhi r17,0x0
    2174:	e4 26 88 00 	l.sfne r6,r17
    2178:	10 00 00 4d 	l.bf 22ac <__udivdi3+0x304>
    217c:	aa 20 ff ff 	l.ori r17,r0,0xffff
    2180:	aa 20 00 01 	l.ori r17,r0,0x1
    2184:	e0 d1 33 0a 	l.divu r6,r17,r6
    2188:	aa 20 00 ff 	l.ori r17,r0,0xff
    218c:	e4 46 88 00 	l.sfgtu r6,r17
    2190:	10 00 00 03 	l.bf 219c <__udivdi3+0x1f4>
    2194:	aa e0 00 01 	l.ori r23,r0,0x1
    2198:	1a e0 00 00 	l.movhi r23,0x0
    219c:	aa 20 00 03 	l.ori r17,r0,0x3
    21a0:	e2 f7 88 08 	l.sll r23,r23,r17
    21a4:	1a 20 00 00 	l.movhi r17,0x0
    21a8:	e2 a6 b8 48 	l.srl r21,r6,r23
    21ac:	9e 31 2c e8 	l.addi r17,r17,11496
    21b0:	e2 31 a8 00 	l.add r17,r17,r21
    21b4:	8e b1 00 00 	l.lbz r21,0(r17)
    21b8:	e2 b5 b8 00 	l.add r21,r21,r23
    21bc:	aa 20 00 20 	l.ori r17,r0,0x20
    21c0:	e4 31 a8 00 	l.sfne r17,r21
    21c4:	10 00 00 a4 	l.bf 2454 <__udivdi3+0x4ac>
    21c8:	e3 71 a8 02 	l.sub r27,r17,r21
    21cc:	aa 20 00 10 	l.ori r17,r0,0x10
    21d0:	e0 63 30 02 	l.sub r3,r3,r6
    21d4:	e2 e6 88 48 	l.srl r23,r6,r17
    21d8:	a7 26 ff ff 	l.andi r25,r6,0xffff
    21dc:	a9 60 00 01 	l.ori r11,r0,0x1
    21e0:	e1 83 bb 0a 	l.divu r12,r3,r23
    21e4:	e2 2c bb 06 	l.mul r17,r12,r23
    21e8:	e0 63 88 02 	l.sub r3,r3,r17
    21ec:	aa 20 00 10 	l.ori r17,r0,0x10
    21f0:	e0 63 88 08 	l.sll r3,r3,r17
    21f4:	e2 33 88 48 	l.srl r17,r19,r17
    21f8:	e2 ac cb 06 	l.mul r21,r12,r25
    21fc:	e0 63 88 04 	l.or r3,r3,r17
    2200:	e4 b5 18 00 	l.sfleu r21,r3
    2204:	10 00 00 0a 	l.bf 222c <__udivdi3+0x284>
    2208:	15 00 00 00 	l.nop 0x0
    220c:	e0 63 30 00 	l.add r3,r3,r6
    2210:	e4 46 18 00 	l.sfgtu r6,r3
    2214:	10 00 00 05 	l.bf 2228 <__udivdi3+0x280>
    2218:	9e 2c ff ff 	l.addi r17,r12,-1
    221c:	e4 b5 18 00 	l.sfleu r21,r3
    2220:	0c 00 00 cd 	l.bnf 2554 <__udivdi3+0x5ac>
    2224:	9d 8c ff fe 	l.addi r12,r12,-2
    2228:	e1 91 88 04 	l.or r12,r17,r17
    222c:	e0 63 a8 02 	l.sub r3,r3,r21
    2230:	e2 a3 bb 0a 	l.divu r21,r3,r23
    2234:	e2 35 bb 06 	l.mul r17,r21,r23
    2238:	e0 63 88 02 	l.sub r3,r3,r17
    223c:	e2 35 a8 04 	l.or r17,r21,r21
    2240:	aa a0 00 10 	l.ori r21,r0,0x10
    2244:	e0 63 a8 08 	l.sll r3,r3,r21
    2248:	a6 73 ff ff 	l.andi r19,r19,0xffff
    224c:	e3 31 cb 06 	l.mul r25,r17,r25
    2250:	e0 63 98 04 	l.or r3,r3,r19
    2254:	e4 b9 18 00 	l.sfleu r25,r3
    2258:	10 00 00 09 	l.bf 227c <__udivdi3+0x2d4>
    225c:	e0 66 18 00 	l.add r3,r6,r3
    2260:	e4 46 18 00 	l.sfgtu r6,r3
    2264:	10 00 00 05 	l.bf 2278 <__udivdi3+0x2d0>
    2268:	9e 71 ff ff 	l.addi r19,r17,-1
    226c:	e4 b9 18 00 	l.sfleu r25,r3
    2270:	0c 00 00 03 	l.bnf 227c <__udivdi3+0x2d4>
    2274:	9e 31 ff fe 	l.addi r17,r17,-2
    2278:	e2 33 98 04 	l.or r17,r19,r19
    227c:	aa 60 00 10 	l.ori r19,r0,0x10
    2280:	e1 8c 98 08 	l.sll r12,r12,r19
    2284:	e1 8c 88 04 	l.or r12,r12,r17
    2288:	44 00 48 00 	l.jr r9
    228c:	15 00 00 00 	l.nop 0x0
    2290:	e4 46 a8 00 	l.sfgtu r6,r21
    2294:	10 00 00 03 	l.bf 22a0 <__udivdi3+0x2f8>
    2298:	aa e0 00 01 	l.ori r23,r0,0x1
    229c:	1a e0 00 00 	l.movhi r23,0x0
    22a0:	aa a0 00 03 	l.ori r21,r0,0x3
    22a4:	03 ff ff 52 	l.j 1fec <__udivdi3+0x44>
    22a8:	e2 f7 a8 08 	l.sll r23,r23,r21
    22ac:	e4 46 88 00 	l.sfgtu r6,r17
    22b0:	0f ff ff b7 	l.bnf 218c <__udivdi3+0x1e4>
    22b4:	aa 20 00 ff 	l.ori r17,r0,0xff
    22b8:	1a 20 00 ff 	l.movhi r17,0xff
    22bc:	aa 31 ff ff 	l.ori r17,r17,0xffff
    22c0:	e4 46 88 00 	l.sfgtu r6,r17
    22c4:	13 ff ff b8 	l.bf 21a4 <__udivdi3+0x1fc>
    22c8:	aa e0 00 18 	l.ori r23,r0,0x18
    22cc:	03 ff ff b6 	l.j 21a4 <__udivdi3+0x1fc>
    22d0:	aa e0 00 10 	l.ori r23,r0,0x10
    22d4:	e4 45 88 00 	l.sfgtu r5,r17
    22d8:	10 00 00 03 	l.bf 22e4 <__udivdi3+0x33c>
    22dc:	aa a0 00 01 	l.ori r21,r0,0x1
    22e0:	1a a0 00 00 	l.movhi r21,0x0
    22e4:	aa 20 00 03 	l.ori r17,r0,0x3
    22e8:	03 ff ff 8f 	l.j 2124 <__udivdi3+0x17c>
    22ec:	e2 b5 88 08 	l.sll r21,r21,r17
    22f0:	e3 26 98 48 	l.srl r25,r6,r19
    22f4:	e0 a5 b8 08 	l.sll r5,r5,r23
    22f8:	ab e0 00 10 	l.ori r31,r0,0x10
    22fc:	e3 39 28 04 	l.or r25,r25,r5
    2300:	e2 23 98 48 	l.srl r17,r3,r19
    2304:	e3 79 f8 48 	l.srl r27,r25,r31
    2308:	e1 91 db 0a 	l.divu r12,r17,r27
    230c:	e2 ac db 06 	l.mul r21,r12,r27
    2310:	e0 63 b8 08 	l.sll r3,r3,r23
    2314:	e2 64 98 48 	l.srl r19,r4,r19
    2318:	e2 31 a8 02 	l.sub r17,r17,r21
    231c:	e2 73 18 04 	l.or r19,r19,r3
    2320:	e2 31 f8 08 	l.sll r17,r17,r31
    2324:	a7 b9 ff ff 	l.andi r29,r25,0xffff
    2328:	e3 f3 f8 48 	l.srl r31,r19,r31
    232c:	e2 bd 63 06 	l.mul r21,r29,r12
    2330:	e2 31 f8 04 	l.or r17,r17,r31
    2334:	e4 b5 88 00 	l.sfleu r21,r17
    2338:	10 00 00 0b 	l.bf 2364 <__udivdi3+0x3bc>
    233c:	e0 c6 b8 08 	l.sll r6,r6,r23
    2340:	e2 31 c8 00 	l.add r17,r17,r25
    2344:	e4 59 88 00 	l.sfgtu r25,r17
    2348:	10 00 00 7e 	l.bf 2540 <__udivdi3+0x598>
    234c:	9f ec ff ff 	l.addi r31,r12,-1
    2350:	e4 b5 88 00 	l.sfleu r21,r17
    2354:	10 00 00 7b 	l.bf 2540 <__udivdi3+0x598>
    2358:	15 00 00 00 	l.nop 0x0
    235c:	9d 8c ff fe 	l.addi r12,r12,-2
    2360:	e2 31 c8 00 	l.add r17,r17,r25
    2364:	e2 31 a8 02 	l.sub r17,r17,r21
    2368:	e2 b1 db 0a 	l.divu r21,r17,r27
    236c:	e3 75 db 06 	l.mul r27,r21,r27
    2370:	e2 31 d8 02 	l.sub r17,r17,r27
    2374:	ab 60 00 10 	l.ori r27,r0,0x10
    2378:	e2 31 d8 08 	l.sll r17,r17,r27
    237c:	a6 73 ff ff 	l.andi r19,r19,0xffff
    2380:	e3 7d ab 06 	l.mul r27,r29,r21
    2384:	e2 31 98 04 	l.or r17,r17,r19
    2388:	e4 bb 88 00 	l.sfleu r27,r17
    238c:	10 00 00 0b 	l.bf 23b8 <__udivdi3+0x410>
    2390:	15 00 00 00 	l.nop 0x0
    2394:	e2 31 c8 00 	l.add r17,r17,r25
    2398:	e4 59 88 00 	l.sfgtu r25,r17
    239c:	10 00 00 65 	l.bf 2530 <__udivdi3+0x588>
    23a0:	9e 75 ff ff 	l.addi r19,r21,-1
    23a4:	e4 bb 88 00 	l.sfleu r27,r17
    23a8:	10 00 00 62 	l.bf 2530 <__udivdi3+0x588>
    23ac:	15 00 00 00 	l.nop 0x0
    23b0:	9e b5 ff fe 	l.addi r21,r21,-2
    23b4:	e2 31 c8 00 	l.add r17,r17,r25
    23b8:	ab a0 00 10 	l.ori r29,r0,0x10
    23bc:	e1 8c e8 08 	l.sll r12,r12,r29
    23c0:	e1 8c a8 04 	l.or r12,r12,r21
    23c4:	e3 2c e8 48 	l.srl r25,r12,r29
    23c8:	a6 66 ff ff 	l.andi r19,r6,0xffff
    23cc:	a6 b5 ff ff 	l.andi r21,r21,0xffff
    23d0:	e0 c6 e8 48 	l.srl r6,r6,r29
    23d4:	e3 f5 9b 06 	l.mul r31,r21,r19
    23d8:	e2 79 9b 06 	l.mul r19,r25,r19
    23dc:	e2 b5 33 06 	l.mul r21,r21,r6
    23e0:	e2 b5 98 00 	l.add r21,r21,r19
    23e4:	e3 bf e8 48 	l.srl r29,r31,r29
    23e8:	e2 bd a8 00 	l.add r21,r29,r21
    23ec:	e4 b3 a8 00 	l.sfleu r19,r21
    23f0:	e2 31 d8 02 	l.sub r17,r17,r27
    23f4:	10 00 00 04 	l.bf 2404 <__udivdi3+0x45c>
    23f8:	e3 39 33 06 	l.mul r25,r25,r6
    23fc:	1a 60 00 01 	l.movhi r19,0x1
    2400:	e3 39 98 00 	l.add r25,r25,r19
    2404:	aa 60 00 10 	l.ori r19,r0,0x10
    2408:	e2 75 98 48 	l.srl r19,r21,r19
    240c:	e2 73 c8 00 	l.add r19,r19,r25
    2410:	e4 91 98 00 	l.sfltu r17,r19
    2414:	10 00 00 0c 	l.bf 2444 <__udivdi3+0x49c>
    2418:	e4 11 98 00 	l.sfeq r17,r19
    241c:	0f ff ff 53 	l.bnf 2168 <__udivdi3+0x1c0>
    2420:	19 60 00 00 	l.movhi r11,0x0
    2424:	aa 20 00 10 	l.ori r17,r0,0x10
    2428:	e2 b5 88 08 	l.sll r21,r21,r17
    242c:	a7 ff ff ff 	l.andi r31,r31,0xffff
    2430:	e0 84 b8 08 	l.sll r4,r4,r23
    2434:	e2 b5 f8 00 	l.add r21,r21,r31
    2438:	e4 84 a8 00 	l.sfltu r4,r21
    243c:	0f ff ff 4b 	l.bnf 2168 <__udivdi3+0x1c0>
    2440:	15 00 00 00 	l.nop 0x0
    2444:	9d 8c ff ff 	l.addi r12,r12,-1
    2448:	19 60 00 00 	l.movhi r11,0x0
    244c:	44 00 48 00 	l.jr r9
    2450:	15 00 00 00 	l.nop 0x0
    2454:	ab a0 00 10 	l.ori r29,r0,0x10
    2458:	e0 c6 d8 08 	l.sll r6,r6,r27
    245c:	e2 23 a8 48 	l.srl r17,r3,r21
    2460:	e2 e6 e8 48 	l.srl r23,r6,r29
    2464:	e1 71 bb 0a 	l.divu r11,r17,r23
    2468:	e2 6b bb 06 	l.mul r19,r11,r23
    246c:	e0 63 d8 08 	l.sll r3,r3,r27
    2470:	e2 a4 a8 48 	l.srl r21,r4,r21
    2474:	e2 31 98 02 	l.sub r17,r17,r19
    2478:	e2 b5 18 04 	l.or r21,r21,r3
    247c:	e2 75 e8 48 	l.srl r19,r21,r29
    2480:	e2 31 e8 08 	l.sll r17,r17,r29
    2484:	a7 26 ff ff 	l.andi r25,r6,0xffff
    2488:	e2 31 98 04 	l.or r17,r17,r19
    248c:	e3 b9 5b 06 	l.mul r29,r25,r11
    2490:	e4 bd 88 00 	l.sfleu r29,r17
    2494:	10 00 00 0b 	l.bf 24c0 <__udivdi3+0x518>
    2498:	e2 64 d8 08 	l.sll r19,r4,r27
    249c:	e2 31 30 00 	l.add r17,r17,r6
    24a0:	e4 46 88 00 	l.sfgtu r6,r17
    24a4:	10 00 00 25 	l.bf 2538 <__udivdi3+0x590>
    24a8:	9f 6b ff ff 	l.addi r27,r11,-1
    24ac:	e4 bd 88 00 	l.sfleu r29,r17
    24b0:	10 00 00 22 	l.bf 2538 <__udivdi3+0x590>
    24b4:	15 00 00 00 	l.nop 0x0
    24b8:	9d 6b ff fe 	l.addi r11,r11,-2
    24bc:	e2 31 30 00 	l.add r17,r17,r6
    24c0:	e2 31 e8 02 	l.sub r17,r17,r29
    24c4:	e3 71 bb 0a 	l.divu r27,r17,r23
    24c8:	e3 bb bb 06 	l.mul r29,r27,r23
    24cc:	e2 31 e8 02 	l.sub r17,r17,r29
    24d0:	ab a0 00 10 	l.ori r29,r0,0x10
    24d4:	e0 71 e8 08 	l.sll r3,r17,r29
    24d8:	a6 b5 ff ff 	l.andi r21,r21,0xffff
    24dc:	e2 39 db 06 	l.mul r17,r25,r27
    24e0:	e0 63 a8 04 	l.or r3,r3,r21
    24e4:	e4 b1 18 00 	l.sfleu r17,r3
    24e8:	10 00 00 0b 	l.bf 2514 <__udivdi3+0x56c>
    24ec:	15 00 00 00 	l.nop 0x0
    24f0:	e0 63 30 00 	l.add r3,r3,r6
    24f4:	e4 46 18 00 	l.sfgtu r6,r3
    24f8:	10 00 00 0c 	l.bf 2528 <__udivdi3+0x580>
    24fc:	9e bb ff ff 	l.addi r21,r27,-1
    2500:	e4 b1 18 00 	l.sfleu r17,r3
    2504:	10 00 00 09 	l.bf 2528 <__udivdi3+0x580>
    2508:	15 00 00 00 	l.nop 0x0
    250c:	9f 7b ff fe 	l.addi r27,r27,-2
    2510:	e0 63 30 00 	l.add r3,r3,r6
    2514:	aa a0 00 10 	l.ori r21,r0,0x10
    2518:	e1 6b a8 08 	l.sll r11,r11,r21
    251c:	e0 63 88 02 	l.sub r3,r3,r17
    2520:	03 ff ff 30 	l.j 21e0 <__udivdi3+0x238>
    2524:	e1 6b d8 04 	l.or r11,r11,r27
    2528:	03 ff ff fb 	l.j 2514 <__udivdi3+0x56c>
    252c:	e3 75 a8 04 	l.or r27,r21,r21
    2530:	03 ff ff a2 	l.j 23b8 <__udivdi3+0x410>
    2534:	e2 b3 98 04 	l.or r21,r19,r19
    2538:	03 ff ff e2 	l.j 24c0 <__udivdi3+0x518>
    253c:	e1 7b d8 04 	l.or r11,r27,r27
    2540:	03 ff ff 89 	l.j 2364 <__udivdi3+0x3bc>
    2544:	e1 9f f8 04 	l.or r12,r31,r31
    2548:	19 80 00 00 	l.movhi r12,0x0
    254c:	03 ff ff 07 	l.j 2168 <__udivdi3+0x1c0>
    2550:	19 60 00 00 	l.movhi r11,0x0
    2554:	03 ff ff 36 	l.j 222c <__udivdi3+0x284>
    2558:	e0 63 30 00 	l.add r3,r3,r6
    255c:	03 ff fe c9 	l.j 2080 <__udivdi3+0xd8>
    2560:	e2 31 30 00 	l.add r17,r17,r6

00002564 <__umoddi3>:
    2564:	1a e0 00 00 	l.movhi r23,0x0
    2568:	e4 25 b8 00 	l.sfne r5,r23
    256c:	e2 64 20 04 	l.or r19,r4,r4
    2570:	e2 a3 18 04 	l.or r21,r3,r3
    2574:	10 00 00 33 	l.bf 2640 <__umoddi3+0xdc>
    2578:	e2 23 18 04 	l.or r17,r3,r3
    257c:	e4 a6 18 00 	l.sfleu r6,r3
    2580:	10 00 00 5a 	l.bf 26e8 <__umoddi3+0x184>
    2584:	aa a0 ff ff 	l.ori r21,r0,0xffff
    2588:	e4 46 a8 00 	l.sfgtu r6,r21
    258c:	0c 00 00 9b 	l.bnf 27f8 <__umoddi3+0x294>
    2590:	aa a0 00 ff 	l.ori r21,r0,0xff
    2594:	1a a0 00 ff 	l.movhi r21,0xff
    2598:	aa b5 ff ff 	l.ori r21,r21,0xffff
    259c:	e4 46 a8 00 	l.sfgtu r6,r21
    25a0:	10 00 00 03 	l.bf 25ac <__umoddi3+0x48>
    25a4:	aa e0 00 18 	l.ori r23,r0,0x18
    25a8:	aa e0 00 10 	l.ori r23,r0,0x10
    25ac:	1a a0 00 00 	l.movhi r21,0x0
    25b0:	e3 26 b8 48 	l.srl r25,r6,r23
    25b4:	9e b5 2c e8 	l.addi r21,r21,11496
    25b8:	e2 b5 c8 00 	l.add r21,r21,r25
    25bc:	8e b5 00 00 	l.lbz r21,0(r21)
    25c0:	e2 b5 b8 00 	l.add r21,r21,r23
    25c4:	ab 20 00 20 	l.ori r25,r0,0x20
    25c8:	e4 19 a8 00 	l.sfeq r25,r21
    25cc:	10 00 00 07 	l.bf 25e8 <__umoddi3+0x84>
    25d0:	e2 f9 a8 02 	l.sub r23,r25,r21
    25d4:	e2 23 b8 08 	l.sll r17,r3,r23
    25d8:	e2 a4 a8 48 	l.srl r21,r4,r21
    25dc:	e0 c6 b8 08 	l.sll r6,r6,r23
    25e0:	e2 35 88 04 	l.or r17,r21,r17
    25e4:	e2 64 b8 08 	l.sll r19,r4,r23
    25e8:	ab e0 00 10 	l.ori r31,r0,0x10
    25ec:	e3 26 f8 48 	l.srl r25,r6,r31
    25f0:	e3 b1 cb 0a 	l.divu r29,r17,r25
    25f4:	e2 bd cb 06 	l.mul r21,r29,r25
    25f8:	e2 31 a8 02 	l.sub r17,r17,r21
    25fc:	e2 b1 f8 08 	l.sll r21,r17,r31
    2600:	a7 66 ff ff 	l.andi r27,r6,0xffff
    2604:	e2 33 f8 48 	l.srl r17,r19,r31
    2608:	e3 bb eb 06 	l.mul r29,r27,r29
    260c:	e2 35 88 04 	l.or r17,r21,r17
    2610:	e4 bd 88 00 	l.sfleu r29,r17
    2614:	10 00 00 09 	l.bf 2638 <__umoddi3+0xd4>
    2618:	15 00 00 00 	l.nop 0x0
    261c:	e2 31 30 00 	l.add r17,r17,r6
    2620:	e4 46 88 00 	l.sfgtu r6,r17
    2624:	10 00 00 05 	l.bf 2638 <__umoddi3+0xd4>
    2628:	e4 bd 88 00 	l.sfleu r29,r17
    262c:	10 00 00 03 	l.bf 2638 <__umoddi3+0xd4>
    2630:	15 00 00 00 	l.nop 0x0
    2634:	e2 31 30 00 	l.add r17,r17,r6
    2638:	00 00 00 59 	l.j 279c <__umoddi3+0x238>
    263c:	e2 31 e8 02 	l.sub r17,r17,r29
    2640:	e4 a5 18 00 	l.sfleu r5,r3
    2644:	10 00 00 06 	l.bf 265c <__umoddi3+0xf8>
    2648:	e3 64 20 04 	l.or r27,r4,r4
    264c:	e1 63 18 04 	l.or r11,r3,r3
    2650:	e1 84 20 04 	l.or r12,r4,r4
    2654:	44 00 48 00 	l.jr r9
    2658:	15 00 00 00 	l.nop 0x0
    265c:	aa 20 ff ff 	l.ori r17,r0,0xffff
    2660:	e4 45 88 00 	l.sfgtu r5,r17
    2664:	0c 00 00 76 	l.bnf 283c <__umoddi3+0x2d8>
    2668:	aa 20 00 ff 	l.ori r17,r0,0xff
    266c:	1a 20 00 ff 	l.movhi r17,0xff
    2670:	aa 31 ff ff 	l.ori r17,r17,0xffff
    2674:	e4 45 88 00 	l.sfgtu r5,r17
    2678:	10 00 00 03 	l.bf 2684 <__umoddi3+0x120>
    267c:	aa 60 00 18 	l.ori r19,r0,0x18
    2680:	aa 60 00 10 	l.ori r19,r0,0x10
    2684:	1a 20 00 00 	l.movhi r17,0x0
    2688:	e2 e5 98 48 	l.srl r23,r5,r19
    268c:	9e 31 2c e8 	l.addi r17,r17,11496
    2690:	e2 31 b8 00 	l.add r17,r17,r23
    2694:	8e f1 00 00 	l.lbz r23,0(r17)
    2698:	e2 f7 98 00 	l.add r23,r23,r19
    269c:	aa 20 00 20 	l.ori r17,r0,0x20
    26a0:	e4 31 b8 00 	l.sfne r17,r23
    26a4:	10 00 00 9b 	l.bf 2910 <__umoddi3+0x3ac>
    26a8:	e3 31 b8 02 	l.sub r25,r17,r23
    26ac:	e4 85 18 00 	l.sfltu r5,r3
    26b0:	10 00 00 04 	l.bf 26c0 <__umoddi3+0x15c>
    26b4:	e4 46 20 00 	l.sfgtu r6,r4
    26b8:	10 00 00 09 	l.bf 26dc <__umoddi3+0x178>
    26bc:	e1 75 a8 04 	l.or r11,r21,r21
    26c0:	e3 64 30 02 	l.sub r27,r4,r6
    26c4:	e4 84 d8 00 	l.sfltu r4,r27
    26c8:	e0 a3 28 02 	l.sub r5,r3,r5
    26cc:	0c 00 00 f9 	l.bnf 2ab0 <__umoddi3+0x54c>
    26d0:	aa a0 00 01 	l.ori r21,r0,0x1
    26d4:	e2 a5 a8 02 	l.sub r21,r5,r21
    26d8:	e1 75 a8 04 	l.or r11,r21,r21
    26dc:	e1 9b d8 04 	l.or r12,r27,r27
    26e0:	44 00 48 00 	l.jr r9
    26e4:	15 00 00 00 	l.nop 0x0
    26e8:	1a 20 00 00 	l.movhi r17,0x0
    26ec:	e4 26 88 00 	l.sfne r6,r17
    26f0:	10 00 00 49 	l.bf 2814 <__umoddi3+0x2b0>
    26f4:	aa 20 ff ff 	l.ori r17,r0,0xffff
    26f8:	aa 20 00 01 	l.ori r17,r0,0x1
    26fc:	e0 d1 33 0a 	l.divu r6,r17,r6
    2700:	aa 20 00 ff 	l.ori r17,r0,0xff
    2704:	e4 46 88 00 	l.sfgtu r6,r17
    2708:	10 00 00 03 	l.bf 2714 <__umoddi3+0x1b0>
    270c:	aa a0 00 01 	l.ori r21,r0,0x1
    2710:	1a a0 00 00 	l.movhi r21,0x0
    2714:	aa 20 00 03 	l.ori r17,r0,0x3
    2718:	e2 b5 88 08 	l.sll r21,r21,r17
    271c:	1a 20 00 00 	l.movhi r17,0x0
    2720:	e2 e6 a8 48 	l.srl r23,r6,r21
    2724:	9e 31 2c e8 	l.addi r17,r17,11496
    2728:	e2 31 b8 00 	l.add r17,r17,r23
    272c:	8e 31 00 00 	l.lbz r17,0(r17)
    2730:	e2 31 a8 00 	l.add r17,r17,r21
    2734:	aa a0 00 20 	l.ori r21,r0,0x20
    2738:	e4 35 88 00 	l.sfne r21,r17
    273c:	10 00 00 47 	l.bf 2858 <__umoddi3+0x2f4>
    2740:	e2 f5 88 02 	l.sub r23,r21,r17
    2744:	aa a0 00 10 	l.ori r21,r0,0x10
    2748:	e2 23 30 02 	l.sub r17,r3,r6
    274c:	e3 26 a8 48 	l.srl r25,r6,r21
    2750:	a7 66 ff ff 	l.andi r27,r6,0xffff
    2754:	e2 b1 cb 0a 	l.divu r21,r17,r25
    2758:	e3 b5 cb 06 	l.mul r29,r21,r25
    275c:	e2 31 e8 02 	l.sub r17,r17,r29
    2760:	ab a0 00 10 	l.ori r29,r0,0x10
    2764:	e2 31 e8 08 	l.sll r17,r17,r29
    2768:	e3 b3 e8 48 	l.srl r29,r19,r29
    276c:	e2 b5 db 06 	l.mul r21,r21,r27
    2770:	e2 31 e8 04 	l.or r17,r17,r29
    2774:	e4 b5 88 00 	l.sfleu r21,r17
    2778:	10 00 00 08 	l.bf 2798 <__umoddi3+0x234>
    277c:	15 00 00 00 	l.nop 0x0
    2780:	e2 31 30 00 	l.add r17,r17,r6
    2784:	e4 46 88 00 	l.sfgtu r6,r17
    2788:	10 00 00 04 	l.bf 2798 <__umoddi3+0x234>
    278c:	e4 b5 88 00 	l.sfleu r21,r17
    2790:	0c 00 00 d1 	l.bnf 2ad4 <__umoddi3+0x570>
    2794:	15 00 00 00 	l.nop 0x0
    2798:	e2 31 a8 02 	l.sub r17,r17,r21
    279c:	e2 b1 cb 0a 	l.divu r21,r17,r25
    27a0:	e3 35 cb 06 	l.mul r25,r21,r25
    27a4:	e2 31 c8 02 	l.sub r17,r17,r25
    27a8:	ab 20 00 10 	l.ori r25,r0,0x10
    27ac:	e1 91 c8 08 	l.sll r12,r17,r25
    27b0:	a6 73 ff ff 	l.andi r19,r19,0xffff
    27b4:	e2 35 db 06 	l.mul r17,r21,r27
    27b8:	e1 8c 98 04 	l.or r12,r12,r19
    27bc:	e4 b1 60 00 	l.sfleu r17,r12
    27c0:	10 00 00 09 	l.bf 27e4 <__umoddi3+0x280>
    27c4:	15 00 00 00 	l.nop 0x0
    27c8:	e1 8c 30 00 	l.add r12,r12,r6
    27cc:	e4 46 60 00 	l.sfgtu r6,r12
    27d0:	10 00 00 05 	l.bf 27e4 <__umoddi3+0x280>
    27d4:	e4 b1 60 00 	l.sfleu r17,r12
    27d8:	10 00 00 03 	l.bf 27e4 <__umoddi3+0x280>
    27dc:	15 00 00 00 	l.nop 0x0
    27e0:	e1 8c 30 00 	l.add r12,r12,r6
    27e4:	e1 8c 88 02 	l.sub r12,r12,r17
    27e8:	19 60 00 00 	l.movhi r11,0x0
    27ec:	e1 8c b8 48 	l.srl r12,r12,r23
    27f0:	44 00 48 00 	l.jr r9
    27f4:	15 00 00 00 	l.nop 0x0
    27f8:	e4 46 a8 00 	l.sfgtu r6,r21
    27fc:	10 00 00 03 	l.bf 2808 <__umoddi3+0x2a4>
    2800:	aa e0 00 01 	l.ori r23,r0,0x1
    2804:	1a e0 00 00 	l.movhi r23,0x0
    2808:	aa a0 00 03 	l.ori r21,r0,0x3
    280c:	03 ff ff 68 	l.j 25ac <__umoddi3+0x48>
    2810:	e2 f7 a8 08 	l.sll r23,r23,r21
    2814:	e4 46 88 00 	l.sfgtu r6,r17
    2818:	0f ff ff bb 	l.bnf 2704 <__umoddi3+0x1a0>
    281c:	aa 20 00 ff 	l.ori r17,r0,0xff
    2820:	1a 20 00 ff 	l.movhi r17,0xff
    2824:	aa 31 ff ff 	l.ori r17,r17,0xffff
    2828:	e4 46 88 00 	l.sfgtu r6,r17
    282c:	13 ff ff bc 	l.bf 271c <__umoddi3+0x1b8>
    2830:	aa a0 00 18 	l.ori r21,r0,0x18
    2834:	03 ff ff ba 	l.j 271c <__umoddi3+0x1b8>
    2838:	aa a0 00 10 	l.ori r21,r0,0x10
    283c:	e4 45 88 00 	l.sfgtu r5,r17
    2840:	10 00 00 03 	l.bf 284c <__umoddi3+0x2e8>
    2844:	aa 60 00 01 	l.ori r19,r0,0x1
    2848:	1a 60 00 00 	l.movhi r19,0x0
    284c:	aa 20 00 03 	l.ori r17,r0,0x3
    2850:	03 ff ff 8d 	l.j 2684 <__umoddi3+0x120>
    2854:	e2 73 88 08 	l.sll r19,r19,r17
    2858:	ab e0 00 10 	l.ori r31,r0,0x10
    285c:	e0 c6 b8 08 	l.sll r6,r6,r23
    2860:	e2 a3 88 48 	l.srl r21,r3,r17
    2864:	e3 26 f8 48 	l.srl r25,r6,r31
    2868:	e3 b5 cb 0a 	l.divu r29,r21,r25
    286c:	e2 7d cb 06 	l.mul r19,r29,r25
    2870:	e0 63 b8 08 	l.sll r3,r3,r23
    2874:	e2 24 88 48 	l.srl r17,r4,r17
    2878:	e2 b5 98 02 	l.sub r21,r21,r19
    287c:	e2 31 18 04 	l.or r17,r17,r3
    2880:	e2 71 f8 48 	l.srl r19,r17,r31
    2884:	a7 66 ff ff 	l.andi r27,r6,0xffff
    2888:	e2 b5 f8 08 	l.sll r21,r21,r31
    288c:	e2 b5 98 04 	l.or r21,r21,r19
    2890:	e3 bb eb 06 	l.mul r29,r27,r29
    2894:	e4 bd a8 00 	l.sfleu r29,r21
    2898:	10 00 00 09 	l.bf 28bc <__umoddi3+0x358>
    289c:	e2 64 b8 08 	l.sll r19,r4,r23
    28a0:	e2 b5 30 00 	l.add r21,r21,r6
    28a4:	e4 46 a8 00 	l.sfgtu r6,r21
    28a8:	10 00 00 05 	l.bf 28bc <__umoddi3+0x358>
    28ac:	e4 bd a8 00 	l.sfleu r29,r21
    28b0:	10 00 00 03 	l.bf 28bc <__umoddi3+0x358>
    28b4:	15 00 00 00 	l.nop 0x0
    28b8:	e2 b5 30 00 	l.add r21,r21,r6
    28bc:	e2 b5 e8 02 	l.sub r21,r21,r29
    28c0:	e3 b5 cb 0a 	l.divu r29,r21,r25
    28c4:	e3 fd cb 06 	l.mul r31,r29,r25
    28c8:	e2 b5 f8 02 	l.sub r21,r21,r31
    28cc:	ab e0 00 10 	l.ori r31,r0,0x10
    28d0:	e2 b5 f8 08 	l.sll r21,r21,r31
    28d4:	a6 31 ff ff 	l.andi r17,r17,0xffff
    28d8:	e3 bb eb 06 	l.mul r29,r27,r29
    28dc:	e2 35 88 04 	l.or r17,r21,r17
    28e0:	e4 bd 88 00 	l.sfleu r29,r17
    28e4:	10 00 00 09 	l.bf 2908 <__umoddi3+0x3a4>
    28e8:	15 00 00 00 	l.nop 0x0
    28ec:	e2 31 30 00 	l.add r17,r17,r6
    28f0:	e4 46 88 00 	l.sfgtu r6,r17
    28f4:	10 00 00 05 	l.bf 2908 <__umoddi3+0x3a4>
    28f8:	e4 bd 88 00 	l.sfleu r29,r17
    28fc:	10 00 00 03 	l.bf 2908 <__umoddi3+0x3a4>
    2900:	15 00 00 00 	l.nop 0x0
    2904:	e2 31 30 00 	l.add r17,r17,r6
    2908:	03 ff ff 93 	l.j 2754 <__umoddi3+0x1f0>
    290c:	e2 31 e8 02 	l.sub r17,r17,r29
    2910:	e3 a6 b8 48 	l.srl r29,r6,r23
    2914:	e0 a5 c8 08 	l.sll r5,r5,r25
    2918:	a9 a0 00 10 	l.ori r13,r0,0x10
    291c:	e3 bd 28 04 	l.or r29,r29,r5
    2920:	e2 23 b8 48 	l.srl r17,r3,r23
    2924:	e2 7d 68 48 	l.srl r19,r29,r13
    2928:	e2 b1 9b 0a 	l.divu r21,r17,r19
    292c:	e3 75 9b 06 	l.mul r27,r21,r19
    2930:	e0 63 c8 08 	l.sll r3,r3,r25
    2934:	e3 e4 b8 48 	l.srl r31,r4,r23
    2938:	e2 31 d8 02 	l.sub r17,r17,r27
    293c:	e3 ff 18 04 	l.or r31,r31,r3
    2940:	e3 71 68 08 	l.sll r27,r17,r13
    2944:	a5 fd ff ff 	l.andi r15,r29,0xffff
    2948:	e2 3f 68 48 	l.srl r17,r31,r13
    294c:	e1 8f ab 06 	l.mul r12,r15,r21
    2950:	e2 3b 88 04 	l.or r17,r27,r17
    2954:	e4 ac 88 00 	l.sfleu r12,r17
    2958:	e0 c6 c8 08 	l.sll r6,r6,r25
    295c:	10 00 00 0b 	l.bf 2988 <__umoddi3+0x424>
    2960:	e1 a4 c8 08 	l.sll r13,r4,r25
    2964:	e2 31 e8 00 	l.add r17,r17,r29
    2968:	e4 5d 88 00 	l.sfgtu r29,r17
    296c:	10 00 00 58 	l.bf 2acc <__umoddi3+0x568>
    2970:	9f 75 ff ff 	l.addi r27,r21,-1
    2974:	e4 ac 88 00 	l.sfleu r12,r17
    2978:	10 00 00 55 	l.bf 2acc <__umoddi3+0x568>
    297c:	15 00 00 00 	l.nop 0x0
    2980:	9e b5 ff fe 	l.addi r21,r21,-2
    2984:	e2 31 e8 00 	l.add r17,r17,r29
    2988:	e2 31 60 02 	l.sub r17,r17,r12
    298c:	e3 71 9b 0a 	l.divu r27,r17,r19
    2990:	e2 7b 9b 06 	l.mul r19,r27,r19
    2994:	e2 31 98 02 	l.sub r17,r17,r19
    2998:	aa 60 00 10 	l.ori r19,r0,0x10
    299c:	e2 71 98 08 	l.sll r19,r17,r19
    29a0:	a7 ff ff ff 	l.andi r31,r31,0xffff
    29a4:	e1 ef db 06 	l.mul r15,r15,r27
    29a8:	e2 73 f8 04 	l.or r19,r19,r31
    29ac:	e4 af 98 00 	l.sfleu r15,r19
    29b0:	10 00 00 0b 	l.bf 29dc <__umoddi3+0x478>
    29b4:	15 00 00 00 	l.nop 0x0
    29b8:	e2 73 e8 00 	l.add r19,r19,r29
    29bc:	e4 5d 98 00 	l.sfgtu r29,r19
    29c0:	10 00 00 41 	l.bf 2ac4 <__umoddi3+0x560>
    29c4:	9e 3b ff ff 	l.addi r17,r27,-1
    29c8:	e4 af 98 00 	l.sfleu r15,r19
    29cc:	10 00 00 3e 	l.bf 2ac4 <__umoddi3+0x560>
    29d0:	15 00 00 00 	l.nop 0x0
    29d4:	9f 7b ff fe 	l.addi r27,r27,-2
    29d8:	e2 73 e8 00 	l.add r19,r19,r29
    29dc:	aa 20 00 10 	l.ori r17,r0,0x10
    29e0:	e2 b5 88 08 	l.sll r21,r21,r17
    29e4:	e2 b5 d8 04 	l.or r21,r21,r27
    29e8:	e2 b5 88 48 	l.srl r21,r21,r17
    29ec:	e1 66 88 48 	l.srl r11,r6,r17
    29f0:	a7 7b ff ff 	l.andi r27,r27,0xffff
    29f4:	a7 e6 ff ff 	l.andi r31,r6,0xffff
    29f8:	e1 9b fb 06 	l.mul r12,r27,r31
    29fc:	e3 f5 fb 06 	l.mul r31,r21,r31
    2a00:	e3 7b 5b 06 	l.mul r27,r27,r11
    2a04:	e3 7b f8 00 	l.add r27,r27,r31
    2a08:	e2 2c 88 48 	l.srl r17,r12,r17
    2a0c:	e2 31 d8 00 	l.add r17,r17,r27
    2a10:	e4 bf 88 00 	l.sfleu r31,r17
    2a14:	e2 73 78 02 	l.sub r19,r19,r15
    2a18:	10 00 00 04 	l.bf 2a28 <__umoddi3+0x4c4>
    2a1c:	e2 b5 5b 06 	l.mul r21,r21,r11
    2a20:	1b 60 00 01 	l.movhi r27,0x1
    2a24:	e2 b5 d8 00 	l.add r21,r21,r27
    2a28:	ab e0 00 10 	l.ori r31,r0,0x10
    2a2c:	e3 71 f8 48 	l.srl r27,r17,r31
    2a30:	e2 bb a8 00 	l.add r21,r27,r21
    2a34:	e2 31 f8 08 	l.sll r17,r17,r31
    2a38:	a5 8c ff ff 	l.andi r12,r12,0xffff
    2a3c:	e4 93 a8 00 	l.sfltu r19,r21
    2a40:	10 00 00 14 	l.bf 2a90 <__umoddi3+0x52c>
    2a44:	e2 31 60 00 	l.add r17,r17,r12
    2a48:	e4 33 a8 00 	l.sfne r19,r21
    2a4c:	0c 00 00 0f 	l.bnf 2a88 <__umoddi3+0x524>
    2a50:	e4 6d 88 00 	l.sfgeu r13,r17
    2a54:	e2 2d 88 02 	l.sub r17,r13,r17
    2a58:	e4 8d 88 00 	l.sfltu r13,r17
    2a5c:	e1 73 a8 02 	l.sub r11,r19,r21
    2a60:	10 00 00 03 	l.bf 2a6c <__umoddi3+0x508>
    2a64:	aa 60 00 01 	l.ori r19,r0,0x1
    2a68:	1a 60 00 00 	l.movhi r19,0x0
    2a6c:	e1 6b 98 02 	l.sub r11,r11,r19
    2a70:	e2 eb b8 08 	l.sll r23,r11,r23
    2a74:	e2 31 c8 48 	l.srl r17,r17,r25
    2a78:	e1 6b c8 48 	l.srl r11,r11,r25
    2a7c:	e1 97 88 04 	l.or r12,r23,r17
    2a80:	44 00 48 00 	l.jr r9
    2a84:	15 00 00 00 	l.nop 0x0
    2a88:	13 ff ff f3 	l.bf 2a54 <__umoddi3+0x4f0>
    2a8c:	15 00 00 00 	l.nop 0x0
    2a90:	e0 d1 30 02 	l.sub r6,r17,r6
    2a94:	e4 91 30 00 	l.sfltu r17,r6
    2a98:	0c 00 00 09 	l.bnf 2abc <__umoddi3+0x558>
    2a9c:	aa 20 00 01 	l.ori r17,r0,0x1
    2aa0:	e2 31 e8 00 	l.add r17,r17,r29
    2aa4:	e2 b5 88 02 	l.sub r21,r21,r17
    2aa8:	03 ff ff eb 	l.j 2a54 <__umoddi3+0x4f0>
    2aac:	e2 26 30 04 	l.or r17,r6,r6
    2ab0:	1a a0 00 00 	l.movhi r21,0x0
    2ab4:	03 ff ff 09 	l.j 26d8 <__umoddi3+0x174>
    2ab8:	e2 a5 a8 02 	l.sub r21,r5,r21
    2abc:	03 ff ff f9 	l.j 2aa0 <__umoddi3+0x53c>
    2ac0:	1a 20 00 00 	l.movhi r17,0x0
    2ac4:	03 ff ff c6 	l.j 29dc <__umoddi3+0x478>
    2ac8:	e3 71 88 04 	l.or r27,r17,r17
    2acc:	03 ff ff af 	l.j 2988 <__umoddi3+0x424>
    2ad0:	e2 bb d8 04 	l.or r21,r27,r27
    2ad4:	03 ff ff 31 	l.j 2798 <__umoddi3+0x234>
    2ad8:	e2 31 30 00 	l.add r17,r17,r6

Déassemblage de la section .rodata :

00002adc <__clz_tab-0x20c>:
    2adc:	53 74 61 72 	*inconnu*
    2ae0:	74 69 6e 67 	*inconnu*
    2ae4:	20 64 72 61 	*inconnu*
    2ae8:	77 69 6e 67 	*inconnu*
    2aec:	20 61 20 66 	*inconnu*
    2af0:	72 61 63 74 	l.nios_crc r19,r1,r12,0x74
    2af4:	61 6c 0a 00 	*inconnu*
    2af8:	56 61 6c 75 	*inconnu*
    2afc:	65 20 6f 66 	*inconnu*
    2b00:	20 62 75 66 	*inconnu*
    2b04:	66 65 72 20 	*inconnu*
    2b08:	3a 20 25 64 	*inconnu*
    2b0c:	20 0a 00 56 	*inconnu*
    2b10:	61 6c 75 65 	*inconnu*
    2b14:	20 6f 66 20 	*inconnu*
    2b18:	72 65 67 69 	l.nios_ccc r19,r5,r12,0x69
    2b1c:	73 74 65 72 	l.nios_ccr r27,r20,r12,0x72
    2b20:	20 25 78 20 	*inconnu*
    2b24:	0a 00 56 61 	l.adrp r16,acc4000 <_end+0xac3f1d4>
    2b28:	6c 75 65 20 	l.lwa r3,25888(r21)
    2b2c:	69 6e 20 66 	*inconnu*
    2b30:	72 61 6d 65 	l.nios_ccr r19,r1,r13,0x65
    2b34:	42 75 66 66 	*inconnu*
    2b38:	65 72 20 69 	*inconnu*
    2b3c:	73 20 3a 20 	l.nios_rrc r25,r0,r7,0x20
    2b40:	25 78 20 0a 	*inconnu*
    2b44:	00 44 6f 6e 	l.j 111e8fc <_end+0x1099ad0>
    2b48:	65 0a 00 49 	*inconnu*
    2b4c:	24 20 6d 69 	*inconnu*
    2b50:	73 73 65 73 	l.nios_ccr r27,r19,r12,0x73
    2b54:	00 44 24 20 	l.j 110bbd4 <_end+0x1086da8>
    2b58:	6d 69 73 73 	l.lwa r11,29555(r9)
    2b5c:	65 73 00 53 	*inconnu*
    2b60:	74 61 6c 6c 	*inconnu*
    2b64:	20 74 69 6d 	*inconnu*
    2b68:	65 00 42 75 	*inconnu*
    2b6c:	73 20 69 64 	l.nios_crr r25,r0,r13,0x64
    2b70:	6c 65 20 74 	l.lwa r3,8308(r5)
    2b74:	69 6d 65 00 	*inconnu*
    2b78:	52 75 6e 74 	*inconnu*
    2b7c:	69 6d 65 00 	*inconnu*
    2b80:	64 65 61 64 	*inconnu*
    2b84:	21 00 62 75 	l.trap 0x6275
    2b88:	73 20 65 72 	l.nios_ccr r25,r0,r12,0x72
    2b8c:	72 6f 72 21 	l.nios_rrc r19,r15,r14,0x21
    2b90:	00 44 61 74 	l.j 111b160 <_end+0x1096334>
    2b94:	61 20 70 61 	*inconnu*
    2b98:	67 65 20 66 	*inconnu*
    2b9c:	61 75 6c 74 	*inconnu*
    2ba0:	00 69 20 70 	l.j 1a4ad60 <_end+0x19c5f34>
    2ba4:	61 67 65 20 	*inconnu*
    2ba8:	66 61 75 6c 	*inconnu*
    2bac:	74 00 74 69 	*inconnu*
    2bb0:	63 6b 00 61 	*inconnu*
    2bb4:	6c 6c 69 67 	l.lwa r3,26983(r12)
    2bb8:	21 00 3f 3f 	l.trap 0x3f3f
    2bbc:	3f 3f 20 00 	*inconnu*
    2bc0:	70 69 6e 67 	l.nios_rcc r3,r9,r13,0x67
    2bc4:	00 64 74 6c 	l.j 191fd74 <_end+0x189af48>
    2bc8:	62 00 69 74 	*inconnu*
    2bcc:	6c 62 00 52 	l.lwa r3,82(r2)
    2bd0:	61 6e 67 65 	*inconnu*
    2bd4:	21 00 53 79 	l.trap 0x5379
    2bd8:	73 63 61 6c 	l.nios_crr r27,r3,r12,0x6c
    2bdc:	6c 00 54 72 	l.lwa r0,21618(r0)
    2be0:	61 70 21 00 	*inconnu*
    2be4:	45 50 43 52 	*inconnu*
    2be8:	20 3d 20 30 	*inconnu*
    2bec:	78 25 30 38 	*inconnu*
    2bf0:	58 0a 00 45 	*inconnu*
    2bf4:	45 41 52 20 	*inconnu*
    2bf8:	3d 20 30 78 	*inconnu*
    2bfc:	25 30 38 58 	*inconnu*
    2c00:	0a 00 45 53 	l.adrp r16,8aa8000 <_end+0x8a231d4>
    2c04:	52 20 20 3d 	*inconnu*
    2c08:	20 30 78 25 	*inconnu*
    2c0c:	30 38 58 0a 	*inconnu*
    2c10:	00 49 6e 73 	l.j 125e5dc <_end+0x11d97b0>
    2c14:	74 72 75 63 	*inconnu*
    2c18:	74 69 6f 6e 	*inconnu*
    2c1c:	20 3d 20 30 	*inconnu*
    2c20:	78 25 30 38 	*inconnu*
    2c24:	58 0a 00 42 	*inconnu*
    2c28:	72 65 61 6b 	l.nios_crr r19,r5,r12,0x6b
    2c2c:	00 5b 20 41 	l.j 16cad30 <_end+0x1645f04>
    2c30:	53 53 45 52 	*inconnu*
    2c34:	54 20 5d 20 	*inconnu*
    2c38:	63 70 75 5f 	*inconnu*
    2c3c:	66 72 65 71 	*inconnu*
    2c40:	20 21 3d 20 	*inconnu*
    2c44:	30 20 28 66 	*inconnu*
    2c48:	72 6f 6d 20 	l.nios_ccr r19,r15,r13,0x20
    2c4c:	73 75 70 70 	l.nios_rrr r27,r21,r14,0x70
    2c50:	6f 72 74 2f 	l.lwa r27,29743(r18)
    2c54:	73 72 63 2f 	l.nios_crc r27,r18,r12,0x2f
    2c58:	70 65 72 66 	l.nios_rrc r3,r5,r14,0x66
    2c5c:	2e 63 3a 33 	*inconnu*
    2c60:	31 29 0a 00 	*inconnu*
    2c64:	63 70 75 20 	*inconnu*
    2c68:	66 72 65 71 	*inconnu*
    2c6c:	75 65 6e 63 	*inconnu*
    2c70:	79 20 69 73 	*inconnu*
    2c74:	20 6e 6f 74 	*inconnu*
    2c78:	20 69 6e 69 	*inconnu*
    2c7c:	74 69 61 6c 	*inconnu*
    2c80:	69 7a 65 64 	*inconnu*
    2c84:	2c 20 63 61 	*inconnu*
    2c88:	6c 6c 20 70 	l.lwa r3,8304(r12)
    2c8c:	65 72 66 5f 	*inconnu*
    2c90:	69 6e 69 74 	*inconnu*
    2c94:	28 29 20 66 	*inconnu*
    2c98:	69 72 73 74 	*inconnu*
    2c9c:	21 00 6e 6f 	l.trap 0x6e6f
    2ca0:	20 64 65 73 	*inconnu*
    2ca4:	63 00 25 2d 	*inconnu*
    2ca8:	33 32 73 20 	*inconnu*
    2cac:	5b 25 30 32 	*inconnu*
    2cb0:	64 5d 20 3a 	*inconnu*
    2cb4:	20 25 6c 6c 	*inconnu*
    2cb8:	64 20 63 79 	*inconnu*
    2cbc:	63 6c 65 73 	*inconnu*
    2cc0:	0a 00 25 2d 	l.adrp r16,4a5c000 <_end+0x49d71d4>
    2cc4:	33 32 73 20 	*inconnu*
    2cc8:	5b 25 30 32 	*inconnu*
    2ccc:	64 5d 20 3a 	*inconnu*
    2cd0:	20 25 30 32 	*inconnu*
    2cd4:	75 3a 25 30 	*inconnu*
    2cd8:	32 75 3a 25 	*inconnu*
    2cdc:	30 32 75 2e 	*inconnu*
    2ce0:	25 30 33 75 	*inconnu*
    2ce4:	0a 00 00 00 	l.adrp r16,2000 <__udivdi3+0x58>

00002ce8 <__clz_tab>:
    2ce8:	00 01 02 02 	l.j 434f0 <frameBuffer+0x3e6c8>
    2cec:	03 03 03 03 	l.j fc0c38f8 <_end+0xfc03eacc>
    2cf0:	04 04 04 04 	l.jal 103d00 <_end+0x7eed4>
    2cf4:	04 04 04 04 	l.jal 103d04 <_end+0x7eed8>
    2cf8:	05 05 05 05 	l.jal 414410c <_end+0x40bf2e0>
    2cfc:	05 05 05 05 	l.jal 4144110 <_end+0x40bf2e4>
    2d00:	05 05 05 05 	l.jal 4144114 <_end+0x40bf2e8>
    2d04:	05 05 05 05 	l.jal 4144118 <_end+0x40bf2ec>
    2d08:	06 06 06 06 	l.jal f8184520 <_end+0xf80ff6f4>
    2d0c:	06 06 06 06 	l.jal f8184524 <_end+0xf80ff6f8>
    2d10:	06 06 06 06 	l.jal f8184528 <_end+0xf80ff6fc>
    2d14:	06 06 06 06 	l.jal f818452c <_end+0xf80ff700>
    2d18:	06 06 06 06 	l.jal f8184530 <_end+0xf80ff704>
    2d1c:	06 06 06 06 	l.jal f8184534 <_end+0xf80ff708>
    2d20:	06 06 06 06 	l.jal f8184538 <_end+0xf80ff70c>
    2d24:	06 06 06 06 	l.jal f818453c <_end+0xf80ff710>
    2d28:	07 07 07 07 	l.jal fc1c4944 <_end+0xfc13fb18>
    2d2c:	07 07 07 07 	l.jal fc1c4948 <_end+0xfc13fb1c>
    2d30:	07 07 07 07 	l.jal fc1c494c <_end+0xfc13fb20>
    2d34:	07 07 07 07 	l.jal fc1c4950 <_end+0xfc13fb24>
    2d38:	07 07 07 07 	l.jal fc1c4954 <_end+0xfc13fb28>
    2d3c:	07 07 07 07 	l.jal fc1c4958 <_end+0xfc13fb2c>
    2d40:	07 07 07 07 	l.jal fc1c495c <_end+0xfc13fb30>
    2d44:	07 07 07 07 	l.jal fc1c4960 <_end+0xfc13fb34>
    2d48:	07 07 07 07 	l.jal fc1c4964 <_end+0xfc13fb38>
    2d4c:	07 07 07 07 	l.jal fc1c4968 <_end+0xfc13fb3c>
    2d50:	07 07 07 07 	l.jal fc1c496c <_end+0xfc13fb40>
    2d54:	07 07 07 07 	l.jal fc1c4970 <_end+0xfc13fb44>
    2d58:	07 07 07 07 	l.jal fc1c4974 <_end+0xfc13fb48>
    2d5c:	07 07 07 07 	l.jal fc1c4978 <_end+0xfc13fb4c>
    2d60:	07 07 07 07 	l.jal fc1c497c <_end+0xfc13fb50>
    2d64:	07 07 07 07 	l.jal fc1c4980 <_end+0xfc13fb54>
    2d68:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d6c:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d70:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d74:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d78:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d7c:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d80:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d84:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d88:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d8c:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d90:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d94:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d98:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2d9c:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2da0:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2da4:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2da8:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dac:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2db0:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2db4:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2db8:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dbc:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dc0:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dc4:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dc8:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dcc:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dd0:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dd4:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2dd8:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2ddc:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2de0:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>
    2de4:	08 08 08 08 	l.adrp r0,1012000 <_end+0xf8d1d4>

Déassemblage de la section .eh_frame :

00002de8 <.eh_frame>:
    2de8:	00 00 00 10 	l.j 2e28 <__clz_tab+0x140>
    2dec:	00 00 00 00 	l.j 2dec <__clz_tab+0x104>
    2df0:	01 7a 52 00 	l.j 5e975f0 <_end+0x5e127c4>
    2df4:	04 7c 09 01 	l.jal 1f051f8 <_end+0x1e803cc>
    2df8:	1b 0d 01 00 	*inconnu*
    2dfc:	00 00 00 10 	l.j 2e3c <__clz_tab+0x154>
    2e00:	00 00 00 18 	l.j 2e60 <__clz_tab+0x178>
    2e04:	ff ff f1 a4 	*inconnu*
    2e08:	00 00 05 bc 	l.j 44f8 <__clz_tab+0x1810>
    2e0c:	00 00 00 00 	l.j 2e0c <__clz_tab+0x124>
    2e10:	00 00 00 10 	l.j 2e50 <__clz_tab+0x168>
    2e14:	00 00 00 2c 	l.j 2ec4 <__clz_tab+0x1dc>
    2e18:	ff ff f7 4c 	*inconnu*
    2e1c:	00 00 05 78 	l.j 43fc <__clz_tab+0x1714>
    2e20:	00 00 00 00 	l.j 2e20 <__clz_tab+0x138>

Déassemblage de la section .data :

00004e24 <assert_printf>:
    4e24:	00 00 1a 78 	l.j b804 <_edata+0x69dc>

Déassemblage de la section .comment :

00000000 <.comment>:
   0:	47 43 43 3a 	*inconnu*
   4:	20 28 47 4e 	*inconnu*
   8:	55 29 20 31 	*inconnu*
   c:	33 2e 32 2e 	*inconnu*
  10:	Address 0x10 is out of bounds.


Déassemblage de la section .debug_aranges :

00000000 <.debug_aranges>:
   0:	00 00 00 1c 	l.j 70 <_start>
   4:	00 02 00 00 	l.j 80004 <frameBuffer+0x7b1dc>
   8:	00 00 04 00 	l.j 1008 <_ntoa_long_long+0xe0>
	...
  14:	00 00 06 4c 	l.j 1944 <_vsnprintf+0x800>
	...
  20:	00 00 00 1c 	l.j 90 <_exception_handler>
  24:	00 02 00 00 	l.j 80024 <frameBuffer+0x7b1fc>
  28:	07 6e 04 00 	l.jal fdb81028 <_end+0xfdafc1fc>
	...
  34:	00 00 05 f0 	l.j 17f4 <_vsnprintf+0x6b0>
	...
  40:	00 00 00 1c 	l.j b0 <_exception_handler+0x20>
  44:	00 02 00 00 	l.j 80044 <frameBuffer+0x7b21c>
  48:	0f 11 04 00 	l.bnf fc441048 <_end+0xfc3bc21c>
  4c:	00 00 00 00 	l.j 4c <__OR1300__+0x4b>
  50:	00 00 1f a8 	l.j 7ef0 <frameBuffer+0x30c8>
  54:	00 00 05 bc 	l.j 1744 <_vsnprintf+0x600>
	...
  60:	00 00 00 1c 	l.j d0 <_exception_handler+0x40>
  64:	00 02 00 00 	l.j 80064 <frameBuffer+0x7b23c>
  68:	16 45 04 00 	*inconnu*
  6c:	00 00 00 00 	l.j 6c <__OR1300__+0x6b>
  70:	00 00 25 64 	l.j 9600 <frameBuffer+0x47d8>
  74:	00 00 05 78 	l.j 1654 <_vsnprintf+0x510>
	...
  80:	00 00 00 14 	l.j d0 <_exception_handler+0x40>
  84:	00 02 00 00 	l.j 80084 <frameBuffer+0x7b25c>
  88:	1d c0 04 00 	*inconnu*
	...

Déassemblage de la section .debug_info :

00000000 <.debug_info>:
       0:	00 00 07 6a 	l.j 1da8 <memcpy+0x21c>
       4:	00 05 01 04 	l.j 140414 <_end+0xbb5e8>
       8:	00 00 00 00 	l.j 8 <__OR1300__+0x7>
       c:	11 00 00 00 	l.bf 400000c <_end+0x3f7b1e0>
      10:	d5 1d 00 00 	l.sw 16384(r29),r0
      14:	00 00 00 00 	l.j 14 <__OR1300__+0x13>
      18:	00 2f 00 00 	l.j bc0018 <_end+0xb3b1ec>
      1c:	00 00 00 00 	l.j 1c <__OR1300__+0x1b>
      20:	06 4c 00 00 	l.jal f9300020 <_end+0xf927b1f4>
      24:	00 00 04 08 	l.j 1044 <_ntoa_long_long+0x11c>
      28:	07 00 00 00 	l.jal fc000028 <_end+0xfbf7b1fc>
      2c:	4b 04 04 07 	*inconnu*
      30:	00 00 00 55 	l.j 184 <_exception_handler+0xf4>
      34:	12 04 05 69 	l.bf f81015d8 <_end+0xf807c7ac>
      38:	6e 74 00 04 	l.lwa r19,4(r20)
      3c:	08 05 00 00 	l.adrp r0,a0000000 <_end+0x9ff7b1d4>
      40:	00 3d 04 08 	l.j f41060 <_end+0xebc234>
      44:	04 00 00 00 	l.jal 44 <__OR1300__+0x43>
      48:	71 04 01 08 	l.nios_crr r8,r4,r0,0x8
      4c:	00 00 00 7d 	l.j 240 <main+0x4c>
      50:	04 01 06 00 	l.jal 41850 <frameBuffer+0x3ca28>
      54:	00 00 86 04 	l.j 21864 <frameBuffer+0x1ca3c>
      58:	01 06 00 00 	l.j 4180058 <_end+0x40fb22c>
      5c:	00 7f 08 00 	l.j 1fc205c <_end+0x1f3d230>
      60:	00 00 9f 7b 	l.j 27e4c <frameBuffer+0x23024>
      64:	16 00 00 00 	*inconnu*
      68:	49 0a 00 00 	*inconnu*
      6c:	00 5e 04 02 	l.j 1781074 <_end+0x16fc248>
      70:	05 00 00 00 	l.jal 4000070 <_end+0x3f7b244>
      74:	16 04 02 07 	*inconnu*
      78:	00 00 00 b0 	l.j 338 <main+0x144>
      7c:	08 00 00 01 	l.adrp r0,2000 <__udivdi3+0x58>
      80:	79 80 0f 00 	*inconnu*
      84:	00 00 34 08 	l.j d0a4 <frameBuffer+0x827c>
      88:	00 00 01 78 	l.j 668 <perf_cpu_freq+0x24>
      8c:	81 16 00 00 	*inconnu*
      90:	00 2d 08 00 	l.j b42090 <_end+0xabd264>
      94:	00 00 c4 84 	l.j 312a4 <frameBuffer+0x2c47c>
      98:	0f 00 00 00 	l.bnf fc000098 <_end+0xfbf7b26c>
      9c:	3b 08 00 00 	*inconnu*
      a0:	00 c3 85 16 	l.j 30e14f8 <_end+0x305c6cc>
      a4:	00 00 00 26 	l.j 13c <_exception_handler+0xac>
      a8:	04 04 04 00 	l.jal 1010a8 <_end+0x7c27c>
      ac:	00 00 10 04 	l.j 40bc <__clz_tab+0x13d4>
      b0:	08 03 00 00 	l.adrp r0,60000000 <_end+0x5ff7b1d4>
      b4:	00 08 04 08 	l.j 2010d4 <_end+0x17c2a8>
      b8:	04 00 00 00 	l.jal b8 <_exception_handler+0x28>
      bc:	76 04 10 03 	l.cas r16,r4,r2,0x3
      c0:	00 00 01 57 	l.j 61c <trap_handler+0x8c>
      c4:	13 00 00 00 	l.bf fc0000c4 <_end+0xfbf7b298>
      c8:	a7 08 02 01 	l.andi r24,r8,0x201
      cc:	ef 0a 00 00 	*inconnu*
      d0:	00 ef 14 00 	l.j 3bc50d0 <_end+0x3b402a4>
      d4:	00 00 62 02 	l.j 188dc <frameBuffer+0x13ab4>
      d8:	01 ef 1a 00 	l.j 7bc68d8 <_end+0x7b41aac>
      dc:	00 00 7c 00 	l.j 1f0dc <frameBuffer+0x1a2b4>
      e0:	15 6c 6f 77 	*inconnu*
      e4:	00 02 01 ef 	l.j 808a0 <frameBuffer+0x7ba78>
      e8:	20 00 00 00 	l.sys 0x0
      ec:	7c 04 00 16 	*inconnu*
      f0:	08 02 01 f8 	l.adrp r0,403f0000 <_end+0x4036b1d4>
      f4:	09 00 00 01 	l.adrp r8,2000 <__udivdi3+0x58>
      f8:	0f 0c 73 00 	l.bnf fc31ccf8 <_end+0xfc297ecc>
      fc:	01 fa 13 00 	l.j 7e84cfc <_end+0x7dffed0>
     100:	00 00 c4 0c 	l.j 31130 <frameBuffer+0x2c308>
     104:	6c 6c 00 01 	l.lwa r3,1(r12)
     108:	fb 0a 00 00 	*inconnu*
     10c:	00 92 00 17 	l.j 2480168 <_end+0x23fb33c>
     110:	00 00 00 00 	l.j 110 <_exception_handler+0x80>
     114:	02 01 fc 03 	l.j f807f120 <_end+0xf7ffa2f4>
     118:	00 00 00 ef 	l.j 4d4 <main+0x2e0>
     11c:	0a 00 00 01 	l.adrp r16,2000 <__udivdi3+0x58>
     120:	0f 18 00 00 	l.bnf fc600120 <_end+0xfc57b2f4>
     124:	00 69 00 00 	l.j 1a40124 <_end+0x19bb2f8>
     128:	01 31 19 00 	l.j 4c46528 <_end+0x4bc16fc>
     12c:	00 00 2d ff 	l.j b928 <frameBuffer+0x6b00>
     130:	00 0a 00 00 	l.j 280130 <_end+0x1fb304>
     134:	01 21 1a 00 	l.j 4846934 <_end+0x47c1b08>
     138:	00 00 67 02 	l.j 19d40 <frameBuffer+0x14f18>
     13c:	02 06 16 00 	l.j f818593c <_end+0xf8100b10>
     140:	00 01 31 1b 	l.j 4c5ac <frameBuffer+0x47784>
     144:	00 00 00 34 	l.j 214 <main+0x20>
     148:	01 04 bb 01 	l.j 412ed4c <_end+0x40a9f20>
     14c:	00 00 00 92 	l.j 394 <main+0x1a0>
     150:	00 00 00 00 	l.j 150 <_exception_handler+0xc0>
     154:	00 00 06 4c 	l.j 1a84 <printf_+0xc>
     158:	01 9c 00 00 	l.j 6700158 <_end+0x667b32c>
     15c:	04 3b 0d 75 	l.jal ec3730 <_end+0xe3e904>
     160:	00 12 00 00 	l.j 480160 <_end+0x3fb334>
     164:	00 92 00 00 	l.j 2480164 <_end+0x23fb338>
     168:	00 0c 0d 76 	l.j 303740 <_end+0x27e914>
     16c:	00 1c 00 00 	l.j 70016c <_end+0x67b340>
     170:	00 92 00 00 	l.j 2480170 <_end+0x23fb344>
     174:	00 3a 09 63 	l.j e82700 <_end+0xdfd8d4>
     178:	00 04 bd 09 	l.j 12f59c <_end+0xaa770>
     17c:	00 00 00 7c 	l.j 36c <main+0x178>
     180:	00 00 00 80 	l.j 380 <main+0x18c>
     184:	09 75 75 00 	l.adrp r11,aea00000 <_end+0xae97b1d4>
     188:	04 be 0b 00 	l.jal 2f82d88 <_end+0x2efdf5c>
     18c:	00 01 0f 00 	l.j 43d8c <frameBuffer+0x3ef64>
     190:	00 00 9d 09 	l.j 275b4 <frameBuffer+0x2278c>
     194:	76 76 00 04 	l.cas r19,r22,r0,0x4
     198:	bf 0b 00 00 	*inconnu*
     19c:	01 0f 00 00 	l.j 43c019c <_end+0x433b370>
     1a0:	00 c0 09 77 	l.j 300277c <_end+0x2f7d950>
     1a4:	00 04 c0 0a 	l.j 1301cc <_end+0xab3a0>
     1a8:	00 00 00 92 	l.j 3f0 <main+0x1fc>
     1ac:	00 00 00 e3 	l.j 538 <allignment_exception_handler>
     1b0:	1c 00 00 04 	*inconnu*
     1b4:	3b 00 00 00 	*inconnu*
     1b8:	00 00 00 00 	l.j 1b8 <_exception_handler+0x128>
     1bc:	0c 01 04 c9 	l.bnf 414e0 <frameBuffer+0x3c6b8>
     1c0:	07 1d 00 00 	l.jal fc7401c0 <_end+0xfc6bb394>
     1c4:	04 5d 00 00 	l.jal 17401c4 <_end+0x16bb398>
     1c8:	01 08 0e 00 	l.j 42039c8 <_end+0x417eb9c>
     1cc:	00 04 55 0e 	l.j 115604 <_end+0x907d8>
     1d0:	00 00 04 4d 	l.j 1304 <_vsnprintf+0x1c0>
     1d4:	1e 00 00 00 	*inconnu*
     1d8:	43 07 00 00 	*inconnu*
     1dc:	04 66 07 00 	l.jal 1981ddc <_end+0x18fcfb0>
     1e0:	00 04 71 07 	l.j 11c5fc <_end+0x977d0>
     1e4:	00 00 04 7c 	l.j 13d4 <_vsnprintf+0x290>
     1e8:	01 00 00 04 	l.j 40001f8 <_end+0x3f7b3cc>
     1ec:	87 00 00 01 	l.lwz r24,1(r0)
     1f0:	28 01 00 00 	*inconnu*
     1f4:	04 92 00 00 	l.jal 24801f4 <_end+0x23fb3c8>
     1f8:	01 99 01 00 	l.j 66405f8 <_end+0x65bb7cc>
     1fc:	00 04 9d 00 	l.j 1275fc <_end+0xa27d0>
     200:	00 01 e6 01 	l.j 79a04 <frameBuffer+0x74bdc>
     204:	00 00 04 a8 	l.j 14a4 <_vsnprintf+0x360>
     208:	00 00 02 5e 	l.j b80 <_ntoa_format+0xc8>
     20c:	01 00 00 04 	l.j 400021c <_end+0x3f7b3f0>
     210:	b3 00 00 02 	l.muli r24,r0,2
     214:	c7 01 00 00 	*inconnu*
     218:	04 be 00 00 	l.jal 2f80218 <_end+0x2efb3ec>
     21c:	02 cf 01 00 	l.j fb3c061c <_end+0xfb33b7f0>
     220:	00 04 c9 00 	l.j 132620 <_end+0xad7f4>
     224:	00 03 0a 01 	l.j c2a28 <_end+0x3dbfc>
     228:	00 00 04 d4 	l.j 1578 <_vsnprintf+0x434>
     22c:	00 00 03 1b 	l.j e98 <_ntoa_long+0x70>
     230:	01 00 00 04 	l.j 4000240 <_end+0x3f7b414>
     234:	de 00 00 03 	l.sh -32765(r0),r0
     238:	2a 07 00 00 	*inconnu*
     23c:	04 e9 06 00 	l.jal 3a41a3c <_end+0x39bcc10>
     240:	00 04 f4 00 	l.j 13d240 <_end+0xb8414>
     244:	00 00 7f 00 	l.j 1fe44 <frameBuffer+0x1b01c>
     248:	00 02 5e 01 	l.j 97a4c <_end+0x12c20>
     24c:	00 00 04 f9 	l.j 1630 <_vsnprintf+0x4ec>
     250:	00 00 03 5c 	l.j fc0 <_ntoa_long_long+0x98>
     254:	01 00 00 05 	l.j 4000268 <_end+0x3f7b43c>
     258:	05 00 00 03 	l.jal 4000264 <_end+0x3f7b438>
     25c:	84 00 06 00 	l.lwz r0,1536(r0)
     260:	00 05 12 00 	l.j 144a60 <_end+0xbfc34>
     264:	00 00 89 00 	l.j 22664 <frameBuffer+0x1d83c>
     268:	00 02 ab 01 	l.j aae6c <_end+0x26040>
     26c:	00 00 05 17 	l.j 16c8 <_vsnprintf+0x584>
     270:	00 00 03 8b 	l.j 109c <_ntoa_long_long+0x174>
     274:	01 00 00 05 	l.j 4000288 <_end+0x3f7b45c>
     278:	23 00 00 03 	*inconnu*
     27c:	b1 01 00 00 	l.muli r8,r1,0
     280:	05 2f 00 00 	l.jal 4bc0280 <_end+0x4b3b454>
     284:	03 cd 01 00 	l.j ff340684 <_end+0xff2bb858>
     288:	00 05 3b 00 	l.j 14ee88 <_end+0xca05c>
     28c:	00 03 ea 01 	l.j faa90 <_end+0x75c64>
     290:	00 00 05 47 	l.j 17ac <_vsnprintf+0x668>
     294:	00 00 04 00 	l.j 1294 <_vsnprintf+0x150>
     298:	01 00 00 05 	l.j 40002ac <_end+0x3f7b480>
     29c:	53 00 00 04 	*inconnu*
     2a0:	16 01 00 00 	*inconnu*
     2a4:	05 5f 00 00 	l.jal 57c02a4 <_end+0x573b478>
     2a8:	04 25 00 06 	l.jal 9402c0 <_end+0x8bb494>
     2ac:	00 00 06 3e 	l.j 1ba4 <memcpy+0x18>
     2b0:	00 00 00 a3 	l.j 53c <allignment_exception_handler+0x4>
     2b4:	00 00 02 cb 	l.j de0 <_ntoa_format+0x328>
     2b8:	01 00 00 06 	l.j 40002d0 <_end+0x3f7b4a4>
     2bc:	43 00 00 04 	*inconnu*
     2c0:	3b 01 00 00 	*inconnu*
     2c4:	06 4f 00 00 	l.jal f93c02c4 <_end+0xf933b498>
     2c8:	04 51 00 06 	l.jal 14402e0 <_end+0x13bb4b4>
     2cc:	00 00 05 6c 	l.j 187c <_vsnprintf+0x738>
     2d0:	00 00 00 ae 	l.j 588 <system_call_handler+0x4>
     2d4:	00 00 02 eb 	l.j e80 <_ntoa_long+0x58>
     2d8:	01 00 00 05 	l.j 40002ec <_end+0x3f7b4c0>
     2dc:	71 00 00 04 	l.nios_rrr r8,r0,r0,0x4
     2e0:	67 01 00 00 	*inconnu*
     2e4:	05 7d 00 00 	l.jal 5f402e4 <_end+0x5ebb4b8>
     2e8:	04 6f 00 06 	l.jal 1bc0300 <_end+0x1b3b4d4>
     2ec:	00 00 05 e4 	l.j 1a7c <printf_+0x4>
     2f0:	00 00 00 b9 	l.j 5d4 <trap_handler+0x44>
     2f4:	00 00 03 38 	l.j fd4 <_ntoa_long_long+0xac>
     2f8:	01 00 00 05 	l.j 400030c <_end+0x3f7b4e0>
     2fc:	e9 00 00 04 	*inconnu*
     300:	7e 01 00 00 	*inconnu*
     304:	05 f5 00 00 	l.jal 7d40304 <_end+0x7cbb4d8>
     308:	04 95 01 00 	l.jal 2540708 <_end+0x24bb8dc>
     30c:	00 06 01 00 	l.j 18070c <_end+0xfb8e0>
     310:	00 04 b0 01 	l.j 12c314 <_end+0xa74e8>
     314:	00 00 06 0d 	l.j 1b48 <vsnprintf_+0x10>
     318:	00 00 04 cd 	l.j 164c <_vsnprintf+0x508>
     31c:	01 00 00 06 	l.j 4000334 <_end+0x3f7b508>
     320:	19 00 00 04 	l.movhi r8,0x4
     324:	e3 01 00 00 	l.add r24,r1,r0
     328:	06 25 00 00 	l.jal f8940328 <_end+0xf88bb4fc>
     32c:	05 00 01 00 	l.jal 400072c <_end+0x3f7b900>
     330:	00 06 31 00 	l.j 18c730 <_end+0x107904>
     334:	00 05 0f 00 	l.j 143f34 <_end+0xbf108>
     338:	06 00 00 06 	l.jal f8000350 <_end+0xf7f7b524>
     33c:	6e 00 00 00 	l.lwa r16,0(r0)
     340:	d3 00 00 03 	*inconnu*
     344:	ef 01 00 00 	*inconnu*
     348:	06 6f 00 00 	l.jal f9bc0348 <_end+0xf9b3b51c>
     34c:	05 25 01 00 	l.jal 494074c <_end+0x48bb920>
     350:	00 06 7a 00 	l.j 19eb50 <_end+0x119d24>
     354:	00 05 2d 06 	l.j 14b76c <_end+0xc6940>
     358:	00 00 06 85 	l.j 1d6c <memcpy+0x1e0>
     35c:	00 00 00 de 	l.j 6d4 <perf_cpu_freq+0x90>
     360:	00 00 03 a4 	l.j 11f0 <_vsnprintf+0xac>
     364:	01 00 00 06 	l.j 400037c <_end+0x3f7b550>
     368:	8a 00 00 05 	l.lws r16,5(r0)
     36c:	44 01 00 00 	*inconnu*
     370:	06 96 00 00 	l.jal fa580370 <_end+0xfa4fb544>
     374:	05 8c 01 00 	l.jal 6300774 <_end+0x627b948>
     378:	00 06 a2 00 	l.j 1a8b78 <_end+0x123d4c>
     37c:	00 05 af 01 	l.j 16bf80 <_end+0xe7154>
     380:	00 00 06 ae 	l.j 1e38 <uart_wait_rx+0x18>
     384:	00 00 05 d3 	l.j 1ad0 <sprintf_+0x28>
     388:	01 00 00 06 	l.j 40003a0 <_end+0x3f7b574>
     38c:	ba 00 00 05 	l.slli r16,r0,0x5
     390:	f0 01 00 00 	*inconnu*
     394:	06 c6 00 00 	l.jal fb180394 <_end+0xfb0fb568>
     398:	06 06 01 00 	l.jal f8180798 <_end+0xf80fb96c>
     39c:	00 06 d2 00 	l.j 1b4b9c <_end+0x12fd70>
     3a0:	00 06 23 00 	l.j 188fa0 <_end+0x104174>
     3a4:	0f 00 00 06 	l.bnf fc0003bc <_end+0xfbf7b590>
     3a8:	df 00 00 00 	l.sh -16384(r0),r0
     3ac:	fd 01 00 00 	*inconnu*
     3b0:	06 e4 00 00 	l.jal fb9003b0 <_end+0xfb87b584>
     3b4:	06 40 01 00 	l.jal f90007b4 <_end+0xf8f7b988>
     3b8:	00 06 f0 00 	l.j 1bc3b8 <_end+0x13758c>
     3bc:	00 06 48 01 	l.j 1923c0 <_end+0x10d594>
     3c0:	00 00 06 fc 	l.j 1fb0 <__udivdi3+0x8>
     3c4:	00 00 06 50 	l.j 1d04 <memcpy+0x178>
     3c8:	01 00 00 07 	l.j 40003e4 <_end+0x3f7b5b8>
     3cc:	08 00 00 06 	l.adrp r0,c000 <frameBuffer+0x71d8>
     3d0:	58 07 00 00 	*inconnu*
     3d4:	07 14 07 00 	l.jal fc501fd4 <_end+0xfc47d1a8>
     3d8:	00 07 20 01 	l.j 1c83dc <_end+0x1435b0>
     3dc:	00 00 07 2c 	l.j 208c <__udivdi3+0xe4>
     3e0:	00 00 06 60 	l.j 1d60 <memcpy+0x1d4>
     3e4:	01 00 00 07 	l.j 4000400 <_end+0x3f7b5d4>
     3e8:	38 00 00 06 	*inconnu*
     3ec:	a5 00 00 0f 	l.andi r8,r0,0xf
     3f0:	00 00 05 8a 	l.j 1a18 <_vsnprintf+0x8d4>
     3f4:	00 00 01 12 	l.j 83c <perf_cycles_to_time+0x11c>
     3f8:	01 00 00 05 	l.j 400040c <_end+0x3f7b5e0>
     3fc:	8f 00 00 06 	l.lbz r24,6(r0)
     400:	ad 01 00 00 	l.xori r8,r1,0
     404:	05 9b 00 00 	l.jal 66c0404 <_end+0x663b5d8>
     408:	06 bc 01 00 	l.jal faf00808 <_end+0xfae7b9dc>
     40c:	00 05 a7 00 	l.j 16a00c <_end+0xe51e0>
     410:	00 06 cb 01 	l.j 1b3014 <_end+0x12e1e8>
     414:	00 00 05 b3 	l.j 1ae0 <snprintf_+0x8>
     418:	00 00 06 ef 	l.j 1fd4 <__udivdi3+0x2c>
     41c:	01 00 00 05 	l.j 4000430 <_end+0x3f7b604>
     420:	bf 00 00 07 	*inconnu*
     424:	0c 01 00 00 	l.bnf 40424 <frameBuffer+0x3b5fc>
     428:	05 cb 00 00 	l.jal 72c0428 <_end+0x723b5fc>
     42c:	07 22 01 00 	l.jal fc88082c <_end+0xfc7fba00>
     430:	00 05 d7 00 	l.j 176030 <_end+0xf1204>
     434:	00 07 38 00 	l.j 1ce434 <_end+0x149608>
     438:	00 00 00 1f 	l.j 4b4 <main+0x2c0>
     43c:	00 00 01 6b 	l.j 9e8 <_putchar+0x8>
     440:	01 03 e3 01 	l.j 40f9044 <_end+0x4074218>
     444:	00 00 00 9d 	l.j 6b8 <perf_cpu_freq+0x74>
     448:	03 00 00 07 	l.j fc000464 <_end+0xfbf7b638>
     44c:	67 0b 6e 00 	*inconnu*
     450:	17 00 00 00 	*inconnu*
     454:	9d 0b 64 00 	l.addi r8,r11,25600
     458:	22 00 00 00 	l.msync
     45c:	9d 0b 72 70 	l.addi r8,r11,29296
     460:	00 2e 00 00 	l.j b80460 <_end+0xafb634>
     464:	07 67 03 6e 	l.jal fd9c121c <_end+0xfd93c3f0>
     468:	6e 00 03 e5 	l.lwa r16,997(r0)
     46c:	11 00 00 01 	l.bf 4000470 <_end+0x3f7b644>
     470:	1c 03 64 64 	*inconnu*
     474:	00 03 e6 11 	l.j f9cb8 <_end+0x74e8c>
     478:	00 00 01 1c 	l.j 8e8 <perf_cycles_to_time+0x1c8>
     47c:	03 72 72 00 	l.j fdc9cc7c <_end+0xfdc17e50>
     480:	03 e7 0b 00 	l.j ff9c3080 <_end+0xff93e254>
     484:	00 01 0f 03 	l.j 44090 <frameBuffer+0x3f268>
     488:	64 30 00 03 	*inconnu*
     48c:	e8 0a 00 00 	*inconnu*
     490:	00 87 03 64 	l.j 21c1220 <_end+0x213c3f4>
     494:	31 00 03 e8 	*inconnu*
     498:	0e 00 00 00 	l.bnf f8000498 <_end+0xf7f7b66c>
     49c:	87 03 6e 30 	l.lwz r24,28208(r3)
     4a0:	00 03 e8 12 	l.j fa4e8 <_end+0x756bc>
     4a4:	00 00 00 87 	l.j 6c0 <perf_cpu_freq+0x7c>
     4a8:	03 6e 31 00 	l.j fdb8c8a8 <_end+0xfdb07a7c>
     4ac:	03 e8 16 00 	l.j ffa05cac <_end+0xff980e80>
     4b0:	00 00 87 03 	l.j 220bc <frameBuffer+0x1d294>
     4b4:	6e 32 00 03 	l.lwa r17,3(r18)
     4b8:	e8 1a 00 00 	*inconnu*
     4bc:	00 87 03 71 	l.j 21c1280 <_end+0x213c454>
     4c0:	30 00 03 e9 	*inconnu*
     4c4:	0a 00 00 00 	l.adrp r16,0 <_error>
     4c8:	87 03 71 31 	l.lwz r24,28977(r3)
     4cc:	00 03 e9 0e 	l.j fa904 <_end+0x75ad8>
     4d0:	00 00 00 87 	l.j 6ec <perf_cpu_freq+0xa8>
     4d4:	03 62 00 03 	l.j fd8804e0 <_end+0xfd7fb6b4>
     4d8:	ea 0a 00 00 	*inconnu*
     4dc:	00 87 03 62 	l.j 21c1264 <_end+0x213c438>
     4e0:	6d 00 03 ea 	l.lwa r8,1002(r0)
     4e4:	0d 00 00 00 	l.bnf 40004e4 <_end+0x3f7b6b8>
     4e8:	87 03 77 77 	l.lwz r24,30583(r3)
     4ec:	00 04 b3 11 	l.j 12d130 <_end+0xa8304>
     4f0:	00 00 01 1c 	l.j 960 <perf_print_time+0x1c>
     4f4:	05 00 00 05 	l.jal 4000508 <_end+0x3f7b6dc>
     4f8:	12 02 00 00 	l.bf f80804f8 <_end+0xf7ffb6cc>
     4fc:	01 66 04 1a 	l.j 5981564 <_end+0x58fc738>
     500:	04 00 00 00 	l.jal 500 <assert_die+0x14>
     504:	87 03 5f 5f 	l.lwz r24,24415(r3)
     508:	61 00 04 1a 	*inconnu*
     50c:	04 00 00 00 	l.jal 50c <bus_error_handler+0x4>
     510:	87 00 05 00 	l.lwz r24,1280(r0)
     514:	00 05 6c 02 	l.j 15b51c <_end+0xd66f0>
     518:	00 00 00 25 	l.j 5ac <trap_handler+0x1c>
     51c:	04 26 04 00 	l.jal 98151c <_end+0x8fc6f0>
     520:	00 00 87 02 	l.j 22128 <frameBuffer+0x1d300>
     524:	00 00 00 20 	l.j 5a4 <trap_handler+0x14>
     528:	04 26 04 00 	l.jal 981528 <_end+0x8fc6fc>
     52c:	00 00 87 02 	l.j 22134 <frameBuffer+0x1d30c>
     530:	00 00 00 d0 	l.j 870 <perf_cycles_to_time+0x150>
     534:	04 26 04 00 	l.jal 981534 <_end+0x8fc708>
     538:	00 00 87 02 	l.j 22140 <frameBuffer+0x1d318>
     53c:	00 00 00 cb 	l.j 868 <perf_cycles_to_time+0x148>
     540:	04 26 04 00 	l.jal 981540 <_end+0x8fc714>
     544:	00 00 87 02 	l.j 2214c <frameBuffer+0x1d324>
     548:	00 00 01 85 	l.j b5c <_ntoa_format+0xa4>
     54c:	04 26 04 00 	l.jal 98154c <_end+0x8fc720>
     550:	00 00 87 02 	l.j 22158 <frameBuffer+0x1d330>
     554:	00 00 01 80 	l.j b54 <_ntoa_format+0x9c>
     558:	04 26 04 00 	l.jal 981558 <_end+0x8fc72c>
     55c:	00 00 87 03 	l.j 22168 <frameBuffer+0x1d340>
     560:	5f 5f 6d 00 	*inconnu*
     564:	04 26 04 00 	l.jal 981564 <_end+0x8fc738>
     568:	00 00 87 00 	l.j 22168 <frameBuffer+0x1d340>
     56c:	05 00 00 05 	l.jal 4000580 <_end+0x3f7b754>
     570:	8a 02 00 00 	l.lws r16,0(r2)
     574:	01 66 04 32 	l.j 598163c <_end+0x58fc810>
     578:	04 00 00 00 	l.jal 578 <range_exception_handler>
     57c:	87 03 5f 5f 	l.lwz r24,24415(r3)
     580:	61 00 04 32 	*inconnu*
     584:	04 00 00 00 	l.jal 584 <system_call_handler>
     588:	87 00 05 00 	l.lwz r24,1280(r0)
     58c:	00 05 e4 02 	l.j 179594 <_end+0xf4768>
     590:	00 00 00 25 	l.j 624 <trap_handler+0x94>
     594:	04 4b 08 00 	l.jal 12c2594 <_end+0x123d768>
     598:	00 00 87 02 	l.j 221a0 <frameBuffer+0x1d378>
     59c:	00 00 00 20 	l.j 61c <trap_handler+0x8c>
     5a0:	04 4b 08 00 	l.jal 12c25a0 <_end+0x123d774>
     5a4:	00 00 87 02 	l.j 221ac <frameBuffer+0x1d384>
     5a8:	00 00 00 d0 	l.j 8e8 <perf_cycles_to_time+0x1c8>
     5ac:	04 4b 08 00 	l.jal 12c25ac <_end+0x123d780>
     5b0:	00 00 87 02 	l.j 221b8 <frameBuffer+0x1d390>
     5b4:	00 00 00 cb 	l.j 8e0 <perf_cycles_to_time+0x1c0>
     5b8:	04 4b 08 00 	l.jal 12c25b8 <_end+0x123d78c>
     5bc:	00 00 87 02 	l.j 221c4 <frameBuffer+0x1d39c>
     5c0:	00 00 01 85 	l.j bd4 <_ntoa_format+0x11c>
     5c4:	04 4b 08 00 	l.jal 12c25c4 <_end+0x123d798>
     5c8:	00 00 87 02 	l.j 221d0 <frameBuffer+0x1d3a8>
     5cc:	00 00 01 80 	l.j bcc <_ntoa_format+0x114>
     5d0:	04 4b 08 00 	l.jal 12c25d0 <_end+0x123d7a4>
     5d4:	00 00 87 03 	l.j 221e0 <frameBuffer+0x1d3b8>
     5d8:	5f 5f 6d 00 	*inconnu*
     5dc:	04 4b 08 00 	l.jal 12c25dc <_end+0x123d7b0>
     5e0:	00 00 87 00 	l.j 221e0 <frameBuffer+0x1d3b8>
     5e4:	05 00 00 06 	l.jal 40005fc <_end+0x3f7b7d0>
     5e8:	3e 02 00 00 	*inconnu*
     5ec:	00 25 04 50 	l.j 94172c <_end+0x8bc900>
     5f0:	04 00 00 00 	l.jal 5f0 <trap_handler+0x60>
     5f4:	87 02 00 00 	l.lwz r24,0(r2)
     5f8:	00 20 04 50 	l.j 801738 <_end+0x77c90c>
     5fc:	04 00 00 00 	l.jal 5fc <trap_handler+0x6c>
     600:	87 02 00 00 	l.lwz r24,0(r2)
     604:	00 d0 04 50 	l.j 3401744 <_end+0x337c918>
     608:	04 00 00 00 	l.jal 608 <trap_handler+0x78>
     60c:	87 02 00 00 	l.lwz r24,0(r2)
     610:	00 cb 04 50 	l.j 32c1750 <_end+0x323c924>
     614:	04 00 00 00 	l.jal 614 <trap_handler+0x84>
     618:	87 02 00 00 	l.lwz r24,0(r2)
     61c:	01 85 04 50 	l.j 614175c <_end+0x60bc930>
     620:	04 00 00 00 	l.jal 620 <trap_handler+0x90>
     624:	87 02 00 00 	l.lwz r24,0(r2)
     628:	01 80 04 50 	l.j 6001768 <_end+0x5f7c93c>
     62c:	04 00 00 00 	l.jal 62c <trap_handler+0x9c>
     630:	87 03 5f 5f 	l.lwz r24,24415(r3)
     634:	6d 00 04 50 	l.lwa r8,1104(r0)
     638:	04 00 00 00 	l.jal 638 <break_point_handler>
     63c:	87 00 05 00 	l.lwz r24,1280(r0)
     640:	00 06 5c 02 	l.j 197648 <_end+0x11281c>
     644:	00 00 01 66 	l.j bdc <_ntoa_format+0x124>
     648:	04 73 04 00 	l.jal 1cc1648 <_end+0x1c3c81c>
     64c:	00 00 87 03 	l.j 22258 <frameBuffer+0x1d430>
     650:	5f 5f 61 00 	*inconnu*
     654:	04 73 04 00 	l.jal 1cc1654 <_end+0x1c3c828>
     658:	00 00 87 00 	l.j 22258 <frameBuffer+0x1d430>
     65c:	05 00 00 06 	l.jal 4000674 <_end+0x3f7b848>
     660:	6e 03 5f 5f 	l.lwa r16,24415(r3)
     664:	78 00 04 81 	*inconnu*
     668:	05 00 00 00 	l.jal 4000668 <_end+0x3f7b83c>
     66c:	87 00 10 03 	l.lwz r24,4099(r0)
     670:	6d 31 00 04 	l.lwa r9,4(r17)
     674:	91 0f 00 00 	l.lbs r8,0(r15)
     678:	00 87 03 6d 	l.j 21c142c <_end+0x213c600>
     67c:	30 00 04 91 	*inconnu*
     680:	13 00 00 00 	l.bf fc000680 <_end+0xfbf7b854>
     684:	87 05 00 00 	l.lwz r24,0(r5)
     688:	06 df 02 00 	l.jal fb7c0e88 <_end+0xfb73c05c>
     68c:	00 00 25 04 	l.j 9a9c <frameBuffer+0x4c74>
     690:	9c 08 00 00 	l.addi r0,r8,0
     694:	00 87 02 00 	l.j 21c0e94 <_end+0x213c068>
     698:	00 00 20 04 	l.j 86a8 <frameBuffer+0x3880>
     69c:	9c 08 00 00 	l.addi r0,r8,0
     6a0:	00 87 02 00 	l.j 21c0ea0 <_end+0x213c074>
     6a4:	00 00 d0 04 	l.j 346b4 <frameBuffer+0x2f88c>
     6a8:	9c 08 00 00 	l.addi r0,r8,0
     6ac:	00 87 02 00 	l.j 21c0eac <_end+0x213c080>
     6b0:	00 00 cb 04 	l.j 332c0 <frameBuffer+0x2e498>
     6b4:	9c 08 00 00 	l.addi r0,r8,0
     6b8:	00 87 02 00 	l.j 21c0eb8 <_end+0x213c08c>
     6bc:	00 01 85 04 	l.j 61acc <frameBuffer+0x5cca4>
     6c0:	9c 08 00 00 	l.addi r0,r8,0
     6c4:	00 87 02 00 	l.j 21c0ec4 <_end+0x213c098>
     6c8:	00 01 80 04 	l.j 606d8 <frameBuffer+0x5b8b0>
     6cc:	9c 08 00 00 	l.addi r0,r8,0
     6d0:	00 87 03 5f 	l.j 21c144c <_end+0x213c620>
     6d4:	5f 6d 00 04 	*inconnu*
     6d8:	9c 08 00 00 	l.addi r0,r8,0
     6dc:	00 87 00 05 	l.j 21c06f0 <_end+0x213b8c4>
     6e0:	00 00 07 45 	l.j 23f4 <__udivdi3+0x44c>
     6e4:	02 00 00 00 	l.j f80006e4 <_end+0xf7f7b8b8>
     6e8:	8b 04 9d 08 	l.lws r24,-25336(r4)
     6ec:	00 00 00 87 	l.j 908 <perf_print_cycles+0x1c>
     6f0:	02 00 00 00 	l.j f80006f0 <_end+0xf7f7b8c4>
     6f4:	90 04 9d 08 	l.lbs r0,-25336(r4)
     6f8:	00 00 00 87 	l.j 914 <perf_print_cycles+0x28>
     6fc:	02 00 00 00 	l.j f80006fc <_end+0xf7f7b8d0>
     700:	95 04 9d 08 	l.lhz r8,-25336(r4)
     704:	00 00 00 87 	l.j 920 <perf_print_cycles+0x34>
     708:	02 00 00 00 	l.j f8000708 <_end+0xf7f7b8dc>
     70c:	9a 04 9d 08 	l.lhs r16,-25336(r4)
     710:	00 00 00 87 	l.j 92c <perf_print_cycles+0x40>
     714:	02 00 00 01 	l.j f8000718 <_end+0xf7f7b8ec>
     718:	8f 04 9d 08 	l.lbz r24,-25336(r4)
     71c:	00 00 00 87 	l.j 938 <perf_print_cycles+0x4c>
     720:	02 00 00 00 	l.j f8000720 <_end+0xf7f7b8f4>
     724:	2f 04 9d 08 	*inconnu*
     728:	00 00 00 87 	l.j 944 <perf_print_time>
     72c:	02 00 00 01 	l.j f8000730 <_end+0xf7f7b904>
     730:	8a 04 9d 08 	l.lws r16,-25336(r4)
     734:	00 00 00 87 	l.j 950 <perf_print_time+0xc>
     738:	02 00 00 00 	l.j f8000738 <_end+0xf7f7b90c>
     73c:	2a 04 9d 08 	*inconnu*
     740:	00 00 00 87 	l.j 95c <perf_print_time+0x18>
     744:	00 05 00 00 	l.j 140744 <_end+0xbb918>
     748:	07 57 03 5f 	l.jal fd5c14c4 <_end+0xfd53c698>
     74c:	5f 78 00 04 	*inconnu*
     750:	a2 05 00 00 	l.addic r16,r5,0
     754:	00 87 00 10 	l.j 21c0794 <_end+0x213b968>
     758:	03 5f 5f 78 	l.j fd7d8538 <_end+0xfd75370c>
     75c:	00 04 aa 05 	l.j 12af70 <_end+0xa6144>
     760:	00 00 00 87 	l.j 97c <perf_print_time+0x38>
     764:	00 00 00 20 	l.j 7e4 <perf_cycles_to_time+0xc4>
     768:	04 00 00 00 	l.jal 768 <perf_cycles_to_time+0x48>
     76c:	9d 00 00 00 	l.addi r8,r0,0
     770:	07 9f 00 05 	l.jal fe7c0784 <_end+0xfe73b958>
     774:	01 04 00 00 	l.j 4100774 <_end+0x407b948>
     778:	01 b2 11 00 	l.j 6c84b78 <_end+0x6bffd4c>
     77c:	00 00 d5 1d 	l.j 35bf0 <frameBuffer+0x30dc8>
     780:	00 00 00 00 	l.j 780 <perf_cycles_to_time+0x60>
     784:	00 00 00 2f 	l.j 840 <perf_cycles_to_time+0x120>
     788:	00 00 00 00 	l.j 788 <perf_cycles_to_time+0x68>
     78c:	00 00 05 f0 	l.j 1f4c <vga_clear+0x4>
     790:	00 00 0e 95 	l.j 41e4 <__clz_tab+0x14fc>
     794:	04 08 07 00 	l.jal 202394 <_end+0x17d568>
     798:	00 00 4b 12 	l.j 133e0 <frameBuffer+0xe5b8>
     79c:	04 05 69 6e 	l.jal 15ad54 <_end+0xd5f28>
     7a0:	74 00 04 04 	*inconnu*
     7a4:	07 00 00 00 	l.jal fc0007a4 <_end+0xfbf7b978>
     7a8:	55 04 08 05 	*inconnu*
     7ac:	00 00 00 3d 	l.j 8a0 <perf_cycles_to_time+0x180>
     7b0:	04 08 04 00 	l.jal 2017b0 <_end+0x17c984>
     7b4:	00 00 71 04 	l.j 1cbc4 <frameBuffer+0x17d9c>
     7b8:	01 08 00 00 	l.j 42007b8 <_end+0x417b98c>
     7bc:	00 7d 04 01 	l.j 1f417c0 <_end+0x1ebc994>
     7c0:	06 00 00 00 	l.jal f80007c0 <_end+0xf7f7b994>
     7c4:	86 04 01 06 	l.lwz r16,262(r4)
     7c8:	00 00 00 7f 	l.j 9c4 <perf_print_time+0x80>
     7cc:	08 00 00 00 	l.adrp r0,0 <_error>
     7d0:	9f 7b 16 00 	l.addi r27,r27,5632
     7d4:	00 00 49 0a 	l.j 12bfc <frameBuffer+0xddd4>
     7d8:	00 00 00 5e 	l.j 950 <perf_print_time+0xc>
     7dc:	04 02 05 00 	l.jal 81bdc <frameBuffer+0x7cdb4>
     7e0:	00 00 16 04 	l.j 5ff0 <frameBuffer+0x11c8>
     7e4:	02 07 00 00 	l.j f81c07e4 <_end+0xf813b9b8>
     7e8:	00 b0 08 00 	l.j 2c027e8 <_end+0x2b7d9bc>
     7ec:	00 01 79 80 	l.j 5edec <frameBuffer+0x59fc4>
     7f0:	0f 00 00 00 	l.bnf fc0007f0 <_end+0xfbf7b9c4>
     7f4:	2d 08 00 00 	*inconnu*
     7f8:	01 78 81 16 	l.j 5e20c50 <_end+0x5d9be24>
     7fc:	00 00 00 34 	l.j 8cc <perf_cycles_to_time+0x1ac>
     800:	08 00 00 00 	l.adrp r0,0 <_error>
     804:	c4 84 0f 00 	*inconnu*
     808:	00 00 3b 08 	l.j f428 <frameBuffer+0xa600>
     80c:	00 00 00 c3 	l.j b18 <_ntoa_format+0x60>
     810:	85 16 00 00 	l.lwz r8,0(r22)
     814:	00 26 04 04 	l.j 981824 <_end+0x8fc9f8>
     818:	04 00 00 00 	l.jal 818 <perf_cycles_to_time+0xf8>
     81c:	10 04 08 03 	l.bf 102828 <_end+0x7d9fc>
     820:	00 00 00 08 	l.j 840 <perf_cycles_to_time+0x120>
     824:	04 08 04 00 	l.jal 201824 <_end+0x17c9f8>
     828:	00 00 76 04 	l.j 1e038 <frameBuffer+0x19210>
     82c:	10 03 00 00 	l.bf c082c <_end+0x3ba00>
     830:	01 57 13 00 	l.j 55c5430 <_end+0x5540604>
     834:	00 00 a7 08 	l.j 2a454 <frameBuffer+0x2562c>
     838:	02 01 ef 0a 	l.j f807c460 <_end+0xf7ff7634>
     83c:	00 00 00 ef 	l.j bf8 <_ntoa_format+0x140>
     840:	14 00 00 00 	*inconnu*
     844:	62 02 01 ef 	*inconnu*
     848:	1a 00 00 00 	l.movhi r16,0x0
     84c:	7c 00 15 6c 	*inconnu*
     850:	6f 77 00 02 	l.lwa r27,2(r23)
     854:	01 ef 20 00 	l.j 7bc8854 <_end+0x7b43a28>
     858:	00 00 7c 04 	l.j 1f868 <frameBuffer+0x1aa40>
     85c:	00 16 08 02 	l.j 582864 <_end+0x4fda38>
     860:	01 f8 09 00 	l.j 7e02c60 <_end+0x7d7de34>
     864:	00 01 0f 0c 	l.j 44494 <frameBuffer+0x3f66c>
     868:	73 00 01 fa 	l.nios_crr r24,r0,r0,0xfa
     86c:	13 00 00 00 	l.bf fc00086c <_end+0xfbf7ba40>
     870:	c4 0c 6c 6c 	*inconnu*
     874:	00 01 fb 0a 	l.j 7f49c <frameBuffer+0x7a674>
     878:	00 00 00 92 	l.j ac0 <_ntoa_format+0x8>
     87c:	00 17 00 00 	l.j 5c087c <_end+0x53ba50>
     880:	00 00 02 01 	l.j 1084 <_ntoa_long_long+0x15c>
     884:	fc 03 00 00 	*inconnu*
     888:	00 ef 0a 00 	l.j 3bc3088 <_end+0x3b3e25c>
     88c:	00 01 0f 18 	l.j 444ec <frameBuffer+0x3f6c4>
     890:	00 00 00 69 	l.j a34 <putchar+0x1c>
     894:	00 00 01 31 	l.j d58 <_ntoa_format+0x2a0>
     898:	19 00 00 00 	l.movhi r8,0x0
     89c:	34 ff 00 0a 	*inconnu*
     8a0:	00 00 01 21 	l.j d24 <_ntoa_format+0x26c>
     8a4:	1a 00 00 00 	l.movhi r16,0x0
     8a8:	67 02 02 06 	*inconnu*
     8ac:	16 00 00 01 	*inconnu*
     8b0:	31 1b 00 00 	*inconnu*
     8b4:	01 94 01 04 	l.j 6500cc4 <_end+0x647be98>
     8b8:	d3 01 00 00 	*inconnu*
     8bc:	00 92 00 00 	l.j 24808bc <_end+0x23fba90>
     8c0:	00 00 00 00 	l.j 8c0 <perf_cycles_to_time+0x1a0>
     8c4:	05 f0 01 9c 	l.jal 7c00f34 <_end+0x7b7c108>
     8c8:	00 00 04 70 	l.j 1a88 <printf_+0x10>
     8cc:	0d 75 00 12 	l.bnf 5d40914 <_end+0x5cbbae8>
     8d0:	00 00 00 92 	l.j b18 <_ntoa_format+0x60>
     8d4:	00 00 07 5a 	l.j 263c <__umoddi3+0xd8>
     8d8:	0d 76 00 1c 	l.bnf 5d80948 <_end+0x5cfbb1c>
     8dc:	00 00 00 92 	l.j b24 <_ntoa_format+0x6c>
     8e0:	00 00 07 88 	l.j 2700 <__umoddi3+0x19c>
     8e4:	09 63 00 04 	l.adrp r11,60008000 <_end+0x5ff831d4>
     8e8:	d5 09 00 00 	l.sw 16384(r9),r0
     8ec:	00 7c 00 00 	l.j 1f008ec <_end+0x1e7bac0>
     8f0:	07 ce 09 75 	l.jal ff382ec4 <_end+0xff2fe098>
     8f4:	75 00 04 d6 	*inconnu*
     8f8:	0b 00 00 01 	l.adrp r24,2000 <__udivdi3+0x58>
     8fc:	0f 00 00 07 	l.bnf fc000918 <_end+0xfbf7baec>
     900:	eb 09 76 76 	*inconnu*
     904:	00 04 d7 0b 	l.j 136530 <_end+0xb1704>
     908:	00 00 01 0f 	l.j d44 <_ntoa_format+0x28c>
     90c:	00 00 08 0e 	l.j 2944 <__umoddi3+0x3e0>
     910:	09 77 00 04 	l.adrp r11,e0008000 <_end+0xdff831d4>
     914:	d8 0a 00 00 	l.sb 0(r10),r0
     918:	00 92 00 00 	l.j 2480918 <_end+0x23fbaec>
     91c:	08 31 1c 00 	l.adrp r1,23800000 <_end+0x2377b1d4>
     920:	00 04 70 00 	l.j 11c920 <_end+0x97af4>
     924:	00 00 00 00 	l.j 924 <perf_print_cycles+0x38>
     928:	00 01 38 01 	l.j 4e92c <frameBuffer+0x49b04>
     92c:	04 e0 0a 1d 	l.jal 38031a0 <_end+0x377e374>
     930:	00 00 04 92 	l.j 1b78 <fctprintf+0x24>
     934:	00 00 08 4a 	l.j 2a5c <__umoddi3+0x4f8>
     938:	0e 00 00 04 	l.bnf f8000948 <_end+0xf7f7bb1c>
     93c:	8a 0e 00 00 	l.lws r16,0(r14)
     940:	04 82 1e 00 	l.jal 2088140 <_end+0x2003314>
     944:	00 01 38 05 	l.j 4e958 <frameBuffer+0x49b30>
     948:	00 00 04 9b 	l.j 1bb4 <memcpy+0x28>
     94c:	05 00 00 04 	l.jal 400095c <_end+0x3f7bb30>
     950:	a6 05 00 00 	l.andi r16,r5,0x0
     954:	04 b1 01 00 	l.jal 2c40d54 <_end+0x2bbbf28>
     958:	00 04 bc 00 	l.j 12f958 <_end+0xaab2c>
     95c:	00 08 6e 01 	l.j 21c160 <_end+0x197334>
     960:	00 00 04 c7 	l.j 1c7c <memcpy+0xf0>
     964:	00 00 08 c2 	l.j 2c6c <__umoddi3+0x708>
     968:	01 00 00 04 	l.j 4000978 <_end+0x3f7bb4c>
     96c:	d2 00 00 08 	*inconnu*
     970:	f3 01 00 00 	*inconnu*
     974:	04 dd 00 00 	l.jal 3740974 <_end+0x36bbb48>
     978:	09 6a 01 00 	l.adrp r11,40200000 <_end+0x4017b1d4>
     97c:	00 04 e8 00 	l.j 13a97c <_end+0xb5b50>
     980:	00 0a 03 01 	l.j 281584 <_end+0x1fc758>
     984:	00 00 04 f3 	l.j 1d50 <memcpy+0x1c4>
     988:	00 00 0a 0b 	l.j 31b4 <__clz_tab+0x4cc>
     98c:	01 00 00 04 	l.j 400099c <_end+0x3f7bb70>
     990:	fe 00 00 0a 	*inconnu*
     994:	24 01 00 00 	*inconnu*
     998:	05 09 00 00 	l.jal 4240998 <_end+0x41bbb6c>
     99c:	0a 45 01 00 	l.adrp r18,a0200000 <_end+0xa017b1d4>
     9a0:	00 05 13 00 	l.j 1455a0 <_end+0xc0774>
     9a4:	00 0a 62 05 	l.j 2991b8 <_end+0x21438c>
     9a8:	00 00 05 1e 	l.j 1e20 <uart_wait_rx>
     9ac:	07 00 00 05 	l.jal fc0009c0 <_end+0xfbf7bb94>
     9b0:	29 00 00 01 	*inconnu*
     9b4:	6a 00 00 02 	*inconnu*
     9b8:	5e 01 00 00 	*inconnu*
     9bc:	05 2e 00 00 	l.jal 4b809bc <_end+0x4afbb90>
     9c0:	0a 8d 01 00 	l.adrp r20,a0200000 <_end+0xa017b1d4>
     9c4:	00 05 3a 00 	l.j 14f1c4 <_end+0xca398>
     9c8:	00 0a 9b 00 	l.j 2a75c8 <_end+0x22279c>
     9cc:	0f 00 00 05 	l.bnf fc0009e0 <_end+0xfbf7bbb4>
     9d0:	47 00 00 00 	*inconnu*
     9d4:	00 00 00 00 	l.j 9d4 <perf_print_time+0x90>
     9d8:	50 00 00 02 	*inconnu*
     9dc:	a3 01 00 00 	l.addic r24,r1,0
     9e0:	05 4c 00 00 	l.jal 53009e0 <_end+0x527bbb4>
     9e4:	0a a2 01 00 	l.adrp r21,40200000 <_end+0x4017b1d4>
     9e8:	00 05 58 00 	l.j 1569e8 <_end+0xd1bbc>
     9ec:	00 0a aa 05 	l.j 2ab200 <_end+0x2263d4>
     9f0:	00 00 05 64 	l.j 1f80 <vga_puts+0x8>
     9f4:	05 00 00 05 	l.jal 4000a08 <_end+0x3f7bbdc>
     9f8:	70 01 00 00 	l.nios_rrr r0,r1,r0,0x0
     9fc:	05 7c 00 00 	l.jal 5f009fc <_end+0x5e7bbd0>
     a00:	0a b2 05 00 	l.adrp r21,40a00000 <_end+0x4097b1d4>
     a04:	00 05 88 01 	l.j 162a08 <_end+0xddbdc>
     a08:	00 00 05 94 	l.j 2058 <__udivdi3+0xb0>
     a0c:	00 00 0a c1 	l.j 3510 <__clz_tab+0x828>
     a10:	00 07 00 00 	l.j 1c0a10 <_end+0x13bbe4>
     a14:	06 73 00 00 	l.jal f9cc0a14 <_end+0xf9c3bbe8>
     a18:	01 74 00 00 	l.j 5d00a18 <_end+0x5c7bbec>
     a1c:	02 c3 01 00 	l.j fb0c0e1c <_end+0xfb03bff0>
     a20:	00 06 78 00 	l.j 19ea20 <_end+0x119bf4>
     a24:	00 0a c9 01 	l.j 2b2e28 <_end+0x22dffc>
     a28:	00 00 06 84 	l.j 2438 <__udivdi3+0x490>
     a2c:	00 00 0a df 	l.j 35a8 <__clz_tab+0x8c0>
     a30:	00 07 00 00 	l.j 1c0a30 <_end+0x13bc04>
     a34:	06 91 00 00 	l.jal fa440a34 <_end+0xfa3bbc08>
     a38:	01 7f 00 00 	l.j 5fc0a38 <_end+0x5f3bc0c>
     a3c:	02 da 01 00 	l.j fb680e3c <_end+0xfb5fc010>
     a40:	00 06 96 00 	l.j 1a6240 <_end+0x121414>
     a44:	00 0a f5 00 	l.j 2bde44 <_end+0x239018>
     a48:	07 00 00 05 	l.jal fc000a5c <_end+0xfbf7bc30>
     a4c:	a1 00 00 01 	l.addic r8,r0,1
     a50:	94 00 00 02 	l.lhz r0,2(r0)
     a54:	fa 01 00 00 	*inconnu*
     a58:	05 a6 00 00 	l.jal 6980a58 <_end+0x68fbc2c>
     a5c:	0b 10 01 00 	l.adrp r24,200000 <_end+0x17b1d4>
     a60:	00 05 b2 00 	l.j 16d260 <_end+0xe8434>
     a64:	00 0b 18 00 	l.j 2c6a64 <_end+0x241c38>
     a68:	07 00 00 06 	l.jal fc000a80 <_end+0xfbf7bc54>
     a6c:	19 00 00 01 	l.movhi r8,0x1
     a70:	9f 00 00 03 	l.addi r24,r0,3
     a74:	3f 01 00 00 	*inconnu*
     a78:	06 1e 00 00 	l.jal f8780a78 <_end+0xf86fbc4c>
     a7c:	0b 20 01 00 	l.adrp r25,200000 <_end+0x17b1d4>
     a80:	00 06 2a 00 	l.j 18b280 <_end+0x106454>
     a84:	00 0b 37 05 	l.j 2ce698 <_end+0x24986c>
     a88:	00 00 06 36 	l.j 2360 <__udivdi3+0x3b8>
     a8c:	05 00 00 06 	l.jal 4000aa4 <_end+0x3f7bc78>
     a90:	42 01 00 00 	*inconnu*
     a94:	06 4e 00 00 	l.jal f9380a94 <_end+0xf92fbc68>
     a98:	0b 52 01 00 	l.adrp r26,40200000 <_end+0x4017b1d4>
     a9c:	00 06 5a 00 	l.j 19729c <_end+0x112470>
     aa0:	00 0b 68 01 	l.j 2daaa4 <_end+0x255c78>
     aa4:	00 00 06 66 	l.j 243c <__udivdi3+0x494>
     aa8:	00 00 0b 77 	l.j 3884 <__clz_tab+0xb9c>
     aac:	00 07 00 00 	l.j 1c0aac <_end+0x13bc80>
     ab0:	05 bf 00 00 	l.jal 6fc0ab0 <_end+0x6f3bc84>
     ab4:	01 b4 00 00 	l.j 6d00ab4 <_end+0x6c7bc88>
     ab8:	03 84 01 00 	l.j fe100eb8 <_end+0xfe07c08c>
     abc:	00 05 c4 00 	l.j 171abc <_end+0xecc90>
     ac0:	00 0b 8d 01 	l.j 2e3ec4 <_end+0x25f098>
     ac4:	00 00 05 d0 	l.j 2204 <__udivdi3+0x25c>
     ac8:	00 00 0b 95 	l.j 391c <__clz_tab+0xc34>
     acc:	05 00 00 05 	l.jal 4000ae0 <_end+0x3f7bcb4>
     ad0:	dc 05 00 00 	l.sh 0(r5),r0
     ad4:	05 e8 01 00 	l.jal 7a00ed4 <_end+0x797c0a8>
     ad8:	00 05 f4 00 	l.j 17dad8 <_end+0xf8cac>
     adc:	00 0b 9d 01 	l.j 2e7ee0 <_end+0x2630b4>
     ae0:	00 00 06 00 	l.j 22e0 <__udivdi3+0x338>
     ae4:	00 00 0b a5 	l.j 3978 <__clz_tab+0xc90>
     ae8:	01 00 00 06 	l.j 4000b00 <_end+0x3f7bcd4>
     aec:	0c 00 00 0b 	l.bnf b18 <_ntoa_format+0x60>
     af0:	b4 00 1f 00 	l.mfspr r0,r0,0x1f00
     af4:	00 06 a3 00 	l.j 1a96f4 <_end+0x1248c8>
     af8:	00 01 ce 01 	l.j 742fc <frameBuffer+0x6f4d4>
     afc:	00 00 06 a4 	l.j 258c <__umoddi3+0x28>
     b00:	00 00 0b c3 	l.j 3a0c <__clz_tab+0xd24>
     b04:	01 00 00 06 	l.j 4000b1c <_end+0x3f7bcf0>
     b08:	af 00 00 0b 	l.xori r24,r0,11
     b0c:	d9 07 00 00 	l.sb 16384(r7),r0
     b10:	06 ba 00 00 	l.jal fae80b10 <_end+0xfadfbce4>
     b14:	01 d9 00 00 	l.j 7640b14 <_end+0x75bbce8>
     b18:	03 ec 01 00 	l.j ffb00f18 <_end+0xffa7c0ec>
     b1c:	00 06 bf 00 	l.j 1b071c <_end+0x12b8f0>
     b20:	00 0b ef 01 	l.j 2fc724 <_end+0x2778f8>
     b24:	00 00 06 cb 	l.j 2650 <__umoddi3+0xec>
     b28:	00 00 0c 5a 	l.j 3c90 <__clz_tab+0xfa8>
     b2c:	01 00 00 06 	l.j 4000b44 <_end+0x3f7bd18>
     b30:	d7 00 00 0c 	l.sw -16372(r0),r0
     b34:	83 01 00 00 	*inconnu*
     b38:	06 e3 00 00 	l.jal fb8c0b38 <_end+0xfb83bd0c>
     b3c:	0c a7 01 00 	l.bnf 29c0f3c <_end+0x293c110>
     b40:	00 06 ef 00 	l.j 1bc740 <_end+0x137914>
     b44:	00 0c c4 01 	l.j 331b48 <_end+0x2acd1c>
     b48:	00 00 06 fb 	l.j 2734 <__umoddi3+0x1d0>
     b4c:	00 00 0c e8 	l.j 3eec <__clz_tab+0x1204>
     b50:	01 00 00 07 	l.j 4000b6c <_end+0x3f7bd40>
     b54:	07 00 00 0d 	l.jal fc000b88 <_end+0xfbf7bd5c>
     b58:	1a 00 07 00 	l.movhi r16,0x700
     b5c:	00 07 14 00 	l.j 1c5b5c <_end+0x140d30>
     b60:	00 01 f8 00 	l.j 7eb60 <frameBuffer+0x79d38>
     b64:	00 04 3a 01 	l.j 10f368 <_end+0x8a53c>
     b68:	00 00 07 19 	l.j 27cc <__umoddi3+0x268>
     b6c:	00 00 0d 3e 	l.j 4064 <__clz_tab+0x137c>
     b70:	01 00 00 07 	l.j 4000b8c <_end+0x3f7bd60>
     b74:	25 00 00 0d 	*inconnu*
     b78:	46 01 00 00 	*inconnu*
     b7c:	07 31 00 00 	l.jal fcc40b7c <_end+0xfcbbbd50>
     b80:	0d 4e 01 00 	l.bnf 5380f80 <_end+0x52fc154>
     b84:	00 07 3d 00 	l.j 1cff84 <_end+0x14b158>
     b88:	00 0d 56 05 	l.j 35639c <_end+0x2d1570>
     b8c:	00 00 07 49 	l.j 28b0 <__umoddi3+0x34c>
     b90:	01 00 00 07 	l.j 4000bac <_end+0x3f7bd80>
     b94:	55 00 00 0d 	*inconnu*
     b98:	5e 05 00 00 	*inconnu*
     b9c:	07 61 01 00 	l.jal fd840f9c <_end+0xfd7bc170>
     ba0:	00 07 6d 00 	l.j 1dbfa0 <_end+0x157174>
     ba4:	00 0d 79 00 	l.j 35efa4 <_end+0x2da178>
     ba8:	0f 00 00 07 	l.bnf fc000bc4 <_end+0xfbf7bd98>
     bac:	8c 00 00 00 	l.lbz r0,0(r0)
     bb0:	00 00 00 00 	l.j bb0 <_ntoa_format+0xf8>
     bb4:	1c 00 00 04 	*inconnu*
     bb8:	55 01 00 00 	*inconnu*
     bbc:	07 8d 00 00 	l.jal fe340bbc <_end+0xfe2bbd90>
     bc0:	0d 88 00 20 	l.bnf 6200c40 <_end+0x617be14>
     bc4:	00 00 07 7a 	l.j 29ac <__umoddi3+0x448>
     bc8:	00 00 00 00 	l.j bc8 <_ntoa_format+0x110>
     bcc:	00 00 00 18 	l.j c2c <_ntoa_format+0x174>
     bd0:	01 00 00 07 	l.j 4000bec <_end+0x3f7bdc0>
     bd4:	7f 00 00 0d 	*inconnu*
     bd8:	90 00 00 00 	l.lbs r0,0(r0)
     bdc:	00 00 21 00 	l.j 8fdc <frameBuffer+0x41b4>
     be0:	00 01 6b 01 	l.j 5b7e4 <frameBuffer+0x569bc>
     be4:	03 e3 01 00 	l.j ff8c0fe4 <_end+0xff83c1b8>
     be8:	00 00 9d 03 	l.j 27ff4 <frameBuffer+0x231cc>
     bec:	00 00 07 9c 	l.j 2a5c <__umoddi3+0x4f8>
     bf0:	0b 6e 00 17 	l.adrp r27,c002e000 <_end+0xbffa91d4>
     bf4:	00 00 00 9d 	l.j e68 <_ntoa_long+0x40>
     bf8:	0b 64 00 22 	l.adrp r27,80044000 <_end+0x7ffbf1d4>
     bfc:	00 00 00 9d 	l.j e70 <_ntoa_long+0x48>
     c00:	0b 72 70 00 	l.adrp r27,4e000000 <_end+0x4df7b1d4>
     c04:	2e 00 00 07 	*inconnu*
     c08:	9c 03 6e 6e 	l.addi r0,r3,28270
     c0c:	00 03 e5 11 	l.j fa050 <_end+0x75224>
     c10:	00 00 01 1c 	l.j 1080 <_ntoa_long_long+0x158>
     c14:	03 64 64 00 	l.j fd919c14 <_end+0xfd894de8>
     c18:	03 e6 11 00 	l.j ff985018 <_end+0xff9001ec>
     c1c:	00 01 1c 03 	l.j 47c28 <frameBuffer+0x42e00>
     c20:	72 72 00 03 	l.nios_rrr r19,r18,r0,0x3
     c24:	e7 0b 00 00 	*inconnu*
     c28:	01 0f 03 64 	l.j 43c19b8 <_end+0x433cb8c>
     c2c:	30 00 03 e8 	*inconnu*
     c30:	0a 00 00 00 	l.adrp r16,0 <_error>
     c34:	87 03 64 31 	l.lwz r24,25649(r3)
     c38:	00 03 e8 0e 	l.j fac70 <_end+0x75e44>
     c3c:	00 00 00 87 	l.j e58 <_ntoa_long+0x30>
     c40:	03 6e 30 00 	l.j fdb8cc40 <_end+0xfdb07e14>
     c44:	03 e8 12 00 	l.j ffa05444 <_end+0xff980618>
     c48:	00 00 87 03 	l.j 22854 <frameBuffer+0x1da2c>
     c4c:	6e 31 00 03 	l.lwa r17,3(r17)
     c50:	e8 16 00 00 	*inconnu*
     c54:	00 87 03 6e 	l.j 21c1a0c <_end+0x213cbe0>
     c58:	32 00 03 e8 	*inconnu*
     c5c:	1a 00 00 00 	l.movhi r16,0x0
     c60:	87 03 71 30 	l.lwz r24,28976(r3)
     c64:	00 03 e9 0a 	l.j fb08c <_end+0x76260>
     c68:	00 00 00 87 	l.j e84 <_ntoa_long+0x5c>
     c6c:	03 71 31 00 	l.j fdc4d06c <_end+0xfdbc8240>
     c70:	03 e9 0e 00 	l.j ffa44470 <_end+0xff9bf644>
     c74:	00 00 87 03 	l.j 22880 <frameBuffer+0x1da58>
     c78:	62 00 03 ea 	*inconnu*
     c7c:	0a 00 00 00 	l.adrp r16,0 <_error>
     c80:	87 03 62 6d 	l.lwz r24,25197(r3)
     c84:	00 03 ea 0d 	l.j fb4b8 <_end+0x7668c>
     c88:	00 00 00 87 	l.j ea4 <_ntoa_long+0x7c>
     c8c:	03 77 77 00 	l.j fddde88c <_end+0xfdd59a60>
     c90:	04 b3 11 00 	l.jal 2cc5090 <_end+0x2c40264>
     c94:	00 01 1c 06 	l.j 47cac <frameBuffer+0x42e84>
     c98:	00 00 05 47 	l.j 21b4 <__udivdi3+0x20c>
     c9c:	02 00 00 01 	l.j f8000ca0 <_end+0xf7f7be74>
     ca0:	66 04 1a 04 	*inconnu*
     ca4:	00 00 00 87 	l.j ec0 <_ntoa_long+0x98>
     ca8:	03 5f 5f 61 	l.j fd7d8a2c <_end+0xfd753c00>
     cac:	00 04 1a 04 	l.j 1074bc <_end+0x82690>
     cb0:	00 00 00 87 	l.j ecc <_ntoa_long+0xa4>
     cb4:	00 06 00 00 	l.j 180cb4 <_end+0xfbe88>
     cb8:	05 a1 02 00 	l.jal 68414b8 <_end+0x67bc68c>
     cbc:	00 00 25 04 	l.j a0cc <frameBuffer+0x52a4>
     cc0:	26 04 00 00 	*inconnu*
     cc4:	00 87 02 00 	l.j 21c14c4 <_end+0x213c698>
     cc8:	00 00 20 04 	l.j 8cd8 <frameBuffer+0x3eb0>
     ccc:	26 04 00 00 	*inconnu*
     cd0:	00 87 02 00 	l.j 21c14d0 <_end+0x213c6a4>
     cd4:	00 00 d0 04 	l.j 34ce4 <frameBuffer+0x2febc>
     cd8:	26 04 00 00 	*inconnu*
     cdc:	00 87 02 00 	l.j 21c14dc <_end+0x213c6b0>
     ce0:	00 00 cb 04 	l.j 338f0 <frameBuffer+0x2eac8>
     ce4:	26 04 00 00 	*inconnu*
     ce8:	00 87 02 00 	l.j 21c14e8 <_end+0x213c6bc>
     cec:	00 01 85 04 	l.j 620fc <frameBuffer+0x5d2d4>
     cf0:	26 04 00 00 	*inconnu*
     cf4:	00 87 02 00 	l.j 21c14f4 <_end+0x213c6c8>
     cf8:	00 01 80 04 	l.j 60d08 <frameBuffer+0x5bee0>
     cfc:	26 04 00 00 	*inconnu*
     d00:	00 87 03 5f 	l.j 21c1a7c <_end+0x213cc50>
     d04:	5f 6d 00 04 	*inconnu*
     d08:	26 04 00 00 	*inconnu*
     d0c:	00 87 00 06 	l.j 21c0d24 <_end+0x213bef8>
     d10:	00 00 05 bf 	l.j 240c <__udivdi3+0x464>
     d14:	02 00 00 01 	l.j f8000d18 <_end+0xf7f7beec>
     d18:	66 04 32 04 	*inconnu*
     d1c:	00 00 00 87 	l.j f38 <_ntoa_long_long+0x10>
     d20:	03 5f 5f 61 	l.j fd7d8aa4 <_end+0xfd753c78>
     d24:	00 04 32 04 	l.j 10d534 <_end+0x88708>
     d28:	00 00 00 87 	l.j f44 <_ntoa_long_long+0x1c>
     d2c:	00 06 00 00 	l.j 180d2c <_end+0xfbf00>
     d30:	06 19 02 00 	l.jal f8641530 <_end+0xf85bc704>
     d34:	00 00 25 04 	l.j a144 <frameBuffer+0x531c>
     d38:	4b 08 00 00 	*inconnu*
     d3c:	00 87 02 00 	l.j 21c153c <_end+0x213c710>
     d40:	00 00 20 04 	l.j 8d50 <frameBuffer+0x3f28>
     d44:	4b 08 00 00 	*inconnu*
     d48:	00 87 02 00 	l.j 21c1548 <_end+0x213c71c>
     d4c:	00 00 d0 04 	l.j 34d5c <frameBuffer+0x2ff34>
     d50:	4b 08 00 00 	*inconnu*
     d54:	00 87 02 00 	l.j 21c1554 <_end+0x213c728>
     d58:	00 00 cb 04 	l.j 33968 <frameBuffer+0x2eb40>
     d5c:	4b 08 00 00 	*inconnu*
     d60:	00 87 02 00 	l.j 21c1560 <_end+0x213c734>
     d64:	00 01 85 04 	l.j 62174 <frameBuffer+0x5d34c>
     d68:	4b 08 00 00 	*inconnu*
     d6c:	00 87 02 00 	l.j 21c156c <_end+0x213c740>
     d70:	00 01 80 04 	l.j 60d80 <frameBuffer+0x5bf58>
     d74:	4b 08 00 00 	*inconnu*
     d78:	00 87 03 5f 	l.j 21c1af4 <_end+0x213ccc8>
     d7c:	5f 6d 00 04 	*inconnu*
     d80:	4b 08 00 00 	*inconnu*
     d84:	00 87 00 06 	l.j 21c0d9c <_end+0x213bf70>
     d88:	00 00 06 73 	l.j 2754 <__umoddi3+0x1f0>
     d8c:	02 00 00 00 	l.j f8000d8c <_end+0xf7f7bf60>
     d90:	25 04 50 04 	*inconnu*
     d94:	00 00 00 87 	l.j fb0 <_ntoa_long_long+0x88>
     d98:	02 00 00 00 	l.j f8000d98 <_end+0xf7f7bf6c>
     d9c:	20 04 50 04 	*inconnu*
     da0:	00 00 00 87 	l.j fbc <_ntoa_long_long+0x94>
     da4:	02 00 00 00 	l.j f8000da4 <_end+0xf7f7bf78>
     da8:	d0 04 50 04 	*inconnu*
     dac:	00 00 00 87 	l.j fc8 <_ntoa_long_long+0xa0>
     db0:	02 00 00 00 	l.j f8000db0 <_end+0xf7f7bf84>
     db4:	cb 04 50 04 	*inconnu*
     db8:	00 00 00 87 	l.j fd4 <_ntoa_long_long+0xac>
     dbc:	02 00 00 01 	l.j f8000dc0 <_end+0xf7f7bf94>
     dc0:	85 04 50 04 	l.lwz r8,20484(r4)
     dc4:	00 00 00 87 	l.j fe0 <_ntoa_long_long+0xb8>
     dc8:	02 00 00 01 	l.j f8000dcc <_end+0xf7f7bfa0>
     dcc:	80 04 50 04 	*inconnu*
     dd0:	00 00 00 87 	l.j fec <_ntoa_long_long+0xc4>
     dd4:	03 5f 5f 6d 	l.j fd7d8b88 <_end+0xfd753d5c>
     dd8:	00 04 50 04 	l.j 114de8 <_end+0x8ffbc>
     ddc:	00 00 00 87 	l.j ff8 <_ntoa_long_long+0xd0>
     de0:	00 06 00 00 	l.j 180de0 <_end+0xfbfb4>
     de4:	06 91 02 00 	l.jal fa4415e4 <_end+0xfa3bc7b8>
     de8:	00 01 66 04 	l.j 5a5f8 <frameBuffer+0x557d0>
     dec:	73 04 00 00 	l.nios_rrr r24,r4,r0,0x0
     df0:	00 87 03 5f 	l.j 21c1b6c <_end+0x213cd40>
     df4:	5f 61 00 04 	*inconnu*
     df8:	73 04 00 00 	l.nios_rrr r24,r4,r0,0x0
     dfc:	00 87 00 06 	l.j 21c0e14 <_end+0x213bfe8>
     e00:	00 00 06 a3 	l.j 288c <__umoddi3+0x328>
     e04:	03 5f 5f 78 	l.j fd7d8be4 <_end+0xfd753db8>
     e08:	00 04 81 05 	l.j 12121c <_end+0x9c3f0>
     e0c:	00 00 00 87 	l.j 1028 <_ntoa_long_long+0x100>
     e10:	00 10 03 6d 	l.j 401bc4 <_end+0x37cd98>
     e14:	31 00 04 91 	*inconnu*
     e18:	0f 00 00 00 	l.bnf fc000e18 <_end+0xfbf7bfec>
     e1c:	87 03 6d 30 	l.lwz r24,27952(r3)
     e20:	00 04 91 13 	l.j 12526c <_end+0xa0440>
     e24:	00 00 00 87 	l.j 1040 <_ntoa_long_long+0x118>
     e28:	06 00 00 07 	l.jal f8000e44 <_end+0xf7f7c018>
     e2c:	14 02 00 00 	*inconnu*
     e30:	00 25 04 9c 	l.j 9420a0 <_end+0x8bd274>
     e34:	08 00 00 00 	l.adrp r0,0 <_error>
     e38:	87 02 00 00 	l.lwz r24,0(r2)
     e3c:	00 20 04 9c 	l.j 8020ac <_end+0x77d280>
     e40:	08 00 00 00 	l.adrp r0,0 <_error>
     e44:	87 02 00 00 	l.lwz r24,0(r2)
     e48:	00 d0 04 9c 	l.j 34020b8 <_end+0x337d28c>
     e4c:	08 00 00 00 	l.adrp r0,0 <_error>
     e50:	87 02 00 00 	l.lwz r24,0(r2)
     e54:	00 cb 04 9c 	l.j 32c20c4 <_end+0x323d298>
     e58:	08 00 00 00 	l.adrp r0,0 <_error>
     e5c:	87 02 00 00 	l.lwz r24,0(r2)
     e60:	01 85 04 9c 	l.j 61420d0 <_end+0x60bd2a4>
     e64:	08 00 00 00 	l.adrp r0,0 <_error>
     e68:	87 02 00 00 	l.lwz r24,0(r2)
     e6c:	01 80 04 9c 	l.j 60020dc <_end+0x5f7d2b0>
     e70:	08 00 00 00 	l.adrp r0,0 <_error>
     e74:	87 03 5f 5f 	l.lwz r24,24415(r3)
     e78:	6d 00 04 9c 	l.lwa r8,1180(r0)
     e7c:	08 00 00 00 	l.adrp r0,0 <_error>
     e80:	87 00 06 00 	l.lwz r24,1536(r0)
     e84:	00 07 7a 02 	l.j 1df68c <_end+0x15a860>
     e88:	00 00 00 8b 	l.j 10b4 <_ntoa_long_long+0x18c>
     e8c:	04 9d 08 00 	l.jal 2742e8c <_end+0x26be060>
     e90:	00 00 87 02 	l.j 22a98 <frameBuffer+0x1dc70>
     e94:	00 00 00 90 	l.j 10d4 <_ntoa_long_long+0x1ac>
     e98:	04 9d 08 00 	l.jal 2742e98 <_end+0x26be06c>
     e9c:	00 00 87 02 	l.j 22aa4 <frameBuffer+0x1dc7c>
     ea0:	00 00 00 95 	l.j 10f4 <_out_char+0xc>
     ea4:	04 9d 08 00 	l.jal 2742ea4 <_end+0x26be078>
     ea8:	00 00 87 02 	l.j 22ab0 <frameBuffer+0x1dc88>
     eac:	00 00 00 9a 	l.j 1114 <_out_fct>
     eb0:	04 9d 08 00 	l.jal 2742eb0 <_end+0x26be084>
     eb4:	00 00 87 02 	l.j 22abc <frameBuffer+0x1dc94>
     eb8:	00 00 01 8f 	l.j 14f4 <_vsnprintf+0x3b0>
     ebc:	04 9d 08 00 	l.jal 2742ebc <_end+0x26be090>
     ec0:	00 00 87 02 	l.j 22ac8 <frameBuffer+0x1dca0>
     ec4:	00 00 00 2f 	l.j f80 <_ntoa_long_long+0x58>
     ec8:	04 9d 08 00 	l.jal 2742ec8 <_end+0x26be09c>
     ecc:	00 00 87 02 	l.j 22ad4 <frameBuffer+0x1dcac>
     ed0:	00 00 01 8a 	l.j 14f8 <_vsnprintf+0x3b4>
     ed4:	04 9d 08 00 	l.jal 2742ed4 <_end+0x26be0a8>
     ed8:	00 00 87 02 	l.j 22ae0 <frameBuffer+0x1dcb8>
     edc:	00 00 00 2a 	l.j f84 <_ntoa_long_long+0x5c>
     ee0:	04 9d 08 00 	l.jal 2742ee0 <_end+0x26be0b4>
     ee4:	00 00 87 00 	l.j 22ae4 <frameBuffer+0x1dcbc>
     ee8:	06 00 00 07 	l.jal f8000f04 <_end+0xf7f7c0d8>
     eec:	8c 03 5f 5f 	l.lbz r0,24415(r3)
     ef0:	78 00 04 a2 	*inconnu*
     ef4:	05 00 00 00 	l.jal 4000ef4 <_end+0x3f7c0c8>
     ef8:	87 00 10 03 	l.lwz r24,4099(r0)
     efc:	5f 5f 78 00 	*inconnu*
     f00:	04 aa 05 00 	l.jal 2a82300 <_end+0x29fd4d4>
     f04:	00 00 87 00 	l.j 22b04 <frameBuffer+0x1dcdc>
     f08:	00 00 22 04 	l.j 9718 <frameBuffer+0x48f0>
     f0c:	00 00 00 9d 	l.j 1180 <_vsnprintf+0x3c>
     f10:	00 00 00 07 	l.j f2c <_ntoa_long_long+0x4>
     f14:	30 00 05 01 	*inconnu*
     f18:	04 00 00 03 	l.jal f24 <_ntoa_long+0xfc>
     f1c:	7c 10 00 00 	*inconnu*
     f20:	00 d5 1d 00 	l.j 3548320 <_end+0x34c34f4>
     f24:	00 00 00 00 	l.j f24 <_ntoa_long+0xfc>
     f28:	00 00 2f 00 	l.j cb28 <frameBuffer+0x7d00>
     f2c:	00 1f a8 00 	l.j 7eaf2c <_end+0x766100>
     f30:	00 05 bc 00 	l.j 16ff30 <_end+0xeb104>
     f34:	00 1d 7e 04 	l.j 760744 <_end+0x6db918>
     f38:	08 07 00 00 	l.adrp r0,e0000000 <_end+0xdff7b1d4>
     f3c:	00 4b 04 04 	l.j 12c1f4c <_end+0x123d120>
     f40:	07 00 00 00 	l.jal fc000f40 <_end+0xfbf7c114>
     f44:	55 11 04 05 	*inconnu*
     f48:	69 6e 74 00 	*inconnu*
     f4c:	04 08 05 00 	l.jal 20234c <_end+0x17d520>
     f50:	00 00 3d 04 	l.j 10360 <frameBuffer+0xb538>
     f54:	08 04 00 00 	l.adrp r0,80000000 <_end+0x7ff7b1d4>
     f58:	00 71 04 01 	l.j 1c41f5c <_end+0x1bbd130>
     f5c:	08 00 00 00 	l.adrp r0,0 <_error>
     f60:	7d 04 01 06 	*inconnu*
     f64:	00 00 00 86 	l.j 117c <_vsnprintf+0x38>
     f68:	04 01 06 00 	l.jal 42768 <frameBuffer+0x3d940>
     f6c:	00 00 7f 08 	l.j 20b8c <frameBuffer+0x1bd64>
     f70:	00 00 00 9f 	l.j 11ec <_vsnprintf+0xa8>
     f74:	7b 16 00 00 	*inconnu*
     f78:	00 49 09 00 	l.j 1243378 <_end+0x11be54c>
     f7c:	00 00 5e 04 	l.j 1878c <frameBuffer+0x13964>
     f80:	02 05 00 00 	l.j f8140f80 <_end+0xf80bc154>
     f84:	00 16 04 02 	l.j 581f8c <_end+0x4fd160>
     f88:	07 00 00 00 	l.jal fc000f88 <_end+0xfbf7c15c>
     f8c:	b0 08 00 00 	l.muli r0,r8,0
     f90:	01 79 80 0f 	l.j 5e60fcc <_end+0x5ddc1a0>
     f94:	00 00 00 34 	l.j 1064 <_ntoa_long_long+0x13c>
     f98:	08 00 00 01 	l.adrp r0,2000 <__udivdi3+0x58>
     f9c:	78 81 16 00 	*inconnu*
     fa0:	00 00 2d 08 	l.j c3c0 <frameBuffer+0x7598>
     fa4:	00 00 00 c4 	l.j 12b4 <_vsnprintf+0x170>
     fa8:	84 0f 00 00 	l.lwz r0,0(r15)
     fac:	00 3b 08 00 	l.j ec2fac <_end+0xe3e180>
     fb0:	00 00 c3 85 	l.j 31dc4 <frameBuffer+0x2cf9c>
     fb4:	16 00 00 00 	*inconnu*
     fb8:	26 04 04 04 	*inconnu*
     fbc:	00 00 00 10 	l.j ffc <_ntoa_long_long+0xd4>
     fc0:	04 08 03 00 	l.jal 201bc0 <_end+0x17cd94>
     fc4:	00 00 08 04 	l.j 2fd4 <__clz_tab+0x2ec>
     fc8:	08 04 00 00 	l.adrp r0,80000000 <_end+0x7ff7b1d4>
     fcc:	00 76 04 10 	l.j 1d8200c <_end+0x1cfd1e0>
     fd0:	03 00 00 01 	l.j fc000fd4 <_end+0xfbf7c1a8>
     fd4:	57 12 00 00 	*inconnu*
     fd8:	00 a7 08 02 	l.j 29c2fe0 <_end+0x293e1b4>
     fdc:	01 ef 0a 00 	l.j 7bc37dc <_end+0x7b3e9b0>
     fe0:	00 00 ef 13 	l.j 3cc2c <frameBuffer+0x37e04>
     fe4:	00 00 00 62 	l.j 116c <_vsnprintf+0x28>
     fe8:	02 01 ef 1a 	l.j f807cc50 <_end+0xf7ff7e24>
     fec:	00 00 00 7c 	l.j 11dc <_vsnprintf+0x98>
     ff0:	00 14 6c 6f 	l.j 51c1ac <_end+0x497380>
     ff4:	77 00 02 01 	*inconnu*
     ff8:	ef 20 00 00 	*inconnu*
     ffc:	00 7c 04 00 	l.j 1f01ffc <_end+0x1e7d1d0>
    1000:	15 08 02 01 	*inconnu*
    1004:	f8 09 00 00 	*inconnu*
    1008:	01 0f 0c 73 	l.j 43c41d4 <_end+0x433f3a8>
    100c:	00 01 fa 13 	l.j 7f858 <frameBuffer+0x7aa30>
    1010:	00 00 00 c4 	l.j 1320 <_vsnprintf+0x1dc>
    1014:	0c 6c 6c 00 	l.bnf 1b1c014 <_end+0x1a971e8>
    1018:	01 fb 0a 00 	l.j 7ec3818 <_end+0x7e3e9ec>
    101c:	00 00 92 00 	l.j 2581c <frameBuffer+0x209f4>
    1020:	16 00 00 00 	*inconnu*
    1024:	00 02 01 fc 	l.j 81814 <frameBuffer+0x7c9ec>
    1028:	03 00 00 00 	l.j fc001028 <_end+0xfbf7c1fc>
    102c:	ef 09 00 00 	*inconnu*
    1030:	01 0f 17 00 	l.j 43c6c30 <_end+0x4341e04>
    1034:	00 00 69 00 	l.j 1b434 <frameBuffer+0x1660c>
    1038:	00 01 31 18 	l.j 4d498 <frameBuffer+0x48670>
    103c:	00 00 00 2d 	l.j 10f0 <_out_char+0x8>
    1040:	ff 00 09 00 	*inconnu*
    1044:	00 01 21 19 	l.j 494a8 <frameBuffer+0x44680>
    1048:	00 00 00 67 	l.j 11e4 <_vsnprintf+0xa0>
    104c:	02 02 06 16 	l.j f80828a4 <_end+0xf7ffda78>
    1050:	00 00 01 31 	l.j 1514 <_vsnprintf+0x3d0>
    1054:	1a 00 00 01 	l.movhi r16,0x1
    1058:	9d 01 05 12 	l.addi r8,r1,1298
    105c:	01 00 00 00 	l.j 400105c <_end+0x3f7c230>
    1060:	9d 00 00 1f 	l.addi r8,r0,31
    1064:	a8 00 00 05 	l.ori r0,r0,0x5
    1068:	bc 01 9c 00 	l.sfeqi r1,-25600
    106c:	00 04 01 0d 	l.j 1014a0 <_end+0x7c674>
    1070:	6e 00 14 00 	l.lwa r16,5120(r0)
    1074:	00 00 9d 00 	l.j 28474 <frameBuffer+0x2364c>
    1078:	00 0d ab 0d 	l.j 36bcac <_end+0x2e6e80>
    107c:	64 00 1f 00 	*inconnu*
    1080:	00 00 9d 00 	l.j 28480 <frameBuffer+0x23658>
    1084:	00 0e 39 1b 	l.j 38f4f0 <_end+0x30a6c4>
    1088:	00 00 04 01 	l.j 208c <__udivdi3+0xe4>
    108c:	00 00 1f a8 	l.j 8f2c <frameBuffer+0x4104>
    1090:	00 00 02 0f 	l.j 18cc <_vsnprintf+0x788>
    1094:	01 05 14 0a 	l.j 41460bc <_end+0x40c1290>
    1098:	0a 00 00 04 	l.adrp r16,8000 <frameBuffer+0x31d8>
    109c:	23 00 00 0e 	*inconnu*
    10a0:	a5 0a 00 00 	l.andi r8,r10,0x0
    10a4:	04 1b 00 00 	l.jal 6c10a4 <_end+0x63c278>
    10a8:	0e d5 0a 00 	l.bnf fb5438a8 <_end+0xfb4bea7c>
    10ac:	00 04 13 00 	l.j 105cac <_end+0x80e80>
    10b0:	00 0f 1c 1c 	l.j 3c8120 <_end+0x3432f4>
    10b4:	00 00 02 41 	l.j 19b8 <_vsnprintf+0x874>
    10b8:	06 00 00 04 	l.jal f80010c8 <_end+0xf7f7c29c>
    10bc:	2c 06 00 00 	*inconnu*
    10c0:	04 37 06 00 	l.jal dc28c0 <_end+0xd3da94>
    10c4:	00 04 42 01 	l.j 1118c8 <_end+0x8ca9c>
    10c8:	00 00 04 4d 	l.j 21fc <__udivdi3+0x254>
    10cc:	00 00 0f 79 	l.j 4eb0 <frameBuffer+0x88>
    10d0:	01 00 00 04 	l.j 40010e0 <_end+0x3f7c2b4>
    10d4:	58 00 00 0f 	*inconnu*
    10d8:	c3 01 00 00 	l.mtspr r1,r0,0xc000
    10dc:	04 63 00 00 	l.jal 18c10dc <_end+0x183c2b0>
    10e0:	10 10 01 00 	l.bf 4014e0 <_end+0x37c6b4>
    10e4:	00 04 6e 00 	l.j 11c8e4 <_end+0x97ab8>
    10e8:	00 10 88 01 	l.j 4230ec <_end+0x39e2c0>
    10ec:	00 00 04 79 	l.j 22d0 <__udivdi3+0x328>
    10f0:	00 00 10 e8 	l.j 5490 <frameBuffer+0x668>
    10f4:	01 00 00 04 	l.j 4001104 <_end+0x3f7c2d8>
    10f8:	84 00 00 10 	l.lwz r0,16(r0)
    10fc:	f0 01 00 00 	*inconnu*
    1100:	04 8f 00 00 	l.jal 23c1100 <_end+0x233c2d4>
    1104:	11 2b 01 00 	l.bf 4ac1504 <_end+0x4a3c6d8>
    1108:	00 04 9a 00 	l.j 127908 <_end+0xa2adc>
    110c:	00 11 3c 01 	l.j 450110 <_end+0x3cb2e4>
    1110:	00 00 04 a4 	l.j 23a0 <__udivdi3+0x3f8>
    1114:	00 00 11 4b 	l.j 5640 <frameBuffer+0x818>
    1118:	06 00 00 04 	l.jal f8001128 <_end+0xf7f7c2fc>
    111c:	af 07 00 00 	l.xori r24,r7,0
    1120:	04 ba 00 00 	l.jal 2e81120 <_end+0x2dfc2f4>
    1124:	02 78 00 00 	l.j f9e01124 <_end+0xf9d7c2f8>
    1128:	02 2c 01 00 	l.j f8b01528 <_end+0xf8a7c6fc>
    112c:	00 04 bf 00 	l.j 130d2c <_end+0xabf00>
    1130:	00 11 7c 01 	l.j 460134 <_end+0x3db308>
    1134:	00 00 04 cb 	l.j 2460 <__udivdi3+0x4b8>
    1138:	00 00 11 99 	l.j 579c <frameBuffer+0x974>
    113c:	00 07 00 00 	l.j 1c113c <_end+0x13c310>
    1140:	04 d8 00 00 	l.jal 3601140 <_end+0x357c314>
    1144:	02 81 00 00 	l.j fa041144 <_end+0xf9fbc318>
    1148:	02 79 01 00 	l.j f9e41548 <_end+0xf9dbc71c>
    114c:	00 04 dd 00 	l.j 13854c <_end+0xb3720>
    1150:	00 11 9f 01 	l.j 468d54 <_end+0x3e3f28>
    1154:	00 00 04 e9 	l.j 24f8 <__udivdi3+0x550>
    1158:	00 00 11 c5 	l.j 586c <frameBuffer+0xa44>
    115c:	01 00 00 04 	l.j 400116c <_end+0x3f7c340>
    1160:	f5 00 00 11 	*inconnu*
    1164:	e1 01 00 00 	l.add r8,r1,r0
    1168:	05 01 00 00 	l.jal 4041168 <_end+0x3fbc33c>
    116c:	11 fe 01 00 	l.bf 7f8156c <_end+0x7efc740>
    1170:	00 05 0d 00 	l.j 144570 <_end+0xbf744>
    1174:	00 12 14 01 	l.j 486178 <_end+0x40134c>
    1178:	00 00 05 19 	l.j 25dc <__umoddi3+0x78>
    117c:	00 00 12 2a 	l.j 5a24 <frameBuffer+0xbfc>
    1180:	01 00 00 05 	l.j 4001194 <_end+0x3f7c368>
    1184:	25 00 00 12 	*inconnu*
    1188:	39 00 07 00 	*inconnu*
    118c:	00 06 04 00 	l.j 18218c <_end+0xfd360>
    1190:	00 02 96 00 	l.j a6990 <_end+0x21b64>
    1194:	00 02 99 01 	l.j a7598 <_end+0x2276c>
    1198:	00 00 06 09 	l.j 29bc <__umoddi3+0x458>
    119c:	00 00 12 4f 	l.j 5ad8 <frameBuffer+0xcb0>
    11a0:	01 00 00 06 	l.j 40011b8 <_end+0x3f7c38c>
    11a4:	15 00 00 12 	l.nop 0x12
    11a8:	65 00 07 00 	*inconnu*
    11ac:	00 05 32 00 	l.j 14d9ac <_end+0xc8b80>
    11b0:	00 02 a1 00 	l.j a95b0 <_end+0x24784>
    11b4:	00 02 b9 01 	l.j af5b8 <_end+0x2a78c>
    11b8:	00 00 05 37 	l.j 2694 <__umoddi3+0x130>
    11bc:	00 00 12 7b 	l.j 5ba8 <frameBuffer+0xd80>
    11c0:	01 00 00 05 	l.j 40011d4 <_end+0x3f7c3a8>
    11c4:	43 00 00 12 	*inconnu*
    11c8:	83 00 07 00 	*inconnu*
    11cc:	00 05 aa 00 	l.j 16b9cc <_end+0xe6ba0>
    11d0:	00 02 ac 00 	l.j ac1d0 <_end+0x273a4>
    11d4:	00 02 fe 06 	l.j c09ec <_end+0x3bbc0>
    11d8:	00 00 05 af 	l.j 2894 <__umoddi3+0x330>
    11dc:	06 00 00 05 	l.jal f80011f0 <_end+0xf7f7c3c4>
    11e0:	bb 01 00 00 	l.slli r24,r1,0x0
    11e4:	05 c7 00 00 	l.jal 71c11e4 <_end+0x713c3b8>
    11e8:	12 92 01 00 	l.bf fa4815e8 <_end+0xfa3fc7bc>
    11ec:	00 05 d3 00 	l.j 175dec <_end+0xf0fc0>
    11f0:	00 12 af 01 	l.j 4acdf4 <_end+0x427fc8>
    11f4:	00 00 05 df 	l.j 2970 <__umoddi3+0x40c>
    11f8:	00 00 12 c5 	l.j 5d0c <frameBuffer+0xee4>
    11fc:	01 00 00 05 	l.j 4001210 <_end+0x3f7c3e4>
    1200:	eb 00 00 12 	*inconnu*
    1204:	e2 01 00 00 	l.add r16,r1,r0
    1208:	05 f7 00 00 	l.jal 7dc1208 <_end+0x7d3c3dc>
    120c:	12 f1 00 07 	l.bf fbc41228 <_end+0xfbbbc3fc>
    1210:	00 00 06 34 	l.j 2ae0 <__umoddi3+0x57c>
    1214:	00 00 02 c6 	l.j 1d2c <memcpy+0x1a0>
    1218:	00 00 03 b5 	l.j 20ec <__udivdi3+0x144>
    121c:	01 00 00 06 	l.j 4001234 <_end+0x3f7c408>
    1220:	35 00 00 13 	*inconnu*
    1224:	07 01 00 00 	l.jal fc041224 <_end+0xfbfbc3f8>
    1228:	06 40 00 00 	l.jal f9001228 <_end+0xf8f7c3fc>
    122c:	13 0f 07 00 	l.bf fc3c2e2c <_end+0xfc33e000>
    1230:	00 06 4b 00 	l.j 193e30 <_end+0x10f004>
    1234:	00 02 d1 00 	l.j b5634 <_end+0x30808>
    1238:	00 03 6a 01 	l.j dba3c <_end+0x56c10>
    123c:	00 00 06 50 	l.j 2b7c <__umoddi3+0x618>
    1240:	00 00 13 26 	l.j 5ed8 <frameBuffer+0x10b0>
    1244:	01 00 00 06 	l.j 400125c <_end+0x3f7c430>
    1248:	5c 00 00 13 	*inconnu*
    124c:	6e 01 00 00 	l.lwa r16,0(r1)
    1250:	06 68 00 00 	l.jal f9a01250 <_end+0xf997c424>
    1254:	13 91 01 00 	l.bf fe441654 <_end+0xfe3bc828>
    1258:	00 06 74 00 	l.j 19e258 <_end+0x11942c>
    125c:	00 13 b5 01 	l.j 4ee660 <_end+0x469834>
    1260:	00 00 06 80 	l.j 2c60 <__umoddi3+0x6fc>
    1264:	00 00 13 d2 	l.j 61ac <frameBuffer+0x1384>
    1268:	01 00 00 06 	l.j 4001280 <_end+0x3f7c454>
    126c:	8c 00 00 13 	l.lbz r0,19(r0)
    1270:	e8 01 00 00 	*inconnu*
    1274:	06 98 00 00 	l.jal fa601274 <_end+0xfa57c448>
    1278:	14 05 00 0e 	*inconnu*
    127c:	00 00 06 a5 	l.j 2d10 <__clz_tab+0x28>
    1280:	00 00 02 f0 	l.j 1e40 <uart_wait_rx+0x20>
    1284:	01 00 00 06 	l.j 400129c <_end+0x3f7c470>
    1288:	aa 00 00 14 	l.ori r16,r0,0x14
    128c:	22 01 00 00 	*inconnu*
    1290:	06 b6 00 00 	l.jal fad81290 <_end+0xfacfc464>
    1294:	14 2a 01 00 	*inconnu*
    1298:	00 06 c2 00 	l.j 1b1a98 <_end+0x12cc6c>
    129c:	00 14 32 01 	l.j 50daa0 <_end+0x488c74>
    12a0:	00 00 06 ce 	l.j 2dd8 <__clz_tab+0xf0>
    12a4:	00 00 14 3a 	l.j 638c <frameBuffer+0x1564>
    12a8:	06 00 00 06 	l.jal f80012c0 <_end+0xf7f7c494>
    12ac:	da 06 00 00 	l.sb -32768(r6),r0
    12b0:	06 e6 01 00 	l.jal fb9816b0 <_end+0xfb8fc884>
    12b4:	00 06 f2 00 	l.j 1bdab4 <_end+0x138c88>
    12b8:	00 14 42 01 	l.j 511abc <_end+0x48cc90>
    12bc:	00 00 06 fe 	l.j 2eb4 <__clz_tab+0x1cc>
    12c0:	00 00 14 87 	l.j 64dc <frameBuffer+0x16b4>
    12c4:	00 00 0e 00 	l.j 4ac4 <__clz_tab+0x1ddc>
    12c8:	00 05 50 00 	l.j 1552c8 <_end+0xd049c>
    12cc:	00 03 05 01 	l.j c26d0 <_end+0x3d8a4>
    12d0:	00 00 05 55 	l.j 2824 <__umoddi3+0x2c0>
    12d4:	00 00 14 8f 	l.j 6510 <frameBuffer+0x16e8>
    12d8:	01 00 00 05 	l.j 40012ec <_end+0x3f7c4c0>
    12dc:	61 00 00 14 	*inconnu*
    12e0:	9e 01 00 00 	l.addi r16,r1,0
    12e4:	05 6d 00 00 	l.jal 5b412e4 <_end+0x5abc4b8>
    12e8:	14 ad 01 00 	*inconnu*
    12ec:	00 05 79 00 	l.j 15f6ec <_end+0xda8c0>
    12f0:	00 14 d1 01 	l.j 5356f4 <_end+0x4b08c8>
    12f4:	00 00 05 85 	l.j 2908 <__umoddi3+0x3a4>
    12f8:	00 00 14 ee 	l.j 66b0 <frameBuffer+0x1888>
    12fc:	01 00 00 05 	l.j 4001310 <_end+0x3f7c4e4>
    1300:	91 00 00 15 	l.lbs r8,21(r0)
    1304:	04 01 00 00 	l.jal 41304 <frameBuffer+0x3c4dc>
    1308:	05 9d 00 00 	l.jal 6741308 <_end+0x66bc4dc>
    130c:	15 1a 00 00 	*inconnu*
    1310:	00 00 1d 00 	l.j 8710 <frameBuffer+0x38e8>
    1314:	00 01 6b 01 	l.j 5bf18 <frameBuffer+0x570f0>
    1318:	03 e3 01 00 	l.j ff8c1718 <_end+0xff83c8ec>
    131c:	00 00 9d 03 	l.j 28728 <frameBuffer+0x23900>
    1320:	00 00 07 2d 	l.j 2fd4 <__clz_tab+0x2ec>
    1324:	0b 6e 00 17 	l.adrp r27,c002e000 <_end+0xbffa91d4>
    1328:	00 00 00 9d 	l.j 159c <_vsnprintf+0x458>
    132c:	0b 64 00 22 	l.adrp r27,80044000 <_end+0x7ffbf1d4>
    1330:	00 00 00 9d 	l.j 15a4 <_vsnprintf+0x460>
    1334:	0b 72 70 00 	l.adrp r27,4e000000 <_end+0x4df7b1d4>
    1338:	2e 00 00 07 	*inconnu*
    133c:	2d 03 6e 6e 	*inconnu*
    1340:	00 03 e5 11 	l.j fa784 <_end+0x75958>
    1344:	00 00 01 1c 	l.j 17b4 <_vsnprintf+0x670>
    1348:	03 64 64 00 	l.j fd91a348 <_end+0xfd89551c>
    134c:	03 e6 11 00 	l.j ff98574c <_end+0xff900920>
    1350:	00 01 1c 03 	l.j 4835c <frameBuffer+0x43534>
    1354:	72 72 00 03 	l.nios_rrr r19,r18,r0,0x3
    1358:	e7 0b 00 00 	*inconnu*
    135c:	01 0f 03 64 	l.j 43c20ec <_end+0x433d2c0>
    1360:	30 00 03 e8 	*inconnu*
    1364:	0a 00 00 00 	l.adrp r16,0 <_error>
    1368:	87 03 64 31 	l.lwz r24,25649(r3)
    136c:	00 03 e8 0e 	l.j fb3a4 <_end+0x76578>
    1370:	00 00 00 87 	l.j 158c <_vsnprintf+0x448>
    1374:	03 6e 30 00 	l.j fdb8d374 <_end+0xfdb08548>
    1378:	03 e8 12 00 	l.j ffa05b78 <_end+0xff980d4c>
    137c:	00 00 87 03 	l.j 22f88 <frameBuffer+0x1e160>
    1380:	6e 31 00 03 	l.lwa r17,3(r17)
    1384:	e8 16 00 00 	*inconnu*
    1388:	00 87 03 6e 	l.j 21c2140 <_end+0x213d314>
    138c:	32 00 03 e8 	*inconnu*
    1390:	1a 00 00 00 	l.movhi r16,0x0
    1394:	87 03 71 30 	l.lwz r24,28976(r3)
    1398:	00 03 e9 0a 	l.j fb7c0 <_end+0x76994>
    139c:	00 00 00 87 	l.j 15b8 <_vsnprintf+0x474>
    13a0:	03 71 31 00 	l.j fdc4d7a0 <_end+0xfdbc8974>
    13a4:	03 e9 0e 00 	l.j ffa44ba4 <_end+0xff9bfd78>
    13a8:	00 00 87 03 	l.j 22fb4 <frameBuffer+0x1e18c>
    13ac:	62 00 03 ea 	*inconnu*
    13b0:	0a 00 00 00 	l.adrp r16,0 <_error>
    13b4:	87 03 62 6d 	l.lwz r24,25197(r3)
    13b8:	00 03 ea 0d 	l.j fbbec <_end+0x76dc0>
    13bc:	00 00 00 87 	l.j 15d8 <_vsnprintf+0x494>
    13c0:	03 77 77 00 	l.j fdddefc0 <_end+0xfdd5a194>
    13c4:	04 b3 11 00 	l.jal 2cc57c4 <_end+0x2c40998>
    13c8:	00 01 1c 05 	l.j 483dc <frameBuffer+0x435b4>
    13cc:	00 00 04 d8 	l.j 272c <__umoddi3+0x1c8>
    13d0:	02 00 00 01 	l.j f80013d4 <_end+0xf7f7c5a8>
    13d4:	66 04 1a 04 	*inconnu*
    13d8:	00 00 00 87 	l.j 15f4 <_vsnprintf+0x4b0>
    13dc:	03 5f 5f 61 	l.j fd7d9160 <_end+0xfd754334>
    13e0:	00 04 1a 04 	l.j 107bf0 <_end+0x82dc4>
    13e4:	00 00 00 87 	l.j 1600 <_vsnprintf+0x4bc>
    13e8:	00 05 00 00 	l.j 1413e8 <_end+0xbc5bc>
    13ec:	05 32 02 00 	l.jal 4c81bec <_end+0x4bfcdc0>
    13f0:	00 00 25 04 	l.j a800 <frameBuffer+0x59d8>
    13f4:	26 04 00 00 	*inconnu*
    13f8:	00 87 02 00 	l.j 21c1bf8 <_end+0x213cdcc>
    13fc:	00 00 20 04 	l.j 940c <frameBuffer+0x45e4>
    1400:	26 04 00 00 	*inconnu*
    1404:	00 87 02 00 	l.j 21c1c04 <_end+0x213cdd8>
    1408:	00 00 d0 04 	l.j 35418 <frameBuffer+0x305f0>
    140c:	26 04 00 00 	*inconnu*
    1410:	00 87 02 00 	l.j 21c1c10 <_end+0x213cde4>
    1414:	00 00 cb 04 	l.j 34024 <frameBuffer+0x2f1fc>
    1418:	26 04 00 00 	*inconnu*
    141c:	00 87 02 00 	l.j 21c1c1c <_end+0x213cdf0>
    1420:	00 01 85 04 	l.j 62830 <frameBuffer+0x5da08>
    1424:	26 04 00 00 	*inconnu*
    1428:	00 87 02 00 	l.j 21c1c28 <_end+0x213cdfc>
    142c:	00 01 80 04 	l.j 6143c <frameBuffer+0x5c614>
    1430:	26 04 00 00 	*inconnu*
    1434:	00 87 03 5f 	l.j 21c21b0 <_end+0x213d384>
    1438:	5f 6d 00 04 	*inconnu*
    143c:	26 04 00 00 	*inconnu*
    1440:	00 87 00 05 	l.j 21c1454 <_end+0x213c628>
    1444:	00 00 05 50 	l.j 2984 <__umoddi3+0x420>
    1448:	02 00 00 01 	l.j f800144c <_end+0xf7f7c620>
    144c:	66 04 32 04 	*inconnu*
    1450:	00 00 00 87 	l.j 166c <_vsnprintf+0x528>
    1454:	03 5f 5f 61 	l.j fd7d91d8 <_end+0xfd7543ac>
    1458:	00 04 32 04 	l.j 10dc68 <_end+0x88e3c>
    145c:	00 00 00 87 	l.j 1678 <_vsnprintf+0x534>
    1460:	00 05 00 00 	l.j 141460 <_end+0xbc634>
    1464:	05 aa 02 00 	l.jal 6a81c64 <_end+0x69fce38>
    1468:	00 00 25 04 	l.j a878 <frameBuffer+0x5a50>
    146c:	4b 08 00 00 	*inconnu*
    1470:	00 87 02 00 	l.j 21c1c70 <_end+0x213ce44>
    1474:	00 00 20 04 	l.j 9484 <frameBuffer+0x465c>
    1478:	4b 08 00 00 	*inconnu*
    147c:	00 87 02 00 	l.j 21c1c7c <_end+0x213ce50>
    1480:	00 00 d0 04 	l.j 35490 <frameBuffer+0x30668>
    1484:	4b 08 00 00 	*inconnu*
    1488:	00 87 02 00 	l.j 21c1c88 <_end+0x213ce5c>
    148c:	00 00 cb 04 	l.j 3409c <frameBuffer+0x2f274>
    1490:	4b 08 00 00 	*inconnu*
    1494:	00 87 02 00 	l.j 21c1c94 <_end+0x213ce68>
    1498:	00 01 85 04 	l.j 628a8 <frameBuffer+0x5da80>
    149c:	4b 08 00 00 	*inconnu*
    14a0:	00 87 02 00 	l.j 21c1ca0 <_end+0x213ce74>
    14a4:	00 01 80 04 	l.j 614b4 <frameBuffer+0x5c68c>
    14a8:	4b 08 00 00 	*inconnu*
    14ac:	00 87 03 5f 	l.j 21c2228 <_end+0x213d3fc>
    14b0:	5f 6d 00 04 	*inconnu*
    14b4:	4b 08 00 00 	*inconnu*
    14b8:	00 87 00 05 	l.j 21c14cc <_end+0x213c6a0>
    14bc:	00 00 06 04 	l.j 2ccc <__umoddi3+0x768>
    14c0:	02 00 00 00 	l.j f80014c0 <_end+0xf7f7c694>
    14c4:	25 04 50 04 	*inconnu*
    14c8:	00 00 00 87 	l.j 16e4 <_vsnprintf+0x5a0>
    14cc:	02 00 00 00 	l.j f80014cc <_end+0xf7f7c6a0>
    14d0:	20 04 50 04 	*inconnu*
    14d4:	00 00 00 87 	l.j 16f0 <_vsnprintf+0x5ac>
    14d8:	02 00 00 00 	l.j f80014d8 <_end+0xf7f7c6ac>
    14dc:	d0 04 50 04 	*inconnu*
    14e0:	00 00 00 87 	l.j 16fc <_vsnprintf+0x5b8>
    14e4:	02 00 00 00 	l.j f80014e4 <_end+0xf7f7c6b8>
    14e8:	cb 04 50 04 	*inconnu*
    14ec:	00 00 00 87 	l.j 1708 <_vsnprintf+0x5c4>
    14f0:	02 00 00 01 	l.j f80014f4 <_end+0xf7f7c6c8>
    14f4:	85 04 50 04 	l.lwz r8,20484(r4)
    14f8:	00 00 00 87 	l.j 1714 <_vsnprintf+0x5d0>
    14fc:	02 00 00 01 	l.j f8001500 <_end+0xf7f7c6d4>
    1500:	80 04 50 04 	*inconnu*
    1504:	00 00 00 87 	l.j 1720 <_vsnprintf+0x5dc>
    1508:	03 5f 5f 6d 	l.j fd7d92bc <_end+0xfd754490>
    150c:	00 04 50 04 	l.j 11551c <_end+0x906f0>
    1510:	00 00 00 87 	l.j 172c <_vsnprintf+0x5e8>
    1514:	00 05 00 00 	l.j 141514 <_end+0xbc6e8>
    1518:	06 22 02 00 	l.jal f8881d18 <_end+0xf87fceec>
    151c:	00 01 66 04 	l.j 5ad2c <frameBuffer+0x55f04>
    1520:	73 04 00 00 	l.nios_rrr r24,r4,r0,0x0
    1524:	00 87 03 5f 	l.j 21c22a0 <_end+0x213d474>
    1528:	5f 61 00 04 	*inconnu*
    152c:	73 04 00 00 	l.nios_rrr r24,r4,r0,0x0
    1530:	00 87 00 05 	l.j 21c1544 <_end+0x213c718>
    1534:	00 00 06 34 	l.j 2e04 <__clz_tab+0x11c>
    1538:	03 5f 5f 78 	l.j fd7d9318 <_end+0xfd7544ec>
    153c:	00 04 81 05 	l.j 121950 <_end+0x9cb24>
    1540:	00 00 00 87 	l.j 175c <_vsnprintf+0x618>
    1544:	00 0f 03 6d 	l.j 3c22f8 <_end+0x33d4cc>
    1548:	31 00 04 91 	*inconnu*
    154c:	0f 00 00 00 	l.bnf fc00154c <_end+0xfbf7c720>
    1550:	87 03 6d 30 	l.lwz r24,27952(r3)
    1554:	00 04 91 13 	l.j 1259a0 <_end+0xa0b74>
    1558:	00 00 00 87 	l.j 1774 <_vsnprintf+0x630>
    155c:	05 00 00 06 	l.jal 4001574 <_end+0x3f7c748>
    1560:	a5 02 00 00 	l.andi r8,r2,0x0
    1564:	00 25 04 9c 	l.j 9427d4 <_end+0x8bd9a8>
    1568:	08 00 00 00 	l.adrp r0,0 <_error>
    156c:	87 02 00 00 	l.lwz r24,0(r2)
    1570:	00 20 04 9c 	l.j 8027e0 <_end+0x77d9b4>
    1574:	08 00 00 00 	l.adrp r0,0 <_error>
    1578:	87 02 00 00 	l.lwz r24,0(r2)
    157c:	00 d0 04 9c 	l.j 34027ec <_end+0x337d9c0>
    1580:	08 00 00 00 	l.adrp r0,0 <_error>
    1584:	87 02 00 00 	l.lwz r24,0(r2)
    1588:	00 cb 04 9c 	l.j 32c27f8 <_end+0x323d9cc>
    158c:	08 00 00 00 	l.adrp r0,0 <_error>
    1590:	87 02 00 00 	l.lwz r24,0(r2)
    1594:	01 85 04 9c 	l.j 6142804 <_end+0x60bd9d8>
    1598:	08 00 00 00 	l.adrp r0,0 <_error>
    159c:	87 02 00 00 	l.lwz r24,0(r2)
    15a0:	01 80 04 9c 	l.j 6002810 <_end+0x5f7d9e4>
    15a4:	08 00 00 00 	l.adrp r0,0 <_error>
    15a8:	87 03 5f 5f 	l.lwz r24,24415(r3)
    15ac:	6d 00 04 9c 	l.lwa r8,1180(r0)
    15b0:	08 00 00 00 	l.adrp r0,0 <_error>
    15b4:	87 00 05 00 	l.lwz r24,1280(r0)
    15b8:	00 07 0b 02 	l.j 1c41c0 <_end+0x13f394>
    15bc:	00 00 00 8b 	l.j 17e8 <_vsnprintf+0x6a4>
    15c0:	04 9d 08 00 	l.jal 27435c0 <_end+0x26be794>
    15c4:	00 00 87 02 	l.j 231cc <frameBuffer+0x1e3a4>
    15c8:	00 00 00 90 	l.j 1808 <_vsnprintf+0x6c4>
    15cc:	04 9d 08 00 	l.jal 27435cc <_end+0x26be7a0>
    15d0:	00 00 87 02 	l.j 231d8 <frameBuffer+0x1e3b0>
    15d4:	00 00 00 95 	l.j 1828 <_vsnprintf+0x6e4>
    15d8:	04 9d 08 00 	l.jal 27435d8 <_end+0x26be7ac>
    15dc:	00 00 87 02 	l.j 231e4 <frameBuffer+0x1e3bc>
    15e0:	00 00 00 9a 	l.j 1848 <_vsnprintf+0x704>
    15e4:	04 9d 08 00 	l.jal 27435e4 <_end+0x26be7b8>
    15e8:	00 00 87 02 	l.j 231f0 <frameBuffer+0x1e3c8>
    15ec:	00 00 01 8f 	l.j 1c28 <memcpy+0x9c>
    15f0:	04 9d 08 00 	l.jal 27435f0 <_end+0x26be7c4>
    15f4:	00 00 87 02 	l.j 231fc <frameBuffer+0x1e3d4>
    15f8:	00 00 00 2f 	l.j 16b4 <_vsnprintf+0x570>
    15fc:	04 9d 08 00 	l.jal 27435fc <_end+0x26be7d0>
    1600:	00 00 87 02 	l.j 23208 <frameBuffer+0x1e3e0>
    1604:	00 00 01 8a 	l.j 1c2c <memcpy+0xa0>
    1608:	04 9d 08 00 	l.jal 2743608 <_end+0x26be7dc>
    160c:	00 00 87 02 	l.j 23214 <frameBuffer+0x1e3ec>
    1610:	00 00 00 2a 	l.j 16b8 <_vsnprintf+0x574>
    1614:	04 9d 08 00 	l.jal 2743614 <_end+0x26be7e8>
    1618:	00 00 87 00 	l.j 23218 <frameBuffer+0x1e3f0>
    161c:	05 00 00 07 	l.jal 4001638 <_end+0x3f7c80c>
    1620:	1d 03 5f 5f 	*inconnu*
    1624:	78 00 04 a2 	*inconnu*
    1628:	05 00 00 00 	l.jal 4001628 <_end+0x3f7c7fc>
    162c:	87 00 0f 03 	l.lwz r24,3843(r0)
    1630:	5f 5f 78 00 	*inconnu*
    1634:	04 aa 05 00 	l.jal 2a82a34 <_end+0x29fdc08>
    1638:	00 00 87 00 	l.j 23238 <frameBuffer+0x1e410>
    163c:	00 00 1e 04 	l.j 8e4c <frameBuffer+0x4024>
    1640:	00 00 00 9d 	l.j 18b4 <_vsnprintf+0x770>
    1644:	00 00 00 07 	l.j 1660 <_vsnprintf+0x51c>
    1648:	77 00 05 01 	*inconnu*
    164c:	04 00 00 05 	l.jal 1660 <_vsnprintf+0x51c>
    1650:	15 10 00 00 	*inconnu*
    1654:	00 d5 1d 00 	l.j 3548a54 <_end+0x34c3c28>
    1658:	00 00 00 00 	l.j 1658 <_vsnprintf+0x514>
    165c:	00 00 2f 00 	l.j d25c <frameBuffer+0x8434>
    1660:	00 25 64 00 	l.j 95a660 <_end+0x8d5834>
    1664:	00 05 78 00 	l.j 15f664 <_end+0xda838>
    1668:	00 2b 6a 04 	l.j adbe78 <_end+0xa5704c>
    166c:	08 07 00 00 	l.adrp r0,e0000000 <_end+0xdff7b1d4>
    1670:	00 4b 11 04 	l.j 12c5a80 <_end+0x1240c54>
    1674:	05 69 6e 74 	l.jal 5a5d044 <_end+0x59d8218>
    1678:	00 04 04 07 	l.j 102694 <_end+0x7d868>
    167c:	00 00 00 55 	l.j 17d0 <_vsnprintf+0x68c>
    1680:	04 08 05 00 	l.jal 202a80 <_end+0x17dc54>
    1684:	00 00 3d 04 	l.j 10a94 <frameBuffer+0xbc6c>
    1688:	08 04 00 00 	l.adrp r0,80000000 <_end+0x7ff7b1d4>
    168c:	00 71 04 01 	l.j 1c42690 <_end+0x1bbd864>
    1690:	08 00 00 00 	l.adrp r0,0 <_error>
    1694:	7d 04 01 06 	*inconnu*
    1698:	00 00 00 86 	l.j 18b0 <_vsnprintf+0x76c>
    169c:	04 01 06 00 	l.jal 42e9c <frameBuffer+0x3e074>
    16a0:	00 00 7f 08 	l.j 212c0 <frameBuffer+0x1c498>
    16a4:	00 00 00 9f 	l.j 1920 <_vsnprintf+0x7dc>
    16a8:	7b 16 00 00 	*inconnu*
    16ac:	00 49 09 00 	l.j 1243aac <_end+0x11bec80>
    16b0:	00 00 5e 04 	l.j 18ec0 <frameBuffer+0x14098>
    16b4:	02 05 00 00 	l.j f81416b4 <_end+0xf80bc888>
    16b8:	00 16 04 02 	l.j 5826c0 <_end+0x4fd894>
    16bc:	07 00 00 00 	l.jal fc0016bc <_end+0xfbf7c890>
    16c0:	b0 08 00 00 	l.muli r0,r8,0
    16c4:	01 79 80 0f 	l.j 5e61700 <_end+0x5ddc8d4>
    16c8:	00 00 00 2d 	l.j 177c <_vsnprintf+0x638>
    16cc:	08 00 00 01 	l.adrp r0,2000 <__udivdi3+0x58>
    16d0:	78 81 16 00 	*inconnu*
    16d4:	00 00 34 08 	l.j e6f4 <frameBuffer+0x98cc>
    16d8:	00 00 00 c4 	l.j 19e8 <_vsnprintf+0x8a4>
    16dc:	84 0f 00 00 	l.lwz r0,0(r15)
    16e0:	00 3b 08 00 	l.j ec36e0 <_end+0xe3e8b4>
    16e4:	00 00 c3 85 	l.j 324f8 <frameBuffer+0x2d6d0>
    16e8:	16 00 00 00 	*inconnu*
    16ec:	26 04 04 04 	*inconnu*
    16f0:	00 00 00 10 	l.j 1730 <_vsnprintf+0x5ec>
    16f4:	04 08 03 00 	l.jal 2022f4 <_end+0x17d4c8>
    16f8:	00 00 08 04 	l.j 3708 <__clz_tab+0xa20>
    16fc:	08 04 00 00 	l.adrp r0,80000000 <_end+0x7ff7b1d4>
    1700:	00 76 04 10 	l.j 1d82740 <_end+0x1cfd914>
    1704:	03 00 00 01 	l.j fc001708 <_end+0xfbf7c8dc>
    1708:	57 12 00 00 	*inconnu*
    170c:	00 a7 08 02 	l.j 29c3714 <_end+0x293e8e8>
    1710:	01 ef 0a 00 	l.j 7bc3f10 <_end+0x7b3f0e4>
    1714:	00 00 ef 13 	l.j 3d360 <frameBuffer+0x38538>
    1718:	00 00 00 62 	l.j 18a0 <_vsnprintf+0x75c>
    171c:	02 01 ef 1a 	l.j f807d384 <_end+0xf7ff8558>
    1720:	00 00 00 7c 	l.j 1910 <_vsnprintf+0x7cc>
    1724:	00 14 6c 6f 	l.j 51c8e0 <_end+0x497ab4>
    1728:	77 00 02 01 	*inconnu*
    172c:	ef 20 00 00 	*inconnu*
    1730:	00 7c 04 00 	l.j 1f02730 <_end+0x1e7d904>
    1734:	15 08 02 01 	*inconnu*
    1738:	f8 09 00 00 	*inconnu*
    173c:	01 0f 0c 73 	l.j 43c4908 <_end+0x433fadc>
    1740:	00 01 fa 13 	l.j 7ff8c <frameBuffer+0x7b164>
    1744:	00 00 00 c4 	l.j 1a54 <_vsnprintf+0x910>
    1748:	0c 6c 6c 00 	l.bnf 1b1c748 <_end+0x1a9791c>
    174c:	01 fb 0a 00 	l.j 7ec3f4c <_end+0x7e3f120>
    1750:	00 00 92 00 	l.j 25f50 <frameBuffer+0x21128>
    1754:	16 00 00 00 	*inconnu*
    1758:	00 02 01 fc 	l.j 81f48 <frameBuffer+0x7d120>
    175c:	03 00 00 00 	l.j fc00175c <_end+0xfbf7c930>
    1760:	ef 09 00 00 	*inconnu*
    1764:	01 0f 17 00 	l.j 43c7364 <_end+0x4342538>
    1768:	00 00 69 00 	l.j 1bb68 <frameBuffer+0x16d40>
    176c:	00 01 31 18 	l.j 4dbcc <frameBuffer+0x48da4>
    1770:	00 00 00 34 	l.j 1840 <_vsnprintf+0x6fc>
    1774:	ff 00 09 00 	*inconnu*
    1778:	00 01 21 19 	l.j 49bdc <frameBuffer+0x44db4>
    177c:	00 00 00 67 	l.j 1918 <_vsnprintf+0x7d4>
    1780:	02 02 06 16 	l.j f8082fd8 <_end+0xf7ffe1ac>
    1784:	00 00 01 31 	l.j 1c48 <memcpy+0xbc>
    1788:	1a 00 00 01 	l.movhi r16,0x1
    178c:	a7 01 05 06 	l.andi r24,r1,0x506
    1790:	01 00 00 00 	l.j 4001790 <_end+0x3f7c964>
    1794:	9d 00 00 25 	l.addi r8,r0,37
    1798:	64 00 00 05 	*inconnu*
    179c:	78 01 9c 00 	*inconnu*
    17a0:	00 04 48 0d 	l.j 1137d4 <_end+0x8e9a8>
    17a4:	75 00 14 00 	*inconnu*
    17a8:	00 00 9d 00 	l.j 28ba8 <frameBuffer+0x23d80>
    17ac:	00 15 3c 0d 	l.j 5507e0 <_end+0x4cb9b4>
    17b0:	76 00 1f 00 	*inconnu*
    17b4:	00 00 9d 00 	l.j 28bb4 <frameBuffer+0x23d8c>
    17b8:	00 15 9c 03 	l.j 5687c4 <_end+0x4e3998>
    17bc:	77 00 05 08 	*inconnu*
    17c0:	0b 00 00 00 	l.adrp r24,0 <_error>
    17c4:	9d 1b 00 00 	l.addi r8,r27,0
    17c8:	04 48 00 00 	l.jal 12017c8 <_end+0x117c99c>
    17cc:	25 64 00 00 	*inconnu*
    17d0:	03 2b 01 05 	l.j fcac1be4 <_end+0xfca3cdb8>
    17d4:	0a 0a 0a 00 	l.adrp r16,41400000 <_end+0x4137b1d4>
    17d8:	00 04 6a 00 	l.j 11bfd8 <_end+0x971ac>
    17dc:	00 15 d8 0a 	l.j 577804 <_end+0x4f29d8>
    17e0:	00 00 04 62 	l.j 2968 <__umoddi3+0x404>
    17e4:	00 00 16 14 	l.j 7034 <frameBuffer+0x220c>
    17e8:	0a 00 00 04 	l.adrp r16,8000 <frameBuffer+0x31d8>
    17ec:	5a 00 00 16 	*inconnu*
    17f0:	5b 1c 00 00 	*inconnu*
    17f4:	03 2b 05 00 	l.j fcac2bf4 <_end+0xfca3ddc8>
    17f8:	00 04 73 05 	l.j 11e40c <_end+0x995e0>
    17fc:	00 00 04 7e 	l.j 29f4 <__umoddi3+0x490>
    1800:	05 00 00 04 	l.jal 4001810 <_end+0x3f7c9e4>
    1804:	89 01 00 00 	l.lws r8,0(r1)
    1808:	04 94 00 00 	l.jal 2501808 <_end+0x247c9dc>
    180c:	16 a3 01 00 	*inconnu*
    1810:	00 04 9f 00 	l.j 129410 <_end+0xa45e4>
    1814:	00 16 e2 01 	l.j 5ba018 <_end+0x5351ec>
    1818:	00 00 04 aa 	l.j 2ac0 <__umoddi3+0x55c>
    181c:	00 00 17 1a 	l.j 7484 <frameBuffer+0x265c>
    1820:	01 00 00 04 	l.j 4001830 <_end+0x3f7ca04>
    1824:	b5 00 00 17 	l.mfspr r8,r0,0x17
    1828:	91 01 00 00 	l.lbs r8,0(r1)
    182c:	04 c0 00 00 	l.jal 300182c <_end+0x2f7ca00>
    1830:	18 58 01 00 	*inconnu*
    1834:	00 04 cb 00 	l.j 134434 <_end+0xaf608>
    1838:	00 18 60 01 	l.j 61983c <_end+0x594a10>
    183c:	00 00 04 d6 	l.j 2b94 <__umoddi3+0x630>
    1840:	00 00 18 79 	l.j 7a24 <frameBuffer+0x2bfc>
    1844:	01 00 00 04 	l.j 4001854 <_end+0x3f7ca28>
    1848:	e1 00 00 18 	*inconnu*
    184c:	9a 01 00 00 	l.lhs r16,0(r1)
    1850:	04 eb 00 00 	l.jal 3ac1850 <_end+0x3a3ca24>
    1854:	18 b7 05 00 	*inconnu*
    1858:	00 04 f6 07 	l.j 13f074 <_end+0xba248>
    185c:	00 00 05 01 	l.j 2c60 <__umoddi3+0x6fc>
    1860:	00 00 03 5d 	l.j 25d4 <__umoddi3+0x70>
    1864:	00 00 02 36 	l.j 213c <__udivdi3+0x194>
    1868:	01 00 00 05 	l.j 400187c <_end+0x3f7ca50>
    186c:	06 00 00 18 	l.jal f80018cc <_end+0xf7f7caa0>
    1870:	e8 01 00 00 	*inconnu*
    1874:	05 12 00 00 	l.jal 4481874 <_end+0x43fca48>
    1878:	18 f5 00 0e 	*inconnu*
    187c:	00 00 05 1f 	l.j 2cf8 <__clz_tab+0x10>
    1880:	00 00 25 e8 	l.j b020 <frameBuffer+0x61f8>
    1884:	00 00 00 50 	l.j 19c4 <_vsnprintf+0x880>
    1888:	00 00 02 7b 	l.j 2274 <__udivdi3+0x2cc>
    188c:	01 00 00 05 	l.j 40018a0 <_end+0x3f7ca74>
    1890:	24 00 00 18 	*inconnu*
    1894:	fb 01 00 00 	*inconnu*
    1898:	05 30 00 00 	l.jal 4c01898 <_end+0x4b7ca6c>
    189c:	19 03 05 00 	*inconnu*
    18a0:	00 05 3c 05 	l.j 1508b4 <_end+0xcba88>
    18a4:	00 00 05 48 	l.j 2dc4 <__clz_tab+0xdc>
    18a8:	01 00 00 05 	l.j 40018bc <_end+0x3f7ca90>
    18ac:	54 00 00 19 	*inconnu*
    18b0:	0b 05 00 00 	l.adrp r24,a0000000 <_end+0x9ff7b1d4>
    18b4:	05 60 01 00 	l.jal 5801cb4 <_end+0x577ce88>
    18b8:	00 05 6c 00 	l.j 15c8b8 <_end+0xd7a8c>
    18bc:	00 19 1a 00 	l.j 6480bc <_end+0x5c3290>
    18c0:	07 00 00 06 	l.jal fc0018d8 <_end+0xfbf7caac>
    18c4:	4b 00 00 03 	*inconnu*
    18c8:	66 00 00 02 	*inconnu*
    18cc:	9b 01 00 00 	l.lhs r24,0(r1)
    18d0:	06 50 00 00 	l.jal f94018d0 <_end+0xf937caa4>
    18d4:	19 22 01 00 	*inconnu*
    18d8:	00 06 5c 00 	l.j 1988d8 <_end+0x113aac>
    18dc:	00 19 38 00 	l.j 64f8dc <_end+0x5caab0>
    18e0:	07 00 00 06 	l.jal fc0018f8 <_end+0xfbf7cacc>
    18e4:	69 00 00 03 	*inconnu*
    18e8:	71 00 00 02 	l.nios_rrr r8,r0,r0,0x2
    18ec:	b2 01 00 00 	l.muli r16,r1,0
    18f0:	06 6e 00 00 	l.jal f9b818f0 <_end+0xf9afcac4>
    18f4:	19 4e 00 07 	*inconnu*
    18f8:	00 00 05 79 	l.j 2edc <__clz_tab+0x1f4>
    18fc:	00 00 03 86 	l.j 2714 <__umoddi3+0x1b0>
    1900:	00 00 02 d2 	l.j 2448 <__udivdi3+0x4a0>
    1904:	01 00 00 05 	l.j 4001918 <_end+0x3f7caec>
    1908:	7e 00 00 19 	*inconnu*
    190c:	69 01 00 00 	*inconnu*
    1910:	05 8a 00 00 	l.jal 6281910 <_end+0x61fcae4>
    1914:	19 71 00 07 	*inconnu*
    1918:	00 00 05 f1 	l.j 30dc <__clz_tab+0x3f4>
    191c:	00 00 03 91 	l.j 2760 <__umoddi3+0x1fc>
    1920:	00 00 03 17 	l.j 257c <__umoddi3+0x18>
    1924:	01 00 00 05 	l.j 4001938 <_end+0x3f7cb0c>
    1928:	f6 00 00 19 	*inconnu*
    192c:	79 01 00 00 	*inconnu*
    1930:	06 02 00 00 	l.jal f8081930 <_end+0xf7ffcb04>
    1934:	19 90 05 00 	*inconnu*
    1938:	00 06 0e 05 	l.j 18514c <_end+0x100320>
    193c:	00 00 06 1a 	l.j 31a4 <__clz_tab+0x4bc>
    1940:	01 00 00 06 	l.j 4001958 <_end+0x3f7cb2c>
    1944:	26 00 00 19 	*inconnu*
    1948:	ab 01 00 00 	l.ori r24,r1,0x0
    194c:	06 32 00 00 	l.jal f8c8194c <_end+0xf8bfcb20>
    1950:	19 c1 01 00 	*inconnu*
    1954:	00 06 3e 00 	l.j 191154 <_end+0x10c328>
    1958:	00 19 d0 00 	l.j 675958 <_end+0x5f0b2c>
    195c:	07 00 00 05 	l.jal fc001970 <_end+0xfbf7cb44>
    1960:	97 00 00 03 	l.lhz r24,3(r0)
    1964:	a6 00 00 03 	l.andi r16,r0,0x3
    1968:	5c 01 00 00 	*inconnu*
    196c:	05 9c 00 00 	l.jal 670196c <_end+0x667cb40>
    1970:	19 e6 01 00 	*inconnu*
    1974:	00 05 a8 00 	l.j 16b974 <_end+0xe6b48>
    1978:	00 19 ee 05 	l.j 67d18c <_end+0x5f8360>
    197c:	00 00 05 b4 	l.j 304c <__clz_tab+0x364>
    1980:	05 00 00 05 	l.jal 4001994 <_end+0x3f7cb68>
    1984:	c0 01 00 00 	l.mtspr r1,r0,0x0
    1988:	05 cc 00 00 	l.jal 7301988 <_end+0x727cb5c>
    198c:	19 f6 01 00 	*inconnu*
    1990:	00 05 d8 00 	l.j 177990 <_end+0xf2b64>
    1994:	00 19 fe 01 	l.j 681198 <_end+0x5fc36c>
    1998:	00 00 05 e4 	l.j 3128 <__clz_tab+0x440>
    199c:	00 00 1a 0d 	l.j 81d0 <frameBuffer+0x33a8>
    19a0:	00 1d 00 00 	l.j 7419a0 <_end+0x6bcb74>
    19a4:	06 7b 00 00 	l.jal f9ec19a4 <_end+0xf9e3cb78>
    19a8:	03 c0 01 00 	l.j ff001da8 <_end+0xfef7cf7c>
    19ac:	00 06 7c 00 	l.j 1a09ac <_end+0x11bb80>
    19b0:	00 1a 1c 01 	l.j 6889b4 <_end+0x603b88>
    19b4:	00 00 06 87 	l.j 33d0 <__clz_tab+0x6e8>
    19b8:	00 00 1a 32 	l.j 8280 <frameBuffer+0x3458>
    19bc:	07 00 00 06 	l.jal fc0019d4 <_end+0xfbf7cba8>
    19c0:	92 00 00 03 	l.lbs r16,3(r0)
    19c4:	cb 00 00 03 	lf.div.s r24,r0,r0
    19c8:	c4 01 00 00 	*inconnu*
    19cc:	06 97 00 00 	l.jal fa5c19cc <_end+0xfa53cba0>
    19d0:	1a 48 01 00 	*inconnu*
    19d4:	00 06 a3 00 	l.j 1aa5d4 <_end+0x1257a8>
    19d8:	00 1a bf 01 	l.j 6b15dc <_end+0x62c7b0>
    19dc:	00 00 06 af 	l.j 3498 <__clz_tab+0x7b0>
    19e0:	00 00 1a f5 	l.j 85b4 <frameBuffer+0x378c>
    19e4:	01 00 00 06 	l.j 40019fc <_end+0x3f7cbd0>
    19e8:	bb 00 00 1b 	l.slli r24,r0,0x1b
    19ec:	19 01 00 00 	l.macrc r8
    19f0:	06 c7 00 00 	l.jal fb1c19f0 <_end+0xfb13cbc4>
    19f4:	1b 36 01 00 	*inconnu*
    19f8:	00 06 d3 00 	l.j 1b65f8 <_end+0x1317cc>
    19fc:	00 1b 5a 01 	l.j 6d8200 <_end+0x6533d4>
    1a00:	00 00 06 df 	l.j 357c <__clz_tab+0x894>
    1a04:	00 00 1b 8c 	l.j 8834 <frameBuffer+0x3a0c>
    1a08:	00 07 00 00 	l.j 1c1a08 <_end+0x13cbdc>
    1a0c:	06 ec 00 00 	l.jal fbb01a0c <_end+0xfba7cbe0>
    1a10:	03 ea 00 00 	l.j ffa81a10 <_end+0xff9fcbe4>
    1a14:	04 12 01 00 	l.jal 481e14 <_end+0x3fcfe8>
    1a18:	00 06 f1 00 	l.j 1bde18 <_end+0x138fec>
    1a1c:	00 1b b0 01 	l.j 6eda20 <_end+0x668bf4>
    1a20:	00 00 06 fd 	l.j 3614 <__clz_tab+0x92c>
    1a24:	00 00 1b b8 	l.j 8904 <frameBuffer+0x3adc>
    1a28:	01 00 00 07 	l.j 4001a44 <_end+0x3f7cc18>
    1a2c:	09 00 00 1b 	l.adrp r8,36000 <frameBuffer+0x311d8>
    1a30:	c0 01 00 00 	l.mtspr r1,r0,0x0
    1a34:	07 15 00 00 	l.jal fc541a34 <_end+0xfc4bcc08>
    1a38:	1b c8 05 00 	*inconnu*
    1a3c:	00 07 21 01 	l.j 1c9e40 <_end+0x145014>
    1a40:	00 00 07 2d 	l.j 36f4 <__clz_tab+0xa0c>
    1a44:	00 00 1b d0 	l.j 8984 <frameBuffer+0x3b5c>
    1a48:	05 00 00 07 	l.jal 4001a64 <_end+0x3f7cc38>
    1a4c:	39 01 00 00 	*inconnu*
    1a50:	07 45 00 00 	l.jal fd141a50 <_end+0xfd0bcc24>
    1a54:	1b eb 00 0e 	*inconnu*
    1a58:	00 00 07 64 	l.j 37e8 <__clz_tab+0xb00>
    1a5c:	00 00 2a 54 	l.j c3ac <frameBuffer+0x7584>
    1a60:	00 00 00 1c 	l.j 1ad0 <sprintf_+0x28>
    1a64:	00 00 04 2d 	l.j 2b18 <__umoddi3+0x5b4>
    1a68:	01 00 00 07 	l.j 4001a84 <_end+0x3f7cc58>
    1a6c:	65 00 00 1c 	*inconnu*
    1a70:	01 00 1e 00 	l.j 4009270 <_end+0x3f84444>
    1a74:	00 07 52 00 	l.j 1d6274 <_end+0x151448>
    1a78:	00 2a 90 00 	l.j aa5a78 <_end+0xa20c4c>
    1a7c:	00 00 18 01 	l.j 7a80 <frameBuffer+0x2c58>
    1a80:	00 00 07 57 	l.j 37dc <__clz_tab+0xaf4>
    1a84:	00 00 1c 09 	l.j 8aa8 <frameBuffer+0x3c80>
    1a88:	00 00 00 00 	l.j 1a88 <printf_+0x10>
    1a8c:	00 1f 00 00 	l.j 7c1a8c <_end+0x73cc60>
    1a90:	01 6b 01 03 	l.j 5ac1e9c <_end+0x5a3d070>
    1a94:	e3 01 00 00 	l.add r24,r1,r0
    1a98:	00 9d 03 00 	l.j 2742698 <_end+0x26bd86c>
    1a9c:	00 07 74 0b 	l.j 1deac8 <_end+0x159c9c>
    1aa0:	6e 00 17 00 	l.lwa r16,5888(r0)
    1aa4:	00 00 9d 0b 	l.j 28ed0 <frameBuffer+0x240a8>
    1aa8:	64 00 22 00 	*inconnu*
    1aac:	00 00 9d 0b 	l.j 28ed8 <frameBuffer+0x240b0>
    1ab0:	72 70 00 2e 	l.nios_rrr r19,r16,r0,0x2e
    1ab4:	00 00 07 74 	l.j 3884 <__clz_tab+0xb9c>
    1ab8:	03 6e 6e 00 	l.j fdb9d2b8 <_end+0xfdb1848c>
    1abc:	03 e5 11 00 	l.j ff945ebc <_end+0xff8c1090>
    1ac0:	00 01 1c 03 	l.j 48acc <frameBuffer+0x43ca4>
    1ac4:	64 64 00 03 	*inconnu*
    1ac8:	e6 11 00 00 	*inconnu*
    1acc:	01 1c 03 72 	l.j 4702894 <_end+0x467da68>
    1ad0:	72 00 03 e7 	l.nios_crc r16,r0,r0,0xe7
    1ad4:	0b 00 00 01 	l.adrp r24,2000 <__udivdi3+0x58>
    1ad8:	0f 03 64 30 	l.bnf fc0dab98 <_end+0xfc055d6c>
    1adc:	00 03 e8 0a 	l.j fbb04 <_end+0x76cd8>
    1ae0:	00 00 00 87 	l.j 1cfc <memcpy+0x170>
    1ae4:	03 64 31 00 	l.j fd90dee4 <_end+0xfd8890b8>
    1ae8:	03 e8 0e 00 	l.j ffa052e8 <_end+0xff9804bc>
    1aec:	00 00 87 03 	l.j 236f8 <frameBuffer+0x1e8d0>
    1af0:	6e 30 00 03 	l.lwa r17,3(r16)
    1af4:	e8 12 00 00 	*inconnu*
    1af8:	00 87 03 6e 	l.j 21c28b0 <_end+0x213da84>
    1afc:	31 00 03 e8 	*inconnu*
    1b00:	16 00 00 00 	*inconnu*
    1b04:	87 03 6e 32 	l.lwz r24,28210(r3)
    1b08:	00 03 e8 1a 	l.j fbb70 <_end+0x76d44>
    1b0c:	00 00 00 87 	l.j 1d28 <memcpy+0x19c>
    1b10:	03 71 30 00 	l.j fdc4db10 <_end+0xfdbc8ce4>
    1b14:	03 e9 0a 00 	l.j ffa44314 <_end+0xff9bf4e8>
    1b18:	00 00 87 03 	l.j 23724 <frameBuffer+0x1e8fc>
    1b1c:	71 31 00 03 	l.nios_rrr r9,r17,r0,0x3
    1b20:	e9 0e 00 00 	*inconnu*
    1b24:	00 87 03 62 	l.j 21c28ac <_end+0x213da80>
    1b28:	00 03 ea 0a 	l.j fc350 <_end+0x77524>
    1b2c:	00 00 00 87 	l.j 1d48 <memcpy+0x1bc>
    1b30:	03 62 6d 00 	l.j fd89cf30 <_end+0xfd818104>
    1b34:	03 ea 0d 00 	l.j ffa84f34 <_end+0xffa00108>
    1b38:	00 00 87 03 	l.j 23744 <frameBuffer+0x1e91c>
    1b3c:	77 77 00 04 	l.cas r27,r23,r0,0x4
    1b40:	b3 11 00 00 	l.muli r24,r17,0
    1b44:	01 1c 06 00 	l.j 4703344 <_end+0x467e518>
    1b48:	00 05 1f 02 	l.j 149750 <_end+0xc4924>
    1b4c:	00 00 01 66 	l.j 20e4 <__udivdi3+0x13c>
    1b50:	04 1a 04 00 	l.jal 682b50 <_end+0x5fdd24>
    1b54:	00 00 87 03 	l.j 23760 <frameBuffer+0x1e938>
    1b58:	5f 5f 61 00 	*inconnu*
    1b5c:	04 1a 04 00 	l.jal 682b5c <_end+0x5fdd30>
    1b60:	00 00 87 00 	l.j 23760 <frameBuffer+0x1e938>
    1b64:	06 00 00 05 	l.jal f8001b78 <_end+0xf7f7cd4c>
    1b68:	79 02 00 00 	*inconnu*
    1b6c:	00 25 04 26 	l.j 942c04 <_end+0x8bddd8>
    1b70:	04 00 00 00 	l.jal 1b70 <fctprintf+0x1c>
    1b74:	87 02 00 00 	l.lwz r24,0(r2)
    1b78:	00 20 04 26 	l.j 802c10 <_end+0x77dde4>
    1b7c:	04 00 00 00 	l.jal 1b7c <fctprintf+0x28>
    1b80:	87 02 00 00 	l.lwz r24,0(r2)
    1b84:	00 d0 04 26 	l.j 3402c1c <_end+0x337ddf0>
    1b88:	04 00 00 00 	l.jal 1b88 <fctprintf+0x34>
    1b8c:	87 02 00 00 	l.lwz r24,0(r2)
    1b90:	00 cb 04 26 	l.j 32c2c28 <_end+0x323ddfc>
    1b94:	04 00 00 00 	l.jal 1b94 <memcpy+0x8>
    1b98:	87 02 00 00 	l.lwz r24,0(r2)
    1b9c:	01 85 04 26 	l.j 6142c34 <_end+0x60bde08>
    1ba0:	04 00 00 00 	l.jal 1ba0 <memcpy+0x14>
    1ba4:	87 02 00 00 	l.lwz r24,0(r2)
    1ba8:	01 80 04 26 	l.j 6002c40 <_end+0x5f7de14>
    1bac:	04 00 00 00 	l.jal 1bac <memcpy+0x20>
    1bb0:	87 03 5f 5f 	l.lwz r24,24415(r3)
    1bb4:	6d 00 04 26 	l.lwa r8,1062(r0)
    1bb8:	04 00 00 00 	l.jal 1bb8 <memcpy+0x2c>
    1bbc:	87 00 06 00 	l.lwz r24,1536(r0)
    1bc0:	00 05 97 02 	l.j 1677c8 <_end+0xe299c>
    1bc4:	00 00 01 66 	l.j 215c <__udivdi3+0x1b4>
    1bc8:	04 32 04 00 	l.jal c82bc8 <_end+0xbfdd9c>
    1bcc:	00 00 87 03 	l.j 237d8 <frameBuffer+0x1e9b0>
    1bd0:	5f 5f 61 00 	*inconnu*
    1bd4:	04 32 04 00 	l.jal c82bd4 <_end+0xbfdda8>
    1bd8:	00 00 87 00 	l.j 237d8 <frameBuffer+0x1e9b0>
    1bdc:	06 00 00 05 	l.jal f8001bf0 <_end+0xf7f7cdc4>
    1be0:	f1 02 00 00 	*inconnu*
    1be4:	00 25 04 4b 	l.j 942d10 <_end+0x8bdee4>
    1be8:	08 00 00 00 	l.adrp r0,0 <_error>
    1bec:	87 02 00 00 	l.lwz r24,0(r2)
    1bf0:	00 20 04 4b 	l.j 802d1c <_end+0x77def0>
    1bf4:	08 00 00 00 	l.adrp r0,0 <_error>
    1bf8:	87 02 00 00 	l.lwz r24,0(r2)
    1bfc:	00 d0 04 4b 	l.j 3402d28 <_end+0x337defc>
    1c00:	08 00 00 00 	l.adrp r0,0 <_error>
    1c04:	87 02 00 00 	l.lwz r24,0(r2)
    1c08:	00 cb 04 4b 	l.j 32c2d34 <_end+0x323df08>
    1c0c:	08 00 00 00 	l.adrp r0,0 <_error>
    1c10:	87 02 00 00 	l.lwz r24,0(r2)
    1c14:	01 85 04 4b 	l.j 6142d40 <_end+0x60bdf14>
    1c18:	08 00 00 00 	l.adrp r0,0 <_error>
    1c1c:	87 02 00 00 	l.lwz r24,0(r2)
    1c20:	01 80 04 4b 	l.j 6002d4c <_end+0x5f7df20>
    1c24:	08 00 00 00 	l.adrp r0,0 <_error>
    1c28:	87 03 5f 5f 	l.lwz r24,24415(r3)
    1c2c:	6d 00 04 4b 	l.lwa r8,1099(r0)
    1c30:	08 00 00 00 	l.adrp r0,0 <_error>
    1c34:	87 00 06 00 	l.lwz r24,1536(r0)
    1c38:	00 06 4b 02 	l.j 194840 <_end+0x10fa14>
    1c3c:	00 00 00 25 	l.j 1cd0 <memcpy+0x144>
    1c40:	04 50 04 00 	l.jal 1402c40 <_end+0x137de14>
    1c44:	00 00 87 02 	l.j 2384c <frameBuffer+0x1ea24>
    1c48:	00 00 00 20 	l.j 1cc8 <memcpy+0x13c>
    1c4c:	04 50 04 00 	l.jal 1402c4c <_end+0x137de20>
    1c50:	00 00 87 02 	l.j 23858 <frameBuffer+0x1ea30>
    1c54:	00 00 00 d0 	l.j 1f94 <vga_puts+0x1c>
    1c58:	04 50 04 00 	l.jal 1402c58 <_end+0x137de2c>
    1c5c:	00 00 87 02 	l.j 23864 <frameBuffer+0x1ea3c>
    1c60:	00 00 00 cb 	l.j 1f8c <vga_puts+0x14>
    1c64:	04 50 04 00 	l.jal 1402c64 <_end+0x137de38>
    1c68:	00 00 87 02 	l.j 23870 <frameBuffer+0x1ea48>
    1c6c:	00 00 01 85 	l.j 2280 <__udivdi3+0x2d8>
    1c70:	04 50 04 00 	l.jal 1402c70 <_end+0x137de44>
    1c74:	00 00 87 02 	l.j 2387c <frameBuffer+0x1ea54>
    1c78:	00 00 01 80 	l.j 2278 <__udivdi3+0x2d0>
    1c7c:	04 50 04 00 	l.jal 1402c7c <_end+0x137de50>
    1c80:	00 00 87 03 	l.j 2388c <frameBuffer+0x1ea64>
    1c84:	5f 5f 6d 00 	*inconnu*
    1c88:	04 50 04 00 	l.jal 1402c88 <_end+0x137de5c>
    1c8c:	00 00 87 00 	l.j 2388c <frameBuffer+0x1ea64>
    1c90:	06 00 00 06 	l.jal f8001ca8 <_end+0xf7f7ce7c>
    1c94:	69 02 00 00 	*inconnu*
    1c98:	01 66 04 73 	l.j 5982e64 <_end+0x58fe038>
    1c9c:	04 00 00 00 	l.jal 1c9c <memcpy+0x110>
    1ca0:	87 03 5f 5f 	l.lwz r24,24415(r3)
    1ca4:	61 00 04 73 	*inconnu*
    1ca8:	04 00 00 00 	l.jal 1ca8 <memcpy+0x11c>
    1cac:	87 00 06 00 	l.lwz r24,1536(r0)
    1cb0:	00 06 7b 03 	l.j 1a08bc <_end+0x11ba90>
    1cb4:	5f 5f 78 00 	*inconnu*
    1cb8:	04 81 05 00 	l.jal 20430b8 <_end+0x1fbe28c>
    1cbc:	00 00 87 00 	l.j 238bc <frameBuffer+0x1ea94>
    1cc0:	0f 03 6d 31 	l.bnf fc0dd184 <_end+0xfc058358>
    1cc4:	00 04 91 0f 	l.j 126100 <_end+0xa12d4>
    1cc8:	00 00 00 87 	l.j 1ee4 <uart_puts+0x2c>
    1ccc:	03 6d 30 00 	l.j fdb4dccc <_end+0xfdac8ea0>
    1cd0:	04 91 13 00 	l.jal 24468d0 <_end+0x23c1aa4>
    1cd4:	00 00 87 06 	l.j 238ec <frameBuffer+0x1eac4>
    1cd8:	00 00 06 ec 	l.j 3888 <__clz_tab+0xba0>
    1cdc:	02 00 00 00 	l.j f8001cdc <_end+0xf7f7ceb0>
    1ce0:	25 04 9c 08 	*inconnu*
    1ce4:	00 00 00 87 	l.j 1f00 <uart_puts+0x48>
    1ce8:	02 00 00 00 	l.j f8001ce8 <_end+0xf7f7cebc>
    1cec:	20 04 9c 08 	*inconnu*
    1cf0:	00 00 00 87 	l.j 1f0c <uart_puts+0x54>
    1cf4:	02 00 00 00 	l.j f8001cf4 <_end+0xf7f7cec8>
    1cf8:	d0 04 9c 08 	*inconnu*
    1cfc:	00 00 00 87 	l.j 1f18 <uart_getc+0x4>
    1d00:	02 00 00 00 	l.j f8001d00 <_end+0xf7f7ced4>
    1d04:	cb 04 9c 08 	*inconnu*
    1d08:	00 00 00 87 	l.j 1f24 <uart_getc+0x10>
    1d0c:	02 00 00 01 	l.j f8001d10 <_end+0xf7f7cee4>
    1d10:	85 04 9c 08 	l.lwz r8,-25592(r4)
    1d14:	00 00 00 87 	l.j 1f30 <uart_getc+0x1c>
    1d18:	02 00 00 01 	l.j f8001d1c <_end+0xf7f7cef0>
    1d1c:	80 04 9c 08 	*inconnu*
    1d20:	00 00 00 87 	l.j 1f3c <uart_getc+0x28>
    1d24:	03 5f 5f 6d 	l.j fd7d9ad8 <_end+0xfd754cac>
    1d28:	00 04 9c 08 	l.j 128d48 <_end+0xa3f1c>
    1d2c:	00 00 00 87 	l.j 1f48 <vga_clear>
    1d30:	00 06 00 00 	l.j 181d30 <_end+0xfcf04>
    1d34:	07 52 02 00 	l.jal fd482534 <_end+0xfd3fd708>
    1d38:	00 00 8b 04 	l.j 24948 <frameBuffer+0x1fb20>
    1d3c:	9d 08 00 00 	l.addi r8,r8,0
    1d40:	00 87 02 00 	l.j 21c2540 <_end+0x213d714>
    1d44:	00 00 90 04 	l.j 25d54 <frameBuffer+0x20f2c>
    1d48:	9d 08 00 00 	l.addi r8,r8,0
    1d4c:	00 87 02 00 	l.j 21c254c <_end+0x213d720>
    1d50:	00 00 95 04 	l.j 27160 <frameBuffer+0x22338>
    1d54:	9d 08 00 00 	l.addi r8,r8,0
    1d58:	00 87 02 00 	l.j 21c2558 <_end+0x213d72c>
    1d5c:	00 00 9a 04 	l.j 2856c <frameBuffer+0x23744>
    1d60:	9d 08 00 00 	l.addi r8,r8,0
    1d64:	00 87 02 00 	l.j 21c2564 <_end+0x213d738>
    1d68:	00 01 8f 04 	l.j 65978 <frameBuffer+0x60b50>
    1d6c:	9d 08 00 00 	l.addi r8,r8,0
    1d70:	00 87 02 00 	l.j 21c2570 <_end+0x213d744>
    1d74:	00 00 2f 04 	l.j d984 <frameBuffer+0x8b5c>
    1d78:	9d 08 00 00 	l.addi r8,r8,0
    1d7c:	00 87 02 00 	l.j 21c257c <_end+0x213d750>
    1d80:	00 01 8a 04 	l.j 64590 <frameBuffer+0x5f768>
    1d84:	9d 08 00 00 	l.addi r8,r8,0
    1d88:	00 87 02 00 	l.j 21c2588 <_end+0x213d75c>
    1d8c:	00 00 2a 04 	l.j c59c <frameBuffer+0x7774>
    1d90:	9d 08 00 00 	l.addi r8,r8,0
    1d94:	00 87 00 06 	l.j 21c1dac <_end+0x213cf80>
    1d98:	00 00 07 64 	l.j 3b28 <__clz_tab+0xe40>
    1d9c:	03 5f 5f 78 	l.j fd7d9b7c <_end+0xfd754d50>
    1da0:	00 04 a2 05 	l.j 12a5b4 <_end+0xa5788>
    1da4:	00 00 00 87 	l.j 1fc0 <__udivdi3+0x18>
    1da8:	00 0f 03 5f 	l.j 3c2b24 <_end+0x33dcf8>
    1dac:	5f 78 00 04 	*inconnu*
    1db0:	aa 05 00 00 	l.ori r16,r5,0x0
    1db4:	00 87 00 00 	l.j 21c1db4 <_end+0x213cf88>
    1db8:	00 20 04 00 	l.j 802db8 <_end+0x77df8c>
    1dbc:	00 00 9d 00 	l.j 291bc <frameBuffer+0x24394>
    1dc0:	00 00 00 bf 	l.j 20bc <__udivdi3+0x114>
    1dc4:	00 05 01 04 	l.j 1421d4 <_end+0xbd3a8>
    1dc8:	00 00 06 c6 	l.j 38e0 <__clz_tab+0xbf8>
    1dcc:	03 00 00 01 	l.j fc001dd0 <_end+0xfbf7cfa4>
    1dd0:	b1 1d 00 00 	l.muli r8,r29,0
    1dd4:	00 00 00 00 	l.j 1dd4 <memset+0x8>
    1dd8:	00 2f 00 00 	l.j bc1dd8 <_end+0xb3cfac>
    1ddc:	3a 26 04 04 	*inconnu*
    1de0:	05 69 6e 74 	l.jal 5a5d7b0 <_end+0x59d8984>
    1de4:	00 01 04 07 	l.j 42e00 <frameBuffer+0x3dfd8>
    1de8:	00 00 00 55 	l.j 1f3c <uart_getc+0x28>
    1dec:	01 08 05 00 	l.j 42031ec <_end+0x417e3c0>
    1df0:	00 00 3d 01 	l.j 111f4 <frameBuffer+0xc3cc>
    1df4:	08 04 00 00 	l.adrp r0,80000000 <_end+0x7ff7b1d4>
    1df8:	00 71 01 01 	l.j 1c421fc <_end+0x1bbd3d0>
    1dfc:	08 00 00 00 	l.adrp r0,0 <_error>
    1e00:	7d 01 01 06 	*inconnu*
    1e04:	00 00 00 86 	l.j 201c <__udivdi3+0x74>
    1e08:	01 01 06 00 	l.j 4043608 <_end+0x3fbe7dc>
    1e0c:	00 00 7f 05 	l.j 21a20 <frameBuffer+0x1cbf8>
    1e10:	00 00 00 9f 	l.j 208c <__udivdi3+0xe4>
    1e14:	02 7b 16 00 	l.j f9ec7614 <_end+0xf9e427e8>
    1e18:	00 00 3a 02 	l.j 10620 <frameBuffer+0xb7f8>
    1e1c:	00 00 00 4f 	l.j 1f58 <vga_textcorr>
    1e20:	01 02 05 00 	l.j 4083220 <_end+0x3ffe3f4>
    1e24:	00 00 16 01 	l.j 7628 <frameBuffer+0x2800>
    1e28:	02 07 00 00 	l.j f81c1e28 <_end+0xf813cffc>
    1e2c:	00 b0 01 08 	l.j 2c0224c <_end+0x2b7d420>
    1e30:	07 00 00 00 	l.jal fc001e30 <_end+0xfbf7d004>
    1e34:	4b 01 04 04 	*inconnu*
    1e38:	00 00 00 10 	l.j 1e78 <uart_putc>
    1e3c:	01 08 03 00 	l.j 4202a3c <_end+0x417dc10>
    1e40:	00 00 08 01 	l.j 3e44 <__clz_tab+0x115c>
    1e44:	08 04 00 00 	l.adrp r0,80000000 <_end+0x7ff7b1d4>
    1e48:	00 76 01 10 	l.j 1d82288 <_end+0x1cfd45c>
    1e4c:	03 00 00 01 	l.j fc001e50 <_end+0xfbf7d024>
    1e50:	57 06 00 00 	*inconnu*
    1e54:	00 5b 00 00 	l.j 16c1e54 <_end+0x163d028>
    1e58:	00 a1 07 00 	l.j 2843a58 <_end+0x27bec2c>
    1e5c:	00 00 25 ff 	l.j b658 <frameBuffer+0x6830>
    1e60:	00 02 00 00 	l.j 81e60 <frameBuffer+0x7d038>
    1e64:	00 91 08 00 	l.j 2443e64 <_end+0x23bf038>
    1e68:	00 00 67 02 	l.j 1ba70 <frameBuffer+0x16c48>
    1e6c:	02 06 16 00 	l.j f818766c <_end+0xf8102840>
    1e70:	00 00 a1 09 	l.j 2a294 <frameBuffer+0x2546c>
    1e74:	00 00 00 a6 	l.j 210c <__udivdi3+0x164>
    1e78:	01 02 9e 0f 	l.j 40a96b4 <_end+0x4024888>
    1e7c:	05 03 00 00 	l.jal 40c1e7c <_end+0x403d050>
    1e80:	Address 0x1e80 is out of bounds.


Déassemblage de la section .debug_abbrev :

00000000 <.debug_abbrev>:
   0:	01 34 00 31 	l.j 4d000c4 <_end+0x4c7b298>
   4:	13 02 17 00 	l.bf fc085c04 <_end+0xfc000dd8>
   8:	00 02 34 00 	l.j 8d008 <_end+0x81dc>
   c:	03 0e 3a 21 	l.j fc38e890 <_end+0xfc309a64>
  10:	01 3b 05 39 	l.j 4ec14f4 <_end+0x4e3c6c8>
  14:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
  18:	00 03 34 00 	l.j cd018 <_end+0x481ec>
  1c:	03 08 3a 21 	l.j fc20e8a0 <_end+0xfc189a74>
  20:	01 3b 05 39 	l.j 4ec1504 <_end+0x4e3c6d8>
  24:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
  28:	00 04 24 00 	l.j 109028 <_end+0x841fc>
  2c:	0b 0b 3e 0b 	l.adrp r24,67c16000 <_end+0x67b911d4>
  30:	03 0e 00 00 	l.j fc380030 <_end+0xfc2fb204>
  34:	05 0b 01 01 	l.jal 42c0438 <_end+0x423b60c>
  38:	13 00 00 06 	l.bf fc000050 <_end+0xfbf7b224>
  3c:	0b 01 31 13 	l.adrp r24,26226000 <_end+0x261a11d4>
  40:	55 17 01 13 	*inconnu*
  44:	00 00 07 34 	l.j 1d14 <memcpy+0x188>
  48:	00 31 13 00 	l.j c44c48 <_end+0xbbfe1c>
  4c:	00 08 16 00 	l.j 20584c <_end+0x180a20>
  50:	03 0e 3a 21 	l.j fc38e8d4 <_end+0xfc309aa8>
  54:	02 3b 0b 39 	l.j f8ec2d38 <_end+0xf8e3df0c>
  58:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
  5c:	00 09 34 00 	l.j 24d05c <_end+0x1c8230>
  60:	03 08 3a 21 	l.j fc20e8e4 <_end+0xfc189ab8>
  64:	01 3b 05 39 	l.j 4ec1548 <_end+0x4e3c71c>
  68:	0b 49 13 02 	l.adrp r26,22604000 <_end+0x2257f1d4>
  6c:	17 00 00 0a 	*inconnu*
  70:	26 00 49 13 	*inconnu*
  74:	00 00 0b 05 	l.j 2c88 <__umoddi3+0x724>
  78:	00 03 08 3a 	l.j c2160 <_end+0x3d334>
  7c:	21 01 3b 21 	*inconnu*
  80:	e3 07 39 0b 	*inconnu*
  84:	49 13 00 00 	*inconnu*
  88:	0c 0d 00 03 	l.bnf 340094 <_end+0x2bb268>
  8c:	08 3a 21 02 	l.adrp r1,44204000 <_end+0x4417f1d4>
  90:	3b 05 39 0b 	*inconnu*
  94:	49 13 00 00 	*inconnu*
  98:	0d 05 00 03 	l.bnf 41400a4 <_end+0x40bb278>
  9c:	08 3a 21 01 	l.adrp r1,44202000 <_end+0x4417d1d4>
  a0:	3b 21 bb 09 	*inconnu*
  a4:	39 0b 49 13 	*inconnu*
  a8:	02 17 00 00 	l.j f85c00a8 <_end+0xf853b27c>
  ac:	0e 05 00 31 	l.bnf f8140170 <_end+0xf80bb344>
  b0:	13 00 00 0f 	l.bf fc0000ec <_end+0xfbf7b2c0>
  b4:	0b 01 31 13 	l.adrp r24,26226000 <_end+0x261a11d4>
  b8:	55 17 00 00 	*inconnu*
  bc:	10 0b 01 00 	l.bf 2c04bc <_end+0x23b690>
  c0:	00 11 11 01 	l.j 4444c4 <_end+0x3bf698>
  c4:	25 0e 13 0b 	*inconnu*
  c8:	03 1f 1b 1f 	l.j fc7c6d44 <_end+0xfc741f18>
  cc:	11 01 12 06 	l.bf 40448e4 <_end+0x3fbfab8>
  d0:	10 17 00 00 	l.bf 5c00d0 <_end+0x53b2a4>
  d4:	12 24 00 0b 	l.bf f8900100 <_end+0xf887b2d4>
  d8:	0b 3e 0b 03 	l.adrp r25,c1606000 <_end+0xc15811d4>
  dc:	08 00 00 13 	l.adrp r0,26000 <frameBuffer+0x211d8>
  e0:	13 01 03 0e 	l.bf fc040d18 <_end+0xfbfbbeec>
  e4:	0b 0b 3a 0b 	l.adrp r24,67416000 <_end+0x673911d4>
  e8:	3b 05 39 0b 	*inconnu*
  ec:	01 13 00 00 	l.j 44c00ec <_end+0x443b2c0>
  f0:	14 0d 00 03 	*inconnu*
  f4:	0e 3a 0b 3b 	l.bnf f8e82de0 <_end+0xf8dfdfb4>
  f8:	05 39 0b 49 	l.jal 4e42e1c <_end+0x4dbdff0>
  fc:	13 38 0b 00 	l.bf fce02cfc <_end+0xfcd7ded0>
 100:	00 15 0d 00 	l.j 543500 <_end+0x4be6d4>
 104:	03 08 3a 0b 	l.j fc20e930 <_end+0xfc189b04>
 108:	3b 05 39 0b 	*inconnu*
 10c:	49 13 38 0b 	*inconnu*
 110:	00 00 16 17 	l.j 596c <frameBuffer+0xb44>
 114:	01 0b 0b 3a 	l.j 42c2dfc <_end+0x423dfd0>
 118:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 11c:	0b 01 13 00 	l.adrp r24,22600000 <_end+0x2257b1d4>
 120:	00 17 16 00 	l.j 5c5920 <_end+0x540af4>
 124:	03 0e 3a 0b 	l.j fc38e950 <_end+0xfc309b24>
 128:	3b 05 39 0b 	*inconnu*
 12c:	49 13 00 00 	*inconnu*
 130:	18 01 01 49 	*inconnu*
 134:	13 01 13 00 	l.bf fc044d34 <_end+0xfbfbff08>
 138:	00 19 21 00 	l.j 648538 <_end+0x5c370c>
 13c:	49 13 2f 0b 	*inconnu*
 140:	00 00 1a 34 	l.j 6a10 <frameBuffer+0x1be8>
 144:	00 03 0e 3a 	l.j c3a2c <_end+0x3ec00>
 148:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 14c:	0b 49 13 3f 	l.adrp r26,2267e000 <_end+0x225f91d4>
 150:	19 3c 19 00 	*inconnu*
 154:	00 1b 2e 01 	l.j 6cb958 <_end+0x646b2c>
 158:	3f 19 03 0e 	*inconnu*
 15c:	3a 0b 3b 05 	*inconnu*
 160:	39 0b 27 19 	*inconnu*
 164:	49 13 11 01 	*inconnu*
 168:	12 06 40 18 	l.bf f81901c8 <_end+0xf810b39c>
 16c:	7a 19 01 13 	*inconnu*
 170:	00 00 1c 1d 	l.j 71e4 <frameBuffer+0x23bc>
 174:	01 31 13 52 	l.j 4c44ebc <_end+0x4bc0090>
 178:	01 55 17 58 	l.j 5545ed8 <_end+0x54c10ac>
 17c:	0b 59 05 57 	l.adrp r26,20aae000 <_end+0x20a291d4>
 180:	0b 00 00 1d 	l.adrp r24,3a000 <frameBuffer+0x351d8>
 184:	05 00 31 13 	l.jal 400c5d0 <_end+0x3f877a4>
 188:	02 17 00 00 	l.j f85c0188 <_end+0xf853b35c>
 18c:	1e 0b 01 55 	*inconnu*
 190:	17 00 00 1f 	*inconnu*
 194:	2e 01 03 0e 	*inconnu*
 198:	3a 0b 3b 05 	*inconnu*
 19c:	39 0b 27 19 	*inconnu*
 1a0:	49 13 20 0b 	*inconnu*
 1a4:	01 13 00 00 	l.j 44c01a4 <_end+0x443b378>
 1a8:	20 0f 00 0b 	*inconnu*
 1ac:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 1b0:	00 00 01 34 	l.j 680 <perf_cpu_freq+0x3c>
 1b4:	00 31 13 02 	l.j c44dbc <_end+0xbbff90>
 1b8:	17 00 00 02 	*inconnu*
 1bc:	34 00 03 0e 	*inconnu*
 1c0:	3a 21 01 3b 	*inconnu*
 1c4:	05 39 0b 49 	l.jal 4e42ee8 <_end+0x4dbe0bc>
 1c8:	13 00 00 03 	l.bf fc0001d4 <_end+0xfbf7b3a8>
 1cc:	34 00 03 08 	*inconnu*
 1d0:	3a 21 01 3b 	*inconnu*
 1d4:	05 39 0b 49 	l.jal 4e42ef8 <_end+0x4dbe0cc>
 1d8:	13 00 00 04 	l.bf fc0001e8 <_end+0xfbf7b3bc>
 1dc:	24 00 0b 0b 	*inconnu*
 1e0:	3e 0b 03 0e 	*inconnu*
 1e4:	00 00 05 34 	l.j 16b4 <_vsnprintf+0x570>
 1e8:	00 31 13 00 	l.j c44de8 <_end+0xbbffbc>
 1ec:	00 06 0b 01 	l.j 182df0 <_end+0xfdfc4>
 1f0:	01 13 00 00 	l.j 44c01f0 <_end+0x443b3c4>
 1f4:	07 0b 01 31 	l.jal fc2c06b8 <_end+0xfc23b88c>
 1f8:	13 55 17 01 	l.bf fd545dfc <_end+0xfd4c0fd0>
 1fc:	13 00 00 08 	l.bf fc00021c <_end+0xfbf7b3f0>
 200:	16 00 03 0e 	*inconnu*
 204:	3a 21 02 3b 	*inconnu*
 208:	0b 39 0b 49 	l.adrp r25,21692000 <_end+0x2160d1d4>
 20c:	13 00 00 09 	l.bf fc000230 <_end+0xfbf7b404>
 210:	34 00 03 08 	*inconnu*
 214:	3a 21 01 3b 	*inconnu*
 218:	05 39 0b 49 	l.jal 4e42f3c <_end+0x4dbe110>
 21c:	13 02 17 00 	l.bf fc085e1c <_end+0xfc000ff0>
 220:	00 0a 26 00 	l.j 289a20 <_end+0x204bf4>
 224:	49 13 00 00 	*inconnu*
 228:	0b 05 00 03 	l.adrp r24,a0006000 <_end+0x9ff811d4>
 22c:	08 3a 21 01 	l.adrp r1,44202000 <_end+0x4417d1d4>
 230:	3b 21 e3 07 	*inconnu*
 234:	39 0b 49 13 	*inconnu*
 238:	00 00 0c 0d 	l.j 326c <__clz_tab+0x584>
 23c:	00 03 08 3a 	l.j c2324 <_end+0x3d4f8>
 240:	21 02 3b 05 	*inconnu*
 244:	39 0b 49 13 	*inconnu*
 248:	00 00 0d 05 	l.j 365c <__clz_tab+0x974>
 24c:	00 03 08 3a 	l.j c2334 <_end+0x3d508>
 250:	21 01 3b 21 	*inconnu*
 254:	d3 09 39 0b 	*inconnu*
 258:	49 13 02 17 	*inconnu*
 25c:	00 00 0e 05 	l.j 3a70 <__clz_tab+0xd88>
 260:	00 31 13 00 	l.j c44e60 <_end+0xbc0034>
 264:	00 0f 0b 01 	l.j 3c2e68 <_end+0x33e03c>
 268:	31 13 11 01 	*inconnu*
 26c:	12 06 01 13 	l.bf f81806b8 <_end+0xf80fb88c>
 270:	00 00 10 0b 	l.j 429c <__clz_tab+0x15b4>
 274:	01 00 00 11 	l.j 40002b8 <_end+0x3f7b48c>
 278:	11 01 25 0e 	l.bf 40496b0 <_end+0x3fc4884>
 27c:	13 0b 03 1f 	l.bf fc2c0ef8 <_end+0xfc23c0cc>
 280:	1b 1f 11 01 	*inconnu*
 284:	12 06 10 17 	l.bf f81842e0 <_end+0xf80ff4b4>
 288:	00 00 12 24 	l.j 4b18 <__clz_tab+0x1e30>
 28c:	00 0b 0b 3e 	l.j 2c2f84 <_end+0x23e158>
 290:	0b 03 08 00 	l.adrp r24,61000000 <_end+0x60f7b1d4>
 294:	00 13 13 01 	l.j 4c4e98 <_end+0x44006c>
 298:	03 0e 0b 0b 	l.j fc382ec4 <_end+0xfc2fe098>
 29c:	3a 0b 3b 05 	*inconnu*
 2a0:	39 0b 01 13 	*inconnu*
 2a4:	00 00 14 0d 	l.j 52d8 <frameBuffer+0x4b0>
 2a8:	00 03 0e 3a 	l.j c3b90 <_end+0x3ed64>
 2ac:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 2b0:	0b 49 13 38 	l.adrp r26,22670000 <_end+0x225eb1d4>
 2b4:	0b 00 00 15 	l.adrp r24,2a000 <frameBuffer+0x251d8>
 2b8:	0d 00 03 08 	l.bnf 4000ed8 <_end+0x3f7c0ac>
 2bc:	3a 0b 3b 05 	*inconnu*
 2c0:	39 0b 49 13 	*inconnu*
 2c4:	38 0b 00 00 	*inconnu*
 2c8:	16 17 01 0b 	*inconnu*
 2cc:	0b 3a 0b 3b 	l.adrp r25,41676000 <_end+0x415f11d4>
 2d0:	05 39 0b 01 	l.jal 4e42ed4 <_end+0x4dbe0a8>
 2d4:	13 00 00 17 	l.bf fc000330 <_end+0xfbf7b504>
 2d8:	16 00 03 0e 	*inconnu*
 2dc:	3a 0b 3b 05 	*inconnu*
 2e0:	39 0b 49 13 	*inconnu*
 2e4:	00 00 18 01 	l.j 62e8 <frameBuffer+0x14c0>
 2e8:	01 49 13 01 	l.j 5244eec <_end+0x51c00c0>
 2ec:	13 00 00 19 	l.bf fc000350 <_end+0xfbf7b524>
 2f0:	21 00 49 13 	l.trap 0x4913
 2f4:	2f 0b 00 00 	*inconnu*
 2f8:	1a 34 00 03 	*inconnu*
 2fc:	0e 3a 0b 3b 	l.bnf f8e82fe8 <_end+0xf8dfe1bc>
 300:	05 39 0b 49 	l.jal 4e43024 <_end+0x4dbe1f8>
 304:	13 3f 19 3c 	l.bf fcfc67f4 <_end+0xfcf419c8>
 308:	19 00 00 1b 	l.movhi r8,0x1b
 30c:	2e 01 3f 19 	*inconnu*
 310:	03 0e 3a 0b 	l.j fc38eb3c <_end+0xfc309d10>
 314:	3b 05 39 0b 	*inconnu*
 318:	27 19 49 13 	*inconnu*
 31c:	11 01 12 06 	l.bf 4044b34 <_end+0x3fbfd08>
 320:	40 18 7a 19 	*inconnu*
 324:	01 13 00 00 	l.j 44c0324 <_end+0x443b4f8>
 328:	1c 1d 01 31 	*inconnu*
 32c:	13 52 01 55 	l.bf fd480880 <_end+0xfd3fba54>
 330:	17 58 0b 59 	*inconnu*
 334:	05 57 0b 00 	l.jal 55c2f34 <_end+0x553e108>
 338:	00 1d 05 00 	l.j 741738 <_end+0x6bc90c>
 33c:	31 13 02 17 	*inconnu*
 340:	00 00 1e 0b 	l.j 7b6c <frameBuffer+0x2d44>
 344:	01 55 17 00 	l.j 5545f44 <_end+0x54c1118>
 348:	00 1f 0b 01 	l.j 7c2f4c <_end+0x73e120>
 34c:	31 13 55 17 	*inconnu*
 350:	00 00 20 0b 	l.j 837c <frameBuffer+0x3554>
 354:	01 31 13 11 	l.j 4c44f98 <_end+0x4bc016c>
 358:	01 12 06 00 	l.j 4481b58 <_end+0x43fcd2c>
 35c:	00 21 2e 01 	l.j 84bb60 <_end+0x7c6d34>
 360:	03 0e 3a 0b 	l.j fc38eb8c <_end+0xfc309d60>
 364:	3b 05 39 0b 	*inconnu*
 368:	27 19 49 13 	*inconnu*
 36c:	20 0b 01 13 	*inconnu*
 370:	00 00 22 0f 	l.j 8bac <frameBuffer+0x3d84>
 374:	00 0b 0b 49 	l.j 2c3098 <_end+0x23e26c>
 378:	13 00 00 00 	l.bf fc000378 <_end+0xfbf7b54c>
 37c:	01 34 00 31 	l.j 4d00440 <_end+0x4c7b614>
 380:	13 02 17 00 	l.bf fc085f80 <_end+0xfc001154>
 384:	00 02 34 00 	l.j 8d384 <_end+0x8558>
 388:	03 0e 3a 21 	l.j fc38ec0c <_end+0xfc309de0>
 38c:	01 3b 05 39 	l.j 4ec1870 <_end+0x4e3ca44>
 390:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 394:	00 03 34 00 	l.j cd394 <_end+0x48568>
 398:	03 08 3a 21 	l.j fc20ec1c <_end+0xfc189df0>
 39c:	01 3b 05 39 	l.j 4ec1880 <_end+0x4e3ca54>
 3a0:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 3a4:	00 04 24 00 	l.j 1093a4 <_end+0x84578>
 3a8:	0b 0b 3e 0b 	l.adrp r24,67c16000 <_end+0x67b911d4>
 3ac:	03 0e 00 00 	l.j fc3803ac <_end+0xfc2fb580>
 3b0:	05 0b 01 01 	l.jal 42c07b4 <_end+0x423b988>
 3b4:	13 00 00 06 	l.bf fc0003cc <_end+0xfbf7b5a0>
 3b8:	34 00 31 13 	*inconnu*
 3bc:	00 00 07 0b 	l.j 1fe8 <__udivdi3+0x40>
 3c0:	01 31 13 55 	l.j 4c45114 <_end+0x4bc02e8>
 3c4:	17 01 13 00 	*inconnu*
 3c8:	00 08 16 00 	l.j 205bc8 <_end+0x180d9c>
 3cc:	03 0e 3a 21 	l.j fc38ec50 <_end+0xfc309e24>
 3d0:	02 3b 0b 39 	l.j f8ec30b4 <_end+0xf8e3e288>
 3d4:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 3d8:	00 09 26 00 	l.j 249bd8 <_end+0x1c4dac>
 3dc:	49 13 00 00 	*inconnu*
 3e0:	0a 05 00 31 	l.adrp r16,a0062000 <_end+0x9ffdd1d4>
 3e4:	13 02 17 00 	l.bf fc085fe4 <_end+0xfc0011b8>
 3e8:	00 0b 05 00 	l.j 2c17e8 <_end+0x23c9bc>
 3ec:	03 08 3a 21 	l.j fc20ec70 <_end+0xfc189e44>
 3f0:	01 3b 21 e3 	l.j 4ec8b7c <_end+0x4e43d50>
 3f4:	07 39 0b 49 	l.jal fce43118 <_end+0xfcdbe2ec>
 3f8:	13 00 00 0c 	l.bf fc000428 <_end+0xfbf7b5fc>
 3fc:	0d 00 03 08 	l.bnf 400101c <_end+0x3f7c1f0>
 400:	3a 21 02 3b 	*inconnu*
 404:	05 39 0b 49 	l.jal 4e43128 <_end+0x4dbe2fc>
 408:	13 00 00 0d 	l.bf fc00043c <_end+0xfbf7b610>
 40c:	05 00 03 08 	l.jal 400102c <_end+0x3f7c200>
 410:	3a 21 01 3b 	*inconnu*
 414:	21 92 0a 39 	*inconnu*
 418:	0b 49 13 02 	l.adrp r26,22604000 <_end+0x2257f1d4>
 41c:	17 00 00 0e 	*inconnu*
 420:	0b 01 31 13 	l.adrp r24,26226000 <_end+0x261a11d4>
 424:	55 17 00 00 	*inconnu*
 428:	0f 0b 01 00 	l.bnf fc2c0828 <_end+0xfc23b9fc>
 42c:	00 10 11 01 	l.j 404830 <_end+0x37fa04>
 430:	25 0e 13 0b 	*inconnu*
 434:	03 1f 1b 1f 	l.j fc7c70b0 <_end+0xfc742284>
 438:	11 01 12 06 	l.bf 4044c50 <_end+0x3fbfe24>
 43c:	10 17 00 00 	l.bf 5c043c <_end+0x53b610>
 440:	11 24 00 0b 	l.bf 490046c <_end+0x487b640>
 444:	0b 3e 0b 03 	l.adrp r25,c1606000 <_end+0xc15811d4>
 448:	08 00 00 12 	l.adrp r0,24000 <frameBuffer+0x1f1d8>
 44c:	13 01 03 0e 	l.bf fc041084 <_end+0xfbfbc258>
 450:	0b 0b 3a 0b 	l.adrp r24,67416000 <_end+0x673911d4>
 454:	3b 05 39 0b 	*inconnu*
 458:	01 13 00 00 	l.j 44c0458 <_end+0x443b62c>
 45c:	13 0d 00 03 	l.bf fc340468 <_end+0xfc2bb63c>
 460:	0e 3a 0b 3b 	l.bnf f8e8314c <_end+0xf8dfe320>
 464:	05 39 0b 49 	l.jal 4e43188 <_end+0x4dbe35c>
 468:	13 38 0b 00 	l.bf fce03068 <_end+0xfcd7e23c>
 46c:	00 14 0d 00 	l.j 50386c <_end+0x47ea40>
 470:	03 08 3a 0b 	l.j fc20ec9c <_end+0xfc189e70>
 474:	3b 05 39 0b 	*inconnu*
 478:	49 13 38 0b 	*inconnu*
 47c:	00 00 15 17 	l.j 58d8 <frameBuffer+0xab0>
 480:	01 0b 0b 3a 	l.j 42c3168 <_end+0x423e33c>
 484:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 488:	0b 01 13 00 	l.adrp r24,22600000 <_end+0x2257b1d4>
 48c:	00 16 16 00 	l.j 585c8c <_end+0x500e60>
 490:	03 0e 3a 0b 	l.j fc38ecbc <_end+0xfc309e90>
 494:	3b 05 39 0b 	*inconnu*
 498:	49 13 00 00 	*inconnu*
 49c:	17 01 01 49 	*inconnu*
 4a0:	13 01 13 00 	l.bf fc0450a0 <_end+0xfbfc0274>
 4a4:	00 18 21 00 	l.j 6088a4 <_end+0x583a78>
 4a8:	49 13 2f 0b 	*inconnu*
 4ac:	00 00 19 34 	l.j 697c <frameBuffer+0x1b54>
 4b0:	00 03 0e 3a 	l.j c3d98 <_end+0x3ef6c>
 4b4:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 4b8:	0b 49 13 3f 	l.adrp r26,2267e000 <_end+0x225f91d4>
 4bc:	19 3c 19 00 	*inconnu*
 4c0:	00 1a 2e 01 	l.j 68bcc4 <_end+0x606e98>
 4c4:	3f 19 03 0e 	*inconnu*
 4c8:	3a 0b 3b 05 	*inconnu*
 4cc:	39 0b 27 19 	*inconnu*
 4d0:	49 13 11 01 	*inconnu*
 4d4:	12 06 40 18 	l.bf f8190534 <_end+0xf810b708>
 4d8:	7a 19 01 13 	*inconnu*
 4dc:	00 00 1b 1d 	l.j 7150 <frameBuffer+0x2328>
 4e0:	01 31 13 52 	l.j 4c45228 <_end+0x4bc03fc>
 4e4:	01 55 17 58 	l.j 5546244 <_end+0x54c1418>
 4e8:	0b 59 05 57 	l.adrp r26,20aae000 <_end+0x20a291d4>
 4ec:	0b 00 00 1c 	l.adrp r24,38000 <frameBuffer+0x331d8>
 4f0:	0b 01 55 17 	l.adrp r24,2aa2e000 <_end+0x2a9a91d4>
 4f4:	00 00 1d 2e 	l.j 79ac <frameBuffer+0x2b84>
 4f8:	01 03 0e 3a 	l.j 40c3de0 <_end+0x403efb4>
 4fc:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 500:	0b 27 19 49 	l.adrp r25,e3292000 <_end+0xe320d1d4>
 504:	13 20 0b 01 	l.bf fc803108 <_end+0xfc77e2dc>
 508:	13 00 00 1e 	l.bf fc000580 <_end+0xfbf7b754>
 50c:	0f 00 0b 0b 	l.bnf fc003138 <_end+0xfbf7e30c>
 510:	49 13 00 00 	*inconnu*
 514:	00 01 34 00 	l.j 4d514 <frameBuffer+0x486ec>
 518:	31 13 02 17 	*inconnu*
 51c:	00 00 02 34 	l.j dec <_ntoa_format+0x334>
 520:	00 03 0e 3a 	l.j c3e08 <_end+0x3efdc>
 524:	21 01 3b 05 	*inconnu*
 528:	39 0b 49 13 	*inconnu*
 52c:	00 00 03 34 	l.j 11fc <_vsnprintf+0xb8>
 530:	00 03 08 3a 	l.j c2618 <_end+0x3d7ec>
 534:	21 01 3b 05 	*inconnu*
 538:	39 0b 49 13 	*inconnu*
 53c:	00 00 04 24 	l.j 15cc <_vsnprintf+0x488>
 540:	00 0b 0b 3e 	l.j 2c3238 <_end+0x23e40c>
 544:	0b 03 0e 00 	l.adrp r24,61c00000 <_end+0x61b7b1d4>
 548:	00 05 34 00 	l.j 14d548 <_end+0xc871c>
 54c:	31 13 00 00 	*inconnu*
 550:	06 0b 01 01 	l.jal f82c0954 <_end+0xf823bb28>
 554:	13 00 00 07 	l.bf fc000570 <_end+0xfbf7b744>
 558:	0b 01 31 13 	l.adrp r24,26226000 <_end+0x261a11d4>
 55c:	55 17 01 13 	*inconnu*
 560:	00 00 08 16 	l.j 25b8 <__umoddi3+0x54>
 564:	00 03 0e 3a 	l.j c3e4c <_end+0x3f020>
 568:	21 02 3b 0b 	*inconnu*
 56c:	39 0b 49 13 	*inconnu*
 570:	00 00 09 26 	l.j 2a08 <__umoddi3+0x4a4>
 574:	00 49 13 00 	l.j 1245174 <_end+0x11c0348>
 578:	00 0a 05 00 	l.j 281978 <_end+0x1fcb4c>
 57c:	31 13 02 17 	*inconnu*
 580:	00 00 0b 05 	l.j 3194 <__clz_tab+0x4ac>
 584:	00 03 08 3a 	l.j c266c <_end+0x3d840>
 588:	21 01 3b 21 	*inconnu*
 58c:	e3 07 39 0b 	*inconnu*
 590:	49 13 00 00 	*inconnu*
 594:	0c 0d 00 03 	l.bnf 3405a0 <_end+0x2bb774>
 598:	08 3a 21 02 	l.adrp r1,44204000 <_end+0x4417f1d4>
 59c:	3b 05 39 0b 	*inconnu*
 5a0:	49 13 00 00 	*inconnu*
 5a4:	0d 05 00 03 	l.bnf 41405b0 <_end+0x40bb784>
 5a8:	08 3a 21 01 	l.adrp r1,44202000 <_end+0x4417d1d4>
 5ac:	3b 21 86 0a 	*inconnu*
 5b0:	39 0b 49 13 	*inconnu*
 5b4:	02 17 00 00 	l.j f85c05b4 <_end+0xf853b788>
 5b8:	0e 0b 01 31 	l.bnf f82c0a7c <_end+0xf823bc50>
 5bc:	13 11 01 12 	l.bf fc440a04 <_end+0xfc3bbbd8>
 5c0:	06 01 13 00 	l.jal f80451c0 <_end+0xf7fc0394>
 5c4:	00 0f 0b 01 	l.j 3c31c8 <_end+0x33e39c>
 5c8:	00 00 10 11 	l.j 460c <__clz_tab+0x1924>
 5cc:	01 25 0e 13 	l.j 4943e18 <_end+0x48befec>
 5d0:	0b 03 1f 1b 	l.adrp r24,63e36000 <_end+0x63db11d4>
 5d4:	1f 11 01 12 	*inconnu*
 5d8:	06 10 17 00 	l.jal f84061d8 <_end+0xf83813ac>
 5dc:	00 11 24 00 	l.j 4495dc <_end+0x3c47b0>
 5e0:	0b 0b 3e 0b 	l.adrp r24,67c16000 <_end+0x67b911d4>
 5e4:	03 08 00 00 	l.j fc2005e4 <_end+0xfc17b7b8>
 5e8:	12 13 01 03 	l.bf f84c09f4 <_end+0xf843bbc8>
 5ec:	0e 0b 0b 3a 	l.bnf f82c32d4 <_end+0xf823e4a8>
 5f0:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 5f4:	0b 01 13 00 	l.adrp r24,22600000 <_end+0x2257b1d4>
 5f8:	00 13 0d 00 	l.j 4c39f8 <_end+0x43ebcc>
 5fc:	03 0e 3a 0b 	l.j fc38ee28 <_end+0xfc309ffc>
 600:	3b 05 39 0b 	*inconnu*
 604:	49 13 38 0b 	*inconnu*
 608:	00 00 14 0d 	l.j 563c <frameBuffer+0x814>
 60c:	00 03 08 3a 	l.j c26f4 <_end+0x3d8c8>
 610:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 614:	0b 49 13 38 	l.adrp r26,22670000 <_end+0x225eb1d4>
 618:	0b 00 00 15 	l.adrp r24,2a000 <frameBuffer+0x251d8>
 61c:	17 01 0b 0b 	*inconnu*
 620:	3a 0b 3b 05 	*inconnu*
 624:	39 0b 01 13 	*inconnu*
 628:	00 00 16 16 	l.j 5e80 <frameBuffer+0x1058>
 62c:	00 03 0e 3a 	l.j c3f14 <_end+0x3f0e8>
 630:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 634:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 638:	00 17 01 01 	l.j 5c0a3c <_end+0x53bc10>
 63c:	49 13 01 13 	*inconnu*
 640:	00 00 18 21 	l.j 66c4 <frameBuffer+0x189c>
 644:	00 49 13 2f 	l.j 1245300 <_end+0x11c04d4>
 648:	0b 00 00 19 	l.adrp r24,32000 <frameBuffer+0x2d1d8>
 64c:	34 00 03 0e 	*inconnu*
 650:	3a 0b 3b 05 	*inconnu*
 654:	39 0b 49 13 	*inconnu*
 658:	3f 19 3c 19 	*inconnu*
 65c:	00 00 1a 2e 	l.j 6f14 <frameBuffer+0x20ec>
 660:	01 3f 19 03 	l.j 4fc6a6c <_end+0x4f41c40>
 664:	0e 3a 0b 3b 	l.bnf f8e83350 <_end+0xf8dfe524>
 668:	05 39 0b 27 	l.jal 4e43304 <_end+0x4dbe4d8>
 66c:	19 49 13 11 	*inconnu*
 670:	01 12 06 40 	l.j 4481f70 <_end+0x43fd144>
 674:	18 7a 19 01 	*inconnu*
 678:	13 00 00 1b 	l.bf fc0006e4 <_end+0xfbf7b8b8>
 67c:	1d 01 31 13 	*inconnu*
 680:	52 01 55 17 	*inconnu*
 684:	58 0b 59 05 	*inconnu*
 688:	57 0b 00 00 	*inconnu*
 68c:	1c 0b 01 55 	*inconnu*
 690:	17 00 00 1d 	*inconnu*
 694:	0b 01 31 13 	l.adrp r24,26226000 <_end+0x261a11d4>
 698:	55 17 00 00 	*inconnu*
 69c:	1e 0b 01 31 	*inconnu*
 6a0:	13 11 01 12 	l.bf fc440ae8 <_end+0xfc3bbcbc>
 6a4:	06 00 00 1f 	l.jal f8000720 <_end+0xf7f7b8f4>
 6a8:	2e 01 03 0e 	*inconnu*
 6ac:	3a 0b 3b 05 	*inconnu*
 6b0:	39 0b 27 19 	*inconnu*
 6b4:	49 13 20 0b 	*inconnu*
 6b8:	01 13 00 00 	l.j 44c06b8 <_end+0x443b88c>
 6bc:	20 0f 00 0b 	*inconnu*
 6c0:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 6c4:	00 00 01 24 	l.j b54 <_ntoa_format+0x9c>
 6c8:	00 0b 0b 3e 	l.j 2c33c0 <_end+0x23e594>
 6cc:	0b 03 0e 00 	l.adrp r24,61c00000 <_end+0x61b7b1d4>
 6d0:	00 02 26 00 	l.j 89ed0 <_end+0x50a4>
 6d4:	49 13 00 00 	*inconnu*
 6d8:	03 11 01 25 	l.j fc440b6c <_end+0xfc3bbd40>
 6dc:	0e 13 0b 03 	l.bnf f84c32e8 <_end+0xf843e4bc>
 6e0:	1f 1b 1f 10 	*inconnu*
 6e4:	17 00 00 04 	*inconnu*
 6e8:	24 00 0b 0b 	*inconnu*
 6ec:	3e 0b 03 08 	*inconnu*
 6f0:	00 00 05 16 	l.j 1b48 <vsnprintf_+0x10>
 6f4:	00 03 0e 3a 	l.j c3fdc <_end+0x3f1b0>
 6f8:	0b 3b 0b 39 	l.adrp r25,61672000 <_end+0x615ed1d4>
 6fc:	0b 49 13 00 	l.adrp r26,22600000 <_end+0x2257b1d4>
 700:	00 06 01 01 	l.j 180b04 <_end+0xfbcd8>
 704:	49 13 01 13 	*inconnu*
 708:	00 00 07 21 	l.j 238c <__udivdi3+0x3e4>
 70c:	00 49 13 2f 	l.j 12453c8 <_end+0x11c059c>
 710:	0b 00 00 08 	l.adrp r24,10000 <frameBuffer+0xb1d8>
 714:	34 00 03 0e 	*inconnu*
 718:	3a 0b 3b 05 	*inconnu*
 71c:	39 0b 49 13 	*inconnu*
 720:	3f 19 3c 19 	*inconnu*
 724:	00 00 09 34 	l.j 2bf4 <__umoddi3+0x690>
 728:	00 47 13 3a 	l.j 11c5410 <_end+0x11405e4>
 72c:	0b 3b 05 39 	l.adrp r25,60a72000 <_end+0x609ed1d4>
 730:	0b 02 18 00 	l.adrp r24,43000000 <_end+0x42f7b1d4>
	...

Déassemblage de la section .debug_line :

00000000 <.debug_line>:
       0:	00 00 0e 91 	l.j 3a44 <__clz_tab+0xd5c>
       4:	00 05 04 00 	l.j 141004 <_end+0xbc1d8>
       8:	00 00 00 33 	l.j d4 <_exception_handler+0x44>
       c:	01 01 01 f6 	l.j 40407e4 <_end+0x3fbb9b8>
      10:	f2 0d 00 01 	*inconnu*
      14:	01 01 01 00 	l.j 4040414 <_end+0x3fbb5e8>
      18:	00 00 01 00 	l.j 418 <main+0x224>
      1c:	00 01 01 01 	l.j 40420 <frameBuffer+0x3b5f8>
      20:	1f 02 00 00 	*inconnu*
      24:	00 2f 00 00 	l.j bc0024 <_end+0xb3b1f8>
      28:	00 7d 02 01 	l.j 1f4082c <_end+0x1ebba00>
      2c:	1f 02 0b 03 	*inconnu*
	...
      38:	1b 01 00 00 	l.macrc r24
      3c:	00 25 01 00 	l.j 94043c <_end+0x8bb610>
      40:	05 02 00 00 	l.jal 4080040 <_end+0x3ffb214>
      44:	00 00 03 bb 	l.j f30 <_ntoa_long_long+0x8>
      48:	09 01 05 01 	l.adrp r8,20a02000 <_end+0x2097d1d4>
      4c:	00 05 02 00 	l.j 14084c <_end+0xbba20>
      50:	00 00 00 18 	l.j b0 <_exception_handler+0x20>
      54:	05 03 00 05 	l.jal 40c0068 <_end+0x403b23c>
      58:	02 00 00 00 	l.j f8000058 <_end+0xf7f7b22c>
      5c:	00 18 05 03 	l.j 601468 <_end+0x57c63c>
      60:	00 05 02 00 	l.j 140860 <_end+0xbba34>
      64:	00 00 00 18 	l.j c4 <_exception_handler+0x34>
      68:	05 03 00 05 	l.jal 40c007c <_end+0x403b250>
      6c:	02 00 00 00 	l.j f800006c <_end+0xf7f7b240>
      70:	00 18 05 03 	l.j 60147c <_end+0x57c650>
      74:	00 05 02 00 	l.j 140874 <_end+0xbba48>
      78:	00 00 00 19 	l.j dc <_exception_handler+0x4c>
      7c:	05 03 00 05 	l.jal 40c0090 <_end+0x403b264>
      80:	02 00 00 00 	l.j f8000080 <_end+0xf7f7b254>
      84:	00 06 01 05 	l.j 180498 <_end+0xfb66c>
      88:	06 00 05 02 	l.jal f8001490 <_end+0xf7f7c664>
      8c:	00 00 00 00 	l.j 8c <_loop_end+0x4>
      90:	06 1a 05 03 	l.jal f868149c <_end+0xf85fc670>
      94:	00 05 02 00 	l.j 140894 <_end+0xbba68>
      98:	00 00 00 06 	l.j b0 <_exception_handler+0x20>
      9c:	01 05 06 00 	l.j 414189c <_end+0x40bca70>
      a0:	05 02 00 00 	l.jal 40800a0 <_end+0x3ffb274>
      a4:	00 00 06 1b 	l.j 1910 <_vsnprintf+0x7cc>
      a8:	05 03 00 05 	l.jal 40c00bc <_end+0x403b290>
      ac:	02 00 00 00 	l.j f80000ac <_end+0xf7f7b280>
      b0:	00 03 9c 7e 	l.j e72a8 <_end+0x6247c>
      b4:	01 05 03 00 	l.j 4140cb4 <_end+0x40bbe88>
      b8:	05 02 00 00 	l.jal 40800b8 <_end+0x3ffb28c>
      bc:	00 00 18 05 	l.j 60d0 <frameBuffer+0x12a8>
      c0:	03 00 05 02 	l.j fc0014c8 <_end+0xfbf7c69c>
      c4:	00 00 00 00 	l.j c4 <_exception_handler+0x34>
      c8:	18 05 03 00 	*inconnu*
      cc:	05 02 00 00 	l.jal 40800cc <_end+0x3ffb2a0>
      d0:	00 00 18 05 	l.j 60e4 <frameBuffer+0x12bc>
      d4:	03 00 05 02 	l.j fc0014dc <_end+0xfbf7c6b0>
      d8:	00 00 00 00 	l.j d8 <_exception_handler+0x48>
      dc:	18 05 03 00 	*inconnu*
      e0:	05 02 00 00 	l.jal 40800e0 <_end+0x3ffb2b4>
      e4:	00 00 18 05 	l.j 60f8 <frameBuffer+0x12d0>
      e8:	03 00 05 02 	l.j fc0014f0 <_end+0xfbf7c6c4>
      ec:	00 00 00 00 	l.j ec <_exception_handler+0x5c>
      f0:	19 05 03 00 	*inconnu*
      f4:	05 02 00 00 	l.jal 40800f4 <_end+0x3ffb2c8>
      f8:	00 00 06 3f 	l.j 19f4 <_vsnprintf+0x8b0>
      fc:	05 06 00 05 	l.jal 4180110 <_end+0x40fb2e4>
     100:	02 00 00 00 	l.j f8000100 <_end+0xf7f7b2d4>
     104:	00 03 58 01 	l.j d6108 <_end+0x512dc>
     108:	05 06 00 05 	l.jal 418011c <_end+0x40fb2f0>
     10c:	02 00 00 00 	l.j f800010c <_end+0xf7f7b2e0>
     110:	00 06 18 05 	l.j 186124 <_end+0x1012f8>
     114:	03 00 05 02 	l.j fc00151c <_end+0xfbf7c6f0>
     118:	00 00 00 00 	l.j 118 <_exception_handler+0x88>
     11c:	18 05 03 00 	*inconnu*
     120:	05 02 00 00 	l.jal 4080120 <_end+0x3ffb2f4>
     124:	00 00 06 01 	l.j 1928 <_vsnprintf+0x7e4>
     128:	05 06 00 05 	l.jal 418013c <_end+0x40fb310>
     12c:	02 00 00 00 	l.j f800012c <_end+0xf7f7b300>
     130:	00 06 18 05 	l.j 186144 <_end+0x101318>
     134:	03 00 05 02 	l.j fc00153c <_end+0xfbf7c710>
     138:	00 00 00 00 	l.j 138 <_exception_handler+0xa8>
     13c:	3c 05 03 00 	*inconnu*
     140:	05 02 00 00 	l.jal 4080140 <_end+0x3ffb314>
     144:	00 00 06 01 	l.j 1948 <_vsnprintf+0x804>
     148:	05 06 00 05 	l.jal 418015c <_end+0x40fb330>
     14c:	02 00 00 00 	l.j f800014c <_end+0xf7f7b320>
     150:	00 06 19 05 	l.j 186564 <_end+0x101738>
     154:	07 00 05 02 	l.jal fc00155c <_end+0xfbf7c730>
     158:	00 00 00 00 	l.j 158 <_exception_handler+0xc8>
     15c:	06 01 05 0a 	l.jal f8041584 <_end+0xf7fbc758>
     160:	00 05 02 00 	l.j 140960 <_end+0xbbb34>
     164:	00 00 00 06 	l.j 17c <_exception_handler+0xec>
     168:	1b 05 04 00 	*inconnu*
     16c:	05 02 00 00 	l.jal 408016c <_end+0x3ffb340>
     170:	00 00 01 05 	l.j 584 <system_call_handler>
     174:	04 00 05 02 	l.jal 157c <_vsnprintf+0x438>
     178:	00 00 00 00 	l.j 178 <_exception_handler+0xe8>
     17c:	01 05 04 00 	l.j 414117c <_end+0x40bc350>
     180:	05 02 00 00 	l.jal 4080180 <_end+0x3ffb354>
     184:	00 00 01 05 	l.j 598 <trap_handler+0x8>
     188:	04 00 05 02 	l.jal 1590 <_vsnprintf+0x44c>
     18c:	00 00 00 00 	l.j 18c <_exception_handler+0xfc>
     190:	00 02 04 01 	l.j 81194 <frameBuffer+0x7c36c>
     194:	01 05 04 00 	l.j 4141194 <_end+0x40bc368>
     198:	05 02 00 00 	l.jal 4080198 <_end+0x3ffb36c>
     19c:	00 00 00 02 	l.j 1a4 <_exception_handler+0x114>
     1a0:	04 04 06 01 	l.jal 1019a4 <_end+0x7cb78>
     1a4:	05 04 00 05 	l.jal 41001b8 <_end+0x407b38c>
     1a8:	02 00 00 00 	l.j f80001a8 <_end+0xf7f7b37c>
     1ac:	00 00 02 04 	l.j 9bc <perf_print_time+0x78>
     1b0:	0a 01 05 04 	l.adrp r16,20a08000 <_end+0x209831d4>
     1b4:	00 05 02 00 	l.j 1409b4 <_end+0xbbb88>
     1b8:	00 00 00 00 	l.j 1b8 <_exception_handler+0x128>
     1bc:	02 04 15 06 	l.j f81055d4 <_end+0xf80807a8>
     1c0:	01 05 04 00 	l.j 41411c0 <_end+0x40bc394>
     1c4:	05 02 00 00 	l.jal 40801c4 <_end+0x3ffb398>
     1c8:	00 00 00 02 	l.j 1d0 <_vectors+0x14>
     1cc:	04 16 06 01 	l.jal 5819d0 <_end+0x4fcba4>
     1d0:	05 04 00 05 	l.jal 41001e4 <_end+0x407b3b8>
     1d4:	02 00 00 00 	l.j f80001d4 <_end+0xf7f7b3a8>
     1d8:	00 00 02 04 	l.j 9e8 <_putchar+0x8>
     1dc:	00 19 05 07 	l.j 6415f8 <_end+0x5bc7cc>
     1e0:	00 05 02 00 	l.j 1409e0 <_end+0xbbbb4>
     1e4:	00 00 00 00 	l.j 1e4 <_vectors+0x28>
     1e8:	02 04 16 06 	l.j f8105a00 <_end+0xf8080bd4>
     1ec:	15 05 04 00 	*inconnu*
     1f0:	05 02 00 00 	l.jal 40801f0 <_end+0x3ffb3c4>
     1f4:	00 00 00 02 	l.j 1fc <main+0x8>
     1f8:	04 00 19 05 	l.jal 660c <frameBuffer+0x17e4>
     1fc:	04 00 05 02 	l.jal 1604 <_vsnprintf+0x4c0>
     200:	00 00 00 00 	l.j 200 <main+0xc>
     204:	06 01 05 07 	l.jal f8041620 <_end+0xf7fbc7f4>
     208:	00 05 02 00 	l.j 140a08 <_end+0xbbbdc>
     20c:	00 00 00 06 	l.j 224 <main+0x30>
     210:	1c 05 08 00 	*inconnu*
     214:	05 02 00 00 	l.jal 4080214 <_end+0x3ffb3e8>
     218:	00 00 06 18 	l.j 1a78 <printf_>
     21c:	05 11 00 05 	l.jal 4440230 <_end+0x43bb404>
     220:	02 00 00 00 	l.j f8000220 <_end+0xf7f7b3f4>
     224:	00 01 05 1e 	l.j 4169c <frameBuffer+0x3c874>
     228:	00 05 02 00 	l.j 140a28 <_end+0xbbbfc>
     22c:	00 00 00 16 	l.j 284 <main+0x90>
     230:	05 0b 00 05 	l.jal 42c0244 <_end+0x423b418>
     234:	02 00 00 00 	l.j f8000234 <_end+0xf7f7b408>
     238:	00 06 18 05 	l.j 18624c <_end+0x101420>
     23c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     240:	00 00 00 00 	l.j 240 <main+0x4c>
     244:	06 01 05 0b 	l.jal f8041670 <_end+0xf7fbc844>
     248:	00 05 02 00 	l.j 140a48 <_end+0xbbc1c>
     24c:	00 00 00 06 	l.j 264 <main+0x70>
     250:	18 05 08 00 	*inconnu*
     254:	05 02 00 00 	l.jal 4080254 <_end+0x3ffb428>
     258:	00 00 06 01 	l.j 1a5c <_vsnprintf+0x918>
     25c:	05 0b 00 05 	l.jal 42c0270 <_end+0x423b444>
     260:	02 00 00 00 	l.j f8000260 <_end+0xf7f7b434>
     264:	00 06 1a 05 	l.j 186a78 <_end+0x101c4c>
     268:	04 00 05 02 	l.jal 1670 <_vsnprintf+0x52c>
     26c:	00 00 00 00 	l.j 26c <main+0x78>
     270:	01 05 04 00 	l.j 4141270 <_end+0x40bc444>
     274:	05 02 00 00 	l.jal 4080274 <_end+0x3ffb448>
     278:	00 00 01 05 	l.j 68c <perf_cpu_freq+0x48>
     27c:	04 00 05 02 	l.jal 1684 <_vsnprintf+0x540>
     280:	00 00 00 00 	l.j 280 <main+0x8c>
     284:	01 05 04 00 	l.j 4141284 <_end+0x40bc458>
     288:	05 02 00 00 	l.jal 4080288 <_end+0x3ffb45c>
     28c:	00 00 01 05 	l.j 6a0 <perf_cpu_freq+0x5c>
     290:	04 00 05 02 	l.jal 1698 <_vsnprintf+0x554>
     294:	00 00 00 00 	l.j 294 <main+0xa0>
     298:	00 02 04 02 	l.j 812a0 <frameBuffer+0x7c478>
     29c:	06 01 05 04 	l.jal f80416ac <_end+0xf7fbc880>
     2a0:	00 05 02 00 	l.j 140aa0 <_end+0xbbc74>
     2a4:	00 00 00 00 	l.j 2a4 <main+0xb0>
     2a8:	02 04 00 01 	l.j f81002ac <_end+0xf807b480>
     2ac:	05 04 00 05 	l.jal 41002c0 <_end+0x407b494>
     2b0:	02 00 00 00 	l.j f80002b0 <_end+0xf7f7b484>
     2b4:	00 06 01 05 	l.j 1806c8 <_end+0xfb89c>
     2b8:	04 00 05 02 	l.jal 16c0 <_vsnprintf+0x57c>
     2bc:	00 00 00 00 	l.j 2bc <main+0xc8>
     2c0:	00 02 04 01 	l.j 812c4 <frameBuffer+0x7c49c>
     2c4:	01 05 04 00 	l.j 41412c4 <_end+0x40bc498>
     2c8:	05 02 00 00 	l.jal 40802c8 <_end+0x3ffb49c>
     2cc:	00 00 00 02 	l.j 2d4 <main+0xe0>
     2d0:	04 02 01 05 	l.jal 806e4 <frameBuffer+0x7b8bc>
     2d4:	04 00 05 02 	l.jal 16dc <_vsnprintf+0x598>
     2d8:	00 00 00 00 	l.j 2d8 <main+0xe4>
     2dc:	01 05 04 00 	l.j 41412dc <_end+0x40bc4b0>
     2e0:	05 02 00 00 	l.jal 40802e0 <_end+0x3ffb4b4>
     2e4:	00 00 01 05 	l.j 6f8 <perf_cpu_freq+0xb4>
     2e8:	04 00 05 02 	l.jal 16f0 <_vsnprintf+0x5ac>
     2ec:	00 00 00 00 	l.j 2ec <main+0xf8>
     2f0:	00 02 04 03 	l.j 812fc <frameBuffer+0x7c4d4>
     2f4:	01 05 04 00 	l.j 41412f4 <_end+0x40bc4c8>
     2f8:	05 02 00 00 	l.jal 40802f8 <_end+0x3ffb4cc>
     2fc:	00 00 01 05 	l.j 710 <perf_init+0x14>
     300:	04 00 05 02 	l.jal 1708 <_vsnprintf+0x5c4>
     304:	00 00 00 00 	l.j 304 <main+0x110>
     308:	00 02 04 05 	l.j 8131c <frameBuffer+0x7c4f4>
     30c:	01 05 04 00 	l.j 414130c <_end+0x40bc4e0>
     310:	05 02 00 00 	l.jal 4080310 <_end+0x3ffb4e4>
     314:	00 00 00 02 	l.j 31c <main+0x128>
     318:	04 03 06 01 	l.jal c1b1c <_end+0x3ccf0>
     31c:	05 04 00 05 	l.jal 4100330 <_end+0x407b504>
     320:	02 00 00 00 	l.j f8000320 <_end+0xf7f7b4f4>
     324:	00 00 02 04 	l.j b34 <_ntoa_format+0x7c>
     328:	09 06 01 05 	l.adrp r8,c020a000 <_end+0xc01851d4>
     32c:	04 00 05 02 	l.jal 1734 <_vsnprintf+0x5f0>
     330:	00 00 00 00 	l.j 330 <main+0x13c>
     334:	01 05 04 00 	l.j 4141334 <_end+0x40bc508>
     338:	05 02 00 00 	l.jal 4080338 <_end+0x3ffb50c>
     33c:	00 00 00 02 	l.j 344 <main+0x150>
     340:	04 0a 01 05 	l.jal 280754 <_end+0x1fb928>
     344:	04 00 05 02 	l.jal 174c <_vsnprintf+0x608>
     348:	00 00 00 00 	l.j 348 <main+0x154>
     34c:	00 02 04 0b 	l.j 81378 <frameBuffer+0x7c550>
     350:	01 05 04 00 	l.j 4141350 <_end+0x40bc524>
     354:	05 02 00 00 	l.jal 4080354 <_end+0x3ffb528>
     358:	00 00 01 05 	l.j 76c <perf_cycles_to_time+0x4c>
     35c:	04 00 05 02 	l.jal 1764 <_vsnprintf+0x620>
     360:	00 00 00 00 	l.j 360 <main+0x16c>
     364:	01 05 04 00 	l.j 4141364 <_end+0x40bc538>
     368:	05 02 00 00 	l.jal 4080368 <_end+0x3ffb53c>
     36c:	00 00 00 02 	l.j 374 <main+0x180>
     370:	04 0c 01 05 	l.jal 300784 <_end+0x27b958>
     374:	04 00 05 02 	l.jal 177c <_vsnprintf+0x638>
     378:	00 00 00 00 	l.j 378 <main+0x184>
     37c:	01 05 04 00 	l.j 414137c <_end+0x40bc550>
     380:	05 02 00 00 	l.jal 4080380 <_end+0x3ffb554>
     384:	00 00 00 02 	l.j 38c <main+0x198>
     388:	04 0e 01 05 	l.jal 38079c <_end+0x2fb970>
     38c:	04 00 05 02 	l.jal 1794 <_vsnprintf+0x650>
     390:	00 00 00 00 	l.j 390 <main+0x19c>
     394:	00 02 04 0c 	l.j 813c4 <frameBuffer+0x7c59c>
     398:	06 01 05 04 	l.jal f80417a8 <_end+0xf7fbc97c>
     39c:	00 05 02 00 	l.j 140b9c <_end+0xbbd70>
     3a0:	00 00 00 00 	l.j 3a0 <main+0x1ac>
     3a4:	02 04 12 06 	l.j f8104bbc <_end+0xf807fd90>
     3a8:	01 05 04 00 	l.j 41413a8 <_end+0x40bc57c>
     3ac:	05 02 00 00 	l.jal 40803ac <_end+0x3ffb580>
     3b0:	00 00 01 05 	l.j 7c4 <perf_cycles_to_time+0xa4>
     3b4:	04 00 05 02 	l.jal 17bc <_vsnprintf+0x678>
     3b8:	00 00 00 00 	l.j 3b8 <main+0x1c4>
     3bc:	01 05 04 00 	l.j 41413bc <_end+0x40bc590>
     3c0:	05 02 00 00 	l.jal 40803c0 <_end+0x3ffb594>
     3c4:	00 00 01 05 	l.j 7d8 <perf_cycles_to_time+0xb8>
     3c8:	04 00 05 02 	l.jal 17d0 <_vsnprintf+0x68c>
     3cc:	00 00 00 00 	l.j 3cc <main+0x1d8>
     3d0:	00 02 04 00 	l.j 813d0 <frameBuffer+0x7c5a8>
     3d4:	18 05 04 00 	*inconnu*
     3d8:	05 02 00 00 	l.jal 40803d8 <_end+0x3ffb5ac>
     3dc:	00 00 00 02 	l.j 3e4 <main+0x1f0>
     3e0:	04 12 06 16 	l.jal 481c38 <_end+0x3fce0c>
     3e4:	05 04 00 05 	l.jal 41003f8 <_end+0x407b5cc>
     3e8:	02 00 00 00 	l.j f80003e8 <_end+0xf7f7b5bc>
     3ec:	00 00 02 04 	l.j bfc <_ntoa_format+0x144>
     3f0:	00 bb 05 06 	l.j 2ec1808 <_end+0x2e3c9dc>
     3f4:	00 05 02 00 	l.j 140bf4 <_end+0xbbdc8>
     3f8:	00 00 00 00 	l.j 3f8 <main+0x204>
     3fc:	02 04 12 03 	l.j f8104c08 <_end+0xf807fddc>
     400:	dc 7e 01 05 	l.sh 6405(r30),r0
     404:	04 00 05 02 	l.jal 180c <_vsnprintf+0x6c8>
     408:	00 00 00 00 	l.j 408 <main+0x214>
     40c:	00 02 04 00 	l.j 8140c <frameBuffer+0x7c5e4>
     410:	06 a4 05 03 	l.jal fa90181c <_end+0xfa87c9f0>
     414:	00 05 02 00 	l.j 140c14 <_end+0xbbde8>
     418:	00 00 00 18 	l.j 478 <main+0x284>
     41c:	05 03 00 05 	l.jal 40c0430 <_end+0x403b604>
     420:	02 00 00 00 	l.j f8000420 <_end+0xf7f7b5f4>
     424:	00 2d 05 03 	l.j b41830 <_end+0xabca04>
     428:	00 05 02 00 	l.j 140c28 <_end+0xbbdfc>
     42c:	00 00 00 06 	l.j 444 <main+0x250>
     430:	01 05 06 00 	l.j 4141c30 <_end+0x40bce04>
     434:	05 02 00 00 	l.jal 4080434 <_end+0x3ffb608>
     438:	00 00 1b 05 	l.j 704c <frameBuffer+0x2224>
     43c:	01 00 05 02 	l.j 4001844 <_end+0x3f7ca18>
     440:	00 00 00 00 	l.j 440 <main+0x24c>
     444:	06 03 92 7f 	l.jal f80e4e40 <_end+0xf8060014>
     448:	01 05 07 00 	l.j 4142048 <_end+0x40bd21c>
     44c:	05 02 00 00 	l.jal 408044c <_end+0x3ffb620>
     450:	00 00 06 01 	l.j 1c54 <memcpy+0xc8>
     454:	05 0a 00 05 	l.jal 4280468 <_end+0x41fb63c>
     458:	02 00 00 00 	l.j f8000458 <_end+0xf7f7b62c>
     45c:	00 06 6a 05 	l.j 19ac70 <_end+0x115e44>
     460:	03 00 05 02 	l.j fc001868 <_end+0xfbf7ca3c>
     464:	00 00 00 00 	l.j 464 <main+0x270>
     468:	18 05 03 00 	*inconnu*
     46c:	05 02 00 00 	l.jal 408046c <_end+0x3ffb640>
     470:	00 00 2d 05 	l.j b884 <frameBuffer+0x6a5c>
     474:	03 00 05 02 	l.j fc00187c <_end+0xfbf7ca50>
     478:	00 00 00 00 	l.j 478 <main+0x284>
     47c:	06 01 05 06 	l.jal f8041894 <_end+0xf7fbca68>
     480:	00 05 02 00 	l.j 140c80 <_end+0xbbe54>
     484:	00 00 00 06 	l.j 49c <main+0x2a8>
     488:	18 05 05 00 	*inconnu*
     48c:	05 02 00 00 	l.jal 408048c <_end+0x3ffb660>
     490:	00 00 06 01 	l.j 1c94 <memcpy+0x108>
     494:	05 07 00 05 	l.jal 41c04a8 <_end+0x413b67c>
     498:	02 00 00 00 	l.j f8000498 <_end+0xf7f7b66c>
     49c:	00 06 19 05 	l.j 1868b0 <_end+0x101a84>
     4a0:	03 00 05 02 	l.j fc0018a8 <_end+0xfbf7ca7c>
     4a4:	00 00 00 00 	l.j 4a4 <main+0x2b0>
     4a8:	06 18 05 01 	l.jal f86018ac <_end+0xf857ca80>
     4ac:	00 05 02 00 	l.j 140cac <_end+0xbbe80>
     4b0:	00 00 00 06 	l.j 4c8 <main+0x2d4>
     4b4:	03 a5 7f 01 	l.j fe9600b8 <_end+0xfe8db28c>
     4b8:	05 04 00 05 	l.jal 41004cc <_end+0x407b6a0>
     4bc:	02 00 00 00 	l.j f80004bc <_end+0xf7f7b690>
     4c0:	00 01 05 04 	l.j 418d0 <frameBuffer+0x3caa8>
     4c4:	00 05 02 00 	l.j 140cc4 <_end+0xbbe98>
     4c8:	00 00 00 01 	l.j 4cc <main+0x2d8>
     4cc:	05 04 00 05 	l.jal 41004e0 <_end+0x407b6b4>
     4d0:	02 00 00 00 	l.j f80004d0 <_end+0xf7f7b6a4>
     4d4:	00 01 05 04 	l.j 418e4 <frameBuffer+0x3cabc>
     4d8:	00 05 02 00 	l.j 140cd8 <_end+0xbbeac>
     4dc:	00 00 00 00 	l.j 4dc <main+0x2e8>
     4e0:	02 04 01 01 	l.j f81008e4 <_end+0xf807bab8>
     4e4:	05 04 00 05 	l.jal 41004f8 <_end+0x407b6cc>
     4e8:	02 00 00 00 	l.j f80004e8 <_end+0xf7f7b6bc>
     4ec:	00 00 02 04 	l.j cfc <_ntoa_format+0x244>
     4f0:	04 06 01 05 	l.jal 180904 <_end+0xfbad8>
     4f4:	04 00 05 02 	l.jal 18fc <_vsnprintf+0x7b8>
     4f8:	00 00 00 00 	l.j 4f8 <assert_die+0xc>
     4fc:	00 02 04 0a 	l.j 81524 <frameBuffer+0x7c6fc>
     500:	01 05 04 00 	l.j 4141500 <_end+0x40bc6d4>
     504:	05 02 00 00 	l.jal 4080504 <_end+0x3ffb6d8>
     508:	00 00 00 02 	l.j 510 <bus_error_handler+0x8>
     50c:	04 15 06 01 	l.jal 541d10 <_end+0x4bcee4>
     510:	05 04 00 05 	l.jal 4100524 <_end+0x407b6f8>
     514:	02 00 00 00 	l.j f8000514 <_end+0xf7f7b6e8>
     518:	00 00 02 04 	l.j d28 <_ntoa_format+0x270>
     51c:	16 06 01 05 	*inconnu*
     520:	04 00 05 02 	l.jal 1928 <_vsnprintf+0x7e4>
     524:	00 00 00 00 	l.j 524 <instruction_page_fault_handler+0x4>
     528:	00 02 04 00 	l.j 81528 <frameBuffer+0x7c700>
     52c:	18 05 07 00 	*inconnu*
     530:	05 02 00 00 	l.jal 4080530 <_end+0x3ffb704>
     534:	00 00 00 02 	l.j 53c <allignment_exception_handler+0x4>
     538:	04 16 06 16 	l.jal 581d90 <_end+0x4fcf64>
     53c:	05 04 00 05 	l.jal 4100550 <_end+0x407b724>
     540:	02 00 00 00 	l.j f8000540 <_end+0xf7f7b714>
     544:	00 00 02 04 	l.j d54 <_ntoa_format+0x29c>
     548:	00 18 05 04 	l.j 601958 <_end+0x57cb2c>
     54c:	00 05 02 00 	l.j 140d4c <_end+0xbbf20>
     550:	00 00 00 06 	l.j 568 <dtlb_miss_handler+0x8>
     554:	01 05 07 00 	l.j 4142154 <_end+0x40bd328>
     558:	05 02 00 00 	l.jal 4080558 <_end+0x3ffb72c>
     55c:	00 00 06 21 	l.j 1de0 <memset+0x14>
     560:	05 08 00 05 	l.jal 4200574 <_end+0x417b748>
     564:	02 00 00 00 	l.j f8000564 <_end+0xf7f7b738>
     568:	00 06 01 05 	l.j 18097c <_end+0xfbb50>
     56c:	0b 00 05 02 	l.adrp r24,a04000 <_end+0x97f1d4>
     570:	00 00 00 00 	l.j 570 <itlb_miss_handler+0x4>
     574:	00 02 04 01 	l.j 81578 <frameBuffer+0x7c750>
     578:	01 05 14 00 	l.j 4145578 <_end+0x40c074c>
     57c:	05 02 00 00 	l.jal 408057c <_end+0x3ffb750>
     580:	00 00 00 02 	l.j 588 <system_call_handler+0x4>
     584:	04 00 06 03 	l.jal 1d90 <memcpy+0x204>
     588:	b1 7f 01 05 	l.muli r11,r31,261
     58c:	04 00 05 02 	l.jal 1994 <_vsnprintf+0x850>
     590:	00 00 00 00 	l.j 590 <trap_handler>
     594:	06 01 05 07 	l.jal f80419b0 <_end+0xf7fbcb84>
     598:	00 05 02 00 	l.j 140d98 <_end+0xbbf6c>
     59c:	00 00 00 06 	l.j 5b4 <trap_handler+0x24>
     5a0:	18 05 06 00 	*inconnu*
     5a4:	05 02 00 00 	l.jal 40805a4 <_end+0x3ffb778>
     5a8:	00 00 06 01 	l.j 1dac <memcpy+0x220>
     5ac:	05 09 00 05 	l.jal 42405c0 <_end+0x41bb794>
     5b0:	02 00 00 00 	l.j f80005b0 <_end+0xf7f7b784>
     5b4:	00 00 02 04 	l.j dc4 <_ntoa_format+0x30c>
     5b8:	03 19 05 04 	l.j fc6419c8 <_end+0xfc5bcb9c>
     5bc:	00 05 02 00 	l.j 140dbc <_end+0xbbf90>
     5c0:	00 00 00 00 	l.j 5c0 <trap_handler+0x30>
     5c4:	02 04 15 06 	l.j f81059dc <_end+0xf8080bb0>
     5c8:	01 05 04 00 	l.j 41415c8 <_end+0x40bc79c>
     5cc:	05 02 00 00 	l.jal 40805cc <_end+0x3ffb7a0>
     5d0:	00 00 00 02 	l.j 5d8 <trap_handler+0x48>
     5d4:	04 16 06 01 	l.jal 581dd8 <_end+0x4fcfac>
     5d8:	05 04 00 05 	l.jal 41005ec <_end+0x407b7c0>
     5dc:	02 00 00 00 	l.j f80005dc <_end+0xf7f7b7b0>
     5e0:	00 00 02 04 	l.j df0 <_ntoa_format+0x338>
     5e4:	00 19 05 07 	l.j 641a00 <_end+0x5bcbd4>
     5e8:	00 05 02 00 	l.j 140de8 <_end+0xbbfbc>
     5ec:	00 00 00 00 	l.j 5ec <trap_handler+0x5c>
     5f0:	02 04 16 06 	l.j f8105e08 <_end+0xf8080fdc>
     5f4:	15 05 04 00 	*inconnu*
     5f8:	05 02 00 00 	l.jal 40805f8 <_end+0x3ffb7cc>
     5fc:	00 00 00 02 	l.j 604 <trap_handler+0x74>
     600:	04 00 19 05 	l.jal 6a14 <frameBuffer+0x1bec>
     604:	04 00 05 02 	l.jal 1a0c <_vsnprintf+0x8c8>
     608:	00 00 00 00 	l.j 608 <trap_handler+0x78>
     60c:	06 01 05 07 	l.jal f8041a28 <_end+0xf7fbcbfc>
     610:	00 05 02 00 	l.j 140e10 <_end+0xbbfe4>
     614:	00 00 00 06 	l.j 62c <trap_handler+0x9c>
     618:	20 05 08 00 	*inconnu*
     61c:	05 02 00 00 	l.jal 408061c <_end+0x3ffb7f0>
     620:	00 00 06 2a 	l.j 1ec8 <uart_puts+0x10>
     624:	05 04 00 05 	l.jal 4100638 <_end+0x407b80c>
     628:	02 00 00 00 	l.j f8000628 <_end+0xf7f7b7fc>
     62c:	00 03 6d 01 	l.j dba30 <_end+0x56c04>
     630:	05 0b 00 05 	l.jal 42c0644 <_end+0x423b818>
     634:	02 00 00 00 	l.j f8000634 <_end+0xf7f7b808>
     638:	00 06 18 05 	l.j 18664c <_end+0x101820>
     63c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     640:	00 00 00 00 	l.j 640 <break_point_handler+0x8>
     644:	06 29 05 04 	l.jal f8a41a54 <_end+0xf89bcc28>
     648:	00 05 02 00 	l.j 140e48 <_end+0xbc01c>
     64c:	00 00 00 00 	l.j 64c <perf_cpu_freq+0x8>
     650:	02 04 13 06 	l.j f8105268 <_end+0xf808043c>
     654:	12 05 08 00 	l.bf f8142654 <_end+0xf80bd828>
     658:	05 02 00 00 	l.jal 4080658 <_end+0x3ffb82c>
     65c:	00 00 00 02 	l.j 664 <perf_cpu_freq+0x20>
     660:	04 00 1c 05 	l.jal 7674 <frameBuffer+0x284c>
     664:	04 00 05 02 	l.jal 1a6c <_vsnprintf+0x928>
     668:	00 00 00 00 	l.j 668 <perf_cpu_freq+0x24>
     66c:	01 05 04 00 	l.j 414166c <_end+0x40bc840>
     670:	05 02 00 00 	l.jal 4080670 <_end+0x3ffb844>
     674:	00 00 01 05 	l.j a88 <getchar+0x4>
     678:	04 00 05 02 	l.jal 1a80 <printf_+0x8>
     67c:	00 00 00 00 	l.j 67c <perf_cpu_freq+0x38>
     680:	01 05 04 00 	l.j 4141680 <_end+0x40bc854>
     684:	05 02 00 00 	l.jal 4080684 <_end+0x3ffb858>
     688:	00 00 01 05 	l.j a9c <_out_buffer+0x10>
     68c:	04 00 05 02 	l.jal 1a94 <printf_+0x1c>
     690:	00 00 00 00 	l.j 690 <perf_cpu_freq+0x4c>
     694:	01 05 04 00 	l.j 4141694 <_end+0x40bc868>
     698:	05 02 00 00 	l.jal 4080698 <_end+0x3ffb86c>
     69c:	00 00 00 02 	l.j 6a4 <perf_cpu_freq+0x60>
     6a0:	04 01 01 05 	l.jal 40ab4 <frameBuffer+0x3bc8c>
     6a4:	04 00 05 02 	l.jal 1aac <sprintf_+0x4>
     6a8:	00 00 00 00 	l.j 6a8 <perf_cpu_freq+0x64>
     6ac:	00 02 04 02 	l.j 816b4 <frameBuffer+0x7c88c>
     6b0:	01 05 04 00 	l.j 41416b0 <_end+0x40bc884>
     6b4:	05 02 00 00 	l.jal 40806b4 <_end+0x3ffb888>
     6b8:	00 00 01 05 	l.j acc <_ntoa_format+0x14>
     6bc:	04 00 05 02 	l.jal 1ac4 <sprintf_+0x1c>
     6c0:	00 00 00 00 	l.j 6c0 <perf_cpu_freq+0x7c>
     6c4:	01 05 04 00 	l.j 41416c4 <_end+0x40bc898>
     6c8:	05 02 00 00 	l.jal 40806c8 <_end+0x3ffb89c>
     6cc:	00 00 00 02 	l.j 6d4 <perf_cpu_freq+0x90>
     6d0:	04 03 01 05 	l.jal c0ae4 <_end+0x3bcb8>
     6d4:	04 00 05 02 	l.jal 1adc <snprintf_+0x4>
     6d8:	00 00 00 00 	l.j 6d8 <perf_cpu_freq+0x94>
     6dc:	01 05 04 00 	l.j 41416dc <_end+0x40bc8b0>
     6e0:	05 02 00 00 	l.jal 40806e0 <_end+0x3ffb8b4>
     6e4:	00 00 00 02 	l.j 6ec <perf_cpu_freq+0xa8>
     6e8:	04 05 01 05 	l.jal 140afc <_end+0xbbcd0>
     6ec:	04 00 05 02 	l.jal 1af4 <snprintf_+0x1c>
     6f0:	00 00 00 00 	l.j 6f0 <perf_cpu_freq+0xac>
     6f4:	00 02 04 03 	l.j 81700 <frameBuffer+0x7c8d8>
     6f8:	06 01 05 04 	l.jal f8041b08 <_end+0xf7fbccdc>
     6fc:	00 05 02 00 	l.j 140efc <_end+0xbc0d0>
     700:	00 00 00 00 	l.j 700 <perf_init+0x4>
     704:	02 04 09 06 	l.j f8102b1c <_end+0xf807dcf0>
     708:	01 05 04 00 	l.j 4141708 <_end+0x40bc8dc>
     70c:	05 02 00 00 	l.jal 408070c <_end+0x3ffb8e0>
     710:	00 00 01 05 	l.j b24 <_ntoa_format+0x6c>
     714:	04 00 05 02 	l.jal 1b1c <vprintf_+0x14>
     718:	00 00 00 00 	l.j 718 <perf_init+0x1c>
     71c:	00 02 04 0a 	l.j 81744 <frameBuffer+0x7c91c>
     720:	01 05 04 00 	l.j 4141720 <_end+0x40bc8f4>
     724:	05 02 00 00 	l.jal 4080724 <_end+0x3ffb8f8>
     728:	00 00 00 02 	l.j 730 <perf_cycles_to_time+0x10>
     72c:	04 0b 01 05 	l.jal 2c0b40 <_end+0x23bd14>
     730:	04 00 05 02 	l.jal 1b38 <vsnprintf_>
     734:	00 00 00 00 	l.j 734 <perf_cycles_to_time+0x14>
     738:	01 05 04 00 	l.j 4141738 <_end+0x40bc90c>
     73c:	05 02 00 00 	l.jal 408073c <_end+0x3ffb910>
     740:	00 00 01 05 	l.j b54 <_ntoa_format+0x9c>
     744:	04 00 05 02 	l.jal 1b4c <vsnprintf_+0x14>
     748:	00 00 00 00 	l.j 748 <perf_cycles_to_time+0x28>
     74c:	00 02 04 0c 	l.j 8177c <frameBuffer+0x7c954>
     750:	01 05 04 00 	l.j 4141750 <_end+0x40bc924>
     754:	05 02 00 00 	l.jal 4080754 <_end+0x3ffb928>
     758:	00 00 01 05 	l.j b6c <_ntoa_format+0xb4>
     75c:	04 00 05 02 	l.jal 1b64 <fctprintf+0x10>
     760:	00 00 00 00 	l.j 760 <perf_cycles_to_time+0x40>
     764:	00 02 04 0e 	l.j 8179c <frameBuffer+0x7c974>
     768:	01 05 04 00 	l.j 4141768 <_end+0x40bc93c>
     76c:	05 02 00 00 	l.jal 408076c <_end+0x3ffb940>
     770:	00 00 00 02 	l.j 778 <perf_cycles_to_time+0x58>
     774:	04 0c 06 01 	l.jal 301f78 <_end+0x27d14c>
     778:	05 04 00 05 	l.jal 410078c <_end+0x407b960>
     77c:	02 00 00 00 	l.j f800077c <_end+0xf7f7b950>
     780:	00 00 02 04 	l.j f90 <_ntoa_long_long+0x68>
     784:	12 06 01 05 	l.bf f8180b98 <_end+0xf80fbd6c>
     788:	04 00 05 02 	l.jal 1b90 <memcpy+0x4>
     78c:	00 00 00 00 	l.j 78c <perf_cycles_to_time+0x6c>
     790:	01 05 04 00 	l.j 4141790 <_end+0x40bc964>
     794:	05 02 00 00 	l.jal 4080794 <_end+0x3ffb968>
     798:	00 00 01 05 	l.j bac <_ntoa_format+0xf4>
     79c:	04 00 05 02 	l.jal 1ba4 <memcpy+0x18>
     7a0:	00 00 00 00 	l.j 7a0 <perf_cycles_to_time+0x80>
     7a4:	00 02 04 00 	l.j 817a4 <frameBuffer+0x7c97c>
     7a8:	8d 05 05 00 	l.lbz r8,1280(r5)
     7ac:	05 02 00 00 	l.jal 40807ac <_end+0x3ffb980>
     7b0:	00 00 06 18 	l.j 2010 <__udivdi3+0x68>
     7b4:	05 0d 00 05 	l.jal 43407c8 <_end+0x42bb99c>
     7b8:	02 00 00 00 	l.j f80007b8 <_end+0xf7f7b98c>
     7bc:	00 16 05 07 	l.j 581bd8 <_end+0x4fcdac>
     7c0:	00 05 02 00 	l.j 140fc0 <_end+0xbc194>
     7c4:	00 00 00 06 	l.j 7dc <perf_cycles_to_time+0xbc>
     7c8:	14 05 05 00 	*inconnu*
     7cc:	05 02 00 00 	l.jal 40807cc <_end+0x3ffb9a0>
     7d0:	00 00 06 18 	l.j 2030 <__udivdi3+0x88>
     7d4:	05 0d 00 05 	l.jal 43407e8 <_end+0x42bb9bc>
     7d8:	02 00 00 00 	l.j f80007d8 <_end+0xf7f7b9ac>
     7dc:	00 16 05 07 	l.j 581bf8 <_end+0x4fcdcc>
     7e0:	00 05 02 00 	l.j 140fe0 <_end+0xbc1b4>
     7e4:	00 00 00 00 	l.j 7e4 <perf_cycles_to_time+0xc4>
     7e8:	02 04 03 03 	l.j f81013f4 <_end+0xf807c5c8>
     7ec:	d7 7e 01 05 	l.sw -9979(r30),r0
     7f0:	04 00 05 02 	l.jal 1bf8 <memcpy+0x6c>
     7f4:	00 00 00 00 	l.j 7f4 <perf_cycles_to_time+0xd4>
     7f8:	00 02 04 00 	l.j 817f8 <frameBuffer+0x7c9d0>
     7fc:	06 2f 05 04 	l.jal f8bc1c0c <_end+0xf8b3cde0>
     800:	00 05 02 00 	l.j 141000 <_end+0xbc1d4>
     804:	00 00 00 01 	l.j 808 <perf_cycles_to_time+0xe8>
     808:	05 04 00 05 	l.jal 410081c <_end+0x407b9f0>
     80c:	02 00 00 00 	l.j f800080c <_end+0xf7f7b9e0>
     810:	00 01 05 04 	l.j 41c20 <frameBuffer+0x3cdf8>
     814:	00 05 02 00 	l.j 141014 <_end+0xbc1e8>
     818:	00 00 00 01 	l.j 81c <perf_cycles_to_time+0xfc>
     81c:	05 04 00 05 	l.jal 4100830 <_end+0x407ba04>
     820:	02 00 00 00 	l.j f8000820 <_end+0xf7f7b9f4>
     824:	00 00 02 04 	l.j 1034 <_ntoa_long_long+0x10c>
     828:	01 01 05 04 	l.j 4041c38 <_end+0x3fbce0c>
     82c:	00 05 02 00 	l.j 14102c <_end+0xbc200>
     830:	00 00 00 00 	l.j 830 <perf_cycles_to_time+0x110>
     834:	02 04 04 06 	l.j f810184c <_end+0xf807ca20>
     838:	01 05 04 00 	l.j 4141838 <_end+0x40bca0c>
     83c:	05 02 00 00 	l.jal 408083c <_end+0x3ffba10>
     840:	00 00 00 02 	l.j 848 <perf_cycles_to_time+0x128>
     844:	04 0a 01 05 	l.jal 280c58 <_end+0x1fbe2c>
     848:	04 00 05 02 	l.jal 1c50 <memcpy+0xc4>
     84c:	00 00 00 00 	l.j 84c <perf_cycles_to_time+0x12c>
     850:	00 02 04 03 	l.j 8185c <frameBuffer+0x7ca34>
     854:	58 05 04 00 	*inconnu*
     858:	05 02 00 00 	l.jal 4080858 <_end+0x3ffba2c>
     85c:	00 00 00 02 	l.j 864 <perf_cycles_to_time+0x144>
     860:	04 00 06 35 	l.jal 2134 <__udivdi3+0x18c>
     864:	05 08 00 05 	l.jal 4200878 <_end+0x417ba4c>
     868:	02 00 00 00 	l.j f8000868 <_end+0xf7f7ba3c>
     86c:	00 1a 05 08 	l.j 681c8c <_end+0x5fce60>
     870:	00 05 02 00 	l.j 141070 <_end+0xbc244>
     874:	00 00 00 19 	l.j 8d8 <perf_cycles_to_time+0x1b8>
     878:	05 08 00 05 	l.jal 420088c <_end+0x417ba60>
     87c:	02 00 00 00 	l.j f800087c <_end+0xf7f7ba50>
     880:	00 06 01 05 	l.j 180c94 <_end+0xfbe68>
     884:	1e 00 05 02 	*inconnu*
     888:	00 00 00 00 	l.j 888 <perf_cycles_to_time+0x168>
     88c:	01 05 11 00 	l.j 4144c8c <_end+0x40bfe60>
     890:	05 02 00 00 	l.jal 4080890 <_end+0x3ffba64>
     894:	00 00 1d 05 	l.j 7ca8 <frameBuffer+0x2e80>
     898:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     89c:	00 00 00 00 	l.j 89c <perf_cycles_to_time+0x17c>
     8a0:	11 05 0b 00 	l.bf 41434a0 <_end+0x40be674>
     8a4:	05 02 00 00 	l.jal 40808a4 <_end+0x3ffba78>
     8a8:	00 00 06 18 	l.j 2108 <__udivdi3+0x160>
     8ac:	05 08 00 05 	l.jal 42008c0 <_end+0x417ba94>
     8b0:	02 00 00 00 	l.j f80008b0 <_end+0xf7f7ba84>
     8b4:	00 06 18 05 	l.j 1868c8 <_end+0x101a9c>
     8b8:	0b 00 05 02 	l.adrp r24,a04000 <_end+0x97f1d4>
     8bc:	00 00 00 00 	l.j 8bc <perf_cycles_to_time+0x19c>
     8c0:	1b 05 08 00 	*inconnu*
     8c4:	05 02 00 00 	l.jal 40808c4 <_end+0x3ffba98>
     8c8:	00 00 14 05 	l.j 58dc <frameBuffer+0xab4>
     8cc:	11 00 05 02 	l.bf 4001cd4 <_end+0x3f7cea8>
     8d0:	00 00 00 00 	l.j 8d0 <perf_cycles_to_time+0x1b0>
     8d4:	01 05 1e 00 	l.j 41480d4 <_end+0x40c32a8>
     8d8:	05 02 00 00 	l.jal 40808d8 <_end+0x3ffbaac>
     8dc:	00 00 1a 05 	l.j 70f0 <frameBuffer+0x22c8>
     8e0:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     8e4:	00 00 00 00 	l.j 8e4 <perf_cycles_to_time+0x1c4>
     8e8:	14 05 0b 00 	*inconnu*
     8ec:	05 02 00 00 	l.jal 40808ec <_end+0x3ffbac0>
     8f0:	00 00 00 02 	l.j 8f8 <perf_print_cycles+0xc>
     8f4:	04 02 1a 05 	l.jal 87108 <_end+0x22dc>
     8f8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     8fc:	00 00 00 00 	l.j 8fc <perf_print_cycles+0x10>
     900:	00 02 04 00 	l.j 81900 <frameBuffer+0x7cad8>
     904:	01 05 08 00 	l.j 4142904 <_end+0x40bdad8>
     908:	05 02 00 00 	l.jal 4080908 <_end+0x3ffbadc>
     90c:	00 00 00 02 	l.j 914 <perf_print_cycles+0x28>
     910:	04 02 01 05 	l.jal 80d24 <frameBuffer+0x7befc>
     914:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     918:	00 00 00 00 	l.j 918 <perf_print_cycles+0x2c>
     91c:	00 02 04 00 	l.j 8191c <frameBuffer+0x7caf4>
     920:	06 13 05 08 	l.jal f84c1d40 <_end+0xf843cf14>
     924:	00 05 02 00 	l.j 141124 <_end+0xbc2f8>
     928:	00 00 00 18 	l.j 988 <perf_print_time+0x44>
     92c:	05 08 00 05 	l.jal 4200940 <_end+0x417bb14>
     930:	02 00 00 00 	l.j f8000930 <_end+0xf7f7bb04>
     934:	00 18 05 08 	l.j 601d54 <_end+0x57cf28>
     938:	00 05 02 00 	l.j 141138 <_end+0xbc30c>
     93c:	00 00 00 19 	l.j 9a0 <perf_print_time+0x5c>
     940:	05 08 00 05 	l.jal 4200954 <_end+0x417bb28>
     944:	02 00 00 00 	l.j f8000944 <_end+0xf7f7bb18>
     948:	00 01 05 08 	l.j 41d68 <frameBuffer+0x3cf40>
     94c:	00 05 02 00 	l.j 14114c <_end+0xbc320>
     950:	00 00 00 01 	l.j 954 <perf_print_time+0x10>
     954:	05 08 00 05 	l.jal 4200968 <_end+0x417bb3c>
     958:	02 00 00 00 	l.j f8000958 <_end+0xf7f7bb2c>
     95c:	00 01 05 08 	l.j 41d7c <frameBuffer+0x3cf54>
     960:	00 05 02 00 	l.j 141160 <_end+0xbc334>
     964:	00 00 00 01 	l.j 968 <perf_print_time+0x24>
     968:	05 08 00 05 	l.jal 420097c <_end+0x417bb50>
     96c:	02 00 00 00 	l.j f800096c <_end+0xf7f7bb40>
     970:	00 01 05 08 	l.j 41d90 <frameBuffer+0x3cf68>
     974:	00 05 02 00 	l.j 141174 <_end+0xbc348>
     978:	00 00 00 00 	l.j 978 <perf_print_time+0x34>
     97c:	02 04 01 01 	l.j f8100d80 <_end+0xf807bf54>
     980:	05 08 00 05 	l.jal 4200994 <_end+0x417bb68>
     984:	02 00 00 00 	l.j f8000984 <_end+0xf7f7bb58>
     988:	00 00 02 04 	l.j 1198 <_vsnprintf+0x54>
     98c:	02 01 05 08 	l.j f8041dac <_end+0xf7fbcf80>
     990:	00 05 02 00 	l.j 141190 <_end+0xbc364>
     994:	00 00 00 01 	l.j 998 <perf_print_time+0x54>
     998:	05 08 00 05 	l.jal 42009ac <_end+0x417bb80>
     99c:	02 00 00 00 	l.j f800099c <_end+0xf7f7bb70>
     9a0:	00 01 05 08 	l.j 41dc0 <frameBuffer+0x3cf98>
     9a4:	00 05 02 00 	l.j 1411a4 <_end+0xbc378>
     9a8:	00 00 00 00 	l.j 9a8 <perf_print_time+0x64>
     9ac:	02 04 03 01 	l.j f81015b0 <_end+0xf807c784>
     9b0:	05 08 00 05 	l.jal 42009c4 <_end+0x417bb98>
     9b4:	02 00 00 00 	l.j f80009b4 <_end+0xf7f7bb88>
     9b8:	00 01 05 08 	l.j 41dd8 <frameBuffer+0x3cfb0>
     9bc:	00 05 02 00 	l.j 1411bc <_end+0xbc390>
     9c0:	00 00 00 00 	l.j 9c0 <perf_print_time+0x7c>
     9c4:	02 04 05 01 	l.j f8101dc8 <_end+0xf807cf9c>
     9c8:	05 08 00 05 	l.jal 42009dc <_end+0x417bbb0>
     9cc:	02 00 00 00 	l.j f80009cc <_end+0xf7f7bba0>
     9d0:	00 00 02 04 	l.j 11e0 <_vsnprintf+0x9c>
     9d4:	07 01 05 08 	l.jal fc041df4 <_end+0xfbfbcfc8>
     9d8:	00 05 02 00 	l.j 1411d8 <_end+0xbc3ac>
     9dc:	00 00 00 00 	l.j 9dc <platform_init+0x4>
     9e0:	02 04 09 01 	l.j f8102de4 <_end+0xf807dfb8>
     9e4:	05 08 00 05 	l.jal 42009f8 <_end+0x417bbcc>
     9e8:	02 00 00 00 	l.j f80009e8 <_end+0xf7f7bbbc>
     9ec:	00 01 05 08 	l.j 41e0c <frameBuffer+0x3cfe4>
     9f0:	00 05 02 00 	l.j 1411f0 <_end+0xbc3c4>
     9f4:	00 00 00 00 	l.j 9f4 <_putchar+0x14>
     9f8:	02 04 0a 01 	l.j f81031fc <_end+0xf807e3d0>
     9fc:	05 08 00 05 	l.jal 4200a10 <_end+0x417bbe4>
     a00:	02 00 00 00 	l.j f8000a00 <_end+0xf7f7bbd4>
     a04:	00 00 02 04 	l.j 1214 <_vsnprintf+0xd0>
     a08:	0b 01 05 08 	l.adrp r24,20a10000 <_end+0x2098b1d4>
     a0c:	00 05 02 00 	l.j 14120c <_end+0xbc3e0>
     a10:	00 00 00 01 	l.j a14 <_putchar+0x34>
     a14:	05 08 00 05 	l.jal 4200a28 <_end+0x417bbfc>
     a18:	02 00 00 00 	l.j f8000a18 <_end+0xf7f7bbec>
     a1c:	00 01 05 08 	l.j 41e3c <frameBuffer+0x3d014>
     a20:	00 05 02 00 	l.j 141220 <_end+0xbc3f4>
     a24:	00 00 00 00 	l.j a24 <putchar+0xc>
     a28:	02 04 0c 01 	l.j f8103a2c <_end+0xf807ec00>
     a2c:	05 08 00 05 	l.jal 4200a40 <_end+0x417bc14>
     a30:	02 00 00 00 	l.j f8000a30 <_end+0xf7f7bc04>
     a34:	00 01 05 08 	l.j 41e54 <frameBuffer+0x3d02c>
     a38:	00 05 02 00 	l.j 141238 <_end+0xbc40c>
     a3c:	00 00 00 00 	l.j a3c <puts+0x4>
     a40:	02 04 0e 01 	l.j f8104244 <_end+0xf807f418>
     a44:	05 08 00 05 	l.jal 4200a58 <_end+0x417bc2c>
     a48:	02 00 00 00 	l.j f8000a48 <_end+0xf7f7bc1c>
     a4c:	00 00 02 04 	l.j 125c <_vsnprintf+0x118>
     a50:	10 01 05 08 	l.bf 41e70 <frameBuffer+0x3d048>
     a54:	00 05 02 00 	l.j 141254 <_end+0xbc428>
     a58:	00 00 00 00 	l.j a58 <puts+0x20>
     a5c:	02 04 12 01 	l.j f8105260 <_end+0xf8080434>
     a60:	05 08 00 05 	l.jal 4200a74 <_end+0x417bc48>
     a64:	02 00 00 00 	l.j f8000a64 <_end+0xf7f7bc38>
     a68:	00 00 02 04 	l.j 1278 <_vsnprintf+0x134>
     a6c:	00 06 18 05 	l.j 186a80 <_end+0x101c54>
     a70:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     a74:	00 00 00 00 	l.j a74 <puts+0x3c>
     a78:	00 02 04 12 	l.j 81ac0 <frameBuffer+0x7cc98>
     a7c:	16 05 08 00 	*inconnu*
     a80:	05 02 00 00 	l.jal 4080a80 <_end+0x3ffbc54>
     a84:	00 00 06 01 	l.j 2288 <__udivdi3+0x2e0>
     a88:	05 08 00 05 	l.jal 4200a9c <_end+0x417bc70>
     a8c:	02 00 00 00 	l.j f8000a8c <_end+0xf7f7bc60>
     a90:	00 01 05 08 	l.j 41eb0 <frameBuffer+0x3d088>
     a94:	00 05 02 00 	l.j 141294 <_end+0xbc468>
     a98:	00 00 00 01 	l.j a9c <_out_buffer+0x10>
     a9c:	05 08 00 05 	l.jal 4200ab0 <_end+0x417bc84>
     aa0:	02 00 00 00 	l.j f8000aa0 <_end+0xf7f7bc74>
     aa4:	00 00 02 04 	l.j 12b4 <_vsnprintf+0x170>
     aa8:	00 18 05 08 	l.j 601ec8 <_end+0x57d09c>
     aac:	00 05 02 00 	l.j 1412ac <_end+0xbc480>
     ab0:	00 00 00 01 	l.j ab4 <_out_null+0x4>
     ab4:	05 08 00 05 	l.jal 4200ac8 <_end+0x417bc9c>
     ab8:	02 00 00 00 	l.j f8000ab8 <_end+0xf7f7bc8c>
     abc:	00 01 05 08 	l.j 41edc <frameBuffer+0x3d0b4>
     ac0:	00 05 02 00 	l.j 1412c0 <_end+0xbc494>
     ac4:	00 00 00 01 	l.j ac8 <_ntoa_format+0x10>
     ac8:	05 08 00 05 	l.jal 4200adc <_end+0x417bcb0>
     acc:	02 00 00 00 	l.j f8000acc <_end+0xf7f7bca0>
     ad0:	00 01 05 08 	l.j 41ef0 <frameBuffer+0x3d0c8>
     ad4:	00 05 02 00 	l.j 1412d4 <_end+0xbc4a8>
     ad8:	00 00 00 01 	l.j adc <_ntoa_format+0x24>
     adc:	05 08 00 05 	l.jal 4200af0 <_end+0x417bcc4>
     ae0:	02 00 00 00 	l.j f8000ae0 <_end+0xf7f7bcb4>
     ae4:	00 01 05 08 	l.j 41f04 <frameBuffer+0x3d0dc>
     ae8:	00 05 02 00 	l.j 1412e8 <_end+0xbc4bc>
     aec:	00 00 00 01 	l.j af0 <_ntoa_format+0x38>
     af0:	05 08 00 05 	l.jal 4200b04 <_end+0x417bcd8>
     af4:	02 00 00 00 	l.j f8000af4 <_end+0xf7f7bcc8>
     af8:	00 01 05 08 	l.j 41f18 <frameBuffer+0x3d0f0>
     afc:	00 05 02 00 	l.j 1412fc <_end+0xbc4d0>
     b00:	00 00 00 01 	l.j b04 <_ntoa_format+0x4c>
     b04:	05 08 00 05 	l.jal 4200b18 <_end+0x417bcec>
     b08:	02 00 00 00 	l.j f8000b08 <_end+0xf7f7bcdc>
     b0c:	00 01 05 08 	l.j 41f2c <frameBuffer+0x3d104>
     b10:	00 05 02 00 	l.j 141310 <_end+0xbc4e4>
     b14:	00 00 00 01 	l.j b18 <_ntoa_format+0x60>
     b18:	05 08 00 05 	l.jal 4200b2c <_end+0x417bd00>
     b1c:	02 00 00 00 	l.j f8000b1c <_end+0xf7f7bcf0>
     b20:	00 01 05 08 	l.j 41f40 <frameBuffer+0x3d118>
     b24:	00 05 02 00 	l.j 141324 <_end+0xbc4f8>
     b28:	00 00 00 01 	l.j b2c <_ntoa_format+0x74>
     b2c:	05 08 00 05 	l.jal 4200b40 <_end+0x417bd14>
     b30:	02 00 00 00 	l.j f8000b30 <_end+0xf7f7bd04>
     b34:	00 00 02 04 	l.j 1344 <_vsnprintf+0x200>
     b38:	01 01 05 08 	l.j 4041f58 <_end+0x3fbd12c>
     b3c:	00 05 02 00 	l.j 14133c <_end+0xbc510>
     b40:	00 00 00 00 	l.j b40 <_ntoa_format+0x88>
     b44:	02 04 03 01 	l.j f8101748 <_end+0xf807c91c>
     b48:	05 08 00 05 	l.jal 4200b5c <_end+0x417bd30>
     b4c:	02 00 00 00 	l.j f8000b4c <_end+0xf7f7bd20>
     b50:	00 01 05 08 	l.j 41f70 <frameBuffer+0x3d148>
     b54:	00 05 02 00 	l.j 141354 <_end+0xbc528>
     b58:	00 00 00 01 	l.j b5c <_ntoa_format+0xa4>
     b5c:	05 08 00 05 	l.jal 4200b70 <_end+0x417bd44>
     b60:	02 00 00 00 	l.j f8000b60 <_end+0xf7f7bd34>
     b64:	00 00 02 04 	l.j 1374 <_vsnprintf+0x230>
     b68:	00 19 05 08 	l.j 641f88 <_end+0x5bd15c>
     b6c:	00 05 02 00 	l.j 14136c <_end+0xbc540>
     b70:	00 00 00 06 	l.j b88 <_ntoa_format+0xd0>
     b74:	01 05 0b 00 	l.j 4143774 <_end+0x40be948>
     b78:	05 02 00 00 	l.jal 4080b78 <_end+0x3ffbd4c>
     b7c:	00 00 00 02 	l.j b84 <_ntoa_format+0xcc>
     b80:	04 01 01 05 	l.jal 40f94 <frameBuffer+0x3c16c>
     b84:	14 00 05 02 	*inconnu*
     b88:	00 00 00 00 	l.j b88 <_ntoa_format+0xd0>
     b8c:	00 02 04 03 	l.j 81b98 <frameBuffer+0x7cd70>
     b90:	15 05 08 00 	*inconnu*
     b94:	05 02 00 00 	l.jal 4080b94 <_end+0x3ffbd68>
     b98:	00 00 00 02 	l.j ba0 <_ntoa_format+0xe8>
     b9c:	04 00 14 05 	l.jal 5bb0 <frameBuffer+0xd88>
     ba0:	0b 00 05 02 	l.adrp r24,a04000 <_end+0x97f1d4>
     ba4:	00 00 00 00 	l.j ba4 <_ntoa_format+0xec>
     ba8:	00 02 04 03 	l.j 81bb4 <frameBuffer+0x7cd8c>
     bac:	1a 05 08 00 	*inconnu*
     bb0:	05 02 00 00 	l.jal 4080bb0 <_end+0x3ffbd84>
     bb4:	00 00 00 02 	l.j bbc <_ntoa_format+0x104>
     bb8:	04 02 19 05 	l.jal 86fcc <_end+0x21a0>
     bbc:	21 00 05 02 	l.trap 0x502
     bc0:	00 00 00 00 	l.j bc0 <_ntoa_format+0x108>
     bc4:	00 02 04 00 	l.j 81bc4 <frameBuffer+0x7cd9c>
     bc8:	06 19 05 05 	l.jal f8641fdc <_end+0xf85bd1b0>
     bcc:	00 05 02 00 	l.j 1413cc <_end+0xbc5a0>
     bd0:	00 00 00 18 	l.j c30 <_ntoa_format+0x178>
     bd4:	05 05 00 05 	l.jal 4140be8 <_end+0x40bbdbc>
     bd8:	02 00 00 00 	l.j f8000bd8 <_end+0xf7f7bdac>
     bdc:	00 01 05 05 	l.j 41ff0 <frameBuffer+0x3d1c8>
     be0:	00 05 02 00 	l.j 1413e0 <_end+0xbc5b4>
     be4:	00 00 00 01 	l.j be8 <_ntoa_format+0x130>
     be8:	05 05 00 05 	l.jal 4140bfc <_end+0x40bbdd0>
     bec:	02 00 00 00 	l.j f8000bec <_end+0xf7f7bdc0>
     bf0:	00 01 05 05 	l.j 42004 <frameBuffer+0x3d1dc>
     bf4:	00 05 02 00 	l.j 1413f4 <_end+0xbc5c8>
     bf8:	00 00 00 01 	l.j bfc <_ntoa_format+0x144>
     bfc:	05 05 00 05 	l.jal 4140c10 <_end+0x40bbde4>
     c00:	02 00 00 00 	l.j f8000c00 <_end+0xf7f7bdd4>
     c04:	00 06 16 05 	l.j 186418 <_end+0x1015ec>
     c08:	07 00 05 02 	l.jal fc002010 <_end+0xfbf7d1e4>
     c0c:	00 00 00 00 	l.j c0c <_ntoa_format+0x154>
     c10:	29 05 11 00 	*inconnu*
     c14:	05 02 00 00 	l.jal 4080c14 <_end+0x3ffbde8>
     c18:	00 00 06 03 	l.j 2424 <__udivdi3+0x47c>
     c1c:	91 7f 01 05 	l.lbs r11,261(r31)
     c20:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     c24:	00 00 00 00 	l.j c24 <_ntoa_format+0x16c>
     c28:	19 05 08 00 	*inconnu*
     c2c:	05 02 00 00 	l.jal 4080c2c <_end+0x3ffbe00>
     c30:	00 00 06 1c 	l.j 24a0 <__udivdi3+0x4f8>
     c34:	05 08 00 05 	l.jal 4200c48 <_end+0x417be1c>
     c38:	02 00 00 00 	l.j f8000c38 <_end+0xf7f7be0c>
     c3c:	00 12 05 0b 	l.j 482068 <_end+0x3fd23c>
     c40:	00 05 02 00 	l.j 141440 <_end+0xbc614>
     c44:	00 00 00 06 	l.j c5c <_ntoa_format+0x1a4>
     c48:	18 05 08 00 	*inconnu*
     c4c:	05 02 00 00 	l.jal 4080c4c <_end+0x3ffbe20>
     c50:	00 00 06 01 	l.j 2454 <__udivdi3+0x4ac>
     c54:	05 0b 00 05 	l.jal 42c0c68 <_end+0x423be3c>
     c58:	02 00 00 00 	l.j f8000c58 <_end+0xf7f7be2c>
     c5c:	00 06 18 05 	l.j 186c70 <_end+0x101e44>
     c60:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     c64:	00 00 00 00 	l.j c64 <_ntoa_format+0x1ac>
     c68:	06 1a 05 08 	l.jal f8682088 <_end+0xf85fd25c>
     c6c:	00 05 02 00 	l.j 14146c <_end+0xbc640>
     c70:	00 00 00 14 	l.j cc0 <_ntoa_format+0x208>
     c74:	05 11 00 05 	l.jal 4440c88 <_end+0x43bbe5c>
     c78:	02 00 00 00 	l.j f8000c78 <_end+0xf7f7be4c>
     c7c:	00 01 05 1e 	l.j 420f4 <frameBuffer+0x3d2cc>
     c80:	00 05 02 00 	l.j 141480 <_end+0xbc654>
     c84:	00 00 00 1a 	l.j cec <_ntoa_format+0x234>
     c88:	05 08 00 05 	l.jal 4200c9c <_end+0x417be70>
     c8c:	02 00 00 00 	l.j f8000c8c <_end+0xf7f7be60>
     c90:	00 14 05 0b 	l.j 5020bc <_end+0x47d290>
     c94:	00 05 02 00 	l.j 141494 <_end+0xbc668>
     c98:	00 00 00 06 	l.j cb0 <_ntoa_format+0x1f8>
     c9c:	18 05 08 00 	*inconnu*
     ca0:	05 02 00 00 	l.jal 4080ca0 <_end+0x3ffbe74>
     ca4:	00 00 00 02 	l.j cac <_ntoa_format+0x1f4>
     ca8:	04 02 06 19 	l.jal 8250c <frameBuffer+0x7d6e4>
     cac:	05 08 00 05 	l.jal 4200cc0 <_end+0x417be94>
     cb0:	02 00 00 00 	l.j f8000cb0 <_end+0xf7f7be84>
     cb4:	00 00 02 04 	l.j 14c4 <_vsnprintf+0x380>
     cb8:	00 01 05 08 	l.j 420d8 <frameBuffer+0x3d2b0>
     cbc:	00 05 02 00 	l.j 1414bc <_end+0xbc690>
     cc0:	00 00 00 00 	l.j cc0 <_ntoa_format+0x208>
     cc4:	02 04 02 01 	l.j f81014c8 <_end+0xf807c69c>
     cc8:	05 08 00 05 	l.jal 4200cdc <_end+0x417beb0>
     ccc:	02 00 00 00 	l.j f8000ccc <_end+0xf7f7bea0>
     cd0:	00 00 02 04 	l.j 14e0 <_vsnprintf+0x39c>
     cd4:	00 06 01 05 	l.j 1810e8 <_end+0xfc2bc>
     cd8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     cdc:	00 00 00 00 	l.j cdc <_ntoa_format+0x224>
     ce0:	01 05 08 00 	l.j 4142ce0 <_end+0x40bdeb4>
     ce4:	05 02 00 00 	l.jal 4080ce4 <_end+0x3ffbeb8>
     ce8:	00 00 01 05 	l.j 10fc <_out_char+0x14>
     cec:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     cf0:	00 00 00 00 	l.j cf0 <_ntoa_format+0x238>
     cf4:	01 05 08 00 	l.j 4142cf4 <_end+0x40bdec8>
     cf8:	05 02 00 00 	l.jal 4080cf8 <_end+0x3ffbecc>
     cfc:	00 00 01 05 	l.j 1110 <_out_char+0x28>
     d00:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d04:	00 00 00 00 	l.j d04 <_ntoa_format+0x24c>
     d08:	01 05 08 00 	l.j 4142d08 <_end+0x40bdedc>
     d0c:	05 02 00 00 	l.jal 4080d0c <_end+0x3ffbee0>
     d10:	00 00 00 02 	l.j d18 <_ntoa_format+0x260>
     d14:	04 01 01 05 	l.jal 41128 <frameBuffer+0x3c300>
     d18:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d1c:	00 00 00 00 	l.j d1c <_ntoa_format+0x264>
     d20:	00 02 04 02 	l.j 81d28 <frameBuffer+0x7cf00>
     d24:	01 05 08 00 	l.j 4142d24 <_end+0x40bdef8>
     d28:	05 02 00 00 	l.jal 4080d28 <_end+0x3ffbefc>
     d2c:	00 00 01 05 	l.j 1140 <_out_fct+0x2c>
     d30:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d34:	00 00 00 00 	l.j d34 <_ntoa_format+0x27c>
     d38:	01 05 08 00 	l.j 4142d38 <_end+0x40bdf0c>
     d3c:	05 02 00 00 	l.jal 4080d3c <_end+0x3ffbf10>
     d40:	00 00 00 02 	l.j d48 <_ntoa_format+0x290>
     d44:	04 03 01 05 	l.jal c1158 <_end+0x3c32c>
     d48:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d4c:	00 00 00 00 	l.j d4c <_ntoa_format+0x294>
     d50:	01 05 08 00 	l.j 4142d50 <_end+0x40bdf24>
     d54:	05 02 00 00 	l.jal 4080d54 <_end+0x3ffbf28>
     d58:	00 00 00 02 	l.j d60 <_ntoa_format+0x2a8>
     d5c:	04 05 01 05 	l.jal 141170 <_end+0xbc344>
     d60:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d64:	00 00 00 00 	l.j d64 <_ntoa_format+0x2ac>
     d68:	00 02 04 07 	l.j 81d84 <frameBuffer+0x7cf5c>
     d6c:	01 05 08 00 	l.j 4142d6c <_end+0x40bdf40>
     d70:	05 02 00 00 	l.jal 4080d70 <_end+0x3ffbf44>
     d74:	00 00 00 02 	l.j d7c <_ntoa_format+0x2c4>
     d78:	04 09 01 05 	l.jal 24118c <_end+0x1bc360>
     d7c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d80:	00 00 00 00 	l.j d80 <_ntoa_format+0x2c8>
     d84:	01 05 08 00 	l.j 4142d84 <_end+0x40bdf58>
     d88:	05 02 00 00 	l.jal 4080d88 <_end+0x3ffbf5c>
     d8c:	00 00 00 02 	l.j d94 <_ntoa_format+0x2dc>
     d90:	04 0a 01 05 	l.jal 2811a4 <_end+0x1fc378>
     d94:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     d98:	00 00 00 00 	l.j d98 <_ntoa_format+0x2e0>
     d9c:	00 02 04 0b 	l.j 81dc8 <frameBuffer+0x7cfa0>
     da0:	01 05 08 00 	l.j 4142da0 <_end+0x40bdf74>
     da4:	05 02 00 00 	l.jal 4080da4 <_end+0x3ffbf78>
     da8:	00 00 01 05 	l.j 11bc <_vsnprintf+0x78>
     dac:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     db0:	00 00 00 00 	l.j db0 <_ntoa_format+0x2f8>
     db4:	01 05 08 00 	l.j 4142db4 <_end+0x40bdf88>
     db8:	05 02 00 00 	l.jal 4080db8 <_end+0x3ffbf8c>
     dbc:	00 00 00 02 	l.j dc4 <_ntoa_format+0x30c>
     dc0:	04 0c 01 05 	l.jal 3011d4 <_end+0x27c3a8>
     dc4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     dc8:	00 00 00 00 	l.j dc8 <_ntoa_format+0x310>
     dcc:	01 05 08 00 	l.j 4142dcc <_end+0x40bdfa0>
     dd0:	05 02 00 00 	l.jal 4080dd0 <_end+0x3ffbfa4>
     dd4:	00 00 00 02 	l.j ddc <_ntoa_format+0x324>
     dd8:	04 0e 01 05 	l.jal 3811ec <_end+0x2fc3c0>
     ddc:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     de0:	00 00 00 00 	l.j de0 <_ntoa_format+0x328>
     de4:	00 02 04 10 	l.j 81e24 <frameBuffer+0x7cffc>
     de8:	01 05 08 00 	l.j 4142de8 <_end+0x40bdfbc>
     dec:	05 02 00 00 	l.jal 4080dec <_end+0x3ffbfc0>
     df0:	00 00 00 02 	l.j df8 <_ntoa_format+0x340>
     df4:	04 12 01 05 	l.jal 481208 <_end+0x3fc3dc>
     df8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     dfc:	00 00 00 00 	l.j dfc <_ntoa_format+0x344>
     e00:	01 05 08 00 	l.j 4142e00 <_end+0x40bdfd4>
     e04:	05 02 00 00 	l.jal 4080e04 <_end+0x3ffbfd8>
     e08:	00 00 01 05 	l.j 121c <_vsnprintf+0xd8>
     e0c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     e10:	00 00 00 00 	l.j e10 <_ntoa_format+0x358>
     e14:	00 02 04 0c 	l.j 81e44 <frameBuffer+0x7d01c>
     e18:	06 01 05 08 	l.jal f8042238 <_end+0xf7fbd40c>
     e1c:	00 05 02 00 	l.j 14161c <_end+0xbc7f0>
     e20:	00 00 00 68 	l.j fc0 <_ntoa_long_long+0x98>
     e24:	05 08 00 05 	l.jal 4200e38 <_end+0x417c00c>
     e28:	02 00 00 00 	l.j f8000e28 <_end+0xf7f7bffc>
     e2c:	00 00 02 04 	l.j 163c <_vsnprintf+0x4f8>
     e30:	03 03 af 7f 	l.j fc0ecc2c <_end+0xfc067e00>
     e34:	01 05 08 00 	l.j 4142e34 <_end+0x40be008>
     e38:	05 02 00 00 	l.jal 4080e38 <_end+0x3ffc00c>
     e3c:	00 00 68 05 	l.j 1ae50 <frameBuffer+0x16028>
     e40:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
     e44:	00 00 00 00 	l.j e44 <_ntoa_long+0x1c>
     e48:	00 02 04 10 	l.j 81e88 <frameBuffer+0x7d060>
     e4c:	06 03 b4 7f 	l.jal f80ee048 <_end+0xf806921c>
     e50:	01 05 04 00 	l.j 4141e50 <_end+0x40bd024>
     e54:	05 02 00 00 	l.jal 4080e54 <_end+0x3ffc028>
     e58:	00 00 03 56 	l.j 1bb0 <memcpy+0x24>
     e5c:	01 05 04 00 	l.j 4141e5c <_end+0x40bd030>
     e60:	05 02 00 00 	l.jal 4080e60 <_end+0x3ffc034>
     e64:	00 00 00 02 	l.j e6c <_ntoa_long+0x44>
     e68:	04 01 06 6f 	l.jal 42824 <frameBuffer+0x3d9fc>
     e6c:	05 14 00 05 	l.jal 4500e80 <_end+0x447c054>
     e70:	02 00 00 00 	l.j f8000e70 <_end+0xf7f7c044>
     e74:	00 00 02 04 	l.j 1684 <_vsnprintf+0x540>
     e78:	07 06 03 52 	l.jal fc181bc0 <_end+0xfc0fcd94>
     e7c:	01 05 04 00 	l.j 4141e7c <_end+0x40bd050>
     e80:	05 02 00 00 	l.jal 4080e80 <_end+0x3ffc054>
     e84:	00 00 03 56 	l.j 1bdc <memcpy+0x50>
     e88:	01 05 04 00 	l.j 4141e88 <_end+0x40bd05c>
     e8c:	05 02 00 00 	l.jal 4080e8c <_end+0x3ffc060>
     e90:	00 00 00 01 	l.j e94 <_ntoa_long+0x6c>
     e94:	01 00 00 0e 	l.j 4000ecc <_end+0x3f7c0a0>
     e98:	e5 00 05 04 	*inconnu*
     e9c:	00 00 00 00 	l.j e9c <_ntoa_long+0x74>
     ea0:	33 01 01 01 	*inconnu*
     ea4:	f6 f2 0d 00 	*inconnu*
     ea8:	01 01 01 01 	l.j 40412ac <_end+0x3fbc480>
     eac:	00 00 00 01 	l.j eb0 <_ntoa_long+0x88>
     eb0:	00 00 01 01 	l.j 12b4 <_vsnprintf+0x170>
     eb4:	01 1f 02 00 	l.j 47c16b4 <_end+0x473c888>
     eb8:	00 00 2f 00 	l.j cab8 <frameBuffer+0x7c90>
     ebc:	00 00 7d 02 	l.j 202c4 <frameBuffer+0x1b49c>
     ec0:	01 1f 02 0b 	l.j 47c16ec <_end+0x473c8c0>
     ec4:	03 00 00 00 	l.j fc000ec4 <_end+0xfbf7c098>
     ec8:	00 00 00 00 	l.j ec8 <_ntoa_long+0xa0>
     ecc:	00 1b 01 00 	l.j 6c12cc <_end+0x63c4a0>
     ed0:	00 00 25 01 	l.j a2d4 <frameBuffer+0x54ac>
     ed4:	00 05 02 00 	l.j 1416d4 <_end+0xbc8a8>
     ed8:	00 00 00 03 	l.j ee4 <_ntoa_long+0xbc>
     edc:	d3 09 01 05 	*inconnu*
     ee0:	01 00 05 02 	l.j 40022e8 <_end+0x3f7d4bc>
     ee4:	00 00 00 00 	l.j ee4 <_ntoa_long+0xbc>
     ee8:	18 05 03 00 	*inconnu*
     eec:	05 02 00 00 	l.jal 4080eec <_end+0x3ffc0c0>
     ef0:	00 00 18 05 	l.j 6f04 <frameBuffer+0x20dc>
     ef4:	03 00 05 02 	l.j fc0022fc <_end+0xfbf7d4d0>
     ef8:	00 00 00 00 	l.j ef8 <_ntoa_long+0xd0>
     efc:	18 05 03 00 	*inconnu*
     f00:	05 02 00 00 	l.jal 4080f00 <_end+0x3ffc0d4>
     f04:	00 00 18 05 	l.j 6f18 <frameBuffer+0x20f0>
     f08:	03 00 05 02 	l.j fc002310 <_end+0xfbf7d4e4>
     f0c:	00 00 00 00 	l.j f0c <_ntoa_long+0xe4>
     f10:	19 05 03 00 	*inconnu*
     f14:	05 02 00 00 	l.jal 4080f14 <_end+0x3ffc0e8>
     f18:	00 00 06 01 	l.j 271c <__umoddi3+0x1b8>
     f1c:	05 06 00 05 	l.jal 4180f30 <_end+0x40fc104>
     f20:	02 00 00 00 	l.j f8000f20 <_end+0xf7f7c0f4>
     f24:	00 06 1a 05 	l.j 187738 <_end+0x10290c>
     f28:	03 00 05 02 	l.j fc002330 <_end+0xfbf7d504>
     f2c:	00 00 00 00 	l.j f2c <_ntoa_long_long+0x4>
     f30:	06 01 05 06 	l.jal f8042348 <_end+0xf7fbd51c>
     f34:	00 05 02 00 	l.j 141734 <_end+0xbc908>
     f38:	00 00 00 06 	l.j f50 <_ntoa_long_long+0x28>
     f3c:	1a 05 03 00 	*inconnu*
     f40:	05 02 00 00 	l.jal 4080f40 <_end+0x3ffc114>
     f44:	00 00 03 85 	l.j 1d58 <memcpy+0x1cc>
     f48:	7e 01 05 03 	*inconnu*
     f4c:	00 05 02 00 	l.j 14174c <_end+0xbc920>
     f50:	00 00 00 18 	l.j fb0 <_ntoa_long_long+0x88>
     f54:	05 03 00 05 	l.jal 40c0f68 <_end+0x403c13c>
     f58:	02 00 00 00 	l.j f8000f58 <_end+0xf7f7c12c>
     f5c:	00 18 05 03 	l.j 602368 <_end+0x57d53c>
     f60:	00 05 02 00 	l.j 141760 <_end+0xbc934>
     f64:	00 00 00 18 	l.j fc4 <_ntoa_long_long+0x9c>
     f68:	05 03 00 05 	l.jal 40c0f7c <_end+0x403c150>
     f6c:	02 00 00 00 	l.j f8000f6c <_end+0xf7f7c140>
     f70:	00 18 05 03 	l.j 60237c <_end+0x57d550>
     f74:	00 05 02 00 	l.j 141774 <_end+0xbc948>
     f78:	00 00 00 18 	l.j fd8 <_ntoa_long_long+0xb0>
     f7c:	05 03 00 05 	l.jal 40c0f90 <_end+0x403c164>
     f80:	02 00 00 00 	l.j f8000f80 <_end+0xf7f7c154>
     f84:	00 19 05 03 	l.j 642390 <_end+0x5bd564>
     f88:	00 05 02 00 	l.j 141788 <_end+0xbc95c>
     f8c:	00 00 00 06 	l.j fa4 <_ntoa_long_long+0x7c>
     f90:	3f 05 06 00 	*inconnu*
     f94:	05 02 00 00 	l.jal 4080f94 <_end+0x3ffc168>
     f98:	00 00 03 58 	l.j 1cf8 <memcpy+0x16c>
     f9c:	01 05 06 00 	l.j 414279c <_end+0x40bd970>
     fa0:	05 02 00 00 	l.jal 4080fa0 <_end+0x3ffc174>
     fa4:	00 00 06 18 	l.j 2804 <__umoddi3+0x2a0>
     fa8:	05 03 00 05 	l.jal 40c0fbc <_end+0x403c190>
     fac:	02 00 00 00 	l.j f8000fac <_end+0xf7f7c180>
     fb0:	00 18 05 03 	l.j 6023bc <_end+0x57d590>
     fb4:	00 05 02 00 	l.j 1417b4 <_end+0xbc988>
     fb8:	00 00 00 06 	l.j fd0 <_ntoa_long_long+0xa8>
     fbc:	01 05 06 00 	l.j 41427bc <_end+0x40bd990>
     fc0:	05 02 00 00 	l.jal 4080fc0 <_end+0x3ffc194>
     fc4:	00 00 06 18 	l.j 2824 <__umoddi3+0x2c0>
     fc8:	05 03 00 05 	l.jal 40c0fdc <_end+0x403c1b0>
     fcc:	02 00 00 00 	l.j f8000fcc <_end+0xf7f7c1a0>
     fd0:	00 3c 05 03 	l.j f023dc <_end+0xe7d5b0>
     fd4:	00 05 02 00 	l.j 1417d4 <_end+0xbc9a8>
     fd8:	00 00 00 06 	l.j ff0 <_ntoa_long_long+0xc8>
     fdc:	01 05 06 00 	l.j 41427dc <_end+0x40bd9b0>
     fe0:	05 02 00 00 	l.jal 4080fe0 <_end+0x3ffc1b4>
     fe4:	00 00 06 19 	l.j 2848 <__umoddi3+0x2e4>
     fe8:	05 07 00 05 	l.jal 41c0ffc <_end+0x413c1d0>
     fec:	02 00 00 00 	l.j f8000fec <_end+0xf7f7c1c0>
     ff0:	00 06 01 05 	l.j 181404 <_end+0xfc5d8>
     ff4:	0a 00 05 02 	l.adrp r16,a04000 <_end+0x97f1d4>
     ff8:	00 00 00 00 	l.j ff8 <_ntoa_long_long+0xd0>
     ffc:	06 1b 05 04 	l.jal f86c240c <_end+0xf863d5e0>
    1000:	00 05 02 00 	l.j 141800 <_end+0xbc9d4>
    1004:	00 00 00 01 	l.j 1008 <_ntoa_long_long+0xe0>
    1008:	05 04 00 05 	l.jal 410101c <_end+0x407c1f0>
    100c:	02 00 00 00 	l.j f800100c <_end+0xf7f7c1e0>
    1010:	00 01 05 04 	l.j 42420 <frameBuffer+0x3d5f8>
    1014:	00 05 02 00 	l.j 141814 <_end+0xbc9e8>
    1018:	00 00 00 01 	l.j 101c <_ntoa_long_long+0xf4>
    101c:	05 04 00 05 	l.jal 4101030 <_end+0x407c204>
    1020:	02 00 00 00 	l.j f8001020 <_end+0xf7f7c1f4>
    1024:	00 00 02 04 	l.j 1834 <_vsnprintf+0x6f0>
    1028:	01 01 05 04 	l.j 4042438 <_end+0x3fbd60c>
    102c:	00 05 02 00 	l.j 14182c <_end+0xbca00>
    1030:	00 00 00 00 	l.j 1030 <_ntoa_long_long+0x108>
    1034:	02 04 04 06 	l.j f810204c <_end+0xf807d220>
    1038:	01 05 04 00 	l.j 4142038 <_end+0x40bd20c>
    103c:	05 02 00 00 	l.jal 408103c <_end+0x3ffc210>
    1040:	00 00 00 02 	l.j 1048 <_ntoa_long_long+0x120>
    1044:	04 0a 01 05 	l.jal 281458 <_end+0x1fc62c>
    1048:	04 00 05 02 	l.jal 2450 <__udivdi3+0x4a8>
    104c:	00 00 00 00 	l.j 104c <_ntoa_long_long+0x124>
    1050:	00 02 04 15 	l.j 820a4 <frameBuffer+0x7d27c>
    1054:	06 01 05 04 	l.jal f8042464 <_end+0xf7fbd638>
    1058:	00 05 02 00 	l.j 141858 <_end+0xbca2c>
    105c:	00 00 00 00 	l.j 105c <_ntoa_long_long+0x134>
    1060:	02 04 16 06 	l.j f8106878 <_end+0xf8081a4c>
    1064:	01 05 04 00 	l.j 4142064 <_end+0x40bd238>
    1068:	05 02 00 00 	l.jal 4081068 <_end+0x3ffc23c>
    106c:	00 00 00 02 	l.j 1074 <_ntoa_long_long+0x14c>
    1070:	04 00 19 05 	l.jal 7484 <frameBuffer+0x265c>
    1074:	07 00 05 02 	l.jal fc00247c <_end+0xfbf7d650>
    1078:	00 00 00 00 	l.j 1078 <_ntoa_long_long+0x150>
    107c:	00 02 04 16 	l.j 820d4 <frameBuffer+0x7d2ac>
    1080:	06 15 05 04 	l.jal f8542490 <_end+0xf84bd664>
    1084:	00 05 02 00 	l.j 141884 <_end+0xbca58>
    1088:	00 00 00 00 	l.j 1088 <_ntoa_long_long+0x160>
    108c:	02 04 00 19 	l.j f81010f0 <_end+0xf807c2c4>
    1090:	05 04 00 05 	l.jal 41010a4 <_end+0x407c278>
    1094:	02 00 00 00 	l.j f8001094 <_end+0xf7f7c268>
    1098:	00 06 01 05 	l.j 1814ac <_end+0xfc680>
    109c:	07 00 05 02 	l.jal fc0024a4 <_end+0xfbf7d678>
    10a0:	00 00 00 00 	l.j 10a0 <_ntoa_long_long+0x178>
    10a4:	06 1c 05 08 	l.jal f87024c4 <_end+0xf867d698>
    10a8:	00 05 02 00 	l.j 1418a8 <_end+0xbca7c>
    10ac:	00 00 00 06 	l.j 10c4 <_ntoa_long_long+0x19c>
    10b0:	18 05 11 00 	*inconnu*
    10b4:	05 02 00 00 	l.jal 40810b4 <_end+0x3ffc288>
    10b8:	00 00 01 05 	l.j 14cc <_vsnprintf+0x388>
    10bc:	1e 00 05 02 	*inconnu*
    10c0:	00 00 00 00 	l.j 10c0 <_ntoa_long_long+0x198>
    10c4:	16 05 0b 00 	*inconnu*
    10c8:	05 02 00 00 	l.jal 40810c8 <_end+0x3ffc29c>
    10cc:	00 00 06 18 	l.j 292c <__umoddi3+0x3c8>
    10d0:	05 08 00 05 	l.jal 42010e4 <_end+0x417c2b8>
    10d4:	02 00 00 00 	l.j f80010d4 <_end+0xf7f7c2a8>
    10d8:	00 06 01 05 	l.j 1814ec <_end+0xfc6c0>
    10dc:	0b 00 05 02 	l.adrp r24,a04000 <_end+0x97f1d4>
    10e0:	00 00 00 00 	l.j 10e0 <_ntoa_long_long+0x1b8>
    10e4:	06 18 05 08 	l.jal f8602504 <_end+0xf857d6d8>
    10e8:	00 05 02 00 	l.j 1418e8 <_end+0xbcabc>
    10ec:	00 00 00 06 	l.j 1104 <_out_char+0x1c>
    10f0:	01 05 0b 00 	l.j 4143cf0 <_end+0x40beec4>
    10f4:	05 02 00 00 	l.jal 40810f4 <_end+0x3ffc2c8>
    10f8:	00 00 06 1a 	l.j 2960 <__umoddi3+0x3fc>
    10fc:	05 04 00 05 	l.jal 4101110 <_end+0x407c2e4>
    1100:	02 00 00 00 	l.j f8001100 <_end+0xf7f7c2d4>
    1104:	00 01 05 04 	l.j 42514 <frameBuffer+0x3d6ec>
    1108:	00 05 02 00 	l.j 141908 <_end+0xbcadc>
    110c:	00 00 00 01 	l.j 1110 <_out_char+0x28>
    1110:	05 04 00 05 	l.jal 4101124 <_end+0x407c2f8>
    1114:	02 00 00 00 	l.j f8001114 <_end+0xf7f7c2e8>
    1118:	00 01 05 04 	l.j 42528 <frameBuffer+0x3d700>
    111c:	00 05 02 00 	l.j 14191c <_end+0xbcaf0>
    1120:	00 00 00 01 	l.j 1124 <_out_fct+0x10>
    1124:	05 04 00 05 	l.jal 4101138 <_end+0x407c30c>
    1128:	02 00 00 00 	l.j f8001128 <_end+0xf7f7c2fc>
    112c:	00 00 02 04 	l.j 193c <_vsnprintf+0x7f8>
    1130:	02 06 01 05 	l.j f8181544 <_end+0xf80fc718>
    1134:	04 00 05 02 	l.jal 253c <__udivdi3+0x594>
    1138:	00 00 00 00 	l.j 1138 <_out_fct+0x24>
    113c:	00 02 04 00 	l.j 8213c <frameBuffer+0x7d314>
    1140:	01 05 04 00 	l.j 4142140 <_end+0x40bd314>
    1144:	05 02 00 00 	l.jal 4081144 <_end+0x3ffc318>
    1148:	00 00 06 01 	l.j 294c <__umoddi3+0x3e8>
    114c:	05 04 00 05 	l.jal 4101160 <_end+0x407c334>
    1150:	02 00 00 00 	l.j f8001150 <_end+0xf7f7c324>
    1154:	00 00 02 04 	l.j 1964 <_vsnprintf+0x820>
    1158:	01 01 05 04 	l.j 4042568 <_end+0x3fbd73c>
    115c:	00 05 02 00 	l.j 14195c <_end+0xbcb30>
    1160:	00 00 00 00 	l.j 1160 <_vsnprintf+0x1c>
    1164:	02 04 02 01 	l.j f8101968 <_end+0xf807cb3c>
    1168:	05 04 00 05 	l.jal 410117c <_end+0x407c350>
    116c:	02 00 00 00 	l.j f800116c <_end+0xf7f7c340>
    1170:	00 01 05 04 	l.j 42580 <frameBuffer+0x3d758>
    1174:	00 05 02 00 	l.j 141974 <_end+0xbcb48>
    1178:	00 00 00 01 	l.j 117c <_vsnprintf+0x38>
    117c:	05 04 00 05 	l.jal 4101190 <_end+0x407c364>
    1180:	02 00 00 00 	l.j f8001180 <_end+0xf7f7c354>
    1184:	00 00 02 04 	l.j 1994 <_vsnprintf+0x850>
    1188:	03 01 05 04 	l.j fc042598 <_end+0xfbfbd76c>
    118c:	00 05 02 00 	l.j 14198c <_end+0xbcb60>
    1190:	00 00 00 01 	l.j 1194 <_vsnprintf+0x50>
    1194:	05 04 00 05 	l.jal 41011a8 <_end+0x407c37c>
    1198:	02 00 00 00 	l.j f8001198 <_end+0xf7f7c36c>
    119c:	00 00 02 04 	l.j 19ac <_vsnprintf+0x868>
    11a0:	05 01 05 04 	l.jal 40425b0 <_end+0x3fbd784>
    11a4:	00 05 02 00 	l.j 1419a4 <_end+0xbcb78>
    11a8:	00 00 00 00 	l.j 11a8 <_vsnprintf+0x64>
    11ac:	02 04 07 01 	l.j f8102db0 <_end+0xf807df84>
    11b0:	05 04 00 05 	l.jal 41011c4 <_end+0x407c398>
    11b4:	02 00 00 00 	l.j f80011b4 <_end+0xf7f7c388>
    11b8:	00 00 02 04 	l.j 19c8 <_vsnprintf+0x884>
    11bc:	09 01 05 04 	l.adrp r8,20a08000 <_end+0x209831d4>
    11c0:	00 05 02 00 	l.j 1419c0 <_end+0xbcb94>
    11c4:	00 00 00 01 	l.j 11c8 <_vsnprintf+0x84>
    11c8:	05 04 00 05 	l.jal 41011dc <_end+0x407c3b0>
    11cc:	02 00 00 00 	l.j f80011cc <_end+0xf7f7c3a0>
    11d0:	00 00 02 04 	l.j 19e0 <_vsnprintf+0x89c>
    11d4:	00 51 05 07 	l.j 14425f0 <_end+0x13bd7c4>
    11d8:	00 05 02 00 	l.j 1419d8 <_end+0xbcbac>
    11dc:	00 00 00 06 	l.j 11f4 <_vsnprintf+0xb0>
    11e0:	01 05 0a 00 	l.j 41439e0 <_end+0x40bebb4>
    11e4:	05 02 00 00 	l.jal 40811e4 <_end+0x3ffc3b8>
    11e8:	00 00 06 1b 	l.j 2a54 <__umoddi3+0x4f0>
    11ec:	05 04 00 05 	l.jal 4101200 <_end+0x407c3d4>
    11f0:	02 00 00 00 	l.j f80011f0 <_end+0xf7f7c3c4>
    11f4:	00 18 05 04 	l.j 602604 <_end+0x57d7d8>
    11f8:	00 05 02 00 	l.j 1419f8 <_end+0xbcbcc>
    11fc:	00 00 00 1a 	l.j 1264 <_vsnprintf+0x120>
    1200:	05 04 00 05 	l.jal 4101214 <_end+0x407c3e8>
    1204:	02 00 00 00 	l.j f8001204 <_end+0xf7f7c3d8>
    1208:	00 19 05 08 	l.j 642628 <_end+0x5bd7fc>
    120c:	00 05 02 00 	l.j 141a0c <_end+0xbcbe0>
    1210:	00 00 00 18 	l.j 1270 <_vsnprintf+0x12c>
    1214:	05 08 00 05 	l.jal 4201228 <_end+0x417c3fc>
    1218:	02 00 00 00 	l.j f8001218 <_end+0xf7f7c3ec>
    121c:	00 18 05 08 	l.j 60263c <_end+0x57d810>
    1220:	00 05 02 00 	l.j 141a20 <_end+0xbcbf4>
    1224:	00 00 00 06 	l.j 123c <_vsnprintf+0xf8>
    1228:	01 05 10 00 	l.j 4145228 <_end+0x40c03fc>
    122c:	05 02 00 00 	l.jal 408122c <_end+0x3ffc400>
    1230:	00 00 06 5e 	l.j 2ba8 <__umoddi3+0x644>
    1234:	05 03 00 05 	l.jal 40c1248 <_end+0x403c41c>
    1238:	02 00 00 00 	l.j f8001238 <_end+0xf7f7c40c>
    123c:	00 18 05 03 	l.j 602648 <_end+0x57d81c>
    1240:	00 05 02 00 	l.j 141a40 <_end+0xbcc14>
    1244:	00 00 00 44 	l.j 1354 <_vsnprintf+0x210>
    1248:	05 03 00 05 	l.jal 40c125c <_end+0x403c430>
    124c:	02 00 00 00 	l.j f800124c <_end+0xf7f7c420>
    1250:	00 06 01 05 	l.j 181664 <_end+0xfc838>
    1254:	06 00 05 02 	l.jal f800265c <_end+0xf7f7d830>
    1258:	00 00 00 00 	l.j 1258 <_vsnprintf+0x114>
    125c:	06 18 05 05 	l.jal f8602670 <_end+0xf857d844>
    1260:	00 05 02 00 	l.j 141a60 <_end+0xbcc34>
    1264:	00 00 00 06 	l.j 127c <_vsnprintf+0x138>
    1268:	01 05 09 00 	l.j 4143668 <_end+0x40be83c>
    126c:	05 02 00 00 	l.jal 408126c <_end+0x3ffc440>
    1270:	00 00 06 19 	l.j 2ad4 <__umoddi3+0x570>
    1274:	05 03 00 05 	l.jal 40c1288 <_end+0x403c45c>
    1278:	02 00 00 00 	l.j f8001278 <_end+0xf7f7c44c>
    127c:	00 06 18 05 	l.j 187290 <_end+0x102464>
    1280:	01 00 05 02 	l.j 4002688 <_end+0x3f7d85c>
    1284:	00 00 00 00 	l.j 1284 <_vsnprintf+0x140>
    1288:	06 03 8e 7f 	l.jal f80e4c84 <_end+0xf805fe58>
    128c:	01 05 04 00 	l.j 414228c <_end+0x40bd460>
    1290:	05 02 00 00 	l.jal 4081290 <_end+0x3ffc464>
    1294:	00 00 01 05 	l.j 16a8 <_vsnprintf+0x564>
    1298:	04 00 05 02 	l.jal 26a0 <__umoddi3+0x13c>
    129c:	00 00 00 00 	l.j 129c <_vsnprintf+0x158>
    12a0:	01 05 04 00 	l.j 41422a0 <_end+0x40bd474>
    12a4:	05 02 00 00 	l.jal 40812a4 <_end+0x3ffc478>
    12a8:	00 00 01 05 	l.j 16bc <_vsnprintf+0x578>
    12ac:	04 00 05 02 	l.jal 26b4 <__umoddi3+0x150>
    12b0:	00 00 00 00 	l.j 12b0 <_vsnprintf+0x16c>
    12b4:	00 02 04 01 	l.j 822b8 <frameBuffer+0x7d490>
    12b8:	01 05 04 00 	l.j 41422b8 <_end+0x40bd48c>
    12bc:	05 02 00 00 	l.jal 40812bc <_end+0x3ffc490>
    12c0:	00 00 00 02 	l.j 12c8 <_vsnprintf+0x184>
    12c4:	04 04 06 01 	l.jal 102ac8 <_end+0x7dc9c>
    12c8:	05 04 00 05 	l.jal 41012dc <_end+0x407c4b0>
    12cc:	02 00 00 00 	l.j f80012cc <_end+0xf7f7c4a0>
    12d0:	00 00 02 04 	l.j 1ae0 <snprintf_+0x8>
    12d4:	0a 01 05 04 	l.adrp r16,20a08000 <_end+0x209831d4>
    12d8:	00 05 02 00 	l.j 141ad8 <_end+0xbccac>
    12dc:	00 00 00 00 	l.j 12dc <_vsnprintf+0x198>
    12e0:	02 04 15 06 	l.j f81066f8 <_end+0xf80818cc>
    12e4:	01 05 04 00 	l.j 41422e4 <_end+0x40bd4b8>
    12e8:	05 02 00 00 	l.jal 40812e8 <_end+0x3ffc4bc>
    12ec:	00 00 00 02 	l.j 12f4 <_vsnprintf+0x1b0>
    12f0:	04 16 06 01 	l.jal 582af4 <_end+0x4fdcc8>
    12f4:	05 04 00 05 	l.jal 4101308 <_end+0x407c4dc>
    12f8:	02 00 00 00 	l.j f80012f8 <_end+0xf7f7c4cc>
    12fc:	00 00 02 04 	l.j 1b0c <vprintf_+0x4>
    1300:	00 18 05 07 	l.j 60271c <_end+0x57d8f0>
    1304:	00 05 02 00 	l.j 141b04 <_end+0xbccd8>
    1308:	00 00 00 00 	l.j 1308 <_vsnprintf+0x1c4>
    130c:	02 04 16 06 	l.j f8106b24 <_end+0xf8081cf8>
    1310:	16 05 04 00 	*inconnu*
    1314:	05 02 00 00 	l.jal 4081314 <_end+0x3ffc4e8>
    1318:	00 00 00 02 	l.j 1320 <_vsnprintf+0x1dc>
    131c:	04 00 18 05 	l.jal 7330 <frameBuffer+0x2508>
    1320:	04 00 05 02 	l.jal 2728 <__umoddi3+0x1c4>
    1324:	00 00 00 00 	l.j 1324 <_vsnprintf+0x1e0>
    1328:	06 01 05 07 	l.jal f8042744 <_end+0xf7fbd918>
    132c:	00 05 02 00 	l.j 141b2c <_end+0xbcd00>
    1330:	00 00 00 06 	l.j 1348 <_vsnprintf+0x204>
    1334:	21 05 08 00 	*inconnu*
    1338:	05 02 00 00 	l.jal 4081338 <_end+0x3ffc50c>
    133c:	00 00 06 01 	l.j 2b40 <__umoddi3+0x5dc>
    1340:	05 0b 00 05 	l.jal 42c1354 <_end+0x423c528>
    1344:	02 00 00 00 	l.j f8001344 <_end+0xf7f7c518>
    1348:	00 00 02 04 	l.j 1b58 <fctprintf+0x4>
    134c:	01 01 05 14 	l.j 404279c <_end+0x3fbd970>
    1350:	00 05 02 00 	l.j 141b50 <_end+0xbcd24>
    1354:	00 00 00 00 	l.j 1354 <_vsnprintf+0x210>
    1358:	02 04 00 06 	l.j f8101370 <_end+0xf807c544>
    135c:	19 05 05 00 	*inconnu*
    1360:	05 02 00 00 	l.jal 4081360 <_end+0x3ffc534>
    1364:	00 00 18 05 	l.j 7378 <frameBuffer+0x2550>
    1368:	05 00 05 02 	l.jal 4002770 <_end+0x3f7d944>
    136c:	00 00 00 00 	l.j 136c <_vsnprintf+0x228>
    1370:	01 05 05 00 	l.j 4142770 <_end+0x40bd944>
    1374:	05 02 00 00 	l.jal 4081374 <_end+0x3ffc548>
    1378:	00 00 01 05 	l.j 178c <_vsnprintf+0x648>
    137c:	05 00 05 02 	l.jal 4002784 <_end+0x3f7d958>
    1380:	00 00 00 00 	l.j 1380 <_vsnprintf+0x23c>
    1384:	01 05 05 00 	l.j 4142784 <_end+0x40bd958>
    1388:	05 02 00 00 	l.jal 4081388 <_end+0x3ffc55c>
    138c:	00 00 06 20 	l.j 2c0c <__umoddi3+0x6a8>
    1390:	05 0e 00 05 	l.jal 43813a4 <_end+0x42fc578>
    1394:	02 00 00 00 	l.j f8001394 <_end+0xf7f7c568>
    1398:	00 0e 05 05 	l.j 3827ac <_end+0x2fd980>
    139c:	00 05 02 00 	l.j 141b9c <_end+0xbcd70>
    13a0:	00 00 00 06 	l.j 13b8 <_vsnprintf+0x274>
    13a4:	01 05 05 00 	l.j 41427a4 <_end+0x40bd978>
    13a8:	05 02 00 00 	l.jal 40813a8 <_end+0x3ffc57c>
    13ac:	00 00 01 05 	l.j 17c0 <_vsnprintf+0x67c>
    13b0:	05 00 05 02 	l.jal 40027b8 <_end+0x3f7d98c>
    13b4:	00 00 00 00 	l.j 13b4 <_vsnprintf+0x270>
    13b8:	1c 05 08 00 	*inconnu*
    13bc:	05 02 00 00 	l.jal 40813bc <_end+0x3ffc590>
    13c0:	00 00 19 05 	l.j 77d4 <frameBuffer+0x29ac>
    13c4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    13c8:	00 00 00 00 	l.j 13c8 <_vsnprintf+0x284>
    13cc:	19 05 05 00 	*inconnu*
    13d0:	05 02 00 00 	l.jal 40813d0 <_end+0x3ffc5a4>
    13d4:	00 00 18 05 	l.j 73e8 <frameBuffer+0x25c0>
    13d8:	05 00 05 02 	l.jal 40027e0 <_end+0x3f7d9b4>
    13dc:	00 00 00 00 	l.j 13dc <_vsnprintf+0x298>
    13e0:	18 05 05 00 	*inconnu*
    13e4:	05 02 00 00 	l.jal 40813e4 <_end+0x3ffc5b8>
    13e8:	00 00 06 01 	l.j 2bec <__umoddi3+0x688>
    13ec:	05 0d 00 05 	l.jal 4341400 <_end+0x42bc5d4>
    13f0:	02 00 00 00 	l.j f80013f0 <_end+0xf7f7c5c4>
    13f4:	00 06 03 a3 	l.j 182280 <_end+0xfd454>
    13f8:	7f 01 05 04 	*inconnu*
    13fc:	00 05 02 00 	l.j 141bfc <_end+0xbcdd0>
    1400:	00 00 00 06 	l.j 1418 <_vsnprintf+0x2d4>
    1404:	01 05 07 00 	l.j 4143004 <_end+0x40be1d8>
    1408:	05 02 00 00 	l.jal 4081408 <_end+0x3ffc5dc>
    140c:	00 00 06 18 	l.j 2c6c <__umoddi3+0x708>
    1410:	05 06 00 05 	l.jal 4181424 <_end+0x40fc5f8>
    1414:	02 00 00 00 	l.j f8001414 <_end+0xf7f7c5e8>
    1418:	00 06 01 05 	l.j 18182c <_end+0xfca00>
    141c:	09 00 05 02 	l.adrp r8,a04000 <_end+0x97f1d4>
    1420:	00 00 00 00 	l.j 1420 <_vsnprintf+0x2dc>
    1424:	00 02 04 03 	l.j 82430 <frameBuffer+0x7d608>
    1428:	19 05 04 00 	*inconnu*
    142c:	05 02 00 00 	l.jal 408142c <_end+0x3ffc600>
    1430:	00 00 00 02 	l.j 1438 <_vsnprintf+0x2f4>
    1434:	04 15 06 01 	l.jal 542c38 <_end+0x4bde0c>
    1438:	05 04 00 05 	l.jal 410144c <_end+0x407c620>
    143c:	02 00 00 00 	l.j f800143c <_end+0xf7f7c610>
    1440:	00 00 02 04 	l.j 1c50 <memcpy+0xc4>
    1444:	16 06 01 05 	*inconnu*
    1448:	04 00 05 02 	l.jal 2850 <__umoddi3+0x2ec>
    144c:	00 00 00 00 	l.j 144c <_vsnprintf+0x308>
    1450:	00 02 04 00 	l.j 82450 <frameBuffer+0x7d628>
    1454:	19 05 07 00 	*inconnu*
    1458:	05 02 00 00 	l.jal 4081458 <_end+0x3ffc62c>
    145c:	00 00 00 02 	l.j 1464 <_vsnprintf+0x320>
    1460:	04 16 06 15 	l.jal 582cb4 <_end+0x4fde88>
    1464:	05 04 00 05 	l.jal 4101478 <_end+0x407c64c>
    1468:	02 00 00 00 	l.j f8001468 <_end+0xf7f7c63c>
    146c:	00 00 02 04 	l.j 1c7c <memcpy+0xf0>
    1470:	00 19 05 04 	l.j 642880 <_end+0x5bda54>
    1474:	00 05 02 00 	l.j 141c74 <_end+0xbce48>
    1478:	00 00 00 06 	l.j 1490 <_vsnprintf+0x34c>
    147c:	01 05 07 00 	l.j 414307c <_end+0x40be250>
    1480:	05 02 00 00 	l.jal 4081480 <_end+0x3ffc654>
    1484:	00 00 06 20 	l.j 2d04 <__clz_tab+0x1c>
    1488:	05 08 00 05 	l.jal 420149c <_end+0x417c670>
    148c:	02 00 00 00 	l.j f800148c <_end+0xf7f7c660>
    1490:	00 06 2a 05 	l.j 18bca4 <_end+0x106e78>
    1494:	04 00 05 02 	l.jal 289c <__umoddi3+0x338>
    1498:	00 00 00 00 	l.j 1498 <_vsnprintf+0x354>
    149c:	03 6d 01 05 	l.j fdb418b0 <_end+0xfdabca84>
    14a0:	0b 00 05 02 	l.adrp r24,a04000 <_end+0x97f1d4>
    14a4:	00 00 00 00 	l.j 14a4 <_vsnprintf+0x360>
    14a8:	06 18 05 08 	l.jal f86028c8 <_end+0xf857da9c>
    14ac:	00 05 02 00 	l.j 141cac <_end+0xbce80>
    14b0:	00 00 00 06 	l.j 14c8 <_vsnprintf+0x384>
    14b4:	29 05 04 00 	*inconnu*
    14b8:	05 02 00 00 	l.jal 40814b8 <_end+0x3ffc68c>
    14bc:	00 00 00 02 	l.j 14c4 <_vsnprintf+0x380>
    14c0:	04 13 06 12 	l.jal 4c2d08 <_end+0x43dedc>
    14c4:	05 08 00 05 	l.jal 42014d8 <_end+0x417c6ac>
    14c8:	02 00 00 00 	l.j f80014c8 <_end+0xf7f7c69c>
    14cc:	00 00 02 04 	l.j 1cdc <memcpy+0x150>
    14d0:	00 1c 05 04 	l.j 7028e0 <_end+0x67dab4>
    14d4:	00 05 02 00 	l.j 141cd4 <_end+0xbcea8>
    14d8:	00 00 00 01 	l.j 14dc <_vsnprintf+0x398>
    14dc:	05 04 00 05 	l.jal 41014f0 <_end+0x407c6c4>
    14e0:	02 00 00 00 	l.j f80014e0 <_end+0xf7f7c6b4>
    14e4:	00 01 05 04 	l.j 428f4 <frameBuffer+0x3dacc>
    14e8:	00 05 02 00 	l.j 141ce8 <_end+0xbcebc>
    14ec:	00 00 00 01 	l.j 14f0 <_vsnprintf+0x3ac>
    14f0:	05 04 00 05 	l.jal 4101504 <_end+0x407c6d8>
    14f4:	02 00 00 00 	l.j f80014f4 <_end+0xf7f7c6c8>
    14f8:	00 01 05 04 	l.j 42908 <frameBuffer+0x3dae0>
    14fc:	00 05 02 00 	l.j 141cfc <_end+0xbced0>
    1500:	00 00 00 01 	l.j 1504 <_vsnprintf+0x3c0>
    1504:	05 04 00 05 	l.jal 4101518 <_end+0x407c6ec>
    1508:	02 00 00 00 	l.j f8001508 <_end+0xf7f7c6dc>
    150c:	00 00 02 04 	l.j 1d1c <memcpy+0x190>
    1510:	01 01 05 04 	l.j 4042920 <_end+0x3fbdaf4>
    1514:	00 05 02 00 	l.j 141d14 <_end+0xbcee8>
    1518:	00 00 00 00 	l.j 1518 <_vsnprintf+0x3d4>
    151c:	02 04 02 01 	l.j f8101d20 <_end+0xf807cef4>
    1520:	05 04 00 05 	l.jal 4101534 <_end+0x407c708>
    1524:	02 00 00 00 	l.j f8001524 <_end+0xf7f7c6f8>
    1528:	00 01 05 04 	l.j 42938 <frameBuffer+0x3db10>
    152c:	00 05 02 00 	l.j 141d2c <_end+0xbcf00>
    1530:	00 00 00 01 	l.j 1534 <_vsnprintf+0x3f0>
    1534:	05 04 00 05 	l.jal 4101548 <_end+0x407c71c>
    1538:	02 00 00 00 	l.j f8001538 <_end+0xf7f7c70c>
    153c:	00 00 02 04 	l.j 1d4c <memcpy+0x1c0>
    1540:	03 01 05 04 	l.j fc042950 <_end+0xfbfbdb24>
    1544:	00 05 02 00 	l.j 141d44 <_end+0xbcf18>
    1548:	00 00 00 01 	l.j 154c <_vsnprintf+0x408>
    154c:	05 04 00 05 	l.jal 4101560 <_end+0x407c734>
    1550:	02 00 00 00 	l.j f8001550 <_end+0xf7f7c724>
    1554:	00 00 02 04 	l.j 1d64 <memcpy+0x1d8>
    1558:	05 01 05 04 	l.jal 4042968 <_end+0x3fbdb3c>
    155c:	00 05 02 00 	l.j 141d5c <_end+0xbcf30>
    1560:	00 00 00 00 	l.j 1560 <_vsnprintf+0x41c>
    1564:	02 04 09 01 	l.j f8103968 <_end+0xf807eb3c>
    1568:	05 04 00 05 	l.jal 410157c <_end+0x407c750>
    156c:	02 00 00 00 	l.j f800156c <_end+0xf7f7c740>
    1570:	00 01 05 04 	l.j 42980 <frameBuffer+0x3db58>
    1574:	00 05 02 00 	l.j 141d74 <_end+0xbcf48>
    1578:	00 00 00 00 	l.j 1578 <_vsnprintf+0x434>
    157c:	02 04 0a 01 	l.j f8103d80 <_end+0xf807ef54>
    1580:	05 04 00 05 	l.jal 4101594 <_end+0x407c768>
    1584:	02 00 00 00 	l.j f8001584 <_end+0xf7f7c758>
    1588:	00 00 02 04 	l.j 1d98 <memcpy+0x20c>
    158c:	0b 01 05 04 	l.adrp r24,20a08000 <_end+0x209831d4>
    1590:	00 05 02 00 	l.j 141d90 <_end+0xbcf64>
    1594:	00 00 00 01 	l.j 1598 <_vsnprintf+0x454>
    1598:	05 04 00 05 	l.jal 41015ac <_end+0x407c780>
    159c:	02 00 00 00 	l.j f800159c <_end+0xf7f7c770>
    15a0:	00 01 05 04 	l.j 429b0 <frameBuffer+0x3db88>
    15a4:	00 05 02 00 	l.j 141da4 <_end+0xbcf78>
    15a8:	00 00 00 00 	l.j 15a8 <_vsnprintf+0x464>
    15ac:	02 04 0c 01 	l.j f81045b0 <_end+0xf807f784>
    15b0:	05 04 00 05 	l.jal 41015c4 <_end+0x407c798>
    15b4:	02 00 00 00 	l.j f80015b4 <_end+0xf7f7c788>
    15b8:	00 01 05 04 	l.j 429c8 <frameBuffer+0x3dba0>
    15bc:	00 05 02 00 	l.j 141dbc <_end+0xbcf90>
    15c0:	00 00 00 00 	l.j 15c0 <_vsnprintf+0x47c>
    15c4:	02 04 0e 01 	l.j f8104dc8 <_end+0xf807ff9c>
    15c8:	05 04 00 05 	l.jal 41015dc <_end+0x407c7b0>
    15cc:	02 00 00 00 	l.j f80015cc <_end+0xf7f7c7a0>
    15d0:	00 00 02 04 	l.j 1de0 <memset+0x14>
    15d4:	10 01 05 04 	l.bf 429e4 <frameBuffer+0x3dbbc>
    15d8:	00 05 02 00 	l.j 141dd8 <_end+0xbcfac>
    15dc:	00 00 00 00 	l.j 15dc <_vsnprintf+0x498>
    15e0:	02 04 12 01 	l.j f8105de4 <_end+0xf8080fb8>
    15e4:	05 04 00 05 	l.jal 41015f8 <_end+0x407c7cc>
    15e8:	02 00 00 00 	l.j f80015e8 <_end+0xf7f7c7bc>
    15ec:	00 01 05 04 	l.j 429fc <frameBuffer+0x3dbd4>
    15f0:	00 05 02 00 	l.j 141df0 <_end+0xbcfc4>
    15f4:	00 00 00 01 	l.j 15f8 <_vsnprintf+0x4b4>
    15f8:	05 04 00 05 	l.jal 410160c <_end+0x407c7e0>
    15fc:	02 00 00 00 	l.j f80015fc <_end+0xf7f7c7d0>
    1600:	00 00 02 04 	l.j 1e10 <uart_init+0x14>
    1604:	13 01 05 04 	l.bf fc042a14 <_end+0xfbfbdbe8>
    1608:	00 05 02 00 	l.j 141e08 <_end+0xbcfdc>
    160c:	00 00 00 00 	l.j 160c <_vsnprintf+0x4c8>
    1610:	02 04 00 1c 	l.j f8101680 <_end+0xf807c854>
    1614:	05 07 00 05 	l.jal 41c1628 <_end+0x413c7fc>
    1618:	02 00 00 00 	l.j f8001618 <_end+0xf7f7c7ec>
    161c:	00 19 05 04 	l.j 642a2c <_end+0x5bdc00>
    1620:	00 05 02 00 	l.j 141e20 <_end+0xbcff4>
    1624:	00 00 00 18 	l.j 1684 <_vsnprintf+0x540>
    1628:	05 04 00 05 	l.jal 410163c <_end+0x407c810>
    162c:	02 00 00 00 	l.j f800162c <_end+0xf7f7c800>
    1630:	00 18 05 04 	l.j 602a40 <_end+0x57dc14>
    1634:	00 05 02 00 	l.j 141e34 <_end+0xbd008>
    1638:	00 00 00 06 	l.j 1650 <_vsnprintf+0x50c>
    163c:	01 05 0c 00 	l.j 414463c <_end+0x40bf810>
    1640:	05 02 00 00 	l.jal 4081640 <_end+0x3ffc814>
    1644:	00 00 06 9c 	l.j 30b4 <__clz_tab+0x3cc>
    1648:	05 05 00 05 	l.jal 414165c <_end+0x40bc830>
    164c:	02 00 00 00 	l.j f800164c <_end+0xf7f7c820>
    1650:	00 06 01 05 	l.j 181a64 <_end+0xfcc38>
    1654:	0d 00 05 02 	l.bnf 4002a5c <_end+0x3f7dc30>
    1658:	00 00 00 00 	l.j 1658 <_vsnprintf+0x514>
    165c:	06 14 05 05 	l.jal f8502a70 <_end+0xf847dc44>
    1660:	00 05 02 00 	l.j 141e60 <_end+0xbd034>
    1664:	00 00 00 06 	l.j 167c <_vsnprintf+0x538>
    1668:	18 05 0d 00 	*inconnu*
    166c:	05 02 00 00 	l.jal 408166c <_end+0x3ffc840>
    1670:	00 00 16 05 	l.j 6e84 <frameBuffer+0x205c>
    1674:	07 00 05 02 	l.jal fc002a7c <_end+0xfbf7dc50>
    1678:	00 00 00 00 	l.j 1678 <_vsnprintf+0x534>
    167c:	00 02 04 03 	l.j 82688 <frameBuffer+0x7d860>
    1680:	03 bf 7e 01 	l.j fefe0e84 <_end+0xfef5c058>
    1684:	05 04 00 05 	l.jal 4101698 <_end+0x407c86c>
    1688:	02 00 00 00 	l.j f8001688 <_end+0xf7f7c85c>
    168c:	00 00 02 04 	l.j 1e9c <uart_putc+0x24>
    1690:	00 06 2f 05 	l.j 18d2a4 <_end+0x108478>
    1694:	04 00 05 02 	l.jal 2a9c <__umoddi3+0x538>
    1698:	00 00 00 00 	l.j 1698 <_vsnprintf+0x554>
    169c:	01 05 04 00 	l.j 414269c <_end+0x40bd870>
    16a0:	05 02 00 00 	l.jal 40816a0 <_end+0x3ffc874>
    16a4:	00 00 01 05 	l.j 1ab8 <sprintf_+0x10>
    16a8:	04 00 05 02 	l.jal 2ab0 <__umoddi3+0x54c>
    16ac:	00 00 00 00 	l.j 16ac <_vsnprintf+0x568>
    16b0:	01 05 04 00 	l.j 41426b0 <_end+0x40bd884>
    16b4:	05 02 00 00 	l.jal 40816b4 <_end+0x3ffc888>
    16b8:	00 00 00 02 	l.j 16c0 <_vsnprintf+0x57c>
    16bc:	04 01 01 05 	l.jal 41ad0 <frameBuffer+0x3cca8>
    16c0:	04 00 05 02 	l.jal 2ac8 <__umoddi3+0x564>
    16c4:	00 00 00 00 	l.j 16c4 <_vsnprintf+0x580>
    16c8:	00 02 04 04 	l.j 826d8 <frameBuffer+0x7d8b0>
    16cc:	06 01 05 04 	l.jal f8042adc <_end+0xf7fbdcb0>
    16d0:	00 05 02 00 	l.j 141ed0 <_end+0xbd0a4>
    16d4:	00 00 00 00 	l.j 16d4 <_vsnprintf+0x590>
    16d8:	02 04 0a 01 	l.j f8103edc <_end+0xf807f0b0>
    16dc:	05 04 00 05 	l.jal 41016f0 <_end+0x407c8c4>
    16e0:	02 00 00 00 	l.j f80016e0 <_end+0xf7f7c8b4>
    16e4:	00 00 02 04 	l.j 1ef4 <uart_puts+0x3c>
    16e8:	03 58 05 04 	l.j fd602af8 <_end+0xfd57dccc>
    16ec:	00 05 02 00 	l.j 141eec <_end+0xbd0c0>
    16f0:	00 00 00 00 	l.j 16f0 <_vsnprintf+0x5ac>
    16f4:	02 04 00 06 	l.j f810170c <_end+0xf807c8e0>
    16f8:	03 51 01 05 	l.j fd441b0c <_end+0xfd3bcce0>
    16fc:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1700:	00 00 00 00 	l.j 1700 <_vsnprintf+0x5bc>
    1704:	19 05 08 00 	*inconnu*
    1708:	05 02 00 00 	l.jal 4081708 <_end+0x3ffc8dc>
    170c:	00 00 06 1c 	l.j 2f7c <__clz_tab+0x294>
    1710:	05 08 00 05 	l.jal 4201724 <_end+0x417c8f8>
    1714:	02 00 00 00 	l.j f8001714 <_end+0xf7f7c8e8>
    1718:	00 12 05 0b 	l.j 482b44 <_end+0x3fdd18>
    171c:	00 05 02 00 	l.j 141f1c <_end+0xbd0f0>
    1720:	00 00 00 06 	l.j 1738 <_vsnprintf+0x5f4>
    1724:	18 05 08 00 	*inconnu*
    1728:	05 02 00 00 	l.jal 4081728 <_end+0x3ffc8fc>
    172c:	00 00 06 01 	l.j 2f30 <__clz_tab+0x248>
    1730:	05 0b 00 05 	l.jal 42c1744 <_end+0x423c918>
    1734:	02 00 00 00 	l.j f8001734 <_end+0xf7f7c908>
    1738:	00 06 18 05 	l.j 18774c <_end+0x102920>
    173c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1740:	00 00 00 00 	l.j 1740 <_vsnprintf+0x5fc>
    1744:	06 1a 05 08 	l.jal f8682b64 <_end+0xf85fdd38>
    1748:	00 05 02 00 	l.j 141f48 <_end+0xbd11c>
    174c:	00 00 00 14 	l.j 179c <_vsnprintf+0x658>
    1750:	05 11 00 05 	l.jal 4441764 <_end+0x43bc938>
    1754:	02 00 00 00 	l.j f8001754 <_end+0xf7f7c928>
    1758:	00 01 05 1e 	l.j 42bd0 <frameBuffer+0x3dda8>
    175c:	00 05 02 00 	l.j 141f5c <_end+0xbd130>
    1760:	00 00 00 1a 	l.j 17c8 <_vsnprintf+0x684>
    1764:	05 08 00 05 	l.jal 4201778 <_end+0x417c94c>
    1768:	02 00 00 00 	l.j f8001768 <_end+0xf7f7c93c>
    176c:	00 14 05 0b 	l.j 502b98 <_end+0x47dd6c>
    1770:	00 05 02 00 	l.j 141f70 <_end+0xbd144>
    1774:	00 00 00 06 	l.j 178c <_vsnprintf+0x648>
    1778:	18 05 08 00 	*inconnu*
    177c:	05 02 00 00 	l.jal 408177c <_end+0x3ffc950>
    1780:	00 00 00 02 	l.j 1788 <_vsnprintf+0x644>
    1784:	04 02 06 19 	l.jal 82fe8 <frameBuffer+0x7e1c0>
    1788:	05 08 00 05 	l.jal 420179c <_end+0x417c970>
    178c:	02 00 00 00 	l.j f800178c <_end+0xf7f7c960>
    1790:	00 00 02 04 	l.j 1fa0 <vga_puts+0x28>
    1794:	00 01 05 08 	l.j 42bb4 <frameBuffer+0x3dd8c>
    1798:	00 05 02 00 	l.j 141f98 <_end+0xbd16c>
    179c:	00 00 00 00 	l.j 179c <_vsnprintf+0x658>
    17a0:	02 04 02 01 	l.j f8101fa4 <_end+0xf807d178>
    17a4:	05 08 00 05 	l.jal 42017b8 <_end+0x417c98c>
    17a8:	02 00 00 00 	l.j f80017a8 <_end+0xf7f7c97c>
    17ac:	00 00 02 04 	l.j 1fbc <__udivdi3+0x14>
    17b0:	00 06 01 05 	l.j 181bc4 <_end+0xfcd98>
    17b4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    17b8:	00 00 00 00 	l.j 17b8 <_vsnprintf+0x674>
    17bc:	01 05 08 00 	l.j 41437bc <_end+0x40be990>
    17c0:	05 02 00 00 	l.jal 40817c0 <_end+0x3ffc994>
    17c4:	00 00 01 05 	l.j 1bd8 <memcpy+0x4c>
    17c8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    17cc:	00 00 00 00 	l.j 17cc <_vsnprintf+0x688>
    17d0:	01 05 08 00 	l.j 41437d0 <_end+0x40be9a4>
    17d4:	05 02 00 00 	l.jal 40817d4 <_end+0x3ffc9a8>
    17d8:	00 00 01 05 	l.j 1bec <memcpy+0x60>
    17dc:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    17e0:	00 00 00 00 	l.j 17e0 <_vsnprintf+0x69c>
    17e4:	01 05 08 00 	l.j 41437e4 <_end+0x40be9b8>
    17e8:	05 02 00 00 	l.jal 40817e8 <_end+0x3ffc9bc>
    17ec:	00 00 00 02 	l.j 17f4 <_vsnprintf+0x6b0>
    17f0:	04 01 01 05 	l.jal 41c04 <frameBuffer+0x3cddc>
    17f4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    17f8:	00 00 00 00 	l.j 17f8 <_vsnprintf+0x6b4>
    17fc:	00 02 04 02 	l.j 82804 <frameBuffer+0x7d9dc>
    1800:	01 05 08 00 	l.j 4143800 <_end+0x40be9d4>
    1804:	05 02 00 00 	l.jal 4081804 <_end+0x3ffc9d8>
    1808:	00 00 01 05 	l.j 1c1c <memcpy+0x90>
    180c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1810:	00 00 00 00 	l.j 1810 <_vsnprintf+0x6cc>
    1814:	01 05 08 00 	l.j 4143814 <_end+0x40be9e8>
    1818:	05 02 00 00 	l.jal 4081818 <_end+0x3ffc9ec>
    181c:	00 00 00 02 	l.j 1824 <_vsnprintf+0x6e0>
    1820:	04 03 01 05 	l.jal c1c34 <_end+0x3ce08>
    1824:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1828:	00 00 00 00 	l.j 1828 <_vsnprintf+0x6e4>
    182c:	01 05 08 00 	l.j 414382c <_end+0x40bea00>
    1830:	05 02 00 00 	l.jal 4081830 <_end+0x3ffca04>
    1834:	00 00 00 02 	l.j 183c <_vsnprintf+0x6f8>
    1838:	04 05 01 05 	l.jal 141c4c <_end+0xbce20>
    183c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1840:	00 00 00 00 	l.j 1840 <_vsnprintf+0x6fc>
    1844:	00 02 04 07 	l.j 82860 <frameBuffer+0x7da38>
    1848:	01 05 08 00 	l.j 4143848 <_end+0x40bea1c>
    184c:	05 02 00 00 	l.jal 408184c <_end+0x3ffca20>
    1850:	00 00 00 02 	l.j 1858 <_vsnprintf+0x714>
    1854:	04 09 01 05 	l.jal 241c68 <_end+0x1bce3c>
    1858:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    185c:	00 00 00 00 	l.j 185c <_vsnprintf+0x718>
    1860:	01 05 08 00 	l.j 4143860 <_end+0x40bea34>
    1864:	05 02 00 00 	l.jal 4081864 <_end+0x3ffca38>
    1868:	00 00 00 02 	l.j 1870 <_vsnprintf+0x72c>
    186c:	04 0a 01 05 	l.jal 281c80 <_end+0x1fce54>
    1870:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1874:	00 00 00 00 	l.j 1874 <_vsnprintf+0x730>
    1878:	00 02 04 0b 	l.j 828a4 <frameBuffer+0x7da7c>
    187c:	01 05 08 00 	l.j 414387c <_end+0x40bea50>
    1880:	05 02 00 00 	l.jal 4081880 <_end+0x3ffca54>
    1884:	00 00 01 05 	l.j 1c98 <memcpy+0x10c>
    1888:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    188c:	00 00 00 00 	l.j 188c <_vsnprintf+0x748>
    1890:	01 05 08 00 	l.j 4143890 <_end+0x40bea64>
    1894:	05 02 00 00 	l.jal 4081894 <_end+0x3ffca68>
    1898:	00 00 00 02 	l.j 18a0 <_vsnprintf+0x75c>
    189c:	04 0c 01 05 	l.jal 301cb0 <_end+0x27ce84>
    18a0:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    18a4:	00 00 00 00 	l.j 18a4 <_vsnprintf+0x760>
    18a8:	01 05 08 00 	l.j 41438a8 <_end+0x40bea7c>
    18ac:	05 02 00 00 	l.jal 40818ac <_end+0x3ffca80>
    18b0:	00 00 00 02 	l.j 18b8 <_vsnprintf+0x774>
    18b4:	04 0e 01 05 	l.jal 381cc8 <_end+0x2fce9c>
    18b8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    18bc:	00 00 00 00 	l.j 18bc <_vsnprintf+0x778>
    18c0:	00 02 04 10 	l.j 82900 <frameBuffer+0x7dad8>
    18c4:	01 05 08 00 	l.j 41438c4 <_end+0x40bea98>
    18c8:	05 02 00 00 	l.jal 40818c8 <_end+0x3ffca9c>
    18cc:	00 00 00 02 	l.j 18d4 <_vsnprintf+0x790>
    18d0:	04 12 01 05 	l.jal 481ce4 <_end+0x3fceb8>
    18d4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    18d8:	00 00 00 00 	l.j 18d8 <_vsnprintf+0x794>
    18dc:	01 05 08 00 	l.j 41438dc <_end+0x40beab0>
    18e0:	05 02 00 00 	l.jal 40818e0 <_end+0x3ffcab4>
    18e4:	00 00 01 05 	l.j 1cf8 <memcpy+0x16c>
    18e8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    18ec:	00 00 00 00 	l.j 18ec <_vsnprintf+0x7a8>
    18f0:	00 02 04 00 	l.j 828f0 <frameBuffer+0x7dac8>
    18f4:	5d 05 08 00 	*inconnu*
    18f8:	05 02 00 00 	l.jal 40818f8 <_end+0x3ffcacc>
    18fc:	00 00 1a 05 	l.j 8110 <frameBuffer+0x32e8>
    1900:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1904:	00 00 00 00 	l.j 1904 <_vsnprintf+0x7c0>
    1908:	19 05 08 00 	*inconnu*
    190c:	05 02 00 00 	l.jal 408190c <_end+0x3ffcae0>
    1910:	00 00 06 01 	l.j 3114 <__clz_tab+0x42c>
    1914:	05 1e 00 05 	l.jal 4781928 <_end+0x46fcafc>
    1918:	02 00 00 00 	l.j f8001918 <_end+0xf7f7caec>
    191c:	00 01 05 11 	l.j 42d60 <frameBuffer+0x3df38>
    1920:	00 05 02 00 	l.j 142120 <_end+0xbd2f4>
    1924:	00 00 00 1d 	l.j 1998 <_vsnprintf+0x854>
    1928:	05 08 00 05 	l.jal 420193c <_end+0x417cb10>
    192c:	02 00 00 00 	l.j f800192c <_end+0xf7f7cb00>
    1930:	00 11 05 0b 	l.j 442d5c <_end+0x3bdf30>
    1934:	00 05 02 00 	l.j 142134 <_end+0xbd308>
    1938:	00 00 00 06 	l.j 1950 <_vsnprintf+0x80c>
    193c:	18 05 08 00 	*inconnu*
    1940:	05 02 00 00 	l.jal 4081940 <_end+0x3ffcb14>
    1944:	00 00 06 18 	l.j 31a4 <__clz_tab+0x4bc>
    1948:	05 0b 00 05 	l.jal 42c195c <_end+0x423cb30>
    194c:	02 00 00 00 	l.j f800194c <_end+0xf7f7cb20>
    1950:	00 1b 05 08 	l.j 6c2d70 <_end+0x63df44>
    1954:	00 05 02 00 	l.j 142154 <_end+0xbd328>
    1958:	00 00 00 14 	l.j 19a8 <_vsnprintf+0x864>
    195c:	05 11 00 05 	l.jal 4441970 <_end+0x43bcb44>
    1960:	02 00 00 00 	l.j f8001960 <_end+0xf7f7cb34>
    1964:	00 01 05 1e 	l.j 42ddc <frameBuffer+0x3dfb4>
    1968:	00 05 02 00 	l.j 142168 <_end+0xbd33c>
    196c:	00 00 00 1a 	l.j 19d4 <_vsnprintf+0x890>
    1970:	05 08 00 05 	l.jal 4201984 <_end+0x417cb58>
    1974:	02 00 00 00 	l.j f8001974 <_end+0xf7f7cb48>
    1978:	00 14 05 0b 	l.j 502da4 <_end+0x47df78>
    197c:	00 05 02 00 	l.j 14217c <_end+0xbd350>
    1980:	00 00 00 00 	l.j 1980 <_vsnprintf+0x83c>
    1984:	02 04 02 1a 	l.j f81021ec <_end+0xf807d3c0>
    1988:	05 08 00 05 	l.jal 420199c <_end+0x417cb70>
    198c:	02 00 00 00 	l.j f800198c <_end+0xf7f7cb60>
    1990:	00 00 02 04 	l.j 21a0 <__udivdi3+0x1f8>
    1994:	00 01 05 08 	l.j 42db4 <frameBuffer+0x3df8c>
    1998:	00 05 02 00 	l.j 142198 <_end+0xbd36c>
    199c:	00 00 00 00 	l.j 199c <_vsnprintf+0x858>
    19a0:	02 04 02 01 	l.j f81021a4 <_end+0xf807d378>
    19a4:	05 08 00 05 	l.jal 42019b8 <_end+0x417cb8c>
    19a8:	02 00 00 00 	l.j f80019a8 <_end+0xf7f7cb7c>
    19ac:	00 00 02 04 	l.j 21bc <__udivdi3+0x214>
    19b0:	00 12 05 0b 	l.j 482ddc <_end+0x3fdfb0>
    19b4:	00 05 02 00 	l.j 1421b4 <_end+0xbd388>
    19b8:	00 00 00 06 	l.j 19d0 <_vsnprintf+0x88c>
    19bc:	18 05 08 00 	*inconnu*
    19c0:	05 02 00 00 	l.jal 40819c0 <_end+0x3ffcb94>
    19c4:	00 00 18 05 	l.j 79d8 <frameBuffer+0x2bb0>
    19c8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    19cc:	00 00 00 00 	l.j 19cc <_vsnprintf+0x888>
    19d0:	18 05 08 00 	*inconnu*
    19d4:	05 02 00 00 	l.jal 40819d4 <_end+0x3ffcba8>
    19d8:	00 00 19 05 	l.j 7dec <frameBuffer+0x2fc4>
    19dc:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    19e0:	00 00 00 00 	l.j 19e0 <_vsnprintf+0x89c>
    19e4:	01 05 08 00 	l.j 41439e4 <_end+0x40bebb8>
    19e8:	05 02 00 00 	l.jal 40819e8 <_end+0x3ffcbbc>
    19ec:	00 00 01 05 	l.j 1e00 <uart_init+0x4>
    19f0:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    19f4:	00 00 00 00 	l.j 19f4 <_vsnprintf+0x8b0>
    19f8:	01 05 08 00 	l.j 41439f8 <_end+0x40bebcc>
    19fc:	05 02 00 00 	l.jal 40819fc <_end+0x3ffcbd0>
    1a00:	00 00 01 05 	l.j 1e14 <uart_init+0x18>
    1a04:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a08:	00 00 00 00 	l.j 1a08 <_vsnprintf+0x8c4>
    1a0c:	01 05 08 00 	l.j 4143a0c <_end+0x40bebe0>
    1a10:	05 02 00 00 	l.jal 4081a10 <_end+0x3ffcbe4>
    1a14:	00 00 00 02 	l.j 1a1c <_vsnprintf+0x8d8>
    1a18:	04 01 01 05 	l.jal 41e2c <frameBuffer+0x3d004>
    1a1c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a20:	00 00 00 00 	l.j 1a20 <_vsnprintf+0x8dc>
    1a24:	00 02 04 02 	l.j 82a2c <frameBuffer+0x7dc04>
    1a28:	01 05 08 00 	l.j 4143a28 <_end+0x40bebfc>
    1a2c:	05 02 00 00 	l.jal 4081a2c <_end+0x3ffcc00>
    1a30:	00 00 01 05 	l.j 1e44 <uart_wait_rx+0x24>
    1a34:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a38:	00 00 00 00 	l.j 1a38 <_vsnprintf+0x8f4>
    1a3c:	01 05 08 00 	l.j 4143a3c <_end+0x40bec10>
    1a40:	05 02 00 00 	l.jal 4081a40 <_end+0x3ffcc14>
    1a44:	00 00 00 02 	l.j 1a4c <_vsnprintf+0x908>
    1a48:	04 03 01 05 	l.jal c1e5c <_end+0x3d030>
    1a4c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a50:	00 00 00 00 	l.j 1a50 <_vsnprintf+0x90c>
    1a54:	01 05 08 00 	l.j 4143a54 <_end+0x40bec28>
    1a58:	05 02 00 00 	l.jal 4081a58 <_end+0x3ffcc2c>
    1a5c:	00 00 00 02 	l.j 1a64 <_vsnprintf+0x920>
    1a60:	04 05 01 05 	l.jal 141e74 <_end+0xbd048>
    1a64:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a68:	00 00 00 00 	l.j 1a68 <_vsnprintf+0x924>
    1a6c:	00 02 04 07 	l.j 82a88 <frameBuffer+0x7dc60>
    1a70:	01 05 08 00 	l.j 4143a70 <_end+0x40bec44>
    1a74:	05 02 00 00 	l.jal 4081a74 <_end+0x3ffcc48>
    1a78:	00 00 00 02 	l.j 1a80 <printf_+0x8>
    1a7c:	04 09 01 05 	l.jal 241e90 <_end+0x1bd064>
    1a80:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a84:	00 00 00 00 	l.j 1a84 <printf_+0xc>
    1a88:	01 05 08 00 	l.j 4143a88 <_end+0x40bec5c>
    1a8c:	05 02 00 00 	l.jal 4081a8c <_end+0x3ffcc60>
    1a90:	00 00 00 02 	l.j 1a98 <printf_+0x20>
    1a94:	04 0a 01 05 	l.jal 281ea8 <_end+0x1fd07c>
    1a98:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1a9c:	00 00 00 00 	l.j 1a9c <printf_+0x24>
    1aa0:	00 02 04 0b 	l.j 82acc <frameBuffer+0x7dca4>
    1aa4:	01 05 08 00 	l.j 4143aa4 <_end+0x40bec78>
    1aa8:	05 02 00 00 	l.jal 4081aa8 <_end+0x3ffcc7c>
    1aac:	00 00 01 05 	l.j 1ec0 <uart_puts+0x8>
    1ab0:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1ab4:	00 00 00 00 	l.j 1ab4 <sprintf_+0xc>
    1ab8:	01 05 08 00 	l.j 4143ab8 <_end+0x40bec8c>
    1abc:	05 02 00 00 	l.jal 4081abc <_end+0x3ffcc90>
    1ac0:	00 00 00 02 	l.j 1ac8 <sprintf_+0x20>
    1ac4:	04 0c 01 05 	l.jal 301ed8 <_end+0x27d0ac>
    1ac8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1acc:	00 00 00 00 	l.j 1acc <sprintf_+0x24>
    1ad0:	01 05 08 00 	l.j 4143ad0 <_end+0x40beca4>
    1ad4:	05 02 00 00 	l.jal 4081ad4 <_end+0x3ffcca8>
    1ad8:	00 00 00 02 	l.j 1ae0 <snprintf_+0x8>
    1adc:	04 0e 01 05 	l.jal 381ef0 <_end+0x2fd0c4>
    1ae0:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1ae4:	00 00 00 00 	l.j 1ae4 <snprintf_+0xc>
    1ae8:	00 02 04 10 	l.j 82b28 <frameBuffer+0x7dd00>
    1aec:	01 05 08 00 	l.j 4143aec <_end+0x40becc0>
    1af0:	05 02 00 00 	l.jal 4081af0 <_end+0x3ffccc4>
    1af4:	00 00 00 02 	l.j 1afc <snprintf_+0x24>
    1af8:	04 12 01 05 	l.jal 481f0c <_end+0x3fd0e0>
    1afc:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b00:	00 00 00 00 	l.j 1b00 <snprintf_+0x28>
    1b04:	00 02 04 00 	l.j 82b04 <frameBuffer+0x7dcdc>
    1b08:	06 18 05 08 	l.jal f8602f28 <_end+0xf857e0fc>
    1b0c:	00 05 02 00 	l.j 14230c <_end+0xbd4e0>
    1b10:	00 00 00 00 	l.j 1b10 <vprintf_+0x8>
    1b14:	02 04 12 16 	l.j f810636c <_end+0xf8081540>
    1b18:	05 08 00 05 	l.jal 4201b2c <_end+0x417cd00>
    1b1c:	02 00 00 00 	l.j f8001b1c <_end+0xf7f7ccf0>
    1b20:	00 06 01 05 	l.j 181f34 <_end+0xfd108>
    1b24:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b28:	00 00 00 00 	l.j 1b28 <vprintf_+0x20>
    1b2c:	01 05 08 00 	l.j 4143b2c <_end+0x40bed00>
    1b30:	05 02 00 00 	l.jal 4081b30 <_end+0x3ffcd04>
    1b34:	00 00 01 05 	l.j 1f48 <vga_clear>
    1b38:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b3c:	00 00 00 00 	l.j 1b3c <vsnprintf_+0x4>
    1b40:	00 02 04 00 	l.j 82b40 <frameBuffer+0x7dd18>
    1b44:	18 05 08 00 	*inconnu*
    1b48:	05 02 00 00 	l.jal 4081b48 <_end+0x3ffcd1c>
    1b4c:	00 00 01 05 	l.j 1f60 <vga_textcorr+0x8>
    1b50:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b54:	00 00 00 00 	l.j 1b54 <fctprintf>
    1b58:	01 05 08 00 	l.j 4143b58 <_end+0x40bed2c>
    1b5c:	05 02 00 00 	l.jal 4081b5c <_end+0x3ffcd30>
    1b60:	00 00 01 05 	l.j 1f74 <vga_putc+0xc>
    1b64:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b68:	00 00 00 00 	l.j 1b68 <fctprintf+0x14>
    1b6c:	01 05 08 00 	l.j 4143b6c <_end+0x40bed40>
    1b70:	05 02 00 00 	l.jal 4081b70 <_end+0x3ffcd44>
    1b74:	00 00 01 05 	l.j 1f88 <vga_puts+0x10>
    1b78:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b7c:	00 00 00 00 	l.j 1b7c <fctprintf+0x28>
    1b80:	01 05 08 00 	l.j 4143b80 <_end+0x40bed54>
    1b84:	05 02 00 00 	l.jal 4081b84 <_end+0x3ffcd58>
    1b88:	00 00 01 05 	l.j 1f9c <vga_puts+0x24>
    1b8c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1b90:	00 00 00 00 	l.j 1b90 <memcpy+0x4>
    1b94:	01 05 08 00 	l.j 4143b94 <_end+0x40bed68>
    1b98:	05 02 00 00 	l.jal 4081b98 <_end+0x3ffcd6c>
    1b9c:	00 00 01 05 	l.j 1fb0 <__udivdi3+0x8>
    1ba0:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1ba4:	00 00 00 00 	l.j 1ba4 <memcpy+0x18>
    1ba8:	01 05 08 00 	l.j 4143ba8 <_end+0x40bed7c>
    1bac:	05 02 00 00 	l.jal 4081bac <_end+0x3ffcd80>
    1bb0:	00 00 01 05 	l.j 1fc4 <__udivdi3+0x1c>
    1bb4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1bb8:	00 00 00 00 	l.j 1bb8 <memcpy+0x2c>
    1bbc:	01 05 08 00 	l.j 4143bbc <_end+0x40bed90>
    1bc0:	05 02 00 00 	l.jal 4081bc0 <_end+0x3ffcd94>
    1bc4:	00 00 01 05 	l.j 1fd8 <__udivdi3+0x30>
    1bc8:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1bcc:	00 00 00 00 	l.j 1bcc <memcpy+0x40>
    1bd0:	00 02 04 01 	l.j 82bd4 <frameBuffer+0x7ddac>
    1bd4:	01 05 08 00 	l.j 4143bd4 <_end+0x40beda8>
    1bd8:	05 02 00 00 	l.jal 4081bd8 <_end+0x3ffcdac>
    1bdc:	00 00 00 02 	l.j 1be4 <memcpy+0x58>
    1be0:	04 03 01 05 	l.jal c1ff4 <_end+0x3d1c8>
    1be4:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1be8:	00 00 00 00 	l.j 1be8 <memcpy+0x5c>
    1bec:	01 05 08 00 	l.j 4143bec <_end+0x40bedc0>
    1bf0:	05 02 00 00 	l.jal 4081bf0 <_end+0x3ffcdc4>
    1bf4:	00 00 00 02 	l.j 1bfc <memcpy+0x70>
    1bf8:	04 00 06 19 	l.jal 345c <__clz_tab+0x774>
    1bfc:	05 0b 00 05 	l.jal 42c1c10 <_end+0x423cde4>
    1c00:	02 00 00 00 	l.j f8001c00 <_end+0xf7f7cdd4>
    1c04:	00 00 02 04 	l.j 2414 <__udivdi3+0x46c>
    1c08:	03 06 15 05 	l.j fc18701c <_end+0xfc1021f0>
    1c0c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1c10:	00 00 00 00 	l.j 1c10 <memcpy+0x84>
    1c14:	00 02 04 00 	l.j 82c14 <frameBuffer+0x7ddec>
    1c18:	19 05 08 00 	*inconnu*
    1c1c:	05 02 00 00 	l.jal 4081c1c <_end+0x3ffcdf0>
    1c20:	00 00 06 01 	l.j 3424 <__clz_tab+0x73c>
    1c24:	05 0b 00 05 	l.jal 42c1c38 <_end+0x423ce0c>
    1c28:	02 00 00 00 	l.j f8001c28 <_end+0xf7f7cdfc>
    1c2c:	00 00 02 04 	l.j 243c <__udivdi3+0x494>
    1c30:	01 01 05 14 	l.j 4043080 <_end+0x3fbe254>
    1c34:	00 05 02 00 	l.j 142434 <_end+0xbd608>
    1c38:	00 00 00 06 	l.j 1c50 <memcpy+0xc4>
    1c3c:	1a 05 05 00 	*inconnu*
    1c40:	05 02 00 00 	l.jal 4081c40 <_end+0x3ffce14>
    1c44:	00 00 00 02 	l.j 1c4c <memcpy+0xc0>
    1c48:	04 00 1a 05 	l.jal 845c <frameBuffer+0x3634>
    1c4c:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1c50:	00 00 00 00 	l.j 1c50 <memcpy+0xc4>
    1c54:	1a 05 08 00 	*inconnu*
    1c58:	05 02 00 00 	l.jal 4081c58 <_end+0x3ffce2c>
    1c5c:	00 00 19 05 	l.j 8070 <frameBuffer+0x3248>
    1c60:	05 00 05 02 	l.jal 4003068 <_end+0x3f7e23c>
    1c64:	00 00 00 00 	l.j 1c64 <memcpy+0xd8>
    1c68:	01 05 05 00 	l.j 4143068 <_end+0x40be23c>
    1c6c:	05 02 00 00 	l.jal 4081c6c <_end+0x3ffce40>
    1c70:	00 00 01 05 	l.j 2084 <__udivdi3+0xdc>
    1c74:	05 00 05 02 	l.jal 400307c <_end+0x3f7e250>
    1c78:	00 00 00 00 	l.j 1c78 <memcpy+0xec>
    1c7c:	01 05 05 00 	l.j 414307c <_end+0x40be250>
    1c80:	05 02 00 00 	l.jal 4081c80 <_end+0x3ffce54>
    1c84:	00 00 01 05 	l.j 2098 <__udivdi3+0xf0>
    1c88:	05 00 05 02 	l.jal 4003090 <_end+0x3f7e264>
    1c8c:	00 00 00 00 	l.j 1c8c <memcpy+0x100>
    1c90:	01 05 05 00 	l.j 4143090 <_end+0x40be264>
    1c94:	05 02 00 00 	l.jal 4081c94 <_end+0x3ffce68>
    1c98:	00 00 18 05 	l.j 7cac <frameBuffer+0x2e84>
    1c9c:	05 00 05 02 	l.jal 40030a4 <_end+0x3f7e278>
    1ca0:	00 00 00 00 	l.j 1ca0 <memcpy+0x114>
    1ca4:	06 01 05 14 	l.jal f80430f4 <_end+0xf7fbe2c8>
    1ca8:	00 05 02 00 	l.j 1424a8 <_end+0xbd67c>
    1cac:	00 00 00 01 	l.j 1cb0 <memcpy+0x124>
    1cb0:	05 20 00 05 	l.jal 4801cc4 <_end+0x477ce98>
    1cb4:	02 00 00 00 	l.j f8001cb4 <_end+0xf7f7ce88>
    1cb8:	00 06 18 05 	l.j 187ccc <_end+0x102ea0>
    1cbc:	05 00 05 02 	l.jal 40030c4 <_end+0x3f7e298>
    1cc0:	00 00 00 00 	l.j 1cc0 <memcpy+0x134>
    1cc4:	06 01 05 14 	l.jal f8043114 <_end+0xf7fbe2e8>
    1cc8:	00 05 02 00 	l.j 1424c8 <_end+0xbd69c>
    1ccc:	00 00 00 06 	l.j 1ce4 <memcpy+0x158>
    1cd0:	18 05 05 00 	*inconnu*
    1cd4:	05 02 00 00 	l.jal 4081cd4 <_end+0x3ffcea8>
    1cd8:	00 00 06 01 	l.j 34dc <__clz_tab+0x7f4>
    1cdc:	05 0d 00 05 	l.jal 4341cf0 <_end+0x42bcec4>
    1ce0:	02 00 00 00 	l.j f8001ce0 <_end+0xf7f7ceb4>
    1ce4:	00 00 02 04 	l.j 24f4 <__udivdi3+0x54c>
    1ce8:	02 03 72 01 	l.j f80de4ec <_end+0xf80596c0>
    1cec:	05 21 00 05 	l.jal 4841d00 <_end+0x47bced4>
    1cf0:	02 00 00 00 	l.j f8001cf0 <_end+0xf7f7cec4>
    1cf4:	00 00 02 04 	l.j 2504 <__udivdi3+0x55c>
    1cf8:	00 06 19 05 	l.j 18810c <_end+0x1032e0>
    1cfc:	05 00 05 02 	l.jal 4003104 <_end+0x3f7e2d8>
    1d00:	00 00 00 00 	l.j 1d00 <memcpy+0x174>
    1d04:	18 05 05 00 	*inconnu*
    1d08:	05 02 00 00 	l.jal 4081d08 <_end+0x3ffcedc>
    1d0c:	00 00 01 05 	l.j 2120 <__udivdi3+0x178>
    1d10:	05 00 05 02 	l.jal 4003118 <_end+0x3f7e2ec>
    1d14:	00 00 00 00 	l.j 1d14 <memcpy+0x188>
    1d18:	01 05 05 00 	l.j 4143118 <_end+0x40be2ec>
    1d1c:	05 02 00 00 	l.jal 4081d1c <_end+0x3ffcef0>
    1d20:	00 00 01 05 	l.j 2134 <__udivdi3+0x18c>
    1d24:	05 00 05 02 	l.jal 400312c <_end+0x3f7e300>
    1d28:	00 00 00 00 	l.j 1d28 <memcpy+0x19c>
    1d2c:	01 05 05 00 	l.j 414312c <_end+0x40be300>
    1d30:	05 02 00 00 	l.jal 4081d30 <_end+0x3ffcf04>
    1d34:	00 00 06 03 	l.j 3540 <__clz_tab+0x858>
    1d38:	5f 01 05 05 	*inconnu*
    1d3c:	00 05 02 00 	l.j 14253c <_end+0xbd710>
    1d40:	00 00 00 38 	l.j 1e20 <uart_wait_rx>
    1d44:	05 05 00 05 	l.jal 4141d58 <_end+0x40bcf2c>
    1d48:	02 00 00 00 	l.j f8001d48 <_end+0xf7f7cf1c>
    1d4c:	00 00 02 04 	l.j 255c <__udivdi3+0x5b4>
    1d50:	0c 11 05 08 	l.bnf 443170 <_end+0x3be344>
    1d54:	00 05 02 00 	l.j 142554 <_end+0xbd728>
    1d58:	00 00 00 00 	l.j 1d58 <memcpy+0x1cc>
    1d5c:	02 04 03 01 	l.j f8102960 <_end+0xf807db34>
    1d60:	05 08 00 05 	l.jal 4201d74 <_end+0x417cf48>
    1d64:	02 00 00 00 	l.j f8001d64 <_end+0xf7f7cf38>
    1d68:	00 00 02 04 	l.j 2578 <__umoddi3+0x14>
    1d6c:	07 06 03 b4 	l.jal fc182c3c <_end+0xfc0fde10>
    1d70:	7f 01 05 04 	*inconnu*
    1d74:	00 05 02 00 	l.j 142574 <_end+0xbd748>
    1d78:	00 00 00 00 	l.j 1d78 <memcpy+0x1ec>
    1d7c:	01 01 00 00 	l.j 4041d7c <_end+0x3fbcf50>
    1d80:	0d e8 00 05 	l.bnf 7a01d94 <_end+0x797cf68>
    1d84:	04 00 00 00 	l.jal 1d84 <memcpy+0x1f8>
    1d88:	00 33 01 01 	l.j cc218c <_end+0xc3d360>
    1d8c:	01 f6 f2 0d 	l.j 7dbe5c0 <_end+0x7d39794>
    1d90:	00 01 01 01 	l.j 42194 <frameBuffer+0x3d36c>
    1d94:	01 00 00 00 	l.j 4001d94 <_end+0x3f7cf68>
    1d98:	01 00 00 01 	l.j 4001d9c <_end+0x3f7cf70>
    1d9c:	01 01 1f 02 	l.j 40499a4 <_end+0x3fc4b78>
    1da0:	00 00 00 2f 	l.j 1e5c <uart_wait_tx+0x10>
    1da4:	00 00 00 7d 	l.j 1f98 <vga_puts+0x20>
    1da8:	02 01 1f 02 	l.j f80499b0 <_end+0xf7fc4b84>
    1dac:	0b 03 00 00 	l.adrp r24,60000000 <_end+0x5ff7b1d4>
    1db0:	00 00 00 00 	l.j 1db0 <memcpy+0x224>
    1db4:	00 00 1b 01 	l.j 89b8 <frameBuffer+0x3b90>
    1db8:	00 00 00 25 	l.j 1e4c <uart_wait_tx>
    1dbc:	01 00 05 02 	l.j 40031c4 <_end+0x3f7e398>
    1dc0:	00 00 1f a8 	l.j 9c60 <frameBuffer+0x4e38>
    1dc4:	03 92 0a 01 	l.j fe4845c8 <_end+0xfe3ff79c>
    1dc8:	05 01 00 05 	l.jal 4041ddc <_end+0x3fbcfb0>
    1dcc:	02 00 00 1f 	l.j f8001e48 <_end+0xf7f7d01c>
    1dd0:	a8 18 05 03 	l.ori r0,r24,0x503
    1dd4:	00 05 02 00 	l.j 1425d4 <_end+0xbd7a8>
    1dd8:	00 1f a8 03 	l.j 7ebde4 <_end+0x766fb8>
    1ddc:	d1 7d 01 05 	*inconnu*
    1de0:	03 00 05 02 	l.j fc0031e8 <_end+0xfbf7e3bc>
    1de4:	00 00 1f a8 	l.j 9c84 <frameBuffer+0x4e5c>
    1de8:	18 05 03 00 	*inconnu*
    1dec:	05 02 00 00 	l.jal 4081dec <_end+0x3ffcfc0>
    1df0:	1f a8 18 05 	*inconnu*
    1df4:	03 00 05 02 	l.j fc0031fc <_end+0xfbf7e3d0>
    1df8:	00 00 1f a8 	l.j 9c98 <frameBuffer+0x4e70>
    1dfc:	18 05 03 00 	*inconnu*
    1e00:	05 02 00 00 	l.jal 4081e00 <_end+0x3ffcfd4>
    1e04:	1f a8 18 05 	*inconnu*
    1e08:	03 00 05 02 	l.j fc003210 <_end+0xfbf7e3e4>
    1e0c:	00 00 1f a8 	l.j 9cac <frameBuffer+0x4e84>
    1e10:	18 05 03 00 	*inconnu*
    1e14:	05 02 00 00 	l.jal 4081e14 <_end+0x3ffcfe8>
    1e18:	1f a8 19 05 	*inconnu*
    1e1c:	03 00 05 02 	l.j fc003224 <_end+0xfbf7e3f8>
    1e20:	00 00 1f a8 	l.j 9cc0 <frameBuffer+0x4e98>
    1e24:	18 05 03 00 	*inconnu*
    1e28:	05 02 00 00 	l.jal 4081e28 <_end+0x3ffcffc>
    1e2c:	1f a8 18 05 	*inconnu*
    1e30:	03 00 05 02 	l.j fc003238 <_end+0xfbf7e40c>
    1e34:	00 00 1f a8 	l.j 9cd4 <frameBuffer+0x4eac>
    1e38:	06 3d 05 06 	l.jal f8f43250 <_end+0xf8ebe424>
    1e3c:	00 05 02 00 	l.j 14263c <_end+0xbd810>
    1e40:	00 1f b0 03 	l.j 7ede4c <_end+0x769020>
    1e44:	5a 01 05 06 	*inconnu*
    1e48:	00 05 02 00 	l.j 142648 <_end+0xbd81c>
    1e4c:	00 1f b4 06 	l.j 7eee64 <_end+0x76a038>
    1e50:	18 05 03 00 	*inconnu*
    1e54:	05 02 00 00 	l.jal 4081e54 <_end+0x3ffd028>
    1e58:	1f b4 3c 05 	*inconnu*
    1e5c:	03 00 05 02 	l.j fc003264 <_end+0xfbf7e438>
    1e60:	00 00 1f b4 	l.j 9d30 <frameBuffer+0x4f08>
    1e64:	06 01 05 06 	l.jal f804327c <_end+0xf7fbe450>
    1e68:	00 05 02 00 	l.j 142668 <_end+0xbd83c>
    1e6c:	00 1f bc 06 	l.j 7f0e84 <_end+0x76c058>
    1e70:	19 05 07 00 	*inconnu*
    1e74:	05 02 00 00 	l.jal 4081e74 <_end+0x3ffd048>
    1e78:	1f bc 06 01 	*inconnu*
    1e7c:	05 0a 00 05 	l.jal 4281e90 <_end+0x41fd064>
    1e80:	02 00 00 1f 	l.j f8001efc <_end+0xf7f7d0d0>
    1e84:	c8 06 1b 05 	*inconnu*
    1e88:	04 00 05 02 	l.jal 3290 <__clz_tab+0x5a8>
    1e8c:	00 00 1f c8 	l.j 9dac <frameBuffer+0x4f84>
    1e90:	01 05 04 00 	l.j 4142e90 <_end+0x40be064>
    1e94:	05 02 00 00 	l.jal 4081e94 <_end+0x3ffd068>
    1e98:	1f c8 01 05 	*inconnu*
    1e9c:	04 00 05 02 	l.jal 32a4 <__clz_tab+0x5bc>
    1ea0:	00 00 1f c8 	l.j 9dc0 <frameBuffer+0x4f98>
    1ea4:	01 05 04 00 	l.j 4142ea4 <_end+0x40be078>
    1ea8:	05 02 00 00 	l.jal 4081ea8 <_end+0x3ffd07c>
    1eac:	1f c8 00 02 	*inconnu*
    1eb0:	04 01 01 05 	l.jal 422c4 <frameBuffer+0x3d49c>
    1eb4:	04 00 05 02 	l.jal 32bc <__clz_tab+0x5d4>
    1eb8:	00 00 1f d4 	l.j 9e08 <frameBuffer+0x4fe0>
    1ebc:	00 02 04 04 	l.j 82ecc <frameBuffer+0x7e0a4>
    1ec0:	06 01 05 04 	l.jal f80432d0 <_end+0xf7fbe4a4>
    1ec4:	00 05 02 00 	l.j 1426c4 <_end+0xbd898>
    1ec8:	00 1f e8 00 	l.j 7fbec8 <_end+0x77709c>
    1ecc:	02 04 0a 01 	l.j f81046d0 <_end+0xf807f8a4>
    1ed0:	05 04 00 05 	l.jal 4101ee4 <_end+0x407d0b8>
    1ed4:	02 00 00 1f 	l.j f8001f50 <_end+0xf7f7d124>
    1ed8:	ec 00 02 04 	*inconnu*
    1edc:	15 06 01 05 	*inconnu*
    1ee0:	04 00 05 02 	l.jal 32e8 <__clz_tab+0x600>
    1ee4:	00 00 20 00 	l.j 9ee4 <frameBuffer+0x50bc>
    1ee8:	00 02 04 16 	l.j 82f40 <frameBuffer+0x7e118>
    1eec:	06 01 05 04 	l.jal f80432fc <_end+0xf7fbe4d0>
    1ef0:	00 05 02 00 	l.j 1426f0 <_end+0xbd8c4>
    1ef4:	00 20 08 00 	l.j 803ef4 <_end+0x77f0c8>
    1ef8:	02 04 00 19 	l.j f8101f5c <_end+0xf807d130>
    1efc:	05 07 00 05 	l.jal 41c1f10 <_end+0x413d0e4>
    1f00:	02 00 00 20 	l.j f8001f80 <_end+0xf7f7d154>
    1f04:	0c 00 02 04 	l.bnf 2714 <__umoddi3+0x1b0>
    1f08:	16 06 15 05 	*inconnu*
    1f0c:	04 00 05 02 	l.jal 3314 <__clz_tab+0x62c>
    1f10:	00 00 20 0c 	l.j 9f40 <frameBuffer+0x5118>
    1f14:	00 02 04 00 	l.j 82f14 <frameBuffer+0x7e0ec>
    1f18:	19 05 04 00 	*inconnu*
    1f1c:	05 02 00 00 	l.jal 4081f1c <_end+0x3ffd0f0>
    1f20:	20 0c 06 01 	*inconnu*
    1f24:	05 07 00 05 	l.jal 41c1f38 <_end+0x413d10c>
    1f28:	02 00 00 20 	l.j f8001fa8 <_end+0xf7f7d17c>
    1f2c:	14 06 1c 05 	*inconnu*
    1f30:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1f34:	00 00 20 14 	l.j 9f84 <frameBuffer+0x515c>
    1f38:	06 18 05 11 	l.jal f860337c <_end+0xf857e550>
    1f3c:	00 05 02 00 	l.j 14273c <_end+0xbd910>
    1f40:	00 20 18 01 	l.j 807f44 <_end+0x783118>
    1f44:	05 1e 00 05 	l.jal 4781f58 <_end+0x46fd12c>
    1f48:	02 00 00 20 	l.j f8001fc8 <_end+0xf7f7d19c>
    1f4c:	1c 16 05 0b 	*inconnu*
    1f50:	00 05 02 00 	l.j 142750 <_end+0xbd924>
    1f54:	00 20 20 06 	l.j 809f6c <_end+0x785140>
    1f58:	18 05 08 00 	*inconnu*
    1f5c:	05 02 00 00 	l.jal 4081f5c <_end+0x3ffd130>
    1f60:	20 20 06 01 	*inconnu*
    1f64:	05 0b 00 05 	l.jal 42c1f78 <_end+0x423d14c>
    1f68:	02 00 00 20 	l.j f8001fe8 <_end+0xf7f7d1bc>
    1f6c:	24 06 18 05 	*inconnu*
    1f70:	08 00 05 02 	l.adrp r0,a04000 <_end+0x97f1d4>
    1f74:	00 00 20 24 	l.j a004 <frameBuffer+0x51dc>
    1f78:	06 01 05 0b 	l.jal f80433a4 <_end+0xf7fbe578>
    1f7c:	00 05 02 00 	l.j 14277c <_end+0xbd950>
    1f80:	00 20 28 06 	l.j 80bf98 <_end+0x78716c>
    1f84:	1a 05 04 00 	*inconnu*
    1f88:	05 02 00 00 	l.jal 4081f88 <_end+0x3ffd15c>
    1f8c:	20 28 01 05 	*inconnu*
    1f90:	04 00 05 02 	l.jal 3398 <__clz_tab+0x6b0>
    1f94:	00 00 20 28 	l.j a034 <frameBuffer+0x520c>
    1f98:	01 05 04 00 	l.j 4142f98 <_end+0x40be16c>
    1f9c:	05 02 00 00 	l.jal 4081f9c <_end+0x3ffd170>
    1fa0:	20 28 01 05 	*inconnu*
    1fa4:	04 00 05 02 	l.jal 33ac <__clz_tab+0x6c4>
    1fa8:	00 00 20 30 	l.j a068 <frameBuffer+0x5240>
    1fac:	01 05 04 00 	l.j 4142fac <_end+0x40be180>
    1fb0:	05 02 00 00 	l.jal 4081fb0 <_end+0x3ffd184>
    1fb4:	20 3c 00 02 	*inconnu*
    1fb8:	04 02 06 01 	l.jal 837bc <frameBuffer+0x7e994>
    1fbc:	05 04 00 05 	l.jal 4101fd0 <_end+0x407d1a4>
    1fc0:	02 00 00 20 	l.j f8002040 <_end+0xf7f7d214>
    1fc4:	44 00 02 04 	*inconnu*
    1fc8:	00 01 05 04 	l.j 433d8 <frameBuffer+0x3e5b0>
    1fcc:	00 05 02 00 	l.j 1427cc <_end+0xbd9a0>
    1fd0:	00 20 48 06 	l.j 813fe8 <_end+0x78f1bc>
    1fd4:	01 05 04 00 	l.j 4142fd4 <_end+0x40be1a8>
    1fd8:	05 02 00 00 	l.jal 4081fd8 <_end+0x3ffd1ac>
    1fdc:	20 48 00 02 	*inconnu*
    1fe0:	04 01 01 05 	l.jal 423f4 <frameBuffer+0x3d5cc>
    1fe4:	04 00 05 02 	l.jal 33ec <__clz_tab+0x704>
    1fe8:	00 00 20 48 	l.j a108 <frameBuffer+0x52e0>
    1fec:	00 02 04 02 	l.j 82ff4 <frameBuffer+0x7e1cc>
    1ff0:	01 05 04 00 	l.j 4142ff0 <_end+0x40be1c4>
    1ff4:	05 02 00 00 	l.jal 4081ff4 <_end+0x3ffd1c8>
    1ff8:	20 50 01 05 	*inconnu*
    1ffc:	04 00 05 02 	l.jal 3404 <__clz_tab+0x71c>
    2000:	00 00 20 54 	l.j a150 <frameBuffer+0x5328>
    2004:	01 05 04 00 	l.j 4143004 <_end+0x40be1d8>
    2008:	05 02 00 00 	l.jal 4082008 <_end+0x3ffd1dc>
    200c:	20 60 00 02 	*inconnu*
    2010:	04 03 01 05 	l.jal c2424 <_end+0x3d5f8>
    2014:	04 00 05 02 	l.jal 341c <__clz_tab+0x734>
    2018:	00 00 20 68 	l.j a1b8 <frameBuffer+0x5390>
    201c:	01 05 04 00 	l.j 414301c <_end+0x40be1f0>
    2020:	05 02 00 00 	l.jal 4082020 <_end+0x3ffd1f4>
    2024:	20 70 00 02 	*inconnu*
    2028:	04 05 01 05 	l.jal 14243c <_end+0xbd610>
    202c:	04 00 05 02 	l.jal 3434 <__clz_tab+0x74c>
    2030:	00 00 20 7c 	l.j a220 <frameBuffer+0x53f8>
    2034:	00 02 04 03 	l.j 83040 <frameBuffer+0x7e218>
    2038:	06 01 05 04 	l.jal f8043448 <_end+0xf7fbe61c>
    203c:	00 05 02 00 	l.j 14283c <_end+0xbda10>
    2040:	00 20 80 00 	l.j 822040 <_end+0x79d214>
    2044:	02 04 09 06 	l.j f810445c <_end+0xf807f630>
    2048:	01 05 04 00 	l.j 4143048 <_end+0x40be21c>
    204c:	05 02 00 00 	l.jal 408204c <_end+0x3ffd220>
    2050:	20 84 01 05 	*inconnu*
    2054:	04 00 05 02 	l.jal 345c <__clz_tab+0x774>
    2058:	00 00 20 90 	l.j a298 <frameBuffer+0x5470>
    205c:	00 02 04 0a 	l.j 83084 <frameBuffer+0x7e25c>
    2060:	01 05 04 00 	l.j 4143060 <_end+0x40be234>
    2064:	05 02 00 00 	l.jal 4082064 <_end+0x3ffd238>
    2068:	20 90 00 02 	*inconnu*
    206c:	04 0b 01 05 	l.jal 2c2480 <_end+0x23d654>
    2070:	04 00 05 02 	l.jal 3478 <__clz_tab+0x790>
    2074:	00 00 20 a0 	l.j a2f4 <frameBuffer+0x54cc>
    2078:	01 05 04 00 	l.j 4143078 <_end+0x40be24c>
    207c:	05 02 00 00 	l.jal 408207c <_end+0x3ffd250>
    2080:	20 a4 01 05 	*inconnu*
    2084:	04 00 05 02 	l.jal 348c <__clz_tab+0x7a4>
    2088:	00 00 20 b0 	l.j a348 <frameBuffer+0x5520>
    208c:	00 02 04 0c 	l.j 830bc <frameBuffer+0x7e294>
    2090:	01 05 04 00 	l.j 4143090 <_end+0x40be264>
    2094:	05 02 00 00 	l.jal 4082094 <_end+0x3ffd268>
    2098:	20 b4 01 05 	*inconnu*
    209c:	04 00 05 02 	l.jal 34a4 <__clz_tab+0x7bc>
    20a0:	00 00 20 bc 	l.j a390 <frameBuffer+0x5568>
    20a4:	00 02 04 0e 	l.j 830dc <frameBuffer+0x7e2b4>
    20a8:	01 05 04 00 	l.j 41430a8 <_end+0x40be27c>
    20ac:	05 02 00 00 	l.jal 40820ac <_end+0x3ffd280>
    20b0:	20 c8 00 02 	*inconnu*
    20b4:	04 0c 06 01 	l.jal 3038b8 <_end+0x27ea8c>
    20b8:	05 04 00 05 	l.jal 41020cc <_end+0x407d2a0>
    20bc:	02 00 00 20 	l.j f800213c <_end+0xf7f7d310>
    20c0:	cc 00 02 04 	l.swa 516(r0),r0
    20c4:	12 06 01 05 	l.bf f81824d8 <_end+0xf80fd6ac>
    20c8:	04 00 05 02 	l.jal 34d0 <__clz_tab+0x7e8>
    20cc:	00 00 20 cc 	l.j a3fc <frameBuffer+0x55d4>
    20d0:	01 05 04 00 	l.j 41430d0 <_end+0x40be2a4>
    20d4:	05 02 00 00 	l.jal 40820d4 <_end+0x3ffd2a8>
    20d8:	20 cc 01 05 	*inconnu*
    20dc:	04 00 05 02 	l.jal 34e4 <__clz_tab+0x7fc>
    20e0:	00 00 20 cc 	l.j a410 <frameBuffer+0x55e8>
    20e4:	01 05 04 00 	l.j 41430e4 <_end+0x40be2b8>
    20e8:	05 02 00 00 	l.jal 40820e8 <_end+0x3ffd2bc>
    20ec:	20 cc 00 02 	*inconnu*
    20f0:	04 00 18 05 	l.jal 8104 <frameBuffer+0x32dc>
    20f4:	04 00 05 02 	l.jal 34fc <__clz_tab+0x814>
    20f8:	00 00 20 cc 	l.j a428 <frameBuffer+0x5600>
    20fc:	00 02 04 12 	l.j 83144 <frameBuffer+0x7e31c>
    2100:	06 16 05 04 	l.jal f8583510 <_end+0xf84fe6e4>
    2104:	00 05 02 00 	l.j 142904 <_end+0xbdad8>
    2108:	00 20 dc 00 	l.j 839108 <_end+0x7b42dc>
    210c:	02 04 00 06 	l.j f8102124 <_end+0xf807d2f8>
    2110:	a4 05 03 00 	l.andi r0,r5,0x300
    2114:	05 02 00 00 	l.jal 4082114 <_end+0x3ffd2e8>
    2118:	20 dc 18 05 	*inconnu*
    211c:	03 00 05 02 	l.j fc003524 <_end+0xfbf7e6f8>
    2120:	00 00 20 dc 	l.j a490 <frameBuffer+0x5668>
    2124:	06 78 05 01 	l.jal f9e03528 <_end+0xf9d7e6fc>
    2128:	00 05 02 00 	l.j 142928 <_end+0xbdafc>
    212c:	00 20 e4 06 	l.j 83b144 <_end+0x7b6318>
    2130:	03 cb 7e 01 	l.j ff2e1934 <_end+0xff25cb08>
    2134:	05 07 00 05 	l.jal 41c2148 <_end+0x413d31c>
    2138:	02 00 00 20 	l.j f80021b8 <_end+0xf7f7d38c>
    213c:	e4 06 01 05 	*inconnu*
    2140:	0a 00 05 02 	l.adrp r16,a06000 <_end+0x9811d4>
    2144:	00 00 20 f8 	l.j a524 <frameBuffer+0x56fc>
    2148:	06 6a 05 03 	l.jal f9a83554 <_end+0xf99fe728>
    214c:	00 05 02 00 	l.j 14294c <_end+0xbdb20>
    2150:	00 20 f8 18 	l.j 8401b0 <_end+0x7bb384>
    2154:	05 03 00 05 	l.jal 40c2168 <_end+0x403d33c>
    2158:	02 00 00 20 	l.j f80021d8 <_end+0xf7f7d3ac>
    215c:	f8 06 78 05 	*inconnu*
    2160:	01 00 05 02 	l.j 4003568 <_end+0x3f7e73c>
    2164:	00 00 21 00 	l.j a564 <frameBuffer+0x573c>
    2168:	06 03 de 7e 	l.jal f80f9b60 <_end+0xf8074d34>
    216c:	01 05 04 00 	l.j 414316c <_end+0x40be340>
    2170:	05 02 00 00 	l.jal 4082170 <_end+0x3ffd344>
    2174:	21 00 01 05 	l.trap 0x105
    2178:	04 00 05 02 	l.jal 3580 <__clz_tab+0x898>
    217c:	00 00 21 00 	l.j a57c <frameBuffer+0x5754>
    2180:	01 05 04 00 	l.j 4143180 <_end+0x40be354>
    2184:	05 02 00 00 	l.jal 4082184 <_end+0x3ffd358>
    2188:	21 00 01 05 	l.trap 0x105
    218c:	04 00 05 02 	l.jal 3594 <__clz_tab+0x8ac>
    2190:	00 00 21 00 	l.j a590 <frameBuffer+0x5768>
    2194:	00 02 04 01 	l.j 83198 <frameBuffer+0x7e370>
    2198:	01 05 04 00 	l.j 4143198 <_end+0x40be36c>
    219c:	05 02 00 00 	l.jal 408219c <_end+0x3ffd370>
    21a0:	21 0c 00 02 	*inconnu*
    21a4:	04 04 06 01 	l.jal 1039a8 <_end+0x7eb7c>
    21a8:	05 04 00 05 	l.jal 41021bc <_end+0x407d390>
    21ac:	02 00 00 21 	l.j f8002230 <_end+0xf7f7d404>
    21b0:	20 00 02 04 	l.sys 0x204
    21b4:	0a 01 05 04 	l.adrp r16,20a0a000 <_end+0x209851d4>
    21b8:	00 05 02 00 	l.j 1429b8 <_end+0xbdb8c>
    21bc:	00 21 24 00 	l.j 84b1bc <_end+0x7c6390>
    21c0:	02 04 15 06 	l.j f81075d8 <_end+0xf80827ac>
    21c4:	01 05 04 00 	l.j 41431c4 <_end+0x40be398>
    21c8:	05 02 00 00 	l.jal 40821c8 <_end+0x3ffd39c>
    21cc:	21 38 00 02 	*inconnu*
    21d0:	04 16 06 01 	l.jal 5839d4 <_end+0x4feba8>
    21d4:	05 04 00 05 	l.jal 41021e8 <_end+0x407d3bc>
    21d8:	02 00 00 21 	l.j f800225c <_end+0xf7f7d430>
    21dc:	40 00 02 04 	*inconnu*
    21e0:	00 18 05 07 	l.j 6035fc <_end+0x57e7d0>
    21e4:	00 05 02 00 	l.j 1429e4 <_end+0xbdbb8>
    21e8:	00 21 44 00 	l.j 8531e8 <_end+0x7ce3bc>
    21ec:	02 04 16 06 	l.j f8107a04 <_end+0xf8082bd8>
    21f0:	16 05 04 00 	*inconnu*
    21f4:	05 02 00 00 	l.jal 40821f4 <_end+0x3ffd3c8>
    21f8:	21 44 00 02 	*inconnu*
    21fc:	04 00 18 05 	l.jal 8210 <frameBuffer+0x33e8>
    2200:	04 00 05 02 	l.jal 3608 <__clz_tab+0x920>
    2204:	00 00 21 44 	l.j a714 <frameBuffer+0x58ec>
    2208:	06 01 05 07 	l.jal f8043624 <_end+0xf7fbe7f8>
    220c:	00 05 02 00 	l.j 142a0c <_end+0xbdbe0>
    2210:	00 21 4c 06 	l.j 855228 <_end+0x7d03fc>
    2214:	21 05 08 00 	*inconnu*
    2218:	05 02 00 00 	l.jal 4082218 <_end+0x3ffd3ec>
    221c:	21 4c 06 01 	*inconnu*
    2220:	05 0b 00 05 	l.jal 42c2234 <_end+0x423d408>
    2224:	02 00 00 21 	l.j f80022a8 <_end+0xf7f7d47c>
    2228:	58 00 02 04 	*inconnu*
    222c:	01 01 05 14 	l.j 404367c <_end+0x3fbe850>
    2230:	00 05 02 00 	l.j 142a30 <_end+0xbdc04>
    2234:	00 21 68 00 	l.j 85c234 <_end+0x7d7408>
    2238:	02 04 00 06 	l.j f8102250 <_end+0xf807d424>
    223c:	4c 05 03 00 	l.maci r5,768
    2240:	05 02 00 00 	l.jal 4082240 <_end+0x3ffd414>
    2244:	21 68 18 05 	*inconnu*
    2248:	03 00 05 02 	l.j fc003650 <_end+0xfbf7e824>
    224c:	00 00 21 68 	l.j a7ec <frameBuffer+0x59c4>
    2250:	06 78 05 01 	l.jal f9e03654 <_end+0xf9d7e828>
    2254:	00 05 02 00 	l.j 142a54 <_end+0xbdc28>
    2258:	00 21 70 06 	l.j 85e270 <_end+0x7d9444>
    225c:	03 9a 7e 01 	l.j fe6a1a60 <_end+0xfe61cc34>
    2260:	05 04 00 05 	l.jal 4102274 <_end+0x407d448>
    2264:	02 00 00 21 	l.j f80022e8 <_end+0xf7f7d4bc>
    2268:	70 06 01 05 	l.nios_crr r0,r6,r0,0x5
    226c:	07 00 05 02 	l.jal fc003674 <_end+0xfbf7e848>
    2270:	00 00 21 80 	l.j a870 <frameBuffer+0x5a48>
    2274:	06 18 05 06 	l.jal f860368c <_end+0xf857e860>
    2278:	00 05 02 00 	l.j 142a78 <_end+0xbdc4c>
    227c:	00 21 80 06 	l.j 862294 <_end+0x7dd468>
    2280:	01 05 09 00 	l.j 4144680 <_end+0x40bf854>
    2284:	05 02 00 00 	l.jal 4082284 <_end+0x3ffd458>
    2288:	21 88 00 02 	*inconnu*
    228c:	04 03 19 05 	l.jal c86a0 <_end+0x43874>
    2290:	04 00 05 02 	l.jal 3698 <__clz_tab+0x9b0>
    2294:	00 00 21 a4 	l.j a924 <frameBuffer+0x5afc>
    2298:	00 02 04 15 	l.j 832ec <frameBuffer+0x7e4c4>
    229c:	06 01 05 04 	l.jal f80436ac <_end+0xf7fbe880>
    22a0:	00 05 02 00 	l.j 142aa0 <_end+0xbdc74>
    22a4:	00 21 b8 00 	l.j 8702a4 <_end+0x7eb478>
    22a8:	02 04 16 06 	l.j f8107ac0 <_end+0xf8082c94>
    22ac:	01 05 04 00 	l.j 41432ac <_end+0x40be480>
    22b0:	05 02 00 00 	l.jal 40822b0 <_end+0x3ffd484>
    22b4:	21 c0 00 02 	*inconnu*
    22b8:	04 00 19 05 	l.jal 86cc <frameBuffer+0x38a4>
    22bc:	07 00 05 02 	l.jal fc0036c4 <_end+0xfbf7e898>
    22c0:	00 00 21 c4 	l.j a9d0 <frameBuffer+0x5ba8>
    22c4:	00 02 04 16 	l.j 8331c <frameBuffer+0x7e4f4>
    22c8:	06 15 05 04 	l.jal f85436d8 <_end+0xf84be8ac>
    22cc:	00 05 02 00 	l.j 142acc <_end+0xbdca0>
    22d0:	00 21 c4 00 	l.j 8732d0 <_end+0x7ee4a4>
    22d4:	02 04 00 19 	l.j f8102338 <_end+0xf807d50c>
    22d8:	05 04 00 05 	l.jal 41022ec <_end+0x407d4c0>
    22dc:	02 00 00 21 	l.j f8002360 <_end+0xf7f7d534>
    22e0:	c4 06 01 05 	*inconnu*
    22e4:	07 00 05 02 	l.jal fc0036ec <_end+0xfbf7e8c0>
    22e8:	00 00 21 cc 	l.j aa18 <frameBuffer+0x5bf0>
    22ec:	06 20 05 08 	l.jal f880370c <_end+0xf877e8e0>
    22f0:	00 05 02 00 	l.j 142af0 <_end+0xbdcc4>
    22f4:	00 21 cc 06 	l.j 87530c <_end+0x7f04e0>
    22f8:	2a 05 04 00 	*inconnu*
    22fc:	05 02 00 00 	l.jal 40822fc <_end+0x3ffd4d0>
    2300:	21 d0 03 6d 	*inconnu*
    2304:	01 05 0b 00 	l.j 4144f04 <_end+0x40c00d8>
    2308:	05 02 00 00 	l.jal 4082308 <_end+0x3ffd4dc>
    230c:	21 d4 06 18 	*inconnu*
    2310:	05 08 00 05 	l.jal 4202324 <_end+0x417d4f8>
    2314:	02 00 00 21 	l.j f8002398 <_end+0xf7f7d56c>
    2318:	d4 06 29 05 	l.sw 261(r6),r5
    231c:	04 00 05 02 	l.jal 3724 <__clz_tab+0xa3c>
    2320:	00 00 21 e0 	l.j aaa0 <frameBuffer+0x5c78>
    2324:	00 02 04 13 	l.j 83370 <frameBuffer+0x7e548>
    2328:	06 12 05 08 	l.jal f8483748 <_end+0xf83fe91c>
    232c:	00 05 02 00 	l.j 142b2c <_end+0xbdd00>
    2330:	00 21 e0 00 	l.j 87a330 <_end+0x7f5504>
    2334:	02 04 00 1c 	l.j f81023a4 <_end+0xf807d578>
    2338:	05 04 00 05 	l.jal 410234c <_end+0x407d520>
    233c:	02 00 00 21 	l.j f80023c0 <_end+0xf7f7d594>
    2340:	e0 01 05 04 	*inconnu*
    2344:	00 05 02 00 	l.j 142b44 <_end+0xbdd18>
    2348:	00 21 e0 01 	l.j 87a34c <_end+0x7f5520>
    234c:	05 04 00 05 	l.jal 4102360 <_end+0x407d534>
    2350:	02 00 00 21 	l.j f80023d4 <_end+0xf7f7d5a8>
    2354:	e0 01 05 04 	*inconnu*
    2358:	00 05 02 00 	l.j 142b58 <_end+0xbdd2c>
    235c:	00 21 e0 01 	l.j 87a360 <_end+0x7f5534>
    2360:	05 04 00 05 	l.jal 4102374 <_end+0x407d548>
    2364:	02 00 00 21 	l.j f80023e8 <_end+0xf7f7d5bc>
    2368:	e0 01 05 04 	*inconnu*
    236c:	00 05 02 00 	l.j 142b6c <_end+0xbdd40>
    2370:	00 21 ec 00 	l.j 87d370 <_end+0x7f8544>
    2374:	02 04 01 01 	l.j f8102778 <_end+0xf807d94c>
    2378:	05 04 00 05 	l.jal 410238c <_end+0x407d560>
    237c:	02 00 00 21 	l.j f8002400 <_end+0xf7f7d5d4>
    2380:	ec 00 02 04 	*inconnu*
    2384:	02 01 05 04 	l.j f8043794 <_end+0xf7fbe968>
    2388:	00 05 02 00 	l.j 142b88 <_end+0xbdd5c>
    238c:	00 21 fc 01 	l.j 881390 <_end+0x7fc564>
    2390:	05 04 00 05 	l.jal 41023a4 <_end+0x407d578>
    2394:	02 00 00 22 	l.j f800241c <_end+0xf7f7d5f0>
    2398:	00 01 05 04 	l.j 437a8 <frameBuffer+0x3e980>
    239c:	00 05 02 00 	l.j 142b9c <_end+0xbdd70>
    23a0:	00 22 0c 00 	l.j 8853a0 <_end+0x800574>
    23a4:	02 04 03 01 	l.j f8102fa8 <_end+0xf807e17c>
    23a8:	05 04 00 05 	l.jal 41023bc <_end+0x407d590>
    23ac:	02 00 00 22 	l.j f8002434 <_end+0xf7f7d608>
    23b0:	14 01 05 04 	*inconnu*
    23b4:	00 05 02 00 	l.j 142bb4 <_end+0xbdd88>
    23b8:	00 22 1c 00 	l.j 8893b8 <_end+0x80458c>
    23bc:	02 04 05 01 	l.j f81037c0 <_end+0xf807e994>
    23c0:	05 04 00 05 	l.jal 41023d4 <_end+0x407d5a8>
    23c4:	02 00 00 22 	l.j f800244c <_end+0xf7f7d620>
    23c8:	28 00 02 04 	*inconnu*
    23cc:	03 06 01 05 	l.j fc1827e0 <_end+0xfc0fd9b4>
    23d0:	04 00 05 02 	l.jal 37d8 <__clz_tab+0xaf0>
    23d4:	00 00 22 2c 	l.j ac84 <frameBuffer+0x5e5c>
    23d8:	00 02 04 09 	l.j 833fc <frameBuffer+0x7e5d4>
    23dc:	06 01 05 04 	l.jal f80437ec <_end+0xf7fbe9c0>
    23e0:	00 05 02 00 	l.j 142be0 <_end+0xbddb4>
    23e4:	00 22 30 01 	l.j 88e3e8 <_end+0x8095bc>
    23e8:	05 04 00 05 	l.jal 41023fc <_end+0x407d5d0>
    23ec:	02 00 00 22 	l.j f8002474 <_end+0xf7f7d648>
    23f0:	3c 00 02 04 	*inconnu*
    23f4:	0a 01 05 04 	l.adrp r16,20a0a000 <_end+0x209851d4>
    23f8:	00 05 02 00 	l.j 142bf8 <_end+0xbddcc>
    23fc:	00 22 40 00 	l.j 8923fc <_end+0x80d5d0>
    2400:	02 04 0b 01 	l.j f8105004 <_end+0xf80801d8>
    2404:	05 04 00 05 	l.jal 4102418 <_end+0x407d5ec>
    2408:	02 00 00 22 	l.j f8002490 <_end+0xf7f7d664>
    240c:	50 01 05 04 	*inconnu*
    2410:	00 05 02 00 	l.j 142c10 <_end+0xbdde4>
    2414:	00 22 54 01 	l.j 897418 <_end+0x8125ec>
    2418:	05 04 00 05 	l.jal 410242c <_end+0x407d600>
    241c:	02 00 00 22 	l.j f80024a4 <_end+0xf7f7d678>
    2420:	60 00 02 04 	*inconnu*
    2424:	0c 01 05 04 	l.bnf 43834 <frameBuffer+0x3ea0c>
    2428:	00 05 02 00 	l.j 142c28 <_end+0xbddfc>
    242c:	00 22 64 01 	l.j 89b430 <_end+0x816604>
    2430:	05 04 00 05 	l.jal 4102444 <_end+0x407d618>
    2434:	02 00 00 22 	l.j f80024bc <_end+0xf7f7d690>
    2438:	6c 00 02 04 	l.lwa r0,516(r0)
    243c:	0e 01 05 04 	l.bnf f804384c <_end+0xf7fbea20>
    2440:	00 05 02 00 	l.j 142c40 <_end+0xbde14>
    2444:	00 22 78 00 	l.j 8a0444 <_end+0x81b618>
    2448:	02 04 0c 06 	l.j f8105460 <_end+0xf8080634>
    244c:	01 05 04 00 	l.j 414344c <_end+0x40be620>
    2450:	05 02 00 00 	l.jal 4082450 <_end+0x3ffd624>
    2454:	22 7c 00 02 	*inconnu*
    2458:	04 12 06 01 	l.jal 483c5c <_end+0x3fee30>
    245c:	05 04 00 05 	l.jal 4102470 <_end+0x407d644>
    2460:	02 00 00 22 	l.j f80024e8 <_end+0xf7f7d6bc>
    2464:	7c 01 05 04 	*inconnu*
    2468:	00 05 02 00 	l.j 142c68 <_end+0xbde3c>
    246c:	00 22 7c 01 	l.j 8a1470 <_end+0x81c644>
    2470:	05 04 00 05 	l.jal 4102484 <_end+0x407d658>
    2474:	02 00 00 22 	l.j f80024fc <_end+0xf7f7d6d0>
    2478:	88 00 02 04 	l.lws r0,516(r0)
    247c:	00 7a 05 03 	l.j 1e83888 <_end+0x1dfea5c>
    2480:	00 05 02 00 	l.j 142c80 <_end+0xbde54>
    2484:	00 22 88 18 	l.j 8a44e4 <_end+0x81f6b8>
    2488:	05 03 00 05 	l.jal 40c249c <_end+0x403d670>
    248c:	02 00 00 22 	l.j f8002514 <_end+0xf7f7d6e8>
    2490:	88 06 78 05 	l.lws r0,30725(r6)
    2494:	01 00 05 02 	l.j 400389c <_end+0x3f7ea70>
    2498:	00 00 22 90 	l.j aed8 <frameBuffer+0x60b0>
    249c:	00 02 04 03 	l.j 834a8 <frameBuffer+0x7e680>
    24a0:	03 85 7e 01 	l.j fe161ca4 <_end+0xfe0dce78>
    24a4:	05 04 00 05 	l.jal 41024b8 <_end+0x407d68c>
    24a8:	02 00 00 22 	l.j f8002530 <_end+0xf7f7d704>
    24ac:	ac 00 02 04 	l.xori r0,r0,516
    24b0:	00 06 2f 05 	l.j 18e0c4 <_end+0x109298>
    24b4:	04 00 05 02 	l.jal 38bc <__clz_tab+0xbd4>
    24b8:	00 00 22 ac 	l.j af68 <frameBuffer+0x6140>
    24bc:	01 05 04 00 	l.j 41434bc <_end+0x40be690>
    24c0:	05 02 00 00 	l.jal 40824c0 <_end+0x3ffd694>
    24c4:	22 ac 01 05 	*inconnu*
    24c8:	04 00 05 02 	l.jal 38d0 <__clz_tab+0xbe8>
    24cc:	00 00 22 ac 	l.j af7c <frameBuffer+0x6154>
    24d0:	01 05 04 00 	l.j 41434d0 <_end+0x40be6a4>
    24d4:	05 02 00 00 	l.jal 40824d4 <_end+0x3ffd6a8>
    24d8:	22 ac 00 02 	*inconnu*
    24dc:	04 01 01 05 	l.jal 428f0 <frameBuffer+0x3dac8>
    24e0:	04 00 05 02 	l.jal 38e8 <__clz_tab+0xc00>
    24e4:	00 00 22 b8 	l.j afc4 <frameBuffer+0x619c>
    24e8:	00 02 04 04 	l.j 834f8 <frameBuffer+0x7e6d0>
    24ec:	06 01 05 04 	l.jal f80438fc <_end+0xf7fbead0>
    24f0:	00 05 02 00 	l.j 142cf0 <_end+0xbdec4>
    24f4:	00 22 cc 00 	l.j 8b54f4 <_end+0x8306c8>
    24f8:	02 04 0a 01 	l.j f8104cfc <_end+0xf807fed0>
    24fc:	05 04 00 05 	l.jal 4102510 <_end+0x407d6e4>
    2500:	02 00 00 22 	l.j f8002588 <_end+0xf7f7d75c>
    2504:	d4 00 02 04 	l.sw 516(r0),r0
    2508:	03 58 05 04 	l.j fd603918 <_end+0xfd57eaec>
    250c:	00 05 02 00 	l.j 142d0c <_end+0xbdee0>
    2510:	00 22 f0 00 	l.j 8be510 <_end+0x8396e4>
    2514:	02 04 00 06 	l.j f810252c <_end+0xf807d700>
    2518:	35 05 08 00 	*inconnu*
    251c:	05 02 00 00 	l.jal 408251c <_end+0x3ffd6f0>
    2520:	22 f0 1a 05 	*inconnu*
    2524:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2528:	00 00 22 f0 	l.j b0e8 <frameBuffer+0x62c0>
    252c:	19 05 08 00 	*inconnu*
    2530:	05 02 00 00 	l.jal 4082530 <_end+0x3ffd704>
    2534:	22 f0 06 01 	*inconnu*
    2538:	05 1e 00 05 	l.jal 478254c <_end+0x46fd720>
    253c:	02 00 00 22 	l.j f80025c4 <_end+0xf7f7d798>
    2540:	f4 01 05 11 	*inconnu*
    2544:	00 05 02 00 	l.j 142d44 <_end+0xbdf18>
    2548:	00 22 f8 1d 	l.j 8c05bc <_end+0x83b790>
    254c:	05 08 00 05 	l.jal 4202560 <_end+0x417d734>
    2550:	02 00 00 22 	l.j f80025d8 <_end+0xf7f7d7ac>
    2554:	fc 11 05 0b 	*inconnu*
    2558:	00 05 02 00 	l.j 142d58 <_end+0xbdf2c>
    255c:	00 23 00 06 	l.j 8c2574 <_end+0x83d748>
    2560:	18 05 08 00 	*inconnu*
    2564:	05 02 00 00 	l.jal 4082564 <_end+0x3ffd738>
    2568:	23 00 06 18 	*inconnu*
    256c:	05 0b 00 05 	l.jal 42c2580 <_end+0x423d754>
    2570:	02 00 00 23 	l.j f80025fc <_end+0xf7f7d7d0>
    2574:	04 1b 05 08 	l.jal 6c3994 <_end+0x63eb68>
    2578:	00 05 02 00 	l.j 142d78 <_end+0xbdf4c>
    257c:	00 23 10 14 	l.j 8c65cc <_end+0x8417a0>
    2580:	05 11 00 05 	l.jal 4442594 <_end+0x43bd768>
    2584:	02 00 00 23 	l.j f8002610 <_end+0xf7f7d7e4>
    2588:	14 01 05 1e 	*inconnu*
    258c:	00 05 02 00 	l.j 142d8c <_end+0xbdf60>
    2590:	00 23 18 1a 	l.j 8c85f8 <_end+0x8437cc>
    2594:	05 08 00 05 	l.jal 42025a8 <_end+0x417d77c>
    2598:	02 00 00 23 	l.j f8002624 <_end+0xf7f7d7f8>
    259c:	1c 14 05 0b 	*inconnu*
    25a0:	00 05 02 00 	l.j 142da0 <_end+0xbdf74>
    25a4:	00 23 20 00 	l.j 8ca5a4 <_end+0x845778>
    25a8:	02 04 02 1a 	l.j f8102e10 <_end+0xf807dfe4>
    25ac:	05 08 00 05 	l.jal 42025c0 <_end+0x417d794>
    25b0:	02 00 00 23 	l.j f800263c <_end+0xf7f7d810>
    25b4:	24 00 02 04 	*inconnu*
    25b8:	00 01 05 08 	l.j 439d8 <frameBuffer+0x3ebb0>
    25bc:	00 05 02 00 	l.j 142dbc <_end+0xbdf90>
    25c0:	00 23 28 00 	l.j 8cc5c0 <_end+0x847794>
    25c4:	02 04 02 01 	l.j f8102dc8 <_end+0xf807df9c>
    25c8:	05 08 00 05 	l.jal 42025dc <_end+0x417d7b0>
    25cc:	02 00 00 23 	l.j f8002658 <_end+0xf7f7d82c>
    25d0:	38 00 02 04 	*inconnu*
    25d4:	00 06 13 05 	l.j 1871e8 <_end+0x1023bc>
    25d8:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    25dc:	00 00 23 38 	l.j b2bc <frameBuffer+0x6494>
    25e0:	18 05 08 00 	*inconnu*
    25e4:	05 02 00 00 	l.jal 40825e4 <_end+0x3ffd7b8>
    25e8:	23 38 18 05 	*inconnu*
    25ec:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    25f0:	00 00 23 38 	l.j b2d0 <frameBuffer+0x64a8>
    25f4:	19 05 08 00 	*inconnu*
    25f8:	05 02 00 00 	l.jal 40825f8 <_end+0x3ffd7cc>
    25fc:	23 38 01 05 	*inconnu*
    2600:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2604:	00 00 23 38 	l.j b2e4 <frameBuffer+0x64bc>
    2608:	01 05 08 00 	l.j 4144608 <_end+0x40bf7dc>
    260c:	05 02 00 00 	l.jal 408260c <_end+0x3ffd7e0>
    2610:	23 38 01 05 	*inconnu*
    2614:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2618:	00 00 23 38 	l.j b2f8 <frameBuffer+0x64d0>
    261c:	01 05 08 00 	l.j 414461c <_end+0x40bf7f0>
    2620:	05 02 00 00 	l.jal 4082620 <_end+0x3ffd7f4>
    2624:	23 38 01 05 	*inconnu*
    2628:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    262c:	00 00 23 38 	l.j b30c <frameBuffer+0x64e4>
    2630:	00 02 04 01 	l.j 83634 <frameBuffer+0x7e80c>
    2634:	01 05 08 00 	l.j 4144634 <_end+0x40bf808>
    2638:	05 02 00 00 	l.jal 4082638 <_end+0x3ffd80c>
    263c:	23 38 00 02 	*inconnu*
    2640:	04 02 01 05 	l.jal 82a54 <frameBuffer+0x7dc2c>
    2644:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2648:	00 00 23 38 	l.j b328 <frameBuffer+0x6500>
    264c:	01 05 08 00 	l.j 414464c <_end+0x40bf820>
    2650:	05 02 00 00 	l.jal 4082650 <_end+0x3ffd824>
    2654:	23 38 01 05 	*inconnu*
    2658:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    265c:	00 00 23 40 	l.j b35c <frameBuffer+0x6534>
    2660:	00 02 04 03 	l.j 8366c <frameBuffer+0x7e844>
    2664:	01 05 08 00 	l.j 4144664 <_end+0x40bf838>
    2668:	05 02 00 00 	l.jal 4082668 <_end+0x3ffd83c>
    266c:	23 48 01 05 	*inconnu*
    2670:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2674:	00 00 23 50 	l.j b3b4 <frameBuffer+0x658c>
    2678:	00 02 04 05 	l.j 8368c <frameBuffer+0x7e864>
    267c:	01 05 08 00 	l.j 414467c <_end+0x40bf850>
    2680:	05 02 00 00 	l.jal 4082680 <_end+0x3ffd854>
    2684:	23 5c 00 02 	*inconnu*
    2688:	04 07 01 05 	l.jal 1c2a9c <_end+0x13dc70>
    268c:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2690:	00 00 23 64 	l.j b420 <frameBuffer+0x65f8>
    2694:	00 02 04 09 	l.j 836b8 <frameBuffer+0x7e890>
    2698:	01 05 08 00 	l.j 4144698 <_end+0x40bf86c>
    269c:	05 02 00 00 	l.jal 408269c <_end+0x3ffd870>
    26a0:	23 68 01 05 	*inconnu*
    26a4:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    26a8:	00 00 23 74 	l.j b478 <frameBuffer+0x6650>
    26ac:	00 02 04 0a 	l.j 836d4 <frameBuffer+0x7e8ac>
    26b0:	01 05 08 00 	l.j 41446b0 <_end+0x40bf884>
    26b4:	05 02 00 00 	l.jal 40826b4 <_end+0x3ffd888>
    26b8:	23 74 00 02 	*inconnu*
    26bc:	04 0b 01 05 	l.jal 2c2ad0 <_end+0x23dca4>
    26c0:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    26c4:	00 00 23 84 	l.j b4d4 <frameBuffer+0x66ac>
    26c8:	01 05 08 00 	l.j 41446c8 <_end+0x40bf89c>
    26cc:	05 02 00 00 	l.jal 40826cc <_end+0x3ffd8a0>
    26d0:	23 88 01 05 	*inconnu*
    26d4:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    26d8:	00 00 23 94 	l.j b528 <frameBuffer+0x6700>
    26dc:	00 02 04 0c 	l.j 8370c <frameBuffer+0x7e8e4>
    26e0:	01 05 08 00 	l.j 41446e0 <_end+0x40bf8b4>
    26e4:	05 02 00 00 	l.jal 40826e4 <_end+0x3ffd8b8>
    26e8:	23 9c 01 05 	*inconnu*
    26ec:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    26f0:	00 00 23 a4 	l.j b580 <frameBuffer+0x6758>
    26f4:	00 02 04 0e 	l.j 8372c <frameBuffer+0x7e904>
    26f8:	01 05 08 00 	l.j 41446f8 <_end+0x40bf8cc>
    26fc:	05 02 00 00 	l.jal 40826fc <_end+0x3ffd8d0>
    2700:	23 b0 00 02 	*inconnu*
    2704:	04 10 01 05 	l.jal 402b18 <_end+0x37dcec>
    2708:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    270c:	00 00 23 b8 	l.j b5ec <frameBuffer+0x67c4>
    2710:	00 02 04 12 	l.j 83758 <frameBuffer+0x7e930>
    2714:	01 05 08 00 	l.j 4144714 <_end+0x40bf8e8>
    2718:	05 02 00 00 	l.jal 4082718 <_end+0x3ffd8ec>
    271c:	23 c4 00 02 	*inconnu*
    2720:	04 00 06 18 	l.jal 3f80 <__clz_tab+0x1298>
    2724:	05 08 00 05 	l.jal 4202738 <_end+0x417d90c>
    2728:	02 00 00 23 	l.j f80027b4 <_end+0xf7f7d988>
    272c:	f0 00 02 04 	*inconnu*
    2730:	12 16 05 08 	l.bf f8583b50 <_end+0xf84fed24>
    2734:	00 05 02 00 	l.j 142f34 <_end+0xbe108>
    2738:	00 23 f4 06 	l.j 8ff750 <_end+0x87a924>
    273c:	01 05 08 00 	l.j 414473c <_end+0x40bf910>
    2740:	05 02 00 00 	l.jal 4082740 <_end+0x3ffd914>
    2744:	23 f4 01 05 	*inconnu*
    2748:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    274c:	00 00 23 f4 	l.j b71c <frameBuffer+0x68f4>
    2750:	01 05 08 00 	l.j 4144750 <_end+0x40bf924>
    2754:	05 02 00 00 	l.jal 4082754 <_end+0x3ffd928>
    2758:	23 f4 00 02 	*inconnu*
    275c:	04 00 18 05 	l.jal 8770 <frameBuffer+0x3948>
    2760:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2764:	00 00 23 f4 	l.j b734 <frameBuffer+0x690c>
    2768:	01 05 08 00 	l.j 4144768 <_end+0x40bf93c>
    276c:	05 02 00 00 	l.jal 408276c <_end+0x3ffd940>
    2770:	23 f4 01 05 	*inconnu*
    2774:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2778:	00 00 23 f4 	l.j b748 <frameBuffer+0x6920>
    277c:	01 05 08 00 	l.j 414477c <_end+0x40bf950>
    2780:	05 02 00 00 	l.jal 4082780 <_end+0x3ffd954>
    2784:	23 f4 01 05 	*inconnu*
    2788:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    278c:	00 00 23 f4 	l.j b75c <frameBuffer+0x6934>
    2790:	01 05 08 00 	l.j 4144790 <_end+0x40bf964>
    2794:	05 02 00 00 	l.jal 4082794 <_end+0x3ffd968>
    2798:	23 f4 01 05 	*inconnu*
    279c:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    27a0:	00 00 23 f4 	l.j b770 <frameBuffer+0x6948>
    27a4:	01 05 08 00 	l.j 41447a4 <_end+0x40bf978>
    27a8:	05 02 00 00 	l.jal 40827a8 <_end+0x3ffd97c>
    27ac:	23 f4 01 05 	*inconnu*
    27b0:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    27b4:	00 00 23 f4 	l.j b784 <frameBuffer+0x695c>
    27b8:	01 05 08 00 	l.j 41447b8 <_end+0x40bf98c>
    27bc:	05 02 00 00 	l.jal 40827bc <_end+0x3ffd990>
    27c0:	23 f4 01 05 	*inconnu*
    27c4:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    27c8:	00 00 23 f4 	l.j b798 <frameBuffer+0x6970>
    27cc:	01 05 08 00 	l.j 41447cc <_end+0x40bf9a0>
    27d0:	05 02 00 00 	l.jal 40827d0 <_end+0x3ffd9a4>
    27d4:	23 f4 01 05 	*inconnu*
    27d8:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    27dc:	00 00 23 f4 	l.j b7ac <frameBuffer+0x6984>
    27e0:	01 05 08 00 	l.j 41447e0 <_end+0x40bf9b4>
    27e4:	05 02 00 00 	l.jal 40827e4 <_end+0x3ffd9b8>
    27e8:	23 fc 00 02 	*inconnu*
    27ec:	04 01 01 05 	l.jal 42c00 <frameBuffer+0x3ddd8>
    27f0:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    27f4:	00 00 24 04 	l.j b804 <frameBuffer+0x69dc>
    27f8:	00 02 04 03 	l.j 83804 <frameBuffer+0x7e9dc>
    27fc:	01 05 08 00 	l.j 41447fc <_end+0x40bf9d0>
    2800:	05 02 00 00 	l.jal 4082800 <_end+0x3ffd9d4>
    2804:	24 10 01 05 	*inconnu*
    2808:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    280c:	00 00 24 10 	l.j b84c <frameBuffer+0x6a24>
    2810:	01 05 08 00 	l.j 4144810 <_end+0x40bf9e4>
    2814:	05 02 00 00 	l.jal 4082814 <_end+0x3ffd9e8>
    2818:	24 10 00 02 	*inconnu*
    281c:	04 00 19 05 	l.jal 8c30 <frameBuffer+0x3e08>
    2820:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2824:	00 00 24 10 	l.j b864 <frameBuffer+0x6a3c>
    2828:	06 01 05 0b 	l.jal f8043c54 <_end+0xf7fbee28>
    282c:	00 05 02 00 	l.j 14302c <_end+0xbe200>
    2830:	00 24 1c 00 	l.j 909830 <_end+0x884a04>
    2834:	02 04 01 01 	l.j f8102c38 <_end+0xf807de0c>
    2838:	05 14 00 05 	l.jal 450284c <_end+0x447da20>
    283c:	02 00 00 24 	l.j f80028cc <_end+0xf7f7daa0>
    2840:	24 00 02 04 	*inconnu*
    2844:	03 15 05 08 	l.j fc543c64 <_end+0xfc4bee38>
    2848:	00 05 02 00 	l.j 143048 <_end+0xbe21c>
    284c:	00 24 30 00 	l.j 90e84c <_end+0x889a20>
    2850:	02 04 00 14 	l.j f81028a0 <_end+0xf807da74>
    2854:	05 0b 00 05 	l.jal 42c2868 <_end+0x423da3c>
    2858:	02 00 00 24 	l.j f80028e8 <_end+0xf7f7dabc>
    285c:	34 00 02 04 	*inconnu*
    2860:	03 1a 05 08 	l.j fc683c80 <_end+0xfc5fee54>
    2864:	00 05 02 00 	l.j 143064 <_end+0xbe238>
    2868:	00 24 38 00 	l.j 910868 <_end+0x88ba3c>
    286c:	02 04 02 19 	l.j f81030d0 <_end+0xf807e2a4>
    2870:	05 21 00 05 	l.jal 4842884 <_end+0x47bda58>
    2874:	02 00 00 24 	l.j f8002904 <_end+0xf7f7dad8>
    2878:	44 00 02 04 	*inconnu*
    287c:	00 06 19 05 	l.j 188c90 <_end+0x103e64>
    2880:	05 00 05 02 	l.jal 4003c88 <_end+0x3f7ee5c>
    2884:	00 00 24 44 	l.j b994 <frameBuffer+0x6b6c>
    2888:	18 05 05 00 	*inconnu*
    288c:	05 02 00 00 	l.jal 408288c <_end+0x3ffda60>
    2890:	24 44 01 05 	*inconnu*
    2894:	05 00 05 02 	l.jal 4003c9c <_end+0x3f7ee70>
    2898:	00 00 24 44 	l.j b9a8 <frameBuffer+0x6b80>
    289c:	01 05 05 00 	l.j 4143c9c <_end+0x40bee70>
    28a0:	05 02 00 00 	l.jal 40828a0 <_end+0x3ffda74>
    28a4:	24 44 01 05 	*inconnu*
    28a8:	05 00 05 02 	l.jal 4003cb0 <_end+0x3f7ee84>
    28ac:	00 00 24 44 	l.j b9bc <frameBuffer+0x6b94>
    28b0:	01 05 05 00 	l.j 4143cb0 <_end+0x40bee84>
    28b4:	05 02 00 00 	l.jal 40828b4 <_end+0x3ffda88>
    28b8:	24 44 06 16 	*inconnu*
    28bc:	05 07 00 05 	l.jal 41c28d0 <_end+0x413daa4>
    28c0:	02 00 00 24 	l.j f8002950 <_end+0xf7f7db24>
    28c4:	48 29 05 11 	*inconnu*
    28c8:	00 05 02 00 	l.j 1430c8 <_end+0xbe29c>
    28cc:	00 24 4c 06 	l.j 9158e4 <_end+0x890ab8>
    28d0:	01 05 03 00 	l.j 41434d0 <_end+0x40be6a4>
    28d4:	05 02 00 00 	l.jal 40828d4 <_end+0x3ffdaa8>
    28d8:	24 4c 18 05 	*inconnu*
    28dc:	03 00 05 02 	l.j fc003ce4 <_end+0xfbf7eeb8>
    28e0:	00 00 24 4c 	l.j ba10 <frameBuffer+0x6be8>
    28e4:	06 78 05 01 	l.jal f9e03ce8 <_end+0xf9d7eebc>
    28e8:	00 05 02 00 	l.j 1430e8 <_end+0xbe2bc>
    28ec:	00 24 54 06 	l.j 917904 <_end+0x892ad8>
    28f0:	03 af 7e 01 	l.j febe20f4 <_end+0xfeb5d2c8>
    28f4:	05 08 00 05 	l.jal 4202908 <_end+0x417dadc>
    28f8:	02 00 00 24 	l.j f8002988 <_end+0xf7f7db5c>
    28fc:	54 19 05 08 	*inconnu*
    2900:	00 05 02 00 	l.j 143100 <_end+0xbe2d4>
    2904:	00 24 54 06 	l.j 91791c <_end+0x892af0>
    2908:	1c 05 08 00 	*inconnu*
    290c:	05 02 00 00 	l.jal 408290c <_end+0x3ffdae0>
    2910:	24 58 12 05 	*inconnu*
    2914:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    2918:	00 00 24 5c 	l.j ba88 <frameBuffer+0x6c60>
    291c:	06 18 05 08 	l.jal f8603d3c <_end+0xf857ef10>
    2920:	00 05 02 00 	l.j 143120 <_end+0xbe2f4>
    2924:	00 24 5c 06 	l.j 91993c <_end+0x894b10>
    2928:	01 05 0b 00 	l.j 4145528 <_end+0x40c06fc>
    292c:	05 02 00 00 	l.jal 408292c <_end+0x3ffdb00>
    2930:	24 60 06 18 	*inconnu*
    2934:	05 08 00 05 	l.jal 4202948 <_end+0x417db1c>
    2938:	02 00 00 24 	l.j f80029c8 <_end+0xf7f7db9c>
    293c:	60 06 1a 05 	*inconnu*
    2940:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2944:	00 00 24 6c 	l.j baf4 <frameBuffer+0x6ccc>
    2948:	14 05 11 00 	*inconnu*
    294c:	05 02 00 00 	l.jal 408294c <_end+0x3ffdb20>
    2950:	24 70 01 05 	*inconnu*
    2954:	1e 00 05 02 	*inconnu*
    2958:	00 00 24 74 	l.j bb28 <frameBuffer+0x6d00>
    295c:	1a 05 08 00 	*inconnu*
    2960:	05 02 00 00 	l.jal 4082960 <_end+0x3ffdb34>
    2964:	24 78 14 05 	*inconnu*
    2968:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    296c:	00 00 24 7c 	l.j bb5c <frameBuffer+0x6d34>
    2970:	06 18 05 08 	l.jal f8603d90 <_end+0xf857ef64>
    2974:	00 05 02 00 	l.j 143174 <_end+0xbe348>
    2978:	00 24 7c 00 	l.j 921978 <_end+0x89cb4c>
    297c:	02 04 02 06 	l.j f8103194 <_end+0xf807e368>
    2980:	19 05 08 00 	*inconnu*
    2984:	05 02 00 00 	l.jal 4082984 <_end+0x3ffdb58>
    2988:	24 84 00 02 	*inconnu*
    298c:	04 00 01 05 	l.jal 2da0 <__clz_tab+0xb8>
    2990:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2994:	00 00 24 88 	l.j bbb4 <frameBuffer+0x6d8c>
    2998:	00 02 04 02 	l.j 839a0 <frameBuffer+0x7eb78>
    299c:	01 05 08 00 	l.j 414499c <_end+0x40bfb70>
    29a0:	05 02 00 00 	l.jal 40829a0 <_end+0x3ffdb74>
    29a4:	24 94 00 02 	*inconnu*
    29a8:	04 00 06 01 	l.jal 41ac <__clz_tab+0x14c4>
    29ac:	05 08 00 05 	l.jal 42029c0 <_end+0x417db94>
    29b0:	02 00 00 24 	l.j f8002a40 <_end+0xf7f7dc14>
    29b4:	94 01 05 08 	l.lhz r0,1288(r1)
    29b8:	00 05 02 00 	l.j 1431b8 <_end+0xbe38c>
    29bc:	00 24 94 01 	l.j 9279c0 <_end+0x8a2b94>
    29c0:	05 08 00 05 	l.jal 42029d4 <_end+0x417dba8>
    29c4:	02 00 00 24 	l.j f8002a54 <_end+0xf7f7dc28>
    29c8:	94 01 05 08 	l.lhz r0,1288(r1)
    29cc:	00 05 02 00 	l.j 1431cc <_end+0xbe3a0>
    29d0:	00 24 94 01 	l.j 9279d4 <_end+0x8a2ba8>
    29d4:	05 08 00 05 	l.jal 42029e8 <_end+0x417dbbc>
    29d8:	02 00 00 24 	l.j f8002a68 <_end+0xf7f7dc3c>
    29dc:	94 01 05 08 	l.lhz r0,1288(r1)
    29e0:	00 05 02 00 	l.j 1431e0 <_end+0xbe3b4>
    29e4:	00 24 94 00 	l.j 9279e4 <_end+0x8a2bb8>
    29e8:	02 04 01 01 	l.j f8102dec <_end+0xf807dfc0>
    29ec:	05 08 00 05 	l.jal 4202a00 <_end+0x417dbd4>
    29f0:	02 00 00 24 	l.j f8002a80 <_end+0xf7f7dc54>
    29f4:	94 00 02 04 	l.lhz r0,516(r0)
    29f8:	02 01 05 08 	l.j f8043e18 <_end+0xf7fbefec>
    29fc:	00 05 02 00 	l.j 1431fc <_end+0xbe3d0>
    2a00:	00 24 94 01 	l.j 927a04 <_end+0x8a2bd8>
    2a04:	05 08 00 05 	l.jal 4202a18 <_end+0x417dbec>
    2a08:	02 00 00 24 	l.j f8002a98 <_end+0xf7f7dc6c>
    2a0c:	94 01 05 08 	l.lhz r0,1288(r1)
    2a10:	00 05 02 00 	l.j 143210 <_end+0xbe3e4>
    2a14:	00 24 9c 00 	l.j 929a14 <_end+0x8a4be8>
    2a18:	02 04 03 01 	l.j f810361c <_end+0xf807e7f0>
    2a1c:	05 08 00 05 	l.jal 4202a30 <_end+0x417dc04>
    2a20:	02 00 00 24 	l.j f8002ab0 <_end+0xf7f7dc84>
    2a24:	a4 01 05 08 	l.andi r0,r1,0x508
    2a28:	00 05 02 00 	l.j 143228 <_end+0xbe3fc>
    2a2c:	00 24 ac 00 	l.j 92da2c <_end+0x8a8c00>
    2a30:	02 04 05 01 	l.j f8103e34 <_end+0xf807f008>
    2a34:	05 08 00 05 	l.jal 4202a48 <_end+0x417dc1c>
    2a38:	02 00 00 24 	l.j f8002ac8 <_end+0xf7f7dc9c>
    2a3c:	b8 00 02 04 	*inconnu*
    2a40:	07 01 05 08 	l.jal fc043e60 <_end+0xfbfbf034>
    2a44:	00 05 02 00 	l.j 143244 <_end+0xbe418>
    2a48:	00 24 c0 00 	l.j 932a48 <_end+0x8adc1c>
    2a4c:	02 04 09 01 	l.j f8104e50 <_end+0xf8080024>
    2a50:	05 08 00 05 	l.jal 4202a64 <_end+0x417dc38>
    2a54:	02 00 00 24 	l.j f8002ae4 <_end+0xf7f7dcb8>
    2a58:	c4 01 05 08 	*inconnu*
    2a5c:	00 05 02 00 	l.j 14325c <_end+0xbe430>
    2a60:	00 24 d0 00 	l.j 936a60 <_end+0x8b1c34>
    2a64:	02 04 0a 01 	l.j f8105268 <_end+0xf808043c>
    2a68:	05 08 00 05 	l.jal 4202a7c <_end+0x417dc50>
    2a6c:	02 00 00 24 	l.j f8002afc <_end+0xf7f7dcd0>
    2a70:	d0 00 02 04 	*inconnu*
    2a74:	0b 01 05 08 	l.adrp r24,20a12000 <_end+0x2098d1d4>
    2a78:	00 05 02 00 	l.j 143278 <_end+0xbe44c>
    2a7c:	00 24 e0 01 	l.j 93aa80 <_end+0x8b5c54>
    2a80:	05 08 00 05 	l.jal 4202a94 <_end+0x417dc68>
    2a84:	02 00 00 24 	l.j f8002b14 <_end+0xf7f7dce8>
    2a88:	e4 01 05 08 	*inconnu*
    2a8c:	00 05 02 00 	l.j 14328c <_end+0xbe460>
    2a90:	00 24 f0 00 	l.j 93ea90 <_end+0x8b9c64>
    2a94:	02 04 0c 01 	l.j f8105a98 <_end+0xf8080c6c>
    2a98:	05 08 00 05 	l.jal 4202aac <_end+0x417dc80>
    2a9c:	02 00 00 24 	l.j f8002b2c <_end+0xf7f7dd00>
    2aa0:	f8 01 05 08 	*inconnu*
    2aa4:	00 05 02 00 	l.j 1432a4 <_end+0xbe478>
    2aa8:	00 25 00 00 	l.j 942aa8 <_end+0x8bdc7c>
    2aac:	02 04 0e 01 	l.j f81062b0 <_end+0xf8081484>
    2ab0:	05 08 00 05 	l.jal 4202ac4 <_end+0x417dc98>
    2ab4:	02 00 00 25 	l.j f8002b48 <_end+0xf7f7dd1c>
    2ab8:	0c 00 02 04 	l.bnf 32c8 <__clz_tab+0x5e0>
    2abc:	10 01 05 08 	l.bf 43edc <frameBuffer+0x3f0b4>
    2ac0:	00 05 02 00 	l.j 1432c0 <_end+0xbe494>
    2ac4:	00 25 14 00 	l.j 947ac4 <_end+0x8c2c98>
    2ac8:	02 04 12 01 	l.j f81072cc <_end+0xf80824a0>
    2acc:	05 08 00 05 	l.jal 4202ae0 <_end+0x417dcb4>
    2ad0:	02 00 00 25 	l.j f8002b64 <_end+0xf7f7dd38>
    2ad4:	20 01 05 08 	*inconnu*
    2ad8:	00 05 02 00 	l.j 1432d8 <_end+0xbe4ac>
    2adc:	00 25 20 01 	l.j 94aae0 <_end+0x8c5cb4>
    2ae0:	05 08 00 05 	l.jal 4202af4 <_end+0x417dcc8>
    2ae4:	02 00 00 25 	l.j f8002b78 <_end+0xf7f7dd4c>
    2ae8:	28 00 02 04 	*inconnu*
    2aec:	0c 06 01 05 	l.bnf 182f00 <_end+0xfe0d4>
    2af0:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2af4:	00 00 25 30 	l.j bfb4 <frameBuffer+0x718c>
    2af8:	68 05 08 00 	*inconnu*
    2afc:	05 02 00 00 	l.jal 4082afc <_end+0x3ffdcd0>
    2b00:	25 38 00 02 	*inconnu*
    2b04:	04 03 03 af 	l.jal c39c0 <_end+0x3eb94>
    2b08:	7f 01 05 08 	*inconnu*
    2b0c:	00 05 02 00 	l.j 14330c <_end+0xbe4e0>
    2b10:	00 25 40 68 	l.j 952cb0 <_end+0x8cde84>
    2b14:	05 08 00 05 	l.jal 4202b28 <_end+0x417dcfc>
    2b18:	02 00 00 25 	l.j f8002bac <_end+0xf7f7dd80>
    2b1c:	48 00 02 04 	*inconnu*
    2b20:	10 06 03 b4 	l.bf 1839f0 <_end+0xfebc4>
    2b24:	7f 01 05 04 	*inconnu*
    2b28:	00 05 02 00 	l.j 143328 <_end+0xbe4fc>
    2b2c:	00 25 48 03 	l.j 954b38 <_end+0x8cfd0c>
    2b30:	56 01 05 04 	*inconnu*
    2b34:	00 05 02 00 	l.j 143334 <_end+0xbe508>
    2b38:	00 25 48 00 	l.j 954b38 <_end+0x8cfd0c>
    2b3c:	02 04 01 06 	l.j f8102f54 <_end+0xf807e128>
    2b40:	6f 05 14 00 	l.lwa r24,5120(r5)
    2b44:	05 02 00 00 	l.jal 4082b44 <_end+0x3ffdd18>
    2b48:	25 54 00 02 	*inconnu*
    2b4c:	04 07 06 03 	l.jal 1c4358 <_end+0x13f52c>
    2b50:	52 01 05 04 	*inconnu*
    2b54:	00 05 02 00 	l.j 143354 <_end+0xbe528>
    2b58:	00 25 5c 03 	l.j 959b64 <_end+0x8d4d38>
    2b5c:	56 01 05 04 	*inconnu*
    2b60:	00 05 02 00 	l.j 143360 <_end+0xbe534>
    2b64:	00 25 64 00 	l.j 95bb64 <_end+0x8d6d38>
    2b68:	01 01 00 00 	l.j 4042b68 <_end+0x3fbdd3c>
    2b6c:	0e b8 00 05 	l.bnf fae02b80 <_end+0xfad7dd54>
    2b70:	04 00 00 00 	l.jal 2b70 <__umoddi3+0x60c>
    2b74:	00 33 01 01 	l.j cc2f78 <_end+0xc3e14c>
    2b78:	01 f6 f2 0d 	l.j 7dbf3ac <_end+0x7d3a580>
    2b7c:	00 01 01 01 	l.j 42f80 <frameBuffer+0x3e158>
    2b80:	01 00 00 00 	l.j 4002b80 <_end+0x3f7dd54>
    2b84:	01 00 00 01 	l.j 4002b88 <_end+0x3f7dd5c>
    2b88:	01 01 1f 02 	l.j 404a790 <_end+0x3fc5964>
    2b8c:	00 00 00 2f 	l.j 2c48 <__umoddi3+0x6e4>
    2b90:	00 00 00 7d 	l.j 2d84 <__clz_tab+0x9c>
    2b94:	02 01 1f 02 	l.j f804a79c <_end+0xf7fc5970>
    2b98:	0b 03 00 00 	l.adrp r24,60002000 <_end+0x5ff7d1d4>
    2b9c:	00 00 00 00 	l.j 2b9c <__umoddi3+0x638>
    2ba0:	00 00 1b 01 	l.j 97a4 <frameBuffer+0x497c>
    2ba4:	00 00 00 25 	l.j 2c38 <__umoddi3+0x6d4>
    2ba8:	01 00 05 02 	l.j 4003fb0 <_end+0x3f7f184>
    2bac:	00 00 25 64 	l.j c13c <frameBuffer+0x7314>
    2bb0:	03 86 0a 01 	l.j fe1853b4 <_end+0xfe100588>
    2bb4:	05 01 00 05 	l.jal 4042bc8 <_end+0x3fbdd9c>
    2bb8:	02 00 00 25 	l.j f8002c4c <_end+0xf7f7de20>
    2bbc:	64 18 05 03 	*inconnu*
    2bc0:	00 05 02 00 	l.j 1433c0 <_end+0xbe594>
    2bc4:	00 25 64 19 	l.j 95bc28 <_end+0x8d6dfc>
    2bc8:	05 03 00 05 	l.jal 40c2bdc <_end+0x403ddb0>
    2bcc:	02 00 00 25 	l.j f8002c60 <_end+0xf7f7de34>
    2bd0:	64 03 db 7d 	*inconnu*
    2bd4:	01 05 03 00 	l.j 41437d4 <_end+0x40be9a8>
    2bd8:	05 02 00 00 	l.jal 4082bd8 <_end+0x3ffddac>
    2bdc:	25 64 18 05 	*inconnu*
    2be0:	03 00 05 02 	l.j fc003fe8 <_end+0xfbf7f1bc>
    2be4:	00 00 25 64 	l.j c174 <frameBuffer+0x734c>
    2be8:	18 05 03 00 	*inconnu*
    2bec:	05 02 00 00 	l.jal 4082bec <_end+0x3ffddc0>
    2bf0:	25 64 18 05 	*inconnu*
    2bf4:	03 00 05 02 	l.j fc003ffc <_end+0xfbf7f1d0>
    2bf8:	00 00 25 64 	l.j c188 <frameBuffer+0x7360>
    2bfc:	18 05 03 00 	*inconnu*
    2c00:	05 02 00 00 	l.jal 4082c00 <_end+0x3ffddd4>
    2c04:	25 64 18 05 	*inconnu*
    2c08:	03 00 05 02 	l.j fc004010 <_end+0xfbf7f1e4>
    2c0c:	00 00 25 64 	l.j c19c <frameBuffer+0x7374>
    2c10:	19 05 03 00 	*inconnu*
    2c14:	05 02 00 00 	l.jal 4082c14 <_end+0x3ffdde8>
    2c18:	25 64 18 05 	*inconnu*
    2c1c:	03 00 05 02 	l.j fc004024 <_end+0xfbf7f1f8>
    2c20:	00 00 25 64 	l.j c1b0 <frameBuffer+0x7388>
    2c24:	18 05 03 00 	*inconnu*
    2c28:	05 02 00 00 	l.jal 4082c28 <_end+0x3ffddfc>
    2c2c:	25 64 06 3d 	*inconnu*
    2c30:	05 06 00 05 	l.jal 4182c44 <_end+0x40fde18>
    2c34:	02 00 00 25 	l.j f8002cc8 <_end+0xf7f7de9c>
    2c38:	6c 03 5a 01 	l.lwa r0,23041(r3)
    2c3c:	05 06 00 05 	l.jal 4182c50 <_end+0x40fde24>
    2c40:	02 00 00 25 	l.j f8002cd4 <_end+0xf7f7dea8>
    2c44:	70 06 18 05 	l.nios_rrr r0,r6,r3,0x5
    2c48:	03 00 05 02 	l.j fc004050 <_end+0xfbf7f224>
    2c4c:	00 00 25 74 	l.j c21c <frameBuffer+0x73f4>
    2c50:	3c 05 03 00 	*inconnu*
    2c54:	05 02 00 00 	l.jal 4082c54 <_end+0x3ffde28>
    2c58:	25 74 06 01 	*inconnu*
    2c5c:	05 06 00 05 	l.jal 4182c70 <_end+0x40fde44>
    2c60:	02 00 00 25 	l.j f8002cf4 <_end+0xf7f7dec8>
    2c64:	7c 06 19 05 	*inconnu*
    2c68:	07 00 05 02 	l.jal fc004070 <_end+0xfbf7f244>
    2c6c:	00 00 25 7c 	l.j c25c <frameBuffer+0x7434>
    2c70:	06 01 05 0a 	l.jal f8044098 <_end+0xf7fbf26c>
    2c74:	00 05 02 00 	l.j 143474 <_end+0xbe648>
    2c78:	00 25 88 06 	l.j 964c90 <_end+0x8dfe64>
    2c7c:	1b 05 04 00 	*inconnu*
    2c80:	05 02 00 00 	l.jal 4082c80 <_end+0x3ffde54>
    2c84:	25 88 01 05 	*inconnu*
    2c88:	04 00 05 02 	l.jal 4090 <__clz_tab+0x13a8>
    2c8c:	00 00 25 88 	l.j c2ac <frameBuffer+0x7484>
    2c90:	01 05 04 00 	l.j 4143c90 <_end+0x40bee64>
    2c94:	05 02 00 00 	l.jal 4082c94 <_end+0x3ffde68>
    2c98:	25 88 01 05 	*inconnu*
    2c9c:	04 00 05 02 	l.jal 40a4 <__clz_tab+0x13bc>
    2ca0:	00 00 25 88 	l.j c2c0 <frameBuffer+0x7498>
    2ca4:	00 02 04 01 	l.j 83ca8 <frameBuffer+0x7ee80>
    2ca8:	01 05 04 00 	l.j 4143ca8 <_end+0x40bee7c>
    2cac:	05 02 00 00 	l.jal 4082cac <_end+0x3ffde80>
    2cb0:	25 94 00 02 	*inconnu*
    2cb4:	04 04 06 01 	l.jal 1044b8 <_end+0x7f68c>
    2cb8:	05 04 00 05 	l.jal 4102ccc <_end+0x407dea0>
    2cbc:	02 00 00 25 	l.j f8002d50 <_end+0xf7f7df24>
    2cc0:	a8 00 02 04 	l.ori r0,r0,0x204
    2cc4:	0a 01 05 04 	l.adrp r16,20a0a000 <_end+0x209851d4>
    2cc8:	00 05 02 00 	l.j 1434c8 <_end+0xbe69c>
    2ccc:	00 25 ac 00 	l.j 96dccc <_end+0x8e8ea0>
    2cd0:	02 04 15 06 	l.j f81080e8 <_end+0xf80832bc>
    2cd4:	01 05 04 00 	l.j 4143cd4 <_end+0x40beea8>
    2cd8:	05 02 00 00 	l.jal 4082cd8 <_end+0x3ffdeac>
    2cdc:	25 c0 00 02 	*inconnu*
    2ce0:	04 16 06 01 	l.jal 5844e4 <_end+0x4ff6b8>
    2ce4:	05 04 00 05 	l.jal 4102cf8 <_end+0x407decc>
    2ce8:	02 00 00 25 	l.j f8002d7c <_end+0xf7f7df50>
    2cec:	c8 00 02 04 	*inconnu*
    2cf0:	00 19 05 07 	l.j 64410c <_end+0x5bf2e0>
    2cf4:	00 05 02 00 	l.j 1434f4 <_end+0xbe6c8>
    2cf8:	00 25 cc 00 	l.j 975cf8 <_end+0x8f0ecc>
    2cfc:	02 04 16 06 	l.j f8108514 <_end+0xf80836e8>
    2d00:	15 05 04 00 	*inconnu*
    2d04:	05 02 00 00 	l.jal 4082d04 <_end+0x3ffded8>
    2d08:	25 cc 00 02 	*inconnu*
    2d0c:	04 00 19 05 	l.jal 9120 <frameBuffer+0x42f8>
    2d10:	04 00 05 02 	l.jal 4118 <__clz_tab+0x1430>
    2d14:	00 00 25 cc 	l.j c444 <frameBuffer+0x761c>
    2d18:	06 01 05 07 	l.jal f8044134 <_end+0xf7fbf308>
    2d1c:	00 05 02 00 	l.j 14351c <_end+0xbe6f0>
    2d20:	00 25 d4 06 	l.j 977d38 <_end+0x8f2f0c>
    2d24:	1c 05 08 00 	*inconnu*
    2d28:	05 02 00 00 	l.jal 4082d28 <_end+0x3ffdefc>
    2d2c:	25 d4 06 18 	*inconnu*
    2d30:	05 11 00 05 	l.jal 4442d44 <_end+0x43bdf18>
    2d34:	02 00 00 25 	l.j f8002dc8 <_end+0xf7f7df9c>
    2d38:	d8 01 05 1e 	l.sb 1310(r1),r0
    2d3c:	00 05 02 00 	l.j 14353c <_end+0xbe710>
    2d40:	00 25 dc 16 	l.j 979d98 <_end+0x8f4f6c>
    2d44:	05 0b 00 05 	l.jal 42c2d58 <_end+0x423df2c>
    2d48:	02 00 00 25 	l.j f8002ddc <_end+0xf7f7dfb0>
    2d4c:	e0 06 18 05 	l.xor r0,r6,r3
    2d50:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2d54:	00 00 25 e0 	l.j c4d4 <frameBuffer+0x76ac>
    2d58:	06 01 05 0b 	l.jal f8044184 <_end+0xf7fbf358>
    2d5c:	00 05 02 00 	l.j 14355c <_end+0xbe730>
    2d60:	00 25 e4 06 	l.j 97bd78 <_end+0x8f6f4c>
    2d64:	18 05 08 00 	*inconnu*
    2d68:	05 02 00 00 	l.jal 4082d68 <_end+0x3ffdf3c>
    2d6c:	25 e4 06 01 	*inconnu*
    2d70:	05 0b 00 05 	l.jal 42c2d84 <_end+0x423df58>
    2d74:	02 00 00 25 	l.j f8002e08 <_end+0xf7f7dfdc>
    2d78:	e8 06 1a 05 	*inconnu*
    2d7c:	04 00 05 02 	l.jal 4184 <__clz_tab+0x149c>
    2d80:	00 00 25 e8 	l.j c520 <frameBuffer+0x76f8>
    2d84:	01 05 04 00 	l.j 4143d84 <_end+0x40bef58>
    2d88:	05 02 00 00 	l.jal 4082d88 <_end+0x3ffdf5c>
    2d8c:	25 e8 01 05 	*inconnu*
    2d90:	04 00 05 02 	l.jal 4198 <__clz_tab+0x14b0>
    2d94:	00 00 25 e8 	l.j c534 <frameBuffer+0x770c>
    2d98:	01 05 04 00 	l.j 4143d98 <_end+0x40bef6c>
    2d9c:	05 02 00 00 	l.jal 4082d9c <_end+0x3ffdf70>
    2da0:	25 f0 01 05 	*inconnu*
    2da4:	04 00 05 02 	l.jal 41ac <__clz_tab+0x14c4>
    2da8:	00 00 25 fc 	l.j c598 <frameBuffer+0x7770>
    2dac:	00 02 04 02 	l.j 83db4 <frameBuffer+0x7ef8c>
    2db0:	06 01 05 04 	l.jal f80441c0 <_end+0xf7fbf394>
    2db4:	00 05 02 00 	l.j 1435b4 <_end+0xbe788>
    2db8:	00 26 00 00 	l.j 982db8 <_end+0x8fdf8c>
    2dbc:	02 04 00 01 	l.j f8102dc0 <_end+0xf807df94>
    2dc0:	05 04 00 05 	l.jal 4102dd4 <_end+0x407dfa8>
    2dc4:	02 00 00 26 	l.j f8002e5c <_end+0xf7f7e030>
    2dc8:	04 06 01 05 	l.jal 1831dc <_end+0xfe3b0>
    2dcc:	04 00 05 02 	l.jal 41d4 <__clz_tab+0x14ec>
    2dd0:	00 00 26 04 	l.j c5e0 <frameBuffer+0x77b8>
    2dd4:	00 02 04 01 	l.j 83dd8 <frameBuffer+0x7efb0>
    2dd8:	01 05 04 00 	l.j 4143dd8 <_end+0x40befac>
    2ddc:	05 02 00 00 	l.jal 4082ddc <_end+0x3ffdfb0>
    2de0:	26 04 00 02 	*inconnu*
    2de4:	04 02 01 05 	l.jal 831f8 <frameBuffer+0x7e3d0>
    2de8:	04 00 05 02 	l.jal 41f0 <__clz_tab+0x1508>
    2dec:	00 00 26 0c 	l.j c61c <frameBuffer+0x77f4>
    2df0:	01 05 04 00 	l.j 4143df0 <_end+0x40befc4>
    2df4:	05 02 00 00 	l.jal 4082df4 <_end+0x3ffdfc8>
    2df8:	26 10 01 05 	*inconnu*
    2dfc:	04 00 05 02 	l.jal 4204 <__clz_tab+0x151c>
    2e00:	00 00 26 1c 	l.j c670 <frameBuffer+0x7848>
    2e04:	00 02 04 03 	l.j 83e10 <frameBuffer+0x7efe8>
    2e08:	01 05 04 00 	l.j 4143e08 <_end+0x40befdc>
    2e0c:	05 02 00 00 	l.jal 4082e0c <_end+0x3ffdfe0>
    2e10:	26 20 01 05 	*inconnu*
    2e14:	04 00 05 02 	l.jal 421c <__clz_tab+0x1534>
    2e18:	00 00 26 2c 	l.j c6c8 <frameBuffer+0x78a0>
    2e1c:	00 02 04 05 	l.j 83e30 <frameBuffer+0x7f008>
    2e20:	01 05 04 00 	l.j 4143e20 <_end+0x40beff4>
    2e24:	05 02 00 00 	l.jal 4082e24 <_end+0x3ffdff8>
    2e28:	26 34 00 02 	*inconnu*
    2e2c:	04 07 01 05 	l.jal 1c3240 <_end+0x13e414>
    2e30:	04 00 05 02 	l.jal 4238 <__clz_tab+0x1550>
    2e34:	00 00 26 38 	l.j c714 <frameBuffer+0x78ec>
    2e38:	00 02 04 09 	l.j 83e5c <frameBuffer+0x7f034>
    2e3c:	01 05 04 00 	l.j 4143e3c <_end+0x40bf010>
    2e40:	05 02 00 00 	l.jal 4082e40 <_end+0x3ffe014>
    2e44:	26 38 01 05 	*inconnu*
    2e48:	04 00 05 02 	l.jal 4250 <__clz_tab+0x1568>
    2e4c:	00 00 26 40 	l.j c74c <frameBuffer+0x7924>
    2e50:	00 02 04 00 	l.j 83e50 <frameBuffer+0x7f028>
    2e54:	06 51 05 0a 	l.jal f944427c <_end+0xf93bf450>
    2e58:	00 05 02 00 	l.j 143658 <_end+0xbe82c>
    2e5c:	00 26 44 06 	l.j 993e74 <_end+0x90f048>
    2e60:	01 05 07 00 	l.j 4144a60 <_end+0x40bfc34>
    2e64:	05 02 00 00 	l.jal 4082e64 <_end+0x3ffe038>
    2e68:	26 44 06 01 	*inconnu*
    2e6c:	05 0a 00 05 	l.jal 4282e80 <_end+0x41fe054>
    2e70:	02 00 00 26 	l.j f8002f08 <_end+0xf7f7e0dc>
    2e74:	4c 06 1b 05 	l.maci r6,6917
    2e78:	04 00 05 02 	l.jal 4280 <__clz_tab+0x1598>
    2e7c:	00 00 26 4c 	l.j c7ac <frameBuffer+0x7984>
    2e80:	18 05 04 00 	*inconnu*
    2e84:	05 02 00 00 	l.jal 4082e84 <_end+0x3ffe058>
    2e88:	26 4c 1a 05 	*inconnu*
    2e8c:	04 00 05 02 	l.jal 4294 <__clz_tab+0x15ac>
    2e90:	00 00 26 4c 	l.j c7c0 <frameBuffer+0x7998>
    2e94:	19 05 08 00 	*inconnu*
    2e98:	05 02 00 00 	l.jal 4082e98 <_end+0x3ffe06c>
    2e9c:	26 4c 18 05 	*inconnu*
    2ea0:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    2ea4:	00 00 26 4c 	l.j c7d4 <frameBuffer+0x79ac>
    2ea8:	18 05 08 00 	*inconnu*
    2eac:	05 02 00 00 	l.jal 4082eac <_end+0x3ffe080>
    2eb0:	26 4c 06 01 	*inconnu*
    2eb4:	05 10 00 05 	l.jal 4402ec8 <_end+0x437e09c>
    2eb8:	02 00 00 26 	l.j f8002f50 <_end+0xf7f7e124>
    2ebc:	54 06 5e 05 	*inconnu*
    2ec0:	03 00 05 02 	l.j fc0042c8 <_end+0xfbf7f49c>
    2ec4:	00 00 26 54 	l.j c814 <frameBuffer+0x79ec>
    2ec8:	18 05 03 00 	*inconnu*
    2ecc:	05 02 00 00 	l.jal 4082ecc <_end+0x3ffe0a0>
    2ed0:	26 54 6f 05 	*inconnu*
    2ed4:	03 00 05 02 	l.j fc0042dc <_end+0xfbf7f4b0>
    2ed8:	00 00 26 54 	l.j c828 <frameBuffer+0x7a00>
    2edc:	06 18 05 01 	l.jal f86042e0 <_end+0xf857f4b4>
    2ee0:	00 05 02 00 	l.j 1436e0 <_end+0xbe8b4>
    2ee4:	00 26 5c 06 	l.j 999efc <_end+0x9150d0>
    2ee8:	03 e6 7e 01 	l.j ff9a26ec <_end+0xff91d8c0>
    2eec:	05 04 00 05 	l.jal 4102f00 <_end+0x407e0d4>
    2ef0:	02 00 00 26 	l.j f8002f88 <_end+0xf7f7e15c>
    2ef4:	5c 01 05 04 	*inconnu*
    2ef8:	00 05 02 00 	l.j 1436f8 <_end+0xbe8cc>
    2efc:	00 26 5c 01 	l.j 999f00 <_end+0x9150d4>
    2f00:	05 04 00 05 	l.jal 4102f14 <_end+0x407e0e8>
    2f04:	02 00 00 26 	l.j f8002f9c <_end+0xf7f7e170>
    2f08:	5c 01 05 04 	*inconnu*
    2f0c:	00 05 02 00 	l.j 14370c <_end+0xbe8e0>
    2f10:	00 26 5c 00 	l.j 999f10 <_end+0x9150e4>
    2f14:	02 04 01 01 	l.j f8103318 <_end+0xf807e4ec>
    2f18:	05 04 00 05 	l.jal 4102f2c <_end+0x407e100>
    2f1c:	02 00 00 26 	l.j f8002fb4 <_end+0xf7f7e188>
    2f20:	6c 00 02 04 	l.lwa r0,516(r0)
    2f24:	04 06 01 05 	l.jal 183338 <_end+0xfe50c>
    2f28:	04 00 05 02 	l.jal 4330 <__clz_tab+0x1648>
    2f2c:	00 00 26 80 	l.j c92c <frameBuffer+0x7b04>
    2f30:	00 02 04 0a 	l.j 83f58 <frameBuffer+0x7f130>
    2f34:	01 05 04 00 	l.j 4143f34 <_end+0x40bf108>
    2f38:	05 02 00 00 	l.jal 4082f38 <_end+0x3ffe10c>
    2f3c:	26 84 00 02 	*inconnu*
    2f40:	04 15 06 01 	l.jal 544744 <_end+0x4bf918>
    2f44:	05 04 00 05 	l.jal 4102f58 <_end+0x407e12c>
    2f48:	02 00 00 26 	l.j f8002fe0 <_end+0xf7f7e1b4>
    2f4c:	98 00 02 04 	l.lhs r0,516(r0)
    2f50:	16 06 01 05 	*inconnu*
    2f54:	04 00 05 02 	l.jal 435c <__clz_tab+0x1674>
    2f58:	00 00 26 a0 	l.j c9d8 <frameBuffer+0x7bb0>
    2f5c:	00 02 04 00 	l.j 83f5c <frameBuffer+0x7f134>
    2f60:	18 05 07 00 	*inconnu*
    2f64:	05 02 00 00 	l.jal 4082f64 <_end+0x3ffe138>
    2f68:	26 a4 00 02 	*inconnu*
    2f6c:	04 16 06 16 	l.jal 5847c4 <_end+0x4ff998>
    2f70:	05 04 00 05 	l.jal 4102f84 <_end+0x407e158>
    2f74:	02 00 00 26 	l.j f800300c <_end+0xf7f7e1e0>
    2f78:	a4 00 02 04 	l.andi r0,r0,0x204
    2f7c:	00 18 05 04 	l.j 60438c <_end+0x57f560>
    2f80:	00 05 02 00 	l.j 143780 <_end+0xbe954>
    2f84:	00 26 a4 06 	l.j 9abf9c <_end+0x927170>
    2f88:	01 05 07 00 	l.j 4144b88 <_end+0x40bfd5c>
    2f8c:	05 02 00 00 	l.jal 4082f8c <_end+0x3ffe160>
    2f90:	26 ac 06 21 	*inconnu*
    2f94:	05 08 00 05 	l.jal 4202fa8 <_end+0x417e17c>
    2f98:	02 00 00 26 	l.j f8003030 <_end+0xf7f7e204>
    2f9c:	ac 06 01 05 	l.xori r0,r6,261
    2fa0:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    2fa4:	00 00 26 b8 	l.j ca84 <frameBuffer+0x7c5c>
    2fa8:	00 02 04 01 	l.j 83fac <frameBuffer+0x7f184>
    2fac:	01 05 14 00 	l.j 4147fac <_end+0x40c3180>
    2fb0:	05 02 00 00 	l.jal 4082fb0 <_end+0x3ffe184>
    2fb4:	26 c0 00 02 	*inconnu*
    2fb8:	04 00 06 19 	l.jal 481c <__clz_tab+0x1b34>
    2fbc:	05 05 00 05 	l.jal 4142fd0 <_end+0x40be1a4>
    2fc0:	02 00 00 26 	l.j f8003058 <_end+0xf7f7e22c>
    2fc4:	c0 18 05 05 	l.mtspr r24,r0,0x505
    2fc8:	00 05 02 00 	l.j 1437c8 <_end+0xbe99c>
    2fcc:	00 26 c0 01 	l.j 9b2fd0 <_end+0x92e1a4>
    2fd0:	05 05 00 05 	l.jal 4142fe4 <_end+0x40be1b8>
    2fd4:	02 00 00 26 	l.j f800306c <_end+0xf7f7e240>
    2fd8:	c0 01 05 05 	l.mtspr r1,r0,0x505
    2fdc:	00 05 02 00 	l.j 1437dc <_end+0xbe9b0>
    2fe0:	00 26 c0 01 	l.j 9b2fe4 <_end+0x92e1b8>
    2fe4:	05 05 00 05 	l.jal 4142ff8 <_end+0x40be1cc>
    2fe8:	02 00 00 26 	l.j f8003080 <_end+0xf7f7e254>
    2fec:	c0 06 20 05 	l.mtspr r6,r4,0x5
    2ff0:	0e 00 05 02 	l.bnf f80043f8 <_end+0xf7f7f5cc>
    2ff4:	00 00 26 c4 	l.j cb04 <frameBuffer+0x7cdc>
    2ff8:	0e 05 05 00 	l.bnf f81443f8 <_end+0xf80bf5cc>
    2ffc:	05 02 00 00 	l.jal 4082ffc <_end+0x3ffe1d0>
    3000:	26 cc 06 01 	*inconnu*
    3004:	05 05 00 05 	l.jal 4143018 <_end+0x40be1ec>
    3008:	02 00 00 26 	l.j f80030a0 <_end+0xf7f7e274>
    300c:	cc 01 05 05 	l.swa 1285(r1),r0
    3010:	00 05 02 00 	l.j 143810 <_end+0xbe9e4>
    3014:	00 26 d8 1c 	l.j 9b9084 <_end+0x934258>
    3018:	05 08 00 05 	l.jal 420302c <_end+0x417e200>
    301c:	02 00 00 26 	l.j f80030b4 <_end+0xf7f7e288>
    3020:	d8 19 05 08 	l.sb 1288(r25),r0
    3024:	00 05 02 00 	l.j 143824 <_end+0xbe9f8>
    3028:	00 26 d8 19 	l.j 9b908c <_end+0x934260>
    302c:	05 05 00 05 	l.jal 4143040 <_end+0x40be214>
    3030:	02 00 00 26 	l.j f80030c8 <_end+0xf7f7e29c>
    3034:	d8 18 05 05 	l.sb 1285(r24),r0
    3038:	00 05 02 00 	l.j 143838 <_end+0xbea0c>
    303c:	00 26 d8 18 	l.j 9b909c <_end+0x934270>
    3040:	05 05 00 05 	l.jal 4143054 <_end+0x40be228>
    3044:	02 00 00 26 	l.j f80030dc <_end+0xf7f7e2b0>
    3048:	d8 06 01 05 	l.sb 261(r6),r0
    304c:	0d 00 05 02 	l.bnf 4004454 <_end+0x3f7f628>
    3050:	00 00 26 e0 	l.j cbd0 <frameBuffer+0x7da8>
    3054:	06 3e 05 03 	l.jal f8f84460 <_end+0xf8eff634>
    3058:	00 05 02 00 	l.j 143858 <_end+0xbea2c>
    305c:	00 26 e0 18 	l.j 9bb0bc <_end+0x936290>
    3060:	05 03 00 05 	l.jal 40c3074 <_end+0x403e248>
    3064:	02 00 00 26 	l.j f80030fc <_end+0xf7f7e2d0>
    3068:	e0 6f 05 03 	*inconnu*
    306c:	00 05 02 00 	l.j 14386c <_end+0xbea40>
    3070:	00 26 e0 06 	l.j 9bb088 <_end+0x93625c>
    3074:	18 05 01 00 	*inconnu*
    3078:	05 02 00 00 	l.jal 4083078 <_end+0x3ffe24c>
    307c:	26 e8 06 03 	*inconnu*
    3080:	a2 7e 01 05 	l.addic r19,r30,261
    3084:	04 00 05 02 	l.jal 448c <__clz_tab+0x17a4>
    3088:	00 00 26 e8 	l.j cc28 <frameBuffer+0x7e00>
    308c:	06 01 05 07 	l.jal f80444a8 <_end+0xf7fbf67c>
    3090:	00 05 02 00 	l.j 143890 <_end+0xbea64>
    3094:	00 26 f8 06 	l.j 9c10ac <_end+0x93c280>
    3098:	18 05 06 00 	*inconnu*
    309c:	05 02 00 00 	l.jal 408309c <_end+0x3ffe270>
    30a0:	26 f8 06 01 	*inconnu*
    30a4:	05 09 00 05 	l.jal 42430b8 <_end+0x41be28c>
    30a8:	02 00 00 27 	l.j f8003144 <_end+0xf7f7e318>
    30ac:	00 00 02 04 	l.j 38bc <__clz_tab+0xbd4>
    30b0:	03 19 05 04 	l.j fc6444c0 <_end+0xfc5bf694>
    30b4:	00 05 02 00 	l.j 1438b4 <_end+0xbea88>
    30b8:	00 27 1c 00 	l.j 9ca0b8 <_end+0x94528c>
    30bc:	02 04 15 06 	l.j f81084d4 <_end+0xf80836a8>
    30c0:	01 05 04 00 	l.j 41440c0 <_end+0x40bf294>
    30c4:	05 02 00 00 	l.jal 40830c4 <_end+0x3ffe298>
    30c8:	27 30 00 02 	*inconnu*
    30cc:	04 16 06 01 	l.jal 5848d0 <_end+0x4ffaa4>
    30d0:	05 04 00 05 	l.jal 41030e4 <_end+0x407e2b8>
    30d4:	02 00 00 27 	l.j f8003170 <_end+0xf7f7e344>
    30d8:	38 00 02 04 	*inconnu*
    30dc:	00 19 05 07 	l.j 6444f8 <_end+0x5bf6cc>
    30e0:	00 05 02 00 	l.j 1438e0 <_end+0xbeab4>
    30e4:	00 27 3c 00 	l.j 9d20e4 <_end+0x94d2b8>
    30e8:	02 04 16 06 	l.j f8108900 <_end+0xf8083ad4>
    30ec:	15 05 04 00 	*inconnu*
    30f0:	05 02 00 00 	l.jal 40830f0 <_end+0x3ffe2c4>
    30f4:	27 3c 00 02 	*inconnu*
    30f8:	04 00 19 05 	l.jal 950c <frameBuffer+0x46e4>
    30fc:	04 00 05 02 	l.jal 4504 <__clz_tab+0x181c>
    3100:	00 00 27 3c 	l.j cdf0 <frameBuffer+0x7fc8>
    3104:	06 01 05 07 	l.jal f8044520 <_end+0xf7fbf6f4>
    3108:	00 05 02 00 	l.j 143908 <_end+0xbeadc>
    310c:	00 27 44 06 	l.j 9d4124 <_end+0x94f2f8>
    3110:	20 05 08 00 	*inconnu*
    3114:	05 02 00 00 	l.jal 4083114 <_end+0x3ffe2e8>
    3118:	27 44 06 2a 	*inconnu*
    311c:	05 04 00 05 	l.jal 4103130 <_end+0x407e304>
    3120:	02 00 00 27 	l.j f80031bc <_end+0xf7f7e390>
    3124:	48 03 6d 01 	*inconnu*
    3128:	05 0b 00 05 	l.jal 42c313c <_end+0x423e310>
    312c:	02 00 00 27 	l.j f80031c8 <_end+0xf7f7e39c>
    3130:	4c 06 18 05 	l.maci r6,6149
    3134:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    3138:	00 00 27 4c 	l.j ce68 <frameBuffer+0x8040>
    313c:	06 29 05 04 	l.jal f8a4454c <_end+0xf89bf720>
    3140:	00 05 02 00 	l.j 143940 <_end+0xbeb14>
    3144:	00 27 54 00 	l.j 9d8144 <_end+0x953318>
    3148:	02 04 13 06 	l.j f8107d60 <_end+0xf8082f34>
    314c:	12 05 08 00 	l.bf f814514c <_end+0xf80c0320>
    3150:	05 02 00 00 	l.jal 4083150 <_end+0x3ffe324>
    3154:	27 54 00 02 	*inconnu*
    3158:	04 00 1c 05 	l.jal a16c <frameBuffer+0x5344>
    315c:	04 00 05 02 	l.jal 4564 <__clz_tab+0x187c>
    3160:	00 00 27 54 	l.j ceb0 <frameBuffer+0x8088>
    3164:	01 05 04 00 	l.j 4144164 <_end+0x40bf338>
    3168:	05 02 00 00 	l.jal 4083168 <_end+0x3ffe33c>
    316c:	27 54 01 05 	*inconnu*
    3170:	04 00 05 02 	l.jal 4578 <__clz_tab+0x1890>
    3174:	00 00 27 54 	l.j cec4 <frameBuffer+0x809c>
    3178:	01 05 04 00 	l.j 4144178 <_end+0x40bf34c>
    317c:	05 02 00 00 	l.jal 408317c <_end+0x3ffe350>
    3180:	27 54 01 05 	*inconnu*
    3184:	04 00 05 02 	l.jal 458c <__clz_tab+0x18a4>
    3188:	00 00 27 54 	l.j ced8 <frameBuffer+0x80b0>
    318c:	01 05 04 00 	l.j 414418c <_end+0x40bf360>
    3190:	05 02 00 00 	l.jal 4083190 <_end+0x3ffe364>
    3194:	27 60 00 02 	*inconnu*
    3198:	04 01 01 05 	l.jal 435ac <frameBuffer+0x3e784>
    319c:	04 00 05 02 	l.jal 45a4 <__clz_tab+0x18bc>
    31a0:	00 00 27 60 	l.j cf20 <frameBuffer+0x80f8>
    31a4:	00 02 04 02 	l.j 841ac <frameBuffer+0x7f384>
    31a8:	01 05 04 00 	l.j 41441a8 <_end+0x40bf37c>
    31ac:	05 02 00 00 	l.jal 40831ac <_end+0x3ffe380>
    31b0:	27 70 01 05 	*inconnu*
    31b4:	04 00 05 02 	l.jal 45bc <__clz_tab+0x18d4>
    31b8:	00 00 27 74 	l.j cf88 <frameBuffer+0x8160>
    31bc:	01 05 04 00 	l.j 41441bc <_end+0x40bf390>
    31c0:	05 02 00 00 	l.jal 40831c0 <_end+0x3ffe394>
    31c4:	27 80 00 02 	*inconnu*
    31c8:	04 03 01 05 	l.jal c35dc <_end+0x3e7b0>
    31cc:	04 00 05 02 	l.jal 45d4 <__clz_tab+0x18ec>
    31d0:	00 00 27 84 	l.j cfe0 <frameBuffer+0x81b8>
    31d4:	01 05 04 00 	l.j 41441d4 <_end+0x40bf3a8>
    31d8:	05 02 00 00 	l.jal 40831d8 <_end+0x3ffe3ac>
    31dc:	27 90 00 02 	*inconnu*
    31e0:	04 05 01 05 	l.jal 1435f4 <_end+0xbe7c8>
    31e4:	04 00 05 02 	l.jal 45ec <__clz_tab+0x1904>
    31e8:	00 00 27 98 	l.j d048 <frameBuffer+0x8220>
    31ec:	00 02 04 09 	l.j 84210 <frameBuffer+0x7f3e8>
    31f0:	01 05 04 00 	l.j 41441f0 <_end+0x40bf3c4>
    31f4:	05 02 00 00 	l.jal 40831f4 <_end+0x3ffe3c8>
    31f8:	27 9c 01 05 	*inconnu*
    31fc:	04 00 05 02 	l.jal 4604 <__clz_tab+0x191c>
    3200:	00 00 27 a8 	l.j d0a0 <frameBuffer+0x8278>
    3204:	00 02 04 0a 	l.j 8422c <frameBuffer+0x7f404>
    3208:	01 05 04 00 	l.j 4144208 <_end+0x40bf3dc>
    320c:	05 02 00 00 	l.jal 408320c <_end+0x3ffe3e0>
    3210:	27 a8 00 02 	*inconnu*
    3214:	04 0b 01 05 	l.jal 2c3628 <_end+0x23e7fc>
    3218:	04 00 05 02 	l.jal 4620 <__clz_tab+0x1938>
    321c:	00 00 27 b8 	l.j d0fc <frameBuffer+0x82d4>
    3220:	01 05 04 00 	l.j 4144220 <_end+0x40bf3f4>
    3224:	05 02 00 00 	l.jal 4083224 <_end+0x3ffe3f8>
    3228:	27 bc 01 05 	*inconnu*
    322c:	04 00 05 02 	l.jal 4634 <__clz_tab+0x194c>
    3230:	00 00 27 c8 	l.j d150 <frameBuffer+0x8328>
    3234:	00 02 04 0c 	l.j 84264 <frameBuffer+0x7f43c>
    3238:	01 05 04 00 	l.j 4144238 <_end+0x40bf40c>
    323c:	05 02 00 00 	l.jal 408323c <_end+0x3ffe410>
    3240:	27 cc 01 05 	*inconnu*
    3244:	04 00 05 02 	l.jal 464c <__clz_tab+0x1964>
    3248:	00 00 27 d8 	l.j d1a8 <frameBuffer+0x8380>
    324c:	00 02 04 0e 	l.j 84284 <frameBuffer+0x7f45c>
    3250:	01 05 04 00 	l.j 4144250 <_end+0x40bf424>
    3254:	05 02 00 00 	l.jal 4083254 <_end+0x3ffe428>
    3258:	27 e0 00 02 	*inconnu*
    325c:	04 10 01 05 	l.jal 403670 <_end+0x37e844>
    3260:	04 00 05 02 	l.jal 4668 <__clz_tab+0x1980>
    3264:	00 00 27 e4 	l.j d1f4 <frameBuffer+0x83cc>
    3268:	00 02 04 12 	l.j 842b0 <frameBuffer+0x7f488>
    326c:	01 05 04 00 	l.j 414426c <_end+0x40bf440>
    3270:	05 02 00 00 	l.jal 4083270 <_end+0x3ffe444>
    3274:	27 e8 01 05 	*inconnu*
    3278:	04 00 05 02 	l.jal 4680 <__clz_tab+0x1998>
    327c:	00 00 27 e8 	l.j d21c <frameBuffer+0x83f4>
    3280:	01 05 04 00 	l.j 4144280 <_end+0x40bf454>
    3284:	05 02 00 00 	l.jal 4083284 <_end+0x3ffe458>
    3288:	27 e8 00 02 	*inconnu*
    328c:	04 13 01 05 	l.jal 4c36a0 <_end+0x43e874>
    3290:	04 00 05 02 	l.jal 4698 <__clz_tab+0x19b0>
    3294:	00 00 27 e8 	l.j d234 <frameBuffer+0x840c>
    3298:	00 02 04 00 	l.j 84298 <frameBuffer+0x7f470>
    329c:	1c 05 07 00 	*inconnu*
    32a0:	05 02 00 00 	l.jal 40832a0 <_end+0x3ffe474>
    32a4:	27 e8 19 05 	*inconnu*
    32a8:	04 00 05 02 	l.jal 46b0 <__clz_tab+0x19c8>
    32ac:	00 00 27 e8 	l.j d24c <frameBuffer+0x8424>
    32b0:	18 05 04 00 	*inconnu*
    32b4:	05 02 00 00 	l.jal 40832b4 <_end+0x3ffe488>
    32b8:	27 e8 18 05 	*inconnu*
    32bc:	04 00 05 02 	l.jal 46c4 <__clz_tab+0x19dc>
    32c0:	00 00 27 e8 	l.j d260 <frameBuffer+0x8438>
    32c4:	06 01 05 0c 	l.jal f80446f4 <_end+0xf7fbf8c8>
    32c8:	00 05 02 00 	l.j 143ac8 <_end+0xbec9c>
    32cc:	00 27 f0 06 	l.j 9ff2e4 <_end+0x97a4b8>
    32d0:	71 05 03 00 	l.nios_crc r8,r5,r0,0x0
    32d4:	05 02 00 00 	l.jal 40832d4 <_end+0x3ffe4a8>
    32d8:	27 f0 18 05 	*inconnu*
    32dc:	03 00 05 02 	l.j fc0046e4 <_end+0xfbf7f8b8>
    32e0:	00 00 27 f0 	l.j d2a0 <frameBuffer+0x8478>
    32e4:	6f 05 03 00 	l.lwa r24,768(r5)
    32e8:	05 02 00 00 	l.jal 40832e8 <_end+0x3ffe4bc>
    32ec:	27 f0 06 18 	*inconnu*
    32f0:	05 01 00 05 	l.jal 4043304 <_end+0x3fbe4d8>
    32f4:	02 00 00 27 	l.j f8003390 <_end+0xf7f7e564>
    32f8:	f8 00 02 04 	*inconnu*
    32fc:	03 03 8d 7e 	l.j fc0e68f4 <_end+0xfc061ac8>
    3300:	01 05 04 00 	l.j 4144300 <_end+0x40bf4d4>
    3304:	05 02 00 00 	l.jal 4083304 <_end+0x3ffe4d8>
    3308:	28 14 00 02 	*inconnu*
    330c:	04 00 06 2f 	l.jal 4bc8 <__clz_tab+0x1ee0>
    3310:	05 04 00 05 	l.jal 4103324 <_end+0x407e4f8>
    3314:	02 00 00 28 	l.j f80033b4 <_end+0xf7f7e588>
    3318:	14 01 05 04 	*inconnu*
    331c:	00 05 02 00 	l.j 143b1c <_end+0xbecf0>
    3320:	00 28 14 01 	l.j a08324 <_end+0x9834f8>
    3324:	05 04 00 05 	l.jal 4103338 <_end+0x407e50c>
    3328:	02 00 00 28 	l.j f80033c8 <_end+0xf7f7e59c>
    332c:	14 01 05 04 	*inconnu*
    3330:	00 05 02 00 	l.j 143b30 <_end+0xbed04>
    3334:	00 28 14 00 	l.j a08334 <_end+0x983508>
    3338:	02 04 01 01 	l.j f810373c <_end+0xf807e910>
    333c:	05 04 00 05 	l.jal 4103350 <_end+0x407e524>
    3340:	02 00 00 28 	l.j f80033e0 <_end+0xf7f7e5b4>
    3344:	20 00 02 04 	l.sys 0x204
    3348:	04 06 01 05 	l.jal 18375c <_end+0xfe930>
    334c:	04 00 05 02 	l.jal 4754 <__clz_tab+0x1a6c>
    3350:	00 00 28 34 	l.j d420 <frameBuffer+0x85f8>
    3354:	00 02 04 0a 	l.j 8437c <frameBuffer+0x7f554>
    3358:	01 05 04 00 	l.j 4144358 <_end+0x40bf52c>
    335c:	05 02 00 00 	l.jal 408335c <_end+0x3ffe530>
    3360:	28 3c 00 02 	*inconnu*
    3364:	04 03 58 05 	l.jal d9378 <_end+0x5454c>
    3368:	04 00 05 02 	l.jal 4770 <__clz_tab+0x1a88>
    336c:	00 00 28 58 	l.j d4cc <frameBuffer+0x86a4>
    3370:	00 02 04 00 	l.j 84370 <frameBuffer+0x7f548>
    3374:	06 03 51 01 	l.jal f80d7778 <_end+0xf805294c>
    3378:	05 08 00 05 	l.jal 420338c <_end+0x417e560>
    337c:	02 00 00 28 	l.j f800341c <_end+0xf7f7e5f0>
    3380:	58 19 05 08 	*inconnu*
    3384:	00 05 02 00 	l.j 143b84 <_end+0xbed58>
    3388:	00 28 58 06 	l.j a193a0 <_end+0x994574>
    338c:	1c 05 08 00 	*inconnu*
    3390:	05 02 00 00 	l.jal 4083390 <_end+0x3ffe564>
    3394:	28 5c 12 05 	*inconnu*
    3398:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    339c:	00 00 28 60 	l.j d51c <frameBuffer+0x86f4>
    33a0:	06 18 05 08 	l.jal f86047c0 <_end+0xf857f994>
    33a4:	00 05 02 00 	l.j 143ba4 <_end+0xbed78>
    33a8:	00 28 60 06 	l.j a1b3c0 <_end+0x996594>
    33ac:	01 05 0b 00 	l.j 4145fac <_end+0x40c1180>
    33b0:	05 02 00 00 	l.jal 40833b0 <_end+0x3ffe584>
    33b4:	28 64 06 18 	*inconnu*
    33b8:	05 08 00 05 	l.jal 42033cc <_end+0x417e5a0>
    33bc:	02 00 00 28 	l.j f800345c <_end+0xf7f7e630>
    33c0:	64 06 1a 05 	*inconnu*
    33c4:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    33c8:	00 00 28 70 	l.j d588 <frameBuffer+0x8760>
    33cc:	14 05 11 00 	*inconnu*
    33d0:	05 02 00 00 	l.jal 40833d0 <_end+0x3ffe5a4>
    33d4:	28 74 01 05 	*inconnu*
    33d8:	1e 00 05 02 	*inconnu*
    33dc:	00 00 28 78 	l.j d5bc <frameBuffer+0x8794>
    33e0:	1a 05 08 00 	*inconnu*
    33e4:	05 02 00 00 	l.jal 40833e4 <_end+0x3ffe5b8>
    33e8:	28 7c 14 05 	*inconnu*
    33ec:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    33f0:	00 00 28 80 	l.j d5f0 <frameBuffer+0x87c8>
    33f4:	06 18 05 08 	l.jal f8604814 <_end+0xf857f9e8>
    33f8:	00 05 02 00 	l.j 143bf8 <_end+0xbedcc>
    33fc:	00 28 80 00 	l.j a233fc <_end+0x99e5d0>
    3400:	02 04 02 06 	l.j f8103c18 <_end+0xf807edec>
    3404:	19 05 08 00 	*inconnu*
    3408:	05 02 00 00 	l.jal 4083408 <_end+0x3ffe5dc>
    340c:	28 84 00 02 	*inconnu*
    3410:	04 00 01 05 	l.jal 3824 <__clz_tab+0xb3c>
    3414:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    3418:	00 00 28 88 	l.j d638 <frameBuffer+0x8810>
    341c:	00 02 04 02 	l.j 84424 <frameBuffer+0x7f5fc>
    3420:	01 05 08 00 	l.j 4145420 <_end+0x40c05f4>
    3424:	05 02 00 00 	l.jal 4083424 <_end+0x3ffe5f8>
    3428:	28 98 00 02 	*inconnu*
    342c:	04 00 06 01 	l.jal 4c30 <__clz_tab+0x1f48>
    3430:	05 08 00 05 	l.jal 4203444 <_end+0x417e618>
    3434:	02 00 00 28 	l.j f80034d4 <_end+0xf7f7e6a8>
    3438:	98 01 05 08 	l.lhs r0,1288(r1)
    343c:	00 05 02 00 	l.j 143c3c <_end+0xbee10>
    3440:	00 28 98 01 	l.j a29444 <_end+0x9a4618>
    3444:	05 08 00 05 	l.jal 4203458 <_end+0x417e62c>
    3448:	02 00 00 28 	l.j f80034e8 <_end+0xf7f7e6bc>
    344c:	98 01 05 08 	l.lhs r0,1288(r1)
    3450:	00 05 02 00 	l.j 143c50 <_end+0xbee24>
    3454:	00 28 98 01 	l.j a29458 <_end+0x9a462c>
    3458:	05 08 00 05 	l.jal 420346c <_end+0x417e640>
    345c:	02 00 00 28 	l.j f80034fc <_end+0xf7f7e6d0>
    3460:	98 01 05 08 	l.lhs r0,1288(r1)
    3464:	00 05 02 00 	l.j 143c64 <_end+0xbee38>
    3468:	00 28 98 00 	l.j a29468 <_end+0x9a463c>
    346c:	02 04 01 01 	l.j f8103870 <_end+0xf807ea44>
    3470:	05 08 00 05 	l.jal 4203484 <_end+0x417e658>
    3474:	02 00 00 28 	l.j f8003514 <_end+0xf7f7e6e8>
    3478:	98 00 02 04 	l.lhs r0,516(r0)
    347c:	02 01 05 08 	l.j f804489c <_end+0xf7fbfa70>
    3480:	00 05 02 00 	l.j 143c80 <_end+0xbee54>
    3484:	00 28 98 01 	l.j a29488 <_end+0x9a465c>
    3488:	05 08 00 05 	l.jal 420349c <_end+0x417e670>
    348c:	02 00 00 28 	l.j f800352c <_end+0xf7f7e700>
    3490:	98 01 05 08 	l.lhs r0,1288(r1)
    3494:	00 05 02 00 	l.j 143c94 <_end+0xbee68>
    3498:	00 28 a0 00 	l.j a2b498 <_end+0x9a666c>
    349c:	02 04 03 01 	l.j f81040a0 <_end+0xf807f274>
    34a0:	05 08 00 05 	l.jal 42034b4 <_end+0x417e688>
    34a4:	02 00 00 28 	l.j f8003544 <_end+0xf7f7e718>
    34a8:	a4 01 05 08 	l.andi r0,r1,0x508
    34ac:	00 05 02 00 	l.j 143cac <_end+0xbee80>
    34b0:	00 28 b0 00 	l.j a2f4b0 <_end+0x9aa684>
    34b4:	02 04 05 01 	l.j f81048b8 <_end+0xf807fa8c>
    34b8:	05 08 00 05 	l.jal 42034cc <_end+0x417e6a0>
    34bc:	02 00 00 28 	l.j f800355c <_end+0xf7f7e730>
    34c0:	b8 00 02 04 	*inconnu*
    34c4:	07 01 05 08 	l.jal fc0448e4 <_end+0xfbfbfab8>
    34c8:	00 05 02 00 	l.j 143cc8 <_end+0xbee9c>
    34cc:	00 28 bc 00 	l.j a324cc <_end+0x9ad6a0>
    34d0:	02 04 09 01 	l.j f81058d4 <_end+0xf8080aa8>
    34d4:	05 08 00 05 	l.jal 42034e8 <_end+0x417e6bc>
    34d8:	02 00 00 28 	l.j f8003578 <_end+0xf7f7e74c>
    34dc:	c0 01 05 08 	l.mtspr r1,r0,0x508
    34e0:	00 05 02 00 	l.j 143ce0 <_end+0xbeeb4>
    34e4:	00 28 cc 00 	l.j a364e4 <_end+0x9b16b8>
    34e8:	02 04 0a 01 	l.j f8105cec <_end+0xf8080ec0>
    34ec:	05 08 00 05 	l.jal 4203500 <_end+0x417e6d4>
    34f0:	02 00 00 28 	l.j f8003590 <_end+0xf7f7e764>
    34f4:	cc 00 02 04 	l.swa 516(r0),r0
    34f8:	0b 01 05 08 	l.adrp r24,20a12000 <_end+0x2098d1d4>
    34fc:	00 05 02 00 	l.j 143cfc <_end+0xbeed0>
    3500:	00 28 dc 01 	l.j a3a504 <_end+0x9b56d8>
    3504:	05 08 00 05 	l.jal 4203518 <_end+0x417e6ec>
    3508:	02 00 00 28 	l.j f80035a8 <_end+0xf7f7e77c>
    350c:	e0 01 05 08 	*inconnu*
    3510:	00 05 02 00 	l.j 143d10 <_end+0xbeee4>
    3514:	00 28 ec 00 	l.j a3e514 <_end+0x9b96e8>
    3518:	02 04 0c 01 	l.j f810651c <_end+0xf80816f0>
    351c:	05 08 00 05 	l.jal 4203530 <_end+0x417e704>
    3520:	02 00 00 28 	l.j f80035c0 <_end+0xf7f7e794>
    3524:	f0 01 05 08 	*inconnu*
    3528:	00 05 02 00 	l.j 143d28 <_end+0xbeefc>
    352c:	00 28 fc 00 	l.j a4252c <_end+0x9bd700>
    3530:	02 04 0e 01 	l.j f8106d34 <_end+0xf8081f08>
    3534:	05 08 00 05 	l.jal 4203548 <_end+0x417e71c>
    3538:	02 00 00 29 	l.j f80035dc <_end+0xf7f7e7b0>
    353c:	04 00 02 04 	l.jal 3d4c <__clz_tab+0x1064>
    3540:	10 01 05 08 	l.bf 44960 <frameBuffer+0x3fb38>
    3544:	00 05 02 00 	l.j 143d44 <_end+0xbef18>
    3548:	00 29 08 00 	l.j a45548 <_end+0x9c071c>
    354c:	02 04 12 01 	l.j f8107d50 <_end+0xf8082f24>
    3550:	05 08 00 05 	l.jal 4203564 <_end+0x417e738>
    3554:	02 00 00 29 	l.j f80035f8 <_end+0xf7f7e7cc>
    3558:	08 01 05 08 	l.adrp r0,20a12000 <_end+0x2098d1d4>
    355c:	00 05 02 00 	l.j 143d5c <_end+0xbef30>
    3560:	00 29 08 01 	l.j a45564 <_end+0x9c0738>
    3564:	05 08 00 05 	l.jal 4203578 <_end+0x417e74c>
    3568:	02 00 00 29 	l.j f800360c <_end+0xf7f7e7e0>
    356c:	10 00 02 04 	l.bf 3d7c <__clz_tab+0x1094>
    3570:	00 5d 05 08 	l.j 1744990 <_end+0x16bfb64>
    3574:	00 05 02 00 	l.j 143d74 <_end+0xbef48>
    3578:	00 29 10 1a 	l.j a475e0 <_end+0x9c27b4>
    357c:	05 08 00 05 	l.jal 4203590 <_end+0x417e764>
    3580:	02 00 00 29 	l.j f8003624 <_end+0xf7f7e7f8>
    3584:	10 19 05 08 	l.bf 6449a4 <_end+0x5bfb78>
    3588:	00 05 02 00 	l.j 143d88 <_end+0xbef5c>
    358c:	00 29 10 06 	l.j a475a4 <_end+0x9c2778>
    3590:	01 05 1e 00 	l.j 414ad90 <_end+0x40c5f64>
    3594:	05 02 00 00 	l.jal 4083594 <_end+0x3ffe768>
    3598:	29 14 01 05 	*inconnu*
    359c:	11 00 05 02 	l.bf 40049a4 <_end+0x3f7fb78>
    35a0:	00 00 29 18 	l.j da00 <frameBuffer+0x8bd8>
    35a4:	1d 05 08 00 	*inconnu*
    35a8:	05 02 00 00 	l.jal 40835a8 <_end+0x3ffe77c>
    35ac:	29 1c 11 05 	*inconnu*
    35b0:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    35b4:	00 00 29 20 	l.j da34 <frameBuffer+0x8c0c>
    35b8:	06 18 05 08 	l.jal f86049d8 <_end+0xf857fbac>
    35bc:	00 05 02 00 	l.j 143dbc <_end+0xbef90>
    35c0:	00 29 20 06 	l.j a4b5d8 <_end+0x9c67ac>
    35c4:	18 05 0b 00 	*inconnu*
    35c8:	05 02 00 00 	l.jal 40835c8 <_end+0x3ffe79c>
    35cc:	29 24 1b 05 	*inconnu*
    35d0:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    35d4:	00 00 29 30 	l.j da94 <frameBuffer+0x8c6c>
    35d8:	14 05 11 00 	*inconnu*
    35dc:	05 02 00 00 	l.jal 40835dc <_end+0x3ffe7b0>
    35e0:	29 34 01 05 	*inconnu*
    35e4:	1e 00 05 02 	*inconnu*
    35e8:	00 00 29 38 	l.j dac8 <frameBuffer+0x8ca0>
    35ec:	1a 05 08 00 	*inconnu*
    35f0:	05 02 00 00 	l.jal 40835f0 <_end+0x3ffe7c4>
    35f4:	29 3c 14 05 	*inconnu*
    35f8:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    35fc:	00 00 29 40 	l.j dafc <frameBuffer+0x8cd4>
    3600:	00 02 04 02 	l.j 84608 <frameBuffer+0x7f7e0>
    3604:	1a 05 08 00 	*inconnu*
    3608:	05 02 00 00 	l.jal 4083608 <_end+0x3ffe7dc>
    360c:	29 44 00 02 	*inconnu*
    3610:	04 00 01 05 	l.jal 3a24 <__clz_tab+0xd3c>
    3614:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    3618:	00 00 29 48 	l.j db38 <frameBuffer+0x8d10>
    361c:	00 02 04 02 	l.j 84624 <frameBuffer+0x7f7fc>
    3620:	01 05 08 00 	l.j 4145620 <_end+0x40c07f4>
    3624:	05 02 00 00 	l.jal 4083624 <_end+0x3ffe7f8>
    3628:	29 58 00 02 	*inconnu*
    362c:	04 00 12 05 	l.jal 7e40 <frameBuffer+0x3018>
    3630:	0b 00 05 02 	l.adrp r24,a06000 <_end+0x9811d4>
    3634:	00 00 29 5c 	l.j dba4 <frameBuffer+0x8d7c>
    3638:	06 18 05 08 	l.jal f8604a58 <_end+0xf857fc2c>
    363c:	00 05 02 00 	l.j 143e3c <_end+0xbf010>
    3640:	00 29 5c 18 	l.j a5a6a0 <_end+0x9d5874>
    3644:	05 08 00 05 	l.jal 4203658 <_end+0x417e82c>
    3648:	02 00 00 29 	l.j f80036ec <_end+0xf7f7e8c0>
    364c:	5c 18 05 08 	*inconnu*
    3650:	00 05 02 00 	l.j 143e50 <_end+0xbf024>
    3654:	00 29 5c 19 	l.j a5a6b8 <_end+0x9d588c>
    3658:	05 08 00 05 	l.jal 420366c <_end+0x417e840>
    365c:	02 00 00 29 	l.j f8003700 <_end+0xf7f7e8d4>
    3660:	5c 01 05 08 	*inconnu*
    3664:	00 05 02 00 	l.j 143e64 <_end+0xbf038>
    3668:	00 29 5c 01 	l.j a5a66c <_end+0x9d5840>
    366c:	05 08 00 05 	l.jal 4203680 <_end+0x417e854>
    3670:	02 00 00 29 	l.j f8003714 <_end+0xf7f7e8e8>
    3674:	5c 01 05 08 	*inconnu*
    3678:	00 05 02 00 	l.j 143e78 <_end+0xbf04c>
    367c:	00 29 5c 01 	l.j a5a680 <_end+0x9d5854>
    3680:	05 08 00 05 	l.jal 4203694 <_end+0x417e868>
    3684:	02 00 00 29 	l.j f8003728 <_end+0xf7f7e8fc>
    3688:	5c 01 05 08 	*inconnu*
    368c:	00 05 02 00 	l.j 143e8c <_end+0xbf060>
    3690:	00 29 5c 00 	l.j a5a690 <_end+0x9d5864>
    3694:	02 04 01 01 	l.j f8103a98 <_end+0xf807ec6c>
    3698:	05 08 00 05 	l.jal 42036ac <_end+0x417e880>
    369c:	02 00 00 29 	l.j f8003740 <_end+0xf7f7e914>
    36a0:	5c 00 02 04 	*inconnu*
    36a4:	02 01 05 08 	l.j f8044ac4 <_end+0xf7fbfc98>
    36a8:	00 05 02 00 	l.j 143ea8 <_end+0xbf07c>
    36ac:	00 29 5c 01 	l.j a5a6b0 <_end+0x9d5884>
    36b0:	05 08 00 05 	l.jal 42036c4 <_end+0x417e898>
    36b4:	02 00 00 29 	l.j f8003758 <_end+0xf7f7e92c>
    36b8:	5c 01 05 08 	*inconnu*
    36bc:	00 05 02 00 	l.j 143ebc <_end+0xbf090>
    36c0:	00 29 64 00 	l.j a5c6c0 <_end+0x9d7894>
    36c4:	02 04 03 01 	l.j f81042c8 <_end+0xf807f49c>
    36c8:	05 08 00 05 	l.jal 42036dc <_end+0x417e8b0>
    36cc:	02 00 00 29 	l.j f8003770 <_end+0xf7f7e944>
    36d0:	6c 01 05 08 	l.lwa r0,1288(r1)
    36d4:	00 05 02 00 	l.j 143ed4 <_end+0xbf0a8>
    36d8:	00 29 74 00 	l.j a606d8 <_end+0x9db8ac>
    36dc:	02 04 05 01 	l.j f8104ae0 <_end+0xf807fcb4>
    36e0:	05 08 00 05 	l.jal 42036f4 <_end+0x417e8c8>
    36e4:	02 00 00 29 	l.j f8003788 <_end+0xf7f7e95c>
    36e8:	80 00 02 04 	*inconnu*
    36ec:	07 01 05 08 	l.jal fc044b0c <_end+0xfbfbfce0>
    36f0:	00 05 02 00 	l.j 143ef0 <_end+0xbf0c4>
    36f4:	00 29 88 00 	l.j a656f4 <_end+0x9e08c8>
    36f8:	02 04 09 01 	l.j f8105afc <_end+0xf8080cd0>
    36fc:	05 08 00 05 	l.jal 4203710 <_end+0x417e8e4>
    3700:	02 00 00 29 	l.j f80037a4 <_end+0xf7f7e978>
    3704:	8c 01 05 08 	l.lbz r0,1288(r1)
    3708:	00 05 02 00 	l.j 143f08 <_end+0xbf0dc>
    370c:	00 29 98 00 	l.j a6970c <_end+0x9e48e0>
    3710:	02 04 0a 01 	l.j f8105f14 <_end+0xf80810e8>
    3714:	05 08 00 05 	l.jal 4203728 <_end+0x417e8fc>
    3718:	02 00 00 29 	l.j f80037bc <_end+0xf7f7e990>
    371c:	98 00 02 04 	l.lhs r0,516(r0)
    3720:	0b 01 05 08 	l.adrp r24,20a12000 <_end+0x2098d1d4>
    3724:	00 05 02 00 	l.j 143f24 <_end+0xbf0f8>
    3728:	00 29 a8 01 	l.j a6d72c <_end+0x9e8900>
    372c:	05 08 00 05 	l.jal 4203740 <_end+0x417e914>
    3730:	02 00 00 29 	l.j f80037d4 <_end+0xf7f7e9a8>
    3734:	ac 01 05 08 	l.xori r0,r1,1288
    3738:	00 05 02 00 	l.j 143f38 <_end+0xbf10c>
    373c:	00 29 b8 00 	l.j a7173c <_end+0x9ec910>
    3740:	02 04 0c 01 	l.j f8106744 <_end+0xf8081918>
    3744:	05 08 00 05 	l.jal 4203758 <_end+0x417e92c>
    3748:	02 00 00 29 	l.j f80037ec <_end+0xf7f7e9c0>
    374c:	c0 01 05 08 	l.mtspr r1,r0,0x508
    3750:	00 05 02 00 	l.j 143f50 <_end+0xbf124>
    3754:	00 29 c8 00 	l.j a75754 <_end+0x9f0928>
    3758:	02 04 0e 01 	l.j f8106f5c <_end+0xf8082130>
    375c:	05 08 00 05 	l.jal 4203770 <_end+0x417e944>
    3760:	02 00 00 29 	l.j f8003804 <_end+0xf7f7e9d8>
    3764:	d4 00 02 04 	l.sw 516(r0),r0
    3768:	10 01 05 08 	l.bf 44b88 <frameBuffer+0x3fd60>
    376c:	00 05 02 00 	l.j 143f6c <_end+0xbf140>
    3770:	00 29 dc 00 	l.j a7a770 <_end+0x9f5944>
    3774:	02 04 12 01 	l.j f8107f78 <_end+0xf808314c>
    3778:	05 08 00 05 	l.jal 420378c <_end+0x417e960>
    377c:	02 00 00 29 	l.j f8003820 <_end+0xf7f7e9f4>
    3780:	e8 00 02 04 	*inconnu*
    3784:	00 06 18 05 	l.j 189798 <_end+0x10496c>
    3788:	08 00 05 02 	l.adrp r0,a06000 <_end+0x9811d4>
    378c:	00 00 2a 14 	l.j dfdc <frameBuffer+0x91b4>
    3790:	00 02 04 12 	l.j 847d8 <frameBuffer+0x7f9b0>
    3794:	16 05 08 00 	*inconnu*
    3798:	05 02 00 00 	l.jal 4083798 <_end+0x3ffe96c>
    379c:	2a 18 06 01 	*inconnu*
    37a0:	05 08 00 05 	l.jal 42037b4 <_end+0x417e988>
    37a4:	02 00 00 2a 	l.j f800384c <_end+0xf7f7ea20>
    37a8:	18 01 05 08 	*inconnu*
    37ac:	00 05 02 00 	l.j 143fac <_end+0xbf180>
    37b0:	00 2a 18 01 	l.j a897b4 <_end+0xa04988>
    37b4:	05 08 00 05 	l.jal 42037c8 <_end+0x417e99c>
    37b8:	02 00 00 2a 	l.j f8003860 <_end+0xf7f7ea34>
    37bc:	18 00 02 04 	l.movhi r0,0x204
    37c0:	00 18 05 08 	l.j 604be0 <_end+0x57fdb4>
    37c4:	00 05 02 00 	l.j 143fc4 <_end+0xbf198>
    37c8:	00 2a 18 01 	l.j a897cc <_end+0xa049a0>
    37cc:	05 08 00 05 	l.jal 42037e0 <_end+0x417e9b4>
    37d0:	02 00 00 2a 	l.j f8003878 <_end+0xf7f7ea4c>
    37d4:	18 01 05 08 	*inconnu*
    37d8:	00 05 02 00 	l.j 143fd8 <_end+0xbf1ac>
    37dc:	00 2a 18 01 	l.j a897e0 <_end+0xa049b4>
    37e0:	05 08 00 05 	l.jal 42037f4 <_end+0x417e9c8>
    37e4:	02 00 00 2a 	l.j f800388c <_end+0xf7f7ea60>
    37e8:	18 01 05 08 	*inconnu*
    37ec:	00 05 02 00 	l.j 143fec <_end+0xbf1c0>
    37f0:	00 2a 18 01 	l.j a897f4 <_end+0xa049c8>
    37f4:	05 08 00 05 	l.jal 4203808 <_end+0x417e9dc>
    37f8:	02 00 00 2a 	l.j f80038a0 <_end+0xf7f7ea74>
    37fc:	18 01 05 08 	*inconnu*
    3800:	00 05 02 00 	l.j 144000 <_end+0xbf1d4>
    3804:	00 2a 18 01 	l.j a89808 <_end+0xa049dc>
    3808:	05 08 00 05 	l.jal 420381c <_end+0x417e9f0>
    380c:	02 00 00 2a 	l.j f80038b4 <_end+0xf7f7ea88>
    3810:	18 01 05 08 	*inconnu*
    3814:	00 05 02 00 	l.j 144014 <_end+0xbf1e8>
    3818:	00 2a 18 01 	l.j a8981c <_end+0xa049f0>
    381c:	05 08 00 05 	l.jal 4203830 <_end+0x417ea04>
    3820:	02 00 00 2a 	l.j f80038c8 <_end+0xf7f7ea9c>
    3824:	18 01 05 08 	*inconnu*
    3828:	00 05 02 00 	l.j 144028 <_end+0xbf1fc>
    382c:	00 2a 18 01 	l.j a89830 <_end+0xa04a04>
    3830:	05 08 00 05 	l.jal 4203844 <_end+0x417ea18>
    3834:	02 00 00 2a 	l.j f80038dc <_end+0xf7f7eab0>
    3838:	18 01 05 08 	*inconnu*
    383c:	00 05 02 00 	l.j 14403c <_end+0xbf210>
    3840:	00 2a 18 01 	l.j a89844 <_end+0xa04a18>
    3844:	05 08 00 05 	l.jal 4203858 <_end+0x417ea2c>
    3848:	02 00 00 2a 	l.j f80038f0 <_end+0xf7f7eac4>
    384c:	20 00 02 04 	l.sys 0x204
    3850:	01 01 05 08 	l.j 4044c70 <_end+0x3fbfe44>
    3854:	00 05 02 00 	l.j 144054 <_end+0xbf228>
    3858:	00 2a 28 00 	l.j a8d858 <_end+0xa08a2c>
    385c:	02 04 03 01 	l.j f8104460 <_end+0xf807f634>
    3860:	05 08 00 05 	l.jal 4203874 <_end+0x417ea48>
    3864:	02 00 00 2a 	l.j f800390c <_end+0xf7f7eae0>
    3868:	34 01 05 08 	*inconnu*
    386c:	00 05 02 00 	l.j 14406c <_end+0xbf240>
    3870:	00 2a 3c 00 	l.j a92870 <_end+0xa0da44>
    3874:	02 04 00 06 	l.j f810388c <_end+0xf807ea60>
    3878:	19 05 0b 00 	*inconnu*
    387c:	05 02 00 00 	l.jal 408387c <_end+0x3ffea50>
    3880:	2a 40 00 02 	*inconnu*
    3884:	04 03 06 15 	l.jal c50d8 <_end+0x402ac>
    3888:	05 08 00 05 	l.jal 420389c <_end+0x417ea70>
    388c:	02 00 00 2a 	l.j f8003934 <_end+0xf7f7eb08>
    3890:	40 00 02 04 	*inconnu*
    3894:	00 19 05 08 	l.j 644cb4 <_end+0x5bfe88>
    3898:	00 05 02 00 	l.j 144098 <_end+0xbf26c>
    389c:	00 2a 40 06 	l.j a938b4 <_end+0xa0ea88>
    38a0:	01 05 0b 00 	l.j 41464a0 <_end+0x40c1674>
    38a4:	05 02 00 00 	l.jal 40838a4 <_end+0x3ffea78>
    38a8:	2a 48 00 02 	*inconnu*
    38ac:	04 01 01 05 	l.jal 43cc0 <frameBuffer+0x3ee98>
    38b0:	14 00 05 02 	*inconnu*
    38b4:	00 00 2a 54 	l.j e204 <frameBuffer+0x93dc>
    38b8:	06 1a 05 05 	l.jal f8684ccc <_end+0xf85ffea0>
    38bc:	00 05 02 00 	l.j 1440bc <_end+0xbf290>
    38c0:	00 2a 54 00 	l.j a988c0 <_end+0xa13a94>
    38c4:	02 04 00 1a 	l.j f810392c <_end+0xf807eb00>
    38c8:	05 08 00 05 	l.jal 42038dc <_end+0x417eab0>
    38cc:	02 00 00 2a 	l.j f8003974 <_end+0xf7f7eb48>
    38d0:	54 1a 05 08 	*inconnu*
    38d4:	00 05 02 00 	l.j 1440d4 <_end+0xbf2a8>
    38d8:	00 2a 54 19 	l.j a9893c <_end+0xa13b10>
    38dc:	05 05 00 05 	l.jal 41438f0 <_end+0x40beac4>
    38e0:	02 00 00 2a 	l.j f8003988 <_end+0xf7f7eb5c>
    38e4:	54 01 05 05 	*inconnu*
    38e8:	00 05 02 00 	l.j 1440e8 <_end+0xbf2bc>
    38ec:	00 2a 54 01 	l.j a988f0 <_end+0xa13ac4>
    38f0:	05 05 00 05 	l.jal 4143904 <_end+0x40bead8>
    38f4:	02 00 00 2a 	l.j f800399c <_end+0xf7f7eb70>
    38f8:	58 01 05 05 	*inconnu*
    38fc:	00 05 02 00 	l.j 1440fc <_end+0xbf2d0>
    3900:	00 2a 70 01 	l.j a9f904 <_end+0xa1aad8>
    3904:	05 05 00 05 	l.jal 4143918 <_end+0x40beaec>
    3908:	02 00 00 2a 	l.j f80039b0 <_end+0xf7f7eb84>
    390c:	70 01 05 05 	l.nios_ccr r0,r1,r0,0x5
    3910:	00 05 02 00 	l.j 144110 <_end+0xbf2e4>
    3914:	00 2a 70 18 	l.j a9f974 <_end+0xa1ab48>
    3918:	05 05 00 05 	l.jal 414392c <_end+0x40beb00>
    391c:	02 00 00 2a 	l.j f80039c4 <_end+0xf7f7eb98>
    3920:	70 06 01 05 	l.nios_crr r0,r6,r0,0x5
    3924:	14 00 05 02 	*inconnu*
    3928:	00 00 2a 74 	l.j e2f8 <frameBuffer+0x94d0>
    392c:	01 05 20 00 	l.j 414b92c <_end+0x40c6b00>
    3930:	05 02 00 00 	l.jal 4083930 <_end+0x3ffeb04>
    3934:	2a 78 06 18 	*inconnu*
    3938:	05 05 00 05 	l.jal 414394c <_end+0x40beb20>
    393c:	02 00 00 2a 	l.j f80039e4 <_end+0xf7f7ebb8>
    3940:	78 06 01 05 	*inconnu*
    3944:	14 00 05 02 	*inconnu*
    3948:	00 00 2a 7c 	l.j e338 <frameBuffer+0x9510>
    394c:	06 18 05 05 	l.jal f8604d60 <_end+0xf857ff34>
    3950:	00 05 02 00 	l.j 144150 <_end+0xbf324>
    3954:	00 2a 7c 06 	l.j aa296c <_end+0xa1db40>
    3958:	01 05 0d 00 	l.j 4146d58 <_end+0x40c1f2c>
    395c:	05 02 00 00 	l.jal 408395c <_end+0x3ffeb30>
    3960:	2a 80 06 1d 	*inconnu*
    3964:	05 03 00 05 	l.jal 40c3978 <_end+0x403eb4c>
    3968:	02 00 00 2a 	l.j f8003a10 <_end+0xf7f7ebe4>
    396c:	80 18 05 03 	*inconnu*
    3970:	00 05 02 00 	l.j 144170 <_end+0xbf344>
    3974:	00 2a 80 6f 	l.j aa3b30 <_end+0xa1ed04>
    3978:	05 03 00 05 	l.jal 40c398c <_end+0x403eb60>
    397c:	02 00 00 2a 	l.j f8003a24 <_end+0xf7f7ebf8>
    3980:	80 06 18 05 	*inconnu*
    3984:	01 00 05 02 	l.j 4004d8c <_end+0x3f7ff60>
    3988:	00 00 2a 88 	l.j e3a8 <frameBuffer+0x9580>
    398c:	00 02 04 02 	l.j 84994 <frameBuffer+0x7fb6c>
    3990:	03 92 7f 01 	l.j fe4a3594 <_end+0xfe41e768>
    3994:	05 21 00 05 	l.jal 48439a8 <_end+0x47beb7c>
    3998:	02 00 00 2a 	l.j f8003a40 <_end+0xf7f7ec14>
    399c:	90 00 02 04 	l.lbs r0,516(r0)
    39a0:	00 06 19 05 	l.j 189db4 <_end+0x104f88>
    39a4:	05 00 05 02 	l.jal 4004dac <_end+0x3f7ff80>
    39a8:	00 00 2a 90 	l.j e3e8 <frameBuffer+0x95c0>
    39ac:	18 05 05 00 	*inconnu*
    39b0:	05 02 00 00 	l.jal 40839b0 <_end+0x3ffeb84>
    39b4:	2a 90 01 05 	*inconnu*
    39b8:	05 00 05 02 	l.jal 4004dc0 <_end+0x3f7ff94>
    39bc:	00 00 2a 90 	l.j e3fc <frameBuffer+0x95d4>
    39c0:	01 05 05 00 	l.j 4144dc0 <_end+0x40bff94>
    39c4:	05 02 00 00 	l.jal 40839c4 <_end+0x3ffeb98>
    39c8:	2a 94 01 05 	*inconnu*
    39cc:	05 00 05 02 	l.jal 4004dd4 <_end+0x3f7ffa8>
    39d0:	00 00 2a a8 	l.j e470 <frameBuffer+0x9648>
    39d4:	01 05 05 00 	l.j 4144dd4 <_end+0x40bffa8>
    39d8:	05 02 00 00 	l.jal 40839d8 <_end+0x3ffebac>
    39dc:	2a b0 06 03 	*inconnu*
    39e0:	5f 01 05 05 	*inconnu*
    39e4:	00 05 02 00 	l.j 1441e4 <_end+0xbf3b8>
    39e8:	00 2a bc 38 	l.j ab2ac8 <_end+0xa2dc9c>
    39ec:	05 05 00 05 	l.jal 4143a00 <_end+0x40bebd4>
    39f0:	02 00 00 2a 	l.j f8003a98 <_end+0xf7f7ec6c>
    39f4:	c4 00 02 04 	*inconnu*
    39f8:	0c 11 05 08 	l.bnf 444e18 <_end+0x3bffec>
    39fc:	00 05 02 00 	l.j 1441fc <_end+0xbf3d0>
    3a00:	00 2a cc 00 	l.j ab6a00 <_end+0xa31bd4>
    3a04:	02 04 03 01 	l.j f8104608 <_end+0xf807f7dc>
    3a08:	05 08 00 05 	l.jal 4203a1c <_end+0x417ebf0>
    3a0c:	02 00 00 2a 	l.j f8003ab4 <_end+0xf7f7ec88>
    3a10:	d4 00 02 04 	l.sw 516(r0),r0
    3a14:	07 06 03 b4 	l.jal fc1848e4 <_end+0xfc0ffab8>
    3a18:	7f 01 05 04 	*inconnu*
    3a1c:	00 05 02 00 	l.j 14421c <_end+0xbf3f0>
    3a20:	00 2a dc 00 	l.j abaa20 <_end+0xa35bf4>
    3a24:	01 01 00 00 	l.j 4043a24 <_end+0x3fbebf8>
    3a28:	00 45 00 05 	l.j 1143a3c <_end+0x10bec10>
    3a2c:	04 00 00 00 	l.jal 3a2c <__clz_tab+0xd44>
    3a30:	00 33 01 01 	l.j cc3e34 <_end+0xc3f008>
    3a34:	01 f6 f2 0d 	l.j 7dc0268 <_end+0x7d3b43c>
    3a38:	00 01 01 01 	l.j 43e3c <frameBuffer+0x3f014>
    3a3c:	01 00 00 00 	l.j 4003a3c <_end+0x3f7ec10>
    3a40:	01 00 00 01 	l.j 4003a44 <_end+0x3f7ec18>
    3a44:	01 01 1f 02 	l.j 404b64c <_end+0x3fc6820>
    3a48:	00 00 00 2f 	l.j 3b04 <__clz_tab+0xe1c>
    3a4c:	00 00 00 7d 	l.j 3c40 <__clz_tab+0xf58>
    3a50:	02 01 1f 02 	l.j f804b658 <_end+0xf7fc682c>
    3a54:	0b 03 00 00 	l.adrp r24,60002000 <_end+0x5ff7d1d4>
    3a58:	00 00 00 00 	l.j 3a58 <__clz_tab+0xd70>
    3a5c:	00 00 1b 01 	l.j a660 <frameBuffer+0x5838>
    3a60:	00 00 00 25 	l.j 3af4 <__clz_tab+0xe0c>
    3a64:	01 00 05 02 	l.j 4004e6c <_end+0x3f80040>
    3a68:	00 00 00 00 	l.j 3a68 <__clz_tab+0xd80>
    3a6c:	Address 0x3a6c is out of bounds.


Déassemblage de la section .debug_str :

00000000 <.debug_str>:
   0:	44 57 75 6e 	*inconnu*
   4:	69 6f 6e 00 	*inconnu*
   8:	63 6f 6d 70 	*inconnu*
   c:	6c 65 78 20 	l.lwa r3,30752(r5)
  10:	66 6c 6f 61 	*inconnu*
  14:	74 00 73 68 	*inconnu*
  18:	6f 72 74 20 	l.lwa r27,29728(r18)
  1c:	69 6e 74 00 	*inconnu*
  20:	5f 5f 64 30 	*inconnu*
  24:	00 5f 5f 64 	l.j 17d7db4 <_end+0x1752f88>
  28:	31 00 5f 5f 	*inconnu*
  2c:	76 68 00 5f 	l.cas r19,r8,r0,0x5f
  30:	5f 76 6c 00 	*inconnu*
  34:	5f 5f 64 69 	*inconnu*
  38:	76 64 69 33 	*inconnu*
  3c:	00 6c 6f 6e 	l.j 1b1bdf4 <_end+0x1a96fc8>
  40:	67 20 6c 6f 	*inconnu*
  44:	6e 67 20 69 	l.lwa r19,8297(r7)
  48:	6e 74 00 6c 	l.lwa r19,108(r20)
  4c:	6f 6e 67 20 	l.lwa r27,26400(r14)
  50:	6c 6f 6e 67 	l.lwa r3,28263(r15)
  54:	20 75 6e 73 	*inconnu*
  58:	69 67 6e 65 	*inconnu*
  5c:	64 20 69 6e 	*inconnu*
  60:	74 00 68 69 	l.cas r0,r0,r13,0x69
  64:	67 68 00 5f 	*inconnu*
  68:	5f 63 6c 7a 	*inconnu*
  6c:	5f 74 61 62 	*inconnu*
  70:	00 6c 6f 6e 	l.j 1b1be28 <_end+0x1a96ffc>
  74:	67 20 64 6f 	*inconnu*
  78:	75 62 6c 65 	*inconnu*
  7c:	00 75 6e 73 	l.j 1d5ba48 <_end+0x1cd6c1c>
  80:	69 67 6e 65 	*inconnu*
  84:	64 20 63 68 	*inconnu*
  88:	61 72 00 5f 	*inconnu*
  8c:	5f 78 30 00 	*inconnu*
  90:	5f 5f 78 31 	*inconnu*
  94:	00 5f 5f 78 	l.j 17d7e74 <_end+0x1753048>
  98:	32 00 5f 5f 	*inconnu*
  9c:	78 33 00 55 	*inconnu*
  a0:	51 49 74 79 	*inconnu*
  a4:	70 65 00 44 	l.nios_rrr r3,r5,r0,0x44
  a8:	57 73 74 72 	*inconnu*
  ac:	75 63 74 00 	*inconnu*
  b0:	73 68 6f 72 	l.nios_ccc r27,r8,r13,0x72
  b4:	74 20 75 6e 	*inconnu*
  b8:	73 69 67 6e 	l.nios_ccc r27,r9,r12,0x6e
  bc:	65 64 20 69 	*inconnu*
  c0:	6e 74 00 55 	l.lwa r19,85(r20)
  c4:	44 49 74 79 	*inconnu*
  c8:	70 65 00 5f 	l.nios_rrr r3,r5,r0,0x5f
  cc:	5f 71 30 00 	*inconnu*
  d0:	5f 5f 71 31 	*inconnu*
  d4:	00 47 4e 55 	l.j 11d3a28 <_end+0x114ebfc>
  d8:	20 43 31 37 	*inconnu*
  dc:	20 31 33 2e 	*inconnu*
  e0:	32 2e 30 20 	*inconnu*
  e4:	2d 67 20 2d 	*inconnu*
  e8:	67 20 2d 67 	*inconnu*
  ec:	20 2d 4f 32 	*inconnu*
  f0:	20 2d 4f 32 	*inconnu*
  f4:	20 2d 4f 32 	*inconnu*
  f8:	20 2d 66 62 	*inconnu*
  fc:	75 69 6c 64 	*inconnu*
 100:	69 6e 67 2d 	*inconnu*
 104:	6c 69 62 67 	l.lwa r3,25191(r9)
 108:	63 63 20 2d 	*inconnu*
 10c:	66 6e 6f 2d 	*inconnu*
 110:	73 74 61 63 	l.nios_crr r27,r20,r12,0x63
 114:	6b 2d 70 72 	*inconnu*
 118:	6f 74 65 63 	l.lwa r27,25955(r20)
 11c:	74 6f 72 20 	*inconnu*
 120:	2d 66 65 78 	*inconnu*
 124:	63 65 70 74 	*inconnu*
 128:	69 6f 6e 73 	*inconnu*
 12c:	20 2d 66 6e 	*inconnu*
 130:	6f 6e 2d 63 	l.lwa r27,11619(r14)
 134:	61 6c 6c 2d 	*inconnu*
 138:	65 78 63 65 	*inconnu*
 13c:	70 74 69 6f 	l.nios_crr r3,r20,r13,0x6f
 140:	6e 73 20 2d 	l.lwa r19,8237(r19)
 144:	66 76 69 73 	*inconnu*
 148:	69 62 69 6c 	*inconnu*
 14c:	69 74 79 3d 	*inconnu*
 150:	68 69 64 64 	*inconnu*
 154:	65 6e 00 63 	*inconnu*
 158:	6f 6d 70 6c 	l.lwa r27,28780(r13)
 15c:	65 78 20 64 	*inconnu*
 160:	6f 75 62 6c 	l.lwa r27,25196(r21)
 164:	65 00 5f 5f 	*inconnu*
 168:	78 72 00 5f 	*inconnu*
 16c:	5f 75 64 69 	*inconnu*
 170:	76 6d 6f 64 	*inconnu*
 174:	64 69 34 00 	*inconnu*
 178:	55 53 49 74 	*inconnu*
 17c:	79 70 65 00 	*inconnu*
 180:	5f 5f 72 30 	*inconnu*
 184:	00 5f 5f 72 	l.j 17d7f4c <_end+0x1753120>
 188:	31 00 5f 5f 	*inconnu*
 18c:	75 68 00 5f 	l.cas r11,r8,r0,0x5f
 190:	5f 75 6c 00 	*inconnu*
 194:	5f 5f 6d 6f 	*inconnu*
 198:	64 64 69 33 	*inconnu*
 19c:	00 5f 5f 75 	l.j 17d7f70 <_end+0x1753144>
 1a0:	64 69 76 64 	*inconnu*
 1a4:	69 33 00 5f 	*inconnu*
 1a8:	5f 75 6d 6f 	*inconnu*
 1ac:	64 64 69 33 	*inconnu*
 1b0:	00 47 4e 55 	l.j 11d3b04 <_end+0x114ecd8>
 1b4:	20 43 31 37 	*inconnu*
 1b8:	20 31 33 2e 	*inconnu*
 1bc:	32 2e 30 20 	*inconnu*
 1c0:	2d 67 20 2d 	*inconnu*
 1c4:	67 20 2d 67 	*inconnu*
 1c8:	20 2d 4f 32 	*inconnu*
 1cc:	20 2d 4f 32 	*inconnu*
 1d0:	20 2d 4f 32 	*inconnu*
 1d4:	20 2d 66 62 	*inconnu*
 1d8:	75 69 6c 64 	*inconnu*
 1dc:	69 6e 67 2d 	*inconnu*
 1e0:	6c 69 62 67 	l.lwa r3,25191(r9)
 1e4:	63 63 20 2d 	*inconnu*
 1e8:	66 6e 6f 2d 	*inconnu*
 1ec:	73 74 61 63 	l.nios_crr r27,r20,r12,0x63
 1f0:	6b 2d 70 72 	*inconnu*
 1f4:	6f 74 65 63 	l.lwa r27,25955(r20)
 1f8:	74 6f 72 20 	*inconnu*
 1fc:	2d 66 76 69 	*inconnu*
 200:	73 69 62 69 	l.nios_rrc r27,r9,r12,0x69
 204:	6c 69 74 79 	l.lwa r3,29817(r9)
 208:	3d 68 69 64 	*inconnu*
 20c:	64 65 6e 00 	*inconnu*

Déassemblage de la section .debug_line_str :

00000000 <.debug_line_str>:
   0:	2e 2e 2f 2e 	*inconnu*
   4:	2e 2f 2e 2e 	*inconnu*
   8:	2f 67 63 63 	*inconnu*
   c:	2d 31 33 2e 	*inconnu*
  10:	32 2e 30 2f 	*inconnu*
  14:	6c 69 62 67 	l.lwa r3,25191(r9)
  18:	63 63 2f 6c 	*inconnu*
  1c:	69 62 67 63 	*inconnu*
  20:	63 32 2e 63 	*inconnu*
  24:	00 6c 69 62 	l.j 1b1a5ac <_end+0x1a95780>
  28:	67 63 63 32 	*inconnu*
  2c:	2e 68 00 2f 	*inconnu*
  30:	68 6f 6d 65 	*inconnu*
  34:	2f 68 75 67 	*inconnu*
  38:	6f 2f 54 c3 	l.lwa r25,21699(r15)
  3c:	a9 6c c3 a9 	l.ori r11,r12,0xc3a9
  40:	63 68 61 72 	*inconnu*
  44:	67 65 6d 65 	*inconnu*
  48:	6e 74 73 2f 	l.lwa r19,29487(r20)
  4c:	6f 72 31 6b 	l.lwa r27,12651(r18)
  50:	5f 74 6f 6f 	*inconnu*
  54:	6c 63 68 61 	l.lwa r3,26721(r3)
  58:	69 6e 2f 70 	*inconnu*
  5c:	61 74 63 68 	*inconnu*
  60:	2f 73 61 6e 	*inconnu*
  64:	64 62 6f 78 	*inconnu*
  68:	2f 67 63 63 	*inconnu*
  6c:	2f 6f 72 31 	*inconnu*
  70:	6b 2d 65 6c 	*inconnu*
  74:	66 2f 6c 69 	*inconnu*
  78:	62 67 63 63 	*inconnu*
  7c:	00 2e 2e 2f 	l.j b8b938 <_end+0xb06b0c>
  80:	2e 2e 2f 2e 	*inconnu*
  84:	2e 2f 67 63 	*inconnu*
  88:	63 2d 31 33 	*inconnu*
  8c:	2e 32 2e 30 	*inconnu*
  90:	2f 6c 69 62 	*inconnu*
  94:	67 63 63 00 	*inconnu*

Déassemblage de la section .debug_loclists :

00000000 <.debug_loclists>:
       0:	00 00 07 4a 	l.j 1d28 <memcpy+0x19c>
       4:	00 05 04 00 	l.j 141004 <_end+0xbc1d8>
       8:	00 00 00 00 	l.j 8 <__OR1300__+0x7>
       c:	04 00 10 06 	l.jal 4024 <__clz_tab+0x133c>
      10:	53 93 04 54 	*inconnu*
      14:	93 04 04 10 	l.lbs r24,1040(r4)
      18:	d8 06 06 a3 	l.sb 1699(r6),r0
      1c:	03 a5 03 26 	l.j fe940cb4 <_end+0xfe8bbe88>
      20:	9f 04 d8 06 	l.addi r24,r4,-10234
      24:	f0 06 06 53 	*inconnu*
      28:	93 04 54 93 	l.lbs r24,21651(r4)
      2c:	04 04 f0 06 	l.jal 13c044 <_end+0xb7218>
      30:	cc 0c 06 a3 	l.swa 1699(r12),r0
      34:	03 a5 03 26 	l.j fe940ccc <_end+0xfe8bbea0>
      38:	9f 00 04 00 	l.addi r24,r0,1024
      3c:	20 06 55 93 	*inconnu*
      40:	04 56 93 04 	l.jal 15a4c50 <_end+0x151fe24>
      44:	04 20 b8 06 	l.jal 82e05c <_end+0x7a9230>
      48:	06 a3 03 a5 	l.jal fa8c0edc <_end+0xfa83c0b0>
      4c:	05 26 9f 04 	l.jal 49a7c5c <_end+0x4922e30>
      50:	b8 06 cc 06 	*inconnu*
      54:	06 55 93 04 	l.jal f9564c64 <_end+0xf94dfe38>
      58:	56 93 04 04 	*inconnu*
      5c:	cc 06 d8 06 	l.swa 6(r6),r27
      60:	06 a3 03 a5 	l.jal fa8c0ef4 <_end+0xfa83c0c8>
      64:	05 26 9f 04 	l.jal 49a7c74 <_end+0x4922e48>
      68:	d8 06 fc 06 	l.sb 1030(r6),r31
      6c:	06 55 93 04 	l.jal f9564c7c <_end+0xf94dfe50>
      70:	56 93 04 04 	*inconnu*
      74:	fc 06 cc 0c 	*inconnu*
      78:	06 a3 03 a5 	l.jal fa8c0f0c <_end+0xfa83c0e0>
      7c:	05 26 9f 00 	l.jal 49a7c7c <_end+0x4922e50>
      80:	04 00 10 02 	l.jal 4088 <__clz_tab+0x13a0>
      84:	30 9f 04 10 	*inconnu*
      88:	d8 06 01 63 	l.sb 355(r6),r0
      8c:	04 d8 06 fc 	l.jal 3601c7c <_end+0x357ce50>
      90:	06 03 09 ff 	l.jal f80c288c <_end+0xf803da60>
      94:	9f 04 fc 06 	l.addi r24,r4,-1018
      98:	cc 0c 01 63 	l.swa 355(r12),r0
      9c:	00 04 00 10 	l.j 1000dc <_end+0x7b2b0>
      a0:	06 53 93 04 	l.jal f94e4cb0 <_end+0xf945fe84>
      a4:	54 93 04 04 	*inconnu*
      a8:	d8 06 e0 06 	l.sb 6(r6),r28
      ac:	06 53 93 04 	l.jal f94e4cbc <_end+0xf945fe90>
      b0:	54 93 04 04 	*inconnu*
      b4:	f4 06 fc 06 	*inconnu*
      b8:	06 53 93 04 	l.jal f94e4cc8 <_end+0xf945fe9c>
      bc:	54 93 04 00 	*inconnu*
      c0:	04 00 20 06 	l.jal 80d8 <frameBuffer+0x32b0>
      c4:	55 93 04 56 	*inconnu*
      c8:	93 04 04 b8 	l.lbs r24,1208(r4)
      cc:	06 bc 06 06 	l.jal faf018e4 <_end+0xfae7cab8>
      d0:	55 93 04 56 	*inconnu*
      d4:	93 04 04 d0 	l.lbs r24,1232(r4)
      d8:	06 fc 06 06 	l.jal fbf018f0 <_end+0xfbe7cac4>
      dc:	55 93 04 56 	*inconnu*
      e0:	93 04 00 04 	l.lbs r24,4(r4)
      e4:	dc 02 e4 02 	l.sh 1026(r2),r28
      e8:	06 5b 93 04 	l.jal f96e4cf8 <_end+0xf965fecc>
      ec:	5c 93 04 04 	*inconnu*
      f0:	80 03 90 03 	*inconnu*
      f4:	06 5b 93 04 	l.jal f96e4d04 <_end+0xf965fed8>
      f8:	5c 93 04 04 	*inconnu*
      fc:	ac 03 b4 03 	l.xori r0,r3,-19453
     100:	06 5b 93 04 	l.jal f96e4d10 <_end+0xf965fee4>
     104:	5c 93 04 00 	*inconnu*
     108:	04 20 dc 02 	l.jal 837110 <_end+0x7b22e4>
     10c:	02 30 9f 04 	l.j f8c27d1c <_end+0xf8ba2ef0>
     110:	ec 02 80 03 	*inconnu*
     114:	02 30 9f 04 	l.j f8c27d24 <_end+0xf8ba2ef8>
     118:	b4 03 b8 06 	l.mfspr r0,r3,0xb806
     11c:	02 30 9f 04 	l.j f8c27d2c <_end+0xf8ba2f00>
     120:	fc 06 cc 0c 	*inconnu*
     124:	02 30 9f 00 	l.j f8c27d24 <_end+0xf8ba2ef8>
     128:	04 2c 90 01 	l.jal b2412c <_end+0xa9f300>
     12c:	01 56 04 90 	l.j 558136c <_end+0x54fc540>
     130:	01 9c 01 06 	l.j 6700548 <_end+0x667b71c>
     134:	76 00 8d 00 	*inconnu*
     138:	24 9f 04 9c 	*inconnu*
     13c:	01 dc 02 01 	l.j 7700940 <_end+0x767bb14>
     140:	65 04 ec 02 	*inconnu*
     144:	80 03 01 56 	*inconnu*
     148:	04 b4 03 98 	l.jal 2d00fa8 <_end+0x2c7c17c>
     14c:	04 01 56 04 	l.jal 5595c <frameBuffer+0x50b34>
     150:	a0 04 b4 04 	l.addic r0,r4,-19452
     154:	01 56 04 b4 	l.j 5581424 <_end+0x54fc5f8>
     158:	04 b8 04 0b 	l.jal 2e01184 <_end+0x2d7c358>
     15c:	31 a8 2d 75 	*inconnu*
     160:	00 a8 2d 1b 	l.j 2a0b5cc <_end+0x29867a0>
     164:	a8 00 9f 04 	l.ori r0,r0,0x9f04
     168:	90 05 b8 06 	l.lbs r0,-18426(r5)
     16c:	01 65 04 fc 	l.j 594155c <_end+0x58bc730>
     170:	06 c0 09 01 	l.jal fb002574 <_end+0xfaf7d748>
     174:	56 04 c4 0a 	*inconnu*
     178:	98 0c 01 65 	l.lhs r0,357(r12)
     17c:	04 98 0c a0 	l.jal 26033fc <_end+0x257e5d0>
     180:	0c 01 56 04 	l.bnf 55990 <frameBuffer+0x50b68>
     184:	a0 0c a8 0c 	l.addic r0,r12,-22516
     188:	01 65 04 a8 	l.j 5941428 <_end+0x58bc5fc>
     18c:	0c bc 0c 01 	l.bnf 2f03190 <_end+0x2e7e364>
     190:	56 04 bc 0c 	*inconnu*
     194:	cc 0c 01 65 	l.swa 357(r12),r0
     198:	00 04 2c dc 	l.j 10b508 <_end+0x866dc>
     19c:	02 01 55 04 	l.j f80555ac <_end+0xf7fd0780>
     1a0:	ec 02 80 03 	*inconnu*
     1a4:	01 55 04 b4 	l.j 5541474 <_end+0x54bc648>
     1a8:	03 98 04 01 	l.j fe6011ac <_end+0xfe57c380>
     1ac:	55 04 a0 04 	*inconnu*
     1b0:	b8 06 01 55 	*inconnu*
     1b4:	04 fc 06 e4 	l.jal 3f01d44 <_end+0x3e7cf18>
     1b8:	07 01 55 04 	l.jal fc0555c8 <_end+0xfbfd079c>
     1bc:	ec 07 b4 09 	*inconnu*
     1c0:	01 6b 04 bc 	l.j 5ac14b0 <_end+0x5a3c684>
     1c4:	0a 98 0c 01 	l.adrp r20,1802000 <_end+0x177d1d4>
     1c8:	55 04 98 0c 	*inconnu*
     1cc:	a0 0c 01 6b 	l.addic r0,r12,363
     1d0:	04 a0 0c a8 	l.jal 2803470 <_end+0x277e644>
     1d4:	0c 01 55 04 	l.bnf 555e4 <frameBuffer+0x507bc>
     1d8:	a8 0c b0 0c 	l.ori r0,r12,0xb00c
     1dc:	01 6b 04 b0 	l.j 5ac149c <_end+0x5a3c670>
     1e0:	0c cc 0c 01 	l.bnf 33031e4 <_end+0x327e3b8>
     1e4:	55 00 04 30 	*inconnu*
     1e8:	a4 01 01 54 	l.andi r0,r1,0x154
     1ec:	04 a4 01 98 	l.jal 290084c <_end+0x287ba20>
     1f0:	02 01 67 04 	l.j f8059e00 <_end+0xf7fd4fd4>
     1f4:	ec 02 80 03 	*inconnu*
     1f8:	01 54 04 b4 	l.j 55014c8 <_end+0x547c69c>
     1fc:	03 98 04 01 	l.j fe601200 <_end+0xfe57c3d4>
     200:	54 04 a0 04 	*inconnu*
     204:	90 05 01 54 	l.lbs r0,340(r5)
     208:	04 90 05 f8 	l.jal 24019e8 <_end+0x237cbbc>
     20c:	05 01 67 04 	l.jal 4059e1c <_end+0x3fd4ff0>
     210:	fc 06 a4 08 	*inconnu*
     214:	01 54 04 a4 	l.j 55014a4 <_end+0x547c678>
     218:	08 a0 0a 06 	l.adrp r5,140c000 <_end+0x13871d4>
     21c:	74 00 89 00 	l.swap r0,r0,r17
     220:	24 9f 04 bc 	*inconnu*
     224:	0a fc 0a 01 	l.adrp r23,81402000 <_end+0x8137d1d4>
     228:	54 04 fc 0a 	*inconnu*
     22c:	98 0c 01 67 	l.lhs r0,359(r12)
     230:	04 98 0c a0 	l.jal 26034b0 <_end+0x257e684>
     234:	0c 06 74 00 	l.bnf 19d234 <_end+0x118408>
     238:	89 00 24 9f 	l.lws r8,9375(r0)
     23c:	04 a0 0c a8 	l.jal 28034dc <_end+0x277e6b0>
     240:	0c 01 67 04 	l.bnf 59e50 <frameBuffer+0x55028>
     244:	a8 0c b0 0c 	l.ori r0,r12,0xb00c
     248:	06 74 00 89 	l.jal f9d0046c <_end+0xf9c7b640>
     24c:	00 24 9f 04 	l.j 927e5c <_end+0x8a3030>
     250:	b0 0c bc 0c 	l.muli r0,r12,-17396
     254:	01 54 04 bc 	l.j 5501544 <_end+0x547c718>
     258:	0c cc 0c 01 	l.bnf 330325c <_end+0x327e430>
     25c:	67 00 04 30 	*inconnu*
     260:	a0 01 01 53 	l.addic r0,r1,339
     264:	04 a0 01 b8 	l.jal 2800944 <_end+0x277bb18>
     268:	01 01 61 04 	l.j 4058678 <_end+0x3fd384c>
     26c:	ec 02 80 03 	*inconnu*
     270:	01 53 04 b4 	l.j 54c1540 <_end+0x543c714>
     274:	03 98 04 01 	l.j fe601278 <_end+0xfe57c44c>
     278:	53 04 a0 04 	*inconnu*
     27c:	84 05 01 53 	l.lwz r0,339(r5)
     280:	04 84 05 9c 	l.jal 21018f0 <_end+0x207cac4>
     284:	05 01 61 04 	l.jal 4058694 <_end+0x3fd3868>
     288:	fc 06 80 08 	*inconnu*
     28c:	01 53 04 a4 	l.j 54c151c <_end+0x543c6f0>
     290:	08 ec 08 01 	l.adrp r7,81002000 <_end+0x80f7d1d4>
     294:	65 04 e0 09 	*inconnu*
     298:	94 0a 01 61 	l.lhz r0,353(r10)
     29c:	04 bc 0a d8 	l.jal 2f02dfc <_end+0x2e7dfd0>
     2a0:	0a 01 53 04 	l.adrp r16,2a608000 <_end+0x2a5831d4>
     2a4:	e4 0a c4 0b 	*inconnu*
     2a8:	01 69 04 88 	l.j 5a414c8 <_end+0x59bc69c>
     2ac:	0c 90 0c 01 	l.bnf 24032b0 <_end+0x237e484>
     2b0:	61 04 a0 0c 	*inconnu*
     2b4:	a8 0c 01 69 	l.ori r0,r12,0x169
     2b8:	04 a8 0c b0 	l.jal 2a03578 <_end+0x297e74c>
     2bc:	0c 01 65 04 	l.bnf 596cc <frameBuffer+0x548a4>
     2c0:	b0 0c bc 0c 	l.muli r0,r12,-17396
     2c4:	01 53 00 04 	l.j 54c02d4 <_end+0x543b4a8>
     2c8:	c8 0a e0 0a 	lf.sfgt.s r10,r28
     2cc:	01 61 00 04 	l.j 58402dc <_end+0x57bb4b0>
     2d0:	c8 02 d0 02 	lf.mul.s r0,r2,r26
     2d4:	08 7c 00 40 	l.adrp r3,80080000 <_end+0x7fffb1d4>
     2d8:	24 89 00 21 	*inconnu*
     2dc:	9f 04 a8 06 	l.addi r24,r4,-22522
     2e0:	b0 06 08 7c 	l.muli r0,r6,2172
     2e4:	00 40 24 89 	l.j 1009508 <_end+0xf846dc>
     2e8:	00 21 9f 04 	l.j 867ef8 <_end+0x7e30cc>
     2ec:	b0 06 b8 06 	l.muli r0,r6,-18426
     2f0:	01 5c 04 e0 	l.j 5701670 <_end+0x567c844>
     2f4:	09 b0 0a 01 	l.adrp r13,1402000 <_end+0x137d1d4>
     2f8:	5c 04 b0 0a 	*inconnu*
     2fc:	b4 0a 03 7c 	l.mfspr r0,r10,0x37c
     300:	7f 9f 04 b4 	*inconnu*
     304:	0a bc 0a 01 	l.adrp r21,81402000 <_end+0x8137d1d4>
     308:	5c 00 04 c8 	*inconnu*
     30c:	02 dc 02 02 	l.j fb700b14 <_end+0xfb67bce8>
     310:	30 9f 04 84 	*inconnu*
     314:	05 90 05 02 	l.jal 640171c <_end+0x637c8f0>
     318:	31 9f 00 04 	*inconnu*
     31c:	dc 07 84 08 	l.sh 1032(r7),r16
     320:	01 65 04 bc 	l.j 5941610 <_end+0x58bc7e4>
     324:	0a dc 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
     328:	69 00 04 88 	*inconnu*
     32c:	01 c4 01 01 	l.j 7100730 <_end+0x707b904>
     330:	6d 04 f8 03 	l.lwa r8,-2045(r4)
     334:	a0 04 01 69 	l.addic r0,r4,361
     338:	04 f4 04 90 	l.jal 3d01578 <_end+0x3c7c74c>
     33c:	05 01 6f 04 	l.jal 405bf4c <_end+0x3fd7120>
     340:	dc 07 bc 0a 	l.sh 1034(r7),r23
     344:	01 69 04 bc 	l.j 5a41634 <_end+0x59bc808>
     348:	0a 8c 0b 01 	l.adrp r20,81602000 <_end+0x8157d1d4>
     34c:	6f 04 98 0c 	l.lwa r24,-26612(r4)
     350:	a0 0c 01 69 	l.addic r0,r12,361
     354:	04 a8 0c bc 	l.jal 2a03644 <_end+0x297e818>
     358:	0c 01 69 00 	l.bnf 5a758 <frameBuffer+0x55930>
     35c:	04 44 90 01 	l.jal 1124360 <_end+0x109f534>
     360:	01 56 04 90 	l.j 55815a0 <_end+0x54fc774>
     364:	01 9c 01 06 	l.j 670077c <_end+0x667b950>
     368:	76 00 8d 00 	*inconnu*
     36c:	24 9f 04 9c 	*inconnu*
     370:	01 e4 02 01 	l.j 7900b74 <_end+0x787bd48>
     374:	65 04 fc 06 	*inconnu*
     378:	98 07 01 56 	l.lhs r0,342(r7)
     37c:	04 c4 0c cc 	l.jal 31036ac <_end+0x307e880>
     380:	0c 01 65 00 	l.bnf 59780 <frameBuffer+0x54958>
     384:	04 68 84 01 	l.jal 1a21388 <_end+0x199c55c>
     388:	01 6b 00 04 	l.j 5ac0398 <_end+0x5a3b56c>
     38c:	ac 01 88 02 	l.xori r0,r1,-30718
     390:	01 6b 04 88 	l.j 5ac15b0 <_end+0x5a3c784>
     394:	02 90 02 05 	l.j fa400ba8 <_end+0xfa37bd7c>
     398:	85 00 40 25 	l.lwz r8,16421(r0)
     39c:	9f 04 90 02 	l.addi r24,r4,-28670
     3a0:	dc 02 06 85 	l.sh 1669(r2),r0
     3a4:	00 8b 00 25 	l.j 22c0438 <_end+0x223b60c>
     3a8:	9f 04 c4 0c 	l.addi r24,r4,-15348
     3ac:	cc 0c 01 6b 	l.swa 363(r12),r0
     3b0:	00 04 c4 01 	l.j 1313b4 <_end+0xac588>
     3b4:	9c 02 01 6d 	l.addi r0,r2,365
     3b8:	04 9c 02 dc 	l.jal 2700f28 <_end+0x267c0fc>
     3bc:	02 07 85 00 	l.j f81e17bc <_end+0xf815c990>
     3c0:	0a ff ff 1a 	l.adrp r23,ffe34000 <_end+0xffdaf1d4>
     3c4:	9f 04 c4 0c 	l.addi r24,r4,-15348
     3c8:	cc 0c 01 6d 	l.swa 365(r12),r0
     3cc:	00 04 c4 01 	l.j 1313d0 <_end+0xac5a4>
     3d0:	e4 01 01 5c 	*inconnu*
     3d4:	04 e4 01 fc 	l.jal 3900bc4 <_end+0x387bd98>
     3d8:	01 01 69 04 	l.j 405a7e8 <_end+0x3fd59bc>
     3dc:	fc 01 d0 02 	*inconnu*
     3e0:	01 5c 04 c4 	l.j 57016f0 <_end+0x567c8c4>
     3e4:	0c cc 0c 01 	l.bnf 33033e8 <_end+0x327e5bc>
     3e8:	5c 00 04 8c 	*inconnu*
     3ec:	02 b0 02 01 	l.j fac00bf0 <_end+0xfab7bdc4>
     3f0:	69 04 b0 02 	*inconnu*
     3f4:	c8 02 01 67 	*inconnu*
     3f8:	04 c8 02 dc 	l.jal 3200f68 <_end+0x317c13c>
     3fc:	02 01 69 00 	l.j f805a7fc <_end+0xf7fd59d0>
     400:	04 d0 01 e0 	l.jal 3400b80 <_end+0x337bd54>
     404:	01 01 61 04 	l.j 4058814 <_end+0x3fd39e8>
     408:	e4 01 8c 02 	*inconnu*
     40c:	01 61 04 c4 	l.j 584171c <_end+0x57bc8f0>
     410:	0c cc 0c 01 	l.bnf 3303414 <_end+0x327e5e8>
     414:	61 00 04 8c 	*inconnu*
     418:	02 94 02 01 	l.j fa500c1c <_end+0xfa47bdf0>
     41c:	61 04 a0 02 	*inconnu*
     420:	ac 02 01 61 	l.xori r0,r2,353
     424:	00 04 cc 01 	l.j 133428 <_end+0xae5fc>
     428:	9c 02 01 6f 	l.addi r0,r2,367
     42c:	04 9c 02 dc 	l.jal 2700f9c <_end+0x267c170>
     430:	02 01 6d 04 	l.j f805b840 <_end+0xf7fd6a14>
     434:	c4 0c cc 0c 	*inconnu*
     438:	01 6f 00 04 	l.j 5bc0448 <_end+0x5b3b61c>
     43c:	b4 03 98 04 	l.mfspr r0,r3,0x9804
     440:	01 55 04 c0 	l.j 5541740 <_end+0x54bc914>
     444:	07 e4 07 01 	l.jal ff902048 <_end+0xff87d21c>
     448:	55 04 b0 0c 	*inconnu*
     44c:	bc 0c 01 55 	l.sfeqi r12,341
     450:	00 04 d8 03 	l.j 13645c <_end+0xb1630>
     454:	98 04 01 67 	l.lhs r0,359(r4)
     458:	04 dc 07 fc 	l.jal 3702448 <_end+0x367d61c>
     45c:	07 01 67 04 	l.jal fc05a06c <_end+0xfbfd5240>
     460:	b0 0c bc 0c 	l.muli r0,r12,-17396
     464:	01 67 00 04 	l.j 59c0474 <_end+0x593b648>
     468:	98 07 c0 07 	l.lhs r0,-16377(r7)
     46c:	01 56 00 04 	l.j 558047c <_end+0x54fb650>
     470:	d4 04 88 05 	l.sw 5(r4),r17
     474:	01 6b 04 bc 	l.j 5ac1764 <_end+0x5a3c938>
     478:	0a cc 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
     47c:	6b 00 04 90 	*inconnu*
     480:	05 b8 06 05 	l.jal 6e01c94 <_end+0x6d7ce68>
     484:	85 00 40 25 	l.lwz r8,16421(r0)
     488:	9f 04 bc 0c 	l.addi r24,r4,-17396
     48c:	c4 0c 05 85 	*inconnu*
     490:	00 40 25 9f 	l.j 1009b0c <_end+0xf84ce0>
     494:	00 04 90 05 	l.j 1244a8 <_end+0x9f67c>
     498:	b8 06 07 85 	*inconnu*
     49c:	00 0a ff ff 	l.j 2c0498 <_end+0x23b66c>
     4a0:	1a 9f 04 bc 	*inconnu*
     4a4:	0c c4 0c 07 	l.bnf 31034c0 <_end+0x307e694>
     4a8:	85 00 0a ff 	l.lwz r8,2815(r0)
     4ac:	ff 1a 9f 00 	*inconnu*
     4b0:	04 9c 05 c4 	l.jal 2701bc0 <_end+0x267cd94>
     4b4:	05 01 5c 04 	l.jal 40574c4 <_end+0x3fd2698>
     4b8:	c4 05 dc 05 	*inconnu*
     4bc:	01 69 04 dc 	l.j 5a4182c <_end+0x59bca00>
     4c0:	05 b0 06 01 	l.jal 6c01cc4 <_end+0x6b7ce98>
     4c4:	5c 04 bc 0c 	*inconnu*
     4c8:	c4 0c 01 5c 	*inconnu*
     4cc:	00 04 ec 05 	l.j 13b4e0 <_end+0xb66b4>
     4d0:	90 06 01 69 	l.lbs r0,361(r6)
     4d4:	04 90 06 a8 	l.jal 2401f74 <_end+0x237d148>
     4d8:	06 01 67 04 	l.jal f805a0e8 <_end+0xf7fd52bc>
     4dc:	a8 06 b8 06 	l.ori r0,r6,0xb806
     4e0:	01 69 00 04 	l.j 5a404f0 <_end+0x59bb6c4>
     4e4:	9c 05 a4 05 	l.addi r0,r5,-23547
     4e8:	01 61 04 b0 	l.j 58417a8 <_end+0x57bc97c>
     4ec:	05 c0 05 01 	l.jal 70018f0 <_end+0x6f7cac4>
     4f0:	61 04 c4 05 	*inconnu*
     4f4:	ec 05 01 61 	*inconnu*
     4f8:	04 bc 0c c4 	l.jal 2f03808 <_end+0x2e7e9dc>
     4fc:	0c 01 61 00 	l.bnf 588fc <frameBuffer+0x53ad4>
     500:	04 ec 05 f4 	l.jal 3b01cd0 <_end+0x3a7cea4>
     504:	05 01 61 04 	l.jal 4058914 <_end+0x3fd3ae8>
     508:	80 06 8c 06 	*inconnu*
     50c:	01 61 00 04 	l.j 584051c <_end+0x57bb6f0>
     510:	ac 05 fc 05 	l.xori r0,r5,-1019
     514:	01 6f 04 fc 	l.j 5bc1904 <_end+0x5b3cad8>
     518:	05 b8 06 01 	l.jal 6e01d1c <_end+0x6d7cef0>
     51c:	6d 04 bc 0c 	l.lwa r8,-17396(r4)
     520:	c4 0c 01 6f 	*inconnu*
     524:	00 04 fc 09 	l.j 13f548 <_end+0xba71c>
     528:	b0 0a 01 65 	l.muli r0,r10,357
     52c:	00 04 fc 09 	l.j 13f550 <_end+0xba724>
     530:	98 0a 10 7d 	l.lhs r0,4221(r10)
     534:	00 0a ff ff 	l.j 2c0530 <_end+0x23b704>
     538:	1a 87 00 0a 	*inconnu*
     53c:	ff ff 1a 40 	*inconnu*
     540:	24 22 9f 00 	*inconnu*
     544:	04 a4 08 dc 	l.jal 29028b4 <_end+0x287da88>
     548:	08 01 6d 04 	l.adrp r0,2da08000 <_end+0x2d9831d4>
     54c:	dc 08 e4 08 	l.sh 1032(r8),r28
     550:	05 8b 00 40 	l.jal 62c0650 <_end+0x623b824>
     554:	25 9f 04 e4 	*inconnu*
     558:	08 f0 08 06 	l.adrp r7,100c000 <_end+0xf871d4>
     55c:	8b 00 8d 00 	l.lws r24,-29440(r0)
     560:	25 9f 04 f0 	*inconnu*
     564:	08 a8 09 05 	l.adrp r5,120a000 <_end+0x11851d4>
     568:	8b 00 40 25 	l.lws r24,16421(r0)
     56c:	9f 04 a8 09 	l.addi r24,r4,-22519
     570:	b4 09 06 8b 	l.mfspr r0,r9,0x68b
     574:	00 8f 00 25 	l.j 23c0608 <_end+0x233b7dc>
     578:	9f 04 98 0c 	l.addi r24,r4,-26612
     57c:	a0 0c 05 8b 	l.addic r0,r12,1419
     580:	00 40 25 9f 	l.j 1009bfc <_end+0xf84dd0>
     584:	04 a8 0c b0 	l.jal 2a03844 <_end+0x297ea18>
     588:	0c 01 6d 00 	l.bnf 5b988 <frameBuffer+0x56b60>
     58c:	04 a4 08 a8 	l.jal 290282c <_end+0x287da00>
     590:	09 01 6f 04 	l.adrp r8,2de08000 <_end+0x2dd831d4>
     594:	a8 09 b4 09 	l.ori r0,r9,0xb409
     598:	07 8b 00 0a 	l.jal fe2c05c0 <_end+0xfe23b794>
     59c:	ff ff 1a 9f 	*inconnu*
     5a0:	04 98 0c a0 	l.jal 2603820 <_end+0x257e9f4>
     5a4:	0c 01 6f 04 	l.bnf 5c1b4 <frameBuffer+0x5738c>
     5a8:	a8 0c b0 0c 	l.ori r0,r12,0xb00c
     5ac:	01 6f 00 04 	l.j 5bc05bc <_end+0x5b3b790>
     5b0:	a4 08 b4 08 	l.andi r0,r8,0xb408
     5b4:	01 5c 04 b4 	l.j 5701884 <_end+0x567ca58>
     5b8:	08 cc 08 01 	l.adrp r6,81002000 <_end+0x80f7d1d4>
     5bc:	5d 04 cc 08 	*inconnu*
     5c0:	ac 09 01 5c 	l.xori r0,r9,348
     5c4:	04 98 0c a0 	l.jal 2603844 <_end+0x257ea18>
     5c8:	0c 01 5c 04 	l.bnf 575d8 <frameBuffer+0x527b0>
     5cc:	a8 0c b0 0c 	l.ori r0,r12,0xb00c
     5d0:	01 5d 00 04 	l.j 57405e0 <_end+0x56bb7b4>
     5d4:	e0 08 88 09 	*inconnu*
     5d8:	01 67 04 88 	l.j 59c17f8 <_end+0x593c9cc>
     5dc:	09 a0 09 01 	l.adrp r13,1202000 <_end+0x117d1d4>
     5e0:	65 04 a0 09 	*inconnu*
     5e4:	bc 09 01 67 	l.sfeqi r9,359
     5e8:	04 98 0c a0 	l.jal 2603868 <_end+0x257ea3c>
     5ec:	0c 01 65 00 	l.bnf 599ec <frameBuffer+0x54bc4>
     5f0:	04 a4 08 b0 	l.jal 29028b0 <_end+0x287da84>
     5f4:	08 01 61 04 	l.adrp r0,2c208000 <_end+0x2c1831d4>
     5f8:	b4 08 e0 08 	l.mfspr r0,r8,0xe008
     5fc:	01 61 04 a8 	l.j 584189c <_end+0x57bca70>
     600:	0c b0 0c 01 	l.bnf 2c03604 <_end+0x2b7e7d8>
     604:	61 00 04 e0 	*inconnu*
     608:	08 e8 08 01 	l.adrp r7,1002000 <_end+0xf7d1d4>
     60c:	61 04 f4 08 	*inconnu*
     610:	84 09 01 61 	l.lwz r0,353(r9)
     614:	04 88 09 94 	l.jal 2202c64 <_end+0x217de38>
     618:	0a 01 61 04 	l.adrp r16,2c208000 <_end+0x2c1831d4>
     61c:	98 0c a0 0c 	l.lhs r0,-24564(r12)
     620:	01 61 00 04 	l.j 5840630 <_end+0x57bb804>
     624:	a4 08 d8 08 	l.andi r0,r8,0xd808
     628:	01 67 04 f0 	l.j 59c19e8 <_end+0x593cbbc>
     62c:	08 bc 0a 01 	l.adrp r5,81402000 <_end+0x8137d1d4>
     630:	6d 04 98 0c 	l.lwa r8,-26612(r4)
     634:	a0 0c 01 6d 	l.addic r0,r12,365
     638:	04 a8 0c b0 	l.jal 2a038f8 <_end+0x297eacc>
     63c:	0c 01 67 00 	l.bnf 5a23c <frameBuffer+0x55414>
     640:	04 e0 09 9c 	l.jal 3802cb0 <_end+0x377de84>
     644:	0a 01 5d 00 	l.adrp r16,2ba00000 <_end+0x2b97b1d4>
     648:	04 e0 09 98 	l.jal 3802ca8 <_end+0x377de7c>
     64c:	0a 01 67 00 	l.adrp r16,2ce00000 <_end+0x2cd7b1d4>
     650:	04 e0 09 ec 	l.jal 3802e00 <_end+0x377dfd4>
     654:	09 01 65 00 	l.adrp r8,2ca00000 <_end+0x2c97b1d4>
     658:	04 e0 09 bc 	l.jal 3802d48 <_end+0x377df1c>
     65c:	0a 01 6b 00 	l.adrp r16,2d600000 <_end+0x2d57b1d4>
     660:	04 e0 09 f4 	l.jal 3802e30 <_end+0x377e004>
     664:	09 05 7c 00 	l.adrp r8,af800000 <_end+0xaf77b1d4>
     668:	40 25 9f 04 	*inconnu*
     66c:	f4 09 f8 09 	*inconnu*
     670:	06 7c 00 85 	l.jal f9f00884 <_end+0xf9e7ba58>
     674:	00 25 9f 04 	l.j 968284 <_end+0x8e3458>
     678:	f8 09 94 0a 	*inconnu*
     67c:	05 7c 00 40 	l.jal 5f0077c <_end+0x5e7b950>
     680:	25 9f 04 94 	*inconnu*
     684:	0a b0 0a 06 	l.adrp r21,140c000 <_end+0x13871d4>
     688:	7c 00 81 00 	*inconnu*
     68c:	25 9f 04 b0 	*inconnu*
     690:	0a b4 0a 05 	l.adrp r21,8140a000 <_end+0x813851d4>
     694:	7c 00 40 25 	*inconnu*
     698:	9f 04 b4 0a 	l.addi r24,r4,-19446
     69c:	bc 0a 05 7c 	l.sfeqi r10,1404
     6a0:	01 40 25 9f 	l.j 5009d1c <_end+0x4f84ef0>
     6a4:	00 04 e0 09 	l.j 1386c8 <_end+0xb389c>
     6a8:	bc 0a 01 56 	l.sfeqi r10,342
     6ac:	00 04 fc 0a 	l.j 13f6d4 <_end+0xba8a8>
     6b0:	98 0c 01 6b 	l.lhs r0,363(r12)
     6b4:	04 a0 0c a8 	l.jal 2803954 <_end+0x277eb28>
     6b8:	0c 01 6b 00 	l.bnf 5b2b8 <frameBuffer+0x56490>
     6bc:	04 fc 0a 98 	l.jal 3f0311c <_end+0x3e7e2f0>
     6c0:	0c 01 6d 04 	l.bnf 5bad0 <frameBuffer+0x56ca8>
     6c4:	a0 0c a8 0c 	l.addic r0,r12,-22516
     6c8:	01 6d 00 04 	l.j 5b406d8 <_end+0x5abb8ac>
     6cc:	fc 0a 8c 0b 	*inconnu*
     6d0:	01 5b 04 8c 	l.j 56c1900 <_end+0x563cad4>
     6d4:	0b a4 0b 01 	l.adrp r29,81602000 <_end+0x8157d1d4>
     6d8:	6f 04 a4 0b 	l.lwa r24,-23541(r4)
     6dc:	84 0c 01 5b 	l.lwz r0,347(r12)
     6e0:	04 90 0c 98 	l.jal 2403940 <_end+0x237eb14>
     6e4:	0c 01 5b 04 	l.bnf 572f4 <frameBuffer+0x524cc>
     6e8:	a0 0c a8 0c 	l.addic r0,r12,-22516
     6ec:	01 6f 00 04 	l.j 5bc06fc <_end+0x5b3b8d0>
     6f0:	b8 0b e0 0b 	*inconnu*
     6f4:	01 6f 04 e0 	l.j 5bc1a74 <_end+0x5b3cc48>
     6f8:	0b f8 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     6fc:	69 04 f8 0b 	*inconnu*
     700:	90 0c 01 6f 	l.lbs r0,367(r12)
     704:	04 90 0c 98 	l.jal 2403964 <_end+0x237eb38>
     708:	0c 01 69 00 	l.bnf 5ab08 <frameBuffer+0x55ce0>
     70c:	04 fc 0a 88 	l.jal 3f0312c <_end+0x3e7e300>
     710:	0b 01 61 04 	l.adrp r24,2c208000 <_end+0x2c1831d4>
     714:	8c 0b b8 0b 	l.lbz r0,-18421(r11)
     718:	01 61 04 a0 	l.j 5841998 <_end+0x57bcb6c>
     71c:	0c a8 0c 01 	l.bnf 2a03720 <_end+0x297e8f4>
     720:	61 00 04 b8 	*inconnu*
     724:	0b c0 0b 01 	l.adrp r30,1602000 <_end+0x157d1d4>
     728:	61 04 cc 0b 	*inconnu*
     72c:	dc 0b 01 61 	l.sh 353(r11),r0
     730:	04 e0 0b 98 	l.jal 3803590 <_end+0x377e764>
     734:	0c 01 61 00 	l.bnf 58b34 <frameBuffer+0x53d0c>
     738:	04 fc 0a b4 	l.jal 3f03208 <_end+0x3e7e3dc>
     73c:	0b 01 5d 04 	l.adrp r24,2ba08000 <_end+0x2b9831d4>
     740:	c8 0b 98 0c 	lf.sflt.s r11,r19
     744:	01 5d 04 a0 	l.j 57419c4 <_end+0x56bcb98>
     748:	0c a8 0c 01 	l.bnf 2a0374c <_end+0x297e920>
     74c:	5d 00 00 00 	*inconnu*
     750:	06 4d 00 05 	l.jal f9340764 <_end+0xf92bb938>
     754:	04 00 00 00 	l.jal 754 <perf_cycles_to_time+0x34>
     758:	00 00 04 00 	l.j 1758 <_vsnprintf+0x614>
     75c:	10 06 53 93 	l.bf 1955a8 <_end+0x11077c>
     760:	04 54 93 04 	l.jal 1525370 <_end+0x14a0544>
     764:	04 10 ec 05 	l.jal 43b778 <_end+0x3b694c>
     768:	06 a3 03 a5 	l.jal fa8c15fc <_end+0xfa83c7d0>
     76c:	03 26 9f 04 	l.j fc9a837c <_end+0xfc923550>
     770:	ec 05 84 06 	*inconnu*
     774:	06 53 93 04 	l.jal f94e5384 <_end+0xf9460558>
     778:	54 93 04 04 	*inconnu*
     77c:	84 06 f0 0b 	l.lwz r0,-4085(r6)
     780:	06 a3 03 a5 	l.jal fa8c1614 <_end+0xfa83c7e8>
     784:	03 26 9f 00 	l.j fc9a8384 <_end+0xfc923558>
     788:	04 00 20 06 	l.jal 87a0 <frameBuffer+0x3978>
     78c:	55 93 04 56 	*inconnu*
     790:	93 04 04 20 	l.lbs r24,1056(r4)
     794:	d0 05 06 a3 	*inconnu*
     798:	03 a5 05 26 	l.j fe941c30 <_end+0xfe8bce04>
     79c:	9f 04 d0 05 	l.addi r24,r4,-12283
     7a0:	e4 05 06 55 	*inconnu*
     7a4:	93 04 56 93 	l.lbs r24,22163(r4)
     7a8:	04 04 e4 05 	l.jal 1397bc <_end+0xb4990>
     7ac:	ec 05 06 a3 	*inconnu*
     7b0:	03 a5 05 26 	l.j fe941c48 <_end+0xfe8bce1c>
     7b4:	9f 04 ec 05 	l.addi r24,r4,-5115
     7b8:	90 06 06 55 	l.lbs r0,1621(r6)
     7bc:	93 04 56 93 	l.lbs r24,22163(r4)
     7c0:	04 04 90 06 	l.jal 1247d8 <_end+0x9f9ac>
     7c4:	f0 0b 06 a3 	*inconnu*
     7c8:	03 a5 05 26 	l.j fe941c60 <_end+0xfe8bce34>
     7cc:	9f 00 04 00 	l.addi r24,r0,1024
     7d0:	10 02 30 9f 	l.bf 8ca4c <_end+0x7c20>
     7d4:	04 10 ec 05 	l.jal 43b7e8 <_end+0x3b69bc>
     7d8:	01 65 04 ec 	l.j 5941b88 <_end+0x58bcd5c>
     7dc:	05 90 06 03 	l.jal 6401fe8 <_end+0x637d1bc>
     7e0:	09 ff 9f 04 	l.adrp r15,f3e08000 <_end+0xf3d831d4>
     7e4:	90 06 f0 0b 	l.lbs r0,-4085(r6)
     7e8:	01 65 00 04 	l.j 59407f8 <_end+0x58bb9cc>
     7ec:	00 10 06 53 	l.j 402138 <_end+0x37d30c>
     7f0:	93 04 54 93 	l.lbs r24,21651(r4)
     7f4:	04 04 ec 05 	l.jal 13b808 <_end+0xb69dc>
     7f8:	f4 05 06 53 	*inconnu*
     7fc:	93 04 54 93 	l.lbs r24,21651(r4)
     800:	04 04 88 06 	l.jal 122818 <_end+0x9d9ec>
     804:	90 06 06 53 	l.lbs r0,1619(r6)
     808:	93 04 54 93 	l.lbs r24,21651(r4)
     80c:	04 00 04 00 	l.jal 180c <_vsnprintf+0x6c8>
     810:	20 06 55 93 	*inconnu*
     814:	04 56 93 04 	l.jal 15a5424 <_end+0x15205f8>
     818:	04 d0 05 d4 	l.jal 3401f68 <_end+0x337d13c>
     81c:	05 06 55 93 	l.jal 4195e68 <_end+0x411103c>
     820:	04 56 93 04 	l.jal 15a5430 <_end+0x1520604>
     824:	04 e4 05 90 	l.jal 3901e64 <_end+0x387d038>
     828:	06 06 55 93 	l.jal f8195e74 <_end+0xf8111048>
     82c:	04 56 93 04 	l.jal 15a543c <_end+0x1520610>
     830:	00 04 90 02 	l.j 124838 <_end+0x9fa0c>
     834:	a4 02 06 5b 	l.andi r0,r2,0x65b
     838:	93 04 5c 93 	l.lbs r24,23699(r4)
     83c:	04 04 94 0b 	l.jal 125868 <_end+0xa0a3c>
     840:	9c 0b 06 5b 	l.addi r0,r11,1627
     844:	93 04 5c 93 	l.lbs r24,23699(r4)
     848:	04 00 04 20 	l.jal 18c8 <_vsnprintf+0x784>
     84c:	90 02 06 a0 	l.lbs r0,1696(r2)
     850:	00 00 09 10 	l.j 2c90 <__umoddi3+0x72c>
     854:	00 04 c0 02 	l.j 13085c <_end+0xaba30>
     858:	d0 05 06 a0 	*inconnu*
     85c:	00 00 09 10 	l.j 2c9c <__umoddi3+0x738>
     860:	00 04 90 06 	l.j 124878 <_end+0x9fa4c>
     864:	f0 0b 06 a0 	*inconnu*
     868:	00 00 09 10 	l.j 2ca8 <__umoddi3+0x744>
     86c:	00 00 04 2c 	l.j 191c <_vsnprintf+0x7d8>
     870:	9c 01 01 56 	l.addi r0,r1,342
     874:	04 9c 01 fc 	l.jal 2701064 <_end+0x267c238>
     878:	01 01 63 04 	l.j 4059488 <_end+0x3fd465c>
     87c:	fc 01 90 02 	*inconnu*
     880:	01 56 04 c0 	l.j 5581b80 <_end+0x54fcd54>
     884:	02 dc 03 01 	l.j fb701488 <_end+0xfb67c65c>
     888:	56 04 b0 04 	*inconnu*
     88c:	d0 05 01 63 	*inconnu*
     890:	04 90 06 f0 	l.jal 2402450 <_end+0x237d624>
     894:	06 01 56 04 	l.jal f80560a4 <_end+0xf7fd1278>
     898:	f8 06 a8 08 	*inconnu*
     89c:	01 63 04 a8 	l.j 58c1b3c <_end+0x583cd10>
     8a0:	08 ec 0a 01 	l.adrp r7,81402000 <_end+0x8137d1d4>
     8a4:	56 04 9c 0b 	*inconnu*
     8a8:	a8 0b 01 56 	l.ori r0,r11,0x156
     8ac:	04 c4 0b d0 	l.jal 31037ec <_end+0x307e9c0>
     8b0:	0b 01 56 04 	l.adrp r24,2ac08000 <_end+0x2ab831d4>
     8b4:	d8 0b e8 0b 	l.sb 11(r11),r29
     8b8:	01 56 04 e8 	l.j 5581c58 <_end+0x54fce2c>
     8bc:	0b f0 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     8c0:	63 00 04 2c 	*inconnu*
     8c4:	90 02 01 55 	l.lbs r0,341(r2)
     8c8:	04 c0 02 ac 	l.jal 3001378 <_end+0x2f7c54c>
     8cc:	03 01 55 04 	l.j fc055cdc <_end+0xfbfd0eb0>
     8d0:	c4 03 d0 05 	*inconnu*
     8d4:	01 55 04 90 	l.j 5541b14 <_end+0x54bcce8>
     8d8:	06 b0 08 01 	l.jal fac028dc <_end+0xfab7dab0>
     8dc:	55 04 b8 08 	*inconnu*
     8e0:	c4 0b 01 6f 	*inconnu*
     8e4:	04 d0 0b e8 	l.jal 3403884 <_end+0x337ea58>
     8e8:	0b 01 6f 04 	l.adrp r24,2de08000 <_end+0x2dd831d4>
     8ec:	e8 0b f0 0b 	*inconnu*
     8f0:	01 55 00 04 	l.j 5540900 <_end+0x54bbad4>
     8f4:	30 a4 01 01 	*inconnu*
     8f8:	54 04 a4 01 	*inconnu*
     8fc:	fc 01 01 67 	*inconnu*
     900:	04 fc 01 90 	l.jal 3f00f40 <_end+0x3e7c114>
     904:	02 01 54 04 	l.j f8055914 <_end+0xf7fd0ae8>
     908:	c0 02 ac 03 	l.mtspr r2,r21,0x403
     90c:	01 54 04 ac 	l.j 5501bbc <_end+0x547cd90>
     910:	03 b8 03 01 	l.j fee01514 <_end+0xfed7c6e8>
     914:	67 04 c4 03 	*inconnu*
     918:	b0 04 01 54 	l.muli r0,r4,340
     91c:	04 b0 04 90 	l.jal 2c01b5c <_end+0x2b7cd30>
     920:	05 01 67 04 	l.jal 405a530 <_end+0x3fd5704>
     924:	c4 05 c8 05 	*inconnu*
     928:	01 5c 04 90 	l.j 5701b68 <_end+0x567cd3c>
     92c:	06 b0 07 01 	l.jal fac02530 <_end+0xfab7d704>
     930:	54 04 b0 07 	*inconnu*
     934:	a8 08 01 67 	l.ori r0,r8,0x167
     938:	04 a8 08 f4 	l.jal 2a02d08 <_end+0x297dedc>
     93c:	08 01 54 04 	l.adrp r0,2a808000 <_end+0x2a7831d4>
     940:	f4 08 88 0b 	*inconnu*
     944:	01 5f 04 88 	l.j 57c1b64 <_end+0x573cd38>
     948:	0b 90 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
     94c:	61 04 9c 0b 	*inconnu*
     950:	c4 0b 01 5f 	*inconnu*
     954:	04 c4 0b d0 	l.jal 3103894 <_end+0x307ea68>
     958:	0b 01 67 04 	l.adrp r24,2ce08000 <_end+0x2cd831d4>
     95c:	d0 0b e8 0b 	*inconnu*
     960:	01 5f 04 e8 	l.j 57c1d00 <_end+0x573ced4>
     964:	0b f0 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     968:	67 00 04 a0 	*inconnu*
     96c:	01 a4 01 01 	l.j 6900d70 <_end+0x687bf44>
     970:	61 04 ac 03 	*inconnu*
     974:	b8 03 14 75 	*inconnu*
     978:	00 74 00 40 	l.j 1d00a78 <_end+0x1c7bc4c>
     97c:	4b 24 22 87 	*inconnu*
     980:	00 40 4b 24 	l.j 1013610 <_end+0xf8e7e4>
     984:	22 2d 08 ff 	*inconnu*
     988:	1a 1c 9f 04 	*inconnu*
     98c:	a8 04 bc 04 	l.ori r0,r4,0xbc04
     990:	01 61 04 98 	l.j 5841bf0 <_end+0x57bcdc4>
     994:	07 f0 07 01 	l.jal ffc02598 <_end+0xffb7d76c>
     998:	61 04 a0 08 	*inconnu*
     99c:	a8 08 01 61 	l.ori r0,r8,0x161
     9a0:	04 f4 08 bc 	l.jal 3d02c90 <_end+0x3c7de64>
     9a4:	09 01 5d 04 	l.adrp r8,2ba08000 <_end+0x2b9831d4>
     9a8:	bc 09 b0 0a 	l.sfeqi r9,-20470
     9ac:	09 74 00 8b 	l.adrp r11,80116000 <_end+0x800911d4>
     9b0:	00 25 73 00 	l.j 95d5b0 <_end+0x8d8784>
     9b4:	21 9f 04 b0 	*inconnu*
     9b8:	0a f8 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
     9bc:	63 04 88 0b 	*inconnu*
     9c0:	9c 0b 01 53 	l.addi r0,r11,339
     9c4:	04 9c 0b c4 	l.jal 27038d4 <_end+0x267eaa8>
     9c8:	0b 01 63 04 	l.adrp r24,2c608000 <_end+0x2c5831d4>
     9cc:	c4 0b d0 0b 	*inconnu*
     9d0:	14 75 00 74 	*inconnu*
     9d4:	00 40 4b 24 	l.j 1013664 <_end+0xf8e838>
     9d8:	22 87 00 40 	*inconnu*
     9dc:	4b 24 22 2d 	*inconnu*
     9e0:	08 ff 1a 1c 	l.adrp r7,e3438000 <_end+0xe33b31d4>
     9e4:	9f 04 d0 0b 	l.addi r24,r4,-12277
     9e8:	d8 0b 01 63 	l.sb 355(r11),r0
     9ec:	04 d8 0b e0 	l.jal 360396c <_end+0x357eb40>
     9f0:	0b 09 74 00 	l.adrp r24,2e800000 <_end+0x2e77b1d4>
     9f4:	8b 00 25 73 	l.lws r24,9587(r0)
     9f8:	00 21 9f 04 	l.j 868608 <_end+0x7e37dc>
     9fc:	e0 0b e8 0b 	*inconnu*
     a00:	01 5d 00 04 	l.j 5740a10 <_end+0x56bbbe4>
     a04:	fc 06 94 07 	*inconnu*
     a08:	01 69 00 04 	l.j 5a40a18 <_end+0x59bbbec>
     a0c:	88 02 90 02 	l.lws r0,-28670(r2)
     a10:	02 30 9f 04 	l.j f8c28620 <_end+0xf8ba37f4>
     a14:	a0 03 b8 03 	l.addic r0,r3,-18429
     a18:	02 31 9f 04 	l.j f8c68628 <_end+0xf8be37fc>
     a1c:	c4 0b d0 0b 	*inconnu*
     a20:	02 31 9f 00 	l.j f8c68620 <_end+0xf8be37f4>
     a24:	04 88 02 90 	l.jal 2201464 <_end+0x217c638>
     a28:	02 02 30 9f 	l.j f808cca4 <_end+0xf8007e78>
     a2c:	04 b8 03 c4 	l.jal 2e0193c <_end+0x2d7cb10>
     a30:	03 02 30 9f 	l.j fc08ccac <_end+0xfc007e80>
     a34:	04 a8 04 b0 	l.jal 2a01cf4 <_end+0x297cec8>
     a38:	04 02 31 9f 	l.jal 8d0b4 <_end+0x8288>
     a3c:	04 ec 0a 9c 	l.jal 3b034ac <_end+0x3a7e680>
     a40:	0b 02 30 9f 	l.adrp r24,4613e000 <_end+0x460b91d4>
     a44:	00 04 f0 06 	l.j 13ca5c <_end+0xb7c30>
     a48:	90 07 01 61 	l.lbs r0,353(r7)
     a4c:	04 a8 08 8c 	l.jal 2a02c7c <_end+0x297de50>
     a50:	0b 01 6b 04 	l.adrp r24,2d608000 <_end+0x2d5831d4>
     a54:	9c 0b c4 0b 	l.addi r0,r11,-15349
     a58:	01 6b 04 d0 	l.j 5ac1d98 <_end+0x5a3cf6c>
     a5c:	0b e8 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     a60:	6b 00 04 88 	*inconnu*
     a64:	01 fc 01 01 	l.j 7f00e68 <_end+0x7e7c03c>
     a68:	6b 04 84 03 	*inconnu*
     a6c:	c4 03 01 69 	*inconnu*
     a70:	04 98 04 d0 	l.jal 2601db0 <_end+0x257cf84>
     a74:	05 01 6b 04 	l.jal 405b684 <_end+0x3fd6858>
     a78:	f0 06 a8 08 	*inconnu*
     a7c:	01 6b 04 a8 	l.j 5ac1d1c <_end+0x5a3cef0>
     a80:	08 e8 0b 01 	l.adrp r7,1602000 <_end+0x157d1d4>
     a84:	69 04 e8 0b 	*inconnu*
     a88:	f0 0b 01 6b 	*inconnu*
     a8c:	00 04 44 fc 	l.j 111e7c <_end+0x8d050>
     a90:	01 01 56 04 	l.j 40562a0 <_end+0x3fd1474>
     a94:	90 06 ac 06 	l.lbs r0,-21498(r6)
     a98:	01 56 00 04 	l.j 5580aa8 <_end+0x54fbc7c>
     a9c:	68 88 01 01 	*inconnu*
     aa0:	6b 00 04 ac 	*inconnu*
     aa4:	01 fc 01 01 	l.j 7f00ea8 <_end+0x7e7c07c>
     aa8:	6d 00 04 c0 	l.lwa r8,1216(r0)
     aac:	01 fc 01 01 	l.j 7f00eb0 <_end+0x7e7c084>
     ab0:	6f 00 04 c0 	l.lwa r24,1216(r0)
     ab4:	01 c4 01 01 	l.j 7100eb8 <_end+0x707c08c>
     ab8:	61 04 cc 01 	*inconnu*
     abc:	fc 01 01 61 	*inconnu*
     ac0:	00 04 c8 01 	l.j 132ac4 <_end+0xadc98>
     ac4:	fc 01 01 5d 	*inconnu*
     ac8:	00 04 c0 02 	l.j 130ad0 <_end+0xabca4>
     acc:	ac 03 01 55 	l.xori r0,r3,341
     ad0:	04 d4 06 f0 	l.jal 3502690 <_end+0x347d864>
     ad4:	06 01 55 04 	l.jal f8055ee4 <_end+0xf7fd10b8>
     ad8:	a8 08 b0 08 	l.ori r0,r8,0xb008
     adc:	01 55 00 04 	l.j 5540aec <_end+0x54bbcc0>
     ae0:	e4 02 c4 03 	*inconnu*
     ae4:	01 63 04 a8 	l.j 58c1d84 <_end+0x583cf58>
     ae8:	08 c0 08 01 	l.adrp r6,1002000 <_end+0xf7d1d4>
     aec:	63 04 c4 0b 	*inconnu*
     af0:	d0 0b 01 63 	*inconnu*
     af4:	00 04 a0 03 	l.j 128b00 <_end+0xa3cd4>
     af8:	a4 03 06 74 	l.andi r0,r3,0x674
     afc:	00 76 00 1c 	l.j 1d80b6c <_end+0x1cfbd40>
     b00:	9f 04 a4 03 	l.addi r24,r4,-23549
     b04:	b8 03 01 67 	*inconnu*
     b08:	04 c4 0b d0 	l.jal 3103a48 <_end+0x307ec1c>
     b0c:	0b 01 67 00 	l.adrp r24,2ce00000 <_end+0x2cd7b1d4>
     b10:	04 ac 06 d4 	l.jal 2b02660 <_end+0x2a7d834>
     b14:	06 01 56 00 	l.jal f8056314 <_end+0xf7fd14e8>
     b18:	04 f8 03 94 	l.jal 3e01968 <_end+0x3d7cb3c>
     b1c:	04 01 69 00 	l.jal 5af1c <frameBuffer+0x560f4>
     b20:	04 b0 04 f8 	l.jal 2c01f00 <_end+0x2b7d0d4>
     b24:	04 05 83 00 	l.jal 161724 <_end+0xdc8f8>
     b28:	40 25 9f 04 	*inconnu*
     b2c:	e8 0b f0 0b 	*inconnu*
     b30:	05 83 00 40 	l.jal 60c0c30 <_end+0x603be04>
     b34:	25 9f 00 04 	*inconnu*
     b38:	b0 04 f8 04 	l.muli r0,r4,-2044
     b3c:	07 83 00 0a 	l.jal fe0c0b64 <_end+0xfe03bd38>
     b40:	ff ff 1a 9f 	*inconnu*
     b44:	04 e8 0b f0 	l.jal 3a03b04 <_end+0x397ecd8>
     b48:	0b 07 83 00 	l.adrp r24,f0600000 <_end+0xf057b1d4>
     b4c:	0a ff ff 1a 	l.adrp r23,ffe34000 <_end+0xffdaf1d4>
     b50:	9f 00 04 bc 	l.addi r24,r0,1212
     b54:	04 c4 04 01 	l.jal 3101b58 <_end+0x307cd2c>
     b58:	61 04 d0 04 	*inconnu*
     b5c:	84 05 01 61 	l.lwz r0,353(r5)
     b60:	04 e8 0b f0 	l.jal 3a03b20 <_end+0x397ecf4>
     b64:	0b 01 61 00 	l.adrp r24,2c200000 <_end+0x2c17b1d4>
     b68:	04 84 05 94 	l.jal 21021b8 <_end+0x207d38c>
     b6c:	05 01 61 04 	l.jal 4058f7c <_end+0x3fd4150>
     b70:	98 05 c8 05 	l.lhs r0,-14331(r5)
     b74:	01 5c 00 04 	l.j 5700b84 <_end+0x567bd58>
     b78:	cc 04 f8 04 	l.swa 4(r4),r31
     b7c:	01 69 04 94 	l.j 5a41dcc <_end+0x59bcfa0>
     b80:	05 d0 05 01 	l.jal 7401f84 <_end+0x737d158>
     b84:	61 04 e8 0b 	*inconnu*
     b88:	f0 0b 01 69 	*inconnu*
     b8c:	00 04 b0 07 	l.j 12cba8 <_end+0xa7d7c>
     b90:	a8 08 01 6d 	l.ori r0,r8,0x16d
     b94:	00 04 b0 07 	l.j 12cbb0 <_end+0xa7d84>
     b98:	a8 08 01 6f 	l.ori r0,r8,0x16f
     b9c:	00 04 b0 07 	l.j 12cbb8 <_end+0xa7d8c>
     ba0:	e4 07 01 69 	*inconnu*
     ba4:	00 04 e4 07 	l.j 139bc0 <_end+0xb4d94>
     ba8:	ec 07 01 69 	*inconnu*
     bac:	04 f8 07 a8 	l.jal 3e02a4c <_end+0x3d7dc20>
     bb0:	08 01 61 00 	l.adrp r0,2c200000 <_end+0x2c17b1d4>
     bb4:	04 b0 07 dc 	l.jal 2c02b24 <_end+0x2b7dcf8>
     bb8:	07 01 5d 04 	l.jal fc057fc8 <_end+0xfbfd319c>
     bbc:	f4 07 a8 08 	*inconnu*
     bc0:	01 5d 00 04 	l.j 5740bd0 <_end+0x56bbda4>
     bc4:	cc 0a f8 0a 	l.swa 10(r10),r31
     bc8:	01 67 04 9c 	l.j 59c1e38 <_end+0x593d00c>
     bcc:	0b c4 0b 01 	l.adrp r30,81602000 <_end+0x8157d1d4>
     bd0:	67 04 d0 0b 	*inconnu*
     bd4:	d8 0b 01 67 	l.sb 359(r11),r0
     bd8:	00 04 d8 0a 	l.j 136c00 <_end+0xb1dd4>
     bdc:	f0 0a 01 61 	*inconnu*
     be0:	04 9c 0b ac 	l.jal 2703a90 <_end+0x267ec64>
     be4:	0b 01 61 04 	l.adrp r24,2c208000 <_end+0x2c1831d4>
     be8:	bc 0b c4 0b 	l.sfeqi r11,-15349
     bec:	01 56 00 04 	l.j 5580bfc <_end+0x54fbdd0>
     bf0:	f4 08 ac 09 	*inconnu*
     bf4:	01 63 04 ac 	l.j 58c1ea4 <_end+0x583d078>
     bf8:	09 b4 09 05 	l.adrp r13,8120a000 <_end+0x811851d4>
     bfc:	8f 00 40 25 	l.lbz r24,16421(r0)
     c00:	9f 04 b4 09 	l.addi r24,r4,-19447
     c04:	b8 09 06 8f 	*inconnu*
     c08:	00 83 00 25 	l.j 20c0c9c <_end+0x203be70>
     c0c:	9f 04 b8 09 	l.addi r24,r4,-18423
     c10:	f8 09 05 8f 	*inconnu*
     c14:	00 40 25 9f 	l.j 100a290 <_end+0xf85464>
     c18:	04 f8 09 a4 	l.jal 3e032a8 <_end+0x3d7e47c>
     c1c:	0a 06 8f 00 	l.adrp r16,d1e00000 <_end+0xd1d7b1d4>
     c20:	81 00 25 9f 	*inconnu*
     c24:	04 a4 0a c4 	l.jal 2903734 <_end+0x287e908>
     c28:	0a 05 8f 00 	l.adrp r16,b1e00000 <_end+0xb1d7b1d4>
     c2c:	40 25 9f 04 	*inconnu*
     c30:	c4 0a c4 0b 	*inconnu*
     c34:	06 8f 00 7d 	l.jal fa3c0e28 <_end+0xfa33bffc>
     c38:	00 25 9f 04 	l.j 968848 <_end+0x8e3a1c>
     c3c:	d0 0b d8 0b 	*inconnu*
     c40:	06 8f 00 7d 	l.jal fa3c0e34 <_end+0xfa33c008>
     c44:	00 25 9f 04 	l.j 968854 <_end+0x8e3a28>
     c48:	d8 0b e0 0b 	l.sb 11(r11),r28
     c4c:	05 8f 00 40 	l.jal 63c0d4c <_end+0x633bf20>
     c50:	25 9f 04 e0 	*inconnu*
     c54:	0b e8 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     c58:	63 00 04 f4 	*inconnu*
     c5c:	08 c0 09 01 	l.adrp r6,1202000 <_end+0x117d1d4>
     c60:	5c 04 c0 09 	*inconnu*
     c64:	c4 0b 07 8f 	*inconnu*
     c68:	00 0a ff ff 	l.j 2c0c64 <_end+0x23be38>
     c6c:	1a 9f 04 d0 	*inconnu*
     c70:	0b e0 0b 07 	l.adrp r31,160e000 <_end+0x15891d4>
     c74:	8f 00 0a ff 	l.lbz r24,2815(r0)
     c78:	ff 1a 9f 04 	*inconnu*
     c7c:	e0 0b e8 0b 	*inconnu*
     c80:	01 5c 00 04 	l.j 5700c90 <_end+0x567be64>
     c84:	f4 08 84 09 	*inconnu*
     c88:	01 67 04 84 	l.j 59c1e98 <_end+0x593d06c>
     c8c:	09 9c 09 01 	l.adrp r12,81202000 <_end+0x8117d1d4>
     c90:	6d 04 9c 09 	l.lwa r8,-25591(r4)
     c94:	fc 09 01 67 	*inconnu*
     c98:	04 d8 0b e0 	l.jal 3603c18 <_end+0x357edec>
     c9c:	0b 01 67 04 	l.adrp r24,2ce08000 <_end+0x2cd831d4>
     ca0:	e0 0b e8 0b 	*inconnu*
     ca4:	01 6d 00 04 	l.j 5b40cb4 <_end+0x5abbe88>
     ca8:	b0 09 d8 09 	l.muli r0,r9,-10231
     cac:	01 6d 04 d8 	l.j 5b4200c <_end+0x5abd1e0>
     cb0:	09 f0 09 01 	l.adrp r15,1202000 <_end+0x117d1d4>
     cb4:	61 04 f0 09 	*inconnu*
     cb8:	8c 0a 01 6d 	l.lbz r0,365(r10)
     cbc:	04 d8 0b e0 	l.jal 3603c3c <_end+0x357ee10>
     cc0:	0b 01 61 00 	l.adrp r24,2c200000 <_end+0x2c17b1d4>
     cc4:	04 f4 08 80 	l.jal 3d02ec4 <_end+0x3c7e098>
     cc8:	09 01 61 04 	l.adrp r8,2c208000 <_end+0x2c1831d4>
     ccc:	80 09 84 09 	*inconnu*
     cd0:	08 7d 00 40 	l.adrp r3,a0080000 <_end+0x9fffb1d4>
     cd4:	25 8d 00 21 	*inconnu*
     cd8:	9f 04 84 09 	l.addi r24,r4,-31735
     cdc:	b0 09 01 61 	l.muli r0,r9,353
     ce0:	04 e0 0b e8 	l.jal 3803c80 <_end+0x377ee54>
     ce4:	0b 01 61 00 	l.adrp r24,2c200000 <_end+0x2c17b1d4>
     ce8:	04 b0 09 c4 	l.jal 2c033f8 <_end+0x2b7e5cc>
     cec:	09 01 61 04 	l.adrp r8,2c208000 <_end+0x2c1831d4>
     cf0:	c4 09 d4 09 	*inconnu*
     cf4:	01 63 04 d4 	l.j 58c2044 <_end+0x583d218>
     cf8:	09 d8 09 08 	l.adrp r14,1210000 <_end+0x118b1d4>
     cfc:	81 00 40 24 	*inconnu*
     d00:	7d 00 21 9f 	*inconnu*
     d04:	04 d8 09 f8 	l.jal 36034e4 <_end+0x357e6b8>
     d08:	0a 01 63 04 	l.adrp r16,2c608000 <_end+0x2c5831d4>
     d0c:	9c 0b c4 0b 	l.addi r0,r11,-15349
     d10:	01 63 04 d0 	l.j 58c2050 <_end+0x583d224>
     d14:	0b e0 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     d18:	63 00 04 f4 	*inconnu*
     d1c:	08 c0 09 01 	l.adrp r6,1202000 <_end+0x117d1d4>
     d20:	5b 04 c0 09 	*inconnu*
     d24:	94 0b 01 5c 	l.lhz r0,348(r11)
     d28:	04 9c 0b c4 	l.jal 2703c38 <_end+0x267ee0c>
     d2c:	0b 01 5c 04 	l.adrp r24,2b808000 <_end+0x2b7831d4>
     d30:	d0 0b e0 0b 	*inconnu*
     d34:	01 5c 04 e0 	l.j 57020b4 <_end+0x567d288>
     d38:	0b e8 0b 01 	l.adrp r31,1602000 <_end+0x157d1d4>
     d3c:	5b 00 04 b0 	*inconnu*
     d40:	0a d4 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
     d44:	5b 00 04 b0 	*inconnu*
     d48:	0a d0 0a 01 	l.adrp r22,1402000 <_end+0x137d1d4>
     d4c:	61 00 04 b0 	*inconnu*
     d50:	0a c4 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
     d54:	5d 00 04 b0 	*inconnu*
     d58:	0a cc 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
     d5c:	67 00 04 b0 	*inconnu*
     d60:	0a ec 0a 07 	l.adrp r23,8140e000 <_end+0x813891d4>
     d64:	76 00 0a ff 	*inconnu*
     d68:	ff 1a 9f 04 	*inconnu*
     d6c:	9c 0b a8 0b 	l.addi r0,r11,-22517
     d70:	07 76 00 0a 	l.jal fdd80d98 <_end+0xfdcfbf6c>
     d74:	ff ff 1a 9f 	*inconnu*
     d78:	00 04 b0 0a 	l.j 12cda0 <_end+0xa7f74>
     d7c:	c4 0b 01 58 	*inconnu*
     d80:	04 d0 0b d8 	l.jal 3403ce0 <_end+0x337eeb4>
     d84:	0b 01 58 00 	l.adrp r24,2b000000 <_end+0x2af7b1d4>
     d88:	04 f0 0a 90 	l.jal 3c037c8 <_end+0x3b7e99c>
     d8c:	0b 01 61 00 	l.adrp r24,2c200000 <_end+0x2c17b1d4>
     d90:	04 a8 0b c4 	l.jal 2a03ca0 <_end+0x297ee74>
     d94:	0b 01 56 04 	l.adrp r24,2ac08000 <_end+0x2ab831d4>
     d98:	d0 0b d8 0b 	*inconnu*
     d9c:	01 56 00 00 	l.j 5580d9c <_end+0x54fbf70>
     da0:	00 07 8d 00 	l.j 1e41a0 <_end+0x15f374>
     da4:	05 04 00 00 	l.jal 4100da4 <_end+0x407bf78>
     da8:	00 00 00 04 	l.j db8 <_ntoa_format+0x300>
     dac:	00 70 06 53 	l.j 1c026f8 <_end+0x1b7d8cc>
     db0:	93 04 54 93 	l.lbs r24,21651(r4)
     db4:	04 04 70 bc 	l.jal 11d0a4 <_end+0x98278>
     db8:	02 06 a3 03 	l.j f81a99c4 <_end+0xf8124b98>
     dbc:	a5 03 26 9f 	l.andi r8,r3,0x269f
     dc0:	04 bc 02 bc 	l.jal 2f018b0 <_end+0x2e7ca84>
     dc4:	03 06 53 93 	l.j fc195c10 <_end+0xfc110de4>
     dc8:	04 54 93 04 	l.jal 15259d8 <_end+0x14a0bac>
     dcc:	04 bc 03 c8 	l.jal 2f01cec <_end+0x2e7cec0>
     dd0:	03 06 a3 03 	l.j fc1a99dc <_end+0xfc124bb0>
     dd4:	a5 03 26 9f 	l.andi r8,r3,0x269f
     dd8:	04 c8 03 ac 	l.jal 3201c88 <_end+0x317ce5c>
     ddc:	04 06 53 93 	l.jal 195c28 <_end+0x110dfc>
     de0:	04 54 93 04 	l.jal 15259f0 <_end+0x14a0bc4>
     de4:	04 ac 04 e8 	l.jal 2b02184 <_end+0x2a7d358>
     de8:	05 06 a3 03 	l.jal 41a99f4 <_end+0x4124bc8>
     dec:	a5 03 26 9f 	l.andi r8,r3,0x269f
     df0:	04 e8 05 ec 	l.jal 3a025a0 <_end+0x397d774>
     df4:	06 06 53 93 	l.jal f8195c40 <_end+0xf8110e14>
     df8:	04 54 93 04 	l.jal 1525a08 <_end+0x14a0bdc>
     dfc:	04 ec 06 ac 	l.jal 3b028ac <_end+0x3a7da80>
     e00:	09 06 a3 03 	l.adrp r8,d4606000 <_end+0xd45811d4>
     e04:	a5 03 26 9f 	l.andi r8,r3,0x269f
     e08:	04 ac 09 c8 	l.jal 2b03528 <_end+0x2a7e6fc>
     e0c:	09 06 53 93 	l.adrp r8,ca726000 <_end+0xca6a11d4>
     e10:	04 54 93 04 	l.jal 1525a20 <_end+0x14a0bf4>
     e14:	04 c8 09 a0 	l.jal 3203494 <_end+0x317e668>
     e18:	0b 06 a3 03 	l.adrp r24,d4606000 <_end+0xd45811d4>
     e1c:	a5 03 26 9f 	l.andi r8,r3,0x269f
     e20:	04 a0 0b ac 	l.jal 2803cd0 <_end+0x277eea4>
     e24:	0b 06 53 93 	l.adrp r24,ca726000 <_end+0xca6a11d4>
     e28:	04 54 93 04 	l.jal 1525a38 <_end+0x14a0c0c>
     e2c:	04 ac 0b bc 	l.jal 2b03d1c <_end+0x2a7eef0>
     e30:	0b 06 a3 03 	l.adrp r24,d4606000 <_end+0xd45811d4>
     e34:	a5 03 26 9f 	l.andi r8,r3,0x269f
     e38:	00 04 00 bc 	l.j 101128 <_end+0x7c2fc>
     e3c:	03 06 55 93 	l.j fc196488 <_end+0xfc11165c>
     e40:	04 56 93 04 	l.jal 15a5a50 <_end+0x1520c24>
     e44:	04 bc 03 c8 	l.jal 2f01d64 <_end+0x2e7cf38>
     e48:	03 06 a3 03 	l.j fc1a9a54 <_end+0xfc124c28>
     e4c:	a5 05 26 9f 	l.andi r8,r5,0x269f
     e50:	04 c8 03 d0 	l.jal 3201d90 <_end+0x317cf64>
     e54:	06 06 55 93 	l.jal f81964a0 <_end+0xf8111674>
     e58:	04 56 93 04 	l.jal 15a5a68 <_end+0x1520c3c>
     e5c:	04 d0 06 ac 	l.jal 340290c <_end+0x337dae0>
     e60:	09 06 a3 03 	l.adrp r8,d4606000 <_end+0xd45811d4>
     e64:	a5 05 26 9f 	l.andi r8,r5,0x269f
     e68:	04 ac 09 88 	l.jal 2b03488 <_end+0x2a7e65c>
     e6c:	0b 06 55 93 	l.adrp r24,cab26000 <_end+0xcaaa11d4>
     e70:	04 56 93 04 	l.jal 15a5a80 <_end+0x1520c54>
     e74:	04 88 0b 90 	l.jal 2203cb4 <_end+0x217ee88>
     e78:	0b 06 a3 03 	l.adrp r24,d4606000 <_end+0xd45811d4>
     e7c:	a5 05 26 9f 	l.andi r8,r5,0x269f
     e80:	04 90 0b 98 	l.jal 2403ce0 <_end+0x237eeb4>
     e84:	0b 06 55 93 	l.adrp r24,cab26000 <_end+0xcaaa11d4>
     e88:	04 56 93 04 	l.jal 15a5a98 <_end+0x1520c6c>
     e8c:	04 98 0b a0 	l.jal 2603d0c <_end+0x257eee0>
     e90:	0b 06 a3 03 	l.adrp r24,d4606000 <_end+0xd45811d4>
     e94:	a5 05 26 9f 	l.andi r8,r5,0x269f
     e98:	04 a0 0b bc 	l.jal 2803d88 <_end+0x277ef5c>
     e9c:	0b 06 55 93 	l.adrp r24,cab26000 <_end+0xcaaa11d4>
     ea0:	04 56 93 04 	l.jal 15a5ab0 <_end+0x1520c84>
     ea4:	00 04 00 b4 	l.j 101174 <_end+0x7c348>
     ea8:	02 02 30 9f 	l.j f808d124 <_end+0xf80082f8>
     eac:	04 bc 02 d0 	l.jal 2f019ec <_end+0x2e7cbc0>
     eb0:	02 02 30 9f 	l.j f808d12c <_end+0xf8008300>
     eb4:	04 d8 02 c0 	l.jal 36019b4 <_end+0x357cb88>
     eb8:	03 02 30 9f 	l.j fc08d134 <_end+0xfc008308>
     ebc:	04 c8 03 e0 	l.jal 3201e3c <_end+0x317d010>
     ec0:	05 02 30 9f 	l.jal 408d13c <_end+0x4008310>
     ec4:	04 e8 05 a4 	l.jal 3a02554 <_end+0x397d728>
     ec8:	09 02 30 9f 	l.adrp r8,4613e000 <_end+0x460b91d4>
     ecc:	04 ac 09 bc 	l.jal 2b035bc <_end+0x2a7e790>
     ed0:	0b 02 30 9f 	l.adrp r24,4613e000 <_end+0x460b91d4>
     ed4:	00 04 00 78 	l.j 1010b4 <_end+0x7c288>
     ed8:	06 55 93 04 	l.jal f9565ae8 <_end+0xf94e0cbc>
     edc:	56 93 04 04 	*inconnu*
     ee0:	bc 02 d0 02 	l.sfeqi r2,-12286
     ee4:	06 55 93 04 	l.jal f9565af4 <_end+0xf94e0cc8>
     ee8:	56 93 04 04 	*inconnu*
     eec:	d8 02 bc 03 	l.sb 1027(r2),r23
     ef0:	06 55 93 04 	l.jal f9565b00 <_end+0xf94e0cd4>
     ef4:	56 93 04 04 	*inconnu*
     ef8:	c8 03 e0 03 	lf.div.s r0,r3,r28
     efc:	06 55 93 04 	l.jal f9565b0c <_end+0xf94e0ce0>
     f00:	56 93 04 04 	*inconnu*
     f04:	e8 05 d0 06 	*inconnu*
     f08:	06 55 93 04 	l.jal f9565b18 <_end+0xf94e0cec>
     f0c:	56 93 04 04 	*inconnu*
     f10:	a0 0b ac 0b 	l.addic r0,r11,-21493
     f14:	06 55 93 04 	l.jal f9565b24 <_end+0xf94e0cf8>
     f18:	56 93 04 00 	*inconnu*
     f1c:	04 00 70 06 	l.jal 1cf34 <frameBuffer+0x1810c>
     f20:	53 93 04 54 	*inconnu*
     f24:	93 04 04 70 	l.lbs r24,1136(r4)
     f28:	7c 06 61 93 	*inconnu*
     f2c:	04 54 93 04 	l.jal 1525b3c <_end+0x14a0d10>
     f30:	04 bc 02 d0 	l.jal 2f01a70 <_end+0x2e7cc44>
     f34:	02 06 53 93 	l.j f8195d80 <_end+0xf8110f54>
     f38:	04 54 93 04 	l.jal 1525b48 <_end+0x14a0d1c>
     f3c:	04 d8 02 bc 	l.jal 3601a2c <_end+0x357cc00>
     f40:	03 06 53 93 	l.j fc195d8c <_end+0xfc110f60>
     f44:	04 54 93 04 	l.jal 1525b54 <_end+0x14a0d28>
     f48:	04 c8 03 ac 	l.jal 3201df8 <_end+0x317cfcc>
     f4c:	04 06 53 93 	l.jal 195d98 <_end+0x110f6c>
     f50:	04 54 93 04 	l.jal 1525b60 <_end+0x14a0d34>
     f54:	04 e8 05 ec 	l.jal 3a02704 <_end+0x397d8d8>
     f58:	06 06 53 93 	l.jal f8195da4 <_end+0xf8110f78>
     f5c:	04 54 93 04 	l.jal 1525b6c <_end+0x14a0d40>
     f60:	04 ac 09 c8 	l.jal 2b03680 <_end+0x2a7e854>
     f64:	09 06 53 93 	l.adrp r8,ca726000 <_end+0xca6a11d4>
     f68:	04 54 93 04 	l.jal 1525b78 <_end+0x14a0d4c>
     f6c:	04 a0 0b ac 	l.jal 2803e1c <_end+0x277eff0>
     f70:	0b 06 53 93 	l.adrp r24,ca726000 <_end+0xca6a11d4>
     f74:	04 54 93 04 	l.jal 1525b84 <_end+0x14a0d58>
     f78:	00 04 00 6c 	l.j 101128 <_end+0x7c2fc>
     f7c:	01 56 04 6c 	l.j 558212c <_end+0x54fd300>
     f80:	78 06 76 00 	*inconnu*
     f84:	89 00 24 9f 	l.lws r8,9375(r0)
     f88:	04 78 80 01 	l.jal 1e20f8c <_end+0x1d9c160>
     f8c:	01 56 04 bc 	l.j 558227c <_end+0x54fd450>
     f90:	02 d0 02 01 	l.j fb401794 <_end+0xfb37c968>
     f94:	56 04 d8 02 	*inconnu*
     f98:	bc 03 01 56 	l.sfeqi r3,342
     f9c:	04 c8 03 dc 	l.jal 3201f0c <_end+0x317d0e0>
     fa0:	03 01 56 04 	l.j fc0567b0 <_end+0xfbfd1984>
     fa4:	dc 03 e0 03 	l.sh 3(r3),r28
     fa8:	0b 31 a8 2d 	l.adrp r25,3505a000 <_end+0x34fd51d4>
     fac:	76 00 a8 2d 	l.cas r16,r0,r21,0x2d
     fb0:	1b a8 00 9f 	*inconnu*
     fb4:	04 e8 05 ac 	l.jal 3a02664 <_end+0x397d838>
     fb8:	08 01 56 04 	l.adrp r0,2ac08000 <_end+0x2ab831d4>
     fbc:	b4 09 ac 0b 	l.mfspr r0,r9,0xac0b
     fc0:	01 56 00 04 	l.j 5580fd0 <_end+0x54fc1a4>
     fc4:	00 b4 02 01 	l.j 2d017c8 <_end+0x2c7c99c>
     fc8:	55 04 bc 02 	*inconnu*
     fcc:	d0 02 01 55 	*inconnu*
     fd0:	04 d8 02 bc 	l.jal 3601ac0 <_end+0x357cc94>
     fd4:	03 01 55 04 	l.j fc0563e4 <_end+0xfbfd15b8>
     fd8:	c8 03 e0 05 	*inconnu*
     fdc:	01 55 04 e8 	l.j 554237c <_end+0x54bd550>
     fe0:	05 d0 06 01 	l.jal 74027e4 <_end+0x737d9b8>
     fe4:	55 04 d8 06 	*inconnu*
     fe8:	a0 08 01 69 	l.addic r0,r8,361
     fec:	04 ac 09 88 	l.jal 2b0360c <_end+0x2a7e7e0>
     ff0:	0b 01 55 04 	l.adrp r24,2aa08000 <_end+0x2a9831d4>
     ff4:	88 0b 90 0b 	l.lws r0,-28661(r11)
     ff8:	01 69 04 90 	l.j 5a42238 <_end+0x59bd40c>
     ffc:	0b 98 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    1000:	55 04 98 0b 	*inconnu*
    1004:	a0 0b 01 69 	l.addic r0,r11,361
    1008:	04 a0 0b bc 	l.jal 2803ef8 <_end+0x277f0cc>
    100c:	0b 01 55 00 	l.adrp r24,2aa00000 <_end+0x2a97b1d4>
    1010:	04 0c 80 01 	l.jal 321014 <_end+0x29c1e8>
    1014:	01 54 04 80 	l.j 5502214 <_end+0x547d3e8>
    1018:	01 f4 01 01 	l.j 7d0141c <_end+0x7c7c5f0>
    101c:	63 04 bc 02 	*inconnu*
    1020:	d0 02 01 54 	*inconnu*
    1024:	04 d8 02 bc 	l.jal 3601b14 <_end+0x357cce8>
    1028:	03 01 54 04 	l.j fc056038 <_end+0xfbfd120c>
    102c:	c8 03 b8 04 	*inconnu*
    1030:	01 54 04 b8 	l.j 5502310 <_end+0x547d4e4>
    1034:	04 a4 05 01 	l.jal 2902438 <_end+0x287d60c>
    1038:	63 04 e8 05 	*inconnu*
    103c:	90 07 01 54 	l.lbs r0,340(r7)
    1040:	04 90 07 8c 	l.jal 2402e70 <_end+0x237e044>
    1044:	09 06 74 00 	l.adrp r8,ce800000 <_end+0xce77b1d4>
    1048:	87 00 24 9f 	l.lwz r24,9375(r0)
    104c:	04 ac 09 ec 	l.jal 2b037fc <_end+0x2a7e9d0>
    1050:	09 01 54 04 	l.adrp r8,2a808000 <_end+0x2a7831d4>
    1054:	ec 09 88 0b 	*inconnu*
    1058:	01 63 04 88 	l.j 58c2278 <_end+0x583d44c>
    105c:	0b 90 0b 06 	l.adrp r28,160c000 <_end+0x15871d4>
    1060:	74 00 87 00 	*inconnu*
    1064:	24 9f 04 90 	*inconnu*
    1068:	0b 98 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    106c:	63 04 98 0b 	*inconnu*
    1070:	a0 0b 06 74 	l.addic r0,r11,1652
    1074:	00 87 00 24 	l.j 21c1104 <_end+0x213c2d8>
    1078:	9f 04 a0 0b 	l.addi r24,r4,-24565
    107c:	ac 0b 01 54 	l.xori r0,r11,340
    1080:	04 ac 0b bc 	l.jal 2b03f70 <_end+0x2a7f144>
    1084:	0b 01 63 00 	l.adrp r24,2c600000 <_end+0x2c57b1d4>
    1088:	04 0c 70 01 	l.jal 31d08c <_end+0x298260>
    108c:	53 04 70 94 	*inconnu*
    1090:	01 01 61 04 	l.j 40594a0 <_end+0x3fd4674>
    1094:	bc 02 d0 02 	l.sfeqi r2,-12286
    1098:	01 53 04 d8 	l.j 54c23f8 <_end+0x543d5cc>
    109c:	02 bc 03 01 	l.j faf01ca0 <_end+0xfae7ce74>
    10a0:	53 04 c8 03 	*inconnu*
    10a4:	c4 04 01 53 	*inconnu*
    10a8:	04 e8 05 ec 	l.jal 3a02858 <_end+0x397da2c>
    10ac:	06 01 53 04 	l.jal f8055cbc <_end+0xf7fd0e90>
    10b0:	90 07 d8 07 	l.lbs r0,-10233(r7)
    10b4:	01 63 04 cc 	l.j 58c23e4 <_end+0x583d5b8>
    10b8:	08 80 09 01 	l.adrp r4,1202000 <_end+0x117d1d4>
    10bc:	61 04 ac 09 	*inconnu*
    10c0:	c8 09 01 53 	*inconnu*
    10c4:	04 d4 09 b4 	l.jal 3503794 <_end+0x347e968>
    10c8:	0a 01 65 04 	l.adrp r16,2ca08000 <_end+0x2c9831d4>
    10cc:	f8 0a 80 0b 	*inconnu*
    10d0:	01 53 04 90 	l.j 54c2310 <_end+0x543d4e4>
    10d4:	0b 98 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    10d8:	65 04 98 0b 	*inconnu*
    10dc:	a0 0b 01 63 	l.addic r0,r11,355
    10e0:	04 a0 0b ac 	l.jal 2803f90 <_end+0x277f164>
    10e4:	0b 01 53 00 	l.adrp r24,2a600000 <_end+0x2a57b1d4>
    10e8:	04 b8 09 d0 	l.jal 2e03828 <_end+0x2d7e9fc>
    10ec:	09 01 61 00 	l.adrp r8,2c200000 <_end+0x2c17b1d4>
    10f0:	04 a4 02 ac 	l.jal 2901ba0 <_end+0x287cd74>
    10f4:	02 08 7c 00 	l.j f82200f4 <_end+0xf819b2c8>
    10f8:	40 24 85 00 	*inconnu*
    10fc:	21 9f 04 b0 	*inconnu*
    1100:	02 b4 02 01 	l.j fad01904 <_end+0xfac7cad8>
    1104:	5c 04 d4 05 	*inconnu*
    1108:	dc 05 08 7c 	l.sh 124(r5),r1
    110c:	00 40 24 81 	l.j 100a310 <_end+0xf854e4>
    1110:	00 21 9f 04 	l.j 868d20 <_end+0x7e3ef4>
    1114:	cc 08 9c 09 	l.swa 1033(r8),r19
    1118:	01 5c 04 9c 	l.j 5702388 <_end+0x567d55c>
    111c:	09 a0 09 03 	l.adrp r13,1206000 <_end+0x11811d4>
    1120:	7c 7f 9f 04 	*inconnu*
    1124:	a0 09 a4 09 	l.addic r0,r9,-23543
    1128:	01 5c 00 04 	l.j 5701138 <_end+0x567c30c>
    112c:	a4 02 b4 02 	l.andi r0,r2,0xb402
    1130:	02 30 9f 04 	l.j f8c28d40 <_end+0xf8ba3f14>
    1134:	ac 04 b8 04 	l.xori r0,r4,-18428
    1138:	02 31 9f 00 	l.j f8c68d38 <_end+0xf8be3f0c>
    113c:	04 c8 06 f0 	l.jal 3202cfc <_end+0x317ded0>
    1140:	06 01 63 04 	l.jal f8059d50 <_end+0xf7fd4f24>
    1144:	ac 09 cc 09 	l.xori r0,r9,-13303
    1148:	01 65 00 04 	l.j 5941158 <_end+0x58bc32c>
    114c:	64 a0 01 01 	*inconnu*
    1150:	69 04 9c 03 	*inconnu*
    1154:	c0 03 01 67 	l.mtspr r3,r0,0x167
    1158:	04 9c 04 b8 	l.jal 2702438 <_end+0x267d60c>
    115c:	04 01 6b 04 	l.jal 5bd6c <frameBuffer+0x56f44>
    1160:	c8 06 a4 09 	*inconnu*
    1164:	01 67 04 ac 	l.j 59c2414 <_end+0x593d5e8>
    1168:	09 fc 09 01 	l.adrp r15,81202000 <_end+0x8117d1d4>
    116c:	6b 04 88 0b 	*inconnu*
    1170:	90 0b 01 67 	l.lbs r0,359(r11)
    1174:	04 98 0b ac 	l.jal 2604024 <_end+0x257f1f8>
    1178:	0b 01 67 00 	l.adrp r24,2ce00000 <_end+0x2cd7b1d4>
    117c:	04 20 6c 01 	l.jal 81c180 <_end+0x797354>
    1180:	56 04 6c 78 	*inconnu*
    1184:	06 76 00 89 	l.jal f9d813a8 <_end+0xf9cfc57c>
    1188:	00 24 9f 04 	l.j 928d98 <_end+0x8a3f6c>
    118c:	78 80 01 01 	*inconnu*
    1190:	56 04 e8 05 	*inconnu*
    1194:	84 06 01 56 	l.lwz r0,342(r6)
    1198:	00 04 44 60 	l.j 112318 <_end+0x8d4ec>
    119c:	01 67 00 04 	l.j 59c11ac <_end+0x593c380>
    11a0:	88 01 e4 01 	l.lws r0,-7167(r1)
    11a4:	01 67 04 e4 	l.j 59c2534 <_end+0x593d708>
    11a8:	01 ec 01 05 	l.j 7b015bc <_end+0x7a7c790>
    11ac:	76 00 40 25 	l.cas r16,r0,r8,0x25
    11b0:	9f 04 ec 01 	l.addi r24,r4,-5119
    11b4:	b4 02 06 76 	l.mfspr r0,r2,0x676
    11b8:	00 87 00 25 	l.j 21c124c <_end+0x213c420>
    11bc:	9f 04 b4 0b 	l.addi r24,r4,-19445
    11c0:	bc 0b 01 67 	l.sfeqi r11,359
    11c4:	00 04 a0 01 	l.j 1291c8 <_end+0xa439c>
    11c8:	f8 01 01 69 	*inconnu*
    11cc:	04 f8 01 b4 	l.jal 3e0189c <_end+0x3d7ca70>
    11d0:	02 07 76 00 	l.j f81de9d0 <_end+0xf8159ba4>
    11d4:	0a ff ff 1a 	l.adrp r23,ffe34000 <_end+0xffdaf1d4>
    11d8:	9f 04 b4 0b 	l.addi r24,r4,-19445
    11dc:	bc 0b 01 69 	l.sfeqi r11,361
    11e0:	00 04 a0 01 	l.j 1291e4 <_end+0xa43b8>
    11e4:	c0 01 01 5c 	l.mtspr r1,r0,0x15c
    11e8:	04 c0 01 d8 	l.jal 3001948 <_end+0x2f7cb1c>
    11ec:	01 01 65 04 	l.j 405a5fc <_end+0x3fd57d0>
    11f0:	d8 01 ac 02 	l.sb 1026(r1),r21
    11f4:	01 5c 04 b4 	l.j 57024c4 <_end+0x567d698>
    11f8:	0b bc 0b 01 	l.adrp r29,81602000 <_end+0x8157d1d4>
    11fc:	5c 00 04 e8 	*inconnu*
    1200:	01 8c 02 01 	l.j 6301a04 <_end+0x627cbd8>
    1204:	65 04 8c 02 	*inconnu*
    1208:	a4 02 01 63 	l.andi r0,r2,0x163
    120c:	04 a4 02 b4 	l.jal 2901cdc <_end+0x287ceb0>
    1210:	02 01 65 00 	l.j f805a610 <_end+0xf7fd57e4>
    1214:	04 ac 01 bc 	l.jal 2b01904 <_end+0x2a7cad8>
    1218:	01 01 61 04 	l.j 4059628 <_end+0x3fd47fc>
    121c:	c0 01 e8 01 	l.mtspr r1,r29,0x1
    1220:	01 61 04 b4 	l.j 58424f0 <_end+0x57bd6c4>
    1224:	0b bc 0b 01 	l.adrp r29,81602000 <_end+0x8157d1d4>
    1228:	61 00 04 e8 	*inconnu*
    122c:	01 f0 01 01 	l.j 7c01630 <_end+0x7b7c804>
    1230:	61 04 fc 01 	*inconnu*
    1234:	88 02 01 61 	l.lws r0,353(r2)
    1238:	00 04 a8 01 	l.j 12b23c <_end+0xa6410>
    123c:	f8 01 01 6b 	*inconnu*
    1240:	04 f8 01 b4 	l.jal 3e01910 <_end+0x3d7cae4>
    1244:	02 01 69 04 	l.j f805b654 <_end+0xf7fd6828>
    1248:	b4 0b bc 0b 	l.mfspr r0,r11,0xbc0b
    124c:	01 6b 00 04 	l.j 5ac125c <_end+0x5a3c430>
    1250:	d8 02 bc 03 	l.sb 1027(r2),r23
    1254:	01 55 04 ac 	l.j 5542504 <_end+0x54bd6d8>
    1258:	06 d0 06 01 	l.jal fb402a5c <_end+0xfb37dc30>
    125c:	55 04 a0 0b 	*inconnu*
    1260:	ac 0b 01 55 	l.xori r0,r11,341
    1264:	00 04 fc 02 	l.j 14026c <_end+0xbb440>
    1268:	bc 03 01 65 	l.sfeqi r3,357
    126c:	04 c8 06 e8 	l.jal 3202e0c <_end+0x317dfe0>
    1270:	06 01 65 04 	l.jal f805a680 <_end+0xf7fd5854>
    1274:	a0 0b ac 0b 	l.addic r0,r11,-21493
    1278:	01 65 00 04 	l.j 5941288 <_end+0x58bc45c>
    127c:	84 06 ac 06 	l.lwz r0,-21498(r6)
    1280:	01 56 00 04 	l.j 5581290 <_end+0x54fc464>
    1284:	fc 03 b0 04 	*inconnu*
    1288:	01 67 04 ac 	l.j 59c2538 <_end+0x593d70c>
    128c:	09 bc 09 01 	l.adrp r13,81202000 <_end+0x8117d1d4>
    1290:	67 00 04 c4 	*inconnu*
    1294:	04 ec 04 01 	l.jal 3b02298 <_end+0x3a7d46c>
    1298:	5c 04 ec 04 	*inconnu*
    129c:	84 05 01 61 	l.lwz r0,353(r5)
    12a0:	04 84 05 dc 	l.jal 2102a10 <_end+0x207dbe4>
    12a4:	05 01 5c 04 	l.jal 40582b4 <_end+0x3fd3488>
    12a8:	ac 0b b4 0b 	l.xori r0,r11,-19445
    12ac:	01 5c 00 04 	l.j 57012bc <_end+0x567c490>
    12b0:	98 05 bc 05 	l.lhs r0,-17403(r5)
    12b4:	01 61 04 bc 	l.j 58425a4 <_end+0x57bd778>
    12b8:	05 d4 05 01 	l.jal 75026bc <_end+0x747d890>
    12bc:	63 04 d4 05 	*inconnu*
    12c0:	e0 05 01 61 	*inconnu*
    12c4:	00 04 c4 04 	l.j 1322d4 <_end+0xad4a8>
    12c8:	cc 04 01 53 	l.swa 339(r4),r0
    12cc:	04 d8 04 e8 	l.jal 360266c <_end+0x357d840>
    12d0:	04 01 53 04 	l.jal 55ee0 <frameBuffer+0x510b8>
    12d4:	ec 04 94 05 	*inconnu*
    12d8:	01 53 04 ac 	l.j 54c2588 <_end+0x543d75c>
    12dc:	0b b4 0b 01 	l.adrp r29,81602000 <_end+0x8157d1d4>
    12e0:	53 00 04 94 	*inconnu*
    12e4:	05 a0 05 01 	l.jal 68026e8 <_end+0x677d8bc>
    12e8:	53 04 ac 05 	*inconnu*
    12ec:	b8 05 01 53 	*inconnu*
    12f0:	00 04 d4 04 	l.j 136300 <_end+0xb14d4>
    12f4:	8c 05 01 65 	l.lbz r0,357(r5)
    12f8:	04 a8 05 e0 	l.jal 2a02a78 <_end+0x297dc4c>
    12fc:	05 01 69 04 	l.jal 405b70c <_end+0x3fd68e0>
    1300:	ac 0b b4 0b 	l.xori r0,r11,-19445
    1304:	01 65 00 04 	l.j 5941314 <_end+0x58bc4e8>
    1308:	e8 08 9c 09 	*inconnu*
    130c:	01 63 00 04 	l.j 58c131c <_end+0x583c4f0>
    1310:	e8 08 84 09 	*inconnu*
    1314:	10 8f 00 0a 	l.bf 23c133c <_end+0x233c510>
    1318:	ff ff 1a 85 	*inconnu*
    131c:	00 0a ff ff 	l.j 2c1318 <_end+0x23c4ec>
    1320:	1a 40 24 22 	l.movhi r18,0x2422
    1324:	9f 00 04 90 	l.addi r24,r0,1168
    1328:	07 c8 07 01 	l.jal ff202f2c <_end+0xff17e100>
    132c:	6b 04 c8 07 	*inconnu*
    1330:	d0 07 05 89 	*inconnu*
    1334:	00 40 25 9f 	l.j 100a9b0 <_end+0xf85b84>
    1338:	04 d0 07 dc 	l.jal 34032a8 <_end+0x337e47c>
    133c:	07 06 89 00 	l.jal fc1a373c <_end+0xfc11e910>
    1340:	8b 00 25 9f 	l.lws r24,9631(r0)
    1344:	04 dc 07 94 	l.jal 3703194 <_end+0x367e368>
    1348:	08 05 89 00 	l.adrp r0,b1200000 <_end+0xb117b1d4>
    134c:	40 25 9f 04 	*inconnu*
    1350:	94 08 a0 08 	l.lhz r0,-24568(r8)
    1354:	06 89 00 8d 	l.jal fa241588 <_end+0xfa1bc75c>
    1358:	00 25 9f 04 	l.j 968f68 <_end+0x8e413c>
    135c:	88 0b 90 0b 	l.lws r0,-28661(r11)
    1360:	05 89 00 40 	l.jal 6241460 <_end+0x61bc634>
    1364:	25 9f 04 98 	*inconnu*
    1368:	0b a0 0b 01 	l.adrp r29,1602000 <_end+0x157d1d4>
    136c:	6b 00 04 90 	*inconnu*
    1370:	07 94 08 01 	l.jal fe503374 <_end+0xfe47e548>
    1374:	6d 04 94 08 	l.lwa r8,-27640(r4)
    1378:	a0 08 07 89 	l.addic r0,r8,1929
    137c:	00 0a ff ff 	l.j 2c1378 <_end+0x23c54c>
    1380:	1a 9f 04 88 	*inconnu*
    1384:	0b 90 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    1388:	6d 04 98 0b 	l.lwa r8,-26613(r4)
    138c:	a0 0b 01 6d 	l.addic r0,r11,365
    1390:	00 04 90 07 	l.j 1253ac <_end+0xa0580>
    1394:	a0 07 01 5c 	l.addic r0,r7,348
    1398:	04 a0 07 b8 	l.jal 2803278 <_end+0x277e44c>
    139c:	07 01 6f 04 	l.jal fc05cfac <_end+0xfbfd8180>
    13a0:	b8 07 98 08 	*inconnu*
    13a4:	01 5c 04 88 	l.j 57025c4 <_end+0x567d798>
    13a8:	0b 90 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    13ac:	5c 04 98 0b 	*inconnu*
    13b0:	a0 0b 01 6f 	l.addic r0,r11,367
    13b4:	00 04 cc 07 	l.j 1343d0 <_end+0xaf5a4>
    13b8:	f4 07 01 65 	*inconnu*
    13bc:	04 f4 07 8c 	l.jal 3d031ec <_end+0x3c7e3c0>
    13c0:	08 01 63 04 	l.adrp r0,2c608000 <_end+0x2c5831d4>
    13c4:	8c 08 a8 08 	l.lbz r0,-22520(r8)
    13c8:	01 65 04 88 	l.j 59425e8 <_end+0x58bd7bc>
    13cc:	0b 90 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    13d0:	63 00 04 90 	*inconnu*
    13d4:	07 9c 07 01 	l.jal fe702fd8 <_end+0xfe67e1ac>
    13d8:	61 04 a0 07 	*inconnu*
    13dc:	cc 07 01 61 	l.swa 353(r7),r0
    13e0:	04 98 0b a0 	l.jal 2604260 <_end+0x257f434>
    13e4:	0b 01 61 00 	l.adrp r24,2c200000 <_end+0x2c17b1d4>
    13e8:	04 cc 07 d4 	l.jal 3303338 <_end+0x327e50c>
    13ec:	07 01 61 04 	l.jal fc0597fc <_end+0xfbfd49d0>
    13f0:	e0 07 f0 07 	*inconnu*
    13f4:	01 61 04 f4 	l.j 58427c4 <_end+0x57bd998>
    13f8:	07 80 09 01 	l.jal fe0037fc <_end+0xfdf7e9d0>
    13fc:	61 04 88 0b 	*inconnu*
    1400:	90 0b 01 61 	l.lbs r0,353(r11)
    1404:	00 04 90 07 	l.j 125420 <_end+0xa05f4>
    1408:	c4 07 01 65 	*inconnu*
    140c:	04 dc 07 a4 	l.jal 370329c <_end+0x367e470>
    1410:	09 01 6b 04 	l.adrp r8,2d608000 <_end+0x2d5831d4>
    1414:	88 0b 90 0b 	l.lws r0,-28661(r11)
    1418:	01 6b 04 98 	l.j 5ac2678 <_end+0x5a3d84c>
    141c:	0b a0 0b 01 	l.adrp r29,1602000 <_end+0x157d1d4>
    1420:	65 00 04 cc 	*inconnu*
    1424:	08 88 09 01 	l.adrp r4,1202000 <_end+0x117d1d4>
    1428:	6f 00 04 cc 	l.lwa r24,1228(r0)
    142c:	08 84 09 01 	l.adrp r4,81202000 <_end+0x8117d1d4>
    1430:	65 00 04 cc 	*inconnu*
    1434:	08 d8 08 01 	l.adrp r6,1002000 <_end+0xf7d1d4>
    1438:	63 00 04 cc 	*inconnu*
    143c:	08 a4 09 01 	l.adrp r5,81202000 <_end+0x8117d1d4>
    1440:	69 00 04 cc 	*inconnu*
    1444:	08 e0 08 05 	l.adrp r7,100a000 <_end+0xf851d4>
    1448:	7c 00 40 25 	*inconnu*
    144c:	9f 04 e0 08 	l.addi r24,r4,-8184
    1450:	e4 08 06 7c 	*inconnu*
    1454:	00 83 00 25 	l.j 20c14e8 <_end+0x203c6bc>
    1458:	9f 04 e4 08 	l.addi r24,r4,-7160
    145c:	80 09 05 7c 	*inconnu*
    1460:	00 40 25 9f 	l.j 100aadc <_end+0xf85cb0>
    1464:	04 80 09 9c 	l.jal 2003ad4 <_end+0x1f7eca8>
    1468:	09 06 7c 00 	l.adrp r8,cf800000 <_end+0xcf77b1d4>
    146c:	81 00 25 9f 	*inconnu*
    1470:	04 9c 09 a0 	l.jal 2703af0 <_end+0x267ecc4>
    1474:	09 05 7c 00 	l.adrp r8,af800000 <_end+0xaf77b1d4>
    1478:	40 25 9f 04 	*inconnu*
    147c:	a0 09 a4 09 	l.addic r0,r9,-23543
    1480:	05 7c 01 40 	l.jal 5f01980 <_end+0x5e7cb54>
    1484:	25 9f 00 04 	*inconnu*
    1488:	cc 08 a4 09 	l.swa 1033(r8),r20
    148c:	01 56 00 04 	l.j 558149c <_end+0x54fc670>
    1490:	ec 09 88 0b 	*inconnu*
    1494:	01 67 04 90 	l.j 59c26d4 <_end+0x593d8a8>
    1498:	0b 98 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    149c:	67 00 04 ec 	*inconnu*
    14a0:	09 88 0b 01 	l.adrp r12,1602000 <_end+0x157d1d4>
    14a4:	69 04 90 0b 	*inconnu*
    14a8:	98 0b 01 69 	l.lhs r0,361(r11)
    14ac:	00 04 ec 09 	l.j 13c4d0 <_end+0xb76a4>
    14b0:	fc 09 01 5b 	*inconnu*
    14b4:	04 fc 09 94 	l.jal 3f03b04 <_end+0x3e7ecd8>
    14b8:	0a 01 6b 04 	l.adrp r16,2d608000 <_end+0x2d5831d4>
    14bc:	94 0a f4 0a 	l.lhz r0,-3062(r10)
    14c0:	01 5b 04 80 	l.j 56c26c0 <_end+0x563d894>
    14c4:	0b 88 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    14c8:	5b 04 90 0b 	*inconnu*
    14cc:	98 0b 01 6b 	l.lhs r0,363(r11)
    14d0:	00 04 a8 0a 	l.j 12b4f8 <_end+0xa66cc>
    14d4:	d0 0a 01 6b 	*inconnu*
    14d8:	04 d0 0a e8 	l.jal 3404078 <_end+0x337f24c>
    14dc:	0a 01 65 04 	l.adrp r16,2ca08000 <_end+0x2c9831d4>
    14e0:	e8 0a 80 0b 	*inconnu*
    14e4:	01 6b 04 80 	l.j 5ac26e4 <_end+0x5a3d8b8>
    14e8:	0b 88 0b 01 	l.adrp r28,1602000 <_end+0x157d1d4>
    14ec:	65 00 04 ec 	*inconnu*
    14f0:	09 f8 09 01 	l.adrp r15,1202000 <_end+0x117d1d4>
    14f4:	61 04 fc 09 	*inconnu*
    14f8:	a8 0a 01 61 	l.ori r0,r10,0x161
    14fc:	04 90 0b 98 	l.jal 240435c <_end+0x237f530>
    1500:	0b 01 61 00 	l.adrp r24,2c200000 <_end+0x2c17b1d4>
    1504:	04 a8 0a b8 	l.jal 2a03fe4 <_end+0x297f1b8>
    1508:	0a 01 61 04 	l.adrp r16,2c208000 <_end+0x2c1831d4>
    150c:	bc 0a cc 0a 	l.sfeqi r10,-13302
    1510:	01 53 04 d0 	l.j 54c2850 <_end+0x543da24>
    1514:	0a 88 0b 01 	l.adrp r20,1602000 <_end+0x157d1d4>
    1518:	53 00 04 ec 	*inconnu*
    151c:	09 a4 0a 01 	l.adrp r13,81402000 <_end+0x8137d1d4>
    1520:	6d 04 b8 0a 	l.lwa r8,-18422(r4)
    1524:	88 0b 01 61 	l.lws r0,353(r11)
    1528:	04 90 0b 98 	l.jal 2404388 <_end+0x237f55c>
    152c:	0b 01 6d 00 	l.adrp r24,2da00000 <_end+0x2d97b1d4>
    1530:	00 00 06 e4 	l.j 30c0 <__clz_tab+0x3d8>
    1534:	00 05 04 00 	l.j 142534 <_end+0xbd708>
    1538:	00 00 00 00 	l.j 1538 <_vsnprintf+0x3f4>
    153c:	04 00 f0 03 	l.jal 3d548 <frameBuffer+0x38720>
    1540:	06 53 93 04 	l.jal f94e6150 <_end+0xf9461324>
    1544:	54 93 04 04 	*inconnu*
    1548:	f0 03 94 05 	*inconnu*
    154c:	06 a3 03 a5 	l.jal fa8c23e0 <_end+0xfa83d5b4>
    1550:	03 26 9f 04 	l.j fc9a9160 <_end+0xfc924334>
    1554:	94 05 90 06 	l.lhz r0,-28666(r5)
    1558:	06 53 93 04 	l.jal f94e6168 <_end+0xf946133c>
    155c:	54 93 04 04 	*inconnu*
    1560:	90 06 ac 07 	l.lbs r0,-21497(r6)
    1564:	06 a3 03 a5 	l.jal fa8c23f8 <_end+0xfa83d5cc>
    1568:	03 26 9f 04 	l.j fc9a9178 <_end+0xfc92434c>
    156c:	ac 07 d0 07 	l.xori r0,r7,-12281
    1570:	06 53 93 04 	l.jal f94e6180 <_end+0xf9461354>
    1574:	54 93 04 04 	*inconnu*
    1578:	d0 07 cc 0a 	*inconnu*
    157c:	06 a3 03 a5 	l.jal fa8c2410 <_end+0xfa83d5e4>
    1580:	03 26 9f 04 	l.j fc9a9190 <_end+0xfc924364>
    1584:	cc 0a d8 0a 	l.swa 10(r10),r27
    1588:	06 53 93 04 	l.jal f94e6198 <_end+0xf946136c>
    158c:	54 93 04 04 	*inconnu*
    1590:	d8 0a f8 0a 	l.sb 10(r10),r31
    1594:	06 a3 03 a5 	l.jal fa8c2428 <_end+0xfa83d5fc>
    1598:	03 26 9f 00 	l.j fc9a9198 <_end+0xfc92436c>
    159c:	04 00 e8 02 	l.jal 3b5a4 <frameBuffer+0x3677c>
    15a0:	06 55 93 04 	l.jal f95661b0 <_end+0xf94e1384>
    15a4:	56 93 04 04 	*inconnu*
    15a8:	e8 02 84 03 	*inconnu*
    15ac:	06 a3 03 a5 	l.jal fa8c2440 <_end+0xfa83d614>
    15b0:	05 26 9f 04 	l.jal 49a91c0 <_end+0x4924394>
    15b4:	84 03 b4 07 	l.lwz r0,-19449(r3)
    15b8:	06 55 93 04 	l.jal f95661c8 <_end+0xf94e139c>
    15bc:	56 93 04 04 	*inconnu*
    15c0:	b4 07 f0 0a 	l.mfspr r0,r7,0xf00a
    15c4:	06 a3 03 a5 	l.jal fa8c2458 <_end+0xfa83d62c>
    15c8:	05 26 9f 04 	l.jal 49a91d8 <_end+0x49243ac>
    15cc:	f0 0a f8 0a 	*inconnu*
    15d0:	06 55 93 04 	l.jal f95661e0 <_end+0xf94e13b4>
    15d4:	56 93 04 00 	*inconnu*
    15d8:	04 00 f0 01 	l.jal 3d5dc <frameBuffer+0x387b4>
    15dc:	06 a0 00 00 	l.jal fa8015dc <_end+0xfa77c7b0>
    15e0:	17 bb 00 04 	*inconnu*
    15e4:	f8 01 fc 02 	*inconnu*
    15e8:	06 a0 00 00 	l.jal fa8015e8 <_end+0xfa77c7bc>
    15ec:	17 bb 00 04 	*inconnu*
    15f0:	84 03 8c 05 	l.lwz r0,-29691(r3)
    15f4:	06 a0 00 00 	l.jal fa8015f4 <_end+0xfa77c7c8>
    15f8:	17 bb 00 04 	*inconnu*
    15fc:	94 05 9c 0a 	l.lhz r0,-25590(r5)
    1600:	06 a0 00 00 	l.jal fa801600 <_end+0xfa77c7d4>
    1604:	17 bb 00 04 	*inconnu*
    1608:	a4 0a f8 0a 	l.andi r0,r10,0xf80a
    160c:	06 a0 00 00 	l.jal fa80160c <_end+0xfa77c7e0>
    1610:	17 bb 00 00 	*inconnu*
    1614:	04 00 7c 06 	l.jal 2062c <frameBuffer+0x1b804>
    1618:	55 93 04 56 	*inconnu*
    161c:	93 04 04 dc 	l.lbs r24,1244(r4)
    1620:	01 f0 01 06 	l.j 7c01a38 <_end+0x7b7cc0c>
    1624:	55 93 04 56 	*inconnu*
    1628:	93 04 04 f8 	l.lbs r24,1272(r4)
    162c:	01 e8 02 06 	l.j 7a01e44 <_end+0x797d018>
    1630:	55 93 04 56 	*inconnu*
    1634:	93 04 04 84 	l.lbs r24,1156(r4)
    1638:	03 9c 03 06 	l.j fe702250 <_end+0xfe67d424>
    163c:	55 93 04 56 	*inconnu*
    1640:	93 04 04 94 	l.lbs r24,1172(r4)
    1644:	05 f4 05 06 	l.jal 7d02a5c <_end+0x7c7dc30>
    1648:	55 93 04 56 	*inconnu*
    164c:	93 04 04 ac 	l.lbs r24,1196(r4)
    1650:	07 b4 07 06 	l.jal fed03268 <_end+0xfec7e43c>
    1654:	55 93 04 56 	*inconnu*
    1658:	93 04 00 04 	l.lbs r24,4(r4)
    165c:	00 f0 01 06 	l.j 3c01a74 <_end+0x3b7cc48>
    1660:	53 93 04 54 	*inconnu*
    1664:	93 04 04 f8 	l.lbs r24,1272(r4)
    1668:	01 fc 02 06 	l.j 7f01e80 <_end+0x7e7d054>
    166c:	53 93 04 54 	*inconnu*
    1670:	93 04 04 84 	l.lbs r24,1156(r4)
    1674:	03 f0 03 06 	l.j ffc0228c <_end+0xffb7d460>
    1678:	53 93 04 54 	*inconnu*
    167c:	93 04 04 94 	l.lbs r24,1172(r4)
    1680:	05 90 06 06 	l.jal 6402e98 <_end+0x637e06c>
    1684:	53 93 04 54 	*inconnu*
    1688:	93 04 04 ac 	l.lbs r24,1196(r4)
    168c:	07 d0 07 06 	l.jal ff4032a4 <_end+0xff37e478>
    1690:	53 93 04 54 	*inconnu*
    1694:	93 04 04 cc 	l.lbs r24,1228(r4)
    1698:	0a d8 0a 06 	l.adrp r22,140c000 <_end+0x13871d4>
    169c:	53 93 04 54 	*inconnu*
    16a0:	93 04 00 04 	l.lbs r24,4(r4)
    16a4:	00 f0 01 01 	l.j 3c01aa8 <_end+0x3b7cc7c>
    16a8:	56 04 f8 01 	*inconnu*
    16ac:	fc 02 01 56 	*inconnu*
    16b0:	04 84 03 9c 	l.jal 2102520 <_end+0x207d6f4>
    16b4:	03 01 56 04 	l.j fc056ec4 <_end+0xfbfd2098>
    16b8:	f0 03 8c 05 	*inconnu*
    16bc:	01 56 04 94 	l.j 558290c <_end+0x54fdae0>
    16c0:	05 f4 05 01 	l.jal 7d02ac4 <_end+0x7c7dc98>
    16c4:	56 04 fc 05 	*inconnu*
    16c8:	f0 09 01 56 	*inconnu*
    16cc:	04 a4 0a b0 	l.jal 290418c <_end+0x287f360>
    16d0:	0a 01 56 04 	l.adrp r16,2ac08000 <_end+0x2ab831d4>
    16d4:	cc 0a d8 0a 	l.swa 10(r10),r27
    16d8:	01 56 04 e0 	l.j 5582a58 <_end+0x54fdc2c>
    16dc:	0a f8 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    16e0:	56 00 04 00 	*inconnu*
    16e4:	f0 01 01 55 	*inconnu*
    16e8:	04 f8 01 e8 	l.jal 3e01e88 <_end+0x3d7d05c>
    16ec:	02 01 55 04 	l.j f8056afc <_end+0xf7fd1cd0>
    16f0:	84 03 8c 05 	l.lwz r0,-29691(r3)
    16f4:	01 55 04 94 	l.j 5542944 <_end+0x54bdb18>
    16f8:	05 b4 07 01 	l.jal 6d032fc <_end+0x6c7e4d0>
    16fc:	55 04 bc 07 	*inconnu*
    1700:	9c 0a 01 6d 	l.addi r0,r10,365
    1704:	04 a4 0a cc 	l.jal 2904234 <_end+0x287f408>
    1708:	0a 01 6d 04 	l.adrp r16,2da08000 <_end+0x2d9831d4>
    170c:	d8 0a f0 0a 	l.sb 10(r10),r30
    1710:	01 6d 04 f0 	l.j 5b42ad0 <_end+0x5abdca4>
    1714:	0a f8 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1718:	55 00 04 0c 	*inconnu*
    171c:	84 01 01 54 	l.lwz r0,340(r1)
    1720:	04 84 01 dc 	l.jal 2101e90 <_end+0x207d064>
    1724:	01 01 63 04 	l.j 405a334 <_end+0x3fd5508>
    1728:	dc 01 f0 01 	l.sh 1(r1),r30
    172c:	01 54 04 f8 	l.j 5502b0c <_end+0x547dce0>
    1730:	01 e8 02 01 	l.j 7a01f34 <_end+0x797d108>
    1734:	54 04 e8 02 	*inconnu*
    1738:	f4 02 01 6b 	*inconnu*
    173c:	04 84 03 f0 	l.jal 21026fc <_end+0x207d8d0>
    1740:	03 01 54 04 	l.j fc056750 <_end+0xfbfd1924>
    1744:	f0 03 d0 04 	*inconnu*
    1748:	01 63 04 84 	l.j 58c2958 <_end+0x583db2c>
    174c:	05 8c 05 01 	l.jal 6302b50 <_end+0x627dd24>
    1750:	5c 04 94 05 	*inconnu*
    1754:	b4 06 01 54 	l.mfspr r0,r6,0x154
    1758:	04 b4 06 ac 	l.jal 2d03208 <_end+0x2c7e3dc>
    175c:	07 01 63 04 	l.jal fc05a36c <_end+0xfbfd5540>
    1760:	ac 07 f8 07 	l.xori r0,r7,-2041
    1764:	01 54 04 f8 	l.j 5502b44 <_end+0x547dd18>
    1768:	07 8c 0a 01 	l.jal fe303f6c <_end+0xfe27f140>
    176c:	5d 04 8c 0a 	*inconnu*
    1770:	94 0a 01 61 	l.lhz r0,353(r10)
    1774:	04 a4 0a cc 	l.jal 29042a4 <_end+0x287f478>
    1778:	0a 01 5d 04 	l.adrp r16,2ba08000 <_end+0x2b9831d4>
    177c:	cc 0a d8 0a 	l.swa 10(r10),r27
    1780:	01 6b 04 d8 	l.j 5ac2ae0 <_end+0x5a3dcb4>
    1784:	0a f0 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1788:	5d 04 f0 0a 	*inconnu*
    178c:	f8 0a 01 63 	*inconnu*
    1790:	00 04 10 80 	l.j 105990 <_end+0x80b64>
    1794:	01 01 53 04 	l.j 40563a4 <_end+0x3fd1578>
    1798:	80 01 84 01 	*inconnu*
    179c:	01 61 04 dc 	l.j 5842b0c <_end+0x57bdce0>
    17a0:	01 f0 01 01 	l.j 7c01ba4 <_end+0x7b7cd78>
    17a4:	53 04 f8 01 	*inconnu*
    17a8:	e8 02 01 53 	*inconnu*
    17ac:	04 e8 02 f4 	l.jal 3a0237c <_end+0x397d550>
    17b0:	02 14 75 00 	l.j f851ebb0 <_end+0xf8499d84>
    17b4:	74 00 40 4b 	l.cas r0,r0,r8,0x4b
    17b8:	24 22 8b 00 	*inconnu*
    17bc:	40 4b 24 22 	*inconnu*
    17c0:	2d 08 ff 1a 	*inconnu*
    17c4:	1c 9f 04 84 	*inconnu*
    17c8:	03 e8 03 01 	l.j ffa023cc <_end+0xff97d5a0>
    17cc:	53 04 e8 03 	*inconnu*
    17d0:	f0 03 06 73 	*inconnu*
    17d4:	00 76 00 1c 	l.j 1d81844 <_end+0x1cfca18>
    17d8:	9f 04 94 05 	l.addi r24,r4,-27643
    17dc:	90 06 01 53 	l.lbs r0,339(r6)
    17e0:	04 9c 06 f4 	l.jal 27033b0 <_end+0x267e584>
    17e4:	06 01 61 04 	l.jal f8059bf4 <_end+0xf7fd4dc8>
    17e8:	a4 07 ac 07 	l.andi r0,r7,0xac07
    17ec:	01 61 04 ac 	l.j 5842a9c <_end+0x57bdc70>
    17f0:	07 d0 07 01 	l.jal ff4033f4 <_end+0xff37e5c8>
    17f4:	53 04 f8 07 	*inconnu*
    17f8:	c0 08 01 6f 	l.mtspr r8,r0,0x16f
    17fc:	04 c0 08 b4 	l.jal 3003acc <_end+0x2f7eca0>
    1800:	09 09 74 00 	l.adrp r8,2e800000 <_end+0x2e77b1d4>
    1804:	87 00 25 73 	l.lwz r24,9587(r0)
    1808:	00 21 9f 04 	l.j 869418 <_end+0x7e45ec>
    180c:	b4 09 fc 09 	l.mfspr r0,r9,0xfc09
    1810:	01 63 04 8c 	l.j 58c2a40 <_end+0x583dc14>
    1814:	0a 98 0a 01 	l.adrp r20,1402000 <_end+0x137d1d4>
    1818:	5b 04 a4 0a 	*inconnu*
    181c:	cc 0a 01 63 	l.swa 355(r10),r0
    1820:	04 cc 0a d8 	l.jal 3304380 <_end+0x327f554>
    1824:	0a 14 75 00 	l.adrp r16,8ea00000 <_end+0x8e97b1d4>
    1828:	74 00 40 4b 	l.cas r0,r0,r8,0x4b
    182c:	24 22 8b 00 	*inconnu*
    1830:	40 4b 24 22 	*inconnu*
    1834:	2d 08 ff 1a 	*inconnu*
    1838:	1c 9f 04 d8 	*inconnu*
    183c:	0a e0 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1840:	63 04 e0 0a 	*inconnu*
    1844:	e8 0a 09 74 	*inconnu*
    1848:	00 87 00 25 	l.j 21c18dc <_end+0x213cab0>
    184c:	73 00 21 9f 	l.nios_crr r24,r0,r4,0x9f
    1850:	04 e8 0a f0 	l.jal 3a04410 <_end+0x397f5e4>
    1854:	0a 01 6f 00 	l.adrp r16,2de00000 <_end+0x2dd7b1d4>
    1858:	04 80 06 98 	l.jal 20032b8 <_end+0x1f7e48c>
    185c:	06 01 65 00 	l.jal f805ac5c <_end+0xf7fd5e30>
    1860:	04 e8 01 f0 	l.jal 3a02020 <_end+0x397d1f4>
    1864:	01 02 30 9f 	l.j 408dae0 <_end+0x4008cb4>
    1868:	04 dc 02 f4 	l.jal 3702438 <_end+0x367d60c>
    186c:	02 02 31 9f 	l.j f808dee8 <_end+0xf80090bc>
    1870:	04 cc 0a d8 	l.jal 33043d0 <_end+0x327f5a4>
    1874:	0a 02 31 9f 	l.adrp r16,4633e000 <_end+0x462b91d4>
    1878:	00 04 e8 01 	l.j 13b87c <_end+0xb6a50>
    187c:	f0 01 02 30 	*inconnu*
    1880:	9f 04 f4 02 	l.addi r24,r4,-3070
    1884:	fc 02 02 30 	*inconnu*
    1888:	9f 04 e8 03 	l.addi r24,r4,-6141
    188c:	f0 03 02 31 	*inconnu*
    1890:	9f 04 f0 09 	l.addi r24,r4,-4087
    1894:	9c 0a 02 30 	l.addi r0,r10,560
    1898:	9f 00 04 f4 	l.addi r24,r0,1268
    189c:	05 94 06 01 	l.jal 65030a0 <_end+0x647e274>
    18a0:	61 04 ac 07 	*inconnu*
    18a4:	90 0a 01 67 	l.lbs r0,359(r10)
    18a8:	04 a4 0a cc 	l.jal 29043d8 <_end+0x287f5ac>
    18ac:	0a 01 67 04 	l.adrp r16,2ce08000 <_end+0x2cd831d4>
    18b0:	d8 0a f0 0a 	l.sb 10(r10),r30
    18b4:	01 67 00 04 	l.j 59c18c4 <_end+0x593ca98>
    18b8:	68 dc 01 01 	*inconnu*
    18bc:	67 04 c0 02 	*inconnu*
    18c0:	fc 02 01 69 	*inconnu*
    18c4:	04 d8 03 8c 	l.jal 36026f4 <_end+0x357d8c8>
    18c8:	05 01 67 04 	l.jal 405b4d8 <_end+0x3fd66ac>
    18cc:	f4 05 ac 07 	*inconnu*
    18d0:	01 67 04 ac 	l.j 59c2b80 <_end+0x593dd54>
    18d4:	07 9c 0a 01 	l.jal fe7040d8 <_end+0xfe67f2ac>
    18d8:	69 04 a4 0a 	*inconnu*
    18dc:	f0 0a 01 69 	*inconnu*
    18e0:	04 f0 0a f8 	l.jal 3c044c0 <_end+0x3b7f694>
    18e4:	0a 01 67 00 	l.adrp r16,2ce00000 <_end+0x2cd7b1d4>
    18e8:	04 24 7c 01 	l.jal 9208ec <_end+0x89bac0>
    18ec:	56 04 94 05 	*inconnu*
    18f0:	b0 05 01 56 	l.muli r0,r5,342
    18f4:	00 04 48 68 	l.j 113a94 <_end+0x8ec68>
    18f8:	01 67 00 04 	l.j 59c1908 <_end+0x593cadc>
    18fc:	8c 01 dc 01 	l.lbz r0,-9215(r1)
    1900:	01 69 00 04 	l.j 5a41910 <_end+0x59bcae4>
    1904:	a0 01 dc 01 	l.addic r0,r1,-9215
    1908:	01 6b 00 04 	l.j 5ac1918 <_end+0x5a3caec>
    190c:	a0 01 a4 01 	l.addic r0,r1,-23551
    1910:	01 61 04 ac 	l.j 5842bc0 <_end+0x57bdd94>
    1914:	01 dc 01 01 	l.j 7701d18 <_end+0x767ceec>
    1918:	61 00 04 a8 	*inconnu*
    191c:	01 dc 01 01 	l.j 7701d20 <_end+0x767cef4>
    1920:	6d 00 04 f8 	l.lwa r8,1272(r0)
    1924:	01 e8 02 01 	l.j 7a02128 <_end+0x797d2fc>
    1928:	55 04 d8 05 	*inconnu*
    192c:	f4 05 01 55 	*inconnu*
    1930:	04 ac 07 b4 	l.jal 2b03800 <_end+0x2a7e9d4>
    1934:	07 01 55 00 	l.jal fc056d34 <_end+0xfbfd1f08>
    1938:	04 a0 02 84 	l.jal 2802348 <_end+0x277d51c>
    193c:	03 01 63 04 	l.j fc05a54c <_end+0xfbfd5720>
    1940:	ac 07 c4 07 	l.xori r0,r7,-15353
    1944:	01 63 04 cc 	l.j 58c2c74 <_end+0x583de48>
    1948:	0a d8 0a 01 	l.adrp r22,1402000 <_end+0x137d1d4>
    194c:	63 00 04 dc 	*inconnu*
    1950:	02 e0 02 06 	l.j fb802168 <_end+0xfb77d33c>
    1954:	74 00 76 00 	*inconnu*
    1958:	1c 9f 04 e0 	*inconnu*
    195c:	02 f4 02 01 	l.j fbd02160 <_end+0xfbc7d334>
    1960:	6b 04 cc 0a 	*inconnu*
    1964:	d8 0a 01 6b 	l.sb 363(r10),r0
    1968:	00 04 b0 05 	l.j 12d97c <_end+0xa8b50>
    196c:	d8 05 01 56 	l.sb 342(r5),r0
    1970:	00 04 b8 03 	l.j 12f97c <_end+0xaab50>
    1974:	d4 03 01 65 	l.sw 357(r3),r0
    1978:	00 04 f0 03 	l.j 13d984 <_end+0xb8b58>
    197c:	b8 04 05 76 	*inconnu*
    1980:	00 40 25 9f 	l.j 100affc <_end+0xf861d0>
    1984:	04 f0 0a f8 	l.jal 3c04564 <_end+0x3b7f738>
    1988:	0a 05 76 00 	l.adrp r16,aec00000 <_end+0xaeb7b1d4>
    198c:	40 25 9f 00 	*inconnu*
    1990:	04 f0 03 b8 	l.jal 3c02870 <_end+0x3b7da44>
    1994:	04 07 76 00 	l.jal 1df194 <_end+0x15a368>
    1998:	0a ff ff 1a 	l.adrp r23,ffe34000 <_end+0xffdaf1d4>
    199c:	9f 04 f0 0a 	l.addi r24,r4,-4086
    19a0:	f8 0a 07 76 	*inconnu*
    19a4:	00 0a ff ff 	l.j 2c19a0 <_end+0x23cb74>
    19a8:	1a 9f 00 04 	*inconnu*
    19ac:	fc 03 84 04 	*inconnu*
    19b0:	01 61 04 90 	l.j 5842bf0 <_end+0x57bddc4>
    19b4:	04 c4 04 01 	l.jal 31029b8 <_end+0x307db8c>
    19b8:	61 04 f0 0a 	*inconnu*
    19bc:	f8 0a 01 61 	*inconnu*
    19c0:	00 04 c4 04 	l.j 1329d0 <_end+0xadba4>
    19c4:	d4 04 01 61 	l.sw 353(r4),r0
    19c8:	04 d8 04 8c 	l.jal 3602bf8 <_end+0x357ddcc>
    19cc:	05 01 5c 00 	l.jal 40589cc <_end+0x3fd3ba0>
    19d0:	04 8c 04 b8 	l.jal 2302cb0 <_end+0x227de84>
    19d4:	04 01 65 04 	l.jal 5ade4 <frameBuffer+0x55fbc>
    19d8:	d4 04 8c 05 	l.sw 1029(r4),r17
    19dc:	01 61 04 f0 	l.j 5842d9c <_end+0x57bdf70>
    19e0:	0a f8 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    19e4:	65 00 04 b4 	*inconnu*
    19e8:	06 ac 07 01 	l.jal fab035ec <_end+0xfaa7e7c0>
    19ec:	69 00 04 b4 	*inconnu*
    19f0:	06 ac 07 01 	l.jal fab035f4 <_end+0xfaa7e7c8>
    19f4:	6b 00 04 b4 	*inconnu*
    19f8:	06 e8 06 01 	l.jal fba031fc <_end+0xfb97e3d0>
    19fc:	65 00 04 e8 	*inconnu*
    1a00:	06 f0 06 01 	l.jal fbc03204 <_end+0xfbb7e3d8>
    1a04:	65 04 fc 06 	*inconnu*
    1a08:	ac 07 01 61 	l.xori r0,r7,353
    1a0c:	00 04 b4 06 	l.j 12ea24 <_end+0xa9bf8>
    1a10:	e0 06 01 6d 	*inconnu*
    1a14:	04 f8 06 ac 	l.jal 3e034c4 <_end+0x3d7e698>
    1a18:	07 01 6d 00 	l.jal fc05ce18 <_end+0xfbfd7fec>
    1a1c:	04 d0 09 9c 	l.jal 340408c <_end+0x337f260>
    1a20:	0a 01 65 04 	l.adrp r16,2ca08000 <_end+0x2c9831d4>
    1a24:	a4 0a cc 0a 	l.andi r0,r10,0xcc0a
    1a28:	01 65 04 d8 	l.j 5942d88 <_end+0x58bdf5c>
    1a2c:	0a e0 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1a30:	65 00 04 dc 	*inconnu*
    1a34:	09 f4 09 01 	l.adrp r15,81202000 <_end+0x8117d1d4>
    1a38:	61 04 a4 0a 	*inconnu*
    1a3c:	b4 0a 01 61 	l.mfspr r0,r10,0x161
    1a40:	04 c4 0a cc 	l.jal 3104570 <_end+0x307f744>
    1a44:	0a 01 56 00 	l.adrp r16,2ac00000 <_end+0x2ab7b1d4>
    1a48:	04 f8 07 b0 	l.jal 3e03908 <_end+0x3d7eadc>
    1a4c:	08 01 63 04 	l.adrp r0,2c608000 <_end+0x2c5831d4>
    1a50:	b0 08 b8 08 	l.muli r0,r8,-18424
    1a54:	05 8d 00 40 	l.jal 6341b54 <_end+0x62bcd28>
    1a58:	25 9f 04 b8 	*inconnu*
    1a5c:	08 bc 08 06 	l.adrp r5,8100c000 <_end+0x80f871d4>
    1a60:	8d 00 83 00 	l.lbz r8,-32000(r0)
    1a64:	25 9f 04 bc 	*inconnu*
    1a68:	08 fc 08 05 	l.adrp r7,8100a000 <_end+0x80f851d4>
    1a6c:	8d 00 40 25 	l.lbz r8,16421(r0)
    1a70:	9f 04 fc 08 	l.addi r24,r4,-1016
    1a74:	a8 09 06 8d 	l.ori r0,r9,0x68d
    1a78:	00 81 00 25 	l.j 2041b0c <_end+0x1fbcce0>
    1a7c:	9f 04 a8 09 	l.addi r24,r4,-22519
    1a80:	c8 09 05 8d 	*inconnu*
    1a84:	00 40 25 9f 	l.j 100b100 <_end+0xf862d4>
    1a88:	04 c8 09 9c 	l.jal 32040f8 <_end+0x317f2cc>
    1a8c:	0a 06 8d 00 	l.adrp r16,d1a00000 <_end+0xd197b1d4>
    1a90:	8f 00 25 9f 	l.lbz r24,9631(r0)
    1a94:	04 a4 0a cc 	l.jal 29045c4 <_end+0x287f798>
    1a98:	0a 06 8d 00 	l.adrp r16,d1a00000 <_end+0xd197b1d4>
    1a9c:	8f 00 25 9f 	l.lbz r24,9631(r0)
    1aa0:	04 d8 0a e0 	l.jal 3604620 <_end+0x357f7f4>
    1aa4:	0a 06 8d 00 	l.adrp r16,d1a00000 <_end+0xd197b1d4>
    1aa8:	8f 00 25 9f 	l.lbz r24,9631(r0)
    1aac:	04 e0 0a e8 	l.jal 380464c <_end+0x377f820>
    1ab0:	0a 05 8d 00 	l.adrp r16,b1a00000 <_end+0xb197b1d4>
    1ab4:	40 25 9f 04 	*inconnu*
    1ab8:	e8 0a f0 0a 	*inconnu*
    1abc:	01 63 00 04 	l.j 58c1acc <_end+0x583cca0>
    1ac0:	f8 07 c4 08 	*inconnu*
    1ac4:	01 5f 04 c4 	l.j 57c2dd4 <_end+0x573dfa8>
    1ac8:	08 9c 0a 07 	l.adrp r4,8140e000 <_end+0x813891d4>
    1acc:	8d 00 0a ff 	l.lbz r8,2815(r0)
    1ad0:	ff 1a 9f 04 	*inconnu*
    1ad4:	a4 0a cc 0a 	l.andi r0,r10,0xcc0a
    1ad8:	07 8d 00 0a 	l.jal fe341b00 <_end+0xfe2bccd4>
    1adc:	ff ff 1a 9f 	*inconnu*
    1ae0:	04 d8 0a e8 	l.jal 3604680 <_end+0x357f854>
    1ae4:	0a 07 8d 00 	l.adrp r16,f1a00000 <_end+0xf197b1d4>
    1ae8:	0a ff ff 1a 	l.adrp r23,ffe34000 <_end+0xffdaf1d4>
    1aec:	9f 04 e8 0a 	l.addi r24,r4,-6134
    1af0:	f0 0a 01 5f 	*inconnu*
    1af4:	00 04 f8 07 	l.j 13fb10 <_end+0xbace4>
    1af8:	88 08 01 65 	l.lws r0,357(r8)
    1afc:	04 88 08 a0 	l.jal 2203d7c <_end+0x217ef50>
    1b00:	08 01 6b 04 	l.adrp r0,2d608000 <_end+0x2d5831d4>
    1b04:	a0 08 80 09 	l.addic r0,r8,-32759
    1b08:	01 65 04 e0 	l.j 5942e88 <_end+0x58be05c>
    1b0c:	0a e8 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1b10:	65 04 e8 0a 	*inconnu*
    1b14:	f0 0a 01 6b 	*inconnu*
    1b18:	00 04 b4 08 	l.j 12eb38 <_end+0xa9d0c>
    1b1c:	dc 08 01 6b 	l.sh 363(r8),r0
    1b20:	04 dc 08 f4 	l.jal 3703ef0 <_end+0x367f0c4>
    1b24:	08 01 61 04 	l.adrp r0,2c208000 <_end+0x2c1831d4>
    1b28:	f4 08 90 09 	*inconnu*
    1b2c:	01 6b 04 e0 	l.j 5ac2eac <_end+0x5a3e080>
    1b30:	0a e8 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1b34:	61 00 04 f8 	*inconnu*
    1b38:	07 84 08 01 	l.jal fe103b3c <_end+0xfe07ed10>
    1b3c:	61 04 84 08 	*inconnu*
    1b40:	88 08 08 8f 	l.lws r0,2191(r8)
    1b44:	00 40 25 8b 	l.j 100b170 <_end+0xf86344>
    1b48:	00 21 9f 04 	l.j 869758 <_end+0x7e492c>
    1b4c:	88 08 b4 08 	l.lws r0,-19448(r8)
    1b50:	01 61 04 e8 	l.j 5842ef0 <_end+0x57be0c4>
    1b54:	0a f0 0a 01 	l.adrp r23,1402000 <_end+0x137d1d4>
    1b58:	61 00 04 b4 	*inconnu*
    1b5c:	08 c8 08 01 	l.adrp r6,1002000 <_end+0xf7d1d4>
    1b60:	61 04 c8 08 	*inconnu*
    1b64:	d8 08 01 63 	l.sb 355(r8),r0
    1b68:	04 d8 08 dc 	l.jal 3603ed8 <_end+0x357f0ac>
    1b6c:	08 08 81 00 	l.adrp r0,10200000 <_end+0x1017b1d4>
    1b70:	40 24 8f 00 	*inconnu*
    1b74:	21 9f 04 dc 	*inconnu*
    1b78:	08 fc 09 01 	l.adrp r7,81202000 <_end+0x8117d1d4>
    1b7c:	63 04 a4 0a 	*inconnu*
    1b80:	cc 0a 01 63 	l.swa 355(r10),r0
    1b84:	04 d8 0a e8 	l.jal 3604724 <_end+0x357f8f8>
    1b88:	0a 01 63 00 	l.adrp r16,2c600000 <_end+0x2c57b1d4>
    1b8c:	04 f8 07 c4 	l.jal 3e03a9c <_end+0x3d7ec70>
    1b90:	08 01 5c 04 	l.adrp r0,2b808000 <_end+0x2b7831d4>
    1b94:	c4 08 9c 0a 	*inconnu*
    1b98:	01 5f 04 a4 	l.j 57c2e28 <_end+0x573dffc>
    1b9c:	0a cc 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
    1ba0:	5f 04 d8 0a 	*inconnu*
    1ba4:	e8 0a 01 5f 	*inconnu*
    1ba8:	04 e8 0a f0 	l.jal 3a04768 <_end+0x397f93c>
    1bac:	0a 01 5c 00 	l.adrp r16,2b800000 <_end+0x2b77b1d4>
    1bb0:	04 b4 09 d8 	l.jal 2d04310 <_end+0x2c7f4e4>
    1bb4:	09 01 5c 00 	l.adrp r8,2b800000 <_end+0x2b77b1d4>
    1bb8:	04 b4 09 d4 	l.jal 2d04308 <_end+0x2c7f4dc>
    1bbc:	09 01 61 00 	l.adrp r8,2c200000 <_end+0x2c17b1d4>
    1bc0:	04 b4 09 c8 	l.jal 2d042e0 <_end+0x2c7f4b4>
    1bc4:	09 01 6f 00 	l.adrp r8,2de00000 <_end+0x2dd7b1d4>
    1bc8:	04 b4 09 d0 	l.jal 2d04308 <_end+0x2c7f4dc>
    1bcc:	09 01 65 00 	l.adrp r8,2ca00000 <_end+0x2c97b1d4>
    1bd0:	04 b4 09 f0 	l.jal 2d04390 <_end+0x2c7f564>
    1bd4:	09 07 76 00 	l.adrp r8,eec00000 <_end+0xeeb7b1d4>
    1bd8:	0a ff ff 1a 	l.adrp r23,ffe34000 <_end+0xffdaf1d4>
    1bdc:	9f 04 a4 0a 	l.addi r24,r4,-23542
    1be0:	b0 0a 07 76 	l.muli r0,r10,1910
    1be4:	00 0a ff ff 	l.j 2c1be0 <_end+0x23cdb4>
    1be8:	1a 9f 00 04 	*inconnu*
    1bec:	b4 09 fc 09 	l.mfspr r0,r9,0xfc09
    1bf0:	01 5b 04 a4 	l.j 56c2e80 <_end+0x563e054>
    1bf4:	0a cc 0a 01 	l.adrp r22,81402000 <_end+0x8137d1d4>
    1bf8:	5b 04 d8 0a 	*inconnu*
    1bfc:	e0 0a 01 5b 	*inconnu*
    1c00:	00 04 f4 09 	l.j 13ec24 <_end+0xb9df8>
    1c04:	94 0a 01 61 	l.lhz r0,353(r10)
    1c08:	00 04 b0 0a 	l.j 12dc30 <_end+0xa8e04>
    1c0c:	cc 0a 01 56 	l.swa 342(r10),r0
    1c10:	04 d8 0a e0 	l.jal 3604790 <_end+0x357f964>
    1c14:	0a 01 56 00 	l.adrp r16,2ac00000 <_end+0x2ab7b1d4>

Déassemblage de la section .debug_rnglists :

00000000 <.debug_rnglists>:
   0:	00 00 01 28 	l.j 4a0 <main+0x2ac>
   4:	00 05 04 00 	l.j 141004 <_end+0xbc1d8>
   8:	00 00 00 00 	l.j 8 <__OR1300__+0x7>
   c:	04 20 d0 02 	l.jal 834014 <_end+0x7af1e8>
  10:	04 d8 02 dc 	l.jal 3600b80 <_end+0x357bd54>
  14:	02 04 ec 02 	l.j f813b01c <_end+0xf80b61f0>
  18:	80 03 04 b4 	*inconnu*
  1c:	03 98 04 04 	l.j fe60102c <_end+0xfe57c200>
  20:	a0 04 b0 06 	l.addic r0,r4,-20474
  24:	04 fc 06 b8 	l.jal 3f01b04 <_end+0x3e7ccd8>
  28:	07 04 c0 07 	l.jal fc130044 <_end+0xfc0ab218>
  2c:	b4 0a 04 bc 	l.mfspr r0,r10,0x4bc
  30:	0a 88 0c 04 	l.adrp r20,1808000 <_end+0x17831d4>
  34:	b0 0c b4 0c 	l.muli r0,r12,-19444
  38:	04 bc 0c bc 	l.jal 2f03328 <_end+0x2e7e4fc>
  3c:	0c 04 c4 0c 	l.bnf 13106c <_end+0xac240>
  40:	c4 0c 00 04 	l.msbu r12,r0
  44:	20 d0 02 04 	*inconnu*
  48:	d8 02 dc 02 	l.sb 1026(r2),r27
  4c:	04 ec 02 80 	l.jal 3b00a4c <_end+0x3a7bc20>
  50:	03 04 b4 03 	l.j fc12d05c <_end+0xfc0a8230>
  54:	98 04 04 a0 	l.lhs r0,1184(r4)
  58:	04 b0 06 04 	l.jal 2c01868 <_end+0x2b7ca3c>
  5c:	fc 06 b8 07 	*inconnu*
  60:	04 c0 07 b0 	l.jal 3001f20 <_end+0x2f7d0f4>
  64:	0a 04 b0 0a 	l.adrp r16,96014000 <_end+0x95f8f1d4>
  68:	b4 0a 04 bc 	l.mfspr r0,r10,0x4bc
  6c:	0a 88 0c 04 	l.adrp r20,1808000 <_end+0x17831d4>
  70:	b0 0c b4 0c 	l.muli r0,r12,-19444
  74:	04 bc 0c bc 	l.jal 2f03364 <_end+0x2e7e538>
  78:	0c 04 c4 0c 	l.bnf 1310a8 <_end+0xac27c>
  7c:	c4 0c 00 04 	l.msbu r12,r0
  80:	44 84 01 04 	*inconnu*
  84:	fc 06 98 07 	*inconnu*
  88:	00 04 a4 01 	l.j 12908c <_end+0xa4260>
  8c:	c8 02 04 c8 	*inconnu*
  90:	02 d0 02 04 	l.j fb4008a0 <_end+0xfb37ba74>
  94:	d8 02 dc 02 	l.sb 1026(r2),r27
  98:	04 b0 0c b0 	l.jal 2c03358 <_end+0x2b7e52c>
  9c:	0c 04 c4 0c 	l.bnf 1310cc <_end+0xac2a0>
  a0:	c4 0c 00 04 	l.msbu r12,r0
  a4:	b4 03 f4 03 	l.mfspr r0,r3,0xf403
  a8:	04 c0 07 dc 	l.jal 3002018 <_end+0x2f7d1ec>
  ac:	07 00 04 b8 	l.jal fc00138c <_end+0xfbf7c560>
  b0:	04 f0 04 04 	l.jal 3c010c0 <_end+0x3b7c294>
  b4:	98 07 b8 07 	l.lhs r0,-18425(r7)
  b8:	00 04 fc 04 	l.j 13f0c8 <_end+0xba29c>
  bc:	80 05 04 84 	*inconnu*
  c0:	05 8c 05 04 	l.jal 63014d0 <_end+0x627c6a4>
  c4:	90 05 b0 06 	l.lbs r0,-20474(r5)
  c8:	04 b0 0c b0 	l.jal 2c03388 <_end+0x2b7e55c>
  cc:	0c 04 bc 0c 	l.bnf 12f0fc <_end+0xaa2d0>
  d0:	bc 0c 00 04 	l.sfeqi r12,4
  d4:	dc 07 b0 0a 	l.sh 10(r7),r22
  d8:	04 b0 0a b4 	l.jal 2c02ba8 <_end+0x2b7dd7c>
  dc:	0a 00 04 e4 	l.adrp r16,9c8000 <_end+0x9431d4>
  e0:	07 e8 07 04 	l.jal ffa01cf0 <_end+0xff97cec4>
  e4:	f0 07 fc 07 	*inconnu*
  e8:	04 84 08 88 	l.jal 2102308 <_end+0x207d4dc>
  ec:	08 04 8c 08 	l.adrp r0,91810000 <_end+0x9178b1d4>
  f0:	a4 08 04 a4 	l.andi r0,r8,0x4a4
  f4:	08 b0 09 04 	l.adrp r5,1208000 <_end+0x11831d4>
  f8:	dc 09 e0 09 	l.sh 9(r9),r28
  fc:	00 04 b0 09 	l.j 12c120 <_end+0xa72f4>
 100:	dc 09 04 e0 	l.sh 1248(r9),r0
 104:	09 fc 09 04 	l.adrp r15,81208000 <_end+0x811831d4>
 108:	90 0a 9c 0a 	l.lbs r0,-25590(r10)
 10c:	04 a0 0a a4 	l.jal 2802b9c <_end+0x277dd70>
 110:	0a 00 04 bc 	l.adrp r16,978000 <_end+0x8f31d4>
 114:	0a c0 0a 04 	l.adrp r22,1408000 <_end+0x13831d4>
 118:	c8 0a d4 0a 	*inconnu*
 11c:	04 dc 0a e0 	l.jal 3702c9c <_end+0x367de70>
 120:	0a 04 e4 0a 	l.adrp r16,9c814000 <_end+0x9c78f1d4>
 124:	fc 0a 04 fc 	*inconnu*
 128:	0a 88 0c 00 	l.adrp r20,1800000 <_end+0x177b1d4>
 12c:	00 00 00 d3 	l.j 478 <main+0x284>
 130:	00 05 04 00 	l.j 141130 <_end+0xbc304>
 134:	00 00 00 00 	l.j 134 <_exception_handler+0xa4>
 138:	04 20 f4 01 	l.jal 83d13c <_end+0x7b8310>
 13c:	04 fc 01 90 	l.jal 3f0077c <_end+0x3e7b950>
 140:	02 04 c0 02 	l.j f8130148 <_end+0xf80ab31c>
 144:	bc 03 04 c4 	l.sfeqi r3,1220
 148:	03 c8 05 04 	l.j ff201558 <_end+0xff17c72c>
 14c:	90 06 cc 06 	l.lbs r0,-13306(r6)
 150:	04 d4 06 a0 	l.jal 3501bd0 <_end+0x347cda4>
 154:	08 04 a8 08 	l.adrp r0,95010000 <_end+0x94f8b1d4>
 158:	94 0b 04 9c 	l.lhz r0,1180(r11)
 15c:	0b bc 0b 04 	l.adrp r29,81608000 <_end+0x815831d4>
 160:	c4 0b c8 0b 	*inconnu*
 164:	04 e8 0b e8 	l.jal 3a03104 <_end+0x397e2d8>
 168:	0b 00 04 44 	l.adrp r24,888000 <_end+0x8031d4>
 16c:	84 01 04 90 	l.lwz r0,1168(r1)
 170:	06 ac 06 00 	l.jal fab01970 <_end+0xfaa7cb44>
 174:	04 c0 02 80 	l.jal 3000b74 <_end+0x2f7bd48>
 178:	03 04 d4 06 	l.j fc135190 <_end+0xfc0b0364>
 17c:	f0 06 00 04 	*inconnu*
 180:	a0 03 a0 03 	l.addic r0,r3,-24573
 184:	04 a4 03 ac 	l.jal 2901034 <_end+0x287c208>
 188:	03 04 ac 03 	l.j fc12b194 <_end+0xfc0a6368>
 18c:	b8 03 04 c4 	*inconnu*
 190:	0b c8 0b 00 	l.adrp r30,1600000 <_end+0x157b1d4>
 194:	04 dc 03 94 	l.jal 3700fe4 <_end+0x367c1b8>
 198:	04 04 ac 06 	l.jal 12b1b0 <_end+0xa6384>
 19c:	cc 06 00 04 	l.swa 4(r6),r0
 1a0:	a0 04 a4 04 	l.addic r0,r4,-23548
 1a4:	04 a8 04 b0 	l.jal 2a01464 <_end+0x297c638>
 1a8:	04 04 b0 04 	l.jal 12c1b8 <_end+0xa738c>
 1ac:	c4 05 04 e8 	*inconnu*
 1b0:	0b e8 0b 00 	l.adrp r31,1600000 <_end+0x157b1d4>
 1b4:	04 f0 06 f4 	l.jal 3c01d84 <_end+0x3b7cf58>
 1b8:	06 04 fc 06 	l.jal f813f1d0 <_end+0xf80ba3a4>
 1bc:	88 07 04 90 	l.lws r0,1168(r7)
 1c0:	07 94 07 04 	l.jal fe501dd0 <_end+0xfe47cfa4>
 1c4:	98 07 b0 07 	l.lhs r0,-20473(r7)
 1c8:	04 b0 07 a0 	l.jal 2c02048 <_end+0x2b7d21c>
 1cc:	08 00 04 a8 	l.adrp r0,950000 <_end+0x8cb1d4>
 1d0:	08 94 0b 04 	l.adrp r4,81608000 <_end+0x815831d4>
 1d4:	9c 0b bc 0b 	l.addi r0,r11,-17397
 1d8:	00 04 b0 08 	l.j 12c1f8 <_end+0xa73cc>
 1dc:	b4 08 04 bc 	l.mfspr r0,r8,0x4bc
 1e0:	08 c8 08 04 	l.adrp r6,1008000 <_end+0xf831d4>
 1e4:	d0 08 d4 08 	*inconnu*
 1e8:	04 d8 08 f0 	l.jal 36025a8 <_end+0x357d77c>
 1ec:	08 04 f4 08 	l.adrp r0,9e810000 <_end+0x9e78b1d4>
 1f0:	80 0a 04 ac 	*inconnu*
 1f4:	0a b0 0a 00 	l.adrp r21,1400000 <_end+0x137b1d4>
 1f8:	04 80 0a ac 	l.jal 2002ca8 <_end+0x1f7de7c>
 1fc:	0a 04 b0 0a 	l.adrp r16,96014000 <_end+0x95f8f1d4>
 200:	d4 0a 00 00 	l.sw 0(r10),r0
 204:	00 01 18 00 	l.j 46204 <frameBuffer+0x413dc>
 208:	05 04 00 00 	l.jal 4100208 <_end+0x407b3dc>
 20c:	00 00 00 04 	l.j 21c <main+0x28>
 210:	00 b4 02 04 	l.j 2d00a20 <_end+0x2c7bbf4>
 214:	bc 02 d0 02 	l.sfeqi r2,-12286
 218:	04 d8 02 c0 	l.jal 3600d18 <_end+0x357beec>
 21c:	03 04 c8 03 	l.j fc132228 <_end+0xfc0ad3fc>
 220:	e0 05 04 e8 	*inconnu*
 224:	05 a4 06 04 	l.jal 6901a34 <_end+0x687cc08>
 228:	ac 06 a4 09 	l.xori r0,r6,-23543
 22c:	04 ac 09 f8 	l.jal 2b02a0c <_end+0x2a7dbe0>
 230:	0a 04 a0 0b 	l.adrp r16,94016000 <_end+0x93f911d4>
 234:	a4 0b 04 ac 	l.andi r0,r11,0x4ac
 238:	0b ac 0b 04 	l.adrp r29,81608000 <_end+0x815831d4>
 23c:	b4 0b b4 0b 	l.mfspr r0,r11,0xb40b
 240:	00 04 00 b4 	l.j 100510 <_end+0x7b6e4>
 244:	02 04 bc 02 	l.j f812f24c <_end+0xf80aa420>
 248:	d0 02 04 d8 	*inconnu*
 24c:	02 c0 03 04 	l.j fb000e5c <_end+0xfaf7c030>
 250:	c8 03 e0 05 	*inconnu*
 254:	04 e8 05 a4 	l.jal 3a018e4 <_end+0x397cab8>
 258:	06 04 ac 06 	l.jal f812b270 <_end+0xf80a6444>
 25c:	9c 09 04 9c 	l.addi r0,r9,1180
 260:	09 a4 09 04 	l.adrp r13,81208000 <_end+0x811831d4>
 264:	ac 09 f8 0a 	l.xori r0,r9,-2038
 268:	04 a0 0b a4 	l.jal 28030f8 <_end+0x277e2cc>
 26c:	0b 04 ac 0b 	l.adrp r24,95816000 <_end+0x957911d4>
 270:	ac 0b 04 b4 	l.xori r0,r11,1204
 274:	0b b4 0b 00 	l.adrp r29,81600000 <_end+0x8157b1d4>
 278:	04 20 60 04 	l.jal 818288 <_end+0x79345c>
 27c:	e8 05 84 06 	*inconnu*
 280:	00 04 80 01 	l.j 120284 <_end+0x9b458>
 284:	a4 02 04 a4 	l.andi r0,r2,0x4a4
 288:	02 b0 02 04 	l.j fac00a98 <_end+0xfab7bc6c>
 28c:	a0 0b a0 0b 	l.addic r0,r11,-24565
 290:	04 b4 0b b4 	l.jal 2d03160 <_end+0x2c7e334>
 294:	0b 00 04 d8 	l.adrp r24,9b0000 <_end+0x92b1d4>
 298:	02 98 03 04 	l.j fa600ea8 <_end+0xfa57c07c>
 29c:	ac 06 c8 06 	l.xori r0,r6,-14330
 2a0:	00 04 e0 03 	l.j 1382ac <_end+0xb3480>
 2a4:	98 04 04 84 	l.lhs r0,1156(r4)
 2a8:	06 a4 06 00 	l.jal fa901aa8 <_end+0xfa87cc7c>
 2ac:	04 a4 04 a8 	l.jal 290154c <_end+0x287c720>
 2b0:	04 04 ac 04 	l.jal 12b2c0 <_end+0xa6494>
 2b4:	b4 04 04 b8 	l.mfspr r0,r4,0x4b8
 2b8:	04 e0 05 04 	l.jal 38016c8 <_end+0x377c89c>
 2bc:	a0 0b a0 0b 	l.addic r0,r11,-24565
 2c0:	04 ac 0b ac 	l.jal 2b03170 <_end+0x2a7e344>
 2c4:	0b 00 04 c8 	l.adrp r24,990000 <_end+0x90b1d4>
 2c8:	06 9c 09 04 	l.jal fa7026d8 <_end+0xfa67d8ac>
 2cc:	9c 09 a0 09 	l.addi r0,r9,-24567
 2d0:	00 04 d0 06 	l.j 1342e8 <_end+0xaf4bc>
 2d4:	d4 06 04 dc 	l.sw 1244(r6),r0
 2d8:	06 e8 06 04 	l.jal fba01ae8 <_end+0xfb97ccbc>
 2dc:	f0 06 f4 06 	*inconnu*
 2e0:	04 f8 06 90 	l.jal 3e01d20 <_end+0x3d7cef4>
 2e4:	07 04 90 07 	l.jal fc124300 <_end+0xfc09f4d4>
 2e8:	9c 08 04 c8 	l.addi r0,r8,1224
 2ec:	08 cc 08 00 	l.adrp r6,81000000 <_end+0x80f7b1d4>
 2f0:	04 9c 08 c8 	l.jal 2702610 <_end+0x267d7e4>
 2f4:	08 04 cc 08 	l.adrp r0,99810000 <_end+0x9978b1d4>
 2f8:	e8 08 04 fc 	*inconnu*
 2fc:	08 88 09 04 	l.adrp r4,1208000 <_end+0x11831d4>
 300:	8c 09 90 09 	l.lbz r0,-28663(r9)
 304:	00 04 ac 09 	l.j 12b328 <_end+0xa64fc>
 308:	b0 09 04 b8 	l.muli r0,r9,1208
 30c:	09 c4 09 04 	l.adrp r14,81208000 <_end+0x811831d4>
 310:	cc 09 d0 09 	l.swa 9(r9),r26
 314:	04 d4 09 ec 	l.jal 3502ac4 <_end+0x347dc98>
 318:	09 04 ec 09 	l.adrp r8,9d812000 <_end+0x9d78d1d4>
 31c:	f8 0a 00 00 	*inconnu*
 320:	00 00 d2 00 	l.j 34b20 <frameBuffer+0x2fcf8>
 324:	05 04 00 00 	l.jal 4100324 <_end+0x407b4f8>
 328:	00 00 00 04 	l.j 338 <main+0x144>
 32c:	00 d4 01 04 	l.j 350073c <_end+0x347b910>
 330:	dc 01 f0 01 	l.sh 1(r1),r30
 334:	04 f8 01 fc 	l.jal 3e00b24 <_end+0x3d7bcf8>
 338:	02 04 84 03 	l.j f8121344 <_end+0xf809c518>
 33c:	8c 05 04 94 	l.lbz r0,1172(r5)
 340:	05 d0 05 04 	l.jal 7401750 <_end+0x737c924>
 344:	d8 05 a4 07 	l.sb 1031(r5),r20
 348:	04 ac 07 9c 	l.jal 2b021b8 <_end+0x2a7d38c>
 34c:	0a 04 a4 0a 	l.adrp r16,94814000 <_end+0x9478f1d4>
 350:	c4 0a 04 cc 	*inconnu*
 354:	0a d0 0a 04 	l.adrp r22,1408000 <_end+0x13831d4>
 358:	f0 0a f0 0a 	*inconnu*
 35c:	00 04 24 64 	l.j 1094ec <_end+0x846c0>
 360:	04 94 05 b0 	l.jal 2501a20 <_end+0x247cbf4>
 364:	05 00 04 f8 	l.jal 4001744 <_end+0x3f7c918>
 368:	01 bc 02 04 	l.j 6f00b78 <_end+0x6e7bd4c>
 36c:	d8 05 f4 05 	l.sb 1029(r5),r30
 370:	00 04 dc 02 	l.j 137378 <_end+0xb254c>
 374:	dc 02 04 e0 	l.sh 1248(r2),r0
 378:	02 e8 02 04 	l.j fba00b88 <_end+0xfb97bd5c>
 37c:	e8 02 f4 02 	*inconnu*
 380:	04 cc 0a d0 	l.jal 3302ec0 <_end+0x327e094>
 384:	0a 00 04 9c 	l.adrp r16,938000 <_end+0x8b31d4>
 388:	03 d4 03 04 	l.j ff500f98 <_end+0xff47c16c>
 38c:	b0 05 d0 05 	l.muli r0,r5,-12283
 390:	00 04 e0 03 	l.j 13839c <_end+0xb3570>
 394:	e4 03 04 e8 	*inconnu*
 398:	03 f0 03 04 	l.j ffc00fa8 <_end+0xffb7c17c>
 39c:	f0 03 84 05 	*inconnu*
 3a0:	04 f0 0a f0 	l.jal 3c02f60 <_end+0x3b7e134>
 3a4:	0a 00 04 f4 	l.adrp r16,9e8000 <_end+0x9631d4>
 3a8:	05 f8 05 04 	l.jal 7e017b8 <_end+0x7d7c98c>
 3ac:	80 06 8c 06 	*inconnu*
 3b0:	04 94 06 98 	l.jal 2501e10 <_end+0x247cfe4>
 3b4:	06 04 9c 06 	l.jal f81273cc <_end+0xf80a25a0>
 3b8:	b4 06 04 b4 	l.mfspr r0,r6,0x4b4
 3bc:	06 a4 07 00 	l.jal fa901fbc <_end+0xfa87d190>
 3c0:	04 ac 07 9c 	l.jal 2b02230 <_end+0x2a7d404>
 3c4:	0a 04 a4 0a 	l.adrp r16,94814000 <_end+0x9478f1d4>
 3c8:	c4 0a 00 04 	l.msbu r10,r0
 3cc:	b4 07 b8 07 	l.mfspr r0,r7,0xb807
 3d0:	04 c0 07 cc 	l.jal 3002300 <_end+0x2f7d4d4>
 3d4:	07 04 d4 07 	l.jal fc1353f0 <_end+0xfc0b05c4>
 3d8:	d8 07 04 dc 	l.sb 1244(r7),r0
 3dc:	07 f4 07 04 	l.jal ffd01fec <_end+0xffc7d1c0>
 3e0:	f8 07 84 09 	*inconnu*
 3e4:	04 b0 09 b4 	l.jal 2c02ab4 <_end+0x2b7dc88>
 3e8:	09 00 04 84 	l.adrp r8,908000 <_end+0x8831d4>
 3ec:	09 b0 09 04 	l.adrp r13,1208000 <_end+0x11831d4>
 3f0:	b4 09 d8 09 	l.mfspr r0,r9,0xd809
	...
