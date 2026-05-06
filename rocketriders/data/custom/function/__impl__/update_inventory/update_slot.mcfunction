# arguments: slot

data modify storage rocketriders:main update_inventory set value {damage:0}
$item replace block 0 184 -16 container.0 from entity @s $(slot)

execute store result score $count var if items block 0 184 -16 container.0 *
execute unless score $count var matches 1.. run return fail

data modify storage rocketriders:main update_inventory.item set from block 0 184 -16 Items[0]
execute unless data storage rocketriders:main update_inventory.item.components.minecraft:custom_data.id run return fail

data modify storage rocketriders:main update_inventory.id set from storage rocketriders:main update_inventory.item.components.minecraft:custom_data.id
execute store result score $damage var store result storage rocketriders:main update_inventory.damage int 1 run data get storage rocketriders:main update_inventory.item.components.minecraft:damage
execute if entity @s[type=item] on origin run function custom:__impl__/update_inventory/replace_item with storage rocketriders:main update_inventory
execute if entity @s[type=player] run function custom:__impl__/update_inventory/replace_item with storage rocketriders:main update_inventory

execute if items block 0 184 -16 container.0 *[custom_data~{id:"spell_book"}] if data storage rocketriders:main update_inventory.item.components.minecraft:custom_data{spell:"fire"} run item modify block 0 184 -16 container.0 {function:"minecraft:set_custom_data",tag:{spell:"fire"}}
execute if items block 0 184 -16 container.0 *[custom_data~{id:"spell_book"}] if data storage rocketriders:main update_inventory.item.components.minecraft:custom_data{spell:"health"} run item modify block 0 184 -16 container.0 {function:"minecraft:set_custom_data",tag:{spell:"health"}}
execute if items block 0 184 -16 container.0 *[custom_data~{id:"spell_book"}] if data storage rocketriders:main update_inventory.item.components.minecraft:custom_data{spell:"damage"} run item modify block 0 184 -16 container.0 {function:"minecraft:set_custom_data",tag:{spell:"damage"}}
execute if items block 0 184 -16 container.0 *[custom_data~{id:"spell_book"}] if data storage rocketriders:main update_inventory.item.components.minecraft:custom_data{spell:"wind"} run item modify block 0 184 -16 container.0 {function:"minecraft:set_custom_data",tag:{spell:"wind"}}

$item replace entity @s $(slot) from block 0 184 -16 container.0
return 1
