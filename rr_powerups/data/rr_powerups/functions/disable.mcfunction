tag @e[tag=Selection,type=armor_stand] remove powerupsEnabled
tag @e[tag=Selection,type=armor_stand] remove ResidersOff
tag @e[tag=Selection,type=armor_stand] remove customPrevention
tag @e[tag=Selection,type=armor_stand] add switchGamemodes
execute if entity @e[tag=captureMiddle,limit=1,type=area_effect_cloud] run kill @e[tag=captureMiddle,limit=1,type=area_effect_cloud]