## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=fireball,tag=fireball.this]

## Set up data
data modify entity @s data.fireball set value {brain:{}}

data modify entity @s Owner set from storage rocketriders:main fireball.origin
data modify entity @s CustomName set from storage rocketriders:main fireball.name

scoreboard players set $team var -1
execute unless predicate game:gamemode_components/neutral_items on vehicle store success score $team var if entity @s[tag=!FireballBlue]
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
