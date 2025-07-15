# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# If the ender pearl hits something, do nothing
execute unless predicate custom:has_vehicle on origin run function custom:player_action/forget_all_canopies
execute unless predicate custom:has_vehicle run return run kill @s

# Movement trail
execute if score @s entity.age matches 1.. if score $dust CmdData matches 1 run particle minecraft:block{block_state:"minecraft:spruce_leaves"} ~ ~ ~ 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 run particle minecraft:dust{color:0x00FFFF,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 run particle minecraft:dust{color:0xFFFF00,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if score $dust CmdData matches 1 run particle minecraft:dust{color:0xFFFFFF,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Pause aging inside of portals
execute if score @s entity.age matches 8..9 if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 8..9 if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players remove @s entity.age 2
execute if score @s entity.age matches 8..9 if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 8..9 if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players remove @s entity.age 2

# Pause aging near the void
execute if score @s entity.age matches 8..9 if predicate custom:canopy_nearvoid if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] run scoreboard players remove @s entity.age 1

# Pause aging near spawnpoints
execute if score @s entity.age matches 8..9 if entity @e[distance=..7,type=marker,tag=BlueSpawnZone,limit=1] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 8..9 if entity @e[distance=..7,type=marker,tag=YellowSpawnZone,limit=1] run scoreboard players remove @s entity.age 1

# Pause aging inside of portals (crusade)
execute if score $YellowShield crusadehp matches -1000..0 if score @s entity.age matches 8..9 at @s if entity @s[x=0,y=44,z=64,dx=24,dy=12,dz=6] run scoreboard players remove @s entity.age 1
execute if score $YellowShield crusadehp matches -1000..0 if score @s entity.age matches 8..9 at @s if entity @s[x=3,y=43,z=66,dx=18,dy=1,dz=2] run scoreboard players remove @s entity.age 2
execute if score $BlueShield crusadehp matches -1000..0 if score @s entity.age matches 8..9 at @s if entity @s[x=0,y=44,z=-70,dx=24,dy=12,dz=6] run scoreboard players remove @s entity.age 1
execute if score $BlueShield crusadehp matches -1000..0 if score @s entity.age matches 8..9 at @s if entity @s[x=3,y=43,z=-68,dx=18,dy=1,dz=2] run scoreboard players remove @s entity.age 2

# Deploy
execute if score @s entity.age matches 9.. run function entities:canopy_projectile/actions/deploy
