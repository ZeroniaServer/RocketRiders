# Kill body
execute on vehicle run kill @s[predicate=entities:type/shield_projectile/body]

## If impact_utilities is OFF
execute unless predicate game:modifier/impact_utilities run return run function entities:shield_projectile/actions/break

## If impact_utilities is ON
execute unless predicate entities:shield_can_be_deployed run return run function entities:shield_projectile/actions/break

# Convert to a shield entity
data remove entity @s data.shield_projectile
function entities:shield/init
