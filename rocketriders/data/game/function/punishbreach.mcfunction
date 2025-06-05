##Commands run for players who try to breach through to the lobby
execute unless score $nodeathmessages CmdData matches 1 if entity @s[team=Blue,nbt={respawn:{pos:[I;12,64,-66]}}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" tried to breach the lobby"}]
execute unless score $nodeathmessages CmdData matches 1 if entity @s[team=Yellow,nbt={respawn:{pos:[I;12,64,66]}}] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" tried to breach the lobby"}]
execute if entity @s[team=Blue,nbt={respawn:{pos:[I;12,64,-66]}}] run effect give @s poison 4 100 true
execute if entity @s[team=Yellow,nbt={respawn:{pos:[I;12,64,66]}}] run effect give @s poison 4 100 true
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customSpawns] run tp @s[team=Blue] 12 64 -66 0 0
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=customSpawns] run tp @s[team=Yellow] 12 64 66 -180 0
scoreboard players add @s[team=Blue,nbt={respawn:{pos:[I;12,64,-66]}}] deaths 1
scoreboard players add @s[team=Yellow,nbt={respawn:{pos:[I;12,64,66]}}] deaths 1
