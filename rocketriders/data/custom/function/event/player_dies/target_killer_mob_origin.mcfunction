data modify entity @s Owner set from storage rocketriders:main player_dies.killer_mob_origin

# Prevent self-kills and team-kills from being awarded
scoreboard players set $award_kill var 1
execute on origin if entity @s[tag=player_dies.origin] run scoreboard players set $award_kill var 0
execute if score $team var matches 0 on origin if entity @s[team=Blue] run scoreboard players set $award_kill var 0
execute if score $team var matches 1 on origin if entity @s[team=Yellow] run scoreboard players set $award_kill var 0
execute if score $award_kill var matches 0 run return run kill @s

# Award killer
execute on origin run scoreboard players add @s kills 1
execute on origin run advancement grant @s only custom:event/player_kills_another_player

#
kill @s
