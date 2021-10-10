extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	# FocusFirstUnit()
	pass # Replace with function body.

func initUnits(Units):
	var UnitScene = preload("res://Battle/Unit_Placeholder.tscn")
	
	for unit in Units:
		var UnitPlaceholder = UnitScene.instance()
		# UnitScene.text = skill
		# $GridContainer.add_child(SkillPlaceholder)
		# var LandingScreen = get_tree().get_root()
		# SkillPlaceholder.connect("SkillSelected", LandingScreen, "handleSkillSelection", [skill, "test"])


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
