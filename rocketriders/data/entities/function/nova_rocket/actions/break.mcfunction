# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/nova_rocket/body] positioned as @s run return run function entities:nova_rocket/actions/break

# Particles
execute at @s run particle minecraft:item{item:{id:"minecraft:firework_rocket"}} ~ ~ ~ 0 0 0 0.05 5 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute on origin run tag @s add nova_rocket.origin
execute at @s run playsound minecraft:block.fire.extinguish master @a[x=0,tag=!nova_rocket.origin] ~ ~ ~ 1.5 2
execute at @s run playsound minecraft:block.fire.extinguish master @a[x=0,tag=nova_rocket.origin] ~ ~ ~ 1.5 2 0.5
execute on origin run tag @s remove nova_rocket.origin

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/nova_rocket]
execute on passengers run kill @s[predicate=entities:type/nova_rocket]
kill @s[predicate=entities:type/nova_rocket]
