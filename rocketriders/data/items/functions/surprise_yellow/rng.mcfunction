##RNG starter for selecting a random Yellow missile from Surprise Eggs
#Choose between each category
execute if entity @e[tag=Selection,tag=rngHeavy] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowHeavy","surpriseYellow1"]}
execute if entity @e[tag=Selection,tag=rngNormal] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowNormal","surpriseYellow1"]}
execute if entity @e[tag=Selection,tag=rngLightning] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["surpriseYellowLightning","surpriseYellow1"]}

#Select category and run appropriate sub-RNG function
tag @e[tag=surpriseYellow1,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[tag=surpriseYellowHeavy,tag=rngSelected] run function items:surprise_yellow/rngheavy
execute if entity @e[tag=surpriseYellowNormal,tag=rngSelected] run function items:surprise_yellow/rngnormal
execute if entity @e[tag=surpriseYellowLightning,tag=rngSelected] run function items:surprise_yellow/rnglightning
kill @s[tag=surprising]