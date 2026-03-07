fill ~-2 ~-2 ~ ~2 ~2 ~ minecraft:crying_obsidian replace minecraft:resin_block strict

execute if score @s breakobshield matches 0 run setblock ~ ~ ~ minecraft:purple_stained_glass_pane[east=true,north=false,south=false,west=true]
execute if score @s breakobshield matches 2 run setblock ~ ~ ~ minecraft:magenta_stained_glass_pane[east=true,north=false,south=false,west=true]
execute if score @s breakobshield matches 4 run setblock ~ ~ ~ minecraft:pink_stained_glass_pane[east=true,north=false,south=false,west=true]
