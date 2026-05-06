execute unless entity @s in minecraft:overworld summon marker if function custom:entity/kill_marker run return run function game:match_components/resolve

# Resolve components
function game:match_components/__resolve/arena/base_colors
function game:match_components/__resolve/arena/base_materials
function game:match_components/__resolve/arena/regenerate_back_layer
function game:match_components/__resolve/arena/regenerate_floor
function game:match_components/__resolve/armor_type
function game:match_components/__resolve/canopy_flight_duration
function game:match_components/__resolve/castle_type
function game:match_components/__resolve/icbm_flight_duration
function game:match_components/__resolve/nova_rocket_flight_duration
function game:match_components/__resolve/main_item
execute unless score $max_players_per_team match_components matches 1.. run scoreboard players set $max_players_per_team match_components 2147483647
execute unless score $min_players_per_team match_components matches 0.. run scoreboard players set $min_players_per_team match_components 1
function game:match_components/__resolve/obsidian_shield_flight_duration
function game:match_components/__resolve/shield_flight_duration
function game:match_components/__resolve/shield_type
function game:match_components/__resolve/stinging_shield_flight_duration
function game:match_components/__resolve/vortex_flight_duration
