scoreboard players reset * config

# Realms defaults
execute if predicate rr:server_mode/realms run scoreboard players set $impact_utilities config 1
execute if predicate rr:server_mode/realms run scoreboard players set $disable_cannoning config 1

# CubeKrowd defaults
execute if predicate rr:server_mode/cubekrowd_duels run scoreboard players set $disable_cannoning config 1
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $disable_cannoning config 1