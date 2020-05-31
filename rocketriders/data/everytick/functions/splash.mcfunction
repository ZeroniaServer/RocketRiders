#Splash
execute as @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}},tag=!splash] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,Marker:1b,Silent:1b,Tags:["splash"]}
tag @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}}},tag=!splash] add splash
execute as @e[type=potion,tag=splash] at @s run particle splash ~ ~ ~ 0 0 0 0.1 1 force @a
execute as @e[type=potion,tag=splash] store result entity @s Motion[1] double 1.0000000001 run data get entity @s Motion[1] 0.99111111
execute as @e[type=potion,tag=splash] at @s run tp @e[type=armor_stand,tag=splash,limit=1,distance=..6,sort=nearest] ~ ~ ~
execute as @e[type=armor_stand,tag=splash] at @s unless entity @e[type=potion,tag=splash,limit=1,sort=nearest,distance=..6] run tag @s add splash_alone
execute as @e[tag=splash_alone] at @s if entity @e[type=potion,tag=splash,limit=1,sort=nearest,distance=..6] run tag @s remove splash_alone
execute as @e[tag=splash_alone] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 water[level=8] replace #custom:splashreplace
execute as @e[tag=splash_alone] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearAECsplash"]}
kill @e[tag=splash_alone]