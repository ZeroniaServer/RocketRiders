function custom:update_armor

execute if items entity @s weapon.offhand * run return fail
execute unless items entity @s container.* *[custom_data~{moved_from_offhand_by_invisibility:true}] run return fail
execute if items entity @s hotbar.0 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.0"}
execute if items entity @s hotbar.1 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.1"}
execute if items entity @s hotbar.2 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.2"}
execute if items entity @s hotbar.3 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.3"}
execute if items entity @s hotbar.4 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.4"}
execute if items entity @s hotbar.5 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.5"}
execute if items entity @s hotbar.6 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.6"}
execute if items entity @s hotbar.7 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.7"}
execute if items entity @s hotbar.8 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"hotbar.8"}
execute if items entity @s inventory.0 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.0"}
execute if items entity @s inventory.1 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.1"}
execute if items entity @s inventory.2 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.2"}
execute if items entity @s inventory.3 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.3"}
execute if items entity @s inventory.4 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.4"}
execute if items entity @s inventory.5 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.5"}
execute if items entity @s inventory.6 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.6"}
execute if items entity @s inventory.7 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.7"}
execute if items entity @s inventory.8 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.8"}
execute if items entity @s inventory.9 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.9"}
execute if items entity @s inventory.10 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.10"}
execute if items entity @s inventory.11 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.11"}
execute if items entity @s inventory.12 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.12"}
execute if items entity @s inventory.13 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.13"}
execute if items entity @s inventory.14 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.14"}
execute if items entity @s inventory.15 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.15"}
execute if items entity @s inventory.16 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.16"}
execute if items entity @s inventory.17 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.17"}
execute if items entity @s inventory.18 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.18"}
execute if items entity @s inventory.19 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.19"}
execute if items entity @s inventory.20 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.20"}
execute if items entity @s inventory.21 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.21"}
execute if items entity @s inventory.22 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.22"}
execute if items entity @s inventory.23 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.23"}
execute if items entity @s inventory.24 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.24"}
execute if items entity @s inventory.25 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.25"}
execute if items entity @s inventory.26 *[custom_data~{moved_from_offhand_by_invisibility:true}] run function custom:event/player_becomes_visible/move_item_back_to_offhand {slot:"inventory.26"}
