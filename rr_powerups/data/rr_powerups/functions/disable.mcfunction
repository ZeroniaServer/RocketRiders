tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove powerupsEnabled
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove ResidersOff
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ResidersWasOn] add Residers
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove ResidersWasOn
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove ChaosOff
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=ChaosWasOn] add Chaos
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove ChaosWasOn
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove customObsidian
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove customSpawn
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add switchGamemodes
execute if entity @e[predicate=custom:indimension,type=marker,tag=captureMiddle,limit=1] run kill @e[predicate=custom:indimension,type=marker,tag=captureMiddle,limit=1]