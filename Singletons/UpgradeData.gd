extends Node

# values in %

var upgrades = {
	"Basic" : {
		"PushStrenght" : {
			"tiers" : 5,
			"value" : 5,
			"start_price": 10,
			"price_increase" : 15,
			"type": "subtract",
		},
		"Angle" : {
			"tiers" : 45,
			"value" : 1,
			"start_price": 25,
			"price_increase" : 20,
			"type": "subtract",
		},
		"Bounciness" : {
			"tiers" : 100,
			"value" : 1,
			"start_price": 30,
			"price_increase" : 25,
			"type": "add",
		},
		"PushTimes" : {
			"tiers" : 5,
			"value" : 1,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"Lives" : {
			"tiers" : 3,
			"value" : 1,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"Mass" : {
			"tiers" : 40,
			"value" : 25,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"DropHeight" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"GroundFriction" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
	},
	"Money" : {
		"Coins" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
			},
		"DistanceValue" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
			},
		"CoinValue" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
			},
		},
	"Ramp" : {
		"Tier" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"Size" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"SpeedBoost" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
	},
	"Catapult" : {
		"Unlocked" : {
			"tiers" : 1,
			"value" : 1,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"Speed" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
		"Size" : {
			"tiers" : 3,
			"value" : 10,
			"start_price": 35,
			"price_increase" : 30,
			"type": "add",
		},
	},
	"Glider/Wings" : {},
	"Cannon" : {},
	"Plane" : {},
	"Rocket" : {},
}
