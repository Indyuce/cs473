
build-release/exceptions.elf:     format de fichier elf32-or1k


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
 1bc:	00 00 00 70 	l.j 37c <range_exception_handler>
 1c0:	00 00 03 0c 	l.j df0 <_ntoa_format+0x8a8>
 1c4:	00 00 03 18 	l.j e24 <_ntoa_format+0x8dc>
 1c8:	00 00 03 24 	l.j e58 <_ntoa_long+0x8>
 1cc:	00 00 03 30 	l.j e8c <_ntoa_long+0x3c>
 1d0:	00 00 03 3c 	l.j ec0 <_ntoa_long+0x70>
 1d4:	00 00 03 4c 	l.j f04 <_ntoa_long+0xb4>
 1d8:	00 00 03 58 	l.j f38 <_ntoa_long+0xe8>
 1dc:	00 00 03 64 	l.j f6c <_ntoa_long_long+0x20>
 1e0:	00 00 03 70 	l.j fa0 <_ntoa_long_long+0x54>
 1e4:	00 00 03 7c 	l.j fd4 <_ntoa_long_long+0x88>
 1e8:	00 00 03 88 	l.j 1008 <_ntoa_long_long+0xbc>
 1ec:	00 00 04 3c 	l.j 12dc <_vsnprintf+0x168>
 1f0:	00 00 03 94 	l.j 1040 <_ntoa_long_long+0xf4>

Déassemblage de la section .text :

000001f4 <main>:
     1f4:	1a 20 00 00 	l.movhi r17,0x0
     1f8:	9c 21 ff f0 	l.addi r1,r1,-16
     1fc:	1a 60 00 00 	l.movhi r19,0x0
     200:	9e 31 02 a0 	l.addi r17,r17,672
     204:	d4 01 48 0c 	l.sw 12(r1),r9
     208:	d4 13 89 e8 	l.sw 488(r19),r17
     20c:	20 00 00 aa 	l.sys 0xaa
     210:	aa 20 00 21 	l.ori r17,r0,0x21
     214:	d4 01 88 08 	l.sw 8(r1),r17
     218:	1a 20 00 00 	l.movhi r17,0x0
     21c:	9e 31 2a ba 	l.addi r17,r17,10938
     220:	d4 01 88 04 	l.sw 4(r1),r17
     224:	1a 20 00 00 	l.movhi r17,0x0
     228:	9e 31 2b c1 	l.addi r17,r17,11201
     22c:	18 60 00 00 	l.movhi r3,0x0
     230:	d4 01 88 00 	l.sw 0(r1),r17
     234:	04 00 06 6e 	l.jal 1bec <printf_>
     238:	9c 63 2a 9a 	l.addi r3,r3,10906
     23c:	ae 20 de ad 	l.xori r17,r0,-8531
     240:	aa 60 00 01 	l.ori r19,r0,0x1
     244:	72 31 98 01 	l.nios_rrr r17,r17,r19,0x1
     248:	a6 31 ff ff 	l.andi r17,r17,0xffff
     24c:	d4 01 88 04 	l.sw 4(r1),r17
     250:	18 60 00 00 	l.movhi r3,0x0
     254:	aa 20 de ad 	l.ori r17,r0,0xdead
     258:	d4 01 88 00 	l.sw 0(r1),r17
     25c:	04 00 06 64 	l.jal 1bec <printf_>
     260:	9c 63 2a cb 	l.addi r3,r3,10955
     264:	1a 20 de ad 	l.movhi r17,0xdead
     268:	aa 31 be ef 	l.ori r17,r17,0xbeef
     26c:	72 71 00 01 	l.nios_rrr r19,r17,r0,0x1
     270:	18 60 00 00 	l.movhi r3,0x0
     274:	d4 01 98 04 	l.sw 4(r1),r19
     278:	d4 01 88 00 	l.sw 0(r1),r17
     27c:	04 00 06 5c 	l.jal 1bec <printf_>
     280:	9c 63 2a ee 	l.addi r3,r3,10990
     284:	18 60 00 00 	l.movhi r3,0x0
     288:	04 00 06 59 	l.jal 1bec <printf_>
     28c:	9c 63 2b 11 	l.addi r3,r3,11025
     290:	19 60 00 00 	l.movhi r11,0x0
     294:	85 21 00 0c 	l.lwz r9,12(r1)
     298:	44 00 48 00 	l.jr r9
     29c:	9c 21 00 10 	l.addi r1,r1,16

000002a0 <my_syscall_handler>:
     2a0:	9c 21 ff f4 	l.addi r1,r1,-12
     2a4:	d4 01 80 04 	l.sw 4(r1),r16
     2a8:	d4 01 48 08 	l.sw 8(r1),r9
     2ac:	b6 00 00 20 	l.mfspr r16,r0,0x20
     2b0:	18 60 00 00 	l.movhi r3,0x0
     2b4:	d4 01 80 00 	l.sw 0(r1),r16
     2b8:	04 00 06 4d 	l.jal 1bec <printf_>
     2bc:	9c 63 2a 38 	l.addi r3,r3,10808
     2c0:	18 60 00 00 	l.movhi r3,0x0
     2c4:	86 30 00 00 	l.lwz r17,0(r16)
     2c8:	9c 63 2a 44 	l.addi r3,r3,10820
     2cc:	04 00 06 48 	l.jal 1bec <printf_>
     2d0:	d4 01 88 00 	l.sw 0(r1),r17
     2d4:	9e 30 ff fc 	l.addi r17,r16,-4
     2d8:	18 60 00 00 	l.movhi r3,0x0
     2dc:	d4 01 88 00 	l.sw 0(r1),r17
     2e0:	04 00 06 43 	l.jal 1bec <printf_>
     2e4:	9c 63 2a 66 	l.addi r3,r3,10854
     2e8:	18 60 00 00 	l.movhi r3,0x0
     2ec:	86 30 ff f0 	l.lwz r17,-16(r16)
     2f0:	9c 63 2a 75 	l.addi r3,r3,10869
     2f4:	04 00 06 3e 	l.jal 1bec <printf_>
     2f8:	d4 01 88 00 	l.sw 0(r1),r17
     2fc:	85 21 00 08 	l.lwz r9,8(r1)
     300:	86 01 00 04 	l.lwz r16,4(r1)
     304:	44 00 48 00 	l.jr r9
     308:	9c 21 00 0c 	l.addi r1,r1,12

0000030c <bus_error_handler>:
     30c:	18 60 00 00 	l.movhi r3,0x0
     310:	00 00 00 6e 	l.j 4c8 <puts>
     314:	9c 63 2b 1a 	l.addi r3,r3,11034

00000318 <data_page_fault_handler>:
     318:	18 60 00 00 	l.movhi r3,0x0
     31c:	00 00 00 6b 	l.j 4c8 <puts>
     320:	9c 63 2b 25 	l.addi r3,r3,11045

00000324 <instruction_page_fault_handler>:
     324:	18 60 00 00 	l.movhi r3,0x0
     328:	00 00 00 68 	l.j 4c8 <puts>
     32c:	9c 63 2b 35 	l.addi r3,r3,11061

00000330 <tick_timer_handler>:
     330:	18 60 00 00 	l.movhi r3,0x0
     334:	00 00 00 65 	l.j 4c8 <puts>
     338:	9c 63 2b 42 	l.addi r3,r3,11074

0000033c <allignment_exception_handler>:
     33c:	21 00 00 0f 	l.trap 0xf
     340:	18 60 00 00 	l.movhi r3,0x0
     344:	00 00 00 61 	l.j 4c8 <puts>
     348:	9c 63 2b 47 	l.addi r3,r3,11079

0000034c <illegal_instruction_handler>:
     34c:	18 60 00 00 	l.movhi r3,0x0
     350:	00 00 00 5e 	l.j 4c8 <puts>
     354:	9c 63 2b 4e 	l.addi r3,r3,11086

00000358 <external_interrupt_handler>:
     358:	18 60 00 00 	l.movhi r3,0x0
     35c:	00 00 00 5b 	l.j 4c8 <puts>
     360:	9c 63 2b 54 	l.addi r3,r3,11092

00000364 <dtlb_miss_handler>:
     364:	18 60 00 00 	l.movhi r3,0x0
     368:	00 00 00 58 	l.j 4c8 <puts>
     36c:	9c 63 2b 59 	l.addi r3,r3,11097

00000370 <itlb_miss_handler>:
     370:	18 60 00 00 	l.movhi r3,0x0
     374:	00 00 00 55 	l.j 4c8 <puts>
     378:	9c 63 2b 5e 	l.addi r3,r3,11102

0000037c <range_exception_handler>:
     37c:	18 60 00 00 	l.movhi r3,0x0
     380:	00 00 00 52 	l.j 4c8 <puts>
     384:	9c 63 2b 63 	l.addi r3,r3,11107

00000388 <system_call_handler>:
     388:	18 60 00 00 	l.movhi r3,0x0
     38c:	00 00 00 4f 	l.j 4c8 <puts>
     390:	9c 63 2b 6a 	l.addi r3,r3,11114

00000394 <trap_handler>:
     394:	18 60 00 00 	l.movhi r3,0x0
     398:	9c 21 ff ec 	l.addi r1,r1,-20
     39c:	d4 01 80 04 	l.sw 4(r1),r16
     3a0:	d4 01 90 08 	l.sw 8(r1),r18
     3a4:	d4 01 a0 0c 	l.sw 12(r1),r20
     3a8:	d4 01 48 10 	l.sw 16(r1),r9
     3ac:	04 00 00 47 	l.jal 4c8 <puts>
     3b0:	9c 63 2b 72 	l.addi r3,r3,11122
     3b4:	b6 20 00 20 	l.mfspr r17,r0,0x20
     3b8:	18 60 00 00 	l.movhi r3,0x0
     3bc:	d4 01 88 00 	l.sw 0(r1),r17
     3c0:	04 00 06 0b 	l.jal 1bec <printf_>
     3c4:	9c 63 2b 78 	l.addi r3,r3,11128
     3c8:	b6 20 00 30 	l.mfspr r17,r0,0x30
     3cc:	18 60 00 00 	l.movhi r3,0x0
     3d0:	d4 01 88 00 	l.sw 0(r1),r17
     3d4:	04 00 06 06 	l.jal 1bec <printf_>
     3d8:	9c 63 2b 87 	l.addi r3,r3,11143
     3dc:	b6 20 00 40 	l.mfspr r17,r0,0x40
     3e0:	18 60 00 00 	l.movhi r3,0x0
     3e4:	d4 01 88 00 	l.sw 0(r1),r17
     3e8:	04 00 06 01 	l.jal 1bec <printf_>
     3ec:	9c 63 2b 96 	l.addi r3,r3,11158
     3f0:	b6 20 00 50 	l.mfspr r17,r0,0x50
     3f4:	18 60 00 00 	l.movhi r3,0x0
     3f8:	d4 01 88 00 	l.sw 0(r1),r17
     3fc:	9c 63 2b a5 	l.addi r3,r3,11173
     400:	04 00 05 fb 	l.jal 1bec <printf_>
     404:	1a 40 00 00 	l.movhi r18,0x0
     408:	1a 00 00 00 	l.movhi r16,0x0
     40c:	9e 52 2b 9d 	l.addi r18,r18,11165
     410:	aa 80 01 00 	l.ori r20,r0,0x100
     414:	b6 30 31 00 	l.mfspr r17,r16,0x3100
     418:	d4 01 88 00 	l.sw 0(r1),r17
     41c:	04 00 05 f4 	l.jal 1bec <printf_>
     420:	e0 72 90 04 	l.or r3,r18,r18
     424:	9e 10 00 01 	l.addi r16,r16,1
     428:	e4 30 a0 00 	l.sfne r16,r20
     42c:	13 ff ff fa 	l.bf 414 <trap_handler+0x80>
     430:	15 00 00 00 	l.nop 0x0
     434:	00 00 00 00 	l.j 434 <trap_handler+0xa0>
     438:	15 00 00 00 	l.nop 0x0

0000043c <break_point_handler>:
     43c:	18 60 00 00 	l.movhi r3,0x0
     440:	00 00 00 22 	l.j 4c8 <puts>
     444:	9c 63 2b bb 	l.addi r3,r3,11195

00000448 <platform_init>:
     448:	00 00 06 30 	l.j 1d08 <uart_init>
     44c:	18 60 50 00 	l.movhi r3,0x5000

00000450 <_putchar>:
     450:	9c 21 ff f8 	l.addi r1,r1,-8
     454:	aa 20 00 18 	l.ori r17,r0,0x18
     458:	d4 01 80 00 	l.sw 0(r1),r16
     45c:	e2 03 88 08 	l.sll r16,r3,r17
     460:	e2 10 88 88 	l.sra r16,r16,r17
     464:	e0 90 80 04 	l.or r4,r16,r16
     468:	d4 01 48 04 	l.sw 4(r1),r9
     46c:	04 00 06 4e 	l.jal 1da4 <uart_putc>
     470:	18 60 50 00 	l.movhi r3,0x5000
     474:	e0 70 80 04 	l.or r3,r16,r16
     478:	85 21 00 04 	l.lwz r9,4(r1)
     47c:	86 01 00 00 	l.lwz r16,0(r1)
     480:	00 00 06 8e 	l.j 1eb8 <vga_putc>
     484:	9c 21 00 08 	l.addi r1,r1,8

00000488 <putchar>:
     488:	9c 21 ff f8 	l.addi r1,r1,-8
     48c:	aa 20 00 18 	l.ori r17,r0,0x18
     490:	d4 01 80 00 	l.sw 0(r1),r16
     494:	e2 03 88 08 	l.sll r16,r3,r17
     498:	e2 10 88 88 	l.sra r16,r16,r17
     49c:	e0 90 80 04 	l.or r4,r16,r16
     4a0:	d4 01 48 04 	l.sw 4(r1),r9
     4a4:	04 00 06 40 	l.jal 1da4 <uart_putc>
     4a8:	18 60 50 00 	l.movhi r3,0x5000
     4ac:	04 00 06 83 	l.jal 1eb8 <vga_putc>
     4b0:	e0 70 80 04 	l.or r3,r16,r16
     4b4:	19 60 00 00 	l.movhi r11,0x0
     4b8:	86 01 00 00 	l.lwz r16,0(r1)
     4bc:	85 21 00 04 	l.lwz r9,4(r1)
     4c0:	44 00 48 00 	l.jr r9
     4c4:	9c 21 00 08 	l.addi r1,r1,8

000004c8 <puts>:
     4c8:	9c 21 ff f8 	l.addi r1,r1,-8
     4cc:	d4 01 80 00 	l.sw 0(r1),r16
     4d0:	e0 83 18 04 	l.or r4,r3,r3
     4d4:	e2 03 18 04 	l.or r16,r3,r3
     4d8:	d4 01 48 04 	l.sw 4(r1),r9
     4dc:	04 00 06 44 	l.jal 1dec <uart_puts>
     4e0:	18 60 50 00 	l.movhi r3,0x5000
     4e4:	a8 80 00 0a 	l.ori r4,r0,0xa
     4e8:	04 00 06 2f 	l.jal 1da4 <uart_putc>
     4ec:	18 60 50 00 	l.movhi r3,0x5000
     4f0:	04 00 06 76 	l.jal 1ec8 <vga_puts>
     4f4:	e0 70 80 04 	l.or r3,r16,r16
     4f8:	04 00 06 70 	l.jal 1eb8 <vga_putc>
     4fc:	a8 60 00 0a 	l.ori r3,r0,0xa
     500:	19 60 00 00 	l.movhi r11,0x0
     504:	86 01 00 00 	l.lwz r16,0(r1)
     508:	85 21 00 04 	l.lwz r9,4(r1)
     50c:	44 00 48 00 	l.jr r9
     510:	9c 21 00 08 	l.addi r1,r1,8

00000514 <getchar>:
     514:	00 00 06 50 	l.j 1e54 <uart_getc>
     518:	18 60 50 00 	l.movhi r3,0x5000

0000051c <_out_buffer>:
     51c:	aa 20 00 18 	l.ori r17,r0,0x18
     520:	e0 63 88 08 	l.sll r3,r3,r17
     524:	e4 65 30 00 	l.sfgeu r5,r6
     528:	10 00 00 04 	l.bf 538 <_out_buffer+0x1c>
     52c:	e0 63 88 88 	l.sra r3,r3,r17
     530:	e0 84 28 00 	l.add r4,r4,r5
     534:	d8 04 18 00 	l.sb 0(r4),r3
     538:	44 00 48 00 	l.jr r9
     53c:	15 00 00 00 	l.nop 0x0

00000540 <_out_null>:
     540:	44 00 48 00 	l.jr r9
     544:	15 00 00 00 	l.nop 0x0

