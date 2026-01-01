# arguments: id, count, components

execute if items entity @s hotbar.4 *[custom_data~{navbook:true}] run item modify entity @s hotbar.4 {function:"minecraft:set_custom_data",tag:{"reset_inventory/delete":false}}
$execute unless items entity @s hotbar.4 *[custom_data~{navbook:true}] run loot replace entity @s hotbar.4 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_components",components:$(components)},{function:"minecraft:set_count",count:$(count)}]}]}]}
