.data 
	#area para dados na memoria principal
	
	anoMateus:.word 2005
	anoLeonardo:.word 1995
	anoPedro:.word 2001
	anoJoao:.word 2006

.text 
	#area para instrucoes do programa
	
	
	#registradores temporarios (t0 ao t9)
	lw $t0, anoMateus  #armazena anoMateus temporariamente em $t0
	lw $t1, anoLeonardo  #armazena anoLeonardo temporariamente em $t1
	lw $t2, anoPedro  #amrazena anoPedro temporariamente em $t2
	lw $t3, anoJoao  #armazena anoJoao temporariamente em $t3
	
	add $t4, $t0, $t1  #coloca em $t4 a soma de $t0 e $t1 --> anoMateus + anoLeonardo
	
	add $t5, $t2, $t3  #coloca em $t5 a soma de $t2 e $t3 --> anoPedro + anoJoao
	
	add $t6, $t4, $t5  #faz a soma final (somando as 2 partes das somas das idades) --> (anoMateus + anoLeonardo) + (anoPedro + anoJoao)
	
	li $v0, 1  #$v0 vai retornar o resultado da funcao (ai como tem o 1, retorna como int) --> 1 = imprime int e 5 = le int
	
	move $a0, $t6  #move = move o conteudo de $t6 para o $a0 | o $a0 (argumento de funcao) vai guardar o valor que vai ser printado
	syscall
