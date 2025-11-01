# Redirect function to the brain
execute unless entity @s[predicate=entities:type/vortex_projectile/brain] run return run execute on passengers if entity @s[predicate=entities:type/vortex_projectile/brain] run function entities:vortex_projectile/actions/deploy

# Kill body and correct position
execute on vehicle if entity @s[predicate=entities:type/vortex_projectile/body] run function custom:tp_passengers_to_self_and_die

# If there is a vortex in this position, give it an arm
execute positioned as @s if entity @e[limit=1,distance=..1.5,predicate=entities:type/vortex/brain,predicate=!entities:vortex_has_max_arms] run return run function entities:vortex_projectile/tick/add_arm_to_nearby_vortex
execute positioned as @s align xyz if entity @e[limit=1,dx=0,predicate=entities:type/vortex/brain] positioned as @s unless function entities:vortex_projectile/tick/check_for_available_block run return run function entities:vortex_projectile/actions/break

# Convert to a vortex entity
data remove entity @s data.vortex_projectile
execute at @s run function entities:vortex/init
