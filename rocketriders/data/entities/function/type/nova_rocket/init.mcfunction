# Do nothing if already processed
execute unless entity @s[type=firework_rocket] run return fail
execute if entity @s[predicate=entities:type/nova_rocket] run return fail

## Return to player if used upon respawning
scoreboard players set $return var 0
execute on origin if score @s time_since_respawn matches ..10 run scoreboard players set $return var 1
execute if score $return var matches 1 run return run function entities:type/nova_rocket/init/return_item

## Set up data
data modify entity @s data.nova_rocket set value {body:{}}

data modify storage rocketriders:main nova_rocket.name set value "Nova Rocket"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Nova Rocket"], write_to:"storage rocketriders:main nova_rocket.name"}
data modify entity @s CustomName set from storage rocketriders:main nova_rocket.name

data merge entity @s {LifeTime:30}

## Achievements
execute if predicate game:achievements_can_be_awarded on origin run advancement grant @s only achievements:rr_challenges/veteran NovaSpawned
execute if predicate game:achievements_can_be_awarded on origin run tag @s add NovaSpawned

## Summon brain
tag @s add nova_rocket.this
data modify storage rocketriders:main nova_rocket.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/nova_rocket/init/brain"}}
tag @s remove nova_rocket.this
