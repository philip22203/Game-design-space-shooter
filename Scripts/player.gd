extends CharacterBody2D

@export var speed = 300

func _physics_process(delta):
	var direction = Vecetor2(Input.get_axis("move_left", "move_right"), Input.get_axis("move_up", "move_down")
	print(direction)
	velocity = direction * speed
	move_and_slide()
