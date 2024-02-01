extends RigidBody2D

var HasGameStarted = false

var StrenghtX = 5
var StrenghtY = 5

var Lives = 1
var PushTimes = 1

var UpgradeManager

func _ready():
	UpgradeManager = get_tree().get_first_node_in_group("UpgradeManager")

func _process(delta):
	if HasGameStarted:
		CheckIfGameOver()

func _on_texture_button_pressed():
	HasGameStarted = true
	PushTimes -= 1
	if PushTimes <= 1:
		get_tree().get_first_node_in_group("PushButton").visible = false
	linear_velocity.x = linear_velocity.x + StrenghtX
	linear_velocity.y = linear_velocity.y - StrenghtY

func CheckIfGameOver():
	if linear_velocity.length() < 0.7 and $GameOverTimer.is_stopped():
		Lives -= 1
		if Lives <= 1:
			$GameOverTimer.start()
		else:
			HasGameStarted = false
			UpgradeManager.SetPushTimes()
			get_tree().get_first_node_in_group("PushButton").visible = true

func _on_game_over_timer_timeout():
	HasGameStarted = false
	get_tree().get_first_node_in_group("GameOverScreen").visible = true
