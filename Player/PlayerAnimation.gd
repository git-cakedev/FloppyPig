extends AnimatedSprite


func _on_Player_animate(velocity):
	if velocity.y > 0:
		play("falling")
	else:
		play("default")
