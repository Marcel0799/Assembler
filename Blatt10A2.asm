.data
wert: .word 7 # Wertebeispiel (ergibt ungerade Parität, also eine 1).
pari: .word 0 # Zu berechnende Parität.
.text
.globl main
main: 
	li $t5 , 0
	lw $t2,wert # Beispielwert in R2


shift:	
	ori $t3 , $t2 , 1 	# letzte bit wird 1 wenn es nicht schon 1 ist
	beq $t3 , $t2 , incrementCounter	# wenn es schon eins war wird der counter erhöht
continue:
	srl $t2 , $t2 , 1	# nach rechts schieben
	bgtz $t2 , shift	# schleife wenn zahl noch höher als 0 



finish : 
	 j R5Modulo2		# counter Modulo 2
finsishAfterModulo:
	 li $2 , 1		# syscall soll zahl ausgeben
	 ori $4 , $t5 , 0 	# counter ausgeben
	 syscall		# ausgeben
	 li $2 , 10		# programm beenden laden
	 syscall		# beenden
	 
incrementCounter:	
	addi $t5 , $t5 , 1	# counter erhöhen
	j continue
	
R5Modulo2: 
	li $t7, 2		# 2 laden für teilen
	ori $t6 , $t5 , 0	# counter kopieren	
	divu $t6 , $t6 , $t7	# integer teilung
	mul $t6, $t6,$t7	# zurück multipliezieren
	sub $t5 , $t5 , $t6	# substrahieren das bei ungerader Zahl 1 über bleibt
	j finsishAfterModulo	# return
