extends Control

@onready var level = preload("res://World/world.tscn") as PackedScene
@onready var btn_play = $Btn/btn_play as Button
@onready var btn_options = $Btn/btn_options as Button
@onready var btn_exit = $Btn/btn_exit as Button

@onready var options_menu = $Options_Menu as OptionsMenu
@onready var btn = $Btn



func _ready():
	handle_connecting_signals()

func _on_btn_play_click_end() -> void:
	get_tree().change_scene_to_packed(level)

func _on_btn_exit_click_end() -> void:
	get_tree().quit()

func _on_btn_options_click_end() -> void:
	options_menu.visible = true
	options_menu.set_process(true) 
	btn.visible = false
	
func on_exit_options_menu() -> void:
	options_menu.visible = false
	btn.visible = true

func handle_connecting_signals() -> void:
	btn_play.button_down.connect(_on_btn_play_click_end)
	btn_options.button_down.connect(_on_btn_options_click_end)
	btn_exit.button_down.connect(_on_btn_exit_click_end)
	options_menu.exit_option_menu.connect(on_exit_options_menu)
	
	
