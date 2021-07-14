#####################################################################
## PREVENTMISSILES: The main piece of the Pierce Prevention system ##
## Detects if a missile's placement would obstruct a Nether portal ##
#####################################################################

##Individual missile detection
#Auxiliary
execute as @e[type=marker,tag=BlueAux,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BAux","UnableClear"]}
execute as @e[type=marker,tag=BlueAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowAux,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YAux","UnableClear"]}
execute as @e[type=marker,tag=YellowAux,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force

#TomaTwo
execute as @e[type=marker,tag=BlueToma,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BToma","UnableClear"]}
execute as @e[type=marker,tag=BlueToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowToma,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YToma","UnableClear"]}
execute as @e[type=marker,tag=YellowToma,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Chronullifier
execute as @e[type=marker,tag=BlueNull,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BNull","UnableClear"]}
execute as @e[type=marker,tag=BlueNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowNull,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YNull","UnableClear"]}
execute as @e[type=marker,tag=YellowNull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Warhead
execute as @e[type=marker,tag=BlueWar,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BWar","UnableClear"]}
execute as @e[type=marker,tag=BlueWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowWar,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YWar","UnableClear"]}
execute as @e[type=marker,tag=YellowWar,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Thunderbolt
execute as @e[type=marker,tag=BlueBolt,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BBolt","UnableClear"]}
execute as @e[type=marker,tag=BlueBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowBolt,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YBolt","UnableClear"]}
execute as @e[type=marker,tag=YellowBolt,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Hurricane
execute as @e[type=marker,tag=BlueHur,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BHur","UnableClear"]}
execute as @e[type=marker,tag=BlueHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowHur,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YHur","UnableClear"]}
execute as @e[type=marker,tag=YellowHur,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Elder Guardian
execute as @e[type=marker,tag=BlueGuard,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BGuard","UnableClear"]}
execute as @e[type=marker,tag=BlueGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowGuard,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YGuard","UnableClear"]}
execute as @e[type=marker,tag=YellowGuard,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#A.N.T.
execute as @e[type=marker,tag=BlueAnt,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BAnt","UnableClear"]}
execute as @e[type=marker,tag=BlueAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowAnt,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YAnt","UnableClear"]}
execute as @e[type=marker,tag=YellowAnt,tag=!UnableMissile] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Blade
execute as @e[type=marker,tag=BlueBlade,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BBlade","UnableClear"]}
execute as @e[type=marker,tag=BlueBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowBlade,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YBlade","UnableClear"]}
execute as @e[type=marker,tag=YellowBlade,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force

#Rifter
execute as @e[type=marker,tag=BlueRift,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BRift","UnableClear"]}
execute as @e[type=marker,tag=BlueRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowRift,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YRift","UnableClear"]}
execute as @e[type=marker,tag=YellowRift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force

#Juggerbuster
execute as @e[type=marker,tag=BlueJug,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BJug","UnableClear"]}
execute as @e[type=marker,tag=BlueJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowJug,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YJug","UnableClear"]}
execute as @e[type=marker,tag=YellowJug,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force

#Slasher
execute as @e[type=marker,tag=BlueSlash,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BSlash","UnableClear"]}
execute as @e[type=marker,tag=BlueSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowSlash,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YSlash","UnableClear"]}
execute as @e[type=marker,tag=YellowSlash,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Catapult
execute as @e[type=marker,tag=BlueCata,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BCata","UnableClear"]}
execute as @e[type=marker,tag=BlueCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowCata,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YCata","UnableClear"]}
execute as @e[type=marker,tag=YellowCata,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

#Citadel
execute as @e[type=marker,tag=BlueCitadel,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BCitadel","UnableClear"]}
execute as @e[type=marker,tag=BlueCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowCitadel,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YCitadel","UnableClear"]}
execute as @e[type=marker,tag=YellowCitadel,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Gemini
execute as @e[type=marker,tag=BlueGemi,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BGemi","UnableClear"]}
execute as @e[type=marker,tag=BlueGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowGemi,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YGemi","UnableClear"]}
execute as @e[type=marker,tag=YellowGemi,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Lifter
execute as @e[type=marker,tag=BlueLift,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BLift","UnableClear"]}
execute as @e[type=marker,tag=BlueLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowLift,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YLift","UnableClear"]}
execute as @e[type=marker,tag=YellowLift,tag=!UnableMissile] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Hypersonic
execute as @e[type=marker,tag=BlueHyper,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BHyper","UnableClear"]}
execute as @e[type=marker,tag=BlueHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowHyper,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YHyper","UnableClear"]}
execute as @e[type=marker,tag=YellowHyper,tag=!UnableMissile] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Bullet
execute as @e[type=marker,tag=BlueBull,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BBull","UnableClear"]}
execute as @e[type=marker,tag=BlueBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowBull,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YBull","UnableClear"]}
execute as @e[type=marker,tag=YellowBull,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Duplex
execute as @e[type=marker,tag=BlueDuplex,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BDuplex","UnableClear"]}
execute as @e[type=marker,tag=BlueDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowDuplex,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YDuplex","UnableClear"]}
execute as @e[type=marker,tag=YellowDuplex,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force

#Broadsword
execute as @e[type=marker,tag=BlueBroad,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["BBroad","UnableClear"]}
execute as @e[type=marker,tag=BlueBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[type=marker,tag=YellowBroad,tag=!UnableMissile] at @s run summon marker ~ ~ ~ {Tags:["YBroad","UnableClear"]}
execute as @e[type=marker,tag=YellowBroad,tag=!UnableMissile] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

##All missiles
tag @e[type=marker,tag=missile,scores={Unable=1..}] add UnableMissile
scoreboard players reset * Unable