	.text
	.file	"rSum.c"
	.globl	rSum                            # -- Begin function rSum
	.p2align	4, 0x90
	.type	rSum,@function
rSum:                                   # @rSum
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	$0, 12(%ebp)
	jg	.LBB0_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB0_3
.LBB0_2:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %ecx
	addl	$4, %ecx
	movl	12(%ebp), %edx
	subl	$1, %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -8(%ebp)                  # 4-byte Spill
	calll	rSum
	movl	-8(%ebp), %ecx                  # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4(%ebp)
.LBB0_3:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	retl
.Lfunc_end0:
	.size	rSum, .Lfunc_end0-rSum
                                        # -- End function
	.ident	"Debian clang version 11.0.1-2"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rSum
