.data
	sp12: .word 7
	sp24: .word 95
	sp36: .word 24
	sp48: .word 36
	sp68: .word 42
	sp96: .word -5

.text
.globl main
main: 	
	li $t0 ,0x10010000
	li $t1 ,36
	li $t2 ,-12
	li $t3 , 67
	
a:	li $t4 ,36 
b:	lw $t5 ,0x10010004($0)	
c:	move $t6, $t3
d:	lw $t7 , ($t0)