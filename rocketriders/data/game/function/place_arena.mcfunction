#Bases
function game:place_arena/bases

# Frame
execute unless predicate game:match_components/arena/bedrock_frame run fill -15 64 67 -15 33 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill -15 33 67 39 33 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill 39 33 67 39 64 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill 39 64 67 -15 64 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill 39 64 -67 -15 64 -67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill -15 64 -67 -15 33 -67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill -15 33 -67 39 33 -67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:match_components/arena/bedrock_frame run fill 39 33 -67 39 64 -67 minecraft:obsidian replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill -15 64 67 -15 33 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill -15 33 67 39 33 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill 39 33 67 39 64 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill 39 64 67 -15 64 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill 39 64 -67 -15 64 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill -15 64 -67 -15 33 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill -15 33 -67 39 33 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill 39 33 -67 39 64 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:match_components/arena/bedrock_frame run fill -15 64 69 39 64 68 bedrock
execute if predicate game:match_components/arena/bedrock_frame run fill -15 64 -69 39 64 -68 bedrock

#Set portals
kill @e[x=0,type=text_display,tag=portal_frame_mask]
execute unless predicate game:match_components/portal_crystal_protection run function game:place_portal/all

#Remove fire
fill 39 64 67 -15 67 67 air replace fire
fill 39 64 67 -15 67 67 air replace fire

##Remove blocks in front of portals (extra precaution)
fill -14 63 67 38 34 73 cave_air
fill -14 63 -67 38 34 -73 cave_air

## Details
function game:place_arena/details
execute if predicate game:arena_details/top/castle run function game:place_arena/castle

## Game-mode-specific features
function #rr:game/place_arena
