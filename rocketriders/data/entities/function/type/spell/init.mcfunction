tag @s remove spell.new

# Do nothing if already processed
execute unless entity @s[type=#entities:spell_entity_type] run return fail
execute if entity @s[predicate=entities:type/spell] run return fail

# Do nothing if no spell type is set
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run particle minecraft:instant_effect{color:0x000000} ~ ~ ~ 1 1 1 0 5
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run particle minecraft:instant_effect{color:0xFF00FF} ~ ~ ~ 1 1 1 0 5
execute if entity @s[tag=!spell_type.fire,tag=!spell_type.health,tag=!spell_type.damage,tag=!spell_type.wind] run return run kill @s

## Set up data
data modify entity @s data.spell set value {}

data modify storage rocketriders:main spell.name set value "Spell"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Spell"], write_to:"storage rocketriders:main spell.name"}
data modify entity @s[type=area_effect_cloud] CustomName set from storage rocketriders:main spell.name

scoreboard players set $team var -1
execute unless predicate game:gamemode_components/neutral_items on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"

## Spawn behaviour
execute if entity @s[tag=spell_type.damage] run particle minecraft:instant_effect{color:0x7F7F7F} ~ ~ ~ 1 1 1 0 5
execute if entity @s[tag=spell_type.damage] run particle minecraft:instant_effect{color:0x3F3F3F} ~ ~ ~ 1 1 1 0 5
