.section .data
.section .text
.global _start
_start:
        movq (%rdi), %rax
        movq %rax, (%rsi)
        movl (%edi), %eax
        movq %rax, (%esi)
        movb (%rsp,%rdx,4),%dil
        movb %dil, (%rsp,%rdx,4)
        movl (%rsp,%rdx,4),%edi
        movl %edi, (%rsp,%rsi,4)
        movb (%rsp,%rdi,4),%dil
        movb %dil,(%rsp,%rsi,4)
        movb (%rsp,%rdx,4),%dl 
        movb %dl,(%rsp,%rsi,4)
