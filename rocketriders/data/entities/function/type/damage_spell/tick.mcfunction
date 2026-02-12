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
execute positioned as @s unless block ~ ~ ~ #custom:nonsolid run return run function entities:type/damage_spell/actions/damage_spell_break

# Die if outside arena
execute unless entity @s[predicate=custom:insideborder,predicate=custom:in_arena] run return run function entities:type/damage_spell/actions/damage_spell_break

# Break near spawn zones
execute if predicate entities:origin_team/blue if predicate custom:near_any_spawn_zone if predicate custom:on_yellow_half run return run function entities:type/damage_spell/actions/damage_spell_break
execute if predicate entities:origin_team/yellow if predicate custom:near_any_spawn_zone if predicate custom:on_blue_half run return run function entities:type/damage_spell/actions/damage_spell_break
execute if predicate entities:origin_team/none if predicate custom:near_any_spawn_zone run return run function entities:type/damage_spell/actions/damage_spell_break

# AOE
execute positioned as @s run function entities:type/damage_spell/tick/damage_aoe

# TTL
execute if score @s entity.age matches 120.. run return run function entities:type/damage_spell/actions/damage_spell_break

## Generic projectiles
# Movement trail
execute if score @s entity.age matches 2.. positioned as @s run particle minecraft:instant_effect{color:0x6F6F6F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. positioned as @s run particle minecraft:instant_effect{color:0x2F2F2F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/2 if score @s entity.age matches 2.. positioned as @s run particle minecraft:raid_omen ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/blue positioned as @s run particle minecraft:dust{color:0x4444FF,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/yellow positioned as @s run particle minecraft:dust{color:0xFFFF44,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 1.. if predicate entities:origin_team/none positioned as @s run particle minecraft:dust{color:0xFFFFFF,scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
