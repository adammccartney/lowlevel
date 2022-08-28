	.file	"xor.c"
	.text
	.p2align 4
	.globl	xor
	.type	xor, @function
xor:
.LFB0:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	xor, .-xor
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
