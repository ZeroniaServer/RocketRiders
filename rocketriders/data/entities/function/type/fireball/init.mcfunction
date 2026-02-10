# Do nothing if already processed
execute unless entity @s[type=fireball] run return fail
execute if entity @s[predicate=entities:type/fireball] run return fail

## Set up data
data modify entity @s data.fireball set value {body:{}}
execute if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on run data modify entity @s ExplosionPower set value 3
execute if predicate game:modifiers/clutter_collector/on run data modify entity @s ExplosionPower set value 0

## Summon brain
tag @s add fireball.this
data modify storage rocketriders:main fireball.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/fireball/init/brain"}}
tag @s remove fireball.this
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
