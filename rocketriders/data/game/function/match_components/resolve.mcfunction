# Resolve components
function game:match_components/__resolve/arena/base_colors
function game:match_components/__resolve/arena/base_materials
function game:match_components/__resolve/arena/regenerate_back_layer
execute unless score $max_players_per_team match_components matches 1.. run scoreboard players set $max_players_per_team match_components 2147483647
execute unless score $min_players_per_team match_components matches 0.. run scoreboard players set $min_players_per_team match_components 1

# Update team attributes
function game:team_attributes/update_all

# Update assets
function game:assets/update_palettes
