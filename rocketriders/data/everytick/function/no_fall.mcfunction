execute as @a[x=0,predicate=custom:team/lobby] run attribute @s minecraft:safe_fall_distance modifier add rocketriders:lobby 1024 add_value
execute as @a[x=0,predicate=!custom:team/lobby] run attribute @s minecraft:safe_fall_distance modifier remove rocketriders:lobby
