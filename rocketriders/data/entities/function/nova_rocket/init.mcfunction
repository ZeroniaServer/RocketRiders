# Do nothing if already processed
execute unless entity @s[type=firework_rocket] run return fail
execute if entity @s[predicate=entities:type/nova_rocket] run return fail

## Set up data
data modify entity @s data.nova_rocket set value {body:{}}

data modify storage rocketriders:main nova_rocket.name set value "Nova Rocket"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Nova Rocket"], write_to:"storage rocketriders:main nova_rocket.name"}
data modify entity @s CustomName set from storage rocketriders:main nova_rocket.name

data merge entity @s {LifeTime:30}

## Achievements
execute on origin run advancement grant @s only achievements:rr_challenges/veteran NovaSpawned
execute on origin run tag @s add NovaSpawned

## Summon brain
tag @s add nova_rocket.this
data modify storage rocketriders:main nova_rocket.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:nova_rocket/init/brain"}}
tag @s remove nova_rocket.this
