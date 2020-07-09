execute as @e[type=area_effect_cloud,tag=SmartClearScaf] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace scaffolding
kill @e[type=area_effect_cloud,tag=SmartClearScaf]

#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin