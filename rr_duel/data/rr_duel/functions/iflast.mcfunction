execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove duelLast
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=!Cleared] if data storage rocketriders:storage Tags summon marker run function rr_duel:clearlast
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared