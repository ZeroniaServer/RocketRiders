# FX
execute at @s run particle minecraft:lava ~ ~ ~ 0 0 0 0 1 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s run playsound minecraft:block.fire.extinguish player @a[x=0,predicate=custom:in_arena,tag=!hideParticles] ~ ~ ~ 2 2

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/fire_spell]
execute on passengers run kill @s[predicate=entities:type/fire_spell]
kill @s[predicate=entities:type/fire_spell]
