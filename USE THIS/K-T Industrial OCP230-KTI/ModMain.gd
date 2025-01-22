extends Node

# Set mod priority if you want it to load before/after other mods
# Mods are loaded from lowest to highest priority, default is 0
const MOD_PRIORITY = 1
# Name of the mod, used for writing to the logs
const MOD_NAME = "K-Tech Industrial OCP230-KTI"
# Path of the mod folder, automatically generated on runtime
var modPath:String = get_script().resource_path.get_base_dir() + "/"
# Required var for the replaceScene() func to work
var _savedObjects = []

# Instances Settings.gd, loads DLC, then frees the script.
func loadDLC():
	var DLCLoader:Settings = preload("res://Settings.gd").new()
	DLCLoader.loadDLC()
	DLCLoader.queue_free()

func _init(modLoader = ModLoader):
	l("Initializing")
	
	loadDLC()
	updateTL("i18n/en.txt", "|")
	updateTL("i18n/ua.txt", "|")
	replaceScene("enceladus/Dealer.tscn")
	modLoader.installScriptExtension("res://K-T Industrial OCP230-KTI/CurrentGame.gd")
	modLoader.installScriptExtension("res://K-T Industrial OCP230-KTI/ships/Shipyard.gd")
	
	l("Initialized")

func _ready():
	l("Ready")

func replaceScene(newPath:String, oldPath:String = ""):
	l("Updating scene: %s" % newPath)

	if oldPath.empty():
		oldPath = str("res://" + newPath)

	newPath = str(modPath + newPath)

	var scene := load(newPath)
	scene.take_over_path(oldPath)
	_savedObjects.append(scene)
	l("Finished updating: %s" % oldPath)

# Helper script to load translations using csv format
# `path` is the path to the transalation file
# `delim` is the symbol used to seperate the values
# example usage: updateTL("i18n/translation.txt", "|")
func updateTL(path:String, delim:String = ","):
	path = str(modPath + path)
	l("Adding translations from: %s" % path)
	var tlFile:File = File.new()
	tlFile.open(path, File.READ)

	var translations := []

	var csvLine := tlFile.get_line().split(delim)
	l("Adding translations as: %s" % csvLine)
	for i in range(1, csvLine.size()):
		var translationObject := Translation.new()
		translationObject.locale = csvLine[i]
		translations.append(translationObject)

	while not tlFile.eof_reached():
		csvLine = tlFile.get_csv_line(delim)

		if csvLine.size() > 1:
			var translationID := csvLine[0]
			for i in range(1, csvLine.size()):
				translations[i - 1].add_message(translationID, csvLine[i].c_unescape())
			l("Added translation: %s" % csvLine)

	tlFile.close()

	for translationObject in translations:
		TranslationServer.add_translation(translationObject)

	l("Translations Updated")

func l(msg:String, title:String = MOD_NAME):
	Debug.l("[%s]: %s" % [title, msg])
