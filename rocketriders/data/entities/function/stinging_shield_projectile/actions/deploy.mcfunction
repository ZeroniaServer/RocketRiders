# Redirect function to the brain
execute if entity @s[predicate=entities:stinging_shield_projectile/body] run return run execute on passengers if entity @s[predicate=entities:stinging_shield_projectile/brain] at @s run function entities:stinging_shield_projectile/actions/deploy

# Kill body
execute on vehicle run kill @s[predicate=entities:stinging_shield_projectile/body]

# Convert to a stinging_shield entity
data remove entity @s data.stinging_shield_projectile
execute at @s run function entities:stinging_shield/init
