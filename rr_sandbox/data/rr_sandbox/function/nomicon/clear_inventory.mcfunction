# Feedback
execute store result score $cleared_items_in_container_slots var if items entity @s container.* *[!custom_data~{id:"rocket_nomicon"}]
execute store result score $cleared_items_in_offhand_slot var if items entity @s weapon.offhand *[!custom_data~{id:"rocket_nomicon"}]
execute store result score $cleared_items_in_cursor_slot var if items entity @s player.cursor *[!custom_data~{id:"rocket_nomicon"}]
scoreboard players set $cleared_items var 0
scoreboard players operation $cleared_items var += $cleared_items_in_container_slots var
scoreboard players operation $cleared_items var += $cleared_items_in_offhand_slot var
scoreboard players operation $cleared_items var += $cleared_items_in_cursor_slot var
execute if score $cleared_items var matches 1 run tellraw @s {color:"red",text:"Cleared 1 item from your inventory"}
execute if score $cleared_items var matches 2.. run tellraw @s [{color:"red",text:"Cleared "},{score:{name:"$cleared_items",objective:"var"}}," items from your inventory"]
execute at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 1

# Clear inventory
loot replace entity @s hotbar.0 loot items:books/nomicon/in_game
loot replace entity @s container.1 35 loot custom:empty
item replace entity @s weapon.offhand with air
item replace entity @s player.cursor with air
