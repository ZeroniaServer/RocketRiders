# Redirect function to the brain
execute unless entity @s[predicate=entities:type/vortex_projectile/brain] run return run execute on passengers if entity @s[predicate=entities:type/vortex_projectile/brain] run function entities:vortex_projectile/actions/deploy

# Kill body and correct position
execute on vehicle if entity @s[predicate=entities:type/vortex_projectile/body] run function custom:tp_passengers_to_self_and_die

# Convert to a vortex entity
data remove entity @s data.vortex_projectile
execute at @s run function entities:vortex/init
