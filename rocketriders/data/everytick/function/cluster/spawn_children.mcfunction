# Get rotation
data modify entity @s Pos set from storage rocketriders:main cluster_fireball.motion
execute positioned 0. 0 0. facing entity @s feet run rotate @s ~ ~

# Get children individual motion vectors
execute rotated as @s positioned as @s run tp @s ^ ^0.1 ^
data modify storage rocketriders:main cluster_fireball.up_motion set from entity @s Pos
execute rotated as @s positioned as @s run tp @s ^ ^-0.2 ^
data modify storage rocketriders:main cluster_fireball.down_motion set from entity @s Pos
execute rotated as @s positioned as @s run tp @s ^-0.1 ^0.1 ^
data modify storage rocketriders:main cluster_fireball.left_motion set from entity @s Pos
execute rotated as @s positioned as @s run tp @s ^0.2 ^ ^
data modify storage rocketriders:main cluster_fireball.right_motion set from entity @s Pos

# Summon children
execute rotated as @s run summon fireball ^ ^1.5 ^ {Tags:["ClusterFireball","cluster_fireball.child","cluster_fireball.new"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s positioned ^ ^1.5 ^ run data modify entity @e[limit=1,distance=..0.01,type=fireball,tag=cluster_fireball.child,tag=cluster_fireball.new] Motion set from storage rocketriders:main cluster_fireball.up_motion
execute rotated as @s run summon fireball ^ ^-1.5 ^ {Tags:["ClusterFireball","cluster_fireball.child","cluster_fireball.new"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s positioned ^ ^-1.5 ^ run data modify entity @e[limit=1,distance=..0.01,type=fireball,tag=cluster_fireball.child,tag=cluster_fireball.new] Motion set from storage rocketriders:main cluster_fireball.down_motion
execute rotated as @s run summon fireball ^-1.5 ^ ^ {Tags:["ClusterFireball","cluster_fireball.child","cluster_fireball.new"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s positioned ^-1.5 ^ ^ run data modify entity @e[limit=1,distance=..0.01,type=fireball,tag=cluster_fireball.child,tag=cluster_fireball.new] Motion set from storage rocketriders:main cluster_fireball.left_motion
execute rotated as @s run summon fireball ^1.5 ^ ^ {Tags:["ClusterFireball","cluster_fireball.child","cluster_fireball.new"],ExplosionPower:1,Motion:[0.0d,0.0d,0.0d],Item:{id:"minecraft:blaze_powder"}}
execute rotated as @s positioned ^1.5 ^ ^ run data modify entity @e[limit=1,distance=..0.01,type=fireball,tag=cluster_fireball.child,tag=cluster_fireball.new] Motion set from storage rocketriders:main cluster_fireball.right_motion

# Kill marker
kill @s
