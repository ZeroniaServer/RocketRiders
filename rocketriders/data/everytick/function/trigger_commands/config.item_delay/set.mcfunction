# Get true value
scoreboard players operation @s config.item_delay /= $1000 constant

#Lower limit is 5 seconds
execute if score @s config.item_delay matches ..4 run return run tellraw @s {color:"red",text:"Item Delay cannot be lower than 5 seconds"}

#Upper limit is 30 seconds
execute if score @s config.item_delay matches 31.. run return run tellraw @s {color:"red",text:"Item Delay cannot be higher than 30 seconds"}

#Set new time
scoreboard players operation $item_delay config = @s config.item_delay
execute if score $item_delay config matches 15 run scoreboard players reset $item_delay config
execute store result score @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] MaxItemTime run function game:config/get_item_delay_ticks

#Refresh options signs
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
