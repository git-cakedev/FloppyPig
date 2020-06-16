extends Node2D


func _ready():
	#add_groups()
	pass
	

#func add_groups():
#	$"res://Player/Player.tscn".add_to_group("PlayerGroup")
#	$"res://Levels/Birb.tscn".add_to_group("EnemyGroup")

# check if playergroup is colliding with enemy group
func is_group_colliding(victim, perp):
	#if victim.is_in_group
	pass
	

func _on_Timer_timeout():
	for i in range(6):
		var bird_location = $"Camera".transform.origin
		bird_location.y += i * 10
		spawn_bird(bird_location)
	randomize()
	$"Timer".wait_time = int(rand_range(3, 10))
	

func game_over():
	get_tree().reload_current_scene()

func spawn_bird(position):
	
	var bird = load("res://Levels/Birb.tscn").instance()
	$"/root/Level/Enemies".add_child(bird)
	
	position.x += 500
	position.y += 50
	
	bird.transform.origin = position
	
