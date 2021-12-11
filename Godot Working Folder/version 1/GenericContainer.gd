extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var unit = preload("res://version 1/UnitPlaceholder.tscn")
	
	# Instantiate units	
	for n in 4:
		var NewUnit = unit.instance()
		var name = "Unit " + str(n)
		NewUnit.SetName(name)
		self.add_child(NewUnit)
	
	# Connect Unit Press Signal
	ConnectChild()
	
	pass # Replace with function body.

func ConnectChild():
	for c in get_children():
		print(c)
		c.connect("UnitPressed", self, "handleUnitPressed")
	pass

func handleUnitPressed(instanceId):
	print(instanceId)
	print(instance_from_id(instanceId).Name, " is pressed")
	disableAll() # after selection, disable all units. next state is to select skills

func disableAll():
	for c in get_children():
		c.DisableClick()

func enableAll():
	for c in get_children():
		c.EnableClick()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

