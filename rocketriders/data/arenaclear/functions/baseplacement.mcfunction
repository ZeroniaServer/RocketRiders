##############################################
## BASEPLACEMENT: Sets bases for next round ##
## General function used by other gamemodes ##
##############################################

#Clear some more decorations
fill -14 64 -66 38 80 -52 air
fill 38 48 -51 -14 63 -28 air
fill -14 33 -51 38 48 -31 air
fill 38 64 52 -14 80 66 air
fill -14 48 51 38 63 28 air
fill 38 33 51 -14 47 29 air

#Set Yellow Base
fill -14 34 52 38 63 56 minecraft:yellow_stained_glass replace #custom:basereplace
fill 38 63 57 -14 34 61 minecraft:orange_stained_glass replace #custom:basereplace
fill -14 34 66 38 63 62 white_stained_glass replace #custom:basereplace
fill -15 64 67 -15 33 67 minecraft:obsidian replace #custom:basereplace
fill -15 33 67 39 33 67 minecraft:obsidian replace #custom:basereplace
fill 39 33 67 39 64 67 minecraft:obsidian replace #custom:basereplace
fill 39 64 67 -15 64 67 minecraft:obsidian replace #custom:basereplace
fill -10 58 74 34 58 74 minecraft:obsidian replace #custom:basereplace
fill 34 58 74 34 37 74 minecraft:obsidian replace #custom:basereplace
fill 34 37 74 -10 37 74 minecraft:obsidian replace #custom:basereplace
fill 12 37 74 12 58 74 minecraft:obsidian replace #custom:basereplace
fill -10 37 74 -10 58 74 minecraft:obsidian replace #custom:basereplace

#Set Blue Base
fill -14 34 -52 38 63 -56 blue_stained_glass replace #custom:basereplace
fill 38 63 -61 -14 34 -57 minecraft:cyan_stained_glass replace #custom:basereplace
fill -14 34 -62 38 63 -66 minecraft:white_stained_glass replace #custom:basereplace
fill 39 64 -67 -15 64 -67 minecraft:obsidian replace #custom:basereplace
fill -15 64 -67 -15 33 -67 minecraft:obsidian replace #custom:basereplace
fill -15 33 -67 39 33 -67 minecraft:obsidian replace #custom:basereplace
fill 39 33 -67 39 64 -67 minecraft:obsidian replace #custom:basereplace
fill 34 58 -74 -10 58 -74 minecraft:obsidian replace #custom:basereplace
fill -10 58 -74 -10 37 -74 minecraft:obsidian replace #custom:basereplace
fill -10 37 -74 34 37 -74 minecraft:obsidian replace #custom:basereplace
fill 12 37 -74 12 58 -74 minecraft:obsidian replace #custom:basereplace
fill 34 37 -74 34 58 -74 minecraft:obsidian replace #custom:basereplace

#Set portals
fill 13 38 -74 11 38 -74 air replace fire
fill 11 38 -74 11 38 -74 air replace fire
fill 13 38 -74 11 38 -74 fire replace air
fill 11 38 -74 11 38 -74 fire replace air
fill 13 38 74 11 38 74 air replace fire
fill 11 38 74 11 38 74 air replace fire
fill 13 38 74 11 38 74 fire replace air
fill 11 38 74 11 38 74 fire replace air

##Extra stuff for Modifiers
#Molerat
execute if entity @s[tag=Molerat] run function arenaclear:moleratplace

#Hardcore
execute if entity @s[tag=Hardcore] run fill 38 63 63 -14 34 52 air
execute if entity @s[tag=Hardcore] run fill -14 63 66 38 34 66 white_stained_glass
execute if entity @s[tag=Hardcore] run fill -14 63 65 38 34 65 orange_stained_glass
execute if entity @s[tag=Hardcore] run fill -14 63 64 38 34 64 yellow_stained_glass
execute if entity @s[tag=Hardcore] run fill 38 63 -63 -14 34 -52 air
execute if entity @s[tag=Hardcore] run fill -14 63 -66 38 34 -66 white_stained_glass
execute if entity @s[tag=Hardcore] run fill -14 63 -65 38 34 -65 cyan_stained_glass
execute if entity @s[tag=Hardcore] run fill -14 63 -64 38 34 -64 blue_stained_glass

#Hardcore pregame queue
execute if entity @s[tag=Hardcore] run fill -89 201 63 -101 195 65 air
execute if entity @s[tag=Hardcore] run fill -89 201 93 -101 195 91 air
execute if entity @s[tag=Hardcore] run fill -89 201 62 -101 195 62 blue_stained_glass
execute if entity @s[tag=Hardcore] run fill -89 201 61 -101 195 61 cyan_stained_glass
execute if entity @s[tag=Hardcore] run fill -89 201 60 -101 195 60 white_stained_glass
execute if entity @s[tag=Hardcore] run fill -89 201 94 -101 195 94 yellow_stained_glass
execute if entity @s[tag=Hardcore] run fill -89 201 95 -101 195 95 orange_stained_glass
execute if entity @s[tag=Hardcore] run fill -89 201 96 -101 195 96 white_stained_glass
tag @s[tag=Hardcore,tag=!WasHardcore] add WasHardcore

#Reset hardcore pregame queue
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run fill -89 201 96 -101 195 95 white_stained_glass
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run fill -89 201 94 -101 195 93 orange_stained_glass
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run fill -89 201 91 -101 195 92 yellow_stained_glass
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run fill -89 201 60 -101 195 61 white_stained_glass
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run fill -89 201 62 -101 195 63 cyan_stained_glass
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run fill -89 201 65 -101 195 64 blue_stained_glass
execute if entity @s[tag=!Hardcore,tag=WasHardcore] run tag @s remove WasHardcore

##Reset team balance stuff
tag @s[tag=!onlyBlue] remove YellowFull
tag @s[tag=!onlyBlue] remove YellowCapOverride
tag @s remove BlueFull
tag @s remove BlueCapOverride