execute unless entity @s[type=player] run return fail

execute on origin run tag @s add matchOrigin
execute as @e[x=0,predicate=entities:canopy] if function custom:match_origin run tag @s add canopy.forgotten_origin
execute on origin run tag @s remove matchOrigin

attribute @s minecraft:safe_fall_distance modifier remove rocketriders:canopy
attribute @s minecraft:jump_strength modifier remove rocketriders:canopy
attribute @s minecraft:movement_speed modifier remove rocketriders:canopy
