	.file	"simple.c"
	.text
	.p2align 4
	.globl	simple
	.type	simple, @function
simple:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	(%edx), %eax
	addl	8(%esp), %eax
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE0:
	.size	simple, .-simple
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
