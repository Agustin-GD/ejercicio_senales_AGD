extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_down():
	generate_block() #Efectua la función generate_block.

func generate_block():
	var scene_Block = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")#Instancia la escena.
	var Clon_Block = scene_Block.instantiate()
	add_child (Clon_Block) #Jerarquiza por debajo de la escena original al bloque generado.

func delete():
	queue_free() #Elimina la instancia
