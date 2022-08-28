
fib:     file format elf64-x86-64


Disassembly of section .interp:

00000000000002a8 <.interp>:
 2a8:	2f                   	(bad)  
 2a9:	6c                   	insb   (%dx),%es:(%rdi)
 2aa:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 2b1:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 2b6:	78 2d                	js     2e5 <_init-0xd1b>
 2b8:	78 38                	js     2f2 <_init-0xd0e>
 2ba:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 2c0:	6f                   	outsl  %ds:(%rsi),(%dx)
 2c1:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.gnu.build-id:

00000000000002c4 <.note.gnu.build-id>:
 2c4:	04 00                	add    $0x0,%al
 2c6:	00 00                	add    %al,(%rax)
 2c8:	14 00                	adc    $0x0,%al
 2ca:	00 00                	add    %al,(%rax)
 2cc:	03 00                	add    (%rax),%eax
 2ce:	00 00                	add    %al,(%rax)
 2d0:	47                   	rex.RXB
 2d1:	4e 55                	rex.WRX push %rbp
 2d3:	00 8f 73 52 34 a6    	add    %cl,-0x59cbad8d(%rdi)
 2d9:	91                   	xchg   %eax,%ecx
 2da:	c7                   	(bad)  
 2db:	fb                   	sti    
 2dc:	ec                   	in     (%dx),%al
 2dd:	f2 f5                	repnz cmc 
 2df:	51                   	push   %rcx
 2e0:	db bf a5 fb b1 42    	fstpt  0x42b1fba5(%rdi)
 2e6:	a2                   	.byte 0xa2
 2e7:	9e                   	sahf   

Disassembly of section .note.ABI-tag:

00000000000002e8 <.note.ABI-tag>:
 2e8:	04 00                	add    $0x0,%al
 2ea:	00 00                	add    %al,(%rax)
 2ec:	10 00                	adc    %al,(%rax)
 2ee:	00 00                	add    %al,(%rax)
 2f0:	01 00                	add    %eax,(%rax)
 2f2:	00 00                	add    %al,(%rax)
 2f4:	47                   	rex.RXB
 2f5:	4e 55                	rex.WRX push %rbp
 2f7:	00 00                	add    %al,(%rax)
 2f9:	00 00                	add    %al,(%rax)
 2fb:	00 03                	add    %al,(%rbx)
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 02                	add    %al,(%rdx)
 301:	00 00                	add    %al,(%rax)
 303:	00 00                	add    %al,(%rax)
 305:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

0000000000000308 <.gnu.hash>:
 308:	02 00                	add    (%rax),%al
 30a:	00 00                	add    %al,(%rax)
 30c:	08 00                	or     %al,(%rax)
 30e:	00 00                	add    %al,(%rax)
 310:	01 00                	add    %eax,(%rax)
 312:	00 00                	add    %al,(%rax)
 314:	06                   	(bad)  
 315:	00 00                	add    %al,(%rax)
 317:	00 00                	add    %al,(%rax)
 319:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
 31f:	00 08                	add    %cl,(%rax)
 321:	00 00                	add    %al,(%rax)
 323:	00 00                	add    %al,(%rax)
 325:	00 00                	add    %al,(%rax)
 327:	00 d1                	add    %dl,%cl
 329:	65 ce                	gs (bad) 
 32b:	6d                   	insl   (%dx),%es:(%rdi)

Disassembly of section .dynsym:

0000000000000330 <.dynsym>:
	...
 348:	4b 00 00             	rex.WXB add %al,(%r8)
 34b:	00 20                	add    %ah,(%rax)
	...
 35d:	00 00                	add    %al,(%rax)
 35f:	00 01                	add    %al,(%rcx)
 361:	00 00                	add    %al,(%rax)
 363:	00 12                	add    %dl,(%rdx)
	...
 375:	00 00                	add    %al,(%rax)
 377:	00 06                	add    %al,(%rsi)
 379:	00 00                	add    %al,(%rax)
 37b:	00 12                	add    %dl,(%rdx)
	...
 38d:	00 00                	add    %al,(%rax)
 38f:	00 23                	add    %ah,(%rbx)
 391:	00 00                	add    %al,(%rax)
 393:	00 12                	add    %dl,(%rdx)
	...
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 67 00             	add    %ah,0x0(%rdi)
 3aa:	00 00                	add    %al,(%rax)
 3ac:	20 00                	and    %al,(%rax)
	...
 3be:	00 00                	add    %al,(%rax)
 3c0:	0d 00 00 00 12       	or     $0x12000000,%eax
	...
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 76 00             	add    %dh,0x0(%rsi)
 3da:	00 00                	add    %al,(%rax)
 3dc:	20 00                	and    %al,(%rax)
	...
 3ee:	00 00                	add    %al,(%rax)
 3f0:	14 00                	adc    $0x0,%al
 3f2:	00 00                	add    %al,(%rax)
 3f4:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000408 <.dynstr>:
 408:	00 70 75             	add    %dh,0x75(%rax)
 40b:	74 73                	je     480 <_init-0xb80>
 40d:	00 70 72             	add    %dh,0x72(%rax)
 410:	69 6e 74 66 00 73 74 	imul   $0x74730066,0x74(%rsi),%ebp
 417:	72 74                	jb     48d <_init-0xb73>
 419:	6f                   	outsl  %ds:(%rsi),(%dx)
 41a:	6c                   	insb   (%dx),%es:(%rdi)
 41b:	00 5f 5f             	add    %bl,0x5f(%rdi)
 41e:	63 78 61             	movsxd 0x61(%rax),%edi
 421:	5f                   	pop    %rdi
 422:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 428:	7a 65                	jp     48f <_init-0xb71>
 42a:	00 5f 5f             	add    %bl,0x5f(%rdi)
 42d:	6c                   	insb   (%dx),%es:(%rdi)
 42e:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 435:	72 74                	jb     4ab <_init-0xb55>
 437:	5f                   	pop    %rdi
 438:	6d                   	insl   (%dx),%es:(%rdi)
 439:	61                   	(bad)  
 43a:	69 6e 00 6c 69 62 63 	imul   $0x6362696c,0x0(%rsi),%ebp
 441:	2e 73 6f             	jae,pn 4b3 <_init-0xb4d>
 444:	2e 36 00 47 4c       	cs add %al,%ss:0x4c(%rdi)
 449:	49                   	rex.WB
 44a:	42                   	rex.X
 44b:	43 5f                	rex.XB pop %r15
 44d:	32 2e                	xor    (%rsi),%ch
 44f:	32 2e                	xor    (%rsi),%ch
 451:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 456:	4d 5f                	rex.WRB pop %r15
 458:	64 65 72 65          	fs gs jb 4c1 <_init-0xb3f>
 45c:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 463:	4d 
 464:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 466:	6f                   	outsl  %ds:(%rsi),(%dx)
 467:	6e                   	outsb  %ds:(%rsi),(%dx)
 468:	65 54                	gs push %rsp
 46a:	61                   	(bad)  
 46b:	62                   	(bad)  
 46c:	6c                   	insb   (%dx),%es:(%rdi)
 46d:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 471:	67 6d                	insl   (%dx),%es:(%edi)
 473:	6f                   	outsl  %ds:(%rsi),(%dx)
 474:	6e                   	outsb  %ds:(%rsi),(%dx)
 475:	5f                   	pop    %rdi
 476:	73 74                	jae    4ec <_init-0xb14>
 478:	61                   	(bad)  
 479:	72 74                	jb     4ef <_init-0xb11>
 47b:	5f                   	pop    %rdi
 47c:	5f                   	pop    %rdi
 47d:	00 5f 49             	add    %bl,0x49(%rdi)
 480:	54                   	push   %rsp
 481:	4d 5f                	rex.WRB pop %r15
 483:	72 65                	jb     4ea <_init-0xb16>
 485:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 48c:	4d 
 48d:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 48f:	6f                   	outsl  %ds:(%rsi),(%dx)
 490:	6e                   	outsb  %ds:(%rsi),(%dx)
 491:	65 54                	gs push %rsp
 493:	61                   	(bad)  
 494:	62                   	.byte 0x62
 495:	6c                   	insb   (%dx),%es:(%rdi)
 496:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000498 <.gnu.version>:
 498:	00 00                	add    %al,(%rax)
 49a:	00 00                	add    %al,(%rax)
 49c:	02 00                	add    (%rax),%al
 49e:	02 00                	add    (%rax),%al
 4a0:	02 00                	add    (%rax),%al
 4a2:	00 00                	add    %al,(%rax)
 4a4:	02 00                	add    (%rax),%al
 4a6:	00 00                	add    %al,(%rax)
 4a8:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000004b0 <.gnu.version_r>:
 4b0:	01 00                	add    %eax,(%rax)
 4b2:	01 00                	add    %eax,(%rax)
 4b4:	35 00 00 00 10       	xor    $0x10000000,%eax
 4b9:	00 00                	add    %al,(%rax)
 4bb:	00 00                	add    %al,(%rax)
 4bd:	00 00                	add    %al,(%rax)
 4bf:	00 75 1a             	add    %dh,0x1a(%rbp)
 4c2:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 4c8:	3f                   	(bad)  
 4c9:	00 00                	add    %al,(%rax)
 4cb:	00 00                	add    %al,(%rax)
 4cd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000004d0 <.rela.dyn>:
 4d0:	e8 3d 00 00 00       	callq  512 <_init-0xaee>
 4d5:	00 00                	add    %al,(%rax)
 4d7:	00 08                	add    %cl,(%rax)
 4d9:	00 00                	add    %al,(%rax)
 4db:	00 00                	add    %al,(%rax)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 a0 11 00 00 00    	add    %ah,0x11(%rax)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 f0                	add    %dh,%al
 4e9:	3d 00 00 00 00       	cmp    $0x0,%eax
 4ee:	00 00                	add    %al,(%rax)
 4f0:	08 00                	or     %al,(%rax)
 4f2:	00 00                	add    %al,(%rax)
 4f4:	00 00                	add    %al,(%rax)
 4f6:	00 00                	add    %al,(%rax)
 4f8:	60                   	(bad)  
 4f9:	11 00                	adc    %eax,(%rax)
 4fb:	00 00                	add    %al,(%rax)
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 38                	add    %bh,(%rax)
 501:	40 00 00             	add    %al,(%rax)
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	08 00                	or     %al,(%rax)
 50a:	00 00                	add    %al,(%rax)
 50c:	00 00                	add    %al,(%rax)
 50e:	00 00                	add    %al,(%rax)
 510:	38 40 00             	cmp    %al,0x0(%rax)
 513:	00 00                	add    %al,(%rax)
 515:	00 00                	add    %al,(%rax)
 517:	00 d8                	add    %bl,%al
 519:	3f                   	(bad)  
 51a:	00 00                	add    %al,(%rax)
 51c:	00 00                	add    %al,(%rax)
 51e:	00 00                	add    %al,(%rax)
 520:	06                   	(bad)  
 521:	00 00                	add    %al,(%rax)
 523:	00 01                	add    %al,(%rcx)
	...
 52d:	00 00                	add    %al,(%rax)
 52f:	00 e0                	add    %ah,%al
 531:	3f                   	(bad)  
 532:	00 00                	add    %al,(%rax)
 534:	00 00                	add    %al,(%rax)
 536:	00 00                	add    %al,(%rax)
 538:	06                   	(bad)  
 539:	00 00                	add    %al,(%rax)
 53b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 546:	00 00                	add    %al,(%rax)
 548:	e8 3f 00 00 00       	callq  58c <_init-0xa74>
 54d:	00 00                	add    %al,(%rax)
 54f:	00 06                	add    %al,(%rsi)
 551:	00 00                	add    %al,(%rax)
 553:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 559 <_init-0xaa7>
 559:	00 00                	add    %al,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 f0                	add    %dh,%al
 561:	3f                   	(bad)  
 562:	00 00                	add    %al,(%rax)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	06                   	(bad)  
 569:	00 00                	add    %al,(%rax)
 56b:	00 07                	add    %al,(%rdi)
	...
 575:	00 00                	add    %al,(%rax)
 577:	00 f8                	add    %bh,%al
 579:	3f                   	(bad)  
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	06                   	(bad)  
 581:	00 00                	add    %al,(%rax)
 583:	00 08                	add    %cl,(%rax)
	...

Disassembly of section .rela.plt:

0000000000000590 <.rela.plt>:
 590:	18 40 00             	sbb    %al,0x0(%rax)
 593:	00 00                	add    %al,(%rax)
 595:	00 00                	add    %al,(%rax)
 597:	00 07                	add    %al,(%rdi)
 599:	00 00                	add    %al,(%rax)
 59b:	00 02                	add    %al,(%rdx)
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 20                	add    %ah,(%rax)
 5a9:	40 00 00             	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	07                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 03                	add    %al,(%rbx)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 28                	add    %ch,(%rax)
 5c1:	40 00 00             	add    %al,(%rax)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	07                   	(bad)  
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 06                	add    %al,(%rsi)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <strtol@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <strtol@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1066:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001070 <main>:
    1070:	53                   	push   %rbx
    1071:	83 ff 02             	cmp    $0x2,%edi
    1074:	75 30                	jne    10a6 <main+0x36>
    1076:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    107a:	ba 0a 00 00 00       	mov    $0xa,%edx
    107f:	31 f6                	xor    %esi,%esi
    1081:	e8 ca ff ff ff       	callq  1050 <strtol@plt>
    1086:	89 c7                	mov    %eax,%edi
    1088:	48 89 c3             	mov    %rax,%rbx
    108b:	e8 20 01 00 00       	callq  11b0 <fib>
    1090:	89 de                	mov    %ebx,%esi
    1092:	48 8d 3d 9f 0f 00 00 	lea    0xf9f(%rip),%rdi        # 2038 <_IO_stdin_used+0x38>
    1099:	89 c2                	mov    %eax,%edx
    109b:	31 c0                	xor    %eax,%eax
    109d:	e8 9e ff ff ff       	callq  1040 <printf@plt>
    10a2:	31 c0                	xor    %eax,%eax
    10a4:	5b                   	pop    %rbx
    10a5:	c3                   	retq   
    10a6:	48 8d 3d ba 0f 00 00 	lea    0xfba(%rip),%rdi        # 2067 <_IO_stdin_used+0x67>
    10ad:	31 c0                	xor    %eax,%eax
    10af:	e8 8c ff ff ff       	callq  1040 <printf@plt>
    10b4:	eb ec                	jmp    10a2 <main+0x32>
    10b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10bd:	00 00 00 

