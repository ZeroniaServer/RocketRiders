## Blue Color Palette
execute unless predicate game:match_components/red_for_blue run data modify storage rocketriders:teams blue.color_palette set value \
{\
    main: "blue",\
    accent: "cyan",\
    light: "light_blue",\
    light_accent: "white",\
    dark: "blue",\
    dark_accent: "black",\
}

execute if predicate game:match_components/red_for_blue run data modify storage rocketriders:teams blue.color_palette set value \
{\
    main: "red",\
    accent: "pink",\
    light: "pink",\
    light_accent: "white",\
    dark: "red",\
    dark_accent: "black",\
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

# back_panes
data modify storage rocketriders:main team_attributes set value {team:"blue",material:"stained_glass_pane"}
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".blue.back
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams blue.block_palette.back_panes set from storage rocketriders:main team_attributes.result


## Yellow Color Palette
execute unless predicate game:match_components/green_for_yellow run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "yellow",\
    accent: "orange",\
    light: "yellow",\
    light_accent: "white",\
    dark: "orange",\
    dark_accent: "black",\
}
execute if predicate game:match_components/green_for_yellow run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "green",\
    accent: "lime",\
    light: "lime",\
    light_accent: "white",\
    dark: "green",\
    dark_accent: "black",\
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

# back_panes
data modify storage rocketriders:main team_attributes set value {team:"yellow",material:"stained_glass_pane"}
data modify storage rocketriders:main team_attributes.color_source set from storage rocketriders:match components."arena/base_colors".yellow.back
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.color_source
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass_pane"
data modify storage rocketriders:teams yellow.block_palette.back_panes set from storage rocketriders:main team_attributes.result
