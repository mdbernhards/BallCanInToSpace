extends Control

var PlayerBall
var UpgradeScreen

func _ready():
	PlayerBall = get_tree().get_first_node_in_group("Player")
	UpgradeScreen = get_tree().get_first_node_in_group("UpgradeScreen")

func _process(delta):
	pass

func ShowGameOverScreen():
	visible = true
	UpgradeScreen.visible = false
	$GameOverGrayOut/CoinsCollectedLabel.text = "Coins Collected: " + str(round(PlayerBall.CoinsCollectedThisRun))

func _on_upgrade_button_pressed():
	visible = false
	UpgradeScreen.visible = true

func _on_main_menu_button_pressed():
	pass # MainMenuNoExisto
