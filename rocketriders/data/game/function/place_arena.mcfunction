#Bases
function game:place_arena/bases
function game:place_base_frames

#Set portals
kill @e[x=0,type=text_display,tag=portal_frame_mask]
execute unless predicate game:match_components/has_nexuses run function game:place_portal/all

##Remove blocks in front of portals (extra precaution)
fill -14 63 67 38 34 73 cave_air
fill -14 63 -67 38 34 -73 cave_air

## Details
function game:place_arena/details
execute if predicate game:arena_details/top/castle run function game:place_arena/castle

## Flags
execute if predicate game:match_components/has_flags run function game:place_arena/ctf_flags/set_positions
execute if predicate game:match_components/has_flags if predicate game:regenerate_back_layer/blue as @e[x=0,type=marker,tag=ctf_flag.blue] positioned as @s run function game:place_arena/ctf_flags/place_support_blocks with storage rocketriders:teams blue.block_palette
execute if predicate game:match_components/has_flags if predicate game:regenerate_back_layer/yellow as @e[x=0,type=marker,tag=ctf_flag.yellow] positioned as @s run function game:place_arena/ctf_flags/place_support_blocks with storage rocketriders:teams yellow.block_palette

## Game-mode-specific features
function #rr:game/place_arena
