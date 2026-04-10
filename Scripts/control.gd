extends Control


func _on_start_pressed() -> void:
	#print("o jogo vai começar!")
	get_tree().change_scene_to_file("res://Cenas/level.tscn")
	pass # Replace with function body.
