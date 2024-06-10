########################################################################
## ANTIGRIEF: Detects and prevents missiles from spawning at own base ##
## if the position is occupied by another missile or well within base ##
########################################################################

##Individual missile detection
#Auxiliary
execute if entity @s[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~10 void_air
execute if entity @s[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~10 void_air
execute if entity @s[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:antigrief_yellow force

#TomaTwo
execute if entity @s[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute if entity @s[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute if entity @s[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief_yellow force

#Chronullifier
execute if entity @s[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~1 ~2 ~8 void_air
execute if entity @s[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 175 ~-12 store result score @s Volume run fill ~ ~ ~ ~1 ~2 ~8 void_air
execute if entity @s[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:antigrief_yellow force

#Warhead
execute if entity @s[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute if entity @s[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute if entity @s[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief_yellow force

#Thunderbolt
execute if entity @s[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~9 void_air
execute if entity @s[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~9 void_air
execute if entity @s[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:antigrief_yellow force

#Hurricane
execute if entity @s[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute if entity @s[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~8 void_air
execute if entity @s[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:antigrief_yellow force

#Elder Guardian
execute if entity @s[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute if entity @s[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~10 void_air
execute if entity @s[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:antigrief_yellow force

#A.N.T.
execute if entity @s[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ 175 ~4 store result score @s Volume run fill ~ ~ ~ ~ ~3 ~6 void_air
execute if entity @s[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ 175 ~-10 store result score @s Volume run fill ~ ~ ~ ~ ~3 ~6 void_air
execute if entity @s[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:antigrief_yellow force

#Blade
execute if entity @s[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~14 void_air
execute if entity @s[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 175 ~-18 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~14 void_air
execute if entity @s[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:antigrief_yellow force

#Rifter
execute if entity @s[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~13 void_air
execute if entity @s[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 175 ~-17 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~13 void_air
execute if entity @s[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:antigrief_yellow force

#Juggerbuster
execute if entity @s[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~16 void_air
execute if entity @s[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 175 ~-20 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~16 void_air
execute if entity @s[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:antigrief_yellow force

#Slasher
execute if entity @s[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~12 void_air
execute if entity @s[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~ ~ ~ ~2 ~3 ~12 void_air
execute if entity @s[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:antigrief_yellow force

#Catapult
execute if entity @s[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute if entity @s[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute if entity @s[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief_yellow force

#Citadel
execute if entity @s[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute if entity @s[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute if entity @s[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief_yellow force

#Gemini
execute if entity @s[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~9 void_air
execute if entity @s[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 store result score @s Volume run fill ~ ~ ~ ~2 ~1 ~9 void_air
execute if entity @s[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:antigrief_yellow force

#Lifter
execute if entity @s[tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~6 void_air
execute if entity @s[tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 175 ~-10 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~6 void_air
execute if entity @s[tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:antigrief_yellow force

#Hypersonic
execute if entity @s[tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute if entity @s[tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~9 void_air
execute if entity @s[tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:antigrief_yellow force

#Bullet
execute if entity @s[tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~12 void_air
execute if entity @s[tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~12 void_air
execute if entity @s[tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:antigrief_yellow force

#Duplex
execute if entity @s[tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 175 ~4 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~17 void_air
execute if entity @s[tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 175 ~-21 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~17 void_air
execute if entity @s[tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:antigrief_yellow force

#Broadsword
execute if entity @s[tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 175 ~5 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~11 void_air
execute if entity @s[tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:antigrief_blue force
execute if entity @s[tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 store result score @s Volume run fill ~ ~ ~ ~2 ~2 ~11 void_air
execute if entity @s[tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:antigrief_yellow force

##All missiles
scoreboard players set $1000 Unable 1000
execute if entity @s[scores={Unable=1..}] run scoreboard players operation @s Unable *= $1000 Unable
execute if entity @s[scores={Unable=1..}] run scoreboard players operation @s Unable /= @s Volume
tag @s[scores={Unable=100..}] add UnableMissile
tag @s[scores={Unable=100..}] add antigrief
scoreboard players reset @s Unable

#Extra failsafe for behind the portal spawns
execute if entity @s[tag=bluemissile,x=-15,dx=54,y=33,dy=40,z=-86,dz=18] run tag @s add UnableMissile
execute if entity @s[tag=bluemissile,x=-15,dx=54,y=33,dy=40,z=-86,dz=18] run tag @s add antigrief
execute if entity @s[tag=yellowmissile,x=-15,dx=54,y=33,dy=40,z=68,dz=18] run tag @s add UnableMissile
execute if entity @s[tag=yellowmissile,x=-15,dx=54,y=33,dy=40,z=68,dz=18] run tag @s add antigrief