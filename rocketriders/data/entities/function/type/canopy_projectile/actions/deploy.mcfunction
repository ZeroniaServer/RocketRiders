# Redirect function to the brain
execute unless entity @s[predicate=entities:type/canopy_projectile/brain] run return run execute on passengers if entity @s[predicate=entities:type/canopy_projectile/brain] run function entities:type/canopy_projectile/actions/deploy

# Kill body and correct position
execute on vehicle if entity @s[predicate=entities:type/canopy_projectile/body] run function custom:entity/teleport_passengers_to_self_and_die

# Convert to a canopy entity
data remove entity @s data.canopy_projectile
execute at @s run function entities:type/canopy/init
