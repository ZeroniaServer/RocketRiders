#####################################################################
## PREVENTMISSILES: The main piece of the Pierce Prevention system ##
## Detects if a missile's placement would obstruct a Nether portal ##
#####################################################################

##Individual missile detection
#Auxiliary
execute as @e[tag=BlueAux,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BAux","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowAux,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YAux","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowAux,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~10 ~ 175 ~ filtered #custom:portalblocks force

#TomaTwo
execute as @e[tag=BlueToma,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BToma","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowToma,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YToma","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowToma,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Chronullifier
execute as @e[tag=BlueNull,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BNull","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowNull,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YNull","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowNull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-12 store result score @s Unable run clone ~ ~ ~ ~1 ~2 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Warhead
execute as @e[tag=BlueWar,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BWar","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowWar,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YWar","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowWar,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Thunderbolt
execute as @e[tag=BlueBolt,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBolt","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBolt,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBolt","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowBolt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-14 store result score @s Unable run clone ~ ~ ~ ~1 ~1 ~10 ~ 175 ~ filtered #custom:portalblocks force

#Hurricane
execute as @e[tag=BlueHur,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BHur","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowHur,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YHur","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowHur,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~8 ~ 175 ~ filtered #custom:portalblocks force

#Elder Guardian
execute as @e[tag=BlueGuard,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BGuard","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowGuard,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YGuard","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowGuard,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~10 ~ 175 ~ filtered #custom:portalblocks force

#A.N.T.
execute as @e[tag=BlueAnt,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BAnt","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowAnt,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YAnt","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowAnt,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~ ~-7 ~-10 store result score @s Unable run clone ~ ~ ~ ~ ~3 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Blade
execute as @e[tag=BlueBlade,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBlade","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBlade,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBlade","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowBlade,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-18 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~14 ~ 175 ~ filtered #custom:portalblocks force

#Rifter
execute as @e[tag=BlueRift,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BRift","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowRift,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YRift","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowRift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-17 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~13 ~ 175 ~ filtered #custom:portalblocks force

#Juggerbuster
execute as @e[tag=BlueJug,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BJug","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowJug,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YJug","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowJug,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-20 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~16 ~ 175 ~ filtered #custom:portalblocks force

#Slasher
execute as @e[tag=BlueSlash,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BSlash","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowSlash,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YSlash","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowSlash,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~3 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Catapult
execute as @e[tag=BlueCata,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BCata","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~3 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowCata,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YCata","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowCata,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

#Citadel
execute as @e[tag=BlueCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BCitadel","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YCitadel","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowCitadel,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Gemini
execute as @e[tag=BlueGemi,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BGemi","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowGemi,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YGemi","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowGemi,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-13 store result score @s Unable run clone ~ ~ ~ ~2 ~1 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Lifter
execute as @e[tag=BlueLift,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BLift","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowLift,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YLift","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowLift,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-5 ~-10 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~6 ~ 175 ~ filtered #custom:portalblocks force

#Hypersonic
execute as @e[tag=BlueHyper,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BHyper","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowHyper,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YHyper","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowHyper,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-7 ~-14 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~9 ~ 175 ~ filtered #custom:portalblocks force

#Bullet
execute as @e[tag=BlueBull,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBull","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBull,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBull","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowBull,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~12 ~ 175 ~ filtered #custom:portalblocks force

#Duplex
execute as @e[tag=BlueDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BDuplex","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~4 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YDuplex","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowDuplex,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-21 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~17 ~ 175 ~ filtered #custom:portalblocks force

#Broadsword
execute as @e[tag=BlueBroad,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["BBroad","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=BlueBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~5 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force
execute as @e[tag=YellowBroad,tag=!UnableMissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YBroad","UnableClear"],Duration:20000,Radius:0}
execute as @e[tag=YellowBroad,tag=!UnableMissile,type=area_effect_cloud] at @s positioned ~-1 ~-6 ~-16 store result score @s Unable run clone ~ ~ ~ ~2 ~2 ~11 ~ 175 ~ filtered #custom:portalblocks force

##All missiles
tag @e[tag=missile,scores={Unable=1..},type=area_effect_cloud] add UnableMissile
scoreboard players reset * Unable