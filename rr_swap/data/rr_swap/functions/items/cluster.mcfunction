scoreboard players add @e[tag=NormalFireball,tag=!NoMotion] Clustertime 1

execute as @e[tag=!ClusterSpawn,scores={Clustertime=1}] at @s run tag @s add ClusterStarter

execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~-2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~-2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}

scoreboard players add @e[tag=ClusterSpawn] Clustertime 1
execute as @e[tag=ClusterSpawn,scores={Clustertime=3..}] at @s run data modify entity @s Motion set from entity @e[tag=ClusterStarter,sort=nearest,limit=1] Motion
execute as @e[tag=ClusterSpawn] at @s run data modify entity @s Motion set from entity @e[tag=ClusterStarter,sort=nearest,limit=1] Motion

execute as @e[tag=ClusterSpawn] at @s unless entity @e[tag=ClusterStarter,distance=..5] run schedule function rr_swap:items/killclusters 2s