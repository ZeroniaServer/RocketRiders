##Utility function for changing Item Delay
#Add new time
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemSec += @s MaxItemSec

#Lower limit is 5 seconds
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,scores={MaxItemSec=..4}] run tellraw @s {"text":"You cannot make item delay too low","color":"red"}
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,scores={MaxItemSec=..4}] MaxItemSec 5

#Upper limit is 30 seconds
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,scores={MaxItemSec=31..}] run tellraw @s {"text":"You cannot make item delay too high","color":"red"}
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,scores={MaxItemSec=31..}] MaxItemSec 30

#Set new time
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemTime = @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemSec
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] MaxItemTime *= 20 MaxItemSec

#Refresh options signs
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed,tag=!EditedSettings] run function arenaclear:refreshoptionssigns

#Invalid access player warning
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run tellraw @s {"text":"You cannot modify item delay now","color":"red"}