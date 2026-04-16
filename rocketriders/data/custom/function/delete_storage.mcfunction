# arguments: storage_id

$execute store result score $size var run data get storage $(storage_id) {}
execute if score $size var matches 0 run return 0

$data modify storage rocketriders:delete_storage data set value {storage_id:"$(storage_id)",source:{storage:"$(storage_id)",nbt:""}}
execute if data storage rocketriders:delete_storage data{storage_id:"rocketriders:delete_storage"} run return fail

execute summon marker if function custom:entity/kill run function custom:__impl__/delete_storage/keys_loop
data remove storage rocketriders:delete_storage data
return 1
