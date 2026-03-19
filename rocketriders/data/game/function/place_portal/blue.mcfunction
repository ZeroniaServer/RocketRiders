execute if predicate game:portal_type/default run function game:place_portal/default/blue
execute if predicate game:portal_type/small run function game:place_portal/small/blue

execute if predicate game:feature_flags/colored_portal_frames if predicate game:blue_team_skin/blue as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.color set value "#009FFF"
execute if predicate game:feature_flags/colored_portal_frames if predicate game:blue_team_skin/blue as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.extra[].color set value "#009FFF"
execute if predicate game:feature_flags/colored_portal_frames if predicate game:blue_team_skin/any_red_skin as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.color set value "#FF2F1F"
execute if predicate game:feature_flags/colored_portal_frames if predicate game:blue_team_skin/any_red_skin as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.extra[].color set value "#FF2F1F"

