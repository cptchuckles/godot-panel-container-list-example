extends HBoxContainer

export(String) var key: String setget set_key, get_key
export(String) var value: String setget set_value, get_value


func set_key(new_key: String) -> void:
	$"%Key".text = new_key


func get_key() -> String:
	return $"%Key".text


func set_value(new_value: String) -> void:
	$"%Value".text = new_value


func get_value() -> String:
	return $"%Value".text


func _ready() -> void:
	$"%DeleteButton".connect("pressed", self, "_on_delete_pressed")


func _on_delete_pressed() -> void:
	queue_free()
