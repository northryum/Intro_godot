extends CharacterBody2D

var speed : float = 150.0
var rotation_speed : float = 3.0


func _process(_delta: float) -> void:

	if Input.is_action_pressed("ui_right"):
		rotation += rotation_speed * _delta
	if Input.is_action_pressed("ui_left"):
		rotation -= rotation_speed * _delta

	var direction := Vector2.UP.rotated(rotation)
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity = direction * speed
	if Input.is_action_pressed("ui_down"):
		velocity = direction * -speed
	
	move_and_slide()


	pass
