extends Node

var PushStrenghtTier = 0
var AngleTier = 0
var BouncinessTier = 0
var PushTimesTier = 0
var LivesTier = 0
var MassTier = 0

var FrictionTier = 0
var DropHeightTier = 0

var PlayerBall

func _ready():
	PlayerBall = get_tree().get_first_node_in_group("Player")

func _process(delta):
	pass

var StrenghtX = 5
var StrenghtY = 5

func SetUpgrades():
	var tempStrenghtX = 5 + (PushStrenghtTier * 5)
	
	PlayerBall.StrenghtX = tempStrenghtX
	PlayerBall.StrenghtY = tempStrenghtX * (AngleTier/100.0 * 5.0)
	PlayerBall.physics_material_override.bounce = 1 + (BouncinessTier * 5)
	#PlayerBall.set_friction(1 + (BouncinessTier * 5))
	PlayerBall.PushTimes = 1 + PushTimesTier
	PlayerBall.Lives = 1 + LivesTier
	PlayerBall.mass = 1 + (25 * MassTier)

func SetPushTimes():
	PlayerBall.PushTimes = 1 + PushTimesTier
