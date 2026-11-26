extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.name == "spike": # Substitua "Personagem" pelo nome exato do nó raiz do seu jogador
		get_tree().change_scene_to_file("res://quart_2.tscn")
