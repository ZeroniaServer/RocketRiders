tag @e[type=armor_stand,tag=Selection] remove powerupsEnabled
tag @e[type=armor_stand,tag=Selection] remove ResidersOff
tag @e[type=armor_stand,tag=Selection,tag=ResidersWasOn] add Residers
tag @e[type=armor_stand,tag=Selection] remove ResidersWasOn
tag @e[type=armor_stand,tag=Selection] remove ChaosOff
tag @e[type=armor_stand,tag=Selection,tag=ChaosWasOn] add Chaos
tag @e[type=armor_stand,tag=Selection] remove ChaosWasOn
tag @e[type=armor_stand,tag=Selection] remove customObsidian
tag @e[type=armor_stand,tag=Selection] remove customSpawn
tag @e[type=armor_stand,tag=Selection] add switchGamemodes
execute if entity @e[type=marker,tag=captureMiddle,limit=1] run kill @e[type=marker,tag=captureMiddle,limit=1]