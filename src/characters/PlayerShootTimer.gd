extends Timer


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

signal shot_bullet

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("timeout", self, "shoot")
	

func shoot() -> void:
	emit_signal("shot_bullet")


