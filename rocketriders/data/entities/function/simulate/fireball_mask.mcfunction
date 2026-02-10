execute unless predicate game:phase/match run return 0

execute as @e[x=0,type=interaction,predicate=entities:type/fireball_mask/mount] at @s run function entities:type/fireball_mask/tick
