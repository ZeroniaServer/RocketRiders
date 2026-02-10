execute positioned as @s positioned ~ ~-0.5 ~ as @e[distance=..4,type=minecraft:end_crystal] run data modify entity @s Invulnerable set value false
execute positioned as @s positioned ~ ~-0.5 ~ on origin at @e[distance=..4,type=minecraft:end_crystal] run damage @n[limit=1,distance=..0.1,type=minecraft:end_crystal] 1 minecraft:player_attack by @s
execute positioned as @s positioned ~ ~-0.5 ~ as @e[distance=..4,type=minecraft:end_crystal] run data modify entity @s Invulnerable set value true

kill @s
