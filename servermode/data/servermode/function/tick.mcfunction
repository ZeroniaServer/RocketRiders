## Forced configs for server mode (making absolutely sure they get set, because apparently initialization functions are not to be trusted

execute if predicate rr:is_cubekrowd unless predicate rr:server_mode/cubekrowd_custom run scoreboard players set $disable_cannoning config 1
execute if predicate rr:is_cubekrowd unless predicate rr:server_mode/cubekrowd_custom run scoreboard players set $impact_utilities config 1

execute if predicate rr:is_cubekrowd if predicate rr:server_mode/cubekrowd_custom run data modify storage rocketriders:navbook modroom set value ["\n",{text:"* ",color:"gray",click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"},hover_event:{action:"show_text",value:{color:"gray",text:"Click to teleport to the Modification Room."}}},{text:"Modification Room",color:"dark_purple",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"}}]
execute if predicate rr:is_cubekrowd if predicate rr:server_mode/cubekrowd_custom run data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and other settings to play with.",color:"dark_gray"}

execute if predicate rr:is_cubekrowd unless predicate rr:server_mode/cubekrowd_custom run data modify storage rocketriders:navbook modroom set value [""]

execute if predicate rr:server_mode/cubekrowd_voting run data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nAfter each game, you can vote between several gamemodes, modifiers, and base designs to play with for the next round.",color:"dark_gray"}

execute if predicate rr:server_mode/cubekrowd_duels run data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn 1v1 Duel Mode, players challenge each other to a best of three, one-on-one tournament with sets of 12 random items.",color:"dark_gray"}

execute if predicate rr:is_cubekrowd run data modify storage rocketriders:navbook parkourtips set value [""]