## Forced configs for server mode (making absolutely sure they get set, because apparently initialization functions are not to be trusted

execute if predicate rr:is_cubekrowd unless predicate rr:server_mode/cubekrowd_custom run scoreboard players set $disable_cannoning config 1
execute if predicate rr:is_cubekrowd unless predicate rr:server_mode/cubekrowd_custom run scoreboard players set $impact_utilities config 1
