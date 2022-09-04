	.file	"rSum.c"
	.text
	.globl	rSum
	.type	rSum, @function
rSum:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	cmpl	$0, 12(%ebp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
	movl	12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	call	rSum
	addl	$16, %esp
	addl	%ebx, %eax
.L3:
	movl	-4(%ebp), %ebx
	leave
	ret
	.size	rSum, .-rSum
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
