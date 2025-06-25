kill @s[type=egg,predicate=!entities:vortex_projectile]
execute unless entity @s[predicate=entities:vortex_projectile] run return fail

execute on vehicle run kill @s[predicate=entities:vortex_projectile]
execute on passengers run kill @s[predicate=entities:vortex_projectile]
kill @s
