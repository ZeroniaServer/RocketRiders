###################################################################
## MATCH OVER: What events occur during the aftermath of a match ##
###################################################################

# If everyone leaves, instantly end the round
execute unless entity @a[limit=1,x=0,predicate=custom:team/any_arena_team] run return run function game:set_phase/staging.configuration

# Timer
execute unless score $closing_sequence.time match_data matches 2147483647 run scoreboard players add $closing_sequence.time match_data 1
execute if score $closing_sequence.time match_data matches 2..3 as @a[x=0,predicate=custom:entity/is_on_fire,predicate=custom:team/any_playing_team] at @s run function game:putoutfire

# Prevent block interactions
execute as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:block_interaction_range modifier add rocketriders:closing_phase -1 add_multiplied_total
execute as @a[x=0,predicate=!custom:team/any_playing_team] run attribute @s minecraft:block_interaction_range modifier remove rocketriders:closing_phase

# -> Review phase
execute if score $closing_sequence.time match_data >= $closing_sequence.max_time_before_review match_data if predicate game:phase/match/closing/outcome/celebration run function game:set_phase/match.closing.outcome.review

# -> Configuration phase
scoreboard players operation $max_closing_time var = $closing_sequence.max_review_time match_data
scoreboard players operation $max_closing_time var += $closing_sequence.max_time_before_review match_data
execute if score $closing_sequence.time match_data >= $max_closing_time var run return run function game:set_phase/staging.configuration
