#Splash
execute as @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water"}}},tag=!splash] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:3237342,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}}
tag @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:3237342,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}},tag=!splash] add splash
execute as @e[type=potion,tag=splash,tag=!motioned] at @s as @p[scores={ThrowSplash=1..}] at @s anchored eyes run tp @e[type=potion,tag=splash,tag=!motioned] @s
execute as @e[type=potion,tag=splash,tag=!motioned] run function everytick:projectile
tag @e[type=potion,tag=splash,tag=!motioned] add motioned
execute as @e[type=potion,tag=splash] at @s run particle splash ~ ~ ~ 0 0 0 0.1 1 force @a
scoreboard players add @a[scores={ThrowSplash=1..}] ThrowSplash 1
scoreboard players reset @a[scores={ThrowSplash=3..}] ThrowSplash

#thanks @Maxaxik for this fix!!! makes animations smoother
scoreboard players add splash splashtick 1
execute if score splash splashtick matches 1 as @e[type=potion,tag=splash] run data merge entity @s {Air:0}
execute if score splash splashtick matches 2 as @e[type=potion,tag=splash] run data merge entity @s {Air:1}
execute if score splash splashtick matches 2 run scoreboard players set splash splashtick 0

execute as @e[type=area_effect_cloud,nbt={Effects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1,Id:23b,Amplifier:0b}],Potion:"minecraft:water"}] run data merge entity @s {Radius:0,Tags:["splash","splash_alone"]}
execute as @e[tag=splash_alone] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water[level=8] replace #custom:splashreplace
execute as @e[tag=splash_alone] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearAECsplash"]}
kill @e[tag=splash_alone]