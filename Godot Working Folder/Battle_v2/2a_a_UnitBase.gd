extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# UpdateTexture("res://enemy_01.JPG")
	pass # Replace with function body.

# Things such as unit skills, stats, etc
func InstantiateUnit():
	pass

func UpdateTexture(path):
	var texture = ImageTexture.new()
	var image = Image.new()
	image.load("res://enemy_01.JPG")
	texture.create_from_image(image)
	self.texture_normal = texture
	
signal Signal_SelectUnit(position)

# There are different type of unit press. Unit press could be start or end. 

func _on_Unit_pressed():
	print("Selected. Trigger Skills Selection")
	print(self.rect_global_position)
	var position = self.rect_global_position
	emit_signal("Signal_SelectUnit", position )
	pass # Replace with function body.
