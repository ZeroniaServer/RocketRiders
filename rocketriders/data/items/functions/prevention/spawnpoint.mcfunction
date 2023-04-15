##Individual missile detection - if missile overlaps with light[level=0], then it is obstructing spawnpoint
#Auxiliary
execute as @e[predicate=custom:indimension,type=marker,tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered light[level=0] force

#TomaTwo
execute as @e[predicate=custom:indimension,type=marker,tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered light[level=0] force

#Chronullifier
execute as @e[predicate=custom:indimension,type=marker,tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered light[level=0] force

#Warhead
execute as @e[predicate=custom:indimension,type=marker,tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force

#Thunderbolt
execute as @e[predicate=custom:indimension,type=marker,tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered light[level=0] force

#Hurricane
execute as @e[predicate=custom:indimension,type=marker,tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered light[level=0] force

#Elder Guardian
execute as @e[predicate=custom:indimension,type=marker,tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered light[level=0] force

#A.N.T.
execute as @e[predicate=custom:indimension,type=marker,tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered light[level=0] force

#Blade
execute as @e[predicate=custom:indimension,type=marker,tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered light[level=0] force

#Rifter
execute as @e[predicate=custom:indimension,type=marker,tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered light[level=0] force

#Juggerbuster
execute as @e[predicate=custom:indimension,type=marker,tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered light[level=0] force

#Slasher
execute as @e[predicate=custom:indimension,type=marker,tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered light[level=0] force

#Catapult
execute as @e[predicate=custom:indimension,type=marker,tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force

#Citadel
execute as @e[predicate=custom:indimension,type=marker,tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force

#Gemini
execute as @e[predicate=custom:indimension,type=marker,tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered light[level=0] force

#Lifter
execute as @e[predicate=custom:indimension,type=marker,tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered light[level=0] force

#Hypersonic
execute as @e[predicate=custom:indimension,type=marker,tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered light[level=0] force

#Bullet
execute as @e[predicate=custom:indimension,type=marker,tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered light[level=0] force

#Duplex
execute as @e[predicate=custom:indimension,type=marker,tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered light[level=0] force

#Broadsword
execute as @e[predicate=custom:indimension,type=marker,tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force
execute as @e[predicate=custom:indimension,type=marker,tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered light[level=0] force

##All missiles
tag @e[predicate=custom:indimension,type=marker,tag=missile,scores={Unable=1..}] add UnableMissile
tag @e[predicate=custom:indimension,type=marker,tag=missile,scores={Unable=1..}] add spawnpoint
scoreboard players reset * Unable