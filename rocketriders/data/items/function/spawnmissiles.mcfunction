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
execute if entity @s[tag=yellowmissile] if entity @a[x=0,team=Yellow,tag=FlipMissile,tag=placer,limit=1] run tag @s add missileflip
execute if entity @s[tag=bluemissile] if entity @a[x=0,team=Blue,tag=FlipMissile,tag=placer,limit=1] run tag @s add missileflip
tag @s[tag=missileflip,tag=yellowmissile] add wasyellow
tag @s[tag=missileflip,tag=bluemissile] add wasblue
execute if entity @s[tag=missileflip,tag=yellowmissile,tag=wasyellow] run function items:flip/flipyellow
execute if entity @s[tag=missileflip,tag=bluemissile,tag=wasblue] run function items:flip/flipblue

##Prevention
#Void
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:nearvoid run tag @s add void
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:nearvoid run tag @s add UnableMissile

#Roof
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:nearroof run tag @s add roof
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:nearroof run tag @s add UnableMissile

#Pierce Prevention (Portals)
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doPrevention,tag=!preventionOff] run function items:prevention/preventmissiles
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=preventionOff,tag=preventionSoft] run function items:prevention/preventmissiles

#Spawnpoint
execute if entity @s[tag=!UnableMissile] run function items:prevention/spawnpoint

##Antigrief
#Normal antigrief - starts after 10 seconds
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:flip/antigrief
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=200..}] if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:flip/antigrief

#Stronger antigrief - starts before 10 seconds
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!antigriefOff,scores={gametime=..199}] if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec

#Collision Control - applies to enemy base
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=!Hardcore] if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=!Hardcore] if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=37,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=!Hardcore] if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=!Hardcore] if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=37,dz=30] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=Hardcore] if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=18] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=Hardcore] if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=49,dz=18] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=Hardcore] if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=18] run function items:prevention/collisioncontrol
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CollisionControl,tag=Hardcore] if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=49,dz=18] run function items:prevention/collisioncontrol

#Remove clone blocks
function items:prevention/clearafter

#Give back
execute if entity @s[tag=UnableMissile,tag=!missileflip] run function items:prevention/unablefx
execute if entity @s[tag=UnableMissile,tag=missileflip] run function items:flip/unablefx
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function items:prevention/giveback

