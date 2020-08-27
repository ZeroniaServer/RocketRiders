####################################################
## SPAWNMISSILES: How all missiles are positioned ##
## and placed upon spawning them from a spawn egg ##
####################################################

##Surprise Egg
execute as @e[tag=BlueSurprise,type=area_effect_cloud] at @s run function items:surprise_blue/rng
execute as @e[tag=BlueSurpriseNormal,type=area_effect_cloud] at @s run function items:surprise_blue/rngnormal
execute as @e[tag=BlueSurpriseHeavy,type=area_effect_cloud] at @s run function items:surprise_blue/rngheavy
execute as @e[tag=BlueSurpriseLightning,type=area_effect_cloud] at @s run function items:surprise_blue/rnglightning

execute as @e[tag=YellowSurprise,type=area_effect_cloud] at @s run function items:surprise_yellow/rng
execute as @e[tag=YellowSurpriseNormal,type=area_effect_cloud] at @s run function items:surprise_yellow/rngnormal
execute as @e[tag=YellowSurpriseHeavy,type=area_effect_cloud] at @s run function items:surprise_yellow/rngheavy
execute as @e[tag=YellowSurpriseLightning,type=area_effect_cloud] at @s run function items:surprise_yellow/rnglightning

##Flipping Capability
execute as @e[tag=yellowmissile,type=area_effect_cloud] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..5,tag=FlipMissile] run tag @s add missileflip
execute as @e[tag=bluemissile,type=area_effect_cloud] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..5,tag=FlipMissile] run tag @s add missileflip
tag @e[tag=missileflip,tag=yellowmissile,type=area_effect_cloud] add wasyellow
tag @e[tag=missileflip,tag=bluemissile,type=area_effect_cloud] add wasblue
execute as @e[tag=missileflip,tag=yellowmissile,tag=wasyellow,type=area_effect_cloud] run function items:flip/flipyellow
execute as @e[tag=missileflip,tag=bluemissile,tag=wasblue,type=area_effect_cloud] run function items:flip/flipblue

##Prevention
#Void
execute as @e[tag=missile,type=area_effect_cloud] at @s if predicate custom:nearvoid run tag @s add UnableMissile
execute as @e[tag=missile,type=area_effect_cloud] at @s if predicate custom:nearvoid run tag @s add void

#Roof
execute in overworld as @e[tag=missile,type=area_effect_cloud] at @s if predicate custom:nearroof run tag @s add UnableMissile
execute in overworld as @e[tag=missile,type=area_effect_cloud] at @s if predicate custom:nearroof run tag @s add roof

#Pierce Prevention (Portals)
execute if entity @s[tag=doPrevention,tag=!preventionOff] run function items:prevention/preventmissiles

#Give back
execute as @e[tag=UnableMissile,tag=!missileflip,type=area_effect_cloud] at @s run function items:prevention/unablefx
execute as @e[tag=UnableMissile,tag=missileflip,type=area_effect_cloud] at @s run function items:flip/unablefx
function items:prevention/giveback

##Bot preparation (for PVE mode)
execute as @e[tag=bluemissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[RecentBotspawn],Duration:150}
execute as @e[tag=yellowmissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[RecentBotspawn],Duration:150}

##SmartClear preparation
execute as @e[tag=bluemissile,tag=!BlueCata,tag=!BlueDuplex,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue],Duration:2000000000}
execute as @e[tag=yellowmissile,tag=!YellowCata,tag=!YellowDuplex,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow],Duration:2000000000}
execute as @e[tag=BlueCata,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=YellowCata,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=BlueLift,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=YellowLift,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,SmartClearAECcata],Duration:2000000000}
execute as @e[tag=BlueDuplex,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECblue,duplexExtraBlue],Duration:2000000000}
execute as @e[tag=YellowDuplex,type=area_effect_cloud] at @s run summon area_effect_cloud ~2 ~-8 ~-3 {Tags:[SmartClearAECyellow,duplexExtraYellow],Duration:2000000000}

