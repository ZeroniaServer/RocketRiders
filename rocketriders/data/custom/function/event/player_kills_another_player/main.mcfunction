advancement revoke @s only custom:event/player_kills_another_player

## Statistics
scoreboard players add @s statistics.kills 1

## Achievements
scoreboard players set $can_grant_achievements var 0
execute if predicate game:game_started if predicate rr:has_achievements if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] run scoreboard players set $can_grant_achievements var 1

# Fire Within Me (if I am on fire, award me)
execute if score $can_grant_achievements var matches 1 if predicate custom:is_on_fire run advancement grant @s only achievements:rr_challenges/fire_within_me

# Revenge from the Grave achievement (if I am dead, award me)
execute if score $can_grant_achievements var matches 1 unless predicate custom:alive run advancement grant @s only achievements:rr_challenges/revenge_from_grave

# Under the Sea achievement
execute if score $can_grant_achievements var matches 1 if predicate game:game_started if predicate custom:is_underwater run advancement grant @s only achievements:rr_challenges/under_the_sea
execute if score $can_grant_achievements var matches 1 if predicate custom:is_swimming run advancement grant @s only achievements:rr_challenges/under_the_sea
