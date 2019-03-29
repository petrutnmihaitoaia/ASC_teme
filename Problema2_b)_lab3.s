.data
x: .word 8

.text
sign:
lw $t0, x

beq $t0, 0, egalzero
bgt $t0, 0, maimaredecatzero
li $v0, -1
subu $sp, 4
sw $v0, 0($sp)
j end

maimaredecatzero:
li $v0, 1
subu $sp, 4
sw $v0, 0($sp)
j end

egalzero:
li $v0, 0
subu $sp, 4
sw $v0, 0($sp)

end:
lw $a0, 0($sp)
li $v0, 1
syscall