#####################################
## FIREBALL: A punchable explosive ##
#####################################

#Detecting Fireball motion
tag @e[x=0,type=fireball,tag=NormalFireball] remove Still
tag @e[x=0,type=fireball,tag=NormalFireball,predicate=!custom:not_moving] add Still
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still] store result score @s x run data get entity @s Motion[0] 100
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still] store result score @s y run data get entity @s Motion[1] 100
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still] store result score @s z run data get entity @s Motion[2] 100
tag @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,scores={x=-1..0,y=-1..0,z=-1..0}] add Still

#Fireball ambient sounds
scoreboard players add $fireballsound CmdData 1
execute if score $fireballsound CmdData matches 20.. run scoreboard players set $fireballsound CmdData 0
execute if score $fireballsound CmdData matches 0 as @e[x=0,type=fireball,tag=NormalFireball] at @s as @a[distance=..3] run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.5 1 0.1

#Custom team particles for moving Fireball
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] as @e[x=0,type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s if score $dust CmdData matches 1 run particle flame ~ ~0.5 ~ 0 0 0 0.05 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] as @e[x=0,type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s if score $dust CmdData matches 1 run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] as @e[x=0,type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s if score $dust CmdData matches 1 run particle electric_spark ~ ~0.5 ~ 0 0 0 0.05 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!chaseEnabled] as @e[x=0,type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s if score $dust CmdData matches 1 run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=fireball,tag=FireballYellow,tag=!Still,tag=NormalFireball] at @s if score $dust CmdData matches 1 run particle flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

#Fireballs poof Canopies
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] as @e[x=0,type=fireball,tag=NormalFireball,tag=FireballBlue,tag=!Still] at @s if entity @e[type=marker,tag=BluePlatform,distance=..5] run tag @s add DontPoof
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] as @e[x=0,type=fireball,tag=NormalFireball,tag=FireballYellow,tag=!Still] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..5] run tag @s add DontPoof

execute as @e[x=0,type=fireball,tag=NormalFireball,tag=FireballBlue,tag=!Still,tag=DontPoof] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..6] run tag @s remove DontPoof
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=FireballYellow,tag=!Still,tag=DontPoof] at @s if entity @e[type=marker,tag=BluePlatform,distance=..6] run tag @s remove DontPoof
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=FireballBlue,tag=!Still,tag=DontPoof] at @s if entity @a[team=Yellow,distance=..7] run tag @s remove DontPoof
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=FireballYellow,tag=!Still,tag=DontPoof] at @s if entity @a[team=Blue,distance=..7] run tag @s remove DontPoof

execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s if entity @e[type=marker,tag=BluePlatform,distance=..2,scores={PlatTime=3..400}] run tag @e[type=marker,tag=BluePlatform,distance=..2,scores={PlatTime=3..400}] add FirePoof
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..2,scores={PlatTime=3..400}] run tag @e[type=marker,tag=YellowPlatform,distance=..2,scores={PlatTime=3..400}] add FirePoof
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s store result score @s CmdData run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace #minecraft:banners
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s store result score @s CmdData run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace #minecraft:leaves
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof,scores={CmdData=1..}] at @s run playsound entity.blaze.shoot master @a[x=0] ~ ~ ~ 2 1
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof] at @s store result score @s CmdData run fill ~-1.4 ~-1.4 ~-1.4 ~1.4 ~1.4 ~1.4 fire replace oak_log
execute as @e[x=0,type=fireball,tag=NormalFireball,tag=!Still,tag=!DontPoof,scores={CmdData=1..}] at @s run playsound entity.blaze.shoot master @a[x=0] ~ ~ ~ 2 1
scoreboard players reset @e[x=0,type=fireball,tag=NormalFireball] CmdData
tag @e[x=0,type=fireball,tag=DontPoof] remove DontPoof

#Kill near void
execute as @e[x=0,type=fireball] at @s if predicate custom:nearvoid run kill @s