00000548 <_ntoa_format>:
     548:	9c 21 ff d0 	l.addi r1,r1,-48
     54c:	1a a0 00 00 	l.movhi r21,0x0
     550:	87 21 00 40 	l.lwz r25,64(r1)
     554:	a6 39 00 02 	l.andi r17,r25,0x2
     558:	d4 01 80 08 	l.sw 8(r1),r16
     55c:	d4 01 a0 10 	l.sw 16(r1),r20
     560:	d4 01 b0 14 	l.sw 20(r1),r22
     564:	d4 01 c0 18 	l.sw 24(r1),r24
     568:	d4 01 d0 1c 	l.sw 28(r1),r26
     56c:	d4 01 e0 20 	l.sw 32(r1),r28
     570:	d4 01 70 04 	l.sw 4(r1),r14
     574:	d4 01 90 0c 	l.sw 12(r1),r18
     578:	d4 01 f0 24 	l.sw 36(r1),r30
     57c:	d4 01 10 28 	l.sw 40(r1),r2
     580:	d4 01 48 2c 	l.sw 44(r1),r9
     584:	d4 01 88 00 	l.sw 0(r1),r17
     588:	e4 31 a8 00 	l.sfne r17,r21
     58c:	e2 83 18 04 	l.or r20,r3,r3
     590:	e2 c4 20 04 	l.or r22,r4,r4
     594:	e3 45 28 04 	l.or r26,r5,r5
     598:	e3 06 30 04 	l.or r24,r6,r6
     59c:	e2 07 38 04 	l.or r16,r7,r7
     5a0:	8f 61 00 33 	l.lbz r27,51(r1)
     5a4:	86 61 00 38 	l.lwz r19,56(r1)
     5a8:	10 00 00 2a 	l.bf 650 <_ntoa_format+0x108>
     5ac:	87 81 00 3c 	l.lwz r28,60(r1)
     5b0:	e4 1c a8 00 	l.sfeq r28,r21
     5b4:	0c 00 00 84 	l.bnf 7c4 <_ntoa_format+0x27c>
     5b8:	a7 b9 00 01 	l.andi r29,r25,0x1
     5bc:	e4 88 98 00 	l.sfltu r8,r19
     5c0:	0c 00 00 24 	l.bnf 650 <_ntoa_format+0x108>
     5c4:	aa 20 00 20 	l.ori r17,r0,0x20
     5c8:	e4 28 88 00 	l.sfne r8,r17
     5cc:	0c 00 01 af 	l.bnf c88 <_ntoa_format+0x740>
     5d0:	aa a0 00 30 	l.ori r21,r0,0x30
     5d4:	00 00 00 05 	l.j 5e8 <_ntoa_format+0xa0>
     5d8:	aa e0 00 20 	l.ori r23,r0,0x20
     5dc:	e4 28 b8 00 	l.sfne r8,r23
     5e0:	0c 00 00 c8 	l.bnf 900 <_ntoa_format+0x3b8>
     5e4:	1a 20 00 00 	l.movhi r17,0x0
     5e8:	9d 08 00 01 	l.addi r8,r8,1
     5ec:	e2 30 40 00 	l.add r17,r16,r8
     5f0:	e4 53 40 00 	l.sfgtu r19,r8
     5f4:	13 ff ff fa 	l.bf 5dc <_ntoa_format+0x94>
     5f8:	db f1 af ff 	l.sb -1(r17),r21
     5fc:	1a 20 00 00 	l.movhi r17,0x0
     600:	e4 1d 88 00 	l.sfeq r29,r17
     604:	10 00 00 14 	l.bf 654 <_ntoa_format+0x10c>
     608:	a6 39 00 10 	l.andi r17,r25,0x10
     60c:	e4 68 e0 00 	l.sfgeu r8,r28
     610:	10 00 00 11 	l.bf 654 <_ntoa_format+0x10c>
     614:	a6 39 00 10 	l.andi r17,r25,0x10
     618:	aa e0 00 20 	l.ori r23,r0,0x20
     61c:	e4 28 b8 00 	l.sfne r8,r23
     620:	10 00 00 07 	l.bf 63c <_ntoa_format+0xf4>
     624:	aa a0 00 30 	l.ori r21,r0,0x30
     628:	00 00 01 3c 	l.j b18 <_ntoa_format+0x5d0>
     62c:	1a a0 00 00 	l.movhi r21,0x0
     630:	e4 28 b8 00 	l.sfne r8,r23
     634:	0c 00 01 05 	l.bnf a48 <_ntoa_format+0x500>
     638:	a6 39 00 10 	l.andi r17,r25,0x10
     63c:	9d 08 00 01 	l.addi r8,r8,1
     640:	e2 30 40 00 	l.add r17,r16,r8
     644:	e4 08 e0 00 	l.sfeq r8,r28
     648:	0f ff ff fa 	l.bnf 630 <_ntoa_format+0xe8>
     64c:	db f1 af ff 	l.sb -1(r17),r21
     650:	a6 39 00 10 	l.andi r17,r25,0x10
     654:	1a a0 00 00 	l.movhi r21,0x0
     658:	e4 11 a8 00 	l.sfeq r17,r21
     65c:	0c 00 00 38 	l.bnf 73c <_ntoa_format+0x1f4>
     660:	a6 39 04 00 	l.andi r17,r25,0x400
     664:	a6 39 00 03 	l.andi r17,r25,0x3
     668:	aa 60 00 20 	l.ori r19,r0,0x20
     66c:	e4 28 98 00 	l.sfne r8,r19
     670:	10 00 00 46 	l.bf 788 <_ntoa_format+0x240>
     674:	15 00 00 00 	l.nop 0x0
     678:	1a 60 00 00 	l.movhi r19,0x0
     67c:	e4 31 98 00 	l.sfne r17,r19
     680:	0c 00 00 82 	l.bnf 888 <_ntoa_format+0x340>
     684:	aa 20 00 20 	l.ori r17,r0,0x20
     688:	e3 da d0 04 	l.or r30,r26,r26
     68c:	aa 40 00 20 	l.ori r18,r0,0x20
     690:	e3 de 90 00 	l.add r30,r30,r18
     694:	e1 d0 90 00 	l.add r14,r16,r18
     698:	e0 50 f0 00 	l.add r2,r16,r30
     69c:	8c 6e ff ff 	l.lbz r3,-1(r14)
     6a0:	e0 a2 70 02 	l.sub r5,r2,r14
     6a4:	e0 d8 c0 04 	l.or r6,r24,r24
     6a8:	48 00 a0 00 	l.jalr r20
     6ac:	e0 96 b0 04 	l.or r4,r22,r22
     6b0:	9d ce ff ff 	l.addi r14,r14,-1
     6b4:	e4 30 70 00 	l.sfne r16,r14
     6b8:	13 ff ff f9 	l.bf 69c <_ntoa_format+0x154>
     6bc:	e2 5e f0 04 	l.or r18,r30,r30
     6c0:	1a 60 00 00 	l.movhi r19,0x0
     6c4:	86 21 00 00 	l.lwz r17,0(r1)
     6c8:	e4 11 98 00 	l.sfeq r17,r19
     6cc:	10 00 00 0e 	l.bf 704 <_ntoa_format+0x1bc>
     6d0:	e3 52 d0 02 	l.sub r26,r18,r26
     6d4:	e4 7a e0 00 	l.sfgeu r26,r28
     6d8:	10 00 00 0b 	l.bf 704 <_ntoa_format+0x1bc>
     6dc:	aa 00 00 20 	l.ori r16,r0,0x20
     6e0:	e0 b2 90 04 	l.or r5,r18,r18
     6e4:	e0 d8 c0 04 	l.or r6,r24,r24
     6e8:	e0 96 b0 04 	l.or r4,r22,r22
     6ec:	48 00 a0 00 	l.jalr r20
     6f0:	e0 70 80 04 	l.or r3,r16,r16
     6f4:	9f 5a 00 01 	l.addi r26,r26,1
     6f8:	e4 9a e0 00 	l.sfltu r26,r28
     6fc:	13 ff ff f9 	l.bf 6e0 <_ntoa_format+0x198>
     700:	9e 52 00 01 	l.addi r18,r18,1
     704:	e1 72 90 04 	l.or r11,r18,r18
     708:	85 c1 00 04 	l.lwz r14,4(r1)
     70c:	86 01 00 08 	l.lwz r16,8(r1)
     710:	86 41 00 0c 	l.lwz r18,12(r1)
     714:	86 81 00 10 	l.lwz r20,16(r1)
     718:	86 c1 00 14 	l.lwz r22,20(r1)
     71c:	87 01 00 18 	l.lwz r24,24(r1)
     720:	87 41 00 1c 	l.lwz r26,28(r1)
     724:	87 81 00 20 	l.lwz r28,32(r1)
     728:	87 c1 00 24 	l.lwz r30,36(r1)
     72c:	84 41 00 28 	l.lwz r2,40(r1)
     730:	85 21 00 2c 	l.lwz r9,44(r1)
     734:	44 00 48 00 	l.jr r9
     738:	9c 21 00 30 	l.addi r1,r1,48
     73c:	1a a0 00 00 	l.movhi r21,0x0
     740:	e4 31 a8 00 	l.sfne r17,r21
     744:	10 00 00 3e 	l.bf 83c <_ntoa_format+0x2f4>
     748:	aa e0 00 10 	l.ori r23,r0,0x10
     74c:	e4 08 a8 00 	l.sfeq r8,r21
     750:	0c 00 00 c7 	l.bnf a6c <_ntoa_format+0x524>
     754:	86 21 00 34 	l.lwz r17,52(r1)
     758:	aa 60 00 10 	l.ori r19,r0,0x10
     75c:	e4 31 98 00 	l.sfne r17,r19
     760:	0c 00 01 3b 	l.bnf c4c <_ntoa_format+0x704>
     764:	aa 60 00 02 	l.ori r19,r0,0x2
     768:	86 21 00 34 	l.lwz r17,52(r1)
     76c:	e4 11 98 00 	l.sfeq r17,r19
     770:	10 00 01 3d 	l.bf c64 <_ntoa_format+0x71c>
     774:	aa 20 00 62 	l.ori r17,r0,0x62
     778:	aa 20 00 30 	l.ori r17,r0,0x30
     77c:	d8 10 88 00 	l.sb 0(r16),r17
     780:	a9 00 00 01 	l.ori r8,r0,0x1
     784:	a6 39 00 03 	l.andi r17,r25,0x3
     788:	1a e0 00 00 	l.movhi r23,0x0
     78c:	e4 1b b8 00 	l.sfeq r27,r23
     790:	10 00 00 7d 	l.bf 984 <_ntoa_format+0x43c>
     794:	a6 79 00 04 	l.andi r19,r25,0x4
     798:	e2 70 40 00 	l.add r19,r16,r8
     79c:	aa a0 00 2d 	l.ori r21,r0,0x2d
     7a0:	d8 13 a8 00 	l.sb 0(r19),r21
     7a4:	e4 11 b8 00 	l.sfeq r17,r23
     7a8:	0c 00 00 05 	l.bnf 7bc <_ntoa_format+0x274>
     7ac:	9e 48 00 01 	l.addi r18,r8,1
     7b0:	e4 92 e0 00 	l.sfltu r18,r28
     7b4:	10 00 00 39 	l.bf 898 <_ntoa_format+0x350>
     7b8:	e1 da d0 04 	l.or r14,r26,r26
     7bc:	03 ff ff b5 	l.j 690 <_ntoa_format+0x148>
     7c0:	e3 da d0 04 	l.or r30,r26,r26
     7c4:	e4 1d a8 00 	l.sfeq r29,r21
     7c8:	10 00 00 7a 	l.bf 9b0 <_ntoa_format+0x468>
     7cc:	e4 88 98 00 	l.sfltu r8,r19
     7d0:	e4 3b a8 00 	l.sfne r27,r21
     7d4:	10 00 00 cf 	l.bf b10 <_ntoa_format+0x5c8>
     7d8:	a6 39 00 0c 	l.andi r17,r25,0xc
     7dc:	e4 11 a8 00 	l.sfeq r17,r21
     7e0:	0c 00 00 cc 	l.bnf b10 <_ntoa_format+0x5c8>
     7e4:	15 00 00 00 	l.nop 0x0
     7e8:	e4 88 98 00 	l.sfltu r8,r19
     7ec:	0f ff ff 88 	l.bnf 60c <_ntoa_format+0xc4>
     7f0:	aa 20 00 20 	l.ori r17,r0,0x20
     7f4:	e4 28 88 00 	l.sfne r8,r17
     7f8:	13 ff ff 77 	l.bf 5d4 <_ntoa_format+0x8c>
     7fc:	aa a0 00 30 	l.ori r21,r0,0x30
     800:	e4 5c 40 00 	l.sfgtu r28,r8
     804:	0c 00 01 8d 	l.bnf e38 <_ntoa_format+0x8f0>
     808:	a6 39 00 10 	l.andi r17,r25,0x10
     80c:	1a a0 00 00 	l.movhi r21,0x0
     810:	e4 11 a8 00 	l.sfeq r17,r21
     814:	10 00 01 6b 	l.bf dc0 <_ntoa_format+0x878>
     818:	1a 20 00 00 	l.movhi r17,0x0
     81c:	a6 39 04 00 	l.andi r17,r25,0x400
     820:	e4 31 a8 00 	l.sfne r17,r21
     824:	10 00 01 5c 	l.bf d94 <_ntoa_format+0x84c>
     828:	aa a0 00 10 	l.ori r21,r0,0x10
     82c:	e4 13 40 00 	l.sfeq r19,r8
     830:	10 00 01 05 	l.bf c44 <_ntoa_format+0x6fc>
     834:	15 00 00 00 	l.nop 0x0
     838:	aa e0 00 10 	l.ori r23,r0,0x10
     83c:	a6 39 00 03 	l.andi r17,r25,0x3
     840:	86 a1 00 34 	l.lwz r21,52(r1)
     844:	e4 35 b8 00 	l.sfne r21,r23
     848:	0c 00 00 b9 	l.bnf b2c <_ntoa_format+0x5e4>
     84c:	e2 71 88 04 	l.or r19,r17,r17
     850:	aa e0 00 02 	l.ori r23,r0,0x2
     854:	86 a1 00 34 	l.lwz r21,52(r1)
     858:	e4 35 b8 00 	l.sfne r21,r23
     85c:	0c 00 00 73 	l.bnf a28 <_ntoa_format+0x4e0>
     860:	aa a0 00 20 	l.ori r21,r0,0x20
     864:	aa 60 00 20 	l.ori r19,r0,0x20
     868:	e4 08 98 00 	l.sfeq r8,r19
     86c:	0c 00 00 a3 	l.bnf af8 <_ntoa_format+0x5b0>
     870:	e2 71 88 04 	l.or r19,r17,r17
     874:	1a 20 00 00 	l.movhi r17,0x0
     878:	e4 33 88 00 	l.sfne r19,r17
     87c:	13 ff ff 84 	l.bf 68c <_ntoa_format+0x144>
     880:	e3 da d0 04 	l.or r30,r26,r26
     884:	aa 20 00 20 	l.ori r17,r0,0x20
     888:	e4 5c 88 00 	l.sfgtu r28,r17
     88c:	0f ff ff cc 	l.bnf 7bc <_ntoa_format+0x274>
     890:	e2 51 88 04 	l.or r18,r17,r17
     894:	e1 da d0 04 	l.or r14,r26,r26
     898:	e0 52 d0 02 	l.sub r2,r18,r26
     89c:	ab c0 00 20 	l.ori r30,r0,0x20
     8a0:	e0 ae 70 04 	l.or r5,r14,r14
     8a4:	e0 d8 c0 04 	l.or r6,r24,r24
     8a8:	e0 96 b0 04 	l.or r4,r22,r22
     8ac:	48 00 a0 00 	l.jalr r20
     8b0:	e0 7e f0 04 	l.or r3,r30,r30
     8b4:	9d ce 00 01 	l.addi r14,r14,1
     8b8:	e2 6e 10 00 	l.add r19,r14,r2
     8bc:	e4 93 e0 00 	l.sfltu r19,r28
     8c0:	13 ff ff f9 	l.bf 8a4 <_ntoa_format+0x35c>
     8c4:	e0 ae 70 04 	l.or r5,r14,r14
     8c8:	9e 32 00 01 	l.addi r17,r18,1
     8cc:	9f dc ff ff 	l.addi r30,r28,-1
     8d0:	e4 7c 88 00 	l.sfgeu r28,r17
     8d4:	10 00 00 03 	l.bf 8e0 <_ntoa_format+0x398>
     8d8:	e3 de 90 02 	l.sub r30,r30,r18
     8dc:	1b c0 00 00 	l.movhi r30,0x0
     8e0:	9e 3a 00 01 	l.addi r17,r26,1
     8e4:	e3 de 88 00 	l.add r30,r30,r17
     8e8:	1a 20 00 00 	l.movhi r17,0x0
     8ec:	e4 32 88 00 	l.sfne r18,r17
     8f0:	13 ff ff 68 	l.bf 690 <_ntoa_format+0x148>
     8f4:	15 00 00 00 	l.nop 0x0
     8f8:	03 ff ff 72 	l.j 6c0 <_ntoa_format+0x178>
     8fc:	e2 5e f0 04 	l.or r18,r30,r30
     900:	e4 1d 88 00 	l.sfeq r29,r17
     904:	10 00 00 c1 	l.bf c08 <_ntoa_format+0x6c0>
     908:	e4 5c 40 00 	l.sfgtu r28,r8
     90c:	0c 00 01 08 	l.bnf d2c <_ntoa_format+0x7e4>
     910:	a6 39 00 10 	l.andi r17,r25,0x10
     914:	1a a0 00 00 	l.movhi r21,0x0
     918:	e4 31 a8 00 	l.sfne r17,r21
     91c:	0c 00 00 b5 	l.bnf bf0 <_ntoa_format+0x6a8>
     920:	15 00 00 00 	l.nop 0x0
     924:	a6 39 04 00 	l.andi r17,r25,0x400
     928:	1a a0 00 00 	l.movhi r21,0x0
     92c:	e4 11 a8 00 	l.sfeq r17,r21
     930:	0c 00 01 18 	l.bnf d90 <_ntoa_format+0x848>
     934:	a9 00 00 20 	l.ori r8,r0,0x20
     938:	e4 13 40 00 	l.sfeq r19,r8
     93c:	10 00 00 c1 	l.bf c40 <_ntoa_format+0x6f8>
     940:	e4 1c 40 00 	l.sfeq r28,r8
     944:	0c 00 00 de 	l.bnf cbc <_ntoa_format+0x774>
     948:	aa e0 00 10 	l.ori r23,r0,0x10
     94c:	e1 1c e0 04 	l.or r8,r28,r28
     950:	aa 60 00 1f 	l.ori r19,r0,0x1f
     954:	aa a0 00 10 	l.ori r21,r0,0x10
     958:	86 21 00 34 	l.lwz r17,52(r1)
     95c:	e4 31 a8 00 	l.sfne r17,r21
     960:	0c 00 00 5c 	l.bnf ad0 <_ntoa_format+0x588>
     964:	aa a0 00 02 	l.ori r21,r0,0x2
     968:	86 21 00 34 	l.lwz r17,52(r1)
     96c:	e4 11 a8 00 	l.sfeq r17,r21
     970:	10 00 00 fa 	l.bf d58 <_ntoa_format+0x810>
     974:	15 00 00 00 	l.nop 0x0
     978:	9d 13 00 01 	l.addi r8,r19,1
     97c:	00 00 00 61 	l.j b00 <_ntoa_format+0x5b8>
     980:	a6 39 00 03 	l.andi r17,r25,0x3
     984:	1a e0 00 00 	l.movhi r23,0x0
     988:	e4 13 b8 00 	l.sfeq r19,r23
     98c:	10 00 00 7a 	l.bf b74 <_ntoa_format+0x62c>
     990:	e2 70 40 00 	l.add r19,r16,r8
     994:	aa a0 00 2b 	l.ori r21,r0,0x2b
     998:	d8 13 a8 00 	l.sb 0(r19),r21
     99c:	e4 11 b8 00 	l.sfeq r17,r23
     9a0:	13 ff ff 84 	l.bf 7b0 <_ntoa_format+0x268>
     9a4:	9e 48 00 01 	l.addi r18,r8,1
     9a8:	03 ff ff 3a 	l.j 690 <_ntoa_format+0x148>
     9ac:	e3 da d0 04 	l.or r30,r26,r26
     9b0:	0f ff ff 28 	l.bnf 650 <_ntoa_format+0x108>
     9b4:	aa 20 00 20 	l.ori r17,r0,0x20
     9b8:	e4 28 88 00 	l.sfne r8,r17
     9bc:	13 ff ff 06 	l.bf 5d4 <_ntoa_format+0x8c>
     9c0:	aa a0 00 30 	l.ori r21,r0,0x30
     9c4:	a6 39 00 10 	l.andi r17,r25,0x10
     9c8:	1a a0 00 00 	l.movhi r21,0x0
     9cc:	e4 31 a8 00 	l.sfne r17,r21
     9d0:	0f ff ff ae 	l.bnf 888 <_ntoa_format+0x340>
     9d4:	aa 20 00 20 	l.ori r17,r0,0x20
     9d8:	a6 39 04 00 	l.andi r17,r25,0x400
     9dc:	1a a0 00 00 	l.movhi r21,0x0
     9e0:	e4 31 a8 00 	l.sfne r17,r21
     9e4:	10 00 01 09 	l.bf e08 <_ntoa_format+0x8c0>
     9e8:	a9 00 00 20 	l.ori r8,r0,0x20
     9ec:	e4 13 40 00 	l.sfeq r19,r8
     9f0:	10 00 00 94 	l.bf c40 <_ntoa_format+0x6f8>
     9f4:	e4 1c 40 00 	l.sfeq r28,r8
     9f8:	13 ff ff d5 	l.bf 94c <_ntoa_format+0x404>
     9fc:	aa 60 00 10 	l.ori r19,r0,0x10
     a00:	86 21 00 34 	l.lwz r17,52(r1)
     a04:	e4 31 98 00 	l.sfne r17,r19
     a08:	0c 00 00 55 	l.bnf b5c <_ntoa_format+0x614>
     a0c:	aa 60 00 02 	l.ori r19,r0,0x2
     a10:	86 21 00 34 	l.lwz r17,52(r1)
     a14:	e4 11 98 00 	l.sfeq r17,r19
     a18:	13 ff ff 9b 	l.bf 884 <_ntoa_format+0x33c>
     a1c:	a6 39 00 03 	l.andi r17,r25,0x3
     a20:	03 ff ff 92 	l.j 868 <_ntoa_format+0x320>
     a24:	aa 60 00 20 	l.ori r19,r0,0x20
     a28:	e4 28 a8 00 	l.sfne r8,r21
     a2c:	0f ff ff 92 	l.bnf 874 <_ntoa_format+0x32c>
     a30:	15 00 00 00 	l.nop 0x0
     a34:	e2 70 40 00 	l.add r19,r16,r8
     a38:	aa a0 00 62 	l.ori r21,r0,0x62
     a3c:	d8 13 a8 00 	l.sb 0(r19),r21
     a40:	03 ff ff 89 	l.j 864 <_ntoa_format+0x31c>
     a44:	9d 08 00 01 	l.addi r8,r8,1
     a48:	1a a0 00 00 	l.movhi r21,0x0
     a4c:	e4 11 a8 00 	l.sfeq r17,r21
     a50:	13 ff ff 0a 	l.bf 678 <_ntoa_format+0x130>
     a54:	a6 39 00 03 	l.andi r17,r25,0x3
     a58:	a6 39 04 00 	l.andi r17,r25,0x400
     a5c:	1a a0 00 00 	l.movhi r21,0x0
     a60:	e4 11 a8 00 	l.sfeq r17,r21
     a64:	0f ff ff 75 	l.bnf 838 <_ntoa_format+0x2f0>
     a68:	a9 00 00 20 	l.ori r8,r0,0x20
     a6c:	e4 13 40 00 	l.sfeq r19,r8
     a70:	10 00 00 06 	l.bf a88 <_ntoa_format+0x540>
     a74:	9e 68 ff ff 	l.addi r19,r8,-1
     a78:	e4 28 e0 00 	l.sfne r8,r28
     a7c:	13 ff ff 70 	l.bf 83c <_ntoa_format+0x2f4>
     a80:	aa e0 00 10 	l.ori r23,r0,0x10
     a84:	9e 68 ff ff 	l.addi r19,r8,-1
     a88:	1a 20 00 00 	l.movhi r17,0x0
     a8c:	e4 13 88 00 	l.sfeq r19,r17
     a90:	0f ff ff b1 	l.bnf 954 <_ntoa_format+0x40c>
     a94:	86 21 00 34 	l.lwz r17,52(r1)
     a98:	aa 60 00 10 	l.ori r19,r0,0x10
     a9c:	e4 31 98 00 	l.sfne r17,r19
     aa0:	0c 00 00 97 	l.bnf cfc <_ntoa_format+0x7b4>
     aa4:	aa 60 00 02 	l.ori r19,r0,0x2
     aa8:	86 21 00 34 	l.lwz r17,52(r1)
     aac:	e4 11 98 00 	l.sfeq r17,r19
     ab0:	0f ff ff 32 	l.bnf 778 <_ntoa_format+0x230>
     ab4:	aa 20 00 62 	l.ori r17,r0,0x62
     ab8:	d8 10 88 00 	l.sb 0(r16),r17
     abc:	aa 20 00 30 	l.ori r17,r0,0x30
     ac0:	d8 10 88 01 	l.sb 1(r16),r17
     ac4:	85 01 00 34 	l.lwz r8,52(r1)
     ac8:	03 ff ff 30 	l.j 788 <_ntoa_format+0x240>
     acc:	a6 39 00 03 	l.andi r17,r25,0x3
     ad0:	a6 79 00 20 	l.andi r19,r25,0x20
     ad4:	1a a0 00 00 	l.movhi r21,0x0
     ad8:	e4 13 a8 00 	l.sfeq r19,r21
     adc:	0c 00 00 a2 	l.bnf d64 <_ntoa_format+0x81c>
     ae0:	9e 28 ff fe 	l.addi r17,r8,-2
     ae4:	e2 30 88 00 	l.add r17,r16,r17
     ae8:	aa 60 00 78 	l.ori r19,r0,0x78
     aec:	d8 11 98 00 	l.sb 0(r17),r19
     af0:	9d 08 ff ff 	l.addi r8,r8,-1
     af4:	a6 39 00 03 	l.andi r17,r25,0x3
     af8:	e2 68 40 04 	l.or r19,r8,r8
     afc:	9d 08 00 01 	l.addi r8,r8,1
     b00:	e2 70 98 00 	l.add r19,r16,r19
     b04:	aa a0 00 30 	l.ori r21,r0,0x30
     b08:	03 ff fe d8 	l.j 668 <_ntoa_format+0x120>
     b0c:	d8 13 a8 00 	l.sb 0(r19),r21
     b10:	03 ff ff 36 	l.j 7e8 <_ntoa_format+0x2a0>
     b14:	9f 9c ff ff 	l.addi r28,r28,-1
     b18:	e4 31 a8 00 	l.sfne r17,r21
     b1c:	13 ff ff 82 	l.bf 924 <_ntoa_format+0x3dc>
     b20:	a6 39 00 03 	l.andi r17,r25,0x3
     b24:	03 ff fe d5 	l.j 678 <_ntoa_format+0x130>
     b28:	15 00 00 00 	l.nop 0x0
     b2c:	a6 b9 00 20 	l.andi r21,r25,0x20
     b30:	1a e0 00 00 	l.movhi r23,0x0
     b34:	e4 35 b8 00 	l.sfne r21,r23
     b38:	0c 00 00 1f 	l.bnf bb4 <_ntoa_format+0x66c>
     b3c:	aa a0 00 20 	l.ori r21,r0,0x20
     b40:	e4 08 a8 00 	l.sfeq r8,r21
     b44:	0c 00 00 6a 	l.bnf cec <_ntoa_format+0x7a4>
     b48:	aa a0 00 58 	l.ori r21,r0,0x58
     b4c:	1a 20 00 00 	l.movhi r17,0x0
     b50:	e4 33 88 00 	l.sfne r19,r17
     b54:	13 ff fe ce 	l.bf 68c <_ntoa_format+0x144>
     b58:	e3 da d0 04 	l.or r30,r26,r26
     b5c:	aa 20 00 20 	l.ori r17,r0,0x20
     b60:	e4 5c 88 00 	l.sfgtu r28,r17
     b64:	13 ff ff 4c 	l.bf 894 <_ntoa_format+0x34c>
     b68:	aa 40 00 20 	l.ori r18,r0,0x20
     b6c:	03 ff fe c9 	l.j 690 <_ntoa_format+0x148>
     b70:	e3 da d0 04 	l.or r30,r26,r26
     b74:	a7 39 00 08 	l.andi r25,r25,0x8
     b78:	e4 19 b8 00 	l.sfeq r25,r23
     b7c:	0c 00 00 17 	l.bnf bd8 <_ntoa_format+0x690>
     b80:	aa a0 00 20 	l.ori r21,r0,0x20
     b84:	1a 60 00 00 	l.movhi r19,0x0
     b88:	e4 31 98 00 	l.sfne r17,r19
     b8c:	10 00 00 3c 	l.bf c7c <_ntoa_format+0x734>
     b90:	e4 88 e0 00 	l.sfltu r8,r28
     b94:	13 ff ff 40 	l.bf 894 <_ntoa_format+0x34c>
     b98:	e2 48 40 04 	l.or r18,r8,r8
     b9c:	1a 20 00 00 	l.movhi r17,0x0
     ba0:	e4 28 88 00 	l.sfne r8,r17
     ba4:	13 ff fe bb 	l.bf 690 <_ntoa_format+0x148>
     ba8:	e3 da d0 04 	l.or r30,r26,r26
     bac:	03 ff fe d6 	l.j 704 <_ntoa_format+0x1bc>
     bb0:	e2 5a d0 04 	l.or r18,r26,r26
     bb4:	e4 28 a8 00 	l.sfne r8,r21
     bb8:	10 00 00 64 	l.bf d48 <_ntoa_format+0x800>
     bbc:	aa a0 00 78 	l.ori r21,r0,0x78
     bc0:	1a 20 00 00 	l.movhi r17,0x0
     bc4:	e4 13 88 00 	l.sfeq r19,r17
     bc8:	0f ff fe b1 	l.bnf 68c <_ntoa_format+0x144>
     bcc:	e3 da d0 04 	l.or r30,r26,r26
     bd0:	03 ff ff e4 	l.j b60 <_ntoa_format+0x618>
     bd4:	aa 20 00 20 	l.ori r17,r0,0x20
     bd8:	d8 13 a8 00 	l.sb 0(r19),r21
     bdc:	e4 31 b8 00 	l.sfne r17,r23
     be0:	0f ff fe f4 	l.bnf 7b0 <_ntoa_format+0x268>
     be4:	9e 48 00 01 	l.addi r18,r8,1
     be8:	03 ff fe aa 	l.j 690 <_ntoa_format+0x148>
     bec:	e3 da d0 04 	l.or r30,r26,r26
     bf0:	a7 39 00 03 	l.andi r25,r25,0x3
     bf4:	e4 19 a8 00 	l.sfeq r25,r21
     bf8:	13 ff ff 27 	l.bf 894 <_ntoa_format+0x34c>
     bfc:	e2 48 40 04 	l.or r18,r8,r8
     c00:	03 ff fe a4 	l.j 690 <_ntoa_format+0x148>
     c04:	e3 da d0 04 	l.or r30,r26,r26
     c08:	a6 39 00 10 	l.andi r17,r25,0x10
     c0c:	1a a0 00 00 	l.movhi r21,0x0
     c10:	e4 31 a8 00 	l.sfne r17,r21
     c14:	0f ff fe 99 	l.bnf 678 <_ntoa_format+0x130>
     c18:	a6 39 00 03 	l.andi r17,r25,0x3
     c1c:	a6 39 04 00 	l.andi r17,r25,0x400
     c20:	1a a0 00 00 	l.movhi r21,0x0
     c24:	e4 31 a8 00 	l.sfne r17,r21
     c28:	10 00 00 6c 	l.bf dd8 <_ntoa_format+0x890>
     c2c:	aa e0 00 10 	l.ori r23,r0,0x10
     c30:	a9 00 00 20 	l.ori r8,r0,0x20
     c34:	e4 13 40 00 	l.sfeq r19,r8
     c38:	0f ff ff 91 	l.bnf a7c <_ntoa_format+0x534>
     c3c:	e4 28 e0 00 	l.sfne r8,r28
     c40:	e1 13 98 04 	l.or r8,r19,r19
     c44:	03 ff ff 44 	l.j 954 <_ntoa_format+0x40c>
     c48:	aa 60 00 1f 	l.ori r19,r0,0x1f
     c4c:	a6 39 00 20 	l.andi r17,r25,0x20
     c50:	1a 60 00 00 	l.movhi r19,0x0
     c54:	e4 11 98 00 	l.sfeq r17,r19
     c58:	10 00 00 03 	l.bf c64 <_ntoa_format+0x71c>
     c5c:	aa 20 00 78 	l.ori r17,r0,0x78
     c60:	aa 20 00 58 	l.ori r17,r0,0x58
     c64:	d8 10 88 00 	l.sb 0(r16),r17
     c68:	aa 20 00 30 	l.ori r17,r0,0x30
     c6c:	d8 10 88 01 	l.sb 1(r16),r17
     c70:	a9 00 00 02 	l.ori r8,r0,0x2
     c74:	03 ff fe c5 	l.j 788 <_ntoa_format+0x240>
     c78:	a6 39 00 03 	l.andi r17,r25,0x3
     c7c:	e2 48 40 04 	l.or r18,r8,r8
     c80:	03 ff ff 1a 	l.j 8e8 <_ntoa_format+0x3a0>
     c84:	e3 da d0 04 	l.or r30,r26,r26
     c88:	1a a0 00 00 	l.movhi r21,0x0
     c8c:	e4 1d a8 00 	l.sfeq r29,r21
     c90:	10 00 00 65 	l.bf e24 <_ntoa_format+0x8dc>
     c94:	a6 39 00 10 	l.andi r17,r25,0x10
     c98:	e4 31 a8 00 	l.sfne r17,r21
     c9c:	0c 00 00 29 	l.bnf d40 <_ntoa_format+0x7f8>
     ca0:	e2 48 40 04 	l.or r18,r8,r8
     ca4:	a6 39 04 00 	l.andi r17,r25,0x400
     ca8:	1a a0 00 00 	l.movhi r21,0x0
     cac:	e4 11 a8 00 	l.sfeq r17,r21
     cb0:	13 ff fe e0 	l.bf 830 <_ntoa_format+0x2e8>
     cb4:	e4 13 40 00 	l.sfeq r19,r8
     cb8:	aa e0 00 10 	l.ori r23,r0,0x10
     cbc:	a6 79 00 03 	l.andi r19,r25,0x3
     cc0:	86 a1 00 34 	l.lwz r21,52(r1)
     cc4:	e4 35 b8 00 	l.sfne r21,r23
     cc8:	0c 00 00 37 	l.bnf da4 <_ntoa_format+0x85c>
     ccc:	e2 33 98 04 	l.or r17,r19,r19
     cd0:	aa e0 00 02 	l.ori r23,r0,0x2
     cd4:	86 a1 00 34 	l.lwz r21,52(r1)
     cd8:	e4 15 b8 00 	l.sfeq r21,r23
     cdc:	0f ff fe e2 	l.bnf 864 <_ntoa_format+0x31c>
     ce0:	15 00 00 00 	l.nop 0x0
     ce4:	03 ff fe e5 	l.j 878 <_ntoa_format+0x330>
     ce8:	1a 20 00 00 	l.movhi r17,0x0
     cec:	e2 70 40 00 	l.add r19,r16,r8
     cf0:	d8 13 a8 00 	l.sb 0(r19),r21
     cf4:	03 ff fe dc 	l.j 864 <_ntoa_format+0x31c>
     cf8:	9d 08 00 01 	l.addi r8,r8,1
     cfc:	a6 39 00 20 	l.andi r17,r25,0x20
     d00:	1a 60 00 00 	l.movhi r19,0x0
     d04:	e4 11 98 00 	l.sfeq r17,r19
     d08:	10 00 00 1d 	l.bf d7c <_ntoa_format+0x834>
     d0c:	15 00 00 00 	l.nop 0x0
     d10:	aa 20 00 58 	l.ori r17,r0,0x58
     d14:	d8 10 88 00 	l.sb 0(r16),r17
     d18:	aa 20 00 30 	l.ori r17,r0,0x30
     d1c:	d8 10 88 01 	l.sb 1(r16),r17
     d20:	a9 00 00 02 	l.ori r8,r0,0x2
     d24:	03 ff fe 99 	l.j 788 <_ntoa_format+0x240>
     d28:	a6 39 00 03 	l.andi r17,r25,0x3
     d2c:	1a a0 00 00 	l.movhi r21,0x0
     d30:	e4 31 a8 00 	l.sfne r17,r21
     d34:	13 ff ff 4b 	l.bf a60 <_ntoa_format+0x518>
     d38:	a6 39 04 00 	l.andi r17,r25,0x400
     d3c:	e2 48 40 04 	l.or r18,r8,r8
     d40:	03 ff fe 54 	l.j 690 <_ntoa_format+0x148>
     d44:	e3 da d0 04 	l.or r30,r26,r26
     d48:	e2 70 40 00 	l.add r19,r16,r8
     d4c:	d8 13 a8 00 	l.sb 0(r19),r21
     d50:	03 ff fe c5 	l.j 864 <_ntoa_format+0x31c>
     d54:	9d 08 00 01 	l.addi r8,r8,1
     d58:	e1 13 98 04 	l.or r8,r19,r19
     d5c:	03 ff ff 36 	l.j a34 <_ntoa_format+0x4ec>
     d60:	a6 39 00 03 	l.andi r17,r25,0x3
     d64:	e2 30 88 00 	l.add r17,r16,r17
     d68:	aa 60 00 58 	l.ori r19,r0,0x58
     d6c:	d8 11 98 00 	l.sb 0(r17),r19
     d70:	9d 08 ff ff 	l.addi r8,r8,-1
     d74:	03 ff ff 61 	l.j af8 <_ntoa_format+0x5b0>
     d78:	a6 39 00 03 	l.andi r17,r25,0x3
     d7c:	aa 20 00 78 	l.ori r17,r0,0x78
     d80:	d8 10 88 00 	l.sb 0(r16),r17
     d84:	aa 20 00 30 	l.ori r17,r0,0x30
     d88:	03 ff ff e6 	l.j d20 <_ntoa_format+0x7d8>
     d8c:	d8 10 88 01 	l.sb 1(r16),r17
     d90:	aa a0 00 10 	l.ori r21,r0,0x10
     d94:	86 21 00 34 	l.lwz r17,52(r1)
     d98:	e4 31 a8 00 	l.sfne r17,r21
     d9c:	13 ff fe b6 	l.bf 874 <_ntoa_format+0x32c>
     da0:	a6 79 00 03 	l.andi r19,r25,0x3
     da4:	a7 39 00 20 	l.andi r25,r25,0x20
     da8:	1a 20 00 00 	l.movhi r17,0x0
     dac:	e4 19 88 00 	l.sfeq r25,r17
     db0:	13 ff ff 85 	l.bf bc4 <_ntoa_format+0x67c>
     db4:	e4 33 88 00 	l.sfne r19,r17
     db8:	03 ff ff 67 	l.j b54 <_ntoa_format+0x60c>
     dbc:	15 00 00 00 	l.nop 0x0
     dc0:	a7 39 00 03 	l.andi r25,r25,0x3
     dc4:	e4 19 88 00 	l.sfeq r25,r17
     dc8:	13 ff fe b3 	l.bf 894 <_ntoa_format+0x34c>
     dcc:	e2 48 40 04 	l.or r18,r8,r8
     dd0:	03 ff fe 30 	l.j 690 <_ntoa_format+0x148>
     dd4:	e3 da d0 04 	l.or r30,r26,r26
     dd8:	a6 79 00 03 	l.andi r19,r25,0x3
     ddc:	86 a1 00 34 	l.lwz r21,52(r1)
     de0:	e4 35 b8 00 	l.sfne r21,r23
     de4:	0f ff ff f0 	l.bnf da4 <_ntoa_format+0x85c>
     de8:	e2 33 98 04 	l.or r17,r19,r19
     dec:	aa e0 00 02 	l.ori r23,r0,0x2
     df0:	86 a1 00 34 	l.lwz r21,52(r1)
     df4:	e4 15 b8 00 	l.sfeq r21,r23
     df8:	13 ff fe 9f 	l.bf 874 <_ntoa_format+0x32c>
     dfc:	15 00 00 00 	l.nop 0x0
     e00:	03 ff fe 99 	l.j 864 <_ntoa_format+0x31c>
     e04:	a9 00 00 20 	l.ori r8,r0,0x20
     e08:	aa 60 00 10 	l.ori r19,r0,0x10
     e0c:	86 21 00 34 	l.lwz r17,52(r1)
     e10:	e4 31 98 00 	l.sfne r17,r19
     e14:	13 ff fe 9c 	l.bf 884 <_ntoa_format+0x33c>
     e18:	aa 20 00 20 	l.ori r17,r0,0x20
     e1c:	03 ff ff 52 	l.j b64 <_ntoa_format+0x61c>
     e20:	e4 5c 88 00 	l.sfgtu r28,r17
     e24:	e4 31 a8 00 	l.sfne r17,r21
     e28:	13 ff fe ee 	l.bf 9e0 <_ntoa_format+0x498>
     e2c:	a6 39 04 00 	l.andi r17,r25,0x400
     e30:	03 ff ff c4 	l.j d40 <_ntoa_format+0x7f8>
     e34:	e2 48 40 04 	l.or r18,r8,r8
     e38:	1a a0 00 00 	l.movhi r21,0x0
     e3c:	e4 31 a8 00 	l.sfne r17,r21
     e40:	13 ff ff 79 	l.bf c24 <_ntoa_format+0x6dc>
     e44:	a6 39 04 00 	l.andi r17,r25,0x400
     e48:	03 ff ff be 	l.j d40 <_ntoa_format+0x7f8>
     e4c:	e2 48 40 04 	l.or r18,r8,r8

