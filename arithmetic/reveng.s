	.file	"reveng.c"
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.globl	optarith
	.type	optarith, @function
optarith:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	sall	$5, -20(%rbp)
	movl	-4(%rbp), %eax
	subl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L4
	addl	$7, -24(%rbp)
.L4:
	sarl	$3, -24(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	optarith, .-optarith
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
