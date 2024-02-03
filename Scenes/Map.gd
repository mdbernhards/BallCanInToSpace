extends Node2D

var groundBlocksCount = 0
var grassBlockStartPosition
var grassTopStartPosition

func _ready():
	grassBlockStartPosition = $GrassBlockMarker.position
	grassTopStartPosition = $GrassTopMarker.position
	CreateGround()

func _process(delta):
	pass

func CreateGround():
	for blockCount in 500:
		CreateGroundBlock(blockCount, "GrassBlock",grassBlockStartPosition)
	for blockCount in 500:
		CreateGroundBlock(blockCount, "GrassTop", grassTopStartPosition)

func CreateGroundBlock(i, type, startPosition):
	var newBlock
	if type == "GrassBlock":
		newBlock = load("res://Scenes/grass_tile.tscn").instantiate()
	if type == "GrassTop":
		newBlock = load("res://Scenes/grass_top.tscn").instantiate()
	
	newBlock.position.y = startPosition.y
	newBlock.position.x = startPosition.x + (i * 160)
	add_child(newBlock)
