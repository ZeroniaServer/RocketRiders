########################################################################
## ANTIGRIEF: Detects and prevents missiles from spawning at own base ##
## if the position is occupied by another missile or well within base ##
########################################################################

##Individual missile detection
#Auxiliary
execute at @s[tag=BlueAux,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~10 void_air
execute at @s[tag=BlueAux,tag=!UnableMissile] positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowAux,tag=!UnableMissile] positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~10 void_air
execute at @s[tag=YellowAux,tag=!UnableMissile] positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~10 ~ 175 ~ filtered #custom:missileblocks force

#TomaTwo
execute at @s[tag=BlueToma,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute at @s[tag=BlueToma,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowToma,tag=!UnableMissile] positioned ~-1 175 ~-12 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute at @s[tag=YellowToma,tag=!UnableMissile] positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Chronullifier
execute at @s[tag=BlueNull,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~2 ~2 ~8 void_air
execute at @s[tag=BlueNull,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowNull,tag=!UnableMissile] positioned ~-1 175 ~-12 store result score @s Volume run fill ~-1 ~ ~ ~2 ~2 ~8 void_air
execute at @s[tag=YellowNull,tag=!UnableMissile] positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~-1 ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Warhead
execute at @s[tag=BlueWar,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute at @s[tag=BlueWar,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowWar,tag=!UnableMissile] positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute at @s[tag=YellowWar,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force

#Thunderbolt
execute at @s[tag=BlueBolt,tag=!UnableMissile] positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute at @s[tag=BlueBolt,tag=!UnableMissile] positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowBolt,tag=!UnableMissile] positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute at @s[tag=YellowBolt,tag=!UnableMissile] positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Hurricane
execute at @s[tag=BlueHur,tag=!UnableMissile] positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute at @s[tag=BlueHur,tag=!UnableMissile] positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowHur,tag=!UnableMissile] positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~8 void_air
execute at @s[tag=YellowHur,tag=!UnableMissile] positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~8 ~ 175 ~ filtered #custom:missileblocks force

#Elder Guardian
execute at @s[tag=BlueGuard,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute at @s[tag=BlueGuard,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowGuard,tag=!UnableMissile] positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~10 void_air
execute at @s[tag=YellowGuard,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~10 ~ 175 ~ filtered #custom:missileblocks force

#A.N.T.
execute at @s[tag=BlueAnt,tag=!UnableMissile] positioned ~ 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~1 ~3 ~6 void_air
execute at @s[tag=BlueAnt,tag=!UnableMissile] positioned ~ ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~1 ~3 ~6 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowAnt,tag=!UnableMissile] positioned ~ 175 ~-10 store result score @s Volume run fill ~-1 ~ ~ ~1 ~3 ~6 void_air
execute at @s[tag=YellowAnt,tag=!UnableMissile] positioned ~ ~-7 ~-10 store result score @s Unable run clone ~-1 ~ ~ ~1 ~3 ~6 ~ 175 ~ filtered #custom:missileblocks force

#Blade
execute at @s[tag=BlueBlade,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~14 void_air
execute at @s[tag=BlueBlade,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~14 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowBlade,tag=!UnableMissile] positioned ~-1 175 ~-18 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~14 void_air
execute at @s[tag=YellowBlade,tag=!UnableMissile] positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~14 ~ 175 ~ filtered #custom:missileblocks force

#Rifter
execute at @s[tag=BlueRift,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~13 void_air
execute at @s[tag=BlueRift,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~13 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowRift,tag=!UnableMissile] positioned ~-1 175 ~-17 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~13 void_air
execute at @s[tag=YellowRift,tag=!UnableMissile] positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~13 ~ 175 ~ filtered #custom:missileblocks force

#Juggerbuster
execute at @s[tag=BlueJug,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~16 void_air
execute at @s[tag=BlueJug,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~16 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowJug,tag=!UnableMissile] positioned ~-1 175 ~-20 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~16 void_air
execute at @s[tag=YellowJug,tag=!UnableMissile] positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~16 ~ 175 ~ filtered #custom:missileblocks force

#Slasher
execute at @s[tag=BlueSlash,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~12 void_air
execute at @s[tag=BlueSlash,tag=!UnableMissile] positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~12 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowSlash,tag=!UnableMissile] positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~3 ~12 void_air
execute at @s[tag=YellowSlash,tag=!UnableMissile] positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~3 ~12 ~ 175 ~ filtered #custom:missileblocks force

#Catapult
execute at @s[tag=BlueCata,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute at @s[tag=BlueCata,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowCata,tag=!UnableMissile] positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute at @s[tag=YellowCata,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Citadel
execute at @s[tag=BlueCitadel,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute at @s[tag=BlueCitadel,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowCitadel,tag=!UnableMissile] positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute at @s[tag=YellowCitadel,tag=!UnableMissile] positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Gemini
execute at @s[tag=BlueGemi,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute at @s[tag=BlueGemi,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowGemi,tag=!UnableMissile] positioned ~-1 175 ~-13 store result score @s Volume run fill ~-1 ~ ~ ~3 ~1 ~9 void_air
execute at @s[tag=YellowGemi,tag=!UnableMissile] positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~-1 ~ ~ ~3 ~1 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Lifter
execute at @s[tag=BlueLift,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~6 void_air
execute at @s[tag=BlueLift,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~6 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowLift,tag=!UnableMissile] positioned ~-1 175 ~-10 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~6 void_air
execute at @s[tag=YellowLift,tag=!UnableMissile] positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~6 ~ 175 ~ filtered #custom:missileblocks force

#Hypersonic
execute at @s[tag=BlueHyper,tag=!UnableMissile] positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute at @s[tag=BlueHyper,tag=!UnableMissile] positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowHyper,tag=!UnableMissile] positioned ~-1 175 ~-14 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~9 void_air
execute at @s[tag=YellowHyper,tag=!UnableMissile] positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~9 ~ 175 ~ filtered #custom:missileblocks force

#Bullet
execute at @s[tag=BlueBull,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~12 void_air
execute at @s[tag=BlueBull,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~12 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowBull,tag=!UnableMissile] positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~12 void_air
execute at @s[tag=YellowBull,tag=!UnableMissile] positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~12 ~ 175 ~ filtered #custom:missileblocks force

#Duplex
execute at @s[tag=BlueDuplex,tag=!UnableMissile] positioned ~-1 175 ~4 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~17 void_air
execute at @s[tag=BlueDuplex,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~17 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowDuplex,tag=!UnableMissile] positioned ~-1 175 ~-21 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~17 void_air
execute at @s[tag=YellowDuplex,tag=!UnableMissile] positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~17 ~ 175 ~ filtered #custom:missileblocks force

#Broadsword
execute at @s[tag=BlueBroad,tag=!UnableMissile] positioned ~-1 175 ~5 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute at @s[tag=BlueBroad,tag=!UnableMissile] positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force
execute at @s[tag=YellowBroad,tag=!UnableMissile] positioned ~-1 175 ~-16 store result score @s Volume run fill ~-1 ~ ~ ~3 ~2 ~11 void_air
execute at @s[tag=YellowBroad,tag=!UnableMissile] positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~-1 ~ ~ ~3 ~2 ~11 ~ 175 ~ filtered #custom:missileblocks force

##All missiles
scoreboard players set $1000 Unable 1000
scoreboard players operation @s[scores={Unable=1..}] Unable *= $1000 Unable
scoreboard players operation @s[scores={Unable=1..}] Unable /= @s Volume
tag @s[scores={Unable=70..}] add UnableMissile
tag @s[scores={Unable=70..}] add antigrief
scoreboard players reset @s Unable

#Extra failsafe for behind the portal spawns
tag @s[tag=bluemissile,x=-15,dx=54,y=33,dy=40,z=-86,dz=19] add UnableMissile
tag @s[tag=yellowmissile,x=-15,dx=54,y=33,dy=40,z=67,dz=19] add UnableMissile