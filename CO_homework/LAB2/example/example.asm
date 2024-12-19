.data
inputa: .asciiz "Enter factorial number="  # Define an ASCII string for input prompt

.text
.globl main
main:
    li $v0, 4                # Set system call code for printing a string
    la $a0, inputa           # Load the address of inputa for output
    syscall                  # Perform the output operation

    li $v0, 5                # Set system call code for reading an integer
    syscall                  # Perform the input operation, result stored in $v0

    add $a0, $zero, $v0      # Pass the read integer to $a0
    jal fact                 # Call the function named fact to calculate factorial

    add $t1, $zero, $v0      # Store the result in $t1
    li $v0, 1                # Set system call code for printing an integer
    add $a0, $zero, $t1      # Pass the result in $t1 to $a0
    syscall                  # Perform the output operation

    j exit                   # Jump to the exit label to end the program

fact:
    addi $sp, $sp, -8        # Allocate stack space
    sw $ra, 0($sp)           # Save the return address ($ra) to the stack
    sw $a0, 4($sp)           # Save the value of $a0 register to the stack

    slti $t0, $a0, 1         # Check if $a0 is less than 1
    beq $t0, $zero, L1       # If $a0 >= 1, jump to label L1

    addi $v0, $zero, 1       # If $a0 == 0, set the result to 1
    addi $sp, $sp, 8         # Release stack space
    jr $ra                   # Return to the calling point

L1:
    addi $a0, $a0, -1        # $a0 = $a0 - 1
    jal fact                 # Recursively call the fact function to calculate factorial of ($a0-1)
    lw $a0, 4($sp)           # Restore the value of $a0
    mul $v0, $a0, $v0        # Multiply the factorial result by $a0
    lw $ra, 0($sp)           # Restore the return address
    addi $sp, $sp, 8         # Release stack space
    jr $ra                   # Return to the calling point

exit:
