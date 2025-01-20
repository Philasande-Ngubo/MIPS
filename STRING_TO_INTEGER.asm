		.data
buffer: .space 512

		.text
		
done: 
		jr $ra
		
str_to_int:
		lb $t1, ($s0)
		beq $t1, $s1, done
		
		mul $t0, $t0, $s1
		addi $t1, $t1, -48
		add $t0, $t0, $t1
		
		addi $s0, $s0, 1
		j str_to_int

main:
		li $v0, 8
		la $a0, buffer
		syscall
		
		la $s0, buffer
		li $s1, 10
		li $t0, 0
		
		jal str_to_int
		
		
		li $v0, 1
		move $a0, $t0
		syscall
		
		
		li $v0, 10
		syscall