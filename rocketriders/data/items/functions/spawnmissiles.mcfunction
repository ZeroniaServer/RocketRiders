####################################################
## SPAWNMISSILES: How all missiles are positioned ##
## and placed upon spawning them from a spawn egg ##
####################################################

##Surprise Egg
execute as @e[type=marker,tag=BlueSurprise] at @s run function items:surprise_blue/rng
execute as @e[type=marker,tag=BlueSurpriseNormal] at @s run function items:surprise_blue/rngnormal
execute as @e[type=marker,tag=BlueSurpriseHeavy] at @s run function items:surprise_blue/rngheavy
execute as @e[type=marker,tag=BlueSurpriseLightning] at @s run function items:surprise_blue/rnglightning

execute as @e[type=marker,tag=YellowSurprise] at @s run function items:surprise_yellow/rng
execute as @e[type=marker,tag=YellowSurpriseNormal] at @s run function items:surprise_yellow/rngnormal
execute as @e[type=marker,tag=YellowSurpriseHeavy] at @s run function items:surprise_yellow/rngheavy
execute as @e[type=marker,tag=YellowSurpriseLightning] at @s run function items:surprise_yellow/rnglightning

##Flipping Capability
execute as @e[type=marker,tag=yellowmissile] at @s if entity @a[team=Yellow,limit=1,sort=nearest,distance=..5,tag=FlipMissile] run tag @s add missileflip
execute as @e[type=marker,tag=bluemissile] at @s if entity @a[team=Blue,limit=1,sort=nearest,distance=..5,tag=FlipMissile] run tag @s add missileflip
tag @e[type=marker,tag=missileflip,tag=yellowmissile] add wasyellow
tag @e[type=marker,tag=missileflip,tag=bluemissile] add wasblue
execute as @e[type=marker,tag=missileflip,tag=yellowmissile,tag=wasyellow] run function items:flip/flipyellow
execute as @e[type=marker,tag=missileflip,tag=bluemissile,tag=wasblue] run function items:flip/flipblue

##Prevention
#Void
execute as @e[type=marker,tag=!UnableMissile,tag=missile] at @s if predicate custom:nearvoid run tag @s add void
execute as @e[type=marker,tag=!UnableMissile,tag=missile] at @s if predicate custom:nearvoid run tag @s add UnableMissile

#Roof
execute in overworld as @e[type=marker,tag=!UnableMissile,tag=missile] at @s if predicate custom:nearroof run tag @s add roof
execute in overworld as @e[type=marker,tag=!UnableMissile,tag=missile] at @s if predicate custom:nearroof run tag @s add UnableMissile

#Pierce Prevention (Portals)
execute if entity @s[tag=doPrevention,tag=!preventionOff] run function items:prevention/preventmissiles
execute if entity @s[tag=preventionOff,tag=preventionSoft] run function items:prevention/preventmissiles

#Spawnpoint
execute as @e[type=marker,tag=!UnableMissile,tag=missile] at @s run function items:prevention/spawnpoint

##Antigrief
#Normal antigrief - starts after 10 seconds
execute if entity @s[tag=!antigriefOff,scores={gametime=200..}] as @e[type=marker,tag=bluemissile] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=17] run function items:prevention/antigrief
execute if entity @s[tag=!antigriefOff,scores={gametime=200..}] as @e[type=marker,tag=yellowmissile] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=57,dz=17] run function items:prevention/antigrief

#Stronger antigrief - starts before 10 seconds
execute if entity @s[tag=!antigriefOff,scores={gametime=..199}] as @e[type=marker,tag=bluemissile] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run function items:prevention/antigrief_10sec
execute if entity @s[tag=!antigriefOff,scores={gametime=..199}] as @e[type=marker,tag=yellowmissile] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run function items:prevention/antigrief_10sec

#Give back
execute as @e[type=marker,tag=UnableMissile,tag=!missileflip] at @s run function items:prevention/unablefx
execute as @e[type=marker,tag=UnableMissile,tag=missileflip] at @s run function items:flip/unablefx
function items:prevention/giveback

