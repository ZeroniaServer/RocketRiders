setblock ~ ~ ~ air
playsound minecraft:entity.tnt.primed block @a[x=0]

data modify storage rocketriders:main ignite_tnt.entity_data set value {fuse:80s}
execute store result entity @s Rotation[0] float 1 run random value -180..179
execute positioned 0.0 0.0 0.0 rotated ~ 0 run tp @s ^ ^0.2 ^0.02
data modify storage rocketriders:main ignite_tnt.entity_data.Motion set from entity @s Pos

execute align xyz positioned ~0.5 ~ ~0.5 summon tnt run data modify entity @s {} merge from storage rocketriders:main ignite_tnt.entity_data
