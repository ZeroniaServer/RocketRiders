####################################################
## SPAWNMISSILES: How all missiles are positioned ##
## and placed upon spawning them from a spawn egg ##
####################################################

##Surprise Egg
execute if entity @s[tag=BlueSurprise] run function items:surprise_blue/rng
execute if entity @s[tag=BlueSurpriseNormal] run function items:surprise_blue/rngnormal
execute if entity @s[tag=BlueSurpriseHeavy] run function items:surprise_blue/rngheavy
execute if entity @s[tag=BlueSurpriseLightning] run function items:surprise_blue/rnglightning
execute if entity @s[tag=BlueSurpriseSpecial] run function items:surprise_blue/rngspecial

execute if entity @s[tag=YellowSurprise] run function items:surprise_yellow/rng
execute if entity @s[tag=YellowSurpriseNormal] run function items:surprise_yellow/rngnormal
execute if entity @s[tag=YellowSurpriseHeavy] run function items:surprise_yellow/rngheavy
execute if entity @s[tag=YellowSurpriseLightning] run function items:surprise_yellow/rnglightning
execute if entity @s[tag=YellowSurpriseSpecial] run function items:surprise_yellow/rngspecial

##Flipping Capability
execute store result score $tempuuid playerUUID run data get entity @s data.UUID[0]
execute if entity @s[tag=yellowmissile] if entity @a[team=Yellow,predicate=custom:matches_uuid,tag=FlipMissile] run tag @s add missileflip
execute if entity @s[tag=bluemissile] if entity @a[team=Blue,predicate=custom:matches_uuid,tag=FlipMissile] run tag @s add missileflip
scoreboard players reset $tempuuid playerUUID
tag @s[tag=missileflip,tag=yellowmissile] add wasyellow
tag @s[tag=missileflip,tag=bluemissile] add wasblue
execute if entity @s[tag=missileflip,tag=yellowmissile,tag=wasyellow] run function items:flip/flipyellow
execute if entity @s[tag=missileflip,tag=bluemissile,tag=wasblue] run function items:flip/flipblue

##Prevention
#Void
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:nearvoid run tag @s add void
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:nearvoid run tag @s add UnableMissile

#Roof
execute in overworld if entity @s[tag=!UnableMissile] at @s if predicate custom:nearroof run tag @s add roof
execute in overworld if entity @s[tag=!UnableMissile] at @s if predicate custom:nearroof run tag @s add UnableMissile

#Pierce Prevention (Portals)
execute if entity @e[type=armor_stand,tag=Selection,tag=doPrevention,tag=!preventionOff] run function items:prevention/preventmissiles
execute if entity @e[type=armor_stand,tag=Selection,tag=preventionOff,tag=preventionSoft] run function items:prevention/preventmissiles

#Spawnpoint
execute if entity @s[tag=!UnableMissile] run function items:prevention/spawnpoint

##Antigrief
#Normal antigrief - starts after 10 seconds
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=bluemissile,tag=!missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=-86,dz=29] run function items:prevention/antigrief
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=yellowmissile,tag=!missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=57,dz=29] run function items:prevention/antigrief
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=yellowmissile,tag=missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=bluemissile,tag=missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief

