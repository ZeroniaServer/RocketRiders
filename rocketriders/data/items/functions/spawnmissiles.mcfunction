####################################################
## SPAWNMISSILES: How all missiles are positioned ##
## and placed upon spawning them from a spawn egg ##
####################################################

##Surprise Egg
execute as @e[tag=BlueSurprise,type=marker] at @s run function items:surprise_blue/rng
execute as @e[tag=BlueSurpriseNormal,type=marker] at @s run function items:surprise_blue/rngnormal
execute as @e[tag=BlueSurpriseHeavy,type=marker] at @s run function items:surprise_blue/rngheavy
execute as @e[tag=BlueSurpriseLightning,type=marker] at @s run function items:surprise_blue/rnglightning

execute as @e[tag=YellowSurprise,type=marker] at @s run function items:surprise_yellow/rng
execute as @e[tag=YellowSurpriseNormal,type=marker] at @s run function items:surprise_yellow/rngnormal
execute as @e[tag=YellowSurpriseHeavy,type=marker] at @s run function items:surprise_yellow/rngheavy
execute as @e[tag=YellowSurpriseLightning,type=marker] at @s run function items:surprise_yellow/rnglightning

##Flipping Capability
execute as @e[tag=yellowmissile,type=marker] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..5,tag=FlipMissile] run tag @s add missileflip
execute as @e[tag=bluemissile,type=marker] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..5,tag=FlipMissile] run tag @s add missileflip
tag @e[tag=missileflip,tag=yellowmissile,type=marker] add wasyellow
tag @e[tag=missileflip,tag=bluemissile,type=marker] add wasblue
execute as @e[tag=missileflip,tag=yellowmissile,tag=wasyellow,type=marker] run function items:flip/flipyellow
execute as @e[tag=missileflip,tag=bluemissile,tag=wasblue,type=marker] run function items:flip/flipblue

##Prevention
#Void
execute as @e[tag=!UnableMissile,tag=missile,type=marker] at @s if predicate custom:nearvoid run tag @s add void
execute as @e[tag=!UnableMissile,tag=missile,type=marker] at @s if predicate custom:nearvoid run tag @s add UnableMissile

#Roof
execute in overworld as @e[tag=!UnableMissile,tag=missile,type=marker] at @s if predicate custom:nearroof run tag @s add roof
execute in overworld as @e[tag=!UnableMissile,tag=missile,type=marker] at @s if predicate custom:nearroof run tag @s add UnableMissile

#Pierce Prevention (Portals)
execute if entity @s[tag=doPrevention,tag=!preventionOff] run function items:prevention/preventmissiles
execute if entity @s[tag=preventionOff,tag=preventionSoft] run function items:prevention/preventmissiles

#Spawnpoint
execute as @e[tag=!UnableMissile,tag=missile,type=marker] at @s run function items:prevention/spawnpoint

##Antigrief

#Normal antigrief - starts after 10 seconds
execute as @s[tag=!antigriefOff,scores={gametime=200..}] as @e[tag=bluemissile,type=marker] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=17] run function items:prevention/antigrief
execute as @s[tag=!antigriefOff,scores={gametime=200..}] as @e[tag=yellowmissile,type=marker] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=57,dz=17] run function items:prevention/antigrief

#Stronger antigrief - starts before 10 seconds
execute as @s[tag=!antigriefOff,scores={gametime=..199}] as @e[tag=bluemissile,type=marker] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run function items:prevention/antigrief_10sec
execute as @s[tag=!antigriefOff,scores={gametime=..199}] as @e[tag=yellowmissile,type=marker] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run function items:prevention/antigrief_10sec

#Give back
execute as @e[tag=UnableMissile,tag=!missileflip,type=marker] at @s run function items:prevention/unablefx
execute as @e[tag=UnableMissile,tag=missileflip,type=marker] at @s run function items:flip/unablefx
function items:prevention/giveback

