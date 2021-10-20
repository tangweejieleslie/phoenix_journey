extends GridContainer

var Skills = ["Attack", "Defend", "Heal", "Skill Name ABC"]

# Called when the node enters the scene tree for the first time.
func _ready():
	var skill = preload("res://SkillBase.tscn")
	
	# Instantiate units	
	for s in Skills:
		var NewSkill = skill.instance()
		NewSkill.SetName(s)
		self.add_child(NewSkill)
	
	# Connect Unit Press Signal
	ConnectChild()
	
	pass # Replace with function body.

func ConnectChild():
	for c in get_children():
		print(c)
		c.connect("SkillPressed", self, "handleSkillPressed")
	pass

func handleSkillPressed(instanceId):
	print(instanceId)
	print(instance_from_id(instanceId).SkillName, " is pressed")
	# disableAll() # after selection, disable all units. next state is to select skills

func disableAll():
	for c in get_children():
		c.DisableClick()

func enableAll():
	for c in get_children():
		c.EnableClick()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
