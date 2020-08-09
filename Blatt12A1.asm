.data # Prueft ob Eingabe gleich Null ist
ein: .word 2 # Eingabewert vom User
erg: .word 99 # Wenn Eingabewert gleich 0 dann 1 sonst 0
.text
.globl main
main:
lw $2, ein
beq $2, $0, gleich
xor $3, $2, $2 # Setzt Register 3 auf 0
j fertig
gleich:
addi $3, $0, 1 # Setzt Register 3 auf 1
fertig:
sw $3, erg
li $2, 10
syscall