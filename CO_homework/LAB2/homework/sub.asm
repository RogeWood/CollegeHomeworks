.data
inputa: .asciiz "Enter number A="  # Define an ASCII string for input prompt
inputb: .asciiz "Enter number B="  # Define an ASCII string for input prompt

.text
.globl main
main:
    li $v0, 4                # Set system call code for printing a string
    la $a0, inputa           # Load the address of inputa for output
    syscall                  # Perform the output operation

    li $v0, 5                # Set system call code for reading an integer
    syscall                  # Perform the input operation, result stored in $v0

    add $t0, $zero, $v0      # Pass the read integer to $a0
    
    
    li $v0, 4                # Set system call code for printing a string
    la $a0, inputb           # Load the address of inputa for output
    syscall                  # Perform the output operation

    li $v0, 5                # Set system call code for reading an integer
    syscall                  # Perform the input operation, result stored in $v0

    add $t1, $zero, $v0      # Pass the read integer to $a0
	
	sub $t0, $t0, $t1
	li $v0, 1                # Set system call code for printing an integer
    add $a0, $zero, $t0      # Pass the result in $t1 to $a0
    syscall
exit:
