## Base Attributes
# Blue
execute if predicate game:blue_team_skin/blue run data modify storage rocketriders:teams blue set value \
{\
    text: {\
        team_name: "Blue",\
        team_name_lowercase: "blue",\
        main_color: {color:"blue",text:""},\
        accent_color: {color:"dark_aqua",text:""},\
        flag_color: {color:"dark_aqua",text:""},\
    },\
    player_name_color: "blue",\
    team_banner: {\
        base_color: "blue",\
        accent_color: "light_blue",\
        patterns: []\
    },\
}
execute if predicate game:blue_team_skin/dark_red run data modify storage rocketriders:teams blue set value \
{\
    text: {\
        team_name: "Red",\
        team_name_lowercase: "red",\
        main_color: {color:"dark_red",text:""},\
        accent_color: {color:"red",text:""},\
        flag_color: {color:"dark_red",text:""},\
    },\
    player_name_color: "dark_red",\
    team_banner: {\
        base_color: "red",\
        accent_color: "pink",\
        patterns: []\
    },\
}
execute if predicate game:blue_team_skin/classic_red run data modify storage rocketriders:teams blue set value \
{\
    text: {\
        team_name: "Red",\
        team_name_lowercase: "red",\
        main_color: {color:"red",text:""},\
        accent_color: {color:"#F4A9B8",text:""},\
        flag_color: {color:"red",text:""},\
    },\
    player_name_color: "red",\
    team_banner: {\
        base_color: "red",\
        accent_color: "pink",\
        patterns: []\
    },\
}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:teams blue.team_banner.patterns append value {color:"ACCENT_COLOR",pattern:"minecraft:flow"}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:teams blue.team_banner.patterns append value {color:"ACCENT_COLOR",pattern:"minecraft:border"}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:teams blue.team_banner.patterns[{color:"ACCENT_COLOR"}].color set from storage rocketriders:teams blue.team_banner.accent_color

# Yellow
execute if predicate game:yellow_team_skin/yellow run data modify storage rocketriders:teams yellow set value \
{\
    text: {\
        team_name: "Yellow",\
        team_name_lowercase: "yellow",\
        main_color: {color:"gold",text:""},\
        accent_color: {color:"yellow",text:""},\
        flag_color: {color:"yellow",text:""},\
    },\
    player_name_color: "gold",\
    team_banner: {\
        base_color: "yellow",\
        accent_color: "orange",\
        patterns: []\
    },\
}
execute if predicate game:yellow_team_skin/green run data modify storage rocketriders:teams yellow set value \
{\
    text: {\
        team_name: "Green",\
        team_name_lowercase: "green",\
        main_color: {color:"green",text:""},\
        accent_color: {color:"#DAFFB2",text:""},\
        flag_color: {color:"green",text:""},\
        normal_missile_item_prefix_color: {color:"#55C300",text:""},\
    },\
    player_name_color: "green",\
    team_banner: {\
        base_color: "lime",\
        accent_color: "green",\
        patterns: []\
    },\
}
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:teams yellow.team_banner set value \
{\
    base_color: "white",\
    accent_color: "black",\
    patterns: [{color:"black",pattern:"half_vertical_right"},{color:"black",pattern:"square_top_left"},{color:"black",pattern:"square_bottom_left"},{color:"white",pattern:"square_top_right"},{color:"white",pattern:"square_bottom_right"}]\
}
execute if predicate game:match_components/crusade_banners unless predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:teams yellow.team_banner.patterns append value {color:"ACCENT_COLOR",pattern:"minecraft:flower"}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:teams yellow.team_banner.patterns append value {color:"ACCENT_COLOR",pattern:"minecraft:border"}
execute if predicate game:match_components/crusade_banners run data modify storage rocketriders:teams yellow.team_banner.patterns[{color:"ACCENT_COLOR"}].color set from storage rocketriders:teams yellow.team_banner.accent_color

# Spectator
data modify storage rocketriders:teams spectator set value \
{\
    text: {\
        team_name: "Spectator",\
        team_name_lowercase: "spectator",\
        main_color: {color:"dark_gray",text:""},\
        accent_color: {color:"gray",text:""},\
    }\
}


## Update team player name colors
function game:team_attributes/__player_name_color/blue with storage rocketriders:teams blue
function game:team_attributes/__player_name_color/yellow with storage rocketriders:teams yellow


## Resolve Text Scores
scoreboard players display numberformat #blue text.team_name fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name",interpret:true}
scoreboard players display numberformat #blue text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"blue.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat #blue text.main_color fixed {storage:"rocketriders:teams",nbt:"blue.text.main_color",interpret:true}
scoreboard players display numberformat #blue text.accent_color fixed {storage:"rocketriders:teams",nbt:"blue.text.accent_color",interpret:true}
scoreboard players display numberformat #blue text.flag_color fixed {storage:"rocketriders:teams",nbt:"blue.text.flag_color",interpret:true}

scoreboard players display numberformat #yellow text.team_name fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name",interpret:true}
scoreboard players display numberformat #yellow text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"yellow.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat #yellow text.main_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.main_color",interpret:true}
scoreboard players display numberformat #yellow text.accent_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.accent_color",interpret:true}
scoreboard players display numberformat #yellow text.flag_color fixed {storage:"rocketriders:teams",nbt:"yellow.text.flag_color",interpret:true}

scoreboard players display numberformat #spectator text.team_name fixed {storage:"rocketriders:teams",nbt:"spectator.text.team_name",interpret:true}
scoreboard players display numberformat #spectator text.team_name_lowercase fixed {storage:"rocketriders:teams",nbt:"spectator.text.team_name_lowercase",interpret:true}
scoreboard players display numberformat #spectator text.main_color fixed {storage:"rocketriders:teams",nbt:"spectator.text.main_color",interpret:true}
scoreboard players display numberformat #spectator text.accent_color fixed {storage:"rocketriders:teams",nbt:"spectator.text.accent_color",interpret:true}
scoreboard players display numberformat #spectator text.flag_color fixed {storage:"rocketriders:teams",nbt:"spectator.text.flag_color",interpret:true}

function custom:update_player_text/all


## Resolve Block Palettes
function game:team_attributes/update_block_palette