#Stronger antigrief - starts before 10 seconds
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=bluemissile,tag=!missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=yellowmissile,tag=!missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=yellowmissile,tag=missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if entity @e[type=armor_stand,tag=Selection,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=bluemissile,tag=missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec

#Collision Control - applies to enemy base
execute if entity @e[type=armor_stand,tag=Selection,tag=CollisionControl] if entity @s[tag=yellowmissile,tag=!missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=-67,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[type=armor_stand,tag=Selection,tag=CollisionControl] if entity @s[tag=bluemissile,tag=!missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=37,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[type=armor_stand,tag=Selection,tag=CollisionControl] if entity @s[tag=bluemissile,tag=missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=-67,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[type=armor_stand,tag=Selection,tag=CollisionControl] if entity @s[tag=yellowmissile,tag=missileflip] if entity @s[x=-15,dx=54,y=33,dy=40,z=37,dz=30] run function items:prevention/collisioncontrol

#Remove clone blocks
function items:prevention/clearafter

#Give back
execute if entity @s[tag=UnableMissile,tag=!missileflip] run function items:prevention/unablefx
execute if entity @s[tag=UnableMissile,tag=missileflip] run function items:flip/unablefx
execute as @e[type=armor_stand,tag=Selection] run function items:prevention/giveback

##Bot preparation (for PVE mode)
execute if entity @s[tag=bluemissile] if entity @e[type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
execute if entity @s[tag=yellowmissile] if entity @e[type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}

##SmartClear preparation
execute if entity @s[tag=bluemissile] run data modify storage rocketriders:bmissilepos x prepend from entity @s Pos[0]
execute if entity @s[tag=bluemissile] run data modify storage rocketriders:bmissilepos y prepend from entity @s Pos[1]
execute if entity @s[tag=bluemissile] run data modify storage rocketriders:bmissilepos z prepend from entity @s Pos[2]

execute if entity @s[tag=yellowmissile] run data modify storage rocketriders:ymissilepos x prepend from entity @s Pos[0]
execute if entity @s[tag=yellowmissile] run data modify storage rocketriders:ymissilepos y prepend from entity @s Pos[1]
execute if entity @s[tag=yellowmissile] run data modify storage rocketriders:ymissilepos z prepend from entity @s Pos[2]

##Play sounds
execute if entity @s[tag=!UnableMissile,tag=!surprising] as @a[distance=..6] run playsound minecraft:block.slime_block.place master @s ~ ~ ~ 1 1
execute if entity @s[tag=!UnableMissile,tag=!surprising] as @a[distance=..6] run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 1
execute if entity @s[tag=!UnableMissile,tag=!surprising] as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1

##Individual missile positioning
#Auxiliary
execute if entity @s[tag=BlueAux] run tp @s ~-1 ~-9 ~4
execute if entity @s[tag=YellowAux] run tp @s ~-1 ~-9 ~-14

#TomaTwo
execute if entity @s[tag=BlueToma] run tp @s ~-1 ~-7 ~4
execute if entity @s[tag=YellowToma] run tp @s ~-1 ~-7 ~-12

#Chronullifier
execute if entity @s[tag=BlueNull] run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowNull] run tp @s ~-1 ~-8 ~-12

#Warhead (+ extra entity)
execute if entity @s[tag=BlueWar] run summon marker ~ ~ ~ {Tags:[warExtraBlue]}
execute if entity @s[tag=BlueWar] run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowWar] run summon marker ~ ~ ~ {Tags:[warExtraYellow]}
execute if entity @s[tag=YellowWar] run tp @s ~-1 ~-8 ~-14

#Thunderbolt
execute if entity @s[tag=BlueBolt] run tp @s ~-1 ~-7 ~4
execute if entity @s[tag=YellowBolt] run tp @s ~-1 ~-7 ~-14

#Hurricane
execute if entity @s[tag=BlueHur] run tp @s ~-1 ~-7 ~5
execute if entity @s[tag=YellowHur] run tp @s ~-1 ~-7 ~-13

#Elder Guardian
execute if entity @s[tag=BlueGuard] run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowGuard] run tp @s ~-1 ~-8 ~-14

#A.N.T.
execute if entity @s[tag=BlueAnt] run tp @s ~ ~-9 ~4
execute if entity @s[tag=YellowAnt] run tp @s ~ ~-9 ~-10

#Blade
execute if entity @s[tag=BlueBlade] run tp @s ~-1 ~-7 ~4
execute if entity @s[tag=YellowBlade] run tp @s ~-1 ~-7 ~-18

#Rifter
execute if entity @s[tag=BlueRift] run tp @s ~-1 ~-7 ~4
execute if entity @s[tag=YellowRift] run tp @s ~-1 ~-7 ~-17

#Juggerbuster
execute if entity @s[tag=BlueJug] run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowJug] run tp @s ~-1 ~-8 ~-20

#Slasher
execute if entity @s[tag=BlueSlash] run tp @s ~-1 ~-9 ~4
execute if entity @s[tag=YellowSlash] run tp @s ~-1 ~-9 ~-16

#Catapult
execute if entity @s[tag=BlueCata] run tp @s ~-1 ~-8 ~3
execute if entity @s[tag=YellowCata] run tp @s ~-1 ~-8 ~-14

#Citadel
execute if entity @s[tag=BlueCitadel] run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowCitadel] run tp @s ~-1 ~-8 ~-13

#Gemini
execute if entity @s[tag=BlueGemi] run tp @s ~-1 ~-7 ~4
execute if entity @s[tag=YellowGemi] run tp @s ~-1 ~-7 ~-13

#Lifter
execute if entity @s[tag=BlueLift] run tp @s ~-1 ~-7 ~4
execute if entity @s[tag=YellowLift] run tp @s ~-1 ~-7 ~-10

#Hypersonic
execute if entity @s[tag=BlueHyper] run tp @s ~-1 ~-8 ~5
execute if entity @s[tag=YellowHyper] run tp @s ~-1 ~-8 ~-14

#Bullet
execute if entity @s[tag=BlueBull] at @s run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowBull] at @s run tp @s ~-1 ~-8 ~-16

#Duplex (+ extra entity)
execute if entity @s[tag=BlueDuplex] run summon marker ~ ~ ~ {Tags:[duplexExtraBlue]}
execute if entity @s[tag=BlueDuplex] run tp @s ~-1 ~-8 ~4
execute if entity @s[tag=YellowDuplex] run summon marker ~ ~ ~ {Tags:[duplexExtraYellow]}
execute if entity @s[tag=YellowDuplex] run tp @s ~-1 ~-8 ~-21

#Broadsword (+ extra entity)
execute if entity @s[tag=BlueBroad] run summon marker ~ ~ ~ {Tags:[broadExtraBlue]}
execute if entity @s[tag=BlueBroad] run tp @s ~-1 ~-8 ~5
execute if entity @s[tag=YellowBroad] run summon marker ~ ~ ~ {Tags:[broadExtraYellow]}
execute if entity @s[tag=YellowBroad] run tp @s ~-1 ~-8 ~-16

##Portal spawn detection
execute at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn
execute at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn
execute if entity @s[tag=portalSpawn] at @s run tp @s ~ ~4 ~
execute if entity @s[tag=portalSpawn] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn2
execute if entity @s[tag=portalSpawn] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn2
execute if entity @s[tag=portalSpawn2] at @s run tp @s ~ ~ ~8
execute if entity @s[tag=portalSpawn2] at @s if block ~ ~ ~ #custom:portalblocks run tag @s add portalSpawn3
execute if entity @s[tag=portalSpawn2] at @s if block ~ ~-1 ~ #custom:portalblocks run tag @s add portalSpawn3
execute if entity @s[tag=portalSpawn3] at @s run tp @s ~ ~ ~-16

##Place structure
execute at @s run function items:structureblock

#Cut down on redundant spawn position entries
execute if entity @s[tag=bluemissile] run function items:minify/minifyblue
execute if entity @s[tag=yellowmissile] run function items:minify/minifyyellow

#Extra for Duplex
execute as @e[type=marker,tag=duplexExtraBlue] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute as @e[type=marker,tag=duplexExtraBlue] run kill @s
execute as @e[type=marker,tag=duplexExtraYellow] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
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
kill @s