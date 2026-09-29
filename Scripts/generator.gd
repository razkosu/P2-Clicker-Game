extends Button


var strength: int = 0
@export var game_manager: Node
@export var seven:PackedScene
var cost: int = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Every 3 seconds give money
func _on_timer_timeout() -> void:
	game_manager.coin += strength                
	game_manager.update_ui()
	var child = seven.instantiate()
	child.position = Vector2(75, 130)
	add_child(child)        

# Gamble to upgrade
func _on_pressed() -> void:
	if $Timer.is_stopped() and game_manager.coin >= 100:
		$Timer.start()
		game_manager.coin -= cost
		game_manager.update_ui()  
		if randf() < 0.5: 
			strength += 100
			print("Success")
		else:
			print("Fail")
	elif game_manager.coin >= 100:
		game_manager.coin -= cost
		game_manager.update_ui()  
		if randf() < 0.5: 
			strength += 100
			print("Success")
		else:
			strength -= 100
			print("Fail")
	else:
		pass               
		
		
		
