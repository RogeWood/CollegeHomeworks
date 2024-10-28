/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global idiv
    .type idiv,%function
idiv:
    /* function start */
    mov ip,sp
    stmfd sp!,{r4-r10,fp,ip,lr,pc}
    sub fp,ip,#4 

    mov r0, #0
    /* Do idiv */
doDiv:
    cmp r1, r3
    addge r0, #1
    subge r1, r3
    bge doDiv
    
    /* function exit */
    ldmea fp,{r4-r10,fp,sp,pc}
    .end
