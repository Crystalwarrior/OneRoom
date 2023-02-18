extends Node


var items: Array = []


func get_item_by_id(index):
	if index > 0 and index < items.size():
		return items[index]
	return null


func get_item_by_name(item_name):
	for item in items:
		if item.name == item_name:
			return item
	return null


func get_item_id(item):
	return items.find(item)


func add_item(item_name, item_icon, item_dialog):
	var item = {
		"name": item_name,
		"icon": item_icon,
		"dialog": item_dialog
	}
	items.append(item)


func remove_item(index):
	items.remove_at(index)
