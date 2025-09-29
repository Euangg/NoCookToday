extends Control

func _on_button_pve_pressed() -> void:
	Global.is_pvp=false
	Global.lastWin=-1
	Global.winTimes=0
	get_tree().call_deferred("change_scene_to_file", "res://Play_Fight.tscn")


func _on_button_pvp_pressed() -> void:
	Global.is_pvp=true
	Global.lastWin=-1
	Global.winTimes=0
	get_tree().call_deferred("change_scene_to_file", "res://Play_Fight.tscn")


func _on_button_options_pressed() -> void:
	pass # Replace with function body.


func _on_button_quit_pressed() -> void:get_tree().quit()
