##RNG starter for selecting a random Blue missile from Surprise Eggs
#Choose between each category
execute if entity @e[tag=Selection,tag=rngHeavy] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueHeavy","surpriseBlue1"]}
execute if entity @e[tag=Selection,tag=rngNormal] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueNormal","surpriseBlue1"]}
execute if entity @e[tag=Selection,tag=rngLightning] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseBlueLightning","surpriseBlue1"]}

#Select category and run appropriate sub-RNG function
tag @e[tag=surpriseBlue1,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=surpriseBlueHeavy,tag=rngSelected] run function items:surprise_blue/rngheavy
execute if entity @e[tag=surpriseBlueNormal,tag=rngSelected] run function items:surprise_blue/rngnormal
execute if entity @e[tag=surpriseBlueLightning,tag=rngSelected] run function items:surprise_blue/rnglightning
kill @s[tag=surprising]