# Redirect function to the brain
execute if entity @s[predicate=entities:vortex_projectile/body] run return run execute on passengers if entity @s[predicate=entities:vortex_projectile/brain] at @s run function entities:vortex_projectile/actions/deploy

# Kill body
execute on vehicle run kill @s[predicate=entities:vortex_projectile/body]

# Convert to a vortex entity
data remove entity @s data.vortex_projectile
function entities:vortex/init
