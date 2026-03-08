## Block Color Palette
# Blue
execute unless predicate game:match_components/red_for_blue run data modify storage rocketriders:teams blue.block_color_palette set value \
{\
    main: "blue",\
    accent: "cyan",\
    light: "light_blue",\
    light_accent: "white",\
    dark: "blue",\
    dark_accent: "black",\
}
execute if predicate game:match_components/red_for_blue run data modify storage rocketriders:teams blue.block_color_palette set value \
{\
    main: "red",\
    accent: "pink",\
    light: "pink",\
    light_accent: "white",\
    dark: "red",\
    dark_accent: "black",\
}

# Yellow
data modify storage rocketriders:teams yellow.block_color_palette set value \
{\
    main: "yellow",\
    accent: "orange",\
    light: "yellow",\
    light_accent: "white",\
    dark: "yellow",\
    dark_accent: "orange",\
}

## Arena Base Blocks
# blue
data modify storage rocketriders:main team_attributes set value {arena_base_blocks_front:{material:"stained_glass",color:"white"},arena_base_blocks_middle:{material:"stained_glass",color:"white"},arena_base_blocks_back:{material:"stained_glass",color:"white"}}
data modify storage rocketriders:main team_attributes.arena_base_blocks_front.material set from storage rocketriders:match components."arena/base_materials".blue.front
data modify storage rocketriders:main team_attributes.arena_base_blocks_front.color_source set from storage rocketriders:match components."arena/base_colors".blue.front
data modify storage rocketriders:main team_attributes.arena_base_blocks_middle.material set from storage rocketriders:match components."arena/base_materials".blue.middle
data modify storage rocketriders:main team_attributes.arena_base_blocks_middle.color_source set from storage rocketriders:match components."arena/base_colors".blue.middle
data modify storage rocketriders:main team_attributes.arena_base_blocks_back.material set from storage rocketriders:match components."arena/base_materials".blue.back
data modify storage rocketriders:main team_attributes.arena_base_blocks_back.color_source set from storage rocketriders:match components."arena/base_colors".blue.back

data modify storage rocketriders:main team_attributes.block_color_palette set from storage rocketriders:teams blue.block_color_palette

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.arena_base_blocks_front.color_source
data modify storage rocketriders:main team_attributes.arena_base_blocks_front.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.arena_base_blocks.front set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.arena_base_blocks_middle.color_source
data modify storage rocketriders:main team_attributes.arena_base_blocks_middle.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.arena_base_blocks.middle set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.arena_base_blocks_back.color_source
data modify storage rocketriders:main team_attributes.arena_base_blocks_back.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams blue.arena_base_blocks.back set from storage rocketriders:main team_attributes.result

# yellow
data modify storage rocketriders:main team_attributes set value {arena_base_blocks_front:{material:"stained_glass",color:"white"},arena_base_blocks_middle:{material:"stained_glass",color:"white"},arena_base_blocks_back:{material:"stained_glass",color:"white"}}
data modify storage rocketriders:main team_attributes.arena_base_blocks_front.material set from storage rocketriders:match components."arena/base_materials".yellow.front
data modify storage rocketriders:main team_attributes.arena_base_blocks_front.color_source set from storage rocketriders:match components."arena/base_colors".yellow.front
data modify storage rocketriders:main team_attributes.arena_base_blocks_middle.material set from storage rocketriders:match components."arena/base_materials".yellow.middle
data modify storage rocketriders:main team_attributes.arena_base_blocks_middle.color_source set from storage rocketriders:match components."arena/base_colors".yellow.middle
data modify storage rocketriders:main team_attributes.arena_base_blocks_back.material set from storage rocketriders:match components."arena/base_materials".yellow.back
data modify storage rocketriders:main team_attributes.arena_base_blocks_back.color_source set from storage rocketriders:match components."arena/base_colors".yellow.back

data modify storage rocketriders:main team_attributes.block_color_palette set from storage rocketriders:teams yellow.block_color_palette

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.arena_base_blocks_front.color_source
data modify storage rocketriders:main team_attributes.arena_base_blocks_front.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.arena_base_blocks_front
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.arena_base_blocks.front set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.arena_base_blocks_middle.color_source
data modify storage rocketriders:main team_attributes.arena_base_blocks_middle.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.arena_base_blocks_middle
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.arena_base_blocks.middle set from storage rocketriders:main team_attributes.result

data remove storage rocketriders:main team_attributes.color
function game:team_attributes/__resolve_block_palettes/get_color_from_team_palette with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.color run data modify storage rocketriders:main team_attributes.color set from storage rocketriders:main team_attributes.arena_base_blocks_back.color_source
data modify storage rocketriders:main team_attributes.arena_base_blocks_back.color set from storage rocketriders:main team_attributes.color
data remove storage rocketriders:main team_attributes.result
function game:team_attributes/__resolve_block_palettes/try_combine_with_color with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_combine_with_color_source with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.result run function game:team_attributes/__resolve_block_palettes/try_material with storage rocketriders:main team_attributes.arena_base_blocks_back
execute unless data storage rocketriders:main team_attributes.result run data modify storage rocketriders:main team_attributes.result set value "white_stained_glass"
data modify storage rocketriders:teams yellow.arena_base_blocks.back set from storage rocketriders:main team_attributes.result
