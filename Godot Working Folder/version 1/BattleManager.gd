extends Node2D

# Listen to signal
func Listen():
	pass

# Send Signal
func Send():
	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	ConnectActionSignals($ActionsLayout)
	$UnitsContainer.disableAll()
	pass # Replace with function body.

# This will lead to tightly coupled code. Need to refactor later
func ConnectActionSignals(ActionsNode):
	ActionsNode.connect("InvokeOrder", self, "HandleOrder")
	ActionsNode.connect("InvokeFight", self, "HandleFight")

func HandleOrder():
	print("Order Phase")
	$UnitsContainer.enableAll()
	pass

func HandleFight():
	print("Fight Phase")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
