extends Sprite2D

var speed : int = 150

var rotation_speed : float = 180

func _ready() -> void:
	pass


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
	
	#region angulo
	# rotation_degrees -= 90 *_delta # Graus
	# rotation -= 20 *_delta # Radianos, é mais punk
	
	if Input.is_action_pressed("ui_right"):
		rotation_degrees += rotation_speed * _delta

	#endregion
	pass
