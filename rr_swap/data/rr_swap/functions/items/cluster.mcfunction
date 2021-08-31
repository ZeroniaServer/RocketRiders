scoreboard players add @e[type=fireball,tag=NormalFireball,tag=!Still] Clustertime 1

execute as @e[type=fireball,tag=!ClusterSpawn,scores={Clustertime=1}] at @s run tag @s add ClusterStarter

execute as @e[type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~-2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~-2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}

execute as @e[type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run scoreboard players add @s Clustertime 1
execute as @e[type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run data modify entity @s Motion set from entity @e[type=fireball,tag=ClusterStarter,sort=nearest,limit=1] Motion
execute as @e[type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run data modify entity @s Owner set from entity @e[type=fireball,tag=ClusterStarter,sort=nearest,limit=1] Owner
execute as @e[type=fireball,tag=ClusterSpawn] at @s unless entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run scoreboard players remove @s Clustertime 1
kill @e[type=fireball,tag=ClusterSpawn,scores={Clustertime=-40}]

#Proper explosive cluster fireballs
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:3}
execute if entity @s[tag=Explosive,tag=ClutterCollector] as @e[type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:-3}

#Disable cluster fireballs near portals (depends on Fireball Portals option) - thanks @Cubehamster!!!
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}