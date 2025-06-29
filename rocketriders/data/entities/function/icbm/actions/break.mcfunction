execute unless entity @s[predicate=entities:icbm] run return fail

execute on vehicle run kill @s[predicate=entities:icbm]
execute on passengers run kill @s[predicate=entities:icbm]
kill @s
