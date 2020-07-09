##Utility function for changing Item Delay
#Add new time
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[tag=Selection,tag=!EditedSettings,type=armor_stand] MaxItemSec += @s MaxItemSec

#Lower limit is 5 seconds
execute if entity @e[tag=Selection,scores={MaxItemSec=..4},type=armor_stand] run tellraw @s {"text":"You cannot make item delay too low","color":"red"}
scoreboard players set @e[tag=Selection,scores={MaxItemSec=..4},type=armor_stand] MaxItemSec 5

#Upper limit is 30 seconds
execute if entity @e[tag=Selection,scores={MaxItemSec=31..},type=armor_stand] run tellraw @s {"text":"You cannot make item delay too high","color":"red"}
scoreboard players set @e[tag=Selection,scores={MaxItemSec=31..},type=armor_stand] MaxItemSec 30

#Set new time
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[tag=Selection,tag=!EditedSettings,type=armor_stand] MaxItemTime = @e[tag=Selection,tag=!EditedSettings,type=armor_stand] MaxItemSec
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[tag=Selection,tag=!EditedSettings,type=armor_stand] MaxItemTime *= 20 MaxItemSec

#Invalid access player warning
execute if entity @e[tag=Selection,tag=EditedSettings,type=armor_stand] run tellraw @s {"text":"You cannot modify item delay now","color":"red"}