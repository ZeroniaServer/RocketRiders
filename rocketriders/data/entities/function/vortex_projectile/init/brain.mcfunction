## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=egg,tag=vortex_projectile.this]

## Set up data
data modify entity @s data.vortex_projectile set value {brain:{}}
scoreboard players set @s entity.age 0

data modify entity @s Owner set from storage rocketriders:main vortex_projectile.origin
data modify entity @s CustomName set from storage rocketriders:main vortex_projectile.name

scoreboard players set $team var -1
execute store success score $team var if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!custVortParticle] on origin if predicate custom:on_blue_or_yellow_team if entity @s[team=!Blue]
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
