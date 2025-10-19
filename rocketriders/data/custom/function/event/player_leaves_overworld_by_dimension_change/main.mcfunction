advancement revoke @s only custom:event/player_leaves_overworld_by_dimension_change

scoreboard players remove $players_online global 1

scoreboard players reset @s event.player_joins_world.state
scoreboard players add @s LeaveGame 1

execute in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function custom:event/number_of_players_decreases/main
