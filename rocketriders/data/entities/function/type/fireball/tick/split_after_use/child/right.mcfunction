data merge entity @s {ExplosionPower:1,Item:{id:"minecraft:blaze_powder"}}
data modify entity @s Owner set from storage rocketriders:main fireball.origin
data modify entity @s Motion set from storage rocketriders:main fireball.right_motion

execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
