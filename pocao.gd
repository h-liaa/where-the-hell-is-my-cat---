extends Area2D


@export var amplitude: float = 8.0  
@export var velocidade: float = 5.0 

var posicao_inicial_y: float
var tempo: float = 0.0

func _ready() -> void:
	posicao_inicial_y = position.y

func _process(delta: float) -> void:
	
	tempo += delta * velocidade
	position.y = posicao_inicial_y + sin(tempo) * amplitude


func _body_entered(body: Node2D) -> void:
	if body.is_in_group("spike"):
		if body.has_method("coletar_item_especial"):
			body.coletar_item_especial()
		
		
		queue_free()
