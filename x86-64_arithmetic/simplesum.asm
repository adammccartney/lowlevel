; define 4 integers, 2 positive 2 negative
; one of the positive integers should be in hex
; load the four into four different registers
; sum with the sum being left in a register
    segment .data
a   db      2
b   db      -2
c   dw      0x1234
d   dw      10042 

    section .text
    global  main   ; let the linker know about main
main:
    push rbp       ; set up stack frame for main
    mov  rbp, rsp  ; let rbp point to the previous ssp
    mov  eax, 0
    mov  ebx, 0
    mov  ecx, 0
    mov  edx, 0
    mov  eax, [a]   ; load constant a into register al
    mov  ebx, [b]   ; load contant b into register ah
    mov  ecx, [c]   ; load constant c into register ebx
    mov  edx, [d]   ; load constant d into register rbx
    add  ebx, eax
    add  ecx, ebx
    add  edx, ecx
    leave 
    ret


    ; note, we're not using sign extension when moving the smaller
    ; values into registers. Therefor, there are a bunch of random 
    ; values already present in the registers and our sum is incorrect 
    ; as a result. A workaround would be to initialize the registers with
    ; zero. 
