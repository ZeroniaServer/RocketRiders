## Slows down TNT by 70% in the Y and Z axes, to prevent cannoning if disabled (only called if a speed predicate is too high in the Z axis to prevent excess NBT serialisations)
execute store result entity @s[type=tnt] Motion[1] double 0.001 run data get entity @s Motion[1] 700
execute store result entity @s[type=tnt] Motion[2] double 0.001 run data get entity @s Motion[2] 700
