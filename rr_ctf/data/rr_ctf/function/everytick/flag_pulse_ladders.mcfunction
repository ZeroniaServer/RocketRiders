execute positioned ~3 ~ ~ if block ~ ~ ~ minecraft:water[level=0] if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=east,waterlogged=true] strict
execute positioned ~3 ~ ~ if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~3 ~ ~ if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=east] strict

execute positioned ~-3 ~ ~ if block ~ ~ ~ minecraft:water[level=0] if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=west,waterlogged=true] strict
execute positioned ~-3 ~ ~ if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~-3 ~ ~ if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=west] strict

execute positioned ~ ~ ~3 if block ~ ~ ~ minecraft:water[level=0] if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=south,waterlogged=true] strict
execute positioned ~ ~ ~3 if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~ ~3 if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=south] strict

execute positioned ~ ~ ~-3 if block ~ ~ ~ minecraft:water[level=0] if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=north,waterlogged=true] strict
execute positioned ~ ~ ~-3 if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:air destroy
execute positioned ~ ~ ~-3 if block ~ ~ ~ #custom:flag_supports_replaceable if block ~ ~1 ~ minecraft:ladder run setblock ~ ~ ~ minecraft:ladder[facing=north] strict
