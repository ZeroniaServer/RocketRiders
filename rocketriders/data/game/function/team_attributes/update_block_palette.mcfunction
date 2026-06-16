## Blue Color Palette
execute if predicate game:blue_team_skin/blue run data modify storage rocketriders:teams blue.color_palette set value \
{\
    main: "blue",\
    accent: "cyan",\
    light: "light_blue",\
    dark: "blue",\
    feature: "blue",\
    shield_center: "cyan",\
    shield_accent: "blue",\
}

execute if predicate game:blue_team_skin/any_red_skin run data modify storage rocketriders:teams blue.color_palette set value \
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

# front_glazed_terracotta
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"glazed_terracotta"}
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.front
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_glazed_terracotta"
data modify storage rocketriders:teams blue.block_palette.front_glazed_terracotta set from storage rocketriders:main team_attributes.result

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

# team_banner_standing
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"banner"}
data modify storage rocketriders:main team_attributes.color set from storage rocketriders:teams blue.team_banner.base_color
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_banner"
data modify storage rocketriders:teams blue.block_palette.team_banner_standing set from storage rocketriders:main team_attributes.result

# team_banner_wall
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"wall_banner"}
data modify storage rocketriders:main team_attributes.color set from storage rocketriders:teams blue.team_banner.base_color
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_wall_banner"
data modify storage rocketriders:teams blue.block_palette.team_banner_wall set from storage rocketriders:main team_attributes.result

# team_banner_patterns
data modify storage rocketriders:teams blue.block_palette.team_banner_patterns set value []
data modify storage rocketriders:teams blue.block_palette.team_banner_patterns set from storage rocketriders:teams blue.team_banner.patterns

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
execute if predicate game:yellow_team_skin/yellow run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "yellow",\
    accent: "orange",\
    light: "yellow",\
    dark: "orange",\
    feature: "yellow",\
    shield_center: "yellow",\
    shield_accent: "orange",\
}
execute if predicate game:yellow_team_skin/green run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "green",\
    accent: "lime",\
    light: "lime",\
    dark: "green",\
    feature: "lime",\
    shield_center: "lime",\
    shield_accent: "green",\
}
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "gray",\
    accent: "light_gray",\
    light: "light_gray",\
    dark: "gray",\
    feature: "white",\
    shield_center: "white",\
    shield_accent: "black",\
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

# front_glazed_terracotta
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"glazed_terracotta"}
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.front
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_glazed_terracotta"
data modify storage rocketriders:teams yellow.block_palette.front_glazed_terracotta set from storage rocketriders:main team_attributes.result

# front_checkered_black
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass",color:"black"}
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".yellow.front
execute if predicate game:match_components/checkered_yellow_base run function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute if predicate game:match_components/checkered_yellow_base run execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute if predicate game:match_components/checkered_yellow_base run execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "black_stained_glass"
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:teams yellow.block_palette.front_checkered_black set from storage rocketriders:main team_attributes.result

# front_checkered_white
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass",color:"white"}
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:main team_attributes.material set from storage rocketriders:match components."arena/base_materials".yellow.front
execute if predicate game:match_components/checkered_yellow_base run function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute if predicate game:match_components/checkered_yellow_base run execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute if predicate game:match_components/checkered_yellow_base run execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
execute if predicate game:match_components/checkered_yellow_base run data modify storage rocketriders:teams yellow.block_palette.front_checkered_white set from storage rocketriders:main team_attributes.result

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

# team_banner_standing
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"banner"}
data modify storage rocketriders:main team_attributes.color set from storage rocketriders:teams yellow.team_banner.base_color
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_banner"
data modify storage rocketriders:teams yellow.block_palette.team_banner_standing set from storage rocketriders:main team_attributes.result

# team_banner_wall
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"wall_banner"}
data modify storage rocketriders:main team_attributes.color set from storage rocketriders:teams yellow.team_banner.base_color
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_wall_banner"
data modify storage rocketriders:teams yellow.block_palette.team_banner_wall set from storage rocketriders:main team_attributes.result

# team_banner_patterns
data modify storage rocketriders:teams yellow.block_palette.team_banner_patterns set value []
data modify storage rocketriders:teams yellow.block_palette.team_banner_patterns set from storage rocketriders:teams yellow.team_banner.patterns

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
