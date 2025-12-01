##Utility function for changing Item Delay

#Invalid access player warning
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run return run tellraw @s {"text":"You cannot modify Item Delay now","color":"red"}
execute if predicate custom:team/any_arena_team run return run tellraw @s {"text":"You cannot modify Item Delay while on a team","color":"red"}

#Lower limit is 5 seconds
execute if score @s set_item_delay matches ..4 run return run tellraw @s {"text":"Item Delay cannot be lower than 5 seconds","color":"red"}

#Upper limit is 30 seconds
execute if score @s set_item_delay matches 31.. run return run tellraw @s {"text":"Item Delay cannot be higher than 30 seconds","color":"red"}

#Set new time
scoreboard players operation $item_delay config = @s set_item_delay
execute store result score @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemTime run function game:config/get_item_delay_ticks

#Refresh options signs
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] run function arenaclear:refreshoptionssigns
