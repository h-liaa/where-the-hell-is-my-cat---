extends Sprite2D
func _on_body_entered(body: Node2D) -> void:
	# Verifica se quem encostou é o personagem (ajuste o nome do grupo se necessário)
	if body.name == "spike": # Substitua "Personagem" pelo nome exato do nó raiz do seu jogador
		get_tree().change_scene_to_file("res://novacena.tscn")
