######################################
## SPLASH: A throwable water bottle ##
## Puts out fire, fall damage, etc. ##
######################################

##Splash projectile motion/effects
execute as @e[x=0,type=#custom:potion,tag=!splash,nbt={Item:{components:{"minecraft:custom_data":{id:"splash"}}}}] run function everytick:splash/init
execute as @e[x=0,type=#custom:potion,tag=splash] at @s if predicate custom:periodic_tick/3 run particle splash ~ ~ ~ 0 0 0 0.1 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
scoreboard players add @a[x=0,scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[x=0,scores={ThrowSplash=3..}] ThrowSplash

## Break potion mid-air when out of bounds
execute as @e[x=0,type=#custom:potion,tag=splash] at @s if predicate custom:in_void run kill @s
execute as @e[x=0,type=#custom:potion,tag=splash] at @s if predicate custom:near_or_above_roof run function everytick:splash/break_with_reason {message:"Splash got too close to the roof"}
execute as @e[x=0,type=#custom:potion,tag=splash] at @s if predicate custom:location/near_or_beyond_world_border run function everytick:splash/break_with_reason {message:"Splash got too close to the world border"}

##Placing water upon impact
execute as @e[x=0,type=area_effect_cloud,predicate=custom:area_effect_cloud_type/water,tag=!splash] at @s run data merge entity @s {Duration:200000000,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Radius:0,Tags:["splash","splash_alone"],custom_particle:{type:"block",block_state:"minecraft:air"}}

# Kill if hit out of bounds
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s if predicate custom:in_void run function custom:entity/kill_with_reason {message:"Splash hit the ground too close to the void"}
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s if predicate custom:near_or_above_roof run function custom:entity/kill_with_reason {message:"Splash hit the ground too close to the roof"}
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s if predicate custom:location/near_or_beyond_world_border run function custom:entity/kill_with_reason {message:"Splash got too close to the world border"}

# Kill if hit spawn zone
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s if predicate custom:near_any_spawn_zone run function custom:entity/kill_with_reason {message:"Splash hit the ground too close to a spawnpoint"}

# Splash
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s unless block ~ ~ ~ #custom:non_solid run function everytick:splash/correct_position
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s unless block ~1 ~ ~ #custom:non_solid unless block ~-1 ~ ~ #custom:non_solid unless block ~ ~ ~1 #custom:non_solid unless block ~ ~ ~-1 #custom:non_solid if block ~ ~-1 ~ #custom:air run fill ~ ~ ~ ~ ~-1 ~ water[level=8] replace #custom:air
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s run function everytick:splash/adjust_corner_position
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] positioned as @s if predicate game:game_rules/snipe_portals/on run function everytick:splash/check_can_break_portal
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] positioned as @s rotated 0 0 run function everytick:splash/place_water
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] positioned as @s rotated 90 0 run function everytick:splash/place_water
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] positioned as @s rotated 180 0 run function everytick:splash/place_water
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] positioned as @s rotated -90 0 run function everytick:splash/place_water
execute if predicate game:feature_flags/1_4_0_update/on at @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] as @e[limit=1,sort=nearest,distance=..1.5,type=fireball,predicate=entities:type/fireball/body] at @s run function entities:type/fireball/tick/geyser
tag @e[x=0,type=area_effect_cloud,tag=splash_alone] add splashMarked
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run data merge entity @s {Duration:100}
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run tag @s add markedForDeath
execute unless predicate game:achievements_can_be_awarded run kill @e[x=0,type=area_effect_cloud,tag=splash_alone]
