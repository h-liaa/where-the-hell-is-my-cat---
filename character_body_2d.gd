extends CharacterBody2D

const SPEED = 500.0

var velocidade_pulo = -600
var direcao := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0

	if Input.is_action_pressed('ui_left') or Input.is_key_pressed(KEY_A):
		velocity.x = -1 * SPEED
	if Input.is_action_pressed('ui_right') or Input.is_key_pressed(KEY_D):
		velocity.x = 1 * SPEED
	if Input.is_action_just_pressed('ui_up') or Input.is_key_pressed(KEY_W):
		velocity.x = 1 * SPEED
	if Input.is_action_just_pressed('ui_down') or Input.is_key_pressed(KEY_S):
		velocity.x = 1 * SPEED
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
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
