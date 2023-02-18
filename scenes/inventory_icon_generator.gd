extends Node3D


func _ready():
	get_viewport().transparent_bg = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		var image = get_viewport().get_texture().get_image()
		image.convert(Image.FORMAT_RGBA8)
		image.save_png("user://generated_icon.png")
