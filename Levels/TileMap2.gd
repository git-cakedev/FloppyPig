extends TileMap

var tileset
export var GROUND_POS = 0

signal collision

func _ready():
	tileset = get_tileset()
	

func _on_Camera_fill_tile(cam_position):
	for i in range(0, 9):
		var tile = Vector2 (cam_position + i * 128 , GROUND_POS)
		set_cellv(world_to_map(tile), tileset.find_tile_by_name("grass.png 0"))

func collision():
	emit_signal("collision")
