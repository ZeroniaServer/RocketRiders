#Void spawn prevention
execute at @s[tag=BlueFireball,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add void
execute at @s[tag=BlueFireball,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add UnableSpawn
execute at @s[tag=YellowFireball,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add void
execute at @s[tag=YellowFireball,tag=!UnableSpawn] if predicate custom:nearvoid run tag @s add UnableSpawn

#Roof spawn prevention
execute at @s[tag=BlueFireball,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add roof
execute at @s[tag=BlueFireball,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add UnableSpawn
execute at @s[tag=YellowFireball,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add roof
execute at @s[tag=YellowFireball,tag=!UnableSpawn] if predicate custom:verynearroof run tag @s add UnableSpawn

#Give back if prevented
execute at @s[tag=UnableSpawn] run function items:prevention/unablefx
execute at @s[tag=UnableSpawn] run return run function items:prevention/giveback

#Summoning the Fireball entity
execute at @s[tag=BlueFireball] unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s[tag=BlueFireball,tag=!Cluster] run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute at @s[tag=BlueFireball,tag=Cluster] run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballBlue","Cluster"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute at @s[tag=BlueFireball] as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute at @s[tag=BlueFireball] as @a[distance=..6] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1.25

execute at @s[tag=YellowFireball] unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute at @s[tag=YellowFireball,tag=!Cluster] run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute at @s[tag=YellowFireball,tag=Cluster] run summon fireball ~ ~1.2 ~ {Tags:["NormalFireball","NoMotion","FireballYellow","Cluster"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute at @s[tag=YellowFireball] as @a[distance=..6] run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 1
execute at @s[tag=YellowFireball] as @a[distance=..6] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1.25

kill @s