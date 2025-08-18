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

##Pierce Prevention -- track portals
execute if entity @s[tag=strict] if block 11 38 74 nether_portal run scoreboard players set $y1port var 1
execute if entity @s[tag=strict] if block 13 38 74 nether_portal run scoreboard players set $y2port var 1
execute if entity @s[tag=strict] if block 11 38 -74 nether_portal run scoreboard players set $b1port var 1
execute if entity @s[tag=strict] if block 13 38 -74 nether_portal run scoreboard players set $b2port var 1

#Crusade Mode override behavior
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled,limit=1] if block 4 45 67 nether_portal run scoreboard players set $yport var 1
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled,limit=1] if block 4 45 -67 nether_portal run scoreboard players set $bport var 1

##Place structure
execute at @s[tag=!missileflip,tag=!strict] positioned ~ ~2 ~ run function items:placestructure
execute at @s[tag=missileflip,tag=!strict] positioned ~ ~2 ~ run function items:flip/placestructure
execute at @s[tag=!missileflip,tag=strict] positioned ~ ~2 ~ run function items:placestructurestrict
execute at @s[tag=missileflip,tag=strict] positioned ~ ~2 ~ run function items:flip/placestructurestrict

#Cut down on redundant spawn position entries
execute if entity @s[tag=bluemissile] run function items:minify/minifyblue
execute if entity @s[tag=yellowmissile] run function items:minify/minifyyellow

#Extra for Duplex
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~1 ~-5 ~17 air
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~-1 ~-5 ~17 air
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run fill ~ ~-5 ~16 ~ ~-4 ~16 air
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail strict
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~1 ~-5 ~17 air strict
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~-1 ~-5 ~17 air strict
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run fill ~ ~-5 ~16 ~ ~-4 ~16 air strict
kill @e[x=0,type=marker,tag=duplexExtraBlue,limit=1]
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~1 ~-5 ~-17 air
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~-1 ~-5 ~-17 air
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run fill ~ ~-5 ~-16 ~ ~-4 ~-16 air
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~1 ~-5 ~-17 air strict
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~-1 ~-5 ~-17 air strict
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run fill ~ ~-5 ~-16 ~ ~-4 ~-16 air strict
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail strict
kill @e[x=0,type=marker,tag=duplexExtraYellow,limit=1]

#Extra for Broadsword
execute if entity @s[tag=!strict] as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] replace
execute if entity @s[tag=!strict] as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt replace
execute if entity @s[tag=strict] as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] strict
execute if entity @s[tag=strict] as @e[type=marker,tag=broadExtraBlue] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt strict
execute as @e[type=marker,tag=broadExtraBlue] run kill @s
execute if entity @s[tag=!strict] as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] replace
execute if entity @s[tag=!strict] as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt replace
execute if entity @s[tag=strict] as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] strict
execute if entity @s[tag=strict] as @e[type=marker,tag=broadExtraYellow] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt strict
execute as @e[type=marker,tag=broadExtraYellow] run kill @s

#Extra for Warhead
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=warExtraBlue,limit=1] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] replace
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=warExtraBlue,limit=1] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] strict
kill @e[x=0,type=marker,tag=warExtraBlue,limit=1]
execute if entity @s[tag=!strict] as @e[x=0,type=marker,tag=warExtraYellow,limit=1] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] replace
execute if entity @s[tag=strict] as @e[x=0,type=marker,tag=warExtraYellow,limit=1] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] strict
kill @e[x=0,type=marker,tag=warExtraYellow,limit=1]

#Unstable TNT Modifier
execute if predicate game:modifier/unstable_tnt run function modifiers:unstabletnt

##Pierce Prevention -- replace portals
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill -10 58 74 34 58 74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill 34 58 74 34 37 74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill 34 37 74 -10 37 74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill 12 37 74 12 58 74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill -10 37 74 -10 58 74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill -10 58 -74 34 58 -74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill 34 58 -74 34 37 -74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill 34 37 -74 -10 37 -74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill 12 37 -74 12 58 -74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if entity @e[x=0,type=armor_stand,tag=Selection,tag=!noPortal] run fill -10 37 -74 -10 58 -74 minecraft:obsidian replace #custom:basereplace strict
execute if entity @s[tag=strict] if score $y1port var matches 1 run fill 11 38 74 -9 57 74 nether_portal strict
execute if entity @s[tag=strict] if score $y2port var matches 1 run fill 13 38 74 33 57 74 nether_portal strict
execute if entity @s[tag=strict] if score $b1port var matches 1 run fill 11 38 -74 -9 57 -74 nether_portal strict
execute if entity @s[tag=strict] if score $b2port var matches 1 run fill 13 38 -74 33 57 -74 nether_portal strict
scoreboard players reset $y1port var
scoreboard players reset $y2port var
scoreboard players reset $b1port var
scoreboard players reset $b2port var

#Crusade Mode override behavior
execute if entity @s[tag=strict] if score $yport var matches 1 run fill 21 56 67 3 44 67 obsidian strict
execute if entity @s[tag=strict] if score $yport var matches 1 run fill 20 55 67 4 45 67 nether_portal strict
execute if entity @s[tag=strict] if score $bport var matches 1 run fill 21 56 -67 3 44 -67 obsidian strict
execute if entity @s[tag=strict] if score $bport var matches 1 run fill 20 55 -67 4 45 -67 nether_portal strict
scoreboard players reset $yport var
scoreboard players reset $bport var

##Pierce Prevention -- set back powerables and pistons
execute if entity @s[tag=strict] run function items:prevention/setbackpowerables
execute if entity @s[tag=strict] run function items:prevention/setbackpistons

##Kill entity
kill @s

##Surprise Egg support
execute as @e[x=0,type=marker,tag=surp] at @s run function items:spawnmissiles