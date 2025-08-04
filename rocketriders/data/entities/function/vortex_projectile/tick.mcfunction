# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:vortex_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. if score $dust CmdData matches 1 run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Pause aging inside of portals
execute if predicate entities:origin_team/blue if score @s entity.age matches 20.. if entity @s[x=-12,y=36,z=-80,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players set @s entity.age 19
execute if predicate entities:origin_team/yellow if score @s entity.age matches 20.. if entity @s[x=-12,y=36,z=68,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players set @s entity.age 19

# Pause aging near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run scoreboard players remove @s entity.age 1
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run scoreboard players remove @s entity.age 1

# Pause aging near flags
execute if score @s entity.age matches 20.. if predicate custom:near_flag_base run scoreboard players set @s entity.age 19

# Deploy
execute if score @s entity.age matches 20.. on vehicle positioned as @s align xyz unless entity @e[limit=1,dx=0,predicate=entities:vortex/body] on passengers if entity @s[predicate=entities:vortex_projectile/brain] run function entities:vortex_projectile/actions/deploy
