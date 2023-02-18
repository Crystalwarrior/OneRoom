extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var resource = preload("res://dialogues/start.dialogue")
	DialogueManager.show_example_dialogue_balloon(resource, "this_is_a_node_title")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
