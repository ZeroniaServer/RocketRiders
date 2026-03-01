## Statistics
execute if predicate game:phase/match/play run scoreboard players add @s match_statistic.kills 1

## Achievements
# Fire Within Me (if I am on fire, award me)
execute if predicate game:achievements_can_be_awarded if function custom:player_is_burning run advancement grant @s only achievements:rr_challenges/fire_within_me

# Revenge from the Grave achievement (if I am dead, award me)
execute if predicate game:achievements_can_be_awarded unless predicate custom:alive run advancement grant @s only achievements:rr_challenges/revenge_from_grave

# Under the Sea achievement
execute if predicate game:achievements_can_be_awarded anchored eyes positioned ^ ^ ^ if predicate custom:in_water_fluid run advancement grant @s only achievements:rr_challenges/under_the_sea
execute if predicate game:achievements_can_be_awarded if predicate custom:is_swimming run advancement grant @s only achievements:rr_challenges/under_the_sea

# Soul Collector
execute if predicate game:achievements_can_be_awarded run function achievements:soulcollector
