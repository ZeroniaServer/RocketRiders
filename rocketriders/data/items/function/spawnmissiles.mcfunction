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
execute if entity @s[tag=yellowmissile] if entity @a[limit=1,x=0,tag=spawn_egg.placer,tag=FlipMissile,predicate=custom:team/yellow] run tag @s add missileflip
execute if entity @s[tag=bluemissile] if entity @a[limit=1,x=0,tag=spawn_egg.placer,tag=FlipMissile,predicate=custom:team/blue] run tag @s add missileflip
tag @s[tag=missileflip,tag=yellowmissile] add wasyellow
tag @s[tag=missileflip,tag=bluemissile] add wasblue
execute if entity @s[tag=missileflip,tag=yellowmissile,tag=wasyellow] run function items:flip/flipyellow
execute if entity @s[tag=missileflip,tag=bluemissile,tag=wasblue] run function items:flip/flipblue

##Mark Chunks
execute if entity @s[tag=bluemissile] positioned as @s positioned ~ ~-5 ~ run function items:mark_missile_regions/south
execute if entity @s[tag=yellowmissile] positioned as @s positioned ~ ~-5 ~ run function items:mark_missile_regions/north

##Prevention
#Void
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:near_void run tag @s add void
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:near_void run tag @s add UnableMissile

#Roof
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:near_or_above_roof run tag @s add roof
execute if entity @s[tag=!UnableMissile] at @s if predicate custom:near_or_above_roof run tag @s add UnableMissile

#Pierce Prevention (Portals)
execute unless predicate game:game_rules/disable_pierce_prevention/on run function items:prevention/preventmissiles

#Spawnpoint
execute if entity @s[tag=!UnableMissile] run function items:prevention/spawnpoint

##Antigrief
#Normal antigrief - starts after 10 seconds
execute if score $match_play_time global matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief
execute if score $match_play_time global matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief
execute if score $match_play_time global matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:flip/antigrief
execute if score $match_play_time global matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:flip/antigrief

#Stronger antigrief - starts before 10 seconds
execute if score $match_play_time global matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if score $match_play_time global matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec
execute if score $match_play_time global matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if score $match_play_time global matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec

#Collision Control - applies to enemy base
execute if predicate game:modifiers/collision_control/on unless predicate game:modifiers/hardcore/on if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=30] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on unless predicate game:modifiers/hardcore/on if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=37,dz=30] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on unless predicate game:modifiers/hardcore/on if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=30] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on unless predicate game:modifiers/hardcore/on if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=37,dz=30] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on if predicate game:modifiers/hardcore/on if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=18] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on if predicate game:modifiers/hardcore/on if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=49,dz=18] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on if predicate game:modifiers/hardcore/on if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-67,dz=18] run function items:prevention/collisioncontrol
execute if predicate game:modifiers/collision_control/on if predicate game:modifiers/hardcore/on if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=49,dz=18] run function items:prevention/collisioncontrol

#Remove clone blocks
function items:prevention/clearafter

#Give back
execute if entity @s[tag=UnableMissile,tag=!missileflip] run function items:prevention/unablefx
execute if entity @s[tag=UnableMissile,tag=missileflip] run function items:flip/unablefx
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function items:prevention/giveback

