# Let rotting pistons retract themselves (but not get pushed by a different piston)
scoreboard players set $retracting_piston_base var 0
execute if entity @s[tag=rot.brain.block_is_piston_base] if block ~ ~ ~ minecraft:moving_piston{source:true} run scoreboard players set $retracting_piston_base var 1

# If the block gets pushed, broken, or replaced by an invalid block then rot dies.
execute if score $retracting_piston_base var matches 0 unless block ~ ~ ~ #modifiers:can_rot run return run function entities:type/rot/actions/break

# If not in the primary rot zone, processing ("metabolism") is slowed to ~30% its normal speed (aka 70% chance of skipping a tick).
execute unless predicate custom:in_primary_rot_zone if predicate {condition:"minecraft:random_chance",chance:0.70} run return run scoreboard players remove @s entity.age 1

## Dormant
# Do nothing until awake
execute if entity @s[type=marker] if score @s entity.age matches 0.. run return run function entities:type/rot/actions/wake_up
execute if entity @s[type=marker] run return 0

## Awake
# If the block should be destroyed instantly (non-full blocks) then just instantly break.
execute if block ~ ~ ~ #modifiers:rotting_breaks_instantly run return run function entities:type/rot/actions/rot_away

# Small chance to spread to an adjacent block before it fully rots.
execute if predicate {condition:"minecraft:random_chance",chance:0.002} positioned ~ ~ ~1 run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.002} positioned ~ ~ ~-1 run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.002} positioned ~1 ~ ~ run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.002} positioned ~-1 ~ ~ run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.002} positioned ~ ~1 ~ run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.002} positioned ~ ~-1 ~ run function modifiers:rotting/check_block

# Eventually rot away, breaking the block.
execute if score @s entity.age matches 100.. run return run function entities:type/rot/actions/rot_away

# If on a piston block, rot away after stage 1 if extended due to the side cracks reaching past the model.
execute if score @s entity.age matches 20.. if entity @s[tag=rot.brain.block_is_piston_base] if block ~ ~ ~ #custom:piston[extended=true] run return run function entities:type/rot/actions/rot_away

# Block cracks increase over time.
execute if score @s entity.age matches 10 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_1"
execute if score @s entity.age matches 20 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_2"
execute if score @s entity.age matches 30 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_3"
execute if score @s entity.age matches 40 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_4"
execute if score @s entity.age matches 50 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_5"
execute if score @s entity.age matches 60 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_6"
execute if score @s entity.age matches 70 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_7"
execute if score @s entity.age matches 80 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_8"
execute if score @s entity.age matches 90 on passengers run data modify entity @s text.sprite set value "minecraft:block/destroy_stage_9"

# If on a piston block, move front face to inside texture if extended
execute if entity @s[tag=rot.brain.block_is_piston_base,tag=rot.brain.block_was_extended_piston] if block ~ ~ ~ #custom:piston[extended=false] on passengers if entity @s[tag=rot.face.is_piston_face] run data modify entity @s transformation.translation[2] set value 0.5
execute if entity @s[tag=rot.brain.block_is_piston_base,tag=!rot.brain.block_was_extended_piston] if block ~ ~ ~ #custom:piston[extended=true] on passengers if entity @s[tag=rot.face.is_piston_face] run data modify entity @s transformation.translation[2] set value 0.25
execute if entity @s[tag=rot.brain.block_is_piston_base,tag=rot.brain.block_was_extended_piston] if block ~ ~ ~ #custom:piston[extended=false] run tag @s remove rot.brain.block_was_extended_piston
execute if entity @s[tag=rot.brain.block_is_piston_base,tag=!rot.brain.block_was_extended_piston] if block ~ ~ ~ #custom:piston[extended=true] run tag @s add rot.brain.block_was_extended_piston