00000e50 <_ntoa_long>:
     e50:	9c 21 ff c8 	l.addi r1,r1,-56
     e54:	1a a0 00 00 	l.movhi r21,0x0
     e58:	d4 01 48 34 	l.sw 52(r1),r9
     e5c:	e4 27 a8 00 	l.sfne r7,r21
     e60:	e2 e7 38 04 	l.or r23,r7,r7
     e64:	a5 88 00 ff 	l.andi r12,r8,0xff
     e68:	87 21 00 38 	l.lwz r25,56(r1)
     e6c:	10 00 00 07 	l.bf e88 <_ntoa_long+0x38>
     e70:	85 e1 00 44 	l.lwz r15,68(r1)
     e74:	a6 2f 04 00 	l.andi r17,r15,0x400
     e78:	ae 60 ff ef 	l.xori r19,r0,-17
     e7c:	e4 31 a8 00 	l.sfne r17,r21
     e80:	10 00 00 30 	l.bf f40 <_ntoa_long+0xf0>
     e84:	e1 ef 98 03 	l.and r15,r15,r19
     e88:	a6 2f 00 20 	l.andi r17,r15,0x20
     e8c:	1a 60 00 00 	l.movhi r19,0x0
     e90:	e4 31 98 00 	l.sfne r17,r19
     e94:	0c 00 00 29 	l.bnf f38 <_ntoa_long+0xe8>
     e98:	ab a0 00 41 	l.ori r29,r0,0x41
     e9c:	a7 bd 00 ff 	l.andi r29,r29,0xff
     ea0:	19 00 00 00 	l.movhi r8,0x0
     ea4:	9c e1 00 14 	l.addi r7,r1,20
     ea8:	ab e0 00 09 	l.ori r31,r0,0x9
     eac:	9f bd ff f6 	l.addi r29,r29,-10
     eb0:	00 00 00 05 	l.j ec4 <_ntoa_long+0x74>
     eb4:	a9 a0 00 20 	l.ori r13,r0,0x20
     eb8:	e4 28 68 00 	l.sfne r8,r13
     ebc:	0c 00 00 14 	l.bnf f0c <_ntoa_long+0xbc>
     ec0:	e2 fb d8 04 	l.or r23,r27,r27
     ec4:	e3 77 cb 0a 	l.divu r27,r23,r25
     ec8:	e2 7b cb 06 	l.mul r19,r27,r25
     ecc:	e2 77 98 02 	l.sub r19,r23,r19
     ed0:	a6 b3 00 ff 	l.andi r21,r19,0xff
     ed4:	9e 35 00 30 	l.addi r17,r21,48
     ed8:	e4 53 f8 00 	l.sfgtu r19,r31
     edc:	aa 60 00 18 	l.ori r19,r0,0x18
     ee0:	e2 b5 e8 00 	l.add r21,r21,r29
     ee4:	0c 00 00 04 	l.bnf ef4 <_ntoa_long+0xa4>
     ee8:	e2 31 98 08 	l.sll r17,r17,r19
     eec:	aa 60 00 18 	l.ori r19,r0,0x18
     ef0:	e2 35 98 08 	l.sll r17,r21,r19
     ef4:	9d 08 00 01 	l.addi r8,r8,1
     ef8:	e2 31 98 88 	l.sra r17,r17,r19
     efc:	e2 67 40 00 	l.add r19,r7,r8
     f00:	e4 97 c8 00 	l.sfltu r23,r25
     f04:	0f ff ff ed 	l.bnf eb8 <_ntoa_long+0x68>
     f08:	db f3 8f ff 	l.sb -1(r19),r17
     f0c:	86 21 00 40 	l.lwz r17,64(r1)
     f10:	d4 01 78 10 	l.sw 16(r1),r15
     f14:	d4 01 88 0c 	l.sw 12(r1),r17
     f18:	d4 01 c8 04 	l.sw 4(r1),r25
     f1c:	86 21 00 3c 	l.lwz r17,60(r1)
     f20:	d8 01 60 03 	l.sb 3(r1),r12
     f24:	07 ff fd 89 	l.jal 548 <_ntoa_format>
     f28:	d4 01 88 08 	l.sw 8(r1),r17
     f2c:	85 21 00 34 	l.lwz r9,52(r1)
     f30:	44 00 48 00 	l.jr r9
     f34:	9c 21 00 38 	l.addi r1,r1,56
     f38:	03 ff ff d9 	l.j e9c <_ntoa_long+0x4c>
     f3c:	ab a0 00 61 	l.ori r29,r0,0x61
     f40:	19 00 00 00 	l.movhi r8,0x0
     f44:	03 ff ff f2 	l.j f0c <_ntoa_long+0xbc>
     f48:	9c e1 00 14 	l.addi r7,r1,20

00000f4c <_ntoa_long_long>:
     f4c:	9c 21 ff 90 	l.addi r1,r1,-112
     f50:	e2 27 40 04 	l.or r17,r7,r8
     f54:	1a a0 00 00 	l.movhi r21,0x0
     f58:	d4 01 70 44 	l.sw 68(r1),r14
     f5c:	d4 01 80 48 	l.sw 72(r1),r16
     f60:	d4 01 90 4c 	l.sw 76(r1),r18
     f64:	d4 01 f0 64 	l.sw 100(r1),r30
     f68:	d4 01 10 68 	l.sw 104(r1),r2
     f6c:	d4 01 a0 50 	l.sw 80(r1),r20
     f70:	d4 01 b0 54 	l.sw 84(r1),r22
     f74:	d4 01 c0 58 	l.sw 88(r1),r24
     f78:	d4 01 d0 5c 	l.sw 92(r1),r26
     f7c:	d4 01 e0 60 	l.sw 96(r1),r28
     f80:	d4 01 48 6c 	l.sw 108(r1),r9
     f84:	d4 01 18 14 	l.sw 20(r1),r3
     f88:	d4 01 20 18 	l.sw 24(r1),r4
     f8c:	d4 01 28 1c 	l.sw 28(r1),r5
     f90:	d4 01 30 20 	l.sw 32(r1),r6
     f94:	e4 31 a8 00 	l.sfne r17,r21
     f98:	e1 c7 38 04 	l.or r14,r7,r7
     f9c:	e2 08 40 04 	l.or r16,r8,r8
     fa0:	84 41 00 74 	l.lwz r2,116(r1)
     fa4:	86 41 00 78 	l.lwz r18,120(r1)
     fa8:	10 00 00 08 	l.bf fc8 <_ntoa_long_long+0x7c>
     fac:	87 c1 00 84 	l.lwz r30,132(r1)
     fb0:	a6 7e 04 00 	l.andi r19,r30,0x400
     fb4:	ae 20 ff ef 	l.xori r17,r0,-17
     fb8:	e2 3e 88 03 	l.and r17,r30,r17
     fbc:	e4 33 a8 00 	l.sfne r19,r21
     fc0:	10 00 00 32 	l.bf 1088 <_ntoa_long_long+0x13c>
     fc4:	e3 d1 88 04 	l.or r30,r17,r17
     fc8:	a6 3e 00 20 	l.andi r17,r30,0x20
     fcc:	1a 60 00 00 	l.movhi r19,0x0
     fd0:	e4 31 98 00 	l.sfne r17,r19
     fd4:	0c 00 00 4b 	l.bnf 1100 <_ntoa_long_long+0x1b4>
     fd8:	aa 80 00 41 	l.ori r20,r0,0x41
     fdc:	a6 94 00 ff 	l.andi r20,r20,0xff
     fe0:	1b 80 00 00 	l.movhi r28,0x0
     fe4:	9e c1 00 24 	l.addi r22,r1,36
     fe8:	ab 00 00 09 	l.ori r24,r0,0x9
     fec:	9e 94 ff f6 	l.addi r20,r20,-10
     ff0:	00 00 00 14 	l.j 1040 <_ntoa_long_long+0xf4>
     ff4:	ab 40 00 20 	l.ori r26,r0,0x20
     ff8:	e2 31 a8 88 	l.sra r17,r17,r21
     ffc:	9f 9c 00 01 	l.addi r28,r28,1
    1000:	e2 76 e0 00 	l.add r19,r22,r28
    1004:	e0 a2 10 04 	l.or r5,r2,r2
    1008:	e0 d2 90 04 	l.or r6,r18,r18
    100c:	e0 6e 70 04 	l.or r3,r14,r14
    1010:	e0 90 80 04 	l.or r4,r16,r16
    1014:	04 00 03 bc 	l.jal 1f04 <__udivdi3>
    1018:	db f3 8f ff 	l.sb -1(r19),r17
    101c:	e4 42 70 00 	l.sfgtu r2,r14
    1020:	10 00 00 1c 	l.bf 1090 <_ntoa_long_long+0x144>
    1024:	e4 22 70 00 	l.sfne r2,r14
    1028:	0c 00 00 38 	l.bnf 1108 <_ntoa_long_long+0x1bc>
    102c:	e4 52 80 00 	l.sfgtu r18,r16
    1030:	e4 3c d0 00 	l.sfne r28,r26
    1034:	0c 00 00 17 	l.bnf 1090 <_ntoa_long_long+0x144>
    1038:	e1 cb 58 04 	l.or r14,r11,r11
    103c:	e2 0c 60 04 	l.or r16,r12,r12
    1040:	e0 a2 10 04 	l.or r5,r2,r2
    1044:	e0 d2 90 04 	l.or r6,r18,r18
    1048:	e0 6e 70 04 	l.or r3,r14,r14
    104c:	04 00 05 1d 	l.jal 24c0 <__umoddi3>
    1050:	e0 90 80 04 	l.or r4,r16,r16
    1054:	aa a0 00 18 	l.ori r21,r0,0x18
    1058:	e2 6c a8 08 	l.sll r19,r12,r21
    105c:	e2 73 a8 88 	l.sra r19,r19,r21
    1060:	a5 8c 00 ff 	l.andi r12,r12,0xff
    1064:	9e 2c 00 30 	l.addi r17,r12,48
    1068:	e5 53 c0 00 	l.sfgts r19,r24
    106c:	e1 8c a0 00 	l.add r12,r12,r20
    1070:	0f ff ff e2 	l.bnf ff8 <_ntoa_long_long+0xac>
    1074:	e2 31 a8 08 	l.sll r17,r17,r21
    1078:	aa 60 00 18 	l.ori r19,r0,0x18
    107c:	e2 2c 98 08 	l.sll r17,r12,r19
    1080:	03 ff ff df 	l.j ffc <_ntoa_long_long+0xb0>
    1084:	e2 31 98 88 	l.sra r17,r17,r19
    1088:	1b 80 00 00 	l.movhi r28,0x0
    108c:	9e c1 00 24 	l.addi r22,r1,36
    1090:	86 21 00 80 	l.lwz r17,128(r1)
    1094:	d4 01 88 0c 	l.sw 12(r1),r17
    1098:	86 21 00 7c 	l.lwz r17,124(r1)
    109c:	d4 01 88 08 	l.sw 8(r1),r17
    10a0:	8e 21 00 73 	l.lbz r17,115(r1)
    10a4:	d4 01 f0 10 	l.sw 16(r1),r30
    10a8:	d4 01 90 04 	l.sw 4(r1),r18
    10ac:	d8 01 88 03 	l.sb 3(r1),r17
    10b0:	e1 1c e0 04 	l.or r8,r28,r28
    10b4:	e0 f6 b0 04 	l.or r7,r22,r22
    10b8:	84 c1 00 20 	l.lwz r6,32(r1)
    10bc:	84 a1 00 1c 	l.lwz r5,28(r1)
    10c0:	84 81 00 18 	l.lwz r4,24(r1)
    10c4:	07 ff fd 21 	l.jal 548 <_ntoa_format>
    10c8:	84 61 00 14 	l.lwz r3,20(r1)
    10cc:	85 21 00 6c 	l.lwz r9,108(r1)
    10d0:	85 c1 00 44 	l.lwz r14,68(r1)
    10d4:	86 01 00 48 	l.lwz r16,72(r1)
    10d8:	86 41 00 4c 	l.lwz r18,76(r1)
    10dc:	86 81 00 50 	l.lwz r20,80(r1)
    10e0:	86 c1 00 54 	l.lwz r22,84(r1)
    10e4:	87 01 00 58 	l.lwz r24,88(r1)
    10e8:	87 41 00 5c 	l.lwz r26,92(r1)
    10ec:	87 81 00 60 	l.lwz r28,96(r1)
    10f0:	87 c1 00 64 	l.lwz r30,100(r1)
    10f4:	84 41 00 68 	l.lwz r2,104(r1)
    10f8:	44 00 48 00 	l.jr r9
    10fc:	9c 21 00 70 	l.addi r1,r1,112
    1100:	03 ff ff b7 	l.j fdc <_ntoa_long_long+0x90>
    1104:	aa 80 00 61 	l.ori r20,r0,0x61
    1108:	0f ff ff cb 	l.bnf 1034 <_ntoa_long_long+0xe8>
    110c:	e4 3c d0 00 	l.sfne r28,r26
    1110:	03 ff ff e1 	l.j 1094 <_ntoa_long_long+0x148>
    1114:	86 21 00 80 	l.lwz r17,128(r1)

