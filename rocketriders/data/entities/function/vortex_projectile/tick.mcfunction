# Early impact
execute unless predicate custom:has_vehicle run return run function entities:vortex_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. if score $dust CmdData matches 1 run particle dragon_breath ~ ~ ~ 0 0 0 0.02 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 run particle minecraft:dust{color:0x0000FF,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 run particle minecraft:dust{color:0xFFFF00,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if score $dust CmdData matches 1 run particle minecraft:dust{color:0xFFFFFF,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Pause aging inside of portals
execute if predicate entities:origin_team/blue if score @s entity.age matches 20.. if entity @s[x=-12,y=36,z=-80,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players set @s entity.age 19
execute if predicate entities:origin_team/yellow if score @s entity.age matches 20.. if entity @s[x=-12,y=36,z=68,dx=48,dy=28,dz=12] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run scoreboard players set @s entity.age 19

# Pause aging near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run scoreboard players remove @s entity.age 1
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run scoreboard players remove @s entity.age 1

# Pause aging near flags
execute positioned -10 65 -64 if score @s entity.age matches 20.. if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set @s entity.age 19
execute positioned 34 65 -64 if score @s entity.age matches 20.. if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set @s entity.age 19
execute positioned -10 65 64 if score @s entity.age matches 20.. if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set @s entity.age 19
execute positioned 34 65 64 if score @s entity.age matches 20.. if entity @s[distance=..5] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run scoreboard players set @s entity.age 19

# Deploy
execute if score @s entity.age matches 20.. align xyz unless entity @e[limit=1,dx=0,predicate=entities:vortex/body] positioned as @s run function entities:vortex_projectile/actions/deploy
