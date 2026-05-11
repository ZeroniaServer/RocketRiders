## Fail if out of bounds
execute if predicate custom:near_void run return run say FAILED: VOID
execute if predicate custom:near_or_above_roof run return run say FAILED: ROOF

## Get missile placement properties
function items:missile/get_properties with storage rocketriders:main spawn_egg
data modify storage rocketriders:main missile.properties.missile set from storage rocketriders:main spawn_egg.missile

# get volume
execute store result score $volume var run data get storage rocketriders:main missile.properties.volume

# get placer team (-1:=none, 0:=blue, 1:=yellow)
scoreboard players set $missile_origin_team var -1
execute as @a[limit=1,tag=spawn_egg.placer] if predicate custom:team/any_playing_team store success score $missile_origin_team var if predicate custom:team/yellow

# set missile team
execute if score $missile_origin_team var matches -1 run data modify storage rocketriders:main missile.properties.team set value "none"
execute if score $missile_origin_team var matches 0 run data modify storage rocketriders:main missile.properties.team set value "blue"
execute if score $missile_origin_team var matches 1 run data modify storage rocketriders:main missile.properties.team set value "yellow"

# set direction
#scoreboard players set $direction var 0
#execute if score $missile_origin_team var matches 1 run scoreboard players set $direction var 1
#execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,tag=FlipMissile] store success score $direction var if score $direction var matches 0
#execute if score $direction var matches 1 run scoreboard players set $direction 2
#execute if score $direction var matches 0 run data modify storage rocketriders:main missile.properties merge from storage rocketriders:main missile.properties.transforms.south
#execute if score $direction var matches 1 run data modify storage rocketriders:main missile.properties merge from storage rocketriders:main missile.properties.transforms.north

scoreboard players set $direction var 0
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=45..135] run scoreboard players set $direction var 1
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=135..-135] run scoreboard players set $direction var 2
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=-135..-45] run scoreboard players set $direction var 3
execute if entity @a[limit=1,x=0,tag=spawn_egg.placer,y_rotation=-45..0] run scoreboard players set $direction var 0
execute if score $direction var matches 0 run data modify storage rocketriders:main missile.properties merge from storage rocketriders:main missile.properties.transforms.south
execute if score $direction var matches 1 run data modify storage rocketriders:main missile.properties merge from storage rocketriders:main missile.properties.transforms.west
execute if score $direction var matches 2 run data modify storage rocketriders:main missile.properties merge from storage rocketriders:main missile.properties.transforms.north
execute if score $direction var matches 3 run data modify storage rocketriders:main missile.properties merge from storage rocketriders:main missile.properties.transforms.east

## Block intersection checks
scoreboard players set $intersecting_blue var 0
execute if predicate custom:in_blue_half store success score $intersecting_blue var run function items:missile/check_intersecting_blue with storage rocketriders:main missile.properties
scoreboard players set $intersecting_yellow var 0
execute if predicate custom:in_yellow_half store success score $intersecting_yellow var run function items:missile/check_intersecting_yellow with storage rocketriders:main missile.properties

# check basic antigrief
scoreboard players set $antigrief_flagged var 0
execute if score $play_time match matches 200.. if score $missile_origin_team var matches 0 if score $intersecting_blue var matches 1 unless predicate game:match_components/disable_antigrief_system store success score $antigrief_flagged var run function items:missile/check_antigrief_blue with storage rocketriders:main missile.properties
execute if score $play_time match matches 200.. if score $missile_origin_team var matches 1 if score $intersecting_yellow var matches 1 unless predicate game:match_components/disable_antigrief_system store success score $antigrief_flagged var run function items:missile/check_antigrief_yellow with storage rocketriders:main missile.properties
execute if score $antigrief_flagged var matches 1 run return run say FAILED: ANTIGRIEF

# check collision control or strong antigrief
scoreboard players set $collision_control var 0
execute if predicate game:modifiers/collision_control/on if score $missile_origin_team var matches 0 if score $intersecting_yellow var matches 1 run scoreboard players set $collision_control var 1
execute if predicate game:modifiers/collision_control/on if score $missile_origin_team var matches 1 if score $intersecting_blue var matches 1 run scoreboard players set $collision_control var 1

scoreboard players set $strong_antigrief var 0
execute if score $play_time match matches ..199 unless predicate game:match_components/disable_antigrief_system if score $missile_origin_team var matches 0 if predicate custom:in_blue_half run scoreboard players set $strong_antigrief var 1
execute if score $play_time match matches ..199 unless predicate game:match_components/disable_antigrief_system if score $missile_origin_team var matches 1 if predicate custom:in_yellow_half run scoreboard players set $strong_antigrief var 1

scoreboard players set $check_collision var 0
execute if score $collision_control var matches 1 run scoreboard players set $check_collision var 1
execute if score $strong_antigrief var matches 1 run scoreboard players set $check_collision var 1

scoreboard players set $collision_flagged var 0
execute if score $check_collision var matches 1 store success score $collision_flagged var run function items:missile/check_collision with storage rocketriders:main missile.properties
execute if score $collision_flagged var matches 1 if score $strong_antigrief var matches 1 run return run say FAILED: ANTIGRIEF (10sec)
execute if score $collision_flagged var matches 1 if score $collision_control var matches 1 run return run say FAILED: COLLISION CONTROL

# check portal intersection
scoreboard players set $intersecting_portal var 0
execute store success score $intersecting_portal var run function items:missile/check_portal with storage rocketriders:main missile.properties
execute if score $intersecting_portal var matches 1 if score $missile_origin_team var matches 0 if predicate custom:in_blue_half run return run say FAILED: ANTIGRIEF
execute if score $intersecting_portal var matches 1 if score $missile_origin_team var matches 1 if predicate custom:in_yellow_half run return run say FAILED: ANTIGRIEF
execute if score $intersecting_portal var matches 1 unless predicate game:game_rules/disable_pierce_prevention/on run return run say FAILED: PIERCE PREVENTION

## Place missile
execute if score $intersecting_portal var matches 0 run function items:missile/place with storage rocketriders:main missile.properties
execute if score $intersecting_portal var matches 1 unless predicate game:game_rules/disable_pierce_prevention/on run function items:missile/place_pierce_prevention with storage rocketriders:main missile.properties
execute if score $intersecting_portal var matches 1 if predicate game:game_rules/disable_pierce_prevention/on run function items:missile/place with storage rocketriders:main missile.properties
# mark arena clear regions (TODO: east & west)
execute if score $direction var matches 0 positioned ~ ~-5 ~ run function items:missile/mark_regions/south
execute if score $direction var matches 2 positioned ~ ~-5 ~ run function items:missile/mark_regions/north

## Play sounds
execute as @a[distance=..6] run playsound minecraft:block.slime_block.place master @s ~ ~ ~ 1 1
execute as @a[distance=..6] run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 1
execute as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1

## Legacy (TODO) extra Hypersonic logic
execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} if score $missile_origin_team var matches 0 run summon marker ~ ~ ~ {Tags:["hyperExtraBlue","hyperExtra"]}
execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} if score $missile_origin_team var matches 1 run summon marker ~ ~ ~ {Tags:["hyperExtraYellow","hyperExtra"]}

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

## Bot preparation (for PVE mode) (OLD)
#execute if entity @s[tag=bluemissile] if entity @e[x=0,type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
#execute if entity @s[tag=yellowmissile] if entity @e[x=0,type=armor_stand,tag=Bot] run summon marker ~ ~ ~ {Tags:[RecentBotspawn]}
