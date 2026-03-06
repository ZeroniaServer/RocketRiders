tag @s remove fire_spell.new

# Do nothing if already processed
execute unless entity @s[type=small_fireball] run return fail
execute if entity @s[predicate=entities:type/fire_spell] run return fail

## Set up data
data modify entity @s data.fire_spell set value {body:{}}

scoreboard players set $team var -1
execute unless predicate game:match_components/neutral_items on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"

## Summon brain
tag @s add fire_spell.this
data modify storage rocketriders:main fire_spell.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/fire_spell/init/brain"}}
tag @s remove fire_spell.this

## Spawn behavior
execute at @s run particle minecraft:instant_effect{color:0xFF7F00} ~ ~ ~ 1 1 1 0 5
execute at @s run particle minecraft:instant_effect{color:0x7F1F00} ~ ~ ~ 1 1 1 0 5
