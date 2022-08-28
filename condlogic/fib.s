	.file	"fib.c"
	.intel_syntax noprefix
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Error: calculation will overflow int datatype"
	.text
	.p2align 4
	.globl	fib
	.type	fib, @function
fib:
.LFB22:
	.cfi_startproc
	cmp	edi, 2
	jbe	.L67
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	lea	r15, .LC0[rip]
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	ebx, edi
	sub	rsp, 72
	.cfi_def_cfa_offset 128
	mov	DWORD PTR [rsp], 0
.L3:
	lea	eax, -1[rbx]
	lea	ebp, -2[rbx]
	mov	esi, eax
	mov	edi, ebp
	mov	DWORD PTR 20[rsp], eax
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L5
	test	ebp, ebp
	je	.L6
	sub	ebx, 3
	cmp	ebx, 1
	jbe	.L7
	mov	DWORD PTR 4[rsp], 0
.L8:
	lea	eax, -1[rbp]
	lea	ebx, -2[rbp]
	mov	esi, eax
	mov	edi, ebx
	mov	DWORD PTR 24[rsp], eax
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L11
	test	ebx, ebx
	je	.L12
	sub	ebp, 3
	cmp	ebp, 1
	jbe	.L13
	mov	DWORD PTR 8[rsp], 0
.L14:
	lea	eax, -1[rbx]
	lea	ebp, -2[rbx]
	mov	esi, eax
	mov	edi, ebp
	mov	DWORD PTR 28[rsp], eax
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L17
	test	ebp, ebp
	je	.L18
	sub	ebx, 3
	cmp	ebx, 1
	jbe	.L19
	mov	DWORD PTR 12[rsp], 0
.L20:
	lea	eax, -1[rbp]
	lea	ebx, -2[rbp]
	mov	esi, eax
	mov	edi, ebx
	mov	DWORD PTR 32[rsp], eax
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L23
	test	ebx, ebx
	je	.L24
	sub	ebp, 3
	cmp	ebp, 1
	jbe	.L25
	xor	r14d, r14d
.L26:
	lea	eax, -1[rbx]
	lea	r13d, -2[rbx]
	mov	esi, eax
	mov	edi, r13d
	mov	DWORD PTR 36[rsp], eax
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L29
	test	r13d, r13d
	je	.L30
	lea	eax, -3[rbx]
	cmp	eax, 1
	jbe	.L83
	lea	eax, -4[rbx]
	mov	DWORD PTR 16[rsp], 0
	mov	DWORD PTR 60[rsp], eax
	lea	eax, -5[rbx]
	mov	DWORD PTR 56[rsp], eax
	mov	DWORD PTR 44[rsp], r14d
.L33:
	mov	r14d, DWORD PTR 60[rsp]
	sub	r13d, 1
	mov	esi, r13d
	mov	edi, r14d
	mov	ebx, r14d
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L35
	test	r14d, r14d
	je	.L36
	cmp	DWORD PTR 56[rsp], 1
	jbe	.L37
	mov	DWORD PTR 48[rsp], r13d
	xor	r14d, r14d
.L38:
	lea	eax, -1[rbx]
	lea	ebp, -2[rbx]
	mov	esi, eax
	mov	edi, ebp
	mov	DWORD PTR 40[rsp], eax
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L40
	test	ebp, ebp
	je	.L41
	sub	ebx, 3
	cmp	ebx, 1
	jbe	.L42
	xor	ebx, ebx
.L43:
	lea	r12d, -2[rbp]
	lea	r13d, -1[rbp]
	mov	esi, r13d
	mov	edi, r12d
	call	tadd_ok@PLT
	cmp	eax, 1
	jne	.L46
	test	r12d, r12d
	je	.L47
	sub	ebp, 3
	cmp	ebp, 1
	jbe	.L48
	xor	ebp, ebp
	mov	DWORD PTR 52[rsp], ebx
	mov	ebx, ebp
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L85:
	mov	edi, ebp
	call	fib
	add	ebx, eax
	cmp	r12d, 2
	je	.L84
