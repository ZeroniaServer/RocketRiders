data modify storage rocketriders:main cluster.motion set from entity @s Motion
execute at @s summon marker run function everytick:cluster/spawn_children
