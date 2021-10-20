extends Button

export var SkillId = 1
export var SkillName = "Blaze"
export var Multiplier = 1.5
export var Type = "FIRE" # to create enum to handle this later

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# can be refactored into simply holding the skill id, and the server or manager will get the details from the skill library
signal SkillSelected(SkillName, Multiplier, Type, SkillId)

func _on_SkillBase_pressed():
	emit_signal("SkillSelected", SkillName, Multiplier, Type, SkillId)
	pass # Replace with function body.
