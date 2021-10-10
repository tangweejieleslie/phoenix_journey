extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	# var Skills = ["Attack", "Defend", "Blaze Ball", "Heal"]
	# InitSkills(Skills)
	pass # Replace with function body.

# Signal selected skill, emit to landing screen. landing screen will trigger target selection, based on whether skill targets ally or enemy
# signal SkillSelected(name, target)

func InitSkills(Skills, initScene):
	var SkillScene = preload("res://Battle/Skill_Placeholder.tscn")
	
	for skill in Skills:
		var SkillPlaceholder = SkillScene.instance()
		SkillPlaceholder.text = skill
		$GridContainer.add_child(SkillPlaceholder)
		var LandingScreen = get_tree().get_root()
		SkillPlaceholder.connect("SkillSelected", LandingScreen, "handleSkillSelection", [skill, "test"])
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

