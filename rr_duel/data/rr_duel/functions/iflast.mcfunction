#remove join cancel from joinpads
schedule function game:uncancelpads 2t append
tag @e[tag=PlacerClear,type=area_effect_cloud] add Cleared
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run tag @s remove duelLast