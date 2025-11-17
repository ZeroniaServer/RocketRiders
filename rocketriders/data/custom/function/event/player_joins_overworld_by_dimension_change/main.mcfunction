advancement revoke @s only custom:event/player_joins_overworld_by_dimension_change

scoreboard players add $players_online global 1

execute in minecraft:overworld run scoreboard players set @a[x=0] flag.is_dead 1
execute in minecraft:overworld run scoreboard players set @e[x=0,type=player] flag.is_dead 0

function custom:event/player_joins_overworld/main
