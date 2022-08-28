; define 4 integers, 2 positive 2 negative
; one of the positive integers should be in hex
; load the four into four different registers
; sum with the sum being left in a register
    segment .data
a   db      5                      
b   dw      2073                   
c   dd      2147483635             
d   dq      2305843009213693935    
sum dq      0

    section .text
    global  main   ; let the linker know about main
main:
    push    rbp       ; set up stack frame for main
    mov     rbp, rsp  ; let rbp point to the previous ssp
    movsx   rax, byte [a]   ; load constant a into register al
    movsx   rbx, word [b]   ; load contant b into register ah
    movsxd  rcx, dword [c]   ; load constant c into register ebx
    mov     rdx, [d]   ; load constant d into register rbx
    add     rbx, rax
    add     rcx, rbx
    add     rdx, rcx
    mov     [sum], rdx
    leave 
    ret
