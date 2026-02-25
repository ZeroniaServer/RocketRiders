# Break the block with fx
execute at @s align xyz run particle minecraft:squid_ink ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0 5
execute at @s if block ~ ~ ~ tnt run function custom:ignite_tnt
execute at @s if block ~ ~ ~ piston_head run function entities:type/rot/tick/rot_away_piston_head
execute at @s run setblock ~ ~ ~ air destroy
execute at @s run playsound minecraft:block.sculk.break block @a[x=0,predicate=custom:in_arena] ~ ~ ~ 0.25 0
function entities:type/rot/actions/die

# If not in the primary rot zone, it has a 50% chance of not spreading. This gives bases a chance over time to stop rotting.
execute unless predicate custom:in_primary_rot_zone if predicate {condition:"minecraft:random_chance",chance:0.50} run return 0

# Ensure spreading to all adjacent blocks
execute positioned ^-1 ^ ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute positioned ^ ^-1 ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute positioned ^ ^ ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute positioned ^ ^ ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute positioned ^ ^ ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute positioned ^ ^1 ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute positioned ^1 ^ ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block

# Jump over directly adjacent air gaps.
execute if block ^-1 ^ ^ #custom:air positioned ^-2 ^ ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if block ^1 ^ ^ #custom:air positioned ^2 ^ ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if block ^ ^ ^-1 #custom:air positioned ^ ^ ^-2 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if block ^ ^ ^1 #custom:air positioned ^ ^ ^2 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block

# Chance of jumping diagonally.
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^-1 ^-1 ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^-1 ^ ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^-1 ^ ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^-1 ^1 ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^ ^-1 ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^ ^-1 ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^ ^1 ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^ ^1 ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^1 ^-1 ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^1 ^ ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^1 ^ ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.70} positioned ^1 ^1 ^ if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block

execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^-1 ^-1 ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^-1 ^-1 ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^-1 ^1 ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^-1 ^1 ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^1 ^-1 ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^1 ^-1 ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^1 ^1 ^-1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
execute if predicate {condition:"minecraft:random_chance",chance:0.50} positioned ^1 ^1 ^1 if block ~ ~ ~ #modifiers:can_rot run function modifiers:rotting/check_block
