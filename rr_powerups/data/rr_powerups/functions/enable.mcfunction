tag @e[tag=Selection,type=armor_stand] remove switchGamemodes
tag @e[tag=Selection,type=armor_stand] add powerupsEnabled
tag @e[tag=Selection,type=armor_stand] add ResidersOff
tag @e[tag=Selection,type=armor_stand,tag=Residers] add ResidersWasOn
tag @e[tag=Selection,type=armor_stand] add customObsidian
tag @e[tag=Selection,type=armor_stand] add customSpawn
execute unless entity @e[tag=captureMiddle,limit=1,type=marker] run summon marker 12.5 54.0 0.0 {Tags:["captureMiddle"]}