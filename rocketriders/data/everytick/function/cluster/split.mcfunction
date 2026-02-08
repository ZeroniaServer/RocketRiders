data modify storage rocketriders:main cluster_fireball.motion set from entity @s Motion
data modify storage rocketriders:main cluster_fireball.owner set from entity @s Owner
execute at @s summon marker run function everytick:cluster/spawn_children
