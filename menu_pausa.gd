extends Control

func _ready() -> void:
	hide()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		var pausado := not visible
		visible = pausado 
		get_tree().paused = pausado

func _on_continuar_pressed() -> void:
	hide()
	get_tree().paused = false


func _on_sair_pressed() -> void:
	get_tree().paused = false
	get_tree().quit()
