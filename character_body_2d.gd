extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Variables pour la vitesse et le vecteur de mouvement
var speed = 200
# var velocity = Vector2()

func _process(delta):
	# Réinitialiser le vecteur de vitesse
	velocity = Vector2()

	# Vérifier les entrées utilisateur
	if Input.is_action_pressed("ui_right"):
		animated_sprite_2d.flip_h = true
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		animated_sprite_2d.flip_h = false
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	# Normaliser la vitesse pour éviter des mouvements diagonaux plus rapides
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	# Déplacer le personnage
	move_and_slide()
