##RNG starter for selecting a random Yellow missile from Surprise Eggs
#Choose between each category
execute unless predicate game:item_pool/__all_heavy_missiles_disabled run summon marker ~ ~ ~ {Tags:["surpriseYellowHeavy","surpriseYellow1"]}
execute unless predicate game:item_pool/__all_normal_missiles_disabled run summon marker ~ ~ ~ {Tags:["surpriseYellowNormal","surpriseYellow1"]}
execute unless predicate game:item_pool/__all_lightning_missiles_disabled run summon marker ~ ~ ~ {Tags:["surpriseYellowLightning","surpriseYellow1"]}
execute if predicate game:modifiers/special_treatment/on run summon marker ~ ~ ~ {Tags:["surpriseYellowSpecial","surpriseYellow1"]}

#Select category and run appropriate sub-RNG function
tag @e[type=marker,tag=surpriseYellow1,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=surpriseYellowHeavy,tag=rngSelected] run function items:surprise_yellow/rngheavy
execute if entity @e[x=0,type=marker,tag=surpriseYellowNormal,tag=rngSelected] run function items:surprise_yellow/rngnormal
execute if entity @e[x=0,type=marker,tag=surpriseYellowLightning,tag=rngSelected] run function items:surprise_yellow/rnglightning
execute if entity @e[x=0,type=marker,tag=surpriseYellowSpecial,tag=rngSelected] run function items:surprise_yellow/rngspecial