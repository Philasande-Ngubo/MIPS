		.data
titl:	.asciiz "Assembly Two number sum\n"
num1:	.asciiz "Please enter the first number : "
num2:	.asciiz "\nPlease enter the second number : "
res:	.asciiz "\nThe answer is "

		.text
main:	li $v0, 4 
		la $a0, titl
		syscall
		
		la $a0,num1 
		syscall
		
		li $v0, 5 
		move $t0, $v0
		
		li $v0, 4
		la $a0, num2 
		syscall
		
		li $v0, 5
		move $t1, $v0
		
		add $t0, $t0, $t1
		
		li $v0, 4
		la $a0, res
		syscall
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 10
		syscall
		