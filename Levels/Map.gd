extends Node2D


func _ready():
	#add_groups()
	pass

func _on_Timer_timeout():
	for i in range(4):
		var bird_location = $"Camera".transform.origin
		bird_location.y += i * 10
		spawn_bird(bird_location)
		
		
	var tree_location = $"Camera".transform.origin
	spawn_tree(tree_location)
	randomize()
	$"Timer".wait_time = int(rand_range(3, 10))

func spawn_bird(position):
	
	var bird = load("res://Levels/Enemies/Birb.tscn").instance()
	$"/root/Level/Enemies".add_child(bird)
	
	position.x += 500
	position.y += 50
	
	bird.transform.origin = position
	

func spawn_tree(position):
	var tree = load("res://Levels/Enemies/Tree.tscn").instance()
	$"/root/Level/Enemies".add_child(tree)
	
	position.x += 500
	position.y = 305
	
	tree.transform.origin = position
