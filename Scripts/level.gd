extends Node2D

# Operadores aritmeticos ----
# + Adição
# - Subtração
# * Multiplicação
# / Divisão

# Variaveis ----
# int : armazena valores inteiros, tipo a vida, o score, ex: 1, 2, 3, ...
# float : armazena valores com ponto decimal, ex: 3.4, 5.8, ...
# bool : armazena valores verdadeiros ou falsos, ex: true e false
# String : armazena valores de texto, ex: "Nome", "local"
# Vector2 : armazena valores relacionados a vetores X e Y, ex: posição do personagem no mundo pra respawn
# var : armazena variaveis temporarias

# Declaração de variaveis ----
# var vida : 100 # atribui de forma dinamica
# var vida : int = 50 # atribui de forma estatica
# var vida := 4.9 # atribui o tipo automaticamente dependendo da propria resposta

# Escopo ----
# Local: a variavel estara presente pra ser modificada somente dentro da função que ela foi criada - consome menos memoria
# Classe: é quando uma variavel é declarada fora de qualquer bloco de codigo, sendo possivel acesala em qualquer função e bloco de cod - util em compartilhamento de dados

# Nomenclatura ----
# Camel Case : var VidaDoJogador := 30
# Snace Case : var vida_do_jogador := 30

# Constantes ----
# const PI := 3.1416
# const PLAYER_VEL := 200
# const PLAYER_NAME : String = "João"
# const VEL_MAX  = 500

# Estruturas condicionais ----
# if condição:
	# ação
# else:
	# ação
					# if amanha nao chover: = condição
						# irei a praia = ação
					# else :
						# ficarei em casa
# if primeira condição:
	# primeira ação
# elif segunda condição:
	# segunda ação
# elif terceira condição:
	# terceira ação
# elif quarta condição:
	# quarta ação
# else:
	# ação restante

# Estruturas de comparação ----
# == : estamos comparando se um valor é igual a outro, ex: 5 == 5 é true
# != : estamos verificando se um valor é diferente de outro, ex: 4 != 7 é true
# > : verifica se um valor que esta a esquerda é menor que o da direita, ex: 3 > 8 é false
# < : verifica se um valor que esta a esquerda é maior que o da direita, ex: 3 < 5 é true
# <= : verifica se um valor é menor ou igual a outro, ex: 2 <= 2 é true
# >= : verifica se um valor é maior ou igual a outro, ex: 4 >= 5 é false

# Operadores logicos ----
# and, && 
# if chover && terminar o trabalho:
	# ficarei em casa vendo tv
# or, ||
# if chover || terminar o trabalho:
	# ficarei em casa vendo tv, com sol # ficarei em casa vendo tv, com o trabalho pendente
# not, !
# if !chover: # if !chover == flase:
	# ficarei em casa vendo tv com sol

# testando 
var tem_espada : bool = false
var pontuacao := 40


# Called when the node enters the scene tree for the first time.
func _ready() -> void: # acontece uma unica vez quando o jogo entra na cena a primeira vez
	if pontuacao >= 90:
		print("Rank SS")
	if pontuacao >= 50:
		print("Rank A")
	if pontuacao >= 20:
		print("Rank C")
	else:
		print("Rank F")
	pass # Replace with function body.


func _process(_delta: float) -> void: # acontece uma frame a frame
	if tem_espada == true: # se for bool pode só usar : if tem_espada:
		print("Voce pode começar a aventura!")
	else:
		print("Voce ainda nao possui a espada e precisa encontrala para poder começar a aventura!")
	pass
 
