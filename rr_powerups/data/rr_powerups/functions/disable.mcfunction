tag @e[x=0,type=armor_stand,tag=Selection] remove powerupsEnabled
tag @e[x=0,type=armor_stand,tag=Selection] remove ResidersOff
tag @e[x=0,type=armor_stand,tag=Selection,tag=ResidersWasOn] add Residers
tag @e[x=0,type=armor_stand,tag=Selection] remove ResidersWasOn
tag @e[x=0,type=armor_stand,tag=Selection] remove ChaosOff
tag @e[x=0,type=armor_stand,tag=Selection,tag=ChaosWasOn] add Chaos
tag @e[x=0,type=armor_stand,tag=Selection] remove ChaosWasOn
tag @e[x=0,type=armor_stand,tag=Selection] remove customObsidian
tag @e[x=0,type=armor_stand,tag=Selection] remove customSpawn
tag @e[x=0,type=armor_stand,tag=Selection] add switchGamemodes
execute if entity @e[x=0,type=marker,tag=captureMiddle,limit=1] run kill @e[x=0,type=marker,tag=captureMiddle,limit=1]