##Utility function for changing Tie Window

#Invalid access player warning
execute unless predicate game:phase/staging/configuration run return run tellraw @s {"text":"You cannot modify Tie Window now","color":"red"}
execute if predicate custom:team/any_arena_team run return run tellraw @s {"text":"You cannot modify Tie Window while on a team","color":"red"}

#Lower limit is 0 seconds
execute if score @s set_tie_window matches ..-1 run return run tellraw @s {"text":"Tie Window cannot be lower than 0 seconds","color":"red"}

#Upper limit is 10 seconds
execute if score @s set_tie_window matches 11.. run return run tellraw @s {"text":"Tie Window cannot be higher than 10 seconds","color":"red"}

#Set new time
scoreboard players operation $tie_window_length config = @s set_tie_window
execute if score $tie_window_length config matches 0 run scoreboard players set $tie_window_length config -1
execute if score $tie_window_length config matches 5 run scoreboard players reset $tie_window_length config

#Refresh options signs
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
