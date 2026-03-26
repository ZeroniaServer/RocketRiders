execute unless entity @s[type=player] run return fail

#Reset
scoreboard players reset @s text.team_name
scoreboard players reset @s text.team_name_lowercase
scoreboard players reset @s text.main_color
scoreboard players reset @s text.accent_color
scoreboard players reset @s text.flag
scoreboard players reset @s text.normal_missile_item_prefix_color

execute unless predicate custom:team/any_arena_team run return 0

#Normal team colors
execute if predicate custom:team/blue run scoreboard players display numberformat @s text.team_name fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name",interpret:true}
execute if predicate custom:team/yellow run scoreboard players display numberformat @s text.team_name fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name",interpret:true}
execute if predicate custom:team/spectator run scoreboard players display numberformat @s text.team_name fixed "Spectator"

execute if predicate custom:team/blue run scoreboard players display numberformat @s text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name_lowercase",interpret:true}
execute if predicate custom:team/yellow run scoreboard players display numberformat @s text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name_lowercase",interpret:true}
execute if predicate custom:team/spectator run scoreboard players display numberformat @s text.team_name_lowercase fixed "spectator"

execute if predicate custom:team/blue run scoreboard players display numberformat @s text.main_color fixed {storage:"rocketriders:teams",nbt:"blue.text.main_color",interpret:true}
execute if predicate custom:team/yellow run scoreboard players display numberformat @s text.main_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.main_color",interpret:true}
execute if predicate custom:team/spectator run scoreboard players display numberformat @s text.main_color fixed {color:"dark_gray",text:""}

execute if predicate custom:team/blue run scoreboard players display numberformat @s text.accent_color fixed {storage:"rocketriders:teams",nbt:"blue.text.accent_color",interpret:true}
execute if predicate custom:team/yellow run scoreboard players display numberformat @s text.accent_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.accent_color",interpret:true}
execute if predicate custom:team/spectator run scoreboard players display numberformat @s text.accent_color fixed {color:"gray",text:""}

execute if predicate custom:team/blue run scoreboard players display numberformat @s text.flag fixed {storage:"rocketriders:teams",nbt:"blue.text.flag",interpret:true}
execute if predicate custom:team/yellow run scoreboard players display numberformat @s text.flag fixed {storage:"rocketriders:teams",nbt:"yellow.text.flag",interpret:true}
execute if predicate custom:team/spectator run scoreboard players display numberformat @s text.flag fixed {color:"gray",text:""}

execute if predicate custom:team/blue run scoreboard players display numberformat @s text.normal_missile_item_prefix_color fixed {storage:"rocketriders:teams",nbt:"blue.text.normal_missile_item_prefix_color",interpret:true}
execute if predicate custom:team/yellow run scoreboard players display numberformat @s text.normal_missile_item_prefix_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.normal_missile_item_prefix_color",interpret:true}
execute if predicate custom:team/spectator run scoreboard players display numberformat @s text.normal_missile_item_prefix_color fixed {color:"gray",text:""}

#Custom team colors
execute if predicate game:match_components/custom_team_colors run return run function custom:update_player_text/self/custom_auto

