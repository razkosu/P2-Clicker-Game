extends Control

var coin: int
@onready var coin_label: Label = $CoinLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_ui()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_ui() -> void:
	coin_label.text = "Money Yippee: " + str(coin)
