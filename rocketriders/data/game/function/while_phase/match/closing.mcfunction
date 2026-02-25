###################################################################
## MATCH OVER: What events occur during the aftermath of a match ##
###################################################################

##Initial timer - pre-tie phase
scoreboard players add $closing_timer global 1
execute if score $closing_timer global matches 2 if predicate game:gamemode_components/short_end_sequence run scoreboard players set $closing_timer global 249

execute if score $closing_timer global matches 1 run tag @s remove gaveFirstItem
execute if score $closing_timer global matches 1 run effect clear @a[x=0,predicate=custom:team/any_playing_team]
execute if entity @s[tag=BlueWon] run effect give @a[x=0,predicate=custom:team/yellow] weakness infinite 100 true
execute if entity @s[tag=YellowWon] run effect give @a[x=0,predicate=custom:team/blue] weakness infinite 100 true
execute if score $closing_timer global matches 1 run scoreboard players reset @a[x=0] LeaveMidgame
execute if score $closing_timer global matches 1 run kill @e[x=0,type=ender_pearl]
execute if score $closing_timer global matches 1..567 unless entity @a[limit=1,x=0,predicate=custom:team/any_arena_team] run scoreboard players set $closing_timer global 568
execute if score $closing_timer global matches 2..3 as @a[x=0,predicate=custom:is_on_fire,predicate=custom:team/any_playing_team] at @s run function game:putoutfire
execute if score $closing_timer global matches 1..2 run effect give @a[x=0,predicate=custom:team/any_playing_team] resistance infinite 100 true
execute if score $closing_timer global matches 1..2 run effect give @a[x=0,predicate=custom:team/any_playing_team] instant_health 1 100 true
execute if score $closing_timer global matches 1..2 unless predicate game:gamemode_components/custom_match_closing_teleport_locations run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if score $closing_timer global matches 1..2 unless predicate game:gamemode_components/custom_match_closing_teleport_locations run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0

##Post-tie phase and reset
execute if score $closing_timer global matches 102 as @a[x=0] run function everytick:score_reset
execute if score $closing_timer global matches 250.. if predicate game:phase/match/closing/outcome/celebration run function game:set_phase/match.closing.outcome.review

# Go back to configuration phase
execute if score $closing_timer global matches 570.. run return run function game:set_phase/staging.configuration
