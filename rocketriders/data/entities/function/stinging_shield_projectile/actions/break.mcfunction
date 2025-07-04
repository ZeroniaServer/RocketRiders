# If already killed, halt.
execute if entity @s[tag=stinging_shield_projectile.killed] run return fail

## As brain: Redirect this function to the body.  If the body doesn't exist or has already been killed, die without effects.
execute if predicate entities:stinging_shield_projectile/brain on vehicle if predicate entities:stinging_shield_projectile/body positioned as @s run return run function entities:stinging_shield_projectile/actions/break
execute if predicate entities:stinging_shield_projectile/brain run tag @s add stinging_shield_projectile.killed
execute if predicate entities:stinging_shield_projectile/brain run return run kill @s

## As body: Do effects, kill brain, and die
# Effects
particle minecraft:block{block_state:"minecraft:honey_block"} ~ ~ ~ 0.5 0.5 0.5 1 100
playsound minecraft:block.honey_block.hit master @a[x=0] ~ ~ ~ 2 1
playsound minecraft:block.honey_block.break master @a[x=0] ~ ~ ~ 2 1

# Kill entity stack
execute on passengers if predicate entities:stinging_shield_projectile/brain run tag @s add stinging_shield_projectile.killed
execute on passengers if predicate entities:stinging_shield_projectile/brain run kill @s
tag @s add stinging_shield_projectile.killed
kill @s
