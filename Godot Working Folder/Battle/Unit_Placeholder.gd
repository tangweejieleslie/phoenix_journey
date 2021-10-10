extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready():
	LoadUnitData()
	pass # Replace with function body.

func LoadUnitData():
	var image = load("res://Battle/sample_resources/monster_design_1.png")
	$TextureButton.texture_normal = image

func _on_TextureButton_pressed():
	$SkillSelection.visible = true
	pass # Replace with function body.
