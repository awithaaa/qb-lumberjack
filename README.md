## Preview

[watch preview here]()

## Requirements
QBCore Framework - [QBCORE GITHUB](https://github.com/qbcore-framework/qb-core)

PolyZone - [PolyZone GITHUB](https://github.com/mkafrin/PolyZone)

qb-target - [QB Target github](https://github.com/qbcore-framework/qb-target)


## Add the [images] in to your inventory


## Insert into @qb-core - Shared.lua

```
--lumberjack
	["wood_cut"] 		 		 	= {["name"] = "wood_cut",           			["label"] = "Cut Wood",	 				["weight"] = 1000,  	["type"] = "item", 		["image"] = "wood_cut.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wood"},
	["wood_pro"] 		 		 	= {["name"] = "wood_pro",           			["label"] = "Polish Wood",	 			["weight"] = 1000,  	["type"] = "item", 		["image"] = "wood_proc.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wood"},
	["wood"] 		 		 	= {["name"] = "wood",           			["label"] = "Wood",	 				["weight"] = 1000,  	["type"] = "item", 		["image"] = "wood.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wood"},

```
