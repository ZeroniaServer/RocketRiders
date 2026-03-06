## Resets all match components to the base component set of the currently enabled gamemode, plus modifications based on configs
scoreboard players reset * match_components

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run function rr_chase:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=crusadeEnabled] run function rr_crusade:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run function rr_ctf:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=duelEnabled] run function rr_duel:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=normalEnabled] run function rr_normal:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=powerusEnabled] run function rr_powerup:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=sandboxEnabled] run function rr_sandbox:set_base_match_components
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run function rr_swap:set_base_match_components

# Instantly resolve `$max_players_per_team global` score.
function everytick:resolve_max_players_per_team