00001118 <_out_char>:
    1118:	aa 20 00 18 	l.ori r17,r0,0x18
    111c:	e0 63 88 08 	l.sll r3,r3,r17
    1120:	e0 63 88 88 	l.sra r3,r3,r17
    1124:	1a 20 00 00 	l.movhi r17,0x0
    1128:	e4 03 88 00 	l.sfeq r3,r17
    112c:	0c 00 00 04 	l.bnf 113c <_out_char+0x24>
    1130:	15 00 00 00 	l.nop 0x0
    1134:	44 00 48 00 	l.jr r9
    1138:	15 00 00 00 	l.nop 0x0
    113c:	03 ff fc c5 	l.j 450 <_putchar>
    1140:	15 00 00 00 	l.nop 0x0

00001144 <_out_fct>:
    1144:	aa 20 00 18 	l.ori r17,r0,0x18
    1148:	e0 63 88 08 	l.sll r3,r3,r17
    114c:	e0 63 88 88 	l.sra r3,r3,r17
    1150:	1a 20 00 00 	l.movhi r17,0x0
    1154:	e4 03 88 00 	l.sfeq r3,r17
    1158:	10 00 00 05 	l.bf 116c <_out_fct+0x28>
    115c:	15 00 00 00 	l.nop 0x0
    1160:	86 24 00 00 	l.lwz r17,0(r4)
    1164:	44 00 88 00 	l.jr r17
    1168:	84 84 00 04 	l.lwz r4,4(r4)
    116c:	44 00 48 00 	l.jr r9
    1170:	15 00 00 00 	l.nop 0x0

