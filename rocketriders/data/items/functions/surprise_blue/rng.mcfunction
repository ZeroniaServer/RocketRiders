##RNG starter for selecting a random Blue missile from Surprise Eggs
#Choose between each category
execute if entity @e[tag=Selection,tag=rngHeavy,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueHeavy","surpriseBlue1"]}
execute if entity @e[tag=Selection,tag=rngNormal,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueNormal","surpriseBlue1"]}
execute if entity @e[tag=Selection,tag=rngLightning,type=armor_stand] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueLightning","surpriseBlue1"]}

#Select category and run appropriate sub-RNG function
tag @e[tag=surpriseBlue1,sort=random,limit=1,distance=..1,type=area_effect_cloud] add rngSelected
execute if entity @e[tag=surpriseBlueHeavy,tag=rngSelected,type=area_effect_cloud] run function items:surprise_blue/rngheavy
execute if entity @e[tag=surpriseBlueNormal,tag=rngSelected,type=area_effect_cloud] run function items:surprise_blue/rngnormal
execute if entity @e[tag=surpriseBlueLightning,tag=rngSelected,type=area_effect_cloud] run function items:surprise_blue/rnglightning
kill @s[tag=surprising,type=area_effect_cloud]