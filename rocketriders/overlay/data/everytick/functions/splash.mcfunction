######################################
## SPLASH: A throwable water bottle ##
## Puts out fire, fall damage, etc. ##
######################################

##Splash projectile motion/effects
execute as @e[x=0,type=potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water"}}},tag=!splash] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:3237342,custom_potion_effects:[{duration:1,id:"minecraft:saturation",amplifier:0b,show_particles:0b}]}}}
tag @e[x=0,type=potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:3237342,custom_potion_effects:[{duration:1,id:"minecraft:saturation",amplifier:0b,show_particles:0b}]}}},tag=!splash] add splash
execute as @e[x=0,type=potion,tag=splash,tag=!motioned] at @s as @p[scores={ThrowSplash=1..}] at @s anchored eyes run tp @e[x=0,type=potion,tag=splash,tag=!motioned] @s
execute as @e[x=0,type=potion,tag=splash,tag=!motioned] run function everytick:projectile
tag @e[x=0,type=potion,tag=splash,tag=!motioned] add motioned
execute as @e[x=0,type=potion,tag=splash] at @s if score $dust CmdData matches 1 run particle splash ~ ~ ~ 0 0 0 0.1 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
scoreboard players add @a[x=0,scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[x=0,scores={ThrowSplash=3..}] ThrowSplash
#Thanks @Maxaxik for this fix!!! Makes animations smoother
scoreboard players add splash splashtick 1
execute if score splash splashtick matches 1 as @e[x=0,type=potion,tag=splash] run data merge entity @s {Air:0}
execute if score splash splashtick matches 2 as @e[x=0,type=potion,tag=splash] run data merge entity @s {Air:1}
execute if score splash splashtick matches 2 run scoreboard players set splash splashtick 0

##Placing water upon impact
execute as @e[x=0,type=area_effect_cloud,nbt={effects:[{ambient:0b,show_icon:0b,show_particles:0b,duration:1,id:"minecraft:saturation",amplifier:0b}],Potion:"minecraft:water"},tag=!splash] at @s run data merge entity @s {Duration:200000000,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Radius:0,Tags:["splash","splash_alone","SmartClearAECsplash"],Particle:"block air"}
#Kill if near spawnpoints
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run kill @s
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute if entity @s[tag=!SplashStreams,tag=!doFireballPortals] as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water[level=8] replace #custom:splashreplace
execute if entity @s[tag=SplashStreams,tag=!doFireballPortals] as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water replace #custom:splashreplace
execute if entity @s[tag=!SplashStreams,tag=doFireballPortals] as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water[level=8] replace #custom:splashreplace_portal
execute if entity @s[tag=SplashStreams,tag=doFireballPortals] as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water replace #custom:splashreplace_portal
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] run data modify storage rocketriders:splashpos x prepend from entity @s Pos[0]
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] run data modify storage rocketriders:splashpos y prepend from entity @s Pos[1]
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] run data modify storage rocketriders:splashpos z prepend from entity @s Pos[2]
execute as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!splashMarked] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection] splashCount 1
tag @e[x=0,type=area_effect_cloud,tag=splash_alone] add splashMarked
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[x=0,type=area_effect_cloud,tag=splash_alone] store result score @s splashOwnerUUID run data get entity @s Owner[0]
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run data merge entity @s {Duration:100}
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[x=0,type=area_effect_cloud,tag=splash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ water run tag @s add markedForDeath
execute unless entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run kill @e[x=0,type=area_effect_cloud,tag=splash_alone]