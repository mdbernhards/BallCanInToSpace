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
	},
	"Money" : {},
	"Ramp" : {},
	"Plane" : {},
	"Rocket" : {},
}
