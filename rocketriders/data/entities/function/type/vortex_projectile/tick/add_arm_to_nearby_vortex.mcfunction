# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/vortex_projectile]
execute on passengers run kill @s[predicate=entities:type/vortex_projectile]
kill @s[predicate=entities:type/vortex_projectile]

# Add arm
function entities:type/vortex_arm/summon_for_nearest_vortex
