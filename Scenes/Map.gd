extends Node2D

var groundBlocksCount = 0
var spawnStartPosition

func _ready():
	spawnStartPosition = $Marker2D.position
	CreateGround()

func _process(delta):
	pass

func CreateGround():
	for i in 10000:
		CreateGroundBlock(i)

func CreateGroundBlock(i):
	var newBlock = load("res://Scenes/grass_tile.tscn").instantiate()
	newBlock.position.y = spawnStartPosition.y
	newBlock.position.x = spawnStartPosition.x + (i * 160)
	add_child(newBlock)
