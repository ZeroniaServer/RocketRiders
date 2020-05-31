#lavasplash
execute as @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545}}},tag=!lavasplash] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:1b,Tags:["lavasplash"]}
execute as @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545}}},tag=!lavasplash] run data merge entity @s {Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}}
tag @e[type=minecraft:potion,nbt={Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:awkward",CustomPotionColor:16747545,CustomPotionEffects:[{Duration:1,Id:23b,Amplifier:0b,ShowParticles:0b}]}}},tag=!lavasplash] add lavasplash
execute as @e[tag=lavasplash] at @s run particle lava ~ ~ ~ 0 0 0 0.1 1 force @a
execute as @e[type=potion,tag=lavasplash] store result entity @s Motion[1] double 1.0000000001 run data get entity @s Motion[1] 0.99111111
execute as @e[type=potion,tag=lavasplash] at @s run tp @e[type=armor_stand,tag=lavasplash,limit=1,distance=..6,sort=nearest] @s
execute as @e[type=armor_stand,tag=lavasplash] at @s unless entity @e[type=potion,tag=lavasplash,limit=1,sort=nearest,distance=..6] run tag @s add lavasplash_alone
execute as @e[tag=lavasplash_alone] at @s if entity @e[type=potion,tag=lavasplash,limit=1,sort=nearest,distance=..6] run tag @s remove lavasplash_alone
execute as @e[tag=lavasplash_alone] at @s run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 lava[level=8] replace #custom:splashreplace
execute as @e[tag=lavasplash_alone] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearAECsplash"]}
kill @e[tag=lavasplash_alone]