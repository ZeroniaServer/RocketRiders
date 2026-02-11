# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/fireball/body] positioned as @s run return run function entities:type/fireball/actions/break

# FX
execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s run playsound minecraft:entity.generic.explode player @a[x=0,predicate=custom:in_arena] ~ ~ ~

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/fireball]
execute on passengers run kill @s[predicate=entities:type/fireball]
kill @s[predicate=entities:type/fireball]
