extends Sprite2D
var move_speed: float = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Handle user input for left and right movement
	if Input.is_action_pressed("ui_left"):
		position.x -= move_speed * delta
	if Input.is_action_pressed("ui_right"):
		position.x += move_speed * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