.L50:
	lea	ebp, -2[r12]
	sub	r12d, 1
	mov	esi, r12d
	mov	edi, ebp
	call	tadd_ok@PLT
	cmp	eax, 1
	je	.L85
	mov	ebp, ebx
	mov	rdi, r15
	mov	ebx, DWORD PTR 52[rsp]
	call	puts@PLT
	sub	ebp, 1
.L51:
	add	ebx, ebp
	test	r13d, r13d
	jne	.L52
.L75:
	add	ebx, 1
.L45:
	mov	r8d, DWORD PTR 40[rsp]
	add	r14d, ebx
	test	r8d, r8d
	jne	.L53
.L76:
	mov	r13d, DWORD PTR 48[rsp]
	lea	eax, 1[r14]
.L37:
	add	DWORD PTR 16[rsp], eax
	mov	eax, DWORD PTR 16[rsp]
	test	r13d, r13d
	jne	.L54
	mov	r14d, DWORD PTR 44[rsp]
	add	eax, 1
.L34:
	mov	edi, DWORD PTR 36[rsp]
	add	r14d, eax
	test	edi, edi
	jne	.L55
.L77:
	mov	esi, DWORD PTR 32[rsp]
	lea	eax, 1[r14]
	add	DWORD PTR 12[rsp], eax
	test	esi, esi
	je	.L78
.L56:
	cmp	DWORD PTR 32[rsp], 2
	je	.L78
.L63:
	mov	ebp, DWORD PTR 32[rsp]
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L46:
	mov	rdi, r15
	sub	ebx, 1
	call	puts@PLT
	jmp	.L45
.L40:
	mov	rdi, r15
	mov	r13d, DWORD PTR 48[rsp]
	call	puts@PLT
	lea	eax, -1[r14]
	jmp	.L37
.L42:
	add	r14d, 1
.L53:
	cmp	DWORD PTR 40[rsp], 2
	je	.L76
	mov	ebx, DWORD PTR 40[rsp]
	jmp	.L38
.L41:
	mov	ebx, DWORD PTR 40[rsp]
	add	r14d, 1
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L48:
	add	ebx, 1
.L52:
	cmp	r13d, 2
	je	.L75
	mov	ebp, r13d
	jmp	.L43
.L35:
	mov	rdi, r15
	mov	r14d, DWORD PTR 44[rsp]
	call	puts@PLT
	mov	eax, DWORD PTR 16[rsp]
	mov	edi, DWORD PTR 36[rsp]
	sub	eax, 1
	add	r14d, eax
	test	edi, edi
	je	.L77
.L55:
	cmp	DWORD PTR 36[rsp], 2
	je	.L77
.L64:
	mov	ebx, DWORD PTR 36[rsp]
	jmp	.L26
.L36:
	add	DWORD PTR 16[rsp], 1
.L54:
	sub	DWORD PTR 60[rsp], 1
	sub	DWORD PTR 56[rsp], 1
	cmp	r13d, 2
	jne	.L33
	mov	eax, DWORD PTR 16[rsp]
	mov	r14d, DWORD PTR 44[rsp]
	add	eax, 1
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L84:
	mov	ebp, ebx
	mov	ebx, DWORD PTR 52[rsp]
	add	ebp, 1
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L47:
	add	ebx, 1
	mov	ebp, r13d
	jmp	.L43
.L30:
	mov	ebx, DWORD PTR 36[rsp]
	add	r14d, 1
	jmp	.L26
.L29:
	mov	rdi, r15
	call	puts@PLT
	mov	esi, DWORD PTR 32[rsp]
	lea	eax, -1[r14]
	add	DWORD PTR 12[rsp], eax
	test	esi, esi
	jne	.L56
