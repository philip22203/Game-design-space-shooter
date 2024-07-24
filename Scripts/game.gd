extends Node2D

var player = null

func _ready():
	player = get_tree().get_first_node_in_group("player")
	assert(player!=null)

func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree() .quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree() .reload_current_sscene()
