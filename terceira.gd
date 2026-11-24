extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
