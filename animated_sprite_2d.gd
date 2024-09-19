extends AnimatedSprite2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		play("Right")
	elif Input.is_action_pressed("ui_left"):
		play("Left")
	elif Input.is_action_pressed("ui_down"):
		play("Down")
	elif Input.is_action_pressed("ui_up"):
		play("Up")
	else:
		play("Idle down")  # Stop the animation if no input is detected
