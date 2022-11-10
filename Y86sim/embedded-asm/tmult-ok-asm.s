	.file	"gen-tmult-ok-asm.c"
	.text
	.globl	tmult_ok_asm
	.type	tmult_ok_asm, @function
tmult_ok_asm:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	imull	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	16(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	cmpl	$0, -4(%ebp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	tmult_ok_asm, .-tmult_ok_asm
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
