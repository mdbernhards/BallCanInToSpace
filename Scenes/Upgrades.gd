extends Control

var UpgradeManager

func _ready():
	UpgradeManager = get_tree().get_first_node_in_group("UpgradeManager")

func _process(delta):
	pass

#UpgradeButtons
func _on_push_strenght_button_pressed():
	UpgradeManager.PushStrenghtTier += 1

func _on_angle_button_pressed():
	UpgradeManager.AngleTier += 1

func _on_bounciness_button_pressed():
	UpgradeManager.BouncinessTier += 1

func _on_push_times_button_pressed():
	UpgradeManager.PushTimesTier += 1

func _on_lives_button_pressed():
	UpgradeManager.LivesTier += 1

func _on_mass_button_pressed():
	UpgradeManager.MassTier += 1

#PlayAgain
func _on_play_again_button_pressed():
	UpgradeManager.SetUpgrades()
