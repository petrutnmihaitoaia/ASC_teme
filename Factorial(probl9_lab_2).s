#Factorialul unui numar
#Mihaitoaia Petrut 143


.data
n: .word 3		#numarul al carui factorial il vom calcula
fact: .word 1		#variabila in care vom stoca n!
.text

main:
li $s0, 1         		  #$s0 = 1
addi $t0, $zero, 0    		  #i($t0) = 1
lw $t1, n	    		  #$t1 = n

loop:		      #$LO = $s0       #s0 = s0*i iar i in cazul nostru este t0
addi $t0, $t0, 1  
mult $s0, $t0
mflo $s0	      #$s0 = $LO	    #i++
blt $t0, $t1, loop

end:       #daca am ajuns la sfarsit in $s0 vom avea n!. Ne ramane sa punem $so in fact si sa inchidem programul
sw $s0, fact	#fact = $s0 = n1
#end of program si afisez si pe consola
li $v0, 1
move $a0, $s0
syscall
li $v0, 10
syscall