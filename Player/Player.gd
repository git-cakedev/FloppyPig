extends KinematicBody2D

const JUMP_SPEED = 250
const SPEED = 100
const GRAVITY = 10

var velocity = Vector2(0,0)

signal animate


func _physics_process(_delta):
	jump()
	move()
	gravity()
	animate()
	ground_death()

func jump():
	if Input.is_action_just_pressed("Jump"):
			velocity.y = -JUMP_SPEED
	move_and_slide(velocity)

func move():
	velocity.x = SPEED

func gravity():
	velocity.y += GRAVITY

func animate():
	emit_signal("animate", velocity)

func ground_death():
	if position.y >= 305:
		get_tree().reload_current_scene()

func _on_Area2D_area_entered(area):
	if area.is_in_group("Enemy"):
		get_tree().reload_current_scene()
