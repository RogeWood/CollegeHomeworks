/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global bin2bcd
    .type bin2bcd, %function

bin2bcd:
    /* function start */
    mov ip,sp
    stmfd sp!,{r4-r10,fp,ip,lr,pc}
    sub fp,ip,#4

    /* --- begin of function --- */
    mov r1, r0

    mov r3, #100
    bl idiv
    mov r4, r0 /* hundred */
    
    mov r3, #10
    bl idiv
    mov r5, r0 /* ten */

	add r2, r1, r5, lsl #4
	add r2, r2, r4, lsl #8

    mov r0, r2
    /* --- end of function --- */

    /* function exit */
    ldmea fp, {r4-r10,fp,sp,pc}
    .end
