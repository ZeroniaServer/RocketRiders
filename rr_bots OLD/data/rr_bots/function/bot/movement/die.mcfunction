#death message
tellraw @a[x=0] ["",{"selector":"@s"},{"text":" died"}]

tag @s remove BotRider

#teleport non-spectators
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted] run tp @s[tag=BlueBot] 12 64 -66 0 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted] run tp @s[tag=YellowBot] 12 64 66 -180 0
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted] run tp @s[tag=YellowBot] -95 202 94

scoreboard players set @s BotHP 4