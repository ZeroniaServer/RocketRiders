#lavasplash
execute as @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545}}},tag=!lavasplash] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}}
tag @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}},tag=!lavasplash] add lavasplash
execute as @e[type=potion,tag=lavasplash,tag=!motioned] at @s as @p[scores={ThrowSplash=1..}] at @s anchored eyes run tp @e[type=potion,tag=lavasplash,tag=!motioned] @s
execute as @e[type=potion,tag=lavasplash,tag=!motioned] run function everytick:projectile
tag @e[type=potion,tag=lavasplash,tag=!motioned] add motioned
execute as @e[type=potion,tag=lavasplash] at @s run particle lava ~ ~ ~ 0 0 0 0.1 1 force @a
scoreboard players add @a[scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[scores={ThrowSplash=3..}] ThrowSplash

#thanks @Maxaxik for this fix!!! makes animations smoother
scoreboard players add lavasplash splashtick 1
execute if score lavasplash splashtick matches 1 as @e[type=potion,tag=lavasplash] run data merge entity @s {Air:0}
execute if score lavasplash splashtick matches 2 as @e[type=potion,tag=lavasplash] run data merge entity @s {Air:1}
execute if score lavasplash splashtick matches 2 run scoreboard players set lavasplash splashtick 0

execute as @e[type=area_effect_cloud,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1,Id:23b,Amplifier:0b}],Potion:"minecraft:awkward"},tag=!lavasplash] run data merge entity @s {Duration:2000000,Radius:0,RadiusPerTick:0,RadiusOnUse:0,DurationOnUse:0,Tags:["lavasplash","lavasplash_alone","SmartClearAECsplash"],Particle:"block air"}

#Kill if near spawnpoints
execute as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run kill @s
execute as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run kill @s
execute if entity @s[tag=!SplashStreams] as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 lava[level=8] replace #custom:splashreplace
execute if entity @s[tag=SplashStreams] as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 lava replace #custom:splashreplace
execute as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] run data modify storage rocketriders:splashpos x prepend from entity @s Pos[0]
execute as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] run data modify storage rocketriders:splashpos y prepend from entity @s Pos[1]
execute as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] run data modify storage rocketriders:splashpos z prepend from entity @s Pos[2]
execute as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!splashMarked] run scoreboard players add @e[type=armor_stand,tag=Selection] splashCount 1
tag @e[type=area_effect_cloud,tag=lavasplash_alone] add splashMarked
execute if entity @s[type=area_effect_cloud,scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[type=area_effect_cloud,tag=lavasplash_alone] store result score @s splashOwnerUUID run data get entity @s Owner[0]
execute if entity @s[type=area_effect_cloud,scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ lava run data merge entity @s {Duration:100}
execute if entity @s[type=area_effect_cloud,scores={servermode=0},tag=!realms,tag=!SMCustom] as @e[type=area_effect_cloud,tag=lavasplash_alone,tag=!markedForDeath] at @s unless block ~ ~ ~ lava run tag @s add markedForDeath
execute unless entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run kill @e[type=area_effect_cloud,tag=lavasplash_alone]