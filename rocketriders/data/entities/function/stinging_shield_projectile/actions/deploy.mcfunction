## As body: Redirect this function to the brain.
execute if predicate entities:stinging_shield_projectile/body run return run execute on passengers if predicate entities:stinging_shield_projectile/brain at @s run function entities:stinging_shield_projectile/actions/deploy

## As brain: Kill body, and re-initialise brain as "stinging_shield"
# Kill body
execute on vehicle run kill @s[predicate=entities:stinging_shield_projectile/body]

# Re-initialise as a "stinging_shield" entity
data remove entity @s data.stinging_shield_projectile
execute at @s run function entities:stinging_shield/init
