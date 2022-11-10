	.file	"C4.c"
	.text
	.globl	comp
	.type	comp, @function
comp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movb	%dl, -4(%ebp)
	movb	%al, -8(%ebp)
	movzbl	-4(%ebp), %eax
	cmpb	-8(%ebp), %al
	setb	%al
	movzbl	%al, %eax
	leave
	ret
	.size	comp, .-comp
	.globl	main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ecx
	subl	$20, %esp
	movb	$0, -9(%ebp)
	movb	$0, -10(%ebp)
	movzbl	-10(%ebp), %edx
	movzbl	-9(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	comp
	addl	$8, %esp
	subl	$12, %esp
	pushl	$0
	call	exit
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
