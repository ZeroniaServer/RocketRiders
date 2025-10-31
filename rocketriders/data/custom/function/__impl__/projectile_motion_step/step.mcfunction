## Collision
# in glass pane
execute if block ~ ~ ~ #custom:glasspane run tp @s ~ ~ ~
execute if block ~ ~ ~ #custom:glasspane[east=false,south=false,west=false,north=false] align xyz positioned ~0.4375 ~ ~0.4375 if entity @s[dx=0] positioned ~0.125 ~1 ~0.125 positioned ~-1 ~-1 ~-1 if entity @s[dx=0] positioned as @s run return run tp @s ^ ^ ^-0.1
execute if block ~ ~ ~ #custom:glasspane[east=true] align xyz positioned ~0.4375 ~ ~0.4375 if entity @s[dx=0] positioned ~0.5625 ~1 ~0.125 positioned ~-1 ~-1 ~-1 if entity @s[dx=0] positioned as @s run return run tp @s ^ ^ ^-0.1
execute if block ~ ~ ~ #custom:glasspane[south=true] align xyz positioned ~0.4375 ~ ~0.4375 if entity @s[dx=0] positioned ~0.125 ~1 ~0.5625 positioned ~-1 ~-1 ~-1 if entity @s[dx=0] positioned as @s run return run tp @s ^ ^ ^-0.1
execute if block ~ ~ ~ #custom:glasspane[west=true] align xyz positioned ~0 ~ ~0.4375 if entity @s[dx=0] positioned ~0.5625 ~1 ~0.125 positioned ~-1 ~-1 ~-1 if entity @s[dx=0] positioned as @s run return run tp @s ^ ^ ^-0.1
execute if block ~ ~ ~ #custom:glasspane[north=true] align xyz positioned ~0.4375 ~ ~0 if entity @s[dx=0] positioned ~0.125 ~1 ~0.5625 positioned ~-1 ~-1 ~-1 if entity @s[dx=0] positioned as @s run return run tp @s ^ ^ ^-0.1

# in any other solid block
execute unless block ~ ~ ~ #custom:glasspane unless block ~ ~ ~ #custom:nonsolid run return run tp @s ^ ^ ^-0.1

# speed exceeded
execute unless score @s entity.speed matches 100.. run return run tp @s ~ ~ ~

## Continue (unless step size is reached)
scoreboard players remove @s entity.speed 100
execute positioned ^ ^ ^0.1 run function custom:__impl__/projectile_motion_step/step
