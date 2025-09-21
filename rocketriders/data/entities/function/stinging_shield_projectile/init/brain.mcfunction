## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=snowball,tag=stinging_shield_projectile.this]

## Set up data
data modify entity @s data.stinging_shield_projectile set value {brain:{}}
scoreboard players set @s entity.age 0

data modify entity @s Owner set from storage rocketriders:main stinging_shield_projectile.origin
data modify entity @s CustomName set from storage rocketriders:main stinging_shield_projectile.name

scoreboard players set $team var -1
execute unless predicate game:gamemode_components/neutral_items on origin if predicate custom:on_blue_or_yellow_team store success score $team var if entity @s[team=!Blue]
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
