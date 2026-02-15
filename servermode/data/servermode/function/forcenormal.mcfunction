##Operator function -- run in server mode 1 to set normal mode (slightly buggy)
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add forcenormal
function game:forcestop
execute if predicate rr:server_mode/cubekrowd_voting store result score @e[x=0,type=armor_stand,tag=Selection,limit=1] SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $arena_details/top config 1
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $arena_details/top_sides config 1
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $arena_details/middle config 1
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $arena_details/bottom config 1
execute if predicate rr:server_mode/cubekrowd_voting run scoreboard players set $arena_details/portal config 1

execute if predicate rr:server_mode/cubekrowd_voting run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting

execute if predicate rr:server_mode/cubekrowd_voting run schedule function servermode:forceclear 2t

execute unless predicate rr:server_mode/cubekrowd_voting run tellraw @s [{"text":"Error: Incorrect server mode! Please run in server mode 1.","color":"red"}]