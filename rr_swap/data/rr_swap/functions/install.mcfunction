execute unless entity @e[tag=rr_swap,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_swap"],Marker:1b}

scoreboard objectives add swapside dummy
execute unless entity @e[tag=RNGSwap1,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap1","RNGSwap"]}
execute unless entity @e[tag=RNGSwap2,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap2","RNGSwap"]}
execute unless entity @e[tag=RNGSwap3,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap3","RNGSwap"]}
execute unless entity @e[tag=RNGSwap4,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap4","RNGSwap"]}
execute unless entity @e[tag=RNGSwap5,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap5","RNGSwap"]}
execute unless entity @e[tag=RNGSwap6,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap6","RNGSwap"]}
execute unless entity @e[tag=RNGSwap7,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap7","RNGSwap"]}
execute unless entity @e[tag=RNGSwap8,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap8","RNGSwap"]}
execute unless entity @e[tag=RNGSwap9,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["RNGSwap9","RNGSwap"]}

execute if entity @e[tag=rr_swap,limit=1] run tellraw @s {"text":"Swap mode installed.","color":"green","bold":"true"}