##Bot preparation (for PVE mode)
execute if entity @s[tag=bluemissile] if entity @e[x=0,type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
execute if entity @s[tag=yellowmissile] if entity @e[x=0,type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}

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

#Hypersonic (+ extra entity)
tp @s[tag=BlueHyper] ~-1 ~-8 ~5
execute if entity @s[tag=BlueHyper,tag=!strict] run summon marker ~ ~ ~ {Tags:["hyperExtraBlue","hyperExtra"]}
execute if entity @s[tag=BlueHyper,tag=strict] run summon marker ~ ~ ~ {Tags:["hyperExtraBlue","hyperExtra","strict"]}
tp @s[tag=YellowHyper] ~-1 ~-8 ~-14
execute if entity @s[tag=YellowHyper,tag=!strict] run summon marker ~ ~ ~ {Tags:["hyperExtraYellow","hyperExtra"]}
execute if entity @s[tag=YellowHyper,tag=strict] run summon marker ~ ~ ~ {Tags:["hyperExtraYellow","hyperExtra","strict"]}

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
execute if entity @s[tag=strict] run function items:prevention/trackportals

##Place structure
execute at @s[tag=!missileflip,tag=!strict] positioned ~ ~2 ~ run function items:placestructure
execute at @s[tag=missileflip,tag=!strict] positioned ~ ~2 ~ run function items:flip/placestructure
execute at @s[tag=!missileflip,tag=strict] positioned ~ ~2 ~ run function items:placestructurestrict
execute at @s[tag=missileflip,tag=strict] positioned ~ ~2 ~ run function items:flip/placestructurestrict

#Cut down on redundant spawn position entries
execute if entity @s[tag=bluemissile] run function items:minify/minifyblue
execute if entity @s[tag=yellowmissile] run function items:minify/minifyyellow

#Extra for Duplex
execute if entity @s[tag=BlueDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail
execute if entity @s[tag=BlueDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~1 ~-5 ~17 air
execute if entity @s[tag=BlueDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~-1 ~-5 ~17 air
execute if entity @s[tag=BlueDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run fill ~ ~-5 ~16 ~ ~-4 ~16 air
execute if entity @s[tag=BlueDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~20 ~ ~-5 ~20 powered_rail[shape=north_south] replace powered_rail strict
execute if entity @s[tag=BlueDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~1 ~-5 ~17 air strict
execute if entity @s[tag=BlueDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run setblock ~-1 ~-5 ~17 air strict
execute if entity @s[tag=BlueDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraBlue,limit=1] at @s run fill ~ ~-5 ~16 ~ ~-4 ~16 air strict
execute if entity @s[tag=BlueDuplex] run kill @e[x=0,type=marker,tag=duplexExtraBlue]
execute if entity @s[tag=YellowDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~1 ~-5 ~-17 air
execute if entity @s[tag=YellowDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~-1 ~-5 ~-17 air
execute if entity @s[tag=YellowDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run fill ~ ~-5 ~-16 ~ ~-4 ~-16 air
execute if entity @s[tag=YellowDuplex,tag=!strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail
execute if entity @s[tag=YellowDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~1 ~-5 ~-17 air strict
execute if entity @s[tag=YellowDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run setblock ~-1 ~-5 ~-17 air strict
execute if entity @s[tag=YellowDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s run fill ~ ~-5 ~-16 ~ ~-4 ~-16 air strict
execute if entity @s[tag=YellowDuplex,tag=strict] as @e[x=0,type=marker,tag=duplexExtraYellow,limit=1] at @s if block ~ ~-6 ~20 end_stone run fill ~ ~-5 ~-20 ~ ~-5 ~-20 powered_rail[shape=north_south] replace powered_rail strict
execute if entity @s[tag=YellowDuplex] run kill @e[x=0,type=marker,tag=duplexExtraYellow]

#Extra for Broadsword
execute if entity @s[tag=BlueBroad,tag=!strict] as @e[x=0,type=marker,tag=broadExtraBlue,limit=1] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] replace
execute if entity @s[tag=BlueBroad,tag=!strict] as @e[x=0,type=marker,tag=broadExtraBlue,limit=1] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt replace
execute if entity @s[tag=BlueBroad,tag=strict] as @e[x=0,type=marker,tag=broadExtraBlue,limit=1] at @s run fill ~1 ~-5 ~6 ~1 ~-5 ~6 observer[facing=south,powered=true] strict
execute if entity @s[tag=BlueBroad,tag=strict] as @e[x=0,type=marker,tag=broadExtraBlue,limit=1] at @s run fill ~1 ~-5 ~5 ~1 ~-5 ~5 tnt strict
execute if entity @s[tag=BlueBroad] run kill @e[x=0,type=marker,tag=broadExtraBlue]
execute if entity @s[tag=YellowBroad,tag=!strict] as @e[x=0,type=marker,tag=broadExtraYellow,limit=1] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] replace
execute if entity @s[tag=YellowBroad,tag=!strict] as @e[x=0,type=marker,tag=broadExtraYellow,limit=1] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt replace
execute if entity @s[tag=YellowBroad,tag=strict] as @e[x=0,type=marker,tag=broadExtraYellow,limit=1] at @s run fill ~-1 ~-5 ~-6 ~-1 ~-5 ~-6 observer[facing=north,powered=true] strict
execute if entity @s[tag=YellowBroad,tag=strict] as @e[x=0,type=marker,tag=broadExtraYellow,limit=1] at @s run fill ~-1 ~-5 ~-5 ~-1 ~-5 ~-5 tnt strict
execute if entity @s[tag=YellowBroad] run kill @e[x=0,type=marker,tag=broadExtraYellow]

#Extra for Warhead
execute if entity @s[tag=BlueWar,tag=!strict] as @e[x=0,type=marker,tag=warExtraBlue,limit=1] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] replace
execute if entity @s[tag=BlueWar,tag=strict] as @e[x=0,type=marker,tag=warExtraBlue,limit=1] at @s run fill ~ ~-5 ~10 ~ ~-5 ~10 observer[facing=north,powered=true] strict
execute if entity @s[tag=BlueWar] run kill @e[x=0,type=marker,tag=warExtraBlue]
execute if entity @s[tag=YellowWar,tag=!strict] as @e[x=0,type=marker,tag=warExtraYellow,limit=1] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] replace
execute if entity @s[tag=YellowWar,tag=strict] as @e[x=0,type=marker,tag=warExtraYellow,limit=1] at @s run fill ~ ~-5 ~-10 ~ ~-5 ~-10 observer[facing=south,powered=true] strict
execute if entity @s[tag=YellowWar] run kill @e[x=0,type=marker,tag=warExtraYellow]

#Extra for Hypersonic
execute if entity @s[tag=BlueHyper,tag=strict] as @e[x=0,type=marker,tag=hyperExtraBlue,tag=strict,limit=1] at @s run function items:hyperextra
execute if entity @s[tag=YellowHyper,tag=strict] as @e[x=0,type=marker,tag=hyperExtraYellow,tag=strict,limit=1] at @s run function items:hyperextra

#Unstable TNT Modifier
execute if predicate game:modifiers/unstable_tnt/on run function modifiers:unstabletnt

##Pierce Prevention -- resolve portals
execute if entity @s[tag=strict] run function items:prevention/resolveportals

##Kill entity
kill @s

##Surprise Egg support
execute as @e[x=0,type=marker,tag=surp] at @s run function items:spawnmissiles

## Clear any blocks that are outside the world border
# south border
execute positioned ~ ~ ~30 if predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:176.0}}}} run fill ~-5 ~-10 177 ~5 ~5 ~ minecraft:air strict
execute positioned ~ ~ ~30 if predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:176.0}}}} run fill ~-5 ~-10 176 ~5 ~5 176 minecraft:barrier strict
# north border
execute positioned ~ ~ ~-30 unless predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:-175.0}}}} run fill ~-5 ~-10 ~ ~5 ~5 -177 minecraft:air strict
execute positioned ~ ~ ~-30 unless predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:-175.0}}}} run fill ~-5 ~-10 -176 ~5 ~5 -176 minecraft:barrier strict
# east border
execute positioned ~5 ~ ~ if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:188.0}}}} run fill 189 ~-10 ~-30 ~ ~5 ~30 minecraft:air strict
execute positioned ~5 ~ ~ if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:188.0}}}} run fill 188 ~-10 ~-30 188 ~5 ~30 minecraft:barrier strict
# west border
execute positioned ~-5 ~ ~ unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-163.0}}}} run fill ~ ~-10 ~-30 -165 ~5 ~30 minecraft:air strict
execute positioned ~-5 ~ ~ unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-163.0}}}} run fill -164 ~-10 ~-30 -164 ~5 ~30 minecraft:barrier strict
