execute at @s unless entity @a[predicate=custom:indimension,distance=..5] if block ~ ~ ~ #custom:air run setblock ~ ~ ~ end_stone
tp @s ~ ~-1 ~
execute at @s unless predicate rr_ctf:endstoney run function rr_ctf:everytick/endstoneregen