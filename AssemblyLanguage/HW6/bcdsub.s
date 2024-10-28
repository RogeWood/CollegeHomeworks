/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global bcdsub
    .type bcdsub, %function
bcdsub:
    /* function start */
    mov ip, sp
    stmfd sp!, {r4-r10,fp,ip,lr,pc}
    sub fp, ip, #4 

    /* --- begin your function --- */
    /* one */
    and r2, r0, #15
    and r3, r1, #15
    cmp r2, r3
    addlt r0, r0, #10
    sublt r0, r0, #16
    sub r0, r0, r3

    /* ten */
    and r2, r0, #240
    and r3, r1, #240
    cmp r2, #240 @ 被借位
    subeq r0, r0, #96
    and r2, r0, #240
    cmp r2, r3
    addlt r0, r0, #160
    sublt r0, r0, #256
    sub r0, r0, r3

    /* hundred */
    and r3, r1, #3840
    sub r0, r0, r3
    /* --- end of your function --- */

    /* function exit */
    ldmea fp, {r4-r10,fp,sp,pc}
    .end
