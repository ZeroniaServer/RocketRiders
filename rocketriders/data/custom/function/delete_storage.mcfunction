# arguments: storage_id

$execute store result score $size var run data get storage $(storage_id) {}
execute if score $size var matches 0 run return 0

$data modify storage rocketriders:main delete_storage set value {storage_id:"$(storage_id)",source:{storage:"$(storage_id)",nbt:""}}
function custom:__impl__/delete_storage/keys_loop
return 1