##Bot preparation (for PVE mode)
execute as @e[type=marker,tag=bluemissile] at @s if entity @e[type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
execute as @e[type=marker,tag=yellowmissile] at @s if entity @e[type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}

##SmartClear preparation
execute as @e[type=marker,tag=bluemissile] run data modify storage rocketriders:bmissilepos x prepend from entity @s Pos[0]
execute as @e[type=marker,tag=bluemissile] run data modify storage rocketriders:bmissilepos y prepend from entity @s Pos[1]
execute as @e[type=marker,tag=bluemissile] run data modify storage rocketriders:bmissilepos z prepend from entity @s Pos[2]

execute as @e[type=marker,tag=yellowmissile] run data modify storage rocketriders:ymissilepos x prepend from entity @s Pos[0]
execute as @e[type=marker,tag=yellowmissile] run data modify storage rocketriders:ymissilepos y prepend from entity @s Pos[1]
execute as @e[type=marker,tag=yellowmissile] run data modify storage rocketriders:ymissilepos z prepend from entity @s Pos[2]

##Play sounds
execute as @e[type=marker,tag=missile] at @s as @a[distance=..6] run playsound minecraft:block.slime_block.place master @s ~ ~ ~ 1 1
execute as @e[type=marker,tag=missile] at @s as @a[distance=..6] run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 1
execute as @e[type=marker,tag=missile] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1

##Individual missile positioning
#Auxiliary
execute as @e[type=marker,tag=BlueAux] at @s run tp @s ~-1 ~-9 ~4
execute as @e[type=marker,tag=YellowAux] at @s run tp @s ~-1 ~-9 ~-14

#TomaTwo
execute as @e[type=marker,tag=BlueToma] at @s run tp @s ~-1 ~-7 ~4
execute as @e[type=marker,tag=YellowToma] at @s run tp @s ~-1 ~-7 ~-12

#Chronullifier
execute as @e[type=marker,tag=BlueNull] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowNull] at @s run tp @s ~-1 ~-8 ~-12

#Warhead (+ extra entity)
execute as @e[type=marker,tag=BlueWar] at @s run summon marker ~ ~ ~ {Tags:[warExtraBlue]}
execute as @e[type=marker,tag=BlueWar] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowWar] at @s run summon marker ~ ~ ~ {Tags:[warExtraYellow]}
execute as @e[type=marker,tag=YellowWar] at @s run tp @s ~-1 ~-8 ~-14

#Thunderbolt
execute as @e[type=marker,tag=BlueBolt] at @s run tp @s ~-1 ~-7 ~4
execute as @e[type=marker,tag=YellowBolt] at @s run tp @s ~-1 ~-7 ~-14

#Hurricane
execute as @e[type=marker,tag=BlueHur] at @s run tp @s ~-1 ~-7 ~5
execute as @e[type=marker,tag=YellowHur] at @s run tp @s ~-1 ~-7 ~-13

#Elder Guardian
execute as @e[type=marker,tag=BlueGuard] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowGuard] at @s run tp @s ~-1 ~-8 ~-14

#A.N.T.
execute as @e[type=marker,tag=BlueAnt] at @s run tp @s ~ ~-9 ~4
execute as @e[type=marker,tag=YellowAnt] at @s run tp @s ~ ~-9 ~-10

#Blade
execute as @e[type=marker,tag=BlueBlade] at @s run tp @s ~-1 ~-7 ~4
execute as @e[type=marker,tag=YellowBlade] at @s run tp @s ~-1 ~-7 ~-18

#Rifter
execute as @e[type=marker,tag=BlueRift] at @s run tp @s ~-1 ~-7 ~4
execute as @e[type=marker,tag=YellowRift] at @s run tp @s ~-1 ~-7 ~-17

#Juggerbuster
execute as @e[type=marker,tag=BlueJug] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowJug] at @s run tp @s ~-1 ~-8 ~-20

#Slasher
execute as @e[type=marker,tag=BlueSlash] at @s run tp @s ~-1 ~-9 ~4
execute as @e[type=marker,tag=YellowSlash] at @s run tp @s ~-1 ~-9 ~-16

#Catapult
execute as @e[type=marker,tag=BlueCata] at @s run tp @s ~-1 ~-8 ~3
execute as @e[type=marker,tag=YellowCata] at @s run tp @s ~-1 ~-8 ~-14

