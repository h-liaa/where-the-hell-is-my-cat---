extends Control

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://jogo.tscn")
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()

func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://jogo.tscn")


func _on_sair_pressed() -> void:
	get_tree().quit
