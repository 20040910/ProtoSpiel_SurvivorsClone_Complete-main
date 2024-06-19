extends Control

@onready var check_button = $HBoxContainer/CheckButton as CheckButton
@onready var canvas_layer = $"../CanvasLayer" as CanvasLayer

func _ready():
	pass

func _on_check_button_toggled(toggled_on):
	canvas_layer.visible = toggled_on
