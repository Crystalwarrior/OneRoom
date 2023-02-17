extends Area3D

@onready var clickable_indicator = $Label3D
@onready var examine_marker = $"../Marker3D2"
@onready var return_marker = $"../Marker3D"


func _on_mouse_entered():
	clickable_indicator.visible = true


func _on_mouse_exited():
	clickable_indicator.visible = false


func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if camera.current_marker != examine_marker:
			camera.global_transform = examine_marker.global_transform
			camera.current_marker = examine_marker
		else:
			camera.global_transform = return_marker.global_transform
			camera.current_marker = return_marker
