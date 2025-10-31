# arguments: slot

data modify storage rocketriders:main update_inventory set value {damage:0}
$item replace block 0 184 -16 container.0 from entity @s $(slot)

execute store result score $count var if items block 0 184 -16 container.0 *
execute unless score $count var matches 1.. run return fail

data modify storage rocketriders:main update_inventory.item set from block 0 184 -16 Items[0]
execute unless data storage rocketriders:main update_inventory.item.components.minecraft:custom_data.id run return fail

scoreboard players reset $damage var
execute if items block 0 184 -16 container.0 *[count] store result score $damage var store result storage rocketriders:main update_inventory.damage int 1 run data get storage rocketriders:main update_inventory.item.components.minecraft:damage

function custom:__impl__/update_inventory/get_loot_table_id with storage rocketriders:main update_inventory.item.components.minecraft:custom_data

execute if entity @s[type=item] on origin run function custom:__impl__/update_inventory/replace_item with storage rocketriders:main update_inventory
execute if entity @s[type=player] run function custom:__impl__/update_inventory/replace_item with storage rocketriders:main update_inventory
$item replace entity @s $(slot) from block 0 184 -16 container.0
