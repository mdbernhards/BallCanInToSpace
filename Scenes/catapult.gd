extends Node2D

var StartRotation = 3
var EndRotation = 60

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		fire(delta)

func fire(delta):
	$Arm/AnimationPlayer.play("Shoot")
	#$Arm.look_at($Arm.position.lerp($Arm.position.from_angle(deg_to_rad(-EndRotation)), delta))
