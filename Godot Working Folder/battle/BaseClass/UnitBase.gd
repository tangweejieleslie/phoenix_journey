extends TextureButton

var monster_id = 5

const RESOURCE_PATH = "res://battle/BaseClass/Resources/"

# Called when the node enters the scene tree for the first time.
func _ready():
# load image from monster_id
	LoadImage(5)

	pass # Replace with function body.

func LoadImage(id):
	var texture = ImageTexture.new()
	var image = Image.new()
	var path = RESOURCE_PATH + str(id) + ".jpg"
	
	image.load(path)
	texture.create_from_image(image)
	self.texture_normal=texture
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
