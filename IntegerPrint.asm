		.text
main:	li $v0, 1
		li $a0,20
		syscall
		
		.data
line:	.asciiz " - "
		
		.text
		
		li $v0, 4
		la $a0, line
		syscall
		
		li $v0, 1
		li $a0, 11
		syscall
		
		li $v0, 4
		la $a0, line
		syscall
		
		li $v0, 1
		li $a0, 2004
		syscall
		
		li $v0, 10
		syscall