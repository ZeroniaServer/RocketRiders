scoreboard players add @e[tag=NormalFireball,tag=!Still] Clustertime 1

execute as @e[tag=!ClusterSpawn,scores={Clustertime=1}] at @s run tag @s add ClusterStarter

execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~ ~-2 ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}
execute as @e[tag=ClusterStarter,scores={Clustertime=7}] at @s run summon fireball ~-2 ~ ~ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0,0.0,0.0]}

execute as @e[tag=ClusterSpawn] at @s if entity @e[tag=ClusterStarter,distance=..5,limit=1] run scoreboard players add @s Clustertime 1
execute as @e[tag=ClusterSpawn] at @s if entity @e[tag=ClusterStarter,distance=..5,limit=1] run data modify entity @s Motion set from entity @e[tag=ClusterStarter,sort=nearest,limit=1] Motion

execute as @e[tag=ClusterSpawn] at @s unless entity @e[tag=ClusterStarter,distance=..5,limit=1] run scoreboard players remove @s Clustertime 1
kill @e[tag=ClusterSpawn,scores={Clustertime=-40}]