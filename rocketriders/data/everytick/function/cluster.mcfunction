scoreboard players add @e[x=0,type=fireball,tag=Cluster,tag=!Still] Clustertime 0
scoreboard players add @e[x=0,type=fireball,tag=Cluster,tag=!Still,tag=!endFireball,tag=!ClusterSpawn,scores={Clustertime=..7}] Clustertime 1

execute as @e[x=0,type=fireball,tag=!ClusterSpawn,scores={Clustertime=1}] at @s run tag @s add ClusterStarter

execute as @e[x=0,type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute as @e[x=0,type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~-2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute as @e[x=0,type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
execute as @e[x=0,type=fireball,tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~-2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d]}
scoreboard players set @e[x=0,type=fireball,tag=ClusterStarter,scores={Clustertime=7}] Clustertime 8

execute as @e[x=0,type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run scoreboard players add @s Clustertime 0
execute as @e[x=0,type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run scoreboard players add @s[scores={Clustertime=..39}] Clustertime 1
execute as @e[x=0,type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run data modify entity @s Motion set from entity @e[x=0,type=fireball,tag=ClusterStarter,sort=nearest,limit=1] Motion
execute as @e[x=0,type=fireball,tag=ClusterSpawn] at @s if entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run data modify entity @s Owner set from entity @e[x=0,type=fireball,tag=ClusterStarter,sort=nearest,limit=1] Owner
execute as @e[x=0,type=fireball,tag=ClusterSpawn] at @s unless entity @e[type=fireball,tag=ClusterStarter,distance=..5,limit=1] run scoreboard players remove @s[scores={Clustertime=-39..}] Clustertime 1
kill @e[x=0,type=fireball,tag=ClusterSpawn,tag=StillCluster,scores={Clustertime=-40}]

tag @e[x=0,type=fireball,tag=ClusterFireball] remove StillCluster
tag @e[x=0,type=fireball,tag=ClusterFireball,predicate=!custom:not_moving] add StillCluster
execute as @e[x=0,type=fireball,tag=ClusterFireball,tag=!StillCluster] store result score @s x run data get entity @s Motion[0] 100
execute as @e[x=0,type=fireball,tag=ClusterFireball,tag=!StillCluster] store result score @s y run data get entity @s Motion[1] 100
execute as @e[x=0,type=fireball,tag=ClusterFireball,tag=!StillCluster] store result score @s z run data get entity @s Motion[2] 100
tag @e[x=0,type=fireball,tag=ClusterFireball,tag=!StillCluster,scores={x=-1..0,y=-1..0,z=-1..0}] add StillCluster

#Proper explosive cluster fireballs
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:3}
execute if entity @s[tag=Explosive,tag=ClutterCollector] as @e[x=0,type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:-3}

#Disable cluster fireballs near portals (depends on Fireball Portals option) - thanks @Cubehamster!!!
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[x=0,type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}