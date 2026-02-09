execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cracked_deepslate_bricks run return run execute if predicate {condition:"minecraft:random_chance",chance:0.75} run setblock ~ ~ ~ minecraft:cracked_deepslate_bricks
execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cracked_deepslate_tiles run return run setblock ~ ~ ~ minecraft:cracked_deepslate_tiles
execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cobbled_deepslate run return run execute if predicate {condition:"minecraft:random_chance",chance:0.25} run setblock ~ ~ ~ minecraft:cobbled_deepslate
execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cobbled_deepslate_slab[type=bottom] run return run execute if predicate {condition:"minecraft:random_chance",chance:0.5} run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[type=bottom]
execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cobbled_deepslate_slab[half=bottom] run return run execute if predicate {condition:"minecraft:random_chance",chance:0.5} run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[type=bottom]
execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cobbled_deepslate_slab[type=top] run return run execute if predicate {condition:"minecraft:random_chance",chance:0.5} run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[type=top]
execute if block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/convert_to_cobbled_deepslate_slab[half=top] run return run execute if predicate {condition:"minecraft:random_chance",chance:0.5} run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[type=top]

execute unless block ~ ~ ~ #custom:explosion_crackable_deepslate_blocks/crumble run return fail
execute align xyz run particle minecraft:block{block_state:"minecraft:cobbled_deepslate"} ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0 10
execute if block ~ ~ ~ minecraft:cobbled_deepslate_slab run return run setblock ~ ~ ~ minecraft:air
execute unless predicate {condition:"minecraft:random_chance",chance:0.3333} run return 0
execute if block ~ ~1 ~ #custom:air unless block ~ ~-1 ~ #custom:cannot_support_block_crumble run return run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[type=bottom]
execute if block ~ ~-1 ~ #custom:air unless block ~ ~1 ~ #custom:cannot_support_block_crumble run return run setblock ~ ~ ~ minecraft:cobbled_deepslate_slab[type=top]
execute unless predicate {condition:"minecraft:random_chance",chance:0.25} run return 0
setblock ~ ~ ~ minecraft:air
execute if block ~ ~1 ~ #minecraft:slabs[type=bottom] run setblock ~ ~1 ~ air
execute if block ~ ~-1 ~ #minecraft:slabs[type=top] run setblock ~ ~-1 ~ air
return 1
