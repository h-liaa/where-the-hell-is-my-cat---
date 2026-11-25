extends Node2D



func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
var tem_item_especial: bool = false

func _body_entered(body: Node2D) -> void:
	if body.is_in_group("spike"):
		# Aqui você avisa o jogador que ele pegou o item essencial
		if body.has_method("coletar_item_especial"):
			body.coletar_item_especial()
		
		
		queue_free()
