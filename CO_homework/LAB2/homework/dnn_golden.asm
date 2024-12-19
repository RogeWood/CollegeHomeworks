.data
# Define static arrays for the vectors and matrices.
v_hidden: .float 0.138, -0.42, -0.9835, -0.1827, 0.0, 0.0, 0.0
w_hidden: .float -0.4108, -0.4864, -0.9012, 0.5346, 0.6727, -0.9481, -0.8063, -0.0589, 0.9884, -0.9256
b_hidden: .float -0.6899, -0.513, 0.0604
DIM: .word 4, 2, 1
fp_zero: .float 0.0

.text
.globl main

main:
    # Call dnn function
    la     $a0, v_hidden       # Load address of v_hidden into $a0
    la     $a1, w_hidden       # Load address of w_hidden into $a1
    la     $a2, b_hidden       # Load address of b_hidden into $a2
    la     $a3, DIM            # Load address of DIM into $a3
    jal    dnn                 # Jump and link to dnn function

    # Exit the program
    li     $v0, 10             # Load exit code into $v0
    syscall                    # Call exit

dnn:
    # idxz = 1
    li     $t0, 1              # $t0 holds idxz = 1
    li     $t5, 0
    move   $t9, $a0
loop_dnn_z:
	# If idxz >= 3, end loop
    bge    $t0, 3, end_loop_dnn_z

    # $t1 holds idxi = 0
    li     $t1, 0              
    # idxi < DIM[idxz] for DIM[idxz] value
    sll    $t2, $t0, 2         # $t2 = idxz * 4 = DIM[idxz] address
    add    $t2, $t2, $a3       # $t5 = DIM[idxz] pointer
    lw     $t2, 0($t2)         # $t2 = DIM[idxz] value
    
   	# idxj < DIM[idxz - 1] for DIM[idxz-1]
    sub    $t3, $t0, 1         # $t3 = idxz-1
    sll    $t4, $t3, 2         # $t4 = (idxz-1) * 4 = DIM[idxz] address
    add    $t4, $t4, $a3       # $t4 = DIM[idxz-1] pointer
    lw     $t4, 0($t4)         # $t4 = DIM[idxz-1] value
    
    add    $t5, $t5, $t4       # $t5 = DIM[0] + DIM[1] +... + DIM[idxz-1]
    
loop_dnn_i:
	# If idxi >= DIM[idxz], end loop
    bge    $t1, $t2, end_loop_dnn_i

    # tempVal = b_hidden[idxz - 1][idxi]
    sll    $t6, $t3, 1         # $t6 = (idxz-1)*2
    add    $t6, $t6, $t1       # $t6 = (idxz-1)*2+idxi = b_hidden[idxz - 1][idxi] index
    sll    $t6, $t6, 2         # $t6 = ((idxz-1)*2+idxi)*4 = b_hidden[idxz - 1][idxi] address
    add    $t6, $t6, $a2       # $t6 = b_hidden[idxz - 1][idxi] pointer
    lwc1   $f0, 0($t6)         # $f0 = tempVal = b_hidden value
    # $t6 = idxj
    li     $t6, 0
loop_dnn_j:
	# If idxj >= DIM[idxz - 1], end loop
    bge    $t6, $t4, end_loop_dnn_j

    # tempVal += v_hidden[idxz - 1][idxj] * w_hidden[idxz - 1][idxi][idxj]
    # Load v_hidden[idxz - 1][idxj]
    sub    $t8, $t5, $t4       # $t8 = DIM[0 +: idxz-1]
    add    $t7, $t8, $t6       # $t7 = $t8+idxj = v_hidden[idxz - 1][idxi] index   
    sll    $t7, $t7, 2         # $t7 = length*4 = v_hidden[idxz - 1][idxi] address
    add    $t7, $t7, $t9       # $t7 = v_hidden[idxz - 1][idxj] pointer
    lwc1   $f1, 0($t7)         # $f1 = v_hidden value
    
    # Load w_hidden[idxz - 1][idxi][idxj]
    #((idxz-1)*2 + idxi)*4 + idxj = (idxz-1)*8 + idxi*4 + idxj
    sll    $t7, $t3, 1         # $t7 = (idxz-1)*2
    add    $t7, $t7, $t1       # (idxz-1)*2 + idxi
    sll    $t7, $t7, 2         # ((idxz-1)*2 + idxi)*4
    add    $t7, $t7, $t6       # $t7 = (idxz-1)*8 + idxi*4 + idxj
    sll    $t7, $t7, 2         # $t7 = ((idxz-1)*8+idxi*4+idxj)*4 = w_hidden[idxz - 1][idxi] index
    add    $t7, $t7, $a1       # $t7 = w_hidden[idxz - 1][idxj] pointer
    lwc1   $f2, 0($t7)         # $f2 = w_hidden value
    
    
    # tempVal += v_hidden[idxz - 1][idxj] * w_hidden[idxz - 1][idxi][idxj]
    mul.s  $f3, $f1, $f2       # Multiply v_hidden * w_hidden
    add.s  $f0, $f0, $f3       # Add to tempVal
                  # Print value
    
    # idxj++
    addi   $t6, $t6, 1
    j      loop_dnn_j
end_loop_dnn_j:
    
    #Apply ReLU only to hidden layer
    # if idxz < 2,  idxz >=2 j to else
    bge    $t0, 2, skip_relu
    lwc1   $f4, fp_zero        # Load 0.0 into $f4
    c.le.s $f4, $f0            # Check if tempVal > 0
    j      skip_relu           # If false, skip
    mov.s  $f0, $f4            # Otherwise, set tempVal = 0
skip_relu:
    # v_hidden[idxz][idxi] = tempVal
    add    $t6, $t5, $t1       # DIM[0 +: idxz-1] + idxi
    
    sll    $t6, $t6, 2         # $t6 = v_hidden[idxz][idxi] index
    add    $t6, $t6, $t9       # $t6 = v_hidden[idxz][idxi]  pointer
    swc1   $f0, 0($t6)         # Store tempVal in v_hidden[idxz][idxi]

    # idxi++
    addi   $t1, $t1, 1
    j      loop_dnn_i

end_loop_dnn_i:
    # idxz++
    addi   $t0, $t0, 1
    j      loop_dnn_z

end_loop_dnn_z:

    # idxz = 1
    li     $t0, 0              # $t0 holds idxz = 1
loop_print_z:
	# If idxz >= 1, end loop
    bge    $t0, 1, end_loop_print_z
    li     $t1, 6
    add    $t1, $t1, $t0       # $t7 = $t8+idxj = v_hidden[idxz - 1][idxi] index
    sll    $t1, $t1, 2         # $t7 = length*4 = v_hidden[idxz - 1][idxi] address
    add    $t1, $t1, $t9       # $t7 = v_hidden[idxz - 1][idxj] pointer
    lw     $t1, 0($t1)         # $f1 = v_hidden value

    # Print the hexadecimal value
    li     $v0, 34            # Load code for printing hex
    move   $a0, $t1           # Move $t0 into $a0
    syscall                   # Print value

    # idxz++
    addi   $t0, $t0, 1
    j      loop_print_z
end_loop_print_z:
    # end dnn function
    jr     $ra                # Return to caller
