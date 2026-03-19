## Blue Color Palette
execute unless predicate game:match_components/dark_red_for_blue run data modify storage rocketriders:teams blue.color_palette set value \
{\
    main: "blue",\
    accent: "cyan",\
    light: "light_blue",\
    dark: "blue",\
    feature: "blue",\
    shield_center: "cyan",\
    shield_accent: "blue",\
}

execute if predicate game:match_components/dark_red_for_blue run data modify storage rocketriders:teams blue.color_palette set value \
{\
    main: "red",\
    accent: "pink",\
    light: "pink",\
    dark: "red",\
    feature: "red",\
    shield_center: "pink",\
    shield_accent: "red",\
}

## Blue Block Palette
# front
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".blue.front
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.front
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "gray_stained_glass"
data modify storage rocketriders:teams blue.block_palette.front set from storage rocketriders:main team_attributes.result

# middle
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".blue.middle
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.middle
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "light_gray_stained_glass"
data modify storage rocketriders:teams blue.block_palette.middle set from storage rocketriders:main team_attributes.result

# back
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".blue.back
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.back
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.block_palette.back set from storage rocketriders:main team_attributes.result

# detail
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".blue.detail
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.detail
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "black_stained_glass"
data modify storage rocketriders:teams blue.block_palette.detail set from storage rocketriders:main team_attributes.result

# back_stained_glass_pane
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass_pane"}
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.back
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams blue.block_palette.back_stained_glass_pane set from storage rocketriders:main team_attributes.result

# flag
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"wool",color_source:"feature"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_wool"
data modify storage rocketriders:teams blue.block_palette.flag set from storage rocketriders:main team_attributes.result

# flag_banner
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"banner",color_source:"feature"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_banner"
data modify storage rocketriders:teams blue.block_palette.flag_banner set from storage rocketriders:main team_attributes.result

# flag_wall_banner
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"wall_banner",color_source:"feature"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_wall_banner"
data modify storage rocketriders:teams blue.block_palette.flag_wall_banner set from storage rocketriders:main team_attributes.result

# shield_center_stained_glass
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass",color_source:"shield_center"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams blue.block_palette.shield_center_stained_glass set from storage rocketriders:main team_attributes.result

# shield_accent_stained_glass
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass",color_source:"shield_accent"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams blue.block_palette.shield_accent_stained_glass set from storage rocketriders:main team_attributes.result


## Yellow Color Palette
execute unless predicate game:match_components/green_for_yellow run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "yellow",\
    accent: "orange",\
    light: "yellow",\
    dark: "orange",\
    feature: "yellow",\
    shield_center: "yellow",\
    shield_accent: "orange",\
}
execute if predicate game:match_components/green_for_yellow run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "green",\
    accent: "lime",\
    light: "lime",\
    dark: "green",\
    feature: "lime",\
    shield_center: "lime",\
    shield_accent: "green",\
}

## Yellow Block Palette
# front
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".yellow.front
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.front
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "gray_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.front set from storage rocketriders:main team_attributes.result

# middle
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".yellow.middle
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.middle
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "light_gray_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.middle set from storage rocketriders:main team_attributes.result

# back
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".yellow.back
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.back
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.back set from storage rocketriders:main team_attributes.result

# detail
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass"}
data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".yellow.detail
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.detail
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "black_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.detail set from storage rocketriders:main team_attributes.result

# back_stained_glass_pane
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass_pane"}
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.back
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams yellow.block_palette.back_stained_glass_pane set from storage rocketriders:main team_attributes.result

# flag
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"wool",color_source:"feature"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_wool"
data modify storage rocketriders:teams yellow.block_palette.flag set from storage rocketriders:main team_attributes.result

# flag_banner
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"banner",color_source:"feature"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_banner"
data modify storage rocketriders:teams yellow.block_palette.flag_banner set from storage rocketriders:main team_attributes.result

# flag_wall_banner
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"wall_banner",color_source:"feature"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_wall_banner"
data modify storage rocketriders:teams yellow.block_palette.flag_wall_banner set from storage rocketriders:main team_attributes.result

# shield_center_stained_glass
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass",color_source:"shield_center"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams yellow.block_palette.shield_center_stained_glass set from storage rocketriders:main team_attributes.result

# shield_accent_stained_glass
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass",color_source:"shield_accent"}
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams yellow.block_palette.shield_accent_stained_glass set from storage rocketriders:main team_attributes.result
