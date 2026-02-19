extends CharacterBody2D

const FORWARD_SPEED = 50
const SIDE_SPEED = 100

func _physics_process(delta):

		velocity.y = -FORWARD_SPEED
		var direction = Input.get_axis("ui_left", "ui_right")
		velocity.x = direction * SIDE_SPEED

		move_and_slide()

		velocity.y = -FORWARD_SPEED

	# 🔴 CHECK COLLISION
		for i in get_slide_collision_count():
			var collision = get_slide_collision(i)
			var collider = collision.get_collider()

			if collider.is_in_group("enemy_car"):
				game_over()

func game_over():
	get_tree().reload_current_scene()
	#get_tree().change_scene_to_file("res://failed.tscn")



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy_car"):
		game_over()
