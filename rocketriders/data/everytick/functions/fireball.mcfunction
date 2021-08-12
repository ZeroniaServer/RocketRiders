#####################################
## FIREBALL: A punchable explosive ##
#####################################

#Summoning the Fireball entity
execute as @e[type=marker,tag=BlueFireball] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute as @e[type=marker,tag=BlueFireball] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[type=marker,tag=BlueFireball] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute as @e[type=marker,tag=BlueFireball] at @s as @a[distance=..6] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1.25
kill @e[type=marker,tag=BlueFireball]
execute as @e[type=marker,tag=YellowFireball] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute as @e[type=marker,tag=YellowFireball] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[type=marker,tag=YellowFireball] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute as @e[type=marker,tag=YellowFireball] at @s as @a[distance=..6] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1.25
kill @e[type=marker,tag=YellowFireball]

#Detecting Fireball motion
tag @e[type=fireball,tag=NormalFireball] remove Still
tag @e[type=fireball,tag=NormalFireball,nbt={Motion:[0.0,0.0,0.0]}] add Still

#Fireball ambient sounds
scoreboard players add $fireballsound CmdData 1
execute if score $fireballsound CmdData matches 20.. run scoreboard players set $fireballsound CmdData 0
execute if score $fireballsound CmdData matches 0 as @e[type=fireball,tag=NormalFireball] at @s as @a[distance=..3] run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.5 1 0.1

#Custom team particles for moving Fireball
execute as @e[type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a
execute as @e[type=fireball,tag=FireballYellow,tag=!Still,tag=NormalFireball] at @s run particle flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a

#Fireballs poof Canopies
execute as @e[type=fireball,tag=NormalFireball,tag=FireballBlue,tag=!Still] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5] run tag @s add DontPoof
execute as @e[type=fireball,tag=NormalFireball,tag=FireballYellow,tag=!Still] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5] run tag @s add DontPoof

execute as @e[type=fireball,tag=NormalFireball,tag=FireballBlue,tag=!Still,tag=DontPoof] at @s if entity @e[tag=YellowPlatform,distance=..6] run tag @s remove DontPoof
execute as @e[type=fireball,tag=NormalFireball,tag=FireballYellow,tag=!Still,tag=DontPoof] at @s if entity @e[tag=BluePlatform,distance=..6] run tag @s remove DontPoof
execute as @e[type=fireball,tag=NormalFireball,tag=FireballBlue,tag=!Still,tag=DontPoof] at @s if entity @a[team=Yellow,distance=..7] run tag @s remove DontPoof
execute as @e[type=fireball,tag=NormalFireball,tag=FireballYellow,tag=!Still,tag=DontPoof] at @s if entity @a[team=Blue,distance=..7] run tag @s remove DontPoof

execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s if entity @e[type=marker,tag=BluePlatform,distance=..2,scores={PlatTime=3..400}] run tag @e[type=marker,tag=BluePlatform,distance=..2,scores={PlatTime=3..400}] add FirePoof
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..2,scores={PlatTime=3..400}] run tag @e[type=marker,tag=YellowPlatform,distance=..2,scores={PlatTime=3..400}] add FirePoof
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s store result score @s CmdData run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace #minecraft:banners
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s store result score @s CmdData run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace #minecraft:leaves
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof,scores={CmdData=1..}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 2 1
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s store result score @s CmdData run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace oak_log
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof,scores={CmdData=1..}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 2 1
scoreboard players reset @e[type=fireball,tag=NormalFireball] CmdData
tag @e[type=fireball,tag=DontPoof] remove DontPoof