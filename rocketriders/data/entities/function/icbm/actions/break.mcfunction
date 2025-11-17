# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/icbm/body] positioned as @s run return run function entities:icbm/actions/break

# Particles
execute at @s run particle minecraft:lava ~ ~ ~ 0 0 0 1 10 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute on origin run tag @s add icbm.origin
execute at @s run playsound minecraft:block.fire.extinguish master @a[x=0,tag=!icbm.origin] ~ ~ ~ 1 2
execute at @s run playsound minecraft:block.fire.extinguish master @a[x=0,tag=icbm.origin] ~ ~ ~ 1 2 0.5
execute on origin run tag @s remove icbm.origin


# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/icbm]
execute on passengers run kill @s[predicate=entities:type/icbm]
kill @s[predicate=entities:type/icbm]
