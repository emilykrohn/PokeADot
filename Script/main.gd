extends Node2D

var dot_scene = preload("res://Scenes/dot.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	spawn_dot()

func _process(_delta):
	if not has_node("Dot"):
		spawn_dot()
		$UI/Label.count = 3

func spawn_dot():
	var random_x = rng.randf_range(30, 1122)
	var random_y = rng.randf_range(30, 618)
	var dot = dot_scene.instantiate()
	dot.global_position = Vector2(random_x, random_y)
	add_child(dot)
