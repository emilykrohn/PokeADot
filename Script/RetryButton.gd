extends Button

func _on_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.08).timeout
	get_tree().reload_current_scene()


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.stop()
