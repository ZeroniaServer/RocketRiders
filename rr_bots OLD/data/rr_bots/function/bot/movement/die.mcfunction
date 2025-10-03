#death message
execute unless score $nodeathmessages CmdData matches 1 run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" died"}]

tag @s remove BotRider

#teleport non-spectators
execute if predicate game:match_in_play run tp @s[tag=BlueBot] 12 64 -66 0 0
execute if predicate game:match_in_play run tp @s[tag=YellowBot] 12 64 66 -180 0
execute unless predicate game:match_in_play run tp @s[tag=YellowBot] -95 202 94

scoreboard players set @s BotHP 4