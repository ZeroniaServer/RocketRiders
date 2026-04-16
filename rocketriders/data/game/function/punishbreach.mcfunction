##Commands run for players who try to breach through to the lobby

execute unless predicate game:game_rules/disable_death_messages/on run tellraw @a[x=0] ["",{selector:"@s"}," tried to breach the lobby"]

gamerule minecraft:show_death_messages false
kill @s
execute unless predicate game:game_rules/disable_death_messages/on run gamerule minecraft:show_death_messages true
