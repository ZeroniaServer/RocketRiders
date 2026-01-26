## Magic Clouds
# Home onto enemy (prioritise near players without the wither or regeneration effect)
execute on origin run tag @s add spell.origin
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..30,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:near_yellow_spawn_zone] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..15,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:near_yellow_spawn_zone,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..30,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:near_blue_spawn_zone] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..15,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:near_blue_spawn_zone,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/none positioned ^ ^ ^3 facing entity @p[distance=..30,tag=!spell.origin,predicate=!custom:near_own_spawn_zone] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/none positioned ^ ^ ^3 facing entity @p[distance=..15,tag=!spell.origin,predicate=!custom:near_own_spawn_zone,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute on origin run tag @s remove spell.origin

# Movement (6m/s -> 12m/s)
execute if entity @s[type=area_effect_cloud] run scoreboard players set $speed var 120
execute if entity @s[type=area_effect_cloud] store result storage rocketriders:main spell.speed float 0.0025 run scoreboard players operation $speed var += @s entity.age
execute if entity @s[type=area_effect_cloud] rotated as @s run function entities:spell/tick/velocity with storage rocketriders:main spell

# Die if outside arena
execute if entity @s[type=area_effect_cloud,predicate=!custom:insideborder,predicate=!custom:in_arena] run return run kill @s

# Particles
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] positioned as @s unless block ~ ~ ~ #custom:nonsolid rotated as @s run execute anchored eyes run particle minecraft:instant_effect{color:0x6F6F6F,power:1.7} ^ ^ ^-0.3 0.35 0.35 0.35 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] positioned as @s unless block ~ ~ ~ #custom:nonsolid rotated as @s run execute anchored eyes run particle minecraft:instant_effect{color:0x2F2F2F,power:1.7} ^ ^ ^-0.3 0.35 0.35 0.35 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if entity @s[type=area_effect_cloud] positioned as @s unless block ~ ~ ~ #custom:nonsolid run return run kill @s

# AOE
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] positioned as @s run function entities:spell/tick/damage_aoe

# TTL
execute if score @s entity.age matches 120.. run return run kill @s[type=area_effect_cloud]

## Generic projectiles
# Air toggling
data modify entity @s Air set value 0
data modify entity @s Air set value 1

# Movement trail
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.fire] positioned as @s run particle minecraft:instant_effect{color:0xFF7F00} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.fire] positioned as @s run particle minecraft:instant_effect{color:0x7F1F00} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 2.. if entity @s[tag=spell_type.fire] positioned as @s run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.damage] positioned as @s run particle minecraft:instant_effect{color:0x6F6F6F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.damage] positioned as @s run particle minecraft:instant_effect{color:0x2F2F2F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/2 if score @s entity.age matches 2.. if entity @s[tag=spell_type.damage] positioned as @s run particle minecraft:raid_omen ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.wind] positioned as @s run particle minecraft:instant_effect{color:0x7FFFFF} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.wind] positioned as @s run particle minecraft:instant_effect{color:0x3F7F7F} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/2 if score @s entity.age matches 2.. if entity @s[tag=spell_type.wind] positioned as @s run particle minecraft:small_gust ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute unless entity @s[type=area_effect_cloud] unless entity @s[type=#custom:wind_charge] if score @s entity.age matches 2.. if predicate entities:origin_team/blue positioned as @s run particle minecraft:dust{color:[0.75,0.95,1],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute unless entity @s[type=area_effect_cloud] if entity @s[type=#custom:wind_charge] if score @s entity.age matches 2.. if predicate entities:origin_team/blue positioned as @s run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute unless entity @s[type=area_effect_cloud] if score @s entity.age matches 2.. if predicate entities:origin_team/yellow positioned as @s run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute unless entity @s[type=area_effect_cloud] if score @s entity.age matches 2.. if predicate entities:origin_team/none positioned as @s run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if entity @s[type=area_effect_cloud] if score @s entity.age matches 1.. if predicate entities:origin_team/blue positioned as @s run particle minecraft:dust{color:[0.75,0.95,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if entity @s[type=area_effect_cloud] if score @s entity.age matches 1.. if predicate entities:origin_team/yellow positioned as @s run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if entity @s[type=area_effect_cloud] if score @s entity.age matches 1.. if predicate entities:origin_team/none positioned as @s run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
