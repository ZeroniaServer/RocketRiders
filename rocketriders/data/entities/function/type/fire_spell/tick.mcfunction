# Break when out of bounds
execute on vehicle positioned as @s if predicate custom:near_or_above_roof run return run function entities:type/fire_spell/actions/break
execute on vehicle positioned as @s if predicate custom:in_void unless predicate custom:moving_up run return run function entities:type/fire_spell/actions/break
execute on vehicle positioned as @s unless predicate custom:insideborder run return run function entities:type/fire_spell/actions/break
execute on vehicle positioned as @s unless predicate custom:in_arena run return run function entities:type/fire_spell/actions/break

# Break when near an enemy spawn point
scoreboard players set $team var -1
execute on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches 0 if predicate custom:near_yellow_spawn_zone run return run function entities:type/fire_spell/actions/break
execute if score $team var matches 1 if predicate custom:near_blue_spawn_zone run return run function entities:type/fire_spell/actions/break
execute if score $team var matches -1 if predicate custom:near_any_spawn_zone run return run function entities:type/fire_spell/actions/break

# Early impact
execute unless predicate custom:has_vehicle if function custom:projectile_motion_step positioned as @s run return run function entities:type/fire_spell/tick/impact

# Store the rotation and speed of vehicle
execute if predicate custom:has_vehicle run function custom:projectile_motion_save

# Smoothen movement with air toggling
execute on vehicle run data modify entity @s Air set value 0
execute on vehicle run data modify entity @s Air set value 1

# Particles
execute if score @s entity.age matches 2.. on vehicle positioned as @s run particle minecraft:instant_effect{color:0xFF7F00} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. on vehicle positioned as @s run particle minecraft:instant_effect{color:0x7F1F00} ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if score @s entity.age matches 2.. on vehicle positioned as @s run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.01 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute if score @s entity.age matches 2.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue on vehicle positioned as @s run particle minecraft:dust{color:0x7FB2FF,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/dark_red on vehicle positioned as @s run particle minecraft:dust{color:0x9F1E1E,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/blue if predicate game:blue_team_skin/classic_red on vehicle positioned as @s run particle minecraft:dust{color:0xDC2852,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow on vehicle positioned as @s run particle minecraft:dust{color:0xFFFF44,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green on vehicle positioned as @s run particle minecraft:dust{color:0x5DC230,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute if score @s entity.age matches 2.. if predicate entities:origin_team/none on vehicle positioned as @s run particle minecraft:dust{color:0xFFFF00,scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

