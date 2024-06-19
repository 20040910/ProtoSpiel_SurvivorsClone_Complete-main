extends Window

# 當前設定數據的字典
var settings_data = {
	"volume": 1.0,
	"resolution": "1920x1080",
	"fullscreen": true
}

# 當前可用的解析度
var resolutions = ["1920x1080", "1280x720", "1024x768"]

# 初始化
func _ready():
	load_settings()
	# 初始化滑塊和其他控件
	$VBoxContainer/HBoxContainer/VolumeSlider.value = settings_data["volume"]
	$VBoxContainer/HBoxContainer2/ResolutionOptionButton.clear()
	for res in resolutions:
		$VBoxContainer/HBoxContainer2/ResolutionOptionButton.add_item(res)
	$VBoxContainer/HBoxContainer2/ResolutionOptionButton.select(resolutions.find(settings_data["resolution"]))
	
# 保存設置
func save_settings():
	settings_data["volume"] = $VBoxContainer/HBoxContainer/VolumeSlider.value
	settings_data["resolution"] = resolutions[$VBoxContainer/HBoxContainer2/ResolutionOptionButton.get_selected()]
	settings_data["fullscreen"] = $VBoxContainer/HBoxContainer3/FullscreenCheckButton.is_pressed()
	# 這裡可以將設置保存到文件或使用Godot內建的ConfigFile
	var config = ConfigFile.new()
	config.set_value("settings", "volume", settings_data["volume"])
	config.set_value("settings", "resolution", settings_data["resolution"])
	config.set_value("settings", "fullscreen", settings_data["fullscreen"])
	config.save("user://settings.cfg")

# 加載設置
func load_settings():
	var config = ConfigFile.new()
	if config.load("user://settings.cfg") == OK:
		settings_data["volume"] = config.get_value("settings", "volume", 1.0)
		settings_data["resolution"] = config.get_value("settings", "resolution", "1920x1080")
		settings_data["fullscreen"] = config.get_value("settings", "fullscreen", true)

# 按下保存按鈕的處理函數
func _on_SaveButton_pressed():
	save_settings()
	# 關閉窗口
	hide()


func _on_fullscreen_check_button_pressed():
	settings_data["fullscreen"]
