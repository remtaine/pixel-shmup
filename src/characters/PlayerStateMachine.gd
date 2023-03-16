extends StateMachine


func check_new_state() -> void:
	if (Input.get_axis("move_down", "move_up") != 0 or Input.get_axis("move_left","move_right") != 0):
		change_state("Moving")
#	elif (Input.is_action_just_pressed("shoot")):
#		change_state("Shooting")
	else:
		change_state("Idle")
