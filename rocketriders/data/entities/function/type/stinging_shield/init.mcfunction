# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/stinging_shield] run return fail

## Set up data
data modify entity @s data.stinging_shield set value {}
scoreboard players set @s entity.age 0

data modify storage rocketriders:main shield.name set value "Stinging Shield"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Stinging Shield"], write_to:"storage rocketriders:main stinging_shield.name"}
data modify entity @s CustomName set from storage rocketriders:main shield.name

## Spawn behaviour
execute align xyz run tp @s ~0.5 ~0.5 ~0.5
execute at @s if predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:185.0}}}} run tp @s 184.5 ~ ~
execute at @s unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-160.0}}}} run tp @s -159.5 ~ ~
execute at @s if predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:176.0}}}} run tp @s ~ ~ 175.5
execute at @s unless predicate {condition:"minecraft:location_check",predicate:{position:{z:{min:-175.0}}}} run tp @s ~ ~ -174.5
