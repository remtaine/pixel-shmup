class_name Character
extends KinematicBody2D


var bulletScene = preload("res://src/bullets/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$StateMachine/Moving.connect("player_moved",self, "move")
	$Addons/ShootTimer.connect("shot_bullet", self, "shoot")


func move(dist : Vector2) -> void:
	var pos = position
	pos += dist
#	pos.x = clamp(pos.x, 0, 8 + get_viewport_rect().size.x)
#	pos.y = clamp(pos.y, 0, 8 + get_viewport_rect().size.y)
	position = pos

func shoot() -> void:
	var newBullet = bulletScene.instance()
	newBullet.position = position + (Vector2.RIGHT * 10)
	owner.add_child(newBullet)
