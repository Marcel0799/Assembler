.data 
	A: 	.word 1
	B:	.word 2
	C: 	.word 3
	D:	.word 4
	E:	.word 5
.text
#	E := A * (C - B)+D
	mov $t1, (0x10000000) 
	sub $t1, (b)
	