extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	AddUnit()
	AddUnit()
	pass # Replace with function body.

func AddUnit():
	var UnitBase = preload("res://Battle_v2/2a_a_UnitBase.tscn")
	var u = UnitBase.instance()
	add_child(u)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
