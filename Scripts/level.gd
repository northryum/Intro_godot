extends Node2D

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
 
