.data
	zahl1: .word 7
	zahl2: .word 6
.text
.globl main
main: 	
	lw $t0 , zahl1
	lw $t1 , zahl2
	li $t2 , 0
	
	sw $t2 , 0x10010000
	
