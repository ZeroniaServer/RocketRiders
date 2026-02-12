# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/wind_spell/tick/impact

# Smoothen movement with air toggling
execute on vehicle run data modify entity @s Air set value 0
execute on vehicle run data modify entity @s Air set value 1

# Break near enemy spawn zones
scoreboard players set $team var -1
execute on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches 0 if predicate custom:near_any_spawn_zone_lenient if predicate custom:on_yellow_half run return run function entities:type/wind_spell/actions/break
execute if score $team var matches 1 if predicate custom:near_any_spawn_zone_lenient if predicate custom:on_blue_half run return run function entities:type/wind_spell/actions/break
execute if score $team var matches -1 if predicate custom:near_any_spawn_zone_lenient run return run function entities:type/wind_spell/actions/break

# Deflect projectiles
execute rotated as @s if function entities:type/wind_spell/tick/check_deflect_projectile run return run function entities:type/wind_spell/actions/break

# Particles
execute if score @s entity.age matches 2.. on vehicle positioned as @s run particle minecraft:instant_effect{color:0x7FFFFF} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. on vehicle positioned as @s run particle minecraft:instant_effect{color:0x3F7F7F} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 2.. on vehicle positioned as @s run particle minecraft:small_gust ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if score @s entity.age matches 2.. if predicate entities:origin_team/blue on vehicle positioned as @s run particle minecraft:dust{color:0x4444FF,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/yellow on vehicle positioned as @s run particle minecraft:dust{color:0xFFAA00,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/none on vehicle positioned as @s run particle minecraft:dust{color:0xFFFFFF,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
