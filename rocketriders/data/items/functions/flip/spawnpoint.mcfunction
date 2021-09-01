##Individual missile detection - if missile overlaps with cave_air, then it is obstructing spawnpoint
#Auxiliary
execute as @e[type=marker,tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered cave_air force

#TomaTwo
execute as @e[type=marker,tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered cave_air force

#Chronullifier
execute as @e[type=marker,tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered cave_air force

#Warhead
execute as @e[type=marker,tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force

#Thunderbolt
execute as @e[type=marker,tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered cave_air force

#Hurricane
execute as @e[type=marker,tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered cave_air force

#Elder Guardian
execute as @e[type=marker,tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force

#A.N.T.
execute as @e[type=marker,tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered cave_air force

#Blade
execute as @e[type=marker,tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered cave_air force

#Rifter
execute as @e[type=marker,tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered cave_air force

#Juggerbuster
execute as @e[type=marker,tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered cave_air force

#Slasher
execute as @e[type=marker,tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered cave_air force

#Catapult
execute as @e[type=marker,tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force

#Citadel
execute as @e[type=marker,tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force

#Gemini
execute as @e[type=marker,tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered cave_air force

#Lifter
execute as @e[type=marker,tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered cave_air force

#Hypersonic
execute as @e[type=marker,tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force

#Bullet
execute as @e[type=marker,tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered cave_air force

#Duplex
execute as @e[type=marker,tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered cave_air force

#Broadsword
execute as @e[type=marker,tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force
execute as @e[type=marker,tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force

##All missiles
tag @e[type=marker,tag=missile,scores={Unable=1..}] add UnableMissile
tag @e[type=marker,tag=missile,scores={Unable=1..}] add spawnpoint
scoreboard players reset * Unable