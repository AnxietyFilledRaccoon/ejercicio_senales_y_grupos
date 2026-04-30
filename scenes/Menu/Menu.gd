extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass


func _on_red_generator_button_down() -> void:
	$RedGenerator.connect("button_down",Callable(self,"_on_button_down"))
	count_new_instance()

func _on_violet_generator_button_down() -> void:
	$VioletGenerator.connect("button_down",Callable(self,"_on_button_down"))
	count_new_instance()

func _on_reset_button_down() -> void:
	get_tree().call_group("blocks", "delete")
