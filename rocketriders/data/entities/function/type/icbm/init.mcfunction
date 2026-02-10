# Do nothing if already processed
execute unless entity @s[type=snowball] run return fail
execute if entity @s[predicate=entities:type/icbm] run return fail

## Return to player if used upon respawning
scoreboard players set $return var 0
execute on origin if score @s time_since_respawn matches ..10 run scoreboard players set $return var 1
execute if score $return var matches 1 run return run function entities:type/icbm/init/return_item

## Set up data
data modify entity @s data.icbm set value {body:{}}

data modify storage rocketriders:main icbm.name set value "Intercontinental Ballistic Missile"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s ICBM"], write_to:"storage rocketriders:main icbm.name"}
data modify entity @s CustomName set from storage rocketriders:main icbm.name

## Summon brain
tag @s add icbm.this
data modify storage rocketriders:main icbm.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/icbm/init/brain"}}
tag @s remove icbm.this
