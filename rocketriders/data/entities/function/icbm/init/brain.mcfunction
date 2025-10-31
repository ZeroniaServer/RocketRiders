## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=egg,tag=icbm.this]

## Set up data
data modify entity @s data.icbm set value {brain:{}}
scoreboard players set @s entity.age 0

data modify entity @s Owner set from storage rocketriders:main icbm.origin
data modify entity @s CustomName set from storage rocketriders:main icbm.name

scoreboard players set $team var -1
execute unless predicate game:gamemode_components/neutral_items on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
