# Determine Team
scoreboard players set $team var -1
execute unless predicate entities:origin_team/none store success score $team var unless predicate entities:origin_team/blue
execute if score $team var matches -1 on origin on origin if entity @s[type=player] unless predicate game:match_components/custom_team_colors store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 on origin if entity @s[type=player] unless predicate game:match_components/custom_team_colors store success score $team var unless predicate custom:team/blue
execute if score $team var matches -1 if entity @s[type=player] unless predicate game:match_components/custom_team_colors store success score $team var unless predicate custom:team/blue

# Check if power should be ramped (always if Snipe Portals if off, otherwise only near own team's portal)
scoreboard players set $do_explosion_power_ramp var 0
execute unless predicate game:game_rules/snipe_portals/on run scoreboard players set $do_explosion_power_ramp var 1
execute if score $team var matches 0 if predicate custom:in_blue_half run scoreboard players set $do_explosion_power_ramp var 1
execute if score $team var matches 1 if predicate custom:in_yellow_half run scoreboard players set $do_explosion_power_ramp var 1
execute if score $do_explosion_power_ramp var matches 0 run return 0

# Ramp Power
function custom:__impl__/explosion/ramp_power
