# Kill body
execute on vehicle run kill @s[predicate=entities:type/stinging_shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:game_rules/impact_utilities/on run return run function entities:type/stinging_shield_projectile/actions/break

## If impact_utilities is ON
# Prevent deployment when out of bounds
execute if predicate custom:near_void run return run function entities:type/stinging_shield_projectile/actions/break
execute if entity @s[y=175,dy=100] run return run function entities:type/stinging_shield_projectile/actions/break
execute positioned as @s if predicate custom:location/touching_or_beyond_world_border run return run function entities:type/stinging_shield_projectile/actions/break

execute at @s positioned ~ ~2 ~ unless predicate entities:stinging_shield_can_be_deployed positioned as @s run return run function entities:type/stinging_shield_projectile/actions/break
execute at @s positioned ~ ~2 ~ if function custom:location/is_near_flag_base positioned as @s run return run function entities:type/stinging_shield_projectile/actions/break
execute at @s run tp ~ ~2 ~

# Re-initialise as a "stinging_shield" entity
data remove entity @s data.stinging_shield_projectile
execute at @s run function entities:type/stinging_shield/init
