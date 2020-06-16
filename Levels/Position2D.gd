extends Position2D

signal fill_tile()
signal add_sprite()

var camera_position = Vector2 (self.transform.origin.x, self.transform.origin.y)

func _physics_process(delta):
	
	camera_position = self.transform.origin
	
	self.transform.origin.x = $"/root/Level/Player".transform.origin.x
	
	if (int(camera_position.x) % 128  == 0):
		fill_tile()


func fill_tile():
	emit_signal("fill_tile", camera_position.x)

func add_sprite():
	emit_signal("add_sprite", camera_position.x)

