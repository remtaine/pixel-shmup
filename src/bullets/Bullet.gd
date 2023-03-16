class_name Bullet
extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var speed : float = 15

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(delta: float) -> void:
	position.x += speed
	if position.x - get_viewport_rect().size.x > speed * 2:
		set_process(false)
