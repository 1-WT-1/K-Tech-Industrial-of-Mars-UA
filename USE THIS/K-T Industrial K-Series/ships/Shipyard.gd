extends "res://ships/Shipyard.gd"


func _ready():
	ships["TRTL-KTI"] = load("res://K-T Industrial K-Series/ships/KTI-TRTL.tscn")
	configAlias["TRTL-KTI"] = "TRTL"
	defaultShipConfig["TRTL-KTI"] = {
		"config":{
			"hud":{
				"type":"SYSTEM_HUD_OCP209"
			},  
			"weaponSlot": {
				"left": {
			"type": "SYSTEM_NONE"
				}, 
				"main": {
			"type": "SYSTEM_MWG"
				}, 
				"right": {
			"type": "SYSTEM_NONE"
				}
		} 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel": {
				"capacity": 30000.0, 
				"initial": 30000.0
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":200.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion": {
				"main": "SYSTEM_MAIN_ENGINE_K37", 
				"rcs": "SYSTEM_THRUSTER_K37"
				}, 
		}

	ships["TRTL_LCB-KTI"] = load("res://K-T Industrial K-Series/ships/KTI-TRTL-LCB.tscn")
	configAlias["TRTL_LCB-KTI"] = "TRTL"
	defaultShipConfig["TRTL_LCB-KTI"] = {
		"config":{
			"hud":{
				"type":"SYSTEM_HUD_OCP209"
			},  
			"weaponSlot": {
				"left": {
			"type": "SYSTEM_NONE"
				}, 
				"main": {
			"type": "SYSTEM_MWG"
				}, 
				"right": {
			"type": "SYSTEM_NONE"
				}
		} 
			}, 
			"reactor":{
				"power":4.0
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0, 
			}, 
			"fuel": {
				"capacity": 30000.0, 
				"initial": 30000.0
			}, 
			"capacitor":{
				"capacity":500.0, 
			}, 
			"turbine":{
				"power":200.0, 
			}, 
			"shielding":{
				"emp":0, 
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK2"
			}, 
			"propulsion": {
				"main": "SYSTEM_MAIN_ENGINE_K37", 
				"rcs": "SYSTEM_THRUSTER_K37"
				}, 
		}

