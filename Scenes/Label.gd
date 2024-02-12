extends Label

var count := 3

func _process(delta):
	text = "Countdown: " + str(count)

func _on_timer_timeout():
	count -= 1
	if count == 0:
		$"../Timer".stop()
		$"../../Game/Player".hide()
