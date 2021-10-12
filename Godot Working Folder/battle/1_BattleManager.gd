extends Node2D

enum GAME_STATE {
	LOAD_DATA,
	ACTION_SELECTION, # SELECT ACTION: ORDER, FIGHT, ETC...
	UNIT_SELECTION, # SELECT YOUR OWN UNIT FOR ORDER
	ORDER_SELECTION, # SELECT THE ORDER, I.E. SKILLS, ATTACK, ETC
	TARGET_SELECTION, # SELECT TARGET OF SKILLS, COULD BE EITHER SELF, ALLY, OR ENEMY OR ENEMIES
}

enum ACTION_SELECTION_STATE {
	DISABLED_FIGHT,  # Only fight is disabled. until all units have selected their target
	ENABLED_FIGHT 
}

enum TARGET_SELECTION_STATE {
	TARGET_SELF,    # immediately draw the line, no need to select target
	TARGET_ALLY,
	TARGET_ALLIES,  # immediately draw the line, no need to select target
	TARGET_ENEMY,
	TARGET_ENEMIES, # immediately draw the line, no need to select target
}

var data


func _ready():
	$Control.connect("unit_pressed", self, "handle")
	LoadJson()
	pass # Replace with function body.

func handle(id):
	print(id)
	print("Unit pressed.")
	instance_from_id(id).HP -= 10

#func _process(delta):
#	pass

func LoadJson():
	var file = File.new()
	var file_path = "res://data.json"
	file.open(file_path, file.READ)
	var json_string = file.get_as_text()

	var json_result = JSON.parse(json_string).result
	file.close()
	
	print(json_result)

