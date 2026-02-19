extends Node
@export var car_scene: PackedScene
@export var spawn_delay: float = 2.0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_loop()

func spawn_loop():
	while true:
		spawn_car()
		await get_tree().create_timer(spawn_delay).timeout

func spawn_car():
	var car = car_scene.instantiate()
	
	# Random lane positions (adjust to your road)
	var lanes = [470, 680] 
	car.position = Vector2(lanes.pick_random(), -1500)
	add_child(car)

	car.speed = randf_range(100, 100)
