extends RigidBody2D

var paper = "Paper"
var scissors = "Scissors"
var rock = "Rock"

var paperImage = preload("res://art/paper.png")
var scissorsImage = preload("res://art/scissors.png")
var rockImage = preload("res://art/rock.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	print(name)
	if (paper in name):
		$Sprite.texture = paperImage
	elif (rock in name):
		$Sprite.texture = rockImage
	elif (scissors in name):
		$Sprite.texture = scissorsImage
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# print(name)
	pass

func _on_Rock_body_entered(body):
	if (paper in name):
		if (scissors in body.name):
			$Sprite.set_texture(scissorsImage)
			name = scissors
	elif (scissors in name):
		if (rock in body.name):
			$Sprite.set_texture(rockImage)
			name = rock
	elif (rock in name):
		if (paper in body.name):
			$Sprite.set_texture(paperImage)
			name = paper
	pass # Replace with function body.
