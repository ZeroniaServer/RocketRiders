#Clear pregame molerat
fill -101 207 69 -89 186 87 air replace light_gray_stained_glass

#Clear pregame powerup platform and mini platforms and castles
fill -101 195 65 -89 201 64 minecraft:blue_stained_glass
fill -89 201 63 -101 195 62 minecraft:cyan_stained_glass
fill -101 201 60 -89 195 61 minecraft:white_stained_glass
fill -89 195 91 -101 201 92 minecraft:yellow_stained_glass
fill -101 201 93 -89 195 94 minecraft:orange_stained_glass
fill -89 201 95 -101 195 96 minecraft:white_stained_glass
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

# Frames & Portals
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -102 194 59 -88 202 59 minecraft:obsidian strict
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -102 194 59 -88 202 59 minecraft:bedrock strict
execute unless predicate game:portal_type/default run fill -89 195 59 -101 201 59 air strict
execute if predicate game:portal_type/default run fill -101 195 59 -89 201 59 minecraft:nether_portal[axis=x] strict
execute if predicate game:portal_type/default if predicate game:gamemode_components/arena/bedrock_frame run fill -95 195 59 -95 201 59 minecraft:bedrock strict
execute if predicate game:portal_type/default unless predicate game:gamemode_components/arena/bedrock_frame run fill -95 195 59 -95 201 59 minecraft:obsidian strict
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -102 194 97 -88 202 97 minecraft:obsidian strict
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -102 194 97 -88 202 97 minecraft:bedrock strict
execute unless predicate game:portal_type/default run fill -101 195 97 -89 201 97 air strict
execute if predicate game:portal_type/default run fill -101 195 97 -89 201 97 minecraft:nether_portal[axis=x] strict
execute if predicate game:portal_type/default if predicate game:gamemode_components/arena/bedrock_frame run fill -95 201 97 -95 195 97 minecraft:bedrock strict
execute if predicate game:portal_type/default unless predicate game:gamemode_components/arena/bedrock_frame run fill -95 201 97 -95 195 97 minecraft:obsidian strict

# Bedrock Frames
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -88 202 98 -102 202 98 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame run fill -88 202 58 -102 202 58 bedrock
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -88 202 98 -102 202 98 barrier
execute unless predicate game:gamemode_components/arena/bedrock_frame run fill -88 202 58 -102 202 58 barrier

## Modifiers
# Molerat
execute if predicate game:modifiers/molerat/on run fill -101 207 69 -89 186 87 light_gray_stained_glass replace air

#Hardcore pregame queue
execute if predicate game:modifiers/hardcore/on run fill -89 201 63 -101 195 65 air
execute if predicate game:modifiers/hardcore/on run fill -89 201 93 -101 195 91 air
execute if predicate game:modifiers/hardcore/on run fill -89 201 62 -101 195 62 blue_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -89 201 61 -101 195 61 cyan_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -89 201 60 -101 195 60 white_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -89 201 94 -101 195 94 yellow_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -89 201 95 -101 195 95 orange_stained_glass
execute if predicate game:modifiers/hardcore/on run fill -89 201 96 -101 195 96 white_stained_glass
execute if predicate game:modifiers/hardcore/on run scoreboard players set $was_hardcore_facade global 1

#Reset hardcore pregame queue
execute unless predicate game:modifiers/hardcore/on if score $was_hardcore_facade global matches 1 run fill -89 201 96 -101 195 95 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if score $was_hardcore_facade global matches 1 run fill -89 201 94 -101 195 93 orange_stained_glass
execute unless predicate game:modifiers/hardcore/on if score $was_hardcore_facade global matches 1 run fill -89 201 91 -101 195 92 yellow_stained_glass
execute unless predicate game:modifiers/hardcore/on if score $was_hardcore_facade global matches 1 run fill -89 201 60 -101 195 61 white_stained_glass
execute unless predicate game:modifiers/hardcore/on if score $was_hardcore_facade global matches 1 run fill -89 201 62 -101 195 63 cyan_stained_glass
execute unless predicate game:modifiers/hardcore/on if score $was_hardcore_facade global matches 1 run fill -89 201 65 -101 195 64 blue_stained_glass
execute unless predicate game:modifiers/hardcore/on run scoreboard players reset $was_hardcore_facade global

## Gamemode-specific features
function #rr:game/place_facade