00000000000010c0 <_start>:
    10c0:	31 ed                	xor    %ebp,%ebp
    10c2:	49 89 d1             	mov    %rdx,%r9
    10c5:	5e                   	pop    %rsi
    10c6:	48 89 e2             	mov    %rsp,%rdx
    10c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10cd:	50                   	push   %rax
    10ce:	54                   	push   %rsp
    10cf:	4c 8d 05 0a 02 00 00 	lea    0x20a(%rip),%r8        # 12e0 <__libc_csu_fini>
    10d6:	48 8d 0d a3 01 00 00 	lea    0x1a3(%rip),%rcx        # 1280 <__libc_csu_init>
    10dd:	48 8d 3d 8c ff ff ff 	lea    -0x74(%rip),%rdi        # 1070 <main>
    10e4:	ff 15 f6 2e 00 00    	callq  *0x2ef6(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ea:	f4                   	hlt    
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4040 <__TMC_END__>
    10f7:	48 8d 05 42 2f 00 00 	lea    0x2f42(%rip),%rax        # 4040 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 ce 2e 00 00 	mov    0x2ece(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmpq   *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d 19 2f 00 00 	lea    0x2f19(%rip),%rdi        # 4040 <__TMC_END__>
    1127:	48 8d 35 12 2f 00 00 	lea    0x2f12(%rip),%rsi        # 4040 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    %rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 a5 2e 00 00 	mov    0x2ea5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmpq   *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	retq   
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	80 3d d9 2e 00 00 00 	cmpb   $0x0,0x2ed9(%rip)        # 4040 <__TMC_END__>
    1167:	75 2f                	jne    1198 <__do_global_dtors_aux+0x38>
    1169:	55                   	push   %rbp
    116a:	48 83 3d 86 2e 00 00 	cmpq   $0x0,0x2e86(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1171:	00 
    1172:	48 89 e5             	mov    %rsp,%rbp
    1175:	74 0c                	je     1183 <__do_global_dtors_aux+0x23>
    1177:	48 8b 3d ba 2e 00 00 	mov    0x2eba(%rip),%rdi        # 4038 <__dso_handle>
    117e:	e8 dd fe ff ff       	callq  1060 <__cxa_finalize@plt>
    1183:	e8 68 ff ff ff       	callq  10f0 <deregister_tm_clones>
    1188:	c6 05 b1 2e 00 00 01 	movb   $0x1,0x2eb1(%rip)        # 4040 <__TMC_END__>
    118f:	5d                   	pop    %rbp
    1190:	c3                   	retq   
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	e9 7b ff ff ff       	jmpq   1120 <register_tm_clones>
    11a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11ac:	00 00 00 
    11af:	90                   	nop

00000000000011b0 <fib>:
    11b0:	83 ff 02             	cmp    $0x2,%edi
    11b3:	76 5b                	jbe    1210 <fib+0x60>
    11b5:	41 54                	push   %r12
    11b7:	45 31 e4             	xor    %r12d,%r12d
    11ba:	55                   	push   %rbp
    11bb:	53                   	push   %rbx
    11bc:	89 fb                	mov    %edi,%ebx
    11be:	eb 0f                	jmp    11cf <fib+0x1f>
    11c0:	89 ef                	mov    %ebp,%edi
    11c2:	e8 e9 ff ff ff       	callq  11b0 <fib>
    11c7:	41 01 c4             	add    %eax,%r12d
    11ca:	83 fb 02             	cmp    $0x2,%ebx
    11cd:	74 31                	je     1200 <fib+0x50>
    11cf:	8d 6b fe             	lea    -0x2(%rbx),%ebp
    11d2:	83 eb 01             	sub    $0x1,%ebx
    11d5:	89 de                	mov    %ebx,%esi
    11d7:	89 ef                	mov    %ebp,%edi
    11d9:	e8 38 00 00 00       	callq  1216 <tadd_ok>
    11de:	83 f8 01             	cmp    $0x1,%eax
    11e1:	74 dd                	je     11c0 <fib+0x10>
    11e3:	48 8d 3d 1e 0e 00 00 	lea    0xe1e(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    11ea:	e8 41 fe ff ff       	callq  1030 <puts@plt>
    11ef:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    11f4:	5b                   	pop    %rbx
    11f5:	5d                   	pop    %rbp
    11f6:	41 5c                	pop    %r12
    11f8:	c3                   	retq   
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1200:	41 8d 44 24 01       	lea    0x1(%r12),%eax
    1205:	5b                   	pop    %rbx
    1206:	5d                   	pop    %rbp
    1207:	41 5c                	pop    %r12
    1209:	c3                   	retq   
    120a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1210:	b8 01 00 00 00       	mov    $0x1,%eax
    1215:	c3                   	retq   

0000000000001216 <tadd_ok>:
    1216:	55                   	push   %rbp
    1217:	48 89 e5             	mov    %rsp,%rbp
    121a:	89 7d ec             	mov    %edi,-0x14(%rbp)
    121d:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1220:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1223:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1226:	01 d0                	add    %edx,%eax
    1228:	48 98                	cltq   
    122a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    122e:	48 81 7d f8 01 00 00 	cmpq   $0xffffffff80000001,-0x8(%rbp)
    1235:	80 
    1236:	7c 11                	jl     1249 <tadd_ok+0x33>
    1238:	48 81 7d f8 fe ff ff 	cmpq   $0x7ffffffe,-0x8(%rbp)
    123f:	7f 
    1240:	7f 07                	jg     1249 <tadd_ok+0x33>
    1242:	b8 01 00 00 00       	mov    $0x1,%eax
    1247:	eb 05                	jmp    124e <tadd_ok+0x38>
    1249:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    124e:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1251:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1254:	5d                   	pop    %rbp
    1255:	c3                   	retq   

0000000000001256 <tsub_ok>:
    1256:	55                   	push   %rbp
    1257:	48 89 e5             	mov    %rsp,%rbp
    125a:	48 83 ec 08          	sub    $0x8,%rsp
    125e:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1261:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1264:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1267:	f7 d8                	neg    %eax
    1269:	89 c2                	mov    %eax,%edx
    126b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    126e:	89 d6                	mov    %edx,%esi
    1270:	89 c7                	mov    %eax,%edi
    1272:	e8 9f ff ff ff       	callq  1216 <tadd_ok>
    1277:	c9                   	leaveq 
    1278:	c3                   	retq   
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <__libc_csu_init>:
    1280:	41 57                	push   %r15
    1282:	4c 8d 3d 5f 2b 00 00 	lea    0x2b5f(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    1289:	41 56                	push   %r14
    128b:	49 89 d6             	mov    %rdx,%r14
    128e:	41 55                	push   %r13
    1290:	49 89 f5             	mov    %rsi,%r13
    1293:	41 54                	push   %r12
    1295:	41 89 fc             	mov    %edi,%r12d
    1298:	55                   	push   %rbp
    1299:	48 8d 2d 50 2b 00 00 	lea    0x2b50(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    12a0:	53                   	push   %rbx
    12a1:	4c 29 fd             	sub    %r15,%rbp
    12a4:	48 83 ec 08          	sub    $0x8,%rsp
    12a8:	e8 53 fd ff ff       	callq  1000 <_init>
    12ad:	48 c1 fd 03          	sar    $0x3,%rbp
    12b1:	74 1b                	je     12ce <__libc_csu_init+0x4e>
    12b3:	31 db                	xor    %ebx,%ebx
    12b5:	0f 1f 00             	nopl   (%rax)
    12b8:	4c 89 f2             	mov    %r14,%rdx
    12bb:	4c 89 ee             	mov    %r13,%rsi
    12be:	44 89 e7             	mov    %r12d,%edi
    12c1:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    12c5:	48 83 c3 01          	add    $0x1,%rbx
    12c9:	48 39 dd             	cmp    %rbx,%rbp
    12cc:	75 ea                	jne    12b8 <__libc_csu_init+0x38>
    12ce:	48 83 c4 08          	add    $0x8,%rsp
    12d2:	5b                   	pop    %rbx
    12d3:	5d                   	pop    %rbp
    12d4:	41 5c                	pop    %r12
    12d6:	41 5d                	pop    %r13
    12d8:	41 5e                	pop    %r14
    12da:	41 5f                	pop    %r15
    12dc:	c3                   	retq   
    12dd:	0f 1f 00             	nopl   (%rax)

00000000000012e0 <__libc_csu_fini>:
    12e0:	c3                   	retq   

Disassembly of section .fini:

00000000000012e4 <_fini>:
    12e4:	48 83 ec 08          	sub    $0x8,%rsp
    12e8:	48 83 c4 08          	add    $0x8,%rsp
    12ec:	c3                   	retq   

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	00 00                	add    %al,(%rax)
    2006:	00 00                	add    %al,(%rax)
    2008:	45 72 72             	rex.RB jb 207d <__GNU_EH_FRAME_HDR+0x1>
    200b:	6f                   	outsl  %ds:(%rsi),(%dx)
    200c:	72 3a                	jb     2048 <_IO_stdin_used+0x48>
    200e:	20 63 61             	and    %ah,0x61(%rbx)
    2011:	6c                   	insb   (%dx),%es:(%rdi)
    2012:	63 75 6c             	movsxd 0x6c(%rbp),%esi
    2015:	61                   	(bad)  
    2016:	74 69                	je     2081 <__GNU_EH_FRAME_HDR+0x5>
    2018:	6f                   	outsl  %ds:(%rsi),(%dx)
    2019:	6e                   	outsb  %ds:(%rsi),(%dx)
    201a:	20 77 69             	and    %dh,0x69(%rdi)
    201d:	6c                   	insb   (%dx),%es:(%rdi)
    201e:	6c                   	insb   (%dx),%es:(%rdi)
    201f:	20 6f 76             	and    %ch,0x76(%rdi)
    2022:	65 72 66             	gs jb  208b <__GNU_EH_FRAME_HDR+0xf>
    2025:	6c                   	insb   (%dx),%es:(%rdi)
    2026:	6f                   	outsl  %ds:(%rsi),(%dx)
    2027:	77 20                	ja     2049 <_IO_stdin_used+0x49>
    2029:	69 6e 74 20 64 61 74 	imul   $0x74616420,0x74(%rsi),%ebp
    2030:	61                   	(bad)  
    2031:	74 79                	je     20ac <__GNU_EH_FRAME_HDR+0x30>
    2033:	70 65                	jo     209a <__GNU_EH_FRAME_HDR+0x1e>
    2035:	00 00                	add    %al,(%rax)
    2037:	00 54 68 65          	add    %dl,0x65(%rax,%rbp,2)
    203b:	20 25 64 74 68 20    	and    %ah,0x20687464(%rip)        # 206894a5 <_end+0x2068545d>
    2041:	6e                   	outsb  %ds:(%rsi),(%dx)
    2042:	75 6d                	jne    20b1 <__GNU_EH_FRAME_HDR+0x35>
    2044:	62                   	(bad)  
    2045:	65 72 20             	gs jb  2068 <_IO_stdin_used+0x68>
    2048:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
    204f:	66 69 62 6f 6e 61    	imul   $0x616e,0x6f(%rdx),%sp
    2055:	63 63 69             	movsxd 0x69(%rbx),%esp
    2058:	20 73 65             	and    %dh,0x65(%rbx)
    205b:	72 69                	jb     20c6 <__GNU_EH_FRAME_HDR+0x4a>
    205d:	65 73 20             	gs jae 2080 <__GNU_EH_FRAME_HDR+0x4>
    2060:	69 73 20 25 64 0a 00 	imul   $0xa6425,0x20(%rbx),%esi
    2067:	55                   	push   %rbp
    2068:	73 61                	jae    20cb <__GNU_EH_FRAME_HDR+0x4f>
    206a:	67 65 3a 20          	cmp    %gs:(%eax),%ah
    206e:	66 69 62 20 3c 69    	imul   $0x693c,0x20(%rdx),%sp
    2074:	6e                   	outsb  %ds:(%rsi),(%dx)
    2075:	74 20                	je     2097 <__GNU_EH_FRAME_HDR+0x1b>
    2077:	6e                   	outsb  %ds:(%rsi),(%dx)
    2078:	3e                   	ds
	...

Disassembly of section .eh_frame_hdr:

000000000000207c <__GNU_EH_FRAME_HDR>:
    207c:	01 1b                	add    %ebx,(%rbx)
    207e:	03 3b                	add    (%rbx),%edi
    2080:	50                   	push   %rax
    2081:	00 00                	add    %al,(%rax)
    2083:	00 09                	add    %cl,(%rcx)
    2085:	00 00                	add    %al,(%rax)
    2087:	00 a4 ef ff ff 9c 00 	add    %ah,0x9cffff(%rdi,%rbp,8)
    208e:	00 00                	add    %al,(%rax)
    2090:	e4 ef                	in     $0xef,%al
    2092:	ff                   	(bad)  
    2093:	ff c4                	inc    %esp
    2095:	00 00                	add    %al,(%rax)
    2097:	00 f4                	add    %dh,%ah
    2099:	ef                   	out    %eax,(%dx)
    209a:	ff                   	(bad)  
    209b:	ff 18                	lcall  *(%rax)
    209d:	01 00                	add    %eax,(%rax)
    209f:	00 44 f0 ff          	add    %al,-0x1(%rax,%rsi,8)
    20a3:	ff 6c 00 00          	ljmp   *0x0(%rax,%rax,1)
    20a7:	00 34 f1             	add    %dh,(%rcx,%rsi,8)
    20aa:	ff                   	(bad)  
    20ab:	ff                   	(bad)  
    20ac:	dc 00                	faddl  (%rax)
    20ae:	00 00                	add    %al,(%rax)
    20b0:	9a                   	(bad)  
    20b1:	f1                   	icebp  
    20b2:	ff                   	(bad)  
    20b3:	ff 34 01             	pushq  (%rcx,%rax,1)
    20b6:	00 00                	add    %al,(%rax)
    20b8:	da f1                	(bad)  
    20ba:	ff                   	(bad)  
    20bb:	ff 54 01 00          	callq  *0x0(%rcx,%rax,1)
    20bf:	00 04 f2             	add    %al,(%rdx,%rsi,8)
    20c2:	ff                   	(bad)  
    20c3:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
    20c7:	00 64 f2 ff          	add    %ah,-0x1(%rdx,%rsi,8)
    20cb:	ff                   	(bad)  
    20cc:	bc                   	.byte 0xbc
    20cd:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

00000000000020d0 <__FRAME_END__-0x17c>:
    20d0:	14 00                	adc    $0x0,%al
    20d2:	00 00                	add    %al,(%rax)
    20d4:	00 00                	add    %al,(%rax)
    20d6:	00 00                	add    %al,(%rax)
    20d8:	01 7a 52             	add    %edi,0x52(%rdx)
    20db:	00 01                	add    %al,(%rcx)
    20dd:	78 10                	js     20ef <__GNU_EH_FRAME_HDR+0x73>
    20df:	01 1b                	add    %ebx,(%rbx)
    20e1:	0c 07                	or     $0x7,%al
    20e3:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    20e9:	00 00                	add    %al,(%rax)
    20eb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20ee:	00 00                	add    %al,(%rax)
    20f0:	d0 ef                	shr    %bh
    20f2:	ff                   	(bad)  
    20f3:	ff 2b                	ljmp   *(%rbx)
	...
    20fd:	00 00                	add    %al,(%rax)
    20ff:	00 14 00             	add    %dl,(%rax,%rax,1)
    2102:	00 00                	add    %al,(%rax)
    2104:	00 00                	add    %al,(%rax)
    2106:	00 00                	add    %al,(%rax)
    2108:	01 7a 52             	add    %edi,0x52(%rdx)
    210b:	00 01                	add    %al,(%rcx)
    210d:	78 10                	js     211f <__GNU_EH_FRAME_HDR+0xa3>
    210f:	01 1b                	add    %ebx,(%rbx)
    2111:	0c 07                	or     $0x7,%al
    2113:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    2119:	00 00                	add    %al,(%rax)
    211b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    211e:	00 00                	add    %al,(%rax)
    2120:	00 ef                	add    %ch,%bh
    2122:	ff                   	(bad)  
    2123:	ff 40 00             	incl   0x0(%rax)
    2126:	00 00                	add    %al,(%rax)
    2128:	00 0e                	add    %cl,(%rsi)
    212a:	10 46 0e             	adc    %al,0xe(%rsi)
    212d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2130:	0b 77 08             	or     0x8(%rdi),%esi
    2133:	80 00 3f             	addb   $0x3f,(%rax)
    2136:	1a 3b                	sbb    (%rbx),%bh
    2138:	2a 33                	sub    (%rbx),%dh
    213a:	24 22                	and    $0x22,%al
    213c:	00 00                	add    %al,(%rax)
    213e:	00 00                	add    %al,(%rax)
    2140:	14 00                	adc    $0x0,%al
    2142:	00 00                	add    %al,(%rax)
    2144:	44 00 00             	add    %r8b,(%rax)
    2147:	00 18                	add    %bl,(%rax)
    2149:	ef                   	out    %eax,(%dx)
    214a:	ff                   	(bad)  
    214b:	ff 08                	decl   (%rax)
	...
    2155:	00 00                	add    %al,(%rax)
    2157:	00 38                	add    %bh,(%rax)
    2159:	00 00                	add    %al,(%rax)
    215b:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
    215f:	00 50 f0             	add    %dl,-0x10(%rax)
    2162:	ff                   	(bad)  
    2163:	ff 66 00             	jmpq   *0x0(%rsi)
    2166:	00 00                	add    %al,(%rax)
    2168:	00 47 0e             	add    %al,0xe(%rdi)
    216b:	10 8c 02 44 0e 18 86 	adc    %cl,-0x79e7f1bc(%rdx,%rax,1)
    2172:	03 41 0e             	add    0xe(%rcx),%eax
    2175:	20 83 04 79 0a 0e    	and    %al,0xe0a7904(%rbx)
    217b:	18 41 0e             	sbb    %al,0xe(%rcx)
    217e:	10 42 0e             	adc    %al,0xe(%rdx)
    2181:	08 48 0b             	or     %cl,0xb(%rax)
    2184:	46 0e                	rex.RX (bad) 
    2186:	18 41 0e             	sbb    %al,0xe(%rcx)
    2189:	10 42 0e             	adc    %al,0xe(%rdx)
    218c:	08 47 c3             	or     %al,-0x3d(%rdi)
    218f:	c6                   	(bad)  
    2190:	cc                   	int3   
    2191:	00 00                	add    %al,(%rax)
    2193:	00 18                	add    %bl,(%rax)
    2195:	00 00                	add    %al,(%rax)
    2197:	00 98 00 00 00 d4    	add    %bl,-0x2c000000(%rax)
    219d:	ee                   	out    %al,(%dx)
    219e:	ff                   	(bad)  
    219f:	ff 46 00             	incl   0x0(%rsi)
    21a2:	00 00                	add    %al,(%rax)
    21a4:	00 41 0e             	add    %al,0xe(%rcx)
    21a7:	10 83 02 74 0a 0e    	adc    %al,0xe0a7402(%rbx)
    21ad:	08 41 0b             	or     %al,0xb(%rcx)
    21b0:	1c 00                	sbb    $0x0,%al
    21b2:	00 00                	add    %al,(%rax)
    21b4:	b4 00                	mov    $0x0,%ah
    21b6:	00 00                	add    %al,(%rax)
    21b8:	5e                   	pop    %rsi
    21b9:	f0 ff                	lock (bad) 
    21bb:	ff 40 00             	incl   0x0(%rax)
    21be:	00 00                	add    %al,(%rax)
    21c0:	00 41 0e             	add    %al,0xe(%rcx)
    21c3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    21c9:	7b 0c                	jnp    21d7 <__GNU_EH_FRAME_HDR+0x15b>
    21cb:	07                   	(bad)  
    21cc:	08 00                	or     %al,(%rax)
    21ce:	00 00                	add    %al,(%rax)
    21d0:	1c 00                	sbb    $0x0,%al
    21d2:	00 00                	add    %al,(%rax)
    21d4:	d4                   	(bad)  
    21d5:	00 00                	add    %al,(%rax)
    21d7:	00 7e f0             	add    %bh,-0x10(%rsi)
    21da:	ff                   	(bad)  
    21db:	ff 23                	jmpq   *(%rbx)
    21dd:	00 00                	add    %al,(%rax)
    21df:	00 00                	add    %al,(%rax)
    21e1:	41 0e                	rex.B (bad) 
    21e3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    21e9:	5e                   	pop    %rsi
    21ea:	0c 07                	or     $0x7,%al
    21ec:	08 00                	or     %al,(%rax)
    21ee:	00 00                	add    %al,(%rax)
    21f0:	44 00 00             	add    %r8b,(%rax)
    21f3:	00 f4                	add    %dh,%ah
    21f5:	00 00                	add    %al,(%rax)
    21f7:	00 88 f0 ff ff 5d    	add    %cl,0x5dfffff0(%rax)
    21fd:	00 00                	add    %al,(%rax)
    21ff:	00 00                	add    %al,(%rax)
    2201:	42 0e                	rex.X (bad) 
    2203:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2209:	8e 03                	mov    (%rbx),%es
    220b:	45 0e                	rex.RB (bad) 
    220d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    2213:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8630305d <_end+0xffffffff862ff015>
    2219:	06                   	(bad)  
    221a:	48 0e                	rex.W (bad) 
    221c:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    2222:	6a 0e                	pushq  $0xe
    2224:	38 41 0e             	cmp    %al,0xe(%rcx)
    2227:	30 41 0e             	xor    %al,0xe(%rcx)
    222a:	28 42 0e             	sub    %al,0xe(%rdx)
    222d:	20 42 0e             	and    %al,0xe(%rdx)
    2230:	18 42 0e             	sbb    %al,0xe(%rdx)
    2233:	10 42 0e             	adc    %al,0xe(%rdx)
    2236:	08 00                	or     %al,(%rax)
    2238:	10 00                	adc    %al,(%rax)
    223a:	00 00                	add    %al,(%rax)
    223c:	3c 01                	cmp    $0x1,%al
    223e:	00 00                	add    %al,(%rax)
    2240:	a0 f0 ff ff 01 00 00 	movabs 0x1fffff0,%al
    2247:	00 00 
    2249:	00 00                	add    %al,(%rax)
	...

000000000000224c <__FRAME_END__>:
    224c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003de8 <__frame_dummy_init_array_entry>:
    3de8:	a0                   	.byte 0xa0
    3de9:	11 00                	adc    %eax,(%rax)
    3deb:	00 00                	add    %al,(%rax)
    3ded:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003df0 <__do_global_dtors_aux_fini_array_entry>:
    3df0:	60                   	(bad)  
    3df1:	11 00                	adc    %eax,(%rax)
    3df3:	00 00                	add    %al,(%rax)
    3df5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003df8 <_DYNAMIC>:
    3df8:	01 00                	add    %eax,(%rax)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	35 00 00 00 00       	xor    $0x0,%eax
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3e0a:	00 00                	add    %al,(%rax)
    3e0c:	00 00                	add    %al,(%rax)
    3e0e:	00 00                	add    %al,(%rax)
    3e10:	00 10                	add    %dl,(%rax)
    3e12:	00 00                	add    %al,(%rax)
    3e14:	00 00                	add    %al,(%rax)
    3e16:	00 00                	add    %al,(%rax)
    3e18:	0d 00 00 00 00       	or     $0x0,%eax
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 e4                	add    %ah,%ah
    3e21:	12 00                	adc    (%rax),%al
    3e23:	00 00                	add    %al,(%rax)
    3e25:	00 00                	add    %al,(%rax)
    3e27:	00 19                	add    %bl,(%rcx)
    3e29:	00 00                	add    %al,(%rax)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 e8                	add    %ch,%al
    3e31:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e36:	00 00                	add    %al,(%rax)
    3e38:	1b 00                	sbb    (%rax),%eax
    3e3a:	00 00                	add    %al,(%rax)
    3e3c:	00 00                	add    %al,(%rax)
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	08 00                	or     %al,(%rax)
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	1a 00                	sbb    (%rax),%al
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	f0 3d 00 00 00 00    	lock cmp $0x0,%eax
    3e56:	00 00                	add    %al,(%rax)
    3e58:	1c 00                	sbb    $0x0,%al
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	08 00                	or     %al,(%rax)
    3e62:	00 00                	add    %al,(%rax)
    3e64:	00 00                	add    %al,(%rax)
    3e66:	00 00                	add    %al,(%rax)
    3e68:	f5                   	cmc    
    3e69:	fe                   	(bad)  
    3e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 08                	add    %cl,(%rax)
    3e71:	03 00                	add    (%rax),%eax
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e7d <_DYNAMIC+0x85>
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 08                	add    %cl,(%rax)
    3e81:	04 00                	add    $0x0,%al
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 06                	add    %al,(%rsi)
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 30                	add    %dh,(%rax)
    3e91:	03 00                	add    (%rax),%eax
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 0a                	add    %cl,(%rdx)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 90 00 00 00 00    	add    %dl,0x0(%rax)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 0b                	add    %cl,(%rbx)
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 18                	add    %bl,(%rax)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ebd <_DYNAMIC+0xc5>
	...
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 03                	add    %al,(%rbx)
	...
    3ed1:	40 00 00             	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	02 00                	add    (%rax),%al
    3eda:	00 00                	add    %al,(%rax)
    3edc:	00 00                	add    %al,(%rax)
    3ede:	00 00                	add    %al,(%rax)
    3ee0:	48 00 00             	rex.W add %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 14 00             	add    %dl,(%rax,%rax,1)
    3eea:	00 00                	add    %al,(%rax)
    3eec:	00 00                	add    %al,(%rax)
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	07                   	(bad)  
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 17                	add    %dl,(%rdi)
    3ef9:	00 00                	add    %al,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 90 05 00 00 00    	add    %dl,0x5(%rax)
    3f05:	00 00                	add    %al,(%rax)
    3f07:	00 07                	add    %al,(%rdi)
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 d0                	add    %dl,%al
    3f11:	04 00                	add    $0x0,%al
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 08                	add    %cl,(%rax)
    3f19:	00 00                	add    %al,(%rax)
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 c0                	add    %al,%al
    3f21:	00 00                	add    %al,(%rax)
    3f23:	00 00                	add    %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 09                	add    %cl,(%rcx)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	00 00                	add    %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 18                	add    %bl,(%rax)
    3f31:	00 00                	add    %al,(%rax)
    3f33:	00 00                	add    %al,(%rax)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 fb                	add    %bh,%bl
    3f39:	ff                   	(bad)  
    3f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 00                	add    %al,(%rax)
    3f41:	00 00                	add    %al,(%rax)
    3f43:	08 00                	or     %al,(%rax)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 fe                	add    %bh,%dh
    3f49:	ff                   	(bad)  
    3f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 b0 04 00 00 00    	add    %dh,0x4(%rax)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 ff                	add    %bh,%bh
    3f59:	ff                   	(bad)  
    3f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 01                	add    %al,(%rcx)
    3f61:	00 00                	add    %al,(%rax)
    3f63:	00 00                	add    %al,(%rax)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 f0                	add    %dh,%al
    3f69:	ff                   	(bad)  
    3f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 98 04 00 00 00    	add    %bl,0x4(%rax)
    3f75:	00 00                	add    %al,(%rax)
    3f77:	00 f9                	add    %bh,%cl
    3f79:	ff                   	(bad)  
    3f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f7d:	00 00                	add    %al,(%rax)
    3f7f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fd8 <.got>:
	...

Disassembly of section .got.plt:

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	f8                   	clc    
    4001:	3d 00 00 00 00       	cmp    $0x0,%eax
	...
    4016:	00 00                	add    %al,(%rax)
    4018:	36 10 00             	adc    %al,%ss:(%rax)
    401b:	00 00                	add    %al,(%rax)
    401d:	00 00                	add    %al,(%rax)
    401f:	00 46 10             	add    %al,0x10(%rsi)
    4022:	00 00                	add    %al,(%rax)
    4024:	00 00                	add    %al,(%rax)
    4026:	00 00                	add    %al,(%rax)
    4028:	56                   	push   %rsi
    4029:	10 00                	adc    %al,(%rax)
    402b:	00 00                	add    %al,(%rax)
    402d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004030 <__data_start>:
	...

0000000000004038 <__dso_handle>:
    4038:	38 40 00             	cmp    %al,0x0(%rax)
    403b:	00 00                	add    %al,(%rax)
    403d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000004040 <completed.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 31 30 2e 	imul   $0x2e303120,0x6e(%rcx),%esp
  10:	32 2e                	xor    (%rsi),%ch
  12:	31 2d 36 29 20 31    	xor    %ebp,0x31202936(%rip)        # 3120294e <_end+0x311fe906>
  18:	30 2e                	xor    %ch,(%rsi)
  1a:	32 2e                	xor    (%rsi),%ch
  1c:	31 20                	xor    %esp,(%rax)
  1e:	32 30                	xor    (%rax),%dh
  20:	32 31                	xor    (%rcx),%dh
  22:	30 31                	xor    %dh,(%rcx)
  24:	31 30                	xor    %esi,(%rax)
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	3c 00                	cmp    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	b0 11                	mov    $0x11,%al
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	66 00 00             	data16 add %al,(%rax)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 70 10             	add    %dh,0x10(%rax)
  22:	00 00                	add    %al,(%rax)
  24:	00 00                	add    %al,(%rax)
  26:	00 00                	add    %al,(%rax)
  28:	46 00 00             	rex.RX add %r8b,(%rax)
	...
  3f:	00 2c 00             	add    %ch,(%rax,%rax,1)
  42:	00 00                	add    %al,(%rax)
  44:	02 00                	add    (%rax),%al
  46:	85 02                	test   %eax,(%rdx)
  48:	00 00                	add    %al,(%rax)
  4a:	08 00                	or     %al,(%rax)
  4c:	00 00                	add    %al,(%rax)
  4e:	00 00                	add    %al,(%rax)
  50:	16                   	(bad)  
  51:	12 00                	adc    (%rax),%al
  53:	00 00                	add    %al,(%rax)
  55:	00 00                	add    %al,(%rax)
  57:	00 63 00             	add    %ah,0x0(%rbx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	81 02 00 00 04 00    	addl   $0x40000,(%rdx)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	7b 00                	jnp    e <_init-0xff2>
   e:	00 00                	add    %al,(%rax)
  10:	0c 67                	or     $0x67,%al
  12:	00 00                	add    %al,(%rax)
  14:	00 0e                	add    %cl,(%rsi)
  16:	00 00                	add    %al,(%rax)
  18:	00 30                	add    %dh,(%rax)
	...
  26:	00 00                	add    %al,(%rax)
  28:	00 02                	add    %al,(%rdx)
  2a:	08 07                	or     %al,(%rdi)
  2c:	4e 00 00             	rex.WRX add %r8b,(%rax)
  2f:	00 03                	add    %al,(%rbx)
  31:	04 05                	add    $0x5,%al
  33:	69 6e 74 00 02 04 07 	imul   $0x7040200,0x74(%rsi),%ebp
  3a:	53                   	push   %rbx
  3b:	00 00                	add    %al,(%rax)
  3d:	00 02                	add    %al,(%rdx)
  3f:	08 05 05 00 00 00    	or     %al,0x5(%rip)        # 4a <_init-0xfb6>
  45:	02 08                	add    (%rax),%cl
  47:	05 00 00 00 00       	add    $0x0,%eax
  4c:	02 01                	add    (%rcx),%al
  4e:	08 6d 00             	or     %ch,0x0(%rbp)
  51:	00 00                	add    %al,(%rax)
  53:	02 02                	add    (%rdx),%al
  55:	07                   	(bad)  
  56:	ed                   	in     (%dx),%eax
  57:	00 00                	add    %al,(%rax)
  59:	00 02                	add    %al,(%rdx)
  5b:	01 06                	add    %eax,(%rsi)
  5d:	6f                   	outsl  %ds:(%rsi),(%dx)
  5e:	00 00                	add    %al,(%rax)
  60:	00 02                	add    %al,(%rdx)
  62:	02 05 11 01 00 00    	add    0x111(%rip),%al        # 179 <_init-0xe87>
  68:	04 08                	add    $0x8,%al
  6a:	6e                   	outsb  %ds:(%rsi),(%dx)
  6b:	00 00                	add    %al,(%rax)
  6d:	00 02                	add    %al,(%rdx)
  6f:	01 06                	add    %eax,(%rsi)
  71:	76 00                	jbe    73 <_init-0xf8d>
  73:	00 00                	add    %al,(%rax)
  75:	05 6e 00 00 00       	add    $0x6e,%eax
  7a:	02 08                	add    (%rax),%cl
  7c:	07                   	(bad)  
  7d:	49 00 00             	rex.WB add %al,(%r8)
  80:	00 04 08             	add    %al,(%rax,%rcx,1)
  83:	75 00                	jne    85 <_init-0xf7b>
  85:	00 00                	add    %al,(%rax)
  87:	06                   	(bad)  
  88:	0c 01                	or     $0x1,%al
  8a:	00 00                	add    %al,(%rax)
  8c:	01 18                	add    %ebx,(%rax)
  8e:	05 30 00 00 00       	add    $0x30,%eax
  93:	70 10                	jo     a5 <_init-0xf5b>
  95:	00 00                	add    %al,(%rax)
  97:	00 00                	add    %al,(%rax)
  99:	00 00                	add    %al,(%rax)
  9b:	46 00 00             	rex.RX add %r8b,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	00 00                	add    %al,(%rax)
  a2:	00 01                	add    %al,(%rcx)
  a4:	9c                   	pushfq 
  a5:	84 01                	test   %al,(%rcx)
  a7:	00 00                	add    %al,(%rax)
  a9:	07                   	(bad)  
  aa:	e8 00 00 00 01       	callq  10000af <_end+0xffc067>
  af:	18 0e                	sbb    %cl,(%rsi)
  b1:	30 00                	xor    %al,(%rax)
  b3:	00 00                	add    %al,(%rax)
  b5:	08 00                	or     %al,(%rax)
  b7:	00 00                	add    %al,(%rax)
  b9:	00 00                	add    %al,(%rax)
  bb:	00 00                	add    %al,(%rax)
  bd:	07                   	(bad)  
  be:	07                   	(bad)  
  bf:	01 00                	add    %eax,(%rax)
  c1:	00 01                	add    %al,(%rcx)
  c3:	18 1a                	sbb    %bl,(%rdx)
  c5:	84 01                	test   %al,(%rcx)
  c7:	00 00                	add    %al,(%rax)
  c9:	72 00                	jb     cb <_init-0xf35>
  cb:	00 00                	add    %al,(%rax)
  cd:	6a 00                	pushq  $0x0
  cf:	00 00                	add    %al,(%rax)
  d1:	08 6e 00             	or     %ch,0x0(%rsi)
  d4:	01 19                	add    %ebx,(%rcx)
  d6:	09 30                	or     %esi,(%rax)
  d8:	00 00                	add    %al,(%rax)
  da:	00 da                	add    %bl,%dl
  dc:	00 00                	add    %al,(%rax)
  de:	00 d4                	add    %dl,%ah
  e0:	00 00                	add    %al,(%rax)
  e2:	00 08                	add    %cl,(%rax)
  e4:	72 65                	jb     14b <_init-0xeb5>
  e6:	73 00                	jae    e8 <_init-0xf18>
  e8:	01 1a                	add    %ebx,(%rdx)
  ea:	09 30                	or     %esi,(%rax)
  ec:	00 00                	add    %al,(%rax)
  ee:	00 2d 01 00 00 25    	add    %ch,0x25000001(%rip)        # 250000f5 <_end+0x24ffc0ad>
  f4:	01 00                	add    %eax,(%rax)
  f6:	00 09                	add    %cl,(%rcx)
  f8:	34 02                	xor    $0x2,%al
  fa:	00 00                	add    %al,(%rax)
  fc:	76 10                	jbe    10e <_init-0xef2>
  fe:	00 00                	add    %al,(%rax)
 100:	00 00                	add    %al,(%rax)
 102:	00 00                	add    %al,(%rax)
 104:	02 00                	add    (%rax),%al
 106:	00 00                	add    %al,(%rax)
 108:	00 01                	add    %al,(%rcx)
 10a:	1f                   	(bad)  
 10b:	0d 36 01 00 00       	or     $0x136,%eax
 110:	0a 46 02             	or     0x2(%rsi),%al
 113:	00 00                	add    %al,(%rax)
 115:	8f 01                	popq   (%rcx)
 117:	00 00                	add    %al,(%rax)
 119:	8b 01                	mov    (%rcx),%eax
 11b:	00 00                	add    %al,(%rax)
 11d:	0b 86 10 00 00 00    	or     0x10(%rsi),%eax
 123:	00 00                	add    %al,(%rax)
 125:	00 54 02 00          	add    %dl,0x0(%rdx,%rax,1)
 129:	00 0c 01             	add    %cl,(%rcx,%rax,1)
 12c:	54                   	push   %rsp
 12d:	01 30                	add    %esi,(%rax)
 12f:	0c 01                	or     $0x1,%al
 131:	51                   	push   %rcx
 132:	01 3a                	add    %edi,(%rdx)
 134:	00 00                	add    %al,(%rax)
 136:	0d 90 10 00 00       	or     $0x1090,%eax
 13b:	00 00                	add    %al,(%rax)
 13d:	00 00                	add    %al,(%rax)
 13f:	8a 01                	mov    (%rcx),%al
 141:	00 00                	add    %al,(%rax)
 143:	0e                   	(bad)  
 144:	a2 10 00 00 00 00 00 	movabs %al,0x6000000000000010
 14b:	00 60 
 14d:	02 00                	add    (%rax),%al
 14f:	00 68 01             	add    %ch,0x1(%rax)
 152:	00 00                	add    %al,(%rax)
 154:	0c 01                	or     $0x1,%al
 156:	55                   	push   %rbp
 157:	09 03                	or     %eax,(%rbx)
 159:	38 20                	cmp    %ah,(%rax)
 15b:	00 00                	add    %al,(%rax)
 15d:	00 00                	add    %al,(%rax)
 15f:	00 00                	add    %al,(%rax)
 161:	0c 01                	or     $0x1,%al
 163:	54                   	push   %rsp
 164:	02 73 00             	add    0x0(%rbx),%dh
 167:	00 0b                	add    %cl,(%rbx)
 169:	b4 10                	mov    $0x10,%ah
 16b:	00 00                	add    %al,(%rax)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 00                	add    %al,(%rax)
 171:	60                   	(bad)  
 172:	02 00                	add    (%rax),%al
 174:	00 0c 01             	add    %cl,(%rcx,%rax,1)
 177:	55                   	push   %rbp
 178:	09 03                	or     %eax,(%rbx)
 17a:	67 20 00             	and    %al,(%eax)
 17d:	00 00                	add    %al,(%rax)
 17f:	00 00                	add    %al,(%rax)
 181:	00 00                	add    %al,(%rax)
 183:	00 04 08             	add    %al,(%rax,%rcx,1)
 186:	68 00 00 00 0f       	pushq  $0xf000000
 18b:	66 69 62 00 01 06    	imul   $0x601,0x0(%rdx),%sp
 191:	05 30 00 00 00       	add    $0x30,%eax
 196:	b0 11                	mov    $0x11,%al
 198:	00 00                	add    %al,(%rax)
 19a:	00 00                	add    %al,(%rax)
 19c:	00 00                	add    %al,(%rax)
 19e:	66 00 00             	data16 add %al,(%rax)
 1a1:	00 00                	add    %al,(%rax)
 1a3:	00 00                	add    %al,(%rax)
 1a5:	00 01                	add    %al,(%rcx)
 1a7:	9c                   	pushfq 
 1a8:	34 02                	xor    $0x2,%al
 1aa:	00 00                	add    %al,(%rax)
 1ac:	10 6e 00             	adc    %ch,0x0(%rsi)
 1af:	01 06                	add    %eax,(%rsi)
 1b1:	0d 30 00 00 00       	or     $0x30,%eax
 1b6:	cc                   	int3   
 1b7:	01 00                	add    %eax,(%rax)
 1b9:	00 c6                	add    %al,%dh
 1bb:	01 00                	add    %eax,(%rax)
 1bd:	00 08                	add    %cl,(%rax)
 1bf:	61                   	(bad)  
 1c0:	00 01                	add    %al,(%rcx)
 1c2:	07                   	(bad)  
 1c3:	09 30                	or     %esi,(%rax)
 1c5:	00 00                	add    %al,(%rax)
 1c7:	00 1e                	add    %bl,(%rsi)
 1c9:	02 00                	add    (%rax),%al
 1cb:	00 18                	add    %bl,(%rax)
 1cd:	02 00                	add    (%rax),%al
 1cf:	00 08                	add    %cl,(%rax)
 1d1:	62                   	(bad)  
 1d2:	00 01                	add    %al,(%rcx)
 1d4:	07                   	(bad)  
 1d5:	0c 30                	or     $0x30,%al
 1d7:	00 00                	add    %al,(%rax)
 1d9:	00 71 02             	add    %dh,0x2(%rcx)
 1dc:	00 00                	add    %al,(%rax)
 1de:	67 02 00             	add    (%eax),%al
 1e1:	00 0e                	add    %cl,(%rsi)
 1e3:	c7                   	(bad)  
 1e4:	11 00                	adc    %eax,(%rax)
 1e6:	00 00                	add    %al,(%rax)
 1e8:	00 00                	add    %al,(%rax)
 1ea:	00 8a 01 00 00 fa    	add    %cl,-0x5ffffff(%rdx)
 1f0:	01 00                	add    %eax,(%rax)
 1f2:	00 0c 01             	add    %cl,(%rcx,%rax,1)
 1f5:	55                   	push   %rbp
 1f6:	02 76 00             	add    0x0(%rsi),%dh
 1f9:	00 0e                	add    %cl,(%rsi)
 1fb:	de 11                	ficoms (%rcx)
 1fd:	00 00                	add    %al,(%rax)
 1ff:	00 00                	add    %al,(%rax)
 201:	00 00                	add    %al,(%rax)
 203:	6d                   	insl   (%dx),%es:(%rdi)
 204:	02 00                	add    (%rax),%al
 206:	00 18                	add    %bl,(%rax)
 208:	02 00                	add    (%rax),%al
 20a:	00 0c 01             	add    %cl,(%rcx,%rax,1)
 20d:	55                   	push   %rbp
 20e:	02 76 00             	add    0x0(%rsi),%dh
 211:	0c 01                	or     $0x1,%al
 213:	54                   	push   %rsp
 214:	02 73 00             	add    0x0(%rbx),%dh
 217:	00 0b                	add    %cl,(%rbx)
 219:	ef                   	out    %eax,(%dx)
 21a:	11 00                	adc    %eax,(%rax)
 21c:	00 00                	add    %al,(%rax)
 21e:	00 00                	add    %al,(%rax)
 220:	00 79 02             	add    %bh,0x2(%rcx)
 223:	00 00                	add    %al,(%rax)
 225:	0c 01                	or     $0x1,%al
 227:	55                   	push   %rbp
 228:	09 03                	or     %eax,(%rbx)
 22a:	08 20                	or     %ah,(%rax)
	...
 234:	11 db                	adc    %ebx,%ebx
 236:	00 00                	add    %al,(%rax)
 238:	00 02                	add    %al,(%rdx)
 23a:	69 01 01 30 00 00    	imul   $0x3001,(%rcx),%eax
 240:	00 03                	add    %al,(%rbx)
 242:	54                   	push   %rsp
 243:	02 00                	add    (%rax),%al
 245:	00 12                	add    %dl,(%rdx)
 247:	d4                   	(bad)  
 248:	00 00                	add    %al,(%rax)
 24a:	00 02                	add    %al,(%rdx)
 24c:	69 01 01 81 00 00    	imul   $0x8101,(%rcx),%eax
 252:	00 00                	add    %al,(%rax)
 254:	13 60 00             	adc    0x0(%rax),%esp
 257:	00 00                	add    %al,(%rax)
 259:	60                   	(bad)  
 25a:	00 00                	add    %al,(%rax)
 25c:	00 02                	add    %al,(%rdx)
 25e:	b0 11                	mov    $0x11,%al
 260:	14 00                	adc    $0x0,%al
 262:	01 00                	add    %eax,(%rax)
 264:	00 00                	add    %al,(%rax)
 266:	01 00                	add    %eax,(%rax)
 268:	00 03                	add    %al,(%rbx)
 26a:	4c 01 0c 13          	add    %r9,(%rbx,%rdx,1)
 26e:	e0 00                	loopne 270 <_init-0xd90>
 270:	00 00                	add    %al,(%rax)
 272:	e0 00                	loopne 274 <_init-0xd8c>
 274:	00 00                	add    %al,(%rax)
 276:	04 06                	add    $0x6,%al
 278:	05 15 44 00 00       	add    $0x4415,%eax
 27d:	00 3a                	add    %bh,(%rdx)
 27f:	00 00                	add    %al,(%rax)
 281:	00 05 00 00 0b 01    	add    %al,0x10b0000(%rip)        # 10b0287 <_end+0x10ac23f>
 287:	00 00                	add    %al,(%rax)
 289:	04 00                	add    $0x0,%al
 28b:	60                   	(bad)  
 28c:	01 00                	add    %eax,(%rax)
 28e:	00 08                	add    %cl,(%rax)
 290:	01 2c 01             	add    %ebp,(%rcx,%rax,1)
 293:	00 00                	add    %al,(%rax)
 295:	0c 1b                	or     $0x1b,%al
 297:	01 00                	add    %eax,(%rax)
 299:	00 89 01 00 00 16    	add    %cl,0x16000001(%rcx)
 29f:	12 00                	adc    (%rax),%al
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 00                	add    %al,(%rax)
 2a5:	00 63 00             	add    %ah,0x0(%rbx)
 2a8:	00 00                	add    %al,(%rax)
 2aa:	00 00                	add    %al,(%rax)
 2ac:	00 00                	add    %al,(%rax)
 2ae:	45 01 00             	add    %r8d,(%r8)
 2b1:	00 02                	add    %al,(%rdx)
 2b3:	08 07                	or     %al,(%rdi)
 2b5:	4e 00 00             	rex.WRX add %r8b,(%rax)
 2b8:	00 03                	add    %al,(%rbx)
 2ba:	04 05                	add    $0x5,%al
 2bc:	69 6e 74 00 02 04 07 	imul   $0x7040200,0x74(%rsi),%ebp
 2c3:	53                   	push   %rbx
 2c4:	00 00                	add    %al,(%rax)
 2c6:	00 02                	add    %al,(%rdx)
 2c8:	08 05 05 00 00 00    	or     %al,0x5(%rip)        # 2d3 <_init-0xd2d>
 2ce:	02 08                	add    (%rax),%cl
 2d0:	05 00 00 00 00       	add    $0x0,%eax
 2d5:	02 01                	add    (%rcx),%al
 2d7:	08 6d 00             	or     %ch,0x0(%rbp)
 2da:	00 00                	add    %al,(%rax)
 2dc:	02 02                	add    (%rdx),%al
 2de:	07                   	(bad)  
 2df:	ed                   	in     (%dx),%eax
 2e0:	00 00                	add    %al,(%rax)
 2e2:	00 02                	add    %al,(%rdx)
 2e4:	01 06                	add    %eax,(%rsi)
 2e6:	6f                   	outsl  %ds:(%rsi),(%dx)
 2e7:	00 00                	add    %al,(%rax)
 2e9:	00 02                	add    %al,(%rdx)
 2eb:	02 05 11 01 00 00    	add    0x111(%rip),%al        # 402 <_init-0xbfe>
 2f1:	02 01                	add    (%rcx),%al
 2f3:	06                   	(bad)  
 2f4:	76 00                	jbe    2f6 <_init-0xd0a>
 2f6:	00 00                	add    %al,(%rax)
 2f8:	02 08                	add    (%rax),%cl
 2fa:	07                   	(bad)  
 2fb:	49 00 00             	rex.WB add %al,(%r8)
 2fe:	00 04 81             	add    %al,(%rcx,%rax,4)
 301:	01 00                	add    %eax,(%rax)
 303:	00 01                	add    %al,(%rcx)
 305:	0f 05                	syscall 
 307:	34 00                	xor    $0x0,%al
 309:	00 00                	add    %al,(%rax)
 30b:	56                   	push   %rsi
 30c:	12 00                	adc    (%rax),%al
 30e:	00 00                	add    %al,(%rax)
 310:	00 00                	add    %al,(%rax)
 312:	00 23                	add    %ah,(%rbx)
 314:	00 00                	add    %al,(%rax)
 316:	00 00                	add    %al,(%rax)
 318:	00 00                	add    %al,(%rax)
 31a:	00 01                	add    %al,(%rcx)
 31c:	9c                   	pushfq 
 31d:	b7 00                	mov    $0x0,%bh
 31f:	00 00                	add    %al,(%rax)
 321:	05 78 00 01 0f       	add    $0xf010078,%eax
 326:	11 34 00             	adc    %esi,(%rax,%rax,1)
 329:	00 00                	add    %al,(%rax)
 32b:	02 91 6c 05 79 00    	add    0x79056c(%rcx),%dl
 331:	01 0f                	add    %ecx,(%rdi)
 333:	18 34 00             	sbb    %dh,(%rax,%rax,1)
 336:	00 00                	add    %al,(%rax)
 338:	02 91 68 00 06 e0    	add    -0x1ff9ff98(%rcx),%dl
 33e:	00 00                	add    %al,(%rax)
 340:	00 01                	add    %al,(%rcx)
 342:	06                   	(bad)  
 343:	05 34 00 00 00       	add    $0x34,%eax
 348:	16                   	(bad)  
 349:	12 00                	adc    (%rax),%al
 34b:	00 00                	add    %al,(%rax)
 34d:	00 00                	add    %al,(%rax)
 34f:	00 40 00             	add    %al,0x0(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	00 00                	add    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	01 9c 05 78 00 01 06 	add    %ebx,0x6010078(%rbp,%rax,1)
 35f:	11 34 00             	adc    %esi,(%rax,%rax,1)
 362:	00 00                	add    %al,(%rax)
 364:	02 91 5c 05 79 00    	add    0x79055c(%rcx),%dl
 36a:	01 06                	add    %eax,(%rsi)
 36c:	18 34 00             	sbb    %dh,(%rax,%rax,1)
 36f:	00 00                	add    %al,(%rax)
 371:	02 91 58 07 72 65    	add    0x65720758(%rcx),%dl
 377:	73 00                	jae    379 <_init-0xc87>
 379:	01 07                	add    %eax,(%rdi)
 37b:	09 34 00             	or     %esi,(%rax,%rax,1)
 37e:	00 00                	add    %al,(%rax)
 380:	02 91 64 07 73 75    	add    0x75730764(%rcx),%dl
 386:	6d                   	insl   (%dx),%es:(%rdi)
 387:	00 01                	add    %al,(%rcx)
 389:	08 0a                	or     %cl,(%rdx)
 38b:	42 00 00             	rex.X add %al,(%rax)
 38e:	00 02                	add    %al,(%rdx)
 390:	91                   	xchg   %eax,%ecx
 391:	68                   	.byte 0x68
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x30ad2ce>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	55                   	push   %rbp
   c:	17                   	(bad)  
   d:	11 01                	adc    %eax,(%rcx)
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 24 00             	add    (%rax,%rax,1),%ah
  16:	0b 0b                	or     (%rbx),%ecx
  18:	3e 0b 03             	or     %ds:(%rbx),%eax
  1b:	0e                   	(bad)  
  1c:	00 00                	add    %al,(%rax)
  1e:	03 24 00             	add    (%rax,%rax,1),%esp
  21:	0b 0b                	or     (%rbx),%ecx
  23:	3e 0b 03             	or     %ds:(%rbx),%eax
  26:	08 00                	or     %al,(%rax)
  28:	00 04 0f             	add    %al,(%rdi,%rcx,1)
  2b:	00 0b                	add    %cl,(%rbx)
  2d:	0b 49 13             	or     0x13(%rcx),%ecx
  30:	00 00                	add    %al,(%rax)
  32:	05 26 00 49 13       	add    $0x13490026,%eax
  37:	00 00                	add    %al,(%rax)
  39:	06                   	(bad)  
  3a:	2e 01 3f             	add    %edi,%cs:(%rdi)
  3d:	19 03                	sbb    %eax,(%rbx)
  3f:	0e                   	(bad)  
  40:	3a 0b                	cmp    (%rbx),%cl
  42:	3b 0b                	cmp    (%rbx),%ecx
  44:	39 0b                	cmp    %ecx,(%rbx)
  46:	27                   	(bad)  
  47:	19 49 13             	sbb    %ecx,0x13(%rcx)
  4a:	11 01                	adc    %eax,(%rcx)
  4c:	12 07                	adc    (%rdi),%al
  4e:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
  55:	00 00                	add    %al,(%rax)
  57:	07                   	(bad)  
  58:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  5d:	0b 3b                	or     (%rbx),%edi
  5f:	0b 39                	or     (%rcx),%edi
  61:	0b 49 13             	or     0x13(%rcx),%ecx
  64:	02 17                	add    (%rdi),%dl
  66:	b7 42                	mov    $0x42,%bh
  68:	17                   	(bad)  
  69:	00 00                	add    %al,(%rax)
  6b:	08 34 00             	or     %dh,(%rax,%rax,1)
  6e:	03 08                	add    (%rax),%ecx
  70:	3a 0b                	cmp    (%rbx),%cl
  72:	3b 0b                	cmp    (%rbx),%ecx
  74:	39 0b                	cmp    %ecx,(%rbx)
  76:	49 13 02             	adc    (%r10),%rax
  79:	17                   	(bad)  
  7a:	b7 42                	mov    $0x42,%bh
  7c:	17                   	(bad)  
  7d:	00 00                	add    %al,(%rax)
  7f:	09 1d 01 31 13 52    	or     %ebx,0x52133101(%rip)        # 52133186 <_end+0x5212f13e>
  85:	01 b8 42 0b 55 17    	add    %edi,0x17550b42(%rax)
  8b:	58                   	pop    %rax
  8c:	0b 59 0b             	or     0xb(%rcx),%ebx
  8f:	57                   	push   %rdi
  90:	0b 01                	or     (%rcx),%eax
  92:	13 00                	adc    (%rax),%eax
  94:	00 0a                	add    %cl,(%rdx)
  96:	05 00 31 13 02       	add    $0x2133100,%eax
  9b:	17                   	(bad)  
  9c:	b7 42                	mov    $0x42,%bh
  9e:	17                   	(bad)  
  9f:	00 00                	add    %al,(%rax)
  a1:	0b 89 82 01 01 11    	or     0x11010182(%rcx),%ecx
  a7:	01 31                	add    %esi,(%rcx)
  a9:	13 00                	adc    (%rax),%eax
  ab:	00 0c 8a             	add    %cl,(%rdx,%rcx,4)
  ae:	82                   	(bad)  
  af:	01 00                	add    %eax,(%rax)
  b1:	02 18                	add    (%rax),%bl
  b3:	91                   	xchg   %eax,%ecx
  b4:	42 18 00             	rex.X sbb %al,(%rax)
  b7:	00 0d 89 82 01 00    	add    %cl,0x18289(%rip)        # 18346 <_end+0x142fe>
  bd:	11 01                	adc    %eax,(%rcx)
  bf:	31 13                	xor    %edx,(%rbx)
  c1:	00 00                	add    %al,(%rax)
  c3:	0e                   	(bad)  
  c4:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
  ca:	31 13                	xor    %edx,(%rbx)
  cc:	01 13                	add    %edx,(%rbx)
  ce:	00 00                	add    %al,(%rax)
  d0:	0f 2e 01             	ucomiss (%rcx),%xmm0
  d3:	3f                   	(bad)  
  d4:	19 03                	sbb    %eax,(%rbx)
  d6:	08 3a                	or     %bh,(%rdx)
  d8:	0b 3b                	or     (%rbx),%edi
  da:	0b 39                	or     (%rcx),%edi
  dc:	0b 27                	or     (%rdi),%esp
  de:	19 49 13             	sbb    %ecx,0x13(%rcx)
  e1:	11 01                	adc    %eax,(%rcx)
  e3:	12 07                	adc    (%rdi),%al
  e5:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
  ec:	00 00                	add    %al,(%rax)
  ee:	10 05 00 03 08 3a    	adc    %al,0x3a080300(%rip)        # 3a0803f4 <_end+0x3a07c3ac>
  f4:	0b 3b                	or     (%rbx),%edi
  f6:	0b 39                	or     (%rcx),%edi
  f8:	0b 49 13             	or     0x13(%rcx),%ecx
  fb:	02 17                	add    (%rdi),%dl
  fd:	b7 42                	mov    $0x42,%bh
  ff:	17                   	(bad)  
 100:	00 00                	add    %al,(%rax)
 102:	11 2e                	adc    %ebp,(%rsi)
 104:	01 3f                	add    %edi,(%rdi)
 106:	19 03                	sbb    %eax,(%rbx)
 108:	0e                   	(bad)  
 109:	3a 0b                	cmp    (%rbx),%cl
 10b:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270c4a <_end+0x1926cc02>
 111:	49 13 20             	adc    (%r8),%rsp
 114:	0b 01                	or     (%rcx),%eax
 116:	13 00                	adc    (%rax),%eax
 118:	00 12                	add    %dl,(%rdx)
 11a:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 11f:	0b 3b                	or     (%rbx),%edi
 121:	05 39 0b 49 13       	add    $0x13490b39,%eax
 126:	00 00                	add    %al,(%rax)
 128:	13 2e                	adc    (%rsi),%ebp
 12a:	00 3f                	add    %bh,(%rdi)
 12c:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 12f:	6e                   	outsb  %ds:(%rsi),(%dx)
 130:	0e                   	(bad)  
 131:	03 0e                	add    (%rsi),%ecx
 133:	3a 0b                	cmp    (%rbx),%cl
 135:	3b 0b                	cmp    (%rbx),%ecx
 137:	39 0b                	cmp    %ecx,(%rbx)
 139:	00 00                	add    %al,(%rax)
 13b:	14 2e                	adc    $0x2e,%al
 13d:	00 3f                	add    %bh,(%rdi)
 13f:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 142:	6e                   	outsb  %ds:(%rsi),(%dx)
 143:	0e                   	(bad)  
 144:	03 0e                	add    (%rsi),%ecx
 146:	3a 0b                	cmp    (%rbx),%cl
 148:	3b 05 39 0b 00 00    	cmp    0xb39(%rip),%eax        # c87 <_init-0x379>
 14e:	15 2e 00 3f 19       	adc    $0x193f002e,%eax
 153:	3c 19                	cmp    $0x19,%al
 155:	6e                   	outsb  %ds:(%rsi),(%dx)
 156:	0e                   	(bad)  
 157:	03 0e                	add    (%rsi),%ecx
 159:	3a 0b                	cmp    (%rbx),%cl
 15b:	3b 0b                	cmp    (%rbx),%ecx
 15d:	00 00                	add    %al,(%rax)
 15f:	00 01                	add    %al,(%rcx)
 161:	11 01                	adc    %eax,(%rcx)
 163:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 168:	0e                   	(bad)  
 169:	1b 0e                	sbb    (%rsi),%ecx
 16b:	11 01                	adc    %eax,(%rcx)
 16d:	12 07                	adc    (%rdi),%al
 16f:	10 17                	adc    %dl,(%rdi)
 171:	00 00                	add    %al,(%rax)
 173:	02 24 00             	add    (%rax,%rax,1),%ah
 176:	0b 0b                	or     (%rbx),%ecx
 178:	3e 0b 03             	or     %ds:(%rbx),%eax
 17b:	0e                   	(bad)  
 17c:	00 00                	add    %al,(%rax)
 17e:	03 24 00             	add    (%rax,%rax,1),%esp
 181:	0b 0b                	or     (%rbx),%ecx
 183:	3e 0b 03             	or     %ds:(%rbx),%eax
 186:	08 00                	or     %al,(%rax)
 188:	00 04 2e             	add    %al,(%rsi,%rbp,1)
 18b:	01 3f                	add    %edi,(%rdi)
 18d:	19 03                	sbb    %eax,(%rbx)
 18f:	0e                   	(bad)  
 190:	3a 0b                	cmp    (%rbx),%cl
 192:	3b 0b                	cmp    (%rbx),%ecx
 194:	39 0b                	cmp    %ecx,(%rbx)
 196:	27                   	(bad)  
 197:	19 49 13             	sbb    %ecx,0x13(%rcx)
 19a:	11 01                	adc    %eax,(%rcx)
 19c:	12 07                	adc    (%rdi),%al
 19e:	40 18 96 42 19 01 13 	sbb    %dl,0x13011942(%rsi)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	05 05 00 03 08       	add    $0x8030005,%eax
 1ac:	3a 0b                	cmp    (%rbx),%cl
 1ae:	3b 0b                	cmp    (%rbx),%ecx
 1b0:	39 0b                	cmp    %ecx,(%rbx)
 1b2:	49 13 02             	adc    (%r10),%rax
 1b5:	18 00                	sbb    %al,(%rax)
 1b7:	00 06                	add    %al,(%rsi)
 1b9:	2e 01 3f             	add    %edi,%cs:(%rdi)
 1bc:	19 03                	sbb    %eax,(%rbx)
 1be:	0e                   	(bad)  
 1bf:	3a 0b                	cmp    (%rbx),%cl
 1c1:	3b 0b                	cmp    (%rbx),%ecx
 1c3:	39 0b                	cmp    %ecx,(%rbx)
 1c5:	27                   	(bad)  
 1c6:	19 49 13             	sbb    %ecx,0x13(%rcx)
 1c9:	11 01                	adc    %eax,(%rcx)
 1cb:	12 07                	adc    (%rdi),%al
 1cd:	40 18 97 42 19 00 00 	sbb    %dl,0x1942(%rdi)
 1d4:	07                   	(bad)  
 1d5:	34 00                	xor    $0x0,%al
 1d7:	03 08                	add    (%rax),%ecx
 1d9:	3a 0b                	cmp    (%rbx),%cl
 1db:	3b 0b                	cmp    (%rbx),%ecx
 1dd:	39 0b                	cmp    %ecx,(%rbx)
 1df:	49 13 02             	adc    (%r10),%rax
 1e2:	18 00                	sbb    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	41 01 00             	add    %eax,(%r8)
   3:	00 03                	add    %al,(%rbx)
   5:	00 5e 00             	add    %bl,0x0(%rsi)
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	fb                   	sti    
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0xf6f>
  1e:	72 2f                	jb     4f <_init-0xfb1>
  20:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  27:	00 00                	add    %al,(%rax)
  29:	66 69 62 2e 63 00    	imul   $0x63,0x2e(%rdx),%sp
  2f:	00 00                	add    %al,(%rax)
  31:	00 73 74             	add    %dh,0x74(%rbx)
  34:	64 6c                	fs insb (%dx),%es:(%rdi)
  36:	69 62 2e 68 00 01 00 	imul   $0x10068,0x2e(%rdx),%esp
  3d:	00 73 74             	add    %dh,0x74(%rbx)
  40:	64 69 6f 2e 68 00 01 	imul   $0x10068,%fs:0x2e(%rdi),%ebp
  47:	00 
  48:	00 61 72             	add    %ah,0x72(%rcx)
  4b:	69 74 68 6d 65 74 69 	imul   $0x63697465,0x6d(%rax,%rbp,2),%esi
  52:	63 
  53:	2e 68 00 00 00 00    	cs pushq $0x0
  59:	3c 62                	cmp    $0x62,%al
  5b:	75 69                	jne    c6 <_init-0xf3a>
  5d:	6c                   	insb   (%dx),%es:(%rdi)
  5e:	74 2d                	je     8d <_init-0xf73>
  60:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
  67:	00 05 10 00 09 02    	add    %al,0x2090010(%rip)        # 209007d <_end+0x208c035>
  6d:	b0 11                	mov    $0x11,%al
  6f:	00 00                	add    %al,(%rax)
  71:	00 00                	add    %al,(%rax)
  73:	00 00                	add    %al,(%rax)
  75:	17                   	(bad)  
  76:	05 05 13 13 05       	add    $0x5131305,%eax
  7b:	08 06                	or     %al,(%rsi)
  7d:	01 05 10 56 05 08    	add    %eax,0x8055610(%rip)        # 8055693 <_end+0x805164b>
  83:	30 05 10 3a 05 0d    	xor    %al,0xd053a10(%rip)        # d053a99 <_end+0xd04fa51>
  89:	06                   	(bad)  
  8a:	03 0a                	add    (%rdx),%ecx
  8c:	66 05 14 06          	add    $0x614,%ax
  90:	01 05 05 06 03 77    	add    %eax,0x77030605(%rip)        # 7703069b <_end+0x7702c653>
  96:	9e                   	sahf   
  97:	13 05 08 06 01 05    	adc    0x5010608(%rip),%eax        # 50106a5 <_end+0x500c65d>
  9d:	09 06                	or     %eax,(%rsi)
  9f:	5d                   	pop    %rbp
  a0:	3d 05 0b 06 01       	cmp    $0x1060b05,%eax
  a5:	05 09 06 3d 05       	add    $0x53d0609,%eax
  aa:	0d 06 01 05 0c       	or     $0xc050106,%eax
  af:	90                   	nop
  b0:	05 0d 06 5b bb       	add    $0xbb5b060d,%eax
  b5:	05 01 06 5b 20       	add    $0x205b0601,%eax
  ba:	20 9e 66 20 05 08    	and    %bl,0x8052066(%rsi)
  c0:	03 72 90             	add    -0x70(%rdx),%esi
  c3:	05 01 03 0e 58       	add    $0x580e0301,%eax
  c8:	02 01                	add    (%rcx),%al
  ca:	00 01                	add    %al,(%rcx)
  cc:	01 05 22 00 09 02    	add    %eax,0x2090022(%rip)        # 20900f4 <_end+0x208c0ac>
  d2:	70 10                	jo     e4 <_init-0xf1c>
  d4:	00 00                	add    %al,(%rax)
  d6:	00 00                	add    %al,(%rax)
  d8:	00 00                	add    %al,(%rax)
  da:	03 17                	add    (%rdi),%edx
  dc:	01 05 05 13 13 13    	add    %eax,0x13131305(%rip)        # 131313e7 <_end+0x1312d39f>
  e2:	05 22 06 0f 05       	add    $0x50f0622,%eax
  e7:	08 23                	or     %ah,(%rbx)
  e9:	05 05 06 5b 05       	add    $0x55b0605,%eax
  ee:	09 13                	or     %edx,(%rbx)
  f0:	04 02                	add    $0x2,%al
  f2:	05 01 03 ca 02       	add    $0x2ca0301,%eax
  f7:	01 05 03 14 05 10    	add    %eax,0x10051403(%rip)        # 10051500 <_end+0x1004d4b8>
  fd:	06                   	(bad)  
  fe:	01 4a 74             	add    %ecx,0x74(%rdx)
 101:	58                   	pop    %rax
 102:	04 01                	add    $0x1,%al
 104:	05 0f 03 b5 7d       	add    $0x7db5030f,%eax
 109:	01 04 02             	add    %eax,(%rdx,%rax,1)
 10c:	05 10 03 cb 02       	add    $0x2cb0310,%eax
 111:	2e 3c 04             	cs cmp $0x4,%al
 114:	01 05 09 06 03 b5    	add    %eax,-0x4afcf9f7(%rip)        # ffffffffb5030723 <_end+0xffffffffb502c6db>
 11a:	7d 01                	jge    11d <_init-0xee3>
 11c:	05 0f 06 01 05       	add    $0x501060f,%eax
 121:	09 59 05             	or     %ebx,0x5(%rcx)
 124:	0f 8f 05 09 06 2f    	jg     2f060a2f <_end+0x2f05c9e7>
 12a:	06                   	(bad)  
 12b:	2e 05 05 06 5a 05    	cs add $0x55a0605,%eax
 131:	01 06                	add    %eax,(%rsi)
 133:	13 05 09 06 03 78    	adc    0x78030609(%rip),%eax        # 78030742 <_end+0x7802c6fa>
 139:	4a 06                	rex.WX (bad) 
 13b:	74 05                	je     142 <_init-0xebe>
 13d:	05 06 76 02 02       	add    $0x2027606,%eax
 142:	00 01                	add    %al,(%rcx)
 144:	01 7d 00             	add    %edi,0x0(%rbp)
 147:	00 00                	add    %al,(%rax)
 149:	03 00                	add    (%rax),%eax
 14b:	27                   	(bad)  
 14c:	00 00                	add    %al,(%rax)
 14e:	00 01                	add    %al,(%rcx)
 150:	01 fb                	add    %edi,%ebx
 152:	0e                   	(bad)  
 153:	0d 00 01 01 01       	or     $0x1010100,%eax
 158:	01 00                	add    %eax,(%rax)
 15a:	00 00                	add    %al,(%rax)
 15c:	01 00                	add    %eax,(%rax)
 15e:	00 01                	add    %al,(%rcx)
 160:	73 72                	jae    1d4 <_init-0xe2c>
 162:	63 00                	movsxd (%rax),%eax
 164:	00 61 72             	add    %ah,0x72(%rcx)
 167:	69 74 68 6d 65 74 69 	imul   $0x63697465,0x6d(%rax,%rbp,2),%esi
 16e:	63 
 16f:	2e 63 00             	movsxd %cs:(%rax),%eax
 172:	01 00                	add    %eax,(%rax)
 174:	00 00                	add    %al,(%rax)
 176:	05 1b 00 09 02       	add    $0x209001b,%eax
 17b:	16                   	(bad)  
 17c:	12 00                	adc    (%rax),%al
 17e:	00 00                	add    %al,(%rax)
 180:	00 00                	add    %al,(%rax)
 182:	00 17                	add    %dl,(%rdi)
 184:	05 0d a1 05 09       	add    $0x905a10d,%eax
 189:	82                   	(bad)  
 18a:	05 34 67 05 1c       	add    $0x1c056734,%eax
 18f:	00 02                	add    %al,(%rdx)
 191:	04 01                	add    $0x1,%al
 193:	9e                   	sahf   
 194:	05 34 00 02 04       	add    $0x4020034,%eax
 199:	03 9e 00 02 04 04    	add    0x4040200(%rsi),%ebx
 19f:	06                   	(bad)  
 1a0:	74 05                	je     1a7 <_init-0xe59>
 1a2:	09 00                	or     %eax,(%rax)
 1a4:	02 04 06             	add    (%rsi,%rax,1),%al
 1a7:	06                   	(bad)  
 1a8:	58                   	pop    %rax
 1a9:	05 0c 00 02 04       	add    $0x402000c,%eax
 1ae:	06                   	(bad)  
 1af:	3d 05 01 00 02       	cmp    $0x2000105,%eax
 1b4:	04 06                	add    $0x6,%al
 1b6:	3d 05 1b 31 05       	cmp    $0x5311b05,%eax
 1bb:	0c d7                	or     $0xd7,%al
 1bd:	05 01 08 2f 02       	add    $0x22f0801,%eax
 1c2:	02 00                	add    (%rax),%al
 1c4:	01 01                	add    %eax,(%rcx)

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6c                   	insb   (%dx),%es:(%rdi)
   1:	6f                   	outsl  %ds:(%rsi),(%dx)
   2:	6e                   	outsb  %ds:(%rsi),(%dx)
   3:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
   8:	67 20 69 6e          	and    %ch,0x6e(%ecx)
   c:	74 00                	je     e <_init-0xff2>
   e:	2f                   	(bad)  
   f:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  14:	61                   	(bad)  
  15:	64 61                	fs (bad) 
  17:	6d                   	insl   (%dx),%es:(%rdi)
  18:	2f                   	(bad)  
  19:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  1b:	64 65 2f             	fs gs (bad) 
  1e:	6c                   	insb   (%dx),%es:(%rdi)
  1f:	6f                   	outsl  %ds:(%rsi),(%dx)
  20:	77 6c                	ja     8e <_init-0xf72>
  22:	65 76 65             	gs jbe 8a <_init-0xf76>
  25:	6c                   	insb   (%dx),%es:(%rdi)
  26:	2f                   	(bad)  
  27:	70 72                	jo     9b <_init-0xf65>
  29:	6f                   	outsl  %ds:(%rsi),(%dx)
  2a:	62                   	(bad)  
  2b:	6c                   	insb   (%dx),%es:(%rdi)
  2c:	65 6d                	gs insl (%dx),%es:(%rdi)
  2e:	73 2f                	jae    5f <_init-0xfa1>
  30:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
  33:	64 6c                	fs insb (%dx),%es:(%rdi)
  35:	6f                   	outsl  %ds:(%rsi),(%dx)
  36:	67 69 63 00 5f 5f 62 	imul   $0x75625f5f,0x0(%ebx),%esp
  3d:	75 
  3e:	69 6c 74 69 6e 5f 70 	imul   $0x75705f6e,0x69(%rsp,%rsi,2),%ebp
  45:	75 
  46:	74 73                	je     bb <_init-0xf45>
  48:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  4c:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  51:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  55:	73 69                	jae    c0 <_init-0xf40>
  57:	67 6e                	outsb  %ds:(%esi),(%dx)
  59:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  5e:	74 00                	je     60 <_init-0xfa0>
  60:	73 74                	jae    d6 <_init-0xf2a>
  62:	72 74                	jb     d8 <_init-0xf28>
  64:	6f                   	outsl  %ds:(%rsi),(%dx)
  65:	6c                   	insb   (%dx),%es:(%rdi)
  66:	00 66 69             	add    %ah,0x69(%rsi)
  69:	62                   	(bad)  
  6a:	2e 63 00             	movsxd %cs:(%rax),%eax
  6d:	75 6e                	jne    dd <_init-0xf23>
  6f:	73 69                	jae    da <_init-0xf26>
  71:	67 6e                	outsb  %ds:(%esi),(%dx)
  73:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  78:	61                   	(bad)  
  79:	72 00                	jb     7b <_init-0xf85>
  7b:	47                   	rex.RXB
  7c:	4e 55                	rex.WRX push %rbp
  7e:	20 43 31             	and    %al,0x31(%rbx)
  81:	37                   	(bad)  
  82:	20 31                	and    %dh,(%rcx)
  84:	30 2e                	xor    %ch,(%rsi)
  86:	32 2e                	xor    (%rsi),%ch
  88:	31 20                	xor    %esp,(%rax)
  8a:	32 30                	xor    (%rax),%dh
  8c:	32 31                	xor    (%rcx),%dh
  8e:	30 31                	xor    %dh,(%rcx)
  90:	31 30                	xor    %esi,(%rax)
  92:	20 2d 6d 74 75 6e    	and    %ch,0x6e75746d(%rip)        # 6e757505 <_end+0x6e7534bd>
  98:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  9e:	72 69                	jb     109 <_init-0xef7>
  a0:	63 20                	movsxd (%rax),%esp
  a2:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  a7:	68 3d 78 38 36       	pushq  $0x3638783d
  ac:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  b1:	67 20 2d 4f 32 20 2d 	and    %ch,0x2d20324f(%eip)        # 2d203307 <_end+0x2d1ff2bf>
  b8:	66 61                	data16 (bad) 
  ba:	73 79                	jae    135 <_init-0xecb>
  bc:	6e                   	outsb  %ds:(%rsi),(%dx)
  bd:	63 68 72             	movsxd 0x72(%rax),%ebp
  c0:	6f                   	outsl  %ds:(%rsi),(%dx)
  c1:	6e                   	outsb  %ds:(%rsi),(%dx)
  c2:	6f                   	outsl  %ds:(%rsi),(%dx)
  c3:	75 73                	jne    138 <_init-0xec8>
  c5:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
  ca:	6e                   	outsb  %ds:(%rsi),(%dx)
  cb:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
  d1:	65 73 00             	gs jae d4 <_init-0xf2c>
  d4:	5f                   	pop    %rdi
  d5:	5f                   	pop    %rdi
  d6:	6e                   	outsb  %ds:(%rsi),(%dx)
  d7:	70 74                	jo     14d <_init-0xeb3>
  d9:	72 00                	jb     db <_init-0xf25>
  db:	61                   	(bad)  
  dc:	74 6f                	je     14d <_init-0xeb3>
  de:	69 00 74 61 64 64    	imul   $0x64646174,(%rax),%eax
  e4:	5f                   	pop    %rdi
  e5:	6f                   	outsl  %ds:(%rsi),(%dx)
  e6:	6b 00 61             	imul   $0x61,(%rax),%eax
  e9:	72 67                	jb     152 <_init-0xeae>
  eb:	63 00                	movsxd (%rax),%eax
  ed:	73 68                	jae    157 <_init-0xea9>
  ef:	6f                   	outsl  %ds:(%rsi),(%dx)
  f0:	72 74                	jb     166 <_init-0xe9a>
  f2:	20 75 6e             	and    %dh,0x6e(%rbp)
  f5:	73 69                	jae    160 <_init-0xea0>
  f7:	67 6e                	outsb  %ds:(%esi),(%dx)
  f9:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  fe:	74 00                	je     100 <_init-0xf00>
 100:	70 72                	jo     174 <_init-0xe8c>
 102:	69 6e 74 66 00 61 72 	imul   $0x72610066,0x74(%rsi),%ebp
 109:	67 76 00             	addr32 jbe 10c <_init-0xef4>
 10c:	6d                   	insl   (%dx),%es:(%rdi)
 10d:	61                   	(bad)  
 10e:	69 6e 00 73 68 6f 72 	imul   $0x726f6873,0x0(%rsi),%ebp
 115:	74 20                	je     137 <_init-0xec9>
 117:	69 6e 74 00 73 72 63 	imul   $0x63727300,0x74(%rsi),%ebp
 11e:	2f                   	(bad)  
 11f:	61                   	(bad)  
 120:	72 69                	jb     18b <_init-0xe75>
 122:	74 68                	je     18c <_init-0xe74>
 124:	6d                   	insl   (%dx),%es:(%rdi)
 125:	65 74 69             	gs je  191 <_init-0xe6f>
 128:	63 2e                	movsxd (%rsi),%ebp
 12a:	63 00                	movsxd (%rax),%eax
 12c:	47                   	rex.RXB
 12d:	4e 55                	rex.WRX push %rbp
 12f:	20 43 31             	and    %al,0x31(%rbx)
 132:	37                   	(bad)  
 133:	20 31                	and    %dh,(%rcx)
 135:	30 2e                	xor    %ch,(%rsi)
 137:	32 2e                	xor    (%rsi),%ch
 139:	31 20                	xor    %esp,(%rax)
 13b:	32 30                	xor    (%rax),%dh
 13d:	32 31                	xor    (%rcx),%dh
 13f:	30 31                	xor    %dh,(%rcx)
 141:	31 30                	xor    %esi,(%rax)
 143:	20 2d 6d 74 75 6e    	and    %ch,0x6e75746d(%rip)        # 6e7575b6 <_end+0x6e75356e>
 149:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 14f:	72 69                	jb     1ba <_init-0xe46>
 151:	63 20                	movsxd (%rax),%esp
 153:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 158:	68 3d 78 38 36       	pushq  $0x3638783d
 15d:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 162:	67 20 2d 66 61 73 79 	and    %ch,0x79736166(%eip)        # 797362cf <_end+0x79732287>
 169:	6e                   	outsb  %ds:(%rsi),(%dx)
 16a:	63 68 72             	movsxd 0x72(%rax),%ebp
 16d:	6f                   	outsl  %ds:(%rsi),(%dx)
 16e:	6e                   	outsb  %ds:(%rsi),(%dx)
 16f:	6f                   	outsl  %ds:(%rsi),(%dx)
 170:	75 73                	jne    1e5 <_init-0xe1b>
 172:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
 177:	6e                   	outsb  %ds:(%rsi),(%dx)
 178:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
 17e:	65 73 00             	gs jae 181 <_init-0xe7f>
 181:	74 73                	je     1f6 <_init-0xe0a>
 183:	75 62                	jne    1e7 <_init-0xe19>
 185:	5f                   	pop    %rdi
 186:	6f                   	outsl  %ds:(%rsi),(%dx)
 187:	6b 00 2f             	imul   $0x2f,(%rax),%eax
 18a:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 18f:	61                   	(bad)  
 190:	64 61                	fs (bad) 
 192:	6d                   	insl   (%dx),%es:(%rdi)
 193:	2f                   	(bad)  
 194:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
 196:	64 65 2f             	fs gs (bad) 
 199:	6c                   	insb   (%dx),%es:(%rdi)
 19a:	6f                   	outsl  %ds:(%rsi),(%dx)
 19b:	77 6c                	ja     209 <_init-0xdf7>
 19d:	65 76 65             	gs jbe 205 <_init-0xdfb>
 1a0:	6c                   	insb   (%dx),%es:(%rdi)
 1a1:	2f                   	(bad)  
 1a2:	70 72                	jo     216 <_init-0xdea>
 1a4:	6f                   	outsl  %ds:(%rsi),(%dx)
 1a5:	62                   	(bad)  
 1a6:	6c                   	insb   (%dx),%es:(%rdi)
 1a7:	65 6d                	gs insl (%dx),%es:(%rdi)
 1a9:	73 2f                	jae    1da <_init-0xe26>
 1ab:	61                   	(bad)  
 1ac:	72 69                	jb     217 <_init-0xde9>
 1ae:	74 68                	je     218 <_init-0xde8>
 1b0:	6d                   	insl   (%dx),%es:(%rdi)
 1b1:	65 74 69             	gs je  21d <_init-0xde3>
 1b4:	63 00                	movsxd (%rax),%eax

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
   8:	70 10                	jo     1a <_init-0xfe6>
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	7a 10                	jp     22 <_init-0xfde>
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	01 00                	add    %eax,(%rax)
  1a:	55                   	push   %rbp
  1b:	7a 10                	jp     2d <_init-0xfd3>
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  24:	10 00                	adc    %al,(%rax)
  26:	00 00                	add    %al,(%rax)
  28:	00 00                	add    %al,(%rax)
  2a:	00 04 00             	add    %al,(%rax,%rax,1)
  2d:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  31:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  32:	10 00                	adc    %al,(%rax)
  34:	00 00                	add    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	00 ad 10 00 00 00    	add    %ch,0x10(%rbp)
  3e:	00 00                	add    %al,(%rax)
  40:	00 01                	add    %al,(%rcx)
  42:	00 55 ad             	add    %dl,-0x53(%rbp)
  45:	10 00                	adc    %al,(%rax)
  47:	00 00                	add    %al,(%rax)
  49:	00 00                	add    %al,(%rax)
  4b:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
  51:	00 00                	add    %al,(%rax)
  53:	00 04 00             	add    %al,(%rax,%rax,1)
  56:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  72:	70 10                	jo     84 <_init-0xf7c>
  74:	00 00                	add    %al,(%rax)
  76:	00 00                	add    %al,(%rax)
  78:	00 00                	add    %al,(%rax)
  7a:	81 10 00 00 00 00    	adcl   $0x0,(%rax)
  80:	00 00                	add    %al,(%rax)
  82:	01 00                	add    %eax,(%rax)
  84:	54                   	push   %rsp
  85:	81 10 00 00 00 00    	adcl   $0x0,(%rax)
  8b:	00 00                	add    %al,(%rax)
  8d:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  8e:	10 00                	adc    %al,(%rax)
  90:	00 00                	add    %al,(%rax)
  92:	00 00                	add    %al,(%rax)
  94:	00 04 00             	add    %al,(%rax,%rax,1)
  97:	f3 01 54 9f a6       	repz add %edx,-0x5a(%rdi,%rbx,4)
  9c:	10 00                	adc    %al,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	00 00                	add    %al,(%rax)
  a2:	00 b3 10 00 00 00    	add    %dh,0x10(%rbx)
  a8:	00 00                	add    %al,(%rax)
  aa:	00 01                	add    %al,(%rcx)
  ac:	00 54 b3 10          	add    %dl,0x10(%rbx,%rsi,4)
  b0:	00 00                	add    %al,(%rax)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	b6 10                	mov    $0x10,%dh
  b8:	00 00                	add    %al,(%rax)
  ba:	00 00                	add    %al,(%rax)
  bc:	00 00                	add    %al,(%rax)
  be:	04 00                	add    $0x0,%al
  c0:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
  d1:	00 00                	add    %al,(%rax)
  d3:	00 02                	add    %al,(%rdx)
  d5:	00 00                	add    %al,(%rax)
  d7:	00 00                	add    %al,(%rax)
  d9:	00 70 10             	add    %dh,0x10(%rax)
  dc:	00 00                	add    %al,(%rax)
  de:	00 00                	add    %al,(%rax)
  e0:	00 00                	add    %al,(%rax)
  e2:	8b 10                	mov    (%rax),%edx
  e4:	00 00                	add    %al,(%rax)
  e6:	00 00                	add    %al,(%rax)
  e8:	00 00                	add    %al,(%rax)
  ea:	02 00                	add    (%rax),%al
  ec:	30 9f 8b 10 00 00    	xor    %bl,0x108b(%rdi)
  f2:	00 00                	add    %al,(%rax)
  f4:	00 00                	add    %al,(%rax)
  f6:	8f                   	(bad)  
  f7:	10 00                	adc    %al,(%rax)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 01                	add    %al,(%rcx)
  ff:	00 50 a6             	add    %dl,-0x5a(%rax)
 102:	10 00                	adc    %al,(%rax)
 104:	00 00                	add    %al,(%rax)
 106:	00 00                	add    %al,(%rax)
 108:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
 10e:	00 00                	add    %al,(%rax)
 110:	00 02                	add    %al,(%rdx)
 112:	00 30                	add    %dh,(%rax)
 114:	9f                   	lahf   
	...
 125:	03 00                	add    (%rax),%eax
 127:	00 00                	add    %al,(%rax)
 129:	00 00                	add    %al,(%rax)
 12b:	00 00                	add    %al,(%rax)
 12d:	70 10                	jo     13f <_init-0xec1>
 12f:	00 00                	add    %al,(%rax)
 131:	00 00                	add    %al,(%rax)
 133:	00 00                	add    %al,(%rax)
 135:	9b                   	fwait
 136:	10 00                	adc    %al,(%rax)
 138:	00 00                	add    %al,(%rax)
 13a:	00 00                	add    %al,(%rax)
 13c:	00 02                	add    %al,(%rdx)
 13e:	00 30                	add    %dh,(%rax)
 140:	9f                   	lahf   
 141:	9b                   	fwait
 142:	10 00                	adc    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	00 00                	add    %al,(%rax)
 148:	00 9d 10 00 00 00    	add    %bl,0x10(%rbp)
 14e:	00 00                	add    %al,(%rax)
 150:	00 01                	add    %al,(%rcx)
 152:	00 50 9d             	add    %dl,-0x63(%rax)
 155:	10 00                	adc    %al,(%rax)
 157:	00 00                	add    %al,(%rax)
 159:	00 00                	add    %al,(%rax)
 15b:	00 a1 10 00 00 00    	add    %ah,0x10(%rcx)
 161:	00 00                	add    %al,(%rax)
 163:	00 01                	add    %al,(%rcx)
 165:	00 51 a6             	add    %dl,-0x5a(%rcx)
 168:	10 00                	adc    %al,(%rax)
 16a:	00 00                	add    %al,(%rax)
 16c:	00 00                	add    %al,(%rax)
 16e:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
 174:	00 00                	add    %al,(%rax)
 176:	00 02                	add    %al,(%rdx)
 178:	00 30                	add    %dh,(%rax)
 17a:	9f                   	lahf   
	...
 18b:	02 00                	add    (%rax),%al
 18d:	00 00                	add    %al,(%rax)
 18f:	76 10                	jbe    1a1 <_init-0xe5f>
 191:	00 00                	add    %al,(%rax)
 193:	00 00                	add    %al,(%rax)
 195:	00 00                	add    %al,(%rax)
 197:	81 10 00 00 00 00    	adcl   $0x0,(%rax)
 19d:	00 00                	add    %al,(%rax)
 19f:	02 00                	add    (%rax),%al
 1a1:	74 08                	je     1ab <_init-0xe55>
 1a3:	81 10 00 00 00 00    	adcl   $0x0,(%rax)
 1a9:	00 00                	add    %al,(%rax)
 1ab:	85 10                	test   %edx,(%rax)
 1ad:	00 00                	add    %al,(%rax)
 1af:	00 00                	add    %al,(%rax)
 1b1:	00 00                	add    %al,(%rax)
 1b3:	01 00                	add    %eax,(%rax)
 1b5:	55                   	push   %rbp
	...
 1ca:	00 00                	add    %al,(%rax)
 1cc:	b0 11                	mov    $0x11,%al
 1ce:	00 00                	add    %al,(%rax)
 1d0:	00 00                	add    %al,(%rax)
 1d2:	00 00                	add    %al,(%rax)
 1d4:	c0 11 00             	rclb   $0x0,(%rcx)
 1d7:	00 00                	add    %al,(%rax)
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 01                	add    %al,(%rcx)
 1dd:	00 55 c0             	add    %dl,-0x40(%rbp)
 1e0:	11 00                	adc    %eax,(%rax)
 1e2:	00 00                	add    %al,(%rax)
 1e4:	00 00                	add    %al,(%rax)
 1e6:	00 0a                	add    %cl,(%rdx)
 1e8:	12 00                	adc    (%rax),%al
 1ea:	00 00                	add    %al,(%rax)
 1ec:	00 00                	add    %al,(%rax)
 1ee:	00 04 00             	add    %al,(%rax,%rax,1)
 1f1:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 1f5:	0a 12                	or     (%rdx),%dl
 1f7:	00 00                	add    %al,(%rax)
 1f9:	00 00                	add    %al,(%rax)
 1fb:	00 00                	add    %al,(%rax)
 1fd:	16                   	(bad)  
 1fe:	12 00                	adc    (%rax),%al
 200:	00 00                	add    %al,(%rax)
 202:	00 00                	add    %al,(%rax)
 204:	00 01                	add    %al,(%rcx)
 206:	00 55 00             	add    %dl,0x0(%rbp)
	...
 21d:	00 c0                	add    %al,%al
 21f:	11 00                	adc    %eax,(%rax)
 221:	00 00                	add    %al,(%rax)
 223:	00 00                	add    %al,(%rax)
 225:	00 cf                	add    %cl,%bh
 227:	11 00                	adc    %eax,(%rax)
 229:	00 00                	add    %al,(%rax)
 22b:	00 00                	add    %al,(%rax)
 22d:	00 01                	add    %al,(%rcx)
 22f:	00 56 d2             	add    %dl,-0x2e(%rsi)
 232:	11 00                	adc    %eax,(%rax)
 234:	00 00                	add    %al,(%rax)
 236:	00 00                	add    %al,(%rax)
 238:	00 f6                	add    %dh,%dh
 23a:	11 00                	adc    %eax,(%rax)
 23c:	00 00                	add    %al,(%rax)
 23e:	00 00                	add    %al,(%rax)
 240:	00 01                	add    %al,(%rcx)
 242:	00 56 f9             	add    %dl,-0x7(%rsi)
 245:	11 00                	adc    %eax,(%rax)
 247:	00 00                	add    %al,(%rax)
 249:	00 00                	add    %al,(%rax)
 24b:	00 07                	add    %al,(%rdi)
 24d:	12 00                	adc    (%rax),%al
 24f:	00 00                	add    %al,(%rax)
 251:	00 00                	add    %al,(%rax)
 253:	00 01                	add    %al,(%rcx)
 255:	00 56 00             	add    %dl,0x0(%rsi)
	...
 270:	00 c0                	add    %al,%al
 272:	11 00                	adc    %eax,(%rax)
 274:	00 00                	add    %al,(%rax)
 276:	00 00                	add    %al,(%rax)
 278:	00 cf                	add    %cl,%bh
 27a:	11 00                	adc    %eax,(%rax)
 27c:	00 00                	add    %al,(%rax)
 27e:	00 00                	add    %al,(%rax)
 280:	00 01                	add    %al,(%rcx)
 282:	00 53 d5             	add    %dl,-0x2b(%rbx)
 285:	11 00                	adc    %eax,(%rax)
 287:	00 00                	add    %al,(%rax)
 289:	00 00                	add    %al,(%rax)
 28b:	00 f5                	add    %dh,%ch
 28d:	11 00                	adc    %eax,(%rax)
 28f:	00 00                	add    %al,(%rax)
 291:	00 00                	add    %al,(%rax)
 293:	00 01                	add    %al,(%rcx)
 295:	00 53 f5             	add    %dl,-0xb(%rbx)
 298:	11 00                	adc    %eax,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	00 00                	add    %al,(%rax)
 29e:	00 f6                	add    %dh,%dh
 2a0:	11 00                	adc    %eax,(%rax)
 2a2:	00 00                	add    %al,(%rax)
 2a4:	00 00                	add    %al,(%rax)
 2a6:	00 03                	add    %al,(%rbx)
 2a8:	00 76 01             	add    %dh,0x1(%rsi)
 2ab:	9f                   	lahf   
 2ac:	f9                   	stc    
 2ad:	11 00                	adc    %eax,(%rax)
 2af:	00 00                	add    %al,(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 06                	add    %al,(%rsi)
 2b5:	12 00                	adc    (%rax),%al
 2b7:	00 00                	add    %al,(%rax)
 2b9:	00 00                	add    %al,(%rax)
 2bb:	00 01                	add    %al,(%rcx)
 2bd:	00 53 06             	add    %dl,0x6(%rbx)
 2c0:	12 00                	adc    (%rax),%al
 2c2:	00 00                	add    %al,(%rax)
 2c4:	00 00                	add    %al,(%rax)
 2c6:	00 07                	add    %al,(%rdi)
 2c8:	12 00                	adc    (%rax),%al
 2ca:	00 00                	add    %al,(%rax)
 2cc:	00 00                	add    %al,(%rax)
 2ce:	00 03                	add    %al,(%rbx)
 2d0:	00 76 01             	add    %dh,0x1(%rsi)
 2d3:	9f                   	lahf   
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	76 10                	jbe    12 <_init-0xfee>
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	86 10                	xchg   %dl,(%rax)
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	88 10                	mov    %dl,(%rax)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	8b 10                	mov    (%rax),%edx
	...
  2e:	00 00                	add    %al,(%rax)
  30:	b0 11                	mov    $0x11,%al
  32:	00 00                	add    %al,(%rax)
  34:	00 00                	add    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	16                   	(bad)  
  39:	12 00                	adc    (%rax),%al
  3b:	00 00                	add    %al,(%rax)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 70 10             	add    %dh,0x10(%rax)
  42:	00 00                	add    %al,(%rax)
  44:	00 00                	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	b6 10                	mov    $0x10,%dh
	...
