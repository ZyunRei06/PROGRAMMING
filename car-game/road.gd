extends Node2D

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "MAINCAR":
		get_tree().change_scene_to_file("res://sucessful.tscn")
