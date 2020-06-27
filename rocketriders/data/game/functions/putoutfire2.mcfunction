##Removes water from calls to putoutfire
execute as @e[tag=placedWater] at @s run fill ~ ~ ~ ~ ~ ~ air replace water
kill @e[tag=placedWater]