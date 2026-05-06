execute unless predicate game:game_rules/tie_window_length/non_zero run return run function game:set_phase/match.closing.outcome.celebration

##Tie actionbar notifications
scoreboard players operation $tie_window_countdown_seconds var = $closing_sequence.max_tie_window_time match
scoreboard players operation $tie_window_countdown_seconds var -= $closing_sequence.time match
scoreboard players add $tie_window_countdown_seconds var 19
scoreboard players operation $tie_window_countdown_seconds var /= $20 constant
execute if score $tie_window_countdown_seconds var matches 2.. run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",score:{name:"$tie_window_countdown_seconds",objective:"var"}}," seconds"]
execute if score $tie_window_countdown_seconds var matches ..1 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"1"}," second"]
execute if score $closing_sequence.time match >= $closing_sequence.max_tie_window_time match run title @a[x=0,predicate=!custom:team/lobby] actionbar ""
execute if score $closing_sequence.time match >= $closing_sequence.max_tie_window_time match run return run function game:set_phase/match.closing.outcome.celebration

##System for ties (works with Double Portal modifier)
execute if predicate game:outcome/blue_won_only unless predicate game:outcome/yellow_won_only if function game:check/blue_portal_broken run return run function game:set_phase/match.play.tie_breaker
execute if predicate game:outcome/yellow_won_only unless predicate game:outcome/blue_won_only if function game:check/yellow_portal_broken run return run function game:set_phase/match.play.tie_breaker
execute if predicate game:outcome/blue_won_only if predicate game:outcome/yellow_won_only run return run function game:set_phase/match.play.tie_breaker
