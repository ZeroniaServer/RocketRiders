execute in minecraft:overworld positioned -160 184 -160 run function game:assets/__generate/generate with storage rocketriders:assets remaining_assets[-1]
data remove storage rocketriders:assets remaining_assets[-1]

execute unless data storage rocketriders:assets remaining_assets[0] run scoreboard players set $assets_refresh_progress global 100
execute if score $assets_refresh_progress global matches 100 run fill -161 184 -161 -161 185 -161 air strict
execute if score $assets_refresh_progress global matches 100 run data remove storage rocketriders:assets remaining_assets
execute if score $assets_refresh_progress global matches 100 run return run scoreboard players reset $assets_refresh_max global

execute store result score $assets_refresh_progress global if data storage rocketriders:assets remaining_assets[]
scoreboard players operation $assets_refresh_progress global -= $assets_refresh_max global
scoreboard players operation $assets_refresh_progress global *= $-1 constant
scoreboard players operation $assets_refresh_progress global *= $100 constant
scoreboard players operation $assets_refresh_progress global /= $assets_refresh_max global

function game:assets/__refresh/loop_load
