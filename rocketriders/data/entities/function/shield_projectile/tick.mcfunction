# Early impact
execute unless predicate custom:has_vehicle run return run function entities:shield_projectile/tick/early_impact

# Movement trail
execute if score @s entity.age matches 1.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 run particle minecraft:dust{color:0x00FFFF,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 run particle minecraft:dust{color:0xFFFF00,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 1.. if predicate entities:origin_team/none if score $dust CmdData matches 1 run particle minecraft:dust{color:0xFFFFFF,scale:1} ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Pause aging inside of portals
execute if score @s entity.age matches 19..20 if entity @s[x=-12,y=33,z=-74,dx=48,dy=28] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noPortal] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 19..20 if entity @s[x=-12,y=33,z=74,dx=48,dy=28] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noPortal] run scoreboard players remove @s entity.age 1

# Pause aging near the void
execute if predicate custom:nearvoid run scoreboard players remove @s entity.age 1

# Pause aging near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run scoreboard players remove @s entity.age 1
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run scoreboard players remove @s entity.age 1

# Pause aging inside of portals (crusade)
execute if score $BlueShield crusadehp matches -1000..0 if score @s entity.age matches 19..20 if entity @s[x=1,y=40,z=-67,dx=22,dy=19] run scoreboard players remove @s entity.age 2
execute if score $YellowShield crusadehp matches -1000..0 if score @s entity.age matches 19..20 if entity @s[x=1,y=40,z=67,dx=22,dy=19] run scoreboard players remove @s entity.age 2

# Pause aging near flags (ctf)
execute if score @s entity.age matches 19..20 positioned -10 65 -64 as @s[distance=..5] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 19..20 positioned 34 65 -64 as @s[distance=..5] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 19..20 positioned -10 65 64 as @s[distance=..5] run scoreboard players remove @s entity.age 1
execute if score @s entity.age matches 19..20 positioned 34 65 64 as @s[distance=..5] run scoreboard players remove @s entity.age 1

# Deploy
execute if score @s entity.age matches 20.. run function entities:shield_projectile/actions/deploy
