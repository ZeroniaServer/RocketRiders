## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=firework_rocket,tag=nova_rocket.this]

## Set up data
data modify entity @s data.nova_rocket set value {brain:{}}
scoreboard players set @s entity.age 0

data modify entity @s Owner set from storage rocketriders:main nova_rocket.origin
data modify entity @s CustomName set from storage rocketriders:main nova_rocket.name

scoreboard players set $team var -1
execute unless predicate game:gamemode_components/neutral_utility_colors on origin if predicate custom:on_blue_or_yellow_team store success score $team var if entity @s[team=!Blue]
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches -1 on vehicle run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 0 on vehicle run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
execute if score $team var matches 1 on vehicle run data modify entity @s data.origin_team set value "yellow"
