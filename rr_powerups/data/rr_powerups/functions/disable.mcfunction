tag @e[tag=Selection,type=armor_stand] remove powerupsEnabled
tag @e[tag=Selection,type=armor_stand] remove ResidersOff
tag @e[tag=Selection,type=armor_stand,tag=ResidersWasOn] add Residers
tag @e[tag=Selection,type=armor_stand] remove ResidersWasOn
tag @e[tag=Selection,type=armor_stand] remove customObsidian
tag @e[tag=Selection,type=armor_stand] remove customSpawn
tag @e[tag=Selection,type=armor_stand] add switchGamemodes
execute if entity @e[tag=captureMiddle,limit=1,type=marker] run kill @e[tag=captureMiddle,limit=1,type=marker]