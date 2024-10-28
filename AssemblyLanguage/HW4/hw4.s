/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global main
    .type main, %function
    .type findhundred, %function
    .type findten, %function
    .type findone, %function
main:
    mov r1, #957
    mov r2, #0
findhundred:
    cmp r1, #100
    addge r2, #256 /* binary: 1 0000 0000 */
    subge r1, #100
    bge findhundred
findten:
    cmp r1, #10
    addge r2, #16 /* binary: 0000 0001 0000 */
    subge r1, #10
    bge findten
findone:
    cmp r1, #1
    addge r2, #1 /* binary: 0000 0000 0001 */
    subge r1, #1
    bge findone
