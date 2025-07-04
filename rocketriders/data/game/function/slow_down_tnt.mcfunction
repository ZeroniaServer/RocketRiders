## Slows down TNT by 70% in the Y and Z axes, to prevent cannoning if disabled (only called if a speed predicate is too high in the Z axis to prevent excess NBT serialisations)
data modify storage rocketriders:main slow_down_tnt.motion set from entity @s Motion

execute store result storage rocketriders:main slow_down_tnt.motion[2] double 0.001 run data get storage rocketriders:main slow_down_tnt.motion[2] 700
execute if predicate custom:moving_up store result storage rocketriders:main slow_down_tnt.motion[1] double 0.001 run data get storage rocketriders:main slow_down_tnt.motion[1] 700

data modify entity @s Motion set from storage rocketriders:main slow_down_tnt.motion
