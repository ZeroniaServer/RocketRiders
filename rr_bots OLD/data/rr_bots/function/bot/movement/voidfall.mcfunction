#death message
execute unless predicate game:game_rules/disable_death_messages/on run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" fell out of the world"}]

tag @s remove BotRider


#teleport non-spectators
tp @s[tag=BlueBot] 12 64 -66 0 0
tp @s[tag=YellowBot] 12 64 66 -180 0


scoreboard players set @s BotHP 3