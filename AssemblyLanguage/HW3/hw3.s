/* ====================== */
/*      DATA section      */
/* ====================== */
    .data

/* --- variable a --- */
    .type a, %object
a:
    .word 11 /* 1 row */
    .word 12
    .word 13
    .word 21 /* 2 row */
    .word 22
    .word 23
    .word 31 /* 3 row */
    .word 32
    .word 33
    .word 41 /* 4 row */
    .word 42
    .word 43
/* --- variable b --- */
    .type b, %object
b:
    .word 11 /* 1 row */
    .word 12
    .word 13
    .word 21 /* 2 row */
    .word 22
    .word 23
    .word 31 /* 3 row */
    .word 32
    .word 33
    .word 41 /* 4 row */
    .word 42
    .word 43
/* --- variable c --- */
    .type c, %object
c:
    .space 48, 0 /* 1 word = 4 byts 12 word = 12 * 4 = 48 byts */


/* ======================= */
/*      TEXT section       */
/* ======================= */
    .section .text
    .global main
    .type main, %function
    .type addmatrix, %function

.matrix:
    .word a
    .word b
    .word c

main:
    ldr r0, .matrix /* r0 = a address */
    ldr r1, .matrix + 4 /* r1 = b address */
    ldr r2, .matrix + 8 /* r2 = c address */

    mov r3, #12 /* 4*3 = 12 times */
addmatrix:
    ldr r4, [r0], #4 /* r4 := mem32[r0] , r0 = r0 + 4 */
                     /* r4 = a[i][j] */
    ldr r5, [r1], #4 /* r5 := mem32[r1], r5 = b[i][j] */

    add r6, r4, r5 /* r5 = a[i][j]+b[i][j] */

    str r6, [r2], #4 /* mem32[r2] := r6, r2 = c[i][j] = r6 */
                     /* r2 = r2 + 4 */

    sub r3, r3, #1 /* r3 = r3 - 1 */
    cmp r3, #0
    bne addmatrix /* if r3 != 0 keep loop */

    ldr r0, .matrix + 8 /* set r0 point to C's first element */
