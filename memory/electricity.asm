        segment .data
a       dq      500   ; connection cost for utility
b       dq      1000   ; base offsef (only charge for kwh over 1000 kwhours)
c       dq      19   ; cost per kilowatt hour
d       dq      5200   ; number of kilowatt hours per year 
sum     dq      0

        section .text
        global  main        ; let the linker know about main
main:
        push   rbp         ; set up a stack frame for main 
        mov    rbp, rsp    ; let rbp point to the previous ssp
        sub    rsp, 20     ; offset the stack pointer so we have some memory
        mov    rax, 0      ; set rax to 0
        add    rax, [d]    ; load d into rax 
        sub    rax, [b]    ; subtrack base 
        imul   rax, [c]    ; multiply by rate
        add    rax, [a]    ; add to base fee
        mov    [sum], rax  ; save the sum
        mov    rax, 0
        leave
        ret
        


