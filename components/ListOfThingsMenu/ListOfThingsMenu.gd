extends Control

export(PackedScene) var THING: PackedScene

onready var things_list := $"%ThingsList" as VBoxContainer
onready var new_key := $"%NewKey" as LineEdit
onready var new_value := $"%NewValue" as LineEdit
onready var new_thing_button := $"%NewThingButton" as Button


func _ready() -> void:
	new_thing_button.connect("pressed", self, "_on_new_thing_button_pressed")


func _on_new_thing_button_pressed() -> void:
	if new_key.text.empty() or new_value.text.empty():
		return

	var new_thing := THING.instance()
	new_thing.key = new_key.text
	new_thing.value = new_value.text
	things_list.add_child(new_thing)

	new_key.clear()
	new_value.clear()
