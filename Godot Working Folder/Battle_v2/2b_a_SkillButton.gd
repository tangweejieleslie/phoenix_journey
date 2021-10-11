extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

signal Signal_SelectSkill

func _on_Skill_pressed():
	print("SkillSelected")
	emit_signal("Signal_SelectSkill")

