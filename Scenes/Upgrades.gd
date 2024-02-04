extends Control

var UpgradeManager
var PlayerBall

func _ready():
	UpgradeManager = get_tree().get_first_node_in_group("UpgradeManager")

func _process(delta):
	pass

#PlayAgain
func _on_play_again_button_pressed():
	UpgradeManager.SetUpgrades()

func _on_pushing_p_button_pressed():
	PlayerBall = get_tree().get_first_node_in_group("Player").PushBall()

#Upgrade tab buttons
func _on_basic_tab_button_pressed():
	HideAllUpgrades()
	$BasicUpgrades.visible = true

func _on_money_tab_button_pressed():
	HideAllUpgrades()
	$MoneyUpgrades.visible = true

func _on_ramp_tab_button_pressed():
	HideAllUpgrades()
	$RampUpgrades.visible = true

func _on_catapult_tab_button_pressed():
	HideAllUpgrades()
	$CatapultUpgrades.visible = true

func _on_glider_tab_button_pressed():
	HideAllUpgrades()

func _on_canon_tab_button_pressed():
	HideAllUpgrades()

func _on_plane_tab_button_pressed():
	HideAllUpgrades()

func _on_rocket_tab_button_pressed():
	HideAllUpgrades()
	
func HideAllUpgrades():
	$BasicUpgrades.visible = false
	$MoneyUpgrades.visible = false
	$RampUpgrades.visible = false
	$CatapultUpgrades.visible = false

func ShowUpgradeScreen():
	visible = true
	_on_basic_tab_button_pressed()
	$CoinsCollectedLabel.text = "Coins Collected: " + str(UpgradeManager.TotalCoins)
