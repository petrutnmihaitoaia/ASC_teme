.data
	v: .word 4, 2, 1, 2, 2, 1, 3
	n: .word 7
	x: .space 32
.text
   main:
   	li $t0, 0	#adresa de inceput a lui v	
   	lw $t1, n	#nr de elemente al lui v
	addi $t1, $t1, -1
   	li $t2, 1	#index i	
	lw $t3, n
   	li $t4, 0
	li $t6, 0
	li $t9, 0
   for:
	bgt $t2, $t1, exitfor	#merge pana la n-1
	#in $s0 #		pastram	nr de aparitii ale lui v($t2), deci trebuie initializat la fiecare trecere
	li $s0, 1
	move $t5, $t2 		#index j de la i+1 la n
	addi $t5, $t5, 1
	sw $t7, v($t4)
	addi $t4, $t4, 4
	move $t6, $t4
	addi $t2, $t2, 1
  for2:
	bgt $t5, $t3, for
	sw $t8, v($t6)
	addi, $t6, $t6, 4
	beq $t7, $t8, for
	beq $t5, $t1, putinx
	addi $t5, $t5, 1
	j for2
  putinx:
	lw $t7, x($t9)
	addi $t9, $t9, 4
	j for2
  print:
	li $t0, 0
  while:
	bgt $t0, $t9, end
	sw $s1, x($t0)
	li $v0, 1
	move $a0, $s1
	syscall
	addi $t0, $t0, 4
	j while
	
  end:
	li $v0, 10
	syscall
	

