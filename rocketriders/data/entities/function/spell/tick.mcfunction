## Magic Clouds
# Home onto teammate (prioritise near players without the regeneration effect)
execute on origin run tag @s add spell.origin
execute if entity @s[type=area_effect_cloud,tag=spell_type.health] if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..30,team=Blue,tag=!spell.origin] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.health] if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..15,team=Blue,tag=!spell.origin,predicate=!custom:has_regeneration_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.health] if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..30,team=Yellow,tag=!spell.origin] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.health] if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..15,team=Yellow,tag=!spell.origin,predicate=!custom:has_regeneration_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1

execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..30,team=Yellow,tag=!spell.origin] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/blue positioned ^ ^ ^3 facing entity @p[distance=..15,team=Yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..30,team=Blue,tag=!spell.origin] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/yellow positioned ^ ^ ^3 facing entity @p[distance=..15,team=Blue,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/none positioned ^ ^ ^3 facing entity @p[distance=..30,tag=!spell.origin] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] if predicate entities:origin_team/none positioned ^ ^ ^3 facing entity @p[distance=..15,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes positioned ^ ^ ^0.1 facing entity @s feet run rotate @s facing ^ ^ ^-1
execute on origin run tag @s remove spell.origin

# Movement (8m/s)
execute if entity @s[type=area_effect_cloud] rotated as @s run tp @s ^ ^ ^0.3

execute if entity @s[type=area_effect_cloud,tag=spell_type.health] positioned as @s unless block ~ ~ ~ #custom:nonsolid rotated as @s run execute anchored eyes run particle minecraft:instant_effect{color:0xFF007F,power:1.7} ^ ^ ^-0.3 0.3 0.3 0.3 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud,tag=spell_type.health] positioned as @s unless block ~ ~ ~ #custom:nonsolid rotated as @s run execute anchored eyes run particle minecraft:instant_effect{color:0x7F0000,power:1.7} ^ ^ ^-0.3 0.3 0.3 0.3 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] positioned as @s unless block ~ ~ ~ #custom:nonsolid rotated as @s run execute anchored eyes run particle minecraft:instant_effect{color:0x6F6F6F,power:1.7} ^ ^ ^-0.3 0.3 0.3 0.3 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] positioned as @s unless block ~ ~ ~ #custom:nonsolid rotated as @s run execute anchored eyes run particle minecraft:instant_effect{color:0x2F2F2F,power:1.7} ^ ^ ^-0.3 0.3 0.3 0.3 1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud] positioned as @s unless block ~ ~ ~ #custom:nonsolid run return run kill @s

# Cloud effects
execute if entity @s[type=area_effect_cloud,tag=spell_type.health] positioned as @s run function entities:spell/tick/health_aoe
execute if entity @s[type=area_effect_cloud,tag=spell_type.damage] positioned as @s run function entities:spell/tick/damage_aoe
execute if score @s entity.age matches 120.. run kill @s[type=area_effect_cloud]

## Generic projectiles
# Air toggling
data modify entity @s Air set value 0
data modify entity @s Air set value 1

# Movement trail
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.fire] positioned as @s run particle minecraft:instant_effect{color:0xFF7F00} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.fire] positioned as @s run particle minecraft:instant_effect{color:0x7F1F00} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.fire] positioned as @s run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.health] positioned as @s run particle minecraft:instant_effect{color:0xFF007F} ~ ~ ~ 0.3 0.3 0.3 0 1 force @a[x=0,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.health] positioned as @s run particle minecraft:instant_effect{color:0x7F0000} ~ ~ ~ 0.3 0.3 0.3 0 1 force @a[x=0,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.health] positioned as @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} run particle minecraft:heart ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.damage] positioned as @s run particle minecraft:instant_effect{color:0x6F6F6F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.damage] positioned as @s run particle minecraft:instant_effect{color:0x2F2F2F} ~ ~ ~ 0.3 0.3 0.3 0 2 force @a[x=0,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.damage] positioned as @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} run particle minecraft:raid_omen ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.wind] positioned as @s run particle minecraft:instant_effect{color:0x7FFFFF} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.wind] positioned as @s run particle minecraft:instant_effect{color:0x3F7F7F} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2.. if entity @s[tag=spell_type.wind] positioned as @s run particle minecraft:small_gust ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute unless entity @s[type=area_effect_cloud] if score @s entity.age matches 2.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 positioned as @s run particle minecraft:dust{color:[0.75,0.95,1],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute unless entity @s[type=area_effect_cloud] if score @s entity.age matches 2.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 positioned as @s run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute unless entity @s[type=area_effect_cloud] if score @s entity.age matches 2.. if predicate entities:origin_team/none if score $dust CmdData matches 1 positioned as @s run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud] if score @s entity.age matches 1.. if predicate entities:origin_team/blue if score $dust CmdData matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:4}} positioned as @s run particle minecraft:dust{color:[0.75,0.95,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud] if score @s entity.age matches 1.. if predicate entities:origin_team/yellow if score $dust CmdData matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:4}} positioned as @s run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[type=area_effect_cloud] if score @s entity.age matches 1.. if predicate entities:origin_team/none if score $dust CmdData matches 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:4}} positioned as @s run particle minecraft:dust{color:[1,1,1],scale:1} ~ ~ ~ 0.3 0.3 0.3 0.1 4 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
