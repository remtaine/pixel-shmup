extends State


func _ready() -> void:
	pass # Replace with function body.


func run() -> void:
	pass
	

func enter() -> void:
	print("BANG")
	exit()
	

func exit() -> void:
	emit_signal("exited_early")