##Bot preparation (for PVE mode)
execute as @e[tag=bluemissile,type=marker] at @s if entity @e[tag=Bot,type=armor_stand] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
execute as @e[tag=yellowmissile,type=marker] at @s if entity @e[tag=Bot,type=armor_stand] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}

##SmartClear preparation
execute as @e[tag=bluemissile,type=marker] run data modify storage rocketriders:bmissilepos x prepend from entity @s Pos[0]
execute as @e[tag=bluemissile,type=marker] run data modify storage rocketriders:bmissilepos y prepend from entity @s Pos[1]
execute as @e[tag=bluemissile,type=marker] run data modify storage rocketriders:bmissilepos z prepend from entity @s Pos[2]

execute as @e[tag=yellowmissile,type=marker] run data modify storage rocketriders:ymissilepos x prepend from entity @s Pos[0]
execute as @e[tag=yellowmissile,type=marker] run data modify storage rocketriders:ymissilepos y prepend from entity @s Pos[1]
execute as @e[tag=yellowmissile,type=marker] run data modify storage rocketriders:ymissilepos z prepend from entity @s Pos[2]

##Play sounds
execute as @e[tag=missile,type=marker] at @s as @a[distance=..6] run playsound minecraft:block.slime_block.place master @s ~ ~ ~ 1 1
execute as @e[tag=missile,type=marker] at @s as @a[distance=..6] run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 1
execute as @e[tag=missile,type=marker] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1

##Individual missile positioning
#Auxiliary
execute as @e[tag=BlueAux,type=marker] at @s run tp @s ~-1 ~-9 ~4
execute as @e[tag=YellowAux,type=marker] at @s run tp @s ~-1 ~-9 ~-14

#TomaTwo
execute as @e[tag=BlueToma,type=marker] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowToma,type=marker] at @s run tp @s ~-1 ~-7 ~-12

#Chronullifier
execute as @e[tag=BlueNull,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowNull,type=marker] at @s run tp @s ~-1 ~-8 ~-12

#Warhead (+ extra entity)
execute as @e[tag=BlueWar,type=marker] at @s run summon marker ~ ~ ~ {Tags:[warExtraBlue]}
execute as @e[tag=BlueWar,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowWar,type=marker] at @s run summon marker ~ ~ ~ {Tags:[warExtraYellow]}
execute as @e[tag=YellowWar,type=marker] at @s run tp @s ~-1 ~-8 ~-14

#Thunderbolt
execute as @e[tag=BlueBolt,type=marker] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowBolt,type=marker] at @s run tp @s ~-1 ~-7 ~-14

#Hurricane
execute as @e[tag=BlueHur,type=marker] at @s run tp @s ~-1 ~-7 ~5
execute as @e[tag=YellowHur,type=marker] at @s run tp @s ~-1 ~-7 ~-13

#Elder Guardian
execute as @e[tag=BlueGuard,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowGuard,type=marker] at @s run tp @s ~-1 ~-8 ~-14

#A.N.T.
execute as @e[tag=BlueAnt,type=marker] at @s run tp @s ~ ~-9 ~4
execute as @e[tag=YellowAnt,type=marker] at @s run tp @s ~ ~-9 ~-10

#Blade
execute as @e[tag=BlueBlade,type=marker] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowBlade,type=marker] at @s run tp @s ~-1 ~-7 ~-18

#Rifter
execute as @e[tag=BlueRift,type=marker] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowRift,type=marker] at @s run tp @s ~-1 ~-7 ~-17

#Juggerbuster
execute as @e[tag=BlueJug,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowJug,type=marker] at @s run tp @s ~-1 ~-8 ~-20

#Slasher
execute as @e[tag=BlueSlash,type=marker] at @s run tp @s ~-1 ~-9 ~4
execute as @e[tag=YellowSlash,type=marker] at @s run tp @s ~-1 ~-9 ~-16

#Catapult
execute as @e[tag=BlueCata,type=marker] at @s run tp @s ~-1 ~-8 ~3
execute as @e[tag=YellowCata,type=marker] at @s run tp @s ~-1 ~-8 ~-14

