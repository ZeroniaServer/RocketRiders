# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/vortex_projectile/body] positioned as @s run return run function entities:vortex_projectile/actions/break

# Particles
execute at @s run particle minecraft:item{item:{id:"minecraft:ender_eye"}} ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute on origin run tag @s add vortex_projectile.origin
execute at @s run playsound minecraft:entity.ender_eye.death master @a[x=0,tag=!vortex_projectile.origin] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.ender_eye.death master @a[x=0,tag=vortex_projectile.origin] ~ ~ ~ 2 1 0.5
execute on origin run tag @s remove vortex_projectile.origin

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/vortex_projectile]
execute on passengers run kill @s[predicate=entities:type/vortex_projectile]
kill @s[predicate=entities:type/vortex_projectile]