00001174 <_vsnprintf>:
    1174:	9c 21 ff ac 	l.addi r1,r1,-84
    1178:	1a 20 00 00 	l.movhi r17,0x0
    117c:	d4 01 70 28 	l.sw 40(r1),r14
    1180:	d4 01 90 30 	l.sw 48(r1),r18
    1184:	d4 01 a0 34 	l.sw 52(r1),r20
    1188:	d4 01 f0 48 	l.sw 72(r1),r30
    118c:	d4 01 80 2c 	l.sw 44(r1),r16
    1190:	d4 01 b0 38 	l.sw 56(r1),r22
    1194:	d4 01 c0 3c 	l.sw 60(r1),r24
    1198:	d4 01 d0 40 	l.sw 64(r1),r26
    119c:	d4 01 e0 44 	l.sw 68(r1),r28
    11a0:	d4 01 10 4c 	l.sw 76(r1),r2
    11a4:	d4 01 48 50 	l.sw 80(r1),r9
    11a8:	e4 04 88 00 	l.sfeq r4,r17
    11ac:	e2 84 20 04 	l.or r20,r4,r4
    11b0:	e2 45 28 04 	l.or r18,r5,r5
    11b4:	e3 c6 30 04 	l.or r30,r6,r6
    11b8:	10 00 01 7d 	l.bf 17ac <_vsnprintf+0x638>
    11bc:	e1 c7 38 04 	l.or r14,r7,r7
    11c0:	e2 c3 18 04 	l.or r22,r3,r3
    11c4:	1a 20 00 00 	l.movhi r17,0x0
    11c8:	90 7e 00 00 	l.lbs r3,0(r30)
    11cc:	e4 23 88 00 	l.sfne r3,r17
    11d0:	0c 00 01 7e 	l.bnf 17c8 <_vsnprintf+0x654>
    11d4:	18 40 00 00 	l.movhi r2,0x0
    11d8:	1a 20 00 12 	l.movhi r17,0x12
    11dc:	aa 31 08 21 	l.ori r17,r17,0x821
    11e0:	00 00 00 0c 	l.j 1210 <_vsnprintf+0x9c>
    11e4:	d4 01 88 1c 	l.sw 28(r1),r17
    11e8:	e0 a2 10 04 	l.or r5,r2,r2
    11ec:	e0 d2 90 04 	l.or r6,r18,r18
    11f0:	e0 94 a0 04 	l.or r4,r20,r20
    11f4:	48 00 b0 00 	l.jalr r22
    11f8:	9c 42 00 01 	l.addi r2,r2,1
    11fc:	90 7e 00 00 	l.lbs r3,0(r30)
    1200:	1a 20 00 00 	l.movhi r17,0x0
    1204:	e4 23 88 00 	l.sfne r3,r17
    1208:	0c 00 00 b2 	l.bnf 14d0 <_vsnprintf+0x35c>
    120c:	e2 02 10 04 	l.or r16,r2,r2
    1210:	aa 20 00 25 	l.ori r17,r0,0x25
    1214:	e4 03 88 00 	l.sfeq r3,r17
    1218:	0f ff ff f4 	l.bnf 11e8 <_vsnprintf+0x74>
    121c:	9f de 00 01 	l.addi r30,r30,1
    1220:	aa a0 00 2b 	l.ori r21,r0,0x2b
    1224:	90 7e 00 00 	l.lbs r3,0(r30)
    1228:	e4 03 a8 00 	l.sfeq r3,r21
    122c:	1a 00 00 00 	l.movhi r16,0x0
    1230:	ab a0 00 30 	l.ori r29,r0,0x30
    1234:	ab 20 00 20 	l.ori r25,r0,0x20
    1238:	ab 60 00 23 	l.ori r27,r0,0x23
    123c:	10 00 00 10 	l.bf 127c <_vsnprintf+0x108>
    1240:	9e 7e 00 01 	l.addi r19,r30,1
    1244:	e5 43 a8 00 	l.sfgts r3,r21
    1248:	10 00 00 10 	l.bf 1288 <_vsnprintf+0x114>
    124c:	aa 20 00 2d 	l.ori r17,r0,0x2d
    1250:	e4 03 c8 00 	l.sfeq r3,r25
    1254:	10 00 00 15 	l.bf 12a8 <_vsnprintf+0x134>
    1258:	e4 03 d8 00 	l.sfeq r3,r27
    125c:	0c 00 00 48 	l.bnf 137c <_vsnprintf+0x208>
    1260:	aa 20 00 2a 	l.ori r17,r0,0x2a
    1264:	aa 10 00 10 	l.ori r16,r16,0x10
    1268:	e3 d3 98 04 	l.or r30,r19,r19
    126c:	90 7e 00 00 	l.lbs r3,0(r30)
    1270:	e4 03 a8 00 	l.sfeq r3,r21
    1274:	0f ff ff f4 	l.bnf 1244 <_vsnprintf+0xd0>
    1278:	9e 7e 00 01 	l.addi r19,r30,1
    127c:	aa 10 00 04 	l.ori r16,r16,0x4
    1280:	03 ff ff fb 	l.j 126c <_vsnprintf+0xf8>
    1284:	e3 d3 98 04 	l.or r30,r19,r19
    1288:	e4 03 88 00 	l.sfeq r3,r17
    128c:	10 00 00 0a 	l.bf 12b4 <_vsnprintf+0x140>
    1290:	e4 23 e8 00 	l.sfne r3,r29
    1294:	10 00 00 0b 	l.bf 12c0 <_vsnprintf+0x14c>
    1298:	15 00 00 00 	l.nop 0x0
    129c:	aa 10 00 01 	l.ori r16,r16,0x1
    12a0:	03 ff ff f3 	l.j 126c <_vsnprintf+0xf8>
    12a4:	e3 d3 98 04 	l.or r30,r19,r19
    12a8:	aa 10 00 08 	l.ori r16,r16,0x8
    12ac:	03 ff ff f0 	l.j 126c <_vsnprintf+0xf8>
    12b0:	e3 d3 98 04 	l.or r30,r19,r19
    12b4:	aa 10 00 02 	l.ori r16,r16,0x2
    12b8:	03 ff ff ed 	l.j 126c <_vsnprintf+0xf8>
    12bc:	e3 d3 98 04 	l.or r30,r19,r19
    12c0:	9e a3 ff d0 	l.addi r21,r3,-48
    12c4:	a6 b5 00 ff 	l.andi r21,r21,0xff
    12c8:	ab 60 00 09 	l.ori r27,r0,0x9
    12cc:	e4 b5 d8 00 	l.sfleu r21,r27
    12d0:	0c 00 00 0f 	l.bnf 130c <_vsnprintf+0x198>
    12d4:	1b 80 00 00 	l.movhi r28,0x0
    12d8:	aa 20 00 02 	l.ori r17,r0,0x2
    12dc:	e2 3c 88 08 	l.sll r17,r28,r17
    12e0:	e2 31 e0 00 	l.add r17,r17,r28
    12e4:	e2 31 88 00 	l.add r17,r17,r17
    12e8:	e2 b1 18 00 	l.add r21,r17,r3
    12ec:	90 73 00 00 	l.lbs r3,0(r19)
    12f0:	9f 23 ff d0 	l.addi r25,r3,-48
    12f4:	a7 39 00 ff 	l.andi r25,r25,0xff
    12f8:	e4 b9 d8 00 	l.sfleu r25,r27
    12fc:	e3 d3 98 04 	l.or r30,r19,r19
    1300:	9f 95 ff d0 	l.addi r28,r21,-48
    1304:	13 ff ff f5 	l.bf 12d8 <_vsnprintf+0x164>
    1308:	9e 73 00 01 	l.addi r19,r19,1
    130c:	aa 20 00 2e 	l.ori r17,r0,0x2e
    1310:	e4 23 88 00 	l.sfne r3,r17
    1314:	10 00 00 2a 	l.bf 13bc <_vsnprintf+0x248>
    1318:	1b 40 00 00 	l.movhi r26,0x0
    131c:	90 7e 00 01 	l.lbs r3,1(r30)
    1320:	9f 23 ff d0 	l.addi r25,r3,-48
    1324:	a7 39 00 ff 	l.andi r25,r25,0xff
    1328:	ab a0 00 09 	l.ori r29,r0,0x9
    132c:	e4 59 e8 00 	l.sfgtu r25,r29
    1330:	e3 73 98 04 	l.or r27,r19,r19
    1334:	0c 00 01 4c 	l.bnf 1864 <_vsnprintf+0x6f0>
    1338:	aa 10 04 00 	l.ori r16,r16,0x400
    133c:	aa 20 00 2a 	l.ori r17,r0,0x2a
    1340:	e4 23 88 00 	l.sfne r3,r17
    1344:	0c 00 01 5d 	l.bnf 18b8 <_vsnprintf+0x744>
    1348:	ab 60 00 6c 	l.ori r27,r0,0x6c
    134c:	e3 d3 98 04 	l.or r30,r19,r19
    1350:	e4 03 d8 00 	l.sfeq r3,r27
    1354:	9e 73 00 01 	l.addi r19,r19,1
    1358:	1b 40 00 00 	l.movhi r26,0x0
    135c:	0c 00 00 1c 	l.bnf 13cc <_vsnprintf+0x258>
    1360:	e3 b3 98 04 	l.or r29,r19,r19
    1364:	90 7e 00 01 	l.lbs r3,1(r30)
    1368:	e4 03 d8 00 	l.sfeq r3,r27
    136c:	10 00 01 72 	l.bf 1934 <_vsnprintf+0x7c0>
    1370:	15 00 00 00 	l.nop 0x0
    1374:	00 00 00 21 	l.j 13f8 <_vsnprintf+0x284>
    1378:	aa 10 01 00 	l.ori r16,r16,0x100
    137c:	e4 03 88 00 	l.sfeq r3,r17
    1380:	0c 00 00 6a 	l.bnf 1528 <_vsnprintf+0x3b4>
    1384:	1a 20 00 00 	l.movhi r17,0x0
    1388:	86 ae 00 00 	l.lwz r21,0(r14)
    138c:	e5 75 88 00 	l.sfges r21,r17
    1390:	0c 00 00 95 	l.bnf 15e4 <_vsnprintf+0x470>
    1394:	9f 2e 00 04 	l.addi r25,r14,4
    1398:	e3 95 a8 04 	l.or r28,r21,r21
    139c:	90 7e 00 01 	l.lbs r3,1(r30)
    13a0:	aa 20 00 2e 	l.ori r17,r0,0x2e
    13a4:	e4 23 88 00 	l.sfne r3,r17
    13a8:	e3 d3 98 04 	l.or r30,r19,r19
    13ac:	e1 d9 c8 04 	l.or r14,r25,r25
    13b0:	0f ff ff db 	l.bnf 131c <_vsnprintf+0x1a8>
    13b4:	9e 73 00 01 	l.addi r19,r19,1
    13b8:	1b 40 00 00 	l.movhi r26,0x0
    13bc:	ab 60 00 6c 	l.ori r27,r0,0x6c
    13c0:	e4 03 d8 00 	l.sfeq r3,r27
    13c4:	13 ff ff e8 	l.bf 1364 <_vsnprintf+0x1f0>
    13c8:	e3 b3 98 04 	l.or r29,r19,r19
    13cc:	e5 43 d8 00 	l.sfgts r3,r27
    13d0:	10 00 00 58 	l.bf 1530 <_vsnprintf+0x3bc>
    13d4:	ab 60 00 68 	l.ori r27,r0,0x68
    13d8:	e4 03 d8 00 	l.sfeq r3,r27
    13dc:	10 00 00 85 	l.bf 15f0 <_vsnprintf+0x47c>
    13e0:	aa 20 00 6a 	l.ori r17,r0,0x6a
    13e4:	e4 03 88 00 	l.sfeq r3,r17
    13e8:	0c 00 00 59 	l.bnf 154c <_vsnprintf+0x3d8>
    13ec:	15 00 00 00 	l.nop 0x0
    13f0:	aa 10 02 00 	l.ori r16,r16,0x200
    13f4:	90 7e 00 01 	l.lbs r3,1(r30)
    13f8:	aa 20 00 78 	l.ori r17,r0,0x78
    13fc:	e5 43 88 00 	l.sfgts r3,r17
    1400:	13 ff ff 7a 	l.bf 11e8 <_vsnprintf+0x74>
    1404:	9f dd 00 01 	l.addi r30,r29,1
    1408:	aa 60 00 63 	l.ori r19,r0,0x63
    140c:	e5 43 98 00 	l.sfgts r3,r19
    1410:	10 00 00 54 	l.bf 1560 <_vsnprintf+0x3ec>
    1414:	aa 20 00 62 	l.ori r17,r0,0x62
    1418:	e4 03 88 00 	l.sfeq r3,r17
    141c:	10 00 01 be 	l.bf 1b14 <_vsnprintf+0x9a0>
    1420:	e4 03 98 00 	l.sfeq r3,r19
    1424:	10 00 00 79 	l.bf 1608 <_vsnprintf+0x494>
    1428:	aa 20 00 25 	l.ori r17,r0,0x25
    142c:	e4 03 88 00 	l.sfeq r3,r17
    1430:	13 ff ff 6f 	l.bf 11ec <_vsnprintf+0x78>
    1434:	e0 a2 10 04 	l.or r5,r2,r2
    1438:	aa 20 00 58 	l.ori r17,r0,0x58
    143c:	e4 23 88 00 	l.sfne r3,r17
    1440:	13 ff ff 6c 	l.bf 11f0 <_vsnprintf+0x7c>
    1444:	e0 d2 90 04 	l.or r6,r18,r18
    1448:	aa 10 00 20 	l.ori r16,r16,0x20
    144c:	ab 60 00 10 	l.ori r27,r0,0x10
    1450:	a6 70 04 00 	l.andi r19,r16,0x400
    1454:	1a 20 00 00 	l.movhi r17,0x0
    1458:	e4 13 88 00 	l.sfeq r19,r17
    145c:	0c 00 01 3e 	l.bnf 1954 <_vsnprintf+0x7e0>
    1460:	ae 60 ff f2 	l.xori r19,r0,-14
    1464:	ae 60 ff f3 	l.xori r19,r0,-13
    1468:	e2 70 98 03 	l.and r19,r16,r19
    146c:	a7 b3 02 00 	l.andi r29,r19,0x200
    1470:	1a 20 00 00 	l.movhi r17,0x0
    1474:	e4 1d 88 00 	l.sfeq r29,r17
    1478:	0c 00 01 a9 	l.bnf 1b1c <_vsnprintf+0x9a8>
    147c:	a7 b3 01 00 	l.andi r29,r19,0x100
    1480:	1a 20 00 00 	l.movhi r17,0x0
    1484:	e4 1d 88 00 	l.sfeq r29,r17
    1488:	0c 00 01 c1 	l.bnf 1b8c <_vsnprintf+0xa18>
    148c:	9e 0e 00 04 	l.addi r16,r14,4
    1490:	a7 b3 00 40 	l.andi r29,r19,0x40
    1494:	1a 20 00 00 	l.movhi r17,0x0
    1498:	e4 1d 88 00 	l.sfeq r29,r17
    149c:	0c 00 01 b2 	l.bnf 1b64 <_vsnprintf+0x9f0>
    14a0:	a7 b3 00 80 	l.andi r29,r19,0x80
    14a4:	1a 20 00 00 	l.movhi r17,0x0
    14a8:	e4 1d 88 00 	l.sfeq r29,r17
    14ac:	10 00 01 c6 	l.bf 1bc4 <_vsnprintf+0xa50>
    14b0:	15 00 00 00 	l.nop 0x0
    14b4:	94 ee 00 02 	l.lhz r7,2(r14)
    14b8:	d4 01 98 0c 	l.sw 12(r1),r19
    14bc:	d4 01 e0 08 	l.sw 8(r1),r28
    14c0:	d4 01 d0 04 	l.sw 4(r1),r26
    14c4:	d4 01 d8 00 	l.sw 0(r1),r27
    14c8:	00 00 01 6c 	l.j 1a78 <_vsnprintf+0x904>
    14cc:	19 00 00 00 	l.movhi r8,0x0
    14d0:	e4 52 10 00 	l.sfgtu r18,r2
    14d4:	10 00 00 03 	l.bf 14e0 <_vsnprintf+0x36c>
    14d8:	e0 d2 90 04 	l.or r6,r18,r18
    14dc:	9c 52 ff ff 	l.addi r2,r18,-1
    14e0:	e0 a2 10 04 	l.or r5,r2,r2
    14e4:	e0 94 a0 04 	l.or r4,r20,r20
    14e8:	48 00 b0 00 	l.jalr r22
    14ec:	18 60 00 00 	l.movhi r3,0x0
    14f0:	e1 70 80 04 	l.or r11,r16,r16
    14f4:	85 c1 00 28 	l.lwz r14,40(r1)
    14f8:	86 01 00 2c 	l.lwz r16,44(r1)
    14fc:	86 41 00 30 	l.lwz r18,48(r1)
    1500:	86 81 00 34 	l.lwz r20,52(r1)
    1504:	86 c1 00 38 	l.lwz r22,56(r1)
    1508:	87 01 00 3c 	l.lwz r24,60(r1)
    150c:	87 41 00 40 	l.lwz r26,64(r1)
    1510:	87 81 00 44 	l.lwz r28,68(r1)
    1514:	87 c1 00 48 	l.lwz r30,72(r1)
    1518:	84 41 00 4c 	l.lwz r2,76(r1)
    151c:	85 21 00 50 	l.lwz r9,80(r1)
    1520:	44 00 48 00 	l.jr r9
    1524:	9c 21 00 54 	l.addi r1,r1,84
    1528:	03 ff ff a4 	l.j 13b8 <_vsnprintf+0x244>
    152c:	1b 80 00 00 	l.movhi r28,0x0
    1530:	aa 20 00 7a 	l.ori r17,r0,0x7a
    1534:	e4 03 88 00 	l.sfeq r3,r17
    1538:	0c 00 00 07 	l.bnf 1554 <_vsnprintf+0x3e0>
    153c:	aa 20 00 78 	l.ori r17,r0,0x78
    1540:	aa 10 01 00 	l.ori r16,r16,0x100
    1544:	03 ff ff ae 	l.j 13fc <_vsnprintf+0x288>
    1548:	90 7e 00 01 	l.lbs r3,1(r30)
    154c:	03 ff ff af 	l.j 1408 <_vsnprintf+0x294>
    1550:	e3 d3 98 04 	l.or r30,r19,r19
    1554:	e5 43 88 00 	l.sfgts r3,r17
    1558:	13 ff ff 24 	l.bf 11e8 <_vsnprintf+0x74>
    155c:	e3 d3 98 04 	l.or r30,r19,r19
    1560:	9e 63 ff 9c 	l.addi r19,r3,-100
    1564:	a6 73 00 ff 	l.andi r19,r19,0xff
    1568:	ab 00 00 01 	l.ori r24,r0,0x1
    156c:	86 21 00 1c 	l.lwz r17,28(r1)
    1570:	e3 18 98 08 	l.sll r24,r24,r19
    1574:	e3 18 88 03 	l.and r24,r24,r17
    1578:	1a 20 00 00 	l.movhi r17,0x0
    157c:	e4 38 88 00 	l.sfne r24,r17
    1580:	10 00 00 94 	l.bf 17d0 <_vsnprintf+0x65c>
    1584:	aa 20 00 73 	l.ori r17,r0,0x73
    1588:	e4 03 88 00 	l.sfeq r3,r17
    158c:	10 00 00 3a 	l.bf 1674 <_vsnprintf+0x500>
    1590:	aa 20 00 70 	l.ori r17,r0,0x70
    1594:	e4 03 88 00 	l.sfeq r3,r17
    1598:	0f ff ff 15 	l.bnf 11ec <_vsnprintf+0x78>
    159c:	e0 a2 10 04 	l.or r5,r2,r2
    15a0:	aa 60 00 08 	l.ori r19,r0,0x8
    15a4:	d4 01 98 08 	l.sw 8(r1),r19
    15a8:	aa 10 00 21 	l.ori r16,r16,0x21
    15ac:	aa 60 00 10 	l.ori r19,r0,0x10
    15b0:	d4 01 80 0c 	l.sw 12(r1),r16
    15b4:	d4 01 d0 04 	l.sw 4(r1),r26
    15b8:	d4 01 98 00 	l.sw 0(r1),r19
    15bc:	19 00 00 00 	l.movhi r8,0x0
    15c0:	e0 d2 90 04 	l.or r6,r18,r18
    15c4:	e0 94 a0 04 	l.or r4,r20,r20
    15c8:	e0 76 b0 04 	l.or r3,r22,r22
    15cc:	84 ee 00 00 	l.lwz r7,0(r14)
    15d0:	07 ff fe 20 	l.jal e50 <_ntoa_long>
    15d4:	9e 0e 00 04 	l.addi r16,r14,4
    15d8:	e0 4b 58 04 	l.or r2,r11,r11
    15dc:	03 ff ff 08 	l.j 11fc <_vsnprintf+0x88>
    15e0:	e1 d0 80 04 	l.or r14,r16,r16
    15e4:	aa 10 00 02 	l.ori r16,r16,0x2
    15e8:	03 ff ff 6d 	l.j 139c <_vsnprintf+0x228>
    15ec:	e3 80 a8 02 	l.sub r28,r0,r21
    15f0:	90 7e 00 01 	l.lbs r3,1(r30)
    15f4:	e4 03 d8 00 	l.sfeq r3,r27
    15f8:	10 00 00 d3 	l.bf 1944 <_vsnprintf+0x7d0>
    15fc:	15 00 00 00 	l.nop 0x0
    1600:	03 ff ff 7e 	l.j 13f8 <_vsnprintf+0x284>
    1604:	aa 10 00 80 	l.ori r16,r16,0x80
    1608:	a6 10 00 02 	l.andi r16,r16,0x2
    160c:	1a 20 00 00 	l.movhi r17,0x0
    1610:	e4 30 88 00 	l.sfne r16,r17
    1614:	9f 02 00 01 	l.addi r24,r2,1
    1618:	0c 00 00 ed 	l.bnf 19cc <_vsnprintf+0x858>
    161c:	9f 4e 00 04 	l.addi r26,r14,4
    1620:	e0 a2 10 04 	l.or r5,r2,r2
    1624:	e0 d2 90 04 	l.or r6,r18,r18
    1628:	e0 94 a0 04 	l.or r4,r20,r20
    162c:	48 00 b0 00 	l.jalr r22
    1630:	8c 6e 00 03 	l.lbz r3,3(r14)
    1634:	aa 20 00 01 	l.ori r17,r0,0x1
    1638:	e4 5c 88 00 	l.sfgtu r28,r17
    163c:	e0 42 e0 00 	l.add r2,r2,r28
    1640:	0c 00 01 50 	l.bnf 1b80 <_vsnprintf+0xa0c>
    1644:	aa 00 00 20 	l.ori r16,r0,0x20
    1648:	e0 b8 c0 04 	l.or r5,r24,r24
    164c:	e0 d2 90 04 	l.or r6,r18,r18
    1650:	e0 94 a0 04 	l.or r4,r20,r20
    1654:	e0 70 80 04 	l.or r3,r16,r16
    1658:	48 00 b0 00 	l.jalr r22
    165c:	9f 18 00 01 	l.addi r24,r24,1
    1660:	e4 38 10 00 	l.sfne r24,r2
    1664:	13 ff ff fa 	l.bf 164c <_vsnprintf+0x4d8>
    1668:	e0 b8 c0 04 	l.or r5,r24,r24
    166c:	03 ff fe e4 	l.j 11fc <_vsnprintf+0x88>
    1670:	e1 da d0 04 	l.or r14,r26,r26
    1674:	86 2e 00 00 	l.lwz r17,0(r14)
    1678:	9e 6e 00 04 	l.addi r19,r14,4
    167c:	d4 01 88 18 	l.sw 24(r1),r17
    1680:	90 71 00 00 	l.lbs r3,0(r17)
    1684:	8f b1 00 00 	l.lbz r29,0(r17)
    1688:	1a 20 00 00 	l.movhi r17,0x0
    168c:	e4 1a 88 00 	l.sfeq r26,r17
    1690:	0c 00 00 85 	l.bnf 18a4 <_vsnprintf+0x730>
    1694:	d4 01 98 20 	l.sw 32(r1),r19
    1698:	1a 20 00 00 	l.movhi r17,0x0
    169c:	e4 03 88 00 	l.sfeq r3,r17
    16a0:	10 00 00 13 	l.bf 16ec <_vsnprintf+0x578>
    16a4:	a5 d0 04 00 	l.andi r14,r16,0x400
    16a8:	af 00 ff fe 	l.xori r24,r0,-2
    16ac:	9f 18 00 01 	l.addi r24,r24,1
    16b0:	86 61 00 18 	l.lwz r19,24(r1)
    16b4:	00 00 00 05 	l.j 16c8 <_vsnprintf+0x554>
    16b8:	e3 13 c0 00 	l.add r24,r19,r24
    16bc:	e4 38 98 00 	l.sfne r24,r19
    16c0:	0c 00 00 9b 	l.bnf 192c <_vsnprintf+0x7b8>
    16c4:	86 21 00 18 	l.lwz r17,24(r1)
    16c8:	93 73 00 01 	l.lbs r27,1(r19)
    16cc:	1a 20 00 00 	l.movhi r17,0x0
    16d0:	e4 3b 88 00 	l.sfne r27,r17
    16d4:	13 ff ff fa 	l.bf 16bc <_vsnprintf+0x548>
    16d8:	9e 73 00 01 	l.addi r19,r19,1
    16dc:	86 21 00 18 	l.lwz r17,24(r1)
    16e0:	e3 13 88 02 	l.sub r24,r19,r17
    16e4:	a5 d0 04 00 	l.andi r14,r16,0x400
    16e8:	1a 20 00 00 	l.movhi r17,0x0
    16ec:	e4 0e 88 00 	l.sfeq r14,r17
    16f0:	10 00 00 07 	l.bf 170c <_vsnprintf+0x598>
    16f4:	a6 30 00 02 	l.andi r17,r16,0x2
    16f8:	e4 b8 d0 00 	l.sfleu r24,r26
    16fc:	10 00 00 05 	l.bf 1710 <_vsnprintf+0x59c>
    1700:	1a 60 00 00 	l.movhi r19,0x0
    1704:	e3 1a d0 04 	l.or r24,r26,r26
    1708:	a6 30 00 02 	l.andi r17,r16,0x2
    170c:	1a 60 00 00 	l.movhi r19,0x0
    1710:	e4 31 98 00 	l.sfne r17,r19
    1714:	0c 00 00 94 	l.bnf 1964 <_vsnprintf+0x7f0>
    1718:	d4 01 88 24 	l.sw 36(r1),r17
    171c:	1a 20 00 00 	l.movhi r17,0x0
    1720:	e4 23 88 00 	l.sfne r3,r17
    1724:	0c 00 00 73 	l.bnf 18f0 <_vsnprintf+0x77c>
    1728:	e4 bc c0 00 	l.sfleu r28,r24
    172c:	00 00 00 03 	l.j 1738 <_vsnprintf+0x5c4>
    1730:	e2 62 10 04 	l.or r19,r2,r2
    1734:	1a 20 00 00 	l.movhi r17,0x0
    1738:	e4 0e 88 00 	l.sfeq r14,r17
    173c:	e0 d2 90 04 	l.or r6,r18,r18
    1740:	e0 b3 98 04 	l.or r5,r19,r19
    1744:	e0 94 a0 04 	l.or r4,r20,r20
    1748:	9e 13 00 01 	l.addi r16,r19,1
    174c:	10 00 00 06 	l.bf 1764 <_vsnprintf+0x5f0>
    1750:	9f ba ff ff 	l.addi r29,r26,-1
    1754:	e4 3a 88 00 	l.sfne r26,r17
    1758:	0c 00 00 81 	l.bnf 195c <_vsnprintf+0x7e8>
    175c:	15 00 00 00 	l.nop 0x0
    1760:	e3 5d e8 04 	l.or r26,r29,r29
    1764:	48 00 b0 00 	l.jalr r22
    1768:	15 00 00 00 	l.nop 0x0
    176c:	e2 70 10 02 	l.sub r19,r16,r2
    1770:	86 21 00 18 	l.lwz r17,24(r1)
    1774:	e2 71 98 00 	l.add r19,r17,r19
    1778:	90 73 00 00 	l.lbs r3,0(r19)
    177c:	1a 20 00 00 	l.movhi r17,0x0
    1780:	e4 23 88 00 	l.sfne r3,r17
    1784:	13 ff ff ec 	l.bf 1734 <_vsnprintf+0x5c0>
    1788:	e2 70 80 04 	l.or r19,r16,r16
    178c:	1a 60 00 00 	l.movhi r19,0x0
    1790:	86 21 00 24 	l.lwz r17,36(r1)
    1794:	e4 11 98 00 	l.sfeq r17,r19
    1798:	0c 00 00 55 	l.bnf 18ec <_vsnprintf+0x778>
    179c:	e4 bc c0 00 	l.sfleu r28,r24
    17a0:	e0 50 80 04 	l.or r2,r16,r16
    17a4:	03 ff fe 96 	l.j 11fc <_vsnprintf+0x88>
    17a8:	85 c1 00 20 	l.lwz r14,32(r1)
    17ac:	90 7e 00 00 	l.lbs r3,0(r30)
    17b0:	1a 20 00 00 	l.movhi r17,0x0
    17b4:	1a c0 00 00 	l.movhi r22,0x0
    17b8:	e4 23 88 00 	l.sfne r3,r17
    17bc:	9e d6 05 40 	l.addi r22,r22,1344
    17c0:	13 ff fe 86 	l.bf 11d8 <_vsnprintf+0x64>
    17c4:	18 40 00 00 	l.movhi r2,0x0
    17c8:	03 ff ff 42 	l.j 14d0 <_vsnprintf+0x35c>
    17cc:	1a 00 00 00 	l.movhi r16,0x0
    17d0:	aa 60 00 6f 	l.ori r19,r0,0x6f
    17d4:	e4 03 98 00 	l.sfeq r3,r19
    17d8:	10 00 00 43 	l.bf 18e4 <_vsnprintf+0x770>
    17dc:	e5 43 98 00 	l.sfgts r3,r19
    17e0:	10 00 00 91 	l.bf 1a24 <_vsnprintf+0x8b0>
    17e4:	aa 20 00 69 	l.ori r17,r0,0x69
    17e8:	ae 60 ff ef 	l.xori r19,r0,-17
    17ec:	e4 03 88 00 	l.sfeq r3,r17
    17f0:	0c 00 00 f9 	l.bnf 1bd4 <_vsnprintf+0xa60>
    17f4:	e2 70 98 03 	l.and r19,r16,r19
    17f8:	a7 70 04 00 	l.andi r27,r16,0x400
    17fc:	1a 20 00 00 	l.movhi r17,0x0
    1800:	e4 1b 88 00 	l.sfeq r27,r17
    1804:	10 00 00 06 	l.bf 181c <_vsnprintf+0x6a8>
    1808:	a7 73 02 00 	l.andi r27,r19,0x200
    180c:	ae 60 ff ee 	l.xori r19,r0,-18
    1810:	e2 70 98 03 	l.and r19,r16,r19
    1814:	a7 73 02 00 	l.andi r27,r19,0x200
    1818:	1a 20 00 00 	l.movhi r17,0x0
    181c:	e4 1b 88 00 	l.sfeq r27,r17
    1820:	0c 00 00 9e 	l.bnf 1a98 <_vsnprintf+0x924>
    1824:	a7 73 01 00 	l.andi r27,r19,0x100
    1828:	1a 20 00 00 	l.movhi r17,0x0
    182c:	e4 1b 88 00 	l.sfeq r27,r17
    1830:	0c 00 00 85 	l.bnf 1a44 <_vsnprintf+0x8d0>
    1834:	9e 0e 00 04 	l.addi r16,r14,4
    1838:	a7 73 00 40 	l.andi r27,r19,0x40
    183c:	1a 20 00 00 	l.movhi r17,0x0
    1840:	e4 1b 88 00 	l.sfeq r27,r17
    1844:	0c 00 00 c6 	l.bnf 1b5c <_vsnprintf+0x9e8>
    1848:	15 00 00 00 	l.nop 0x0
    184c:	a7 73 00 80 	l.andi r27,r19,0x80
    1850:	e4 1b 88 00 	l.sfeq r27,r17
    1854:	10 00 00 7c 	l.bf 1a44 <_vsnprintf+0x8d0>
    1858:	15 00 00 00 	l.nop 0x0
    185c:	00 00 00 7b 	l.j 1a48 <_vsnprintf+0x8d4>
    1860:	9b 6e 00 02 	l.lhs r27,2(r14)
    1864:	1b 40 00 00 	l.movhi r26,0x0
    1868:	aa 20 00 02 	l.ori r17,r0,0x2
    186c:	e2 3a 88 08 	l.sll r17,r26,r17
    1870:	e2 31 d0 00 	l.add r17,r17,r26
    1874:	9f 7b 00 01 	l.addi r27,r27,1
    1878:	e2 31 88 00 	l.add r17,r17,r17
    187c:	e2 31 18 00 	l.add r17,r17,r3
    1880:	90 7b 00 00 	l.lbs r3,0(r27)
    1884:	9e 63 ff d0 	l.addi r19,r3,-48
    1888:	a6 73 00 ff 	l.andi r19,r19,0xff
    188c:	e4 b3 e8 00 	l.sfleu r19,r29
    1890:	13 ff ff f6 	l.bf 1868 <_vsnprintf+0x6f4>
    1894:	9f 51 ff d0 	l.addi r26,r17,-48
    1898:	e3 db d8 04 	l.or r30,r27,r27
    189c:	03 ff fe c8 	l.j 13bc <_vsnprintf+0x248>
    18a0:	9e 7b 00 01 	l.addi r19,r27,1
    18a4:	e4 03 88 00 	l.sfeq r3,r17
    18a8:	13 ff ff 90 	l.bf 16e8 <_vsnprintf+0x574>
    18ac:	a5 d0 04 00 	l.andi r14,r16,0x400
    18b0:	03 ff ff 7f 	l.j 16ac <_vsnprintf+0x538>
    18b4:	9f 1a ff ff 	l.addi r24,r26,-1
    18b8:	1a 20 00 00 	l.movhi r17,0x0
    18bc:	87 2e 00 00 	l.lwz r25,0(r14)
    18c0:	e5 79 88 00 	l.sfges r25,r17
    18c4:	10 00 00 03 	l.bf 18d0 <_vsnprintf+0x75c>
    18c8:	e3 59 c8 04 	l.or r26,r25,r25
    18cc:	1b 40 00 00 	l.movhi r26,0x0
    18d0:	90 7e 00 02 	l.lbs r3,2(r30)
    18d4:	9f de 00 02 	l.addi r30,r30,2
    18d8:	9d ce 00 04 	l.addi r14,r14,4
    18dc:	03 ff fe b8 	l.j 13bc <_vsnprintf+0x248>
    18e0:	9e 7e 00 01 	l.addi r19,r30,1
    18e4:	03 ff fe db 	l.j 1450 <_vsnprintf+0x2dc>
    18e8:	ab 60 00 08 	l.ori r27,r0,0x8
    18ec:	e0 50 80 04 	l.or r2,r16,r16
    18f0:	10 00 00 35 	l.bf 19c4 <_vsnprintf+0x850>
    18f4:	e3 7c 10 00 	l.add r27,r28,r2
    18f8:	e2 1b c0 02 	l.sub r16,r27,r24
    18fc:	ab 00 00 20 	l.ori r24,r0,0x20
    1900:	e0 a2 10 04 	l.or r5,r2,r2
    1904:	e0 d2 90 04 	l.or r6,r18,r18
    1908:	e0 94 a0 04 	l.or r4,r20,r20
    190c:	e0 78 c0 04 	l.or r3,r24,r24
    1910:	48 00 b0 00 	l.jalr r22
    1914:	9c 42 00 01 	l.addi r2,r2,1
    1918:	e4 30 10 00 	l.sfne r16,r2
    191c:	13 ff ff fa 	l.bf 1904 <_vsnprintf+0x790>
    1920:	e0 a2 10 04 	l.or r5,r2,r2
    1924:	03 ff ff a0 	l.j 17a4 <_vsnprintf+0x630>
    1928:	e0 50 80 04 	l.or r2,r16,r16
    192c:	03 ff ff 6e 	l.j 16e4 <_vsnprintf+0x570>
    1930:	e3 18 88 02 	l.sub r24,r24,r17
    1934:	aa 10 03 00 	l.ori r16,r16,0x300
    1938:	9f be 00 02 	l.addi r29,r30,2
    193c:	03 ff fe af 	l.j 13f8 <_vsnprintf+0x284>
    1940:	90 7e 00 02 	l.lbs r3,2(r30)
    1944:	aa 10 00 c0 	l.ori r16,r16,0xc0
    1948:	9f be 00 02 	l.addi r29,r30,2
    194c:	03 ff fe ab 	l.j 13f8 <_vsnprintf+0x284>
    1950:	90 7e 00 02 	l.lbs r3,2(r30)
    1954:	03 ff fe c6 	l.j 146c <_vsnprintf+0x2f8>
    1958:	e2 70 98 03 	l.and r19,r16,r19
    195c:	03 ff ff 8c 	l.j 178c <_vsnprintf+0x618>
    1960:	e2 13 98 04 	l.or r16,r19,r19
    1964:	e4 78 e0 00 	l.sfgeu r24,r28
    1968:	10 00 00 99 	l.bf 1bcc <_vsnprintf+0xa58>
    196c:	e2 7c 10 00 	l.add r19,r28,r2
    1970:	e3 13 c0 02 	l.sub r24,r19,r24
    1974:	aa 00 00 20 	l.ori r16,r0,0x20
    1978:	e0 a2 10 04 	l.or r5,r2,r2
    197c:	e0 d2 90 04 	l.or r6,r18,r18
    1980:	e0 94 a0 04 	l.or r4,r20,r20
    1984:	e0 70 80 04 	l.or r3,r16,r16
    1988:	48 00 b0 00 	l.jalr r22
    198c:	9c 42 00 01 	l.addi r2,r2,1
    1990:	e4 22 c0 00 	l.sfne r2,r24
    1994:	13 ff ff fa 	l.bf 197c <_vsnprintf+0x808>
    1998:	e0 a2 10 04 	l.or r5,r2,r2
    199c:	86 21 00 18 	l.lwz r17,24(r1)
    19a0:	9f 1c 00 01 	l.addi r24,r28,1
    19a4:	8f b1 00 00 	l.lbz r29,0(r17)
    19a8:	aa 20 00 18 	l.ori r17,r0,0x18
    19ac:	e0 7d 88 08 	l.sll r3,r29,r17
    19b0:	e0 63 88 88 	l.sra r3,r3,r17
    19b4:	1a 20 00 00 	l.movhi r17,0x0
    19b8:	e4 03 88 00 	l.sfeq r3,r17
    19bc:	0f ff ff 5f 	l.bnf 1738 <_vsnprintf+0x5c4>
    19c0:	e2 62 10 04 	l.or r19,r2,r2
    19c4:	03 ff ff 77 	l.j 17a0 <_vsnprintf+0x62c>
    19c8:	e2 02 10 04 	l.or r16,r2,r2
    19cc:	aa 20 00 01 	l.ori r17,r0,0x1
    19d0:	e4 bc 88 00 	l.sfleu r28,r17
    19d4:	10 00 00 66 	l.bf 1b6c <_vsnprintf+0x9f8>
    19d8:	9e 02 ff ff 	l.addi r16,r2,-1
    19dc:	e2 10 e0 00 	l.add r16,r16,r28
    19e0:	e3 02 10 04 	l.or r24,r2,r2
    19e4:	e0 b8 c0 04 	l.or r5,r24,r24
    19e8:	e0 d2 90 04 	l.or r6,r18,r18
    19ec:	e0 94 a0 04 	l.or r4,r20,r20
    19f0:	a8 60 00 20 	l.ori r3,r0,0x20
    19f4:	48 00 b0 00 	l.jalr r22
    19f8:	9f 18 00 01 	l.addi r24,r24,1
    19fc:	e4 38 80 00 	l.sfne r24,r16
    1a00:	13 ff ff fa 	l.bf 19e8 <_vsnprintf+0x874>
    1a04:	e0 b8 c0 04 	l.or r5,r24,r24
    1a08:	8c 6e 00 03 	l.lbz r3,3(r14)
    1a0c:	e0 d2 90 04 	l.or r6,r18,r18
    1a10:	e0 94 a0 04 	l.or r4,r20,r20
    1a14:	48 00 b0 00 	l.jalr r22
    1a18:	e0 42 e0 00 	l.add r2,r2,r28
    1a1c:	03 ff fd f8 	l.j 11fc <_vsnprintf+0x88>
    1a20:	e1 da d0 04 	l.or r14,r26,r26
    1a24:	aa 20 00 78 	l.ori r17,r0,0x78
    1a28:	e4 03 88 00 	l.sfeq r3,r17
    1a2c:	13 ff fe 89 	l.bf 1450 <_vsnprintf+0x2dc>
    1a30:	ab 60 00 10 	l.ori r27,r0,0x10
    1a34:	ae 60 ff ef 	l.xori r19,r0,-17
    1a38:	e2 10 98 03 	l.and r16,r16,r19
    1a3c:	03 ff fe 85 	l.j 1450 <_vsnprintf+0x2dc>
    1a40:	ab 60 00 0a 	l.ori r27,r0,0xa
    1a44:	87 6e 00 00 	l.lwz r27,0(r14)
    1a48:	aa 20 00 1f 	l.ori r17,r0,0x1f
    1a4c:	e1 1b 88 48 	l.srl r8,r27,r17
    1a50:	1a 20 00 00 	l.movhi r17,0x0
    1a54:	e5 7b 88 00 	l.sfges r27,r17
    1a58:	10 00 00 03 	l.bf 1a64 <_vsnprintf+0x8f0>
    1a5c:	e0 fb d8 04 	l.or r7,r27,r27
    1a60:	e0 e0 d8 02 	l.sub r7,r0,r27
    1a64:	d4 01 98 0c 	l.sw 12(r1),r19
    1a68:	aa 60 00 0a 	l.ori r19,r0,0xa
    1a6c:	d4 01 e0 08 	l.sw 8(r1),r28
    1a70:	d4 01 d0 04 	l.sw 4(r1),r26
    1a74:	d4 01 98 00 	l.sw 0(r1),r19
    1a78:	e0 a2 10 04 	l.or r5,r2,r2
    1a7c:	e0 d2 90 04 	l.or r6,r18,r18
    1a80:	e0 94 a0 04 	l.or r4,r20,r20
    1a84:	07 ff fc f3 	l.jal e50 <_ntoa_long>
    1a88:	e0 76 b0 04 	l.or r3,r22,r22
    1a8c:	e0 4b 58 04 	l.or r2,r11,r11
    1a90:	03 ff fd db 	l.j 11fc <_vsnprintf+0x88>
    1a94:	e1 d0 80 04 	l.or r14,r16,r16
    1a98:	87 6e 00 00 	l.lwz r27,0(r14)
    1a9c:	e5 7b 88 00 	l.sfges r27,r17
    1aa0:	9e 0e 00 08 	l.addi r16,r14,8
    1aa4:	e0 fb d8 04 	l.or r7,r27,r27
    1aa8:	10 00 00 09 	l.bf 1acc <_vsnprintf+0x958>
    1aac:	85 0e 00 04 	l.lwz r8,4(r14)
    1ab0:	e4 28 88 00 	l.sfne r8,r17
    1ab4:	ab a0 00 01 	l.ori r29,r0,0x1
    1ab8:	10 00 00 03 	l.bf 1ac4 <_vsnprintf+0x950>
    1abc:	e1 00 40 02 	l.sub r8,r0,r8
    1ac0:	1b a0 00 00 	l.movhi r29,0x0
    1ac4:	e0 e0 d8 02 	l.sub r7,r0,r27
    1ac8:	e0 e7 e8 02 	l.sub r7,r7,r29
    1acc:	aa 20 00 1f 	l.ori r17,r0,0x1f
    1ad0:	1b e0 00 00 	l.movhi r31,0x0
    1ad4:	ab a0 00 0a 	l.ori r29,r0,0xa
    1ad8:	e3 7b 88 48 	l.srl r27,r27,r17
    1adc:	e0 a2 10 04 	l.or r5,r2,r2
    1ae0:	d4 01 98 14 	l.sw 20(r1),r19
    1ae4:	d4 01 e0 10 	l.sw 16(r1),r28
    1ae8:	d4 01 d0 0c 	l.sw 12(r1),r26
    1aec:	d4 01 f8 04 	l.sw 4(r1),r31
    1af0:	d4 01 e8 08 	l.sw 8(r1),r29
    1af4:	d8 01 d8 03 	l.sb 3(r1),r27
    1af8:	e0 d2 90 04 	l.or r6,r18,r18
    1afc:	e0 94 a0 04 	l.or r4,r20,r20
    1b00:	07 ff fd 13 	l.jal f4c <_ntoa_long_long>
    1b04:	e0 76 b0 04 	l.or r3,r22,r22
    1b08:	e0 4b 58 04 	l.or r2,r11,r11
    1b0c:	03 ff fd bc 	l.j 11fc <_vsnprintf+0x88>
    1b10:	e1 d0 80 04 	l.or r14,r16,r16
    1b14:	03 ff fe 4f 	l.j 1450 <_vsnprintf+0x2dc>
    1b18:	ab 60 00 02 	l.ori r27,r0,0x2
    1b1c:	85 0e 00 04 	l.lwz r8,4(r14)
    1b20:	84 ee 00 00 	l.lwz r7,0(r14)
    1b24:	e0 a2 10 04 	l.or r5,r2,r2
    1b28:	d4 01 98 14 	l.sw 20(r1),r19
    1b2c:	d4 01 e0 10 	l.sw 16(r1),r28
    1b30:	d4 01 d0 0c 	l.sw 12(r1),r26
    1b34:	d4 01 d8 08 	l.sw 8(r1),r27
    1b38:	d4 01 00 04 	l.sw 4(r1),r0
    1b3c:	d8 01 00 03 	l.sb 3(r1),r0
    1b40:	e0 d2 90 04 	l.or r6,r18,r18
    1b44:	e0 94 a0 04 	l.or r4,r20,r20
    1b48:	07 ff fd 01 	l.jal f4c <_ntoa_long_long>
    1b4c:	e0 76 b0 04 	l.or r3,r22,r22
    1b50:	9d ce 00 08 	l.addi r14,r14,8
    1b54:	03 ff fd aa 	l.j 11fc <_vsnprintf+0x88>
    1b58:	e0 4b 58 04 	l.or r2,r11,r11
    1b5c:	03 ff ff bb 	l.j 1a48 <_vsnprintf+0x8d4>
    1b60:	93 6e 00 03 	l.lbs r27,3(r14)
    1b64:	03 ff fe 55 	l.j 14b8 <_vsnprintf+0x344>
    1b68:	8c ee 00 03 	l.lbz r7,3(r14)
    1b6c:	e0 d2 90 04 	l.or r6,r18,r18
    1b70:	e0 a2 10 04 	l.or r5,r2,r2
    1b74:	e0 94 a0 04 	l.or r4,r20,r20
    1b78:	48 00 b0 00 	l.jalr r22
    1b7c:	8c 6e 00 03 	l.lbz r3,3(r14)
    1b80:	e0 58 c0 04 	l.or r2,r24,r24
    1b84:	03 ff fd 9e 	l.j 11fc <_vsnprintf+0x88>
    1b88:	e1 da d0 04 	l.or r14,r26,r26
    1b8c:	d4 01 98 0c 	l.sw 12(r1),r19
    1b90:	d4 01 e0 08 	l.sw 8(r1),r28
    1b94:	d4 01 d0 04 	l.sw 4(r1),r26
    1b98:	d4 01 d8 00 	l.sw 0(r1),r27
    1b9c:	e0 a2 10 04 	l.or r5,r2,r2
    1ba0:	19 00 00 00 	l.movhi r8,0x0
    1ba4:	e0 d2 90 04 	l.or r6,r18,r18
    1ba8:	e0 94 a0 04 	l.or r4,r20,r20
    1bac:	e0 76 b0 04 	l.or r3,r22,r22
    1bb0:	07 ff fc a8 	l.jal e50 <_ntoa_long>
    1bb4:	84 ee 00 00 	l.lwz r7,0(r14)
    1bb8:	e0 4b 58 04 	l.or r2,r11,r11
    1bbc:	03 ff fd 90 	l.j 11fc <_vsnprintf+0x88>
    1bc0:	e1 d0 80 04 	l.or r14,r16,r16
    1bc4:	03 ff fe 3d 	l.j 14b8 <_vsnprintf+0x344>
    1bc8:	84 ee 00 00 	l.lwz r7,0(r14)
    1bcc:	03 ff ff 77 	l.j 19a8 <_vsnprintf+0x834>
    1bd0:	9f 18 00 01 	l.addi r24,r24,1
    1bd4:	aa 20 00 64 	l.ori r17,r0,0x64
    1bd8:	e4 03 88 00 	l.sfeq r3,r17
    1bdc:	13 ff ff 07 	l.bf 17f8 <_vsnprintf+0x684>
    1be0:	ab 60 00 0a 	l.ori r27,r0,0xa
    1be4:	03 ff fe 1b 	l.j 1450 <_vsnprintf+0x2dc>
    1be8:	e2 13 98 04 	l.or r16,r19,r19

