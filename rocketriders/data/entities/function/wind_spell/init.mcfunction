# Do nothing if already processed
execute unless entity @s[type=#custom:wind_charge] run return fail
execute if entity @s[predicate=entities:type/wind_spell] run return fail

## Set up data
data modify entity @s data.wind_spell set value {body:{}}

## Summon brain
tag @s add wind_spell.this
data modify storage rocketriders:main wind_spell.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:wind_spell/init/brain"}}
tag @s remove wind_spell.this
