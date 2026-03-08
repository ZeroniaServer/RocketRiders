# Resolve arena components
data modify storage rocketriders:main match_components.arena_base_materials set value {blue:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"},yellow:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"}}
execute if data storage rocketriders:match components."arena/base_materials".blue run data modify storage rocketriders:main match_components.arena_base_materials.blue set from storage rocketriders:match components."arena/base_materials".blue
execute if data storage rocketriders:match components."arena/base_materials".yellow run data modify storage rocketriders:main match_components.arena_base_materials.yellow set from storage rocketriders:match components."arena/base_materials".yellow
execute unless data storage rocketriders:match components."arena/base_materials".blue unless data storage rocketriders:match components."arena/base_materials".yellow run data modify storage rocketriders:main match_components.arena_base_materials.blue set from storage rocketriders:match components."arena/base_materials"
execute unless data storage rocketriders:match components."arena/base_materials".blue unless data storage rocketriders:match components."arena/base_materials".yellow run data modify storage rocketriders:main match_components.arena_base_materials.yellow set from storage rocketriders:match components."arena/base_materials"
data modify storage rocketriders:match components."arena/base_materials" set from storage rocketriders:main match_components.arena_base_materials

data modify storage rocketriders:main match_components.arena_base_colors set value {blue:{front:"main",middle:"accent",back:"white"},yellow:{front:"main",middle:"accent",back:"white"}}
execute if data storage rocketriders:match components."arena/base_colors".blue run data modify storage rocketriders:main match_components.arena_base_colors.blue set from storage rocketriders:match components."arena/base_colors".blue
execute if data storage rocketriders:match components."arena/base_colors".yellow run data modify storage rocketriders:main match_components.arena_base_colors.yellow set from storage rocketriders:match components."arena/base_colors".yellow
execute unless data storage rocketriders:match components."arena/base_colors".blue unless data storage rocketriders:match components."arena/base_colors".yellow run data modify storage rocketriders:main match_components.arena_base_colors.blue set from storage rocketriders:match components."arena/base_colors"
execute unless data storage rocketriders:match components."arena/base_colors".blue unless data storage rocketriders:match components."arena/base_colors".yellow run data modify storage rocketriders:main match_components.arena_base_colors.yellow set from storage rocketriders:match components."arena/base_colors"
data modify storage rocketriders:match components."arena/base_colors" set from storage rocketriders:main match_components.arena_base_colors

# Set team attributes
function game:team_attributes/update_all
