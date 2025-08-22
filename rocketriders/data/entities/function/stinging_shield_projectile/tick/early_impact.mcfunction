# Kill body
execute on vehicle run kill @s[predicate=entities:type/stinging_shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:modifiers/impact_utilities/on run return run function entities:stinging_shield_projectile/actions/break

## If impact_utilities is ON
# Prevent deployment when out of bounds
execute if entity @s[x=-12,y=36,z=-74,dx=48,dy=25,dz=0] run return run function entities:stinging_shield_projectile/actions/break
execute if entity @s[x=-12,y=36,z=74,dx=48,dy=25,dz=0] run return run function entities:stinging_shield_projectile/actions/break
execute if predicate custom:nearvoid run return run function entities:stinging_shield_projectile/actions/break
execute if entity @s[y=175,dy=100] run return run function entities:stinging_shield_projectile/actions/break
execute unless predicate custom:insideborder run return run function entities:stinging_shield_projectile/actions/break

execute unless predicate entities:stinging_shield_can_be_deployed run return run function entities:stinging_shield_projectile/actions/break

# Re-initialise as a "stinging_shield" entity
data remove entity @s data.stinging_shield_projectile
execute at @s run tp ~ ~2 ~
execute at @s run function entities:stinging_shield/init
