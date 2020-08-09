.data
	zahl1:		.word	12
	zahl2:		.word	24
	zahl3:		.word	36
	zahl4:		.word	48
	zahl5:		.word	60
	ergebnis: 	.word 	72
.text
.globl main
main:
	lw $t0, zahl1		# laden zahl1
	lw $t1, zahl2		# laden zahl2
	lw $t2, zahl3		# laden zahl3
	lw $t3, zahl4		# laden zahl4
	lw $t4, zahl5		# laden zahl5
	move $a0, $t0		# zahl1 als argument0 setzen
	move $a1, $t1		# zahl2 als argument1 setzen
	move $a2, $t2		# zahl3 als argument2 setzen
	move $a3, $t3		# zahl4 als argument3 setzen
	sub  $sp, $sp , 4	# Stack Pointer verschieben / platz auf dem Stack machen
	sw   $t4 , ($sp)	# Zahl5 auf den Stack laden
	jal f1			# f1 aufruf
	move $t9 , $v0		# ergebnis merken 
	li $v0 , 1		# $v0 mit 1 belegen das Syscall eine zahl ausgiebt
	move $a0 , $t9		# laden der zu ausgebenden Zahl in das register das ausgegeben wird
	syscall			# Ergenis ausgeben
	sw $t9 , ergebnis	# Ergebnnis im DateBereich bei "ergebnis" abspeichern
	li $v0 , 10		# $vo mit 10 belegen für exit
	syscall			# exit
	
f1:
	move $t9  , $ra 	#return ardess speichern
	lw $t4  , ($sp)	# zahl 5 vom stack laden
	addi $sp , $sp , 4 	# Stack verringern / anpassen
	move $t8 , $a0 		# zahl 1 (Argument 0) sichern
	move $a0 , $t4		# zahl 5 als Argument 0 setzen 
	jal f2			# f2 aufrufen
	move $ra , $t9		# return adress restaurieren 
	add $t9 , $t8 , $a1	# zahl 1 + zahl 2 in $t9
	add $t9 , $t9 , $a2	# Ergbenis ($t9) + zahl3
	add $t9 , $t9 , $a3	# Ergebnis + Zahl4
	add $t9 , $t9 , $v0	# Ergenis + Zahl 5 (nach f2)
	move $v0 , $t9		# Rückgabewert setzten
	jr $ra			# return
f2:
	li $t0, 5 		# Lade Konstante 5.
	add $v0, $a0, $t0 	# Addiere Konstante auf Parameter.
				# Speicher in Rückgaberegister.
	jr $ra 			# Rücksprung an Adresse $ra.