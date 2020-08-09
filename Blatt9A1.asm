.data # 01 Die Zeilenzahlen sind zum
x: .word 4711 # 02 Besprechen in der ‹bung
y: .word 11 # 03
z: .word 0x0A90 # 04
e: .word 0 # 05 Ergebnisvariable
# 06
.text # 07
.globl main # 08
main: # 09
lw $2,x # 10
lw $3,y # 11
lw $4,z # 12
add $2,$2,$3 # 13
sub $3,$2,$4 # 14
sw $3,e # 15
li $2,10 # 16 Programm ordnungsgem‰ﬂ beenden
syscall # 17