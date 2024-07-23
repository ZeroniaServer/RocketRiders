tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove powerupsEnabled
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ResidersOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ResidersWasOn] add Residers
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ResidersWasOn
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ChaosOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ChaosWasOn] add Chaos
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ChaosWasOn
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customObsidian
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customSpawn
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add switchGamemodes
execute if entity @e[x=0,type=marker,tag=captureMiddle,limit=1] run kill @e[x=0,type=marker,tag=captureMiddle,limit=1]