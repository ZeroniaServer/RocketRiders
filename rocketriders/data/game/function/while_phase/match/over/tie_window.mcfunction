execute if predicate game:game_rules/disable_tying/on run return run function game:set_phase/match.over.outcome

##Tie actionbar notifications
execute if score $match_over_timer global matches 1..20 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"5"}," seconds"]
execute if score $match_over_timer global matches 21..40 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"4"}," seconds"]
execute if score $match_over_timer global matches 41..60 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"3"}," seconds"]
execute if score $match_over_timer global matches 61..80 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"2"}," seconds"]
execute if score $match_over_timer global matches 81..100 run title @a[x=0,predicate=!custom:team/lobby] actionbar [{color:"red",text:"Waiting for potential tie... "},{bold:true,color:"dark_red",text:"1"}," second"]
execute if score $match_over_timer global matches 101 run title @a[x=0,predicate=!custom:team/lobby] actionbar ""
execute if score $match_over_timer global matches 101 run return run function game:set_phase/match.over.outcome

##System for ties (works with Double Portal modifier)
execute if entity @s[tag=BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken run return run function game:set_phase/match.play.tie_breaker
execute if entity @s[tag=YellowWon,tag=!BlueWon] if function game:check/yellow_portal_broken run return run function game:set_phase/match.play.tie_breaker
execute if entity @s[tag=YellowWon,tag=BlueWon] run return run function game:set_phase/match.play.tie_breaker
