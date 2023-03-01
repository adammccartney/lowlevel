.section .data
.section .text
.global _start
_start:
        movl %eax, (%rsp)
        movw (%rax), %dx
        movb  $0xFF, %bl
        movb (%rsp,%rdx,4), %dl
        movq (%rdx), %rax
        movw %dx, (%rax)