#Citadel
execute as @e[tag=BlueCitadel,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowCitadel,type=marker] at @s run tp @s ~-1 ~-8 ~-13

#Gemini
execute as @e[tag=BlueGemi,type=marker] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowGemi,type=marker] at @s run tp @s ~-1 ~-7 ~-13

#Lifter
execute as @e[tag=BlueLift,type=marker] at @s run tp @s ~-1 ~-7 ~4
execute as @e[tag=YellowLift,type=marker] at @s run tp @s ~-1 ~-7 ~-10

#Hypersonic
execute as @e[tag=BlueHyper,type=marker] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowHyper,type=marker] at @s run tp @s ~-1 ~-8 ~-14

#Bullet
execute as @e[tag=BlueBull,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowBull,type=marker] at @s run tp @s ~-1 ~-8 ~-16

#Duplex (+ extra entity)
execute as @e[tag=BlueDuplex,type=marker] at @s run summon marker ~ ~ ~ {Tags:[duplexExtraBlue]}
execute as @e[tag=BlueDuplex,type=marker] at @s run tp @s ~-1 ~-8 ~4
execute as @e[tag=YellowDuplex,type=marker] at @s run summon marker ~ ~ ~ {Tags:[duplexExtraYellow]}
execute as @e[tag=YellowDuplex,type=marker] at @s run tp @s ~-1 ~-8 ~-21

#Broadsword (+ extra entity)
execute as @e[tag=BlueBroad,type=marker] at @s run summon marker ~ ~ ~ {Tags:[broadExtraBlue]}
execute as @e[tag=BlueBroad,type=marker] at @s run tp @s ~-1 ~-8 ~5
execute as @e[tag=YellowBroad,type=marker] at @s run summon marker ~ ~ ~ {Tags:[broadExtraYellow]}
execute as @e[tag=YellowBroad,type=marker] at @s run tp @s ~-1 ~-8 ~-16

##Portal spawn detection
execute as @e[tag=missile,type=marker] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[tag=missile,type=marker] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[tag=missile,tag=portalSpawn,type=marker] at @s run tp @s ~ ~4 ~
execute as @e[tag=missile,tag=portalSpawn,type=marker] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[tag=missile,tag=portalSpawn,type=marker] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[tag=missile,tag=portalSpawn2,type=marker] at @s run tp @s ~ ~ ~8
execute as @e[tag=missile,tag=portalSpawn2,type=marker] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[tag=missile,tag=portalSpawn2,type=marker] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[tag=missile,tag=portalSpawn3,type=marker] at @s run tp @s ~ ~ ~-16

##Place structure
execute as @e[tag=missile,type=marker] at @s run function items:structureblock

#Cut down on redundant spawn position entries
execute as @e[tag=bluemissile,type=marker] run function items:minify/minifyblue
execute as @e[tag=yellowmissile,type=marker] run function items:minify/minifyyellow

#Extra for Duplex
execute as @e[tag=duplexExtraBlue,type=marker] at @s run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute as @e[tag=duplexExtraBlue,type=marker] run kill @s
execute as @e[tag=duplexExtraYellow,type=marker] at @s run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
execute as @e[tag=duplexExtraYellow,type=marker] run kill @s

#Extra for Broadsword
execute as @e[tag=broadExtraBlue,type=marker] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] replace
execute as @e[tag=broadExtraBlue,type=marker] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt replace
execute as @e[tag=broadExtraBlue,type=marker] run kill @s
execute as @e[tag=broadExtraYellow,type=marker] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] replace
execute as @e[tag=broadExtraYellow,type=marker] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt replace
execute as @e[tag=broadExtraYellow,type=marker] run kill @s

#Extra for Warhead
execute as @e[tag=warExtraBlue,type=marker] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] replace
execute as @e[tag=warExtraBlue,type=marker] run kill @s
execute as @e[tag=warExtraYellow,type=marker] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] replace
execute as @e[tag=warExtraYellow,type=marker] run kill @s

##Kill entity
kill @e[tag=missile,type=marker]