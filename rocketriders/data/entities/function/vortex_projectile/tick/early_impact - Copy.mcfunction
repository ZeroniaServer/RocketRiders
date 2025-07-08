execute store success score $chickens_were_spawned var if entity @e[limit=1,distance=..2,type=chicken,predicate=custom:is_baby]
execute if score $chickens_were_spawned var matches 1 as @e[distance=..2,type=chicken,predicate=custom:is_baby] run function custom:kill_mob_discretely

# Prevent deployment inside of portals
execute if predicate entities:origin_team/blue if entity @s[x=-12,y=36,z=-80,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run kill @s
execute if predicate entities:origin_team/yellow if entity @s[x=-12,y=36,z=68,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run kill @s

# Prevent deployment near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run return run kill @s
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run return run kill @s

# Prevent deployment near flags
execute positioned -10 65 -64 if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run return run kill @s
execute positioned 34 65 -64 if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run return run kill @s
execute positioned -10 65 64 if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run return run kill @s
execute positioned 34 65 64 if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run return run kill @s

# Deploy if impact projectiles is on
execute if predicate game:config/impact_projectiles run return run function entities:vortex_projectile/actions/deploy

# Chance of creating a feathered vortex if chickens were spawned
execute if score $chickens_were_spawned var matches 0 run return 0
execute align xyz if entity @e[limit=1,dx=0,predicate=entities:vortex/brain] run return run kill @s
execute unless predicate {condition:"minecraft:random_chance",chance:0.5} run return run kill @s
tag @s add vortex.feathered
function entities:vortex_projectile/actions/deploy
