## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=small_fireball,tag=fire_spell.this]

## Set up data
data modify entity @s data.fire_spell set value {brain:{}}

execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"

data modify entity @s Owner set from storage rocketriders:main fire_spell.origin
