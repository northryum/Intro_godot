extends Node2D
# vector 2d
func _ready() -> void:
	var vector_vermelho = Vector2(3,4)
	print("Vetor vermelho: ", vector_vermelho)
	print("O valor de X nesse vetor é: ", vector_vermelho.x)
	print("O valor de Y nesse vetor é: ", vector_vermelho.y)
	print("A magnitude desse vetor é: ", vector_vermelho.length())
	print("---------------------------------------------------------------")
	var vector_amarelo = Vector2(5,7)
	print("Vetor vermelho: ", vector_amarelo)
	print("O valor de X nesse vetor é: ", vector_amarelo.x)
	print("O valor de Y nesse vetor é: ", vector_amarelo.y)
	print("A magnitude desse vetor é: ", vector_amarelo.length())
	print("---------------------------------------------------------------")
	var vector_verde = Vector2(2,4)
	print("Vetor vermelho: ", vector_verde)
	print("O valor de X nesse vetor é: ", vector_verde.x)
	print("O valor de Y nesse vetor é: ", vector_verde.y)
	print("A magnitude desse vetor é: ", vector_verde.length())
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
