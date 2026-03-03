execute unless entity @s[type=armor_stand,tag=Selection,predicate=custom:indimension] in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function custom:update_player_text/all
execute unless dimension minecraft:overworld in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run return run function custom:update_player_text/all

##Set global storage
execute unless predicate game:gamemode_components/red_for_blue run data modify storage rocketriders:teams blue set value {text:{team_name:"Blue",team_name_lowercase:"blue",main_color:{color:"blue",text:""},accent_color:{color:"dark_aqua",text:""}}}
execute if predicate game:gamemode_components/red_for_blue run data modify storage rocketriders:teams blue set value {text:{team_name:"Red",team_name_lowercase:"red",main_color:{color:"dark_red",text:""},accent_color:{color:"red",text:""}}}
data modify storage rocketriders:teams yellow set value {text:{team_name:"Yellow",team_name_lowercase:"yellow",main_color:{color:"gold",text:""},accent_color:{color:"yellow",text:""}}}

## Set players
#Reset
scoreboard players reset @a[x=0] text.team_name
scoreboard players reset @a[x=0] text.team_name_lowercase
scoreboard players reset @a[x=0] text.main_color
scoreboard players reset @a[x=0] text.accent_color

#Custom team colors
execute if predicate game:gamemode_components/custom_team_colors run return run execute as @a[x=0,predicate=custom:team/any_arena_team] run function custom:update_player_text/self/custom_auto

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
