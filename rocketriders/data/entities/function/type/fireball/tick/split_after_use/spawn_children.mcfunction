# Get rotation
data modify entity @s Pos set from storage rocketriders:main fireball.motion
execute positioned 0.0 0.0 0.0 facing entity @s feet run rotate @s ~ ~

# Get children individual motion vectors
execute rotated as @s positioned as @s run tp @s ^ ^0.015 ^
data modify storage rocketriders:main fireball.up_motion set from entity @s Pos
execute rotated as @s positioned as @s run tp @s ^ ^-0.03 ^
data modify storage rocketriders:main fireball.down_motion set from entity @s Pos
execute rotated as @s positioned as @s run tp @s ^-0.015 ^0.015 ^
data modify storage rocketriders:main fireball.left_motion set from entity @s Pos
execute rotated as @s positioned as @s run tp @s ^0.03 ^ ^
data modify storage rocketriders:main fireball.right_motion set from entity @s Pos

# Summon children
execute rotated as @s positioned ^ ^1.7 ^ summon fireball run function entities:type/fireball/tick/split_after_use/child/up
execute rotated as @s positioned ^ ^-1.7 ^ summon fireball run function entities:type/fireball/tick/split_after_use/child/down
execute rotated as @s positioned ^-1.7 ^ ^ summon fireball run function entities:type/fireball/tick/split_after_use/child/left
execute rotated as @s positioned ^1.7 ^ ^ summon fireball run function entities:type/fireball/tick/split_after_use/child/right

# Kill marker
kill @s
