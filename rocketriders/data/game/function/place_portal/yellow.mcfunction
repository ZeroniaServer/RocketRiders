execute if predicate game:portal_type/default run function game:place_portal/default/yellow
execute if predicate game:portal_type/small run function game:place_portal/small/yellow

execute if predicate game:feature_flags/colored_portal_frames/on if predicate game:yellow_team_skin/yellow as @e[type=text_display,tag=portal_frame_mask.yellow] run data modify entity @s text.color set value "#FFAF00"
execute if predicate game:feature_flags/colored_portal_frames/on if predicate game:yellow_team_skin/yellow as @e[type=text_display,tag=portal_frame_mask.yellow] run data modify entity @s text.extra[].color set value "#FFAF00"
execute if predicate game:feature_flags/colored_portal_frames/on if predicate game:yellow_team_skin/green as @e[type=text_display,tag=portal_frame_mask.yellow] run data modify entity @s text.color set value "#00FF00"
execute if predicate game:feature_flags/colored_portal_frames/on if predicate game:yellow_team_skin/green as @e[type=text_display,tag=portal_frame_mask.yellow] run data modify entity @s text.extra[].color set value "#00FF00"
