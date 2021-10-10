extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var Skills = ["Attack", "Defend", "Blaze Ball"]
	InitSkills(Skills)
	pass # Replace with function body.

func InitSkills(Skills):
	var SkillScene = preload("res://Battle/Skill_Placeholder.tscn")
	
	for skill in Skills:
		var SkillPlaceholder = SkillScene.instance()
		SkillPlaceholder.text = skill
		$GridContainer.add_child(SkillPlaceholder)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
