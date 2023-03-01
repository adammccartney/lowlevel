.section .data
.section .text
.global _start
_start:
  movb $0xF, (%ebx)
  movq %rax, (%rsp)
  movq %rax,4(%rsp)
  movb %al,%sil
  movq $0x123,%rax
  movq %rax,%rdx
  movw %si, 8(%rbp)
