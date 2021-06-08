#####################################################################
## PREVENTMISSILES: The main piece of the Pierce Prevention system ##
## Detects if a missile's placement would obstruct a Nether portal ##
#####################################################################

##Individual missile detection
#Auxiliary
execute as @e[tag=BlueAux,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BAux","UnableClear"]}
execute as @e[tag=BlueAux,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowAux,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YAux","UnableClear"]}
execute as @e[tag=YellowAux,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force

#TomaTwo
execute as @e[tag=BlueToma,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BToma","UnableClear"]}
execute as @e[tag=BlueToma,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowToma,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YToma","UnableClear"]}
execute as @e[tag=YellowToma,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Chronullifier
execute as @e[tag=BlueNull,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BNull","UnableClear"]}
execute as @e[tag=BlueNull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowNull,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YNull","UnableClear"]}
execute as @e[tag=YellowNull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Warhead
execute as @e[tag=BlueWar,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BWar","UnableClear"]}
execute as @e[tag=BlueWar,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowWar,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YWar","UnableClear"]}
execute as @e[tag=YellowWar,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Thunderbolt
execute as @e[tag=BlueBolt,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BBolt","UnableClear"]}
execute as @e[tag=BlueBolt,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBolt,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YBolt","UnableClear"]}
execute as @e[tag=YellowBolt,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Hurricane
execute as @e[tag=BlueHur,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BHur","UnableClear"]}
execute as @e[tag=BlueHur,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowHur,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YHur","UnableClear"]}
execute as @e[tag=YellowHur,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Elder Guardian
execute as @e[tag=BlueGuard,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BGuard","UnableClear"]}
execute as @e[tag=BlueGuard,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowGuard,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YGuard","UnableClear"]}
execute as @e[tag=YellowGuard,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#A.N.T.
execute as @e[tag=BlueAnt,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BAnt","UnableClear"]}
execute as @e[tag=BlueAnt,tag=!UnableMissile,type=marker] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowAnt,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YAnt","UnableClear"]}
execute as @e[tag=YellowAnt,tag=!UnableMissile,type=marker] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Blade
execute as @e[tag=BlueBlade,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BBlade","UnableClear"]}
execute as @e[tag=BlueBlade,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBlade,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YBlade","UnableClear"]}
execute as @e[tag=YellowBlade,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force

#Rifter
execute as @e[tag=BlueRift,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BRift","UnableClear"]}
execute as @e[tag=BlueRift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowRift,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YRift","UnableClear"]}
execute as @e[tag=YellowRift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force

#Juggerbuster
execute as @e[tag=BlueJug,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BJug","UnableClear"]}
execute as @e[tag=BlueJug,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowJug,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YJug","UnableClear"]}
execute as @e[tag=YellowJug,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force

#Slasher
execute as @e[tag=BlueSlash,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BSlash","UnableClear"]}
execute as @e[tag=BlueSlash,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowSlash,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YSlash","UnableClear"]}
execute as @e[tag=YellowSlash,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Catapult
execute as @e[tag=BlueCata,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BCata","UnableClear"]}
execute as @e[tag=BlueCata,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowCata,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YCata","UnableClear"]}
execute as @e[tag=YellowCata,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

#Citadel
execute as @e[tag=BlueCitadel,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BCitadel","UnableClear"]}
execute as @e[tag=BlueCitadel,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowCitadel,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YCitadel","UnableClear"]}
execute as @e[tag=YellowCitadel,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Gemini
execute as @e[tag=BlueGemi,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BGemi","UnableClear"]}
execute as @e[tag=BlueGemi,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowGemi,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YGemi","UnableClear"]}
execute as @e[tag=YellowGemi,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Lifter
execute as @e[tag=BlueLift,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BLift","UnableClear"]}
execute as @e[tag=BlueLift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowLift,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YLift","UnableClear"]}
execute as @e[tag=YellowLift,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Hypersonic
execute as @e[tag=BlueHyper,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BHyper","UnableClear"]}
execute as @e[tag=BlueHyper,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowHyper,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YHyper","UnableClear"]}
execute as @e[tag=YellowHyper,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Bullet
execute as @e[tag=BlueBull,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BBull","UnableClear"]}
execute as @e[tag=BlueBull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBull,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YBull","UnableClear"]}
execute as @e[tag=YellowBull,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Duplex
execute as @e[tag=BlueDuplex,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BDuplex","UnableClear"]}
execute as @e[tag=BlueDuplex,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowDuplex,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YDuplex","UnableClear"]}
execute as @e[tag=YellowDuplex,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force

#Broadsword
execute as @e[tag=BlueBroad,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["BBroad","UnableClear"]}
execute as @e[tag=BlueBroad,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBroad,tag=!UnableMissile,type=marker] at @s run summon marker ~ ~ ~ {Tags:["YBroad","UnableClear"]}
execute as @e[tag=YellowBroad,tag=!UnableMissile,type=marker] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

##All missiles
tag @e[tag=missile,scores={Unable=1..},type=marker] add UnableMissile
scoreboard players reset * Unable