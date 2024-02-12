extends CharacterBody2D

func _process(delta):
	var mouse_position = get_viewport().get_mouse_position()
	if mouse_position.x >= 0 and mouse_position.x <= 1152 and mouse_position.y >= 0 and mouse_position.y <= 648:
		position = get_viewport().get_mouse_position()
		move_and_slide()


