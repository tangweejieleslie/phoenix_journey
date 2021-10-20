extends TextureButton

var instance_id = get_instance_id()
var UNIT_ID = 1 # for Unit verification
export var NAME = "temporary name"
export var HP = 100
export var ATK = 10
export var DEF = 8
export var Skills = ["Fireball", "Cure"]
export var Equipment = []
export var isAlly = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Pass instance id, enable further follow up. 
signal Selected(instance_id, hp, atk, def, isAlly)

func _on_UnitBase_pressed():
	emit_signal(instance_id, HP, ATK, DEF, isAlly)
	pass # Replace with function body.
