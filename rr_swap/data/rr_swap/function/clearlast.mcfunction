data modify entity @s Tags set from storage rocketriders:storage Tags
execute store success score $disable_cannoning global if data storage rocketriders:storage config{disable_cannoning:1b}
tag @s remove swapLast
data modify storage rocketriders:storage Tags set from entity @s Tags
execute store result storage rocketriders:storage config.disable_cannoning byte 1 run scoreboard players get $disable_cannoning global
kill