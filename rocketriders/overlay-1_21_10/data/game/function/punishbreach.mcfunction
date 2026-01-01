##Commands run for players who try to breach through to the lobby

execute unless score $nodeathmessages CmdData matches 1 run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" tried to breach the lobby"}]

gamerule showDeathMessages false
kill @s
execute unless score $nodeathmessages CmdData matches 1 run gamerule showDeathMessages true
