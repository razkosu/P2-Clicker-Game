extends Button

@export var clicker_strength: int = 10
@export var game_manager: Node
@export var dol:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#Receiver function for clickerbutton
func _on_pressed() -> void:
	game_manager.coin += clicker_strength
	
	game_manager.coin_label.text = "Money Yippee: " + str(game_manager.coin)
	print(game_manager.coin)
	var child = dol.instantiate()
	child.global_position = get_viewport().get_mouse_position()
	add_child(child)

# Gamble to upgrade
func _on_upgrade_button_pressed() -> void:
	if game_manager.coin >= 100:
		if randf() > 0.5:
			clicker_strength *= 2
			print("Success")
		else:
			clicker_strength /= 2
			print("Fail")
		game_manager.coin -= 100
		game_manager.update_ui()
	pass 
