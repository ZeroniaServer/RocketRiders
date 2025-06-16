## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=ender_pearl,tag=canopy_projectile.this]

## Set up data
data modify entity @s data.canopy_projectile set value {brain:{}}
scoreboard players set @s entity.age 0

data modify entity @s Owner set from storage rocketriders:main canopy_projectile.origin
data modify entity @s CustomName set from storage rocketriders:main canopy_projectile.name

scoreboard players set $team var 0
execute store success score $team var on origin if entity @s[team=!Blue]
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "Blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "Yellow"
