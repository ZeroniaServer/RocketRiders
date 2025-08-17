# arguments: slot

$item replace block 0 184 -16 container.0 from entity @s $(slot)
$item replace entity @s $(slot) with air

# If the cursor slot is free, just move it there
execute unless items entity @s player.cursor * run return run item replace entity @s player.cursor from block 0 184 -16 container.0

# Try to insert into the inventory
execute store result score $item_stack_count var if items block 0 184 -16 container.0 *
execute store result score $expected_items_afterwards var if items entity @s container.* *
scoreboard players operation $expected_items_afterwards var += $item_stack_count var
loot replace block 0 184 -16 container.1 26 loot custom:empty
loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}]
execute store result score $total_items_afterwards var if items entity @s container.* *
execute if score $total_items_afterwards var >= $expected_items_afterwards var run return 1

execute store result score $missing_items var run scoreboard players operation $expected_items_afterwards var -= $total_items_afterwards var
item modify block 0 184 -16 container.0 {function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$missing_items"},score:"var"}}
execute at @s run loot spawn ~ ~ ~ mine 0 184 -16 stick[custom_data={drop_contents:true}]
