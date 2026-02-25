execute if block ~ ~ ~ minecraft:piston_head[facing=south,type=normal] rotated 180 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"piston[extended=true,facing=south]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=west,type=normal] rotated -90 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"piston[extended=true,facing=west]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=north,type=normal] rotated 0 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"piston[extended=true,facing=north]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=east,type=normal] rotated 90 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"piston[extended=true,facing=east]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=down,type=normal] rotated 0 -90 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"piston[extended=true,facing=down]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=up,type=normal] rotated 0 90 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"piston[extended=true,facing=up]"}

execute if block ~ ~ ~ minecraft:piston_head[facing=south,type=sticky] rotated 180 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"sticky_piston[extended=true,facing=south]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=west,type=sticky] rotated -90 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"sticky_piston[extended=true,facing=west]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=north,type=sticky] rotated 0 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"sticky_piston[extended=true,facing=north]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=east,type=sticky] rotated 90 0 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"sticky_piston[extended=true,facing=east]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=down,type=sticky] rotated 0 -90 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"sticky_piston[extended=true,facing=down]"}
execute if block ~ ~ ~ minecraft:piston_head[facing=up,type=sticky] rotated 0 90 run return run function entities:type/rot/tick/rot_away_piston_head_template {block:"sticky_piston[extended=true,facing=up]"}
