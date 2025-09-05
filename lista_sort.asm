.data
msg: .asciiz " "
.text
main:
#armazena os valores nos regristradores 
li $t0, 4 
li $t1, 3
li $t2, 9
li $t3, 5
li $t4, 2
li $t5, 1
li $t6, 1 #verificar se houve alguma troca(começa em 1 para entrar no loop)
bubble_sort:
li $t6, 0
blt $t0, $t1, troca1 #se t0 < t1 --> troca 1
move $t7, $t0	#t7 guarda o valor de t0 temporariamente, igual o "temp" de uma troca com for normal
move $t0, $t1
move $t1, $t7
li $t6, 1 # aqui volta para 1 para sinalizar que houve trocca de valores, então o loop se repete
troca1:
blt $t1, $t2, troca2 #mesma logica do blt de cima
move $t7, $t1
move $t1, $t2
move $t2, $t7
li $t6, 1
troca2:
blt $t2, $t3, troca3
move $t7, $t2
move $t2, $t3
move $t3, $t7
li $t6, 1
troca3:
blt $t3, $t4, troca4
move $t7, $t3
move $t3, $t4
move $t4, $t7
li $t6, 1
troca4:
blt $t4, $t5, troca5
move $t7, $t4
move $t4, $t5
move $t5, $t7
li $t6, 1
troca5:
beq $t6, 1 bubble_sort #aqui que ele verifica se houve troca, se houve ele irá repetir o loop até o t6 ser igual a 0
	
move $a0, $t0
jal Imprimir
move $a0, $t1
jal Imprimir
move $a0, $t2
jal Imprimir
move $a0, $t3
jal Imprimir
move $a0, $t4
jal Imprimir
move $a0, $t5
jal Imprimir
li $v0, 10
syscall
Imprimir:
li $v0, 1 
syscall
li $v0, 4
la $a0, msg
syscall
jr $ra
