execute if predicate game:match_components/has_chase_crystals positioned as @s positioned ~ ~-0.5 ~ as @e[distance=..4,type=minecraft:end_crystal] run data modify entity @s Invulnerable set value false
execute if predicate game:match_components/has_chase_crystals positioned as @s positioned ~ ~-0.5 ~ on origin at @e[distance=..4,type=minecraft:end_crystal] run damage @n[limit=1,distance=..0.1,type=minecraft:end_crystal] 1 minecraft:player_attack by @s
execute if predicate game:match_components/has_chase_crystals positioned as @s positioned ~ ~-0.5 ~ as @e[distance=..4,type=minecraft:end_crystal] run data modify entity @s Invulnerable set value true

execute if predicate game:modifiers/rotting/on as @e[distance=..4,predicate=entities:type/rot/brain] run function entities:type/rot/actions/start_burning

tag @e[distance=..5,predicate=entities:type/canopy] add canopy.burn

kill @s
