#Hypersonic
execute as @e[tag=BlueHyper] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:5,name:"minecraft:hypersonic_blue"}
execute as @e[tag=BlueHyper] at @s run function items:structureblock
execute as @e[tag=BlueHyper] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=BlueHyper] at @s run tp @s ~ ~-200 ~
kill @e[tag=BlueHyper]

execute as @e[tag=YellowHyper] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:-13,name:"minecraft:hypersonic_yellow"}
execute as @e[tag=YellowHyper] at @s run function items:structureblock
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