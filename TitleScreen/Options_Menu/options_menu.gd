class_name OptionsMenu
extends Control

@onready var exit_button = $MarginContainer/VBoxContainer/Exit_Button as Button

signal  exit_option_menu

func _ready():
	exit_button.button_down.connect(_on_exit_button_pressed)
	set_process(false)

func _on_exit_button_pressed():
	exit_option_menu.emit()
	set_process(false)
