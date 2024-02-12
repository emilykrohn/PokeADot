extends StaticBody2D

var can_click := false
var gameover := false

func _process(delta):
	gameover = $"../../".gameover

func _input(event):
	if event is InputEventMouseButton and can_click and not gameover:
		$AudioStreamPlayer2D.play()
		await get_tree().create_timer(0.05).timeout
		queue_free()

func _on_mouse_entered():
	can_click = true

func _on_mouse_exited():
	can_click = false


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.stop()
