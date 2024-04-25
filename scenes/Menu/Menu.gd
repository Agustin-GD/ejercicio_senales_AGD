extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass

func count_new_instances():
	instancesCount += 1
	$CountLabel.text = "instancesCount: " + str(instancesCount)



func _on_red_generator_button_down():
	count_new_instances()


func _on_violet_generator_button_down():
	count_new_instances()

func delete():
	instancesCount = 0
