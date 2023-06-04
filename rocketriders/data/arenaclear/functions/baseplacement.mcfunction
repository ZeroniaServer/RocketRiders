##############################################
## BASEPLACEMENT: Sets bases for next round ##
## General function used by other gamemodes ##
##############################################

#Clear pregame powerup platform and mini platforms and castles
fill -101 195 65 -89 201 64 minecraft:blue_stained_glass
fill -89 201 63 -101 195 62 minecraft:cyan_stained_glass
fill -101 201 60 -89 195 61 minecraft:white_stained_glass
fill -89 195 91 -101 201 92 minecraft:yellow_stained_glass
fill -101 201 93 -89 195 94 minecraft:orange_stained_glass
fill -89 201 95 -101 195 96 minecraft:white_stained_glass
fill -101 195 97 -89 201 97 air
fill -95 201 97 -95 195 97 minecraft:obsidian
setblock -96 195 97 fire
setblock -94 195 97 fire
fill -89 195 59 -101 201 59 air
fill -95 195 59 -95 201 59 minecraft:obsidian
setblock -94 195 59 fire
setblock -96 195 59 fire
fill -89 200 72 -101 202 85 air

fill -92 200 81 -98 200 75 air
fill -94 203 57 -96 203 55 air
fill -96 203 99 -94 203 101 air
fill -101 202 60 -89 202 96 air
fill -101 200 85 -99 202 85 air
fill -91 200 85 -89 202 85 air
fill -101 200 85 -99 202 84 air
fill -91 200 85 -89 202 84 air
fill -89 200 71 -101 201 72 air

#Clear some more decorations
fill -14 64 -66 38 80 -52 air
fill 38 48 -51 -14 63 -28 air
fill -14 33 -51 38 48 -31 air
fill 38 64 52 -14 80 66 air
fill -14 48 51 38 63 28 air
fill 38 33 51 -14 47 29 air

#Clear crystal crafters
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] captureBlue
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] captureYellow
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] capturePoint
fill 13 63 67 10 66 71 air
fill 13 63 -67 10 66 -71 air
fill 14 63 67 10 66 71 air
fill -14 63 67 10 66 -71 air

#Set Yellow Base
fill -14 34 52 38 63 56 minecraft:yellow_stained_glass replace #custom:basereplace
fill 38 63 57 -14 34 61 minecraft:orange_stained_glass replace #custom:basereplace
fill -14 34 66 38 63 62 white_stained_glass replace #custom:basereplace
fill -15 64 67 -15 33 67 minecraft:obsidian replace #custom:basereplace
fill -15 33 67 39 33 67 minecraft:obsidian replace #custom:basereplace
fill 39 33 67 39 64 67 minecraft:obsidian replace #custom:basereplace
fill 39 64 67 -15 64 67 minecraft:obsidian replace #custom:basereplace

#Set Blue Base
fill -14 34 -52 38 63 -56 blue_stained_glass replace #custom:basereplace
fill 38 63 -61 -14 34 -57 minecraft:cyan_stained_glass replace #custom:basereplace
fill -14 34 -62 38 63 -66 minecraft:white_stained_glass replace #custom:basereplace
fill 39 64 -67 -15 64 -67 minecraft:obsidian replace #custom:basereplace
fill -15 64 -67 -15 33 -67 minecraft:obsidian replace #custom:basereplace
fill -15 33 -67 39 33 -67 minecraft:obsidian replace #custom:basereplace
fill 39 33 -67 39 64 -67 minecraft:obsidian replace #custom:basereplace

#Set portals
execute unless entity @s[tag=noPortal] run function arenaclear:placeportals

#Remove fire
fill 39 64 67 -15 67 67 air replace fire
fill 39 64 67 -15 67 67 air replace fire

##Extra stuff for Modifiers
#Molerat
execute if entity @s[tag=Molerat] run function arenaclear:moleratplace
execute if entity @s[tag=!Molerat,tag=WasMolerat] run function arenaclear:moleratclear

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
scoreboard players set $barriers CmdData 79

tag @s add EditedSettings

##Remove blocks in front of portals (extra precaution)
fill -14 63 67 38 34 73 cave_air
fill -14 63 -67 38 34 -73 cave_air

##Stop all sounds
# execute as @a[x=0] run function everytick:stopsounds