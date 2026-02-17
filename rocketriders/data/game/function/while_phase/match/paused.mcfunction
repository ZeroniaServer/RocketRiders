##Stop games if empty (toggle)
execute if score $blue_team_count global matches 0 if score $yellow_team_count global matches 0 if entity @s[tag=stopIfEmpty] run function game:forcestop

## Leave Mid-Match
execute as @a[scores={LeaveMidgame=1..},predicate=custom:team/any_playing_team] run function game:leave_mid_match
scoreboard players enable @a[x=0,predicate=custom:team/any_playing_team] LeaveMidgame
scoreboard players reset @a[x=0,predicate=!custom:team/any_playing_team] LeaveMidgame
