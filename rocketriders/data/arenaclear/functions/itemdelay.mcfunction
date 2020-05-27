#add new time
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[tag=Selection,tag=!EditedSettings] MaxItemSec += @s MaxItemSec

#lower limit is 5 seconds
execute if entity @e[tag=Selection,scores={MaxItemSec=..4}] run tellraw @s {"text":"You cannot make item delay too low","color":"red"}
scoreboard players set @e[tag=Selection,scores={MaxItemSec=..4}] MaxItemSec 5

#upper limit is 120 seconds
execute if entity @e[tag=Selection,scores={MaxItemSec=121..}] run tellraw @s {"text":"You cannot make item delay too high","color":"red"}
scoreboard players set @e[tag=Selection,scores={MaxItemSec=121..}] MaxItemSec 120

#set new time
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[tag=Selection,tag=!EditedSettings] MaxItemTime = @e[tag=Selection,tag=!EditedSettings] MaxItemSec
execute if entity @s[team=!Yellow,team=!Blue,team=!Spectator] run scoreboard players operation @e[tag=Selection,tag=!EditedSettings] MaxItemTime *= 20 MaxItemSec

#invalid access player warning
execute if entity @e[tag=Selection,tag=EditedSettings] run tellraw @s {"text":"You cannot modify item delay now","color":"red"}