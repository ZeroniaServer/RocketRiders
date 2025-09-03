## Runs at the start of the tick that a TNT entity explodes (it still exists and will continue to exist until entities get processed later)

# If this TNT should not explode, kill it
execute unless entity @s[predicate=custom:tnt_can_explode] run return run kill @s

# Set explosion power
scoreboard players set $explosion_power var 4
execute if predicate game:modifiers/explosive/on run scoreboard players set $explosion_power var 5
execute if predicate game:modifiers/clutter_collector/on if predicate custom:in_clutter_collection_zone run scoreboard players set $explosion_power var 0

execute store result entity @s explosion_power float 1 run scoreboard players get $explosion_power var
execute if score $explosion_power var matches ..1 run particle minecraft:explosion_emitter

# Trigger nearby vortices
execute as @e[distance=..5,predicate=entities:type/vortex/brain] at @s run function entities:vortex/actions/trigger {fuse:0}

# Kill nearby canopies
execute as @e[distance=..7,predicate=entities:type/canopy/brain] at @s run function entities:canopy/actions/kill

# Crack deepslate
execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks if predicate rr_crusade:tnt_near_castle run function rr_crusade:game/tnt_cracks
