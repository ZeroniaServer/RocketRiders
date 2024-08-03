#####################################################################
## PREVENTMISSILES: The main piece of the Pierce Prevention system ##
## Detects if a missile's placement would obstruct a Nether portal ##
#####################################################################

##Individual missile detection
#Auxiliary
execute if entity @s[tag=BlueAux,tag=!UnableMissile] positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowAux,tag=!UnableMissile] positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force

#TomaTwo
execute if entity @s[tag=BlueToma,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowToma,tag=!UnableMissile] positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Chronullifier
execute if entity @s[tag=BlueNull,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowNull,tag=!UnableMissile] positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Warhead
execute if entity @s[tag=BlueWar,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowWar,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Thunderbolt
execute if entity @s[tag=BlueBolt,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowBolt,tag=!UnableMissile] positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Hurricane
execute if entity @s[tag=BlueHur,tag=!UnableMissile] positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowHur,tag=!UnableMissile] positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Elder Guardian
execute if entity @s[tag=BlueGuard,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowGuard,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#A.N.T.
execute if entity @s[tag=BlueAnt,tag=!UnableMissile] positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowAnt,tag=!UnableMissile] positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Blade
execute if entity @s[tag=BlueBlade,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowBlade,tag=!UnableMissile] positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force

#Rifter
execute if entity @s[tag=BlueRift,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowRift,tag=!UnableMissile] positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force

#Juggerbuster
execute if entity @s[tag=BlueJug,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowJug,tag=!UnableMissile] positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force

#Slasher
execute if entity @s[tag=BlueSlash,tag=!UnableMissile] positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowSlash,tag=!UnableMissile] positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Catapult
execute if entity @s[tag=BlueCata,tag=!UnableMissile] positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowCata,tag=!UnableMissile] positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

#Citadel
execute if entity @s[tag=BlueCitadel,tag=!UnableMissile] positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowCitadel,tag=!UnableMissile] positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Gemini
execute if entity @s[tag=BlueGemi,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowGemi,tag=!UnableMissile] positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Lifter
execute if entity @s[tag=BlueLift,tag=!UnableMissile] positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowLift,tag=!UnableMissile] positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Hypersonic
execute if entity @s[tag=BlueHyper,tag=!UnableMissile] positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~7 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowHyper,tag=!UnableMissile] positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~7 ~ 175 ~ filtered #custom:portalblocks force

#Bullet
execute if entity @s[tag=BlueBull,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowBull,tag=!UnableMissile] positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Duplex
execute if entity @s[tag=BlueDuplex,tag=!UnableMissile] positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowDuplex,tag=!UnableMissile] positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force

#Broadsword
execute if entity @s[tag=BlueBroad,tag=!UnableMissile] positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute if entity @s[tag=YellowBroad,tag=!UnableMissile] positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

##All missiles
tag @s[scores={Unable=1..}] add UnableMissile
scoreboard players reset * Unable