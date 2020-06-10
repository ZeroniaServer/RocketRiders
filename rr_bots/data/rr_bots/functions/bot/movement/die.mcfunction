#death message
tellraw @a ["",{"selector":"@s"},{"text":" died"}]

tag @s remove BotRider

#teleport non-spectators
tp @s[tag=BlueBot] 12 64 -66 0 0
tp @s[tag=YellowBot] 12 64 66 -180 0


scoreboard players set @s BotHP 4