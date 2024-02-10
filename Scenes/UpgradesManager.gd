extends Node

#Money
var TotalCoins = 0

#Basic upgrades
var PushStrenghtTier = 0
var AngleTier = 0
var BouncinessTier = 0
var PushTimesTier = 0
var LivesTier = 0
var MassTier = 0
var FrictionTier = 0
var DropHeightTier = 0

#Item enabled upgrades
var isRampEnabled
var isCatapultEnabled

var PlayerBall
var UpgradeData
var BasicData

func _ready():
	PlayerBall = get_tree().get_first_node_in_group("Player")
	UpgradeData = get_tree().get_first_node_in_group("UpgradeData").upgrades
	BasicData = UpgradeData["Basic"]

func _process(delta):
	pass

func SetUpgrades():
	var tempStrenghtX = 5 + (PushStrenghtTier * BasicData["PushStrenght"]["value"])
	
	PlayerBall.StrenghtX = tempStrenghtX
	PlayerBall.StrenghtY = tempStrenghtX * (AngleTier/100.0 * BasicData["Angle"]["value"])
	PlayerBall.physics_material_override.bounce = 1 + (BouncinessTier * BasicData["Bounciness"]["value"])
	#PlayerBall.set_friction(1 + (FrictionTier * BasicData["GroundFriction"]["value"]))
	PlayerBall.PushTimes = BasicData["PushTimes"]["value"] + PushTimesTier
	PlayerBall.Lives = BasicData["Lives"]["value"] + LivesTier
	PlayerBall.mass = 1 + (BasicData["Mass"]["value"] * MassTier)

func SetPushTimes():
	PlayerBall.PushTimes = 1 + PushTimesTier
