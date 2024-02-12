extends StaticBody2D

var can_click := false

func _input(event):
	if event is InputEventMouseButton and can_click:
		queue_free()

func _on_mouse_entered():
	can_click = true

func _on_mouse_exited():
	can_click = false
