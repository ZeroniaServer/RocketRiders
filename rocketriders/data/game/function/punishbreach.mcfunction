##Commands run for players who try to breach through to the lobby

execute unless score $nodeathmessages CmdData matches 1 run tellraw @a[x=0] ["",{selector:"@s"}," tried to breach the lobby"]

function custom:game_rules/show_death_messages/off
kill @s
execute unless score $nodeathmessages CmdData matches 1 run function custom:game_rules/show_death_messages/on
