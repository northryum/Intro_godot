extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("movendo_para_direita"):
		print("apertou direita")
	elif Input.is_action_just_pressed("movendo_para_cima"):
			print("apertou pra cima")
	elif Input.is_action_just_pressed("movendo_para_baixo"):
			print("apertou pra baixo")
	elif Input.is_action_just_pressed("movendo_para_esquerda"):
			print("apertou pra esquerda")
	pass
