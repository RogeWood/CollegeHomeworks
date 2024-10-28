/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global bcdadd
    .type bcdadd, %function
bcdadd:
    /* function start */
    mov ip,sp
    stmfd sp!, {r4-r10,fp,ip,lr,pc}
    sub fp, ip, #4 

    /* --- begin your function --- */
    mov r4, #0

    /* one */
    and r2, r0, #15
    and r3, r1, #15
    add r2, r2, r3
    cmp r2, #10
    addge r0, r0, #16
    subge r2, r2, #10
    add r4, r4, r2

    /* ten */
    and r2, r0, #240
    and r3, r1, #240
    add r2, r2, r3
    cmp r2, #160
    addge r0, r0, #256
    subge r2, r2, #160
    add r4, r4, r2

    /* hunderd */
    and r2, r0, #3840
    and r3, r1, #3840
    add r2, r2, r3
    cmp r2, #2560
    addge r4, r4, #4096 @thousand
    subge r2, r2, #2560
    add r4, r4, r2

    mov r0, r4
    /* --- end of your function --- */

    /* function exit */
    ldmea fp, {r4-r10,fp,sp,pc}
    .end
