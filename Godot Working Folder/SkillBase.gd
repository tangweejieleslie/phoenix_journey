extends Button

var SkillName = "skill"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = SkillName	
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func SetName(name):
	SkillName = name

signal SkillPressed(id)

func _on_Skill_pressed():
	emit_signal("SkillPressed", get_instance_id())
	pass # Replace with function body.
