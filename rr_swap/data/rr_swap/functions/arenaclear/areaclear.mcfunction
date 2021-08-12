#Reset pregame queue
execute if entity @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=!Hardcore] run fill -89 201 96 -101 195 95 white_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=!Hardcore] run fill -89 201 94 -101 195 93 orange_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=!Hardcore] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=!Hardcore] run fill -89 201 60 -101 195 61 white_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=!Hardcore] run fill -89 201 62 -101 195 63 cyan_stained_glass
execute if entity @e[type=armor_stand,tag=Selection,tag=!swapEnabled,tag=!Hardcore] run fill -89 201 65 -101 195 64 blue_stained_glass

execute as @e[type=armor_stand,tag=Selection] run function rr_swap:items/darktetrisreset
execute as @e[type=armor_stand,tag=Selection] run function rr_swap:items/lighttetrisreset
scoreboard players reset * swapside

#ICBM reset
kill @e[type=egg,tag=ICBM]
kill @e[type=marker,tag=ICBMtracker]
kill @e[type=chicken]
scoreboard players reset $highest ICBMID
scoreboard players reset $tptracker ICBMID
scoreboard players reset $numeggs ICBMID