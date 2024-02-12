extends Node2D

var dot_scene = preload("res://Scenes/dot.tscn")
var rng = RandomNumberGenerator.new()
var gameover := false

func _ready():
	spawn_dot()

func _process(_delta):
	if not has_node("Game/Dot"):
		$UI/CountdownLabel.count = 3
		$UI/ScoreLabel.score += 1
		spawn_dot()
	if gameover:
		$UI/GameoverLabel.show()
		$UI/RetryButton.show()

func spawn_dot():
	var random_x = rng.randf_range(50, 1102)
	var random_y = rng.randf_range(50, 598)
	var dot = dot_scene.instantiate()
	dot.global_position = Vector2(random_x, random_y)
	$Game.add_child(dot)
