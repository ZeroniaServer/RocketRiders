# Do nothing if already processed
execute unless entity @s[type=egg] run return fail
execute if entity @s[predicate=entities:icbm] run return fail

## Set up data
data modify entity @s data.icbm set value {body:{}}

data modify storage rocketriders:main icbm.name set value "Intercontinental Ballistic Missle"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s ICBM"], write_to:"storage rocketriders:main icbm.name"}
data modify entity @s CustomName set from storage rocketriders:main icbm.name

## Achievements
#execute on origin run advancement grant @s only achievements:rr_challenges/veteran ShieldSpawned
#execute on origin run tag @s add ShieldSpawned

## Summon brain
tag @s add icbm.this
data modify storage rocketriders:main icbm.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:icbm/init/brain"}}
tag @s remove icbm.this
