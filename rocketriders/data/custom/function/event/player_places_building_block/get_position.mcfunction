tp @s ~-8 ~-8 ~-8
data modify storage rocketriders:main player_places_building_block.negative_corner set from entity @s Pos

tp @s ~8 ~8 ~8
data modify storage rocketriders:main player_places_building_block.positive_corner set from entity @s Pos

kill @s
