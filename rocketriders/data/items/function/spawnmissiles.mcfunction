####################################################
## SPAWNMISSILES: How all missiles are positioned ##
## and placed upon spawning them from a spawn egg ##
####################################################

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
execute if score $play_time match matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief
execute if score $play_time match matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief
execute if score $play_time match matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:flip/antigrief
execute if score $play_time match matches 200.. unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:flip/antigrief

#Stronger antigrief - starts before 10 seconds
execute if score $play_time match matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if score $play_time match matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=!missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec
execute if score $play_time match matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=yellowmissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=-86,dz=40] run function items:prevention/antigrief_10sec
execute if score $play_time match matches ..199 unless predicate game:match_components/disable_antigrief_system if entity @s[tag=bluemissile,tag=missileflip,x=-15,dx=54,y=33,dy=40,z=46,dz=40] run function items:prevention/antigrief_10sec

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
execute if entity @s[tag=!UnableMissile] as @a[distance=..6] run playsound minecraft:block.slime_block.place master @s ~ ~ ~ 1 1
execute if entity @s[tag=!UnableMissile] as @a[distance=..6] run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 1
execute if entity @s[tag=!UnableMissile] as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1


##Modern Place
data modify storage rocketriders:main missile.place set value {}
data modify storage rocketriders:main missile.place.missile set from storage rocketriders:main spawn_egg.missile
function items:missile/get_properties with storage rocketriders:main missile.place

# get placer team (-1:=none, 0:=blue, 1:=yellow)
scoreboard players set $missile_origin_team var -1
execute as @a[limit=1,tag=spawn_egg.placer] if predicate custom:team/any_playing_team store success score $missile_origin_team var if predicate custom:team/yellow

# set missile team
execute if score $missile_origin_team var matches -1 run data modify storage rocketriders:main missile.place.team set value "none"
execute if score $missile_origin_team var matches 0 run data modify storage rocketriders:main missile.place.team set value "blue"
execute if score $missile_origin_team var matches 1 run data modify storage rocketriders:main missile.place.team set value "yellow"

# set direction
#scoreboard players set $direction var 0
#execute if score $missile_origin_team var matches 1 run scoreboard players set $direction var 1
#execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,tag=FlipMissile] store success score $direction var if score $direction var matches 0
#execute if score $direction var matches 0 run data modify storage rocketriders:main missile.place merge from storage rocketriders:main missile.place.transforms.south
#execute if score $direction var matches 1 run data modify storage rocketriders:main missile.place merge from storage rocketriders:main missile.place.transforms.north

scoreboard players set $direction var 0
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=45..135] run scoreboard players set $direction var 1
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=135..-135] run scoreboard players set $direction var 2
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=-135..-45] run scoreboard players set $direction var 3
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=-45..0] run scoreboard players set $direction var 0
execute if score $direction var matches 0 run data modify storage rocketriders:main missile.place merge from storage rocketriders:main missile.place.transforms.south
execute if score $direction var matches 1 run data modify storage rocketriders:main missile.place merge from storage rocketriders:main missile.place.transforms.west
execute if score $direction var matches 2 run data modify storage rocketriders:main missile.place merge from storage rocketriders:main missile.place.transforms.north
execute if score $direction var matches 3 run data modify storage rocketriders:main missile.place merge from storage rocketriders:main missile.place.transforms.east

# check basic antigrief
scoreboard players set $antigrief_flagged var 0
execute if score $missile_origin_team var matches 0 store success score $antigrief_flagged var run function items:missile/check_antigrief_blue with storage rocketriders:main missile.place
execute if score $missile_origin_team var matches 1 store success score $antigrief_flagged var run function items:missile/check_antigrief_yellow with storage rocketriders:main missile.place
execute if score $antigrief_flagged var matches 1 run say ANTIGRIEF FLAGGED

# check strict antigrief
scoreboard players set $strict_antigrief_flagged var 0
execute if score $play_time match matches ..199 store success score $strict_antigrief_flagged var run function items:missile/check_antigrief_strict with storage rocketriders:main missile.place
execute if score $play_time match matches ..199 if score $strict_antigrief_flagged var matches 1 run say STRICT ANTIGRIEF FLAGGED

# check for portal intersection
scoreboard players set $intersecting_portal var 0
execute store success score $intersecting_portal var run function items:missile/check_portal with storage rocketriders:main missile.place
execute if score $intersecting_portal var matches 1 run say PORTAL INTERSECTED

# place
execute if score $intersecting_portal var matches 0 run function items:missile/place with storage rocketriders:main missile.place
execute if score $intersecting_portal var matches 1 unless predicate game:game_rules/disable_pierce_prevention/on run function items:missile/place_pierce_prevention with storage rocketriders:main missile.place
execute if score $intersecting_portal var matches 1 if predicate game:game_rules/disable_pierce_prevention/on run function items:missile/place with storage rocketriders:main missile.place


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

#Warhead
tp @s[tag=BlueWar] ~-1 ~-8 ~4
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

#Duplex
tp @s[tag=BlueDuplex] ~-1 ~-8 ~4
tp @s[tag=YellowDuplex] ~-1 ~-8 ~-21

#Broadsword
execute if entity @s[tag=BlueBroad] run tp @s ~-1 ~-8 ~5
execute if entity @s[tag=YellowBroad] run tp @s ~-1 ~-8 ~-16

#Extra for Hypersonic
execute if entity @s[tag=BlueHyper,tag=strict] as @e[x=0,type=marker,tag=hyperExtraBlue,tag=strict,limit=1] at @s run function items:hyperextra
execute if entity @s[tag=YellowHyper,tag=strict] as @e[x=0,type=marker,tag=hyperExtraYellow,tag=strict,limit=1] at @s run function items:hyperextra

##Kill entity
kill @s

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
