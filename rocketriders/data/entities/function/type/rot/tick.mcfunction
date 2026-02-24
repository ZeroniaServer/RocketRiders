# If the block gets pushed, broken, or replaced by an invalid block then rot dies.
execute unless block ~ ~ ~ #modifiers:can_rot run return run function entities:type/rot/actions/break

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

# Block cracks increase over time.
execute if score @s entity.age matches 10 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_1",color:"#390077"}
execute if score @s entity.age matches 20 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_2",color:"#390077"}
execute if score @s entity.age matches 30 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_3",color:"#390077"}
execute if score @s entity.age matches 40 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_4",color:"#390077"}
execute if score @s entity.age matches 50 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_5",color:"#390077"}
execute if score @s entity.age matches 60 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_6",color:"#390077"}
execute if score @s entity.age matches 70 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_7",color:"#390077"}
execute if score @s entity.age matches 80 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_8",color:"#390077"}
execute if score @s entity.age matches 90 on passengers run data modify entity @s text set value {atlas:"minecraft:blocks",sprite:"block/destroy_stage_9",color:"#390077"}

# Eventually rot away, breaking the block.
execute if score @s entity.age matches 100.. run return run function entities:type/rot/actions/rot_away
