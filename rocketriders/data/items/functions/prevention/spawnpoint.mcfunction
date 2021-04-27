##Individual missile detection - if missile overlaps with cave_air, then it is obstructing spawnpoint
#Auxiliary
execute as @e[tag=BlueAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ ~ ~ filtered cave_air force

#TomaTwo
execute as @e[tag=BlueToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ ~ ~ filtered cave_air force

#Chronullifier
execute as @e[tag=BlueNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ ~ ~ filtered cave_air force

#Warhead
execute as @e[tag=BlueWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force

#Thunderbolt
execute as @e[tag=BlueBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ ~ ~ filtered cave_air force

#Hurricane
execute as @e[tag=BlueHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ ~ ~ filtered cave_air force

#Elder Guardian
execute as @e[tag=BlueGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ ~ ~ filtered cave_air force

#A.N.T.
execute as @e[tag=BlueAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ ~ ~ filtered cave_air force

#Blade
execute as @e[tag=BlueBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ ~ ~ filtered cave_air force

#Rifter
execute as @e[tag=BlueRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ ~ ~ filtered cave_air force

#Juggerbuster
execute as @e[tag=BlueJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ ~ ~ filtered cave_air force

#Slasher
execute as @e[tag=BlueSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ ~ ~ filtered cave_air force

#Catapult
execute as @e[tag=BlueCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force

#Citadel
execute as @e[tag=BlueCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force

#Gemini
execute as @e[tag=BlueGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ ~ ~ filtered cave_air force

#Lifter
execute as @e[tag=BlueLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ ~ ~ filtered cave_air force

#Hypersonic
execute as @e[tag=BlueHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ ~ ~ filtered cave_air force

#Bullet
execute as @e[tag=BlueBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ ~ ~ filtered cave_air force

#Duplex
execute as @e[tag=BlueDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ ~ ~ filtered cave_air force

#Broadsword
execute as @e[tag=BlueBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force
execute as @e[tag=YellowBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ ~ ~ filtered cave_air force

##All missiles
tag @e[tag=missile,scores={Unable=1..},type=area_effect_cloud] add UnableMissile
tag @e[tag=missile,scores={Unable=1..},type=area_effect_cloud] add spawnpoint
scoreboard players reset * Unable