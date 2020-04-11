tellraw @a ["",{"selector":"@s"},{"text":" tried to breach the lobby"}]
effect give @s poison 4 255 true
tp @s[team=Blue] 12 64 -66 0 0 
tp @s[team=Yellow] 12 64 66 -180 0
scoreboard players add @s[team=!Spectator] deaths 1