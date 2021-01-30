#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin
tag @e[tag=PlacerClear,type=area_effect_cloud] add Cleared
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run tag @s remove duelLast