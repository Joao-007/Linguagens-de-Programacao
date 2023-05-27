.data
buffer: .space 100
msg: .asciiz "Digite uma string: "
string: .asciiz "Essa é a string digitada: "

.text
.globl main
main:

#Exibe a mensagem
la $a0, msg
li $v0, 4
syscall

#Lê a string da entrada
la $a0, buffer
li $a1, 100
li $v0, 8
syscall

#Exibe a string
la $a0, string
li $v0, 4
syscall

#Lê o que esta guardado dentro de buffer
la $a0, buffer
li $v0, 4
syscall

#Termina o programa
li $v0, 10
syscall


