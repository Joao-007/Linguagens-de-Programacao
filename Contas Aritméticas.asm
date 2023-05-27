.data
num1: .word 20
num2: .word 10

result: .word 0
result0: .word 0
result1: .word 0
result2: .word 0


vsoma: .asciiz "\nEsse é o resultado da soma dos números: "
vsub: .asciiz "\nEsse é o resultado da subtração dos números: "
vmult: .asciiz "\nEsse é o resultado da multiplicação dos números: "
vdiv: .asciiz "\nEsse é o resultado da divisão dos números: "

.text
.globl main

main:
#Soma
lw $t0, num1
lw $t1, num2
add $t2, $t0, $t1
sw $t2, result

#Subtração
lw $t0, num1
lw $t1, num2
sub $t2, $t0, $t1
sw $t2, result0

#Multiplicação
lw $t0, num1
lw $t1, num2
mul $t2, $t0, $t1
sw $t2, result1

#Divisão
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

#Exibe texto do resultado de subtração
li $v0, 4
la $a0, vsub
syscall

#Exibe valor de subtração
li $v0, 1
lw $a0, result0
syscall

#--------------------------------------------------------------------------------------------------------------------------------------------

#Exibe texto do resultado de multiplicação
li $v0, 4
la $a0, vmult
syscall

#Exibe valor de multiplicação
li $v0, 1
lw $a0, result1
syscall

#--------------------------------------------------------------------------------------------------------------------------------------------

#Exibe texto do resultado de divisão
li $v0, 4
la $a0, vdiv
syscall

#Exibe valor de divisão
li $v0, 1
lw $a0, result2
syscall




#Termina programa
li $v0, 10
syscall