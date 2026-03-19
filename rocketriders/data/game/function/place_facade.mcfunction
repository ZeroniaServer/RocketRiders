# Kill facade entities
kill @e[x=0,tag=facade_entity]

#Join pad colors
execute unless predicate game:match_components/one_team unless predicate game:match_components/green_for_yellow run fill -82 204 92 -78 212 96 minecraft:yellow_concrete replace #custom:concrete strict
execute unless predicate game:match_components/one_team unless predicate game:match_components/green_for_yellow run setblock -80 211 94 minecraft:ochre_froglight[axis=y] strict
execute unless predicate game:match_components/one_team if predicate game:match_components/green_for_yellow run fill -82 204 92 -78 212 96 minecraft:green_concrete replace #custom:concrete strict
execute unless predicate game:match_components/one_team if predicate game:match_components/green_for_yellow run setblock -80 211 94 minecraft:verdant_froglight[axis=y] strict
execute if predicate game:match_components/one_team unless predicate game:match_components/dark_red_for_blue run fill -82 204 92 -78 212 96 minecraft:blue_concrete replace #custom:concrete strict
execute if predicate game:match_components/one_team unless predicate game:match_components/dark_red_for_blue run setblock -80 211 94 minecraft:sea_lantern strict
execute if predicate game:match_components/one_team if predicate game:match_components/dark_red_for_blue run fill -82 204 92 -78 212 96 minecraft:red_concrete replace #custom:concrete strict
execute if predicate game:match_components/one_team if predicate game:match_components/dark_red_for_blue run setblock -80 211 94 minecraft:shroomlight strict

execute unless predicate game:match_components/dark_red_for_blue run fill -82 204 60 -78 212 64 minecraft:blue_concrete replace #custom:concrete strict
execute unless predicate game:match_components/dark_red_for_blue run setblock -80 211 62 minecraft:sea_lantern strict
execute if predicate game:match_components/dark_red_for_blue run fill -82 204 60 -78 212 64 minecraft:red_concrete replace #custom:concrete strict
execute if predicate game:match_components/dark_red_for_blue run setblock -80 211 62 minecraft:shroomlight strict

#Bridge colors
execute unless predicate game:match_components/one_team unless predicate game:match_components/green_for_yellow run place template lobby:left_bridge/yellow -76 200 86 none none 1 0 strict
execute unless predicate game:match_components/one_team if predicate game:match_components/green_for_yellow run place template lobby:left_bridge/green -76 200 86 none none 1 0 strict
execute if predicate game:match_components/one_team unless predicate game:match_components/dark_red_for_blue run place template lobby:left_bridge/blue -76 200 86 none none 1 0 strict
execute if predicate game:match_components/one_team if predicate game:match_components/dark_red_for_blue run place template lobby:left_bridge/red -76 200 86 none none 1 0 strict

execute unless predicate game:match_components/dark_red_for_blue run place template lobby:right_bridge/blue -76 200 64 none none 1 0 strict
execute if predicate game:match_components/dark_red_for_blue run place template lobby:right_bridge/red -76 200 64 none none 1 0 strict

#Lobby underside colors (blue)
execute unless predicate game:match_components/dark_red_for_blue run fill -82 186 66 -81 201 77 minecraft:blue_terracotta replace #custom:terracotta strict
execute unless predicate game:match_components/dark_red_for_blue run fill -83 187 70 -83 200 77 minecraft:blue_concrete replace #custom:concrete strict
execute unless predicate game:match_components/dark_red_for_blue run fill -84 190 75 -84 199 77 minecraft:blue_concrete_powder replace #custom:concrete_powder strict
execute if predicate game:match_components/dark_red_for_blue run fill -82 186 66 -81 201 77 minecraft:red_terracotta replace #custom:terracotta strict
execute if predicate game:match_components/dark_red_for_blue run fill -83 187 70 -83 200 77 minecraft:red_concrete replace #custom:concrete strict
execute if predicate game:match_components/dark_red_for_blue run fill -84 190 75 -84 199 77 minecraft:red_concrete_powder replace #custom:concrete_powder strict
#Lobby underside colors (yellow)
execute unless predicate game:match_components/one_team unless predicate game:match_components/green_for_yellow run fill -82 186 79 -81 201 90 minecraft:yellow_terracotta replace #custom:terracotta strict
execute unless predicate game:match_components/one_team unless predicate game:match_components/green_for_yellow run fill -83 187 79 -83 200 86 minecraft:yellow_concrete replace #custom:concrete strict
execute unless predicate game:match_components/one_team unless predicate game:match_components/green_for_yellow run fill -84 190 79 -84 199 81 minecraft:yellow_concrete_powder replace #custom:concrete_powder strict
execute unless predicate game:match_components/one_team if predicate game:match_components/green_for_yellow run fill -82 186 79 -81 201 90 minecraft:green_terracotta replace #custom:terracotta strict
execute unless predicate game:match_components/one_team if predicate game:match_components/green_for_yellow run fill -83 187 79 -83 200 86 minecraft:green_concrete replace #custom:concrete strict
execute unless predicate game:match_components/one_team if predicate game:match_components/green_for_yellow run fill -84 190 79 -84 199 81 minecraft:green_concrete_powder replace #custom:concrete_powder strict
execute if predicate game:match_components/one_team unless predicate game:match_components/dark_red_for_blue run fill -82 186 79 -81 201 90 minecraft:blue_terracotta replace #custom:terracotta strict
execute if predicate game:match_components/one_team unless predicate game:match_components/dark_red_for_blue run fill -83 187 79 -83 200 86 minecraft:blue_concrete replace #custom:concrete strict
execute if predicate game:match_components/one_team unless predicate game:match_components/dark_red_for_blue run fill -84 190 79 -84 199 81 minecraft:blue_concrete_powder replace #custom:concrete_powder strict
execute if predicate game:match_components/one_team if predicate game:match_components/dark_red_for_blue run fill -82 186 79 -81 201 90 minecraft:red_terracotta replace #custom:terracotta strict
execute if predicate game:match_components/one_team if predicate game:match_components/dark_red_for_blue run fill -83 187 79 -83 200 86 minecraft:red_concrete replace #custom:concrete strict
execute if predicate game:match_components/one_team if predicate game:match_components/dark_red_for_blue run fill -84 190 79 -84 199 81 minecraft:red_concrete_powder replace #custom:concrete_powder strict
# Fix for terracotta above underside region
fill -81 199 86 -81 198 81 minecraft:lime_terracotta replace #custom:terracotta