00001bec <printf_>:
    1bec:	9c 21 ff f8 	l.addi r1,r1,-8
    1bf0:	e0 c3 18 04 	l.or r6,r3,r3
    1bf4:	18 60 00 00 	l.movhi r3,0x0
    1bf8:	9c e1 00 08 	l.addi r7,r1,8
    1bfc:	9c 81 00 03 	l.addi r4,r1,3
    1c00:	ac a0 ff ff 	l.xori r5,r0,-1
    1c04:	d4 01 48 04 	l.sw 4(r1),r9
    1c08:	07 ff fd 5b 	l.jal 1174 <_vsnprintf>
    1c0c:	9c 63 11 18 	l.addi r3,r3,4376
    1c10:	85 21 00 04 	l.lwz r9,4(r1)
    1c14:	44 00 48 00 	l.jr r9
    1c18:	9c 21 00 08 	l.addi r1,r1,8

00001c1c <sprintf_>:
    1c1c:	9c 21 ff fc 	l.addi r1,r1,-4
    1c20:	e0 c4 20 04 	l.or r6,r4,r4
    1c24:	e0 83 18 04 	l.or r4,r3,r3
    1c28:	18 60 00 00 	l.movhi r3,0x0
    1c2c:	9c e1 00 04 	l.addi r7,r1,4
    1c30:	ac a0 ff ff 	l.xori r5,r0,-1
    1c34:	d4 01 48 00 	l.sw 0(r1),r9
    1c38:	07 ff fd 4f 	l.jal 1174 <_vsnprintf>
    1c3c:	9c 63 05 1c 	l.addi r3,r3,1308
    1c40:	85 21 00 00 	l.lwz r9,0(r1)
    1c44:	44 00 48 00 	l.jr r9
    1c48:	9c 21 00 04 	l.addi r1,r1,4

00001c4c <snprintf_>:
    1c4c:	9c 21 ff fc 	l.addi r1,r1,-4
    1c50:	e0 c5 28 04 	l.or r6,r5,r5
    1c54:	e0 a4 20 04 	l.or r5,r4,r4
    1c58:	e0 83 18 04 	l.or r4,r3,r3
    1c5c:	18 60 00 00 	l.movhi r3,0x0
    1c60:	9c e1 00 04 	l.addi r7,r1,4
    1c64:	d4 01 48 00 	l.sw 0(r1),r9
    1c68:	07 ff fd 43 	l.jal 1174 <_vsnprintf>
    1c6c:	9c 63 05 1c 	l.addi r3,r3,1308
    1c70:	85 21 00 00 	l.lwz r9,0(r1)
    1c74:	44 00 48 00 	l.jr r9
    1c78:	9c 21 00 04 	l.addi r1,r1,4

00001c7c <vprintf_>:
    1c7c:	9c 21 ff f8 	l.addi r1,r1,-8
    1c80:	e0 c3 18 04 	l.or r6,r3,r3
    1c84:	18 60 00 00 	l.movhi r3,0x0
    1c88:	e0 e4 20 04 	l.or r7,r4,r4
    1c8c:	ac a0 ff ff 	l.xori r5,r0,-1
    1c90:	9c 81 00 03 	l.addi r4,r1,3
    1c94:	d4 01 48 04 	l.sw 4(r1),r9
    1c98:	07 ff fd 37 	l.jal 1174 <_vsnprintf>
    1c9c:	9c 63 11 18 	l.addi r3,r3,4376
    1ca0:	85 21 00 04 	l.lwz r9,4(r1)
    1ca4:	44 00 48 00 	l.jr r9
    1ca8:	9c 21 00 08 	l.addi r1,r1,8

00001cac <vsnprintf_>:
    1cac:	e0 e6 30 04 	l.or r7,r6,r6
    1cb0:	e0 c5 28 04 	l.or r6,r5,r5
    1cb4:	e0 a4 20 04 	l.or r5,r4,r4
    1cb8:	e0 83 18 04 	l.or r4,r3,r3
    1cbc:	18 60 00 00 	l.movhi r3,0x0
    1cc0:	03 ff fd 2d 	l.j 1174 <_vsnprintf>
    1cc4:	9c 63 05 1c 	l.addi r3,r3,1308

00001cc8 <fctprintf>:
    1cc8:	9c 21 ff f4 	l.addi r1,r1,-12
    1ccc:	e2 63 18 04 	l.or r19,r3,r3
    1cd0:	18 60 00 00 	l.movhi r3,0x0
    1cd4:	e2 24 20 04 	l.or r17,r4,r4
    1cd8:	e0 c5 28 04 	l.or r6,r5,r5
    1cdc:	9c e1 00 0c 	l.addi r7,r1,12
    1ce0:	e0 81 08 04 	l.or r4,r1,r1
    1ce4:	ac a0 ff ff 	l.xori r5,r0,-1
    1ce8:	9c 63 11 44 	l.addi r3,r3,4420
    1cec:	d4 01 48 08 	l.sw 8(r1),r9
    1cf0:	d4 01 98 00 	l.sw 0(r1),r19
    1cf4:	07 ff fd 20 	l.jal 1174 <_vsnprintf>
    1cf8:	d4 01 88 04 	l.sw 4(r1),r17
    1cfc:	85 21 00 08 	l.lwz r9,8(r1)
    1d00:	44 00 48 00 	l.jr r9
    1d04:	9c 21 00 0c 	l.addi r1,r1,12

00001d08 <uart_init>:
    1d08:	ae 20 ff 83 	l.xori r17,r0,-125
    1d0c:	d8 03 88 05 	l.sb 5(r3),r17
    1d10:	aa 20 00 1b 	l.ori r17,r0,0x1b
    1d14:	d8 03 88 00 	l.sb 0(r3),r17
    1d18:	d8 03 00 01 	l.sb 1(r3),r0
    1d1c:	aa 20 00 03 	l.ori r17,r0,0x3
    1d20:	d8 03 88 03 	l.sb 3(r3),r17
    1d24:	44 00 48 00 	l.jr r9
    1d28:	15 00 00 00 	l.nop 0x0

00001d2c <uart_wait_rx>:
    1d2c:	8e 23 00 05 	l.lbz r17,5(r3)
    1d30:	a6 31 00 01 	l.andi r17,r17,0x1
    1d34:	1a 60 00 00 	l.movhi r19,0x0
    1d38:	e4 31 98 00 	l.sfne r17,r19
    1d3c:	10 00 00 09 	l.bf 1d60 <uart_wait_rx+0x34>
    1d40:	15 00 00 00 	l.nop 0x0
    1d44:	15 00 00 00 	l.nop 0x0
    1d48:	8e 23 00 05 	l.lbz r17,5(r3)
    1d4c:	a6 31 00 01 	l.andi r17,r17,0x1
    1d50:	1a 60 00 00 	l.movhi r19,0x0
    1d54:	e4 11 98 00 	l.sfeq r17,r19
    1d58:	13 ff ff fb 	l.bf 1d44 <uart_wait_rx+0x18>
    1d5c:	15 00 00 00 	l.nop 0x0
    1d60:	44 00 48 00 	l.jr r9
    1d64:	15 00 00 00 	l.nop 0x0

00001d68 <uart_wait_tx>:
    1d68:	8e 23 00 05 	l.lbz r17,5(r3)
    1d6c:	a6 31 00 40 	l.andi r17,r17,0x40
    1d70:	1a 60 00 00 	l.movhi r19,0x0
    1d74:	e4 31 98 00 	l.sfne r17,r19
    1d78:	10 00 00 09 	l.bf 1d9c <uart_wait_tx+0x34>
    1d7c:	15 00 00 00 	l.nop 0x0
    1d80:	15 00 00 00 	l.nop 0x0
    1d84:	8e 23 00 05 	l.lbz r17,5(r3)
    1d88:	a6 31 00 40 	l.andi r17,r17,0x40
    1d8c:	1a 60 00 00 	l.movhi r19,0x0
    1d90:	e4 11 98 00 	l.sfeq r17,r19
    1d94:	13 ff ff fb 	l.bf 1d80 <uart_wait_tx+0x18>
    1d98:	15 00 00 00 	l.nop 0x0
    1d9c:	44 00 48 00 	l.jr r9
    1da0:	15 00 00 00 	l.nop 0x0

00001da4 <uart_putc>:
    1da4:	8e 23 00 05 	l.lbz r17,5(r3)
    1da8:	a6 31 00 40 	l.andi r17,r17,0x40
    1dac:	1a 60 00 00 	l.movhi r19,0x0
    1db0:	e4 31 98 00 	l.sfne r17,r19
    1db4:	10 00 00 09 	l.bf 1dd8 <uart_putc+0x34>
    1db8:	aa 20 00 18 	l.ori r17,r0,0x18
    1dbc:	15 00 00 00 	l.nop 0x0
    1dc0:	8e 23 00 05 	l.lbz r17,5(r3)
    1dc4:	a6 31 00 40 	l.andi r17,r17,0x40
    1dc8:	1a 60 00 00 	l.movhi r19,0x0
    1dcc:	e4 11 98 00 	l.sfeq r17,r19
    1dd0:	13 ff ff fb 	l.bf 1dbc <uart_putc+0x18>
    1dd4:	aa 20 00 18 	l.ori r17,r0,0x18
    1dd8:	e0 84 88 08 	l.sll r4,r4,r17
    1ddc:	e0 84 88 88 	l.sra r4,r4,r17
    1de0:	d8 03 20 00 	l.sb 0(r3),r4
    1de4:	44 00 48 00 	l.jr r9
    1de8:	15 00 00 00 	l.nop 0x0

00001dec <uart_puts>:
    1dec:	92 64 00 00 	l.lbs r19,0(r4)
    1df0:	1a 20 00 00 	l.movhi r17,0x0
    1df4:	e4 13 88 00 	l.sfeq r19,r17
    1df8:	10 00 00 15 	l.bf 1e4c <uart_puts+0x60>
    1dfc:	15 00 00 00 	l.nop 0x0
    1e00:	8e 23 00 05 	l.lbz r17,5(r3)
    1e04:	a6 31 00 40 	l.andi r17,r17,0x40
    1e08:	1a a0 00 00 	l.movhi r21,0x0
    1e0c:	e4 31 a8 00 	l.sfne r17,r21
    1e10:	10 00 00 09 	l.bf 1e34 <uart_puts+0x48>
    1e14:	9c 84 00 01 	l.addi r4,r4,1
    1e18:	15 00 00 00 	l.nop 0x0
    1e1c:	8e 23 00 05 	l.lbz r17,5(r3)
    1e20:	a6 31 00 40 	l.andi r17,r17,0x40
    1e24:	1a a0 00 00 	l.movhi r21,0x0
    1e28:	e4 11 a8 00 	l.sfeq r17,r21
    1e2c:	13 ff ff fb 	l.bf 1e18 <uart_puts+0x2c>
    1e30:	15 00 00 00 	l.nop 0x0
    1e34:	d8 03 98 00 	l.sb 0(r3),r19
    1e38:	92 64 00 00 	l.lbs r19,0(r4)
    1e3c:	1a 20 00 00 	l.movhi r17,0x0
    1e40:	e4 33 88 00 	l.sfne r19,r17
    1e44:	13 ff ff ef 	l.bf 1e00 <uart_puts+0x14>
    1e48:	15 00 00 00 	l.nop 0x0
    1e4c:	44 00 48 00 	l.jr r9
    1e50:	15 00 00 00 	l.nop 0x0

00001e54 <uart_getc>:
    1e54:	8e 23 00 05 	l.lbz r17,5(r3)
    1e58:	a6 31 00 01 	l.andi r17,r17,0x1
    1e5c:	1a 60 00 00 	l.movhi r19,0x0
    1e60:	e4 31 98 00 	l.sfne r17,r19
    1e64:	10 00 00 09 	l.bf 1e88 <uart_getc+0x34>
    1e68:	aa 20 00 18 	l.ori r17,r0,0x18
    1e6c:	15 00 00 00 	l.nop 0x0
    1e70:	8e 23 00 05 	l.lbz r17,5(r3)
    1e74:	a6 31 00 01 	l.andi r17,r17,0x1
    1e78:	1a 60 00 00 	l.movhi r19,0x0
    1e7c:	e4 11 98 00 	l.sfeq r17,r19
    1e80:	13 ff ff fb 	l.bf 1e6c <uart_getc+0x18>
    1e84:	aa 20 00 18 	l.ori r17,r0,0x18
    1e88:	8d 63 00 00 	l.lbz r11,0(r3)
    1e8c:	e1 6b 88 08 	l.sll r11,r11,r17
    1e90:	44 00 48 00 	l.jr r9
    1e94:	e1 6b 88 88 	l.sra r11,r11,r17

00001e98 <vga_clear>:
    1e98:	aa 20 00 03 	l.ori r17,r0,0x3
    1e9c:	70 11 01 00 	l.nios_crr r0,r17,r0,0x0
    1ea0:	44 00 48 00 	l.jr r9
    1ea4:	15 00 00 00 	l.nop 0x0

00001ea8 <vga_textcorr>:
    1ea8:	aa 20 00 06 	l.ori r17,r0,0x6
    1eac:	70 11 19 00 	l.nios_crr r0,r17,r3,0x0
    1eb0:	44 00 48 00 	l.jr r9
    1eb4:	15 00 00 00 	l.nop 0x0

00001eb8 <vga_putc>:
    1eb8:	aa 20 00 02 	l.ori r17,r0,0x2
    1ebc:	70 11 19 00 	l.nios_crr r0,r17,r3,0x0
    1ec0:	44 00 48 00 	l.jr r9
    1ec4:	15 00 00 00 	l.nop 0x0

00001ec8 <vga_puts>:
    1ec8:	92 23 00 00 	l.lbs r17,0(r3)
    1ecc:	1a 60 00 00 	l.movhi r19,0x0
    1ed0:	e4 11 98 00 	l.sfeq r17,r19
    1ed4:	10 00 00 0a 	l.bf 1efc <vga_puts+0x34>
    1ed8:	15 00 00 00 	l.nop 0x0
    1edc:	aa 60 00 02 	l.ori r19,r0,0x2
    1ee0:	9c 63 00 01 	l.addi r3,r3,1
    1ee4:	70 13 89 00 	l.nios_crr r0,r19,r17,0x0
    1ee8:	1a a0 00 00 	l.movhi r21,0x0
    1eec:	92 23 00 00 	l.lbs r17,0(r3)
    1ef0:	e4 31 a8 00 	l.sfne r17,r21
    1ef4:	13 ff ff fb 	l.bf 1ee0 <vga_puts+0x18>
    1ef8:	15 00 00 00 	l.nop 0x0
    1efc:	44 00 48 00 	l.jr r9
    1f00:	15 00 00 00 	l.nop 0x0

