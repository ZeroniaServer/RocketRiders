## Base Attributes
# Blue
execute unless predicate game:match_components/red_for_blue run data modify storage rocketriders:teams blue set value \
{\
    text: {\
        team_name: "Blue",\
        team_name_lowercase: "blue",\
        main_color: {color:"blue",text:""},\
        accent_color: {color:"dark_aqua",text:""},\
    }\
}
execute if predicate game:match_components/red_for_blue run data modify storage rocketriders:teams blue set value \
{\
    text: {\
        team_name: "Red",\
        team_name_lowercase: "red",\
        main_color: {color:"dark_red",text:""},\
        accent_color: {color:"red",text:""},\
    }\
}

# Yellow
data modify storage rocketriders:teams yellow set value \
{\
    text: {\
        team_name: "Yellow",\
        team_name_lowercase: "yellow",\
        main_color: {color:"gold",text:""},\
        accent_color: {color:"yellow",text:""},\
    }\
}

# Spectatpr
data modify storage rocketriders:teams spectator set value \
{\
    text: {\
        team_name: "Spectator",\
        team_name_lowercase: "spectator",\
        main_color: {color:"dark_gray",text:""},\
        accent_color: {color:"gray",text:""},\
    }\
}


## Resolve Text Scores
scoreboard players display numberformat #blue text.team_name fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name",interpret:true}
scoreboard players display numberformat #blue text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat #blue text.main_color fixed {storage:"rocketriders:teams",nbt:"blue.text.main_color",interpret:true}
scoreboard players display numberformat #blue text.accent_color fixed {storage:"rocketriders:teams",nbt:"blue.text.accent_color",interpret:true}

scoreboard players display numberformat #yellow text.team_name fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name",interpret:true}
scoreboard players display numberformat #yellow text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat #yellow text.main_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.main_color",interpret:true}
scoreboard players display numberformat #yellow text.accent_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.accent_color",interpret:true}

scoreboard players display numberformat #spectator text.team_name fixed {storage:"rocketriders:teams",nbt:"spectator.text.team_name",interpret:true}
scoreboard players display numberformat #spectator text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"spectator.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat #spectator text.main_color fixed {storage:"rocketriders:teams",nbt:"spectator.text.main_color",interpret:true}
scoreboard players display numberformat #spectator text.accent_color fixed {storage:"rocketriders:teams",nbt:"spectator.text.accent_color",interpret:true}

function custom:update_player_text/all


## Resolve Block Palettes
function game:team_attributes/update_block_palette
