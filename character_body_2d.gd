extends CharacterBody2D

const SPEED = 500.0
var velocidade_pulo = -600
var tem_item_especial: bool = false 

func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0 

	if Input.is_action_pressed('ui_left') or Input.is_key_pressed(KEY_A):
		velocity.x = -1 * SPEED
	if Input.is_action_pressed('ui_right') or Input.is_key_pressed(KEY_D):
		velocity.x = 1 * SPEED
	
	
	if Input.is_action_pressed('ui_up') or Input.is_key_pressed(KEY_W):
		velocity.y = -1 * SPEED
	if Input.is_action_pressed('ui_down') or Input.is_key_pressed(KEY_S):
		velocity.y = 1 * SPEED

	if velocity != Vector2.ZERO:
		$"Animação personagem".play("Andar") 
		if velocity.x < 0:
			$"Animação personagem".flip_h = true
		elif velocity.x > 0:
			$"Animação personagem".flip_h = false
	else:
		$"Animação personagem".play("Parar") 

	move_and_slide()

func _on_tras_body_entered(body: Node2D) -> void:
	if body.name == "spike":
		get_tree().change_scene_to_file("res://novacena.tscn")

func _on_transicao_body_entered(body: Node2D) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	if body.is_in_group("ItemColetavel"):
		coletar_item_especial()
		body.queue_free() 

func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()

func coletar_item_especial() -> void:
	tem_item_especial = true
	print("Poção coletada! Agora você pode derrotar o monstro!")
