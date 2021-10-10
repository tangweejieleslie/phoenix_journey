extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var image = load("res://Battle/sample_resources/monster_design_1.png")
	$GridContainer/UnitPlaceholder/TextureButton.texture_normal = image
	# FocusFirstUnit()
	pass # Replace with function body.

func DisableAll():
	for child in $GridContainer.get_children():
		child.get_node("TextureButton").disabled = true	
		child.get_node("TextureButton").focus_mode =Control.FOCUS_NONE

func EnableAll():
	for child in $GridContainer.get_children():
		child.get_node("TextureButton").disabled = false	
		child.get_node("TextureButton").focus_mode =Control.FOCUS_ALL

func FocusFirstUnit():
	$GridContainer/UnitPlaceholder/TextureButton.grab_focus()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	print("Selected!!!")
	$GridContainer/UnitPlaceholder/SkillSelection.visible = true
	pass # Replace with function body.
