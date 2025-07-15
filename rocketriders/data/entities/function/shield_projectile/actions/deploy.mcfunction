# Redirect function to the brain
execute unless entity @s[predicate=entities:shield_projectile/brain] run return run execute on passengers if entity @s[predicate=entities:shield_projectile/brain] run function entities:shield_projectile/actions/deploy

# Kill body
execute on vehicle run kill @s[predicate=entities:shield_projectile/body]

# Convert to a shield entity
data remove entity @s data.shield_projectile
function entities:shield/init
