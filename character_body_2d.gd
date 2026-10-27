extends CharacterBody2D

const SPEED = 600.0

var velocidade_pulo = -600

func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0
	velocity += get_gravity()*delta

	if Input.is_action_pressed("ui_left"):
		velocity.x = -1 * SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1 * SPEED
	if velocity != Vector2.ZERO:

			$spike.play("andar") 
		
		
			if velocity.x < 0:
				$spike.flip_h = true
			elif velocity.x > 0:
				$spike.flip_h = false
	else:

		$spike.play("spike") 

	move_and_slide()
	
