execute unless predicate game:game_rules/tie_window_length/non_zero run return run function game:set_phase/match.closing.outcome.celebration

##Tie actionbar notifications
scoreboard players operation $tie_window_countdown_seconds var = $closing_timer.max_tie_window_time global
scoreboard players operation $tie_window_countdown_seconds var -= $closing_timer global
scoreboard players add $tie_window_countdown_seconds var 19
scoreboard players operation $tie_window_countdown_seconds var /= $20 constant
execute if score $tie_window_countdown_seconds var matches 2.. run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",score:{name:"$tie_window_countdown_seconds",objective:"var"}}," seconds"]
execute if score $tie_window_countdown_seconds var matches ..1 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"1"}," second"]
execute if score $closing_timer global >= $closing_timer.max_tie_window_time global run title @a[x=0,predicate=!custom:team/lobby] actionbar ""
execute if score $closing_timer global >= $closing_timer.max_tie_window_time global run return run function game:set_phase/match.closing.outcome.celebration

##System for ties (works with Double Portal modifier)
execute if entity @s[tag=BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken run return run function game:set_phase/match.play.tie_breaker
execute if entity @s[tag=YellowWon,tag=!BlueWon] if function game:check/yellow_portal_broken run return run function game:set_phase/match.play.tie_breaker
execute if entity @s[tag=YellowWon,tag=BlueWon] run return run function game:set_phase/match.play.tie_breaker