##Bot preparation (for PVE mode)
execute if entity @s[tag=bluemissile] if entity @e[x=0,type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
execute if entity @s[tag=yellowmissile] if entity @e[x=0,type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}

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
tp @s[tag=BlueAux] ~-1 ~-9 ~4
tp @s[tag=YellowAux] ~-1 ~-9 ~-14

#TomaTwo
tp @s[tag=BlueToma] ~-1 ~-7 ~4
tp @s[tag=YellowToma] ~-1 ~-7 ~-12

#Chronullifier
tp @s[tag=BlueNull] ~-1 ~-8 ~4
tp @s[tag=YellowNull] ~-1 ~-8 ~-12

#Warhead (+ extra entity)
execute if entity @s[tag=BlueWar] run summon marker ~ ~ ~ {Tags:[warExtraBlue]}
tp @s[tag=BlueWar] ~-1 ~-8 ~4
execute if entity @s[tag=YellowWar] run summon marker ~ ~ ~ {Tags:[warExtraYellow]}
tp @s[tag=YellowWar] ~-1 ~-8 ~-14

#Thunderbolt
tp @s[tag=BlueBolt] ~-1 ~-7 ~4
tp @s[tag=YellowBolt] ~-1 ~-7 ~-14

#Hurricane
tp @s[tag=BlueHur] ~-1 ~-7 ~5
tp @s[tag=YellowHur] ~-1 ~-7 ~-13

#Elder Guardian
tp @s[tag=BlueGuard] ~-1 ~-8 ~4
tp @s[tag=YellowGuard] ~-1 ~-8 ~-14

#A.N.T.
tp @s[tag=BlueAnt] ~ ~-9 ~4
tp @s[tag=YellowAnt] ~ ~-9 ~-10

#Blade
tp @s[tag=BlueBlade] ~-1 ~-7 ~4
tp @s[tag=YellowBlade] ~-1 ~-7 ~-18

#Rifter
tp @s[tag=BlueRift] ~-1 ~-7 ~4
tp @s[tag=YellowRift] ~-1 ~-7 ~-17

#Juggerbuster
tp @s[tag=BlueJug] ~-1 ~-8 ~4
tp @s[tag=YellowJug] ~-1 ~-8 ~-20

#Slasher
tp @s[tag=BlueSlash] ~-1 ~-9 ~4
tp @s[tag=YellowSlash] ~-1 ~-9 ~-16

#Catapult
tp @s[tag=BlueCata] ~-1 ~-8 ~3
tp @s[tag=YellowCata] ~-1 ~-8 ~-14

#Citadel
tp @s[tag=BlueCitadel] ~-1 ~-8 ~3
tp @s[tag=YellowCitadel] ~-1 ~-8 ~-12

#Gemini
tp @s[tag=BlueGemi] ~-1 ~-7 ~4
tp @s[tag=YellowGemi] ~-1 ~-7 ~-13

#Lifter
tp @s[tag=BlueLift] ~-1 ~-7 ~4
tp @s[tag=YellowLift] ~-1 ~-7 ~-10

#Hypersonic
tp @s[tag=BlueHyper] ~-1 ~-8 ~5
tp @s[tag=YellowHyper] ~-1 ~-8 ~-12

#Bullet
tp @s[tag=BlueBull] ~-1 ~-8 ~4
tp @s[tag=YellowBull] ~-1 ~-8 ~-16

#Duplex (+ extra entity)
execute if entity @s[tag=BlueDuplex] run summon marker ~ ~ ~ {Tags:[duplexExtraBlue]}
tp @s[tag=BlueDuplex] ~-1 ~-8 ~4
execute if entity @s[tag=YellowDuplex] run summon marker ~ ~ ~ {Tags:[duplexExtraYellow]}
tp @s[tag=YellowDuplex] ~-1 ~-8 ~-21

#Broadsword (+ extra entity)
execute if entity @s[tag=BlueBroad] run summon marker ~ ~ ~ {Tags:[broadExtraBlue]}
execute if entity @s[tag=BlueBroad] run tp @s ~-1 ~-8 ~5
execute if entity @s[tag=YellowBroad] run summon marker ~ ~ ~ {Tags:[broadExtraYellow]}
execute if entity @s[tag=YellowBroad] run tp @s ~-1 ~-8 ~-16

##Place structure
execute at @s[tag=!missileflip] positioned ~ ~2 ~ run function items:placestructure
execute at @s[tag=missileflip] positioned ~ ~2 ~ run function items:flip/placestructure

#Cut down on redundant spawn position entries
execute if entity @s[tag=bluemissile] run function items:minify/minifyblue
execute if entity @s[tag=yellowmissile] run function items:minify/minifyyellow

#Extra for Duplex
execute as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~1 ~-5 ~17 air
execute as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~-1 ~-5 ~17 air
execute as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run fill ~ ~-5 ~16 ~ ~-4 ~16 air
kill @e[x=0,type=marker,tag=duplexExtraBlue,limit=1]
execute as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~1 ~-5 ~-17 air
execute as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~-1 ~-5 ~-17 air
execute as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run fill ~ ~-5 ~-16 ~ ~-4 ~-16 air
execute as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
kill @e[x=0,type=marker,tag=duplexExtraYellow,limit=1]

#Extra for Broadsword
execute as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] replace
execute as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt replace
execute as @e[type=marker,tag=broadExtraBlue] run kill @s
execute as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] replace
execute as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt replace
execute as @e[type=marker,tag=broadExtraYellow] run kill @s

#Extra for Warhead
execute as @e[x=0,type=marker,tag=warExtraBlue,limit=1] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] replace
kill @e[x=0,type=marker,tag=warExtraBlue,limit=1]
execute as @e[x=0,type=marker,tag=warExtraYellow,limit=1] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] replace
kill @e[x=0,type=marker,tag=warExtraYellow,limit=1]

##Kill entity
kill @s