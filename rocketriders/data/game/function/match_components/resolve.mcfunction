# Resolve components
function game:match_components/__resolve/arena/base_colors
function game:match_components/__resolve/arena/base_materials
function game:match_components/__resolve/arena/regenerate_back_layer
function game:match_components/__resolve/arena/regenerate_floor
function game:match_components/__resolve/armor_type
function game:match_components/__resolve/main_item
execute unless score $max_players_per_team match_components matches 1.. run scoreboard players set $max_players_per_team match_components 2147483647
execute unless score $min_players_per_team match_components matches 0.. run scoreboard players set $min_players_per_team match_components 1
function game:match_components/__resolve/shield_type

# Update team attributes
function game:team_attributes/update_all

# Update assets
function game:assets/update_palettes
