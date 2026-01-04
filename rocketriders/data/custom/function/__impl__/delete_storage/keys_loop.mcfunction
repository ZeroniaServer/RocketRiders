# stringify storage
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:{storage:"rocketriders:main",nbt:"delete_storage.source",interpret:true}}]}]}]}
data modify storage rocketriders:main delete_storage.string set string block 0 184 -16 Items[0].components.minecraft:custom_name 1

# parse key
data modify storage rocketriders:main delete_storage.leading_char set string storage rocketriders:main delete_storage.string 0 1
scoreboard players set $quoted_key var 1
execute unless data storage rocketriders:main delete_storage{leading_char:'"'} unless data storage rocketriders:main delete_storage{leading_char:"'"} run scoreboard players set $quoted_key var 0

execute if score $quoted_key var matches 0 run scoreboard players set $max_index var 1
execute if score $quoted_key var matches 0 run function custom:__impl__/delete_storage/simple_string_loop {min_index:0,max_index:1}
execute if score $quoted_key var matches 1 store success score $double_quotes var if data storage rocketriders:main delete_storage{leading_char:'"'}
execute if score $quoted_key var matches 1 run scoreboard players set $max_index var 2
execute if score $quoted_key var matches 1 run function custom:__impl__/delete_storage/quoted_string_loop {min_index:1,max_index:2}
function custom:__impl__/delete_storage/slice_key with storage rocketriders:main delete_storage

# remove key
function custom:__impl__/delete_storage/remove_key with storage rocketriders:main delete_storage

# loop
scoreboard players remove $size var 1
execute if score $size var matches 1.. run function custom:__impl__/delete_storage/keys_loop
