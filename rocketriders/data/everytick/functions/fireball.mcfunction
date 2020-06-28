#####################################
## FIREBALL: A punchable explosive ##
#####################################

#Summoning the Fireball entity
execute as @e[tag=BlueFireball] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
kill @e[tag=BlueFireball]
execute as @e[tag=YellowFireball] at @s run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
kill @e[tag=YellowFireball]

#Detecting Fireball motion
tag @e[type=fireball,tag=NormalFireball] remove Still
tag @e[type=fireball,tag=NormalFireball,nbt={Motion:[0.0,0.0,0.0]}] add Still

#Custom team particles for moving Fireball
execute as @e[type=fireball,tag=FireballBlue,tag=!Still] at @s[tag=NormalFireball] run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a
execute as @e[type=fireball,tag=FireballYellow,tag=!Still] at @s[tag=NormalFireball] run particle flame ~ ~0.5 ~ 0 0 0 0.05 5 force @a