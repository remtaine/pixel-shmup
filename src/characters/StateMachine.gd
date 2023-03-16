class_name StateMachine
extends Node


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var currentState: Node = null;
var previousState: Node = null;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	currentState = get_child(0)
	for child in get_children():
		child.connect("exited_early", self, "reset")


func _physics_process(delta: float) -> void:
	currentState.run()
	check_new_state()


func reset() -> void:
	currentState = previousState
	print("reset to old state")
	#change_state(previousState.get_name())

func check_new_state() -> void:
	pass


func change_state(newStateName : String) -> void:
	
	var newState: Node = get_node(newStateName)
	if newState == currentState:
		return
	
	print("changed state to ", newStateName)
	currentState.exit()
	
	previousState = currentState
	currentState = newState
	
	currentState.enter()
