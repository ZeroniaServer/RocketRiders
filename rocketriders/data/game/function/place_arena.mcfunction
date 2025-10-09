#Clear some more decorations
fill -14 64 -66 38 80 -52 air strict
fill 11 74 -51 13 74 -48 air strict
fill 38 48 -51 -14 65 -29 air strict
fill -14 33 -51 38 48 -31 air strict

fill 38 64 52 -14 80 66 air strict
fill 11 74 48 13 74 51 air strict
fill -14 48 51 38 65 29 air strict
fill 38 33 51 -14 47 29 air strict

#Clear crystal crafters
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] captureBlue
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] captureYellow
scoreboard players reset @e[x=0,type=marker,tag=captureMiddle] capturePoint
fill 13 63 67 10 66 71 air
fill 13 63 -67 10 66 -71 air
fill 14 63 67 10 66 71 air
fill -14 63 67 10 66 -71 air

#Set Yellow Base
fill -14 34 52 38 63 56 minecraft:yellow_stained_glass replace #custom:basereplace
fill 38 63 57 -14 34 61 minecraft:orange_stained_glass replace #custom:basereplace
fill -14 34 66 38 63 62 white_stained_glass replace #custom:basereplace

# Frame
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 67 -15 33 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 67 39 33 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill 39 33 67 39 64 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill 39 64 67 -15 64 67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill 39 64 -67 -15 64 -67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 -67 -15 33 -67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 -67 39 33 -67 minecraft:obsidian replace #custom:basereplace
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill 39 33 -67 39 64 -67 minecraft:obsidian replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 67 -15 33 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 67 39 33 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill 39 33 67 39 64 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill 39 64 67 -15 64 67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill 39 64 -67 -15 64 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 -67 -15 33 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 -67 39 33 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill 39 33 -67 39 64 -67 minecraft:bedrock replace #custom:basereplace
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 69 39 64 68 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 -69 39 64 -68 bedrock


#Set Blue Base
execute unless predicate game:gamemode_components/red_for_blue run fill -14 34 -52 38 63 -56 blue_stained_glass replace #custom:basereplace
execute if predicate game:gamemode_components/red_for_blue run fill -14 34 -52 38 63 -56 red_stained_glass replace #custom:basereplace
execute unless predicate game:gamemode_components/red_for_blue run fill 38 63 -61 -14 34 -57 minecraft:cyan_stained_glass replace #custom:basereplace
execute if predicate game:gamemode_components/red_for_blue run fill 38 63 -61 -14 34 -57 minecraft:pink_stained_glass replace #custom:basereplace
fill -14 34 -62 38 63 -66 minecraft:white_stained_glass replace #custom:basereplace

#Set portals
kill @e[x=0,type=text_display,tag=portal_frame_mask]
execute unless predicate game:gamemode_components/portal_crystal_protection run function game:place_portal/all

#Remove fire
fill 39 64 67 -15 67 67 air replace fire
fill 39 64 67 -15 67 67 air replace fire

##Modifiers
#Hardcore
execute if predicate game:modifiers/hardcore/on run fill 38 63 63 -14 34 52 air
execute if predicate game:modifiers/hardcore/on run fill -14 63 66 38 34 66 white_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -14 63 65 38 34 65 orange_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -14 63 64 38 34 64 yellow_stained_glass
execute if predicate game:modifiers/hardcore/on run fill 38 63 -63 -14 34 -52 air
execute if predicate game:modifiers/hardcore/on run fill -14 63 -66 38 34 -66 white_stained_glass
execute if predicate game:modifiers/hardcore/on unless predicate game:gamemode_components/red_for_blue run fill -14 63 -65 38 34 -65 cyan_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate game:gamemode_components/red_for_blue run fill -14 63 -65 38 34 -65 pink_stained_glass
execute if predicate game:modifiers/hardcore/on unless predicate game:gamemode_components/red_for_blue run fill -14 63 -64 38 34 -64 blue_stained_glass
execute if predicate game:modifiers/hardcore/on if predicate game:gamemode_components/red_for_blue run fill -14 63 -64 38 34 -64 red_stained_glass

##Remove blocks in front of portals (extra precaution)
fill -14 63 67 38 34 73 cave_air
fill -14 63 -67 38 34 -73 cave_air

## Details
execute unless predicate game:gamemode_components/arena/no_base_details run function arenaclear:detailplacement

## Gamemode-specific features
function #rr:game/place_arena
