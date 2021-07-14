tag @e[type=armor_stand,tag=Selection] remove switchGamemodes
tag @e[type=armor_stand,tag=Selection] add powerupsEnabled
tag @e[type=armor_stand,tag=Selection] add ResidersOff
tag @e[type=armor_stand,tag=Selection,tag=Residers] add ResidersWasOn
tag @e[type=armor_stand,tag=Selection] add customObsidian
tag @e[type=armor_stand,tag=Selection] add customSpawn
execute unless entity @e[type=marker,tag=captureMiddle,limit=1] run summon marker 12.5 54.0 0.0 {Tags:["captureMiddle"]}