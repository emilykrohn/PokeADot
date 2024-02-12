extends Label

var count := 3

func _on_timer_timeout():
	count -= 1
	text = "Countdown: " + str(count)
	if count == 0:
		$"../Timer".stop()
