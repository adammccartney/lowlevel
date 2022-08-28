	.file	"electricity.c"
	.text
	.globl	annelecbill
	.type	annelecbill, @function
annelecbill:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$500, -4(%rbp)
	movl	$1000, -8(%rbp)
	movl	$19, -12(%rbp)
	movl	$5200, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	annelecbill, .-annelecbill
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
