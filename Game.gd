extends Node

var item_count = 15
var min_x = 0
var max_x = 600
var min_y = 0
var max_y = 600

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(item_count):
		var item_instance = load("res://Rock.tscn").instance()
		
		var random_x = rand_range(min_x, max_x)
		var random_y = rand_range(min_y, max_y)
		item_instance.position = Vector2(random_x, random_y)
		
		var random_velocity_x = rand_range(min_x, max_x)
		var random_velocity_y = rand_range(min_y, max_y)
		item_instance.linear_velocity = Vector2(random_velocity_x, random_velocity_y)
		
		add_child(item_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
