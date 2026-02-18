######################################
## SPLASH: A throwable water bottle ##
## Puts out fire, fall damage, etc. ##
######################################

##Splash projectile motion/effects
execute as @e[x=0,type=#custom:potion,tag=!splash,nbt={Item:{components:{"minecraft:custom_data":{id:"splash"}}}}] run function everytick:splash/init
execute as @e[x=0,type=#custom:potion,tag=splash] at @s if predicate custom:periodic_tick/3 run particle splash ~ ~ ~ 0 0 0 0.1 1 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
scoreboard players add @a[x=0,scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[x=0,scores={ThrowSplash=3..}] ThrowSplash
execute store success score $splash splashtick if score $splash splashtick matches 0
execute store result entity @s Air short 1 run scoreboard players get $splash splashtick

##Placing water upon impact
execute as @e[x=0,type=area_effect_cloud,predicate=custom:is_water_area_effect_cloud,tag=!splash] at @s run data merge entity @s {Duration:200000000,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Radius:0,Tags:["splash","splash_alone"],custom_particle:{type:"block",block_state:"minecraft:air"}}

#Kill if near spawnpoints
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked,predicate=custom:near_blue_spawn_zone] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked,predicate=custom:near_yellow_spawn_zone] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s unless block ~ ~ ~ #custom:nonsolid run function everytick:splash/correct_position
execute at @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] unless block ~1 ~ ~ #custom:nonsolid unless block ~-1 ~ ~ #custom:nonsolid unless block ~ ~ ~1 #custom:nonsolid unless block ~ ~ ~-1 #custom:nonsolid if block ~ ~-1 ~ #custom:air run fill ~ ~ ~ ~ ~-1 ~ water[level=8] replace #custom:air
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s run function everytick:splash/adjust_corner_position
execute at @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] rotated 0 0 run function everytick:splash/place_water
execute at @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] rotated 90 0 run function everytick:splash/place_water
execute at @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] rotated 180 0 run function everytick:splash/place_water
execute at @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] rotated -90 0 run function everytick:splash/place_water
tag @e[x=0,type=area_effect_cloud,tag=splash_alone] add splashMarked
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run data merge entity @s {Duration:100}
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run tag @s add markedForDeath
execute unless predicate game:achievements_can_be_awarded run kill @e[x=0,type=area_effect_cloud,tag=splash_alone]
