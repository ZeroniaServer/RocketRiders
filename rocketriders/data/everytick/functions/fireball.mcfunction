#####################################
## FIREBALL: A punchable explosive ##
#####################################

#Summoning the Fireball entity
execute as @e[tag=BlueFireball,type=area_effect_cloud] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
kill @e[tag=BlueFireball,type=area_effect_cloud]
execute as @e[tag=YellowFireball,type=area_effect_cloud] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
kill @e[tag=YellowFireball,type=area_effect_cloud]

#Detecting Fireball motion
tag @e[type=fireball,tag=NormalFireball] remove Still
tag @e[type=fireball,tag=NormalFireball,nbt={Motion:[0.0,0.0,0.0]}] add Still

#Custom team particles for moving Fireball
execute as @e[type=fireball,tag=FireballBlue,tag=!Still,tag=NormalFireball] at @s run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a
execute as @e[type=fireball,tag=FireballYellow,tag=!Still,tag=NormalFireball] at @s run particle flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a