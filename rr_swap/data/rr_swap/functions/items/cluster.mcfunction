scoreboard players add @e[tag=NormalFireball,tag=!Still,type=fireball] Clustertime 1

execute as @e[tag=!ClusterSpawn,scores={Clustertime=1},type=fireball] at @s run tag @s add ClusterStarter

execute as @e[tag=ClusterStarter,scores={Clustertime=7},type=fireball] at @s run summon fireball ~ ~2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7},type=fireball] at @s run summon fireball ~ ~-2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7},type=fireball] at @s run summon fireball ~2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7},type=fireball] at @s run summon fireball ~-2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}

execute as @e[tag=ClusterSpawn,type=fireball] at @s if entity @e[tag=ClusterStarter,distance=..5,limit=1,type=fireball] run scoreboard players add @s Clustertime 1
execute as @e[tag=ClusterSpawn,type=fireball] at @s if entity @e[tag=ClusterStarter,distance=..5,limit=1,type=fireball] run data modify entity @s Motion set from entity @e[tag=ClusterStarter,sort=nearest,limit=1,type=fireball] Motion
execute as @e[tag=ClusterSpawn,type=fireball] at @s unless entity @e[tag=ClusterStarter,distance=..5,limit=1,type=fireball] run scoreboard players remove @s Clustertime 1
kill @e[tag=ClusterSpawn,scores={Clustertime=-40},type=fireball]

#Proper explosive cluster fireballs
execute if entity @s[tag=Explosive] as @e[type=fireball,tag=ClusterFireball] run data merge entity @s {ExplosionPower:3}

#Disable cluster fireballs near portals (depends on Fireball Portals option) - thanks @Cubehamster!!!
execute as @s[tag=!Explosive] as @e[type=fireball,tag=ClusterFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute as @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=ClusterFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}