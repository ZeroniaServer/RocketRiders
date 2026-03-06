# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:type/health_spell] run return fail

## Set up data
data modify entity @s data.health_spell set value {brain:{}}

data modify entity @s Owner set from entity @a[limit=1,x=0,tag=spell_emitter.origin] UUID

scoreboard players set $team var -1
execute unless predicate game:match_components/neutral_items on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"

## Spawn effects
particle minecraft:instant_effect{color:0x00FF00,power:3} ~ ~ ~ 0.5 1 0.5 1 30 force @a[predicate=custom:in_arena]
particle minecraft:instant_effect{color:0x00FF00,power:1} ~ ~ ~ 0.5 1 0.5 1 30 force @a[predicate=custom:in_arena]

# Snap to floor
execute on origin if predicate custom:is_on_ground run return 1
execute unless block ~ ~-1 ~ #custom:nonsolid align y run return run tp @s ~ ~ ~
execute positioned as @s unless block ~ ~-2 ~ #custom:nonsolid align y run return run tp @s ~ ~-1 ~
