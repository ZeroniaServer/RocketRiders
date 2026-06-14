##Splash projectile motion/effects
execute as @e[x=0,type=#custom:potion,tag=!lava_splash,nbt={Item:{components:{"minecraft:custom_data":{id:"lava_splash"}}}}] run function everytick:lava_splash/init
execute as @e[x=0,type=#custom:potion,tag=lava_splash] at @s if predicate custom:periodic_tick/3 run particle lava ~ ~ ~ 0 0 0 0.1 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
scoreboard players add @a[x=0,scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[x=0,scores={ThrowSplash=3..}] ThrowSplash

## Break potion mid-air when out of bounds
execute as @e[x=0,type=#custom:potion,tag=lava_splash] at @s if predicate custom:in_void run kill @s
execute as @e[x=0,type=#custom:potion,tag=lava_splash] at @s if predicate custom:near_or_above_roof run function everytick:lava_splash/break_with_reason {message:"Lava Splash got too close to the roof"}
execute as @e[x=0,type=#custom:potion,tag=lava_splash] at @s if predicate custom:location/touching_or_beyond_world_border run function everytick:lava_splash/break_with_reason {message:"Lava Splash got too close to the world border"}

##Placing water upon impact
execute as @e[x=0,type=area_effect_cloud,predicate=custom:area_effect_cloud_type/awkward,tag=!lava_splash] at @s run data merge entity @s {Duration:200000000,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Radius:0,Tags:["lava_splash","lava_splash_alone"],custom_particle:{type:"block",block_state:"minecraft:air"}}

# Kill if hit out of bounds
execute as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] at @s if predicate custom:in_void run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] at @s if predicate custom:near_or_above_roof run function custom:entity/kill_with_reason {message:"Lava Splash got too close to the roof"}
execute as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] at @s if predicate custom:location/touching_or_beyond_world_border run function custom:entity/kill_with_reason {message:"Lava Splash got too close to the world border"}

# Kill if hit spawn zone
execute as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] at @s if predicate custom:near_any_spawn_zone run function custom:entity/kill_with_reason {message:"Lava Splash hit the ground too close to a spawnpoint"}

# Splash
execute as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] at @s unless block ~ ~ ~ #custom:nonsolid run function everytick:lava_splash/correct_position
execute at @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] unless block ~1 ~ ~ #custom:nonsolid unless block ~-1 ~ ~ #custom:nonsolid unless block ~ ~ ~1 #custom:nonsolid unless block ~ ~ ~-1 #custom:nonsolid if block ~ ~-1 ~ #custom:air run fill ~ ~ ~ ~ ~-1 ~ water[level=8] replace #custom:air
execute as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] at @s run function everytick:lava_splash/adjust_corner_position
execute at @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] rotated 0 0 run function everytick:lava_splash/place_lava
execute at @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] rotated 90 0 run function everytick:lava_splash/place_lava
execute at @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] rotated 180 0 run function everytick:lava_splash/place_lava
execute at @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!splashMarked] rotated -90 0 run function everytick:lava_splash/place_lava
tag @e[x=0,type=area_effect_cloud,tag=lava_splash_alone] add splashMarked
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run data merge entity @s {Duration:100}
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=area_effect_cloud,tag=lava_splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run tag @s add markedForDeath
execute unless predicate game:achievements_can_be_awarded run kill @e[x=0,type=area_effect_cloud,tag=lava_splash_alone]
