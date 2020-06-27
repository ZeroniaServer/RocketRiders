#####################################################################
## PREVENTMISSILES: The main piece of the Pierce Prevention system ##
## Detects if a missile's placement would obstruct a Nether portal ##
#####################################################################

##Individual missile detection
#Auxiliary
execute as @e[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~3 ~10 air replace #custom:portalblocks
execute as @e[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 run fill ~ ~ ~ ~2 ~3 ~10 air replace #custom:portalblocks

#TomaTwo
execute as @e[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~1 ~1 ~8 air replace #custom:portalblocks
execute as @e[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 175 ~-12 run fill ~ ~ ~ ~1 ~1 ~8 air replace #custom:portalblocks

#Chronullifier
execute as @e[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~1 ~2 ~8 air replace #custom:portalblocks
execute as @e[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 175 ~-12 run fill ~ ~ ~ ~1 ~2 ~8 air replace #custom:portalblocks

#Warhead
execute as @e[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~10 air replace #custom:portalblocks
execute as @e[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 run fill ~ ~ ~ ~2 ~2 ~10 air replace #custom:portalblocks

#Thunderbolt
execute as @e[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~1 ~1 ~10 air replace #custom:portalblocks
execute as @e[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 run fill ~ ~ ~ ~1 ~1 ~10 air replace #custom:portalblocks

#Hurricane
execute as @e[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 175 ~5 run fill ~ ~ ~ ~2 ~1 ~8 air replace #custom:portalblocks
execute as @e[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 run fill ~ ~ ~ ~2 ~1 ~8 air replace #custom:portalblocks

#Elder Guardian
execute as @e[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~10 air replace #custom:portalblocks
execute as @e[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 run fill ~ ~ ~ ~2 ~2 ~10 air replace #custom:portalblocks

#A.N.T.
execute as @e[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ 175 ~4 run fill ~ ~ ~ ~ ~3 ~6 air replace #custom:portalblocks
execute as @e[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~-9 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ 175 ~-9 run fill ~ ~ ~ ~ ~3 ~6 air replace #custom:portalblocks

#Blade
execute as @e[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~1 ~14 air replace #custom:portalblocks
execute as @e[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 175 ~-18 run fill ~ ~ ~ ~2 ~1 ~14 air replace #custom:portalblocks

#Rifter
execute as @e[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 175 ~3 run fill ~ ~ ~ ~2 ~1 ~13 air replace #custom:portalblocks
execute as @e[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 run fill ~ ~ ~ ~2 ~1 ~13 air replace #custom:portalblocks

#Juggerbuster
execute as @e[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~16 air replace #custom:portalblocks
execute as @e[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 175 ~-20 run fill ~ ~ ~ ~2 ~2 ~16 air replace #custom:portalblocks

#Slasher
execute as @e[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~3 ~12 air replace #custom:portalblocks
execute as @e[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-15 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 175 ~-15 run fill ~ ~ ~ ~2 ~3 ~12 air replace #custom:portalblocks

#Catapult
execute as @e[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 175 ~3 run fill ~ ~ ~ ~2 ~2 ~11 air replace #custom:portalblocks
execute as @e[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 run fill ~ ~ ~ ~2 ~2 ~11 air replace #custom:portalblocks

#Citadel
execute as @e[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~9 air replace #custom:portalblocks
execute as @e[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 175 ~-14 run fill ~ ~ ~ ~2 ~2 ~9 air replace #custom:portalblocks

#Gemini
execute as @e[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~1 ~9 air replace #custom:portalblocks
execute as @e[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 run fill ~ ~ ~ ~2 ~1 ~9 air replace #custom:portalblocks

#Lifter
execute as @e[tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~6 air replace #custom:portalblocks
execute as @e[tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 175 ~-10 run fill ~ ~ ~ ~2 ~2 ~6 air replace #custom:portalblocks

#Hypersonic
execute as @e[tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 175 ~5 run fill ~ ~ ~ ~2 ~2 ~8 air replace #custom:portalblocks
execute as @e[tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 175 ~-13 run fill ~ ~ ~ ~2 ~2 ~8 air replace #custom:portalblocks

#Bullet
execute as @e[tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~14 air replace #custom:portalblocks
execute as @e[tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 175 ~-18 run fill ~ ~ ~ ~2 ~2 ~14 air replace #custom:portalblocks

#Duplex
execute as @e[tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 175 ~4 run fill ~ ~ ~ ~2 ~2 ~17 air replace #custom:portalblocks
execute as @e[tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-22 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 175 ~-22 run fill ~ ~ ~ ~2 ~2 ~17 air replace #custom:portalblocks

#Broadsword
execute as @e[tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 175 ~5 run fill ~ ~ ~ ~2 ~2 ~11 air replace #custom:portalblocks
execute as @e[tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 175 ~-16 run fill ~ ~ ~ ~2 ~2 ~11 air replace #custom:portalblocks

##All missiles
tag @e[tag=missile,scores={Unable=1..}] add UnableMissile
scoreboard players reset * Unable
execute as @e[tag=UnableMissile] at @s run function items:prevention/unablefx
function items:prevention/giveback