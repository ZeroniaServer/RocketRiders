#death message
tellraw @a ["",{"selector":"@s"},{"text":" died"}]

tag @s remove BotRider

#teleport non-spectators
execute if entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run tp @s[tag=BlueBot] 12 64 -66 0 0
execute if entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run tp @s[tag=YellowBot] 12 64 66 -180 0
execute unless entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run tp @s[tag=YellowBot] -95 202 94

scoreboard players set @s BotHP 4