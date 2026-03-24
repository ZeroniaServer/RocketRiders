# Break when out of bounds
execute if predicate custom:near_or_above_roof run return run function entities:type/damage_spell/actions/break
execute if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/damage_spell/actions/break
execute unless predicate custom:insideborder run return run function entities:type/damage_spell/actions/break
execute unless predicate custom:in_arena run return run function entities:type/damage_spell/actions/break

# Break when near an enemy spawn point
execute if predicate entities:origin_team/blue if predicate custom:near_yellow_spawn_zone run return run function entities:type/damage_spell/actions/break
execute if predicate entities:origin_team/yellow if predicate custom:near_blue_spawn_zone run return run function entities:type/damage_spell/actions/break
execute if predicate entities:origin_team/none if predicate custom:near_any_spawn_zone run return run function entities:type/damage_spell/actions/break

## Magic Clouds
# Home onto enemy (prioritise near players without the wither or regeneration effect)
execute on origin run tag @s add damage_spell.origin
execute if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..30,predicate=custom:team/yellow,tag=!damage_spell.origin,predicate=!custom:near_yellow_spawn_zone] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..15,predicate=custom:team/yellow,tag=!damage_spell.origin,predicate=!custom:near_yellow_spawn_zone,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..30,predicate=custom:team/blue,tag=!damage_spell.origin,predicate=!custom:near_blue_spawn_zone] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..15,predicate=custom:team/blue,tag=!damage_spell.origin,predicate=!custom:near_blue_spawn_zone,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if predicate entities:origin_team/none positioned ^ ^ ^3 facing entity @p[distance=..30,tag=!damage_spell.origin,predicate=!custom:near_own_spawn_zone] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if predicate entities:origin_team/none positioned ^ ^ ^3 facing entity @p[distance=..15,tag=!damage_spell.origin,predicate=!custom:near_own_spawn_zone,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute on origin run tag @s remove damage_spell.origin

# Movement (6m/s -> 12m/s)
scoreboard players set $speed var 120
execute store result storage rocketriders:main damage_spell.speed float 0.0025 run scoreboard players operation $speed var += @s entity.age
execute rotated as @s run function entities:type/damage_spell/tick/velocity with storage rocketriders:main damage_spell

# Break on impact with a wall
execute positioned as @s unless block ~ ~ ~ #custom:nonsolid run return run function entities:type/damage_spell/actions/break

# AOE
execute positioned as @s run function entities:type/damage_spell/tick/damage_aoe

# TTL
execute if score @s entity.age matches 120.. run return run function entities:type/damage_spell/actions/break

## Generic projectiles
# Movement trail
execute if score @s entity.age matches 2.. positioned as @s run particle minecraft:instant_effect{color:0x6F6F6F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. positioned as @s run particle minecraft:instant_effect{color:0x2F2F2F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/2 if score @s entity.age matches 2.. positioned as @s run particle minecraft:raid_omen ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue positioned as @s run particle minecraft:dust{color:0x4444FF,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/dark_red positioned as @s run particle minecraft:dust{color:0x9F1E1E,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/classic_red positioned as @s run particle minecraft:dust{color:0xCF0042,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow positioned as @s run particle minecraft:dust{color:0xFFFF44,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green positioned as @s run particle minecraft:dust{color:0x5DC230,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/none positioned as @s run particle minecraft:dust{color:0xFFFFFF,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
