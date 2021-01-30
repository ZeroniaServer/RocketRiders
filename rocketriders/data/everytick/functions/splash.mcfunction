######################################
## SPLASH: A throwable water bottle ##
## Puts out fire, fall damage, etc. ##
######################################

##Splash projectile motion/effects
execute as @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water"}}},tag=!splash] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:3237342,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}}
tag @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:3237342,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}},tag=!splash] add splash
execute as @e[type=potion,tag=splash,tag=!motioned] at @s as @p[scores={ThrowSplash=1..}] at @s anchored eyes run tp @e[type=potion,tag=splash,tag=!motioned] @s
execute as @e[type=potion,tag=splash,tag=!motioned] run function everytick:projectile
tag @e[type=potion,tag=splash,tag=!motioned] add motioned
execute as @e[type=potion,tag=splash] at @s run particle splash ~ ~ ~ 0 0 0 0.1 1 force @a
scoreboard players add @a[scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[scores={ThrowSplash=3..}] ThrowSplash
#Thanks @Maxaxik for this fix!!! Makes animations smoother
scoreboard players add splash splashtick 1
execute if score splash splashtick matches 1 as @e[type=potion,tag=splash] run data merge entity @s {Air:0}
execute if score splash splashtick matches 2 as @e[type=potion,tag=splash] run data merge entity @s {Air:1}
execute if score splash splashtick matches 2 run scoreboard players set splash splashtick 0

##Placing water upon impact
execute as @e[type=area_effect_cloud,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1,Id:23b,Amplifier:0b}],Potion:"minecraft:water"},tag=!splash] run data merge entity @s {Duration:200000000,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Radius:0,Tags:["splash","splash_alone","SmartClearAECsplash"]}
execute if entity @s[tag=!SplashStreams] as @e[tag=splash_alone,type=area_effect_cloud,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water[level=8] replace #custom:splashreplace
execute if entity @s[tag=SplashStreams] as @e[tag=splash_alone,type=area_effect_cloud,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water replace #custom:splashreplace
execute as @e[tag=splash_alone,type=area_effect_cloud,tag=!splashMarked] run data modify storage rocketriders:splashpos x prepend from entity @s Pos[0]
execute as @e[tag=splash_alone,type=area_effect_cloud,tag=!splashMarked] run data modify storage rocketriders:splashpos y prepend from entity @s Pos[1]
execute as @e[tag=splash_alone,type=area_effect_cloud,tag=!splashMarked] run data modify storage rocketriders:splashpos z prepend from entity @s Pos[2]
execute as @e[tag=splash_alone,type=area_effect_cloud,tag=!splashMarked] run scoreboard players add @e[tag=Selection,type=armor_stand] splashCount 1
tag @e[tag=splash_alone,type=area_effect_cloud] add splashMarked
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[tag=splash_alone,type=area_effect_cloud] store result score @s splashOwnerUUID run data get entity @s Owner[0]
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[tag=splash_alone,type=area_effect_cloud] at @s unless block ~ ~ ~ water run scoreboard players reset @s splashOwnerUUID
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[tag=splash_alone,type=area_effect_cloud] at @s unless block ~ ~ ~ water run tag @s remove SmartClearAECsplash
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run kill @e[tag=splash_alone,tag=!SmartClearAECsplash,type=area_effect_cloud]
execute unless entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run kill @e[tag=splash_alone,type=area_effect_cloud]