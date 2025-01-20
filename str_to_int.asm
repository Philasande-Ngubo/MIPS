		.data
buffer: .space 512

		.text

done:	
		mul $t2, $t2, $t3
		add $t7, $t7, $t2
		li $t3, 1
		
		jr $ra

sum: 	
		li $t3, 1
		li $t2, 0
		j str_to_integer

plus:	
		mul $t2, $t2, $t3
		add $t7, $t7, $t2
		li $t2, 0
		
		li $t3, 1
		addi $t0, $t0, 1
		j str_to_integer

negative:
		addi $t0, $t0, 1
		li $t3, -1
		j str_to_integer
		

str_to_integer:
		lb $t1, 0($t0)
		beq $t1, $s0, done
		beq $t1, $s1, plus
		
		beq $t1, $s2, negative
		mul $t2, $t2, $s0
		
		addi $t1, $t1, -48
		add $t2, $t2, $t1
		addi $t0, $t0, 1
		
		j str_to_integer
		

main:
		li $v0, 8
		la $a0, buffer 
		syscall
		
		li $s0, 10    # constant
		li $s1, 43    # plus
		li $s2, 45
		
		li $t7, 0    # results
		la $t0, buffer
		jal sum
		
		li $v0, 1              # Print number
		move $a0, $t7
		syscall
		
		li $v0, 10
		syscall
		