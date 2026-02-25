setblock ~ ~ ~ air
playsound minecraft:entity.tnt.primed block @a[x=0]

execute store result entity @s Rotation[0] float 1 run random value -180..179
execute positioned 0.0 0.0 0.0 rotated ~ 0 run tp @s ^ ^0.2 ^0.02
data modify storage rocketriders:main ignite_tnt.entity_data.Motion set from entity @s Pos
execute store result storage rocketriders:main ignite_tnt.entity_data.fuse short 1 run random value 20..40

execute align xyz positioned ~0.5 ~ ~0.5 summon tnt run data modify entity @s {} merge from storage rocketriders:main ignite_tnt.entity_data
