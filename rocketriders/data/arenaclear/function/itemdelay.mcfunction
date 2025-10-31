##Utility function for changing Item Delay
#Invalid access player warning
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run return run tellraw @s {"text":"You cannot modify the item delay now","color":"red"}

#Lower limit is 5 seconds
execute if score @s MaxItemSec matches ..4 run return run tellraw @s {"text":"You cannot make the item delay lower than 5 seconds","color":"red"}

#Upper limit is 30 seconds
execute if score @s MaxItemSec matches 31.. run return run tellraw @s {"text":"You cannot make the item delay higher than 30 seconds","color":"red"}

#Set new time
execute unless predicate custom:team/any_arena_team run scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemSec = @s MaxItemSec
execute unless predicate custom:team/any_arena_team run scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemTime *= $20 constant

#Refresh options signs
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] run function arenaclear:refreshoptionssigns
