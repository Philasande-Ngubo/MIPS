.data
str:    .asciiz "1234567"  # Input string
result: .word 0          # Variable to store the result

.text
.globl main

main:
    la $t0, str          # Load address of the string into $t0
    li $t1, 0            # Initialize result to 0
    li $t2, 10           # Load 10 into $t2 (used for multiplication)

loop:
    lb $t3, 0($t0)       # Load the next byte of the string into $t3
    beq $t3, $zero, end  # If the byte is null (end of string), exit loop

    sub $t3, $t3, 48     # Convert ASCII to integer (ASCII '0' is 48)
    mul $t1, $t1, $t2    # Multiply result by 10
    add $t1, $t1, $t3    # Add the current digit to the result

    addi $t0, $t0, 1     # Move to the next character
    j loop               # Repeat the loop

end:
    sw $t1, result       # Store the result in memory
    li $v0, 10           # Exit the program
    syscall
