extends CanvasLayer

var PlayerBall

func _ready():
	PlayerBall = get_tree().get_first_node_in_group("Player")

func _process(delta):
	pass


func _on_texture_button_pressed():
	PlayerBall.PushBall()
