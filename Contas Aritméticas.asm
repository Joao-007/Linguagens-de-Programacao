.data
num1: .word 20
num2: .word 10

result: .word 0
result0: .word 0
result1: .word 0
result2: .word 0


vsoma: .asciiz "\nEsse � o resultado da soma dos n�meros: "
vsub: .asciiz "\nEsse � o resultado da subtra��o dos n�meros: "
vmult: .asciiz "\nEsse � o resultado da multiplica��o dos n�meros: "
vdiv: .asciiz "\nEsse � o resultado da divis�o dos n�meros: "

.text
.globl main

main:
#Soma
lw $t0, num1
lw $t1, num2
add $t2, $t0, $t1
sw $t2, result

#Subtra��o
lw $t0, num1
lw $t1, num2
sub $t2, $t0, $t1
sw $t2, result0

#Multiplica��o
lw $t0, num1
lw $t1, num2
mul $t2, $t0, $t1
sw $t2, result1

#Divis�o
lw $t0, num1
lw $t1, num2
div $t2, $t0, $t1
sw $t2, result2


#------------------------------------------------------------------------------------------------------------------------------------------

#Exibe texto do resultado de soma
li $v0, 4
la $a0, vsoma
syscall

#Exibe valor de soma
li $v0, 1
lw $a0, result
syscall

#--------------------------------------------------------------------------------------------------------------------------------------------

#Exibe texto do resultado de subtra��o
li $v0, 4
la $a0, vsub
syscall

#Exibe valor de subtra��o
li $v0, 1
lw $a0, result0
syscall

#--------------------------------------------------------------------------------------------------------------------------------------------

#Exibe texto do resultado de multiplica��o
li $v0, 4
la $a0, vmult
syscall

#Exibe valor de multiplica��o
li $v0, 1
lw $a0, result1
syscall

#--------------------------------------------------------------------------------------------------------------------------------------------

#Exibe texto do resultado de divis�o
li $v0, 4
la $a0, vdiv
syscall

#Exibe valor de divis�o
li $v0, 1
lw $a0, result2
syscall




#Termina programa
li $v0, 10
syscall