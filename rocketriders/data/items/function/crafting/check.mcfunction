execute if items entity @s player.crafting.0 * if predicate items:can_destroy_item/crafting_slot_0 in minecraft:overworld run function items:crafting/destroy {slot:"player.crafting.0"}
execute if items entity @s player.crafting.1 * if predicate items:can_destroy_item/crafting_slot_1 in minecraft:overworld run function items:crafting/destroy {slot:"player.crafting.1"}
execute if items entity @s player.crafting.2 * if predicate items:can_destroy_item/crafting_slot_2 in minecraft:overworld run function items:crafting/destroy {slot:"player.crafting.2"}
execute if items entity @s player.crafting.3 * if predicate items:can_destroy_item/crafting_slot_3 in minecraft:overworld run function items:crafting/destroy {slot:"player.crafting.3"}

execute unless items entity @s player.crafting.* * run return 0
execute if items entity @s player.crafting.0 * in minecraft:overworld run function items:crafting/try_move_to_cursor {slot:"player.crafting.0"}
execute if items entity @s player.crafting.1 * in minecraft:overworld run function items:crafting/try_move_to_cursor {slot:"player.crafting.1"}
execute if items entity @s player.crafting.2 * in minecraft:overworld run function items:crafting/try_move_to_cursor {slot:"player.crafting.2"}
execute if items entity @s player.crafting.3 * in minecraft:overworld run function items:crafting/try_move_to_cursor {slot:"player.crafting.3"}
