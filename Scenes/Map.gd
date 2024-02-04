extends Node2D

var groundBlocksCount = 0
var grassBlockStartPosition
var grassTopStartPosition

var BlocksSpawned = 70
var AllBlocks

var AllBlockCounts
var PlayerBall

func _ready():
	PlayerBall = get_tree().get_first_node_in_group("Player")
	InitilizeBlockCount()
	InitilizeAllBlocks()
	grassBlockStartPosition = $GrassBlockMarker.position
	grassTopStartPosition = $GrassTopMarker.position
	CreateGround()
	$ToStartGeneratingTimer.start()

func _process(delta):
	cycleBlocks()

func CreateGround():
	for blockCount in BlocksSpawned:
		CreateGroundBlock(blockCount, "GrassBlock",grassBlockStartPosition)
	for blockCount in BlocksSpawned:
		CreateGroundBlock(blockCount, "GrassTop", grassTopStartPosition)

func CreateGroundBlock(i, type, startPosition):
	var newBlock
	if type == "GrassBlock":
		newBlock = load("res://Scenes/grass_tile.tscn").instantiate()
	if type == "GrassTop":
		newBlock = load("res://Scenes/grass_top.tscn").instantiate()
	
	newBlock.position.y = startPosition.y
	newBlock.position.x = startPosition.x + (AllBlockCounts[type] * 160)
	AllBlocks[type].append(newBlock)
	add_child(newBlock)
	
	AllBlockCounts[type] += 1

func InitilizeBlockCount():
	AllBlockCounts = {
		"GrassBlock" : 0,
		"GrassTop" : 0,
	}

func InitilizeAllBlocks():
	AllBlocks = {
		"GrassBlock" : Array(),
		"GrassTop" : Array(),
	}

func cycleBlocks():
	var newBlock = AllBlocks["GrassBlock"][0]
	if newBlock and newBlock.position and (PlayerBall.position.x - newBlock.position.x) > 7000:
		AllBlocks["GrassBlock"][0].queue_free()
		AllBlocks["GrassTop"][0].queue_free()
		AllBlocks["GrassBlock"].pop_front()
		AllBlocks["GrassTop"].pop_front()
		BlocksSpawned += 1
		CreateGroundBlock(BlocksSpawned, "GrassBlock",grassBlockStartPosition)
		CreateGroundBlock(BlocksSpawned, "GrassTop", grassTopStartPosition)
