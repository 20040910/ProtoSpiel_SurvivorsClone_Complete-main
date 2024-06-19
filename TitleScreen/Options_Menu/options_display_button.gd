extends Control

@onready var check_button = $HBoxContainer/CheckButton  as CheckButton


func _ready():
	check_button.item_selected.connect()
	pass
