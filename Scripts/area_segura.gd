extends Area2D

signal alert

func _ready() -> void:
	alert.connect(_alert_message)

func _on_body_exited(body: Node2D) -> void:
	if body.name == "tanque":
		print("O jogador saiu da area segura!")
	emit_signal("alert")
	pass # Replace with function body.


func _alert_message():
	print("Por favor, retorne!")
