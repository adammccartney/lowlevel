; slope.asm: a non-floating point program
; we would compute the slope of the line segment connecting 2 points
; instead, difference in x coords are stored in one memory location,
; those of y in another. Leave register rax with the value 1 if the line
; segment is vertical (infinite or undefined slope) and 0 if it is not.
; Use a conditional move to set the value of rax.
        segment .data
ai      dq      4098
aj      dq      1028
bi      dq      4098
bj      dq      3954
slope   dq      0

        section .text
        global  main
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 20
    mov     rax, 1     ; assume that we're human and we want to divide by zero 
    mov     rbx, [ai]
    mov     rcx, [bi]  ; if zero, div by zero attempt
    sub     rcx, rbx
    cmovnz  rax, [slope] ; if rcx was not zero, move slope
    leave
    ret


