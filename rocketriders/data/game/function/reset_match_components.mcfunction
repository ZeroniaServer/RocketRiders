## Resets all match components to the base component set of the currently enabled gamemode, plus modifications based on configs
scoreboard players reset * match_components
data modify storage rocketriders:match components set value {}

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run function rr_chase:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] run function rr_crusade:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run function rr_ctf:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=duelEnabled] run function rr_duel:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalEnabled] run function rr_normal:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerupsEnabled] run function rr_powerups:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxEnabled] run function rr_sandbox:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run function rr_swap:set_base_match_components

# Instantly resolve `$max_players_per_team global` score.
function everytick:resolve_max_players_per_team

# Resolve arena components
data modify storage rocketriders:main reset_match_components.arena_base_materials set value {blue:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"},yellow:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"}}
execute if data storage rocketriders:match components."arena/base_materials".blue run data modify storage rocketriders:main reset_match_components.arena_base_materials.blue set from storage rocketriders:match components."arena/base_materials".blue
execute if data storage rocketriders:match components."arena/base_materials".yellow run data modify storage rocketriders:main reset_match_components.arena_base_materials.yellow set from storage rocketriders:match components."arena/base_materials".yellow
execute unless data storage rocketriders:match components."arena/base_materials".blue unless data storage rocketriders:match components."arena/base_materials".yellow run data modify storage rocketriders:main reset_match_components.arena_base_materials.blue set from storage rocketriders:match components."arena/base_materials"
execute unless data storage rocketriders:match components."arena/base_materials".blue unless data storage rocketriders:match components."arena/base_materials".yellow run data modify storage rocketriders:main reset_match_components.arena_base_materials.yellow set from storage rocketriders:match components."arena/base_materials"
data modify storage rocketriders:match components."arena/base_materials" set from storage rocketriders:main reset_match_components.arena_base_materials

data modify storage rocketriders:main reset_match_components.arena_base_colors set value {blue:{front:"main",middle:"accent",back:"white"},yellow:{front:"main",middle:"accent",back:"white"}}
execute if data storage rocketriders:match components."arena/base_colors".blue run data modify storage rocketriders:main reset_match_components.arena_base_colors.blue set from storage rocketriders:match components."arena/base_colors".blue
execute if data storage rocketriders:match components."arena/base_colors".yellow run data modify storage rocketriders:main reset_match_components.arena_base_colors.yellow set from storage rocketriders:match components."arena/base_colors".yellow
execute unless data storage rocketriders:match components."arena/base_colors".blue unless data storage rocketriders:match components."arena/base_colors".yellow run data modify storage rocketriders:main reset_match_components.arena_base_colors.blue set from storage rocketriders:match components."arena/base_colors"
execute unless data storage rocketriders:match components."arena/base_colors".blue unless data storage rocketriders:match components."arena/base_colors".yellow run data modify storage rocketriders:main reset_match_components.arena_base_colors.yellow set from storage rocketriders:match components."arena/base_colors"
data modify storage rocketriders:match components."arena/base_colors" set from storage rocketriders:main reset_match_components.arena_base_colors

# Set team attributes
function game:team_attributes/update_all
