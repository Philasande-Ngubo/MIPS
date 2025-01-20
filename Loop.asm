		.data
line:	.asciiz "\n"
		.text
main:	li $t0, 0
		li $t1,100
		li $v0, 1
		j loo
		
loo:	addi $t0, $t0, 1
		move $a0, $t0
		syscall
		jal newLine
		bne $t0, $t1, loo
		beq $t0, $t1, quit

quit:	li $v0, 10
		syscall
	
newLine:
		li $v0, 4
		la $a0, line
		syscall
		li $v0, 1
		jr $ra
		