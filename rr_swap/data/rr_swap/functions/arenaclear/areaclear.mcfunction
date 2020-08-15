#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin

#Reset pregame queue
execute if entity @e[tag=Selection,tag=!swapEnabled,type=armor_stand] run fill -89 201 96 -101 195 96 white_stained_glass
execute if entity @e[tag=Selection,tag=!swapEnabled,type=armor_stand] run fill -89 201 94 -101 195 95 orange_stained_glass
execute if entity @e[tag=Selection,tag=!swapEnabled,type=armor_stand] run fill -89 201 91 -101 195 93 yellow_stained_glass
execute if entity @e[tag=Selection,tag=!swapEnabled,type=armor_stand] run fill -89 201 60 -101 195 60 white_stained_glass
execute if entity @e[tag=Selection,tag=!swapEnabled,type=armor_stand] run fill -89 201 62 -101 195 61 cyan_stained_glass
execute if entity @e[tag=Selection,tag=!swapEnabled,type=armor_stand] run fill -89 201 65 -101 195 63 blue_stained_glass

execute as @e[tag=Selection,type=armor_stand] run function rr_swap:items/darktetrisreset
execute as @e[tag=Selection,type=armor_stand] run function rr_swap:items/lighttetrisreset