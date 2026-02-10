# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/fireball/body] positioned as @s run return run function entities:type/fireball/actions/break

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/fireball]
execute on passengers run kill @s[predicate=entities:type/fireball]
kill @s[predicate=entities:type/fireball]
