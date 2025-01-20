		.data
num:	.asciiz "234"

		.text
main:	li $t0, 0
		la $t1, num
		li $t2, 10
		
		lb  $t3, 0($t1)
		addi $t3, $t3, -48
		add $t0, $t0, $t3
		mul $t0, $t0, $t2
		
		lb  $t3, 1($t1)
		addi $t3, $t3, -48
		add $t0, $t0, $t3
		mul $t0, $t0, $t2
		
		lb  $t3, 2($t1)
		addi $t3, $t3, -48
		add $t0, $t0, $t3
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 10
		syscall
		
	
		