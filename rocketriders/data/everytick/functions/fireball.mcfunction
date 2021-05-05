#####################################
## FIREBALL: A punchable explosive ##
#####################################

#Summoning the Fireball entity
execute as @e[tag=BlueFireball,type=area_effect_cloud] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=BlueFireball,type=area_effect_cloud] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 1 1
execute as @e[tag=BlueFireball,type=area_effect_cloud] at @s as @a[distance=..6] run playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 1.25
kill @e[tag=BlueFireball,type=area_effect_cloud]
execute as @e[tag=YellowFireball,type=area_effect_cloud] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=YellowFireball,type=area_effect_cloud] at @s as @a[distance=..6] run playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 1 1
execute as @e[tag=YellowFireball,type=area_effect_cloud] at @s as @a[distance=..6] run playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 1.25
kill @e[tag=YellowFireball,type=area_effect_cloud]

#Detecting Fireball motion
tag @e[type=fireball,tag=NormalFireball] remove Still
tag @e[type=fireball,tag=NormalFireball,nbt={Motion:[0.0,0.0,0.0]}] add Still

#Fireball ambient sounds
scoreboard players add $fireballsound CmdData 1
execute if score $fireballsound CmdData matches 20.. run scoreboard players set $fireballsound CmdData 0
execute if score $fireballsound CmdData matches 0 as @e[type=fireball,tag=NormalFireball] at @s as @a[distance=..3] run playsound minecraft:block.fire.ambient block @s ~ ~ ~ 0.5 1 0.1

#Custom team particles for moving Fireball
execute as @e[type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a
execute as @e[type=fireball,tag=FireballYellow,tag=!Still,tag=NormalFireball] at @s run particle flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a

#Fireballs poof Canopies
execute as @e[type=fireball,tag=NormalFireball,tag=!Still] at @s if entity @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] run tag @e[tag=BluePlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] add FirePoof
execute as @e[type=fireball,tag=NormalFireball,tag=!Still] at @s if entity @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] run tag @e[tag=YellowPlatform,distance=..1.5,scores={PlatTime=3..400},type=area_effect_cloud] add FirePoof
execute as @e[type=fireball,tag=NormalFireball,tag=!Still] at @s store result score @s CmdData run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 fire replace #minecraft:leaves
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,scores={CmdData=1..}] at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 2 1
execute as @e[type=fireball,tag=NormalFireball,tag=!Still] at @s store result score @s CmdData run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace oak_log
execute as @e[type=fireball,tag=NormalFireball,tag=!Still,scores={CmdData=1..}] at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 2 1
scoreboard players reset @e[type=fireball,tag=NormalFireball] CmdData