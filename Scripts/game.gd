extends Node2D

@onready var player_spawn_pos = $playerspawnpos

var player = null

func _ready():
	player = get_node("player")
	assert(player!=null)
	player.global_position = player_spawn_pos.global_position

func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree() .quit()
	elif Input.is_action_just_pressed("reset"):
		get_tree() .reload_current_scene()
