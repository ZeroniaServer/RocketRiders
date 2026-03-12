## Resets all match components to the base component set of the currently enabled game mode, plus modifications based on configs
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

execute if predicate game:game_rules/classic_team_colors/on run scoreboard players set $red_for_blue match_components 1
execute if predicate game:game_rules/classic_team_colors/on run scoreboard players set $green_for_yellow match_components 1

# Resolve components
function game:match_components/resolve

# Instantly resolve `$max_players_per_team global` score.
function everytick:resolve_max_players_per_team
