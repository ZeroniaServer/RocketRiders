#lavasplash
execute as @e[type=minecraft:potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545}}},tag=!lavasplash] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}}
tag @e[type=minecraft:potion,nbt={Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}},tag=!lavasplash] add lavasplash
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

execute as @e[type=area_effect_cloud,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1,Id:23b,Amplifier:0b}],Potion:"minecraft:awkward"}] run data merge entity @s {Radius:0,Tags:["lavasplash","lavasplash_alone"]}
execute if entity @s[tag=!SplashStreams] as @e[tag=lavasplash_alone] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 lava[level=8] replace #custom:splashreplace
execute if entity @s[tag=SplashStreams] as @e[tag=lavasplash_alone] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 lava replace #custom:splashreplace
execute as @e[tag=lavasplash_alone] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearAECsplash","lavasplashclear"]}
execute as @e[tag=lavasplashclear] at @s if entity @e[tag=lavasplash_alone,limit=1,sort=nearest,distance=..1] store result score @s splashOwnerUUID run data get entity @e[tag=lavasplash_alone,limit=1,sort=nearest,distance=..1] Owner[0]
kill @e[tag=lavasplash_alone]
execute as @e[tag=lavasplashclear,nbt={Age:300}] at @s unless block ~ ~ ~ lava run scoreboard players reset @s splashOwnerUUID
execute as @e[tag=lavasplashclear,nbt={Age:300}] at @s unless block ~ ~ ~ lava run tag @s remove lavasplashclear