#Fireball
execute as @e[tag=BlueFireball] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["FireballAS"],Passengers:[{id:fireball,Tags:["NormalFireball","NoMotion"],ExplosionPower:1,direction:[0.0,0.0,0.0]}]}
kill @e[tag=BlueFireball]
execute as @e[tag=YellowFireball] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["FireballAS"],Passengers:[{id:fireball,Tags:["NormalFireball","NoMotion"],ExplosionPower:1,direction:[0.0,0.0,0.0]}]}
kill @e[tag=YellowFireball]
tag @e[type=fireball,tag=NormalFireball,nbt={direction:[0.0,0.0,0.0]},tag=!Still] add Still
execute as @e[type=fireball,tag=!Still] at @s[tag=NormalFireball] run particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run kill @e[tag=FireballAS,distance=..2,limit=1,sort=nearest]
execute as @e[type=fireball,tag=!Still,tag=NoMotion] at @s run tag @s remove NoMotion
tag @e[type=fireball] remove Still