#########################################
## DETAIL PLACEMENT: The core function ##
## for placing selected Base Details   ##
#########################################

#Runs individual detail placement functions depending on initial tags
execute as @s[tag=!Hardcore,tag=!noDetailBlue] run function arenaclear:detailplacementblue
execute as @s[tag=!Hardcore,tag=!noDetailYellow] run function arenaclear:detailplacementyellow
tag @s remove noDetailBlue
tag @s remove noDetailYellow

#Portal detail - Blue
execute as @s[scores={PortalDeco=1},tag=!portalDecosOff] run fill -11 59 -74 35 36 -74 blue_stained_glass_pane[east=true,west=true] replace air
execute as @s[scores={PortalDeco=2},tag=!portalDecosOff] run fill -11 59 -73 35 36 -75 blue_stained_glass replace air
execute as @s[scores={PortalDeco=3},tag=!portalDecosOff] run fill -11 59 -73 35 36 -75 end_stone replace air
execute as @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill -11 59 -73 34 36 -75 obsidian replace air
execute as @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 1 48 -73 1 47 -73 air
execute as @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 23 48 -73 23 47 -73 air

#Portal detail - Yellow
execute as @s[scores={PortalDeco=1},tag=!portalDecosOff] run fill -11 59 74 35 36 74 yellow_stained_glass_pane[east=true,west=true] replace air
execute as @s[scores={PortalDeco=2},tag=!portalDecosOff] run fill -11 59 73 35 36 75 yellow_stained_glass replace air
execute as @s[scores={PortalDeco=3},tag=!portalDecosOff] run fill -11 59 73 35 36 75 end_stone replace air
execute as @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill -11 59 73 34 36 75 obsidian replace air
execute as @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 1 48 73 1 47 73 air
execute as @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 23 48 73 23 47 73 air

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