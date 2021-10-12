extends TextureButton

var monster_id = 5

const RESOURCE_PATH = "res://battle/BaseClass/Resources/"
export var HP = 50
export var ATK = 10
export var DEF = 5


# Called when the node enters the scene tree for the first time.
func _ready():
# load image from monster_id
	LoadImage(5)
	UpdateHP(HP) #init HP
	pass # Replace with function body.

func LoadImage(id):
	var texture = ImageTexture.new()
	var image = Image.new()
	var path = RESOURCE_PATH + str(id) + ".jpg"
	
	image.load(path)
	texture.create_from_image(image)
	self.texture_normal=texture
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
#	pass


func UpdateHP(newHp):
	HP = newHp
	$KeyStats/HP.text = str(HP)
