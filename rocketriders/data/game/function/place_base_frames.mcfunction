## Frames
# Blue
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run fill -14 64 -67 38 64 -67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection if predicate game:match_components/arena/classic_base_frames run fill -14 63 -66 38 63 -66 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -15 33 -67 -15 64 -67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill 39 33 -67 39 64 -67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -14 33 -67 38 33 -67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames if predicate game:match_components/arena/bedrock_base_frames run fill -15 64 -69 39 64 -68 minecraft:bedrock strict

execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run fill -14 64 -67 38 64 -67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection if predicate game:match_components/arena/classic_base_frames run fill -14 63 -66 38 63 -66 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -15 33 -67 -15 64 -67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill 39 33 -67 39 64 -67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -14 33 -67 38 33 -67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames if predicate game:match_components/arena/bedrock_base_frames run fill -15 64 -69 39 64 -68 minecraft:bedrock strict

# Yellow
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run fill -14 64 67 38 64 67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection if predicate game:match_components/arena/classic_base_frames run fill -14 63 66 38 63 66 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -15 33 67 -15 64 67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill 39 33 67 39 64 67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -14 33 67 38 33 67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames if predicate game:match_components/arena/bedrock_base_frames run fill -15 64 68 39 64 69 minecraft:bedrock strict

execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run fill -14 64 67 38 64 67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection if predicate game:match_components/arena/classic_base_frames run fill -14 63 66 38 63 66 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -15 33 67 -15 64 67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill 39 33 67 39 64 67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames run fill -14 33 67 38 33 67 minecraft:bedrock strict
execute if predicate game:match_components/arena/bedrock_base_frames unless predicate game:match_components/arena/classic_base_frames if predicate game:match_components/arena/bedrock_base_frames run fill -15 64 68 39 64 69 minecraft:bedrock strict

## Spawnpoints
# Blue
execute unless predicate game:match_components/arena/classic_base_frames run fill 10 63 -66 14 63 -66 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames run fill 11 63 -65 13 63 -65 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames run setblock 12 63 -64 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection if predicate game:match_components/arena/bedrock_base_frames run fill 10 64 -67 14 64 -67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run fill 11 65 -67 13 65 -67 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run setblock 12 66 -67 obsidian strict

# Yellow
execute unless predicate game:match_components/arena/classic_base_frames run fill 14 63 66 10 63 66 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames run fill 13 63 65 11 63 65 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames run setblock 12 63 64 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection if predicate game:match_components/arena/bedrock_base_frames run fill 10 64 67 14 64 67 minecraft:obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run fill 13 65 67 11 65 67 obsidian strict
execute unless predicate game:match_components/arena/classic_base_frames unless predicate game:match_components/custom_spawnpoint_block_protection run setblock 12 66 67 obsidian strict
