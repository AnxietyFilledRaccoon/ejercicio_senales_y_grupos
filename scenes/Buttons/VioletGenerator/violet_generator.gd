extends TextureButton


var myscene = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func generate_block():
	var instance = myscene.instantiate()
	add_child(instance)

func _on_button_down() -> void:
	generate_block()
