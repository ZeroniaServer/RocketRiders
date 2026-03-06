## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=area_effect_cloud,tag=nova_attach.this_body]

## Set up data
data modify entity @s data.nova_attach set value {brain:{}}
scoreboard players set @s entity.age 0

data modify entity @s Owner set from entity @a[limit=1,tag=nova_attach.origin] UUID
data modify entity @s CustomName set from storage rocketriders:main nova_attach.name

scoreboard players set $team var -1
execute unless predicate game:match_components/neutral_items on origin if predicate custom:team/any_playing_team store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 run data modify entity @s data.origin_team set value "none"
execute if score $team var matches -1 on vehicle run data modify entity @s data.origin_team set value "none"
execute if score $team var matches 0 run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 0 on vehicle run data modify entity @s data.origin_team set value "blue"
execute if score $team var matches 1 run data modify entity @s data.origin_team set value "yellow"
execute if score $team var matches 1 on vehicle run data modify entity @s data.origin_team set value "yellow"
