extends Node2D

@onready var label_area_segura: Label = $Label2 
@onready var label_restrita: Label = $Label3 

func _ready() -> void:
	label_area_segura.text = "Jogador será bem-vindo!" # altera via codigo
	label_area_segura.add_theme_color_override("font_color", Color.PURPLE)
	label_area_segura.add_theme_font_size_override("font_size", 29)
	
	label_restrita.text = "Jogador não permtido!" # altera via codigo
	label_restrita.add_theme_color_override("font_color", Color.DARK_TURQUOISE)
	label_restrita.add_theme_font_size_override("font_size", 56)
	
	pass

func _process(delta: float) -> void:
	
	pass
