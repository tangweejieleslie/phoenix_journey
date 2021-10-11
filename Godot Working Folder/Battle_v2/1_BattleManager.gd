extends Node2D

var SkillSelectionPanelId
# Called when the node enters the scene tree for the first time.
func _ready():
	DisableAll()
	HookSignalToAllies()
	pass # Replace with function body.

func DisableAll():
	for child in $Allies.get_children():
		child.disabled = true	
		child.focus_mode =Control.FOCUS_NONE

func EnableAll():
	for child in $Allies.get_children():
		child.disabled = false	
		child.focus_mode =Control.FOCUS_ALL

func FocusFirstUnit():
	$Allies/Unit.grab_focus()

func HookSignalToAllies():
	for unit in $Allies.get_children():
		unit.connect("Signal_SelectUnit", self, "UnitSelected")


func _on_Order_pressed():
	EnableAll()
	FocusFirstUnit()
	pass # Replace with function body.

func UnitSelected():
	print("Unit selected")
	InstantiateSkillSelection()

func InstantiateSkillSelection():
	var SkillPanel = preload("res://Battle_v2/2b_SkillSelection.tscn")
	var s = SkillPanel.instance()
	s.set_position(Vector2(400,20))
	add_child(s)
	SkillSelectionPanelId = s.get_instance_id()
	
	for skill in s.get_children():
		print(skill)
		skill.connect("Signal_SelectSkill", self, "SkillSelected")

func SkillSelected():
	print("Skill is selected. Manager")
	instance_from_id(SkillSelectionPanelId).queue_free()
		
