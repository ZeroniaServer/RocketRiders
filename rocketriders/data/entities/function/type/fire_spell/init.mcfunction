# Do nothing if already processed
execute unless entity @s[type=small_fireball] run return fail
execute if entity @s[predicate=entities:type/fire_spell] run return fail

## Set up data
data modify entity @s data.fire_spell set value {body:{}}

## Summon brain
tag @s add fire_spell.this
data modify storage rocketriders:main fire_spell.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/fire_spell/init/brain"}}
tag @s remove fire_spell.this
