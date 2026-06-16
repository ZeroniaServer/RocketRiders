# Wait
execute if score @s entity.age matches ..-1 run return run particle minecraft:dragon_breath ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Appear after waiting
execute unless entity @s[tag=vortex.feathered] if score @s entity.age matches 1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.5,0.5,0.5]}}
execute if entity @s[tag=vortex.feathered] if score @s entity.age matches 1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.6,0.6,0.6]}}
execute if score @s entity.age matches 1 on vehicle run function entities:type/vortex/tick/favor_above_or_below

# Particles
execute if predicate custom:periodic_tick/3 if entity @s[tag=vortex.neutral_landmine] on vehicle at @s run function entities:type/vortex/tick/particles/landmine
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=!vortex.is_primed] if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue on vehicle at @s run function entities:type/vortex/tick/particles/dormant/blue
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=!vortex.is_primed] if predicate entities:origin_team/blue if predicate game:blue_team_skin/any_red_skin on vehicle at @s run function entities:type/vortex/tick/particles/dormant/red
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=!vortex.is_primed] if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow on vehicle at @s run function entities:type/vortex/tick/particles/dormant/yellow
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=!vortex.is_primed] if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green on vehicle at @s run function entities:type/vortex/tick/particles/dormant/green
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=!vortex.is_primed] if predicate entities:origin_team/none on vehicle at @s run function entities:type/vortex/tick/particles/dormant/neutral
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=vortex.is_primed] if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue on vehicle at @s run function entities:type/vortex/tick/particles/primed/blue
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=vortex.is_primed] if predicate entities:origin_team/blue if predicate game:blue_team_skin/any_red_skin on vehicle at @s run function entities:type/vortex/tick/particles/primed/red
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=vortex.is_primed] if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow on vehicle at @s run function entities:type/vortex/tick/particles/primed/yellow
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=vortex.is_primed] if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green on vehicle at @s run function entities:type/vortex/tick/particles/primed/green
execute if predicate custom:periodic_tick/3 if entity @s[tag=!vortex.neutral_landmine,tag=vortex.is_primed] if predicate entities:origin_team/none on vehicle at @s run function entities:type/vortex/tick/particles/primed/neutral
execute if entity @s[tag=!vortex.neutral_landmine,tag=vortex.is_primed] if predicate {condition:"random_chance",chance:0.1} run particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

# Spin
execute unless entity @s[tag=vortex.is_primed] run execute unless entity @s[tag=vortex.is_drifting] if predicate custom:periodic_tick/5 on vehicle rotated as @s run rotate @s ~35 0
execute if entity @s[tag=vortex.is_primed] run execute unless entity @s[tag=vortex.is_drifting] if predicate custom:periodic_tick/5 on vehicle rotated as @s run rotate @s ~85 0


## Achievements
execute if predicate game:achievements_can_be_awarded if entity @s[tag=vortex.neutral_landmine,tag=vortex.feathered] run advancement grant @a[distance=..3,predicate=custom:team/any_playing_team] only achievements:rr_challenges/zzzzzzhuh


## Explosion conditions
execute if score @s entity.vortex.fuse matches 1 on vehicle run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{scale:[1,1,1]},billboard:"center"}
execute if score @s entity.vortex.fuse matches ..0 run return run function entities:type/vortex/actions/explode

execute if predicate entities:origin_team/yellow unless score @s entity.vortex.fuse matches 0.. unless predicate game:phase/match/closing positioned ~ ~-1.6 ~ if entity @a[limit=1,distance=..2,predicate=custom:team/blue,gamemode=!spectator,predicate=!custom:near_blue_spawn_zone] run function entities:type/vortex/actions/trigger {fuse:3}
execute if predicate entities:origin_team/blue unless score @s entity.vortex.fuse matches 0.. unless predicate game:phase/match/closing positioned ~ ~-1.6 ~ if entity @a[limit=1,distance=..2,predicate=custom:team/yellow,gamemode=!spectator,predicate=!custom:near_yellow_spawn_zone] run function entities:type/vortex/actions/trigger {fuse:3}
execute on origin run tag @s add vortex.origin
execute if predicate entities:origin_team/none unless score @s entity.vortex.fuse matches 0.. unless predicate game:phase/match/closing positioned ~ ~-1.6 ~ if entity @a[limit=1,distance=..2,tag=!vortex.origin,gamemode=!spectator,predicate=!custom:near_own_spawn_zone] run function entities:type/vortex/actions/trigger {fuse:3}
execute on origin run tag @s remove vortex.origin

