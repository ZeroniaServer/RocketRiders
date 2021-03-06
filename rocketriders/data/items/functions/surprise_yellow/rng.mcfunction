##RNG starter for selecting a random Yellow missile from Surprise Eggs
#Choose between each category
execute if entity @e[tag=Selection,tag=rngHeavy,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowHeavy","surpriseYellow1"]}
execute if entity @e[tag=Selection,tag=rngNormal,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowNormal","surpriseYellow1"]}
execute if entity @e[tag=Selection,tag=rngLightning,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowLightning","surpriseYellow1"]}

#Select category and run appropriate sub-RNG function
tag @e[tag=surpriseYellow1,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=surpriseYellowHeavy,tag=rngSelected,type=marker] run function items:surprise_yellow/rngheavy
execute if entity @e[tag=surpriseYellowNormal,tag=rngSelected,type=marker] run function items:surprise_yellow/rngnormal
execute if entity @e[tag=surpriseYellowLightning,tag=rngSelected,type=marker] run function items:surprise_yellow/rnglightning