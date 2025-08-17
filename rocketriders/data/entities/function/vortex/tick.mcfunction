# Wait
execute if score @s entity.age matches ..-1 run return run particle minecraft:dragon_breath ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

# Grow
execute unless entity @s[tag=vortex.feathered] if score @s entity.age matches 1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.6,0.6,0.6]}}
execute if entity @s[tag=vortex.feathered] if score @s entity.age matches 1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[1,1,1]}}

# Particles
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/blue unless entity @s[tag=vortex.is_drifting] run particle minecraft:dragon_breath ~ ~-0.2 ~ 0.5 0.5 0 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/blue unless entity @s[tag=vortex.is_drifting] run particle minecraft:scrape ~ ~-0.2 ~ 0.5 0.5 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/blue unless entity @s[tag=vortex.is_drifting] run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~-0.2 ~ 0.5 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/blue if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:dragon_breath ^ ^ ^-0.5 0.5 0.5 0.5 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/blue if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:scrape ^ ^ ^-0.5 0.5 0.5 0.5 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/blue if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:dust{color:[0,0,1],scale:1} ^ ^ ^-0.5 0.5 0.5 0.5 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/yellow unless entity @s[tag=vortex.is_drifting] run particle minecraft:dragon_breath ~ ~-0.2 ~ 0.5 0.5 0 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/yellow unless entity @s[tag=vortex.is_drifting] run particle minecraft:wax_on ~ ~-0.2 ~ 0.5 0.5 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/yellow unless entity @s[tag=vortex.is_drifting] run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~-0.2 ~ 0.5 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/yellow if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:dragon_breath ^ ^ ^-0.5 0.5 0.5 0.5 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/yellow if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:wax_on ^ ^ ^-0.5 0.5 0.5 0.5 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/yellow if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:dust{color:[1,1,0],scale:1} ^ ^ ^-0.5 0.2 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/none unless entity @s[tag=vortex.is_drifting] run particle minecraft:dragon_breath ~ ~-0.2 ~ 0.5 0.5 0 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/none unless entity @s[tag=vortex.is_drifting] run particle minecraft:electric_spark ~ ~-0.2 ~ 0.5 0.5 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/none unless entity @s[tag=vortex.is_drifting] run particle minecraft:dust{color:[1,1,1],scale:1.5} ~ ~-0.2 ~ 0.5 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/none if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:dragon_breath ^ ^ ^-0.5 0.5 0.5 0.5 0 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/none if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:electric_spark ^ ^ ^-0.5 0.5 0.5 0.5 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 unless entity @s[tag=vortex.feathered] if predicate entities:origin_team/none if entity @s[tag=vortex.is_drifting] on vehicle at @s run particle minecraft:dust{color:[1,1,1],scale:1.5} ^ ^ ^-0.5 0.5 0.5 0.5 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 if entity @s[tag=vortex.feathered] on vehicle positioned as @s run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~-0.1 ~ 0.5 0.5 0 0 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 if entity @s[tag=vortex.feathered] on vehicle positioned as @s run particle wax_off ~ ~-0.1 ~ 0.5 0.5 0 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]


# Spin
execute unless entity @s[tag=vortex.is_drifting] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:5}} on vehicle rotated as @s run rotate @s ~60 0


## Achievements
execute if entity @s[tag=vortex.feathered] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] run advancement grant @a[distance=..3,predicate=custom:on_blue_or_yellow_team] only achievements:rr_challenges/zzzzzzhuh


## Explosion conditions
execute if score @s entity.vortex.fuse matches 1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{scale:[1,1,1]},billboard:"center"}
execute if score @s entity.vortex.fuse matches ..0 run return run function entities:vortex/actions/explode

execute if predicate entities:origin_team/yellow unless score @s entity.vortex.fuse matches 0.. if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] positioned ~ ~-1.6 ~ if entity @a[limit=1,distance=..2,team=Blue,gamemode=!spectator] run function entities:vortex/actions/trigger {fuse:3}
execute if predicate entities:origin_team/blue unless score @s entity.vortex.fuse matches 0.. if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] positioned ~ ~-1.6 ~ if entity @a[limit=1,distance=..2,team=Yellow,gamemode=!spectator] run function entities:vortex/actions/trigger {fuse:3}
execute on origin run tag @s add vortex.origin
execute if predicate entities:origin_team/none unless score @s entity.vortex.fuse matches 0.. if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] positioned ~ ~-1.6 ~ if entity @a[limit=1,distance=..2,tag=!vortex.origin,gamemode=!spectator] run function entities:vortex/actions/trigger {fuse:3}
execute on origin run tag @s remove vortex.origin

# feathered trigger
execute if entity @s[tag=vortex.feathered] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] if entity @a[distance=..3,limit=1,predicate=custom:on_blue_or_yellow_team] run return run function entities:vortex/actions/explode

# block trigger
execute unless block ~ ~ ~ #custom:vortices_ignore run return run function entities:vortex/actions/explode

# primed tnt trigger
execute if entity @e[limit=1,distance=..5,type=tnt,nbt={fuse:2s}] unless score @s entity.vortex.fuse matches ..2 run scoreboard players set @s entity.vortex.fuse 2

# projectiles trigger
scoreboard players set $triggered_by_entity var 0
tag @s add vortex.this
execute store success score $triggered_by_entity var as @n[distance=..1.5,predicate=custom:triggers_vortices] run function entities:vortex/tick/destroy_trigger_entity
tag @s remove vortex.this
execute if score $triggered_by_entity var matches 1 run return run function entities:vortex/actions/explode


## Movement (drift)
execute store success score $was_drifting var if entity @s[tag=vortex.is_drifting]
tag @s remove vortex.is_drifting

execute if predicate entities:origin_team/blue if score $was_drifting var matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..4,team=Yellow,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift
execute if predicate entities:origin_team/blue if score $was_drifting var matches 1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..4.5,team=Yellow,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift

execute if predicate entities:origin_team/yellow if score $was_drifting var matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..4,team=Blue,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift
execute if predicate entities:origin_team/yellow if score $was_drifting var matches 1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..4.5,team=Blue,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift

execute on origin run tag @s add vortex.origin
execute if predicate entities:origin_team/none if score $was_drifting var matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..4,tag=!vortex.origin,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift
execute if predicate entities:origin_team/none if score $was_drifting var matches 1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameEnd] on vehicle positioned as @s positioned ~ ~-1.6 ~ facing entity @p[distance=..4.5,tag=!vortex.origin,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex/tick/drift
execute on origin run tag @s remove vortex.origin

execute unless entity @s[tag=vortex.feathered] if score $was_drifting var matches 1 if entity @s[tag=!vortex.is_drifting] on vehicle run data merge entity @s {teleport_duration:10,item:{id:"minecraft:ender_pearl"},start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.6,0.6,0.6]}}
execute if score $was_drifting var matches 0 if entity @s[tag=!vortex.is_drifting] on vehicle align xyz run tp @s ~0.5 ~0.5 ~0.5
