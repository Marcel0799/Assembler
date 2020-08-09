.data
	sp12_0x10010000: .word 7
	sp24_0x10010004: .word 95
	sp36_0x10010008: .word 24
	sp48_0x1001000C: .word 36
	sp68_0x10010010: .word 42
	sp96_0x10010014: .word -5

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