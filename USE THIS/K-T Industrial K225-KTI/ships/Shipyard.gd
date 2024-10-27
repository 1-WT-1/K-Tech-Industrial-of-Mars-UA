extends "res://ships/Shipyard.gd"


func _ready():
	ships["K225-KTI"] = load("res://K-T Industrial K225-KTI/ships/ATK225-KTI.tscn")
	configAlias["K225-KTI"] = "AT225"
	defaultShipConfig["AT225"] = {
		"config":{
			"hud":{
				"type":"SYSTEM_HUD_AT225"
			}, 
			"aux":{
				"power":"SYSTEM_AUX_SMES"
				}, 
			}, 
			"reactor":{
				"power":16.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel":{
				"capacity":80000.0, 
				"initial":80000.0, 
			}, 
			"capacitor":{
				"capacity":1000.0, 
			}, 
			"turbine":{
				"power":200.0, 
			}, 
			"shielding":{
				"emp":100, 
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion":{
				"main":"SYSTEM_MAIN_ENGINE_DFMPD2205", 
				"rcs":"SYSTEM_THRUSTER_GHET"
			}, 
		}
