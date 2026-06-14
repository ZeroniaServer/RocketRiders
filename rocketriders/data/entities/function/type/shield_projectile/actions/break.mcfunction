# If possible, redirect function to the body
execute on vehicle if entity @s[predicate=entities:type/shield_projectile/body] positioned as @s run return run function entities:type/shield_projectile/actions/break

# Particles
execute as @s run particle minecraft:block{block_state:"minecraft:white_stained_glass"} ~ ~ ~ 0 0 0 1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute at @s if predicate entities:origin_team/blue if predicate game:blue_team_skin/blue run particle minecraft:block{block_state:"minecraft:blue_stained_glass"} ~ ~ ~ 0 0 0 1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute at @s if predicate entities:origin_team/blue if predicate game:blue_team_skin/any_red_skin run particle minecraft:block{block_state:"minecraft:red_stained_glass"} ~ ~ ~ 0 0 0 1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute at @s if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/yellow run particle minecraft:block{block_state:"minecraft:yellow_stained_glass"} ~ ~ ~ 0 0 0 1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute at @s if predicate entities:origin_team/yellow if predicate game:yellow_team_skin/green run particle minecraft:block{block_state:"minecraft:green_stained_glass"} ~ ~ ~ 0 0 0 1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute at @s if predicate entities:origin_team/none run particle minecraft:block{block_state:"minecraft:white_stained_glass"} ~ ~ ~ 0 0 0 1 5 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute on origin run tag @s add shield_projectile.origin
execute at @s run playsound minecraft:block.glass.break master @a[x=0,tag=!shield_projectile.origin] ~ ~ ~ 1 2
execute at @s run playsound minecraft:block.glass.break master @a[x=0,tag=shield_projectile.origin] ~ ~ ~ 1 2 0.5
execute on origin run tag @s remove shield_projectile.origin

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/shield_projectile]
execute on passengers run kill @s[predicate=entities:type/shield_projectile]
kill @s[predicate=entities:type/shield_projectile]

return 1