00001f04 <__udivdi3>:
    1f04:	1a a0 00 00 	l.movhi r21,0x0
    1f08:	e4 25 a8 00 	l.sfne r5,r21
    1f0c:	e2 64 20 04 	l.or r19,r4,r4
    1f10:	10 00 00 4c 	l.bf 2040 <__udivdi3+0x13c>
    1f14:	e2 23 18 04 	l.or r17,r3,r3
    1f18:	e4 a6 18 00 	l.sfleu r6,r3
    1f1c:	10 00 00 6c 	l.bf 20cc <__udivdi3+0x1c8>
    1f20:	aa a0 ff ff 	l.ori r21,r0,0xffff
    1f24:	e4 46 a8 00 	l.sfgtu r6,r21
    1f28:	0c 00 00 b1 	l.bnf 21ec <__udivdi3+0x2e8>
    1f2c:	aa a0 00 ff 	l.ori r21,r0,0xff
    1f30:	1a a0 00 ff 	l.movhi r21,0xff
    1f34:	aa b5 ff ff 	l.ori r21,r21,0xffff
    1f38:	e4 46 a8 00 	l.sfgtu r6,r21
    1f3c:	10 00 00 03 	l.bf 1f48 <__udivdi3+0x44>
    1f40:	aa e0 00 18 	l.ori r23,r0,0x18
    1f44:	aa e0 00 10 	l.ori r23,r0,0x10
    1f48:	1a a0 00 00 	l.movhi r21,0x0
    1f4c:	e3 26 b8 48 	l.srl r25,r6,r23
    1f50:	9e b5 2b c8 	l.addi r21,r21,11208
    1f54:	e2 b5 c8 00 	l.add r21,r21,r25
    1f58:	8e b5 00 00 	l.lbz r21,0(r21)
    1f5c:	e2 b5 b8 00 	l.add r21,r21,r23
    1f60:	aa e0 00 20 	l.ori r23,r0,0x20
    1f64:	e4 17 a8 00 	l.sfeq r23,r21
    1f68:	10 00 00 07 	l.bf 1f84 <__udivdi3+0x80>
    1f6c:	e3 37 a8 02 	l.sub r25,r23,r21
    1f70:	e0 63 c8 08 	l.sll r3,r3,r25
    1f74:	e2 a4 a8 48 	l.srl r21,r4,r21
    1f78:	e0 c6 c8 08 	l.sll r6,r6,r25
    1f7c:	e2 35 18 04 	l.or r17,r21,r3
    1f80:	e2 64 c8 08 	l.sll r19,r4,r25
    1f84:	ab 60 00 10 	l.ori r27,r0,0x10
    1f88:	e2 e6 d8 48 	l.srl r23,r6,r27
    1f8c:	e1 91 bb 0a 	l.divu r12,r17,r23
    1f90:	e2 ac bb 06 	l.mul r21,r12,r23
    1f94:	e2 31 a8 02 	l.sub r17,r17,r21
    1f98:	e2 bb d8 04 	l.or r21,r27,r27
    1f9c:	e2 31 d8 08 	l.sll r17,r17,r27
    1fa0:	a7 26 ff ff 	l.andi r25,r6,0xffff
    1fa4:	e2 b3 a8 48 	l.srl r21,r19,r21
    1fa8:	e3 79 63 06 	l.mul r27,r25,r12
    1fac:	e2 31 a8 04 	l.or r17,r17,r21
    1fb0:	e4 bb 88 00 	l.sfleu r27,r17
    1fb4:	10 00 00 0a 	l.bf 1fdc <__udivdi3+0xd8>
    1fb8:	15 00 00 00 	l.nop 0x0
    1fbc:	e2 31 30 00 	l.add r17,r17,r6
    1fc0:	e4 46 88 00 	l.sfgtu r6,r17
    1fc4:	10 00 00 05 	l.bf 1fd8 <__udivdi3+0xd4>
    1fc8:	9e ac ff ff 	l.addi r21,r12,-1
    1fcc:	e4 bb 88 00 	l.sfleu r27,r17
    1fd0:	0c 00 01 3a 	l.bnf 24b8 <__udivdi3+0x5b4>
    1fd4:	9d 8c ff fe 	l.addi r12,r12,-2
    1fd8:	e1 95 a8 04 	l.or r12,r21,r21
    1fdc:	e2 31 d8 02 	l.sub r17,r17,r27
    1fe0:	e2 b1 bb 0a 	l.divu r21,r17,r23
    1fe4:	e2 f5 bb 06 	l.mul r23,r21,r23
    1fe8:	e2 31 b8 02 	l.sub r17,r17,r23
    1fec:	aa e0 00 10 	l.ori r23,r0,0x10
    1ff0:	e2 31 b8 08 	l.sll r17,r17,r23
    1ff4:	a6 73 ff ff 	l.andi r19,r19,0xffff
    1ff8:	e3 39 ab 06 	l.mul r25,r25,r21
    1ffc:	e2 31 98 04 	l.or r17,r17,r19
    2000:	e4 b9 88 00 	l.sfleu r25,r17
    2004:	10 00 00 09 	l.bf 2028 <__udivdi3+0x124>
    2008:	e2 26 88 00 	l.add r17,r6,r17
    200c:	e4 46 88 00 	l.sfgtu r6,r17
    2010:	10 00 00 05 	l.bf 2024 <__udivdi3+0x120>
    2014:	9e 75 ff ff 	l.addi r19,r21,-1
    2018:	e4 b9 88 00 	l.sfleu r25,r17
    201c:	0c 00 00 03 	l.bnf 2028 <__udivdi3+0x124>
    2020:	9e b5 ff fe 	l.addi r21,r21,-2
    2024:	e2 b3 98 04 	l.or r21,r19,r19
    2028:	aa 20 00 10 	l.ori r17,r0,0x10
    202c:	e1 8c 88 08 	l.sll r12,r12,r17
    2030:	e1 8c a8 04 	l.or r12,r12,r21
    2034:	19 60 00 00 	l.movhi r11,0x0
    2038:	44 00 48 00 	l.jr r9
    203c:	15 00 00 00 	l.nop 0x0
    2040:	e4 45 18 00 	l.sfgtu r5,r3
    2044:	0c 00 00 06 	l.bnf 205c <__udivdi3+0x158>
    2048:	aa 20 ff ff 	l.ori r17,r0,0xffff
    204c:	19 80 00 00 	l.movhi r12,0x0
    2050:	19 60 00 00 	l.movhi r11,0x0
    2054:	44 00 48 00 	l.jr r9
    2058:	15 00 00 00 	l.nop 0x0
    205c:	e4 45 88 00 	l.sfgtu r5,r17
    2060:	0c 00 00 74 	l.bnf 2230 <__udivdi3+0x32c>
    2064:	aa 20 00 ff 	l.ori r17,r0,0xff
    2068:	1a 20 00 ff 	l.movhi r17,0xff
    206c:	aa 31 ff ff 	l.ori r17,r17,0xffff
    2070:	e4 45 88 00 	l.sfgtu r5,r17
    2074:	10 00 00 03 	l.bf 2080 <__udivdi3+0x17c>
    2078:	aa a0 00 18 	l.ori r21,r0,0x18
    207c:	aa a0 00 10 	l.ori r21,r0,0x10
    2080:	1a 20 00 00 	l.movhi r17,0x0
    2084:	e2 65 a8 48 	l.srl r19,r5,r21
    2088:	9e 31 2b c8 	l.addi r17,r17,11208
    208c:	e2 31 98 00 	l.add r17,r17,r19
    2090:	8e 71 00 00 	l.lbz r19,0(r17)
    2094:	e2 73 a8 00 	l.add r19,r19,r21
    2098:	aa 20 00 20 	l.ori r17,r0,0x20
    209c:	e4 31 98 00 	l.sfne r17,r19
    20a0:	10 00 00 6b 	l.bf 224c <__udivdi3+0x348>
    20a4:	e2 f1 98 02 	l.sub r23,r17,r19
    20a8:	e4 85 18 00 	l.sfltu r5,r3
    20ac:	10 00 00 05 	l.bf 20c0 <__udivdi3+0x1bc>
    20b0:	a9 80 00 01 	l.ori r12,r0,0x1
    20b4:	e4 a6 20 00 	l.sfleu r6,r4
    20b8:	0c 00 00 fb 	l.bnf 24a4 <__udivdi3+0x5a0>
    20bc:	15 00 00 00 	l.nop 0x0
    20c0:	19 60 00 00 	l.movhi r11,0x0
    20c4:	44 00 48 00 	l.jr r9
    20c8:	15 00 00 00 	l.nop 0x0
    20cc:	1a 20 00 00 	l.movhi r17,0x0
    20d0:	e4 26 88 00 	l.sfne r6,r17
    20d4:	10 00 00 4d 	l.bf 2208 <__udivdi3+0x304>
    20d8:	aa 20 ff ff 	l.ori r17,r0,0xffff
    20dc:	aa 20 00 01 	l.ori r17,r0,0x1
    20e0:	e0 d1 33 0a 	l.divu r6,r17,r6
    20e4:	aa 20 00 ff 	l.ori r17,r0,0xff
    20e8:	e4 46 88 00 	l.sfgtu r6,r17
    20ec:	10 00 00 03 	l.bf 20f8 <__udivdi3+0x1f4>
    20f0:	aa e0 00 01 	l.ori r23,r0,0x1
    20f4:	1a e0 00 00 	l.movhi r23,0x0
    20f8:	aa 20 00 03 	l.ori r17,r0,0x3
    20fc:	e2 f7 88 08 	l.sll r23,r23,r17
    2100:	1a 20 00 00 	l.movhi r17,0x0
    2104:	e2 a6 b8 48 	l.srl r21,r6,r23
    2108:	9e 31 2b c8 	l.addi r17,r17,11208
    210c:	e2 31 a8 00 	l.add r17,r17,r21
    2110:	8e b1 00 00 	l.lbz r21,0(r17)
    2114:	e2 b5 b8 00 	l.add r21,r21,r23
    2118:	aa 20 00 20 	l.ori r17,r0,0x20
    211c:	e4 31 a8 00 	l.sfne r17,r21
    2120:	10 00 00 a4 	l.bf 23b0 <__udivdi3+0x4ac>
    2124:	e3 71 a8 02 	l.sub r27,r17,r21
    2128:	aa 20 00 10 	l.ori r17,r0,0x10
    212c:	e0 63 30 02 	l.sub r3,r3,r6
    2130:	e2 e6 88 48 	l.srl r23,r6,r17
    2134:	a7 26 ff ff 	l.andi r25,r6,0xffff
    2138:	a9 60 00 01 	l.ori r11,r0,0x1
    213c:	e1 83 bb 0a 	l.divu r12,r3,r23
    2140:	e2 2c bb 06 	l.mul r17,r12,r23
    2144:	e0 63 88 02 	l.sub r3,r3,r17
    2148:	aa 20 00 10 	l.ori r17,r0,0x10
    214c:	e0 63 88 08 	l.sll r3,r3,r17
    2150:	e2 33 88 48 	l.srl r17,r19,r17
    2154:	e2 ac cb 06 	l.mul r21,r12,r25
    2158:	e0 63 88 04 	l.or r3,r3,r17
    215c:	e4 b5 18 00 	l.sfleu r21,r3
    2160:	10 00 00 0a 	l.bf 2188 <__udivdi3+0x284>
    2164:	15 00 00 00 	l.nop 0x0
    2168:	e0 63 30 00 	l.add r3,r3,r6
    216c:	e4 46 18 00 	l.sfgtu r6,r3
    2170:	10 00 00 05 	l.bf 2184 <__udivdi3+0x280>
    2174:	9e 2c ff ff 	l.addi r17,r12,-1
    2178:	e4 b5 18 00 	l.sfleu r21,r3
    217c:	0c 00 00 cd 	l.bnf 24b0 <__udivdi3+0x5ac>
    2180:	9d 8c ff fe 	l.addi r12,r12,-2
    2184:	e1 91 88 04 	l.or r12,r17,r17
    2188:	e0 63 a8 02 	l.sub r3,r3,r21
    218c:	e2 a3 bb 0a 	l.divu r21,r3,r23
    2190:	e2 35 bb 06 	l.mul r17,r21,r23
    2194:	e0 63 88 02 	l.sub r3,r3,r17
    2198:	e2 35 a8 04 	l.or r17,r21,r21
    219c:	aa a0 00 10 	l.ori r21,r0,0x10
    21a0:	e0 63 a8 08 	l.sll r3,r3,r21
    21a4:	a6 73 ff ff 	l.andi r19,r19,0xffff
    21a8:	e3 31 cb 06 	l.mul r25,r17,r25
    21ac:	e0 63 98 04 	l.or r3,r3,r19
    21b0:	e4 b9 18 00 	l.sfleu r25,r3
    21b4:	10 00 00 09 	l.bf 21d8 <__udivdi3+0x2d4>
    21b8:	e0 66 18 00 	l.add r3,r6,r3
    21bc:	e4 46 18 00 	l.sfgtu r6,r3
    21c0:	10 00 00 05 	l.bf 21d4 <__udivdi3+0x2d0>
    21c4:	9e 71 ff ff 	l.addi r19,r17,-1
    21c8:	e4 b9 18 00 	l.sfleu r25,r3
    21cc:	0c 00 00 03 	l.bnf 21d8 <__udivdi3+0x2d4>
    21d0:	9e 31 ff fe 	l.addi r17,r17,-2
    21d4:	e2 33 98 04 	l.or r17,r19,r19
    21d8:	aa 60 00 10 	l.ori r19,r0,0x10
    21dc:	e1 8c 98 08 	l.sll r12,r12,r19
    21e0:	e1 8c 88 04 	l.or r12,r12,r17
    21e4:	44 00 48 00 	l.jr r9
    21e8:	15 00 00 00 	l.nop 0x0
    21ec:	e4 46 a8 00 	l.sfgtu r6,r21
    21f0:	10 00 00 03 	l.bf 21fc <__udivdi3+0x2f8>
    21f4:	aa e0 00 01 	l.ori r23,r0,0x1
    21f8:	1a e0 00 00 	l.movhi r23,0x0
    21fc:	aa a0 00 03 	l.ori r21,r0,0x3
    2200:	03 ff ff 52 	l.j 1f48 <__udivdi3+0x44>
    2204:	e2 f7 a8 08 	l.sll r23,r23,r21
    2208:	e4 46 88 00 	l.sfgtu r6,r17
    220c:	0f ff ff b7 	l.bnf 20e8 <__udivdi3+0x1e4>
    2210:	aa 20 00 ff 	l.ori r17,r0,0xff
    2214:	1a 20 00 ff 	l.movhi r17,0xff
    2218:	aa 31 ff ff 	l.ori r17,r17,0xffff
    221c:	e4 46 88 00 	l.sfgtu r6,r17
    2220:	13 ff ff b8 	l.bf 2100 <__udivdi3+0x1fc>
    2224:	aa e0 00 18 	l.ori r23,r0,0x18
    2228:	03 ff ff b6 	l.j 2100 <__udivdi3+0x1fc>
    222c:	aa e0 00 10 	l.ori r23,r0,0x10
    2230:	e4 45 88 00 	l.sfgtu r5,r17
    2234:	10 00 00 03 	l.bf 2240 <__udivdi3+0x33c>
    2238:	aa a0 00 01 	l.ori r21,r0,0x1
    223c:	1a a0 00 00 	l.movhi r21,0x0
    2240:	aa 20 00 03 	l.ori r17,r0,0x3
    2244:	03 ff ff 8f 	l.j 2080 <__udivdi3+0x17c>
    2248:	e2 b5 88 08 	l.sll r21,r21,r17
    224c:	e3 26 98 48 	l.srl r25,r6,r19
    2250:	e0 a5 b8 08 	l.sll r5,r5,r23
    2254:	ab e0 00 10 	l.ori r31,r0,0x10
    2258:	e3 39 28 04 	l.or r25,r25,r5
    225c:	e2 23 98 48 	l.srl r17,r3,r19
    2260:	e3 79 f8 48 	l.srl r27,r25,r31
    2264:	e1 91 db 0a 	l.divu r12,r17,r27
    2268:	e2 ac db 06 	l.mul r21,r12,r27
    226c:	e0 63 b8 08 	l.sll r3,r3,r23
    2270:	e2 64 98 48 	l.srl r19,r4,r19
    2274:	e2 31 a8 02 	l.sub r17,r17,r21
    2278:	e2 73 18 04 	l.or r19,r19,r3
    227c:	e2 31 f8 08 	l.sll r17,r17,r31
    2280:	a7 b9 ff ff 	l.andi r29,r25,0xffff
    2284:	e3 f3 f8 48 	l.srl r31,r19,r31
    2288:	e2 bd 63 06 	l.mul r21,r29,r12
    228c:	e2 31 f8 04 	l.or r17,r17,r31
    2290:	e4 b5 88 00 	l.sfleu r21,r17
    2294:	10 00 00 0b 	l.bf 22c0 <__udivdi3+0x3bc>
    2298:	e0 c6 b8 08 	l.sll r6,r6,r23
    229c:	e2 31 c8 00 	l.add r17,r17,r25
    22a0:	e4 59 88 00 	l.sfgtu r25,r17
    22a4:	10 00 00 7e 	l.bf 249c <__udivdi3+0x598>
    22a8:	9f ec ff ff 	l.addi r31,r12,-1
    22ac:	e4 b5 88 00 	l.sfleu r21,r17
    22b0:	10 00 00 7b 	l.bf 249c <__udivdi3+0x598>
    22b4:	15 00 00 00 	l.nop 0x0
    22b8:	9d 8c ff fe 	l.addi r12,r12,-2
    22bc:	e2 31 c8 00 	l.add r17,r17,r25
    22c0:	e2 31 a8 02 	l.sub r17,r17,r21
    22c4:	e2 b1 db 0a 	l.divu r21,r17,r27
    22c8:	e3 75 db 06 	l.mul r27,r21,r27
    22cc:	e2 31 d8 02 	l.sub r17,r17,r27
    22d0:	ab 60 00 10 	l.ori r27,r0,0x10
    22d4:	e2 31 d8 08 	l.sll r17,r17,r27
    22d8:	a6 73 ff ff 	l.andi r19,r19,0xffff
    22dc:	e3 7d ab 06 	l.mul r27,r29,r21
    22e0:	e2 31 98 04 	l.or r17,r17,r19
    22e4:	e4 bb 88 00 	l.sfleu r27,r17
    22e8:	10 00 00 0b 	l.bf 2314 <__udivdi3+0x410>
    22ec:	15 00 00 00 	l.nop 0x0
    22f0:	e2 31 c8 00 	l.add r17,r17,r25
    22f4:	e4 59 88 00 	l.sfgtu r25,r17
    22f8:	10 00 00 65 	l.bf 248c <__udivdi3+0x588>
    22fc:	9e 75 ff ff 	l.addi r19,r21,-1
    2300:	e4 bb 88 00 	l.sfleu r27,r17
    2304:	10 00 00 62 	l.bf 248c <__udivdi3+0x588>
    2308:	15 00 00 00 	l.nop 0x0
    230c:	9e b5 ff fe 	l.addi r21,r21,-2
    2310:	e2 31 c8 00 	l.add r17,r17,r25
    2314:	ab a0 00 10 	l.ori r29,r0,0x10
    2318:	e1 8c e8 08 	l.sll r12,r12,r29
    231c:	e1 8c a8 04 	l.or r12,r12,r21
    2320:	e3 2c e8 48 	l.srl r25,r12,r29
    2324:	a6 66 ff ff 	l.andi r19,r6,0xffff
    2328:	a6 b5 ff ff 	l.andi r21,r21,0xffff
    232c:	e0 c6 e8 48 	l.srl r6,r6,r29
    2330:	e3 f5 9b 06 	l.mul r31,r21,r19
    2334:	e2 79 9b 06 	l.mul r19,r25,r19
    2338:	e2 b5 33 06 	l.mul r21,r21,r6
    233c:	e2 b5 98 00 	l.add r21,r21,r19
    2340:	e3 bf e8 48 	l.srl r29,r31,r29
    2344:	e2 bd a8 00 	l.add r21,r29,r21
    2348:	e4 b3 a8 00 	l.sfleu r19,r21
    234c:	e2 31 d8 02 	l.sub r17,r17,r27
    2350:	10 00 00 04 	l.bf 2360 <__udivdi3+0x45c>
    2354:	e3 39 33 06 	l.mul r25,r25,r6
    2358:	1a 60 00 01 	l.movhi r19,0x1
    235c:	e3 39 98 00 	l.add r25,r25,r19
    2360:	aa 60 00 10 	l.ori r19,r0,0x10
    2364:	e2 75 98 48 	l.srl r19,r21,r19
    2368:	e2 73 c8 00 	l.add r19,r19,r25
    236c:	e4 91 98 00 	l.sfltu r17,r19
    2370:	10 00 00 0c 	l.bf 23a0 <__udivdi3+0x49c>
    2374:	e4 11 98 00 	l.sfeq r17,r19
    2378:	0f ff ff 53 	l.bnf 20c4 <__udivdi3+0x1c0>
    237c:	19 60 00 00 	l.movhi r11,0x0
    2380:	aa 20 00 10 	l.ori r17,r0,0x10
    2384:	e2 b5 88 08 	l.sll r21,r21,r17
    2388:	a7 ff ff ff 	l.andi r31,r31,0xffff
    238c:	e0 84 b8 08 	l.sll r4,r4,r23
    2390:	e2 b5 f8 00 	l.add r21,r21,r31
    2394:	e4 84 a8 00 	l.sfltu r4,r21
    2398:	0f ff ff 4b 	l.bnf 20c4 <__udivdi3+0x1c0>
    239c:	15 00 00 00 	l.nop 0x0
    23a0:	9d 8c ff ff 	l.addi r12,r12,-1
    23a4:	19 60 00 00 	l.movhi r11,0x0
    23a8:	44 00 48 00 	l.jr r9
    23ac:	15 00 00 00 	l.nop 0x0
    23b0:	ab a0 00 10 	l.ori r29,r0,0x10
    23b4:	e0 c6 d8 08 	l.sll r6,r6,r27
    23b8:	e2 23 a8 48 	l.srl r17,r3,r21
    23bc:	e2 e6 e8 48 	l.srl r23,r6,r29
    23c0:	e1 71 bb 0a 	l.divu r11,r17,r23
    23c4:	e2 6b bb 06 	l.mul r19,r11,r23
    23c8:	e0 63 d8 08 	l.sll r3,r3,r27
    23cc:	e2 a4 a8 48 	l.srl r21,r4,r21
    23d0:	e2 31 98 02 	l.sub r17,r17,r19
    23d4:	e2 b5 18 04 	l.or r21,r21,r3
    23d8:	e2 75 e8 48 	l.srl r19,r21,r29
    23dc:	e2 31 e8 08 	l.sll r17,r17,r29
    23e0:	a7 26 ff ff 	l.andi r25,r6,0xffff
    23e4:	e2 31 98 04 	l.or r17,r17,r19
    23e8:	e3 b9 5b 06 	l.mul r29,r25,r11
    23ec:	e4 bd 88 00 	l.sfleu r29,r17
    23f0:	10 00 00 0b 	l.bf 241c <__udivdi3+0x518>
    23f4:	e2 64 d8 08 	l.sll r19,r4,r27
    23f8:	e2 31 30 00 	l.add r17,r17,r6
    23fc:	e4 46 88 00 	l.sfgtu r6,r17
    2400:	10 00 00 25 	l.bf 2494 <__udivdi3+0x590>
    2404:	9f 6b ff ff 	l.addi r27,r11,-1
    2408:	e4 bd 88 00 	l.sfleu r29,r17
    240c:	10 00 00 22 	l.bf 2494 <__udivdi3+0x590>
    2410:	15 00 00 00 	l.nop 0x0
    2414:	9d 6b ff fe 	l.addi r11,r11,-2
    2418:	e2 31 30 00 	l.add r17,r17,r6
    241c:	e2 31 e8 02 	l.sub r17,r17,r29
    2420:	e3 71 bb 0a 	l.divu r27,r17,r23
    2424:	e3 bb bb 06 	l.mul r29,r27,r23
    2428:	e2 31 e8 02 	l.sub r17,r17,r29
    242c:	ab a0 00 10 	l.ori r29,r0,0x10
    2430:	e0 71 e8 08 	l.sll r3,r17,r29
    2434:	a6 b5 ff ff 	l.andi r21,r21,0xffff
    2438:	e2 39 db 06 	l.mul r17,r25,r27
    243c:	e0 63 a8 04 	l.or r3,r3,r21
    2440:	e4 b1 18 00 	l.sfleu r17,r3
    2444:	10 00 00 0b 	l.bf 2470 <__udivdi3+0x56c>
    2448:	15 00 00 00 	l.nop 0x0
    244c:	e0 63 30 00 	l.add r3,r3,r6
    2450:	e4 46 18 00 	l.sfgtu r6,r3
    2454:	10 00 00 0c 	l.bf 2484 <__udivdi3+0x580>
    2458:	9e bb ff ff 	l.addi r21,r27,-1
    245c:	e4 b1 18 00 	l.sfleu r17,r3
    2460:	10 00 00 09 	l.bf 2484 <__udivdi3+0x580>
    2464:	15 00 00 00 	l.nop 0x0
    2468:	9f 7b ff fe 	l.addi r27,r27,-2
    246c:	e0 63 30 00 	l.add r3,r3,r6
    2470:	aa a0 00 10 	l.ori r21,r0,0x10
    2474:	e1 6b a8 08 	l.sll r11,r11,r21
    2478:	e0 63 88 02 	l.sub r3,r3,r17
    247c:	03 ff ff 30 	l.j 213c <__udivdi3+0x238>
    2480:	e1 6b d8 04 	l.or r11,r11,r27
    2484:	03 ff ff fb 	l.j 2470 <__udivdi3+0x56c>
    2488:	e3 75 a8 04 	l.or r27,r21,r21
    248c:	03 ff ff a2 	l.j 2314 <__udivdi3+0x410>
    2490:	e2 b3 98 04 	l.or r21,r19,r19
    2494:	03 ff ff e2 	l.j 241c <__udivdi3+0x518>
    2498:	e1 7b d8 04 	l.or r11,r27,r27
    249c:	03 ff ff 89 	l.j 22c0 <__udivdi3+0x3bc>
    24a0:	e1 9f f8 04 	l.or r12,r31,r31
    24a4:	19 80 00 00 	l.movhi r12,0x0
    24a8:	03 ff ff 07 	l.j 20c4 <__udivdi3+0x1c0>
    24ac:	19 60 00 00 	l.movhi r11,0x0
    24b0:	03 ff ff 36 	l.j 2188 <__udivdi3+0x284>
    24b4:	e0 63 30 00 	l.add r3,r3,r6
    24b8:	03 ff fe c9 	l.j 1fdc <__udivdi3+0xd8>
    24bc:	e2 31 30 00 	l.add r17,r17,r6

