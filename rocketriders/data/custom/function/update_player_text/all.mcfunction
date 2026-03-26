execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function custom:update_player_text/all
execute unless dimension minecraft:overworld in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function custom:update_player_text/all

## Set players
#Reset
scoreboard players reset @a[x=0] text.team_name
scoreboard players reset @a[x=0] text.team_name_lowercase
scoreboard players reset @a[x=0] text.main_color
scoreboard players reset @a[x=0] text.accent_color
scoreboard players reset @a[x=0] text.flag
scoreboard players reset @a[x=0] text.normal_missile_item_prefix_color

#Normal team colors
scoreboard players display numberformat @a[x=0,predicate=custom:team/blue] text.team_name fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/yellow] text.team_name fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/spectator] text.team_name fixed "Spectator"

scoreboard players display numberformat @a[x=0,predicate=custom:team/blue] text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/yellow] text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/spectator] text.team_name_lowercase fixed "spectator"

scoreboard players display numberformat @a[x=0,predicate=custom:team/blue] text.main_color fixed {storage:"rocketriders:teams",nbt:"blue.text.main_color",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/yellow] text.main_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.main_color",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/spectator] text.main_color fixed {color:"dark_gray",text:""}

scoreboard players display numberformat @a[x=0,predicate=custom:team/blue] text.accent_color fixed {storage:"rocketriders:teams",nbt:"blue.text.accent_color",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/yellow] text.accent_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.accent_color",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/spectator] text.accent_color fixed {color:"gray",text:""}

scoreboard players display numberformat @a[x=0,predicate=custom:team/blue] text.flag fixed {storage:"rocketriders:teams",nbt:"blue.text.flag",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/yellow] text.flag fixed {storage:"rocketriders:teams",nbt:"yellow.text.flag",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/spectator] text.flag fixed {color:"gray",text:""}

scoreboard players display numberformat @a[x=0,predicate=custom:team/blue] text.normal_missile_item_prefix_color fixed {storage:"rocketriders:teams",nbt:"blue.text.normal_missile_item_prefix_color",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/yellow] text.normal_missile_item_prefix_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.normal_missile_item_prefix_color",interpret:true}
scoreboard players display numberformat @a[x=0,predicate=custom:team/spectator] text.normal_missile_item_prefix_color fixed {color:"gray",text:""}

#Custom team colors
execute if predicate game:match_components/custom_team_colors run return run execute as @a[x=0,predicate=custom:team/any_arena_team] run function custom:update_player_text/__custom/auto
