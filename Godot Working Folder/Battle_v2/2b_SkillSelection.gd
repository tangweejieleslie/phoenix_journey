extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	AddSkill("Attack")
	AddSkill("Defend")
	AddSkill("Cancel")
	pass # Replace with function body.


func AddSkill(skillname):
	var SkillButton = preload("res://Battle_v2/2b_a_SkillButton.tscn")
	var s = SkillButton.instance()
	s.text = skillname
	add_child(s)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
