extends Node2D

class_name LandingScreen
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Ally.DisableAll()
	InitSkills()
	pass # Replace with function body.

func DisableAll():
	print($Ally.get_children())


func InitAllies():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func InitSkills():
	for child in $Ally.get_node("GridContainer").get_children():
		print(child)


func _on_Order_pressed():
	$Ally.EnableAll()
	$Ally.FocusFirstUnit()
	pass # Replace with function body.


func handleSkillSelection(skill, target):
	print("this is in Landing Screen")
	print(skill, target)