000024c0 <__umoddi3>:
    24c0:	1a e0 00 00 	l.movhi r23,0x0
    24c4:	e4 25 b8 00 	l.sfne r5,r23
    24c8:	e2 64 20 04 	l.or r19,r4,r4
    24cc:	e2 a3 18 04 	l.or r21,r3,r3
    24d0:	10 00 00 33 	l.bf 259c <__umoddi3+0xdc>
    24d4:	e2 23 18 04 	l.or r17,r3,r3
    24d8:	e4 a6 18 00 	l.sfleu r6,r3
    24dc:	10 00 00 5a 	l.bf 2644 <__umoddi3+0x184>
    24e0:	aa a0 ff ff 	l.ori r21,r0,0xffff
    24e4:	e4 46 a8 00 	l.sfgtu r6,r21
    24e8:	0c 00 00 9b 	l.bnf 2754 <__umoddi3+0x294>
    24ec:	aa a0 00 ff 	l.ori r21,r0,0xff
    24f0:	1a a0 00 ff 	l.movhi r21,0xff
    24f4:	aa b5 ff ff 	l.ori r21,r21,0xffff
    24f8:	e4 46 a8 00 	l.sfgtu r6,r21
    24fc:	10 00 00 03 	l.bf 2508 <__umoddi3+0x48>
    2500:	aa e0 00 18 	l.ori r23,r0,0x18
    2504:	aa e0 00 10 	l.ori r23,r0,0x10
    2508:	1a a0 00 00 	l.movhi r21,0x0
    250c:	e3 26 b8 48 	l.srl r25,r6,r23
    2510:	9e b5 2b c8 	l.addi r21,r21,11208
    2514:	e2 b5 c8 00 	l.add r21,r21,r25
    2518:	8e b5 00 00 	l.lbz r21,0(r21)
    251c:	e2 b5 b8 00 	l.add r21,r21,r23
    2520:	ab 20 00 20 	l.ori r25,r0,0x20
    2524:	e4 19 a8 00 	l.sfeq r25,r21
    2528:	10 00 00 07 	l.bf 2544 <__umoddi3+0x84>
    252c:	e2 f9 a8 02 	l.sub r23,r25,r21
    2530:	e2 23 b8 08 	l.sll r17,r3,r23
    2534:	e2 a4 a8 48 	l.srl r21,r4,r21
    2538:	e0 c6 b8 08 	l.sll r6,r6,r23
    253c:	e2 35 88 04 	l.or r17,r21,r17
    2540:	e2 64 b8 08 	l.sll r19,r4,r23
    2544:	ab e0 00 10 	l.ori r31,r0,0x10
    2548:	e3 26 f8 48 	l.srl r25,r6,r31
    254c:	e3 b1 cb 0a 	l.divu r29,r17,r25
    2550:	e2 bd cb 06 	l.mul r21,r29,r25
    2554:	e2 31 a8 02 	l.sub r17,r17,r21
    2558:	e2 b1 f8 08 	l.sll r21,r17,r31
    255c:	a7 66 ff ff 	l.andi r27,r6,0xffff
    2560:	e2 33 f8 48 	l.srl r17,r19,r31
    2564:	e3 bb eb 06 	l.mul r29,r27,r29
    2568:	e2 35 88 04 	l.or r17,r21,r17
    256c:	e4 bd 88 00 	l.sfleu r29,r17
    2570:	10 00 00 09 	l.bf 2594 <__umoddi3+0xd4>
    2574:	15 00 00 00 	l.nop 0x0
    2578:	e2 31 30 00 	l.add r17,r17,r6
    257c:	e4 46 88 00 	l.sfgtu r6,r17
    2580:	10 00 00 05 	l.bf 2594 <__umoddi3+0xd4>
    2584:	e4 bd 88 00 	l.sfleu r29,r17
    2588:	10 00 00 03 	l.bf 2594 <__umoddi3+0xd4>
    258c:	15 00 00 00 	l.nop 0x0
    2590:	e2 31 30 00 	l.add r17,r17,r6
    2594:	00 00 00 59 	l.j 26f8 <__umoddi3+0x238>
    2598:	e2 31 e8 02 	l.sub r17,r17,r29
    259c:	e4 a5 18 00 	l.sfleu r5,r3
    25a0:	10 00 00 06 	l.bf 25b8 <__umoddi3+0xf8>
    25a4:	e3 64 20 04 	l.or r27,r4,r4
    25a8:	e1 63 18 04 	l.or r11,r3,r3
    25ac:	e1 84 20 04 	l.or r12,r4,r4
    25b0:	44 00 48 00 	l.jr r9
    25b4:	15 00 00 00 	l.nop 0x0
    25b8:	aa 20 ff ff 	l.ori r17,r0,0xffff
    25bc:	e4 45 88 00 	l.sfgtu r5,r17
    25c0:	0c 00 00 76 	l.bnf 2798 <__umoddi3+0x2d8>
    25c4:	aa 20 00 ff 	l.ori r17,r0,0xff
    25c8:	1a 20 00 ff 	l.movhi r17,0xff
    25cc:	aa 31 ff ff 	l.ori r17,r17,0xffff
    25d0:	e4 45 88 00 	l.sfgtu r5,r17
    25d4:	10 00 00 03 	l.bf 25e0 <__umoddi3+0x120>
    25d8:	aa 60 00 18 	l.ori r19,r0,0x18
    25dc:	aa 60 00 10 	l.ori r19,r0,0x10
    25e0:	1a 20 00 00 	l.movhi r17,0x0
    25e4:	e2 e5 98 48 	l.srl r23,r5,r19
    25e8:	9e 31 2b c8 	l.addi r17,r17,11208
    25ec:	e2 31 b8 00 	l.add r17,r17,r23
    25f0:	8e f1 00 00 	l.lbz r23,0(r17)
    25f4:	e2 f7 98 00 	l.add r23,r23,r19
    25f8:	aa 20 00 20 	l.ori r17,r0,0x20
    25fc:	e4 31 b8 00 	l.sfne r17,r23
    2600:	10 00 00 9b 	l.bf 286c <__umoddi3+0x3ac>
    2604:	e3 31 b8 02 	l.sub r25,r17,r23
    2608:	e4 85 18 00 	l.sfltu r5,r3
    260c:	10 00 00 04 	l.bf 261c <__umoddi3+0x15c>
    2610:	e4 46 20 00 	l.sfgtu r6,r4
    2614:	10 00 00 09 	l.bf 2638 <__umoddi3+0x178>
    2618:	e1 75 a8 04 	l.or r11,r21,r21
    261c:	e3 64 30 02 	l.sub r27,r4,r6
    2620:	e4 84 d8 00 	l.sfltu r4,r27
    2624:	e0 a3 28 02 	l.sub r5,r3,r5
    2628:	0c 00 00 f9 	l.bnf 2a0c <__umoddi3+0x54c>
    262c:	aa a0 00 01 	l.ori r21,r0,0x1
    2630:	e2 a5 a8 02 	l.sub r21,r5,r21
    2634:	e1 75 a8 04 	l.or r11,r21,r21
    2638:	e1 9b d8 04 	l.or r12,r27,r27
    263c:	44 00 48 00 	l.jr r9
    2640:	15 00 00 00 	l.nop 0x0
    2644:	1a 20 00 00 	l.movhi r17,0x0
    2648:	e4 26 88 00 	l.sfne r6,r17
    264c:	10 00 00 49 	l.bf 2770 <__umoddi3+0x2b0>
    2650:	aa 20 ff ff 	l.ori r17,r0,0xffff
    2654:	aa 20 00 01 	l.ori r17,r0,0x1
    2658:	e0 d1 33 0a 	l.divu r6,r17,r6
    265c:	aa 20 00 ff 	l.ori r17,r0,0xff
    2660:	e4 46 88 00 	l.sfgtu r6,r17
    2664:	10 00 00 03 	l.bf 2670 <__umoddi3+0x1b0>
    2668:	aa a0 00 01 	l.ori r21,r0,0x1
    266c:	1a a0 00 00 	l.movhi r21,0x0
    2670:	aa 20 00 03 	l.ori r17,r0,0x3
    2674:	e2 b5 88 08 	l.sll r21,r21,r17
    2678:	1a 20 00 00 	l.movhi r17,0x0
    267c:	e2 e6 a8 48 	l.srl r23,r6,r21
    2680:	9e 31 2b c8 	l.addi r17,r17,11208
    2684:	e2 31 b8 00 	l.add r17,r17,r23
    2688:	8e 31 00 00 	l.lbz r17,0(r17)
    268c:	e2 31 a8 00 	l.add r17,r17,r21
    2690:	aa a0 00 20 	l.ori r21,r0,0x20
    2694:	e4 35 88 00 	l.sfne r21,r17
    2698:	10 00 00 47 	l.bf 27b4 <__umoddi3+0x2f4>
    269c:	e2 f5 88 02 	l.sub r23,r21,r17
    26a0:	aa a0 00 10 	l.ori r21,r0,0x10
    26a4:	e2 23 30 02 	l.sub r17,r3,r6
    26a8:	e3 26 a8 48 	l.srl r25,r6,r21
    26ac:	a7 66 ff ff 	l.andi r27,r6,0xffff
    26b0:	e2 b1 cb 0a 	l.divu r21,r17,r25
    26b4:	e3 b5 cb 06 	l.mul r29,r21,r25
    26b8:	e2 31 e8 02 	l.sub r17,r17,r29
    26bc:	ab a0 00 10 	l.ori r29,r0,0x10
    26c0:	e2 31 e8 08 	l.sll r17,r17,r29
    26c4:	e3 b3 e8 48 	l.srl r29,r19,r29
    26c8:	e2 b5 db 06 	l.mul r21,r21,r27
    26cc:	e2 31 e8 04 	l.or r17,r17,r29
    26d0:	e4 b5 88 00 	l.sfleu r21,r17
    26d4:	10 00 00 08 	l.bf 26f4 <__umoddi3+0x234>
    26d8:	15 00 00 00 	l.nop 0x0
    26dc:	e2 31 30 00 	l.add r17,r17,r6
    26e0:	e4 46 88 00 	l.sfgtu r6,r17
    26e4:	10 00 00 04 	l.bf 26f4 <__umoddi3+0x234>
    26e8:	e4 b5 88 00 	l.sfleu r21,r17
    26ec:	0c 00 00 d1 	l.bnf 2a30 <__umoddi3+0x570>
    26f0:	15 00 00 00 	l.nop 0x0
    26f4:	e2 31 a8 02 	l.sub r17,r17,r21
    26f8:	e2 b1 cb 0a 	l.divu r21,r17,r25
    26fc:	e3 35 cb 06 	l.mul r25,r21,r25
    2700:	e2 31 c8 02 	l.sub r17,r17,r25
    2704:	ab 20 00 10 	l.ori r25,r0,0x10
    2708:	e1 91 c8 08 	l.sll r12,r17,r25
    270c:	a6 73 ff ff 	l.andi r19,r19,0xffff
    2710:	e2 35 db 06 	l.mul r17,r21,r27
    2714:	e1 8c 98 04 	l.or r12,r12,r19
    2718:	e4 b1 60 00 	l.sfleu r17,r12
    271c:	10 00 00 09 	l.bf 2740 <__umoddi3+0x280>
    2720:	15 00 00 00 	l.nop 0x0
    2724:	e1 8c 30 00 	l.add r12,r12,r6
    2728:	e4 46 60 00 	l.sfgtu r6,r12
    272c:	10 00 00 05 	l.bf 2740 <__umoddi3+0x280>
    2730:	e4 b1 60 00 	l.sfleu r17,r12
    2734:	10 00 00 03 	l.bf 2740 <__umoddi3+0x280>
    2738:	15 00 00 00 	l.nop 0x0
    273c:	e1 8c 30 00 	l.add r12,r12,r6
    2740:	e1 8c 88 02 	l.sub r12,r12,r17
    2744:	19 60 00 00 	l.movhi r11,0x0
    2748:	e1 8c b8 48 	l.srl r12,r12,r23
    274c:	44 00 48 00 	l.jr r9
    2750:	15 00 00 00 	l.nop 0x0
    2754:	e4 46 a8 00 	l.sfgtu r6,r21
    2758:	10 00 00 03 	l.bf 2764 <__umoddi3+0x2a4>
    275c:	aa e0 00 01 	l.ori r23,r0,0x1
    2760:	1a e0 00 00 	l.movhi r23,0x0
    2764:	aa a0 00 03 	l.ori r21,r0,0x3
    2768:	03 ff ff 68 	l.j 2508 <__umoddi3+0x48>
    276c:	e2 f7 a8 08 	l.sll r23,r23,r21
    2770:	e4 46 88 00 	l.sfgtu r6,r17
    2774:	0f ff ff bb 	l.bnf 2660 <__umoddi3+0x1a0>
    2778:	aa 20 00 ff 	l.ori r17,r0,0xff
    277c:	1a 20 00 ff 	l.movhi r17,0xff
    2780:	aa 31 ff ff 	l.ori r17,r17,0xffff
    2784:	e4 46 88 00 	l.sfgtu r6,r17
    2788:	13 ff ff bc 	l.bf 2678 <__umoddi3+0x1b8>
    278c:	aa a0 00 18 	l.ori r21,r0,0x18
    2790:	03 ff ff ba 	l.j 2678 <__umoddi3+0x1b8>
    2794:	aa a0 00 10 	l.ori r21,r0,0x10
    2798:	e4 45 88 00 	l.sfgtu r5,r17
    279c:	10 00 00 03 	l.bf 27a8 <__umoddi3+0x2e8>
    27a0:	aa 60 00 01 	l.ori r19,r0,0x1
    27a4:	1a 60 00 00 	l.movhi r19,0x0
    27a8:	aa 20 00 03 	l.ori r17,r0,0x3
    27ac:	03 ff ff 8d 	l.j 25e0 <__umoddi3+0x120>
    27b0:	e2 73 88 08 	l.sll r19,r19,r17
    27b4:	ab e0 00 10 	l.ori r31,r0,0x10
    27b8:	e0 c6 b8 08 	l.sll r6,r6,r23
    27bc:	e2 a3 88 48 	l.srl r21,r3,r17
    27c0:	e3 26 f8 48 	l.srl r25,r6,r31
    27c4:	e3 b5 cb 0a 	l.divu r29,r21,r25
    27c8:	e2 7d cb 06 	l.mul r19,r29,r25
    27cc:	e0 63 b8 08 	l.sll r3,r3,r23
    27d0:	e2 24 88 48 	l.srl r17,r4,r17
    27d4:	e2 b5 98 02 	l.sub r21,r21,r19
    27d8:	e2 31 18 04 	l.or r17,r17,r3
    27dc:	e2 71 f8 48 	l.srl r19,r17,r31
    27e0:	a7 66 ff ff 	l.andi r27,r6,0xffff
    27e4:	e2 b5 f8 08 	l.sll r21,r21,r31
    27e8:	e2 b5 98 04 	l.or r21,r21,r19
    27ec:	e3 bb eb 06 	l.mul r29,r27,r29
    27f0:	e4 bd a8 00 	l.sfleu r29,r21
    27f4:	10 00 00 09 	l.bf 2818 <__umoddi3+0x358>
    27f8:	e2 64 b8 08 	l.sll r19,r4,r23
    27fc:	e2 b5 30 00 	l.add r21,r21,r6
    2800:	e4 46 a8 00 	l.sfgtu r6,r21
    2804:	10 00 00 05 	l.bf 2818 <__umoddi3+0x358>
    2808:	e4 bd a8 00 	l.sfleu r29,r21
    280c:	10 00 00 03 	l.bf 2818 <__umoddi3+0x358>
    2810:	15 00 00 00 	l.nop 0x0
    2814:	e2 b5 30 00 	l.add r21,r21,r6
    2818:	e2 b5 e8 02 	l.sub r21,r21,r29
    281c:	e3 b5 cb 0a 	l.divu r29,r21,r25
    2820:	e3 fd cb 06 	l.mul r31,r29,r25
    2824:	e2 b5 f8 02 	l.sub r21,r21,r31
    2828:	ab e0 00 10 	l.ori r31,r0,0x10
    282c:	e2 b5 f8 08 	l.sll r21,r21,r31
    2830:	a6 31 ff ff 	l.andi r17,r17,0xffff
    2834:	e3 bb eb 06 	l.mul r29,r27,r29
    2838:	e2 35 88 04 	l.or r17,r21,r17
    283c:	e4 bd 88 00 	l.sfleu r29,r17
    2840:	10 00 00 09 	l.bf 2864 <__umoddi3+0x3a4>
    2844:	15 00 00 00 	l.nop 0x0
    2848:	e2 31 30 00 	l.add r17,r17,r6
    284c:	e4 46 88 00 	l.sfgtu r6,r17
    2850:	10 00 00 05 	l.bf 2864 <__umoddi3+0x3a4>
    2854:	e4 bd 88 00 	l.sfleu r29,r17
    2858:	10 00 00 03 	l.bf 2864 <__umoddi3+0x3a4>
    285c:	15 00 00 00 	l.nop 0x0
    2860:	e2 31 30 00 	l.add r17,r17,r6
    2864:	03 ff ff 93 	l.j 26b0 <__umoddi3+0x1f0>
    2868:	e2 31 e8 02 	l.sub r17,r17,r29
    286c:	e3 a6 b8 48 	l.srl r29,r6,r23
    2870:	e0 a5 c8 08 	l.sll r5,r5,r25
    2874:	a9 a0 00 10 	l.ori r13,r0,0x10
    2878:	e3 bd 28 04 	l.or r29,r29,r5
    287c:	e2 23 b8 48 	l.srl r17,r3,r23
    2880:	e2 7d 68 48 	l.srl r19,r29,r13
    2884:	e2 b1 9b 0a 	l.divu r21,r17,r19
    2888:	e3 75 9b 06 	l.mul r27,r21,r19
    288c:	e0 63 c8 08 	l.sll r3,r3,r25
    2890:	e3 e4 b8 48 	l.srl r31,r4,r23
    2894:	e2 31 d8 02 	l.sub r17,r17,r27
    2898:	e3 ff 18 04 	l.or r31,r31,r3
    289c:	e3 71 68 08 	l.sll r27,r17,r13
    28a0:	a5 fd ff ff 	l.andi r15,r29,0xffff
    28a4:	e2 3f 68 48 	l.srl r17,r31,r13
    28a8:	e1 8f ab 06 	l.mul r12,r15,r21
    28ac:	e2 3b 88 04 	l.or r17,r27,r17
    28b0:	e4 ac 88 00 	l.sfleu r12,r17
    28b4:	e0 c6 c8 08 	l.sll r6,r6,r25
    28b8:	10 00 00 0b 	l.bf 28e4 <__umoddi3+0x424>
    28bc:	e1 a4 c8 08 	l.sll r13,r4,r25
    28c0:	e2 31 e8 00 	l.add r17,r17,r29
    28c4:	e4 5d 88 00 	l.sfgtu r29,r17
    28c8:	10 00 00 58 	l.bf 2a28 <__umoddi3+0x568>
    28cc:	9f 75 ff ff 	l.addi r27,r21,-1
    28d0:	e4 ac 88 00 	l.sfleu r12,r17
    28d4:	10 00 00 55 	l.bf 2a28 <__umoddi3+0x568>
    28d8:	15 00 00 00 	l.nop 0x0
    28dc:	9e b5 ff fe 	l.addi r21,r21,-2
    28e0:	e2 31 e8 00 	l.add r17,r17,r29
    28e4:	e2 31 60 02 	l.sub r17,r17,r12
    28e8:	e3 71 9b 0a 	l.divu r27,r17,r19
    28ec:	e2 7b 9b 06 	l.mul r19,r27,r19
    28f0:	e2 31 98 02 	l.sub r17,r17,r19
    28f4:	aa 60 00 10 	l.ori r19,r0,0x10
    28f8:	e2 71 98 08 	l.sll r19,r17,r19
    28fc:	a7 ff ff ff 	l.andi r31,r31,0xffff
    2900:	e1 ef db 06 	l.mul r15,r15,r27
    2904:	e2 73 f8 04 	l.or r19,r19,r31
    2908:	e4 af 98 00 	l.sfleu r15,r19
    290c:	10 00 00 0b 	l.bf 2938 <__umoddi3+0x478>
    2910:	15 00 00 00 	l.nop 0x0
    2914:	e2 73 e8 00 	l.add r19,r19,r29
    2918:	e4 5d 98 00 	l.sfgtu r29,r19
    291c:	10 00 00 41 	l.bf 2a20 <__umoddi3+0x560>
    2920:	9e 3b ff ff 	l.addi r17,r27,-1
    2924:	e4 af 98 00 	l.sfleu r15,r19
    2928:	10 00 00 3e 	l.bf 2a20 <__umoddi3+0x560>
    292c:	15 00 00 00 	l.nop 0x0
    2930:	9f 7b ff fe 	l.addi r27,r27,-2
    2934:	e2 73 e8 00 	l.add r19,r19,r29
    2938:	aa 20 00 10 	l.ori r17,r0,0x10
    293c:	e2 b5 88 08 	l.sll r21,r21,r17
    2940:	e2 b5 d8 04 	l.or r21,r21,r27
    2944:	e2 b5 88 48 	l.srl r21,r21,r17
    2948:	e1 66 88 48 	l.srl r11,r6,r17
    294c:	a7 7b ff ff 	l.andi r27,r27,0xffff
    2950:	a7 e6 ff ff 	l.andi r31,r6,0xffff
    2954:	e1 9b fb 06 	l.mul r12,r27,r31
    2958:	e3 f5 fb 06 	l.mul r31,r21,r31
    295c:	e3 7b 5b 06 	l.mul r27,r27,r11
    2960:	e3 7b f8 00 	l.add r27,r27,r31
    2964:	e2 2c 88 48 	l.srl r17,r12,r17
    2968:	e2 31 d8 00 	l.add r17,r17,r27
    296c:	e4 bf 88 00 	l.sfleu r31,r17
    2970:	e2 73 78 02 	l.sub r19,r19,r15
    2974:	10 00 00 04 	l.bf 2984 <__umoddi3+0x4c4>
    2978:	e2 b5 5b 06 	l.mul r21,r21,r11
    297c:	1b 60 00 01 	l.movhi r27,0x1
    2980:	e2 b5 d8 00 	l.add r21,r21,r27
    2984:	ab e0 00 10 	l.ori r31,r0,0x10
    2988:	e3 71 f8 48 	l.srl r27,r17,r31
    298c:	e2 bb a8 00 	l.add r21,r27,r21
    2990:	e2 31 f8 08 	l.sll r17,r17,r31
    2994:	a5 8c ff ff 	l.andi r12,r12,0xffff
    2998:	e4 93 a8 00 	l.sfltu r19,r21
    299c:	10 00 00 14 	l.bf 29ec <__umoddi3+0x52c>
    29a0:	e2 31 60 00 	l.add r17,r17,r12
    29a4:	e4 33 a8 00 	l.sfne r19,r21
    29a8:	0c 00 00 0f 	l.bnf 29e4 <__umoddi3+0x524>
    29ac:	e4 6d 88 00 	l.sfgeu r13,r17
    29b0:	e2 2d 88 02 	l.sub r17,r13,r17
    29b4:	e4 8d 88 00 	l.sfltu r13,r17
    29b8:	e1 73 a8 02 	l.sub r11,r19,r21
    29bc:	10 00 00 03 	l.bf 29c8 <__umoddi3+0x508>
    29c0:	aa 60 00 01 	l.ori r19,r0,0x1
    29c4:	1a 60 00 00 	l.movhi r19,0x0
    29c8:	e1 6b 98 02 	l.sub r11,r11,r19
    29cc:	e2 eb b8 08 	l.sll r23,r11,r23
    29d0:	e2 31 c8 48 	l.srl r17,r17,r25
    29d4:	e1 6b c8 48 	l.srl r11,r11,r25
    29d8:	e1 97 88 04 	l.or r12,r23,r17
    29dc:	44 00 48 00 	l.jr r9
    29e0:	15 00 00 00 	l.nop 0x0
    29e4:	13 ff ff f3 	l.bf 29b0 <__umoddi3+0x4f0>
    29e8:	15 00 00 00 	l.nop 0x0
    29ec:	e0 d1 30 02 	l.sub r6,r17,r6
    29f0:	e4 91 30 00 	l.sfltu r17,r6
    29f4:	0c 00 00 09 	l.bnf 2a18 <__umoddi3+0x558>
    29f8:	aa 20 00 01 	l.ori r17,r0,0x1
    29fc:	e2 31 e8 00 	l.add r17,r17,r29
    2a00:	e2 b5 88 02 	l.sub r21,r21,r17
    2a04:	03 ff ff eb 	l.j 29b0 <__umoddi3+0x4f0>
    2a08:	e2 26 30 04 	l.or r17,r6,r6
    2a0c:	1a a0 00 00 	l.movhi r21,0x0
    2a10:	03 ff ff 09 	l.j 2634 <__umoddi3+0x174>
    2a14:	e2 a5 a8 02 	l.sub r21,r5,r21
    2a18:	03 ff ff f9 	l.j 29fc <__umoddi3+0x53c>
    2a1c:	1a 20 00 00 	l.movhi r17,0x0
    2a20:	03 ff ff c6 	l.j 2938 <__umoddi3+0x478>
    2a24:	e3 71 88 04 	l.or r27,r17,r17
    2a28:	03 ff ff af 	l.j 28e4 <__umoddi3+0x424>
    2a2c:	e2 bb d8 04 	l.or r21,r27,r27
    2a30:	03 ff ff 31 	l.j 26f4 <__umoddi3+0x234>
    2a34:	e2 31 30 00 	l.add r17,r17,r6
