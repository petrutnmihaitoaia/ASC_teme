#Mihaitoaia Petrut-143
#maximul a 3 numere
#dintre cei trei registrii $t0, $t1, $t2 ii comparam si il punem pe cel mai mare in $t3

.data
x: .word 5
y: .word 2
z: .word 10
max: .word 30
.text

main:
lw $t0, x
lw $t1, y
lw $t2, z

blt $t0,$t1,else1
move $t3, $t0		#retinem maximul dintre $t1 si $t0 (stocat acum in max) si repetam procesul asemanator trecand peste else
j jumpelse

else1:
move $t3, $t1	
		#retinem maximul dintre $t1 si $t0 (stocat acum in max) si repetam procesul asemanator)
jumpelse:
blt $t2, $t3, else2	
move $t4, $t2
j end

else2:
move $t4, $t3

end:
sw $t4, max
li $v0, 1
lw $a0, max
syscall
li $v0, 10
syscall

