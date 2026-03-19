# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/canopy/brain] run return fail

## Set up data
data modify entity @s data.canopy set value {brain:{}}
scoreboard players set @s entity.age 0
scoreboard players set @s entity.canopy.movement_cooldown 0

data modify storage rocketriders:main canopy.name set value "Canopy"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Canopy"], write_to:"storage rocketriders:main canopy.name"}
data modify entity @s CustomName set from storage rocketriders:main canopy.name

## Spawn behaviour
execute align xyz run tp @s ~0.5 ~ ~0.5
execute at @s[tag=canopy.small] if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:186}}}} run tp @s 185.5 ~ ~
execute at @s[tag=canopy.small] unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-161.0}}}} run tp @s -160.5 ~ ~
execute at @s[tag=canopy.small] if predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:174.0}}}} run tp @s ~ ~ 173.5
execute at @s[tag=canopy.small] unless predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:-173.0}}}} run tp @s ~ ~ -172.5
execute at @s[tag=!canopy.small] if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:185}}}} run tp @s 184.5 ~ ~
execute at @s[tag=!canopy.small] unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-160.0}}}} run tp @s -159.5 ~ ~
execute at @s[tag=!canopy.small] if predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:173.0}}}} run tp @s ~ ~ 172.5
execute at @s[tag=!canopy.small] unless predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:-172.0}}}} run tp @s ~ ~ -171.5

execute if predicate game:phase/match/play on origin run tag @s add canopy.origin
execute if predicate game:phase/match/play at @s[tag=!canopy.small] run playsound minecraft:entity.player.teleport player @a[x=0,tag=!canopy.origin] ~ ~2 ~ 1 1
execute if predicate game:phase/match/play on origin run tag @s remove canopy.origin

execute if predicate game:phase/match/play on origin run function custom:player_action/forget_canopy
tag @s remove canopy.forgotten_origin

execute positioned ~ ~ ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:beehives run function custom:destroy_bee_block
execute if predicate entities:origin_team/blue unless predicate game:match_components/dark_red_for_blue at @s positioned ~-1 ~ ~-1 run function custom:place_utility_structure {template:"game:canopy/blue",x_length:3,y_length:2,z_length:3,rules:{blocks_that_require_air:"#banners"}}
execute if predicate entities:origin_team/blue if predicate game:match_components/dark_red_for_blue at @s positioned ~-1 ~ ~-1 run function custom:place_utility_structure {template:"game:canopy/red",x_length:3,y_length:2,z_length:3,rules:{blocks_that_require_air:"#banners"}}
execute if predicate entities:origin_team/yellow unless predicate game:match_components/green_for_yellow at @s positioned ~-1 ~ ~-1 run function custom:place_utility_structure {template:"game:canopy/yellow",x_length:3,y_length:2,z_length:3,rules:{blocks_that_require_air:"#banners"}}
execute if predicate entities:origin_team/yellow if predicate game:match_components/green_for_yellow at @s positioned ~-1 ~ ~-1 run function custom:place_utility_structure {template:"game:canopy/green",x_length:3,y_length:2,z_length:3,rules:{blocks_that_require_air:"#banners"}}
execute if predicate entities:origin_team/none at @s positioned ~-1 ~ ~-1 run function custom:place_utility_structure {template:"game:canopy/white",x_length:3,y_length:2,z_length:3,rules:{blocks_that_require_air:"#banners"}}

execute at @s run playsound ui.stonecutter.take_result master @a[x=0] ~ ~ ~ 2 0
execute at @s run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 1
execute at @s run playsound block.grass.place master @a[x=0] ~ ~ ~ 2 0

## Summon saddle
tag @s add canopy.this
execute at @s positioned ~ ~-10000 ~ summon snowball positioned ~ ~10000 ~ run function entities:type/canopy/init/saddle_link
tag @s remove canopy.this
