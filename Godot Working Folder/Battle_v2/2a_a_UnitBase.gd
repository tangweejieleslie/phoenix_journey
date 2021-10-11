extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Things such as unit skills, stats, etc
func InstantiateUnit():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

signal Signal_SelectUnit

func _on_Unit_pressed():
	print("Selected. Trigger Skills Selection")
	emit_signal("Signal_SelectUnit")
	pass # Replace with function body.
