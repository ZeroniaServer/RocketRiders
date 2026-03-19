# resolve nbt text component
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:{storage:"rocketriders:delete_storage",nbt:"data.source",interpret:true}}]}]}]}

# parse first key and quote type
data modify storage rocketriders:delete_storage data.quote_type set value ""
data modify storage rocketriders:delete_storage data.key set from block 0 184 -16 Items[0].components.minecraft:custom_name.extra[2].text
execute if data storage rocketriders:delete_storage data{key:"'"} run data modify storage rocketriders:delete_storage data.quote_type set value "'"
execute if data storage rocketriders:delete_storage data{key:'"'} run data modify storage rocketriders:delete_storage data.quote_type set value '"'
execute unless data storage rocketriders:delete_storage data{key:""} run data modify storage rocketriders:delete_storage data.key set from block 0 184 -16 Items[0].components.minecraft:custom_name.extra[2].extra[0].text

# remove key
function custom:__impl__/delete_storage/remove_key with storage rocketriders:delete_storage data

# loop
scoreboard players remove $size var 1
execute if score $size var matches 1.. run function custom:__impl__/delete_storage/keys_loop
