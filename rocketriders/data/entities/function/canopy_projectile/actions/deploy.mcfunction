# Redirect function to the brain
execute unless entity @s[predicate=entities:canopy_projectile/brain] run return run execute on passengers if entity @s[predicate=entities:canopy_projectile/brain] run function entities:canopy_projectile/actions/deploy

# Kill body
execute on vehicle run kill @s[predicate=entities:canopy_projectile/body]

# Convert to a canopy entity
data remove entity @s data.canopy_projectile
function entities:canopy/init
