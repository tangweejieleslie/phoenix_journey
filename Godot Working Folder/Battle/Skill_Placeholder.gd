extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

signal SkillSelected(name, target)

func _on_Skill_Placeholder_pressed():
	print("Skill selected")
	var skillname = self.text
	var target = "enemy"
	emit_signal("SkillSelected")
	pass # Replace with function body.
