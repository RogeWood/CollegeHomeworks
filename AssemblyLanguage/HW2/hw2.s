    .section .text
    .global main
    .type main, %function

main:
    mov r1, #3 ; r1 = 3
    mov r5, #2 ; r5 = 2
    mov r6, #1 ; r6 = 1
    mov r0, r1, LSL #1 ; r0 = r1 * 2
    add r5, r5, r5, LSL #1 ; r5 = r5 + r5 * 2
    add r0, r0, r5 ; r0 = r0 + r5
    sub r0, r0, r6, LSL #1 ; r0 = r0 - r6*2
    nop
    .end
