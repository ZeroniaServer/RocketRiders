data remove entity @s data."fireball/split_after_use"

data modify storage rocketriders:main fireball.motion set from entity @s Motion
data remove storage rocketriders:main fireball.origin
data modify storage rocketriders:main fireball.origin set from entity @s Owner
scoreboard players set $team var -1
execute if predicate entities:origin_team/blue run scoreboard players set $team var 0
execute if predicate entities:origin_team/yellow run scoreboard players set $team var 1

execute at @s summon marker run function entities:type/fireball/tick/split_after_use/spawn_children
