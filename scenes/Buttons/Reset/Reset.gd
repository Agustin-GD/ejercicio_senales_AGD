extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	for block in get_tree().get_nodes_in_group("blocks"):
		block.delete() #llama todos los blocks en el grupo y ejecuta .delete()
