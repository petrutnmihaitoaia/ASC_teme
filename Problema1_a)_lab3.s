.data
x: .word 8

.text
sign:
lw $t0, x

beq $t0, 0, egalzero
bgt $t0, 0, maimaredecatzero
li $v0, -1
j end

maimaredecatzero:
blt $t0, 0, egalzero
li $v0, 1
j end

egalzero:
li $v0, 0

end: