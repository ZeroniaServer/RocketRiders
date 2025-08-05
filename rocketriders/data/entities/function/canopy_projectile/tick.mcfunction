# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:canopy_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. if score $dust CmdData matches 1 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Pause aging inside of portals
execute unless predicate game:gamemode_components/no_portal if score @s entity.age matches 8..9 if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] run scoreboard players remove @s entity.age 1
execute unless predicate game:gamemode_components/no_portal if score @s entity.age matches 8..9 if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] run scoreboard players remove @s entity.age 2
execute unless predicate game:gamemode_components/no_portal if score @s entity.age matches 8..9 if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] run scoreboard players remove @s entity.age 1
execute unless predicate game:gamemode_components/no_portal if score @s entity.age matches 8..9 if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] run scoreboard players remove @s entity.age 2

# Pause aging near the void
execute if score @s entity.age matches 8..9 if predicate custom:canopy_nearvoid unless predicate game:gamemode_components/neutral_utility_colors run scoreboard players remove @s entity.age 1

# Pause aging near spawnpoints
execute if score @s entity.age matches 8..9 if entity @e[distance=..7,type=marker,tag=BlueSpawnZone,limit=1] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 8..9 if entity @e[distance=..7,type=marker,tag=YellowSpawnZone,limit=1] run scoreboard players remove @s entity.age 1

# Pause aging inside of portals (crusade)
execute if predicate rr_crusade:yellow_portal_revealed if score @s entity.age matches 8..9 at @s if entity @s[x=0,y=44,z=64,dx=24,dy=12,dz=6] run scoreboard players remove @s entity.age 1
execute if predicate rr_crusade:yellow_portal_revealed if score @s entity.age matches 8..9 at @s if entity @s[x=3,y=43,z=66,dx=18,dy=1,dz=2] run scoreboard players remove @s entity.age 2
execute if predicate rr_crusade:blue_portal_revealed if score @s entity.age matches 8..9 at @s if entity @s[x=0,y=44,z=-70,dx=24,dy=12,dz=6] run scoreboard players remove @s entity.age 1
execute if predicate rr_crusade:blue_portal_revealed if score @s entity.age matches 8..9 at @s if entity @s[x=3,y=43,z=-68,dx=18,dy=1,dz=2] run scoreboard players remove @s entity.age 2

# Deploy
execute if score @s entity.age matches 9.. run function entities:canopy_projectile/actions/deploy