# Landmine trigger
execute if entity @s[tag=vortex.neutral_landmine] unless predicate game:phase/match/closing if entity @a[distance=..3,limit=1,predicate=custom:team/any_playing_team] run return run function entities:type/vortex/actions/explode

# block trigger
execute unless block ~ ~ ~ #custom:vortices_ignore run return run function entities:type/vortex/actions/explode

# projectiles trigger
scoreboard players set $triggered_by_entity var 0
tag @s add vortex.this
execute store success score $triggered_by_entity var as @n[distance=..1.5,predicate=custom:entity/triggers_vortices] run function entities:type/vortex/tick/destroy_trigger_entity
tag @s remove vortex.this
execute if score $triggered_by_entity var matches 1 run return run function entities:type/vortex/actions/explode


## Movement (drift)
# to prevent flickering between drifting and stationary when a player is on the border of the detection range, range is R when stationary and R+0.5 when drifting
tag @s remove vortex.is_drifting
execute on vehicle run tag @s remove vortex.is_drifting
execute if entity @s[tag=!vortex.is_primed] run function entities:type/vortex/tick/drift_detection_range {distance:4}
execute if entity @s[tag=vortex.is_primed] if score @s entity.vortex.drifting_for_ticks matches 0 run function entities:type/vortex/tick/drift_detection_range {distance:6}
execute if entity @s[tag=vortex.is_primed] if score @s entity.vortex.drifting_for_ticks matches 1.. run function entities:type/vortex/tick/drift_detection_range {distance:6.5}

# settle into the block grid when drifting stops
execute if score @s entity.vortex.drifting_for_ticks matches 1.. if entity @s[tag=!vortex.is_drifting,tag=!vortex.neutral_landmine] on vehicle run data merge entity @s {teleport_duration:10,start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.8,0.8,0.8]}}
execute if score @s entity.vortex.drifting_for_ticks matches 0 if entity @s[tag=!vortex.is_drifting,tag=!vortex.settled] on vehicle run function entities:type/vortex/tick/settle

# drifting duration
execute if entity @s[tag=vortex.is_drifting] run scoreboard players add @s entity.vortex.drifting_for_ticks 1
execute if entity @s[tag=!vortex.is_drifting] run scoreboard players set @s entity.vortex.drifting_for_ticks 0


## Shake when primed
execute if entity @s[tag=vortex.is_primed] run data modify storage rocketriders:main vortex.shake set value [-0.03125,0.0125,0]
execute if entity @s[tag=vortex.is_primed,tag=!vortex.is_drifting] run execute store result storage rocketriders:main vortex.shake[0] float 0.00625 run random value -61..51
execute if entity @s[tag=vortex.is_primed,tag=!vortex.is_drifting] run execute store result storage rocketriders:main vortex.shake[1] float 0.00625 run random value -38..42
execute if entity @s[tag=vortex.is_primed,tag=!vortex.is_drifting] run execute store result storage rocketriders:main vortex.shake[2] float 0.00625 run random value -56..56
execute if entity @s[tag=vortex.is_primed,tag=vortex.is_drifting] run execute store result storage rocketriders:main vortex.shake[0] float 0.00625 run random value -31..21
execute if entity @s[tag=vortex.is_primed,tag=vortex.is_drifting] run execute store result storage rocketriders:main vortex.shake[1] float 0.00625 run random value -8..12
execute if entity @s[tag=vortex.is_primed,tag=vortex.is_drifting] run execute store result storage rocketriders:main vortex.shake[2] float 0.00625 run random value -26..26
execute if entity @s[tag=vortex.is_primed] run execute on vehicle run data modify entity @s transformation.translation set from storage rocketriders:main vortex.shake
