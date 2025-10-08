#lavasplash
execute as @e[x=0,type=#custom:potion,tag=!lavasplash,nbt={Item:{components:{"minecraft:custom_data":{id:"lava_splash"}}}}] run function rr_powerups:everytick/lava_splash_init
execute as @e[x=0,type=#custom:potion,tag=lavasplash] at @s if predicate custom:periodic_tick/3 run particle lava ~ ~ ~ 0 0 0 0.1 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
scoreboard players add @a[x=0,scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[x=0,scores={ThrowSplash=3..}] ThrowSplash
execute store success score $lavasplash splashtick if score $lavasplash splashtick matches 0
execute store result entity @s Air short 1 run scoreboard players get $lavasplash splashtick
execute as @e[x=0,type=area_effect_cloud,predicate=custom:is_awkward_area_effect_cloud,tag=!lavasplash] run data merge entity @s {Duration:2000000,Radius:0,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Tags:["lavasplash","lavasplash_alone","SmartClearAECsplash"],custom_particle:{type:"block",block_state:"minecraft:air"}}

#Kill if near spawnpoints
execute as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked,predicate=custom:near_blue_spawn_zone] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked,predicate=custom:near_yellow_spawn_zone] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] at @s unless block ~ ~ ~ #custom:nonsolid run function everytick:splash_correct_position
execute as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] at @s run function everytick:splash_adjust_corner_position
execute at @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] rotated 0 0 run function rr_powerups:everytick/lava_splash_place_lava
execute at @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] rotated 90 0 run function rr_powerups:everytick/lava_splash_place_lava
execute at @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] rotated 180 0 run function rr_powerups:everytick/lava_splash_place_lava
execute at @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] rotated -90 0 run function rr_powerups:everytick/lava_splash_place_lava
tag @e[x=0,type=area_effect_cloud,tag=lavasplash_alone] add splashMarked
execute if predicate rr:has_achievements as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ lava run data merge entity @s {Duration:100}
execute if predicate rr:has_achievements as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ lava run tag @s add markedForDeath
execute unless predicate rr:has_achievements run kill @e[x=0,type=area_effect_cloud,tag=lavasplash_alone]