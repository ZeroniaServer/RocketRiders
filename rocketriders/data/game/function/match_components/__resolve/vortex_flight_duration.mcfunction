execute unless score $vortex_flight_duration match_components matches 1..60 run scoreboard players set $vortex_flight_duration match_components 20

# Tooltip
execute if score $vortex_flight_duration match_components matches 20 run return run scoreboard players display numberformat $vortex_flight_duration match_components fixed "1 second"

scoreboard players operation $mod var = $vortex_flight_duration match_components
scoreboard players operation $mod var %= $20 constant
execute if score $mod var matches 0 run scoreboard players operation $div var = $vortex_flight_duration match_components
execute if score $mod var matches 0 run scoreboard players operation $div var /= $20 constant
execute if score $mod var matches 0 run return run scoreboard players display numberformat $vortex_flight_duration match_components fixed [{score:{name:"$div",objective:"var"}}," seconds"]

execute store result storage rocketriders:main match_components.tooltip float 0.05 run scoreboard players get $vortex_flight_duration match_components
data modify storage rocketriders:main match_components.tooltip set string storage rocketriders:main match_components.tooltip 0 -1
scoreboard players display numberformat $vortex_flight_duration match_components fixed [{storage:"rocketriders:main",nbt:"match_components.tooltip",interpret:true}," seconds"]