.L78:
	mov	eax, DWORD PTR 12[rsp]
	mov	ecx, DWORD PTR 28[rsp]
	add	eax, 1
	add	DWORD PTR 8[rsp], eax
	test	ecx, ecx
	je	.L79
.L57:
	cmp	DWORD PTR 28[rsp], 2
	je	.L79
.L62:
	mov	ebx, DWORD PTR 28[rsp]
	jmp	.L14
.L83:
	add	r14d, 1
	cmp	DWORD PTR 36[rsp], 2
	je	.L77
	jmp	.L64
.L25:
	add	DWORD PTR 12[rsp], 1
	jmp	.L56
.L24:
	add	DWORD PTR 12[rsp], 1
	jmp	.L63
.L23:
	mov	rdi, r15
	call	puts@PLT
	mov	eax, DWORD PTR 12[rsp]
	mov	ecx, DWORD PTR 28[rsp]
	sub	eax, 1
	add	DWORD PTR 8[rsp], eax
	test	ecx, ecx
	jne	.L57
.L79:
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, DWORD PTR 24[rsp]
	add	eax, 1
	add	DWORD PTR 4[rsp], eax
	test	edx, edx
	jne	.L58
.L80:
	mov	eax, DWORD PTR 4[rsp]
	add	eax, 1
.L86:
	add	DWORD PTR [rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	test	eax, eax
	jne	.L59
.L81:
	mov	eax, DWORD PTR [rsp]
	add	rsp, 72
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	add	eax, 1
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	mov	rdi, r15
	call	puts@PLT
	mov	eax, DWORD PTR 4[rsp]
	sub	eax, 1
	add	DWORD PTR [rsp], eax
	mov	eax, DWORD PTR 20[rsp]
	test	eax, eax
	je	.L81
.L59:
	cmp	DWORD PTR 20[rsp], 2
	je	.L81
.L60:
	mov	ebx, DWORD PTR 20[rsp]
	jmp	.L3
.L13:
	add	DWORD PTR 4[rsp], 1
.L58:
	cmp	DWORD PTR 24[rsp], 2
	je	.L80
.L61:
	mov	ebp, DWORD PTR 24[rsp]
	jmp	.L8
.L12:
	add	DWORD PTR 4[rsp], 1
	jmp	.L61
.L18:
	add	DWORD PTR 8[rsp], 1
	jmp	.L62
.L17:
	mov	rdi, r15
	call	puts@PLT
	mov	eax, DWORD PTR 8[rsp]
	mov	edx, DWORD PTR 24[rsp]
	sub	eax, 1
	add	DWORD PTR 4[rsp], eax
	test	edx, edx
	jne	.L58
	mov	eax, DWORD PTR 4[rsp]
	add	eax, 1
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L19:
	add	DWORD PTR 8[rsp], 1
	jmp	.L57
.L7:
	add	DWORD PTR [rsp], 1
	jmp	.L59
.L6:
	add	DWORD PTR [rsp], 1
	jmp	.L60
.L5:
	lea	rdi, .LC0[rip]
	call	puts@PLT
	mov	eax, DWORD PTR [rsp]
	add	rsp, 72
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	sub	eax, 1
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L67:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	mov	eax, 1
	ret
	.cfi_endproc
.LFE22:
	.size	fib, .-fib
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Usage: fib <int n>"
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"The %dth number in the fibonacci series is %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmp	edi, 2
	jne	.L92
	mov	rdi, QWORD PTR 8[rsi]
	mov	edx, 10
	xor	esi, esi
	call	strtol@PLT
	mov	edi, eax
	mov	rbx, rax
	call	fib
	mov	esi, ebx
	lea	rdi, .LC2[rip]
	mov	edx, eax
	xor	eax, eax
	call	printf@PLT
.L90:
	xor	eax, eax
	pop	rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L92:
	.cfi_restore_state
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	printf@PLT
	jmp	.L90
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
