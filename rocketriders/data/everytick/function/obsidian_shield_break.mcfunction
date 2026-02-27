##Utility function for clearing Obsidian Shields

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

kill @s
