extends Node2D

var dot_scene = preload("res://Scenes/dot.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	spawn_dot()

func _process(_delta):
	if not has_node("Dot"):
		$UI/Label.count = 3
		spawn_dot()

func spawn_dot():
	var random_x = rng.randf_range(50, 1102)
	var random_y = rng.randf_range(50, 598)
	var dot = dot_scene.instantiate()
	dot.global_position = Vector2(random_x, random_y)
	add_child(dot)
