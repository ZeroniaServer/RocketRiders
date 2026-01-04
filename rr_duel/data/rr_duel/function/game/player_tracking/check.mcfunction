# If not in the overworld, do nothing
scoreboard players set $player_online var 0
execute on origin at @s if dimension minecraft:overworld run scoreboard players set $player_online var 1
execute if score $player_online var matches 0 run return 0

# If already in a team, do nothing
execute on origin if predicate custom:team/any_playing_team run return 1

# If not on a team, forcibly join back
execute if entity @s[tag=1v1_duel_player_tracker.blue] on origin run function rr_duel:game/player_tracking/join_back_blue
execute if entity @s[tag=1v1_duel_player_tracker.yellow] on origin run function rr_duel:game/player_tracking/join_back_yellow
return 1
