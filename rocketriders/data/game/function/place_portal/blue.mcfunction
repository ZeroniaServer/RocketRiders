execute if predicate game:portal_type/default run function game:place_portal/default/blue
execute if predicate game:portal_type/small run function game:place_portal/small/blue

execute if predicate game:feature_flags/colored_portal_frames unless predicate game:match_components/dark_red_for_blue as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.color set value "#009FFF"
execute if predicate game:feature_flags/colored_portal_frames unless predicate game:match_components/dark_red_for_blue as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.extra[].color set value "#009FFF"
execute if predicate game:feature_flags/colored_portal_frames if predicate game:match_components/dark_red_for_blue as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.color set value "#FF2F1F"
execute if predicate game:feature_flags/colored_portal_frames if predicate game:match_components/dark_red_for_blue as @e[type=text_display,tag=portal_frame_mask.blue] run data modify entity @s text.extra[].color set value "#FF2F1F"

