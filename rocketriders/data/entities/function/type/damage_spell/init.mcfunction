tag @s remove damage_spell.new

# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/damage_spell] run return fail

## Set up data
data modify entity @s data.damage_spell set value {}

data modify storage rocketriders:main damage_spell.name set value "Damage Spell"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Spell"], write_to:"storage rocketriders:main damage_spell.name"}
data modify entity @s[type=area_effect_cloud] CustomName set from storage rocketriders:main damage_spell.name

scoreboard players set $team var -1
execute unless predicate game:match_components/neutral_items on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"

## Spawn behaviour
execute if entity @s[tag=spell_type.damage] run particle minecraft:instant_effect{color:0x7F7F7F} ~ ~ ~ 1 1 1 0 5
execute if entity @s[tag=spell_type.damage] run particle minecraft:instant_effect{color:0x3F3F3F} ~ ~ ~ 1 1 1 0 5
