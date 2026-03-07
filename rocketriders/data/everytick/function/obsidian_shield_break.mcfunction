##Utility function for clearing Obsidian Shields

kill @s

execute positioned ~-4.001 ~-4.001 ~-0.001 as @e[dx=8.002,dy=8.002,dz=0,type=marker,tag=obsidianshield] at @s run function everytick:obsidian_shield_break_preserve

execute positioned ~-1 ~2 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~2 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~2 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~-2 ~1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~2 ~1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~-2 ~ ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~ ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~ ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~ ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~2 ~ ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~-2 ~-1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~-1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~-1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-1 ~-1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~2 ~-1 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~-1 ~-2 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~-2 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~1 ~-2 ~ if predicate custom:strictly_below_roof_blocks if block ~ ~ ~ #custom:glasspane run setblock ~ ~ ~ minecraft:air destroy

execute positioned ~-4.001 ~-4.001 ~-0.001 as @e[dx=8.002,dy=8.002,dz=0,type=marker,tag=obsidianshield] at @s run function everytick:obsidian_shield_break_revert
