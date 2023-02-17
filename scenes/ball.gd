extends Area3D

@onready var clickable_indicator = $Label3D


func _on_mouse_entered():
	clickable_indicator.visible = true


func _on_mouse_exited():
	clickable_indicator.visible = false


func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("obtain bol")
		self.visible = false