#Remove game pause barriers
fill -89 202 90 -101 211 90 minecraft:air replace minecraft:barrier strict
fill -89 202 66 -101 211 66 minecraft:air replace minecraft:barrier strict

#Clear facade molerat
fill -101 207 69 -89 186 87 air replace light_gray_stained_glass

#Clear facade powerup platform, crystal crafters, mini platforms, flags, and castles
fill -89 200 72 -101 202 85 air strict

fill -92 200 81 -98 200 75 air strict
fill -94 203 57 -96 203 55 air strict
fill -96 203 99 -94 203 101 air strict
fill -101 202 60 -89 202 96 air strict
fill -101 200 85 -99 202 85 air strict
fill -91 200 85 -89 202 85 air strict
fill -101 200 85 -99 202 84 air strict
fill -91 200 85 -89 202 84 air strict
fill -89 200 71 -101 201 72 air strict

fill -97 201 98 -93 202 101 barrier strict
fill -97 201 55 -93 202 58 barrier strict

fill -90 202 95 -90 203 95 air strict
fill -100 202 95 -100 203 95 air strict
fill -100 202 61 -100 203 61 air strict
fill -90 202 61 -90 203 61 air strict

fill -89 203 91 -101 199 65 air replace #banners strict

#Set each base's blocks
fill -101 195 60 -89 201 65 air strict
execute unless predicate game:modifiers/hardcore/on run function game:place_facade/bases/blue with storage rocketriders:teams blue.block_palette
execute if predicate game:modifiers/hardcore/on run function game:place_facade/bases/blue_hardcore with storage rocketriders:teams blue.block_palette
fill -101 195 91 -89 201 96 air strict
execute unless predicate game:modifiers/hardcore/on run function game:place_facade/bases/yellow with storage rocketriders:teams yellow.block_palette
execute if predicate game:modifiers/hardcore/on run function game:place_facade/bases/yellow_hardcore with storage rocketriders:teams yellow.block_palette

# Base Frames
execute unless predicate game:match_components/arena/bedrock_frame run fill -102 194 59 -88 202 59 minecraft:obsidian strict
execute if predicate game:match_components/arena/bedrock_frame run fill -102 194 59 -88 202 59 minecraft:bedrock strict
fill -89 195 59 -101 201 59 air strict

execute unless predicate game:match_components/arena/bedrock_frame run fill -102 194 97 -88 202 97 minecraft:obsidian strict
execute if predicate game:match_components/arena/bedrock_frame run fill -102 194 97 -88 202 97 minecraft:bedrock strict
fill -101 195 97 -89 201 97 air strict

execute if predicate game:match_components/arena/bedrock_frame run fill -88 202 98 -102 202 98 bedrock strict
execute if predicate game:match_components/arena/bedrock_frame run fill -88 202 58 -102 202 58 bedrock strict
execute unless predicate game:match_components/arena/bedrock_frame run fill -88 202 98 -102 202 98 barrier strict
execute unless predicate game:match_components/arena/bedrock_frame run fill -88 202 58 -102 202 58 barrier strict

# Frames & Portals
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/default run fill -101 195 59 -89 201 59 minecraft:nether_portal[axis=x] strict
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/default run fill -95 195 59 -95 201 59 minecraft:obsidian strict
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/small run fill -97 196 59 -93 199 59 minecraft:obsidian strict
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/small run fill -96 197 59 -94 198 59 minecraft:nether_portal[axis=x] strict

execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/default run fill -101 195 97 -89 201 97 minecraft:nether_portal[axis=x] strict
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/default run fill -95 201 97 -95 195 97 minecraft:obsidian strict
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/small run fill -97 196 97 -93 199 97 minecraft:obsidian strict
execute unless predicate game:match_components/portal_crystal_protection if predicate game:portal_type/small run fill -96 197 97 -94 198 97 minecraft:nether_portal[axis=x] strict

# Flags
execute if predicate game:match_components/has_flags run setblock -90 202 95 purple_stained_glass strict
execute if predicate game:match_components/has_flags run setblock -100 202 95 purple_stained_glass strict
execute if predicate game:match_components/has_flags run setblock -90 202 61 purple_stained_glass strict
execute if predicate game:match_components/has_flags run setblock -100 202 61 purple_stained_glass strict
execute if predicate game:match_components/has_flags run function game:place_facade/blue_flags with storage rocketriders:teams blue.block_palette
execute if predicate game:match_components/has_flags run function game:place_facade/yellow_flags with storage rocketriders:teams yellow.block_palette

# Remove Chase Flag
setblock -95 202 95 air strict

# Remove Chase blocks
fill -101 195 66 -89 209 90 air replace #custom:player_heads strict

# Molerat
execute if predicate game:modifiers/molerat/on run fill -101 207 69 -89 186 87 light_gray_stained_glass replace #custom:lobby_air

## Castle
execute if predicate game:arena_details/castle run function game:place_facade/castle

## Game-mode-specific features
function #rr:game/place_facade
