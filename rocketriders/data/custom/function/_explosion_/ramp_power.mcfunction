# Determine Team
scoreboard players set $team var -1
execute unless predicate entities:origin_team/none store success score $team var unless predicate entities:origin_team/blue
execute if score $team var matches -1 on origin on origin if entity @s[type=player] unless predicate game:gamemode_components/custom_team_colors store success score $team var if entity @s[team=!Blue]
execute if score $team var matches -1 on origin if entity @s[type=player] unless predicate game:gamemode_components/custom_team_colors store success score $team var if entity @s[team=!Blue]
execute if score $team var matches -1 if entity @s[type=player] unless predicate game:gamemode_components/custom_team_colors store success score $team var if entity @s[team=!Blue]

# Check if power should be ramped (always if Snipe Portals if off, otherwise only near own team's portal)
scoreboard players set $do_explosion_power_ramp var 0
execute unless predicate game:game_rules/snipe_portals/on run scoreboard players set $do_explosion_power_ramp var 1
execute if score $team var matches 0 if predicate custom:on_blue_half run scoreboard players set $do_explosion_power_ramp var 1
execute if score $team var matches 1 if predicate custom:on_yellow_half run scoreboard players set $do_explosion_power_ramp var 1
execute if score $do_explosion_power_ramp var matches 0 run return 0

# Ramp Power
# maximum explosion radius is 1.7333 times explosion power, rounded up
execute if score $explosion_power var matches ..0 run return 0
execute if score $explosion_power var matches 10 if predicate custom:intersects_portal/radius_18 run scoreboard players set $explosion_power var 9
execute if score $explosion_power var matches 9 if predicate custom:intersects_portal/radius_16 run scoreboard players set $explosion_power var 8
execute if score $explosion_power var matches 8 if predicate custom:intersects_portal/radius_14 run scoreboard players set $explosion_power var 7
execute if score $explosion_power var matches 7 if predicate custom:intersects_portal/radius_13 run scoreboard players set $explosion_power var 6
execute if score $explosion_power var matches 6 if predicate custom:intersects_portal/radius_11 run scoreboard players set $explosion_power var 5
execute if score $explosion_power var matches 5 if predicate custom:intersects_portal/radius_9 run scoreboard players set $explosion_power var 4
execute if score $explosion_power var matches 4 if predicate custom:intersects_portal/radius_7 run scoreboard players set $explosion_power var 3
execute if score $explosion_power var matches 3 if predicate custom:intersects_portal/radius_6 run scoreboard players set $explosion_power var 2
execute if score $explosion_power var matches 2 if predicate custom:intersects_portal/radius_4 run scoreboard players set $explosion_power var 1
execute if score $explosion_power var matches 1 if predicate custom:intersects_portal/radius_2 run scoreboard players set $explosion_power var 0
