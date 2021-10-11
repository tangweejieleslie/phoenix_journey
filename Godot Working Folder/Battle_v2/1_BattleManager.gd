extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	DisableAll()
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


func _on_Order_pressed():
	EnableAll()
	FocusFirstUnit()
	pass # Replace with function body.
