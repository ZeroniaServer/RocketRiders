data modify storage rocketriders:main cluster_fireball.motion set from entity @s Motion
data modify storage rocketriders:main cluster_fireball.owner set from entity @s Owner
execute at @s summon marker run function entities:type/fireball/tick/cluster/spawn_children
