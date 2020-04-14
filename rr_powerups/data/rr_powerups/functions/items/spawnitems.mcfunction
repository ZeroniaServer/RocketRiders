#Hypersonic
execute as @e[tag=BlueHyper] at @s positioned ~-1 ~-9 ~5 run function items:prestructureblock
execute as @e[tag=BlueHyper] at @s run setblock ~-1 ~-9 ~5 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hypersonic_blue"}
execute as @e[tag=BlueHyper] at @s positioned ~-1 ~-9 ~5 run function items:poststructureblock
execute as @e[tag=BlueHyper] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=BlueHyper] at @s run tp @s ~ ~-200 ~
kill @e[tag=BlueHyper]

execute as @e[tag=YellowHyper] at @s positioned ~-1 ~-9 ~-13 run function items:prestructureblock
execute as @e[tag=YellowHyper] at @s run setblock ~-1 ~-9 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hypersonic_yellow"}
execute as @e[tag=YellowHyper] at @s positioned ~-1 ~-9 ~-13 run function items:poststructureblock
execute as @e[tag=YellowHyper] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow],Duration:2000000000}
execute as @e[tag=YellowHyper] at @s run tp @s ~ ~-200 ~
kill @e[tag=YellowHyper]

#Barricade
execute as @e[tag=BlueBarr] at @s unless block ~ ~ ~ nether_portal run setblock ~ ~ ~ blue_stained_glass
execute as @e[tag=BlueBarr] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[BlueBarricade],Duration:2000000000}
execute as @e[tag=BlueBarr] at @s run tp @s ~ ~-200 ~
kill @e[tag=BlueBarr]

execute as @e[tag=YellowBarr] at @s unless block ~ ~ ~ nether_portal run setblock ~ ~ ~ yellow_stained_glass
execute as @e[tag=YellowBarr] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[YellowBarricade],Duration:2000000000}
execute as @e[tag=YellowBarr] at @s run tp @s ~ ~-200 ~
kill @e[tag=YellowBarr]