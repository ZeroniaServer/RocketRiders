# arguments: min_index, max_index

# get character
$data modify storage rocketriders:delete_storage data.char set string storage rocketriders:delete_storage data.string $(min_index) $(max_index)

# skip next character if escaped
execute if data storage rocketriders:delete_storage data{char:"\\"} run scoreboard players add $max_index var 1
# finish if correct quote mark is reached
execute if score $double_quotes var matches 1 if data storage rocketriders:delete_storage data{char:'"'} run return run execute store result storage rocketriders:delete_storage data.min_index int 1 run scoreboard players get $max_index var
execute if score $double_quotes var matches 0 if data storage rocketriders:delete_storage data{char:"'"} run return run execute store result storage rocketriders:delete_storage data.min_index int 1 run scoreboard players get $max_index var

# loop
execute store result storage rocketriders:delete_storage data.min_index int 1 run scoreboard players get $max_index var
execute store result storage rocketriders:delete_storage data.max_index int 1 run scoreboard players add $max_index var 1
function custom:__impl__/delete_storage/quoted_string_loop with storage rocketriders:delete_storage data
