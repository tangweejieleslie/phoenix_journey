extends Button

var Name = "Unit ABC"
var AdditionalSkills = ["Fireball"]
# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = Name
	pass # Replace with function body.

signal UnitPressed(instanceId) # need to indicate which unit is selected. 

func _on_UnitPlaceholder_pressed():
	emit_signal("UnitPressed", get_instance_id())
	pass # Replace with function body.

func SetName(newName):
	Name = newName

func DisableClick():
	self.disabled = true
	
	
func EnableClick():
	self.disabled = false
