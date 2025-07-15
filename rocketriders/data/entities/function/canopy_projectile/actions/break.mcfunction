# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:canopy_projectile/body] positioned as @s run return run function entities:canopy_projectile/actions/break

# Particles
execute at @s run particle minecraft:item{item:{id:"minecraft:ender_pearl"}} ~ ~ ~ 0 0 0 0.05 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute at @s run particle minecraft:dust_color_transition{from_color:0xFF00FF,to_color:0x00FF00,scale:1} ~ ~ ~ 0.1 0.2 0.1 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute at @s run playsound minecraft:entity.splash_potion.break master @a[x=0] ~ ~ ~ 1 2

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:canopy_projectile]
execute on passengers run kill @s[predicate=entities:canopy_projectile]
kill @s[predicate=entities:canopy_projectile]
