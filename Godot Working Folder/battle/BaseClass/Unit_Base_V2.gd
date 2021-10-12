extends Control
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
	$MonsterContainer/Unit.texture_normal = texture
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$MonsterContainer/Container/UnitStats/HP_value.text = str(HP)
	pass
#	pass


func UpdateHP(newHp):
	HP = newHp
	$MonsterContainer/Container/UnitStats/HP_value.text = str(HP)


signal unit_pressed(id)

func _on_Unit_pressed():
	emit_signal("unit_pressed", self.get_instance_id())
	pass # Replace with function body.
