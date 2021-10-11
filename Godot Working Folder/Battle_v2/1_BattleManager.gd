extends Node2D

var LineCount = 0

var SkillSelectionPanelId
# Called when the node enters the scene tree for the first time.
func _ready():
	DisableAll($Allies)
	DisableAll($Enemies)
	HookSignalToAllies()
	HookSignalToEnemies()
	UpdateEnemies()

func _process(delta):
	if LineCount == 2:
		$ActionMenu/Fight.disabled = false
		#print("Enabled Fight")

func UpdateEnemies():
	for unit in $Enemies.get_children():
		unit.UpdateTexture("res://enemy_01.JPG")

func DisableAll(target):
	for child in target.get_children():
		child.disabled = true	
		child.focus_mode =Control.FOCUS_NONE

func EnableAll(target):
	for child in target.get_children():
		child.disabled = false	
		child.focus_mode =Control.FOCUS_ALL

func FocusFirstUnit(target):
	target.get_node("Unit").grab_focus()

func HookSignalToAllies():
	for unit in $Allies.get_children():
		unit.connect("Signal_SelectUnit", self, "UnitSelected")

func HookSignalToEnemies():
	for unit in $Enemies.get_children():
		unit.connect("Signal_SelectUnit", self, "EnemySelected")

func _on_Order_pressed():
	EnableAll($Allies)
	FocusFirstUnit($Allies)
	pass # Replace with function body.



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
	TargetEnemies()

func TargetEnemies():
	EnableAll($Enemies)
	FocusFirstUnit($Enemies)
	pass

func TargetAllies():
	EnableAll($Allies)
	FocusFirstUnit($Allies)
	pass

var start_id
var end_id

func UnitSelected(position):
	print("Unit selected", position)
	if start_id == null:
		start_id = position
	else:
		if end_id == null:
			end_id = position
			DrawTargetLine()
	
	DisableAll($Allies)
	#TODO: need to enable after target selection
	InstantiateSkillSelection()

func EnemySelected(position):
	if end_id == null:
		end_id = position
		DrawTargetLine()

func DrawTargetLine():
	print("drawing line")
	print(start_id, "->", end_id)
	
	var newLine = Line2D.new()
	add_child(newLine)
	newLine.add_point(start_id)
	newLine.add_point(end_id)
	LineCount += 1
	
	print(LineCount)
	start_id = null
	end_id = null
