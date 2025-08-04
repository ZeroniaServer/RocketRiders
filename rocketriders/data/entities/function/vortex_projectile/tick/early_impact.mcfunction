execute store success score $chickens_were_spawned var if entity @e[limit=1,distance=..2,type=chicken,predicate=custom:is_baby]
execute if score $chickens_were_spawned var matches 1 as @e[distance=..2,type=chicken,predicate=custom:is_baby] run function custom:kill_mob_discretely

# Prevent deployment inside of portals
execute if predicate entities:origin_team/blue if entity @s[x=-12,y=36,z=-80,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run function entities:vortex_projectile/actions/break
execute if predicate entities:origin_team/yellow if entity @s[x=-12,y=36,z=68,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run function entities:vortex_projectile/actions/break

# Prevent deployment near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run return run function entities:vortex_projectile/actions/break
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run return run function entities:vortex_projectile/actions/break

# Prevent deployment near flags
execute if predicate custom:near_flag_base run return run function entities:vortex_projectile/actions/break

# Deploy if impact projectiles is on
execute if predicate game:modifier/impact_projectiles run return run function entities:vortex_projectile/actions/deploy

# Chance of creating a feathered vortex if chickens were spawned
execute if score $chickens_were_spawned var matches 0 run return run function entities:vortex_projectile/actions/break
execute align xyz if entity @e[limit=1,dx=0,predicate=entities:vortex/brain] run return run function entities:vortex_projectile/actions/break
execute unless predicate {condition:"minecraft:random_chance",chance:0.5} run return run function entities:vortex_projectile/actions/break
tag @s add vortex.feathered
function entities:vortex_projectile/actions/deploy
