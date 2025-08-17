# If already killed, halt.
execute if entity @s[tag=stinging_shield_projectile.killed] run return fail

# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/stinging_shield_projectile/body] positioned as @s run return run function entities:stinging_shield_projectile/actions/break

# Effects
execute at @s run particle minecraft:block{block_state:"minecraft:honey_block"} ~ ~ ~ 0 0 0 1 10
execute on origin run tag @s add vortex_projectile.origin
execute at @s run playsound minecraft:block.honey_block.hit master @a[x=0,tag=!vortex_projectile.origin] ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.honey_block.break master @a[x=0,tag=!vortex_projectile.origin] ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.honey_block.hit master @a[x=0,tag=vortex_projectile.origin] ~ ~ ~ 2 1 0.5
execute at @s run playsound minecraft:block.honey_block.break master @a[x=0,tag=vortex_projectile.origin] ~ ~ ~ 2 1 0.5
execute on origin run tag @s remove vortex_projectile.origin

# Kill entity stack
execute on passengers if predicate entities:type/stinging_shield_projectile/brain run tag @s add stinging_shield_projectile.killed
execute on passengers if predicate entities:type/stinging_shield_projectile/brain run kill @s
tag @s add stinging_shield_projectile.killed
kill @s
