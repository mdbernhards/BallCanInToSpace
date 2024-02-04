extends Node2D

var StartRotation = 3
var EndRotation = 60

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		fire(delta)

func fire(delta):
	$Arm/AnimationPlayer.play("Shoot")
