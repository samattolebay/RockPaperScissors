extends Node

var max_x = 300
var max_y = 300

var paper = "Paper"
var scissors = "Scissors"
var rock = "Rock"

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.play()
	var screen_size = get_viewport().get_visible_rect().size
	var item_count = rand_range(15, 20)
	for i in range(item_count):
		var item_instance = load("res://Rock.tscn").instance()
		
		var random_x = rand_range(0, screen_size.x)
		var random_y = rand_range(0, screen_size.y)
		item_instance.position = Vector2(random_x, random_y)
		
		var random_velocity_x = rand_range(0, max_x)
		var random_velocity_y = rand_range(0, max_y)
		item_instance.linear_velocity = Vector2(random_velocity_x, random_velocity_y)
		
		# var type = int(rand_range(0, 3))
		var type = i
		
		if (type % 3 == 0):
			item_instance.name = paper
		elif (type % 3 == 1):
			item_instance.name = rock
		else:
			item_instance.name = scissors
		
		add_child(item_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
