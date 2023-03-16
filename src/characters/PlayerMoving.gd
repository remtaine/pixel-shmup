extends State

var maxSpeed : float = 5
var speed : float = 0
var direction : Vector2 = Vector2.ZERO

signal player_moved


func _ready() -> void:
	speed = maxSpeed


func run() -> void:
	direction = Vector2(Input.get_axis("move_left","move_right"), Input.get_axis("move_up","move_down"))
	direction = direction.normalized()
	var velocity : Vector2 = direction * speed
	emit_signal("player_moved", velocity)

func enter() -> void:
	pass
	

func exit() -> void:
	pass
