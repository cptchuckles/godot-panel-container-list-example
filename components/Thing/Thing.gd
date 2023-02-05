extends HBoxContainer


export(String) var key: String
export(String) var value: String


func _ready() -> void:
	$"%Key".text = key
	$"%Value".text = value
	$"%DeleteButton".connect("pressed", self, "_on_delete_pressed")


func _on_delete_pressed() -> void:
	queue_free()
