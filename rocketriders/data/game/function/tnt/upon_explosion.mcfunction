## Runs at the start of the tick that a TNT entity explodes (it still exists and will continue to exist until entities get processed later)

# If this TNT should not explode, kill it
execute unless entity @s[predicate=custom:tnt_can_explode] run return run kill @s

# Trigger nearby vortices
execute as @e[distance=..5,predicate=entities:type/vortex/brain] at @s run function entities:vortex/actions/trigger {fuse:0}

# Kill nearby canopies
execute as @e[distance=..7,predicate=entities:type/canopy/brain] at @s run function entities:canopy/actions/kill

# Crack deepslate
execute if predicate game:gamemode_components/explosions_crack_deepslate_bricks if predicate rr_crusade:tnt_near_castle run function rr_crusade:game/tnt_cracks
