# arguments: run, vortex_trigger_radius

# Modify creeper's NBT
data modify entity @s {} merge from storage rocketriders:main explosion.modifiers.nbt

# Trigger Vortices
$execute as @e[distance=..$(vortex_trigger_radius),predicate=entities:type/vortex/body] run function entities:type/vortex/actions/trigger {fuse:0}

# Run Command
$$(run)
