# If lingering potion hits the negative face of a block, the AEC gets spawned at the exact coordinate of that face, which is technically *inside* of the block it hit.
# So check negative directions for air first.
execute positioned ~ ~ ~-0.001 if block ~ ~ ~ #custom:nonsolid run return run tp @s ~ ~ ~
execute positioned ~-0.001 ~ ~ if block ~ ~ ~ #custom:nonsolid run return run tp @s ~ ~ ~
execute positioned ~ ~-0.001 ~ if block ~ ~ ~ #custom:nonsolid run return run tp @s ~ ~ ~

# Then just try going up, like legacy behaviour
execute positioned ~ ~1 ~ if block ~ ~ ~ #custom:nonsolid run return run tp @s ~ ~ ~

# Otherwise, do nothing... how did it get here?