#Citadel
execute as @e[type=marker,tag=BlueCitadel] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowCitadel] at @s run tp @s ~-1 ~-8 ~-13

#Gemini
execute as @e[type=marker,tag=BlueGemi] at @s run tp @s ~-1 ~-7 ~4
execute as @e[type=marker,tag=YellowGemi] at @s run tp @s ~-1 ~-7 ~-13

#Lifter
execute as @e[type=marker,tag=BlueLift] at @s run tp @s ~-1 ~-7 ~4
execute as @e[type=marker,tag=YellowLift] at @s run tp @s ~-1 ~-7 ~-10

#Hypersonic
execute as @e[type=marker,tag=BlueHyper] at @s run tp @s ~-1 ~-8 ~5
execute as @e[type=marker,tag=YellowHyper] at @s run tp @s ~-1 ~-8 ~-14

#Bullet
execute as @e[type=marker,tag=BlueBull] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowBull] at @s run tp @s ~-1 ~-8 ~-16

#Duplex (+ extra entity)
execute as @e[type=marker,tag=BlueDuplex] at @s run summon marker ~ ~ ~ {Tags:[duplexExtraBlue]}
execute as @e[type=marker,tag=BlueDuplex] at @s run tp @s ~-1 ~-8 ~4
execute as @e[type=marker,tag=YellowDuplex] at @s run summon marker ~ ~ ~ {Tags:[duplexExtraYellow]}
execute as @e[type=marker,tag=YellowDuplex] at @s run tp @s ~-1 ~-8 ~-21

#Broadsword (+ extra entity)
execute as @e[type=marker,tag=BlueBroad] at @s run summon marker ~ ~ ~ {Tags:[broadExtraBlue]}
execute as @e[type=marker,tag=BlueBroad] at @s run tp @s ~-1 ~-8 ~5
execute as @e[type=marker,tag=YellowBroad] at @s run summon marker ~ ~ ~ {Tags:[broadExtraYellow]}
execute as @e[type=marker,tag=YellowBroad] at @s run tp @s ~-1 ~-8 ~-16

##Portal spawn detection
execute as @e[type=marker,tag=missile] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[type=marker,tag=missile] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn
execute as @e[type=marker,tag=missile,tag=portalSpawn] at @s run tp @s ~ ~4 ~
execute as @e[type=marker,tag=missile,tag=portalSpawn] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[type=marker,tag=missile,tag=portalSpawn] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn2
execute as @e[type=marker,tag=missile,tag=portalSpawn2] at @s run tp @s ~ ~ ~8
execute as @e[type=marker,tag=missile,tag=portalSpawn2] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[type=marker,tag=missile,tag=portalSpawn2] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn3
execute as @e[type=marker,tag=missile,tag=portalSpawn3] at @s run tp @s ~ ~ ~-16

##Place structure
execute as @e[type=marker,tag=missile] at @s run function items:structureblock

#Cut down on redundant spawn position entries
execute as @e[type=marker,tag=bluemissile] run function items:minify/minifyblue
execute as @e[type=marker,tag=yellowmissile] run function items:minify/minifyyellow

#Extra for Duplex
execute as @e[type=marker,tag=duplexExtraBlue] at @s run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute as @e[type=marker,tag=duplexExtraBlue] run kill @s
execute as @e[type=marker,tag=duplexExtraYellow] at @s run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
execute as @e[type=marker,tag=duplexExtraYellow] run kill @s

#Extra for Broadsword
execute as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] replace
execute as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt replace
execute as @e[type=marker,tag=broadExtraBlue] run kill @s
execute as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] replace
execute as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt replace
execute as @e[type=marker,tag=broadExtraYellow] run kill @s

#Extra for Warhead
execute as @e[type=marker,tag=warExtraBlue] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] replace
execute as @e[type=marker,tag=warExtraBlue] run kill @s
execute as @e[type=marker,tag=warExtraYellow] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] replace
execute as @e[type=marker,tag=warExtraYellow] run kill @s

##Kill entity
kill @e[type=marker,tag=missile]