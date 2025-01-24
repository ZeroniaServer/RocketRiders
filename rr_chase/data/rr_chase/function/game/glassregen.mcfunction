execute at @s unless entity @a[distance=..5] if block ~ ~ ~ #custom:air run setblock ~ ~ ~ white_stained_glass
tp @s ~ ~-1 ~
execute at @s unless predicate rr_chase:regeny run function rr_chase:game/glassregen