extends Node2D

var hp = 16

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

signal CrystalBOOM
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hurt_box_hurt(damage, _angle, _knockback):
	hp -= clamp(damage, 1.0, 999.0)
	if hp <= 0:
		emit_signal("CrystalBOOM",true)
