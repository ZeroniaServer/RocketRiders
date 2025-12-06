data modify storage rocketriders:main wind_spell.initial_motion set from entity @s Motion
data modify storage rocketriders:main wind_spell.initial_motion_x set from storage rocketriders:main wind_spell.initial_motion[0]
data modify storage rocketriders:main wind_spell.initial_motion_y set from storage rocketriders:main wind_spell.initial_motion[1]
data modify storage rocketriders:main wind_spell.initial_motion_z set from storage rocketriders:main wind_spell.initial_motion[2]

execute store success score $flip_horizontal var positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0 -0.5 rotated ~-45 0 unless block ^ ^ ^0.6 #custom:nonsolid
execute store success score $towards_down var positioned ^ ^ ^0.1 positioned ~-0.5 ~ ~-0.5 if entity @s[dy=0]
execute if score $towards_down var matches 0 store success score $flip_vertical var unless block ~ ~1.1 ~ #custom:nonsolid
execute if score $towards_down var matches 1 store success score $flip_vertical var unless block ~ ~-0.1 ~ #custom:nonsolid

execute positioned 0.0 0.0 0.0 summon marker run function entities:wind_spell/tick/get_motion_vector with storage rocketriders:main wind_spell

data modify entity @s Motion set from storage rocketriders:main wind_spell.final_motion
