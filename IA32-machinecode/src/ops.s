	.file	"ops.c"
	.text
	.p2align 4
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	xorl	4(%esp), %eax
	sarl	$3, %eax
	notl	%eax
	subl	12(%esp), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