##Individual missile positioning
#Auxiliary
execute as @e[tag=BlueAux,type=area_effect_cloud] at @s run tp @s ~-1 ~-9 ~4
execute as @e[tag=YellowAux,type=area_effect_cloud] at @s run tp @s ~-1 ~-9 ~-14

#TomaTwo
execute as @e[tag=BlueToma,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowToma,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-12

#Chronullifier
execute as @e[tag=BlueNull,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowNull,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-12

#Warhead
execute as @e[tag=BlueWar,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowWar,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-14

#Thunderbolt
execute as @e[tag=BlueBolt,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowBolt,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-14

#Hurricane
execute as @e[tag=BlueHur,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~5
execute as @e[tag=YellowHur,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-13

#Elder Guardian
execute as @e[tag=BlueGuard,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowGuard,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-14

#A.N.T.
execute as @e[tag=BlueAnt,type=area_effect_cloud] at @s run tp @s ~ ~-9 ~4
execute as @e[tag=YellowAnt,type=area_effect_cloud] at @s run tp @s ~ ~-9 ~-9

#Blade
execute as @e[tag=BlueBlade,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowBlade,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-18

#Rifter
execute as @e[tag=BlueRift,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowRift,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-17

#Juggerbuster
execute as @e[tag=BlueJug,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowJug,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-20

#Slasher
execute as @e[tag=BlueSlash,type=area_effect_cloud] at @s run tp @s ~-1 ~-9 ~4
execute as @e[tag=YellowSlash,type=area_effect_cloud] at @s run tp @s ~-1 ~-9 ~-15

#Catapult
execute as @e[tag=BlueCata,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~3
execute as @e[tag=YellowCata,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-14

#Citadel
execute as @e[tag=BlueCitadel,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowCitadel,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-14

#Gemini
execute as @e[tag=BlueGemi,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowGemi,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-13

#Lifter
execute as @e[tag=BlueLift,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowLift,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-10

#Hypersonic
execute as @e[tag=BlueHyper,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowHyper,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-13

#Bullet
execute as @e[tag=BlueBull,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowBull,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-18

#Duplex
execute as @e[tag=BlueDuplex,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowDuplex,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-22

#Broadsword
execute as @e[tag=BlueBroad,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowBroad,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-16

##Portal spawn detection
execute as @e[tag=missile,type=area_effect_cloud] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[tag=missile,type=area_effect_cloud] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[tag=missile,tag=portalSpawn,type=area_effect_cloud] at @s run tp @s ~ ~4 ~
execute as @e[tag=missile,tag=portalSpawn,type=area_effect_cloud] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[tag=missile,tag=portalSpawn,type=area_effect_cloud] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[tag=missile,tag=portalSpawn2,type=area_effect_cloud] at @s run tp @s ~ ~ ~8
execute as @e[tag=missile,tag=portalSpawn2,type=area_effect_cloud] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[tag=missile,tag=portalSpawn2,type=area_effect_cloud] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[tag=missile,tag=portalSpawn3,type=area_effect_cloud] at @s run tp @s ~ ~ ~-16

##Place structure
execute as @e[tag=missile,type=area_effect_cloud] at @s run function items:structureblock

#Extra for Duplex
execute as @e[tag=duplexExtraBlue,type=area_effect_cloud] at @s run fill ~-2 ~3 ~23 ~-2 ~3 ~23 powered_rail[shape=north_south] replace powered_rail
execute as @e[tag=duplexExtraBlue,type=area_effect_cloud] run tag @s remove duplexExtraBlue
execute as @e[tag=duplexExtraYellow,type=area_effect_cloud] at @s run fill ~-2 ~3 ~-18 ~-2 ~3 ~-18 powered_rail[shape=north_south] replace powered_rail
execute as @e[tag=duplexExtraYellow,type=area_effect_cloud] run tag @s remove duplexExtraYellow

##Kill entity
kill @e[tag=missile,type=area_effect_cloud]