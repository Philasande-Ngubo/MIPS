		.data
one:	.asciiz "Please input your name: "
line:	.asciiz "\n"
outpu:	.asciiz "Welcome "
name:	.space 100

		.text
main:	li $v0, 4 # asks for input
		la $a0,	one
		syscall
		
		li $v0, 8 #asks for input
		la $a0, name
		li $a1, 100
		syscall
		
		li $v0, 4 # Prints next line
		la $a0,	line
		syscall
		
		la $a0,	outpu
		syscall
		
		la $a0,	name
		syscall
		
		li $v0, 10 #quit
		syscall
		
		
		
		
		
		
		
		