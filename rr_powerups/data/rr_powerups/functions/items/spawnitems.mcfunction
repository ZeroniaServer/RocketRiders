#Barricade
execute as @e[tag=BlueBarr] at @s unless block ~ ~ ~ nether_portal run setblock ~ ~ ~ blue_stained_glass
execute as @e[tag=BlueBarr] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[BlueBarricade],Duration:2000000000}
execute as @e[tag=BlueBarr] at @s run tp @s ~ ~-200 ~
kill @e[tag=BlueBarr]

execute as @e[tag=YellowBarr] at @s unless block ~ ~ ~ nether_portal run setblock ~ ~ ~ yellow_stained_glass
execute as @e[tag=YellowBarr] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[YellowBarricade],Duration:2000000000}
execute as @e[tag=YellowBarr] at @s run tp @s ~ ~-200 ~
kill @e[tag=YellowBarr]