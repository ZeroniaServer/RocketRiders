# Break if near own portals
execute if predicate entities:origin_team/blue if entity @s[x=-12,y=36,z=-80,dx=48,dy=25,dz=12] run return run function entities:icbm/actions/break
execute if predicate entities:origin_team/yellow if entity @s[x=-12,y=36,z=68,dx=48,dy=25,dz=12] run return run function entities:icbm/actions/break

# Break if near roof
execute if predicate custom:nearroof run return run function entities:icbm/actions/break

# If egg hits something, explode
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:icbm/tick/check_for_chicken

# Movement trail
particle large_smoke ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Explode after one second
execute if score @s entity.age matches 20.. run function entities:icbm/actions/explode
