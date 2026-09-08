extends Control

var coin: int
@export var clicker_strength: int
@onready var coin_label: Label = $CoinLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coin = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#Receiver function for clickerbutton
func _on_button_down() -> void:
	coin += clicker_strength
	
	coin_label.text = "Coin: " + str(coin)
	print(coin)


func _on_upgrade_button_pressed() -> void:
	print("Upgrade")
	clicker_strength *= 2
	pass # Replace with function body.
