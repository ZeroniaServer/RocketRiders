##Individual missile detection - if missile overlaps with light[level=0], then it is obstructing spawnpoint
#Auxiliary
execute at @s[tag=BlueAux,tag=!UnableMissile] positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowAux,tag=!UnableMissile] positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered light[level=0] force

#TomaTwo
execute at @s[tag=BlueToma,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowToma,tag=!UnableMissile] positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered light[level=0] force

#Chronullifier
execute at @s[tag=BlueNull,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowNull,tag=!UnableMissile] positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered light[level=0] force

#Warhead
execute at @s[tag=BlueWar,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowWar,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force

#Thunderbolt
execute at @s[tag=BlueBolt,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowBolt,tag=!UnableMissile] positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered light[level=0] force

#Hurricane
execute at @s[tag=BlueHur,tag=!UnableMissile] positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowHur,tag=!UnableMissile] positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered light[level=0] force

#Elder Guardian
execute at @s[tag=BlueGuard,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowGuard,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force

#A.N.T.
execute at @s[tag=BlueAnt,tag=!UnableMissile] positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowAnt,tag=!UnableMissile] positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered light[level=0] force

#Blade
execute at @s[tag=BlueBlade,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowBlade,tag=!UnableMissile] positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered light[level=0] force

#Rifter
execute at @s[tag=BlueRift,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowRift,tag=!UnableMissile] positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered light[level=0] force

#Juggerbuster
execute at @s[tag=BlueJug,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowJug,tag=!UnableMissile] positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered light[level=0] force

#Slasher
execute at @s[tag=BlueSlash,tag=!UnableMissile] positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowSlash,tag=!UnableMissile] positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered light[level=0] force

#Catapult
execute at @s[tag=BlueCata,tag=!UnableMissile] positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowCata,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force

#Citadel
execute at @s[tag=BlueCitadel,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowCitadel,tag=!UnableMissile] positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force

#Gemini
execute at @s[tag=BlueGemi,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowGemi,tag=!UnableMissile] positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered light[level=0] force

#Lifter
execute at @s[tag=BlueLift,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowLift,tag=!UnableMissile] positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered light[level=0] force

#Hypersonic
execute at @s[tag=BlueHyper,tag=!UnableMissile] positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowHyper,tag=!UnableMissile] positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force

#Bullet
execute at @s[tag=BlueBull,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowBull,tag=!UnableMissile] positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered light[level=0] force

#Duplex
execute at @s[tag=BlueDuplex,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowDuplex,tag=!UnableMissile] positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered light[level=0] force

#Broadsword
execute at @s[tag=BlueBroad,tag=!UnableMissile] positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force
execute at @s[tag=YellowBroad,tag=!UnableMissile] positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force

##All missiles
tag @s[scores={Unable=1..}] add UnableMissile
tag @s[scores={Unable=1..}] add spawnpoint
scoreboard players reset * Unable