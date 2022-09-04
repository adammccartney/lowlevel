	.text
	.file	"rSum_ex.c"
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
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$72, %esp
	leal	-36(%ebp), %eax
	leal	.L__const.main.x, %ecx
	movl	$0, -4(%ebp)
	movl	%eax, %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	$32, 8(%esp)
	movl	%eax, -52(%ebp)                 # 4-byte Spill
	calll	memcpy
	movl	-52(%ebp), %eax                 # 4-byte Reload
	movl	%eax, -40(%ebp)
	movl	$8, -44(%ebp)
	movl	-40(%ebp), %ecx
	movl	-44(%ebp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	rSum
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	leal	.L.str, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	printf
	xorl	%ecx, %ecx
	movl	%eax, -56(%ebp)                 # 4-byte Spill
	movl	%ecx, %eax
	addl	$72, %esp
	popl	%ebp
	retl
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.x,@object        # @__const.main.x
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2
.L__const.main.x:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	5                               # 0x5
	.long	8                               # 0x8
	.long	13                              # 0xd
	.long	21                              # 0x15
	.size	.L__const.main.x, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.ident	"Debian clang version 11.0.1-2"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rSum
	.addrsig_sym printf
