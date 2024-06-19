extends Control

@onready var option_button = $HBoxContainer/OptionButton as OptionButton

const RESOLUTION_DICTIONARY : Dictionary = {
	"640 x 360" : Vector2i(640,360),
	"1152 x 640" : Vector2i(1152,640),
	"1280 x 720" : Vector2i(1280,720),
	"1920 x 1080" : Vector2i(1920,1080)
}

func _ready():
	option_button.item_selected.connect(on_resolution_selected)
	
func add_resolution_item() -> void:
	for resolution_size_text in RESOLUTION_DICTIONARY:
		option_button.add_item(resolution_size_text)
	
func on_resolution_selected(index : int) -> void:
	pass
