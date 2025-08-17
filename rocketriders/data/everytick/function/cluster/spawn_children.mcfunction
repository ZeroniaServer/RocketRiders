data modify entity @s Pos set from storage rocketriders:main cluster.motion
execute positioned 0. 0 0. facing entity @s feet run rotate @s ~ ~

execute rotated as @s run summon fireball ^ ^2 ^ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s run summon fireball ^ ^-2 ^ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s run summon fireball ^2 ^ ^ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s run summon fireball ^-2 ^ ^ {Tags:["ClusterFireball","ClusterSpawn"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}

kill @s
