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
data modify storage rocketriders:main team_attributes set value {block_palette_front:{material:"stained_glass",color:"white"},block_palette_middle:{material:"stained_glass",color:"white"},block_palette_back:{material:"stained_glass",color:"white"},block_palette_detail:{material:"stained_glass",color:"black"}}
data modify storage rocketriders:main team_attributes.block_palette_front.material set from storage rocketriders:match components."arena/base_materials".blue.front
data modify storage rocketriders:main team_attributes.block_palette_front.color_source set from storage rocketriders:match components."arena/base_colors".blue.front
data modify storage rocketriders:main team_attributes.block_palette_middle.material set from storage rocketriders:match components."arena/base_materials".blue.middle
data modify storage rocketriders:main team_attributes.block_palette_middle.color_source set from storage rocketriders:match components."arena/base_colors".blue.middle
data modify storage rocketriders:main team_attributes.block_palette_back.material set from storage rocketriders:match components."arena/base_materials".blue.back
data modify storage rocketriders:main team_attributes.block_palette_back.color_source set from storage rocketriders:match components."arena/base_colors".blue.back
data modify storage rocketriders:main team_attributes.block_palette_detail.material set from storage rocketriders:match components."arena/base_materials".blue.detail
data modify storage rocketriders:main team_attributes.block_palette_detail.color_source set from storage rocketriders:match components."arena/base_colors".blue.detail

data modify storage rocketriders:main team_attributes.color_palette set from storage rocketriders:teams blue.color_palette

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_front.color_source
data modify storage rocketriders:main team_attributes.block_palette_front.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.block_palette.front set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_middle.color_source
data modify storage rocketriders:main team_attributes.block_palette_middle.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.block_palette.middle set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_back.color_source
data modify storage rocketriders:main team_attributes.block_palette_back.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.block_palette.back set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_detail.color_source
data modify storage rocketriders:main team_attributes.block_palette_detail.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "black_stained_glass"
data modify storage rocketriders:teams blue.block_palette.detail set from storage rocketriders:main team_attributes.result



## Yellow Color Palette
execute unless predicate game:match_components/green_for_yellow run data modify storage rocketriders:teams yellow.color_palette set value \
{\
    main: "yellow",\
    accent: "orange",\
    light: "yellow",\
    light_accent: "white",\
    dark: "yellow",\
    dark_accent: "orange",\
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
data modify storage rocketriders:main team_attributes set value {block_palette_front:{material:"stained_glass",color:"white"},block_palette_middle:{material:"stained_glass",color:"white"},block_palette_back:{material:"stained_glass",color:"white"},block_palette_detail:{material:"stained_glass",color:"black"}}
data modify storage rocketriders:main team_attributes.block_palette_front.material set from storage rocketriders:match components."arena/base_materials".yellow.front
data modify storage rocketriders:main team_attributes.block_palette_front.color_source set from storage rocketriders:match components."arena/base_colors".yellow.front
data modify storage rocketriders:main team_attributes.block_palette_middle.material set from storage rocketriders:match components."arena/base_materials".yellow.middle
data modify storage rocketriders:main team_attributes.block_palette_middle.color_source set from storage rocketriders:match components."arena/base_colors".yellow.middle
data modify storage rocketriders:main team_attributes.block_palette_back.material set from storage rocketriders:match components."arena/base_materials".yellow.back
data modify storage rocketriders:main team_attributes.block_palette_back.color_source set from storage rocketriders:match components."arena/base_colors".yellow.back
data modify storage rocketriders:main team_attributes.block_palette_detail.material set from storage rocketriders:match components."arena/base_materials".yellow.detail
data modify storage rocketriders:main team_attributes.block_palette_detail.color_source set from storage rocketriders:match components."arena/base_colors".yellow.detail

data modify storage rocketriders:main team_attributes.color_palette set from storage rocketriders:teams yellow.color_palette

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_front.color_source
data modify storage rocketriders:main team_attributes.block_palette_front.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_front
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.front set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_middle.color_source
data modify storage rocketriders:main team_attributes.block_palette_middle.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_middle
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.middle set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_back.color_source
data modify storage rocketriders:main team_attributes.block_palette_back.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_back
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.back set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.block_palette_detail.color_source
data modify storage rocketriders:main team_attributes.block_palette_detail.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.block_palette_detail
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.block_palette.detail set from storage rocketriders:main team_attributes.result
