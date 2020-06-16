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



func _on_TileMap_collision():
	pass # Replace with function body.
