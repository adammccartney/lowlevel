	.file	"rSum.c"
	.text
	.p2align 4
	.globl	rSum
	.type	rSum, @function
rSum:
.LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	testl	%eax, %eax
	jle	.L4
.L2:
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L4:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	rSum, .-rSum
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
