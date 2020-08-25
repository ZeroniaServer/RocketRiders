##Commands run for players who try to breach through to the lobby
tellraw @a ["",{"selector":"@s"},{"text":" tried to breach the lobby"}]
effect give @s poison 4 255 true
execute unless entity @e[tag=Selection,type=armor_stand,tag=customSpawns] run tp @s[team=Blue] 12 64 -66 0 0
execute unless entity @e[tag=Selection,type=armor_stand,tag=customSpawns] run tp @s[team=Yellow] 12 64 66 -180 0
scoreboard players add @s[team=!Spectator] deaths 1
scoreboard players add @s[team=!Spectator] death 1