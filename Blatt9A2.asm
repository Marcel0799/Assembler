.data
	Punkte: .word 42
	Bestanden: .word 99
	Grenze: .word 40
.text
	
	lw $t1,Punkte
	lw $t2,Bestanden
	lw $t3,Grenze
	
	
check1 : beq $t2,99, check1
ckeck2 : bge $t1,$t3, bestanden
	 li $t2,0

exit: 
	syscall
	
bestanden:  li $t2,1
	   j exit