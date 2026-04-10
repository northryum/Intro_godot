extends Sprite2D

var speed : int = 150
var rotation_speed : float = 180
var tipo_rotacao := "radianos" # "graus"

func _process(_delta: float) -> void:
	#region movimento
	var velocity := Vector2.ZERO #  (x = 0,y = 0) # var velocity : Vector2 = Vector2.ZERO
	
	if Input.is_action_pressed("movendo_para_direita"):
		velocity.x = 1 # (1,0)
	if Input.is_action_pressed("movendo_para_esquerda"):
		velocity.x = -1 # (-1,0)
	if Input.is_action_pressed("movendo_para_cima"):
		velocity.y = -1 # (0,-1)
	if Input.is_action_pressed("movendo_para_baixo"):
		velocity.y = 1 # (0,1)
		
	# Sem normalizar a diagonal ----
	# position += velocity * _delta * speed
	
	# Normalizando o movimento da diagonal
	if velocity != Vector2.ZERO:
		velocity = velocity.normalized()
		
	position += velocity * _delta * speed
	#endregion
	
	#region rotação
	# rotation_degrees -= 90 *_delta # Graus
	# rotation -= 20 *_delta # Radianos, é mais punk
	if tipo_rotacao == "graus":
		if Input.is_action_pressed("ui_right"):
			rotation_degrees += rotation_speed * _delta
		if Input.is_action_pressed("ui_left"):
			rotation_degrees -= rotation_speed * _delta
	elif tipo_rotacao == "radianos": # aplica o modo radianos
		if Input.is_action_pressed("ui_right"):
			rotation += rotation_speed / 20 * _delta
		if Input.is_action_pressed("ui_left"):
			rotation -= rotation_speed / 20 * _delta

# Movimentação de Tanque
 # armazena um vector2.up que deve ser associado->(aa.bb) ao rotated, deve receber entre () o angulo que devemos trabalhar
	var direction := Vector2.UP.rotated(rotation) # aaa
	#print("O radiano é: ", direction)
	
	var velocity2 := Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity2 = direction * speed
	if Input.is_action_pressed("ui_down"):
		velocity2 = direction * -speed
	
	position += velocity2 * _delta
	#endregion

	pass
