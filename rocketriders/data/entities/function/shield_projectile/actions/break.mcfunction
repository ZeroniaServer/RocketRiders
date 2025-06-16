kill @s[type=snowball,predicate=!entities:shield_projectile]
execute unless entity @s[predicate=entities:shield_projectile] run return fail

execute on vehicle run kill @s[predicate=entities:shield_projectile]
execute on passengers run kill @s[predicate=entities:shield_projectile]
kill @s
