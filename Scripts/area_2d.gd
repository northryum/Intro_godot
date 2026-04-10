extends Area2D

#func _process(_delta: float) -> void:
	#var bodies = get_overlapping_bodies()
	#
	#if bodies:
		#print("Voce foi detectado!")
	#pass

signal identify

func _ready() -> void:
	identify.connect(_identifique_se)
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == "tanque":
		print("Alerta! o jogador entrou na area")
	emit_signal("identify")
	pass # Replace with function body.

func _identifique_se():
	print("quem é?")
	pass
 
