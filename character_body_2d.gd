extends CharacterBody2D

const SPEED = 500.0

var velocidade_pulo = -600

func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0

	if Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		velocity.x = -1 * SPEED
	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
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
	
