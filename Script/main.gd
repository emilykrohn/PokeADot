extends Node2D

var dot_scene = preload("res://Scenes/dot.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	var random_x = rng.randf_range(20, 1132)
	var random_y = rng.randf_range(20, 628)
	var dot = dot_scene.instantiate()
	dot.global_position = Vector2(random_x, random_y)
	add_child(dot)
