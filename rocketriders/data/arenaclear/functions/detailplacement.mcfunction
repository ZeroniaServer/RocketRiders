#Runs individual detail placement functions depending on initial tags
execute as @s[tag=!noDetailBlue] run function arenaclear:detailplacementblue
execute as @s[tag=!noDetailYellow] run function arenaclear:detailplacementyellow
tag @s remove noDetailBlue
tag @s remove noDetailYellow

#Obsidian placement - Blue and Yellow
fill 14 63 66 10 63 66 minecraft:obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 minecraft:obsidian
setblock 10 63 66 minecraft:obsidian
setblock 12 63 64 minecraft:obsidian
fill 13 65 67 11 65 67 obsidian
setblock 12 66 67 minecraft:obsidian
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
fill 11 65 -67 13 65 -67 obsidian
setblock 12 66 -67 obsidian