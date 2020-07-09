tag @e[tag=Selection,type=armor_stand] remove switchGamemodes
tag @e[tag=Selection,type=armor_stand] add powerupsEnabled
tag @e[tag=Selection,type=armor_stand] add ResidersOff
tag @e[tag=Selection,type=armor_stand] add customPrevention
tag @e[tag=Selection,type=armor_stand] remove Residers
execute unless entity @e[tag=captureMiddle,limit=1,type=area_effect_cloud] run summon area_effect_cloud 12.5 54.0 0.0 {Tags:["captureMiddle"],Duration:2000000000}