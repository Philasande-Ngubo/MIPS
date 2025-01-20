# calculating a factorial
		.data 
one:	.asciiz "Please enter a number : "
two:	.asciiz "The factorial of "
three:	.asciiz " is "
line:	.asciiz "\n"

		.text
main:	li $v0, 4
		la $a0, one
		syscall
		
		li $v0, 5
		syscall
		move $t0, $v0
		
		
		li $t1, 1
		li $t2, 0
		
		j calc

calc:	addi $t2, $t2, 1
		mul $t1, $t1, $t2
		bne, $t2, $t0,calc
		beq, $t2, $t0, endloop
		
endloop:
		li $v0, 4
		la $a0, two
		syscall
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 4
		la $a0, three
		syscall
		
		li $v0, 1
		move $a0, $t1
		syscall
		
		li $v0, 4
		la $a0, line
		syscall
		syscall
		
		li $v0, 10
		syscall