extends CharacterBody2D

@export var speed: float = 200

func _physics_process(delta):
	velocity = Vector2(0, speed) # move downward
	move_and_slide()

	# Remove car when off screen
	if position.y > get_viewport_rect().size.y + 100:
		queue_free()
