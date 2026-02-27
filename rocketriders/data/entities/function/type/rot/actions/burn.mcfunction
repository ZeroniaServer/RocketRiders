# Break the block with fx
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..2,predicate=entities:type/rot/brain] run function entities:type/rot/actions/start_burning
execute at @s align xyz run particle minecraft:flame ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0.05 20 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s align xyz run particle minecraft:smoke ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0.05 20 force @a[x=0,predicate=custom:in_arena,tag=!hideParticles]
execute at @s run playsound minecraft:block.sculk.break block @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.2 0
execute at @s run playsound minecraft:entity.warden.hurt master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.2 0
execute at @s run playsound minecraft:entity.generic.burn master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.2 0.9
execute at @s run playsound minecraft:entity.player.hurt_on_fire master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.2 1.5
function entities:type/rot/actions/die
