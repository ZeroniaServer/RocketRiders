# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:shield_projectile/body] positioned as @s run return run function entities:shield_projectile/actions/break

# Particles
execute at @s run particle minecraft:block{block_state:"minecraft:white_stained_glass"} ~ ~ ~ 0 0 0 1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute at @s run playsound minecraft:block.glass.break master @a[x=0] ~ ~ ~ 1 2

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:shield_projectile]
execute on passengers run kill @s[predicate=entities:shield_projectile]
kill @s[predicate=entities:shield_projectile]
