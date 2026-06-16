execute at @s run particle minecraft:tinted_leaves{color:0x77AB2F} ~ ~1 ~ 2 1 2 0 20 normal @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s run particle minecraft:block{block_state:"minecraft:oak_leaves"} ~ ~1 ~ 2 0.5 2 1 100 normal @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s run function entities:type/canopy/actions/poof
