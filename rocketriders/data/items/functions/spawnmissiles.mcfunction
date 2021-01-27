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
execute if entity @s[tag=preventionOff,tag=preventionSoft] run function items:prevention/preventmissiles

#Give back
execute as @e[tag=UnableMissile,tag=!missileflip,type=area_effect_cloud] at @s run function items:prevention/unablefx
execute as @e[tag=UnableMissile,tag=missileflip,type=area_effect_cloud] at @s run function items:flip/unablefx
function items:prevention/giveback

##Bot preparation (for PVE mode)
execute as @e[tag=bluemissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[RecentBotspawn],Duration:150}
execute as @e[tag=yellowmissile,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[RecentBotspawn],Duration:150}

##SmartClear preparation
execute as @e[tag=bluemissile,type=area_effect_cloud] run data modify storage rocketriders:bmissilepos x prepend from entity @s Pos[0]
execute as @e[tag=bluemissile,type=area_effect_cloud] run data modify storage rocketriders:bmissilepos y prepend from entity @s Pos[1]
execute as @e[tag=bluemissile,type=area_effect_cloud] run data modify storage rocketriders:bmissilepos z prepend from entity @s Pos[2]

execute as @e[tag=yellowmissile,type=area_effect_cloud] run data modify storage rocketriders:ymissilepos x prepend from entity @s Pos[0]
execute as @e[tag=yellowmissile,type=area_effect_cloud] run data modify storage rocketriders:ymissilepos y prepend from entity @s Pos[1]
execute as @e[tag=yellowmissile,type=area_effect_cloud] run data modify storage rocketriders:ymissilepos z prepend from entity @s Pos[2]

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

#Warhead (+ extra entity)
execute as @e[tag=BlueWar,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[warExtraBlue],Duration:2000000000}
execute as @e[tag=BlueWar,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowWar,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[warExtraYellow],Duration:2000000000}
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
execute as @e[tag=YellowAnt,type=area_effect_cloud] at @s run tp @s ~ ~-9 ~-10

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
execute as @e[tag=YellowSlash,type=area_effect_cloud] at @s run tp @s ~-1 ~-9 ~-16

#Catapult
execute as @e[tag=BlueCata,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~3
execute as @e[tag=YellowCata,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-14

#Citadel
execute as @e[tag=BlueCitadel,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowCitadel,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-13

#Gemini
execute as @e[tag=BlueGemi,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowGemi,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-13

#Lifter
execute as @e[tag=BlueLift,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowLift,type=area_effect_cloud] at @s run tp @s ~-1 ~-7 ~-10

#Hypersonic
execute as @e[tag=BlueHyper,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowHyper,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-14

#Bullet
execute as @e[tag=BlueBull,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowBull,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-16

#Duplex (+ extra entity)
execute as @e[tag=BlueDuplex,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[duplexExtraBlue],Duration:2000000000}
execute as @e[tag=BlueDuplex,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowDuplex,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[duplexExtraYellow],Duration:2000000000}
execute as @e[tag=YellowDuplex,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~-21

#Broadsword (+ extra entity)
execute as @e[tag=BlueBroad,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[broadExtraBlue],Duration:2000000000}
execute as @e[tag=BlueBroad,type=area_effect_cloud] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowBroad,type=area_effect_cloud] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[broadExtraYellow],Duration:2000000000}
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

#Cut down on redundant spawn position entries
execute as @e[tag=bluemissile,type=area_effect_cloud] run function items:minify/minifyblue
execute as @e[tag=yellowmissile,type=area_effect_cloud] run function items:minify/minifyyellow

#Extra for Duplex
execute as @e[tag=duplexExtraBlue,type=area_effect_cloud] at @s run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute as @e[tag=duplexExtraBlue,type=area_effect_cloud] run kill @s
execute as @e[tag=duplexExtraYellow,type=area_effect_cloud] at @s run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
execute as @e[tag=duplexExtraYellow,type=area_effect_cloud] run kill @s

#Extra for Broadsword
execute as @e[tag=broadExtraBlue,type=area_effect_cloud] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] replace
execute as @e[tag=broadExtraBlue,type=area_effect_cloud] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt replace
execute as @e[tag=broadExtraBlue,type=area_effect_cloud] run kill @s
execute as @e[tag=broadExtraYellow,type=area_effect_cloud] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] replace
execute as @e[tag=broadExtraYellow,type=area_effect_cloud] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt replace
execute as @e[tag=broadExtraYellow,type=area_effect_cloud] run kill @s

#Extra for Warhead
execute as @e[tag=warExtraBlue,type=area_effect_cloud] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] replace
execute as @e[tag=warExtraBlue,type=area_effect_cloud] run kill @s
execute as @e[tag=warExtraYellow,type=area_effect_cloud] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] replace
execute as @e[tag=warExtraYellow,type=area_effect_cloud] run kill @s

##Kill entity
kill @e[tag=missile,type=area_effect_cloud]