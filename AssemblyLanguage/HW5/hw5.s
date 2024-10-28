/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global main
    .type main, %function
main:
    MOV ip, sp
    STMFD sp!, {fp, ip, lr, pc}
    SUB fp, ip, #4
    
    mov r1, #957

    mov r3, #100
    bl idiv
    mov r4, r0 /* hundred */
    
    mov r3, #10
    bl idiv
    mov r5, r0 /* ten */

	add r2, r1, r5, lsl #4
	add r2, r2, r4, lsl #8

    nop
    LDMEA fp, {fp, sp, pc}
    .end
