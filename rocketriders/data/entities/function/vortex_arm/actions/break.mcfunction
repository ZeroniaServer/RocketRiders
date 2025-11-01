# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/vortex_arm/body] positioned as @s run return run function entities:vortex_arm/actions/break

# Particles
execute at @s run particle minecraft:item{item:{id:"minecraft:ender_eye"}} ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute on origin on origin run tag @s add vortex_arm.origin
execute at @s run playsound minecraft:entity.ender_eye.death master @a[x=0,tag=!vortex_arm.origin] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.ender_eye.death master @a[x=0,tag=vortex_arm.origin] ~ ~ ~ 2 1 0.5
execute on origin on origin run tag @s remove vortex_arm.origin

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/vortex_arm]
execute on passengers run kill @s[predicate=entities:type/vortex_arm]
kill @s[predicate=entities:type/vortex_arm]
